<?php
/**
 * Orders
 *
 * Shows orders on the account page.
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/myaccount/orders.php.
 *
 * HOWEVER, on occasion WooCommerce will need to update template files and you
 * (the theme developer) will need to copy the new files to your theme to
 * maintain compatibility. We try to do this as little as possible, but it does
 * happen. When this occurs the version of the template file will be bumped and
 * the readme will list any important changes.
 *
 * @see https://docs.woocommerce.com/document/template-structure/
 * @package WooCommerce/Templates
 * @version 3.7.0
 */

defined( 'ABSPATH' ) || exit;

do_action( 'woocommerce_before_account_orders', $has_orders ); ?>

<?php if ( $has_orders ) : ?>
<div class="formAccount">
	<div class="formAccount__title">
		<h1><?php echo apply_filters( 'woocommerce_my_account_my_orders_title', esc_html__( 'HISTORIAL DE PEDIDOS', 'woocommerce' ) ); ?></h1>
	</div>
	<div class="formAccount__form contractFieldContent">
		<div class="tableFormAccount">
			<div class="tableFormAccountContent">
				<?php
				foreach ( $customer_orders->orders as $customer_order ) {
					$order      = wc_get_order( $customer_order );
					$item_count = $order->get_item_count() - $order->get_item_count_refunded();
					?>
					<div class="contentOrder order-status-<?php echo esc_attr( $order->get_status() ); ?> order">
						<div class="imagen_aa">
							<?php $items = $order->get_items(); 
							foreach ( $items as $item ) {
							    $product_id = $item->get_product_id();
							}
							?>
							<img src="<?php echo get_the_post_thumbnail_url($product_id); ?>" data="">
						</div>
						<div class="cnotent_aa">
							<?php foreach ( wc_get_account_orders_columns() as $column_id => $column_name ) : ?>
								<div class="shel shel-<?php echo esc_attr( $column_id ); ?>" data-title="<?php echo esc_attr( $column_name ); ?>">
									<?php if ( has_action( 'woocommerce_my_account_my_orders_column_' . $column_id ) ) : ?>
										<?php do_action( 'woocommerce_my_account_my_orders_column_' . $column_id, $order ); ?>

									<?php elseif ( 'order-number' === $column_id ) : ?>
										<a href="<?php echo esc_url( $order->get_view_order_url() ); ?>">
											<?php echo esc_html( _x( '#', 'hash before order number', 'woocommerce' ) . $order->get_order_number() ); ?>
										</a>
										<h3><?php echo get_the_title($product_id); ?></h3>

									<?php elseif ( 'order-date' === $column_id ) : ?>
										<time datetime="<?php echo esc_attr( $order->get_date_created()->date( 'c' ) ); ?>"><?php echo esc_html( wc_format_datetime( $order->get_date_created() ) ); ?></time>

									<?php elseif ( 'order-status' === $column_id ) : ?>
										<?php 
											$status = wc_get_order_status_name( $order->get_status() );
											?>
											<div class="st-<?php echo $status; ?>">
										<?php
											echo esc_html( $status ); 
										?>
											</div>
									<?php elseif ( 'order-total' === $column_id ) : ?>
										<?php
										/* translators: 1: formatted order total 2: total order items */
										echo wp_kses_post( sprintf( _n( '%1$s for %2$s item', '%1$s for %2$s items', $item_count, 'woocommerce' ), $order->get_formatted_order_total(), $item_count ) );
										?>

									<?php elseif ( 'order-actions' === $column_id ) : ?>
										<?php
										$actions = wc_get_account_orders_actions( $order );

										if ( ! empty( $actions ) ) {
											foreach ( $actions as $key => $action ) { 
												$urlButton = esc_url( $action['url'] );
											}
										}
										?>
										<a href="<?php echo $urlButton; ?>" class="woocommerce-button button "><?php echo esc_html( 'Ver pedido'); ?></a>
									<?php endif; ?>
								</div>
							<?php endforeach; ?>
						</div>
					</div>
					<?php
				}
				?>
			</div>
		</div>

		<?php do_action( 'woocommerce_before_account_orders_pagination' ); ?>

			<?php if ( 1 < $customer_orders->max_num_pages ) : ?>
				<div class="woocommerce-pagination woocommerce-pagination--without-numbers woocommerce-Pagination">
					<?php if ( 1 !== $current_page ) : ?>
						<a class="woocommerce-button woocommerce-button--previous woocommerce-Button woocommerce-Button--previous button" href="<?php echo esc_url( wc_get_endpoint_url( 'orders', $current_page - 1 ) ); ?>"><?php esc_html_e( 'Anterior', 'woocommerce' ); ?></a>
					<?php endif; ?>

					<?php if ( intval( $customer_orders->max_num_pages ) !== $current_page ) : ?>
						<a class="woocommerce-button woocommerce-button--next woocommerce-Button woocommerce-Button--next button" href="<?php echo esc_url( wc_get_endpoint_url( 'orders', $current_page + 1 ) ); ?>"><?php esc_html_e( 'Siguiente', 'woocommerce' ); ?></a>
					<?php endif; ?>
				</div>
			<?php endif; ?>

		<?php else : ?>
			<div class="woocommerce-message woocommerce-message--info woocommerce-Message woocommerce-Message--info woocommerce-info">
				<a class="woocommerce-Button button" href="<?php echo esc_url( apply_filters( 'woocommerce_return_to_shop_redirect', wc_get_page_permalink( 'shop' ) ) ); ?>">
					<?php esc_html_e( 'Productos', 'woocommerce' ); ?>
				</a>
				<?php esc_html_e( 'Ninguna orden encontrada', 'woocommerce' ); ?>
			</div>
		<?php endif; ?>
	</div>
</div>
<?php do_action( 'woocommerce_after_account_orders', $has_orders ); ?>
<script type="text/javascript">
	jQuery('#titlePageAccount').html('<?php _e('Historial de pedidos'); ?>');
	jQuery('.woocommerce-MyAccount-navigation li').eq(3).addClass('active');
</script>