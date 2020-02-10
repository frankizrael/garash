<?php

if ( ! defined( 'ABSPATH' ) ) {
	exit;
}

class WC_Settings_Tab_WALR {

	/*
	* __construct function
	*/
	function __construct() {
		$this->init();
    }

	/*
	* init function
	*/
    function init() {
        add_action( 'woocommerce_settings_tabs_account', array($this, 'settings_tab') );
        add_action( 'woocommerce_update_options_account', array($this, 'update_settings') );
		add_action('admin_footer', array( $this, 'admin_script') );
    }

    /**
     * Uses the WooCommerce admin fields API to output settings via the @see woocommerce_admin_fields() function.
     *
     * @uses woocommerce_admin_fields()
     * @uses self::get_settings()
     */
	function settings_tab() {
        woocommerce_admin_fields( $this->get_settings() );
    }
    /**
     * Uses the WooCommerce options API to save settings via the @see woocommerce_update_options() function.
     *
     * @uses woocommerce_update_options()
     * @uses self::get_settings()
     */
	function update_settings() {
        woocommerce_update_options( $this->get_settings() );
    }
    /**
     * Get all the settings for this plugin for @see woocommerce_admin_fields() function.
     *
     * @return array Array of settings for @see woocommerce_admin_fields() function.
     */
	function get_settings() {

        $settings = array(
            'section_title' => array(
                'name'     => __( 'Woocommerce Ajax Login/Register', 'woocommerce-ajax-login-register' ),
                'type'     => 'title',
                'desc'     => '',
            ),
			'password_strength' => array(
				'title'		=> __( 'Required registration password strength', 'woocommerce-ajax-login-register' ),
				'desc'      => '<span class="desc_hint">'.__( 'Hint: The password should be at least 7 characters long, and should contain letters and numbers.', 'woocommerce-ajax-login-register' ).'</span>',
				'type'		=> 'select',
				'default'	=> '0',
				'id'		=> 'password_strength',
				'options'	=> array(
					'0' => "Very Weak / Anything",
					'1' => "Password should be at least Weak",
					'2' => "Also Weak but a little stronger",
					'3' => "Medium (default)",
					'4' => "Strong",
				),
				'class'		=> 'password_strength',
			),
			'captcha_enabled' => array(
				'title'		=> __( 'Captcha Enable/Disable', 'woocommerce-ajax-login-register' ),
				'type'		=> 'checkbox',
				'default'	=> 'yes',
				'id'		=> 'captcha_enabled',
				'class'		=> 'captcha_enabled',
			),
            'section_end2' => array(
                 'type'		=> 'sectionend',
                 'id'		=> 'wc_settings_tab_demo_section_end'
            )
        );
        return apply_filters( 'wc_'.$this->id.'_settings', $settings );
    }
	function admin_script() {?>
		<script>
			jQuery('.password_hint').attr('readonly','readonly');
			jQuery( ".password_strength" ).change(function() {
			//var optionText = $(".zorem_password_strength option:selected").val();
			var password_strength = jQuery(this).val();
			if(password_strength == 0 || password_strength == 1 || password_strength == 2 ){
				jQuery('.desc_hint').text('Hint: The password should be at least 7 characters long. To make it stronger, use upper and lower case letters, numbers.');
			} else if(password_strength == 3){
				jQuery('.desc_hint').text('Hint: The password should be at least 9 characters long. To make it stronger, use upper and lower case letters, numbers, and symbols like ! " ? $ % ^ & ).');
			} else if(password_strength == 4){
				jQuery('.desc_hint').text('Hint: The password should be at least 11 characters long. To make it stronger, use upper and lower case letters, numbers, and symbols like ! " ? $ % ^ & ).	');
			} else{
				jQuery('.desc_hint').text(' ');
			}
		});
        </script>
		<style>
		span.desc_hint {
			float: left;
			margin-top: 10px;
			width: 100%;
		}
		</style>
	<?php }
}
new WC_Settings_Tab_WALR();
