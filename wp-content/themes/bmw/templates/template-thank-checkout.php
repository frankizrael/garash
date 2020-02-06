<?php

/**
 * Template Name: Thank Checkout
 */
?>

<?php
set_query_var('ASSETS_KEY_WORD', 'page_thank_checkout');
get_header('header');
set_query_var('class', 'is-active');
get_template_part('partials/global/content', 'navbar');
$order      = wc_get_order(136);

$items = $order->get_items();
?>


<section class="thankCheckout">
	<div class="thankCheckout__header">
		<div class="bar">
			<div class="x-container">
				<div class="bg">
					<?php
					$args = array(
						'delimiter' => ' / ',
						'before' => ''
					);
					?>
					<?php woocommerce_breadcrumb($args); ?>
				</div>
			</div>
		</div>
	</div>
	<div class="thankCheckout__content x-container">
		<div class="order">
			<h2>TU ORDEN HA SIDO RECIBIDA</h2>
			<main>
				<div class="item header">
					<ul>
						<li>Número de orden</li>
						<li>Fecha</li>
						<li>Total</li>
						<li>Método</li>
					</ul>
				</div>
				<div class="item content">
					<ul>
						<li><?php echo $order->get_order_number(); ?></li>
						<li><?php echo date("d-m-Y", strtotime($order->get_date_created())); ?></li>
						<li><?php echo $order->get_formatted_order_total(); ?></li>
						<li>TARJETA</li>
					</ul>
				</div>
			</main>
		</div>
		<div class="order">
			<h2>DETALLE DE TU ORDEN</h2>
			<main>
				<div class="item header">
					<ul>
						<li>Producto</li>
						<li>Cantidad</li>
						<li>Precio</li>
					</ul>
				</div>
				<?php
				foreach ($items as $item_id => $item) :
					$item_total = $order->get_formatted_line_subtotal($item);
				?>
					<div class="item content">
						<ul>
							<li><?php echo $item->get_name(); ?></li>
							<li><?php echo $item->get_quantity(); ?></li>
							<li><?php echo $item_total; ?></li>
						</ul>
					</div>
				<?php endforeach; ?>
			</main>
		</div>
	</div>
</section>

<div class="bg"></div>
<?php

get_template_part('partials/global/content', 'footer');
?>



<?php get_footer('footer'); ?>