<?php
/**
 * underscores Theme Customizer
 *
 * @package underscores
 */

/**
* Create new custom setting
*/
//All our sections, settings, and controls will be added here
function underscores_customize_register( $wp_customize ) {
	
	$wp_customize->add_section( 'underscores_new_section_name' , 
	array(
		'title'       => __( 'Custom Section Name', 'underscores' ),
		'description' => __( 'Description of section contents', 'underscores' ),
		'priority'    => 30,
	) );

	// A Setting just holds a piece of Data in the Database
	$wp_customize->add_setting( 'header_textcolor' , 
	array(
		'default'   => '#000000',
		'transport' => 'refresh', // refresh preview when setting changes
	) );

	$wp_customize->add_control( new WP_Customize_Color_Control( $wp_customize, 'link_color', 
	array(
		'label'      => __( 'Header Color', 'underscores' ),
		'description' => 'Colour of H1',
		'section'    => 'underscores_new_section_name',
		'settings'   => 'header_textcolor',
	) ) );

	// Setting for footer text / colophon.
	$wp_customize->add_setting( 'underscores_colophon',
	array(
		'default'           => __( 'some text', 'underscores' ),
		'sanitize_callback' => 'sanitize_text_field',
		'transport'         => 'refresh',
	)
	);

	// Control for footer text / colophon.
	$wp_customize->add_control( 'underscores_colophon', 
	array(
		'type'        => 'text',
		'priority'    => 10,
		'section'     => 'underscores_new_section_name',
		'label'       => 'Copyright text',
		'description' => 'Text put here will be output in the footer',
	) 
	);

 }
 // This hook allows you to define new Customizer panels, sections, settings, and controls.
 add_action( 'customize_register', 'underscores_customize_register' );

 // Generate the css to show any changed settings to the user
 function underscores_customize_css()
 {
	echo "<style type='text/css'>";
		echo "h1 { color:" . get_theme_mod('header_color', '#000000') . "; }";
	echo "</style>";
 }
//  add_action( 'wp_head', 'underscores_customize_css');


/**
 * Add postMessage support for site title and description for the Theme Customizer.
 *
 * @param WP_Customize_Manager $wp_customize Theme Customizer object.
 */
// function underscores_customize_register( $wp_customize ) {
// 	$wp_customize->get_setting( 'blogname' )->transport         = 'postMessage';
// 	$wp_customize->get_setting( 'blogdescription' )->transport  = 'postMessage';
// 	$wp_customize->get_setting( 'header_textcolor' )->transport = 'postMessage';

// 	if ( isset( $wp_customize->selective_refresh ) ) {
// 		$wp_customize->selective_refresh->add_partial(
// 			'blogname',
// 			array(
// 				'selector'        => '.site-title a',
// 				'render_callback' => 'underscores_customize_partial_blogname',
// 			)
// 		);
// 		$wp_customize->selective_refresh->add_partial(
// 			'blogdescription',
// 			array(
// 				'selector'        => '.site-description',
// 				'render_callback' => 'underscores_customize_partial_blogdescription',
// 			)
// 		);
// 	}
// }
// add_action( 'customize_register', 'underscores_customize_register' );

/**
 * Render the site title for the selective refresh partial.
 *
 * @return void
 */
// function underscores_customize_partial_blogname() {
// 	bloginfo( 'name' );
// }

/**
 * Render the site tagline for the selective refresh partial.
 *
 * @return void
 */
// function underscores_customize_partial_blogdescription() {
// 	bloginfo( 'description' );
// }

/**
 * Binds JS handlers to make Theme Customizer preview reload changes asynchronously.
 */
// function underscores_customize_preview_js() {
// 	wp_enqueue_script( 'underscores-customizer', get_template_directory_uri() . '/js/customizer.js', array( 'customize-preview' ), _S_VERSION, true );
// }
// add_action( 'customize_preview_init', 'underscores_customize_preview_js' );
