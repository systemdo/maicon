<?php
/**
 * Function describe for Tech Mag 
 * 
 * @package techmag
 */

add_action( 'wp_enqueue_scripts', 'techmag_enqueue_styles', 999 );
function techmag_enqueue_styles() {
  $parent_style = 'techmag-style';

    wp_enqueue_style( $parent_style, get_template_directory_uri() . '/style.css' );
    wp_enqueue_style( 'techmag-child-style',
        get_stylesheet_directory_uri() . '/style.css',
        array( $parent_style )
    );

}

function techmag_theme_setup() {
    
    load_child_theme_textdomain( 'techmag', get_stylesheet_directory() . '/languages' );
    
    // Add Custom logo Support
		add_theme_support( 'custom-logo', array(
			'height'      => 100,
			'width'       => 400,
			'flex-height' => true,
			'flex-width'  => true,
		) );
		
		// Add Custom Background Support
		$args = array(
			'default-color' => 'ffffff',
		);
		add_theme_support( 'custom-background', $args );
    
}
add_action( 'after_setup_theme', 'techmag_theme_setup' );

// remove admin options

function techmag_admin_remove( $wp_customize ) {
    
    $wp_customize->remove_control( 'header-logo' );
    $wp_customize->remove_section( 'site_bg_section' );
}

add_action( 'customize_register', 'techmag_admin_remove', 100);

