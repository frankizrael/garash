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
    <ul class="slider">
        <?php
        for ($i = 1; $i <= 4; $i++) :
        ?>
            <li class="slider__item">
                <img src="<?= get_template_directory_uri() ?>/assets/1.png" alt="">
                <div class="x-container">
                    <div class="x-caption">
                        <h1 class="title">BMW LIFESTYLE <?= $i ?></h1>
                        <p class="info">
                            La vida esta llena de aventuras, las posibilidades son infinitas, la libertad y el estilo no conoce límites.
                        </p>
                        <a href="/" class="button button-primary">BMW Sale</a>
                    </div>
                </div>
            </li>
        <?php
        endfor;
        ?>

    </ul>
</section>

<section class="sectionCategories">
    <div class="sectionCategories__content x-container">
        <h3 class="title">Categorías</h3>
        <?php
        $args = array(
            'taxonomy' => 'product_cat',
            'hide_empty' => false,
            'parent'   => 0
        );
        $product_cat = get_terms($args);

        ?>
        <div class="tabs">
            <ul>
                <?php foreach ($product_cat as $key => $parent_product_cat) : ?>
                    <?php
                    if ($key === 0) :
                    ?>
                        <div class="line"></div>
                    <?php endif; ?>
                    <li class="<?= $key === 0 ? 'active' : '' ?>">
                        <a href="javascript:void(0)"><?= $parent_product_cat->name ?></a>
                    </li>
                <? endforeach; ?>
            </ul>
        </div>
        <!-- 
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
        !-->
    </div>
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