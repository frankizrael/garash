<li class="<?php echo $c <= 3 ? 'show' : ''; ?>">
    <a href="<?php the_permalink() ?>">
        <div class="left">
            <figure>
                <?php echo woocommerce_get_product_thumbnail() ?>
            </figure>
        </div>
        <div class="right">
            <div class="title"><?php echo the_title(); ?></div>
            <div class="info">
                <?php the_permalink() ?>
            </div>
        </div>
    </a>
</li>