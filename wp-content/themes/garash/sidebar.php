<?php
if ( ! is_active_sidebar( 'primary' ) ) {
	return;
}
?>
<?php dynamic_sidebar( 'primary' ); ?>