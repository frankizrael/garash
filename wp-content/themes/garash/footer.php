<div class="menuMobile">
    <div class="main">
        <div class="menuMobile__header">
            <button type="button" class="button-close">
                <svg xmlns="http://www.w3.org/2000/svg" width="14.142" height="14.143" viewBox="0 0 14.142 14.143">
                    <g id="Grupo_7466" data-name="Grupo 7466" transform="translate(6244.6 -8391.001)">
                        <rect id="Rectángulo_1997" data-name="Rectángulo 1997" width="17" height="3" transform="translate(-6242.479 8391.001) rotate(45)" fill="#262626" />
                        <rect id="Rectángulo_1998" data-name="Rectángulo 1998" width="17" height="3" transform="translate(-6244.6 8403.021) rotate(-45)" fill="#262626" />
                    </g>
                </svg>

            </button>
        </div>
        <div class="menuMobile__content">
            <nav>
                <?php wp_nav_menu(); ?>
            </nav>
        </div>
        <div class="menuMobile__footer">
            <ul>
                <li>
                    <a href="" class="search">
                        <i>
                            <svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 511.999 511.999" style="enable-background:new 0 0 511.999 511.999;" xml:space="preserve">
                                <path d="M508.874,478.708L360.142,329.976c28.21-34.827,45.191-79.103,45.191-127.309c0-111.75-90.917-202.667-202.667-202.667
                                S0,90.917,0,202.667s90.917,202.667,202.667,202.667c48.206,0,92.482-16.982,127.309-45.191l148.732,148.732
                                c4.167,4.165,10.919,4.165,15.086,0l15.081-15.082C513.04,489.627,513.04,482.873,508.874,478.708z M202.667,362.667
                                c-88.229,0-160-71.771-160-160s71.771-160,160-160s160,71.771,160,160S290.896,362.667,202.667,362.667z"></path>
                            </svg>
                        </i>
                        Buscar
                    </a>
                </li>
                <li>
                    <a href="" class="account">
                        <i>
                            <svg xmlns="http://www.w3.org/2000/svg" width="18.887" height="20" viewBox="0 0 18.887 20">
                                <g>
                                    <path d="M1232.618,984.876a4.764,4.764,0,1,0-4.849-4.763A4.812,4.812,0,0,0,1232.618,984.876Z" transform="translate(-1223.174 -975.35)"></path>
                                    <path class="b" d="M1216.509,1025.106h-1.484a8.672,8.672,0,0,0-8.7,8.623.538.538,0,0,0,.541.536h17.806a.538.538,0,0,0,.541-.536A8.672,8.672,0,0,0,1216.509,1025.106Z" transform="translate(-1206.324 -1014.264)"></path>
                                </g>
                            </svg>
                        </i>
                        Mi cuenta
                    </a>
                </li>
                <li>
                    <a href="" class="cart">
                        <?php if(WC()->cart->get_cart_contents_count() > 0): ?>
                        <mark class="not">
                        <?php echo WC()->cart->get_cart_contents_count(); ?>
                        </mark>
                        <?php  endif;?>
                        <i>
                            <svg xmlns="http://www.w3.org/2000/svg" width="23.204" height="20" viewBox="0 0 23.204 20">
                                <g transform="translate(-7287.909 58.004)">
                                    <circle cx="1.703" cy="1.703" r="1.703" transform="translate(7304.661 -41.755)"></circle>
                                    <circle cx="1.703" cy="1.703" r="1.703" transform="translate(7294.24 -41.318) rotate(-13.283)"></circle>
                                    <path d="M7310.776-54.8h-17.454L7292.681-58h-4.771v1.728h3.347l.295,1.479,1.6,8,.681,3.4.153.766h14.69l.154-.768.191-.959h-13.61l-.488-2.442h14.588l1.6-8Z"></path>
                                </g>
                            </svg>
                            
                        </i>
                        Mi bolsa
                    </a>
                </li>
            </ul>
        </div>
    </div>
</div>
<?php
    if(get_field('encuesta','options')) {
?>
<div class="encuesta" style="display: none;">
    <div class="x-container">
        <div class="encuesta__flex">
            <div class="encuesta__left">
                <?php the_field('encuesta_text','options');?>
            </div>
            <div class="encuesta__right">
                <a href="<?php the_field('encuesta_link','options');?>" class="btn">
                    Ver encuesta
                </a>
                <a href="javascript:void(0)" class="btn btn-ok">
                    Cancelar
                </a>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">    
    setTimeout(function(){        
        jQuery('.slick-dots').addClass('encuesta_slick');
        jQuery('.footer .box').addClass('encuesta_footer');
        jQuery('.encuesta__right .btn').on('click',function(){
            localStorage.setItem("cookie-2", "1");
            jQuery('.slick-dots').removeClass('encuesta_slick');
            jQuery('.footer .box').removeClass('encuesta_footer');
            jQuery('.encuesta').hide();
        });

        if (localStorage.getItem("cookie-2") == "1") {
            jQuery('.slick-dots').removeClass('encuesta_slick');
            jQuery('.footer .box').removeClass('encuesta_footer');
            jQuery('.encuesta').hide();
        } else {
            jQuery('.encuesta').show();
        }
    },700);    
</script>
<style type="text/css">.encuesta__flex .btn.btn-ok {
    background: #e8e8e8;
    color: #232323;
}</style>

<?php
    } 
?>
<script type="text/javascript">
    setTimeout(function(){
        jQuery('.preload').addClass('active');
    },500);
</script>
<style>
.filterInsideCloud a {
    background: white;
}
.filterInsideCloud.custom a {
    color: #fa7915;
}
.item-filtro.filtro_neumaticos li.sf-field-taxonomy-pa_indice-de-velocidad {
    background: #323232;
}
.item-filtro.filtro_neumaticos li.sf-field-taxonomy-pa_fabricante {
    background: #323232;
}
.item-filtro.filtro_neumaticos li.sf-field-taxonomy-pa_fabricante {
    background: #323232;
    width: 55%;
    padding-right: 10%;
}
.encuesta {
    background: #fa7915;
}
.encuesta__flex .btn {
    background: #e42928;
}
.sliderHome .slider__item .x-container .x-caption .title:after {
    background: #f97815;
}
.sectionProducts__content .title:after {
    background: #fa7915;
}
    
</style>
<script type="text/javascript">
    jQuery('.searchandfilter h4, .searchandfilter_css h4').on('click',function(){
      let thisA = jQuery(this);
      thisA.closest('li').toggleClass('minHeightA');
    });
</script>
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

<style type="text/css">
    .preload img {
        max-width: 450px;
    } 
    @media (max-width: 768px) {
        .preload img {
            max-width: 280px;
        }   
    }
</style>
</body>

</html>