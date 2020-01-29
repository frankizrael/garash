<?php
/**
 * My Account navigation
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/myaccount/navigation.php.
 *
 * HOWEVER, on occasion WooCommerce will need to update template files and you
 * (the theme developer) will need to copy the new files to your theme to
 * maintain compatibility. We try to do this as little as possible, but it does
 * happen. When this occurs the version of the template file will be bumped and
 * the readme will list any important changes.
 *
 * @see     https://docs.woocommerce.com/document/template-structure/
 * @package WooCommerce/Templates
 * @version 2.6.0
 */

if ( ! defined( 'ABSPATH' ) ) {
	exit;
}
$linkk = get_permalink(get_option( 'woocommerce_myaccount_page_id' ));
do_action( 'woocommerce_before_account_navigation' );
?>
<div class="woocommerce-MyAccount-container">
	<div class="breadcrumb-MyAccount">
		<div class="x-container">
			<ul>
				<li>
					Inicio
				</li>
				<li class="indicator">
					<i></i>
				</li>
				<li>
					Mi Cuenta
				</li>
				<li class="indicator">
					<i></i>
				</li>
				<li class="active">
					<span id="titlePageAccount"></span>
				</li>
			</ul>
		</div>
	</div>
	<div class="woocommerce-MyAccount-flex">
		<div class="x-container">
			<nav class="woocommerce-MyAccount-navigation">
				<ul>
					<li>
						<a href="<?php echo $linkk.'edit-account'; ?>"><?php _e('Perfil de usuarios'); ?> <i></i></a>
					</li>
					<li>
						<a href="<?php echo $linkk.'edit-address'.'/billing'; ?>"><?php _e('Mi dirección'); ?> <i></i></a>
					</li>
					<li>
						<a href="<?php echo $linkk.'edit-address'.'/shipping'; ?>"><?php _e('Mi dirección de facturación'); ?> <i></i></a>
					</li>
					<li>
						<a href="<?php echo $linkk.'orders'; ?>"><?php _e('Historial de pedidos'); ?> <i></i></a>
					</li>
				</ul>
			</nav>
		
<?php do_action( 'woocommerce_after_account_navigation' ); ?>
