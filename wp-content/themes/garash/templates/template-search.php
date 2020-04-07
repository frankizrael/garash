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
$query = filter_input(INPUT_GET, 'search');
$count = 0;
?>

<section class="sectionSearch">

    <div class="sectionSearch__header x-container">
        <div class="search">
            <form action="/buscar/" method="GET">
                <div class="row">
                    <div class="control full">
                        <label>Buscar</label>
                        <input type="text" name="query" id="query" value="<?php echo $query; ?>">
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
                'posts_per_page' => -1,
                's' => $query
            );
            $loop = new WP_Query($args);
            if ($loop->have_posts()) {
                $count = $loop->post_count;
                $c = 0;
                while ($loop->have_posts()) : $loop->the_post();
                    $c++;
                    set_query_var('c', $c);
                    get_template_part('partials/global/content', 'search');
                endwhile;
            } else {
                echo __('No products found');
            }
            wp_reset_postdata();
            ?>
        </ul>
        <?php if ($count > 3) : ?>
            <div class="more">
                <a href="javascript:void(0)" class="button button-primary" id="btn-more">Más resultados</a>
            </div>
        <?php endif; ?>
    </div>
</section>

<?php
get_template_part('partials/global/content', 'footer');
?>


<?php get_footer('footer'); ?>