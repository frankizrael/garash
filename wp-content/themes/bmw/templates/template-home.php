<?php

/**
 * Template Name: Inicio
 */
?>
<?php set_query_var('ASSETS_KEY_WORD', 'page_home'); ?>
<?php get_header('header'); ?>

<?php

//wp_nav_menu();

?>

<section class="sliderHome">
    <div class="swiper-container" data-swiper-id="swiper-home">
        <div class="swiper-wrapper">
            <div class="swiper-slide" style="background-image: url(<?= get_template_directory_uri() ?>/assets/1.png)">
            </div>
            <div class="swiper-slide" style="background-image: url(<?= get_template_directory_uri() ?>/assets/1.png)">
            </div>
            <div class="swiper-slide" style="background-image: url(<?= get_template_directory_uri() ?>/assets/1.png)">
            </div>
        </div>
    </div>
    <div class="swiper-pagination"></div>
</section>

<section class="sectionCategories">
    <h1>Categorias</h1>
    <?php
    $args = array(
        'taxonomy' => 'product_cat',
        'hide_empty' => false,
        'parent'   => 0
    );
    $product_cat = get_terms($args);

    ?>
    <ul>
        <?php foreach ($product_cat as $parent_product_cat) : ?>
            <li>
                <a href="<?= get_term_link($parent_product_cat->term_id) ?>"><?= $parent_product_cat->name ?></a>
                <?php
                $child_args = array(
                    'taxonomy' => 'product_cat',
                    'hide_empty' => false,
                    'parent'   => $parent_product_cat->term_id
                );
                $child_product_cats = get_terms($child_args);
                ?>
                <ul>
                    <?php
                    foreach ($child_product_cats as $child_product_cat) :

                        $thumbnail_id = get_woocommerce_term_meta($child_product_cat->term_id, 'thumbnail_id', true);

                        // get the image URL
                        $image = wp_get_attachment_url($thumbnail_id);


                    ?>
                        <li>
                            <a href="<?= get_term_link($child_product_cat->term_id) ?>"><?= $child_product_cat->name ?></a>
                            <img src="<?= $image ?>" width="50" alt="">
                        </li>
                    <?php endforeach; ?>
                </ul>

            </li>
        <?php endforeach; ?>
    </ul>

</section>


<section class="sectionFeaturedProducts">
    <h1>Productos destacados</h1>

    <?php
    echo do_shortcode('[products limit="4" columns="4" orderby="popularity" class="quick-sale" ]');
    ?>

</section>


<section class="sectionFeaturedProducts">
    <h1>Productos Sale</h1>

    <?php

    echo do_shortcode('[products limit="4" columns="4" orderby="popularity" class="quick-sale" on_sale="true"]');
    ?>

</section>

<?php get_footer('footer'); ?>