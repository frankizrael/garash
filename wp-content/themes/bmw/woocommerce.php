<?php
set_query_var('ASSETS_KEY_WORD', 'page_store');
get_header('header');
set_query_var('class', 'is-active');
get_template_part('partials/global/content', 'navbar');

?>


<section class="sectionStore ">
    <div class="sectionStore__header">
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
    <div class="sectionStore__content x-container">

        <?php
        if (is_singular('product')) : ?>
            <div class="singleProduct">
                <?php woocommerce_content(); ?>
            </div>
        <?php else : ?>
            <div class="store woocommerceProducts">
                <div class="sidebar">
                    <?php dynamic_sidebar('primary'); ?>
                </div>
                <div class="content">
                    
                    <?php do_action('woocommerce_before_shop_loop'); ?>

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
        <?php endif; ?>
    </div>
</section>


<?php

get_template_part('partials/global/content', 'footer');
?>


<?php
get_footer();
?>