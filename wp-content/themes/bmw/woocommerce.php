<?php set_query_var('ASSETS_KEY_WORD', 'page_home'); ?>
<?php get_header('header'); ?>


<?php
if (is_singular('product')) : ?>
    <div class="container">
        <?php woocommerce_content(); ?>
    </div>
<?php else : ?>
    <div id="shop">
        <div id="sidebar-primary" class="sidebar">
            <?php dynamic_sidebar('primary'); ?>
        </div>
        <div class="content">
            <?php if (woocommerce_product_loop()) : ?>
                <?php woocommerce_product_loop_start(); ?>
                <?php if (wc_get_loop_prop('total')) : ?>
                    <?php while (have_posts()) : ?>
                        <?php the_post(); ?>
                        <?php wc_get_template_part('content', 'product'); ?>
                    <?php endwhile; ?>
                <?php endif; ?>
                <?php woocommerce_product_loop_end(); ?>
                <?php do_action('woocommerce_after_shop_loop'); ?>
            <?php else :
                do_action('woocommerce_no_products_found');
            endif; ?>
        </div>
    </div>
<?php

endif;
get_footer();
