# WordPress MySQL database migration
#
# Generated: Sunday 12. September 2021 23:17 UTC
# Hostname: localhost
# Database: `bewd-week6`
# URL: //localhost:8888/WP/bewd-week6/wordpress
# Path: /Applications/MAMP/htdocs/WP/bewd-week6/wordpress
# Tables: wp_commentmeta, wp_comments, wp_links, wp_options, wp_postmeta, wp_posts, wp_term_relationships, wp_term_taxonomy, wp_termmeta, wp_terms, wp_usermeta, wp_users
# Table Prefix: wp_
# Post Types: revision, acf-field, acf-field-group, attachment, customize_changeset, nav_menu_item, page, post
# Protocol: http
# Multisite: false
# Subsite Export: false
# --------------------------------------------------------

/*!40101 SET NAMES utf8mb4 */;

SET sql_mode='NO_AUTO_VALUE_ON_ZERO';



#
# Delete any existing table `wp_commentmeta`
#

DROP TABLE IF EXISTS `wp_commentmeta`;


#
# Table structure of table `wp_commentmeta`
#

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_commentmeta`
#

#
# End of data contents of table `wp_commentmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_comments`
#

DROP TABLE IF EXISTS `wp_comments`;


#
# Table structure of table `wp_comments`
#

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_comments`
#
INSERT INTO `wp_comments` ( `comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2021-09-06 00:22:28', '2021-09-06 00:22:28', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href="https://gravatar.com">Gravatar</a>.', 0, '1', '', 'comment', 0, 0) ;

#
# End of data contents of table `wp_comments`
# --------------------------------------------------------



#
# Delete any existing table `wp_links`
#

DROP TABLE IF EXISTS `wp_links`;


#
# Table structure of table `wp_links`
#

CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_links`
#

#
# End of data contents of table `wp_links`
# --------------------------------------------------------



#
# Delete any existing table `wp_options`
#

DROP TABLE IF EXISTS `wp_options`;


#
# Table structure of table `wp_options`
#

CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=259 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_options`
#
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost:8888/WP/bewd-week6/wordpress', 'yes'),
(2, 'home', 'http://localhost:8888/WP/bewd-week6/wordpress', 'yes'),
(3, 'blogname', 'BeWD', 'yes'),
(4, 'blogdescription', 'Let us learn Wordpress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'riley.post@canberra.edu.au', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'j F Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:94:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:17:"^wp-sitemap\\.xml$";s:23:"index.php?sitemap=index";s:17:"^wp-sitemap\\.xsl$";s:36:"index.php?sitemap-stylesheet=sitemap";s:23:"^wp-sitemap-index\\.xsl$";s:34:"index.php?sitemap-stylesheet=index";s:48:"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$";s:75:"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]";s:34:"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$";s:47:"index.php?sitemap=$matches[1]&paged=$matches[2]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:53:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:61:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:30:"advanced-custom-fields/acf.php";i:1;s:31:"wp-migrate-db/wp-migrate-db.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:3:{i:0;s:78:"/Applications/MAMP/htdocs/WP/bewd-week6/wordpress/wp-content/plugins/hello.php";i:1;s:99:"/Applications/MAMP/htdocs/WP/bewd-week6/wordpress/wp-content/plugins/advanced-custom-fields/acf.php";i:2;s:0:"";}', 'no'),
(40, 'template', 'twentytwentyone', 'yes'),
(41, 'stylesheet', 'twentytwentyone-child', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '49752', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '0', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '0', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '21', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1646439747', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '49752', 'yes'),
(100, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes') ;
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(101, 'fresh_site', '0', 'yes'),
(102, 'WPLANG', 'en_AU', 'yes'),
(103, 'widget_block', 'a:6:{i:2;a:1:{s:7:"content";s:19:"<!-- wp:search /-->";}i:3;a:1:{s:7:"content";s:154:"<!-- wp:group --><div class="wp-block-group"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->";}i:4;a:1:{s:7:"content";s:227:"<!-- wp:group --><div class="wp-block-group"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {"displayAvatar":false,"displayDate":false,"displayExcerpt":false} /--></div><!-- /wp:group -->";}i:5;a:1:{s:7:"content";s:146:"<!-- wp:group --><div class="wp-block-group"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->";}i:6;a:1:{s:7:"content";s:150:"<!-- wp:group --><div class="wp-block-group"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->";}s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:4:{i:0;s:7:"block-2";i:1;s:7:"block-3";i:2;s:7:"block-4";i:3;s:7:"block-5";}s:9:"sidebar-1";a:1:{i:0;s:7:"block-6";}s:13:"array_version";i:3;}', 'yes'),
(105, 'cron', 'a:7:{i:1631488949;a:1:{s:34:"wp_privacy_delete_old_export_files";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1631492548;a:1:{s:32:"recovery_mode_clean_expired_keys";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1631492549;a:4:{s:18:"wp_https_detection";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1631492595;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1631492598;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1631578949;a:1:{s:30:"wp_site_health_scheduled_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"weekly";s:4:"args";a:0:{}s:8:"interval";i:604800;}}}s:7:"version";i:2;}', 'yes'),
(106, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'widget_archives', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(109, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(110, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(111, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(112, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(113, 'widget_meta', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(114, 'widget_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(115, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(116, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(117, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(119, 'recovery_keys', 'a:0:{}', 'yes'),
(120, 'https_detection_errors', 'a:1:{s:20:"https_request_failed";a:1:{i:0;s:21:"HTTPS request failed.";}}', 'yes'),
(122, 'theme_mods_twentytwentyone', 'a:3:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1631437733;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:5:{i:0;s:7:"block-2";i:1;s:7:"block-3";i:2;s:7:"block-4";i:3;s:7:"block-5";i:4;s:7:"block-6";}}}s:18:"nav_menu_locations";a:0:{}}', 'yes'),
(137, 'can_compress_scripts', '1', 'no'),
(152, 'finished_updating_comment_type', '1', 'yes'),
(157, 'widget_recent-comments', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(158, 'widget_recent-posts', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(163, 'current_theme', 'TwentyTwentyOne Child', 'yes'),
(164, 'theme_mods_underscores', 'a:15:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:6:"menu-1";i:0;}s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1631487994;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:1:{i:0;s:7:"block-6";}}}s:11:"custom_logo";i:19;s:16:"header_textcolor";s:6:"000000";s:16:"background_color";s:6:"fcfcfc";s:12:"header_image";s:91:"http://localhost:8888/WP/bewd-week6/wordpress/wp-content/uploads/2021/09/cropped-corgis.jpg";s:17:"header_image_data";O:8:"stdClass":5:{s:13:"attachment_id";i:23;s:3:"url";s:91:"http://localhost:8888/WP/bewd-week6/wordpress/wp-content/uploads/2021/09/cropped-corgis.jpg";s:13:"thumbnail_url";s:91:"http://localhost:8888/WP/bewd-week6/wordpress/wp-content/uploads/2021/09/cropped-corgis.jpg";s:6:"height";i:250;s:5:"width";i:1000;}s:16:"background_image";s:83:"http://localhost:8888/WP/bewd-week6/wordpress/wp-content/uploads/2021/09/corgis.jpg";s:21:"background_position_x";s:6:"center";s:21:"background_position_y";s:6:"center";s:15:"background_size";s:7:"contain";s:17:"background_repeat";s:9:"no-repeat";s:21:"background_attachment";s:5:"fixed";}', 'yes'),
(165, 'theme_switched', '', 'yes'),
(174, 'auto_core_update_notified', 'a:4:{s:4:"type";s:7:"success";s:5:"email";s:26:"riley.post@canberra.edu.au";s:7:"version";s:5:"5.8.1";s:9:"timestamp";i:1631422370;}', 'no'),
(180, 'recently_activated', 'a:0:{}', 'yes'),
(197, 'acf_version', '5.10.2', 'yes'),
(207, 'site_logo', '19', 'yes'),
(208, 'nav_menu_options', 'a:1:{s:8:"auto_add";a:0:{}}', 'yes'),
(218, 'category_children', 'a:0:{}', 'yes'),
(229, 'theme_mods_twentytwentyone-child', 'a:3:{i:0;b:0;s:18:"nav_menu_locations";a:0:{}s:18:"custom_css_post_id";i:-1;}', 'yes'),
(258, 'wpmdb_usage', 'a:2:{s:6:"action";s:8:"savefile";s:4:"time";i:1631488650;}', 'no') ;

#
# End of data contents of table `wp_options`
# --------------------------------------------------------



#
# Delete any existing table `wp_postmeta`
#

DROP TABLE IF EXISTS `wp_postmeta`;


#
# Table structure of table `wp_postmeta`
#

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_postmeta`
#
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_edit_lock', '1630888194:1'),
(4, 6, '_wp_attached_file', '2021/09/dogboop.jpg'),
(5, 6, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:920;s:6:"height";i:611;s:4:"file";s:19:"2021/09/dogboop.jpg";s:5:"sizes";a:3:{s:6:"medium";a:4:{s:4:"file";s:19:"dogboop-300x199.jpg";s:5:"width";i:300;s:6:"height";i:199;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:19:"dogboop-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:19:"dogboop-768x510.jpg";s:5:"width";i:768;s:6:"height";i:510;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(9, 9, '_edit_lock', '1631422531:1'),
(10, 9, '_thumbnail_id', '6'),
(11, 12, '_edit_last', '1'),
(12, 12, '_edit_lock', '1631487753:1'),
(13, 15, '_edit_lock', '1631437632:1'),
(14, 15, '_edit_last', '1'),
(15, 15, 'heading', 'Heading'),
(16, 15, '_heading', 'field_613db9a02e3e5'),
(17, 15, 'background-image', '6'),
(18, 15, '_background-image', 'field_613dbad12e3e6'),
(19, 17, 'heading', 'Heading'),
(20, 17, '_heading', 'field_613db9a02e3e5'),
(21, 17, 'background-image', '6'),
(22, 17, '_background-image', 'field_613dbad12e3e6'),
(23, 18, '_wp_attached_file', '2021/09/tumblr_n5hiueWS8g1qzn0kbo1_1280.jpg'),
(24, 18, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:600;s:6:"height";i:543;s:4:"file";s:43:"2021/09/tumblr_n5hiueWS8g1qzn0kbo1_1280.jpg";s:5:"sizes";a:2:{s:6:"medium";a:4:{s:4:"file";s:43:"tumblr_n5hiueWS8g1qzn0kbo1_1280-300x272.jpg";s:5:"width";i:300;s:6:"height";i:272;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:43:"tumblr_n5hiueWS8g1qzn0kbo1_1280-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(25, 19, '_wp_attached_file', '2021/09/cropped-tumblr_n5hiueWS8g1qzn0kbo1_1280.jpg'),
(26, 19, '_wp_attachment_context', 'custom-logo'),
(27, 19, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:543;s:6:"height";i:543;s:4:"file";s:51:"2021/09/cropped-tumblr_n5hiueWS8g1qzn0kbo1_1280.jpg";s:5:"sizes";a:2:{s:6:"medium";a:4:{s:4:"file";s:51:"cropped-tumblr_n5hiueWS8g1qzn0kbo1_1280-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:51:"cropped-tumblr_n5hiueWS8g1qzn0kbo1_1280-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(28, 20, '_edit_lock', '1631439163:1'),
(29, 21, '_wp_attached_file', '2021/09/cropped-cropped-tumblr_n5hiueWS8g1qzn0kbo1_1280.jpg'),
(30, 21, '_wp_attachment_context', 'site-icon'),
(31, 21, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:512;s:6:"height";i:512;s:4:"file";s:59:"2021/09/cropped-cropped-tumblr_n5hiueWS8g1qzn0kbo1_1280.jpg";s:5:"sizes";a:6:{s:6:"medium";a:4:{s:4:"file";s:59:"cropped-cropped-tumblr_n5hiueWS8g1qzn0kbo1_1280-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:59:"cropped-cropped-tumblr_n5hiueWS8g1qzn0kbo1_1280-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:13:"site_icon-270";a:4:{s:4:"file";s:59:"cropped-cropped-tumblr_n5hiueWS8g1qzn0kbo1_1280-270x270.jpg";s:5:"width";i:270;s:6:"height";i:270;s:9:"mime-type";s:10:"image/jpeg";}s:13:"site_icon-192";a:4:{s:4:"file";s:59:"cropped-cropped-tumblr_n5hiueWS8g1qzn0kbo1_1280-192x192.jpg";s:5:"width";i:192;s:6:"height";i:192;s:9:"mime-type";s:10:"image/jpeg";}s:13:"site_icon-180";a:4:{s:4:"file";s:59:"cropped-cropped-tumblr_n5hiueWS8g1qzn0kbo1_1280-180x180.jpg";s:5:"width";i:180;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"site_icon-32";a:4:{s:4:"file";s:57:"cropped-cropped-tumblr_n5hiueWS8g1qzn0kbo1_1280-32x32.jpg";s:5:"width";i:32;s:6:"height";i:32;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(32, 22, '_wp_attached_file', '2021/09/corgis.jpg'),
(33, 22, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1600;s:6:"height";i:1200;s:4:"file";s:18:"2021/09/corgis.jpg";s:5:"sizes";a:5:{s:6:"medium";a:4:{s:4:"file";s:18:"corgis-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:19:"corgis-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:18:"corgis-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:18:"corgis-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:9:"1536x1536";a:4:{s:4:"file";s:20:"corgis-1536x1152.jpg";s:5:"width";i:1536;s:6:"height";i:1152;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"3.5";s:6:"credit";s:0:"";s:6:"camera";s:20:"Canon PowerShot A620";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1189784913";s:9:"copyright";s:0:"";s:12:"focal_length";s:6:"14.926";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:17:"0.016666666666667";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(34, 23, '_wp_attached_file', '2021/09/cropped-corgis.jpg'),
(35, 23, '_wp_attachment_context', 'custom-header'),
(36, 23, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1000;s:6:"height";i:250;s:4:"file";s:26:"2021/09/cropped-corgis.jpg";s:5:"sizes";a:3:{s:6:"medium";a:4:{s:4:"file";s:25:"cropped-corgis-300x75.jpg";s:5:"width";i:300;s:6:"height";i:75;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:26:"cropped-corgis-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:26:"cropped-corgis-768x192.jpg";s:5:"width";i:768;s:6:"height";i:192;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:17:"attachment_parent";i:22;}'),
(37, 23, '_wp_attachment_custom_header_last_used_underscores', '1631439189'),
(38, 23, '_wp_attachment_is_custom_header', 'underscores'),
(39, 22, '_wp_attachment_is_custom_background', 'underscores'),
(41, 24, '_customize_changeset_uuid', '8071ac89-054a-4ca5-93ec-d6ea0f2b98eb'),
(42, 25, '_menu_item_type', 'custom'),
(43, 25, '_menu_item_menu_item_parent', '0'),
(44, 25, '_menu_item_object_id', '25'),
(45, 25, '_menu_item_object', 'custom'),
(46, 25, '_menu_item_target', ''),
(47, 25, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(48, 25, '_menu_item_xfn', ''),
(49, 25, '_menu_item_url', 'http://localhost:8888/WP/bewd-week6/wordpress'),
(50, 26, '_menu_item_type', 'taxonomy'),
(51, 26, '_menu_item_menu_item_parent', '0'),
(52, 26, '_menu_item_object_id', '2'),
(53, 26, '_menu_item_object', 'category'),
(54, 26, '_menu_item_target', ''),
(55, 26, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(56, 26, '_menu_item_xfn', ''),
(57, 26, '_menu_item_url', ''),
(58, 27, '_menu_item_type', 'post_type'),
(59, 27, '_menu_item_menu_item_parent', '0'),
(60, 27, '_menu_item_object_id', '2'),
(61, 27, '_menu_item_object', 'page'),
(62, 27, '_menu_item_target', ''),
(63, 27, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(64, 27, '_menu_item_xfn', ''),
(65, 27, '_menu_item_url', ''),
(66, 20, '_wp_trash_meta_status', 'publish'),
(67, 20, '_wp_trash_meta_time', '1631439189'),
(68, 24, '_edit_lock', '1631487995:1'),
(69, 29, '_edit_lock', '1631448825:1'),
(70, 24, '_edit_last', '1'),
(71, 24, 'background-image', '22'),
(72, 24, '_background-image', 'field_613dbad12e3e6'),
(73, 31, 'background-image', '22'),
(74, 31, '_background-image', 'field_613dbad12e3e6'),
(75, 33, 'background-image', '22'),
(76, 33, '_background-image', 'field_613dbad12e3e6'),
(77, 34, '_wp_trash_meta_status', 'publish'),
(78, 34, '_wp_trash_meta_time', '1631488193'),
(79, 35, '_edit_lock', '1631488133:1') ;

#
# End of data contents of table `wp_postmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_posts`
#

DROP TABLE IF EXISTS `wp_posts`;


#
# Table structure of table `wp_posts`
#

CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_posts`
#
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2021-09-06 00:22:28', '2021-09-06 00:22:28', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2021-09-06 00:22:28', '2021-09-06 00:22:28', '', 0, 'http://localhost:8888/WP/bewd-week6/wordpress/?p=1', 0, 'post', '', 1),
(2, 1, '2021-09-06 00:22:28', '2021-09-06 00:22:28', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href="http://localhost:8888/WP/bewd-week6/wordpress/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2021-09-06 00:22:28', '2021-09-06 00:22:28', '', 0, 'http://localhost:8888/WP/bewd-week6/wordpress/?page_id=2', 0, 'page', '', 0),
(3, 1, '2021-09-06 00:22:28', '2021-09-06 00:22:28', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Suggested text: </strong>Our website address is: http://localhost:8888/WP/bewd-week6/wordpress.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymised string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognise and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2021-09-06 00:22:28', '2021-09-06 00:22:28', '', 0, 'http://localhost:8888/WP/bewd-week6/wordpress/?page_id=3', 0, 'page', '', 0),
(4, 1, '2021-09-06 00:23:18', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2021-09-06 00:23:18', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/WP/bewd-week6/wordpress/?p=4', 0, 'post', '', 0),
(5, 1, '2021-09-06 00:30:36', '2021-09-06 00:30:36', '<!-- wp:paragraph -->\n<p>Some text</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Another block of text</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {"id":6,"sizeSlug":"full","linkDestination":"none"} -->\n<figure class="wp-block-image size-full"><img src="http://localhost:8888/WP/bewd-week6/wordpress/wp-content/uploads/2021/09/dogboop.jpg" alt="" class="wp-image-6"/><figcaption>Dogboop</figcaption></figure>\n<!-- /wp:image -->\n\n<!-- wp:columns -->\n<div class="wp-block-columns"><!-- wp:column -->\n<div class="wp-block-column"></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class="wp-block-column"></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Test Post', '', 'publish', 'open', 'open', '', 'test-post', '', '', '2021-09-06 00:30:36', '2021-09-06 00:30:36', '', 0, 'http://localhost:8888/WP/bewd-week6/wordpress/?p=5', 0, 'post', '', 0),
(6, 1, '2021-09-06 00:27:47', '2021-09-06 00:27:47', '', 'dogboop', '', 'inherit', 'open', 'closed', '', 'dogboop', '', '', '2021-09-06 00:27:47', '2021-09-06 00:27:47', '', 5, 'http://localhost:8888/WP/bewd-week6/wordpress/wp-content/uploads/2021/09/dogboop.jpg', 0, 'attachment', 'image/jpeg', 0),
(7, 1, '2021-09-06 00:29:12', '2021-09-06 00:29:12', '<!-- wp:paragraph -->\n<p>Some text</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Another block of text</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {"id":6,"sizeSlug":"full","linkDestination":"none"} -->\n<figure class="wp-block-image size-full"><img src="http://localhost:8888/WP/bewd-week6/wordpress/wp-content/uploads/2021/09/dogboop.jpg" alt="" class="wp-image-6"/><figcaption>Dogboop</figcaption></figure>\n<!-- /wp:image -->\n\n<!-- wp:columns -->\n<div class="wp-block-columns"><!-- wp:column -->\n<div class="wp-block-column"></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class="wp-block-column"></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Test Post', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2021-09-06 00:29:12', '2021-09-06 00:29:12', '', 5, 'http://localhost:8888/WP/bewd-week6/wordpress/?p=7', 0, 'revision', '', 0),
(9, 1, '2021-09-12 04:55:47', '2021-09-12 04:55:47', '<!-- wp:paragraph -->\n<p>Page content - paragraph block</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {"id":6,"sizeSlug":"full","linkDestination":"none"} -->\n<figure class="wp-block-image size-full"><img src="http://localhost:8888/WP/bewd-week6/wordpress/wp-content/uploads/2021/09/dogboop.jpg" alt="" class="wp-image-6"/><figcaption>Image caption</figcaption></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Page Title', '', 'publish', 'closed', 'closed', '', 'example-page', '', '', '2021-09-12 04:55:47', '2021-09-12 04:55:47', '', 0, 'http://localhost:8888/WP/bewd-week6/wordpress/?page_id=9', 0, 'page', '', 0),
(10, 1, '2021-09-12 04:55:30', '2021-09-12 04:55:30', '<!-- wp:paragraph -->\n<p>Page content - paragraph block</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {"id":6,"sizeSlug":"full","linkDestination":"none"} -->\n<figure class="wp-block-image size-full"><img src="http://localhost:8888/WP/bewd-week6/wordpress/wp-content/uploads/2021/09/dogboop.jpg" alt="" class="wp-image-6"/><figcaption>Image caption</figcaption></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Page Title', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2021-09-12 04:55:30', '2021-09-12 04:55:30', '', 9, 'http://localhost:8888/WP/bewd-week6/wordpress/?p=10', 0, 'revision', '', 0),
(11, 1, '2021-09-12 05:32:01', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-09-12 05:32:01', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/WP/bewd-week6/wordpress/?post_type=acf-field-group&p=11', 0, 'acf-field-group', '', 0),
(12, 1, '2021-09-12 08:41:47', '2021-09-12 08:41:47', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:4:"page";s:8:"operator";s:2:"==";s:5:"value";s:2:"24";}}}s:8:"position";s:15:"acf_after_title";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'hero-header', 'hero-header', 'publish', 'closed', 'closed', '', 'group_613d91d4da3f5', '', '', '2021-09-12 23:04:48', '2021-09-12 23:04:48', '', 0, 'http://localhost:8888/WP/bewd-week6/wordpress/?post_type=acf-field-group&#038;p=12', 0, 'acf-field-group', '', 0),
(14, 1, '2021-09-12 08:41:47', '2021-09-12 08:41:47', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:76:"Background image for heading.  Will appear behind heading and be full-width.";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:3:"100";s:5:"class";s:14:"hfp-background";s:2:"id";s:0:"";}s:13:"return_format";s:2:"id";s:12:"preview_size";s:4:"full";s:7:"library";s:3:"all";s:9:"min_width";i:800;s:10:"min_height";i:600;s:8:"min_size";s:0:"";s:9:"max_width";i:5000;s:10:"max_height";i:5000;s:8:"max_size";i:2;s:10:"mime_types";s:25:"jpg, jpeg, gif, png, webp";}', 'Background image', 'background-image', 'publish', 'closed', 'closed', '', 'field_613dbad12e3e6', '', '', '2021-09-12 23:04:48', '2021-09-12 23:04:48', '', 12, 'http://localhost:8888/WP/bewd-week6/wordpress/?post_type=acf-field&#038;p=14', 0, 'acf-field', '', 0),
(15, 1, '2021-09-12 08:49:00', '0000-00-00 00:00:00', '', 'Heading', '', 'draft', 'closed', 'closed', '', 'heading-example', '', '', '2021-09-12 08:49:00', '2021-09-12 08:49:00', '', 0, 'http://localhost:8888/WP/bewd-week6/wordpress/?page_id=15', 0, 'page', '', 0),
(16, 1, '2021-09-12 08:48:59', '2021-09-12 08:48:59', '', 'Heading', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2021-09-12 08:48:59', '2021-09-12 08:48:59', '', 15, 'http://localhost:8888/WP/bewd-week6/wordpress/?p=16', 0, 'revision', '', 0),
(17, 1, '2021-09-12 08:49:00', '2021-09-12 08:49:00', '', 'Heading', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2021-09-12 08:49:00', '2021-09-12 08:49:00', '', 15, 'http://localhost:8888/WP/bewd-week6/wordpress/?p=17', 0, 'revision', '', 0),
(18, 1, '2021-09-12 09:11:42', '2021-09-12 09:11:42', '', 'tumblr_n5hiueWS8g1qzn0kbo1_1280', '', 'inherit', 'open', 'closed', '', 'tumblr_n5hiuews8g1qzn0kbo1_1280', '', '', '2021-09-12 09:11:42', '2021-09-12 09:11:42', '', 0, 'http://localhost:8888/WP/bewd-week6/wordpress/wp-content/uploads/2021/09/tumblr_n5hiueWS8g1qzn0kbo1_1280.jpg', 0, 'attachment', 'image/jpeg', 0),
(19, 1, '2021-09-12 09:11:59', '2021-09-12 09:11:59', 'http://localhost:8888/WP/bewd-week6/wordpress/wp-content/uploads/2021/09/cropped-tumblr_n5hiueWS8g1qzn0kbo1_1280.jpg', 'cropped-tumblr_n5hiueWS8g1qzn0kbo1_1280.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-tumblr_n5hiuews8g1qzn0kbo1_1280-jpg', '', '', '2021-09-12 09:11:59', '2021-09-12 09:11:59', '', 0, 'http://localhost:8888/WP/bewd-week6/wordpress/wp-content/uploads/2021/09/cropped-tumblr_n5hiueWS8g1qzn0kbo1_1280.jpg', 0, 'attachment', 'image/jpeg', 0),
(20, 1, '2021-09-12 09:33:09', '2021-09-12 09:33:09', '{"blogname":{"value":"BeWD","type":"option","user_id":1,"date_modified_gmt":"2021-09-12 09:13:00"},"blogdescription":{"value":"Let us learn Wordpress","type":"option","user_id":1,"date_modified_gmt":"2021-09-12 09:13:00"},"underscores::custom_logo":{"value":19,"type":"theme_mod","user_id":1,"date_modified_gmt":"2021-09-12 09:13:00"},"site_icon":{"value":21,"type":"option","user_id":1,"date_modified_gmt":"2021-09-12 09:15:00"},"underscores::header_textcolor":{"value":"#000000","type":"theme_mod","user_id":1,"date_modified_gmt":"2021-09-12 09:16:00"},"underscores::background_color":{"value":"#fcfcfc","type":"theme_mod","user_id":1,"date_modified_gmt":"2021-09-12 09:20:00"},"underscores::header_image":{"value":"http:\\/\\/localhost:8888\\/WP\\/bewd-week6\\/wordpress\\/wp-content\\/uploads\\/2021\\/09\\/cropped-corgis.jpg","type":"theme_mod","user_id":1,"date_modified_gmt":"2021-09-12 09:22:00"},"underscores::header_image_data":{"value":{"url":"http:\\/\\/localhost:8888\\/WP\\/bewd-week6\\/wordpress\\/wp-content\\/uploads\\/2021\\/09\\/cropped-corgis.jpg","thumbnail_url":"http:\\/\\/localhost:8888\\/WP\\/bewd-week6\\/wordpress\\/wp-content\\/uploads\\/2021\\/09\\/cropped-corgis.jpg","timestamp":1631438507296,"attachment_id":23,"width":1000,"height":250},"type":"theme_mod","user_id":1,"date_modified_gmt":"2021-09-12 09:22:00"},"underscores::background_image":{"value":"http:\\/\\/localhost:8888\\/WP\\/bewd-week6\\/wordpress\\/wp-content\\/uploads\\/2021\\/09\\/corgis.jpg","type":"theme_mod","user_id":1,"date_modified_gmt":"2021-09-12 09:24:00"},"underscores::background_position_x":{"value":"center","type":"theme_mod","user_id":1,"date_modified_gmt":"2021-09-12 09:24:00"},"underscores::background_position_y":{"value":"center","type":"theme_mod","user_id":1,"date_modified_gmt":"2021-09-12 09:24:00"},"underscores::background_size":{"value":"contain","type":"theme_mod","user_id":1,"date_modified_gmt":"2021-09-12 09:24:00"},"underscores::background_repeat":{"value":"no-repeat","type":"theme_mod","user_id":1,"date_modified_gmt":"2021-09-12 09:24:00"},"underscores::background_attachment":{"value":"fixed","type":"theme_mod","user_id":1,"date_modified_gmt":"2021-09-12 09:25:00"},"nav_menu[-4760701892743356000]":{"value":{"name":"example-menu","description":"","parent":0,"auto_add":false},"type":"nav_menu","user_id":1,"date_modified_gmt":"2021-09-12 09:26:00"},"nav_menu_item[-6410062281146526000]":{"value":{"object_id":0,"object":"","menu_item_parent":0,"position":1,"type":"custom","title":"Home","url":"http:\\/\\/localhost:8888\\/WP\\/bewd-week6\\/wordpress","target":"","attr_title":"","description":"","classes":"","xfn":"","status":"publish","original_title":"Home","nav_menu_term_id":-4760701892743356000,"_invalid":false,"type_label":"Custom Link"},"type":"nav_menu_item","user_id":1,"date_modified_gmt":"2021-09-12 09:27:00"},"nav_menu_item[-4130703773857736700]":{"value":false,"type":"nav_menu_item","user_id":1,"date_modified_gmt":"2021-09-12 09:27:00"},"nav_menu_item[-5544373534451839000]":{"value":{"object_id":2,"object":"category","menu_item_parent":0,"position":2,"type":"taxonomy","title":"example-category","url":"http:\\/\\/localhost:8888\\/WP\\/bewd-week6\\/wordpress\\/category\\/example-category\\/","target":"","attr_title":"","description":"","classes":"","xfn":"","status":"publish","original_title":"example-category","nav_menu_term_id":-4760701892743356000,"_invalid":false,"type_label":"Category"},"type":"nav_menu_item","user_id":1,"date_modified_gmt":"2021-09-12 09:27:00"},"underscores::nav_menu_locations[menu-1]":{"value":0,"type":"theme_mod","user_id":1,"date_modified_gmt":"2021-09-12 09:28:00"},"nav_menu_item[-2609973024484626400]":{"value":{"object_id":2,"object":"page","menu_item_parent":0,"position":3,"type":"post_type","title":"Sample Page","url":"http:\\/\\/localhost:8888\\/WP\\/bewd-week6\\/wordpress\\/sample-page\\/","target":"","attr_title":"","description":"","classes":"","xfn":"","status":"publish","original_title":"Sample Page","nav_menu_term_id":-4760701892743356000,"_invalid":false,"type_label":"Page"},"type":"nav_menu_item","user_id":1,"date_modified_gmt":"2021-09-12 09:28:00"},"sidebars_widgets[sidebar-1]":{"value":["block-6"],"type":"option","user_id":1,"date_modified_gmt":"2021-09-12 09:30:00"},"show_on_front":{"value":"page","type":"option","user_id":1,"date_modified_gmt":"2021-09-12 09:31:00"},"page_on_front":{"value":"24","type":"option","user_id":1,"date_modified_gmt":"2021-09-12 09:32:00"},"nav_menus_created_posts":{"value":[24],"type":"option","user_id":1,"date_modified_gmt":"2021-09-12 09:32:00"}}', '', '', 'trash', 'closed', 'closed', '', '8071ac89-054a-4ca5-93ec-d6ea0f2b98eb', '', '', '2021-09-12 09:33:09', '2021-09-12 09:33:09', '', 0, 'http://localhost:8888/WP/bewd-week6/wordpress/?p=20', 0, 'customize_changeset', '', 0),
(21, 1, '2021-09-12 09:14:46', '2021-09-12 09:14:46', 'http://localhost:8888/WP/bewd-week6/wordpress/wp-content/uploads/2021/09/cropped-cropped-tumblr_n5hiueWS8g1qzn0kbo1_1280.jpg', 'cropped-cropped-tumblr_n5hiueWS8g1qzn0kbo1_1280.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-cropped-tumblr_n5hiuews8g1qzn0kbo1_1280-jpg', '', '', '2021-09-12 09:14:46', '2021-09-12 09:14:46', '', 0, 'http://localhost:8888/WP/bewd-week6/wordpress/wp-content/uploads/2021/09/cropped-cropped-tumblr_n5hiueWS8g1qzn0kbo1_1280.jpg', 0, 'attachment', 'image/jpeg', 0),
(22, 1, '2021-09-12 09:21:24', '2021-09-12 09:21:24', '', 'corgis', '', 'inherit', 'open', 'closed', '', 'corgis', '', '', '2021-09-12 12:19:18', '2021-09-12 12:19:18', '', 24, 'http://localhost:8888/WP/bewd-week6/wordpress/wp-content/uploads/2021/09/corgis.jpg', 0, 'attachment', 'image/jpeg', 0),
(23, 1, '2021-09-12 09:21:47', '2021-09-12 09:21:47', '', 'cropped-corgis.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-corgis-jpg', '', '', '2021-09-12 09:21:47', '2021-09-12 09:21:47', '', 0, 'http://localhost:8888/WP/bewd-week6/wordpress/wp-content/uploads/2021/09/cropped-corgis.jpg', 0, 'attachment', 'image/jpeg', 0),
(24, 1, '2021-09-12 09:33:09', '2021-09-12 09:33:09', '', 'Site Title', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2021-09-12 22:37:10', '2021-09-12 22:37:10', '', 0, 'http://localhost:8888/WP/bewd-week6/wordpress/?page_id=24', 0, 'page', '', 0),
(25, 1, '2021-09-12 09:33:09', '2021-09-12 09:33:09', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2021-09-12 09:33:09', '2021-09-12 09:33:09', '', 0, 'http://localhost:8888/WP/bewd-week6/wordpress/2021/09/12/home/', 1, 'nav_menu_item', '', 0),
(26, 1, '2021-09-12 09:33:09', '2021-09-12 09:33:09', ' ', '', '', 'publish', 'closed', 'closed', '', '26', '', '', '2021-09-12 09:33:09', '2021-09-12 09:33:09', '', 0, 'http://localhost:8888/WP/bewd-week6/wordpress/2021/09/12/26/', 2, 'nav_menu_item', '', 0),
(27, 1, '2021-09-12 09:33:09', '2021-09-12 09:33:09', ' ', '', '', 'publish', 'closed', 'closed', '', '27', '', '', '2021-09-12 09:33:09', '2021-09-12 09:33:09', '', 0, 'http://localhost:8888/WP/bewd-week6/wordpress/2021/09/12/27/', 3, 'nav_menu_item', '', 0),
(28, 1, '2021-09-12 09:33:09', '2021-09-12 09:33:09', '', 'home', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2021-09-12 09:33:09', '2021-09-12 09:33:09', '', 24, 'http://localhost:8888/WP/bewd-week6/wordpress/?p=28', 0, 'revision', '', 0),
(29, 1, '2021-09-12 12:15:45', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-09-12 12:15:45', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/WP/bewd-week6/wordpress/?page_id=29', 0, 'page', '', 0),
(30, 1, '2021-09-12 12:19:17', '2021-09-12 12:19:17', '', 'Home', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2021-09-12 12:19:17', '2021-09-12 12:19:17', '', 24, 'http://localhost:8888/WP/bewd-week6/wordpress/?p=30', 0, 'revision', '', 0),
(31, 1, '2021-09-12 12:19:18', '2021-09-12 12:19:18', '', 'Home', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2021-09-12 12:19:18', '2021-09-12 12:19:18', '', 24, 'http://localhost:8888/WP/bewd-week6/wordpress/?p=31', 0, 'revision', '', 0),
(32, 1, '2021-09-12 12:20:16', '2021-09-12 12:20:16', '', 'Site Title', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2021-09-12 12:20:16', '2021-09-12 12:20:16', '', 24, 'http://localhost:8888/WP/bewd-week6/wordpress/?p=32', 0, 'revision', '', 0),
(33, 1, '2021-09-12 12:20:17', '2021-09-12 12:20:17', '', 'Site Title', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2021-09-12 12:20:17', '2021-09-12 12:20:17', '', 24, 'http://localhost:8888/WP/bewd-week6/wordpress/?p=33', 0, 'revision', '', 0),
(34, 1, '2021-09-12 23:09:53', '2021-09-12 23:09:53', '{"page_on_front":{"value":"0","type":"option","user_id":1,"date_modified_gmt":"2021-09-12 23:09:53"}}', '', '', 'trash', 'closed', 'closed', '', 'ae855b78-028a-4bd2-aaf9-a41774e32b6c', '', '', '2021-09-12 23:09:53', '2021-09-12 23:09:53', '', 0, 'http://localhost:8888/WP/bewd-week6/wordpress/2021/09/12/ae855b78-028a-4bd2-aaf9-a41774e32b6c/', 0, 'customize_changeset', '', 0),
(35, 1, '2021-09-12 23:11:14', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2021-09-12 23:11:14', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/WP/bewd-week6/wordpress/?p=35', 0, 'post', '', 0) ;

#
# End of data contents of table `wp_posts`
# --------------------------------------------------------



#
# Delete any existing table `wp_term_relationships`
#

DROP TABLE IF EXISTS `wp_term_relationships`;


#
# Table structure of table `wp_term_relationships`
#

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_term_relationships`
#
INSERT INTO `wp_term_relationships` ( `object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(5, 1, 0),
(25, 4, 0),
(26, 4, 0),
(27, 4, 0) ;

#
# End of data contents of table `wp_term_relationships`
# --------------------------------------------------------



#
# Delete any existing table `wp_term_taxonomy`
#

DROP TABLE IF EXISTS `wp_term_taxonomy`;


#
# Table structure of table `wp_term_taxonomy`
#

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_term_taxonomy`
#
INSERT INTO `wp_term_taxonomy` ( `term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 2),
(2, 2, 'category', 'Category description', 0, 0),
(3, 3, 'post_tag', 'Tag description', 0, 0),
(4, 4, 'nav_menu', '', 0, 3),
(5, 5, 'category', '', 0, 0),
(6, 6, 'category', '', 0, 0),
(7, 7, 'post_tag', '', 0, 0),
(8, 8, 'post_tag', '', 0, 0) ;

#
# End of data contents of table `wp_term_taxonomy`
# --------------------------------------------------------



#
# Delete any existing table `wp_termmeta`
#

DROP TABLE IF EXISTS `wp_termmeta`;


#
# Table structure of table `wp_termmeta`
#

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_termmeta`
#

#
# End of data contents of table `wp_termmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_terms`
#

DROP TABLE IF EXISTS `wp_terms`;


#
# Table structure of table `wp_terms`
#

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_terms`
#
INSERT INTO `wp_terms` ( `term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorised', 'uncategorised', 0),
(2, 'example-category', 'example-category', 0),
(3, 'example-tag', 'tag-example-tag', 0),
(4, 'example-menu', 'example-menu', 0),
(5, 'houses', 'houses', 0),
(6, 'architects', 'architects', 0),
(7, 'house', 'house', 0),
(8, 'architect', 'architect', 0) ;

#
# End of data contents of table `wp_terms`
# --------------------------------------------------------



#
# Delete any existing table `wp_usermeta`
#

DROP TABLE IF EXISTS `wp_usermeta`;


#
# Table structure of table `wp_usermeta`
#

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_usermeta`
#
INSERT INTO `wp_usermeta` ( `umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'riley'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'plugin_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:"3c10c368a2d0f1fd5c2b758c4d5e62c014034681b1a954c1c08e742f4de624fc";a:4:{s:10:"expiration";i:1631595183;s:2:"ip";s:3:"::1";s:2:"ua";s:121:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.107 Safari/537.36";s:5:"login";i:1631422383;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'wp_user-settings', 'libraryContent=browse'),
(19, 1, 'wp_user-settings-time', '1631422556'),
(20, 1, 'closedpostboxes_page', 'a:0:{}'),
(21, 1, 'metaboxhidden_page', 'a:0:{}') ;

#
# End of data contents of table `wp_usermeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_users`
#

DROP TABLE IF EXISTS `wp_users`;


#
# Table structure of table `wp_users`
#

CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_users`
#
INSERT INTO `wp_users` ( `ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'riley', '$P$BpSZrQu4U7bb1xG9FrrSYWK7dutrmV.', 'riley', 'riley.post@canberra.edu.au', 'http://localhost:8888/WP/bewd-week6/wordpress', '2021-09-06 00:22:28', '', 0, 'riley') ;

#
# End of data contents of table `wp_users`
# --------------------------------------------------------

#
# Add constraints back in and apply any alter data queries.
#

