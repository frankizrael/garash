<?php

/**
 * Template Name: Inicio
 */
?>
<?php set_query_var('ASSETS_KEY_WORD', 'page_home'); ?>
<?php get_header('header'); ?>

<section class="sliderHome">
    <div class="swiper-container" data-swiper-id="swiper-home">
        <div class="swiper-wrapper">
            <div class="swiper-slide" style="background-image: url(<?=get_template_directory_uri()?>/assets/1.png)">
            </div>
            <div class="swiper-slide" style="background-image: url(<?=get_template_directory_uri()?>/assets/1.png)">
            </div>
            <div class="swiper-slide" style="background-image: url(<?=get_template_directory_uri()?>/assets/1.png)">
            </div>
        </div>
    </div>
    <div class="swiper-pagination"></div>
</section>


<section class="sectionCategories">

</section>


<?php get_footer('footer'); ?>