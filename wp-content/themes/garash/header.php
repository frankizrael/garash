<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);
?>

<!DOCTYPE html>
<html lang="es" class="no-touch">

<head>
  <title>
    <?php bloginfo('name');
    wp_title(); ?>
  </title>
  <meta charset="UTF-8">
  <meta name="description" content="">
  <meta name="keywords" content="">
  <meta name="viewport" content="initial-scale=1.0, width=device-width, user-scalable=no, maximum-scale=1.0">
  <link rel="icon" type="image/png" href="<?php echo get_template_directory_uri(); ?>/favicon.png" sizes="16x8" />
  <link href="https://fonts.googleapis.com/css?family=Montserrat:100,400,500, 600,700,900&display=swap" rel="stylesheet">
  <?php wp_head(); ?>
  <!-- assets -->
  <?php
  $filePath = 'dist/assets.json';
  $jsonFile = file_exists($filePath) ? file_get_contents($filePath) : file_get_contents(get_template_directory() . '/' . $filePath);
  $rootDir = file_exists($filePath) ? '' : get_template_directory_uri() . '/';
  $json = json_decode($jsonFile, true);
  $evn = str_replace('dist', '', $json['metadata']['env']);

  switch ($evn) {
    case 'production': {
        foreach ($json as $key => $val) {
          if ($key === 'fonts') {
            if (array_key_exists('css', $val)) {
              echo '<link rel="stylesheet" type="text/css" href="' . $rootDir . $val['css'] . '">';
            }
          }

          if ($key === 'app') {
            if (array_key_exists('css', $val)) {
              echo '<link rel="stylesheet" type="text/css" href="' . $rootDir . $val['css'] . '">';
            }
          }

          if ($key === $ASSETS_KEY_WORD) {
            if (array_key_exists('css', $val)) {
              echo '<link rel="stylesheet" type="text/css" href="' . $rootDir . $val['css'] . '">';
            }
          }
        }
      }
      break;

    case 'development': {
        foreach ($json as $key => $val) {
          if ($key === 'app') {
            if (array_key_exists('css', $val)) {
              echo '<link rel="stylesheet" type="text/css" href="' . $rootDir . $val['css'] . '">';
            }
            if (array_key_exists('js', $val)) {
              echo '<script src="' . $rootDir . $val['js'] . '"></script>';
            }
          }
        }
      }
      break;
  }

  ?>
  <!-- JavaScript -->
  <script type="text/javascript">
    var ajaxUrl = '<?php echo admin_url("admin-ajax.php"); ?>';
    var siteUrl = '<?php echo get_site_url(); ?>';
  </script>
  <style type="text/css">
        .searchandfilter ul li li input {
        display: none;
    }

    .searchandfilter ul li li input:checked + label:before {
        background: #00a779;
    }
    .searchandfilter ul li li input:checked + label:after {
        content: '';
        width: 3px;
        height: 7px;
        border-right: solid 1px white;
        border-bottom: solid 1px white;
        position: absolute;
        transform: rotate(45deg);
        left: 5px;
        top: 4px;
    }
    .searchandfilter ul li li label:before {
        content: '';
        position: absolute;
        width: 12px;
        height: 12px;
        border: solid 1px #00a779;
        top: 2px;
        left: 0px;
    }
    .searchandfilter ul li li label {
        padding-left: 15px !important;
        position: relative;
        color: #060404;
    }
    .searchandfilter h4 {
        border-bottom: solid 1px #dedede;
        margin-bottom: 10px;
    }
    .searchandfilter .noUi-connect {
        background-color: #00a779;
    }
    .item-filtro ul li {
        width: 100%;
        margin: 0px !important;
        margin-bottom: 15px !important;
    }
    .item-filtro ul {
        display: flex;
        margin: 30px 0px;
        flex-wrap: wrap;
        align-items: flex-end;
    }
    .searchandfilter select.sf-input-select {
        min-width: 170px;
        background: linear-gradient(#fff 20%,#f6f6f6 50%,#eee 52%,#f4f4f4 100%);
        padding: 4px 0px 4px 8px;
        border: 1px solid #aaa;
        border-radius: 5px;
    }
    .chosen-container .chosen-results {
        display: block;
    }
    li.sf-field-taxonomy-product_cat ul {
        margin: 0px;
    }
    li.sf-field-submit input {
        border: none;
        background: #00a779;
        font-size: 16px;
        padding: 10px 15px;
        display: block;
        color: white;
        border-radius: 5px;
    }
    .searchandfilter ul li.sf-level-0 .children {
        margin-top: 0px;
        margin-bottom: 0px;
    }
    .searchandfilter ul li.sf-level-0 .children input {
        display: none !important;
    }
    .searchandfilter label {
        width: 100%;
    }
    .woocommerce nav.woocommerce-pagination ul li {
      width: 28px;
    }
    .cf_content {
        display: flex;
        flex-wrap: wrap;
        justify-content: space-between;
        margin-bottom: 40px;
    }
    .cf_content .cf-item {
        width: calc(50% - 5px) !important;
        border: solid 1px #d0d0d0;
        padding: 10px 10px;
        margin-bottom: 15px;
    }
    .cf_content .cf-item .title {
        font-size: 10px;
        text-align: center;
    }
    .cf_content .cf-item .content {
        max-width: 100%;
        padding: 0px;
    }
    .cf_content .cf-item .content {
        margin-top: 5px;
    }
    .cf_content .cf-item .content .action {
        display: none;
    }
    li.sf-level-1.sf-option-active .children {
        display: block;
    }
    li.sf-level-1 .children {
        display: none;
    }
    .navbar .menu .icons .cart svg {
        width: 23px;
        height: 23px;
    }
    .div_terms {
        display: flex;
        margin-top: 10px;
        margin-bottom: 10px;
    }
    .div_cvv {
        display: inline-block;
        width: calc(33.33% - 5px);
    }
    .div_year {
        display: inline-block;
        width: calc(33.33% - 5px);
        margin: 0px 4px;
    }
    .div_month {
        display: inline-block;
        width: calc(33.33% - 5px);
    }
    .culqi_div_form input {
        width: 100%;
        box-sizing: border-box;
        padding: 10px;
    }
    .div_mail, .div_card {
        margin-bottom: 5px;
    }
    #mega-menu-wrap-primary #mega-menu-primary > li.mega-menu-item.mega-current-menu-item > a.mega-menu-link, #mega-menu-wrap-primary #mega-menu-primary > li.mega-menu-item.mega-current-menu-ancestor > a.mega-menu-link, #mega-menu-wrap-primary #mega-menu-primary > li.mega-menu-item.mega-current-page-ancestor > a.mega-menu-link {
        background: transparent !important;
        padding-bottom: 10px;
        display: block;
        height: auto;
        padding-top: 10px;
    }
    #mega-menu-wrap-primary #mega-menu-primary > li.mega-menu-item {
        background: transparent !important;
    }
    #mega-menu-wrap-primary #mega-menu-primary > li.mega-menu-item > a.mega-menu-link {
        height: auto;
        padding-top: 10px;
        padding-bottom: 10px;
    }
    #mega-menu-wrap-primary {
        background: transparent;
    }
    a.mega-custom-icon.mega-menu-link {
        background: transparent !important;
    }
    .sectionCategories__content .tabs__content .tab-item ul li .overlay {
        z-index: 1;
        opacity: 0.5;
    }
    .sectionCategories__content .tabs__content .tab-item ul li .x-caption a .name {
        color: white;
    }
    .sectionCategories__content .tabs__content .tab-item ul li img {
        z-index: 0;
    }
    .sectionCategories__content .tabs__content .tab-item ul li .x-caption {
        z-index: 3;
        color: white;
        position: absolute;
    }
    #mega-menu-wrap-primary #mega-menu-primary > li.mega-menu-item > a.mega-menu-link:hover {
        background: transparent !important;
    }
    .navbar.is-active .mega-menu-link {
      color: #8e8e8e!important;
    }
    .navbar .menu nav {
      position: static;
    }
    #mega-menu-wrap-primary {
      background: transparent;
      position: static;
    }
    ul#mega-menu-primary {
      position: static !important;
    }
    ul.mega-sub-menu {
      width: 100% !important;
      left: 0px !important;
      vertical-align: top !important;
    }
    #mega-menu-wrap-primary #mega-menu-primary > li.mega-menu-flyout ul.mega-sub-menu li.mega-menu-item ul.mega-sub-menu {
      left: 100% !important;
    }
    #mega-menu-wrap-primary #mega-menu-primary li.mega-menu-item-has-children li.mega-menu-item-has-children > a.mega-menu-link > span.mega-indicator {
        top: 7px;
    }
    .mega-menu-column a {
      font-weight: 400 !important;
      padding-right: 10px !important;
      text-transform: none !important;
    }
    .mega-menu-column .mega-sub-menu .mega-menu-item {
      width: auto !important;
      border: solid 1px rgba(162, 162, 162, 0.48) !important;
      background: white !important;
      margin: 20px 10px !important;
      overflow: hidden !important;
      border-radius: 5px !important;
      box-shadow: 0px 7px 9px #00000057 !important;
      padding: 0px !important;
      display: inline-block !important;
      vertical-align: top !important;
    }
    section.sectionStore {
      background: #f7f6f6;
    }
    .sidebar__content [class^="sf-field-taxonomy-"], .sidebar__content [class^="sf-field-post-meta-"] {
      padding: 10px !important;
      background: white;
      box-shadow: 0px 3px 4px #00000052;
      margin-bottom: 15px !important;
      border-radius: 5px;
      transition: 0.3s;
      max-height: 44px;
      overflow: hidden;
    }
    .minHeightA {
      max-height: 1000px !important;
    }
    .custom-filters {
      padding: 20px 15px;
      background: white;
      box-shadow: 0px 7px 12px #00000052;
      margin-bottom: 30px !important;
    }
    .custom-filters .item-filtro ul {
      margin: 0px;
    }
    .custom-filters h2 {
      margin-bottom: 10px;
      font-size: 18px;
      color: #01a678;
    }
    .searchandfilter h4:before, .searchandfilter_css h4:before {
      content: '';
      position: absolute;
      width: 6px;
      height: 6px;
      border-left: solid 1px black;
      border-bottom: solid 1px black;
      transform: rotate(-45deg);
      right: 0px;
      top: 9px;
    }
    .minHeightA .searchandfilter h4:before, .minHeightA .searchandfilter_css h4:before {
      transform: rotate(135deg);
      top: 11px;
    }
    .custom-filters .searchandfilter h4:before, .custom-filters .searchandfilter_css h4:before {
      display: none;
    }
    .searchandfilter h4, .searchandfilter_css h4 {
      font-size: 14px;
      position: relative;
      cursor: pointer;
    }
    .searchandfilter select.sf-input-select, .searchandfilter_css select.sf-input-select {
      width: 100%;
      border: solid 1px #e4e4e4;
    }
    .taxonomy-content {
      padding: 10px !important;
      background: white;
      box-shadow: 0px 7px 12px #00000052;
      margin-bottom: 20px !important;
      border-radius: 5px;
      display: flex;
      align-items: center;
    }
    .image-taxonomy {
      width: 120px;
      height: 120px;
    }
    .item-filtro ul li {
      margin-top: 5px;
      margin-bottom: 5px;
    }
    .item-filtro:last-child {
      margin-bottom: 0px;
    }
    .item-filtro {
      margin-bottom: 10px;
    }
    .title-taxonomy {
      font-size: 30px;
      font-weight: 400;
      color: #01a778;
      margin-left: 10px;
    }
    .title-taxonomy:before {
      content: 'Filtrado por';
      display: block;
      color: black;
      font-size: 14px;
      font-weight: 700;
    }
    li.sf-level-2 .children {
      display: none !important;
    }
    .image-taxonomy img {
      width: 100%;
      height: 100%;
      object-fit: cover;
    }
    button.button-filter-sf:after {
        content: '';
        position: absolute;
        width: 2px;
        height: 13px;
        background: white;
        transform: rotate(-45deg);
        left: 29px;
        top: 25px;
    }
    button.button-filter-sf:before {
        content: '';
        position: absolute;
        width: 18px;
        height: 18px;
        border-radius: 50%;
        border: solid 2px white;
        left: 10px;
        top: 11px;
    }
    button.button-filter-sf {
        background: #01a678;
        color: white;
        padding: 15px 10px;
        font-size: 16px;
        border-radius: 5px;
        width: 100%;
        text-align: center;
        position: relative;
    }
    .sectionStore__content {
      z-index: auto;
    }
    .custom-filters {
      position: fixed;
      top: 0;
      right: 0px;
      width: 275px;
      z-index: 5;
      margin-bottom: 0px !important;
      height: 100%;
    }
    .woocommerce-tabs.wc-tabs-wrapper {
      background: white;
      box-shadow: 0px 4px 6px #00000042;
    }
    .woocommerce div.product .woocommerce-tabs ul.tabs {
        display: flex;
        justify-content: space-between;
        margin-bottom: 0px;
    }
    .woocommerce div.product .woocommerce-tabs ul.tabs {
        padding-left: 0px;
    }
    .woocommerce div.product .woocommerce-tabs ul.tabs::before {
        display: none;
    }
    .woocommerce div.product .woocommerce-tabs ul.tabs li.active {
        animation: none;
        background: #fff;
        z-index: 2;
        border-bottom-color: #fff;
    }
    .woocommerce div.product .woocommerce-tabs ul.tabs li {
      flex: 1;
      padding: 0px;
      text-align: center;
      margin: 0px;
      border: none;
      border-radius: 0px;
      background: #f1f1f1;
      font-size: 14px;
      font-weight: 400;
    }
    .woocommerce div.product .woocommerce-tabs ul.tabs li a {
        display: block;
        padding: 15px 5px;
        font-weight: 400;
    }
    .woocommerce div.product .woocommerce-tabs .panel {
        padding: 10px;
        line-height: 25px;
        opacity: 0.7;
    }
    .content-form form .influx button {
        width: 100%;
        padding: 10px;
        border-radius: 5px;
        background: #01a678;
        color: white;
    }
    .content-form form .influx select {
        width: 100%;
        padding: 10px 7px;
        border-radius: 5px;
        color: #565656;
    }
    .content-form form .influx {
        width: calc(20% - 10px);
    }
    .content-form form {
        display: flex;
        justify-content: space-between;
    }
    .content-form h4 {
        color: white;
        margin-bottom: 10px;
    }
    .content-form {
        background: #323232;
        margin-bottom: 10px;
        padding: 10px;
    }
    .woocommerce div.product div.summary .content-form {
        margin-top: -10px;
        margin-left: -10px;
        margin-right: -10px;
    }
    .woocommerce div.product div.summary {
        background: white;
        box-shadow: 0px 4px 6px #00000042;
        padding: 10px;
    }
    .sectionStore__content .singleProduct .product_title.entry-title {
        font-size: 25px;
        font-weight: 700;
        color: #01a678;
    }
  </style>
</head>
<body <?php body_class(); ?>>
