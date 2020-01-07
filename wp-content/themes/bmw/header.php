<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);
?>

<!DOCTYPE html>
<html lang="es" class="no-touch">

<head>
  <title><?php bloginfo('name');
          wp_title(); ?></title>
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
</head>

<body>
 