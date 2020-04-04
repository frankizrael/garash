<?php
/**
 * Woocommerce VISANET
 *
 * Plugin Name: Woocommerce VISANET
 * Plugin URI:  https://seek.pe/
 * Description: Habilita VISANET como método de pago en tu tienda Woocommerce.
 * Version:     1.0
 * Author:      Gabriel Mondragón
 * Author URI:  https://seek.pe/
 * Text Domain: woocommerce-seek
 * Domain Path: /languages
 */

function init_your_gateway_class() {
	class WC_Gateway_VISANET extends WC_Payment_Gateway {
		public function __construct() {
			$this->id                 = 'woocommerce-seek';
			$this->icon               = '';
			$this->has_fields         = false;
			$this->title              = __( 'VISANET', 'woocommerce-seek' );
			$this->method_title       = __( 'VISANET', 'woocommerce-seek' );
			$this->method_description = __( 'Acepta tarjetas de crédito y débito.', 'woo-seek-visanet' );
			$this->init_form_fields();
			$this->init_settings();
			$this->actions_and_filters();
			require_once plugin_dir_path( __FILE__ ) . '/vendor/autoload.php';
		}

		public function actions_and_filters() {
			add_action( 'woocommerce_update_options_payment_gateways_' . $this->id, array(
				$this,
				'process_admin_options'
			) );
			add_action( 'woocommerce_order_details_after_order_table', array( $this, 'receipt_page' ), 10, 1 );
			if ( empty( $_POST ) ) {
				add_filter( 'woocommerce_thankyou_order_received_text', '__return_false' );
			}
		}

		public function init_form_fields() {
			$this->form_fields = array(
				'enabled'     => array(
					'title'   => __( 'Habilitar', 'woocommerce-seek' ),
					'type'    => 'checkbox',
					'label'   => __( 'Habilita VISANET como método de pago para tus clientes.', 'woocommerce-seek' ),
					'default' => 'yes'
				),
				'test-mode'   => array(
					'title'   => __( 'Desarrollador', 'woocommerce-seek' ),
					'type'    => 'checkbox',
					'label'   => __( 'Habilita el modo desarrollo para realizar pruebas en tu tienda.', 'woocommerce-seek' ),
					'default' => 'yes'
				),
				'merchant_id' => array(
					'title'   => __( 'Código de comercio', 'woocommerce-seek' ),
					'type'    => 'text',
					'default' => ''
				),
				'user'        => array(
					'title'   => __( 'Usuario', 'woocommerce-seek' ),
					'type'    => 'text',
					'default' => ''
				),
				'password'    => array(
					'title'   => __( 'Contraseña', 'woocommerce-seek' ),
					'type'    => 'password',
					'default' => ''
				)
			);
		}

		public function process_payment( $order_id ) {

			$order = new WC_Order( $order_id );
			$order->update_status( 'pending' );

			return array(
				'result'   => 'success',
				'redirect' => $this->get_return_url( $order )
			);
		}

		private function get_script_src() {
			$test = $this->get_option( 'test-mode' );
			if ( $test == 'yes' ) {
				return 'https://static-content-qas.vnforapps.com/v2/js/checkout.js?qa=true';
			}

			return 'https://static-content.vnforapps.com/v2/js/checkout.js';
		}

		private function get_visanet_endpoint() {
			$test = $this->get_option( 'test-mode' );
			if ( $test == 'yes' ) {
				return 'https://apitestenv.vnforapps.com';
			}

			return 'https://apiprod.vnforapps.com';
		}

		private function get_authorization() {
			$endpoint = $this->get_visanet_endpoint() . '/api.security/v1/security';
			$username = $this->get_option( 'user' );
			$password = $this->get_option( 'password' );
			$options  = array(
				'auth' => array( $username, $password )
			);
			$request  = Requests::get( $endpoint, array(), $options );

			return $request->body;
		}

		private function get_session( $order_id, $ip ) {
			$order       = new WC_Order( $order_id );
			$merchant_id = $this->get_option( 'merchant_id' );
			$endpoint    = $this->get_visanet_endpoint() . '/api.ecommerce/v2/ecommerce/token/session/' . $merchant_id;
			$token       = $this->get_authorization();
			$headers     = array(
				'Authorization' => $token,
				'Content-Type'  => 'application/json'
			);
			$data        = array(
				'amount'              => $order->get_total(),
				'antifraud'           => array(
					'clientIp' => $ip,
				),
				'channel'             => 'web',
				'recurrenceMaxAmount' => $order->get_total()
			);
			$request     = Requests::post( $endpoint, $headers, json_encode( $data ) );
			$response    = json_decode( $request->body, true );
			$order->update_meta_data( '_token', $response['sessionKey'], true );
			$order->save_meta_data();

			return $response['sessionKey'];
		}

		private function create_charge( $order_id, $transaction ) {
			$order       = new WC_Order( $order_id );
			$merchant_id = $this->get_option( 'merchant_id' );
			$endpoint    = $this->get_visanet_endpoint() . '/api.authorization/v3/authorization/ecommerce/' . $merchant_id;
			$headers     = array(
				'Authorization' => $order->get_meta( '_token', true ),
				'Content-Type'  => 'application/json'
			);
			$data        = array(
				'antifraud'   => null,
				'captureType' => 'manual',
				'channel'     => 'web',
				'countable'   => true,
				'order'       => array(
					'amount'         => $order->get_total(),
					'currency'       => 'PEN',
					'productId'      => 1,
					'purchaseNumber' => $order->get_order_number(),
					'tokenId'        => $transaction
				),
				'sponsored'   => null
			);
			$request     = Requests::post( $endpoint, $headers, json_encode( $data ) );

			return json_decode( $request->body );
		}

		private function get_the_user_ip() {
			if ( ! empty( $_SERVER['HTTP_CLIENT_IP'] ) ) {
				$ip = $_SERVER['HTTP_CLIENT_IP'];
			} elseif ( ! empty( $_SERVER['HTTP_X_FORWARDED_FOR'] ) ) {
				$ip = $_SERVER['HTTP_X_FORWARDED_FOR'];
			} else {
				$ip = $_SERVER['REMOTE_ADDR'];
			}

			return $ip;
		}

		function receipt_page( $order_id ) {
			$order = new WC_Order( $order_id ); ?>
			<?php
			if ( empty( $_POST ) ) {
				if ( $order->has_status( 'pending' ) ): ?>
                    <section class="woocommerce woocommerce-seek-visanet">
                        <form id="formScript" action="<?php echo $this->get_return_url( $order ) ?>" method="post">
                            <script
                                    src="<?php echo $this->get_script_src() ?>"
                                    data-merchantlogo=""
                                    data-sessiontoken="<?php echo $this->get_session( $order_id, $this->get_the_user_ip() ) ?>"
                                    data-channel="web"
                                    data-merchantid="<?php echo $this->get_option( 'merchant_id' ) ?>"
                                    data-purchasenumber="<?php echo $order->get_order_number() ?>"
                                    data-amount="<?php echo $order->get_total() ?>"
                                    data-timeouturl="<?php bloginfo( 'url' ); ?>"
                            ></script>
                        </form>
                    </section>
				<?php endif;
			} else {
				$transaction = filter_input( INPUT_POST, 'transactionToken' );
				$charge      = $this->create_charge( $order_id, $transaction );
				if ( isset( $charge->errorMessage ) ) {
					$order->update_status( 'failed' ); ?>
                    <h1>Error al procesar la compra</h1>
                    <div><?php echo $charge->data->ACTION_DESCRIPTION ?></div>
					<?php
				} else {
					global $woocommerce;
					$woocommerce->cart->empty_cart();

					$order->update_status( 'processing' );
					if ( wp_redirect( '/gracias-checkout/?key=' . $order->get_order_key() ) ) {
						exit;
					}
				}
			}
		}

	}

	function add_payment_method_class( $methods ) {
		$methods[] = 'WC_Gateway_VISANET';

		return $methods;
	}

	add_filter( 'woocommerce_payment_gateways', 'add_payment_method_class' );
}

add_action( 'plugins_loaded', 'init_your_gateway_class' );
