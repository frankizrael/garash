<?php /* Importer */

function import_products() {
  $products = array(
    array(
      '80142463108',
      'PAÑUELO TRIANGULAR PARA NIÑOS BMW CLASSIC',
      '2',
      '63645257000015',
      '100.00',
    ),
    array(
      '80142460983',
      'SUDADERA BMW ACTIVE DE CABALLERO',
      '4',
      '01205054090016',
      '90.00',
    ),
    array(
      '80442411558',
      'BMW RC MINIATURA I8',
      '6',
      '02775258006014',
      '200.00'
    )
  );

  foreach ( $products as $product ) {
    $sku   = $product[0];
    $name  = $product[1];
    $stock = $product[2];
    $code  = $product[3];
    $price = $product[4];

    $categories = array(
      get_master_value( substr( $code, 0, 2 ) ),
      get_master_value( substr( $code, 4, 2 ) ),
      get_master_value( substr( $code, 6, 2 ) ),
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
      get_master_value( substr( $code, 2, 2 ) )
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
        'value' => get_master_value( substr( $code, 8, 2 ) )
      ),
      array(
        'name'  => 'Escala',
        'value' => get_master_value( substr( $code, 10, 2 ) )
      ),
      array(
        'name'  => 'Color',
        'value' => get_master_value( substr( $code, 12, 2 ) )
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

    $pid = wc_get_product_id_by_sku( $sku );
    if ( $attrs ) {
      $p = new WC_Product_Variable( $pid );
    } else {
      $p = new WC_Product( $pid );
    }
    $p->set_sku( $sku );
    $p->set_name( $name );
    $p->set_manage_stock( true );
    $p->set_stock_status( 'instock' );
    $p->set_stock_quantity( $stock );
    $p->set_regular_price( $price );
    $p->set_category_ids( $cat_ids );
    $p->set_tag_ids( $tags_ids );
    $p->set_attributes( $attrs );
    $id = $p->save();

    if ( $attrs ) {
      $vid = 0;
      $att = array();

      foreach ( $attrs as $attribute ) {
        $att[ 'attribute_' . sanitize_key( $attribute->get_name() ) ] = $attribute->get_options()[0];
      }

      foreach ( $p->get_available_variations() as $var ) {
        if ( $var['attributes'] == $att ) {
          $vid = $var['variation_id'];
          break;
        }
      }

      $variation = new WC_Product_Variation( $vid );
      $variation->set_parent_id( $id );
      $variation->set_manage_stock( true );
      $variation->set_stock_status( 'instock' );
      $variation->set_stock_quantity( $stock );
      $variation->set_regular_price( $price );
      $variation->set_attributes( $att );
      $variation->save();
    }
  }
}
