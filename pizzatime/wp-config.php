<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'pizzatime' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', '' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'irOa.;** giBh#{UDa!~A&;eXz zz!U}Ul4(|Qi sU=F|,zbk)LuX_ |+9JqjqQX' );
define( 'SECURE_AUTH_KEY',  'nH2D|EPcW#q?|<D2#E8mYk<KzXJ-kD1sD/oXWSp8$U@5x]H}}a,j1>$^QEmP<4p8' );
define( 'LOGGED_IN_KEY',    '_A!zCXUOAg&({# #FD(_*C9VlVZf1TPfB D;3~M2I0Vd pj[p)OM=[!m]>~E_?HY' );
define( 'NONCE_KEY',        '%:o#(6 )Hd/-XX5)h/MGecre*9aVz#5gtpc5A/-88F]D =Ni=KG)e:gfY*:*Dt5D' );
define( 'AUTH_SALT',        'M@xi~D[e066 R&ZA<h)_,w/Y6P1bpG+(*2jt;LUoI@$.s8Al_LJ?(JfeDo}l;_!^' );
define( 'SECURE_AUTH_SALT', '{u~3A3W&V0V5.$<Lv$[[N`_v0bPkF n:%qTwH89+j$ls{dVQ7Hkk~=@Z8el{8;cx' );
define( 'LOGGED_IN_SALT',   'En[*3EjYQ`)hJ f+4[tyih{GyT_b]gLoC[ m+IvJT,E$afhaU=kQsSD$.=jfZ-N}' );
define( 'NONCE_SALT',       'L 0KkF9u{z^QxRt ].dDp^&UO14xLbmKPEA6;X@i$)tgtuMRvf]A)SQOLkZySq?#' );

/**#@-*/

/**
 * WordPress Database Table prefix.
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
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once( ABSPATH . 'wp-settings.php' );
