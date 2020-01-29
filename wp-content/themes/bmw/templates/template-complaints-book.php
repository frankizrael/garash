<?php

/**
 * Template Name: Returns / Exchanges
 */
?>
<?php
set_query_var('ASSETS_KEY_WORD', 'page_complaints_book');
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
                        Cambios y devoluciones
                    </h2>

                </div>
                <div class="sectionInfo__content">
                    <form id="form-contact-us">
                        <div class="subtitle">
                            DATOS DE LA PERSONA QUE PRESENTA EL RECLAMO:
                        </div>

                        <div class="row">
                            <div class="customSelect">
                                <label class="label">Tipo de documentos</label>
                                <select name="interest" id="interest">
                                    <option value="">Seleccionar</option>
                                    <option value="DNI">DNI</option>
                                    <option value="CE">CE</option>
                                </select>
                            </div>
                            <div class="control">
                                <label class="label">Nro de documentos</label>
                                <input type="text" id="company" name="company" autocomplete="off">
                            </div>
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
                            <div class="customSelect full">
                                <label class="label">Tipo de propuesta</label>
                                <select name="interest" id="interest">
                                    <option value="">Seleccionar</option>
                                    <option value="DNI">Pr</option>
                                    <option value="CE">CE</option>
                                </select>
                            </div>
                        </div>

                        <div class="row">
                            <div class="control">
                                <label class="label">Dirección</label>
                                <input type="text" id="name" name="name" autocomplete="off">
                            </div>
                            <div class="control">
                                <label class="label">Departamento</label>
                                <input type="text" id="lastname" name="lastname" autocomplete="off">
                            </div>
                        </div>


                        <div class="row">
                            <div class="control">
                                <label class="label">Provincia</label>
                                <input type="text" id="name" name="name" autocomplete="off">
                            </div>
                            <div class="control">
                                <label class="label">Distrito</label>
                                <input type="text" id="lastname" name="lastname" autocomplete="off">
                            </div>
                        </div>


                        <div class="row">
                            <div class="control">
                                <label class="label">Teléfono</label>
                                <input type="text" id="name" name="name" autocomplete="off">
                            </div>
                            <div class="control">
                                <label class="label">Email</label>
                                <input type="text" id="lastname" name="lastname" autocomplete="off">
                            </div>
                        </div>
                        <div class="subtitle">
                            INFORMACIÓN GENERAL
                        </div>

                        <div class="row">
                            <div class="customSelect full">
                                <label class="label">Tienda de compra</label>
                                <select name="interest" id="interest">
                                    <option value="">Seleccionar</option>
                                    <option value="DNI">Pr</option>
                                    <option value="CE">CE</option>
                                </select>
                            </div>
                        </div>
                        <div class="row">
                            <div class="chekbox">
                                <div class="left">
                                    Identificación del bien contratado:
                                </div>
                                <div class="right">
                                    <div class="form-checkbox">
                                        <input type="checkbox" id="producto">
                                        <label for="producto">Producto</label>
                                    </div>
                                    <div class="form-checkbox">
                                        <input type="checkbox" id="servicio">
                                        <label for="servicio">Servicio</label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="control">
                                <label class="label">Monto reclamado S/</label>
                                <input type="text" id="name" name="name" autocomplete="off">
                            </div>
                        </div>
                        <div class="row">
                            <div class="control full">
                                <label class="label">Descripción</label>
                                <textarea id="message" name="message"></textarea>
                            </div>
                        </div>
                        <div class="subtitle">
                            DETALLE DE SU RECLAMO
                        </div>

                        <div class="row">
                            <div class="chekbox">
                                <div class="left">
                                    Tipo:
                                </div>
                                <div class="right">
                                    <div class="form-checkbox">
                                        <input type="checkbox" id="reclamo">
                                        <label for="reclamo">Reclamo</label>
                                    </div>
                                    <div class="form-checkbox">
                                        <input type="checkbox" id="queja">
                                        <label for="queja">Queja</label>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="control full">
                                <label class="label">Detalle del reclamo:</label>
                                <textarea id="message" name="message"></textarea>
                            </div>
                        </div>

                        <div class="row">
                            <div class="control full">
                                <label class="label">Pedido:</label>
                                <textarea id="message" name="message"></textarea>
                            </div>
                        </div>


                        <div class="subtitle">
                            DETALLE DE SU RECLAMO
                        </div>


                        <div class="row">
                            <div class="customSelect">
                                <label class="label">Tipo de documentos</label>
                                <select name="interest" id="interest">
                                    <option value="">Seleccionar</option>
                                    <option value="DNI">DNI</option>
                                    <option value="CE">CE</option>
                                </select>
                            </div>
                            <div class="control">
                                <label class="label">Nro de documentos</label>
                                <input type="text" id="company" name="company" autocomplete="off">
                            </div>
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
                                <input type="text" id="name" name="name" autocomplete="off">
                            </div>
                            <div class="control">
                                <label class="label">Email</label>
                                <input type="text" id="lastname" name="lastname" autocomplete="off">
                            </div>
                        </div>

                        <div class="row">
                            <div class="chekbox">
                                <div class="form-checkbox">
                                    <input type="checkbox" id="1">
                                    <label for="1">Al enviar este formulario acepto el flujo transfronterizo de mis datos personales, según la Ley de Protección de Datos Personales.</label>
                                </div>
                            </div>
                        </div>

                        <div class="row call-action">

                            <button class="button button-primary">
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