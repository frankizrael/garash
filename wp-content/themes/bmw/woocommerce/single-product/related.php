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

		<div class="x-dots"></div>


	</section>

	<section class="SectionOffers">
		<div class="SectionOffers__content x-container">
			<?php 
				$pageID = get_option('page_on_front');
			if (have_rows('offers', $pageID)) : ?>
				<ul class="list">
					<?php while (have_rows('offers', $pageID )) : the_row();
						$image = get_sub_field('offers_image');
						$title = get_sub_field('offers_title');
						$link = get_sub_field('offers_link');
						$discount = get_sub_field('offers_discount');
					?>
						<li>
							<div class="title">
								BMW LIFESTYLE <br /> Accesorios
							</div>
							<a href="">
								<i>
									<svg xmlns="http://www.w3.org/2000/svg" width="10.607" height="16.971" viewBox="0 0 10.607 16.971">
										<g transform="translate(-6.364 8.485) rotate(-45)">
											<rect width="12" height="3" transform="translate(12 12) rotate(180)" />
											<rect width="12" height="3" transform="translate(9 12) rotate(-90)" />
										</g>
									</svg>
								</i>
								Ver ofertas
							</a>
							<figure>
								<img src="<?php echo $image; ?>" alt="">
							</figure>
							<?php if ($discount) : ?>
								<div class="not" style="background-color:  <?php echo $discount['offers_discount_color'];  ?>"><?php echo $discount['offers_discount_value']; ?></div>
							<?php endif; ?>
						</li>
					<?php endwhile; ?>
				</ul>
				<div class="x-pagination"></div>
			<?php endif; ?>
		</div>
	</section>


<?php endif;

wp_reset_postdata();
