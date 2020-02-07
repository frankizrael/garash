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

<section class="sliderHome" id="home">

    <?php if( have_rows('slider_home') ): ?>
        <ul class="slider">
            <?php while( have_rows('slider_home') ): the_row(); 
                $image = get_sub_field('slider_home_image');
                $title = get_sub_field('slider_home_title');
                $subtitle = get_sub_field('slider_home_subtitle');
                $subtitle = get_sub_field('slider_home_subtitle');
                $buttonText = get_sub_field('slider_home_button');
            ?>
           
                <li class="slider__item">
                    <img src="<?php echo $image; ?>" alt="">
                    <div class="x-container">
                        <div class="x-caption">
                            <h1 class="title"><?php echo  $title; ?></h1>
                            <p class="info">
                                <?php echo  $subtitle; ?>
                            </p>
                            <a href="/" class="button button-primary">BMW Sale</a>
                        </div>
                    </div>
                </li>
            <?php endwhile; ?>
        </ul>
    <?php endif; ?>
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
                <?php foreach ($product_cat as $key => $parent_product_cat) : 
                    ?>
                    <?php
                    if ($key === 0) :
                    ?>
                        <div class="line"></div>
                    <?php endif; ?>
                    <li class="<?php echo $key === 0 ? 'active' : '' ?>">
                        <a href="javascript:void(0)" id="<?php echo $parent_product_cat->slug; ?>"><?php echo $parent_product_cat->name ?></a>
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
                    <div class="tab-item <?php echo $key === 0 ? 'active' : '' ?>" id="<?php echo $parent_product_cat->slug; ?>">
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
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="10.607" height="16.971" viewBox="0 0 10.607 16.971">
                                                        <g transform="translate(-6.364 8.485) rotate(-45)">
                                                            <rect width="12" height="3" transform="translate(12 12) rotate(180)" />
                                                            <rect width="12" height="3" transform="translate(9 12) rotate(-90)" />
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
        <h3 class="title">
            <?php 
                if (get_field('pf_title')):
                    the_field('pf_title');
                endif;
            ?>
        </h3>
            <div class="info-sp">
                <p class="info">
                    <?php 
                        if (get_field('pf_description')):
                            the_field('pf_description');
                        endif;
                    ?>
                </p>
                <a href="">
                    <i>
                        <svg xmlns="http://www.w3.org/2000/svg" width="10.607" height="16.971" viewBox="0 0 10.607 16.971">
                            <g transform="translate(-6.364 8.485) rotate(-45)">
                                <rect width="12" height="3" transform="translate(12 12) rotate(180)"></rect>
                                <rect width="12" height="3" transform="translate(9 12) rotate(-90)"></rect>
                            </g>
                        </svg>
                    </i>
                    Ver todas las ofertas
                </a>
            </div>

            <div class="slider">
                <?php
                echo do_shortcode('[products limit="6" columns="6" orderby="popularity" class="quick-sale" ]');
                ?>
            </div>
    </div>
</section>


<section class="SectionOffers">
    <div class="SectionOffers__content x-container">
        <?php if( have_rows('offers') ): ?>
            <ul class="list">
                <?php while( have_rows('offers') ): the_row(); 
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
                    <?php if($discount): ?>
                        <div class="not" style="background-color:  <?php echo $discount['offers_discount_color'];  ?>"><?php echo $discount['offers_discount_value']; ?></div>
                    <?php endif; ?>
                </li>
                <?php endwhile; ?>
            </ul>
            <div class="x-pagination"></div>
        <?php endif; ?>
    </div>
</section>


<section class="sectionProducts woocommerceProducts">
    <div class="sectionProducts__content x-container">

        <h3 class="title">
            <?php 
                if (get_field('bs_title')):
                    the_field('bs_title');
                endif;
            ?>
        </h3>
            <div class="info-sp">
                <p class="info">
                    <?php 
                        if (get_field('bs_description')):
                            the_field('bs_description');
                        endif;
                    ?>
                </p>
                <a href="">
                    <i>
                        <svg xmlns="http://www.w3.org/2000/svg" width="10.607" height="16.971" viewBox="0 0 10.607 16.971">
                            <g transform="translate(-6.364 8.485) rotate(-45)">
                                <rect width="12" height="3" transform="translate(12 12) rotate(180)"></rect>
                                <rect width="12" height="3" transform="translate(9 12) rotate(-90)"></rect>
                            </g>
                        </svg>
                    </i>
                    Ver todas las ofertas
                </a>
            </div>
            <div class="slider">
                <?php
                echo do_shortcode('[products limit="6" columns="6" orderby="popularity" class="quick-sale" ]');
                ?>
            </div>
    </div>
</section>

<?php

get_template_part('partials/global/content', 'footer');
?>



<?php get_footer('footer'); ?>