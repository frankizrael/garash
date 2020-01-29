<h1>PAGE</h1>
<?php

while (have_posts()) :
	the_post();

	the_content();

endwhile; // End of the loop.
