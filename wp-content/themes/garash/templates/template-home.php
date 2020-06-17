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
                            <a href="/" class="button button-primary">Ver más</a>
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
        <div class="categoryA">
            <?php
                $cat = get_field('categoria');
                if ($cat) {
                    foreach ($cat as $c) {
            ?>
            <div class="categoryA__item" style="background-image: url('<?php echo $c['imagen']; ?>');">
                <div class="midTitle">
                    <h3><?php echo $c['title']; ?></h3>
                    <a href="<?php echo $c['link']; ?>">¡Ver ahora!</a>
                </div>
            </div>
            <?php
                    }
                }
            ?>
        </div>
        <div class="link">
            <a href="<?php echo site_url(); ?>/product-category/neumatico/" class="button button-primary">Ver categoría</a>
        </div>
    </div>
</section>


<section class="sectionProducts woocommerceProducts">
    <div class="sectionProducts__content x-container">
        <h3 class="title"><?php if (get_field('pf_title')): the_field('pf_title'); endif; ?></h3>
            <div class="info-sp">
                <p class="info">
                    <?php 
                        if (get_field('pf_description')):
                            the_field('pf_description');
                        endif;
                    ?>
                </p>
            </div>

            <div class="slider prod">
                <?php
                echo do_shortcode('[products limit="6" columns="6" orderby="popularity" class="quick-sale" ]');
                ?>
            </div>
    </div>
</section>





<section class="sectionProducts woocommerceProducts">
    <div class="sectionProducts__content x-container">
        <h3 class="title"><?php if (get_field('bs_title')): the_field('bs_title'); endif; ?></h3>
            <div class="info-sp">
                <p class="info">
                    <?php 
                        if (get_field('bs_description')):
                            the_field('bs_description');
                        endif;
                    ?>
                </p>
            </div>
            <div class="slider prod">
                <?php
                echo do_shortcode('[products limit="6" columns="6" orderby="popularity" class="quick-sale" ]');
                ?>
            </div>
    </div>
</section>


<section class="sectionProducts woocommerceProducts sectionListMark">
    <div class="sectionProducts__content x-container">

        <h3 class="title">Trabajamos con las siguientes marcas</h3>
        <div class="listmark">
            <?php
                $marks = get_field('marcas');
                foreach ($marks as $m) {
                    ?>
                    <div class="listmarkItem">
                        <img src="<?php echo $m['marca']; ?>">
                    </div>
                    <?php
                }
            ?>
        </div>
    </div>
</section>
<?php

get_template_part('partials/global/content', 'footer');
?>



<?php get_footer('footer'); ?>
<script type="text/javascript">
    jQuery('.tabs__links li').eq(0).addClass('active');
    jQuery('.tab-item').eq(0).addClass('active');
    let wid = jQuery('.tabs__links li').eq(0).width();
    jQuery('.line').css('width',wid)
    jQuery('.tabs__links li').on('click',function(){
        let thisS = jQuery(this);
        jQuery('.tabs__links li').removeClass('active');
        thisS.addClass('active');
    });
</script>

    <script>
        jQuery(window).scroll(function() {
            initScroll();
        });
        window.onload = function() {
            initScroll();
        };

        function initScroll() {
            var top = jQuery(window).scrollTop();
            var isSearch = jQuery('.navbar').hasClass('is-search');
            if (top > 150 && !isSearch) {
                if (!jQuery(".navbar").hasClass("is-active")) {
                    jQuery(".navbar").addClass("is-active");
                }
            } else {
                if (top <= 150 && !isSearch) {
                    jQuery(".navbar").removeClass("is-active");
                }

            }
        }
    </script>