<?php /* Importer */
require_once 'master.php';

function parse_file( $file, $delimiter = ',' ) {
  $data        = [];
  $file_handle = fopen( $file, 'r' );

  while ( ! feof( $file_handle ) ) {
    $data[] = fgetcsv( $file_handle, 0, $delimiter );
  }

  fclose( $file_handle );

  return $data;
}

function import_products() {
  $products = parse_file( get_template_directory() . '/stock.csv' );
  array_shift( $products );

  foreach ( $products as $product ) {
    $sku         = $product[0];
    $extra       = $product[1];
    $name        = $product[2];
    $description = $product[3];
    $stock       = 2;
    $code        = $product[5];
    $price       = 90;

    $categories = array(
      get_collection_value( substr( $code, 0, 2 ) ),
      get_category_value( substr( $code, 4, 2 ) ),
      get_sub_category_value( substr( $code, 6, 2 ) ),
    );
    $cat_ids    = array();

    foreach ( $categories as $cat ) {
      if ( $cat ) {
        $term = get_term_by( 'name', $cat, 'product_cat' );

        if ( $term ) {
          $cat_ids[] = $term->term_id;
        } else {
          $term      = wp_insert_term( $cat, 'product_cat' );
          $cat_ids[] = $term['term_id'];
        }
      }
    }

    $tags     = array(
      get_product_type_value( substr( $code, 2, 2 ) )
    );
    $tags_ids = array();

    foreach ( $tags as $tag ) {
      if ( $tag ) {
        $term = get_term_by( 'name', $tag, 'product_tag' );

        if ( $term ) {
          $tags_ids[] = $term->term_id;
        } else {
          $term       = wp_insert_term( $tag, 'product_tag' );
          $tags_ids[] = $term['term_id'];
        }
      }
    }

    $attributes = array(
      array(
        'name'  => 'Talla',
        'value' => get_size_value( substr( $code, 8, 2 ) )
      ),
      array(
        'name'  => 'Escala',
        'value' => get_scale_value( substr( $code, 10, 2 ) )
      ),
      array(
        'name'  => 'Color',
        'value' => get_color_value( substr( $code, 12, 2 ) )
      )
    );
    $attrs      = array();

    foreach ( $attributes as $attribute ) {
      if ( $attribute['value'] ) {
        $att = new WC_Product_Attribute();
        $att->set_name( $attribute['name'] );
        $att->set_options( array( $attribute['value'] ) );
        $att->set_visible( true );
        $att->set_variation( true );
        $attrs[] = $att;
      }
    }

    $pid = get_page_by_title( $name, 'OBJECT', 'product' );

    $pid = $pid != null ? $pid->ID : 0;

    if ( $attrs ) {
      $p = new WC_Product_Variable( $pid );
    } else {
      $p = new WC_Product( $pid );
    }

    if ( $pid != 0 ) {
      $data = $p->get_attributes();

      foreach ( $attrs as $attribute ) {
        $key = sanitize_key( $attribute->get_name() );

        if ( array_key_exists( $key, $data ) ) {
          $options = $data[ $key ]['options'];

          if ( ! in_array( $attribute->get_options()[0], $options ) ) {
            array_push( $options, $attribute->get_options()[0] );
            $attribute->set_options( $options );
          }
        }
      }
    }

    $p->set_sku( $sku );
    $p->set_name( $name );
    $p->set_description( $description );
    $p->set_manage_stock( true );
    $p->set_stock_status( 'instock' );
    $p->set_stock_quantity( $stock );
    $p->set_regular_price( $price );
    $p->set_category_ids( $cat_ids );
    $p->set_tag_ids( $tags_ids );
    $p->set_attributes( $attrs );
    $id = $p->save();

    if ( $attrs ) {
      $vid = wc_get_product_id_by_sku( $sku . $extra );
      $att = array();

      foreach ( $attributes as $attribute ) {
        $att[ 'attribute_' . sanitize_key( $attribute['name'] ) ] = $attribute['value'];
      }

      $variation = new WC_Product_Variation( $vid );
      $variation->set_sku( $sku . $extra );
      $variation->set_parent_id( $id );
      $variation->set_manage_stock( true );
      $variation->set_stock_status( 'instock' );
      $variation->set_stock_quantity( $stock );
      $variation->set_regular_price( $price );
      $variation->set_attributes( $att );
      $variation->save();
    }

    echo $p->get_sku() . ': ' . $p->get_name() . "\n";
  }
}
