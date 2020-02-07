<?php

/**
 * Template Name: Terms and condition
 */
?>
<?php
set_query_var('ASSETS_KEY_WORD', 'page_terms_conditions');
set_query_var('class', 'is-active');
get_header('header');
get_template_part('partials/global/content', 'navbar');
?>

<section class="services">
    <div class="services__header">
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
    <div class="services__content x-container">
        <?php
        set_query_var('ACTIVE', 'terms-conditions');
        get_template_part('partials/global/content', 'sidebar');
        ?>
        <div class="content">
            <div class="sectionInfo">
                <div class="sectionInfo__header">
                    <h2 class="title">
                        Términos y condiciones
                    </h2>
                </div>
                <div class="sectionInfo__content">
                    <? if (have_posts()) : while (have_posts()) : the_post();
                            the_content();
                        endwhile;
                    endif; ?>
                </div>
            </div>
        </div>
    </div>
</section>

<?php
get_template_part('partials/global/content', 'footer');
?>


<?php get_footer('footer'); ?>