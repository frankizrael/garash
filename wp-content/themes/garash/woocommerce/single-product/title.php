<?php
/**
 * Single Product title
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/single-product/title.php.
 *
 * HOWEVER, on occasion WooCommerce will need to update template files and you
 * (the theme developer) will need to copy the new files to your theme to
 * maintain compatibility. We try to do this as little as possible, but it does
 * happen. When this occurs the version of the template file will be bumped and
 * the readme will list any important changes.
 *
 * @see        https://docs.woocommerce.com/document/template-structure/
 * @package    WooCommerce/Templates
 * @version    1.6.4
 */

if ( ! defined( 'ABSPATH' ) ) {
	exit; // Exit if accessed directly.
}
global $product;
?>
<div class="content_single-a">
	<?php
		$idsCat = $product->get_category_ids();
		$count = count($idsCat)-1;
		$catname = 'product_cat_'.$idsCat[$count];
		$listadoFiltro = get_field('listado_filtro',$catname);
		$countFiltro = count($listadoFiltro)-1;
		$filterID = $listadoFiltro[$countFiltro]['filtro'];		
	?>
	<div class="form-filter">
		<h2><?php echo $listadoFiltro[$countFiltro]['titulo_filtro']; ?></h2>
        <?php
            echo do_shortcode('[searchandfilter id="' . $filterID . '"]');
        ?>
        <button class="button-filter-sf">Buscar</button>
	</div>
	<div class="content_inside">
	<?php
	the_title( '<h1 class="product_title entry-title">', '</h1>' );
