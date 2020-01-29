<?php

/**
 * Template Name: Inicio
 */
?>
<?php
set_query_var('ASSETS_KEY_WORD', 'page_home');
get_header('header');
get_template_part('partials/global/content', 'navbar');
?>

<section class="sliderHome">
    <ul class="slider">
        <?php
        for ($i = 1; $i <= 4; $i++) :
        ?>
            <li class="slider__item">
                <img src="<?php echo get_template_directory_uri() ?>/assets/1.png" alt="">
                <div class="x-container">
                    <div class="x-caption">
                        <h1 class="title">BMW LIFESTYLE <?php echo $i ?></h1>
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
            <ul class="tabs__links">
                <?php foreach ($product_cat as $key => $parent_product_cat) : ?>
                    <?php
                    if ($key === 0) :
                    ?>
                        <div class="line"></div>
                    <?php endif; ?>
                    <li class="<?php echo $key === 0 ? 'active' : '' ?>">
                        <a href="javascript:void(0)"><?php echo $parent_product_cat->name ?></a>
                    </li>
                <?php endforeach; ?>
            </ul>
            <div class="tabs__content">
                <?php foreach ($product_cat as $key => $parent_product_cat) : ?>
                    <?php
                    $child_args = array(
                        'taxonomy' => 'product_cat',
                        'hide_empty' => false,
                        'parent'   => $parent_product_cat->term_id
                    );
                    $child_product_cats = get_terms($child_args);
                    ?>
                    <div class="tab-item <?php echo $key === 0 ? 'active' : '' ?>">
                        <ul class="lists">
                            <?php
                            foreach ($child_product_cats as $child_product_cat) :
                                $thumbnail_id = get_woocommerce_term_meta($child_product_cat->term_id, 'thumbnail_id', true);
                                $image = wp_get_attachment_url($thumbnail_id);
                            ?>
                                <li>
                                    <div class="overlay"></div>
                                    <img src="<?php echo $image ?>" width="50" alt="">
                                    <div class="x-caption">
                                        <a href="<?php echo get_term_link($child_product_cat->term_id) ?>">
                                            <div class="name">
                                                <?php echo $child_product_cat->name ?>
                                            </div>
                                            <div class="icon">
                                                <i>
                                                    <svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 492.004 492.004" style="enable-background:new 0 0 492.004 492.004;" xml:space="preserve">
                                                        <g>

                                                            <path d="M382.678,226.804L163.73,7.86C158.666,2.792,151.906,0,144.698,0s-13.968,2.792-19.032,7.86l-16.124,16.12
                                                        c-10.492,10.504-10.492,27.576,0,38.064L293.398,245.9l-184.06,184.06c-5.064,5.068-7.86,11.824-7.86,19.028
                                                        c0,7.212,2.796,13.968,7.86,19.04l16.124,16.116c5.068,5.068,11.824,7.86,19.032,7.86s13.968-2.792,19.032-7.86L382.678,265
                                                        c5.076-5.084,7.864-11.872,7.848-19.088C390.542,238.668,387.754,231.884,382.678,226.804z" />
                                                        </g>
                                                    </svg>
                                                </i>
                                                Ver productos

                                            </div>

                                        </a>
                                    </div>
                                </li>
                            <?php endforeach; ?>
                        </ul>
                    </div>
                <?php endforeach; ?>
            </div>
        </div>
        <div class="link">
            <a href="/" class="button button-primary">Ver categoría</a>
        </div>
    </div>
</section>


<section class="sectionProducts woocommerceProducts">
    <div class="sectionProducts__content x-container">
        <h3 class="title">Productos destacados</h1>
            <p class="ifo">
                Morbi in sem quis dui placerat ornare. Pellentesque odio nisi, euismod in.
            </p>
            <div class="slider">
                <?php
                echo do_shortcode('[products limit="6" columns="6" orderby="popularity" class="quick-sale" ]');
                ?>
            </div>
    </div>
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


<section class="sectionProducts woocommerceProducts">
    <div class="sectionProducts__content x-container">
        <h3 class="title">BMW Sale</h1>
            <p class="ifo">
                Morbi in sem quis dui placerat ornare. Pellentesque odio nisi, euismod in.
            </p>
            <div class="slider">
                <?php
                echo do_shortcode('[products limit="6" columns="6" orderby="popularity" class="quick-sale" ]');
                ?>
            </div>
    </div>
</section>
<div class="bg"></div>
<?php

get_template_part('partials/global/content', 'footer');
?>



<?php get_footer('footer'); ?>