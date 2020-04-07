<?php
/**
 * Template Name: contact
 */
?>
<?php
set_query_var('ASSETS_KEY_WORD', 'page_contact');
set_query_var('class', 'is-active');
get_header('header');
get_template_part('partials/global/content', 'navbar');
?>
<section class="contactPage">
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
    <div class="contact-intent">
    	<div class="x-container">
    		<div class="flex">
    			<div class="left">
    				<div class="contact-data">
    					<?php
    						$contactdata = get_field('contact_data');
    						foreach ($contactdata as $cc) {
    							?>
    						<div class="contact-data__item">
    							<h3><?php echo $cc['title']; ?></h3>
    							<p><?php echo $cc['desc']; ?></p>
    						</div>
    							<?php
    						}
    					?>
    				</div>
    			</div>
    			<div class="right">
    				<div class="box boxContact">
    					<?php echo do_shortcode('[contact-form-7 id="160" title="Contacto"]'); ?>
    				</div>
    			</div>
    		</div>
    	</div>
    </div>
</section>

<?php
get_template_part('partials/global/content', 'footer');
?>
<?php get_footer('footer'); ?>