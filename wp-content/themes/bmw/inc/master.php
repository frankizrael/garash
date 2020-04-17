<?php

function get_collection_value( $code ) {
  $collection = array(
    '01' => 'BMW ACTIVE',
    '02' => 'BMW COLLECTION',
    '03' => 'BMW MOTORSPORT',
    '04' => 'BMW GOLFSPORT',
    '05' => 'BMW YACHTSPORT',
    '06' => 'BMW M',
    '07' => 'BMW BIKES',
    '63' => 'BMW Classic'
  );

  if ( array_key_exists( $code, $collection ) ) {
    return $collection[ $code ];
  }

  return false;
}

function get_product_type_value( $code ) {
  $product_type = array(
    '01' => 'CASACA',
    '02' => 'POLO',
    '03' => 'SUDADERA',
    '04' => 'ZAPATILLA',
    '05' => 'CARCASA',
    '06' => 'BICICLETA',
    '07' => 'CASCO',
    '08' => 'GORRA',
    '09' => 'TAZA',
    '10' => 'TOMATODO',
    '11' => 'LLAVERO',
    '12' => 'ESTERILLA',
    '13' => 'NEVERA',
    '14' => 'MALETA',
    '15' => 'VARIOS',
    '16' => 'PLATO',
    '17' => 'CORREA',
    '18' => 'COLLAR',
    '19' => 'TERMO',
    '20' => 'LANDYARD',
    '21' => 'LAPICERO',
    '22' => 'GAFAS DE SOL',
    '23' => 'ÚTILES DE ESCRITORIO',
    '24' => 'BILLETERA',
    '25' => 'RELOJ',
    '26' => 'SCOOTER',
    '27' => 'PELUCHE',
    '28' => 'AGENDA',
    '29' => 'MINIATURA',
    '30' => 'CHALECO',
    '31' => 'ACCESORIO VARIOS',
    '32' => 'BABY RACER',
    '33' => 'AUTO RC',
    '34' => 'COCHE ELECTRICO',
    '35' => 'MOTO A PEDAL',
    '36' => 'MOTO ELECTRICA',
    '37' => 'PARAGUAS',
    '38' => 'PLUMA',
    '39' => 'TOALLA',
    '40' => 'USB'
  );

  if ( array_key_exists( $code, $product_type ) ) {
    return $product_type[ $code ];
  }

  return false;
}

function get_size_value( $code ) {
  $size = array(
    '01' => 'XXL',
    '02' => 'XS - S',
    '03' => 'XS',
    '04' => 'XL',
    '05' => 'S',
    '06' => 'M - L',
    '07' => 'M',
    '08' => 'L',
    '09' => '99',
    '10' => '164',
    '11' => '152',
    '12' => '140',
    '13' => '128',
    '14' => '116',
    '15' => '104',
    '16' => '43',
    '17' => '42',
    '18' => '41',
    '19' => '40',
    '20' => '39',
    '21' => '38'
  );

  if ( array_key_exists( $code, $size ) ) {
    return $size[ $code ];
  }

  return false;
}

function get_category_value( $code ) {
  $category = array(
    '01' => 'HOMBRE',
    '02' => 'DAMA',
    '03' => 'NIÑO',
    '04' => 'UNISEX'
  );

  if ( array_key_exists( $code, $category ) ) {
    return $category[ $code ];
  }

  return false;
}

function get_color_value( $code ) {
  $color = array(
    '01' => 'BLANCO',
    '02' => 'AZUL',
    '03' => 'PLOMO',
    '04' => 'CREMA',
    '05' => 'ROJO',
    '06' => 'BURDEOS',
    '07' => 'NEGRO',
    '08' => 'BLANCO/NEGRO',
    '09' => 'AMARILLO',
    '10' => 'TURQUESA',
    '11' => 'MARRON',
    '12' => 'DORADO',
    '13' => 'NARANJA',
    '14' => 'ARENA',
    '15' => 'PLATA',
    '16' => 'BLANCO/NARANJA',
    '17' => 'PLOMO/ROJO',
    '18' => 'VARIOS',
    '19' => 'NEGRO/ROJO',
    '20' => 'AZUL/BLANCO'
  );

  if ( array_key_exists( $code, $color ) ) {
    return $color[ $code ];
  }

  return false;
}

function get_scale_value( $code ) {
  $scale = array(
    '01' => '01:14',
    '02' => '01:18',
    '03' => '01:43'
  );

  if ( array_key_exists( $code, $scale ) ) {
    return $scale[ $code ];
  }

  return false;
}

function get_sub_category_value( $code ) {
  $sub_category = array(
    '01' => 'ROPA',
    '02' => 'CARCASA',
    '03' => 'DEPORTE',
    '04' => 'ACCESORIOS',
    '05' => 'JUGUETERIA',
    '06' => 'AUTO',
    '07' => 'EQUIPAJE'
  );

  if ( array_key_exists( $code, $sub_category ) ) {
    return $sub_category[ $code ];
  }

  return false;
}
