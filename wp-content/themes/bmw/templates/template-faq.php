<?php

/**
 * Template Name: Faq
 */
?>
<?php
set_query_var('ASSETS_KEY_WORD', 'page_faq');
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
                        Preguntas frecuentes
                    </h2>

                </div>
                <div class="sectionInfo__content">
                    <ul class="list">
                        <?php
                        for ($i = 0; $i < 10; $i++) {

                        ?>
                            <li class="list__item">
                                <h3 class="title">Aliquam tincidunt mauris eu risus</h3>
                                <div>
                                    <p>

                                        Morbi in sem quis dui placerat ornare. Pellentesque odio nisi, euismod in, pharetra a, ultricies in, diam. Sed arcu. Cras consequat
                                    </p>

                                    <p>
                                        Praesent dapibus, neque id cursus faucibus, tortor neque egestas augue, eu vulputate magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus.
                                    </p>
                                    <p>


                                        Phasellus ultrices nulla quis nibh. Quisque a lectus. Donec consectetuer ligula vulputate sem tristique cursus. Nam nulla quam, gravida non, commodo a, sodales sit amet, nisi.
                                    </p>
                                </div>
                            </li>
                        <?php } ?>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</section>

<?php
get_template_part('partials/global/content', 'footer');
?>


<?php get_footer('footer'); ?>