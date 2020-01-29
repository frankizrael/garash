<?php

/**
 * Related Products
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/single-product/related.php.
 *
 * HOWEVER, on occasion WooCommerce will need to update template files and you
 * (the theme developer) will need to copy the new files to your theme to
 * maintain compatibility. We try to do this as little as possible, but it does
 * happen. When this occurs the version of the template file will be bumped and
 * the readme will list any important changes.
 *
 * @see 	    https://docs.woocommerce.com/document/template-structure/
 * @package 	WooCommerce/Templates
 * @version     3.0.0
 */

if (!defined('ABSPATH')) {
	exit;
}

if ($related_products) : ?>
	 <div class="clear"></div>
	<section class="related products">

		<h2><?php esc_html_e('Related products', 'woocommerce'); ?></h2>

		<?php woocommerce_product_loop_start(); ?>

		<?php foreach ($related_products as $related_product) : ?>

			<?php
			$post_object = get_post($related_product->get_id());

			setup_postdata($GLOBALS['post'] = &$post_object);

			wc_get_template_part('content', 'product'); ?>

		<?php endforeach; ?>

		<?php woocommerce_product_loop_end(); ?>

	</section>

	<section class="SectionOffers">
		<div class="SectionOffers__content x-container">
			<div class="left">
				<div class="title">
					BMW <br /> Christmas Sale
				</div>
				<a href="">
					<i>
						<svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 492.004 492.004" style="enable-background:new 0 0 492.004 492.004;" xml:space="preserve">
							<g>

								<path d="M382.678,226.804L163.73,7.86C158.666,2.792,151.906,0,144.698,0s-13.968,2.792-19.032,7.86l-16.124,16.12
                        c-10.492,10.504-10.492,27.576,0,38.064L293.398,245.9l-184.06,184.06c-5.064,5.068-7.86,11.824-7.86,19.028
                        c0,7.212,2.796,13.968,7.86,19.04l16.124,16.116c5.068,5.068,11.824,7.86,19.032,7.86s13.968-2.792,19.032-7.86L382.678,265
                        c5.076-5.084,7.864-11.872,7.848-19.088C390.542,238.668,387.754,231.884,382.678,226.804z"></path>
							</g>
						</svg>
					</i>
					Ver ofertas
				</a>
				<figure>
					<img src="<?php echo get_template_directory_uri() ?>/assets/car.png" alt="">
				</figure>
				<div class="not">-15%</div>
			</div>
			<div class="right">
				<div class="title">
					BMW LIFESTYLE <br /> Accesorios
				</div>
				<a href="">
					<i>
						<svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 492.004 492.004" style="enable-background:new 0 0 492.004 492.004;" xml:space="preserve">
							<g>

								<path d="M382.678,226.804L163.73,7.86C158.666,2.792,151.906,0,144.698,0s-13.968,2.792-19.032,7.86l-16.124,16.12
                        c-10.492,10.504-10.492,27.576,0,38.064L293.398,245.9l-184.06,184.06c-5.064,5.068-7.86,11.824-7.86,19.028
                        c0,7.212,2.796,13.968,7.86,19.04l16.124,16.116c5.068,5.068,11.824,7.86,19.032,7.86s13.968-2.792,19.032-7.86L382.678,265
                        c5.076-5.084,7.864-11.872,7.848-19.088C390.542,238.668,387.754,231.884,382.678,226.804z"></path>
							</g>
						</svg>
					</i>
					Ver ofertas
				</a>
				<figure>
					<img src="<?php echo get_template_directory_uri() ?>/assets/reloj.png" alt="">
				</figure>
				<div class="not">-15%</div>
			</div>
		</div>
	</section>

<?php endif;

wp_reset_postdata();
