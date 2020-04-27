<?php

/**
 * Template Name: Encuesta
 */
?>
<?php
set_query_var('ASSETS_KEY_WORD', 'page_encuesta');
set_query_var('class', 'is-active');
get_header('header');
get_template_part('partials/global/content', 'navbar');
?>
<section class="encuestaPage">
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
    <div class="encuesta-intent">
    	<div class="x-container">
    		<div class="title">
    			<?php if (have_posts()) : while (have_posts()) : the_post();
                            the_content();
                        endwhile;
                    endif; ?>
    		</div>
    		<div class="soft_encuesta">
    			<?php
    				$encuesta = get_field('encuesta');
    				foreach ($encuesta as $en) {
    			?>
    			<div class="item_encuesta" answ="0" title="<?php echo $en['title']; ?>">
    				<div class="left" >
    					<?php echo $en['title']; ?>
    				</div>
    				<div class="right">
    					<div class="top">
    						<span>Nada probable</span>
    						<span>Muy probable</span>
    					</div>
    					<div class="bottom">
    						<?php
    							for ($i=1;$i<11;$i++) {
    								?>
    						<i data="<?php echo $i;?>"><?php echo $i;?></i>
    								<?php
    							}
    						?>
    					</div>
    				</div>
    			</div>
    			<?php
    				}
    			?>
    		</div>
            <div class="soft_send">
                <div style="display: none;"><?php echo do_shortcode('[contact-form-7 id="180" title="encuesta"]');?></div>
                <a href="javascript:void(0)" class="btn" id="sendid">Enviar</a>
            </div>
    	</div>
    </div>
</section>

<?php
get_template_part('partials/global/content', 'footer');
?>

<?php get_footer('footer'); ?>