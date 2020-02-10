<?php

/**
 * Template Name: Checkout
 */
?>

<?php
set_query_var('ASSETS_KEY_WORD', 'page_checkout');
get_header('header');
set_query_var('class', 'is-active');
get_template_part('partials/global/content', 'navbar');

$key = filter_input(INPUT_GET, 'key');

?>

<section class="sectionCheckout">
    <div class="sectionCheckout__header">
        <div class="bar">
            <div class="x-container">
                <?php if (is_checkout() && !$key) : ?>
                    <ul class="steps">
                        <li class="active">
                            <div class="left">
                                <div class="number">1</div>
                                <div class="text">Bolsa de compras</div>
                            </div>
                        </li>
                        <li class="center active">
                            <div class="arrow">
                                <svg xmlns="http://www.w3.org/2000/svg" width="10.607" height="16.971" viewBox="0 0 10.607 16.971">
                                    <g transform="translate(-6.364 8.485) rotate(-45)">
                                        <rect width="12" height="3" fill="#D9D9D9" transform="translate(12 12) rotate(180)"></rect>
                                        <rect width="12" height="3" fill="#D9D9D9" transform="translate(9 12) rotate(-90)"></rect>
                                    </g>
                                </svg>
                            </div>
                            <div class="left">
                                <div class="number">2</div>
                                <div class="text">Despacho</div>
                            </div>
                            <div class="right">
                                <svg xmlns="http://www.w3.org/2000/svg" width="10.607" height="16.971" viewBox="0 0 10.607 16.971">
                                    <g transform="translate(-6.364 8.485) rotate(-45)">
                                        <rect width="12" height="3" fill="#D9D9D9" transform="translate(12 12) rotate(180)"></rect>
                                        <rect width="12" height="3" fill="#D9D9D9" transform="translate(9 12) rotate(-90)"></rect>
                                    </g>
                                </svg>
                            </div>
                        </li>
                        <li>
                            <div class="left">
                                <div class="number">3</div>
                                <div class="text">Confirmación</div>
                            </div>
                        </li>
                    </ul>
                <?php elseif (is_checkout() && $key) : ?>
                    <ul class="steps">
                        <li class="active">
                            <div class="left">
                                <div class="number">1</div>
                                <div class="text">Bolsa de compras</div>
                            </div>
                        </li>
                        <li class="center active last">
                            <div class="arrow">
                                <svg xmlns="http://www.w3.org/2000/svg" width="10.607" height="16.971" viewBox="0 0 10.607 16.971">
                                    <g transform="translate(-6.364 8.485) rotate(-45)">
                                        <rect width="12" height="3" fill="#D9D9D9" transform="translate(12 12) rotate(180)"></rect>
                                        <rect width="12" height="3" fill="#D9D9D9" transform="translate(9 12) rotate(-90)"></rect>
                                    </g>
                                </svg>
                            </div>
                            <div class="left">
                                <div class="number">2</div>
                                <div class="text">Despacho</div>
                            </div>
                            <div class="right">
                                <svg xmlns="http://www.w3.org/2000/svg" width="10.607" height="16.971" viewBox="0 0 10.607 16.971">
                                    <g transform="translate(-6.364 8.485) rotate(-45)">
                                        <rect width="12" height="3" fill="#D9D9D9" transform="translate(12 12) rotate(180)"></rect>
                                        <rect width="12" height="3"  fill="#D9D9D9" transform="translate(9 12) rotate(-90)"></rect>
                                    </g>
                                </svg>
                            </div>
                        </li>
                        <li class="active">
                            <div class="left">
                                <div class="number">3</div>
                                <div class="text">Confirmación</div>
                            </div>
                        </li>
                    </ul>
                <?php else : ?>
                    <div class="x-bg">
                        <?php
                        $args = array(
                            'delimiter' => ' / ',
                            'before' => ''
                        );
                        ?>
                        <?php woocommerce_breadcrumb($args); ?>
                    </div>
                <?php endif; ?>

            </div>
        </div>
    </div>
    <div class="sectionCheckout__content x-container">
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