<?php

/**
 * Template Name: Cart
 */
?>

<?php
set_query_var('ASSETS_KEY_WORD', 'page_cart');
get_header('header');
set_query_var('class', 'is-active');
get_template_part('partials/global/content', 'navbar');

?>

<section class="sectionCart">
    <div class="sectionCart__content x-container">
        <?php
        while (have_posts()) :
            the_post();
            the_content();
        endwhile;
        ?>
    </div>
</section>

<?php
get_template_part('partials/global/content', 'footer');
?>

<?php
get_footer();
?>