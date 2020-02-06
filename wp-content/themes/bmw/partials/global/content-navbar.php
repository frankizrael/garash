<div class="navbar <?= isset($class) ? $class : ''; ?>">
    <div class="navbar__content x-container">


        <div class="menu">
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
                <?php wp_nav_menu(); ?>
            </nav>

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
                </button>
                <a href="/tienda/" class="cart">
                    <i>
                        <svg xmlns="http://www.w3.org/2000/svg" width="23.204" height="20" viewBox="0 0 23.204 20">
                            <g transform="translate(-7287.909 58.004)">
                                <circle cx="1.703" cy="1.703" r="1.703" transform="translate(7304.661 -41.755)" />
                                <circle cx="1.703" cy="1.703" r="1.703" transform="translate(7294.24 -41.318) rotate(-13.283)" />
                                <path d="M7310.776-54.8h-17.454L7292.681-58h-4.771v1.728h3.347l.295,1.479,1.6,8,.681,3.4.153.766h14.69l.154-.768.191-.959h-13.61l-.488-2.442h14.588l1.6-8Z" />
                            </g>
                        </svg>
                    </i>
                </a>


            </div>
            <!-- /Icons -->

        </div>

        <div class="logo">
            <figure>
                <img src="<?php echo get_template_directory_uri() . '/assets/logo.png'  ?>" alt="Logo BMW">
            </figure>
        </div>
    </div>
    <div class="box">
        <div class="box__search x-container">
            <div class="title">Ingrese el nombre de un producto</div>
            <form action="/" method="GET">
                <input type="hidden" name="post_type" value="product">
                <div class="row">
                    <div class="control full">
                        <label>Buscar</label>
                        <input type="text" name="s" id="s">
                    </div>
                </div>
                <div class="action">
                    <button type="submit" class="button button-primary" tabindex="0">Buscar</button>
                </div>
            </form>
        </div>
    </div>
</div>