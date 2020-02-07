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
				<div class="x-bg">
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
		<?php if (!wp_is_mobile()) : ?>
			<div class="desktop">
				<div class="order">
					<h2>TU ORDEN HA SIDO RECIBIDA</h2>
					<table>
						<thead>
							<th>Número de orden</th>
							<th>Fecha</th>
							<th>Total</th>
							<th>Método</th>
						</thead>
						<tbody>
							<tr>
								<td><?php echo $order->get_order_number(); ?></td>
								<td><?php echo date("d-m-Y", strtotime($order->get_date_created())); ?></td>
								<td><?php echo $order->get_formatted_order_total(); ?></td>
								<td>TARJETA</td>
							</tr>
						</tbody>
					</table>
				</div>

				<div class="order">
					<h2>DETALLA DE LA ORDEN</h2>
					<table>
						<thead>
							<th>Producto</th>
							<th>Cantidad</th>
							<th>Total</th>
						</thead>
						<tbody>
							<?php
							foreach ($items as $item_id => $item) :
								$item_total = $order->get_formatted_line_subtotal($item);
							?>
								<tr>
									<td><?php echo $item->get_name(); ?></td>
									<td><?php echo $item->get_quantity(); ?></td>
									<td><?php echo $item_total;  ?></td>
								</tr>
							<?php endforeach; ?>
						</tbody>
					</table>
				</div>
			</div>
		<?php else : ?>
			<div class="mobile">
				<div class="order">
					<h2 class="title">TU ORDEN HA SIDO RECIBIDA</h2>
					<div class="list">
						<div class="list__item">
							<div>
								<strong>Número de orden</strong>
								<p><?php echo $order->get_order_number(); ?></p>
							</div>
							<div>
								<strong>Fecha</strong>
								<p><?php echo date("d-m-Y", strtotime($order->get_date_created())); ?></p>
							</div>
						</div>
						<div class="list__item">
							<div>
								<strong>Total</strong>
								<p><?php echo $order->get_formatted_order_total(); ?></p>
							</div>
							<div>
								<strong>Método</strong>
								<p>TARJETA</p>
							</div>
						</div>
					</div>
				</div>
				<div class="order">
					<h2 class="title">DETALLE DE LA ORDEN</h2>
					<div class="list">
						<?php
						$c = 0;
						foreach ($items as $item_id => $item) :
							$c++;
							$item_total = $order->get_formatted_line_subtotal($item);
						?>
							<div class="list__item">
								<div class="full">
									<strong>Producto #<?php echo $c; ?></strong>
									<p><?php echo $item->get_name(); ?></p>
								</div>
							</div>
							<div class="list__item">
								<div>
									<strong>Cantidad</strong>
									<p><?php echo $item->get_quantity(); ?></p>
								</div>
								<div>
									<strong>Precio</strong>
									<p><?php echo $item_total;  ?></p>
								</div>
							</div>
						<?php
						endforeach; ?>
					</div>
				</div>
			</div>
		<?php endif; ?>
	</div>
</section>

<?php

get_template_part('partials/global/content', 'footer');
?>



<?php get_footer('footer'); ?>