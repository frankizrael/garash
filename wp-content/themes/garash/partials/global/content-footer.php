<div class="bg"></div>
<footer class="footer">
    <div class="footer__content x-container">
        <div class="list" style="justify-content: space-between;">
            <div class="group" style="display: none;">
                <div class="item">
                    <div class="title">Servicio al cliente</div>
                    <ul>
                        <li><a href="<?php echo site_url(); ?>/servicio-al-cliente/terminos-y-condiciones/">Terminos y condiciones</a></li>
                        <li><a href="<?php echo site_url(); ?>/servicio-al-cliente/privacidad-y-proteccion-de-datos-personales/">Política de privacidad</a></li>
                        <li><a href="<?php echo site_url(); ?>/servicio-al-cliente/libro-de-reclamaciones/">Libro de reclamaciones</a></li>
                        <li><a href="<?php echo site_url(); ?>/servicio-al-cliente/atencion-al-cliente/">Atención al cliente</a></li>
                        <li><a href="<?php echo site_url(); ?>/servicio-al-cliente/preguntas-frecuentes/">Preguntas frecuentes</a></li>
                    </ul>
                </div>
                <div class="item">
                    <div class="title">Categorías</div>
                    <ul>
                        <?php

                        $args = array(
                            'taxonomy' => 'product_cat',
                            'hide_empty' => false,
                            'parent'   => 0
                        );
                        $product_cat = get_terms($args);
                        foreach ($product_cat as $key => $parent_product_cat) :
                        ?>
                            <li><a href="<?php echo get_category_link($parent_product_cat->term_id); ?>"><?php echo $parent_product_cat->name ?></a></li>
                        <?php endforeach; ?>
                    </ul>
                </div>
            </div>

            <div class="item block-social">
                <div class="title">Redes sociales</div>
                <div class="social">
                    <?php if (have_rows('social_networks', 'option')) : ?>

                        <?php while (have_rows('social_networks', 'option')) : the_row();
                            $name = get_sub_field('social_networks_name');
                            $image = get_sub_field('social_networks_image');
                            $link = get_sub_field('social_networks_link');
                            $status = get_sub_field('social_networks_status');
                        ?>
                            <?php if ($status) : ?>
                                <div class="social__item">
                                    <a href="<?php echo $link; ?>" target="_blank">
                                        <?php echo $image; ?>
                                    </a>
                                </div>
                            <?php endif; ?>
                        <?php endwhile; ?>
                    <?php endif; ?>
                </div>
            </div>
            <div class="item block-contact">
                <div class="title">Contáctanos</div>
                <a href="tel:<?php the_field('contact_option_phone', 'option'); ?>" class="phone">
                    <?php
                    if (get_field('contact_option_phone', 'option')) :
                        the_field('contact_option_phone', 'option');
                    endif;
                    ?>
                </a>
                <ul>
                    <li><a href="<?php
                                    if (get_field('contact_option_email', 'option')) :
                                        echo 'tel:' . get_field('contact_option_email', 'option');
                                    else :
                                        echo 'javascript:void(0)';
                                    endif;
                                    ?>">
                            <?php
                            if (get_field('contact_option_email', 'option')) :
                                the_field('contact_option_email', 'option');
                            endif;
                            ?>
                        </a></li>
                    <li><a href="tel:">

                            <?php
                            if (get_field('contact_option_hours', 'option')) :
                                the_field('contact_option_hours', 'option');
                            endif;
                            ?>
                        </a></li>
                </ul>
                <a href="<?php echo site_url(); ?>/servicio-al-cliente/libro-de-reclamaciones/" class="book">
                    <i>
                        <svg xmlns="http://www.w3.org/2000/svg" width="18.939" height="15.553" viewBox="0 0 18.939 15.553">
                            <path class="a" d="M1707.16,206.46a10.934,10.934,0,0,0-3.536-.789,3.685,3.685,0,0,0-2.826,1.17.3.3,0,0,0,.446.408,3.079,3.079,0,0,1,2.378-.975,10.485,10.485,0,0,1,3.335.755,8.205,8.205,0,0,0,2.476.6.3.3,0,0,0,.3-.3V195.155a.3.3,0,0,0-.3-.3,7.844,7.844,0,0,1-2.279-.568,10.934,10.934,0,0,0-3.536-.789,3.908,3.908,0,0,1-6.513,0,10.934,10.934,0,0,0-3.536.789,7.844,7.844,0,0,1-2.266.57.3.3,0,0,0-.3.3V207.33a.3.3,0,0,0,.3.3,8.205,8.205,0,0,0,2.476-.6,10.484,10.484,0,0,1,3.335-.755,3.079,3.079,0,0,1,2.377.975.3.3,0,0,0,.446-.408,3.685,3.685,0,0,0-2.826-1.17,10.934,10.934,0,0,0-3.536.789,10.1,10.1,0,0,1-1.976.549V195.442a9.985,9.985,0,0,0,2.174-.586,10.483,10.483,0,0,1,3.335-.755,2.987,2.987,0,0,1,2.954,1.89v11.87a.311.311,0,0,0,.014.091h-.236a3.7,3.7,0,0,0-2.732-1.072,10.934,10.934,0,0,0-3.536.789,7.836,7.836,0,0,1-2.271.567.3.3,0,0,0,0,.6,8.206,8.206,0,0,0,2.476-.6,10.484,10.484,0,0,1,3.335-.755,3.079,3.079,0,0,1,2.377.975.3.3,0,0,0,.223.1h1.308a.3.3,0,0,0,.223-.1,3.079,3.079,0,0,1,2.378-.975,10.484,10.484,0,0,1,3.335.755,8.205,8.205,0,0,0,2.476.6.3.3,0,0,0,0-.6,7.844,7.844,0,0,1-2.279-.568,10.934,10.934,0,0,0-3.536-.789,3.7,3.7,0,0,0-2.732,1.072h-.236a.311.311,0,0,0,.014-.091V195.993a3.018,3.018,0,0,1,2.954-1.89,10.484,10.484,0,0,1,3.335.755,9.983,9.983,0,0,0,2.174.586V207.01A10.1,10.1,0,0,1,1707.16,206.46Z" transform="translate(-1690.9 -193.389)" />
                        </svg>
                    </i>
                    Libro de reclamaciones
                </a>

                <div class="addresses">
                    <?php
                    if (have_rows('store_list_option', 'option')) : ?>
                        <?php while (have_rows('store_list_option', 'option')) : the_row();
                            $name = get_sub_field('store_list_option_name');
                            $address = get_sub_field('store_list_option_address');
                        ?>
                            <div class="addresses__item">
                                <div class="title"><?php echo $name; ?></div>
                                <p>
                                    <?php echo $address; ?>
                                </p>
                            </div>
                        <?php endwhile; ?>
                    <?php endif; ?>
                </div>
            </div>
        </div>
    </div>
    <div class="box">
        <div class="box__content x-container">            
            <div>
                <a href="https://www.imarcux.com/" style="color:white;font-weight: 700;" target="_blank">iMarcux Inc. ®</a> Since 2014 <b>|</b> Copyright © 2020 All right reserved <b>|</b> Power by <a href="https://www.imarcux.com/" style="color:white;font-weight: 700;" target="_blank">CETI</a> "Informatic Technology Bussiness Community"
            </div>
        </div>
    </div>
</footer>
<style type="text/css">
    .footer__content .addresses {
        display: block;
    }
    .footer__content .addresses__item {
        max-width: 100%;
        margin-bottom: 20px;
    }
    .footer__content .addresses__item p {
        text-align: right;
    }
</style>