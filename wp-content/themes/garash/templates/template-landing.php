<?php

/**
 * Template Name: landing
 */
?>
<?php
set_query_var('ASSETS_KEY_WORD', 'page_home');
get_header('header');
?>
<div class="landing">	
	<div class="landing__header">
		<div class="x-container landing__header__flex">
			<figure>
	            <img src="<?php echo get_template_directory_uri() . '/assets/garash_logo.png'  ?>" alt="Logo Garash">
	        </figure>
	        <a href="<?php echo site_url();?>/ecommerce" class="btn">Tienda Virtual</a>
        </div>
	</div>
	<section class="landing__home">
		<div class="x-container">
			<div class="landing__home__flex">
				<div class="landing__home__left">
					<div class="landing__home__content">
						<div class="title">
							<h1><?php the_title(); ?></h1>						
						</div>
						<div class="content">
							<?php if (have_posts()) : while (have_posts()) : the_post();
	                            	the_content();
	                        	endwhile;
	                    	endif; ?>
						</div>
						<div class="link">						
	        				<a href="<?php echo site_url();?>/ecommerce" class="btn">Tienda Virtual</a>
						</div>
					</div>
				</div>
				<div class="landing__home__right">
					<div class="landing__home__content">
						<div class="content_img">
							<img src="<?php echo get_template_directory_uri() . '/assets/garage-min.jpg'  ?>">
						</div>
					</div>
				</div>
			</div>			
		</div>
	</section>
	<section class="landing__parts">
		<div class="x-container">
		<?php
			$articles = get_field('articles');
			$a = 0;
			foreach ($articles as $article) {
				?>		
		<article class="landing__parts__article" id="article_<?php echo $a;?>">
			<div class="landing__parts__article__left">
				<div class="cc-flex">
					<?php 
						echo $article['texto'];
					?>
				</div>
			</div>
			<div class="landing__parts__article__right">
				<div class="landing__parts__background" style="background-image: url('<?php echo get_template_directory_uri() . '/assets/people-min.jpg'  ?>');"></div>
			</div>
		</article>
				<?php
			$a++;
			}
		?>
		</div>
	</section>
</div>
<?php
get_template_part('partials/global/content', 'footer');
?>
<?php get_footer('footer'); ?>