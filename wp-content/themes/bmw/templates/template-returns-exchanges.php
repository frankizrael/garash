<?php

/**
 * Template Name: Returns / Exchanges
 */
?>
<?php
set_query_var('ASSETS_KEY_WORD', 'page_returns_exchanges');
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
                    <div class="subtitle">
                        Políticas de devolución y cambios BMW
                    </div>
                </div>
                <div class="sectionInfo__content">
                    <strong>Condiciones generales:</strong>
                    <ol>
                        <li>
                            Presentar el comprobante de compra ya sea boleta o factura respectiva.
                        </li>
                        <li>
                            Presentar el Documento de Identidad
                        </li>
                        <li>
                            El producto debe encontrarse sin uso (sellado de fábrica) y contar con todos sus accesorios.
                        </li>
                        <li>
                            El producto debe contar con todos sus empaques originales y en perfectas condiciones.
                        </li>
                    </ol>
                    <p>
                        Para realizar cambios o devoluciones de productos, debes tener en cuenta su tamaño.

                    </p>
                    <ol class="m-l-15">
                        <li>
                            Si tu producto es de fácil traslado a las tiendas (Por ejemplo: laptops, licuadoras, microondas, TV hasta 32”, vestuario, calzados, accesorios, etc) Deberás acercarse a cualquier centro de caja ubicadas en nuestras tiendas

                            <div class="m-15">

                                <p>
                                    Deberás acercarse a cualquier centro de caja ubicadas en nuestras tiendas
                                </p>
                                <strong>¿Cómo realizo el cambio?</strong>
                                <ol>
                                    <li>Dirígete a la tienda BMW más cercana. </li>
                                    <li>Registra el producto en la puerta de ingreso. </li>
                                    <li>Para cambio de talla/producto elije el producto y acércate a los centros de caja y realiza tu cambio.</li>
                                    <li>Para nota de crédito/devolución acércate a los centros de caja de tienda y realiza la devolución de tu compra. </li>

                                    <div class="note">
                                        Nota: En el caso de devolución de prendas íntimas, estas serán destruidas para su salida definitiva del mercado.
                                    </div>
                                </ol>
                            </div>
                        </li>
                        <li>
                            Si el tamaño de tu producto no te permite trasladarlo a una tienda (Por ejemplo: Lavadoras, refrigerados, colchones, etc): Deberás generar tu solicitud a través de nuestra Asistente Virtual Amanda o en la opción Mis Órdenes, en www.BMW.com, o a través del Call Center 512-3333

                        </li>

                    </ol>
                    <p>
                        Tener en cuenta que los servicios de retiro de productos por motivos ajenos de responsabilidad a BMW, tienen un costo adicional dependiendo del lugar de recojo, tamaño y peso del producto. Adicionalmente se deberá abonar el costo de embalaje y/o desarmado en caso lo requiera. Así mismo, el costo de envío pagado inicialmente no será devuelto.
                    </p>
                    <p>
                        Si desistes de una compra, que implique un despacho a domicilio, deberá ser comunicado antes de la fecha acordada, a través de nuestro asistente virtual Amanda o en la opción Mis Órdenes, en www.BMW.com, para su respectiva anulación
                    </p>

                </div>
            </div>
        </div>
    </div>
</section>

<?php
get_template_part('partials/global/content', 'footer');
?>


<?php get_footer('footer'); ?>