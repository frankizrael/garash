<?php
/**
 * Login Form
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/myaccount/form-login.php.
 *
 * HOWEVER, on occasion WooCommerce will need to update template files and you
 * (the theme developer) will need to copy the new files to your theme to
 * maintain compatibility. We try to do this as little as possible, but it does
 * happen. When this occurs the version of the template file will be bumped and
 * the readme will list any important changes.
 *
 * @see     https://docs.woocommerce.com/document/template-structure/
 * @package WooCommerce/Templates
 * @version 3.6.0
 */

if ( ! defined( 'ABSPATH' ) ) {
	exit; // Exit if accessed directly.
}
$myaccount_id = get_option( 'woocommerce_myaccount_page_id' );
do_action( 'woocommerce_before_customer_login_form' ); ?>


<div class="myLogin" id="customer_login">
	<div class="myLogin__left">
		<div class="myLogin__left__content">
			<div class="myLogin__left__content__carousel">
				<div class="myLogin__left__content__carousel__item" style="background-image: url('<?php the_field('imagen_login',$myaccount_id);?>');"></div>
				<div class="myLogin__left__content__carousel__item" style="background-image: url('<?php the_field('imagen_register',$myaccount_id);?>');"></div>
			</div>
		</div>
	</div>
	<div class="myLogin__right">
		<div class="myLogin__right__content">
			<div class="myLogin__control">
				<ul>
					<li class="active"><?php esc_html_e( 'Iniciar sesión', 'woocommerce' ); ?></li>
					<li><?php esc_html_e( 'Crear cuenta', 'woocommerce' ); ?></li>
				</ul>
				<span class="move"></span>
			</div>
			<div class="myLogin__right__content__carousel">
				<div class="myLogin__right__content__carousel__item">
					<div id="customer_login" class="myLogin__form">
						<form class="woocommerce-form woocommerce-form-login login" method="post">
							<?php do_action( 'woocommerce_login_form_start' ); ?>
							<div class="woocommerce-form-row woocommerce-form-row--wide form-row form-row-wide myLogin__form__row">
								<label for="username"><?php esc_html_e( 'Email', 'woocommerce' ); ?></label>
								<input type="text" class="woocommerce-Input woocommerce-Input--text input-text" name="username" id="username" autocomplete="username" value="<?php echo ( ! empty( $_POST['username'] ) ) ? esc_attr( wp_unslash( $_POST['username'] ) ) : ''; ?>" />
							</div>
							<div class="woocommerce-form-row woocommerce-form-row--wide form-row form-row-wide myLogin__form__row">
								<label for="password"><?php esc_html_e( 'Contraseña', 'woocommerce' ); ?></label>
								<input class="woocommerce-Input woocommerce-Input--text input-text" type="password" name="password" id="password" autocomplete="current-password" />
							</div>
							<?php do_action( 'woocommerce_login_form' ); ?>
							<div class="remember-row myLogin__form__checkrow">
								<label class="woocommerce-form__label woocommerce-form__label-for-checkbox woocommerce-form-login__rememberme">
									<input class="woocommerce-form__input woocommerce-form__input-checkbox" name="rememberme" type="checkbox" id="rememberme" value="forever" /> <span><?php esc_html_e( 'Recuerdame', 'woocommerce' ); ?></span>
								</label>
							</div>
							<div class="button-row myLogin__form__row">
								<button type="submit" class="woocommerce-button button woocommerce-form-login__submit" name="login" value="<?php esc_attr_e( 'Iniciar sesión', 'woocommerce' ); ?>"><?php esc_html_e( 'Iniciar sesión', 'woocommerce' ); ?></button>
							</div>
							<div class="woocommerce-LostPassword lost_password myLogin__form__row">
								<a href="<?php echo esc_url( wp_lostpassword_url() ); ?>"><?php esc_html_e( '¿Olvidaste tu contraseña?', 'woocommerce' ); ?></a>
							</div>							
							<?php wp_nonce_field( 'woocommerce-login', 'woocommerce-login-nonce' ); ?>
							<?php do_action( 'woocommerce_login_form_end' ); ?>
							<div class="complementd-social-login">
								<h4><?php esc_html_e( 'También puedes iniciar sesión con:', 'woocommerce' ); ?></h4>
								<div class="social-login__links">
									<a href="#" class="social-login__links__facebook">
										<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 20 20"><defs><style>.ar{fill:#fff;}</style></defs><path class="ar" d="M17.857,2.25H2.143A2.143,2.143,0,0,0,0,4.393V20.107A2.143,2.143,0,0,0,2.143,22.25H8.27v-6.8H5.458v-3.2H8.27V9.811C8.27,7.036,9.922,5.5,12.452,5.5a17.039,17.039,0,0,1,2.479.216V8.443h-1.4a1.6,1.6,0,0,0-1.8,1.729V12.25H14.8l-.491,3.2H11.73v6.8h6.127A2.143,2.143,0,0,0,20,20.107V4.393A2.143,2.143,0,0,0,17.857,2.25Z" transform="translate(0 -2.25)"/></svg>
										<span>Facebook</span>
									</a>
									<a href="#" class="social-login__links__google">
										<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 20 20"><defs><style>.a{fill:#fbbb00;}.b{fill:#518ef8;}.c{fill:#28b446;}.d{fill:#f14336;}</style></defs><path class="a" d="M4.36,144.844,3.675,147.4l-2.5.053a9.854,9.854,0,0,1-.072-9.186h0l2.228.409.976,2.215a5.871,5.871,0,0,0,.055,3.953Z" transform="translate(0 -132.79)"/><path class="b" d="M271.077,208.176a9.834,9.834,0,0,1-3.507,9.509h0l-2.807-.143-.4-2.48a5.863,5.863,0,0,0,2.523-2.994h-5.26v-3.892h9.449Z" transform="translate(-251.249 -199.851)"/><path class="c" d="M45.332,315.027h0a9.84,9.84,0,0,1-14.823-3.01l3.188-2.609a5.851,5.851,0,0,0,8.431,3Z" transform="translate(-29.337 -297.194)"/><path class="d" d="M43.64,2.265,40.453,4.874a5.85,5.85,0,0,0-8.624,3.063l-3.2-2.624h0A9.839,9.839,0,0,1,43.64,2.265Z" transform="translate(-27.524)"/></svg>
										<span>Google</span>									
									</a>
								</div>
							</div>
						</form>
					</div>			
				</div>
				<?php if ( 'yes' === get_option( 'woocommerce_enable_myaccount_registration' ) ) : ?>
				<div class="myLogin__right__content__carousel__item myLogin__form">
					<form method="post" class="woocommerce-form woocommerce-form-register register " <?php do_action( 'woocommerce_register_form_tag' ); ?> >
						<?php do_action( 'woocommerce_register_form_start' ); ?>

						<?php if ( 'no' === get_option( 'woocommerce_registration_generate_username' ) ) : ?>

							<div class="woocommerce-form-row woocommerce-form-row--wide form-row form-row-wide myLogin__form__row">
								<label for="reg_username"><?php esc_html_e( 'Usuario', 'woocommerce' ); ?></label>
								<input type="text" class="woocommerce-Input  woocommerce-Input--text input-text" name="username" id="reg_username" autocomplete="username" value="<?php echo ( ! empty( $_POST['username'] ) ) ? esc_attr( wp_unslash( $_POST['username'] ) ) : ''; ?>" />
							</div>

						<?php endif; ?>

						<div class="woocommerce-form-row woocommerce-form-row--wide form-row form-row-wide myLogin__form__row">
							<label for="reg_email"><?php esc_html_e( 'Email', 'woocommerce' ); ?></label>
							<input type="email" class="woocommerce-Input woocommerce-Input--text input-text" name="email" id="reg_email" autocomplete="email" value="<?php echo ( ! empty( $_POST['email'] ) ) ? esc_attr( wp_unslash( $_POST['email'] ) ) : ''; ?>" />
						</div>

						<?php if ( 'no' === get_option( 'woocommerce_registration_generate_password' ) ) : ?>

							<div class="woocommerce-form-row woocommerce-form-row--wide form-row form-row-wide myLogin__form__row">
								<label for="reg_password"><?php esc_html_e( 'Contraseña', 'woocommerce' ); ?></label>
								<input type="password" class="woocommerce-Input woocommerce-Input--text input-text" name="password" id="reg_password" autocomplete="new-password" />
							</div>

						<?php else : ?>

							<p><?php esc_html_e( 'A password will be sent to your email address.', 'woocommerce' ); ?></p>

						<?php endif; ?>

						<?php do_action( 'woocommerce_register_form' ); ?>

						<div class="woocommerce-FormRow form-row myLogin__form__checkrow">
							<?php wp_nonce_field( 'woocommerce-register', 'woocommerce-register-nonce' ); ?>
							<button type="submit" class="woocommerce-Button woocommerce-button button woocommerce-form-register__submit" name="register" value="<?php esc_attr_e( 'Register', 'woocommerce' ); ?>"><?php esc_html_e( 'Crear cuenta', 'woocommerce' ); ?></button>
						</div>

						<?php do_action( 'woocommerce_register_form_end' ); ?>
						<div class="complementd-social-login">
							<h4><?php esc_html_e( 'También puedes iniciar sesión con:', 'woocommerce' ); ?></h4>
							<div class="social-login__links">
								<a href="#" class="social-login__links__facebook">
									<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 20 20"><defs><style>.ar{fill:#fff;}</style></defs><path class="ar" d="M17.857,2.25H2.143A2.143,2.143,0,0,0,0,4.393V20.107A2.143,2.143,0,0,0,2.143,22.25H8.27v-6.8H5.458v-3.2H8.27V9.811C8.27,7.036,9.922,5.5,12.452,5.5a17.039,17.039,0,0,1,2.479.216V8.443h-1.4a1.6,1.6,0,0,0-1.8,1.729V12.25H14.8l-.491,3.2H11.73v6.8h6.127A2.143,2.143,0,0,0,20,20.107V4.393A2.143,2.143,0,0,0,17.857,2.25Z" transform="translate(0 -2.25)"/></svg>
									<span>Facebook</span>
								</a>
								<a href="#" class="social-login__links__google">
									<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 20 20"><defs><style>.a{fill:#fbbb00;}.b{fill:#518ef8;}.c{fill:#28b446;}.d{fill:#f14336;}</style></defs><path class="a" d="M4.36,144.844,3.675,147.4l-2.5.053a9.854,9.854,0,0,1-.072-9.186h0l2.228.409.976,2.215a5.871,5.871,0,0,0,.055,3.953Z" transform="translate(0 -132.79)"/><path class="b" d="M271.077,208.176a9.834,9.834,0,0,1-3.507,9.509h0l-2.807-.143-.4-2.48a5.863,5.863,0,0,0,2.523-2.994h-5.26v-3.892h9.449Z" transform="translate(-251.249 -199.851)"/><path class="c" d="M45.332,315.027h0a9.84,9.84,0,0,1-14.823-3.01l3.188-2.609a5.851,5.851,0,0,0,8.431,3Z" transform="translate(-29.337 -297.194)"/><path class="d" d="M43.64,2.265,40.453,4.874a5.85,5.85,0,0,0-8.624,3.063l-3.2-2.624h0A9.839,9.839,0,0,1,43.64,2.265Z" transform="translate(-27.524)"/></svg>
									<span>Google</span>									
								</a>
							</div>
						</div>
					</form>
				</div>
				<?php endif; ?>
			</div>
		</div>
	</div>
</div>


<?php do_action( 'woocommerce_after_customer_login_form' ); ?>
<div class="bg"></div>
<script type="text/javascript">
	jQuery('.myLogin__control li').on('click',function(){
		let jQueryThis = jQuery(this);
		let index = jQueryThis.index();
		if (index == 1) {
			jQuery('.myLogin__left__content__carousel__item').eq(0).addClass('moved');
			jQuery('.myLogin__right__content__carousel__item').eq(0).addClass('moved');
			jQuery('.move').addClass('moved');	
		} else {
			jQuery('.myLogin__left__content__carousel__item').eq(0).removeClass('moved');
			jQuery('.myLogin__right__content__carousel__item').eq(0).removeClass('moved');
			jQuery('.move').removeClass('moved');
		}
		jQuery('.myLogin__control li').removeClass('active');
		jQueryThis.addClass('active');
	});
	var SocialLinkFacebook = jQuery('.ywsl-facebook').attr('href');
	var SocialLinkGoogle = jQuery('.ywsl-google').attr('href');
	jQuery('.social-login__links__facebook').attr('href',SocialLinkFacebook);
	jQuery('.social-login__links__google').attr('href',SocialLinkGoogle);
</script>