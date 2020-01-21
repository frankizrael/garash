<?php

/**
 * Template Name: woocommerce Mi Cuenta
 */
?>
<?php set_query_var('ASSETS_KEY_WORD', 'page_my_account'); ?>
<?php get_header('header'); ?>


<?php
set_query_var('class', 'is-black');
get_template_part('partials/global/content', 'navbar');
?>

<section class="sectionAccount">
<?php echo do_shortcode('[woocommerce_my_account]'); ?> 
</section>

<?php get_footer('footer'); ?>