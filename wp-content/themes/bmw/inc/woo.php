<?php

function setup_woocommerce()
{
    add_theme_support('wc-product-gallery-lightbox');
    add_theme_support('wc-product-gallery-slider');
}
add_action('after_setup_theme', 'setup_woocommerce');




function woo_remove_product_tabs($tabs)
{
    unset($tabs['description']);
    unset($tabs['reviews']);
    unset($tabs['additional_information']);
    return $tabs;
}
add_filter('woocommerce_product_tabs', 'woo_remove_product_tabs', 98);

add_action('woocommerce_single_product_summary', 'your_function_name', 19);

function your_function_name()
{

    echo '<h3 class="description-store">Descripción</h3>';
}

add_filter('woocommerce_product_single_add_to_cart_text', 'woo_custom_cart_button_text');

function woo_custom_cart_button_text()
{
    return __('Agregar a la bolsa', 'woocommerce');
}


remove_action('woocommerce_single_product_summary', 'woocommerce_template_single_meta', 40);




add_filter('woocommerce_checkout_fields', 'custom_override_checkout_fields');
function custom_override_checkout_fields($fields)
{
    unset($fields['order']['order_comments']);
    unset($fields['billing']['billing_company']);
    unset($fields['billing']['billing_address_2']);
    unset($fields['shipping']['shipping_company']);
    unset($fields['shipping']['shipping_address_2']);
    return $fields;
}

function isa_woo_cart_attributes($cart_item, $cart_item_key)
{
    global $product;
    if (is_cart()) {
        echo "<style>#checkout_thumbnail{display:none;}</style>";
    }
    $item_data = $cart_item_key['data'];
    $post = get_post($item_data->id);
    $thumb = get_the_post_thumbnail($item_data->id, array(32, 50));
    echo '<div id="checkout_thumbnail" style="float: left; padding-right: 8px">' . $thumb . '</div> ' . $post->post_title;
}
add_filter('woocommerce_cart_item_name', 'isa_woo_cart_attributes', 10, 2);


add_filter('wc_add_to_cart_message', 'remove_add_to_cart_message');

function remove_add_to_cart_message()
{
    return;
}


function ship_to_different_address_translation($translated_text, $text, $domain)
{
    switch ($translated_text) {
        case '¿Enviar a una dirección diferente?':
            $translated_text = __('Activa esta opción para solicitar factura');
            break;
    }
    return $translated_text;
}
add_filter('gettext', 'ship_to_different_address_translation', 20, 3);

add_filter('woocommerce_shipping_fields', 'add_company_data_field', 10, 1);

function add_company_data_field($address_fields)
{
    if (!isset($address_fields['shipping_razon_social'])) {
        $address_fields['shipping_razon_social'] = array(
            'label'        => __('Razón Social', 'bmw'),
            'required'     => true,
            'class'        => array('form-row-first'),
            'autocomplete' => 'given-name',
            'priority'     => 1,
            'value'        => '',
        );
    }

    if (!isset($address_fields['shipping_ruc'])) {
        $address_fields['shipping_ruc'] = array(
            'label'        => __('Ruc', 'bmw'),
            'required'     => true,
            'class'        => array('form-row-last'),
            'autocomplete' => 'given-name',
            'priority'     => 2,
            'value'        => '',
        );
    }

    if (!isset($address_fields['shipping_fiscal'])) {
        $address_fields['shipping_fiscal'] = array(
            'label'        => __('Dirección del domicilio fiscal', 'bmw'),
            'required'     => true,
            'class'        => array('form-row-wide'),
            'autocomplete' => 'given-name',
            'priority'     => 3,
            'value'        => '',
        );
    }
    return $address_fields;
}



function woocommerce_button_proceed_to_checkout()
{
    $checkout_url = WC()->cart->get_checkout_url();
?>
    <a href="<?php echo $checkout_url; ?>" class="checkout-button button alt wc-forward"><?php _e('Continuar con mi compra', 'woocommerce'); ?></a>
<?php
}
