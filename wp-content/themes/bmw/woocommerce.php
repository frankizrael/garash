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
                    <div class="sidebar__header">
                        <a href="javascript:void(0)" class="button-close">
                            
<svg height="365.696pt" viewBox="0 0 365.696 365.696" width="365.696pt" xmlns="http://www.w3.org/2000/svg"><path d="m243.1875 182.859375 113.132812-113.132813c12.5-12.5 12.5-32.765624 0-45.246093l-15.082031-15.082031c-12.503906-12.503907-32.769531-12.503907-45.25 0l-113.128906 113.128906-113.132813-113.152344c-12.5-12.5-32.765624-12.5-45.246093 0l-15.105469 15.082031c-12.5 12.503907-12.5 32.769531 0 45.25l113.152344 113.152344-113.128906 113.128906c-12.503907 12.503907-12.503907 32.769531 0 45.25l15.082031 15.082031c12.5 12.5 32.765625 12.5 45.246093 0l113.132813-113.132812 113.128906 113.132812c12.503907 12.5 32.769531 12.5 45.25 0l15.082031-15.082031c12.5-12.503906 12.5-32.769531 0-45.25zm0 0"/></svg>
                        </a>
                        <h4 class="title">Filtro</h4>
                    </div>
                    <div class="sidebar__content">
                        <?php dynamic_sidebar('primary'); ?>
                    </div>

                </div>
                <div class="content">
                    <?php $page_object = get_queried_object();
                    if (isset($page_object->name) && $page_object->name !== 'product') :
                    ?>
                        <h3 class="title-category">
                            <?php echo $page_object->name; ?>
                        </h3>
                    <?php endif; ?>
                    <button class="button-filter">
                        <svg xmlns="http://www.w3.org/2000/svg" width="17.075" height="15.367" viewBox="0 0 17.075 15.367">
                            <path id="Icon_feather-filter" data-name="Icon feather-filter" d="M3,4.5H20.075l-6.83,8.076V18.16L9.83,19.867V12.576Z" transform="translate(-3 -4.5)" fill="#bbb" />
                        </svg>
                        Filtro
                    </button>
                    <div class="filter-top">
                        <?php do_action('woocommerce_before_shop_loop'); ?>
                    </div>

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