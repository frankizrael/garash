<?php

wp_footer();


$filePath = 'dist/assets.json';
$jsonFile = file_exists($filePath) ? file_get_contents($filePath) : file_get_contents(get_template_directory() . '/' . $filePath);
$rootDir = file_exists($filePath) ? '' : get_template_directory_uri() . '/';
$json = json_decode($jsonFile, true);
$evn = str_replace('dist', '', $json['metadata']['env']);

switch ($evn) {
    case 'production': {
            foreach ($json as $key => $val) {
                if ($key === $ASSETS_KEY_WORD) {
                    if (array_key_exists('js', $val)) {
                        echo '<script src="' . $rootDir . $val['js'] . '"></script>';
                    }
                }

                if ($key === 'app') {
                    if (array_key_exists('js', $val)) {
                        echo '<script src="' . $rootDir . $val['js'] . '"></script>';
                    }
                }

                if ($key === 'vendor') {
                    if (array_key_exists('js', $val)) {
                        echo '<script src="' . $rootDir . $val['js'] . '"></script>';
                    }
                }
            }
        }
        break;

    case 'development': {
            foreach ($json as $key => $val) {
                if ($key === $ASSETS_KEY_WORD) {
                    if (array_key_exists('js', $val)) {
                        echo '<script src="' . $rootDir . $val['js'] . '"></script>';
                    }
                }

                if ($key === 'app') {
                    if (array_key_exists('js', $val)) {
                        echo '<script src="' . $rootDir . $val['js'] . '"></script>';
                    }
                }

                if ($key === 'vendor') {
                    if (array_key_exists('js', $val)) {
                        echo '<script src="' . $rootDir . $val['js'] . '"></script>';
                    }
                }
            }
        }
        break;
}
?>
<?php
if (is_checkout()) {
?>
    <script>
        window.triggerFields = () => {
            window.jQuery("#billing_razon_social").trigger("change");
            window.jQuery("#billing_ruc").trigger("change");
            window.jQuery("#billing_fiscal").trigger("change");
        };
    </script>
<?php
}
?>


</body>

</html>