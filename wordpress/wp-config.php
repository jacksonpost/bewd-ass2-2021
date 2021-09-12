<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'bewd-week6' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', 'root' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         '(24T_ugiVNMyVT?n8?`P<<cfm q{J4^/=neVX@B8f0 PAHT@/nl({LlKIqad2Xv:' );
define( 'SECURE_AUTH_KEY',  'h/j38/W0OFOIe>m+d_V<6k>,6,1Z;6|^*Y!O:~ZNq6ety~0/8_k9YtB$m)DI6PYY' );
define( 'LOGGED_IN_KEY',    'nfiS2!4aiOtgz4kO*.k+qr}`aZZ5gs|75sB?UO%S-&X~h.0wOmC/&{Q|:m(a``zR' );
define( 'NONCE_KEY',        '_Xq=|CtyHxMG>{JTAKQv}}_LEzJ`((HAV}`s7J=#l:P(6)!RE^{dJXZ~4mgd4<#%' );
define( 'AUTH_SALT',        'k>}f^HgRgiB9Jqu*=%^ZHGu!`D)Gb>q/U:N8(1,KpAS!dLf^neBe(]<Ci!P+(rim' );
define( 'SECURE_AUTH_SALT', '{Px+dxh@NN]g1u6ND=L%1ka#+K@55@6S{;g.UwDui#5E_*s~6Xs<F}wY8eke{./f' );
define( 'LOGGED_IN_SALT',   '[zIMmrVx6$LlV($@LtHx~U@YBkZ])-z+w{4ZtN=3HXyE|vQ~=%.Y0faYNK%|r6Er' );
define( 'NONCE_SALT',       '@;$I$HrDDc%A%^A3l{w%IkL>-XP-*.>dG^F/Z8(/ ]d$vSe8Cu.?$?%8m*4^,ynX' );

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
