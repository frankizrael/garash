<?php

/**
 * Template Name: talleres
 */
?>
<?php
set_query_var('ASSETS_KEY_WORD', 'page_encuesta');
get_header('header');
set_query_var('class', 'is-active');
get_template_part('partials/global/content', 'navbar');
?>
<section class="encuestaPage">
	<div class="bar">
        <div class="x-container">
            <div class="x-bg">
                <?php
                $args = array(
                    'delimiter' => ' / ',
                    'before' => ''
                );
                ?>
                <?php woocommerce_breadcrumb($args); ?>
            </div>
        </div>
    </div>
    <div class="encuesta-intent">
    	<div class="x-container">
    		<div class="title">
    			<?php if (have_posts()) : while (have_posts()) : the_post();
                            the_content();
                        endwhile;
                    endif; ?>
    		</div>
    		<div class="talleresServices">
                <div class="talleresContent">
                    <div class="itemTalleres">
                        <label for="distrito">Distrito</label>                        
                        <select id="distrito">
                            <option selected="true" disabled="disabled">Escoger Distrito</option>    
                            <?php
                                $dis = get_field('talleres');
                                foreach ($dis as $dd) {
                                    ?>
                            <option value="id_<?php echo sanitize_title($dd['distrito']); ?>">
                                <?php echo $dd['distrito']; ?>
                            </option>
                                    <?php
                                }
                            ?>
                        </select>
                    </div>
                    <div class="itemTalleres">
                            <?php
                                $dis = get_field('talleres');
                                foreach ($dis as $dd) {
                                    ?>
                                <div class="selection" id="id_<?php echo sanitize_title($dd['distrito']); ?>" style="display: none;">
                                    <label>Talleres</label>                      
                                    <select class="select_selection">
                                        <option selected="true" disabled="disabled">Escoger Taller</option>    
                                        <?php
                                            $tal = $dd['talleres_r'];
                                            foreach ($tal as $t) {
                                                ?>
                                        <option value="inside_<?php echo sanitize_title($t['title']); ?>">
                                            <?php echo $t['title']; ?>
                                        </option>
                                                <?php
                                            }
                                        ?>
                                    </select>
                                    <span class="servand">Hay <?php echo count($dd['talleres_r']); ?> resultados</span>
                                </div>
                                    <?php
                                }
                            ?>
                        </div>
                    </div>
                </div>  
                <div class="taller_inside">                    
                    <div class="inside_selection">
                        <?php
                            $dis = get_field('talleres');
                            foreach ($dis as $dd) {                           
                                $tal = $dd['talleres_r'];
                                foreach ($tal as $t) {
                                    ?>
                            <div id="inside_<?php echo sanitize_title($t['title']); ?>" data-latitud="<?php echo $t['latitud']; ?>" data-longitud="<?php echo $t['longitud']; ?>" style="display: none;" class="inside">
                                <div class="inside_content">
                                    <h3><?php echo $t['title']; ?></h3>
                                    <div class="flexin">
                                        <div class="fl">
                                            <h4>Dirección</h4>
                                            <p><?php echo $t['direccion']; ?></p>
                                        </div>
                                        <div class="fl">
                                            <h4>Correo electrónico</h4>
                                            <p><?php echo $t['correo']; ?></p>
                                        </div>
                                        <div class="fl">
                                            <h4>Móvil y teléfono de contacto</h4>
                                            <p><?php echo $t['telefono']; ?></p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                                    <?php
                                }
                            }
                        ?>
                    </div>
                </div>    
            </div>
    	</div>
    </div>
</section>
 <div id="gmap"></div>
<?php
get_template_part('partials/global/content', 'footer');
?>

<?php get_footer('footer'); ?>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDIUoPmAtFVeqmsT2hd0pV3usTNAbRQ-a8&sensor=false&libraries=geometry,places,drawing&ext=.js" type="text/javascript"></script>
<script type="text/javascript">

    let arrayJson = <?php echo json_encode(get_field('talleres')); ?>;   
    let locations = [];
    var markers = [];
    var map, infoWindow, posOverride;
    var icono = '<?php echo get_template_directory_uri() ?>/icon.png';

    for (let t = 0; t < arrayJson.length; t++) {
        for (let u=0;u<arrayJson[t].talleres_r.length;u++){
            var obj = new Object();
            obj.title = arrayJson[t].talleres_r[u].title;
            obj.latitud = arrayJson[t].talleres_r[u].latitud;
            obj.longitud = arrayJson[t].talleres_r[u].longitud;
            obj.direccion = arrayJson[t].talleres_r[u].direccion;
            obj.correo = arrayJson[t].talleres_r[u].correo;
            obj.telefono = arrayJson[t].talleres_r[u].telefono;
            locations.push(obj);
        }
    }
    var latlng = {lat: parseFloat(locations[0].latitud), lng: parseFloat(locations[0].longitud)}; 

    function addMarker(locations){
        for (i = 0; i < locations.length; i++) {  
            if (locations[i].latitud != 'null') {
                marker = new google.maps.Marker({
                  position: new google.maps.LatLng( parseFloat(locations[i].latitud),  parseFloat(locations[i].longitud)),
                  map: map,
                  icon: icono
                });     
                google.maps.event.addListener(marker, 'click', (function(marker, i) {
                    return function() {                 
                        var contenidoG = '<div class="contenidoMapa"><h3>'+locations[i].title+'</h3><ul><li><strong>Dirección: </strong>'+locations[i].direccion+'</li><li><strong>Correo: </strong>'+locations[i].correo+'</li><li><strong>Teléfono: </strong>'+locations[i].telefono+'</li></ul></div>';
                        infoWindow.setContent(contenidoG);
                        infoWindow.open(map, marker);                        
                    }
                })(marker, i));
                markers.push(marker);
            }
        }
    }
    function initMap(latlng, array_locations) {
        map = new google.maps.Map(document.getElementById('gmap'), {
            center: latlng,
            scrollwheel: true,
            zoom: 15,
            styles: [{
                        "featureType": "road",
                        "stylers": [{
                                "saturation": -70
                            }]
                    }, {
                        "featureType": "transit",
                        "stylers": [{
                                "visibility": "off"
                            }]
                    }, {
                        "featureType": "poi",
                        "stylers": [{
                                "visibility": "off"
                            }]
                    }, {
                        "featureType": "water",
                        "stylers": [{
                                "visibility": "simplified"
                            }, {
                                "saturation": -60
                            }]
                    }]          
        });                 
        infoWindow = new google.maps.InfoWindow({map: map});
        addMarker(array_locations); 
    }
    initMap(latlng, locations);

    function centerMap(lat, lng, zoomR){
        map.setZoom(zoomR); 
        map.setCenter(new google.maps.LatLng(lat, lng));
    }
    //click filter  
    jQuery('#distrito').on('change',function(){
        let id = '#'+jQuery('#distrito').val();
        jQuery('.selection').hide();
        jQuery(id).show();
    });
    jQuery('.select_selection').on('change',function(){
        let id = '#'+jQuery(this).val();
        jQuery('.inside').hide();
        jQuery(id).show();
        let latitud = parseFloat(jQuery(id).attr('data-latitud'));
        let longitud = parseFloat(jQuery(id).attr('data-longitud'));
        centerMap(latitud, longitud , 13);        
    });

    
</script>