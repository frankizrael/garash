<?php

/**
 * Template Name: Thank Checkout
 */

// https://businessbloomer.com/woocommerce-easily-get-product-info-title-sku-desc-product-object/
$order      = wc_get_order( 134 );
$items = $order->get_items();
print '<pre>';
print_r($order);
foreach ( $items as $item ) {
    
	 $product_id = $item->get_product_id();
}

