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
                        <?php
                            woocommerce_get_sidebar();
                        ?>
                    </div>

                </div>
                <div class="content">
                    <?php $page_object = get_queried_object();
                    if (isset($page_object->name) && $page_object->name !== 'product') :
                    ?>
                    <?php get_template_part('partials/global/content', 'formsearch'); ?>
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
                    <div class="custom-filters">
                        <div class="custom-filters-open"></div>
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
                                    ?>
                                    <div class="item-filtro">
                                        <h2><?php echo $item_filtro['titulo_filtro']; ?></h2>
                                    <?php
                                    echo do_shortcode('[searchandfilter id="' . $item_filtro['filtro'] . '"]');
                                    ?>
                                    </div>
                                    <?php
                                }
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
    setTimeout(function(){
        jQuery('.custom-filters').addClass('close');    
    },500);
    
    jQuery('.custom-filters-open').on('click',function(){
        jQuery('.custom-filters').toggleClass('close');    
    });
});
</script>
<style type="text/css">
    .searchandfilter ul li li input,.searchandfilter_css ul li li input {
        display: none;
    }

    .searchandfilter ul li li input:checked + label:before, .searchandfilter_css ul li li input:checked + label:before {
        background: #00a779;
    }
    .searchandfilter ul li li input:checked + label:after, .searchandfilter_css ul li li input:checked + label:after {
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
    .searchandfilter ul li li label:before, .searchandfilter_css ul li li label:before {
        content: '';
        position: absolute;
        width: 12px;
        height: 12px;
        border: solid 1px #00a779;
        top: 2px;
        left: 0px;
    }
    .searchandfilter ul li li label, .searchandfilter_css ul li li label {
        padding-left: 15px !important;
        position: relative;
        color: #060404;
    }
    .searchandfilter h4, .searchandfilter_css h4 {
        border-bottom: solid 1px #dedede;
        margin-bottom: 10px;
    }
    .searchandfilter .noUi-connect, .searchandfilter_css .noUi-connect {
        background-color: #00a779;
    }
    .item-filtro ul li {
        margin-right: 25px;
    }
    .item-filtro ul {
        display: flex;
        margin: 30px 0px;
        flex-wrap: wrap;
        align-items: flex-end;
    }
    .searchandfilter select.sf-input-select, .searchandfilter_css select.sf-input-select {
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
    .searchandfilter ul li.sf-level-0 .children, .searchandfilter_css ul li.sf-level-0 .children {
        margin-top: 0px;
        margin-bottom: 0px;
    }
    .searchandfilter ul li.sf-level-0 .children input, .searchandfilter_css ul li.sf-level-0 .children input {
        display: none !important;
    }
    .cf_content {
        display: flex;
        flex-wrap: wrap;
        justify-content: space-between;
        margin-bottom: 20px;
    }
    .cf_content .cf-item {
        width: 135px;
        border: solid 1px #d0d0d0;
        padding: 10px 10px;
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
    #mega-menu-wrap-primary #mega-menu-primary > li.mega-menu-item > a.mega-menu-link {
        height: auto;
        padding-top: 10px;
        padding-bottom: 10px;
    }
    .sidebar .searchandfilter ul li {
        display: none;
    }
    .sidebar .searchandfilter ul li:nth-child(1), .searchandfilter ul li:nth-child(2) {
        display: block;
    }
    .custom-filters {        
        transition: 0.3s;
    }
    .custom-filters.close {
        transform: translateX(275px);
    }
    .custom-filters-open:before {
        content: '';
        position: absolute;
        width: 22px;
        height: 22px;
        border-left: solid 2px white;
        border-bottom: solid 2px white;
        transform: rotate(45deg);
        top: 14px;
        left: 20px;
    }
    .custom-filters-open {
        position: absolute;
        top: 250px;
        left: -49px;
        background: #a5a5a5;
        width: 50px;
        height: 50px;
        border-top-left-radius: 5px;
        border-bottom-left-radius: 5px;
        cursor: pointer;
    }
    .custom-filters.close .custom-filters-open:before {
        transform: rotate(-135deg);
        left: 10px;
    }
</style>
<?php
get_footer();
?>