<?php
add_action('init', 'init_woo_culqi');

function init_woo_culqi()
{
    if (!class_exists('WC_Payment_Gateway')) {
        return;
    }

    class WC_woo_culqi extends WC_Payment_Gateway
    {
        public function __construct()
        {
            $this->id = 'woo_culqi';
            $this->icon = get_template_directory_uri() . '/inc/visa_mastercard.png';
            $this->method_title = __('Culqi', 'garash');
            $this->method_description = __('Acepta tarjetas de crédito, débito o prepagadas.', 'garash');
            $this->order_button_text = __('Proceder con el pago', 'garash');
            $this->has_fields = true;
            $this->supports = array(
                'products'
            );
            $this->init_form_fields();
            $this->init_settings();
            $this->title = 'Tarjeta de crédito o débito';
            $this->description = 'Paga con tarjeta de crédito, débito o prepagada de todas las marcas.';
            // Obtener credenciales y entorno
            $this->woo_culqi_public_key = $this->get_option('woo_culqi_public_key');
            $this->woo_culqi_secret_key = $this->get_option('woo_culqi_secret_key');
            $this->culqi_nombre_comercio = get_bloginfo('name');
            //add_action('woocommerce_api_' . strtolower(get_class($this)), array($this, 'crear_cargo'));// Crear Cargo
            add_action('woocommerce_update_options_payment_gateways_' . $this->id, array($this, 'process_admin_options'));
            if (!$this->is_valid_for_use()) $this->enabled = false;
        }

        function is_valid_for_use()
        {
            if (!in_array(get_woocommerce_currency(), array('PEN', 'USD'))) return false;
            return true;
        }

        public function admin_options()
        {
            ?>
            <h3><?php _e('Culqi', 'garash'); ?></h3>
            <table class="form-table">
                <?php
                if ($this->is_valid_for_use()) :
                    $this->generate_settings_html();
                else :
                    ?>
                    <div class="inline error">
                        <p>
                            <strong>
                                <?php _e('Método de pago deshabilitado', 'garash'); ?>
                            </strong>:
                            <?php _e('Error en la configuración.', 'garash'); ?>
                        </p>
                    </div>
                <?php
                endif;
                ?>
            </table>
            <?php
        }

        function init_form_fields()
        {
            $this->form_fields = array(
                'enabled' => array
                (
                    'title' => __('Habilitar/Deshabilitar', 'garash'),
                    'type' => 'checkbox',
                    'label' => __('Habilitar Culqi', 'garash'),
                    'default' => 'yes'
                ),
                'woo_culqi_public_key' => array
                (
                    'title' => __('Llave Pública', 'garash'),
                    'type' => 'text',
                    'required' => true,
                    'description' => __('Ingresar Llave Pública', 'garash'),
                    'default' => ''
                ),
                'woo_culqi_secret_key' => array
                (
                    'title' => __('Llave Secreta', 'garash'),
                    'type' => 'text',
                    'required' => true,
                    'description' => __('Ingresar Llave Secreta', 'garash'),
                    'default' => ''
                )
            );
        }

        public function payment_fields()
        {
            ?>
            <div class="culqi_div_form">
                <input type="hidden" name="token_id" value="" id="token_id">
            <div class="div_mail">
                <input data-culqi="card[email]" id="card[email]" name="email" placeholder="Correo Electrónico"
                       required="" autocomplete="off" aria-required="true" type="email">
            </div>
            <div class="div_card">
                <input data-culqi="card[number]" id="card[number]" name="card_number" placeholder="Número de la tarjeta"
                       required="" autocomplete="off" aria-required="true" type="text">
            </div>
            <div class="div_month">
                <input data-culqi="card[exp_month]" id="card[exp_month]" name="exp_month" placeholder="MM" required=""
                       autocomplete="off" aria-required="true" type="text">
            </div>
            <div class="div_year">
                <input data-culqi="card[exp_year]" id="card[exp_year]" name="exp_year" placeholder="YYYY" required=""
                       autocomplete="off" aria-required="true" type="text">
            </div>
            <div class="div_cvv">
                <input data-culqi="card[cvv]" id="card[cvv]" name="cvv" placeholder="CVV" required="" autocomplete="off"
                       aria-required="true" type="text">
            </div>
            <div class="div_terms">
                <div class="absCheckedTerms">
                    <input type="checkbox" id="card[terms]" name="terms" value="1" required=""/>  
                    <label for="card[terms]"></label>
                </div>
                Confirmo que he leído los términos y condiciones de compra, la poítica de privacidad y autorizo el pago
            </div>
        	</div>
            <div class="div_actions">
                <div id="info_payment">
                    <div class="info_payment_buttons">
                        <button id="pagar-now" class="button alt">Proceder con el pago</button>
                    </div>
                    <div id="culqi_notify"></div>
                </div>
            </div>
            <script src="https://checkout.culqi.com/v2"></script>
            <script>
            	var send_checkout = false;
            	function culqi() {
				    if (Culqi.token) {
				        jQuery('#token_id').val(Culqi.token.id);
				        send_checkout = true;
				        jQuery("#checkout-form").submit();
				    } else {
				        jQuery('#info_payment > #culqi_notify').html('<p>' + Culqi.error.user_message + '</p>');
				    }
				};
                jQuery(function ($) {
                	$( document ).ready(function() {
                		setTimeout(function(){
                			Culqi.publicKey = '<?php echo $this->woo_culqi_public_key ?>';
	                        Culqi.settings({
	                            title: '<?php echo $this->culqi_nombre_comercio; ?>',
	                            currency: '<?php echo get_woocommerce_currency(); ?>',
	                            description: '<?php echo $this->culqi_nombre_comercio; ?>',
	                            amount: 0
	                        });
	                        Culqi.init();
	                        if($("#payment_method_woo_culqi:checked").length>0){
	                        	$(".place-order").hide();
	                        }
                		}, 1000);
                		$("input[name=payment_method]").change(function(){
	                        	var valpm = this.value;
	                        	if(valpm == "woo_culqi"){
	                        		$(".place-order").hide();
	                        	}else{
	                        		$(".place-order").show();
	                        	}
	                        });
                        $('#pagar-now').on('click', function (e) {
                            Culqi.createToken();
                            $('#culqi_notify').empty();
                            e.preventDefault();
                        });
                    });
                });
            </script>
            <?php
        }

        public static function get_post($key)
        {
            if (isset($_POST[$key])) {
                return trim($_POST[$key]);
            }
            return '';
        }

        public function validate_fields()
        {
            $is_valid = parent::validate_fields();
            $account_email = $this->get_post('email');
            $account_number = $this->get_post('card_number');
            $cv_number = $this->get_post('cvv');
            $expiration_month = $this->get_post('exp_month');
            $expiration_year = $this->get_post('exp_year');
            // Elavon has stringent length limits for name/address fields
            $billing_field_lengths = array('billing_first_name' => 20, 'billing_last_name' => 30, 'billing_company' => 50, 'billing_address_1' => 30, 'billing_address_2' => 30, 'billing_city' => 30, 'billing_state' => 30, 'billing_postcode' => 9, 'billing_country' => 50, 'billing_email' => 100, 'billing_phone' => 20);
            // for each of our billing fields with maximum lengths
            foreach ($billing_field_lengths as $field_name => $length) {
                // if the supplied length exceeds the maximum
                if (strlen($this->get_post($field_name)) > $length) {
                    // is there a checkout field with this name, to grab the label from?  Otherwise, just use the upper-cased version of $field_name
                    if (isset(WC()->checkout()->checkout_fields['billing'][$field_name]['label']) && WC()->checkout()->checkout_fields['billing'][$field_name]['label']) {
                        $field_label = WC()->checkout()->checkout_fields['billing'][$field_name]['label'];
                    } else {
                        $field_label = ucwords(str_replace('_', ' ', $field_name));
                    }
                    if (false === stripos($field_label, 'billing')) {
                        wc_add_notice(sprintf(__('The billing %s is too long, %d characters maximum are allowed.  Please fix the %s and try again.', 'garash'), $field_label, $length, $field_label), 'error');
                        $is_valid = false;
                    } else {
                        wc_add_notice(sprintf(__('The %s is too long, %d characters maximum are allowed.  Please fix the %s and try again.', 'garash'), $field_label, $length, $field_label), 'error');
                        $is_valid = false;
                    }
                }
            }
            // check security code
            if (empty($cv_number)) {
                wc_add_notice(__('Código de seguridad faltante', 'garash'), 'error');
                $is_valid = false;
            }
            if (!ctype_digit($cv_number)) {
                wc_add_notice(__('Código de seguridad inválido (solo dígitos son permitidos)', 'garash'), 'error');
                $is_valid = false;
            }
            if (strlen($cv_number) < 3 || strlen($cv_number) > 4) {
                wc_add_notice(__('Código de seguridad inválido (tamaño no eprmitido)', 'garash'), 'error');
                $is_valid = false;
            }
            // check expiration data
            $current_year = date('Y');
            $current_month = date('n');
            if (!ctype_digit($expiration_month) || !ctype_digit($expiration_year) || $expiration_month > 12 || $expiration_month < 1 || $expiration_year < $current_year || $expiration_year == $current_year && $expiration_month < $current_month || $expiration_year > $current_year + 20) {
                wc_add_notice(__('Fecha de expiración no es válido', 'garash'), 'error');
                $is_valid = false;
            }
            // check card number
            $account_number = str_replace(array(' ', '-'), '', $account_number);
            if (empty($account_number) || !ctype_digit($account_number)) {
                wc_add_notice(__('Número de tarjeta no es válido', 'garash'), 'error');
                $is_valid = false;
            }
            // check email
            if (!filter_var($account_email, FILTER_VALIDATE_EMAIL)) {
                wc_add_notice(__('Correo electrónico inválido', 'garash'), 'error');
                $is_valid = false;
            }
            return $is_valid;
        }

        function process_payment($order_id)
        {
            //include_once dirname(__FILE__).'/Requests/library/Requests.php';
            Requests::register_autoloader();
            include_once dirname(__FILE__).'/culqi-php/lib/culqi.php';
            $culqi = new Culqi\Culqi(array('api_key' => $this->woo_culqi_secret_key));
            $order = new WC_Order($order_id);

            // Creamos Cargo a una tarjeta
            $total = str_replace('.', '', number_format($order->get_total(), 2, '.', ''));
            $total = str_replace(',', '',$total);
            $amount=$total;
            $currency_code=get_woocommerce_currency();
            $numeroPedido = str_pad($order->get_id(), 5, "0", STR_PAD_LEFT);
            // Generamos un Código de pedido único
            $description = "Garash.com*NooFlow".$this->generateRandomString(4) . "-" . $numeroPedido;
            if ($order->get_billing_city() == "") {
                $datos_ciudad = "Ciudad";
            } else {
                $datos_ciudad = $order->get_billing_city();
            }
            if ($order->get_billing_first_name() == ""){
                $datos_nombre = "Nombre";
            }else {
                $datos_nombre = $order->get_billing_first_name();
            }
            if ($order->get_billing_last_name() == ""){
                $datos_apellido = "Apellido";
            }else {
                $datos_apellido = $order->get_billing_last_name();
            }
            if ($order->get_billing_email() == ""){
                $datos_correo = "integrate@culqi.com";
            } else {
                $datos_correo = $order->get_billing_email();
            }
            if ($order->get_billing_phone() == ""){
                $datos_telefono = "12313123";
            } else {
                $datos_telefono = $order->get_billing_phone();
            }
            if ($order->get_billing_address_1() == "") {
                $datos_direccion = "Avenida";
            } else {
                $datos_direccion = $order->get_billing_address_1();
            }
            if ($order->get_billing_address_2() == "") {
                $datos_direccion_2 = "123";
            } else {
                $datos_direccion_2 = $order->get_billing_address_2();
            }
            if ($order->get_billing_country() == "") {
                $datos_pais = "PE";
            } else {
                $datos_pais = $order->get_billing_country();
            }
            $token_id=$this->get_post("token_id");
            $charge = $culqi->Charges->create(
                array(
                    "amount" => $amount,
                    "capture" => true,
                    "currency_code" => $currency_code,
                    "description" => $description,
                    "email" => $datos_correo,
                    "installments" => 0,
                    "metadata" => array(
                        "order_id" => (string)$order->get_id()
                    ),
                    "antifraud_details" => array(
                        "address" => $datos_direccion,
                        "address_city" => $datos_ciudad,
                        "country_code" => "PE",
                        "first_name" => $datos_nombre,
                        "last_name" => $datos_apellido,
                        "phone_number" => $datos_telefono,
                    ),
                    "source_id" => $token_id
                )
            );
            //Respuesta
            if(isset($charge) && $charge->object=="charge"){
                $order->payment_complete($charge->id);
                return array
                (
                    'result' => 'success',
                    'redirect' => $order->get_checkout_order_received_url()
                );

            }else{
                if(isset($charge)) {
                    wc_add_notice(__('Error al procesar su pago:', 'garash') . $charge->ser_message, 'error');
                    error_log($charge->merchant_message, 0);
                    return;
                }else{
                    wc_add_notice(__('Error al procesar su pago: Actualmente no hay conexión con el sistema:', 'garash'), 'error');
                    error_log("Error al conectarse a Culqi", 0);
                    return;
                }
            }
        }

        function generateRandomString($length = 10)
        {
            $characters = '0123456789';
            $charactersLength = strlen($characters);
            $randomString = '';
            for ($i = 0; $i < $length; $i++) {
                $randomString .= $characters[rand(0, $charactersLength - 1)];
            }
            return $randomString;
        }

        public function restore_order_stock($order_id)
        {
            $order = new WC_Order($order_id);
            if (!get_option('woocommerce_manage_stock') == 'yes' && !sizeof($order->get_items()) > 0) {
                return;
            }
            foreach ($order->get_items() as $item) {
                if ($item['product_id'] > 0) {
                    $_product = $order->get_product_from_item($item);
                    if ($_product && $_product->exists() && $_product->managing_stock()) {
                        $old_stock = $_product->stock;
                        $qty = apply_filters('woocommerce_order_item_quantity', $item['qty'], $this, $item);
                        $new_quantity = $_product->increase_stock($qty);
                        do_action('woocommerce_auto_stock_restored', $_product, $item);
                        $order->add_order_note(sprintf(__('Item #%s stock incremented from %s to %s.', 'woocommerce'), $item['product_id'], $old_stock, $new_quantity));
                        $order->send_stock_notifications($_product, $new_quantity, $item['qty']);
                    }
                }
            }
        }
    }

    function woo_culqi_add_gateway($methods)
    {
        $methods[] = 'WC_woo_culqi';
        return $methods;
    }

    add_filter('woocommerce_payment_gateways', 'woo_culqi_add_gateway');
}