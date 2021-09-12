<?php

add_action( 'wp_enqueue_scripts', 'my_theme_enqueue_styles' );
function my_theme_enqueue_styles() {
    wp_enqueue_style( 'child-style', get_stylesheet_uri(),
        array( 'twenty-twenty-one-style' ), // parent style handle (found in parent's functions.php)
        wp_get_theme()->get('Version') // this only works if you have Version in the style header
    );
}

?>