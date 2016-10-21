-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:8889
-- Generation Time: Oct 21, 2016 at 11:44 AM
-- Server version: 5.5.42
-- PHP Version: 5.6.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `maicon`
--

-- --------------------------------------------------------

--
-- Table structure for table `macommentmeta`
--

CREATE TABLE `macommentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `macomments`
--

CREATE TABLE `macomments` (
  `comment_ID` bigint(20) unsigned NOT NULL,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `macomments`
--

INSERT INTO `macomments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Um comentarista do WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2016-10-21 00:36:10', '2016-10-21 02:36:10', 'Olá, isso é um comentário.\nPara começar a moderar, editar e deletar comentários, visite a tela de Comentários no painel.\nAvatares de comentaristas vêm a partir do <a href="https://gravatar.com">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `malinks`
--

CREATE TABLE `malinks` (
  `link_id` bigint(20) unsigned NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `maoptions`
--

CREATE TABLE `maoptions` (
  `option_id` bigint(20) unsigned NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB AUTO_INCREMENT=138 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `maoptions`
--

INSERT INTO `maoptions` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://maicon.local', 'yes'),
(2, 'home', 'http://maicon.local', 'yes'),
(3, 'blogname', 'maicon', 'yes'),
(4, 'blogdescription', 'Só mais um site WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'lsilveriomarques@gmail.com', 'yes'),
(7, 'start_of_week', '0', 'yes'),
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
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j \\d\\e F \\d\\e Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'j \\d\\e F \\d\\e Y, H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '', 'yes'),
(29, 'rewrite_rules', '', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:0:{}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'twentysixteen', 'yes'),
(41, 'stylesheet', 'twentysixteen', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '37965', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
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
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', 'America/Bahia', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '37965', 'yes'),
(92, 'mauser_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'WPLANG', 'pt_BR', 'yes'),
(94, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'cron', 'a:7:{i:1477017404;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1477017419;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1477018601;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1477018945;a:1:{s:8:"do_pings";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}}i:1477025362;a:1:{s:26:"upgrader_scheduled_cleanup";a:1:{s:32:"adcb9b75260590ff6058773ddcb9ddd6";a:2:{s:8:"schedule";b:0;s:4:"args";a:1:{i:0;i:4;}}}}i:1477025580;a:1:{s:26:"upgrader_scheduled_cleanup";a:1:{s:32:"c9059feef497c200e69cb9956a81f005";a:2:{s:8:"schedule";b:0;s:4:"args";a:1:{i:0;i:5;}}}}s:7:"version";i:2;}', 'yes'),
(105, '_transient_doing_cron', '1477043041.7822530269622802734375', 'yes'),
(106, '_site_transient_update_core', 'O:8:"stdClass":3:{s:7:"updates";a:0:{}s:15:"version_checked";s:5:"4.6.1";s:12:"last_checked";i:1477018383;}', 'no'),
(107, '_site_transient_update_plugins', 'O:8:"stdClass":1:{s:12:"last_checked";i:1477018389;}', 'no'),
(111, 'can_compress_scripts', '1', 'no'),
(114, 'widget_widget_twentyfourteen_ephemera', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(118, '_transient_twentyfourteen_category_count', '1', 'yes'),
(119, '_site_transient_timeout_wporg_theme_feature_list', '1477029096', 'no'),
(120, '_site_transient_wporg_theme_feature_list', 'a:3:{s:6:"Layout";a:7:{i:0;s:11:"grid-layout";i:1;s:10:"one-column";i:2;s:11:"two-columns";i:3;s:13:"three-columns";i:4;s:12:"four-columns";i:5;s:12:"left-sidebar";i:6;s:13:"right-sidebar";}s:8:"Features";a:20:{i:0;s:19:"accessibility-ready";i:1;s:10:"buddypress";i:2;s:17:"custom-background";i:3;s:13:"custom-colors";i:4;s:13:"custom-header";i:5;s:11:"custom-menu";i:6;s:12:"editor-style";i:7;s:21:"featured-image-header";i:8;s:15:"featured-images";i:9;s:15:"flexible-header";i:10;s:14:"footer-widgets";i:11;s:20:"front-page-post-form";i:12;s:19:"full-width-template";i:13;s:12:"microformats";i:14;s:12:"post-formats";i:15;s:20:"rtl-language-support";i:16;s:11:"sticky-post";i:17;s:13:"theme-options";i:18;s:17:"threaded-comments";i:19;s:17:"translation-ready";}s:7:"Subject";a:9:{i:0;s:4:"blog";i:1;s:10:"e-commerce";i:2;s:9:"education";i:3;s:13:"entertainment";i:4;s:14:"food-and-drink";i:5;s:7:"holiday";i:6;s:4:"news";i:7;s:11:"photography";i:8;s:9:"portfolio";}}', 'no'),
(124, '_site_transient_update_themes', 'O:8:"stdClass":1:{s:12:"last_checked";i:1477042549;}', 'no'),
(134, '_site_transient_timeout_theme_roots', '1477044349', 'no'),
(135, '_site_transient_theme_roots', 'a:5:{s:9:"first-mag";s:7:"/themes";s:7:"techmag";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";s:14:"twentyfourteen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";}', 'no'),
(136, 'theme_mods_twentysixteen', 'a:1:{s:18:"nav_menu_locations";a:2:{s:7:"primary";i:3;s:6:"social";i:0;}}', 'yes'),
(137, 'nav_menu_options', 'a:1:{s:8:"auto_add";a:0:{}}', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `mapostmeta`
--

CREATE TABLE `mapostmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mapostmeta`
--

INSERT INTO `mapostmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(6, 2, '_edit_lock', '1477042249:1'),
(7, 6, '_edit_last', '1'),
(8, 6, '_edit_lock', '1477019061:1'),
(9, 8, '_edit_last', '1'),
(10, 8, '_edit_lock', '1477019071:1'),
(11, 8, '_pingme', '1'),
(12, 8, '_encloseme', '1'),
(13, 8, '_pingme', '1'),
(14, 8, '_encloseme', '1'),
(15, 11, '_menu_item_type', 'post_type'),
(16, 11, '_menu_item_menu_item_parent', '0'),
(17, 11, '_menu_item_object_id', '6'),
(18, 11, '_menu_item_object', 'page'),
(19, 11, '_menu_item_target', ''),
(20, 11, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(21, 11, '_menu_item_xfn', ''),
(22, 11, '_menu_item_url', '');

-- --------------------------------------------------------

--
-- Table structure for table `maposts`
--

CREATE TABLE `maposts` (
  `ID` bigint(20) unsigned NOT NULL,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `maposts`
--

INSERT INTO `maposts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2016-10-21 00:36:10', '2016-10-21 02:36:10', 'Bem-vindo ao WordPress. Esse é o seu primeiro post. Edite-o ou exclua-o, e então comece a escrever!', 'Olá, mundo!', '', 'publish', 'open', 'open', '', 'ola-mundo', '', '', '2016-10-21 00:36:10', '2016-10-21 02:36:10', '', 0, 'http://maicon.local/?p=1', 0, 'post', '', 1),
(2, 1, '2016-10-21 00:36:10', '2016-10-21 02:36:10', 'Esta é uma página de exemplo. É diferente de um post porque ela ficará em um local e será exibida na navegação do seu site (na maioria dos temas). A maioria das pessoas começa com uma página de introdução aos potenciais visitantes do site. Ela pode ser assim:\n\n<blockquote>Olá! Eu sou um bike courrier de dia, ator amador à noite e este é meu blog. Eu moro em São Paulo, tenho um cachorro chamado Tonico e eu gosto de caipirinhas. (E de ser pego pela chuva.)</blockquote>\n\nou assim:\n\n<blockquote>A XYZ foi fundada em 1971 e desde então vem proporcionando produtos de qualidade a seus clientes. Localizada em Valinhos, XYZ emprega mais de 2.000 pessoas e faz várias contribuições para a comunidade local.</blockquote>\nComo um novo usuário do WordPress, você deve ir até o <a href="http://maicon.local/wp-admin/">seu painel</a> para excluir essa página e criar novas páginas com seu próprio conteúdo. Divirta-se!', 'Página de Exemplo', '', 'publish', 'closed', 'open', '', 'pagina-exemplo', '', '', '2016-10-21 00:36:10', '2016-10-21 02:36:10', '', 0, 'http://maicon.local/?page_id=2', 0, 'page', '', 0),
(3, 1, '2016-10-21 00:37:23', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-10-21 00:37:23', '0000-00-00 00:00:00', '', 0, 'http://maicon.local/?p=3', 0, 'post', '', 0),
(6, 1, '2016-10-21 00:58:32', '2016-10-21 02:58:32', 'Eu estou tentando aprender essa merda a anos e não consigo caralho. Alguém me ajude porra.', 'Eu estou aprendendo wordpress', '', 'publish', 'closed', 'closed', '', 'eu-estou-aprendendo-wordpress', '', '', '2016-10-21 00:58:32', '2016-10-21 02:58:32', '', 0, 'http://maicon.local/?page_id=6', 0, 'page', '', 0),
(7, 1, '2016-10-21 00:57:45', '2016-10-21 02:57:45', 'Eu estou tentando aprender essa merda a anos e não consigo caralho. Alguém me ajude porra.', 'Eu estou aprendendo wordpress', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2016-10-21 00:57:45', '2016-10-21 02:57:45', '', 6, 'http://maicon.local/?p=7', 0, 'revision', '', 0),
(8, 1, '2016-10-21 01:02:25', '2016-10-21 03:02:25', 'Eu aqui na meia noite tentando aprender word press. Que caralho de vida porra', 'WordPress', '', 'publish', 'open', 'open', '', 'wordpress', '', '', '2016-10-21 01:04:30', '2016-10-21 03:04:30', '', 0, 'http://maicon.local/?p=8', 0, 'post', '', 0),
(9, 1, '2016-10-21 01:02:25', '2016-10-21 03:02:25', 'Eu aqui na meia noite tentando aprender word press. Que caralho de vida porra', 'WordPress', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2016-10-21 01:02:25', '2016-10-21 03:02:25', '', 8, 'http://maicon.local/?p=9', 0, 'revision', '', 0),
(10, 1, '2016-10-21 01:02:32', '2016-10-21 03:02:32', 'Eu aqui na meia noite tentando aprender word press. Que caralho de vida porra', 'WordPress', '', 'inherit', 'closed', 'closed', '', '8-autosave-v1', '', '', '2016-10-21 01:02:32', '2016-10-21 03:02:32', '', 8, 'http://maicon.local/?p=10', 0, 'revision', '', 0),
(11, 1, '2016-10-21 06:40:01', '2016-10-21 09:40:01', ' ', '', '', 'publish', 'closed', 'closed', '', '11', '', '', '2016-10-21 06:40:01', '2016-10-21 09:40:01', '', 0, 'http://maicon.local/?p=11', 1, 'nav_menu_item', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `matermmeta`
--

CREATE TABLE `matermmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `materms`
--

CREATE TABLE `materms` (
  `term_id` bigint(20) unsigned NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `materms`
--

INSERT INTO `materms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sem categoria', 'sem-categoria', 0),
(2, 'post-format-gallery', 'post-format-gallery', 0),
(3, 'primeiro', 'primeiro', 0);

-- --------------------------------------------------------

--
-- Table structure for table `materm_relationships`
--

CREATE TABLE `materm_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `materm_relationships`
--

INSERT INTO `materm_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(8, 1, 0),
(8, 2, 0),
(11, 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `materm_taxonomy`
--

CREATE TABLE `materm_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `materm_taxonomy`
--

INSERT INTO `materm_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 2),
(2, 2, 'post_format', '', 0, 1),
(3, 3, 'nav_menu', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `mausermeta`
--

CREATE TABLE `mausermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mausermeta`
--

INSERT INTO `mausermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'lucas'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'macapabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'mauser_level', '10'),
(12, 1, 'dismissed_wp_pointers', ''),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'session_tokens', 'a:1:{s:64:"e17ef8a4ca2e2f6f6989709e78af02989a62f2c7b3a53b2a4c3c6bd0bab496a4";a:4:{s:10:"expiration";i:1477190217;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:121:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36";s:5:"login";i:1477017417;}}'),
(15, 1, 'madashboard_quick_press_last_post_id', '3'),
(16, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(17, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:"add-post_tag";i:1;s:15:"add-post_format";}');

-- --------------------------------------------------------

--
-- Table structure for table `mausers`
--

CREATE TABLE `mausers` (
  `ID` bigint(20) unsigned NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mausers`
--

INSERT INTO `mausers` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'lucas', '$P$B97Ikbj0uuj96XsKfXlbo12ilEVww30', 'lucas', 'lsilveriomarques@gmail.com', '', '2016-10-21 02:36:09', '', 0, 'lucas');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `macommentmeta`
--
ALTER TABLE `macommentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `macomments`
--
ALTER TABLE `macomments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `malinks`
--
ALTER TABLE `malinks`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `maoptions`
--
ALTER TABLE `maoptions`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `mapostmeta`
--
ALTER TABLE `mapostmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `maposts`
--
ALTER TABLE `maposts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `matermmeta`
--
ALTER TABLE `matermmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `materms`
--
ALTER TABLE `materms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `materm_relationships`
--
ALTER TABLE `materm_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `materm_taxonomy`
--
ALTER TABLE `materm_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `mausermeta`
--
ALTER TABLE `mausermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `mausers`
--
ALTER TABLE `mausers`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `macommentmeta`
--
ALTER TABLE `macommentmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `macomments`
--
ALTER TABLE `macomments`
  MODIFY `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `malinks`
--
ALTER TABLE `malinks`
  MODIFY `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `maoptions`
--
ALTER TABLE `maoptions`
  MODIFY `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=138;
--
-- AUTO_INCREMENT for table `mapostmeta`
--
ALTER TABLE `mapostmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `maposts`
--
ALTER TABLE `maposts`
  MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `matermmeta`
--
ALTER TABLE `matermmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `materms`
--
ALTER TABLE `materms`
  MODIFY `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `materm_taxonomy`
--
ALTER TABLE `materm_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `mausermeta`
--
ALTER TABLE `mausermeta`
  MODIFY `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `mausers`
--
ALTER TABLE `mausers`
  MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
