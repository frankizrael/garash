<?php

/**
 * Template Name: landing two
 */
?>
<?php
set_query_var('ASSETS_KEY_WORD', 'page_home');
get_header('header');
?>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/5.4.5/css/swiper.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/5.4.5/js/swiper.min.js"></script>
<div class="lp_wrapper">
	<div class="lp_header">
		<div class="lp_container lp_flex">
			<figure>
				<a href="<?php echo site_url(); ?>">
	            	<img src="<?php echo get_template_directory_uri() . '/assets/garage_logo_min.jpeg'  ?>" alt="Logo Garash">
	            </a>
	        </figure>
	        <div class="information">
	        	<div>
	        		<svg version="1.1" id="Capa_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 496 496" style="enable-background:new 0 0 496 496;" xml:space="preserve"><g><g><path d="M423.36,72.635C376.85,26.126,313.769-0.001,247.995,0c-4.418,0-8,3.582-8,8v64c0,4.418,3.582,8,8,8s8-3.582,8-8V16.136c128.054,4.416,228.282,111.805,223.866,239.859c-4.416,128.054-111.805,228.282-239.859,223.866C111.948,475.444,11.72,368.055,16.136,240.002c2.025-58.727,26.26-114.498,67.811-156.049c3.069-3.178,2.981-8.243-0.197-11.312c-3.1-2.994-8.015-2.994-11.115,0c-96.849,96.851-96.846,253.876,0.005,350.725s253.876,96.846,350.725-0.005S520.211,169.484,423.36,72.635z"/></g></g><g><g><path d="M247.995,216c-5.695,0.028-11.276,1.595-16.152,4.536l-113.96-113.96c-3.178-3.069-8.243-2.981-11.312,0.197c-2.994,3.1-2.994,8.015,0,11.115l113.96,113.96c-2.941,4.876-4.508,10.457-4.536,16.152c0,17.673,14.327,32,32,32c17.673,0,32-14.327,32-32S265.668,216,247.995,216z M247.995,264c-8.837,0-16-7.163-16-16c0-8.837,7.163-16,16-16c8.837,0,16,7.163,16,16C263.995,256.837,256.832,264,247.995,264z"/></g></g></svg>
	        		<p><?php echo get_field('horarios'); ?></p>
	        	</div>
	        	<a href="https://api.whatsapp.com/send?phone=<?php echo get_field('phone'); ?>">
                    <div>
    		        	<svg viewBox="0 0 512 512" xmlns="http://www.w3.org/2000/svg">
                            <path d="m439.277344 72.722656c-46.898438-46.898437-109.238282-72.722656-175.566406-72.722656-.003907 0-.019532 0-.023438 0-32.804688.00390625-64.773438 6.355469-95.011719 18.882812-30.242187 12.527344-57.335937 30.640626-80.535156 53.839844-46.894531 46.894532-72.71875 109.246094-72.71875 175.566406 0 39.550782 9.542969 78.855469 27.625 113.875l-41.734375 119.226563c-2.941406 8.410156-.859375 17.550781 5.445312 23.851563 4.410157 4.414062 10.214844 6.757812 16.183594 6.757812 2.558594 0 5.144532-.429688 7.667969-1.3125l119.226563-41.730469c35.019531 18.082031 74.324218 27.625 113.875 27.625 66.320312 0 128.667968-25.828125 175.566406-72.722656 46.894531-46.894531 72.722656-109.246094 72.722656-175.566406 0-66.324219-25.824219-128.675781-72.722656-175.570313zm-21.234375 329.902344c-41.222657 41.226562-96.035157 63.925781-154.332031 63.925781-35.664063 0-71.09375-8.820312-102.460938-25.515625-5.6875-3.023437-12.410156-3.542968-18.445312-1.429687l-108.320313 37.910156 37.914063-108.320313c2.113281-6.042968 1.589843-12.765624-1.433594-18.449218-16.691406-31.359375-25.515625-66.789063-25.515625-102.457032 0-58.296874 22.703125-113.109374 63.925781-154.332031 41.21875-41.21875 96.023438-63.921875 154.316406-63.929687h.019532c58.300781 0 113.109374 22.703125 154.332031 63.929687 41.226562 41.222657 63.929687 96.03125 63.929687 154.332031 0 58.300782-22.703125 113.113282-63.929687 154.335938zm0 0"/><path d="m355.984375 270.46875c-11.421875-11.421875-30.007813-11.421875-41.429687 0l-12.492188 12.492188c-31.019531-16.902344-56.121094-42.003907-73.027344-73.023438l12.492188-12.492188c11.425781-11.421874 11.425781-30.007812 0-41.429687l-33.664063-33.664063c-11.421875-11.421874-30.007812-11.421874-41.429687 0l-26.929688 26.929688c-15.425781 15.425781-16.195312 41.945312-2.167968 74.675781 12.179687 28.417969 34.46875 59.652344 62.761718 87.945313 28.292969 28.292968 59.527344 50.582031 87.945313 62.761718 15.550781 6.664063 29.695312 9.988282 41.917969 9.988282 13.503906 0 24.660156-4.058594 32.757812-12.15625l26.929688-26.933594v.003906c5.535156-5.535156 8.582031-12.890625 8.582031-20.714844 0-7.828124-3.046875-15.183593-8.582031-20.714843zm-14.5 80.792969c-4.402344 4.402343-17.941406 5.945312-41.609375-4.195313-24.992188-10.710937-52.886719-30.742187-78.542969-56.398437s-45.683593-53.546875-56.394531-78.539063c-10.144531-23.667968-8.601562-37.210937-4.199219-41.613281l26.414063-26.414063 32.625 32.628907-15.636719 15.640625c-7.070313 7.070312-8.777344 17.792968-4.242187 26.683594 20.558593 40.3125 52.734374 72.488281 93.046874 93.046874 8.894532 4.535157 19.617188 2.832032 26.6875-4.242187l15.636719-15.636719 32.628907 32.628906zm0 0"/>
                        </svg>
    		        	<span><?php echo get_field('phone'); ?></span>
                    </div>
                    <p>Pide tu batería por Whatsapp o llámenos</p>
		        </a>
	        </div>
		</div>
		<div class="lp_fixed">
			<div class="sharedModalItem">
                <a id="whatsapp" href="https://api.whatsapp.com/send?phone=<?php echo get_field('phone'); ?>" class="wspSocial"  target="_blank">
                    <i>
                        <svg viewBox="0 0 512 512" xmlns="http://www.w3.org/2000/svg">
                            <path d="m439.277344 72.722656c-46.898438-46.898437-109.238282-72.722656-175.566406-72.722656-.003907 0-.019532 0-.023438 0-32.804688.00390625-64.773438 6.355469-95.011719 18.882812-30.242187 12.527344-57.335937 30.640626-80.535156 53.839844-46.894531 46.894532-72.71875 109.246094-72.71875 175.566406 0 39.550782 9.542969 78.855469 27.625 113.875l-41.734375 119.226563c-2.941406 8.410156-.859375 17.550781 5.445312 23.851563 4.410157 4.414062 10.214844 6.757812 16.183594 6.757812 2.558594 0 5.144532-.429688 7.667969-1.3125l119.226563-41.730469c35.019531 18.082031 74.324218 27.625 113.875 27.625 66.320312 0 128.667968-25.828125 175.566406-72.722656 46.894531-46.894531 72.722656-109.246094 72.722656-175.566406 0-66.324219-25.824219-128.675781-72.722656-175.570313zm-21.234375 329.902344c-41.222657 41.226562-96.035157 63.925781-154.332031 63.925781-35.664063 0-71.09375-8.820312-102.460938-25.515625-5.6875-3.023437-12.410156-3.542968-18.445312-1.429687l-108.320313 37.910156 37.914063-108.320313c2.113281-6.042968 1.589843-12.765624-1.433594-18.449218-16.691406-31.359375-25.515625-66.789063-25.515625-102.457032 0-58.296874 22.703125-113.109374 63.925781-154.332031 41.21875-41.21875 96.023438-63.921875 154.316406-63.929687h.019532c58.300781 0 113.109374 22.703125 154.332031 63.929687 41.226562 41.222657 63.929687 96.03125 63.929687 154.332031 0 58.300782-22.703125 113.113282-63.929687 154.335938zm0 0"/><path d="m355.984375 270.46875c-11.421875-11.421875-30.007813-11.421875-41.429687 0l-12.492188 12.492188c-31.019531-16.902344-56.121094-42.003907-73.027344-73.023438l12.492188-12.492188c11.425781-11.421874 11.425781-30.007812 0-41.429687l-33.664063-33.664063c-11.421875-11.421874-30.007812-11.421874-41.429687 0l-26.929688 26.929688c-15.425781 15.425781-16.195312 41.945312-2.167968 74.675781 12.179687 28.417969 34.46875 59.652344 62.761718 87.945313 28.292969 28.292968 59.527344 50.582031 87.945313 62.761718 15.550781 6.664063 29.695312 9.988282 41.917969 9.988282 13.503906 0 24.660156-4.058594 32.757812-12.15625l26.929688-26.933594v.003906c5.535156-5.535156 8.582031-12.890625 8.582031-20.714844 0-7.828124-3.046875-15.183593-8.582031-20.714843zm-14.5 80.792969c-4.402344 4.402343-17.941406 5.945312-41.609375-4.195313-24.992188-10.710937-52.886719-30.742187-78.542969-56.398437s-45.683593-53.546875-56.394531-78.539063c-10.144531-23.667968-8.601562-37.210937-4.199219-41.613281l26.414063-26.414063 32.625 32.628907-15.636719 15.640625c-7.070313 7.070312-8.777344 17.792968-4.242187 26.683594 20.558593 40.3125 52.734374 72.488281 93.046874 93.046874 8.894532 4.535157 19.617188 2.832032 26.6875-4.242187l15.636719-15.636719 32.628907 32.628906zm0 0"/>
                        </svg>
                    </i>
                    <p>Pide tu batería por Whatsapp</p>
                </a>
				<a href="https://www.facebook.com/messages/t/DIGCOOK" target="_blank">
                    <i>
                        <svg height="512pt" viewBox="0 0 512 511" width="512pt" xmlns="http://www.w3.org/2000/svg"><path d="m120.65625 512.476562c-7.25 0-14.445312-2.023437-20.761719-6.007812-10.929687-6.902344-17.703125-18.734375-18.117187-31.660156l-1.261719-41.390625c-51.90625-46.542969-80.515625-111.890625-80.515625-183.992188 0-68.816406 26.378906-132.101562 74.269531-178.199219 47.390625-45.609374 111.929688-70.726562 181.730469-70.726562s134.339844 25.117188 181.730469 70.726562c47.890625 46.097657 74.269531 109.382813 74.269531 178.199219 0 68.8125-26.378906 132.097657-74.269531 178.195313-47.390625 45.609375-111.929688 70.730468-181.730469 70.730468-25.164062 0-49.789062-3.253906-73.195312-9.667968l-46.464844 20.5c-5.035156 2.207031-10.371094 3.292968-15.683594 3.292968zm135.34375-471.976562c-123.140625 0-216 89.816406-216 208.925781 0 60.667969 23.957031 115.511719 67.457031 154.425781 8.023438 7.226563 12.628907 17.015626 13.015625 27.609376l.003906.125 1.234376 40.332031 45.300781-19.988281c8.15625-3.589844 17.355469-4.28125 25.921875-1.945313 20.132812 5.554687 41.332031 8.363281 63.066406 8.363281 123.140625 0 216-89.816406 216-208.921875 0-119.109375-92.859375-208.925781-216-208.925781zm-125.863281 290.628906 74.746093-57.628906c5.050782-3.789062 12.003907-3.839844 17.101563-.046875l55.308594 42.992187c16.578125 12.371094 40.304687 8.007813 51.355469-9.433593l69.519531-110.242188c6.714843-10.523437-6.335938-22.417969-16.292969-14.882812l-74.710938 56.613281c-5.050781 3.792969-12.003906 3.839844-17.101562.046875l-55.308594-41.988281c-16.578125-12.371094-40.304687-8.011719-51.355468 9.429687l-69.554688 110.253907c-6.714844 10.523437 6.335938 22.421874 16.292969 14.886718zm0 0"/></svg>
                    </i>
                    <p>Pide tu batería por messenger</p>
                </a>
			</div>
		</div>
	</div>
	<section class="lp_home init">
		
        <div class="swiper-container">
            <div class="swiper-wrapper">
                <?php
                    $banner = get_field('banner');
                        if ($banner){
                            foreach($banner as $ban) {
                ?>
                    <div class="swiper-slide">
                        <div class="heightH initCore" style="background-image: url('<?php echo $ban['img']; ?>');">
                        </div>
                    </div>
                <?php
                        }
                    }
                ?>
            </div>
            <div class="swiper-pagination"></div>
        </div>


		<div class="lp_contact">
			<div class="lp_contact_art"></div>
			<div class="lp_form">
				<h2>Solicite la batería de auto aquí</h2>
				<div class="lp_content_form">
					<?php echo do_shortcode('[contact-form-7 id="368" title="contact_landing"]'); ?>
				</div>
			</div>
		</div>
	</section>
	<section class="lp_content">
		<div class="lp_banner">
			<div class="lp_flex">
				<?php
					$dat = get_field('banner_data');
					foreach ($dat as $d) {
						?>
				<div class="lp_flex_l">
					<?php echo $d['content']; ?>
				</div>
						<?php
					}
				?>
			</div>
		</div> 
		<div class="lp_batery">
			<div class="lp_tt">
				<h2><?php the_field('baterys_title'); ?></h2>
				<a id="whatsapp" href="https://api.whatsapp.com/send?phone=<?php echo get_field('phone'); ?>" class="wspSocial"  target="_blank">
					Comprar ahora
				</a>
			</div>
			<div class="lp_flex">
                 <div class="swiper-container">
                    <div class="swiper-wrapper">
                        <?php
                            $bat = get_field('baterys_data');
                                foreach ($bat as $b) {
                        ?>
                            <div class="swiper-slide">
                                <div class="lp_batery_item">
                                    <img src="<?php echo $b['imagen']; ?>">
                                </div>
                            </div>
                        <?php
                            }
                        ?>
                    </div>
                </div>	

                    <div class="swiper-button-prev"></div>
                    <div class="swiper-button-next"></div>			
			</div>
		</div>
		<div class="lp_banner lp_banner_3" style="background: url('<?php the_field('banner_pagos_imagen'); ?>');">
			<div class="lp_tt">
				<h2><?php the_field('banner_pagos_title'); ?></h2>
			</div>
			<div class="lp_flex">
				<?php
					$dat = get_field('banner_pagos');
					foreach ($dat as $d) {
						?>
				<div class="lp_flex_l">
					<img src="<?php echo $d['imagen']; ?>">
					<div class="text">
						<?php echo $d['content']; ?>
					</div>
				</div>
						<?php
					}
				?>
			</div>
		</div> 
	</section>
	<section class="lp_foot">
		<div class="lp_footer_c">
			<div class="lp_tt">
				<h2><?php the_field('footer_title'); ?></h2>
			</div>
			<div class="lp_flex">
				<?php
					$dat = get_field('footer_lp');
					foreach ($dat as $d) {
						?>
				<div class="lp_flex_l">
					<img src="<?php echo $d['imagen']; ?>">
					<div class="text">
						<?php echo $d['content']; ?>
					</div>
				</div>
						<?php
					}
				?>
			</div>
		</div> 
	</section>
</div>
<?php
get_template_part('partials/global/content', 'footer');
?>
<script type="text/javascript">
    jQuery('.pterms').on('click',function(){
        jQuery('.pterms').toggleClass('active');
        jQuery('.buttonLabel button').toggleClass('btnOpacity');
    });
    jQuery('.pterms_uniq').on('click',function(){
        jQuery('.pterms_uniq').toggleClass('active');
        if (jQuery('.pterms_uniq').hasClass('active')) {
            jQuery('#taller').val('Soy taller');
        } else {
            jQuery('#taller').val('');
        }
    });
    
</script>
<style type="text/css">
.swiper-pagination-bullet {
    background: white;
    width: 20px;
    height: 20px;
}
.footer__content .list .group .item:nth-child(2) {
    display: none;
}
#whatsapp {
    background: #01a827;
}
.lp_wrapper {
    overflow-x: hidden;
}
.lp_header {
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    background: white;
    padding: 20px 0px;
    border-bottom: solid 1px #fa7913;
    z-index: 15;
}
.lp_flex {
    display: flex;
    align-items: center;
    justify-content: space-between;
}
.lp_container {
    max-width: calc(100% - 40px);
    margin: auto;
}
.lp_fixed {
    position: fixed;
    top: 50%;
    right: 0;
    transform: translateY(-50%);
}
.lp_header .information a span {
    max-width: 250px;
}
.sharedModalItem {
    overflow: hidden;
    border-top-left-radius: 7px;
    border-bottom-left-radius: 7px;
}
.sharedModalItem a i {
    display: block;
    width: 34px;
    margin: auto;
    margin-bottom: 5px;
}
.sharedModalItem a p {
    color: white;
    max-width: 92px;
    font-size: 12px;
    text-align: center;
    max-height: 0px;
    overflow: hidden;
    transition: 0.3s;
    max-width: 0px;
}
.sharedModalItem:hover a p {
    max-height: 30px;
    max-width: 100px;
}
.sharedModalItem a {
    background: #007aff;
    padding: 15px 12px;
    display: block;
    border-bottom: solid 1px white;
}
.sharedModalItem a svg {
    width: 34px;
    height: 34px;
}
.sharedModalItem a svg path {
    fill: white;
}
.sharedModalItem a:last-child {
    border: none;
}
section.lp_home {
    height: 100vh;
    position: relative;
    min-height: 720px;
}
section.lp_home video {
    position: absolute;
    top: 0;
    width: 100%;
    height: 100%;
    object-fit: cover;
    left: 0px;
}
.lp_flex_l p {
    font-size: 25px;
    padding: 10px 20px;
}
.lp_contact {
    position: absolute;
    height: 100%;
    left: 0;
    padding: 120px 0px;
    background: rgba(255, 255, 255, 0.7);
    top: 0;
}
.lp_form {
    padding: 0px 20px;
    max-width: 380px;
}
.lp_form h2 {
    font-size: 26px;
    margin-bottom: 20px;
}
.inputLabel {
    display: flex;
}
.inputLabel {
    margin-bottom: 20px;
}
.select_a {
    width: 100%;
}
.select_a select {
    width: 100%;
    padding: 10px;
    border-radius: 5px;
    background: transparent;
    border: solid 1px #e32422;
}
.inputLabel .icon svg {
    width: 40px;
    height: 40px;
}
.pterms, .pterms_uniq {
    padding-left: 20px;
    font-size: 16px;
    line-height: 22px;
    position: relative;
    cursor: pointer;
}
.pterms:before, .pterms_uniq:before {
    content: '';
    position: absolute;
    width: 15px;
    height: 15px;
    border: solid 1px #e32422;
    left: 0px;
    top: 3px;
}
.pterms.active:before, .pterms_uniq.active:before {
    background: #e32422;
}
.buttonLabel {
    margin-top: 20px;
}
.buttonLabel button {
    width: 100%;
    padding: 15px 0px;
    background: #e32422;
    border-radius: 5px;
    font-size: 16px;
    color: white;
}
.buttonLabel button.btnOpacity {
    pointer-events: none;
    opacity: 0.4;
}
.lp_banner {
    background: #fa7913;
    color: white;
    padding: 60px 20px;
}
.lp_banner .lp_flex {
    flex-wrap: wrap;
    align-items: flex-start;
}
.lp_banner p a img {
    position: relative;
    filter: invert(1);
    width: 45px;
    height: 45px;
    object-fit: cover;
    margin: 10px;
}
.lp_banner p {
    display: block;
}

.lp_flex_l:first-child {
    border-left: none;
}
.lp_flex_l {
    border-left: solid 1px rgba(255, 255, 255, 0.31);
    min-height: 84px;
}
.lp_flex_l {
    text-align: center;
    flex: 1;
    padding: 0px;
}
.lp_batery {
    padding: 80px 0px;
    background: whitesmoke;
}
.lp_batery .lp_flex {
    max-width: 1100px;
    margin: auto;
}
.lp_tt {
    text-align: center;
    margin-bottom: 40px;
}
.lp_tt h2 {
    text-align: center;
    display: block;
    width: 100%;
    margin: auto;
    margin-bottom: 20px;
    font-size: 25px;
    max-width: 900px;
    text-transform: uppercase;
}
.lp_tt #whatsapp {
    background: #e32422;
}
.lp_tt a {
    padding: 10px;
    color: white;
    border-radius: 5px;
    font-size: 18px;
}
.lp_batery_item {
    padding: 10px;
    box-shadow: 0px 8px 20px #00000054;
    margin: 10px;
    border-radius: 5px;
    background: white;
    position: relative;
}

.lp_flex_l h3 {
    font-size: 25px;
    text-transform: uppercase;
}
.lp_flex_l {
    position: relative;
}
.lp_flex_l p img {
    position: absolute;
    top: 0;
    right: 30px;
}
.lp_footer_c .lp_flex {
    align-items: flex-start;
}

.lp_banner.lp_banner_2 h2 {
    font-size: 35px;
}
.lp_batery .lp_flex .swiper-button-next {
    right: -45px;
}
.lp_batery .lp_flex .swiper-button-prev {
    left: -45px;
}
.lp_batery .lp_flex {
    display: block;
    margin: auto;
    position: relative;
}

.lp_batery_item img {
    height: 200px;
    object-fit: contain;
    width: auto;
}
.lp_banner.lp_banner_2 {
    background-size: cover !important;
    background-attachment: fixed !important;
    position: relative;
    padding: 120px 20px;
    z-index: 1;
}
.lp_banner.lp_banner_2:before {
    content: '';
    position: absolute;
    width: 100%;
    height: 100%;
    background: #fa7913;
    z-index: -1;
    top: 0;
    left: 0;
    opacity: 0.7;
}
.lp_banner .lp_flex {
    flex-wrap: wrap;
}
.lp_banner_2 .lp_flex_l img {
    filter: invert(1);
    display: block;
    margin: auto;
    width: 60px;
    height: 60px;
}
.lp_banner_3 {
    position: relative;
    padding: 120px 20px;
    background-size: cover !important;
    background-attachment: fixed !important;
    z-index: 2;
}
.lp_banner_3 .lp_tt h2 {
    text-align: center;
    width: 100%;
}
.lp_banner_3 .lp_flex .lp_flex_l img {
    background: white;
    padding: 10px;
    border-radius: 5px;
    height: 100px;
    margin: auto;
    margin-bottom: 20px;
}
.text {
    max-width: 250px;
    margin: auto;
}
section.lp_foot {
    padding: 50px 20px;
    background: #eae9e9;
}
.lp_footer_c h2 {
    width: 100%;
    text-align: center;
}
section.lp_foot .lp_flex_l {
    flex: 1;
    margin: 15px;
    box-shadow: 0px 3px 10px rgba(0, 0, 0, 0.3);
    border-radius: 5px;
    overflow: hidden;
}
section.lp_foot .lp_flex_l img {
    height: 200px;
    width: 100%;
    object-fit: cover;
    display: block;
}
section.lp_foot .lp_flex_l .text {
    background: white;
    max-width: 100%;
    padding: 20px 30px;
    min-height: 150px;
}
section.lp_foot .lp_flex_l .text h2, section.lp_foot .lp_flex_l .text h3 {
    font-size: 18px;
    margin-bottom: 10px;
    color: #fa7913;
}
section.lp_foot .lp_flex_l .text p {
    font-size: 14px;
    line-height: 22px;
}
.lp_header .information div {
    display: flex;
    align-items: center;
    color: #fa7913;
    font-size: 20px;
    margin-right: 25px;
}
.lp_header .information a {
    display: flex;
    align-items: center;
    color: #fa7913;
    font-size: 20px;
    position: relative;
    width: 250px;
}
.lp_header .information a p {
    position: absolute;
    font-size: 12px;
    bottom: -20px;
    color: black;
}
.lp_header .information svg {
    width: 25px;
    height: 25px;
    margin-right: 10px;
}
.lp_header .information {
    display: flex;
    align-items: center;
}
.lp_header figure a img {
    max-width: 250px;
}
.lp_header figure a {
    display: block;
}
.inputLabel .input span textarea {
    height: 80px;
}
.inputLabel .input span input, .inputLabel .input span textarea {
    background: transparent;
    border: solid 1px #e32422;
    width: 100%;
    border-radius: 5px;
    padding: 10px;
}
.inputLabel .input span {
    display: block;
    margin-left: 10px;
}
.inputLabel .icon svg path {
    fill: #e32422;
}
.lp_banner_3:before {
    content: '';
    position: absolute;
    width: 100%;
    height: 100%;
    background: black;
    top: 0;
    left: 0;
    z-index: -1;
    opacity: 0.7;
}
.lp_banner.lp_banner_2 h2 {
    text-align: center;
    width: 100%;
}
.get_titlte h1 {
    font-size: 90px;
    color: white;
    line-height: 100px;
    max-width: 700px;
}
.get_titlte {
    position: absolute;
    top: 50%;
    transform: translateY(-50%);
    left: 175px;
}
section.lp_home video {
    z-index: -1;
}
section.lp_home {
    z-index: 2;
}
section.lp_home .initCore:before {
    content: '';
    position: absolute;
    width: 100%;
    height: 100%;
    background: black;
    top: 0;
    z-index: 1;
    left: 0;
    opacity: 0.4;
    pointer-events: none;
}
section.lp_home.init .swiper-container {
    z-index: 0;
}
.initCore {
    height: 100vh;
    position: relative;
    z-index: -1;
    min-height: 720px;
}
.lp_contact {
    z-index: 5;
    top: 0;
}
.get_titlte {
    z-index: 3;
}
@media (max-width: 1500px) {
    section.lp_foot .lp_flex_l .text {
        min-height: 225px;
    }
    section.lp_foot .lp_flex_l .text h2, section.lp_foot .lp_flex_l .text h3 {
        min-height: 44px;
    }
}
@media (max-width: 992px) {
    .lp_header {
        padding: 10px 0px;
    }
    .lp_header .information a p { display: none; }
    .lp_header .lp_flex {
        display: block;
        margin: auto;
        width: 300px;
        text-align: center;
    }
    .lp_header figure a img {
        max-width: 250px;
        margin: auto;
    }
    .lp_header .information div {
        font-size: 12px;
        max-width: 150px;
    }
    .lp_header .information svg {
        width: 20px;
        height: 20px;
    }
    .lp_header .information a {
        width: auto;
    }
    .lp_contact {
        width: 310px;
        padding-bottom: 0px;
        transform: translateX(-310px);
        transition: .3s;
    }
    .lp_contact.active {
        transform: none;
    }
    .lp_contact_art {
        position: absolute;
        width: 25px;
        height: 30px;
        background: #f77816;
        right: -25px;
        cursor: pointer;
    }
    .lp_contact_art:before {
        content: '';
        position: absolute;
        width: 12px;
        height: 12px;
        border-right: solid 2px white;
        border-bottom: solid 2px white;
        transform: rotate(-45deg);
        top: 8px;
        right: 9px;
    }
    section.lp_home {
        min-height: 740px;
    }
    .lp_flex_l {
        width: 100%;
        border: none;
        flex: none;
    }
    .lp_flex_l p {
        font-size: 20px;
    }
    .pterms, .pterms_uniq {
        font-size: 14px;
    }
    .lp_footer_c .lp_flex {
        flex-wrap: wrap;
    }
    section.lp_foot .lp_flex_l {
        width: 100%;
        flex: none;
        margin: 0px;
        margin-bottom: 20px;
    }
}
</style>
<script type="text/javascript">
  var mySwiper = new Swiper ('.init .swiper-container', {
    autoplay: {
        delay: 1500,
    },
    loop: true,
    pagination: {
      el: '.init .swiper-pagination',
    }
  });

 var mySwiper = new Swiper ('.lp_flex .swiper-container', {
    speed: 700,
    navigation: {
      nextEl: '.lp_flex .swiper-button-next',
      prevEl: '.lp_flex .swiper-button-prev',
    },
    autoplay: {
        delay: 2500,
    },
    slidesPerView: 5,
    breakpoints: {
        320: {
          slidesPerView: 1
        },
        480: {
          slidesPerView: 2
        },
        990: {
          slidesPerView: 3
        },
        1100: {
          slidesPerView: 5
        }
    }
  });

  jQuery('.lp_contact_art').on('click',function(){
    jQuery('.lp_contact').toggleClass('active');
  });
      
</script>
<?php get_footer('footer'); ?>