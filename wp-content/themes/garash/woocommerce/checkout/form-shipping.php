<?php

/**
 * Checkout shipping information form
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/checkout/form-shipping.php.
 *
 * HOWEVER, on occasion WooCommerce will need to update template files and you
 * (the theme developer) will need to copy the new files to your theme to
 * maintain compatibility. We try to do this as little as possible, but it does
 * happen. When this occurs the version of the template file will be bumped and
 * the readme will list any important changes.
 *
 * @see     https://docs.woocommerce.com/document/template-structure/
 * @package WooCommerce/Templates
 * @version 3.6.0
 * @global WC_Checkout $checkout
 */

defined('ABSPATH') || exit;
?>


<div class="woocommerce-additional-fields">
	<?php do_action('woocommerce_before_order_notes', $checkout); ?>

	<?php if (apply_filters('woocommerce_enable_order_notes_field', 'yes' === get_option('woocommerce_enable_order_comments', 'yes'))) : ?>

		<?php if (!WC()->cart->needs_shipping() || wc_ship_to_billing_address_only()) : ?>

			<h3><?php esc_html_e('Additional information', 'woocommerce'); ?></h3>

		<?php endif; ?>

		<div class="woocommerce-additional-fields__field-wrapper">
			<?php foreach ($checkout->get_checkout_fields('order') as $key => $field) : ?>
				<?php woocommerce_form_field($key, $field, $checkout->get_value($key)); ?>
			<?php endforeach; ?>
		</div>

	<?php endif; ?>

	<?php do_action('woocommerce_after_order_notes', $checkout); ?>
</div>

<div class="sectionOffice">
	<div class="sectionOffice__header">
		<div class="title-fact">Elige tus opciones de despacho</div>
	</div>
	<div class="sectionOffice__content">
		<div class="tabs">
			<ul class="tabs__links">
				<div class="line"></div>
				<li class="active">
					<a href="javascript:void(0)" data-index="one" id="shipping_method_0_local_pickup6">Retira tu compra</a>
				</li>
				<li>
					<a href="javascript:void(0)" data-index="two" id="shipping_method_0_flat_rate7">Despacho a domicilio</a>
				</li>
			</ul>
			<div class="tabs__content">
				<?php
				if (have_rows('store_list_option', 'option')) :
					while (have_rows('store_list_option', 'option')) : the_row();
						$name = get_sub_field('store_list_option_name');
						$address = get_sub_field('store_list_option_address');
						$schedule = get_sub_field('store_list_option_schedule');
				?>
						<!-- Item 1 -->
						<div class="tab-item">
							<div class="left">
								<div class="logo">
									<img src="<?php echo get_template_directory_uri() . '/assets/logo-bww.png' ?>" alt="">
								</div>
								<div class="address">
									<div class="title"><?php echo $name; ?></div>
									<div class="name">
										<p><?php echo $address; ?> </p>

									</div>
									<div class="schedule">
										<p>Horario de atención:</p>
										<p><?php echo $schedule; ?></p>
									</div>
								</div>
							</div>
							<div class="control">
								<a href="javascript:void(0)" data-name="<?php echo $name; ?>">Seleccionar</a>
							</div>
						</div>
						<!-- /Item 1 -->
				<?php endwhile;
				endif;
				?>
			</div>
		</div>
	</div>
</div>

<div class="woocommerce-shipping-fields">
	<?php if (true === WC()->cart->needs_shipping_address()) : ?>
		<h3 id="ship-to-different-address">
			<label class="woocommerce-form__label woocommerce-form__label-for-checkbox checkbox">
				<input id="ship-to-different-address-checkbox" class="woocommerce-form__input woocommerce-form__input-checkbox input-checkbox" <?php checked(apply_filters('woocommerce_ship_to_different_address_checked', 'shipping' === get_option('woocommerce_ship_to_destination') ? 1 : 0), 1); ?> type="checkbox" name="ship_to_different_address" value="1" />

				<div class="group">
					<div class="check">
						<div class="left">
						</div>
						<div class="right"></div>
					</div>
					<span><?php esc_html_e('Ship to a different address?', 'woocommerce'); ?></span>
				</div>
			</label>
		</h3>

		<div class="shipping_address">

			<?php do_action('woocommerce_before_checkout_shipping_form', $checkout); ?>

			<div class="woocommerce-shipping-fields__field-wrapper">
				<?php
				$fields = $checkout->get_checkout_fields('shipping');

				foreach ($fields as $key => $field) {
					woocommerce_form_field($key, $field, $checkout->get_value($key));
				}
				?>
			</div>

			<?php do_action('woocommerce_after_checkout_shipping_form', $checkout); ?>

		</div>

	<?php endif; ?>
</div>