<?php

/**
 * Template Name: Inicio
 */
?>
<?php set_query_var('ASSETS_KEY_WORD', 'page_home'); ?>
<?php get_header('header'); ?>

<div class="navbar">
    <div class="x-container">
        <div class="navbar__content">
            <nav>
                <?php wp_nav_menu(); ?>
            </nav>


            <div class="icons">
                <button class="search">
                    <i>
                        <svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 511.999 511.999" style="enable-background:new 0 0 511.999 511.999;" xml:space="preserve">

                            <path d="M508.874,478.708L360.142,329.976c28.21-34.827,45.191-79.103,45.191-127.309c0-111.75-90.917-202.667-202.667-202.667
			S0,90.917,0,202.667s90.917,202.667,202.667,202.667c48.206,0,92.482-16.982,127.309-45.191l148.732,148.732
			c4.167,4.165,10.919,4.165,15.086,0l15.081-15.082C513.04,489.627,513.04,482.873,508.874,478.708z M202.667,362.667
			c-88.229,0-160-71.771-160-160s71.771-160,160-160s160,71.771,160,160S290.896,362.667,202.667,362.667z" />

                        </svg>
                    </i>
                </button>
                <button class="account">
                    <i>
                        <svg version="1.1" id="Capa_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="43.028px" height="43.028px" viewBox="0 0 43.028 43.028" style="enable-background:new 0 0 43.028 43.028;" xml:space="preserve">
                            <g>
                                <path d="M39.561,33.971l-0.145,0.174c-4.774,5.728-11.133,8.884-17.902,8.884c-6.77,0-13.128-3.155-17.903-8.884l-0.144-0.174
		l0.034-0.223c0.922-6.014,4.064-10.845,8.847-13.606l0.34-0.196l0.271,0.284c2.259,2.37,5.297,3.674,8.554,3.674
		s6.295-1.305,8.554-3.674l0.271-0.284l0.34,0.196c4.783,2.761,7.925,7.592,8.848,13.606L39.561,33.971z M21.514,21.489
		c5.924,0,10.744-4.82,10.744-10.744C32.258,4.821,27.438,0,21.514,0S10.77,4.821,10.77,10.744S15.59,21.489,21.514,21.489z" />
                            </g>

                        </svg>
                    </i>
                </button>
                <button class="cart">
                    <i>

                        <svg height="512pt" viewBox="0 -31 512.00026 512" width="512pt" xmlns="http://www.w3.org/2000/svg">
                            <path d="m164.960938 300.003906h.023437c.019531 0 .039063-.003906.058594-.003906h271.957031c6.695312 0 12.582031-4.441406 14.421875-10.878906l60-210c1.292969-4.527344.386719-9.394532-2.445313-13.152344-2.835937-3.757812-7.269531-5.96875-11.976562-5.96875h-366.632812l-10.722657-48.253906c-1.527343-6.863282-7.613281-11.746094-14.644531-11.746094h-90c-8.285156 0-15 6.714844-15 15s6.714844 15 15 15h77.96875c1.898438 8.550781 51.3125 230.917969 54.15625 243.710938-15.941406 6.929687-27.125 22.824218-27.125 41.289062 0 24.8125 20.1875 45 45 45h272c8.285156 0 15-6.714844 15-15s-6.714844-15-15-15h-272c-8.269531 0-15-6.730469-15-15 0-8.257812 6.707031-14.976562 14.960938-14.996094zm312.152343-210.003906-51.429687 180h-248.652344l-40-180zm0 0" />
                            <path d="m150 405c0 24.8125 20.1875 45 45 45s45-20.1875 45-45-20.1875-45-45-45-45 20.1875-45 45zm45-15c8.269531 0 15 6.730469 15 15s-6.730469 15-15 15-15-6.730469-15-15 6.730469-15 15-15zm0 0" />
                            <path d="m362 405c0 24.8125 20.1875 45 45 45s45-20.1875 45-45-20.1875-45-45-45-45 20.1875-45 45zm45-15c8.269531 0 15 6.730469 15 15s-6.730469 15-15 15-15-6.730469-15-15 6.730469-15 15-15zm0 0" /></svg>
                    </i>
                </button>

                <div class="box-search">
                    <?php if (function_exists('aws_get_search_form')) {
                        aws_get_search_form();
                    } ?>
                </div>
            </div>
        </div>
    </div>
</div>

<?php

// var_dump(is_user_logged_in());
// die('ho');
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
            <ul class="tabs__links">
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
                    <div class="tab-item <?= $key === 0 ? 'active' : '' ?>">
                        <ul class="lists">
                            <?php
                            foreach ($child_product_cats as $child_product_cat) :
                                $thumbnail_id = get_woocommerce_term_meta($child_product_cat->term_id, 'thumbnail_id', true);
                                $image = wp_get_attachment_url($thumbnail_id);
                            ?>
                                <li>
                                    <div class="overlay"></div>
                                    <img src="<?= $image ?>" width="50" alt="">
                                    <div class="x-caption">
                                        <a href="<?= get_term_link($child_product_cat->term_id) ?>">
                                            <div class="name">
                                                <?= $child_product_cat->name ?>
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
            <a href="/" class="button button-primary">Ver categoria</a>
        </div>
    </div>
</section>


<section class="sectionProducts">
    <div class="sectionProducts__content x-container">
        <h3 class="title">Productos destacados</h1>

            <?php
            echo do_shortcode('[products limit="4" columns="4" orderby="popularity" class="quick-sale" ]');
            ?>
    </div>

</section>


<section class="sectionProducts">
    <div class="sectionProducts__content x-container">
        <h3 class="title">Productos destacados</h1>
            <?php

            echo do_shortcode('[products limit="4" columns="4" orderby="popularity" class="quick-sale" on_sale="true"]');
            ?>
    </div>

</section>

<?php get_footer('footer'); ?>