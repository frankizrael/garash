<?php

/**
 * Lost password form
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/myaccount/form-lost-password.php.
 *
 * HOWEVER, on occasion WooCommerce will need to update template files and you
 * (the theme developer) will need to copy the new files to your theme to
 * maintain compatibility. We try to do this as little as possible, but it does
 * happen. When this occurs the version of the template file will be bumped and
 * the readme will list any important changes.
 *
 * @see https://docs.woocommerce.com/document/template-structure/
 * @package WooCommerce/Templates
 * @version 3.5.2
 */

defined('ABSPATH') || exit;

do_action('woocommerce_before_lost_password_form');
?>

<div class="myLogin" id="customer_login">
	<div class="myLogin__left">
		<div class="myLogin__left__content">
			<div class="myLogin__left__content__carousel">
				<div class="myLogin__left__content__carousel__item" style="background-image: url('http://bmw-ecommerce.loc/wp-content/uploads/2020/01/cq5dam.resized.img_.1680.large_.time1467967699630-1.png');"></div>
			</div>
		</div>
	</div>
	<div class="myLogin__right">
		<div class="myLogin__right__content">
			<form method="post" class="woocommerce-ResetPassword lost_reset_password">
				
				<h1 class="title-lost">¿Ha olvidado su contraseña?</h1>

				<p class="info"><?php echo apply_filters('woocommerce_lost_password_message', esc_html__('Por favor, introduzca su dirección de correo electrónico a continuación. Usted recibirá un enlace para restablecer su contraseña.', 'woocommerce')); ?></p><?php // @codingStandardsIgnoreLine 
																																																														?>

				<p class="woocommerce-form-row woocommerce-form-row--first form-row form-row-first">
					<label for="user_login"><?php esc_html_e('Username or email', 'woocommerce'); ?></label>
					<input class="woocommerce-Input woocommerce-Input--text input-text" type="text" name="user_login" id="user_login" autocomplete="username" />
				</p>

				<div class="clear"></div>

				<?php do_action('woocommerce_lostpassword_form'); ?>

				<p class="woocommerce-form-row form-row">
					<input type="hidden" name="wc_reset_password" value="true" />
					<button type="submit" class="woocommerce-Button button" value="<?php esc_attr_e('Reset password', 'woocommerce'); ?>"><?php esc_html_e('Reset password', 'woocommerce'); ?></button>
				</p>

				<?php wp_nonce_field('lost_password', 'woocommerce-lost-password-nonce'); ?>

			</form>
		</div>
	</div>
</div>

<div class="bg"></div>
<?php
do_action('woocommerce_after_lost_password_form');
