<?php

define('ROOTPATH', __DIR__);
define('BASE_URL', get_bloginfo('url'));
define('ALLOW_UNFILTERED_UPLOADS', true);



if (!is_admin()) {

    function wpb_search_filter($query) {
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
add_theme_support( 'woocommerce' );





/**
 * hide admin menu on front-end part
 */
add_filter('show_admin_bar', 'no_admin_bar');

function no_admin_bar() {
    return false;
}

/**
 * set content type for an email
 * @param [type] $content_type [description]
 */
function set_content_type($content_type) {
    return 'text/html';
}

if (function_exists('acf_add_options_page')) {
    acf_add_options_page();
}

function cc_mime_types($mimes) {
    $mimes['svg'] = 'image/svg+xml';
    return $mimes;
  }
  add_filter('upload_mimes', 'cc_mime_types');