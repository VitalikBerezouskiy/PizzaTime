-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Май 03 2020 г., 22:42
-- Версия сервера: 10.4.11-MariaDB
-- Версия PHP: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `pizzatime`
--

-- --------------------------------------------------------

--
-- Структура таблицы `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/pizzatime', 'yes'),
(2, 'home', 'http://localhost/pizzatime', 'yes'),
(3, 'blogname', 'pizzatime', 'yes'),
(4, 'blogdescription', 'Ещё один сайт на WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'pizzatimesite@mail.ru', 'yes'),
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
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '9', 'yes'),
(23, 'date_format', 'd.m.Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'd.m.Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%category%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:121:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:11:\"products/?$\";s:27:\"index.php?post_type=product\";s:41:\"products/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:36:\"products/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:28:\"products/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=product&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:36:\"products/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"products/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"products/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"products/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"products/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"products/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"products/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:29:\"products/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:49:\"products/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:44:\"products/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:37:\"products/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:44:\"products/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:33:\"products/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:25:\"products/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"products/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"products/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"products/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"products/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"products/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:59:\"product-categories/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:57:\"index.php?product-categories=$matches[1]&feed=$matches[2]\";s:54:\"product-categories/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:57:\"index.php?product-categories=$matches[1]&feed=$matches[2]\";s:35:\"product-categories/([^/]+)/embed/?$\";s:51:\"index.php?product-categories=$matches[1]&embed=true\";s:47:\"product-categories/([^/]+)/page/?([0-9]{1,})/?$\";s:58:\"index.php?product-categories=$matches[1]&paged=$matches[2]\";s:29:\"product-categories/([^/]+)/?$\";s:40:\"index.php?product-categories=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=14&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:31:\".+?/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:41:\".+?/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:61:\".+?/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\".+?/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\".+?/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:37:\".+?/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"(.+?)/([^/]+)/embed/?$\";s:63:\"index.php?category_name=$matches[1]&name=$matches[2]&embed=true\";s:26:\"(.+?)/([^/]+)/trackback/?$\";s:57:\"index.php?category_name=$matches[1]&name=$matches[2]&tb=1\";s:46:\"(.+?)/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?category_name=$matches[1]&name=$matches[2]&feed=$matches[3]\";s:41:\"(.+?)/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?category_name=$matches[1]&name=$matches[2]&feed=$matches[3]\";s:34:\"(.+?)/([^/]+)/page/?([0-9]{1,})/?$\";s:70:\"index.php?category_name=$matches[1]&name=$matches[2]&paged=$matches[3]\";s:41:\"(.+?)/([^/]+)/comment-page-([0-9]{1,})/?$\";s:70:\"index.php?category_name=$matches[1]&name=$matches[2]&cpage=$matches[3]\";s:30:\"(.+?)/([^/]+)(?:/([0-9]+))?/?$\";s:69:\"index.php?category_name=$matches[1]&name=$matches[2]&page=$matches[3]\";s:20:\".+?/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:30:\".+?/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:50:\".+?/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:45:\".+?/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:45:\".+?/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:26:\".+?/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:38:\"(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:33:\"(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:14:\"(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:26:\"(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:33:\"(.+?)/comment-page-([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&cpage=$matches[2]\";s:8:\"(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:1;s:27:\"svg-support/svg-support.php\";i:2;s:53:\"webp-converter-for-media/webp-converter-for-media.php\";i:3;s:33:\"wp-translitera/wp-translitera.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '3', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'pizzatime', 'yes'),
(41, 'stylesheet', 'pizzatime', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '45805', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:53:\"webp-converter-for-media/webp-converter-for-media.php\";a:2:{i:0;s:29:\"WebpConverter\\Admin\\Uninstall\";i:1;s:20:\"removePluginSettings\";}}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '14', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'admin_email_lifespan', '1599669872', 'yes'),
(94, 'initial_db_version', '45805', 'yes'),
(95, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(96, 'fresh_site', '0', 'yes'),
(97, 'WPLANG', 'ru_RU', 'yes'),
(98, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(104, 'cron', 'a:6:{i:1588538673;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1588567473;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1588610672;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1588610686;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1588610688;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(105, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'recovery_keys', 'a:0:{}', 'yes'),
(118, 'theme_mods_twentytwenty', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1584118108;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(133, 'can_compress_scripts', '1', 'no'),
(144, 'current_theme', 'PizzaTime', 'yes'),
(145, 'theme_mods_pizzatime', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:16:\"menu_main_header\";i:4;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(146, 'theme_switched', '', 'yes'),
(150, 'recently_activated', 'a:1:{s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";i:1585931101;}', 'yes'),
(159, 'wp_translitera', 'a:9:{s:25:\"tranliterate_uploads_file\";s:1:\"1\";s:16:\"tranliterate_404\";s:1:\"1\";s:7:\"fileext\";a:1:{i:0;s:0:\"\";}s:26:\"use_force_transliterations\";s:1:\"1\";s:16:\"disable_in_front\";N;s:18:\"lowercase_filename\";s:1:\"1\";s:22:\"use_global_mu_settings\";N;s:12:\"custom_rules\";s:2:\"[]\";s:7:\"version\";s:6:\"p1.2.5\";}', 'yes'),
(165, 'category_children', 'a:0:{}', 'yes'),
(201, 'recovery_mode_email_last_sent', '1586788574', 'yes'),
(207, 'bodhi_svgs_plugin_version', '2.3.17', 'yes'),
(226, '_logo_url', 'http://localhost/pizzatime/wp-content/uploads/2020/03/logo.svg', 'no'),
(228, '_sdf', '23', 'no'),
(239, '_logo', 'http://localhost:3000/pizzatime/wp-content/uploads/2020/03/logo.svg', 'no'),
(240, '_phone', '+7 (888) 888-88-88', 'no'),
(241, '_phone_digits', '+78888888888', 'no'),
(352, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(388, 'webpc_notice_hidden', '1586183420', 'yes'),
(389, 'webpc_settings', 'a:4:{s:10:\"extensions\";a:3:{i:0;s:3:\"jpg\";i:1;s:4:\"jpeg\";i:2;s:3:\"png\";}s:6:\"method\";s:2:\"gd\";s:8:\"features\";a:1:{i:0;s:11:\"mod_expires\";}s:7:\"quality\";s:2:\"90\";}', 'yes'),
(391, '_site_logo', '26', 'no'),
(392, '_site_footer_text', 'PizzaTime 2020', 'no'),
(393, '_site_phone', '+7 (888) 888-88-88', 'no'),
(394, '_site_phone_digits', '+78888888888', 'no'),
(395, '_site_address', 'г. Москва, Преображенская площадь, 8', 'no'),
(396, '_site_map_coordinates', '55.755241, 37.617779', 'no'),
(397, '_site_vk_url', 'vk', 'no'),
(398, '_site_fb_url', 'facebook', 'no'),
(399, '_site_inst_url', 'inst', 'no'),
(462, 'product-categories_children', 'a:1:{i:5;a:3:{i:0;i:6;i:1;i:7;i:2;i:8;}}', 'yes'),
(596, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:3:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-5.4.1.zip\";s:6:\"locale\";s:5:\"ru_RU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-5.4.1.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.4.1\";s:7:\"version\";s:5:\"5.4.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.4.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.4.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.4.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.4.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.4.1\";s:7:\"version\";s:5:\"5.4.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.4.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.4.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.4.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.4.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.4.1\";s:7:\"version\";s:5:\"5.4.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1588529732;s:15:\"version_checked\";s:5:\"5.3.3\";s:12:\"translations\";a:0:{}}', 'no'),
(599, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:21:\"pizzatimesite@mail.ru\";s:7:\"version\";s:5:\"5.3.3\";s:9:\"timestamp\";i:1588422765;}', 'no'),
(610, '_site_transient_timeout_theme_roots', '1588531535', 'no'),
(611, '_site_transient_theme_roots', 'a:5:{s:9:\"pizzatime\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";}', 'no'),
(612, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1588529737;s:7:\"checked\";a:5:{s:9:\"pizzatime\";s:0:\"\";s:14:\"twentynineteen\";s:3:\"1.4\";s:15:\"twentyseventeen\";s:3:\"2.2\";s:13:\"twentysixteen\";s:3:\"2.0\";s:12:\"twentytwenty\";s:3:\"1.1\";}s:8:\"response\";a:4:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.1.5.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentyseventeen\";a:6:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"2.3\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.2.3.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:13:\"twentysixteen\";a:6:{s:5:\"theme\";s:13:\"twentysixteen\";s:11:\"new_version\";s:3:\"2.1\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentysixteen/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/twentysixteen.2.1.zip\";s:8:\"requires\";s:3:\"4.4\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.2\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.2.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}}s:12:\"translations\";a:0:{}}', 'no'),
(613, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1588529737;s:7:\"checked\";a:3:{s:27:\"svg-support/svg-support.php\";s:6:\"2.3.17\";s:53:\"webp-converter-for-media/webp-converter-for-media.php\";s:5:\"1.1.2\";s:33:\"wp-translitera/wp-translitera.php\";s:6:\"p1.2.5\";}s:8:\"response\";a:2:{s:27:\"svg-support/svg-support.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:25:\"w.org/plugins/svg-support\";s:4:\"slug\";s:11:\"svg-support\";s:6:\"plugin\";s:27:\"svg-support/svg-support.php\";s:11:\"new_version\";s:6:\"2.3.18\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/svg-support/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/svg-support.2.3.18.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:64:\"https://ps.w.org/svg-support/assets/icon-256x256.png?rev=1417738\";s:2:\"1x\";s:56:\"https://ps.w.org/svg-support/assets/icon.svg?rev=1417738\";s:3:\"svg\";s:56:\"https://ps.w.org/svg-support/assets/icon.svg?rev=1417738\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/svg-support/assets/banner-1544x500.jpg?rev=1215377\";s:2:\"1x\";s:66:\"https://ps.w.org/svg-support/assets/banner-772x250.jpg?rev=1215377\";}s:11:\"banners_rtl\";a:0:{}s:14:\"upgrade_notice\";s:137:\"<p>General clean up of plugin, testing on latest nightly build plus fixed issue with metadata being removed from non SVG attachments.</p>\";s:6:\"tested\";s:3:\"5.5\";s:12:\"requires_php\";s:3:\"5.2\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:53:\"webp-converter-for-media/webp-converter-for-media.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:38:\"w.org/plugins/webp-converter-for-media\";s:4:\"slug\";s:24:\"webp-converter-for-media\";s:6:\"plugin\";s:53:\"webp-converter-for-media/webp-converter-for-media.php\";s:11:\"new_version\";s:5:\"1.2.4\";s:3:\"url\";s:55:\"https://wordpress.org/plugins/webp-converter-for-media/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/webp-converter-for-media.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:77:\"https://ps.w.org/webp-converter-for-media/assets/icon-256x256.png?rev=2107059\";s:2:\"1x\";s:77:\"https://ps.w.org/webp-converter-for-media/assets/icon-128x128.png?rev=2107059\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:80:\"https://ps.w.org/webp-converter-for-media/assets/banner-1544x500.png?rev=2107032\";s:2:\"1x\";s:79:\"https://ps.w.org/webp-converter-for-media/assets/banner-772x250.png?rev=2107032\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.4.1\";s:12:\"requires_php\";s:3:\"7.0\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:33:\"wp-translitera/wp-translitera.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/wp-translitera\";s:4:\"slug\";s:14:\"wp-translitera\";s:6:\"plugin\";s:33:\"wp-translitera/wp-translitera.php\";s:11:\"new_version\";s:6:\"p1.2.5\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/wp-translitera/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/wp-translitera.p1.2.5.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:58:\"https://s.w.org/plugins/geopattern-icon/wp-translitera.svg\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}}}', 'no');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(27, 14, '_edit_lock', '1586526135:1'),
(32, 14, '_wp_page_template', 'page-home.php'),
(33, 19, '_edit_lock', '1585581558:1'),
(44, 26, '_wp_attached_file', '2020/03/logo.svg'),
(45, 26, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:0;s:6:\"height\";i:0;s:4:\"file\";s:17:\"/2020/03/logo.svg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:5:{s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";s:4:\"crop\";s:1:\"1\";s:4:\"file\";s:8:\"logo.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:6:\"medium\";a:5:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"crop\";b:0;s:4:\"file\";s:8:\"logo.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:12:\"medium_large\";a:5:{s:5:\"width\";s:3:\"768\";s:6:\"height\";s:1:\"0\";s:4:\"crop\";b:0;s:4:\"file\";s:8:\"logo.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:5:\"large\";a:5:{s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1024\";s:4:\"crop\";b:0;s:4:\"file\";s:8:\"logo.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"1536x1536\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:8:\"logo.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:9:\"2048x2048\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:8:\"logo.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}s:7:\"product\";a:5:{s:5:\"width\";b:0;s:6:\"height\";b:0;s:4:\"crop\";b:0;s:4:\"file\";s:8:\"logo.svg\";s:9:\"mime-type\";s:13:\"image/svg+xml\";}}}'),
(64, 29, '_menu_item_type', 'post_type'),
(65, 29, '_menu_item_menu_item_parent', '0'),
(66, 29, '_menu_item_object_id', '14'),
(67, 29, '_menu_item_object', 'page'),
(68, 29, '_menu_item_target', ''),
(69, 29, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(70, 29, '_menu_item_xfn', ''),
(71, 29, '_menu_item_url', ''),
(107, 14, 'inline_featured_image', '0'),
(108, 14, '_edit_last', '1'),
(194, 45, '_wp_attached_file', '2020/03/bg.jpg'),
(195, 45, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:900;s:4:\"file\";s:14:\"2020/03/bg.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"bg-300x141.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:141;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:15:\"bg-1024x480.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"bg-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"bg-768x360.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:360;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:15:\"bg-1536x720.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:720;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"product\";a:4:{s:4:\"file\";s:14:\"bg-500x313.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:313;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(230, 46, '_wp_attached_file', '2020/03/bg-1.jpg'),
(231, 46, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:960;s:6:\"height\";i:438;s:4:\"file\";s:16:\"2020/03/bg-1.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"bg-1-300x137.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:137;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"bg-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"bg-1-768x350.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"product\";a:4:{s:4:\"file\";s:16:\"bg-1-500x313.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:313;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(512, 14, '_crb_show_content', ''),
(522, 15, '_crb_show_content', ''),
(552, 14, '_is_contacts_img', 'test_value'),
(562, 15, '_is_contacts_img', 'test_value'),
(651, 47, '_wp_attached_file', '2020/03/1.png'),
(652, 47, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:351;s:6:\"height\";i:214;s:4:\"file\";s:13:\"2020/03/1.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"1-300x183.png\";s:5:\"width\";i:300;s:6:\"height\";i:183;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(653, 48, '_wp_attached_file', '2020/03/2.png'),
(654, 48, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:351;s:6:\"height\";i:214;s:4:\"file\";s:13:\"2020/03/2.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"2-300x183.png\";s:5:\"width\";i:300;s:6:\"height\";i:183;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(655, 49, '_wp_attached_file', '2020/03/3.png'),
(656, 49, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:351;s:6:\"height\";i:214;s:4:\"file\";s:13:\"2020/03/3.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"3-300x183.png\";s:5:\"width\";i:300;s:6:\"height\";i:183;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"3-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(657, 50, '_wp_attached_file', '2020/03/4.png'),
(658, 50, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:351;s:6:\"height\";i:214;s:4:\"file\";s:13:\"2020/03/4.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"4-300x183.png\";s:5:\"width\";i:300;s:6:\"height\";i:183;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"4-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(659, 19, 'inline_featured_image', '0'),
(660, 19, '_edit_last', '1'),
(669, 19, '_gallery|||0|value', '47'),
(670, 19, '_gallery|||1|value', '48'),
(671, 19, '_gallery|||2|value', '49'),
(672, 19, '_gallery|||3|value', '50'),
(673, 20, '_gallery|||0|value', '47'),
(674, 20, '_gallery|||1|value', '48'),
(675, 20, '_gallery|||2|value', '49'),
(676, 20, '_gallery|||3|value', '50'),
(693, 59, 'inline_featured_image', '0'),
(694, 59, '_edit_last', '1'),
(695, 59, '_edit_lock', '1585915012:1'),
(696, 59, '_thumbnail_id', '50'),
(697, 59, '_product_price', '850'),
(698, 59, '_product_attributes|||0|value', '_'),
(699, 59, '_product_attributes|||1|value', '_'),
(700, 59, '_product_attributes|||2|value', '_'),
(701, 59, '_product_attributes|name|0|0|value', '25 см'),
(702, 59, '_product_attributes|price|0|0|value', '899'),
(703, 59, '_product_attributes|name|1|0|value', '30 см'),
(704, 59, '_product_attributes|price|1|0|value', '950'),
(705, 59, '_product_attributes|name|2|0|value', '35 см'),
(706, 59, '_product_attributes|price|2|0|value', '1050'),
(708, 62, 'inline_featured_image', '0'),
(709, 62, '_edit_last', '1'),
(710, 62, '_edit_lock', '1585926213:1'),
(711, 62, '_thumbnail_id', '49'),
(722, 62, '_product_price', '1050'),
(723, 62, '_product_attributes|||0|value', '_'),
(724, 62, '_product_attributes|||1|value', '_'),
(725, 62, '_product_attributes|||2|value', '_'),
(726, 62, '_product_attributes|name|0|0|value', '25 см'),
(727, 62, '_product_attributes|price|0|0|value', '1050'),
(728, 62, '_product_attributes|name|1|0|value', '30 см'),
(729, 62, '_product_attributes|price|1|0|value', '1200'),
(730, 62, '_product_attributes|name|2|0|value', '35 см'),
(731, 62, '_product_attributes|price|2|0|value', '1400'),
(732, 63, 'inline_featured_image', '0'),
(733, 63, '_edit_last', '1'),
(734, 63, '_edit_lock', '1585926266:1'),
(735, 63, '_thumbnail_id', '48'),
(736, 63, '_product_price', '880'),
(737, 63, '_product_attributes|||0|value', '_'),
(738, 63, '_product_attributes|||1|value', '_'),
(739, 63, '_product_attributes|||2|value', '_'),
(740, 63, '_product_attributes|name|0|0|value', '25 см'),
(741, 63, '_product_attributes|price|0|0|value', '880'),
(742, 63, '_product_attributes|name|1|0|value', '30 см'),
(743, 63, '_product_attributes|price|1|0|value', '1000'),
(744, 63, '_product_attributes|name|2|0|value', '35 см'),
(745, 63, '_product_attributes|price|2|0|value', '1200'),
(746, 64, 'inline_featured_image', '0'),
(747, 64, '_edit_last', '1'),
(748, 64, '_edit_lock', '1585926315:1'),
(749, 64, '_thumbnail_id', '47'),
(750, 64, '_product_price', '1250'),
(751, 64, '_product_attributes|||0|value', '_'),
(752, 64, '_product_attributes|||1|value', '_'),
(753, 64, '_product_attributes|||2|value', '_'),
(754, 64, '_product_attributes|name|0|0|value', '25 см'),
(755, 64, '_product_attributes|price|0|0|value', '1250'),
(756, 64, '_product_attributes|name|1|0|value', '30 см'),
(757, 64, '_product_attributes|price|1|0|value', '1450'),
(758, 64, '_product_attributes|name|2|0|value', '35 см'),
(759, 64, '_product_attributes|price|2|0|value', '1550'),
(760, 65, 'inline_featured_image', '0'),
(761, 65, '_edit_last', '1'),
(762, 65, '_edit_lock', '1585926359:1'),
(763, 66, '_wp_attached_file', '2020/04/5.png'),
(764, 66, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:351;s:6:\"height\";i:214;s:4:\"file\";s:13:\"2020/04/5.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"5-300x183.png\";s:5:\"width\";i:300;s:6:\"height\";i:183;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"5-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(765, 65, '_thumbnail_id', '66'),
(766, 65, '_product_price', '890 '),
(767, 65, '_product_attributes|||0|value', '_'),
(768, 65, '_product_attributes|||1|value', '_'),
(769, 65, '_product_attributes|||2|value', '_'),
(770, 65, '_product_attributes|name|0|0|value', '25 см'),
(771, 65, '_product_attributes|price|0|0|value', '890 '),
(772, 65, '_product_attributes|name|1|0|value', '30 см'),
(773, 65, '_product_attributes|price|1|0|value', '1200'),
(774, 65, '_product_attributes|name|2|0|value', '35 см'),
(775, 65, '_product_attributes|price|2|0|value', '1400'),
(776, 67, 'inline_featured_image', '0'),
(777, 67, '_edit_last', '1'),
(778, 67, '_edit_lock', '1585926788:1'),
(782, 69, '_wp_attached_file', '2020/04/6.png'),
(783, 69, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:351;s:6:\"height\";i:214;s:4:\"file\";s:13:\"2020/04/6.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"6-300x183.png\";s:5:\"width\";i:300;s:6:\"height\";i:183;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"6-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(784, 67, '_thumbnail_id', '69'),
(785, 67, '_product_price', '550'),
(786, 67, '_product_attributes|||0|value', '_'),
(787, 67, '_product_attributes|||1|value', '_'),
(788, 67, '_product_attributes|||2|value', '_'),
(789, 67, '_product_attributes|name|0|0|value', '25 см'),
(790, 67, '_product_attributes|price|0|0|value', '550'),
(791, 67, '_product_attributes|name|1|0|value', '30 см'),
(792, 67, '_product_attributes|price|1|0|value', '750'),
(793, 67, '_product_attributes|name|2|0|value', '35 см'),
(794, 67, '_product_attributes|price|2|0|value', '900'),
(795, 70, '_wp_attached_file', '2020/04/7.png'),
(796, 70, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:351;s:6:\"height\";i:214;s:4:\"file\";s:13:\"2020/04/7.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"7-300x183.png\";s:5:\"width\";i:300;s:6:\"height\";i:183;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"7-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(808, 71, 'inline_featured_image', '0'),
(809, 71, '_edit_last', '1'),
(810, 71, '_edit_lock', '1585926942:1'),
(811, 72, '_wp_attached_file', '2020/04/8.png'),
(812, 72, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:351;s:6:\"height\";i:214;s:4:\"file\";s:13:\"2020/04/8.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"8-300x183.png\";s:5:\"width\";i:300;s:6:\"height\";i:183;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"8-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(813, 71, '_thumbnail_id', '72'),
(814, 71, '_product_price', '990'),
(815, 71, '_product_attributes|||0|value', '_'),
(816, 71, '_product_attributes|||1|value', '_'),
(817, 71, '_product_attributes|||2|value', '_'),
(818, 71, '_product_attributes|name|0|0|value', '25 см'),
(819, 71, '_product_attributes|price|0|0|value', '990'),
(820, 71, '_product_attributes|name|1|0|value', '30 см'),
(821, 71, '_product_attributes|price|1|0|value', '1200'),
(822, 71, '_product_attributes|name|2|0|value', '35 см'),
(823, 71, '_product_attributes|price|2|0|value', '1500'),
(827, 74, 'inline_featured_image', '0'),
(828, 75, 'inline_featured_image', '0'),
(829, 74, '_edit_last', '1'),
(830, 74, '_edit_lock', '1585927301:1'),
(831, 76, '_wp_attached_file', '2020/04/9.png'),
(832, 76, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:351;s:6:\"height\";i:214;s:4:\"file\";s:13:\"2020/04/9.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"9-300x183.png\";s:5:\"width\";i:300;s:6:\"height\";i:183;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"9-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(833, 74, '_thumbnail_id', '48'),
(834, 74, '_product_price', '950'),
(835, 74, '_product_attributes|||0|value', '_'),
(836, 74, '_product_attributes|||1|value', '_'),
(837, 74, '_product_attributes|||2|value', '_'),
(838, 74, '_product_attributes|name|0|0|value', '25 см'),
(839, 74, '_product_attributes|price|0|0|value', '950'),
(840, 74, '_product_attributes|name|1|0|value', '30 см'),
(841, 74, '_product_attributes|price|1|0|value', '1200'),
(842, 74, '_product_attributes|name|2|0|value', '35 см'),
(843, 74, '_product_attributes|price|2|0|value', '1400'),
(844, 75, '_edit_last', '1'),
(845, 75, '_thumbnail_id', '76'),
(853, 75, '_edit_lock', '1586527952:1'),
(867, 75, '_wp_old_slug', '75'),
(878, 77, 'inline_featured_image', '0'),
(879, 77, '_edit_last', '1'),
(880, 77, '_edit_lock', '1585927300:1'),
(881, 78, '_wp_attached_file', '2020/04/bottle.png'),
(882, 78, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1499;s:6:\"height\";i:940;s:4:\"file\";s:18:\"2020/04/bottle.png\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"bottle-300x188.png\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"bottle-1024x642.png\";s:5:\"width\";i:1024;s:6:\"height\";i:642;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"bottle-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"bottle-768x482.png\";s:5:\"width\";i:768;s:6:\"height\";i:482;s:9:\"mime-type\";s:9:\"image/png\";}s:7:\"product\";a:4:{s:4:\"file\";s:18:\"bottle-500x313.png\";s:5:\"width\";i:500;s:6:\"height\";i:313;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(883, 77, '_thumbnail_id', '78'),
(884, 77, '_product_price', '50'),
(885, 77, '_product_attributes|||0|value', '_'),
(886, 77, '_product_attributes|||1|value', '_'),
(887, 77, '_product_attributes|name|0|0|value', 'Маленький'),
(888, 77, '_product_attributes|price|0|0|value', '50'),
(889, 77, '_product_attributes|name|1|0|value', 'Большой'),
(890, 77, '_product_attributes|price|1|0|value', '80'),
(928, 81, 'inline_featured_image', '0'),
(929, 81, '_edit_last', '1'),
(930, 81, '_edit_lock', '1585927437:1'),
(931, 81, '_thumbnail_id', '78'),
(932, 81, '_product_price', '50'),
(933, 81, '_product_attributes|||0|value', '_'),
(934, 81, '_product_attributes|||1|value', '_'),
(935, 81, '_product_attributes|||2|value', '_'),
(936, 81, '_product_attributes|name|0|0|value', '0.3л'),
(937, 81, '_product_attributes|price|0|0|value', '50'),
(938, 81, '_product_attributes|name|1|0|value', '0.5л'),
(939, 81, '_product_attributes|price|1|0|value', '70'),
(940, 81, '_product_attributes|name|2|0|value', '1л'),
(941, 81, '_product_attributes|price|2|0|value', '100'),
(942, 82, 'inline_featured_image', '0'),
(943, 82, '_edit_last', '1'),
(944, 82, '_edit_lock', '1586792885:1'),
(945, 83, '_wp_attached_file', '2020/04/burger1.png'),
(946, 83, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1499;s:6:\"height\";i:940;s:4:\"file\";s:19:\"2020/04/burger1.png\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"burger1-300x188.png\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"burger1-1024x642.png\";s:5:\"width\";i:1024;s:6:\"height\";i:642;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"burger1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"burger1-768x482.png\";s:5:\"width\";i:768;s:6:\"height\";i:482;s:9:\"mime-type\";s:9:\"image/png\";}s:7:\"product\";a:4:{s:4:\"file\";s:19:\"burger1-500x313.png\";s:5:\"width\";i:500;s:6:\"height\";i:313;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(947, 82, '_thumbnail_id', '83'),
(948, 82, '_product_price', '220'),
(949, 82, '_product_attributes|||0|value', '_'),
(950, 82, '_product_attributes|||1|value', '_'),
(951, 82, '_product_attributes|name|0|0|value', 'Средний'),
(952, 82, '_product_attributes|price|0|0|value', '220'),
(953, 82, '_product_attributes|name|1|0|value', 'Большой'),
(954, 82, '_product_attributes|price|1|0|value', '350'),
(955, 84, 'inline_featured_image', '0'),
(956, 84, '_edit_last', '1'),
(957, 84, '_edit_lock', '1585927801:1'),
(958, 85, '_wp_attached_file', '2020/04/burger2.png'),
(959, 85, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1499;s:6:\"height\";i:940;s:4:\"file\";s:19:\"2020/04/burger2.png\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"burger2-300x188.png\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"burger2-1024x642.png\";s:5:\"width\";i:1024;s:6:\"height\";i:642;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"burger2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"burger2-768x482.png\";s:5:\"width\";i:768;s:6:\"height\";i:482;s:9:\"mime-type\";s:9:\"image/png\";}s:7:\"product\";a:4:{s:4:\"file\";s:19:\"burger2-500x313.png\";s:5:\"width\";i:500;s:6:\"height\";i:313;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(960, 84, '_thumbnail_id', '85'),
(968, 84, '_product_price', '350'),
(969, 84, '_product_attributes|||0|_empty', ''),
(1145, 19, '_wp_trash_meta_status', 'publish'),
(1146, 19, '_wp_trash_meta_time', '1586526151'),
(1147, 19, '_wp_desired_post_slug', 'test'),
(1148, 14, '_top_info', 'от итальянского повара'),
(1149, 14, '_top_title', 'Лучшая пицца в Москве'),
(1150, 14, '_top_btn_text', 'Выбрать'),
(1151, 14, '_top_btn_scroll_to', 'section-catalog'),
(1152, 14, '_top_img', '45'),
(1153, 14, '_catalog_title', 'Меню'),
(1154, 14, '_catalog_nav|||0|value', 'term:product-categories:8'),
(1155, 14, '_catalog_nav|||0|type', 'term'),
(1156, 14, '_catalog_nav|||0|subtype', 'product-categories'),
(1157, 14, '_catalog_nav|||0|id', '8'),
(1158, 14, '_catalog_nav|||1|value', 'term:product-categories:6'),
(1159, 14, '_catalog_nav|||1|type', 'term'),
(1160, 14, '_catalog_nav|||1|subtype', 'product-categories'),
(1161, 14, '_catalog_nav|||1|id', '6'),
(1162, 14, '_catalog_nav|||2|value', 'term:product-categories:9'),
(1163, 14, '_catalog_nav|||2|type', 'term'),
(1164, 14, '_catalog_nav|||2|subtype', 'product-categories'),
(1165, 14, '_catalog_nav|||2|id', '9'),
(1166, 14, '_catalog_nav|||3|value', 'term:product-categories:10'),
(1167, 14, '_catalog_nav|||3|type', 'term'),
(1168, 14, '_catalog_nav|||3|subtype', 'product-categories'),
(1169, 14, '_catalog_nav|||3|id', '10'),
(1170, 14, '_catalog_products|||0|value', 'post:product:71'),
(1171, 14, '_catalog_products|||0|type', 'post'),
(1172, 14, '_catalog_products|||0|subtype', 'product'),
(1173, 14, '_catalog_products|||0|id', '71'),
(1174, 14, '_catalog_products|||1|value', 'post:product:77'),
(1175, 14, '_catalog_products|||1|type', 'post'),
(1176, 14, '_catalog_products|||1|subtype', 'product'),
(1177, 14, '_catalog_products|||1|id', '77'),
(1178, 14, '_catalog_products|||2|value', 'post:product:65'),
(1179, 14, '_catalog_products|||2|type', 'post'),
(1180, 14, '_catalog_products|||2|subtype', 'product'),
(1181, 14, '_catalog_products|||2|id', '65'),
(1182, 14, '_catalog_products|||3|value', 'post:product:62'),
(1183, 14, '_catalog_products|||3|type', 'post'),
(1184, 14, '_catalog_products|||3|subtype', 'product'),
(1185, 14, '_catalog_products|||3|id', '62'),
(1186, 14, '_catalog_products|||4|value', 'post:product:75'),
(1187, 14, '_catalog_products|||4|type', 'post'),
(1188, 14, '_catalog_products|||4|subtype', 'product'),
(1189, 14, '_catalog_products|||4|id', '75'),
(1190, 14, '_catalog_products|||5|value', 'post:product:74'),
(1191, 14, '_catalog_products|||5|type', 'post'),
(1192, 14, '_catalog_products|||5|subtype', 'product'),
(1193, 14, '_catalog_products|||5|id', '74'),
(1194, 14, '_catalog_products|||6|value', 'post:product:82'),
(1195, 14, '_catalog_products|||6|type', 'post'),
(1196, 14, '_catalog_products|||6|subtype', 'product'),
(1197, 14, '_catalog_products|||6|id', '82'),
(1198, 14, '_catalog_products|||7|value', 'post:product:84'),
(1199, 14, '_catalog_products|||7|type', 'post'),
(1200, 14, '_catalog_products|||7|subtype', 'product'),
(1201, 14, '_catalog_products|||7|id', '84'),
(1202, 14, '_about_title', 'О нас'),
(1203, 14, '_about_text', '<p style=\"text-align: left;\">Доставим вам горячую пиццу менее чем за час или пицца бесплатно. Мы готовим пиццу только из свежих продуктов. Каждый день мы покупаем свежие овощи, грибы и мясо.<br /><br />Доставим вам горячую пиццу менее чем за час или пицца бесплатно. Мы готовим пиццу только из свежих продуктов. Каждый день мы покупаем свежие овощи, грибы и мясо.</p>'),
(1204, 14, '_about_img', '46'),
(1205, 14, '_contacts_title', 'Контакты'),
(1206, 14, '_contacts_is_img', ''),
(1207, 15, '_top_info', 'от итальянского повара'),
(1208, 15, '_top_title', 'Лучшая пицца в Москве'),
(1209, 15, '_top_btn_text', 'Выбрать'),
(1210, 15, '_top_btn_scroll_to', 'section-catalog'),
(1211, 15, '_top_img', '45'),
(1212, 15, '_catalog_title', 'Меню'),
(1213, 15, '_catalog_nav|||0|value', 'term:product-categories:8'),
(1214, 15, '_catalog_nav|||0|type', 'term'),
(1215, 15, '_catalog_nav|||0|subtype', 'product-categories'),
(1216, 15, '_catalog_nav|||0|id', '8'),
(1217, 15, '_catalog_nav|||1|value', 'term:product-categories:6'),
(1218, 15, '_catalog_nav|||1|type', 'term'),
(1219, 15, '_catalog_nav|||1|subtype', 'product-categories'),
(1220, 15, '_catalog_nav|||1|id', '6'),
(1221, 15, '_catalog_nav|||2|value', 'term:product-categories:9'),
(1222, 15, '_catalog_nav|||2|type', 'term'),
(1223, 15, '_catalog_nav|||2|subtype', 'product-categories'),
(1224, 15, '_catalog_nav|||2|id', '9'),
(1225, 15, '_catalog_nav|||3|value', 'term:product-categories:10'),
(1226, 15, '_catalog_nav|||3|type', 'term'),
(1227, 15, '_catalog_nav|||3|subtype', 'product-categories'),
(1228, 15, '_catalog_nav|||3|id', '10'),
(1229, 15, '_catalog_products|||0|value', 'post:product:71'),
(1230, 15, '_catalog_products|||0|type', 'post'),
(1231, 15, '_catalog_products|||0|subtype', 'product'),
(1232, 15, '_catalog_products|||0|id', '71'),
(1233, 15, '_catalog_products|||1|value', 'post:product:77'),
(1234, 15, '_catalog_products|||1|type', 'post'),
(1235, 15, '_catalog_products|||1|subtype', 'product'),
(1236, 15, '_catalog_products|||1|id', '77'),
(1237, 15, '_catalog_products|||2|value', 'post:product:65'),
(1238, 15, '_catalog_products|||2|type', 'post'),
(1239, 15, '_catalog_products|||2|subtype', 'product'),
(1240, 15, '_catalog_products|||2|id', '65'),
(1241, 15, '_catalog_products|||3|value', 'post:product:62'),
(1242, 15, '_catalog_products|||3|type', 'post'),
(1243, 15, '_catalog_products|||3|subtype', 'product'),
(1244, 15, '_catalog_products|||3|id', '62'),
(1245, 15, '_catalog_products|||4|value', 'post:product:75'),
(1246, 15, '_catalog_products|||4|type', 'post'),
(1247, 15, '_catalog_products|||4|subtype', 'product'),
(1248, 15, '_catalog_products|||4|id', '75'),
(1249, 15, '_catalog_products|||5|value', 'post:product:74'),
(1250, 15, '_catalog_products|||5|type', 'post'),
(1251, 15, '_catalog_products|||5|subtype', 'product'),
(1252, 15, '_catalog_products|||5|id', '74'),
(1253, 15, '_catalog_products|||6|value', 'post:product:82'),
(1254, 15, '_catalog_products|||6|type', 'post'),
(1255, 15, '_catalog_products|||6|subtype', 'product'),
(1256, 15, '_catalog_products|||6|id', '82'),
(1257, 15, '_catalog_products|||7|value', 'post:product:84'),
(1258, 15, '_catalog_products|||7|type', 'post'),
(1259, 15, '_catalog_products|||7|subtype', 'product'),
(1260, 15, '_catalog_products|||7|id', '84'),
(1261, 15, '_about_title', 'О нас'),
(1262, 15, '_about_text', '<p style=\"text-align: left;\">Доставим вам горячую пиццу менее чем за час или пицца бесплатно. Мы готовим пиццу только из свежих продуктов. Каждый день мы покупаем свежие овощи, грибы и мясо.<br /><br />Доставим вам горячую пиццу менее чем за час или пицца бесплатно. Мы готовим пиццу только из свежих продуктов. Каждый день мы покупаем свежие овощи, грибы и мясо.</p>'),
(1263, 15, '_about_img', '46'),
(1264, 15, '_contacts_title', 'Контакты'),
(1265, 15, '_contacts_is_img', ''),
(1286, 75, '_product_price', '950'),
(1287, 75, '_product_attributes|||0|value', '_'),
(1288, 75, '_product_attributes|||1|value', '_'),
(1289, 75, '_product_attributes|||2|value', '_'),
(1290, 75, '_product_attributes|name|0|0|value', '25 см'),
(1291, 75, '_product_attributes|price|0|0|value', '950'),
(1292, 75, '_product_attributes|name|1|0|value', '30 см'),
(1293, 75, '_product_attributes|price|1|0|value', '1200'),
(1294, 75, '_product_attributes|name|2|0|value', '35 см'),
(1295, 75, '_product_attributes|price|2|0|value', '1500'),
(1305, 88, 'inline_featured_image', '0'),
(1306, 88, '_edit_lock', '1586790340:1'),
(1307, 88, '_wp_page_template', 'page-about.php'),
(1308, 91, '_wp_attached_file', '2020/04/bg.jpg'),
(1309, 91, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:960;s:6:\"height\";i:438;s:4:\"file\";s:14:\"2020/04/bg.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"bg-300x137.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:137;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"bg-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"bg-768x350.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:7:\"product\";a:4:{s:4:\"file\";s:14:\"bg-500x313.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:313;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1310, 94, 'inline_featured_image', '0'),
(1311, 94, '_edit_lock', '1586790555:1'),
(1312, 94, '_wp_page_template', 'page-contacts.php'),
(1313, 96, 'inline_featured_image', '0'),
(1314, 96, '_edit_lock', '1586791343:1'),
(1360, 103, '_menu_item_type', 'post_type'),
(1361, 103, '_menu_item_menu_item_parent', '0'),
(1362, 103, '_menu_item_object_id', '94'),
(1363, 103, '_menu_item_object', 'page'),
(1364, 103, '_menu_item_target', ''),
(1365, 103, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1366, 103, '_menu_item_xfn', ''),
(1367, 103, '_menu_item_url', ''),
(1369, 104, '_menu_item_type', 'post_type'),
(1370, 104, '_menu_item_menu_item_parent', '0'),
(1371, 104, '_menu_item_object_id', '88'),
(1372, 104, '_menu_item_object', 'page'),
(1373, 104, '_menu_item_target', ''),
(1374, 104, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1375, 104, '_menu_item_xfn', ''),
(1376, 104, '_menu_item_url', ''),
(1378, 105, '_menu_item_type', 'post_type_archive'),
(1379, 105, '_menu_item_menu_item_parent', '0'),
(1380, 105, '_menu_item_object_id', '-21'),
(1381, 105, '_menu_item_object', 'product'),
(1382, 105, '_menu_item_target', ''),
(1383, 105, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1384, 105, '_menu_item_xfn', ''),
(1385, 105, '_menu_item_url', '');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(14, 1, '2020-03-13 21:32:10', '2020-03-13 18:32:10', '', 'Главная', '', 'publish', 'closed', 'closed', '', 'glavnaja', '', '', '2020-04-10 16:43:33', '2020-04-10 13:43:33', '', 0, 'http://localhost/pizzatime/?page_id=14', 0, 'page', '', 0),
(15, 1, '2020-03-13 21:32:10', '2020-03-13 18:32:10', '', 'Главная', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2020-03-13 21:32:10', '2020-03-13 18:32:10', '', 14, 'http://localhost/pizzatime/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/14-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2020-03-25 17:01:44', '2020-03-25 14:01:44', '', 'test', '', 'trash', 'closed', 'closed', '', 'test__trashed', '', '', '2020-04-10 16:42:31', '2020-04-10 13:42:31', '', 0, 'http://localhost/pizzatime/?page_id=19', 0, 'page', '', 0),
(20, 1, '2020-03-25 17:01:44', '2020-03-25 14:01:44', '', 'test', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2020-03-25 17:01:44', '2020-03-25 14:01:44', '', 19, 'http://localhost/pizzatime/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/19-revision-v1/', 0, 'revision', '', 0),
(26, 1, '2020-03-26 13:29:07', '2020-03-26 10:29:07', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2020-03-26 13:29:07', '2020-03-26 10:29:07', '', 0, 'http://localhost/pizzatime/wp-content/uploads/2020/03/logo.svg', 0, 'attachment', 'image/svg+xml', 0),
(29, 1, '2020-03-26 14:23:05', '2020-03-26 11:23:05', ' ', '', '', 'publish', 'closed', 'closed', '', '29', '', '', '2020-04-15 20:53:23', '2020-04-15 17:53:23', '', 0, 'http://localhost/pizzatime/?p=29', 1, 'nav_menu_item', '', 0),
(45, 1, '2020-03-30 17:34:04', '2020-03-30 14:34:04', '', 'bg', '', 'inherit', 'open', 'closed', '', 'bg', '', '', '2020-03-30 17:34:04', '2020-03-30 14:34:04', '', 14, 'http://localhost/pizzatime/wp-content/uploads/2020/03/bg.jpg', 0, 'attachment', 'image/jpeg', 0),
(46, 1, '2020-03-30 17:46:27', '2020-03-30 14:46:27', '', 'bg', '', 'inherit', 'open', 'closed', '', 'bg-2', '', '', '2020-03-30 17:46:27', '2020-03-30 14:46:27', '', 14, 'http://localhost/pizzatime/wp-content/uploads/2020/03/bg-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(47, 1, '2020-03-30 18:14:11', '2020-03-30 15:14:11', '', '1', '', 'inherit', 'open', 'closed', '', '1', '', '', '2020-03-30 18:14:11', '2020-03-30 15:14:11', '', 19, 'http://localhost/pizzatime/wp-content/uploads/2020/03/1.png', 0, 'attachment', 'image/png', 0),
(48, 1, '2020-03-30 18:14:11', '2020-03-30 15:14:11', '', '2', '', 'inherit', 'open', 'closed', '', '2', '', '', '2020-03-30 18:14:11', '2020-03-30 15:14:11', '', 19, 'http://localhost/pizzatime/wp-content/uploads/2020/03/2.png', 0, 'attachment', 'image/png', 0),
(49, 1, '2020-03-30 18:14:12', '2020-03-30 15:14:12', '', '3', '', 'inherit', 'open', 'closed', '', '3', '', '', '2020-03-30 18:14:12', '2020-03-30 15:14:12', '', 19, 'http://localhost/pizzatime/wp-content/uploads/2020/03/3.png', 0, 'attachment', 'image/png', 0),
(50, 1, '2020-03-30 18:14:13', '2020-03-30 15:14:13', '', '4', '', 'inherit', 'open', 'closed', '', '4', '', '', '2020-03-30 18:14:13', '2020-03-30 15:14:13', '', 19, 'http://localhost/pizzatime/wp-content/uploads/2020/03/4.png', 0, 'attachment', 'image/png', 0),
(59, 1, '2020-04-03 14:30:09', '2020-04-03 11:30:09', 'Салями, картофель и морковь, огурцы маринованные, моцарелла, цыпленок, ветчина и французский соус. Салями, картофель и морковь, огурцы маринованные, моцарелла, цыпленок, ветчина и французский соус. Салями, картофель и морковь, огурцы маринованные, моцарелла, цыпленок, ветчина и французский соус. Салями, картофель и морковь, огурцы маринованные, моцарелла, цыпленок, ветчина и французский соус. Салями, картофель и морковь, огурцы маринованные, моцарелла, цыпленок, ветчина и французский соус', 'Салями', 'Салями, картофель и морковь, огурцы маринованные, моцарелла, цыпленок, ветчина и французский соус', 'publish', 'closed', 'closed', '', 'saljami', '', '', '2020-04-03 14:59:13', '2020-04-03 11:59:13', '', 0, 'http://localhost/pizzatime/?post_type=product&#038;p=59', 0, 'product', '', 0),
(62, 1, '2020-04-03 15:00:37', '2020-04-03 12:00:37', 'Картофель и морковь, огурцы маринованные, моцарелла, цыпленок, ветчина и французский соус', 'Хит', 'Картофель и морковь, огурцы маринованные, моцарелла, цыпленок, ветчина и французский соус', 'publish', 'closed', 'closed', '', 'hit', '', '', '2020-04-03 18:05:52', '2020-04-03 15:05:52', '', 0, 'http://localhost/pizzatime/?post_type=product&#038;p=62', 0, 'product', '', 0),
(63, 1, '2020-04-03 18:06:47', '2020-04-03 15:06:47', 'Салями, картофель и морковь, огурцы маринованные, моцарелла, цыпленок, ветчина и французский соус', 'Ветчина-грибы', 'Салями, картофель и морковь, огурцы маринованные, моцарелла, цыпленок, ветчина и французский соус', 'publish', 'closed', 'closed', '', 'vetchina-griby', '', '', '2020-04-03 18:06:47', '2020-04-03 15:06:47', '', 0, 'http://localhost/pizzatime/?post_type=product&#038;p=63', 0, 'product', '', 0),
(64, 1, '2020-04-03 18:07:34', '2020-04-03 15:07:34', 'Салями, картофель и морковь, огурцы маринованные, моцарелла, цыпленок, ветчина и французский соус', 'Карбонара', 'Салями, картофель и морковь, огурцы маринованные, моцарелла, цыпленок, ветчина и французский соус', 'publish', 'closed', 'closed', '', 'karbonara', '', '', '2020-04-03 18:07:34', '2020-04-03 15:07:34', '', 0, 'http://localhost/pizzatime/?post_type=product&#038;p=64', 0, 'product', '', 0),
(65, 1, '2020-04-03 18:08:22', '2020-04-03 15:08:22', 'Томатно-сливочный соус, бекон, моцарелла', 'Фирменная', 'Томатно-сливочный соус, бекон, моцарелла', 'publish', 'closed', 'closed', '', 'firmennaja', '', '', '2020-04-03 18:08:22', '2020-04-03 15:08:22', '', 0, 'http://localhost/pizzatime/?post_type=product&#038;p=65', 0, 'product', '', 0),
(66, 1, '2020-04-03 18:08:19', '2020-04-03 15:08:19', '', '5', '', 'inherit', 'open', 'closed', '', '5', '', '', '2020-04-03 18:08:19', '2020-04-03 15:08:19', '', 65, 'http://localhost/pizzatime/wp-content/uploads/2020/04/5.png', 0, 'attachment', 'image/png', 0),
(67, 1, '2020-04-03 18:15:27', '2020-04-03 15:15:27', 'Картофель моцарелла, цыпленок, грибы, ветчина и французский соус', 'Ассорти', 'Картофель моцарелла, цыпленок, грибы, ветчина и французский соус', 'publish', 'closed', 'closed', '', 'assorti', '', '', '2020-04-03 18:15:27', '2020-04-03 15:15:27', '', 0, 'http://localhost/pizzatime/?post_type=product&#038;p=67', 0, 'product', '', 0),
(69, 1, '2020-04-03 18:15:03', '2020-04-03 15:15:03', '', '6', '', 'inherit', 'open', 'closed', '', '6', '', '', '2020-04-03 18:15:03', '2020-04-03 15:15:03', '', 67, 'http://localhost/pizzatime/wp-content/uploads/2020/04/6.png', 0, 'attachment', 'image/png', 0),
(70, 1, '2020-04-03 18:16:06', '2020-04-03 15:16:06', '', '7', '', 'inherit', 'open', 'closed', '', '7', '', '', '2020-04-03 18:16:06', '2020-04-03 15:16:06', '', 0, 'http://localhost/pizzatime/wp-content/uploads/2020/04/7.png', 0, 'attachment', 'image/png', 0),
(71, 1, '2020-04-03 18:16:50', '2020-04-03 15:16:50', 'Чеддер, камамбер, эдам', 'Три сыра', 'Чеддер, камамбер, эдам', 'publish', 'closed', 'closed', '', 'tri-syra', '', '', '2020-04-03 18:16:50', '2020-04-03 15:16:50', '', 0, 'http://localhost/pizzatime/?post_type=product&#038;p=71', 0, 'product', '', 0),
(72, 1, '2020-04-03 18:16:46', '2020-04-03 15:16:46', '', '8', '', 'inherit', 'open', 'closed', '', '8', '', '', '2020-04-03 18:16:46', '2020-04-03 15:16:46', '', 71, 'http://localhost/pizzatime/wp-content/uploads/2020/04/8.png', 0, 'attachment', 'image/png', 0),
(74, 1, '2020-04-03 18:17:47', '2020-04-03 15:17:47', 'Курица, говядина, сливочный соус, салями, огурцы маринованные, томаты, грибы, бекон', 'Мясная', 'Курица, говядина, сливочный соус, салями, огурцы маринованные, томаты, грибы, бекон', 'publish', 'closed', 'closed', '', 'mjasnaja', '', '', '2020-04-03 18:17:47', '2020-04-03 15:17:47', '', 0, 'http://localhost/pizzatime/?post_type=product&#038;p=74', 0, 'product', '', 0),
(75, 1, '2020-04-03 18:17:48', '2020-04-03 15:17:48', 'Курица, говядина, сливочный соус, салями, огурцы маринованные, томаты, грибы, бекон', 'Л-01', 'Курица, говядина, сливочный соус, салями, огурцы маринованные, томаты, грибы, бекон', 'publish', 'closed', 'closed', '', 'l-01', '', '', '2020-04-10 17:04:15', '2020-04-10 14:04:15', '', 0, 'http://localhost/pizzatime/?post_type=product&#038;p=75', 0, 'product', '', 0),
(76, 1, '2020-04-03 18:17:26', '2020-04-03 15:17:26', '', '9', '', 'inherit', 'open', 'closed', '', '9', '', '', '2020-04-03 18:17:26', '2020-04-03 15:17:26', '', 75, 'http://localhost/pizzatime/wp-content/uploads/2020/04/9.png', 0, 'attachment', 'image/png', 0),
(77, 1, '2020-04-03 18:24:02', '2020-04-03 15:24:02', 'Апельсиновый сок', 'Сок', 'Апельсиновый сок', 'publish', 'closed', 'closed', '', 'sok', '', '', '2020-04-03 18:24:02', '2020-04-03 15:24:02', '', 0, 'http://localhost/pizzatime/?post_type=product&#038;p=77', 0, 'product', '', 0),
(78, 1, '2020-04-03 18:21:41', '2020-04-03 15:21:41', '', 'bottle', '', 'inherit', 'open', 'closed', '', 'bottle', '', '', '2020-04-03 18:21:41', '2020-04-03 15:21:41', '', 77, 'http://localhost/pizzatime/wp-content/uploads/2020/04/bottle.png', 0, 'attachment', 'image/png', 0),
(81, 1, '2020-04-03 18:26:09', '2020-04-03 15:26:09', 'Питьевая вода  ', 'Вода', 'Питьевая вода  ', 'publish', 'closed', 'closed', '', 'voda', '', '', '2020-04-03 18:26:09', '2020-04-03 15:26:09', '', 0, 'http://localhost/pizzatime/?post_type=product&#038;p=81', 0, 'product', '', 0),
(82, 1, '2020-04-03 18:27:03', '2020-04-03 15:27:03', 'Картофель и морковь, огурцы маринованные, моцарелла, цыпленок, ветчина и французский соус. Картофель и морковь, огурцы маринованные, моцарелла, цыпленок, ветчина и французский соус. Картофель и морковь, огурцы маринованные, моцарелла, цыпленок, ветчина и французский соус. Картофель и морковь, огурцы маринованные, моцарелла, цыпленок, ветчина и французский соус. Картофель и морковь, огурцы маринованные, моцарелла, цыпленок, ветчина и французский соус. Картофель и морковь, огурцы маринованные, моцарелла, цыпленок, ветчина и французский соус. Картофель и морковь, огурцы маринованные, моцарелла, цыпленок, ветчина и французский соус. Картофель и морковь, огурцы маринованные, моцарелла, цыпленок, ветчина и французский соус. Картофель и морковь, огурцы маринованные, моцарелла, цыпленок, ветчина и французский соус. Картофель и морковь, огурцы маринованные, моцарелла, цыпленок, ветчина и французский соус. ', 'Бургер', 'Картофель и морковь, огурцы маринованные, моцарелла, цыпленок, ветчина и французский соус', 'publish', 'closed', 'closed', '', 'burger', '', '', '2020-04-03 18:27:03', '2020-04-03 15:27:03', '', 0, 'http://localhost/pizzatime/?post_type=product&#038;p=82', 0, 'product', '', 0),
(83, 1, '2020-04-03 18:26:57', '2020-04-03 15:26:57', '', 'burger1', '', 'inherit', 'open', 'closed', '', 'burger1', '', '', '2020-04-03 18:26:57', '2020-04-03 15:26:57', '', 82, 'http://localhost/pizzatime/wp-content/uploads/2020/04/burger1.png', 0, 'attachment', 'image/png', 0),
(84, 1, '2020-04-03 18:28:51', '2020-04-03 15:28:51', 'Томатно-сливочный соус, бекон, моцарелла. Томатно-сливочный соус, бекон, моцарелла. Томатно-сливочный соус, бекон, моцарелла. Томатно-сливочный соус, бекон, моцарелла. Томатно-сливочный соус, бекон, моцарелла. Томатно-сливочный соус, бекон, моцарелла. Томатно-сливочный соус, бекон, моцарелла. Томатно-сливочный соус, бекон, моцарелла. Томатно-сливочный соус, бекон, моцарелла. Томатно-сливочный соус, бекон, моцарелла.Томатно-сливочный соус, бекон, моцарелла. Томатно-сливочный соус, бекон, моцарелла. Томатно-сливочный соус, бекон, моцарелла. Томатно-сливочный соус, бекон, моцарелла. Томатно-сливочный соус, бекон, моцарелла.Томатно-сливочный соус, бекон, моцарелла. Томатно-сливочный соус, бекон, моцарелла. Томатно-сливочный соус, бекон, моцарелла. Томатно-сливочный соус, бекон, моцарелла. Томатно-сливочный соус, бекон, моцарелла.Томатно-сливочный соус, бекон, моцарелла. Томатно-сливочный соус, бекон, моцарелла. Томатно-сливочный соус, бекон, моцарелла. Томатно-сливочный соус, бекон, моцарелла. Томатно-сливочный соус, бекон, моцарелла.Томатно-сливочный соус, бекон, моцарелла. Томатно-сливочный соус, бекон, моцарелла. Томатно-сливочный соус, бекон, моцарелла. Томатно-сливочный соус, бекон, моцарелла. Томатно-сливочный соус, бекон, моцарелла.', 'Острый', 'Томатно-сливочный соус, бекон, моцарелла. Томатно-сливочный соус, бекон, моцарелла.', 'publish', 'closed', 'closed', '', 'ostryj', '', '', '2020-04-03 18:32:10', '2020-04-03 15:32:10', '', 0, 'http://localhost/pizzatime/?post_type=product&#038;p=84', 0, 'product', '', 0),
(85, 1, '2020-04-03 18:28:44', '2020-04-03 15:28:44', '', 'burger2', '', 'inherit', 'open', 'closed', '', 'burger2', '', '', '2020-04-03 18:28:44', '2020-04-03 15:28:44', '', 84, 'http://localhost/pizzatime/wp-content/uploads/2020/04/burger2.png', 0, 'attachment', 'image/png', 0),
(88, 1, '2020-04-13 17:41:30', '2020-04-13 14:41:30', '<!-- wp:image {\"id\":91,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/pizzatime/wp-content/uploads/2020/04/bg.jpg\" alt=\"\" class=\"wp-image-91\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p> Доставим вам горячую пиццу менее чем за час или пицца бесплатно. Мы готовим пиццу только из свежих продуктов. Каждый день мы покупаем свежие овощи, грибы и мясо.Доставим вам горячую пиццу менее чем за час или пицца бесплатно. Мы готовим пиццу только из свежих продуктов. Каждый день мы покупаем свежие овощи, грибы и мясо. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"align\":\"left\",\"id\":76,\"sizeSlug\":\"large\"} -->\n<div class=\"wp-block-image\"><figure class=\"alignleft size-large\"><img src=\"http://localhost/pizzatime/wp-content/uploads/2020/04/9.png\" alt=\"\" class=\"wp-image-76\"/></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p> Доставим вам горячую пиццу менее чем за час или пицца бесплатно. Мы готовим пиццу только из свежих продуктов. Каждый день мы покупаем свежие овощи, грибы и мясо.   Доставим вам горячую пиццу менее чем за час или пицца бесплатно. Мы готовим пиццу только из свежих продуктов. Каждый день мы покупаем свежие овощи, грибы и мясо.   Доставим вам горячую пиццу менее чем за час или пицца бесплатно. Мы готовим пиццу только из свежих продуктов. Каждый день мы покупаем свежие овощи, грибы и мясо.   Доставим вам горячую пиццу менее чем за час или пицца бесплатно. Мы готовим пиццу только из свежих продуктов. Каждый день мы покупаем свежие овощи, грибы и мясо.  </p>\n<!-- /wp:paragraph -->', 'О нас', '', 'publish', 'closed', 'closed', '', 'o-nas', '', '', '2020-04-13 17:53:00', '2020-04-13 14:53:00', '', 0, 'http://localhost/pizzatime/?page_id=88', 0, 'page', '', 0),
(89, 1, '2020-04-13 17:41:30', '2020-04-13 14:41:30', '', 'О нас', '', 'inherit', 'closed', 'closed', '', '88-revision-v1', '', '', '2020-04-13 17:41:30', '2020-04-13 14:41:30', '', 88, 'http://localhost/pizzatime/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/88-revision-v1/', 0, 'revision', '', 0),
(90, 1, '2020-04-13 17:42:51', '2020-04-13 14:42:51', '<!-- wp:paragraph -->\n<p>\n\nДоставим вам горячую пиццу менее чем за час или пицца&nbsp;бесплатно. Мы готовим пиццу только из свежих продуктов. Каждый день мы покупаем свежие овощи, грибы и мясо.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Доставим вам горячую пиццу менее чем за час или пицца&nbsp;бесплатно. Мы готовим пиццу только из свежих продуктов. Каждый день мы покупаем свежие овощи, грибы и мясо.\n\n</p>\n<!-- /wp:paragraph -->', 'О нас', '', 'inherit', 'closed', 'closed', '', '88-revision-v1', '', '', '2020-04-13 17:42:51', '2020-04-13 14:42:51', '', 88, 'http://localhost/pizzatime/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/88-revision-v1/', 0, 'revision', '', 0),
(91, 1, '2020-04-13 17:48:14', '2020-04-13 14:48:14', '', 'bg', '', 'inherit', 'open', 'closed', '', 'bg-3', '', '', '2020-04-13 17:48:14', '2020-04-13 14:48:14', '', 88, 'http://localhost/pizzatime/wp-content/uploads/2020/04/bg.jpg', 0, 'attachment', 'image/jpeg', 0),
(92, 1, '2020-04-13 17:49:34', '2020-04-13 14:49:34', '<!-- wp:image {\"id\":91,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/pizzatime/wp-content/uploads/2020/04/bg.jpg\" alt=\"\" class=\"wp-image-91\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>\n\nДоставим вам горячую пиццу менее чем за час или пицца&nbsp;бесплатно. Мы готовим пиццу только из свежих продуктов. Каждый день мы покупаем свежие овощи, грибы и мясо.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Доставим вам горячую пиццу менее чем за час или пицца бесплатно. Мы готовим пиццу только из свежих продуктов. Каждый день мы покупаем свежие овощи, грибы и мясо. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"align\":\"left\",\"id\":76,\"sizeSlug\":\"large\"} -->\n<div class=\"wp-block-image\"><figure class=\"alignleft size-large\"><img src=\"http://localhost/pizzatime/wp-content/uploads/2020/04/9.png\" alt=\"\" class=\"wp-image-76\"/></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p> Доставим вам горячую пиццу менее чем за час или пицца бесплатно. Мы готовим пиццу только из свежих продуктов. Каждый день мы покупаем свежие овощи, грибы и мясо.   Доставим вам горячую пиццу менее чем за час или пицца бесплатно. Мы готовим пиццу только из свежих продуктов. Каждый день мы покупаем свежие овощи, грибы и мясо.   Доставим вам горячую пиццу менее чем за час или пицца бесплатно. Мы готовим пиццу только из свежих продуктов. Каждый день мы покупаем свежие овощи, грибы и мясо.   Доставим вам горячую пиццу менее чем за час или пицца бесплатно. Мы готовим пиццу только из свежих продуктов. Каждый день мы покупаем свежие овощи, грибы и мясо.  </p>\n<!-- /wp:paragraph -->', 'О нас', '', 'inherit', 'closed', 'closed', '', '88-revision-v1', '', '', '2020-04-13 17:49:34', '2020-04-13 14:49:34', '', 88, 'http://localhost/pizzatime/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/88-revision-v1/', 0, 'revision', '', 0),
(93, 1, '2020-04-13 17:53:00', '2020-04-13 14:53:00', '<!-- wp:image {\"id\":91,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/pizzatime/wp-content/uploads/2020/04/bg.jpg\" alt=\"\" class=\"wp-image-91\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p> Доставим вам горячую пиццу менее чем за час или пицца бесплатно. Мы готовим пиццу только из свежих продуктов. Каждый день мы покупаем свежие овощи, грибы и мясо.Доставим вам горячую пиццу менее чем за час или пицца бесплатно. Мы готовим пиццу только из свежих продуктов. Каждый день мы покупаем свежие овощи, грибы и мясо. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"align\":\"left\",\"id\":76,\"sizeSlug\":\"large\"} -->\n<div class=\"wp-block-image\"><figure class=\"alignleft size-large\"><img src=\"http://localhost/pizzatime/wp-content/uploads/2020/04/9.png\" alt=\"\" class=\"wp-image-76\"/></figure></div>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p> Доставим вам горячую пиццу менее чем за час или пицца бесплатно. Мы готовим пиццу только из свежих продуктов. Каждый день мы покупаем свежие овощи, грибы и мясо.   Доставим вам горячую пиццу менее чем за час или пицца бесплатно. Мы готовим пиццу только из свежих продуктов. Каждый день мы покупаем свежие овощи, грибы и мясо.   Доставим вам горячую пиццу менее чем за час или пицца бесплатно. Мы готовим пиццу только из свежих продуктов. Каждый день мы покупаем свежие овощи, грибы и мясо.   Доставим вам горячую пиццу менее чем за час или пицца бесплатно. Мы готовим пиццу только из свежих продуктов. Каждый день мы покупаем свежие овощи, грибы и мясо.  </p>\n<!-- /wp:paragraph -->', 'О нас', '', 'inherit', 'closed', 'closed', '', '88-revision-v1', '', '', '2020-04-13 17:53:00', '2020-04-13 14:53:00', '', 88, 'http://localhost/pizzatime/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/88-revision-v1/', 0, 'revision', '', 0),
(94, 1, '2020-04-13 18:08:17', '2020-04-13 15:08:17', '', 'Контакты', '', 'publish', 'closed', 'closed', '', 'kontakty', '', '', '2020-04-13 18:08:17', '2020-04-13 15:08:17', '', 0, 'http://localhost/pizzatime/?page_id=94', 0, 'page', '', 0),
(95, 1, '2020-04-13 18:08:17', '2020-04-13 15:08:17', '', 'Контакты', '', 'inherit', 'closed', 'closed', '', '94-revision-v1', '', '', '2020-04-13 18:08:17', '2020-04-13 15:08:17', '', 94, 'http://localhost/pizzatime/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/94-revision-v1/', 0, 'revision', '', 0),
(96, 1, '2020-04-13 18:12:44', '2020-04-13 15:12:44', '<!-- wp:paragraph -->\n<p>\n\nДоставим вам горячую пиццу менее чем за час или пицца&nbsp;бесплатно. Мы готовим пиццу только из свежих продуктов. Каждый день мы покупаем свежие овощи, грибы и мясо.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>\n\nДоставим вам горячую пиццу менее чем за час или пицца&nbsp;бесплатно. Мы готовим пиццу только из свежих продуктов. Каждый день мы покупаем свежие овощи, грибы и мясо.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Доставим вам горячую пиццу менее чем за час или пицца&nbsp;бесплатно. Мы готовим пиццу только из свежих продуктов. Каждый день мы покупаем свежие овощи, грибы и мясо.\n\n</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Доставим вам горячую пиццу менее чем за час или пицца бесплатно. Мы готовим пиццу только из свежих продуктов. Каждый день мы покупаем свежие овощи, грибы и мясо. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":91,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/pizzatime/wp-content/uploads/2020/04/bg.jpg\" alt=\"\" class=\"wp-image-91\"/></figure>\n<!-- /wp:image -->', 'История компании', '', 'publish', 'closed', 'closed', '', 'istorija-kompanii', '', '', '2020-04-13 18:12:44', '2020-04-13 15:12:44', '', 0, 'http://localhost/pizzatime/?page_id=96', 0, 'page', '', 0),
(97, 1, '2020-04-13 18:12:44', '2020-04-13 15:12:44', '<!-- wp:paragraph -->\n<p>\n\nДоставим вам горячую пиццу менее чем за час или пицца&nbsp;бесплатно. Мы готовим пиццу только из свежих продуктов. Каждый день мы покупаем свежие овощи, грибы и мясо.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>\n\nДоставим вам горячую пиццу менее чем за час или пицца&nbsp;бесплатно. Мы готовим пиццу только из свежих продуктов. Каждый день мы покупаем свежие овощи, грибы и мясо.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Доставим вам горячую пиццу менее чем за час или пицца&nbsp;бесплатно. Мы готовим пиццу только из свежих продуктов. Каждый день мы покупаем свежие овощи, грибы и мясо.\n\n</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Доставим вам горячую пиццу менее чем за час или пицца бесплатно. Мы готовим пиццу только из свежих продуктов. Каждый день мы покупаем свежие овощи, грибы и мясо. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":91,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/pizzatime/wp-content/uploads/2020/04/bg.jpg\" alt=\"\" class=\"wp-image-91\"/></figure>\n<!-- /wp:image -->', 'История компании', '', 'inherit', 'closed', 'closed', '', '96-revision-v1', '', '', '2020-04-13 18:12:44', '2020-04-13 15:12:44', '', 96, 'http://localhost/pizzatime/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/96-revision-v1/', 0, 'revision', '', 0),
(103, 1, '2020-04-15 20:53:23', '2020-04-15 17:53:23', ' ', '', '', 'publish', 'closed', 'closed', '', '103', '', '', '2020-04-15 20:53:23', '2020-04-15 17:53:23', '', 0, 'http://localhost/pizzatime/?p=103', 4, 'nav_menu_item', '', 0),
(104, 1, '2020-04-15 20:53:23', '2020-04-15 17:53:23', ' ', '', '', 'publish', 'closed', 'closed', '', '104', '', '', '2020-04-15 20:53:23', '2020-04-15 17:53:23', '', 0, 'http://localhost/pizzatime/?p=104', 3, 'nav_menu_item', '', 0),
(105, 1, '2020-04-15 20:53:23', '2020-04-15 17:53:23', ' ', '', '', 'publish', 'closed', 'closed', '', '105', '', '', '2020-04-15 20:53:23', '2020-04-15 17:53:23', '', 0, 'http://localhost/pizzatime/?p=105', 2, 'nav_menu_item', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Без рубрики', '%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8', 0),
(4, 'Меню в шапке', 'menju-v-shapke', 0),
(5, 'Пицца', 'picca', 0),
(6, 'Мясные', 'mjasnye', 0),
(7, 'Сырные', 'syrnye', 0),
(8, 'Грибные', 'gribnye', 0),
(9, 'Напитки', 'napitki', 0),
(10, 'Бургеры', 'burgery', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(29, 4, 0),
(59, 8, 0),
(62, 6, 0),
(63, 7, 0),
(64, 8, 0),
(65, 6, 0),
(67, 7, 0),
(71, 6, 0),
(74, 6, 0),
(75, 6, 0),
(75, 8, 0),
(77, 9, 0),
(81, 9, 0),
(82, 10, 0),
(84, 10, 0),
(103, 4, 0),
(104, 4, 0),
(105, 4, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(4, 4, 'nav_menu', '', 0, 4),
(5, 5, 'product-categories', '', 0, 0),
(6, 6, 'product-categories', '', 5, 5),
(7, 7, 'product-categories', '', 5, 2),
(8, 8, 'product-categories', '', 5, 3),
(9, 9, 'product-categories', '', 0, 2),
(10, 10, 'product-categories', '', 0, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'pizzatime'),
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
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:2:{s:64:\"c06d53e6835794057268e3bc8e78f8ac617d09be4b4cecea779d4896424031d0\";a:4:{s:10:\"expiration\";i:1586782392;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36\";s:5:\"login\";i:1585572792;}s:64:\"458fc3ef548640862c76a18c6ce817fc3b2275a983ad30b98e24305265418cea\";a:4:{s:10:\"expiration\";i:1587056005;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36\";s:5:\"login\";i:1585846405;}}'),
(17, 1, 'wp_user-settings', 'libraryContent=browse&editor=html'),
(18, 1, 'wp_user-settings-time', '1585926922'),
(19, 1, 'wp_dashboard_quick_press_last_post_id', '86'),
(20, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(21, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(22, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(23, 1, 'nav_menu_recently_edited', '4'),
(24, 1, 'meta-box-order_page', 'a:3:{s:6:\"normal\";s:26:\"carbon_fields_container__1\";s:4:\"side\";s:0:\"\";s:8:\"advanced\";s:0:\"\";}'),
(25, 1, 'closedpostboxes_product', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(26, 1, 'metaboxhidden_product', 'a:1:{i:0;s:7:\"slugdiv\";}');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'pizzatime', '$P$BrLyf2XUcQr1Tc6uWtlnr3S0MgQBwv.', 'pizzatime', 'pizzatimesite@mail.ru', '', '2020-03-13 16:44:32', '', 0, 'pizzatime');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Индексы таблицы `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Индексы таблицы `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Индексы таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Индексы таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Индексы таблицы `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Индексы таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Индексы таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=616;

--
-- AUTO_INCREMENT для таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1387;

--
-- AUTO_INCREMENT для таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT для таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT для таблицы `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
