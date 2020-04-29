<?php

define( 'ROOTPATH', __DIR__ );
define( 'BASE_URL', get_bloginfo( 'url' ) );
define( 'ALLOW_UNFILTERED_UPLOADS', true );

require dirname( __FILE__ ) . '/inc/config.php';
require dirname( __FILE__ ) . '/inc/woo.php';
require dirname( __FILE__ ) . '/inc/importer.php';
require_once dirname( __FILE__ ) . '/inc/woocommerce-culqi.php';

/*Images functions*/
    function allinone_image_tag($id, $lazyload = '', $title = '', $classimg = '', $hide = false)
    {
        if(empty($id)){
            return false;
        }
        global $site_name;
        if ($title == '') {
            $title = $site_name;
        }
        $classimgfinal='';
        if($classimg != ""){
            $classimgfinal = $classimgfinal.' '.$classimg;
        }
        $image_tag = '<img ';
        $imagen_src = wp_get_attachment_url($id);
        $imagen_srcset = wp_get_attachment_image_srcset($id, 'fullsize');
        if ($lazyload == 'lazyload') {
            $classimgfinal = $classimgfinal.' lazyload';
            $placeholder = get_template_directory_uri().'/upload/placeholder.png';
            $image_tag .= 'src="' . $placeholder . '" ';
            $image_tag .= 'class="'.$classimgfinal.'" data-src="' . $imagen_src . '" ';
            $image_tag .= 'data-srcset="' . $imagen_srcset . '" ';
        } else if($lazyload == 'swiper'){
            $image_tag .= 'class="'.$classimgfinal.'" data-src="' . $imagen_src . '" ';
            $image_tag .= 'data-srcset="' . $imagen_srcset . '" ';
        } else {
            $image_tag .= 'class="'.$classimgfinal.'" src="' . $imagen_src . '" ';
            $image_tag .= 'srcset="' . $imagen_srcset . '" ';
        }
        $image_tag .= 'alt="' . $title . '" ';
        if($hide){
            $image_tag .= 'style="display:none" ';
        }
        $image_tag .= '/>';
        echo $image_tag;
    }

    function allinone_image_tag_with_url($url, $lazyload = '', $title = '', $classimg = '', $hide = false)
    {
        if(empty($url)){
            return false;
        }
        global $site_name;
        if ($title == '') {
            $title = $site_name;
        }
        $classimgfinal='';
        if($classimg != ""){
            $classimgfinal = $classimgfinal.' '.$classimg;
        }
        $image_tag = '<img ';
        $imagen_src = $url;
        if ($lazyload == 'lazyload') {
            $classimgfinal=$classimgfinal.' lazyload';
            $placeholder = get_template_directory_uri().'/upload/placeholder.png';
            $image_tag .= 'src="' . $placeholder . '" ';
            $image_tag .= 'class="'.$classimgfinal.'" data-src="' . $imagen_src . '" ';
        } else {
            $image_tag .= 'class="'.$classimgfinal.'" src="' . $imagen_src . '" ';
        }

        $image_tag .= 'alt="' . $title . '" ';
        if($hide){
            $image_tag .= 'style="display:none" ';
        }
        $image_tag .= '/>';
        echo $image_tag;
    }

    function allinone_image_svg($svg_file){
        if(!empty($svg_file)){
            $svg_file_path=get_attached_file($svg_file);
            echo file_get_contents($svg_file_path);
        }
    }

    /*Woocommerce functions*/

add_filter( 'woocommerce_product_tabs', 'woo_rename_tabs' );
 
function woo_rename_tabs( $tabs ) {
 	$tabs['reviews']['title'] = 'Calificación';
	$tabs['description']['title'] = 'Detalles';
	$tabs['additional_information']['title'] = 'Especificaciones';
 
	return $tabs;
 
}

add_filter('woocommerce_product_additional_information_heading', '__return_false');
add_filter('woocommerce_product_description_heading', '__return_false');
add_filter('woocommerce_reviews_heading', '__return_false');