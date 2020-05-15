<div class="navbar <?= isset($class) ? $class : ''; ?>">
    <div class="navbar__content x-container">
        <div class="navbarMenu">
            <div class="logo">
                <a href="<?php echo site_url(); ?>">
                <figure>
                    <img src="<?php echo get_template_directory_uri() . '/assets/garash_logo.png'  ?>" alt="Logo BMW">
                </figure>
                </a>
            </div>
            <div class="menu">                 
                <!-- Icons -->
                <div class="icons">
                    <button class="search">
                        <i>
                            <svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 511.999 511.999" style="enable-background:new 0 0 511.999 511.999;" xml:space="preserve">
                                <path d="M508.874,478.708L360.142,329.976c28.21-34.827,45.191-79.103,45.191-127.309c0-111.75-90.917-202.667-202.667-202.667
                                    S0,90.917,0,202.667s90.917,202.667,202.667,202.667c48.206,0,92.482-16.982,127.309-45.191l148.732,148.732
                                    c4.167,4.165,10.919,4.165,15.086,0l15.081-15.082C513.04,489.627,513.04,482.873,508.874,478.708z M202.667,362.667
                                    c-88.229,0-160-71.771-160-160s71.771-160,160-160s160,71.771,160,160S290.896,362.667,202.667,362.667z" />
                            </svg>
                        </i>
                        <span>¿Qué estas buscando?</span>
                    </button>
                    <button href="javascript:void(0)" class="account" data-status="<?php echo is_user_logged_in() ? 1 : 0; ?>">
                        <i>
                            <svg xmlns="http://www.w3.org/2000/svg" width="18.887" height="20" viewBox="0 0 18.887 20">
                                <g>
                                    <path d="M1232.618,984.876a4.764,4.764,0,1,0-4.849-4.763A4.812,4.812,0,0,0,1232.618,984.876Z" transform="translate(-1223.174 -975.35)" />
                                    <path class="b" d="M1216.509,1025.106h-1.484a8.672,8.672,0,0,0-8.7,8.623.538.538,0,0,0,.541.536h17.806a.538.538,0,0,0,.541-.536A8.672,8.672,0,0,0,1216.509,1025.106Z" transform="translate(-1206.324 -1014.264)" />
                                </g>
                            </svg>
                        </i>
                        <?php if (!is_user_logged_in()) : ?>
                            <div class="modal-login">
                                <a href="/my-account/" class="link">Iniciar sesión</a>
                                <div>
                                    <p>
                                        ¿No tienes cuenta? <a href="">Registrate</a>
                                    </p>
                                </div>
                            </div>
                        <?php endif; ?>
                        <span>Mi Cuenta</span>
                    </button>
                    <a href="<?php echo site_url();?>/cart" class="cart">
                        <?php if(WC()->cart->get_cart_contents_count() > 0): ?>
                          <mark class="not">
                          <?php echo WC()->cart->get_cart_contents_count(); ?>
                          </mark>
                        <?php  endif;?>
                        <i>
                            <svg xmlns="http://www.w3.org/2000/svg" width="23.204" height="20" viewBox="0 0 23.204 20">
                                <g transform="translate(-7287.909 58.004)">
                                    <circle cx="1.703" cy="1.703" r="1.703" transform="translate(7304.661 -41.755)" />
                                    <circle cx="1.703" cy="1.703" r="1.703" transform="translate(7294.24 -41.318) rotate(-13.283)" />
                                    <path d="M7310.776-54.8h-17.454L7292.681-58h-4.771v1.728h3.347l.295,1.479,1.6,8,.681,3.4.153.766h14.69l.154-.768.191-.959h-13.61l-.488-2.442h14.588l1.6-8Z" />
                                </g>
                            </svg>
                        </i>
                        <span>Mis compras</span>
                    </a>
                    <a href="<?php echo site_url();?>/contacto" class="contact">
                        <svg version="1.1" id="Capa_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 511.882 511.882" style="enable-background:new 0 0 511.882 511.882;" xml:space="preserve">
                            <g>
                                <g>
                                    <g>
                                        <path d="M389.898,430.449l-86.29-57.527c-3.86-2.548-9.03-1.709-11.886,1.929l-25.125,32.302
                                            c-8.143,10.612-22.839,13.641-34.514,7.113l-4.645-2.551c-16.759-9.143-37.623-20.517-79.04-61.934
                                            c-41.417-41.417-52.8-62.281-61.934-79.049l-2.56-4.645c-6.527-11.672-3.498-26.366,7.113-34.505l32.293-25.134
                                            c3.642-2.854,4.482-8.026,1.929-11.886l-57.518-86.299c-2.616-3.916-7.843-5.094-11.886-2.679l-36.105,21.65
                                            c-7.746,4.521-13.443,11.863-15.899,20.489c-11.858,43.182-1.883,118.793,112.96,233.646s190.437,124.846,233.655,112.978
                                            c8.628-2.459,15.969-8.159,20.489-15.909l21.641-36.105C394.997,438.293,393.818,433.063,389.898,430.449z"/>
                                        <path d="M510.425,15.156c-0.946-0.946-2.234-1.471-3.572-1.456H123.767c-1.338-0.015-2.626,0.51-3.572,1.456
                                            c-0.946,0.946-1.471,2.234-1.456,3.572V151.83l21.723,32.585c7.835,11.838,5.26,27.708-5.915,36.462l-32.265,25.134
                                            c-3.454,2.62-4.458,7.38-2.359,11.173l2.633,4.8c8.395,15.966,18.635,30.892,30.51,44.471h373.787
                                            c2.743,0.02,4.988-2.176,5.029-4.919V18.728C511.897,17.39,511.372,16.102,510.425,15.156z M250.661,181.434v-0.046
                                            l-93.659,100.343c-3.444,3.694-9.23,3.896-12.923,0.453c-3.694-3.444-3.896-9.23-0.453-12.923l93.659-100.297
                                            c3.444-3.694,9.23-3.896,12.923-0.453C253.902,171.955,254.105,177.741,250.661,181.434z M315.31,174.23
                                            c-6.589,0.03-13.009-2.088-18.286-6.034L144.211,52.319c-4.024-3.065-4.802-8.812-1.737-12.837
                                            c3.065-4.024,8.812-4.802,12.837-1.737l152.75,115.877c4.323,3.141,10.177,3.141,14.501,0L475.356,37.745
                                            c4.024-3.052,9.761-2.264,12.814,1.76s2.264,9.761-1.76,12.814L333.596,168.196C328.319,172.142,321.9,174.26,315.31,174.23z
                                             M487.123,282.18c-1.773,1.656-4.132,2.539-6.557,2.455c-2.425-0.084-4.717-1.128-6.371-2.903l-93.65-100.343
                                            c-3.182-3.729-2.856-9.304,0.737-12.637c3.594-3.334,9.177-3.24,12.657,0.212l93.632,100.297
                                            C491.013,272.952,490.813,278.735,487.123,282.18z"/>
                                    </g>
                                </g>
                            </g>
                        </svg>
                        <span>Contacto</span>
                    </a>
                </div>
                <!-- /Icons -->
            </div> 
        </div>
        <div class="navbarMenuContent">
            <button type="button" class="button-menu">
                <i>


                    <svg xmlns="http://www.w3.org/2000/svg" width="17" height="17" viewBox="0 0 17 17">
                        <g id="Grupo_7465" data-name="Grupo 7465" transform="translate(-39 -114)">
                            <rect width="17" height="3" transform="translate(39 114)" fill="#fff" />
                            <rect width="17" height="3" transform="translate(39 121)" fill="#fff" />
                            <rect width="17" height="3" transform="translate(39 128)" fill="#fff" />
                        </g>
                    </svg>


                </i>
            </button>
            <nav>
                <?php wp_nav_menu( array( 'theme_location' => 'primary' ) ); ?>
            </nav>
        </div>      
    </div>
    <div class="box">
        <div class="box__search x-container">
            <div class="title">Ingrese el nombre de un producto</div>
            <form action="tienda" method="GET">
                <div class="row">
                    <div class="control full">
                        <label>Buscar</label>
                        <input type="text" name="_sf_s" id="query">
                    </div>
                </div>
                <div class="action">
                    <button type="submit" class="button button-primary" tabindex="0">Buscar</button>
                </div>
            </form>
        </div>
    </div>
</div>