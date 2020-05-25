<?php
set_query_var('ASSETS_KEY_WORD', 'page_store');
get_header('header');
set_query_var('class', 'is-active');
get_template_part('partials/global/content', 'navbar');

?>


<section class="sectionStore ">
    <div class="sectionStore__header">
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
    </div>
    <div class="sectionStore__content x-container">

        <?php
        if (is_singular('product')) : ?>
            <div class="singleProduct">
                <?php woocommerce_content(); ?>
            </div>
        <?php else : ?>
            <div class="store woocommerceProducts">
                <div class="sidebar">
                    <div class="sidebar__header">
                        <a href="javascript:void(0)" class="button-close">
                            
<svg height="365.696pt" viewBox="0 0 365.696 365.696" width="365.696pt" xmlns="http://www.w3.org/2000/svg"><path d="m243.1875 182.859375 113.132812-113.132813c12.5-12.5 12.5-32.765624 0-45.246093l-15.082031-15.082031c-12.503906-12.503907-32.769531-12.503907-45.25 0l-113.128906 113.128906-113.132813-113.152344c-12.5-12.5-32.765624-12.5-45.246093 0l-15.105469 15.082031c-12.5 12.503907-12.5 32.769531 0 45.25l113.152344 113.152344-113.128906 113.128906c-12.503907 12.503907-12.503907 32.769531 0 45.25l15.082031 15.082031c12.5 12.5 32.765625 12.5 45.246093 0l113.132813-113.132812 113.128906 113.132812c12.503907 12.5 32.769531 12.5 45.25 0l15.082031-15.082031c12.5-12.503906 12.5-32.769531 0-45.25zm0 0"/></svg>
                        </a>
                        <h4 class="title">Filtro</h4>
                    </div>
                    <div class="sidebar__content">
                        <div class="addet">
                            <?php $page_object = get_queried_object();
                            if (isset($page_object->name) && $page_object->name !== 'product') :
                            ?>
                            <div class="taxonomy-content">
                                <div class="image-taxonomy">
                                    <?php
                                    $thumbnail_id = get_term_meta( $page_object->term_id, 'thumbnail_id', true ); 
                                    $image = wp_get_attachment_url( $thumbnail_id ); 
                                    echo "<img src='{$image}' alt='{$page_object->nam}' />";
                                    ?>
                                </div>
                                <h3 class="title-taxonomy">
                                    <?php echo $page_object->name; ?>
                                </h3>
                            </div>
                            <?php endif; ?>  
                        </div>
                        <?php
                            woocommerce_get_sidebar();
                        ?>
                    </div>

                </div>
                <div class="content">                                               
                    <div class="custom-filters <?php if(is_shop()){ echo 'fullcats'; }?>">
                        <?php
                        if(is_shop()){
                            $args = array(
                                'parent' => 0,
                                'hide_empty' => false
                            );
                            $terms = get_terms( 'product_cat', $args );
                            if ( !empty($terms)) {
                                ?>
                                <div class="cf_content">
                                    <?php
                                    foreach ( $terms as $term ) {
                                        $term_id = $term->term_id;
                                        $name = $term->name;
                                        $enlace = get_term_link($term_id, 'product_cat');
                                        $thumbnail_id = get_term_meta( $term_id, 'thumbnail_id', true );
                                        ?>
                                        <div class="cf-item">
                                            <div class="title">
                                                <h3><?php echo $name; ?></h3>
                                            </div>
                                            <div class="content">
                                                <a href="<?php echo $enlace; ?>" title="<?php echo $name; ?>">
                                                    <?php allinone_image_tag($thumbnail_id, 'lazyload', $name); ?>
                                                </a>
                                            <div class="action">
                                                <a href="<?php echo $enlace; ?>" title="<?php echo $name; ?>"><?php echo $name; ?></a>                                          
                                            </div>
                                            </div>
                                        </div>
                                        <?php
                                    }
                                    ?>
                                </div>
                                <?php
                            }
                        }else{
                            if(isset(get_queried_object()->term_id)){
                                $term_id = get_queried_object()->term_id;
                                $filtro = get_field('listado_filtro', 'product_cat_'.$term_id);
                            }
                            if(!empty($filtro)) {
                                foreach($filtro as $item_filtro){
                                    $image = get_field('imagen_ayuda',$item_filtro['filtro']);
                                    $class = get_field('class_filter',$item_filtro['filtro']);
                                    ?>
                                    <div class="item-filtro <?php if($class) { echo $class; }?>">
                                        <h2><?php echo $item_filtro['titulo_filtro']; ?></h2>
                                        <?php
                                            echo do_shortcode('[searchandfilter id="' . $item_filtro['filtro'] . '"]');
                                        ?>
                                        <?php if($image) {?>
                                        <div class="imagen">
                                            <img src="<?php echo $image;?>">
                                        </div>
                                        <?php } ?>
                                    </div>
                                    <?php
                                }
                            } else {
                                ?>
                                <script type="text/javascript">jQuery('.custom-filters').hide();</script>
                                <?php
                            }
                        }
                        ?>
                        <button class="button-filter-sf">
                         Buscar
                        </button>
                    </div>
                    <div class="filter-top">
                        <?php do_action('woocommerce_before_shop_loop'); ?>
                    </div>

                    <?php if (woocommerce_product_loop()) : ?>
                        <?php woocommerce_product_loop_start(); ?>
                        <?php if (wc_get_loop_prop('total')) : ?>
                            <?php while (have_posts()) : ?>
                                <?php the_post(); ?>
                                <?php wc_get_template_part('content', 'product'); ?>
                            <?php endwhile; ?>
                        <?php endif; ?>
                        <?php woocommerce_product_loop_end(); ?>
                        <?php do_action('woocommerce_after_shop_loop'); ?>
                    <?php else :
                        do_action('woocommerce_no_products_found');
                    endif; ?>
                </div>
            </div>
        <?php endif; ?>
    </div>
</section>


<?php

get_template_part('partials/global/content', 'footer');
?>

<script>
    jQuery(document).ready(function(){
    var filter_form = jQuery('.sidebar form.searchandfilter');
    var custom_forms = jQuery('.custom-filters form');
    custom_forms.removeAttr('data-results-url');
    custom_forms.removeAttr('data-ajax-form-url');
    custom_forms.removeAttr('data-sf-form-id');
    custom_forms.removeAttr('action');
    custom_forms.removeAttr('id');
    custom_forms.removeClass('searchandfilter');
    jQuery(custom_forms).unbind();
    custom_forms.addClass('searchandfilter_css');
    jQuery('.custom-filters input[type=checkbox]').change(function(){
        var checkbox_input = jQuery(this);
        var checked_val = checkbox_input.val();
        if(checkbox_input.is(":checked")){
            filter_form.find('input[value='+checked_val+']').eq(0).prop('checked', true);
        }else{
            filter_form.find('input[value='+checked_val+']').eq(0).prop('checked', false);
        }
    });
    jQuery('.custom-filters .sf-input-select').change(function(){
        var select_input = jQuery(this);
        var select_val = select_input.val();
        var li_parent_class = select_input.closest('li').attr("class");
        filter_form.find('.'+li_parent_class+' .sf-input-select').val(select_val);
    });
    jQuery('.button-filter-sf').click(function(e){
        filter_form.submit();
    });

    let lt = jQuery('.item-filtro').length;
    jQuery('.item-filtro').eq(lt-1).append(jQuery('.button-filter-sf'));

    var singleProductfilter_form = jQuery('.singleProduct .searchandfilter');
    jQuery('.singleProduct .button-filter-sf').click(function(e){
        singleProductfilter_form.submit();
    });

    /* filter preside*/
    var urlNeumaticos = "<?php echo site_url();?>/product-category/neumatico/";
    var urlMotos = "<?php echo site_url();?>/product-category/neumaticos-para-motos/";
    var urlCoches = "<?php echo site_url();?>/product-category/coche-de-turismo/";

    var imgNeumaticos = "<?php echo get_template_directory_uri(); ?>/assets/4x4.png";
    var imgMotos = "<?php echo get_template_directory_uri(); ?>/assets/bike.png";
    var imgCoches = "<?php echo get_template_directory_uri(); ?>/assets/pickup-car.png";

    function templateF(url,img,nombre){
        var href = location.href;
        var extraclass = '';
        if (href == url) { extraclass = 'custom'; }
        var template = '<div class="filterInsideCloud '+extraclass+'"><a href="'+url+'"><img src="'+img+'">'+nombre+'</div>';
        return template;
    }    

    if (jQuery('.filtro_neumaticos').length > 0 || jQuery('.filtro_neumaticos_motos').length > 0) {
        jQuery('.custom-filters').prepend('<div class="item-filtro filterByList"></div>');
        jQuery('.filterByList').append(templateF(urlNeumaticos,imgNeumaticos,'Off-Road/4x4/SUV'));
        jQuery('.filterByList').append(templateF(urlMotos,imgMotos,'Motos'));
        jQuery('.filterByList').append(templateF(urlCoches,imgCoches,'Coche de turismo'));
    }
    
});
</script>
<style type="text/css">
    
</style>
<?php
get_footer();
?>