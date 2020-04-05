<?php

$environments = array(
    'local'       => 'bmw-ecommerce.loc',
    'development' => 'bmw-ecommerce.seekdev.com',
    'production'  => 'bmw.com.pe'
);

// Get the hostname
$http_host = $_SERVER['HTTP_HOST'];


// Loop through $environments to see if there’s a match
foreach($environments as $environment => $hostname) {
    if (stripos($http_host, $hostname) !== FALSE) {
        define('ENVIRONMENT', $environment);
        break;
    }
}



// Exit if ENVIRONMENT is undefined
if (!defined('ENVIRONMENT')) exit('No database configured for this host');

// Location of environment-specific configuration
$wp_db_config = 'wp-config/wp-db-' . ENVIRONMENT . '.php';


define('AUTH_KEY',         'R:3}v+ZuSjg6n6LvukrxM%^oo#|r/K_B|`Lym|D!t6csnB##+}W{5]WW|+i7y( X');
define('SECURE_AUTH_KEY',  'uj7=Q3@Nna&ChJ:_DmYUN|cNf?GCt/44=d{zGNzN4vKggBe6++.rj+>G< x,~B9P');
define('LOGGED_IN_KEY',    '3=Acy,%fK)0^vl{3WCn:+Y0G! +S)s6rEHVuf$u~CZ%j|L2DL/LL#V  o<&~n{Ir');
define('NONCE_KEY',        '|YDXY$@{Uh_$49|.WNW`Z7a,Zch|e94rA&),Q=_h&>Qube?a<J5+Sbu [!t!:S47');
define('AUTH_SALT',        'E^p&Sw4X!|]S(jSD*UsDN>lAN+T5H3f1a7L qV2h+)^eh$u+gD&ZUREgrItf}hF[');
define('SECURE_AUTH_SALT', 'QPiS:wV}-/|V@<d3hIWyj-Jn.nFGr;>nW:wM1i@vkdaOg-${aa38p>onU1l4!A6r');
define('LOGGED_IN_SALT',   'Ju!~H$T0bm>Wg_8Zn{gsbolwUYGJ:AJ452A4e<n:C=z,|jcrSzNK^&Ax.SgS|g3o');
define('NONCE_SALT',       'b4__.z,(JD1P@nmO2-S+g|xQ2|S0tL(avL0xVb*| 5:DMC<+-(Hqi7SkioXxy88k');



// Check to see if the configuration file for the environment exists
if (file_exists(__DIR__ . '/' . $wp_db_config)) {
    require_once($wp_db_config);
} else {
    // Exit if configuration file does not exist
    exit('No database configuration found for this host');
}

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
    define('ABSPATH', dirname(__FILE__) . '/');

define('WP_MEMORY_LIMIT', '256M');
define('WP_DEBUG', false);
define('AUTOSAVE_INTERVAL', 300);
define('WP_POST_REVISIONS', false);
define ('YWSL_FINAL_SLASH', true);



$table_prefix  = 'wp_';

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');

// wp-content/plugins/yith-woocommerce-social-login-premium/includes/hybridauth/vendor/facebook.php
