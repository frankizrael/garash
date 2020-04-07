<?php

/**
 * Template Name: Customer Support
 */
?>
<?php
set_query_var('ASSETS_KEY_WORD', 'page_returns_customer_support');
set_query_var('class', 'is-active');
get_header('header');
get_template_part('partials/global/content', 'navbar');
?>

<section class="services">
    <div class="services__header">
        <div class="bar">
            <div class="x-container">
                <div class="x-bg">
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
                    <h2 class="x-title">
                        Atención al cliente
                    </h2>

                </div>
                <div class="sectionInfo__content">
                    <form  id="form-customer-support">
                        <div class="subtitle">
                            INFORMACIÓN DEL CONTACTO:
                        </div>

                        <div class="row">
                            <div class="control">
                                <label class="label">Nombres</label>
                                <input type="text" id="name" name="name" autocomplete="off">
                            </div>
                            <div class="control">
                                <label class="label">Apellidos</label>
                                <input type="text" id="lastname" name="lastname" autocomplete="off">
                            </div>
                        </div>

                        <div class="row">
                            <div class="control">
                                <label class="label">Teléfono</label>
                                <input type="text" id="phone" name="phone" autocomplete="off">
                            </div>
                            <div class="control">
                                <label class="label">Email</label>
                                <input type="text" id="email" name="email" autocomplete="off">
                            </div>
                        </div>
                         
                        <div class="row">
                            <div class="control full">
                                <label class="label">Comentario:</label>
                                <textarea id="message" name="message"></textarea>
                            </div>
                        </div>

                        <div class="row call-action">

                            <button type="submit" class="button button-primary">
                                <span>ENVIAR</span>
                            </button>
                        </div>

                    </form>
                </div>
            </div>
        </div>
    </div>
</section>

<?php
get_template_part('partials/global/content', 'footer');
?>


<?php get_footer('footer'); ?>