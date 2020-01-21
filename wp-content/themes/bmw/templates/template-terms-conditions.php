<?php

/**
 * Template Name: Terms and condition
 */
?>
<?php
set_query_var('ASSETS_KEY_WORD', 'page_terms_conditions');
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
                    <div class="subtitle">
                        CLÁUSULA RETRASO POR CASO FORTUITO O FUERZA MAYOR
                    </div>
                </div>
                <div class="sectionInfo__content">
                    <p>
                        BMW no incurrirá en responsabilidad si por caso fortuito fuerza mayor y/o desastres naturales BMW o la empresa que contrate para el servicio de Courier no entregase el producto en la fecha acordada con el CLIENTE.
                    </p>

                    <p>
                        El acceso y uso de este sitio web se rige por los “Términos y Condiciones” descritos a continuación, así como por la legislación que se aplique en la República de Perú. En consecuencia, todas las visitas y todos los contratos y transacciones que se realicen en este sitio, como asimismo sus efectos jurídicos, quedarán regidos por estas reglas y sometidas a esta legislación.
                    </p>

                    <p>
                        Los Términos y Condiciones contenidos en este instrumento se aplicarán y se entenderá que forman parte de todos los actos y contratos que se ejecuten o celebren mediante los sistemas de oferta y comercialización comprendidos en este sitio web entre los usuarios de este sitio y BMW S.A., la cual se denominará en adelante también en forma indistinta como “la empresa”, o bien “la empresa oferente”, “el proveedor” o “la empresa proveedora”, según convenga al sentido del texto.
                    </p>
                    <p>
                        Es requisito para comprar en la Tienda Virtual de BMW la aceptación de los Términos y Condiciones de ventas descritos a continuación. Cualquier persona que realice una transacción en la Tienda Virtual de BMW o a través del número telefónico que BMW S.A. destine para tal efecto, declara y reconoce, por el hecho de efectuar la compra, que conoce y acepta todos y cada uno de los Términos y Condiciones descritos a continuación. Se entenderán conocidos y aceptados los Términos y Condiciones por el solo hecho del redelgistro y/o la compra de productos a través de este sitio.
                    </p>
                    <p>
                        BMW se reserva el derecho de actualizar y/o modificar los Términos y Condiciones que detallamos a continuación en cualquier momento, sin previo aviso. Por esta razón recomendamos revisar los Términos y Condiciones cada vez que utilice este Sitio. Los consumidores quedarán sujetos a los Términos y Condiciones del presente sitio, en el momento en el que envíen su solicitud de compra. Realizaremos nuestros mejores esfuerzos para asegurar la disponibilidad, sin interrupciones, de los servicios de la presente página web, así como en la ausencia de errores en cualquier transmision de información que pudiera tener lugar. No obstante, y debido a la naturaleza misma de internet, no es posible garantizar tales extremos.
                    </p>

                    <p>


                        Asimismo, el acceso a los servicios de la presente página web podría ocasionalmente verse suspendido o restringido a efectos de la realización de trabajos de reparación o mantenimiento, o la introducción de nuevos productos o servicios. Procuraremos limitar la frecuencia y duración de tales suspensiones o restricciones.
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