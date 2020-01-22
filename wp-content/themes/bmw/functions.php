<?php

define('ROOTPATH', __DIR__);
define('BASE_URL', get_bloginfo('url'));
define('ALLOW_UNFILTERED_UPLOADS', true);



if (!is_admin()) {

    function wpb_search_filter($query)
    {
        if ($query->is_search) {
            $query->set('post_type', 'post');
        }
        return $query;
    }

    add_filter('pre_get_posts', 'wpb_search_filter');
}

/*
 * includes
 */
require dirname(__FILE__) . '/vendor/autoload.php';


/**
 * image sizes
 */
add_image_size('custom-large-size', 1920, 1980, array('center', 'center'));



/**
 * [$baseUrl description]
 * @var [type]
 */
$baseUrl = get_template_directory_uri();


/**
 * remove scripts from <head>
 */
remove_action('wp_head', 'rsd_link');
remove_action('wp_head', 'wlwmanifest_link');
remove_action('wp_head', 'wp_generator');
remove_action('wp_head', 'start_post_rel_link');
remove_action('wp_head', 'index_rel_link');
remove_action('wp_head', 'adjacent_posts_rel_link');
remove_action('wp_head', 'adjacent_posts_rel_link_wp_head');



add_theme_support('html-5');
add_theme_support('post-thumbnails');
add_theme_support('custom-logo');
add_theme_support('title-tag');
add_theme_support('woocommerce');


add_action('widgets_init', 'my_register_sidebars');
function my_register_sidebars()
{
    /* Register the 'primary' sidebar. */
    register_sidebar(
        array(
            'id'            => 'primary',
            'name'          => __('Primary Sidebar'),
            'description'   => __('A short description of the sidebar.'),
            'before_widget' => '<div id="%1$s" class="widget %2$s">',
            'after_widget'  => '</div>',
            'before_title'  => '<h3 class="widget-title">',
            'after_title'   => '</h3>',
        )
    );
    /* Repeat register_sidebar() code for additional sidebars. */
}



/**
 * hide admin menu on front-end part
 */
add_filter('show_admin_bar', 'no_admin_bar');

function no_admin_bar()
{
    return false;
}

/**
 * set content type for an email
 * @param [type] $content_type [description]
 */
function set_content_type($content_type)
{
    return 'text/html';
}

if (function_exists('acf_add_options_page')) {
    acf_add_options_page();
}

function cc_mime_types($mimes)
{
    $mimes['svg'] = 'image/svg+xml';
    return $mimes;
}
add_filter('upload_mimes', 'cc_mime_types');


function custom_menus()
{
    register_nav_menus(array(
        'primary' => __('Primary menu')
    ));
}

add_action('init', 'custom_menus');

function setup_woocommerce()
{
    add_theme_support('wc-product-gallery-lightbox');
    add_theme_support('wc-product-gallery-slider');
}
add_action('after_setup_theme', 'setup_woocommerce');


add_action('wp_ajax_nopriv_login_check', 'loginCheck');
add_action('wp_ajax_login_check', 'loginCheck');


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



/**
 * login check
 *
 * @author  Joe Sexton <joe.sexton@bigideas.com>
 */
function loginCheck()
{

    if (is_user_logged_in()) {

        echo json_encode(array('success' => true, 'message' => 'You are already logged in'));
        die;
    }

    // check the nonce, if it fails the function will break
    check_ajax_referer('ajax-login-nonce', 'security');

    // get the POSTed credentials
    $creds = array();
    $creds['user_login']    = !empty($_POST['username']) ? $_POST['username'] : null;
    $creds['user_password'] = !empty($_POST['password']) ? $_POST['password'] : null;
    $creds['remember']      = !empty($_POST['rememberme']) ? $_POST['rememberme'] : null;

    // check for empty fields
    if (empty($creds['user_login']) || empty($creds['user_password'])) {

        echo json_encode(array('success' => true, 'message' => 'The username or password is cannot be empty'));
        die;
    }

    // check login
    $user = wp_signon($creds, false);

    if (is_wp_error($user)) {

        if ($user->get_error_code() == "invalid_username" || $user->get_error_code() == "incorrect_password") {

            echo json_encode(array('success' => true, 'message' => 'The username or password is incorrect'));
            die;
        } else {

            echo json_encode(array('success' => true, 'message' => 'There was an error logging you in'));
            die;
        }

        echo json_encode(array('success' => true, 'message' => 'Login successful'));
        die;
    }

    echo json_encode(array('success' => false, 'message' => 'Err'));
    die;
}


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
