<?php

/**
 * Template Name: Search
 */
?>
<?php
set_query_var('ASSETS_KEY_WORD', 'page_search');
set_query_var('class', 'is-active');
get_header('header');
get_template_part('partials/global/content', 'navbar');
?>

<section class="sectionSearch">

    <div class="sectionSearch__header x-container">
        <div class="search">
            <form action="/" method="GET">
                <div class="row">
                    <div class="control full">
                        <label>Buscar</label>
                        <input type="text" name="query" id="query">
                    </div>
                </div>
                <div class="action">
                    <button type="submit" class="button button-outline" tabindex="0">Buscar</button>
                </div>
            </form>
        </div>
    </div>



    <div class="sectionSearch__content x-container">
        <div class="result">
            <?php printf(__('Mostrando resultados para "%s"', 'bwm'), get_search_query()); ?>
        </div>

        <ul class="list">
            <?php
            $args = array(
                'post_type' => 'product',
                'posts_per_page' => 12
            );
            $loop = new WP_Query($args);
            if ($loop->have_posts()) {
                while ($loop->have_posts()) : $loop->the_post();

                    get_template_part('partials/global/content', 'search');

                endwhile;
            } else {
                echo __('No products found');
            }
            wp_reset_postdata();
            ?>
        </ul>
        <div class="more">
            <a href="javascript:void(0)" class="button button-primary">Más resultados</a>
        </div>
    </div>
</section>

<?php
get_template_part('partials/global/content', 'footer');
?>


<?php get_footer('footer'); ?>