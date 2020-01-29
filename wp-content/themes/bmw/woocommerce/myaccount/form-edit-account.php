<?php
/**
 * Edit account form
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/myaccount/form-edit-account.php.
 *
 * HOWEVER, on occasion WooCommerce will need to update template files and you
 * (the theme developer) will need to copy the new files to your theme to
 * maintain compatibility. We try to do this as little as possible, but it does
 * happen. When this occurs the version of the template file will be bumped and
 * the readme will list any important changes.
 *
 * @see https://docs.woocommerce.com/document/template-structure/
 * @package WooCommerce/Templates
 * @version 3.5.0
 */

defined( 'ABSPATH' ) || exit;

do_action( 'woocommerce_before_edit_account_form' ); ?>
<div class="formAccount">
	<div class="formAccount__title">
		<h1><?php esc_html_e( 'Perfil de ', 'woocommerce' ); ?><?php echo esc_attr( $user->display_name ); ?></h1>
	</div>
	<div class="formAccount__form">
		<form class="woocommerce-EditAccountForm edit-account" action="" method="post" <?php do_action( 'woocommerce_edit_account_form_tag' ); ?> >
			<?php do_action( 'woocommerce_edit_account_form_start' ); ?>
			<div style="display: none;"><input type="text" class="woocommerce-Input woocommerce-Input--text input-text" name="account_display_name" id="account_display_name" value="<?php echo esc_attr( $user->display_name ); ?>" /></div>
			<div class="formAccount__form__input">
				<div class="left">
					<?php esc_html_e( 'Nombre de la cuenta', 'woocommerce' ); ?>
				</div>
				<div class="center">
					<p><?php echo esc_attr( $user->first_name ); ?> <?php echo esc_attr( $user->last_name ); ?></p>
				</div>
				<div class="right">
					<a href="javascript:void(0)" class="btnModal btn btnWhite" data="#names">
						<?php esc_html_e( 'Cambiar', 'woocommerce' ); ?>
					</a>
					<!-- modal -->
					<div class="myModal">
						<div class="myModal__content">
							<div class="myModal__content__close"></div>
							<div class="myModal__content__desc">
								<div class="myModal__content__desc__title">
									<?php esc_html_e( 'Cambiar nombre de la cuenta', 'woocommerce' ); ?>
								</div>
								<div class="myModal__content__desc__input">
									<label for="account_first_name"><?php esc_html_e( 'Nombres', 'woocommerce' ); ?></label>
									<input type="text" class="woocommerce-Input woocommerce-Input--text input-text" name="account_first_name" id="account_first_name" autocomplete="given-name" value="<?php echo esc_attr( $user->first_name ); ?>" />
								</div>
								<div class="myModal__content__desc__input">
									<label for="account_last_name"><?php esc_html_e( 'Apellidos', 'woocommerce' ); ?></label>
									<input type="text" class="woocommerce-Input woocommerce-Input--text input-text" name="account_last_name" id="account_last_name" autocomplete="family-name" value="<?php echo esc_attr( $user->last_name ); ?>" />
								</div>
								<div class="myModal__content__desc__button">
									<a href="javascript:void(0)" class="btn btnSubmit"><?php esc_html_e( 'Guardar', 'woocommerce' ); ?></a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="formAccount__form__input">
				<div class="left">
					<?php esc_html_e( 'Email', 'woocommerce' ); ?>
				</div>
				<div class="center">
					<p class="editInput__emisor"><?php echo esc_attr( $user->user_email ); ?></p>
					<!-- editEmail -->
					<div class="editInput__recept" style="display: none;">
						<input type="email" class="woocommerce-Input woocommerce-Input--email input-text" name="account_email" id="account_email" autocomplete="email" value="<?php echo esc_attr( $user->user_email ); ?>" />
					</div>
				</div>
				<div class="right">
					<a href="javascript:void(0)" class="btnChangeInput btn btnWhite" data="#names">
						<?php esc_html_e( 'Cambiar', 'woocommerce' ); ?>
					</a>
				</div>
			</div>
			<div class="formAccount__form__input">
				<div class="left">
					<?php esc_html_e( 'Contraseña actual', 'woocommerce' ); ?>
				</div>
				<div class="center">
					<p><?php esc_html_e( '********', 'woocommerce' ); ?></p>
				</div>
				<div class="right">
					<a href="javascript:void(0)" class="btnModal btn btnWhite" data="#names">
						<?php esc_html_e( 'Cambiar', 'woocommerce' ); ?>
					</a>
					<!-- modal -->
					<div class="myModal">
						<div class="myModal__content">
							<div class="myModal__content__close"></div>
							<div class="myModal__content__desc">
								<div class="myModal__content__desc__title">
									<?php esc_html_e( 'Cambiar contraseña', 'woocommerce' ); ?>
								</div>
								<div class="myModal__content__desc__input">
									<label for="password_current"><?php esc_html_e( 'Contraseña actual', 'woocommerce' ); ?></label>
									<input type="password" class="woocommerce-Input woocommerce-Input--password input-text" name="password_current" id="password_current" autocomplete="off" />
									<i class="eye-f"></i>
								</div>
								<div class="myModal__content__desc__input">
									<label for="password_1"><?php esc_html_e( 'Nueva Contraseña', 'woocommerce' ); ?></label>
									<input type="password" class="woocommerce-Input woocommerce-Input--password input-text" name="password_1" id="password_1" autocomplete="off" />
									<i class="eye-f"></i>
								</div>
								<div class="myModal__content__desc__input">
									<label for="password_2"><?php esc_html_e( 'Confirma nueva contraseña', 'woocommerce' ); ?></label>
									<input type="password" class="woocommerce-Input woocommerce-Input--password input-text" name="password_2" id="password_2" autocomplete="off" />
									<i class="eye-f"></i>
								</div>
								<div class="myModal__content__desc__button">
									<a href="javascript:void(0)" class="btn btnSubmit"><?php esc_html_e( 'Guardar', 'woocommerce' ); ?></a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<?php do_action( 'woocommerce_edit_account_form' ); ?>
			<div class="formAccount__form__button" style="display: none;">
				<?php wp_nonce_field( 'save_account_details', 'save-account-details-nonce' ); ?>
				<button type="submit" class="woocommerce-Button button" id="buttonForm" name="save_account_details" value="<?php esc_attr_e( 'Save changes', 'woocommerce' ); ?>"><?php esc_html_e( 'Save', 'woocommerce' ); ?></button>
				<input type="hidden" name="action" value="save_account_details" />
			</div>
			<?php do_action( 'woocommerce_edit_account_form_end' ); ?>
		</form>
	</div>
</div>

<?php do_action( 'woocommerce_after_edit_account_form' ); ?>
<script type="text/javascript">
	jQuery('#titlePageAccount').html('<?php _e('Perfil de usuarios'); ?>');
	jQuery('.woocommerce-MyAccount-navigation li').eq(0).addClass('active');
</script>