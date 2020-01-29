<li>

    <a href="<?php the_permalink() ?>">
        <div class="left">
            <figure>
                <?php echo woocommerce_get_product_thumbnail() ?>
            </figure>
        </div>
        <div class="right">
            <div class="title"><?php echo the_title(); ?></div>
            <div class="info">
                <?php
                the_excerpt();
                ?>
            </div>
        </div>
    </a>
</li>