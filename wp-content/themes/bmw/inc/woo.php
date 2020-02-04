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


add_filter('wc_add_to_cart_message', 'remove_add_to_cart_message');

function remove_add_to_cart_message()
{
    return;
}


function ship_to_different_address_translation($translated_text, $text, $domain)
{
    switch ($translated_text) {
        case '¿Enviar a una dirección diferente?':
            $translated_text = __('Yo no retiro esta orden');
            break;
    }
    return $translated_text;
}
add_filter('gettext', 'ship_to_different_address_translation', 20, 3);

add_filter('woocommerce_billing_fields', 'add_company_data_field', 10, 1);

function add_company_data_field($address_fields)
{
    if (!isset($address_fields['billing_razon_social'])) {
        $address_fields['billing_razon_social'] = array(
            'label'        => __('Razón Social', 'bmw'),
            'required'     => true,
            'class'        => array('form-row-first'),
            'autocomplete' => 'given-name',
            'priority'     => 111,
            'value'        => '',
        );
    }

    if (!isset($address_fields['billing_ruc'])) {
        $address_fields['billing_ruc'] = array(
            'label'        => __('Ruc', 'bmw'),
            'required'     => true,
            'class'        => array('form-row-last'),
            'autocomplete' => 'given-name',
            'priority'     => 112,
            'value'        => '',
        );
    }

    if (!isset($address_fields['billing_fiscal'])) {
        $address_fields['billing_fiscal'] = array(
            'label'        => __('Dirección del domicilio fiscal', 'bmw'),
            'required'     => true,
            'class'        => array('form-row-wide'),
            'autocomplete' => 'given-name',
            'priority'     => 113,
            'value'        => '',
        );
    }
    return $address_fields;
}



add_filter('woocommerce_shipping_fields', 'add_local_data_field', 10, 1);

function add_local_data_field($address_fields)
{
    if (!isset($address_fields['shipping_local'])) {
        $address_fields['shipping_local'] = array(
            'label'        => __('Local de envio', 'bmw'),
            'required'     => true,
            'class'        => array('form-row-wide'),
            'autocomplete' => 'given-name',
            'priority'     => 220,
            'value'        => '',
        );
    }
    return $address_fields;
}




add_filter('woocommerce_sale_flash', 'add_percentage_to_sale_badge', 20, 3);
function add_percentage_to_sale_badge($html, $post, $product)
{
    if ($product->is_type('variable')) {
        $percentages = array();

        // Get all variation prices
        $prices = $product->get_variation_prices();

        // Loop through variation prices
        foreach ($prices['price'] as $key => $price) {
            // Only on sale variations
            if ($prices['regular_price'][$key] !== $price) {
                // Calculate and set in the array the percentage for each variation on sale
                $percentages[] = round(100 - ($prices['sale_price'][$key] / $prices['regular_price'][$key] * 100));
            }
        }
        // We keep the highest value
        $percentage = max($percentages) . '%';
    } else {
        $regular_price = (float) $product->get_regular_price();
        $sale_price    = (float) $product->get_sale_price();

        $percentage    = round(100 - ($sale_price / $regular_price * 100)) . '%';
    }
    return '<span class="onsale">' . esc_html__('', 'woocommerce') . ' ' . $percentage . '</span>';
}


function woocommerce_button_proceed_to_checkout()
{
    $checkout_url = WC()->cart->get_checkout_url();
?>
    <a href="<?php echo $checkout_url; ?>" class="checkout-button button alt wc-forward"><?php _e('Continuar con mi compra', 'woocommerce'); ?></a>
<?php
}
?>