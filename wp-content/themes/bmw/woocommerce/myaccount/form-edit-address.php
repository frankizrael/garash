<?php
/**
 * Edit address form
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/myaccount/form-edit-address.php.
 *
 * HOWEVER, on occasion WooCommerce will need to update template files and you
 * (the theme developer) will need to copy the new files to your theme to
 * maintain compatibility. We try to do this as little as possible, but it does
 * happen. When this occurs the version of the template file will be bumped and
 * the readme will list any important changes.
 *
 * @see https://docs.woocommerce.com/document/template-structure/
 * @package WooCommerce/Templates
 * @version 3.6.0
 */

defined( 'ABSPATH' ) || exit;

$page_title = ( 'billing' === $load_address ) ? esc_html__( 'Mi dirección', 'woocommerce' ) : esc_html__( 'Mi dirección de facturación', 'woocommerce' );

do_action( 'woocommerce_before_edit_account_address_form' ); ?>

<?php if ( ! $load_address ) : ?>
	<?php wc_get_template( 'myaccount/my-address.php' ); ?>
<?php else : ?>
<div class="formAccount">
	<div class="formAccount__title">
		<h1><?php echo apply_filters( 'woocommerce_my_account_edit_address_title', $page_title, $load_address ); ?></h1>
		<a href="javascript:void(0)" class="btn btnWhite" id="contractField">Editar</a>
	</div>
	<div class="formAccount__form contractFieldContent">
		<form method="post">

		<div class="woocommerce-address-fields">
			<?php do_action( "woocommerce_before_edit_address_form_{$load_address}" ); ?>

			<div class="woocommerce-address-fields__field-wrapper">
				<?php
				foreach ( $address as $key => $field ) {
					woocommerce_form_field( $key, $field, wc_get_post_data_by_key( $key, $field['value'] ) );
				}
				?>
			</div>

			<?php do_action( "woocommerce_after_edit_address_form_{$load_address}" ); ?>

			<p>
				<button type="submit" class="button disabled" name="save_address" value="<?php esc_attr_e( 'Guardar', 'woocommerce' ); ?>" disabled><?php esc_html_e( 'Guardar', 'woocommerce' ); ?></button>
				<?php wp_nonce_field( 'woocommerce-edit_address', 'woocommerce-edit-address-nonce' ); ?>
				<input type="hidden" name="action" value="edit_address" />
			</p>
		</div>

	</form>

<?php endif; ?>

<?php do_action( 'woocommerce_after_edit_account_address_form' ); ?>
<script type="text/javascript">
	jQuery('.woocommerce-address-fields__field-wrapper').prepend('<div class="nameFull"></div>');
	jQuery('#titlePageAccount').html('Mi dirección');
	jQuery('.woocommerce-MyAccount-navigation li').eq(1).addClass('active');
	jQuery('.nameFull').html(jQuery('#billing_first_name_field input').val() +' '+jQuery('#billing_last_name_field input').val());
	var href = window.location.href.split('shipping').length;
	if (href > 1) {
	  jQuery('#titlePageAccount').html('Mi dirección de Facturación');
	  jQuery('.woocommerce-MyAccount-navigation li').eq(1).removeClass('active');
	  jQuery('.woocommerce-MyAccount-navigation li').eq(2).addClass('active');
	  jQuery('.nameFull').html(jQuery('#shipping_first_name_field input').val() +' '+jQuery('#shipping_last_name_field input').val());
	}
</script>
