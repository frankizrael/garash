<?php

/**
 * Template Name: Mi Cuenta
 */
?>
<?php set_query_var('ASSETS_KEY_WORD', 'page_my_account'); ?>
<?php get_header('header'); ?>


<?php
set_query_var('class', 'is-black');
get_template_part('partials/global/content', 'navbar');
?>

<section class="sectionAccount">
    <h1>Crear cuenta</h1>
    <?php echo do_shortcode('[user_registration_form id="39"]'); ?>



    <h1>Login</h1>
    <form id="loginForm" action="login" method="post">

    <p class="login-message"></p>

    <div>
        <label for='username'>Username</label>
        <input id="username" type="text" name="username" />
    </div>
    <div>
        <label for='password'>Password</label>
        <input id="password" type="password" name="password" />            
    
    </div>

    <div>
        <input name="rememberme" type="checkbox" id="rememberme" value="forever">
        <label for="rememberme">Remember Me</label>
    </div> 
  
    <input type="submit" name="submit" value="Login">
   
    <?php wp_nonce_field( 'ajax-login-nonce', 'security' ); ?>
</form>

<h2>hola</h2>
<?php

echo do_shortcode('[yith_wc_social_login]');

?>
 
</section>

<?php get_footer('footer'); ?>