<?php

define( 'ROOTPATH', __DIR__ );
define( 'BASE_URL', get_bloginfo( 'url' ) );
define( 'ALLOW_UNFILTERED_UPLOADS', true );

require dirname( __FILE__ ) . '/inc/config.php';
require dirname( __FILE__ ) . '/inc/woo.php';
require dirname( __FILE__ ) . '/inc/importer.php';
