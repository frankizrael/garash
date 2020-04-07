-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-04-2020 a las 18:30:25
-- Versión del servidor: 10.4.6-MariaDB
-- Versión de PHP: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `dc_garash`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_berocket_termmeta`
--

CREATE TABLE `wp_berocket_termmeta` (
  `meta_id` bigint(20) NOT NULL,
  `berocket_term_id` bigint(20) NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_cf7dbplugin_st`
--

CREATE TABLE `wp_cf7dbplugin_st` (
  `submit_time` decimal(16,4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_cf7dbplugin_submits`
--

CREATE TABLE `wp_cf7dbplugin_submits` (
  `submit_time` decimal(16,4) NOT NULL,
  `form_name` varchar(127) CHARACTER SET utf8 DEFAULT NULL,
  `field_name` varchar(127) CHARACTER SET utf8 DEFAULT NULL,
  `field_value` longtext CHARACTER SET utf8 DEFAULT NULL,
  `field_order` int(11) DEFAULT NULL,
  `file` longblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_comments`
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

--
-- Volcado de datos para la tabla `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un comentarista de WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2020-01-07 15:29:41', '2020-01-07 15:29:41', 'Hola, esto es un comentario.\nPara empezar a moderar, editar y borrar comentarios, por favor, visite la pantalla de comentarios en el escritorio.\nLos avatares de los comentaristas provienen de <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0),
(2, 68, 'WooCommerce', 'woocommerce@bmw-ecommerce.loc', '', '', '2020-01-22 15:03:17', '2020-01-22 20:03:17', 'Pendiente de pago por transferencia El estado del pedido cambió de Pendiente de pago a En espera.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(3, 76, 'WooCommerce', 'woocommerce@bmw-ecommerce.loc', '', '', '2020-01-23 14:51:27', '2020-01-23 19:51:27', 'Pendiente de pago por transferencia El estado del pedido cambió de Pendiente de pago a En espera.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(22, 129, 'WooCommerce', 'woocommerce@bmw-ecommerce.loc', '', '', '2020-02-05 14:42:56', '2020-02-05 19:42:56', 'El pedido sin pagar ha sido cancelado - se ha alcanzado el limite de tiempo. El estado del pedido cambió de Pendiente de pago a Cancelado.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(23, 130, 'WooCommerce', 'woocommerce@bmw-ecommerce.loc', '', '', '2020-02-05 14:42:57', '2020-02-05 19:42:57', 'El pedido sin pagar ha sido cancelado - se ha alcanzado el limite de tiempo. El estado del pedido cambió de Pendiente de pago a Cancelado.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(24, 131, 'WooCommerce', 'woocommerce@bmw-ecommerce.loc', '', '', '2020-02-05 16:43:50', '2020-02-05 21:43:50', 'El pedido sin pagar ha sido cancelado - se ha alcanzado el limite de tiempo. El estado del pedido cambió de Pendiente de pago a Cancelado.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(25, 133, 'WooCommerce', 'woocommerce@bmw-ecommerce.loc', '', '', '2020-02-05 17:59:25', '2020-02-05 22:59:25', 'El pedido sin pagar ha sido cancelado - se ha alcanzado el limite de tiempo. El estado del pedido cambió de Pendiente de pago a Cancelado.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(26, 134, 'WooCommerce', 'woocommerce@bmw-ecommerce.loc', '', '', '2020-02-05 17:59:26', '2020-02-05 22:59:26', 'El pedido sin pagar ha sido cancelado - se ha alcanzado el limite de tiempo. El estado del pedido cambió de Pendiente de pago a Cancelado.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(27, 134, 'admin', 'htrigoso@seek.pe', '', '', '2020-02-05 18:17:29', '2020-02-05 23:17:29', 'El estado del pedido cambió de Cancelado a En espera.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(28, 134, 'admin', 'htrigoso@seek.pe', '', '', '2020-02-05 18:17:38', '2020-02-05 23:17:38', 'El estado del pedido cambió de En espera a Pendiente de pago.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(29, 134, 'WooCommerce', 'woocommerce@bmw-ecommerce.loc', '', '', '2020-02-05 18:50:47', '2020-02-05 23:50:47', 'Pedido cancelado por el cliente. El estado del pedido cambió de Pendiente de pago a Cancelado.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(30, 136, 'WooCommerce', 'woocommerce@bmw-ecommerce.loc', '', '', '2020-02-06 10:53:40', '2020-02-06 15:53:40', 'Pedido cancelado por el cliente. El estado del pedido cambió de Pendiente de pago a Cancelado.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(31, 136, 'admin', 'htrigoso@seek.pe', '', '', '2020-02-06 10:58:28', '2020-02-06 15:58:28', 'El estado del pedido cambió de Cancelado a Pendiente de pago.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(32, 136, 'WooCommerce', 'woocommerce@bmw-ecommerce.loc', '', '', '2020-02-06 12:49:46', '2020-02-06 17:49:46', 'El pedido sin pagar ha sido cancelado - se ha alcanzado el limite de tiempo. El estado del pedido cambió de Pendiente de pago a Cancelado.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(33, 137, 'WooCommerce', 'woocommerce@bmw-ecommerce.loc', '', '', '2020-02-06 13:50:29', '2020-02-06 18:50:29', 'El pedido sin pagar ha sido cancelado - se ha alcanzado el limite de tiempo. El estado del pedido cambió de Pendiente de pago a Cancelado.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(34, 141, 'WooCommerce', 'woocommerce@bmw-ecommerce.seekdev.com', '', '', '2020-02-10 17:48:16', '2020-02-10 22:48:16', 'El pedido sin pagar ha sido cancelado - se ha alcanzado el limite de tiempo. El estado del pedido cambió de Pendiente de pago a Cancelado.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(35, 158, 'WooCommerce', 'woocommerce@dev.garash.com', '', '', '2020-03-28 19:06:07', '2020-03-29 00:06:07', 'Pendiente de pago por transferencia El estado del pedido cambió de Pendiente de pago a En espera.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(36, 159, 'WooCommerce', 'woocommerce@dev.garash.com', '', '', '2020-03-28 19:06:42', '2020-03-29 00:06:42', 'Pendiente de pago por transferencia El estado del pedido cambió de Pendiente de pago a En espera.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(37, 166, 'WooCommerce', 'woocommerce@dev.garash.com', '', '', '2020-04-01 11:16:29', '2020-04-01 16:16:29', 'Pendiente de pago por transferencia El estado del pedido cambió de Pendiente de pago a En espera.', 0, '1', 'WooCommerce', 'order_note', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_links`
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
-- Estructura de tabla para la tabla `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://dev.garash.com/', 'yes'),
(2, 'home', 'http://dev.garash.com/', 'yes'),
(3, 'blogname', 'Garash Store', 'yes'),
(4, 'blogdescription', 'Ecommerce', 'yes'),
(5, 'users_can_register', '1', 'yes'),
(6, 'admin_email', 'htrigoso@seek.pe', 'yes'),
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
(23, 'date_format', 'j F, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'j F, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:166:{s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:9:\"tienda/?$\";s:27:\"index.php?post_type=product\";s:39:\"tienda/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:34:\"tienda/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:26:\"tienda/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=product&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:32:\"category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:29:\"tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:55:\"product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:50:\"product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:31:\"product-category/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:43:\"product-category/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:25:\"product-category/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:52:\"product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:47:\"product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:28:\"product-tag/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:40:\"product-tag/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:22:\"product-tag/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:45:\"size/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?pa_size=$matches[1]&feed=$matches[2]\";s:40:\"size/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?pa_size=$matches[1]&feed=$matches[2]\";s:21:\"size/([^/]+)/embed/?$\";s:40:\"index.php?pa_size=$matches[1]&embed=true\";s:33:\"size/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?pa_size=$matches[1]&paged=$matches[2]\";s:15:\"size/([^/]+)/?$\";s:29:\"index.php?pa_size=$matches[1]\";s:35:\"product/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"product/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"product/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"product/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:28:\"product/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:48:\"product/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:43:\"product/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:36:\"product/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:43:\"product/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:33:\"product/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:39:\"product/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:50:\"product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:32:\"product/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:24:\"product/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"product/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"product/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=6&cpage=$matches[1]\";s:17:\"wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:26:\"comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:29:\"search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:32:\"author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:41:\"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:28:\"([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:62:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/wc-api(/(.*))?/?$\";s:99:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&wc-api=$matches[6]\";s:62:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:73:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:25:\"(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:32:\"(.?.+?)/edit-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&edit-password=$matches[3]\";s:31:\"(.?.+?)/edit-profile(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-profile=$matches[3]\";s:32:\"(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:30:\"(.?.+?)/user-logout(/(.*))?/?$\";s:54:\"index.php?pagename=$matches[1]&user-logout=$matches[3]\";s:28:\"(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:33:\"(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:25:\"(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:29:\"(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:28:\"(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:31:\"(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:31:\"(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:34:\"(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:34:\"(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:37:\"(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:40:\"(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:45:\"(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:31:\".?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:11:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";i:1;s:33:\"classic-editor/classic-editor.php\";i:2;s:58:\"contact-form-7-to-database-extension/contact-form-7-db.php\";i:3;s:36:\"contact-form-7/wp-contact-form-7.php\";i:4;s:23:\"loco-translate/loco.php\";i:5;s:53:\"simple-custom-post-order/simple-custom-post-order.php\";i:6;s:39:\"user-registration/user-registration.php\";i:7;s:58:\"woo-ajax-loginregister/woocommerce-ajax-login-register.php\";i:8;s:49:\"woo-variation-swatches/woo-variation-swatches.php\";i:9;s:27:\"woocommerce/woocommerce.php\";i:10;s:38:\"yith-woocommerce-social-login/init.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:88:\"/shared/httpd/bmw-ecommerce/htdocs/wp-content/plugins/advanced-custom-fields-pro/acf.php\";i:1;s:0:\"\";}', 'no'),
(40, 'template', 'garash', 'yes'),
(41, 'stylesheet', 'garash', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '45805', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
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
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:3:{s:33:\"classic-editor/classic-editor.php\";a:2:{i:0;s:14:\"Classic_Editor\";i:1;s:9:\"uninstall\";}s:53:\"simple-custom-post-order/simple-custom-post-order.php\";s:18:\"scporder_uninstall\";s:26:\"woo-product-filter/wpf.php\";a:2:{i:0;s:8:\"utilsWpf\";i:1;s:12:\"deletePlugin\";}}', 'no'),
(82, 'timezone_string', 'America/Lima', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '6', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'admin_email_lifespan', '1593962973', 'yes'),
(94, 'initial_db_version', '45805', 'yes'),
(95, 'wp_user_roles', 'a:8:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:162:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;s:24:\"manage_user_registration\";b:1;s:22:\"edit_user_registration\";b:1;s:22:\"read_user_registration\";b:1;s:24:\"delete_user_registration\";b:1;s:23:\"edit_user_registrations\";b:1;s:30:\"edit_others_user_registrations\";b:1;s:26:\"publish_user_registrations\";b:1;s:31:\"read_private_user_registrations\";b:1;s:25:\"delete_user_registrations\";b:1;s:33:\"delete_private_user_registrations\";b:1;s:35:\"delete_published_user_registrations\";b:1;s:32:\"delete_others_user_registrations\";b:1;s:31:\"edit_private_user_registrations\";b:1;s:33:\"edit_published_user_registrations\";b:1;s:30:\"manage_user_registration_terms\";b:1;s:28:\"edit_user_registration_terms\";b:1;s:30:\"delete_user_registration_terms\";b:1;s:30:\"assign_user_registration_terms\";b:1;s:15:\"manage_berocket\";b:1;s:23:\"manage_berocket_account\";b:1;s:18:\"edit_single_filter\";b:1;s:18:\"read_single_filter\";b:1;s:20:\"delete_single_filter\";b:1;s:19:\"edit_single_filters\";b:1;s:26:\"edit_others_single_filters\";b:1;s:22:\"publish_single_filters\";b:1;s:27:\"read_private_single_filters\";b:1;s:21:\"delete_single_filters\";b:1;s:29:\"delete_private_single_filters\";b:1;s:31:\"delete_published_single_filters\";b:1;s:28:\"delete_others_single_filters\";b:1;s:27:\"edit_private_single_filters\";b:1;s:29:\"edit_published_single_filters\";b:1;s:18:\"edit_group_filters\";b:1;s:18:\"read_group_filters\";b:1;s:20:\"delete_group_filters\";b:1;s:19:\"edit_group_filterss\";b:1;s:26:\"edit_others_group_filterss\";b:1;s:22:\"publish_group_filterss\";b:1;s:27:\"read_private_group_filterss\";b:1;s:21:\"delete_group_filterss\";b:1;s:29:\"delete_private_group_filterss\";b:1;s:31:\"delete_published_group_filterss\";b:1;s:28:\"delete_others_group_filterss\";b:1;s:27:\"edit_private_group_filterss\";b:1;s:29:\"edit_published_group_filterss\";b:1;s:20:\"manage_berocket_aapf\";b:1;s:10:\"loco_admin\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:92:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"edit_theme_options\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}s:10:\"translator\";a:2:{s:4:\"name\";s:10:\"Translator\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:10:\"loco_admin\";b:1;}}}', 'yes'),
(96, 'fresh_site', '0', 'yes'),
(97, 'WPLANG', 'es_ES', 'yes'),
(98, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:7:\"primary\";a:2:{i:0;s:32:\"woocommerce_product_categories-2\";i:1;s:26:\"woocommerce_price_filter-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(104, 'cron', 'a:14:{i:1586235600;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1586245487;a:1:{s:29:\"wp_session_garbage_collection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1586261232;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:0:{}s:8:\"interval\";i:60;}}}i:1586262583;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1586264829;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1586273383;a:3:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1586273386;a:1:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1586273489;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1586273491;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1586277159;a:1:{s:33:\"woocommerce_cleanup_personal_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1586277170;a:1:{s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1586287959;a:1:{s:24:\"woocommerce_cleanup_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1586298759;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}s:7:\"version\";i:2;}', 'yes'),
(105, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'theme_mods_twentytwenty', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1578411271;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(116, 'recovery_keys', 'a:0:{}', 'yes'),
(128, 'can_compress_scripts', '1', 'no'),
(145, 'current_theme', 'Garash Ecommerce', 'yes'),
(146, 'theme_mods_bmw', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1585699566;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:7:\"primary\";a:3:{i:0;s:32:\"woocommerce_product_categories-2\";i:1;s:26:\"woocommerce_price_filter-2\";i:2;s:22:\"berocket_aapf_single-2\";}}}}', 'yes'),
(147, 'theme_switched', '', 'yes'),
(148, 'recovery_mode_email_last_sent', '1579724397', 'yes'),
(154, 'recently_activated', 'a:1:{s:53:\"woocommerce-seek-visanet/woocommerce-seek-visanet.php\";i:1585708489;}', 'yes'),
(174, 'woocommerce_store_address', '', 'yes'),
(175, 'woocommerce_store_address_2', '', 'yes'),
(176, 'woocommerce_store_city', '', 'yes'),
(177, 'woocommerce_default_country', 'PE:LIM', 'yes'),
(178, 'woocommerce_store_postcode', '', 'yes'),
(179, 'woocommerce_allowed_countries', 'specific', 'yes'),
(180, 'woocommerce_all_except_countries', 'a:0:{}', 'yes'),
(181, 'woocommerce_specific_allowed_countries', 'a:1:{i:0;s:2:\"PE\";}', 'yes'),
(182, 'woocommerce_ship_to_countries', '', 'yes'),
(183, 'woocommerce_specific_ship_to_countries', 'a:0:{}', 'yes'),
(184, 'woocommerce_default_customer_address', 'geolocation', 'yes'),
(185, 'woocommerce_calc_taxes', 'no', 'yes'),
(186, 'woocommerce_enable_coupons', 'yes', 'yes'),
(187, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(188, 'woocommerce_currency', 'PEN', 'yes'),
(189, 'woocommerce_currency_pos', 'left', 'yes'),
(190, 'woocommerce_price_thousand_sep', ',', 'yes'),
(191, 'woocommerce_price_decimal_sep', '.', 'yes'),
(192, 'woocommerce_price_num_decimals', '2', 'yes'),
(193, 'woocommerce_shop_page_id', '31', 'yes'),
(194, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(195, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(196, 'woocommerce_placeholder_image', '7', 'yes'),
(197, 'woocommerce_weight_unit', 'kg', 'yes'),
(198, 'woocommerce_dimension_unit', 'cm', 'yes'),
(199, 'woocommerce_enable_reviews', 'yes', 'yes'),
(200, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(201, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(202, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(203, 'woocommerce_review_rating_required', 'yes', 'no'),
(204, 'woocommerce_manage_stock', 'yes', 'yes'),
(205, 'woocommerce_hold_stock_minutes', '60', 'no'),
(206, 'woocommerce_notify_low_stock', 'yes', 'no'),
(207, 'woocommerce_notify_no_stock', 'yes', 'no'),
(208, 'woocommerce_stock_email_recipient', 'htrigoso@seek.pe', 'no'),
(209, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(210, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(211, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(212, 'woocommerce_stock_format', '', 'yes'),
(213, 'woocommerce_file_download_method', 'force', 'no'),
(214, 'woocommerce_downloads_require_login', 'no', 'no'),
(215, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(216, 'woocommerce_prices_include_tax', 'no', 'yes'),
(217, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(218, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(219, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(220, 'woocommerce_tax_classes', '', 'yes'),
(221, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(222, 'woocommerce_tax_display_cart', 'excl', 'yes'),
(223, 'woocommerce_price_display_suffix', '', 'yes'),
(224, 'woocommerce_tax_total_display', 'itemized', 'no'),
(225, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(226, 'woocommerce_shipping_cost_requires_address', 'no', 'yes'),
(227, 'woocommerce_ship_to_destination', 'billing', 'no'),
(228, 'woocommerce_shipping_debug_mode', 'no', 'yes'),
(229, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(230, 'woocommerce_enable_checkout_login_reminder', 'no', 'no'),
(231, 'woocommerce_enable_signup_and_login_from_checkout', 'no', 'no'),
(232, 'woocommerce_enable_myaccount_registration', 'yes', 'no'),
(233, 'woocommerce_registration_generate_username', 'no', 'no'),
(234, 'woocommerce_registration_generate_password', 'no', 'no'),
(235, 'woocommerce_erasure_request_removes_order_data', 'no', 'no'),
(236, 'woocommerce_erasure_request_removes_download_data', 'no', 'no'),
(237, 'woocommerce_allow_bulk_remove_personal_data', 'no', 'no'),
(238, 'woocommerce_registration_privacy_policy_text', 'Your personal data will be used to support your experience throughout this website, to manage access to your account, and for other purposes described in our [privacy_policy].', 'yes'),
(239, 'woocommerce_checkout_privacy_policy_text', 'Your personal data will be used to process your order, support your experience throughout this website, and for other purposes described in our [privacy_policy].', 'yes'),
(240, 'woocommerce_delete_inactive_accounts', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(241, 'woocommerce_trash_pending_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:4:\"days\";}', 'no'),
(242, 'woocommerce_trash_failed_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:4:\"days\";}', 'no'),
(243, 'woocommerce_trash_cancelled_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:4:\"days\";}', 'no'),
(244, 'woocommerce_anonymize_completed_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(245, 'woocommerce_email_from_name', 'BMW Ecommerce', 'no'),
(246, 'woocommerce_email_from_address', 'htrigoso@seek.pe', 'no'),
(247, 'woocommerce_email_header_image', '', 'no'),
(248, 'woocommerce_email_footer_text', '{site_title} &mdash; Built with {WooCommerce}', 'no'),
(249, 'woocommerce_email_base_color', '#96588a', 'no'),
(250, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(251, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(252, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(253, 'woocommerce_cart_page_id', '32', 'no'),
(254, 'woocommerce_checkout_page_id', '60', 'no'),
(255, 'woocommerce_myaccount_page_id', '36', 'no'),
(256, 'woocommerce_terms_page_id', '', 'no'),
(257, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(258, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(259, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(260, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(261, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(262, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(263, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(264, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(265, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(266, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(267, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(268, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(269, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(270, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(271, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(272, 'woocommerce_api_enabled', 'no', 'yes'),
(273, 'woocommerce_allow_tracking', 'no', 'no'),
(274, 'woocommerce_show_marketplace_suggestions', 'no', 'no'),
(275, 'woocommerce_single_image_width', '600', 'yes'),
(276, 'woocommerce_thumbnail_image_width', '300', 'yes'),
(277, 'woocommerce_checkout_highlight_required_fields', 'yes', 'yes'),
(278, 'woocommerce_demo_store', 'no', 'no'),
(279, 'woocommerce_permalinks', 'a:5:{s:12:\"product_base\";s:7:\"product\";s:13:\"category_base\";s:16:\"product-category\";s:8:\"tag_base\";s:11:\"product-tag\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}', 'yes'),
(280, 'current_theme_supports_woocommerce', 'yes', 'yes'),
(281, 'woocommerce_queue_flush_rewrite_rules', 'no', 'yes'),
(284, 'default_product_cat', '15', 'yes'),
(289, 'woocommerce_admin_notices', 'a:1:{i:0;s:20:\"no_secure_connection\";}', 'yes'),
(290, '_transient_woocommerce_webhook_ids_status_active', 'a:0:{}', 'yes'),
(291, 'widget_woocommerce_widget_cart', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(292, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(293, 'widget_woocommerce_layered_nav', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(294, 'widget_woocommerce_price_filter', 'a:2:{i:2;a:1:{s:5:\"title\";s:6:\"Precio\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(295, 'widget_woocommerce_product_categories', 'a:2:{i:2;a:8:{s:5:\"title\";s:11:\"Categorías\";s:7:\"orderby\";s:4:\"name\";s:8:\"dropdown\";i:0;s:5:\"count\";i:0;s:12:\"hierarchical\";i:1;s:18:\"show_children_only\";i:0;s:10:\"hide_empty\";i:1;s:9:\"max_depth\";s:1:\"1\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(296, 'widget_woocommerce_product_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(297, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(298, 'widget_woocommerce_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(299, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(300, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(301, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(302, 'widget_woocommerce_rating_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(410, '_transient_product_query-transient-version', '1586118962', 'yes'),
(411, '_transient_product-transient-version', '1585171567', 'yes'),
(418, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(459, 'category_children', 'a:0:{}', 'yes'),
(504, '_transient_shipping-transient-version', '1582564881', 'yes'),
(850, 'scporder_install', '1', 'yes'),
(853, 'scporder_options', 'a:3:{s:7:\"objects\";s:0:\"\";s:4:\"tags\";a:1:{i:0;s:11:\"product_cat\";}s:18:\"show_advanced_view\";s:0:\"\";}', 'yes'),
(894, 'scporder_notice', '1', 'yes'),
(1180, 'fs_active_plugins', 'O:8:\"stdClass\":3:{s:7:\"plugins\";a:1:{s:34:\"ajax-search-for-woocommerce/fs/lib\";O:8:\"stdClass\":4:{s:7:\"version\";s:5:\"2.3.1\";s:4:\"type\";s:6:\"plugin\";s:9:\"timestamp\";i:1578673384;s:11:\"plugin_path\";s:59:\"ajax-search-for-woocommerce/ajax-search-for-woocommerce.php\";}}s:7:\"abspath\";s:35:\"/shared/httpd/bmw-ecommerce/htdocs/\";s:6:\"newest\";O:8:\"stdClass\":5:{s:11:\"plugin_path\";s:59:\"ajax-search-for-woocommerce/ajax-search-for-woocommerce.php\";s:8:\"sdk_path\";s:34:\"ajax-search-for-woocommerce/fs/lib\";s:7:\"version\";s:5:\"2.3.1\";s:13:\"in_activation\";b:1;s:9:\"timestamp\";i:1578673384;}}', 'yes'),
(1181, 'fs_debug_mode', '', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1182, 'fs_accounts', 'a:12:{s:21:\"id_slug_type_path_map\";a:1:{i:700;a:3:{s:4:\"slug\";s:27:\"ajax-search-for-woocommerce\";s:4:\"type\";s:6:\"plugin\";s:4:\"path\";s:59:\"ajax-search-for-woocommerce/ajax-search-for-woocommerce.php\";}}s:11:\"plugin_data\";a:1:{s:27:\"ajax-search-for-woocommerce\";a:20:{s:16:\"plugin_main_file\";O:8:\"stdClass\":1:{s:4:\"path\";s:59:\"ajax-search-for-woocommerce/ajax-search-for-woocommerce.php\";}s:20:\"is_network_activated\";b:0;s:17:\"install_timestamp\";i:1578672864;s:17:\"was_plugin_loaded\";b:1;s:21:\"is_plugin_new_install\";b:0;s:16:\"sdk_last_version\";N;s:11:\"sdk_version\";s:5:\"2.3.1\";s:16:\"sdk_upgrade_mode\";b:1;s:18:\"sdk_downgrade_mode\";b:0;s:19:\"plugin_last_version\";N;s:14:\"plugin_version\";s:5:\"1.6.0\";s:19:\"plugin_upgrade_mode\";b:1;s:21:\"plugin_downgrade_mode\";b:0;s:17:\"connectivity_test\";a:6:{s:12:\"is_connected\";b:1;s:4:\"host\";s:17:\"bmw-ecommerce.loc\";s:9:\"server_ip\";s:12:\"172.16.238.1\";s:9:\"is_active\";b:1;s:9:\"timestamp\";i:1578672864;s:7:\"version\";s:5:\"1.6.0\";}s:15:\"prev_is_premium\";b:0;s:14:\"has_trial_plan\";b:0;s:22:\"install_sync_timestamp\";i:1578673385;s:19:\"keepalive_timestamp\";i:1578673385;s:20:\"activation_timestamp\";i:1578672889;s:16:\"uninstall_reason\";O:8:\"stdClass\":3:{s:2:\"id\";s:1:\"7\";s:4:\"info\";s:4:\"ssss\";s:12:\"is_anonymous\";b:0;}}}s:13:\"file_slug_map\";a:1:{s:59:\"ajax-search-for-woocommerce/ajax-search-for-woocommerce.php\";s:27:\"ajax-search-for-woocommerce\";}s:7:\"plugins\";a:1:{s:27:\"ajax-search-for-woocommerce\";O:9:\"FS_Plugin\":23:{s:16:\"parent_plugin_id\";N;s:5:\"title\";s:27:\"AJAX Search for WooCommerce\";s:4:\"slug\";s:27:\"ajax-search-for-woocommerce\";s:12:\"premium_slug\";s:35:\"ajax-search-for-woocommerce-premium\";s:4:\"type\";s:6:\"plugin\";s:20:\"affiliate_moderation\";b:0;s:19:\"is_wp_org_compliant\";b:1;s:22:\"premium_releases_count\";N;s:4:\"file\";s:59:\"ajax-search-for-woocommerce/ajax-search-for-woocommerce.php\";s:7:\"version\";s:5:\"1.6.0\";s:11:\"auto_update\";N;s:4:\"info\";N;s:10:\"is_premium\";b:0;s:14:\"premium_suffix\";s:3:\"Pro\";s:7:\"is_live\";b:1;s:9:\"bundle_id\";N;s:17:\"bundle_public_key\";N;s:10:\"public_key\";s:32:\"pk_f4f2a51dbe0aee43de0692db77a3e\";s:10:\"secret_key\";N;s:2:\"id\";s:3:\"700\";s:7:\"updated\";N;s:7:\"created\";N;s:22:\"\0FS_Entity\0_is_updated\";b:0;}}s:9:\"unique_id\";s:32:\"c52006bb4d5703e520ac123c8b879a11\";s:5:\"plans\";a:1:{s:27:\"ajax-search-for-woocommerce\";a:3:{i:0;O:14:\"FS_Plugin_Plan\":21:{s:9:\"plugin_id\";s:4:\"NzAw\";s:4:\"name\";s:8:\"ZnJlZQ==\";s:5:\"title\";s:12:\"U3RhcnRlcg==\";s:11:\"description\";s:40:\"U2VhcmNoIHByb2R1Y3RzIGluIGxpdmUgdGltZQ==\";s:17:\"is_free_localhost\";s:4:\"MQ==\";s:17:\"is_block_features\";s:4:\"MQ==\";s:12:\"license_type\";s:4:\"MA==\";s:16:\"is_https_support\";s:0:\"\";s:12:\"trial_period\";N;s:23:\"is_require_subscription\";s:0:\"\";s:10:\"support_kb\";N;s:13:\"support_forum\";s:88:\"aHR0cHM6Ly93b3JkcHJlc3Mub3JnL3N1cHBvcnQvcGx1Z2luL2FqYXgtc2VhcmNoLWZvci13b29jb21tZXJjZQ==\";s:13:\"support_email\";N;s:13:\"support_phone\";N;s:13:\"support_skype\";N;s:18:\"is_success_manager\";s:0:\"\";s:11:\"is_featured\";s:0:\"\";s:2:\"id\";s:8:\"MjkwMg==\";s:7:\"updated\";s:28:\"MjAxOC0xMi0yOCAwMDowNDowNQ==\";s:7:\"created\";s:28:\"MjAxOC0wNC0wNyAyMTozNjo1Ng==\";s:22:\"\0FS_Entity\0_is_updated\";b:0;}i:1;O:14:\"FS_Plugin_Plan\":21:{s:9:\"plugin_id\";s:4:\"NzAw\";s:4:\"name\";s:4:\"cHJv\";s:5:\"title\";s:4:\"UHJv\";s:11:\"description\";s:76:\"I0luY3JlYXNlIHlvdXIgc2FsZXMgYnkgZmFzdGVyIGFuZCBtb2Rlcm4gc2VhcmNoIGVuZ2luZQ==\";s:17:\"is_free_localhost\";s:4:\"MQ==\";s:17:\"is_block_features\";s:0:\"\";s:12:\"license_type\";s:4:\"MA==\";s:16:\"is_https_support\";s:0:\"\";s:12:\"trial_period\";N;s:23:\"is_require_subscription\";s:4:\"MQ==\";s:10:\"support_kb\";N;s:13:\"support_forum\";N;s:13:\"support_email\";s:32:\"ZGdvcmFwbHVnaW5zQGdtYWlsLmNvbQ==\";s:13:\"support_phone\";N;s:13:\"support_skype\";N;s:18:\"is_success_manager\";s:0:\"\";s:11:\"is_featured\";s:4:\"MQ==\";s:2:\"id\";s:8:\"NDc5OQ==\";s:7:\"updated\";s:28:\"MjAxOS0wOS0zMCAwOTo1NDoyMg==\";s:7:\"created\";s:28:\"MjAxOC0xMi0yNyAyMzoxODowNg==\";s:22:\"\0FS_Entity\0_is_updated\";b:0;}i:2;O:14:\"FS_Plugin_Plan\":21:{s:9:\"plugin_id\";s:4:\"NzAw\";s:4:\"name\";s:16:\"Y3VzdG9td29yaw==\";s:5:\"title\";s:16:\"Q3VzdG9tIFdvcms=\";s:11:\"description\";N;s:17:\"is_free_localhost\";s:0:\"\";s:17:\"is_block_features\";s:4:\"MQ==\";s:12:\"license_type\";s:4:\"MA==\";s:16:\"is_https_support\";s:0:\"\";s:12:\"trial_period\";N;s:23:\"is_require_subscription\";s:0:\"\";s:10:\"support_kb\";N;s:13:\"support_forum\";N;s:13:\"support_email\";N;s:13:\"support_phone\";N;s:13:\"support_skype\";N;s:18:\"is_success_manager\";s:0:\"\";s:11:\"is_featured\";s:0:\"\";s:2:\"id\";s:8:\"NzM1Ng==\";s:7:\"updated\";s:28:\"MjAxOS0wOS0xMCAxNzoyMDo0Nw==\";s:7:\"created\";s:28:\"MjAxOS0wOS0xMCAxNzoxODozMQ==\";s:22:\"\0FS_Entity\0_is_updated\";b:0;}}}s:14:\"active_plugins\";O:8:\"stdClass\":3:{s:9:\"timestamp\";i:1578673376;s:3:\"md5\";s:32:\"c7a3cc6702e33aba769194f075738c9e\";s:7:\"plugins\";a:5:{s:59:\"ajax-search-for-woocommerce/ajax-search-for-woocommerce.php\";a:5:{s:4:\"slug\";s:27:\"ajax-search-for-woocommerce\";s:7:\"version\";s:5:\"1.6.0\";s:5:\"title\";s:27:\"AJAX Search for WooCommerce\";s:9:\"is_active\";b:1;s:14:\"is_uninstalled\";b:0;}s:33:\"classic-editor/classic-editor.php\";a:5:{s:4:\"slug\";s:14:\"classic-editor\";s:7:\"version\";s:3:\"1.5\";s:5:\"title\";s:14:\"Classic Editor\";s:9:\"is_active\";b:1;s:14:\"is_uninstalled\";b:0;}s:53:\"simple-custom-post-order/simple-custom-post-order.php\";a:5:{s:4:\"slug\";s:24:\"simple-custom-post-order\";s:7:\"version\";s:5:\"2.4.7\";s:5:\"title\";s:24:\"Simple Custom Post Order\";s:9:\"is_active\";b:1;s:14:\"is_uninstalled\";b:0;}s:49:\"woo-variation-swatches/woo-variation-swatches.php\";a:5:{s:4:\"slug\";s:22:\"woo-variation-swatches\";s:7:\"version\";s:6:\"1.0.71\";s:5:\"title\";s:34:\"Variation Swatches for WooCommerce\";s:9:\"is_active\";b:1;s:14:\"is_uninstalled\";b:0;}s:27:\"woocommerce/woocommerce.php\";a:5:{s:4:\"slug\";s:11:\"woocommerce\";s:7:\"version\";s:5:\"3.8.1\";s:5:\"title\";s:11:\"WooCommerce\";s:9:\"is_active\";b:1;s:14:\"is_uninstalled\";b:0;}}}s:11:\"all_plugins\";O:8:\"stdClass\":3:{s:9:\"timestamp\";i:1578672892;s:3:\"md5\";s:32:\"9fe613905eabffda98ee0b31d54e2e34\";s:7:\"plugins\";a:9:{s:34:\"advanced-custom-fields-pro/acf.php\";a:5:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:7:\"version\";s:5:\"5.7.7\";s:5:\"title\";s:26:\"Advanced Custom Fields PRO\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;}s:59:\"ajax-search-for-woocommerce/ajax-search-for-woocommerce.php\";a:5:{s:4:\"slug\";s:27:\"ajax-search-for-woocommerce\";s:7:\"version\";s:5:\"1.6.0\";s:5:\"title\";s:27:\"AJAX Search for WooCommerce\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;}s:19:\"akismet/akismet.php\";a:5:{s:4:\"slug\";s:7:\"akismet\";s:7:\"version\";s:5:\"4.1.3\";s:5:\"title\";s:17:\"Akismet Anti-Spam\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;}s:33:\"classic-editor/classic-editor.php\";a:5:{s:4:\"slug\";s:14:\"classic-editor\";s:7:\"version\";s:3:\"1.5\";s:5:\"title\";s:14:\"Classic Editor\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;}s:43:\"custom-post-type-ui/custom-post-type-ui.php\";a:5:{s:4:\"slug\";s:19:\"custom-post-type-ui\";s:7:\"version\";s:5:\"1.7.2\";s:5:\"title\";s:19:\"Custom Post Type UI\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;}s:9:\"hello.php\";a:5:{s:4:\"slug\";s:11:\"hello-dolly\";s:7:\"version\";s:5:\"1.7.2\";s:5:\"title\";s:11:\"Hello Dolly\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;}s:53:\"simple-custom-post-order/simple-custom-post-order.php\";a:5:{s:4:\"slug\";s:24:\"simple-custom-post-order\";s:7:\"version\";s:5:\"2.4.7\";s:5:\"title\";s:24:\"Simple Custom Post Order\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;}s:49:\"woo-variation-swatches/woo-variation-swatches.php\";a:5:{s:4:\"slug\";s:22:\"woo-variation-swatches\";s:7:\"version\";s:6:\"1.0.71\";s:5:\"title\";s:34:\"Variation Swatches for WooCommerce\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;}s:27:\"woocommerce/woocommerce.php\";a:5:{s:4:\"slug\";s:11:\"woocommerce\";s:7:\"version\";s:5:\"3.8.1\";s:5:\"title\";s:11:\"WooCommerce\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;}}}s:10:\"all_themes\";O:8:\"stdClass\":3:{s:9:\"timestamp\";i:1578673376;s:3:\"md5\";s:32:\"ed02809e2714c443ce967ffcbc528c87\";s:6:\"themes\";a:1:{s:3:\"bmw\";a:5:{s:4:\"slug\";s:3:\"bmw\";s:7:\"version\";s:3:\"1.0\";s:5:\"title\";s:13:\"BMW Ecommerce\";s:9:\"is_active\";b:1;s:14:\"is_uninstalled\";b:0;}}}s:5:\"sites\";a:1:{s:27:\"ajax-search-for-woocommerce\";O:7:\"FS_Site\":25:{s:7:\"site_id\";s:8:\"15989093\";s:9:\"plugin_id\";s:3:\"700\";s:7:\"user_id\";s:7:\"2564460\";s:5:\"title\";s:13:\"BMW Ecommerce\";s:3:\"url\";s:24:\"http://bmw-ecommerce.loc\";s:7:\"version\";s:5:\"1.6.0\";s:8:\"language\";s:5:\"es-PE\";s:7:\"charset\";s:5:\"UTF-8\";s:16:\"platform_version\";s:5:\"5.3.2\";s:11:\"sdk_version\";s:5:\"2.3.1\";s:28:\"programming_language_version\";s:6:\"7.2.19\";s:7:\"plan_id\";s:4:\"2902\";s:10:\"license_id\";N;s:13:\"trial_plan_id\";N;s:10:\"trial_ends\";N;s:10:\"is_premium\";b:0;s:15:\"is_disconnected\";b:0;s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;s:10:\"public_key\";s:32:\"pk_30ca8e8f22a6cf067f33343052e85\";s:10:\"secret_key\";s:32:\"sk_ERO8W1D6a!TqWC%uM?0@1AF#%;axZ\";s:2:\"id\";s:7:\"3717878\";s:7:\"updated\";s:19:\"2020-01-10 16:22:57\";s:7:\"created\";s:19:\"2020-01-10 16:14:47\";s:22:\"\0FS_Entity\0_is_updated\";b:0;}}s:5:\"users\";a:1:{i:2564460;O:7:\"FS_User\":13:{s:5:\"email\";s:16:\"htrigoso@seek.pe\";s:5:\"first\";s:5:\"admin\";s:4:\"last\";s:0:\"\";s:11:\"is_verified\";b:0;s:7:\"is_beta\";N;s:11:\"customer_id\";N;s:5:\"gross\";i:0;s:10:\"public_key\";s:32:\"pk_24f4ad7ede856362fa4cceef4292d\";s:10:\"secret_key\";s:32:\"sk_a3Zt)Hy7.@M+v8jU<M7r#7l<?}&Tp\";s:2:\"id\";s:7:\"2564460\";s:7:\"updated\";N;s:7:\"created\";s:19:\"2020-01-10 16:14:47\";s:22:\"\0FS_Entity\0_is_updated\";b:0;}}s:13:\"admin_notices\";a:1:{s:27:\"ajax-search-for-woocommerce\";a:0:{}}}', 'yes'),
(1183, 'fs_gdpr', 'a:1:{s:2:\"u1\";a:2:{s:8:\"required\";b:0;s:18:\"show_opt_in_notice\";b:0;}}', 'yes'),
(1184, 'fs_api_cache', 'a:0:{}', 'no'),
(1187, 'widget_dgwt_wcas_ajax_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(1188, 'dgwt_wcas_activation_date', '1578672868', 'yes'),
(1189, 'dgwt_wcas_settings', 'a:39:{s:9:\"min_chars\";s:1:\"3\";s:14:\"max_form_width\";s:3:\"600\";s:18:\"show_submit_button\";s:3:\"off\";s:18:\"search_submit_text\";s:6:\"Search\";s:18:\"search_placeholder\";s:22:\"Search for products...\";s:14:\"bg_input_color\";s:0:\"\";s:16:\"text_input_color\";s:0:\"\";s:18:\"border_input_color\";s:0:\"\";s:15:\"bg_submit_color\";s:0:\"\";s:17:\"text_submit_color\";s:0:\"\";s:21:\"enable_mobile_overlay\";s:3:\"off\";s:14:\"show_preloader\";s:2:\"on\";s:13:\"preloader_url\";s:0:\"\";s:17:\"suggestions_limit\";s:1:\"7\";s:20:\"show_grouped_results\";s:3:\"off\";s:22:\"search_no_results_text\";s:10:\"No results\";s:18:\"show_product_image\";s:2:\"on\";s:18:\"show_product_price\";s:2:\"on\";s:17:\"show_product_desc\";s:2:\"on\";s:16:\"show_product_sku\";s:3:\"off\";s:27:\"search_see_all_results_text\";s:19:\"See all products...\";s:24:\"show_matching_categories\";s:3:\"off\";s:18:\"show_matching_tags\";s:3:\"off\";s:19:\"show_matching_posts\";s:3:\"off\";s:19:\"show_matching_pages\";s:3:\"off\";s:16:\"show_details_box\";s:3:\"off\";s:12:\"sug_bg_color\";s:0:\"\";s:15:\"sug_hover_color\";s:0:\"\";s:14:\"sug_text_color\";s:0:\"\";s:19:\"sug_highlight_color\";s:0:\"\";s:16:\"sug_border_color\";s:0:\"\";s:25:\"search_in_product_content\";s:3:\"off\";s:25:\"search_in_product_excerpt\";s:2:\"on\";s:21:\"search_in_product_sku\";s:3:\"off\";s:28:\"search_in_product_attributes\";s:3:\"off\";s:28:\"search_in_product_categories\";s:3:\"off\";s:23:\"search_in_custom_fields\";s:0:\"\";s:20:\"exclude_out_of_stock\";s:3:\"off\";s:22:\"fuzziness_enabled_demo\";s:3:\"off\";}', 'yes'),
(1190, 'dgwt_wcas_version', '1.6.0', 'yes'),
(1191, '_site_transient_timeout_locked_1', '1894032891', 'no'),
(1192, '_site_transient_locked_1', '1', 'no'),
(1201, 'dgwt_wcas_settings_show_advanced', 'on', 'yes'),
(1213, 'widget_aws_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(1286, 'woo_variation_swatches', 'a:14:{s:7:\"tooltip\";s:1:\"1\";s:10:\"stylesheet\";s:1:\"1\";s:5:\"style\";s:7:\"squared\";s:17:\"default_to_button\";s:1:\"1\";s:17:\"clear_on_reselect\";s:1:\"1\";s:9:\"threshold\";s:2:\"30\";s:18:\"attribute-behavior\";s:4:\"blur\";s:20:\"attribute_image_size\";s:9:\"thumbnail\";s:5:\"width\";s:2:\"30\";s:6:\"height\";s:2:\"30\";s:16:\"single-font-size\";s:2:\"16\";s:16:\"_last_active_tab\";s:6:\"simple\";s:13:\"defer_load_js\";i:0;s:13:\"use_transient\";i:0;}', 'yes'),
(1391, 'user_registration_general_setting_login_options', 'default', 'yes'),
(1392, 'user_registration_general_setting_disabled_user_roles', 'a:1:{i:0;s:10:\"subscriber\";}', 'yes'),
(1393, 'user_registration_login_option_hide_show_password', 'no', 'yes'),
(1394, 'user_registration_general_setting_uninstall_option', 'no', 'yes'),
(1395, 'user_registration_myaccount_page_id', '36', 'yes'),
(1396, 'user_registration_my_account_layout', 'horizontal', 'yes'),
(1397, 'user_registration_myaccount_edit_profile_endpoint', 'edit-profile', 'yes'),
(1398, 'user_registration_myaccount_change_password_endpoint', 'edit-password', 'yes'),
(1399, 'user_registration_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(1400, 'user_registration_logout_endpoint', 'user-logout', 'yes'),
(1401, 'user_registration_integration_setting_recaptcha_version', 'v2', 'yes'),
(1402, 'user_registration_integration_setting_recaptcha_site_key', '', 'yes'),
(1403, 'user_registration_integration_setting_recaptcha_site_secret', '', 'yes'),
(1404, 'user_registration_integration_setting_recaptcha_site_key_v3', '', 'yes'),
(1405, 'user_registration_integration_setting_recaptcha_site_secret_v3', '', 'yes'),
(1406, 'user_registration_email_setting_disable_email', 'no', 'no'),
(1407, 'user_registration_email_from_name', 'BMW Ecommerce', 'no'),
(1408, 'user_registration_email_from_address', 'htrigoso@seek.pe', 'no'),
(1409, 'user_registration_default_form_page_id', '35', 'yes'),
(1412, 'user_registration_version', '1.7.6', 'yes'),
(1413, 'user_registration_db_version', '1.7.6', 'yes'),
(1414, 'user_registration_activated', '2020-01-13', 'yes'),
(1415, 'user_registration_admin_notices', 'a:0:{}', 'yes'),
(1417, 'user_registration_users_listing_viewed', '2020-03-29 12:03:56', 'yes'),
(1420, 'user_registration_registration_page_id', '37', 'yes'),
(1422, 'user_registration_login_options_form_template', 'bordered', 'yes'),
(1423, 'user_registration_login_options_remember_me', 'yes', 'yes'),
(1424, 'user_registration_login_options_lost_password', 'yes', 'yes'),
(1425, 'user_registration_login_options_enable_recaptcha', 'no', 'yes'),
(1426, 'user_registration_general_setting_registration_url_options', '', 'yes'),
(1427, 'user_registration_general_setting_registration_label', 'Not a member yet? Register now.', 'yes'),
(1428, 'user_registration_login_options_prevent_core_login', 'no', 'yes'),
(1442, 'new_admin_email', 'htrigoso@seek.pe', 'yes'),
(1523, 'loginpress_customization', 'a:0:{}', 'yes'),
(1524, 'loginpress_setting', 'a:7:{s:18:\"session_expiration\";i:0;s:16:\"auto_remember_me\";s:3:\"off\";s:21:\"enable_reg_pass_field\";s:3:\"off\";s:11:\"login_order\";s:7:\"default\";s:16:\"lostpassword_url\";s:3:\"off\";s:14:\"reset_settings\";s:3:\"off\";s:20:\"loginpress_uninstall\";s:3:\"off\";}', 'yes'),
(1525, 'loginpress_active_time', '1578936696', 'no'),
(1526, 'loginpress_login_redirects', '', 'yes'),
(1527, 'loginpress_social_logins', '', 'yes'),
(1528, 'loginpress_limit_login_attempts', '', 'yes'),
(1529, 'loginpress_autologin', '', 'yes'),
(1530, 'loginpress_hidelogin', '', 'yes'),
(1531, 'loginpress_premium', '', 'yes'),
(1537, '_loginpress_optin', 'no', 'yes'),
(1550, 'lwa_version', '3.1.9', 'yes'),
(1551, 'widget_loginwithajaxwidget', 'a:2:{i:2;a:6:{s:8:\"template\";s:5:\"modal\";s:5:\"title\";s:6:\"Log In\";s:8:\"remember\";s:1:\"1\";s:12:\"registration\";s:1:\"1\";s:14:\"title_loggedin\";s:13:\"Hi %username%\";s:12:\"profile_link\";s:1:\"1\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(1560, 'popup_status', 'on', 'yes'),
(1646, 'yit_recently_activated', 'a:4:{i:0;s:38:\"yith-woocommerce-social-login/init.php\";i:1;s:38:\"yith-woocommerce-social-login/init.php\";i:2;s:46:\"yith-woocommerce-social-login-premium/init.php\";i:3;s:38:\"yith-woocommerce-social-login/init.php\";}', 'yes'),
(1647, 'ywsl_use_php_sessions', '1', 'yes'),
(1648, 'yith_system_info', 'a:2:{s:11:\"system_info\";a:13:{s:14:\"min_wp_version\";a:1:{s:5:\"value\";s:5:\"5.3.2\";}s:14:\"min_wc_version\";a:1:{s:5:\"value\";s:5:\"3.8.1\";}s:15:\"wp_memory_limit\";a:1:{s:5:\"value\";i:536870912;}s:15:\"min_php_version\";a:1:{s:5:\"value\";s:6:\"7.2.19\";}s:15:\"min_tls_version\";a:1:{s:5:\"value\";s:3:\"1.2\";}s:15:\"imagick_version\";a:1:{s:5:\"value\";s:5:\"6.9.7\";}s:15:\"wp_cron_enabled\";a:1:{s:5:\"value\";b:1;}s:16:\"mbstring_enabled\";a:1:{s:5:\"value\";b:1;}s:17:\"simplexml_enabled\";a:1:{s:5:\"value\";b:1;}s:10:\"gd_enabled\";a:1:{s:5:\"value\";b:1;}s:13:\"iconv_enabled\";a:1:{s:5:\"value\";b:1;}s:15:\"opcache_enabled\";a:1:{s:5:\"value\";s:1:\"1\";}s:17:\"url_fopen_enabled\";a:1:{s:5:\"value\";s:1:\"1\";}}s:6:\"errors\";b:0;}', 'yes'),
(1649, 'ywsl_social_label', 'Login with:', 'yes'),
(1650, 'ywsl_social_label_checkout', 'Social sign-in', 'yes'),
(1651, 'ywsl_facebook_enable', 'yes', 'yes'),
(1652, 'ywsl_facebook_id', '2736093469784802', 'yes'),
(1653, 'ywsl_facebook_secret', 'e8644d229ade9454993d474406cabb35', 'yes'),
(1654, 'ywsl_twitter_enable', 'no', 'yes'),
(1655, 'ywsl_twitter_key', '', 'yes'),
(1656, 'ywsl_twitter_secret', '', 'yes'),
(1657, 'ywsl_google_enable', 'yes', 'yes'),
(1658, 'ywsl_google_id', '150027037259-o0jhuei11rp96ijvskfuo17a1mu9pop7.apps.googleusercontent.com', 'yes'),
(1659, 'ywsl_google_secret', '-ko8rZVB_OsNnFF1vQgZYHqW', 'yes'),
(1660, 'yit_plugin_fw_panel_wc_default_options_set', 'a:1:{s:29:\"yith_woocommerce_social_login\";b:1;}', 'yes'),
(1661, 'yith_plugin_fw_promo_2019_bis', '1', 'yes'),
(1662, '_site_transient_timeout_yith_promo_message', '3157975486', 'no'),
(1663, '_site_transient_yith_promo_message', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<!-- Default border color: #acc327 -->\n<!-- Default background color: #ecf7ed -->\n\n<promotions>\n    <expiry_date>2019-12-10</expiry_date>\n    <promo>\n        <promo_id>yithblackfriday2019</promo_id>\n        <title><![CDATA[<strong>YITH Black Friday</strong>]]></title>\n        <description><![CDATA[\n            Don\'t miss our <strong>30% discount</strong> on all our products! No coupon needed in cart. Valid from <strong>28th November</strong> to <strong>2nd December</strong>.\n        ]]></description>\n        <link>\n            <label>Get your deals now!</label>\n            <url><![CDATA[https://yithemes.com]]></url>\n        </link>\n        <style>\n            <image_bg_color>#272121</image_bg_color>\n            <border_color>#272121</border_color>\n            <background_color>#ffffff</background_color>\n        </style>\n        <start_date>2019-11-27 23:59:59</start_date>\n        <end_date>2019-12-03 08:00:00</end_date>\n    </promo>\n</promotions>', 'no'),
(1712, 'widget_yith_ywsl_social_login', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(1713, 'ywsl_redirect_custom_url', '', 'yes'),
(1714, 'ywsl_callback_url', 'hybrid', 'yes'),
(1715, 'ywsl_enable_log', 'no', 'yes'),
(1716, 'ywsl_show_in_checkout', 'yes', 'yes'),
(1717, 'ywsl_show_in_my_account_login_form', 'yes', 'yes'),
(1718, 'ywsl_show_in_my_account_register_form', 'yes', 'yes'),
(1719, 'ywsl_show_in_comments', 'no', 'yes'),
(1720, 'ywsl_show_in_comments_after_form', 'no', 'yes'),
(1721, 'ywsl_show_in_wp_login', 'yes', 'yes'),
(1722, 'ywsl_myaccount_show_list', 'before', 'yes'),
(1723, 'ywsl_facebook_icon', '', 'yes'),
(1724, 'ywsl_twitter_icon', '', 'yes'),
(1725, 'ywsl_google_icon', '', 'yes'),
(1726, 'ywsl_linkedin_enable', 'no', 'yes'),
(1727, 'ywsl_linkedin_key', '', 'yes'),
(1728, 'ywsl_linkedin_secret', '', 'yes'),
(1729, 'ywsl_linkedin_icon', '', 'yes'),
(1730, 'ywsl_yahoo_enable', 'no', 'yes'),
(1731, 'ywsl_yahoo_key', '', 'yes'),
(1732, 'ywsl_yahoo_secret', '', 'yes'),
(1733, 'ywsl_yahoo_icon', '', 'yes'),
(1734, 'ywsl_foursquare_enable', 'no', 'yes'),
(1735, 'ywsl_foursquare_key', '', 'yes'),
(1736, 'ywsl_foursquare_secret', '', 'yes'),
(1737, 'ywsl_foursquare_icon', '', 'yes'),
(1738, 'ywsl_live_enable', 'no', 'yes'),
(1739, 'ywsl_live_key', '', 'yes'),
(1740, 'ywsl_live_secret', '', 'yes'),
(1741, 'ywsl_live_icon', '', 'yes'),
(1742, 'ywsl_instagram_enable', 'no', 'yes'),
(1743, 'ywsl_instagram_key', '', 'yes'),
(1744, 'ywsl_instagram_secret', '', 'yes'),
(1745, 'ywsl_instagram_icon', '', 'yes'),
(1746, 'ywsl_paypal_enable', 'no', 'yes'),
(1747, 'ywsl_paypal_key', '', 'yes'),
(1748, 'ywsl_paypal_secret', '', 'yes'),
(1749, 'ywsl_paypal_icon', '', 'yes'),
(1750, 'ywsl_paypal_environment', 'before', 'yes'),
(1751, 'ywsl_tumblr_enable', 'no', 'yes'),
(1752, 'ywsl_tumblr_key', '', 'yes'),
(1753, 'ywsl_tumblr_secret', '', 'yes'),
(1754, 'ywsl_tumblr_icon', '', 'yes'),
(1755, 'ywsl_vkontakte_enable', 'no', 'yes'),
(1756, 'ywsl_vkontakte_id', '', 'yes'),
(1757, 'ywsl_vkontakte_secret', '', 'yes'),
(1758, 'ywsl_vkontakte_icon', '', 'yes'),
(1759, 'ywsl_github_enable', 'no', 'yes'),
(1760, 'ywsl_github_id', '', 'yes'),
(1761, 'ywsl_github_secret', '', 'yes'),
(1762, 'ywsl_github_icon', '', 'yes'),
(1768, 'ywsl_facebook_icon-yith-attachment-id', '0', 'yes'),
(1936, 'wpf_plugin_activation_errors', '', 'yes'),
(1937, 'widget_wpfwoofilterswidget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(1940, 'wpf_opts_data', 'a:5:{s:10:\"send_stats\";a:1:{s:5:\"value\";s:1:\"0\";}s:18:\"count_product_shop\";a:1:{s:5:\"value\";s:0:\"\";}s:12:\"move_sidebar\";a:1:{s:5:\"value\";s:1:\"0\";}s:11:\"start_usage\";a:2:{s:5:\"value\";i:1579034642;s:10:\"changed_on\";i:1579034642;}s:17:\"plug_welcome_show\";a:2:{s:5:\"value\";i:1579034642;s:10:\"changed_on\";i:1579034642;}}', 'yes'),
(1941, 'wpf_plug_was_used', '1', 'yes'),
(2082, '_transient_timeout_wc_product_loop_d85789d5df6d4160c21bdd8050f262fd', '1588713936', 'no'),
(2083, '_transient_wc_product_loop_d85789d5df6d4160c21bdd8050f262fd', 'a:2:{s:7:\"version\";s:10:\"1586118962\";s:5:\"value\";O:8:\"stdClass\":5:{s:3:\"ids\";a:6:{i:0;i:17;i:1;i:19;i:2;i:47;i:3;i:43;i:4;i:127;i:5;i:45;}s:5:\"total\";i:6;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:6;s:12:\"current_page\";i:1;}}', 'no'),
(2145, 'woocommerce_catalog_columns', '3', 'yes'),
(2146, 'woocommerce_maybe_regenerate_images_hash', '991b1ca641921cf0f5baf7a2fe85861b', 'yes'),
(2750, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(2919, 'widget_reveal-template', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(2995, 'woocommerce_paypal_settings', 'a:23:{s:7:\"enabled\";s:2:\"no\";s:5:\"title\";s:0:\"\";s:11:\"description\";s:0:\"\";s:5:\"email\";s:0:\"\";s:8:\"advanced\";s:0:\"\";s:8:\"testmode\";s:2:\"no\";s:5:\"debug\";s:2:\"no\";s:16:\"ipn_notification\";s:2:\"no\";s:14:\"receiver_email\";s:0:\"\";s:14:\"identity_token\";s:0:\"\";s:14:\"invoice_prefix\";s:0:\"\";s:13:\"send_shipping\";s:2:\"no\";s:16:\"address_override\";s:2:\"no\";s:13:\"paymentaction\";s:0:\"\";s:10:\"page_style\";s:0:\"\";s:9:\"image_url\";s:0:\"\";s:11:\"api_details\";s:0:\"\";s:12:\"api_username\";s:0:\"\";s:12:\"api_password\";s:0:\"\";s:13:\"api_signature\";s:0:\"\";s:20:\"sandbox_api_username\";s:0:\"\";s:20:\"sandbox_api_password\";s:0:\"\";s:21:\"sandbox_api_signature\";s:0:\"\";}', 'yes'),
(2996, 'woocommerce_gateway_order', 'a:5:{s:4:\"bacs\";i:0;s:6:\"cheque\";i:1;s:3:\"cod\";i:2;s:6:\"paypal\";i:3;s:16:\"woocommerce-seek\";i:4;}', 'yes'),
(3783, 'woocommerce_bacs_settings', 'a:11:{s:7:\"enabled\";s:3:\"yes\";s:5:\"title\";s:30:\"Transferencia bancaria directa\";s:11:\"description\";s:202:\"Realiza tu pago directamente en nuestra cuenta bancaria. Por favor, usa el número del pedido como referencia de pago. Tu pedido no se procesará hasta que se haya recibido el importe en nuestra cuenta.\";s:12:\"instructions\";s:0:\"\";s:15:\"account_details\";s:0:\"\";s:12:\"account_name\";s:0:\"\";s:14:\"account_number\";s:0:\"\";s:9:\"sort_code\";s:0:\"\";s:9:\"bank_name\";s:0:\"\";s:4:\"iban\";s:0:\"\";s:3:\"bic\";s:0:\"\";}', 'yes'),
(3791, 'woocommerce_bacs_accounts', 'a:1:{i:0;a:6:{s:12:\"account_name\";s:18:\"TARJETA DE CREDITO\";s:14:\"account_number\";s:19:\"4111 1111 1111 1111\";s:9:\"bank_name\";s:9:\"BANCO BCP\";s:9:\"sort_code\";s:13:\"6656565656565\";s:4:\"iban\";s:4:\"1332\";s:3:\"bic\";s:6:\"565656\";}}', 'yes'),
(3794, '_transient_orders-transient-version', '1585758377', 'yes'),
(3835, 'BeRocket_aapf_additional_tables_addon_position_data', 'a:2:{s:6:\"status\";i:100;s:3:\"run\";b:0;}', 'yes'),
(3836, 'berocket_plugin_error_1', 'a:7:{i:0;a:3:{s:7:\"message\";s:28:\"Additional tables generation\";s:4:\"data\";a:3:{s:5:\"query\";s:615:\"CREATE TABLE wp_braapf_term_taxonomy_hierarchical (\n        term_taxonomy_id bigint(20) NOT NULL,\n        term_id bigint(20) NOT NULL,\n        term_taxonomy_child_id bigint(20) NOT NULL,\n        term_child_id bigint(20) NOT NULL,\n        taxonomy varchar(32) NOT NULL,\n        INDEX term_taxonomy_id (term_taxonomy_id),\n        INDEX term_taxonomy_child_id (term_taxonomy_child_id),\n        INDEX child_parent_id (term_taxonomy_id, term_taxonomy_child_id),\n        UNIQUE uniqueid (term_taxonomy_id, term_id, term_taxonomy_child_id, term_child_id)\n        ) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;\";s:5:\"error\";a:1:{s:36:\"wp_braapf_term_taxonomy_hierarchical\";s:50:\"Created table wp_braapf_term_taxonomy_hierarchical\";}s:4:\"cron\";s:7:\"ENABLED\";}s:4:\"time\";i:1579707330;}i:1;a:3:{s:7:\"message\";s:28:\"Additional tables generation\";s:4:\"data\";a:3:{s:5:\"query\";s:302:\"CREATE TABLE wp_braapf_product_stock_status_parent (\n        post_id bigint(20) NOT NULL,\n        parent_id bigint(20) NOT NULL,\n        stock_status tinyint(2),\n        PRIMARY KEY (post_id),\n        INDEX stock_status (stock_status)\n        ) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;\";s:5:\"error\";a:1:{s:37:\"wp_braapf_product_stock_status_parent\";s:51:\"Created table wp_braapf_product_stock_status_parent\";}s:4:\"cron\";s:7:\"ENABLED\";}s:4:\"time\";i:1579707332;}i:2;a:3:{s:7:\"message\";s:28:\"Additional tables generation\";s:4:\"data\";a:3:{s:5:\"query\";s:136:\"SELECT MIN(wp_wc_product_meta_lookup.product_id) as min, MAX(wp_wc_product_meta_lookup.product_id) as max FROM wp_wc_product_meta_lookup\";s:5:\"error\";O:8:\"stdClass\":2:{s:3:\"min\";s:2:\"12\";s:3:\"max\";s:2:\"61\";}s:4:\"cron\";s:7:\"ENABLED\";}s:4:\"time\";i:1579707332;}i:3;a:3:{s:7:\"message\";s:47:\"insert_table_braapf_product_stock_status_parent\";s:4:\"data\";a:2:{s:8:\"start_id\";i:12;s:6:\"end_id\";i:5012;}s:4:\"time\";i:1579707334;}i:4;a:3:{s:7:\"message\";s:52:\"insert_table_braapf_product_stock_status_parent test\";s:4:\"data\";a:5:{s:8:\"start_id\";i:12;s:6:\"end_id\";i:5012;s:6:\"min_id\";i:12;s:6:\"max_id\";i:61;s:6:\"result\";O:8:\"stdClass\":3:{s:7:\"post_id\";s:2:\"12\";s:9:\"parent_id\";s:1:\"0\";s:12:\"stock_status\";s:1:\"0\";}}s:4:\"time\";i:1579707334;}i:5;a:3:{s:7:\"message\";s:28:\"Additional tables generation\";s:4:\"data\";a:3:{s:5:\"query\";s:451:\"CREATE TABLE wp_braapf_product_variation_attributes (\n        post_id bigint(20) NOT NULL,\n        parent_id bigint(20) NOT NULL,\n        meta_key varchar(32) NOT NULL,\n        meta_value_id bigint(20) NOT NULL,\n        INDEX post_id (post_id),\n        INDEX meta_key (meta_key),\n        INDEX meta_value_id (meta_value_id),\n        UNIQUE uniqueid (post_id, meta_key, meta_value_id)\n        ) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;\";s:5:\"error\";a:1:{s:38:\"wp_braapf_product_variation_attributes\";s:52:\"Created table wp_braapf_product_variation_attributes\";}s:4:\"cron\";s:7:\"ENABLED\";}s:4:\"time\";i:1579707336;}i:6;a:3:{s:7:\"message\";s:28:\"Additional tables generation\";s:4:\"data\";a:3:{s:5:\"query\";s:301:\"CREATE TABLE wp_braapf_variation_attributes (\n        post_id bigint(20) NOT NULL,\n        taxonomy varchar(32) NOT NULL,\n        INDEX post_id (post_id),\n        INDEX taxonomy (taxonomy),\n        UNIQUE uniqueid (post_id, taxonomy)\n        ) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;\";s:5:\"error\";a:1:{s:30:\"wp_braapf_variation_attributes\";s:44:\"Created table wp_braapf_variation_attributes\";}s:4:\"cron\";s:7:\"ENABLED\";}s:4:\"time\";i:1579707347;}}', 'yes'),
(3839, 'br_filters_options', 'a:61:{s:10:\"plugin_key\";s:0:\"\";s:19:\"no_products_message\";s:43:\"There are no products meeting your criteria\";s:12:\"pos_relative\";s:1:\"1\";s:17:\"no_products_class\";s:0:\"\";s:18:\"products_holder_id\";s:11:\"ul.products\";s:30:\"woocommerce_result_count_class\";s:25:\".woocommerce-result-count\";s:26:\"woocommerce_ordering_class\";s:25:\"form.woocommerce-ordering\";s:28:\"woocommerce_pagination_class\";s:23:\".woocommerce-pagination\";s:19:\"woocommerce_removes\";a:4:{s:12:\"result_count\";s:0:\"\";s:8:\"ordering\";s:0:\"\";s:10:\"pagination\";s:0:\"\";s:15:\"pagination_ajax\";s:0:\"\";}s:17:\"products_per_page\";s:0:\"\";s:15:\"attribute_count\";s:0:\"\";s:15:\"control_sorting\";s:1:\"1\";s:17:\"seo_friendly_urls\";s:1:\"1\";s:14:\"seo_uri_decode\";s:1:\"1\";s:12:\"recount_hide\";s:13:\"removeRecount\";s:9:\"slug_urls\";s:0:\"\";s:14:\"seo_meta_title\";s:0:\"\";s:17:\"seo_element_title\";s:0:\"\";s:18:\"seo_element_header\";s:0:\"\";s:23:\"seo_element_description\";s:0:\"\";s:21:\"seo_meta_title_visual\";s:33:\"BeRocket_AAPF_wcseo_title_visual1\";s:16:\"filters_turn_off\";s:0:\"\";s:10:\"hide_value\";a:4:{s:1:\"o\";s:1:\"1\";s:3:\"sel\";s:0:\"\";s:5:\"empty\";s:1:\"1\";s:6:\"button\";s:1:\"1\";}s:11:\"use_select2\";s:0:\"\";s:13:\"fixed_select2\";s:0:\"\";s:15:\"first_page_jump\";s:1:\"1\";s:15:\"scroll_shop_top\";s:0:\"\";s:18:\"scroll_shop_top_px\";s:4:\"-180\";s:18:\"selected_area_show\";s:0:\"\";s:24:\"selected_area_hide_empty\";s:0:\"\";s:13:\"products_only\";s:1:\"1\";s:21:\"out_of_stock_variable\";s:0:\"\";s:28:\"out_of_stock_variable_reload\";s:0:\"\";s:28:\"out_of_stock_variable_single\";s:0:\"\";s:16:\"alternative_load\";s:0:\"\";s:21:\"alternative_load_type\";s:6:\"wpajax\";s:19:\"page_same_as_filter\";s:0:\"\";s:13:\"use_get_query\";s:1:\"1\";s:16:\"styles_in_footer\";s:0:\"\";s:15:\"product_per_row\";s:1:\"4\";s:12:\"styles_input\";a:6:{s:8:\"checkbox\";a:8:{s:6:\"bcolor\";s:0:\"\";s:6:\"bwidth\";s:0:\"\";s:7:\"bradius\";s:0:\"\";s:6:\"fcolor\";s:0:\"\";s:9:\"backcolor\";s:0:\"\";s:4:\"icon\";s:0:\"\";s:8:\"fontsize\";s:0:\"\";s:5:\"theme\";s:0:\"\";}s:5:\"radio\";a:8:{s:6:\"bcolor\";s:0:\"\";s:6:\"bwidth\";s:0:\"\";s:7:\"bradius\";s:0:\"\";s:6:\"fcolor\";s:0:\"\";s:9:\"backcolor\";s:0:\"\";s:4:\"icon\";s:0:\"\";s:8:\"fontsize\";s:0:\"\";s:5:\"theme\";s:0:\"\";}s:6:\"slider\";a:9:{s:10:\"line_color\";s:0:\"\";s:11:\"line_height\";s:0:\"\";s:17:\"line_border_color\";s:0:\"\";s:17:\"line_border_width\";s:0:\"\";s:11:\"button_size\";s:0:\"\";s:12:\"button_color\";s:0:\"\";s:19:\"button_border_color\";s:0:\"\";s:19:\"button_border_width\";s:0:\"\";s:20:\"button_border_radius\";s:0:\"\";}s:5:\"pc_ub\";a:10:{s:10:\"back_color\";s:0:\"\";s:12:\"border_color\";s:0:\"\";s:9:\"font_size\";s:0:\"\";s:10:\"font_color\";s:0:\"\";s:14:\"show_font_size\";s:0:\"\";s:10:\"close_size\";s:0:\"\";s:15:\"show_font_color\";s:0:\"\";s:21:\"show_font_color_hover\";s:0:\"\";s:16:\"close_font_color\";s:0:\"\";s:22:\"close_font_color_hover\";s:0:\"\";}s:13:\"product_count\";s:5:\"round\";s:22:\"product_count_position\";s:0:\"\";}s:16:\"child_pre_indent\";s:0:\"\";s:14:\"ajax_load_icon\";s:0:\"\";s:14:\"ajax_load_text\";a:4:{s:3:\"top\";s:0:\"\";s:6:\"bottom\";s:0:\"\";s:4:\"left\";s:0:\"\";s:5:\"right\";s:0:\"\";}s:11:\"description\";a:2:{s:4:\"show\";s:5:\"click\";s:4:\"hide\";s:5:\"click\";}s:9:\"user_func\";a:3:{s:13:\"before_update\";s:0:\"\";s:9:\"on_update\";s:0:\"\";s:12:\"after_update\";s:0:\"\";}s:10:\"custom_css\";s:0:\"\";s:15:\"user_custom_css\";s:0:\"\";s:13:\"br_opened_tab\";s:7:\"general\";s:11:\"tags_custom\";s:1:\"1\";s:9:\"ajax_site\";s:0:\"\";s:10:\"search_fix\";s:1:\"1\";s:17:\"use_tax_for_price\";s:0:\"\";s:20:\"disable_font_awesome\";s:0:\"\";s:10:\"debug_mode\";s:0:\"\";s:17:\"ajax_request_load\";s:1:\"1\";s:23:\"ajax_request_load_style\";s:6:\"jquery\";s:28:\"fontawesome_frontend_disable\";s:0:\"\";s:28:\"fontawesome_frontend_version\";s:0:\"\";s:6:\"addons\";a:1:{i:0;s:40:\"/additional_tables/additional_tables.php\";}s:16:\"purge_cache_time\";i:1579725330;}', 'yes'),
(3840, 'br_filters_version', '1.4.1.4', 'yes'),
(3841, 'widget_berocket_aapf_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(3842, 'widget_berocket_aapf_group', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(3843, 'widget_berocket_aapf_single', 'a:2:{i:2;a:2:{s:9:\"filter_id\";i:72;s:12:\"custom_class\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(3845, 'berocket_filter_open_wizard_on_settings', '1', 'yes'),
(3846, 'BeRocket_Framework_plugins_version_check', 'a:1:{s:12:\"ajax_filters\";s:7:\"1.4.1.4\";}', 'yes'),
(3847, 'berocket_admin_notices', 'a:1:{i:20;a:1:{i:0;a:1:{i:0;a:1:{s:9:\"subscribe\";a:15:{s:5:\"start\";i:0;s:3:\"end\";i:0;s:4:\"name\";s:9:\"subscribe\";s:4:\"html\";s:136:\"Subscribe to get latest BeRocket news and updates, plugin recommendations and configuration help, promotional email with discount codes.\";s:9:\"righthtml\";s:43:\"<a class=\"berocket_no_thanks\">No thanks</a>\";s:10:\"rightwidth\";i:80;s:13:\"nothankswidth\";i:60;s:12:\"contentwidth\";i:400;s:9:\"subscribe\";b:1;s:6:\"closed\";s:1:\"0\";s:8:\"priority\";i:20;s:6:\"height\";i:50;s:6:\"repeat\";b:0;s:11:\"repeatcount\";i:1;s:5:\"image\";a:4:{s:5:\"local\";s:126:\"http://bmw-ecommerce.loc/wp-content/plugins/woocommerce-ajax-filters/berocket/includes/../assets/images/ad_white_on_orange.png\";s:5:\"width\";i:239;s:6:\"height\";i:118;s:5:\"scale\";d:0.423728813559322;}}}}}}', 'yes'),
(3852, 'berocket_current_displayed_notice', 'a:15:{s:5:\"start\";i:0;s:3:\"end\";i:0;s:4:\"name\";s:9:\"subscribe\";s:4:\"html\";s:136:\"Subscribe to get latest BeRocket news and updates, plugin recommendations and configuration help, promotional email with discount codes.\";s:9:\"righthtml\";s:43:\"<a class=\"berocket_no_thanks\">No thanks</a>\";s:10:\"rightwidth\";i:80;s:13:\"nothankswidth\";i:60;s:12:\"contentwidth\";i:400;s:9:\"subscribe\";b:1;s:6:\"closed\";s:1:\"0\";s:8:\"priority\";i:20;s:6:\"height\";i:50;s:6:\"repeat\";b:0;s:11:\"repeatcount\";i:1;s:5:\"image\";a:4:{s:5:\"local\";s:126:\"http://bmw-ecommerce.loc/wp-content/plugins/woocommerce-ajax-filters/berocket/includes/../assets/images/ad_white_on_orange.png\";s:5:\"width\";i:239;s:6:\"height\";i:118;s:5:\"scale\";d:0.423728813559322;}}', 'yes'),
(3853, 'berocket_admin_notices_rate_stars', 'a:1:{i:1;a:2:{s:4:\"time\";i:1580330142;s:5:\"count\";i:0;}}', 'yes'),
(3858, 'berocket_information_notices', 'a:1:{s:40:\"ajax_filters_additional_table_status_end\";a:11:{s:4:\"name\";s:40:\"ajax_filters_additional_table_status_end\";s:4:\"html\";s:136:\"<strong>BeRocket AJAX Product Filters</strong> Additional tables was succesfully generated. They will be used automatically when needed.\";s:9:\"righthtml\";s:40:\"<a class=\"berocket_no_thanks\">Got it</a>\";s:10:\"rightwidth\";i:50;s:13:\"nothankswidth\";i:50;s:12:\"contentwidth\";i:400;s:6:\"closed\";s:1:\"0\";s:8:\"priority\";i:20;s:6:\"height\";i:50;s:5:\"image\";a:3:{s:5:\"width\";i:0;s:6:\"height\";i:0;s:5:\"scale\";i:0;}s:9:\"subscribe\";b:0;}}', 'yes'),
(3864, 'berocket_aapf_filters_setup_wizard_list', 'a:1:{s:13:\"single_filter\";i:3;}', 'yes'),
(3865, 'br_get_taxonomy_hierarchy_product_cat', 'a:5:{s:5:\"terms\";a:5:{i:15;O:7:\"WP_Term\":14:{s:7:\"term_id\";i:15;s:4:\"name\";s:6:\"Niños\";s:4:\"slug\";s:5:\"ninos\";s:10:\"term_group\";i:0;s:16:\"term_taxonomy_id\";i:15;s:8:\"taxonomy\";s:11:\"product_cat\";s:11:\"description\";s:0:\"\";s:6:\"parent\";i:0;s:5:\"count\";i:0;s:6:\"filter\";s:3:\"raw\";s:10:\"term_order\";s:2:\"12\";s:5:\"child\";a:1:{i:26;O:7:\"WP_Term\":14:{s:7:\"term_id\";i:26;s:4:\"name\";s:11:\"Acccesorios\";s:4:\"slug\";s:11:\"acccesorios\";s:10:\"term_group\";i:0;s:16:\"term_taxonomy_id\";i:26;s:8:\"taxonomy\";s:11:\"product_cat\";s:11:\"description\";s:0:\"\";s:6:\"parent\";i:15;s:5:\"count\";i:0;s:6:\"filter\";s:3:\"raw\";s:10:\"term_order\";s:2:\"13\";s:5:\"child\";a:0:{}s:10:\"child_list\";a:0:{}s:11:\"parent_list\";a:1:{i:26;a:1:{i:0;i:26;}}}}s:10:\"child_list\";a:1:{i:26;a:1:{i:0;i:26;}}s:11:\"parent_list\";a:2:{i:15;a:2:{i:0;i:26;i:1;i:15;}i:26;a:1:{i:0;i:26;}}}i:18;O:7:\"WP_Term\":14:{s:7:\"term_id\";i:18;s:4:\"name\";s:14:\"BMW Accesorios\";s:4:\"slug\";s:14:\"bmw-accesorios\";s:10:\"term_group\";i:0;s:16:\"term_taxonomy_id\";i:18;s:8:\"taxonomy\";s:11:\"product_cat\";s:11:\"description\";s:0:\"\";s:6:\"parent\";i:0;s:5:\"count\";i:0;s:6:\"filter\";s:3:\"raw\";s:10:\"term_order\";s:1:\"2\";s:5:\"child\";a:1:{i:29;O:7:\"WP_Term\":14:{s:7:\"term_id\";i:29;s:4:\"name\";s:5:\"Otros\";s:4:\"slug\";s:5:\"otros\";s:10:\"term_group\";i:0;s:16:\"term_taxonomy_id\";i:29;s:8:\"taxonomy\";s:11:\"product_cat\";s:11:\"description\";s:0:\"\";s:6:\"parent\";i:18;s:5:\"count\";i:0;s:6:\"filter\";s:3:\"raw\";s:10:\"term_order\";s:1:\"3\";s:5:\"child\";a:0:{}s:10:\"child_list\";a:0:{}s:11:\"parent_list\";a:1:{i:29;a:1:{i:0;i:29;}}}}s:10:\"child_list\";a:1:{i:29;a:1:{i:0;i:29;}}s:11:\"parent_list\";a:2:{i:18;a:2:{i:0;i:29;i:1;i:18;}i:29;a:1:{i:0;i:29;}}}i:19;O:7:\"WP_Term\":14:{s:7:\"term_id\";i:19;s:4:\"name\";s:8:\"BMW Sale\";s:4:\"slug\";s:8:\"bmw-sale\";s:10:\"term_group\";i:0;s:16:\"term_taxonomy_id\";i:19;s:8:\"taxonomy\";s:11:\"product_cat\";s:11:\"description\";s:0:\"\";s:6:\"parent\";i:0;s:5:\"count\";i:0;s:6:\"filter\";s:3:\"raw\";s:10:\"term_order\";s:1:\"4\";s:5:\"child\";a:1:{i:27;O:7:\"WP_Term\":14:{s:7:\"term_id\";i:27;s:4:\"name\";s:10:\"Accesorios\";s:4:\"slug\";s:19:\"accesorios-bmw-sale\";s:10:\"term_group\";i:0;s:16:\"term_taxonomy_id\";i:27;s:8:\"taxonomy\";s:11:\"product_cat\";s:11:\"description\";s:0:\"\";s:6:\"parent\";i:19;s:5:\"count\";i:0;s:6:\"filter\";s:3:\"raw\";s:10:\"term_order\";s:1:\"5\";s:5:\"child\";a:0:{}s:10:\"child_list\";a:0:{}s:11:\"parent_list\";a:1:{i:27;a:1:{i:0;i:27;}}}}s:10:\"child_list\";a:1:{i:27;a:1:{i:0;i:27;}}s:11:\"parent_list\";a:2:{i:19;a:2:{i:0;i:27;i:1;i:19;}i:27;a:1:{i:0;i:27;}}}i:17;O:7:\"WP_Term\":14:{s:7:\"term_id\";i:17;s:4:\"name\";s:6:\"Hombre\";s:4:\"slug\";s:6:\"hombre\";s:10:\"term_group\";i:0;s:16:\"term_taxonomy_id\";i:17;s:8:\"taxonomy\";s:11:\"product_cat\";s:11:\"description\";s:0:\"\";s:6:\"parent\";i:0;s:5:\"count\";i:0;s:6:\"filter\";s:3:\"raw\";s:10:\"term_order\";s:1:\"6\";s:5:\"child\";a:1:{i:28;O:7:\"WP_Term\":14:{s:7:\"term_id\";i:28;s:4:\"name\";s:10:\"Accesorios\";s:4:\"slug\";s:17:\"accesorios-hombre\";s:10:\"term_group\";i:0;s:16:\"term_taxonomy_id\";i:28;s:8:\"taxonomy\";s:11:\"product_cat\";s:11:\"description\";s:0:\"\";s:6:\"parent\";i:17;s:5:\"count\";i:0;s:6:\"filter\";s:3:\"raw\";s:10:\"term_order\";s:1:\"7\";s:5:\"child\";a:0:{}s:10:\"child_list\";a:0:{}s:11:\"parent_list\";a:1:{i:28;a:1:{i:0;i:28;}}}}s:10:\"child_list\";a:1:{i:28;a:1:{i:0;i:28;}}s:11:\"parent_list\";a:2:{i:17;a:2:{i:0;i:28;i:1;i:17;}i:28;a:1:{i:0;i:28;}}}i:16;O:7:\"WP_Term\":14:{s:7:\"term_id\";i:16;s:4:\"name\";s:5:\"Mujer\";s:4:\"slug\";s:5:\"mujer\";s:10:\"term_group\";i:0;s:16:\"term_taxonomy_id\";i:16;s:8:\"taxonomy\";s:11:\"product_cat\";s:11:\"description\";s:0:\"\";s:6:\"parent\";i:0;s:5:\"count\";i:8;s:6:\"filter\";s:3:\"raw\";s:10:\"term_order\";s:1:\"1\";s:5:\"child\";a:4:{i:21;O:7:\"WP_Term\":14:{s:7:\"term_id\";i:21;s:4:\"name\";s:10:\"Accesorios\";s:4:\"slug\";s:10:\"accesorios\";s:10:\"term_group\";i:0;s:16:\"term_taxonomy_id\";i:21;s:8:\"taxonomy\";s:11:\"product_cat\";s:11:\"description\";s:0:\"\";s:6:\"parent\";i:16;s:5:\"count\";i:6;s:6:\"filter\";s:3:\"raw\";s:10:\"term_order\";s:1:\"8\";s:5:\"child\";a:0:{}s:10:\"child_list\";a:0:{}s:11:\"parent_list\";a:1:{i:21;a:1:{i:0;i:21;}}}i:23;O:7:\"WP_Term\":14:{s:7:\"term_id\";i:23;s:4:\"name\";s:7:\"Deporte\";s:4:\"slug\";s:7:\"deporte\";s:10:\"term_group\";i:0;s:16:\"term_taxonomy_id\";i:23;s:8:\"taxonomy\";s:11:\"product_cat\";s:11:\"description\";s:0:\"\";s:6:\"parent\";i:16;s:5:\"count\";i:1;s:6:\"filter\";s:3:\"raw\";s:10:\"term_order\";s:1:\"9\";s:5:\"child\";a:0:{}s:10:\"child_list\";a:0:{}s:11:\"parent_list\";a:1:{i:23;a:1:{i:0;i:23;}}}i:22;O:7:\"WP_Term\":14:{s:7:\"term_id\";i:22;s:4:\"name\";s:8:\"Equipaje\";s:4:\"slug\";s:8:\"equipaje\";s:10:\"term_group\";i:0;s:16:\"term_taxonomy_id\";i:22;s:8:\"taxonomy\";s:11:\"product_cat\";s:11:\"description\";s:0:\"\";s:6:\"parent\";i:16;s:5:\"count\";i:1;s:6:\"filter\";s:3:\"raw\";s:10:\"term_order\";s:2:\"10\";s:5:\"child\";a:0:{}s:10:\"child_list\";a:0:{}s:11:\"parent_list\";a:1:{i:22;a:1:{i:0;i:22;}}}i:20;O:7:\"WP_Term\":14:{s:7:\"term_id\";i:20;s:4:\"name\";s:4:\"Ropa\";s:4:\"slug\";s:4:\"ropa\";s:10:\"term_group\";i:0;s:16:\"term_taxonomy_id\";i:20;s:8:\"taxonomy\";s:11:\"product_cat\";s:11:\"description\";s:0:\"\";s:6:\"parent\";i:16;s:5:\"count\";i:0;s:6:\"filter\";s:3:\"raw\";s:10:\"term_order\";s:2:\"11\";s:5:\"child\";a:0:{}s:10:\"child_list\";a:0:{}s:11:\"parent_list\";a:1:{i:20;a:1:{i:0;i:20;}}}}s:10:\"child_list\";a:4:{i:21;a:1:{i:0;i:21;}i:23;a:1:{i:0;i:23;}i:22;a:1:{i:0;i:22;}i:20;a:1:{i:0;i:20;}}s:11:\"parent_list\";a:5:{i:16;a:5:{i:0;i:20;i:1;i:22;i:2;i:23;i:3;i:21;i:4;i:16;}i:21;a:1:{i:0;i:21;}i:23;a:1:{i:0;i:23;}i:22;a:1:{i:0;i:22;}i:20;a:1:{i:0;i:20;}}}}s:9:\"hierarchy\";a:13:{i:15;a:1:{i:0;i:15;}i:26;a:2:{i:0;i:15;i:1;i:26;}i:18;a:1:{i:0;i:18;}i:29;a:2:{i:0;i:18;i:1;i:29;}i:19;a:1:{i:0;i:19;}i:27;a:2:{i:0;i:19;i:1;i:27;}i:17;a:1:{i:0;i:17;}i:28;a:2:{i:0;i:17;i:1;i:28;}i:16;a:1:{i:0;i:16;}i:21;a:2:{i:0;i:16;i:1;i:21;}i:23;a:2:{i:0;i:16;i:1;i:23;}i:22;a:2:{i:0;i:16;i:1;i:22;}i:20;a:2:{i:0;i:16;i:1;i:20;}}s:5:\"child\";a:13:{i:15;a:2:{i:0;i:26;i:1;i:15;}i:26;a:1:{i:0;i:26;}i:18;a:2:{i:0;i:29;i:1;i:18;}i:29;a:1:{i:0;i:29;}i:19;a:2:{i:0;i:27;i:1;i:19;}i:27;a:1:{i:0;i:27;}i:17;a:2:{i:0;i:28;i:1;i:17;}i:28;a:1:{i:0;i:28;}i:16;a:5:{i:0;i:20;i:1;i:22;i:2;i:23;i:3;i:21;i:4;i:16;}i:21;a:1:{i:0;i:21;}i:23;a:1:{i:0;i:23;}i:22;a:1:{i:0;i:22;}i:20;a:1:{i:0;i:20;}}s:3:\"md5\";s:42:\"c349e4f52b9cba65f526034d14e5d1d91579725330\";s:4:\"time\";i:1579725422;}', 'yes'),
(3923, 'woocommerce_default_catalog_orderby', 'popularity', 'yes'),
(4494, 'woocommerce_maxmind_geolocation_settings', 'a:1:{s:15:\"database_prefix\";s:32:\"AZz2vw9BUU8Cl4bwjImAPQGLyOmZyRxO\";}', 'yes'),
(4497, 'woocommerce_version', '3.9.0', 'yes'),
(4499, '_transient_wc_attribute_taxonomies', 'a:2:{i:0;O:8:\"stdClass\":6:{s:12:\"attribute_id\";s:1:\"1\";s:14:\"attribute_name\";s:5:\"color\";s:15:\"attribute_label\";s:5:\"Color\";s:14:\"attribute_type\";s:5:\"color\";s:17:\"attribute_orderby\";s:10:\"menu_order\";s:16:\"attribute_public\";s:1:\"0\";}i:1;O:8:\"stdClass\":6:{s:12:\"attribute_id\";s:1:\"2\";s:14:\"attribute_name\";s:4:\"size\";s:15:\"attribute_label\";s:4:\"Size\";s:14:\"attribute_type\";s:6:\"select\";s:17:\"attribute_orderby\";s:10:\"menu_order\";s:16:\"attribute_public\";s:1:\"1\";}}', 'yes'),
(4893, 'acf_version', '5.7.7', 'yes'),
(5346, 'options_store_list_option_0_store_list_option_name', 'Garash Store Los Olivos', 'no'),
(5347, '_options_store_list_option_0_store_list_option_name', 'field_5e384d5121b67', 'no'),
(5348, 'options_store_list_option_0_store_list_option_address', '+511 1234567\r\nAvenida Siempre viva 123 ', 'no'),
(5349, '_options_store_list_option_0_store_list_option_address', 'field_5e384d6a21b68', 'no'),
(5350, 'options_store_list_option_1_store_list_option_name', 'Sucursal San miguel', 'no'),
(5351, '_options_store_list_option_1_store_list_option_name', 'field_5e384d5121b67', 'no'),
(5352, 'options_store_list_option_1_store_list_option_address', '(-51) 960579083\r\nAvenida Siempre viva 123 ', 'no'),
(5353, '_options_store_list_option_1_store_list_option_address', 'field_5e384d6a21b68', 'no'),
(5354, 'options_store_list_option_2_store_list_option_name', 'Tienda Jockey Plaza', 'no'),
(5355, '_options_store_list_option_2_store_list_option_name', 'field_5e384d5121b67', 'no'),
(5356, 'options_store_list_option_2_store_list_option_address', '(-51) 123457841\r\nAvenida Siempre viva 123 ', 'no'),
(5357, '_options_store_list_option_2_store_list_option_address', 'field_5e384d6a21b68', 'no'),
(5362, 'options_store_list_option', '3', 'no'),
(5363, '_options_store_list_option', 'field_5e384d4521b66', 'no'),
(5375, 'options_social_networks_0_social_networks_image', ' <svg xmlns=\"http://www.w3.org/2000/svg\" width=\"20\" height=\"20\" viewBox=\"0 0 20 20\">\r\n                                <path d=\"M17.857,2.25H2.143A2.143,2.143,0,0,0,0,4.393V20.107A2.143,2.143,0,0,0,2.143,22.25H8.27v-6.8H5.458v-3.2H8.27V9.811C8.27,7.036,9.922,5.5,12.452,5.5a17.039,17.039,0,0,1,2.479.216V8.443h-1.4a1.6,1.6,0,0,0-1.8,1.729V12.25H14.8l-.491,3.2H11.73v6.8h6.127A2.143,2.143,0,0,0,20,20.107V4.393A2.143,2.143,0,0,0,17.857,2.25Z\" transform=\"translate(0 -2.25)\" />\r\n                            </svg>', 'no'),
(5376, '_options_social_networks_0_social_networks_image', 'field_5e384f6f392cb', 'no'),
(5377, 'options_social_networks_0_social_networks_link', 'https://www.facebook.com/', 'no'),
(5378, '_options_social_networks_0_social_networks_link', 'field_5e384f8b392cc', 'no'),
(5379, 'options_social_networks_0_social_networks_status', '1', 'no'),
(5380, '_options_social_networks_0_social_networks_status', 'field_5e384f9c392cd', 'no'),
(5381, 'options_social_networks', '2', 'no'),
(5382, '_options_social_networks', 'field_5e384f50392ca', 'no'),
(5384, 'options_social_networks_0_social_networks_name', 'Facebook', 'no'),
(5385, '_options_social_networks_0_social_networks_name', 'field_5e3850400c868', 'no'),
(5386, 'options_social_networks_1_social_networks_name', 'Instagram', 'no'),
(5387, '_options_social_networks_1_social_networks_name', 'field_5e3850400c868', 'no'),
(5388, 'options_social_networks_1_social_networks_image', ' <svg xmlns=\"http://www.w3.org/2000/svg\" width=\"20.005\" height=\"20\" viewBox=\"0 0 20.005 20\">\r\n                                <path fill=\"#8e8e8e\" d=\"M10,7.11a5.128,5.128,0,1,0,5.128,5.128A5.12,5.12,0,0,0,10,7.11Zm0,8.461a3.334,3.334,0,1,1,3.334-3.334A3.34,3.34,0,0,1,10,15.571ZM16.533,6.9a1.2,1.2,0,1,1-1.2-1.2A1.193,1.193,0,0,1,16.533,6.9Zm3.4,1.214a5.919,5.919,0,0,0-1.616-4.191,5.958,5.958,0,0,0-4.191-1.616c-1.651-.094-6.6-.094-8.252,0A5.949,5.949,0,0,0,1.681,3.919,5.938,5.938,0,0,0,.065,8.11c-.094,1.651-.094,6.6,0,8.252a5.919,5.919,0,0,0,1.616,4.191,5.965,5.965,0,0,0,4.191,1.616c1.651.094,6.6.094,8.252,0a5.919,5.919,0,0,0,4.191-1.616,5.958,5.958,0,0,0,1.616-4.191c.094-1.651.094-6.6,0-8.247ZM17.8,18.133a3.375,3.375,0,0,1-1.9,1.9c-1.317.522-4.44.4-5.9.4s-4.583.116-5.9-.4a3.375,3.375,0,0,1-1.9-1.9c-.522-1.317-.4-4.44-.4-5.9s-.116-4.583.4-5.9a3.375,3.375,0,0,1,1.9-1.9c1.317-.522,4.44-.4,5.9-.4s4.583-.116,5.9.4a3.375,3.375,0,0,1,1.9,1.9c.522,1.317.4,4.44.4,5.9S18.318,16.821,17.8,18.133Z\" transform=\"translate(0.005 -2.238)\" />\r\n                            </svg>', 'no'),
(5389, '_options_social_networks_1_social_networks_image', 'field_5e384f6f392cb', 'no'),
(5390, 'options_social_networks_1_social_networks_link', 'https://www.facebook.com/', 'no'),
(5391, '_options_social_networks_1_social_networks_link', 'field_5e384f8b392cc', 'no'),
(5392, 'options_social_networks_1_social_networks_status', '1', 'no'),
(5393, '_options_social_networks_1_social_networks_status', 'field_5e384f9c392cd', 'no'),
(5404, 'options_contact_option_phone', '(+51) 01 512 1515', 'no'),
(5405, '_options_contact_option_phone', 'field_5e3851e0211fe', 'no'),
(5406, 'options_contact_option_email', 'info@garash.com', 'no'),
(5407, '_options_contact_option_email', 'field_5e385235211ff', 'no'),
(5408, 'options_contact_option_hours', 'Lunes - viernes, 9.00 - 18.00', 'no'),
(5409, '_options_contact_option_hours', 'field_5e38524121200', 'no'),
(5874, 'woocommerce_woocommerce-seek_settings', 'a:5:{s:7:\"enabled\";s:2:\"no\";s:9:\"test-mode\";s:3:\"yes\";s:11:\"merchant_id\";s:9:\"522591303\";s:4:\"user\";s:35:\"integraciones.visanet@necomplus.com\";s:8:\"password\";s:8:\"d5e7nk$M\";}', 'yes'),
(6087, 'woocommerce_flat_rate_7_settings', 'a:3:{s:5:\"title\";s:20:\"Despacho a domicilio\";s:10:\"tax_status\";s:4:\"none\";s:4:\"cost\";s:1:\"0\";}', 'yes'),
(6088, 'woocommerce_local_pickup_6_settings', 'a:3:{s:5:\"title\";s:14:\"Recogida local\";s:10:\"tax_status\";s:4:\"none\";s:4:\"cost\";s:0:\"\";}', 'yes'),
(6216, 'options_store_list_option_0_store_list_option_schedule', 'Lunes a Viernes: 9:00 am a 20:00pm - Sábado: 8:00 am a 13:00 pm', 'no'),
(6217, '_options_store_list_option_0_store_list_option_schedule', 'field_5e3b29ecccdc2', 'no'),
(6218, 'options_store_list_option_1_store_list_option_schedule', 'Sábado: 8:00 am a 13:00 pm', 'no'),
(6219, '_options_store_list_option_1_store_list_option_schedule', 'field_5e3b29ecccdc2', 'no'),
(6220, 'options_store_list_option_2_store_list_option_schedule', 'Sábado: 8:00 am a 13:00 pm', 'no'),
(6221, '_options_store_list_option_2_store_list_option_schedule', 'field_5e3b29ecccdc2', 'no'),
(6985, 'password_strength', '0', 'yes'),
(6986, 'captcha_enabled', 'no', 'yes'),
(7100, 'loco_recent', 'a:4:{s:1:\"c\";s:21:\"Loco_data_RecentItems\";s:1:\"v\";i:0;s:1:\"d\";a:1:{s:6:\"bundle\";a:1:{s:65:\"plugin.woo-ajax-loginregister/woocommerce-ajax-login-register.php\";i:1581373797;}}s:1:\"t\";i:1581373797;}', 'no'),
(7364, 'woocommerce_db_version', '3.9.0', 'yes'),
(7365, 'yit_social_login_google_check', 'yes', 'yes'),
(7366, 'user_registration_review_notice_dismissed', 'yes', 'yes'),
(7414, 'woocommerce_free_shipping_8_settings', 'a:3:{s:5:\"title\";s:15:\"Envío gratuito\";s:8:\"requires\";s:10:\"min_amount\";s:10:\"min_amount\";s:3:\"200\";}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(9894, '_transient_timeout_wc_product_children_19', '1587763556', 'no'),
(9895, '_transient_wc_product_children_19', 'a:2:{s:3:\"all\";a:1:{i:0;i:33;}s:7:\"visible\";a:1:{i:0;i:33;}}', 'no'),
(9898, '_transient_timeout_wc_product_children_18', '1587763561', 'no'),
(9899, '_transient_wc_product_children_18', 'a:2:{s:3:\"all\";a:3:{i:0;i:54;i:1;i:56;i:2;i:57;}s:7:\"visible\";a:3:{i:0;i:54;i:1;i:56;i:2;i:57;}}', 'no'),
(9902, '_transient_timeout_wc_product_children_12', '1587763567', 'no'),
(9903, '_transient_wc_product_children_12', 'a:2:{s:3:\"all\";a:0:{}s:7:\"visible\";a:0:{}}', 'no'),
(9905, '_transient_timeout_wc_var_prices_19', '1587763576', 'no'),
(9906, '_transient_wc_var_prices_19', '{\"version\":\"1585171567\",\"f9e544f77b7eac7add281ef28ca5559f\":{\"price\":{\"33\":\"40.00\"},\"regular_price\":{\"33\":\"40.00\"},\"sale_price\":{\"33\":\"40.00\"}}}', 'no'),
(9907, '_transient_timeout_wc_var_prices_18', '1587763576', 'no'),
(9908, '_transient_wc_var_prices_18', '{\"version\":\"1585171567\",\"f9e544f77b7eac7add281ef28ca5559f\":{\"price\":{\"54\":\"350.00\",\"56\":\"300.00\",\"57\":\"90.00\"},\"regular_price\":{\"54\":\"350.00\",\"56\":\"350.00\",\"57\":\"100.00\"},\"sale_price\":{\"54\":\"350.00\",\"56\":\"300.00\",\"57\":\"90.00\"}}}', 'no'),
(9909, '_transient_timeout_wc_var_prices_12', '1587763576', 'no'),
(9910, '_transient_wc_var_prices_12', '{\"version\":\"1585171567\",\"f9e544f77b7eac7add281ef28ca5559f\":{\"price\":[],\"regular_price\":[],\"sale_price\":[]}}', 'no'),
(10000, '_transient_timeout_wc_term_counts', '1588032367', 'no'),
(10001, '_transient_wc_term_counts', 'a:12:{i:16;s:1:\"9\";i:29;s:0:\"\";i:27;s:0:\"\";i:17;s:1:\"1\";i:28;s:0:\"\";i:21;s:1:\"7\";i:23;s:1:\"1\";i:22;s:1:\"1\";i:20;s:0:\"\";i:15;s:0:\"\";i:26;s:0:\"\";i:25;s:1:\"4\";}', 'no'),
(10062, 'product_cat_children', 'a:3:{i:16;a:4:{i:0;i:20;i:1;i:21;i:2;i:22;i:3;i:23;}i:15;a:1:{i:0;i:26;}i:17;a:1:{i:0;i:28;}}', 'yes'),
(10161, '_transient_timeout_wc_shipping_method_count_legacy', '1588031840', 'no'),
(10162, '_transient_wc_shipping_method_count_legacy', 'a:2:{s:7:\"version\";s:10:\"1582564881\";s:5:\"value\";i:4;}', 'no'),
(10165, '_transient_timeout_wc_shipping_method_count', '1588031963', 'no'),
(10166, '_transient_wc_shipping_method_count', 'a:2:{s:7:\"version\";s:10:\"1582564881\";s:5:\"value\";i:4;}', 'no'),
(10601, '_transient_timeout_external_ip_address_127.0.0.1', '1586304316', 'no'),
(10602, '_transient_external_ip_address_127.0.0.1', '190.237.202.200', 'no'),
(10619, '_site_transient_timeout_browser_b4046c447614dcbe06d949fe3062a42a', '1586304352', 'no'),
(10620, '_site_transient_browser_b4046c447614dcbe06d949fe3062a42a', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"80.0.3987.149\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(10629, '_transient_timeout_wc_low_stock_count', '1588291555', 'no'),
(10630, '_transient_wc_low_stock_count', '0', 'no'),
(10631, '_transient_timeout_wc_outofstock_count', '1588291555', 'no'),
(10632, '_transient_wc_outofstock_count', '0', 'no'),
(10638, 'theme_mods_garash', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(10721, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.1.1\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1585690908;s:7:\"version\";s:5:\"5.1.1\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(10722, 'CF7DBPlugin_NoSaveFields', '/.*wpcf7.*/,_wpnonce', 'yes'),
(10723, 'CF7DBPlugin__version', '2.10.26', 'yes'),
(10724, 'CF7DBPlugin__installed', '1', 'yes'),
(10725, 'CF7DBPlugin_IntegrateWithCF7', 'true', 'yes'),
(10726, 'CF7DBPlugin_GenerateSubmitTimeInCF7Email', 'false', 'yes'),
(10727, 'CF7DBPlugin_IntegrateWithFSCF', 'true', 'yes'),
(10728, 'CF7DBPlugin_IntegrateWithJetPackContactForm', 'true', 'yes'),
(10729, 'CF7DBPlugin_IntegrateWithGravityForms', 'true', 'yes'),
(10730, 'CF7DBPlugin_IntegrateWithFormidableForms', 'true', 'yes'),
(10731, 'CF7DBPlugin_IntegrateWithWrContactForms', 'true', 'yes'),
(10732, 'CF7DBPlugin_IntegrateWithQuform', 'true', 'yes'),
(10733, 'CF7DBPlugin_IntegrateWithNinjaForms', 'true', 'yes'),
(10734, 'CF7DBPlugin_IntegrateWithCalderaForms', 'true', 'yes'),
(10735, 'CF7DBPlugin_IntegrateWithEnfoldThemForms', 'true', 'yes'),
(10736, 'CF7DBPlugin_IntegrateWithCFormsII', 'true', 'yes'),
(10737, 'CF7DBPlugin_IntegrateWithFormCraft', 'true', 'yes'),
(10738, 'CF7DBPlugin_IntegrateWithVerySimpleContactForm', 'true', 'yes'),
(10739, 'CF7DBPlugin_IntegrateWithFMS', 'true', 'yes'),
(10740, 'CF7DBPlugin_HideAdminPanelFromNonAdmins', 'true', 'yes'),
(11175, '_transient_timeout_acf_plugin_updates', '1586291340', 'no'),
(11176, '_transient_acf_plugin_updates', 'a:4:{s:7:\"plugins\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";a:8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"5.8.9\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:3:\"5.4\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:10:\"expiration\";i:172800;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.7.7\";}}', 'no'),
(11184, '_transient_wc_count_comments', 'O:8:\"stdClass\":7:{s:14:\"total_comments\";i:1;s:3:\"all\";i:1;s:8:\"approved\";s:1:\"1\";s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}', 'yes'),
(11185, '_transient_as_comment_count', 'O:8:\"stdClass\":7:{s:8:\"approved\";s:1:\"1\";s:14:\"total_comments\";i:1;s:3:\"all\";i:1;s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}', 'yes'),
(11186, '_site_transient_timeout_php_check_78e1776a2900a8656cebe7d7ea2a07cc', '1586723760', 'no'),
(11187, '_site_transient_php_check_78e1776a2900a8656cebe7d7ea2a07cc', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(11196, '_transient_timeout_wc_report_sales_by_date', '1586205362', 'no'),
(11197, '_transient_wc_report_sales_by_date', 'a:8:{s:32:\"b6b06b21b5ad847de20334c08525b570\";a:1:{i:0;O:8:\"stdClass\":2:{s:5:\"count\";s:1:\"1\";s:9:\"post_date\";s:19:\"2020-04-01 11:16:25\";}}s:32:\"dd6662c95e3060e1ed1137174e0b98f7\";a:0:{}s:32:\"61f2bd25da962757549427abb998da87\";a:1:{i:0;O:8:\"stdClass\":2:{s:16:\"order_item_count\";s:1:\"7\";s:9:\"post_date\";s:19:\"2020-04-01 11:16:25\";}}s:32:\"acf0678589fa562d19cedf277f7e944b\";N;s:32:\"856b37292108465c992a23e6923665ce\";a:1:{i:0;O:8:\"stdClass\":5:{s:11:\"total_sales\";s:4:\"1580\";s:14:\"total_shipping\";s:1:\"0\";s:9:\"total_tax\";s:1:\"0\";s:18:\"total_shipping_tax\";s:1:\"0\";s:9:\"post_date\";s:19:\"2020-04-01 11:16:25\";}}s:32:\"a19ec17979ac2d5c95632aebf3233b8f\";a:0:{}s:32:\"8de321d57cbdb5f2587ba9e26f9d7ebc\";a:0:{}s:32:\"e54bf7840d47b39d0ad8aba8c1476ffa\";a:0:{}}', 'no'),
(11198, '_transient_timeout_wc_admin_report', '1586205362', 'no'),
(11199, '_transient_wc_admin_report', 'a:2:{s:32:\"d74fa0b42d946d1c927f1f192a961f18\";a:1:{i:0;O:8:\"stdClass\":2:{s:15:\"sparkline_value\";s:4:\"1580\";s:9:\"post_date\";s:19:\"2020-04-01 11:16:25\";}}s:32:\"279f5f7bead13a84191d832712fdf9db\";a:1:{i:0;O:8:\"stdClass\":3:{s:10:\"product_id\";s:2:\"17\";s:15:\"sparkline_value\";s:1:\"5\";s:9:\"post_date\";s:19:\"2020-04-01 11:16:25\";}}}', 'no'),
(11393, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:3:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:63:\"https://downloads.wordpress.org/release/es_ES/wordpress-5.4.zip\";s:6:\"locale\";s:5:\"es_ES\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:63:\"https://downloads.wordpress.org/release/es_ES/wordpress-5.4.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.4\";s:7:\"version\";s:3:\"5.4\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.4.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.4.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.4-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.4-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.4\";s:7:\"version\";s:3:\"5.4\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.4.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.4.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.4-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.4-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.4\";s:7:\"version\";s:3:\"5.4\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1586261247;s:15:\"version_checked\";s:5:\"5.3.2\";s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:4:\"core\";s:4:\"slug\";s:7:\"default\";s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:5:\"5.3.2\";s:7:\"updated\";s:19:\"2020-03-01 12:12:36\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.3.2/es_ES.zip\";s:10:\"autoupdate\";b:1;}}}', 'no'),
(11394, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1586261244;s:7:\"checked\";a:1:{s:6:\"garash\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(11459, '_transient_doing_cron', '1586261228.6486010551452636718750', 'yes'),
(11460, '_transient_timeout__woocommerce_helper_subscriptions', '1586262131', 'no'),
(11461, '_transient__woocommerce_helper_subscriptions', 'a:0:{}', 'no'),
(11462, '_site_transient_timeout_theme_roots', '1586263031', 'no'),
(11463, '_site_transient_theme_roots', 'a:1:{s:6:\"garash\";s:7:\"/themes\";}', 'no'),
(11464, '_transient_timeout__woocommerce_helper_updates', '1586304431', 'no'),
(11465, '_transient__woocommerce_helper_updates', 'a:4:{s:4:\"hash\";s:32:\"d751713988987e9331980363e24189ce\";s:7:\"updated\";i:1586261231;s:8:\"products\";a:0:{}s:6:\"errors\";a:1:{i:0;s:10:\"http-error\";}}', 'no'),
(11466, 'auto_updater.lock', '1586261247', 'no'),
(11467, '_site_transient_update_plugins', 'O:8:\"stdClass\":1:{s:12:\"last_checked\";i:1586261252;}', 'no');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(4, 6, '_edit_last', '1'),
(5, 6, '_edit_lock', '1586119024:1'),
(6, 7, '_wp_attached_file', 'woocommerce-placeholder.png'),
(7, 7, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:27:\"woocommerce-placeholder.png\";s:5:\"sizes\";a:7:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:35:\"woocommerce-placeholder-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-600x600.png\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:37:\"woocommerce-placeholder-1024x1024.png\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(8, 6, '_wp_page_template', 'templates/template-home.php'),
(9, 8, '_wp_attached_file', '2020/01/Polo-Hombre.png'),
(10, 8, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:307;s:6:\"height\";i:342;s:4:\"file\";s:23:\"2020/01/Polo-Hombre.png\";s:5:\"sizes\";a:6:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:23:\"Polo-Hombre-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:23:\"Polo-Hombre-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"Polo-Hombre-269x300.png\";s:5:\"width\";i:269;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"Polo-Hombre-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:23:\"Polo-Hombre-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:23:\"Polo-Hombre-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(11, 9, '_wp_attached_file', '2020/01/reloj.png'),
(12, 9, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:372;s:6:\"height\";i:414;s:4:\"file\";s:17:\"2020/01/reloj.png\";s:5:\"sizes\";a:6:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:17:\"reloj-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:17:\"reloj-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"reloj-270x300.png\";s:5:\"width\";i:270;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"reloj-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:17:\"reloj-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:17:\"reloj-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(13, 10, '_wp_attached_file', '2020/01/bolsita.png'),
(14, 10, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:315;s:6:\"height\";i:351;s:4:\"file\";s:19:\"2020/01/bolsita.png\";s:5:\"sizes\";a:6:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:19:\"bolsita-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:19:\"bolsita-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"bolsita-269x300.png\";s:5:\"width\";i:269;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"bolsita-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:19:\"bolsita-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"bolsita-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(15, 11, '_wp_attached_file', '2020/01/Gorra.png'),
(16, 11, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:340;s:6:\"height\";i:379;s:4:\"file\";s:17:\"2020/01/Gorra.png\";s:5:\"sizes\";a:6:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:17:\"Gorra-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:17:\"Gorra-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"Gorra-269x300.png\";s:5:\"width\";i:269;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"Gorra-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:17:\"Gorra-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:17:\"Gorra-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(17, 12, '_edit_last', '1'),
(18, 12, '_edit_lock', '1585171426:1'),
(19, 13, '_wp_attached_file', '2020/01/80222446464.png'),
(20, 13, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:200;s:6:\"height\";i:200;s:4:\"file\";s:23:\"2020/01/80222446464.png\";s:5:\"sizes\";a:3:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:23:\"80222446464-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"80222446464-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:23:\"80222446464-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(21, 14, '_wp_attached_file', '2020/01/Carrito-de-jugyete.png'),
(22, 14, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:200;s:6:\"height\";i:119;s:4:\"file\";s:30:\"2020/01/Carrito-de-jugyete.png\";s:5:\"sizes\";a:3:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:30:\"Carrito-de-jugyete-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"Carrito-de-jugyete-150x119.png\";s:5:\"width\";i:150;s:6:\"height\";i:119;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:30:\"Carrito-de-jugyete-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(23, 15, '_wp_attached_file', '2020/01/maleta2.png'),
(24, 15, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:200;s:6:\"height\";i:200;s:4:\"file\";s:19:\"2020/01/maleta2.png\";s:5:\"sizes\";a:3:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:19:\"maleta2-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"maleta2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"maleta2-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(25, 16, '_wp_attached_file', '2020/01/29.png'),
(26, 16, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:200;s:6:\"height\";i:200;s:4:\"file\";s:14:\"2020/01/29.png\";s:5:\"sizes\";a:3:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:14:\"29-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"29-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:14:\"29-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(27, 12, '_thumbnail_id', '13'),
(28, 12, '_regular_price', '450'),
(29, 12, '_sale_price', '320'),
(30, 12, 'total_sales', '0'),
(31, 12, '_tax_status', 'taxable'),
(32, 12, '_tax_class', ''),
(33, 12, '_manage_stock', 'no'),
(34, 12, '_backorders', 'no'),
(35, 12, '_sold_individually', 'no'),
(36, 12, '_virtual', 'no'),
(37, 12, '_downloadable', 'no'),
(38, 12, '_download_limit', '-1'),
(39, 12, '_download_expiry', '-1'),
(40, 12, '_stock', NULL),
(41, 12, '_stock_status', 'outofstock'),
(42, 12, '_wc_average_rating', '0'),
(43, 12, '_wc_review_count', '0'),
(44, 12, '_product_version', '3.7.1'),
(45, 12, '_price', '320'),
(46, 17, '_edit_last', '1'),
(47, 17, '_edit_lock', '1585171426:1'),
(48, 17, '_thumbnail_id', '14'),
(49, 17, '_regular_price', '309'),
(50, 17, 'total_sales', '24'),
(51, 17, '_tax_status', 'taxable'),
(52, 17, '_tax_class', ''),
(53, 17, '_manage_stock', 'no'),
(54, 17, '_backorders', 'no'),
(55, 17, '_sold_individually', 'no'),
(56, 17, '_virtual', 'no'),
(57, 17, '_downloadable', 'no'),
(58, 17, '_download_limit', '-1'),
(59, 17, '_download_expiry', '-1'),
(60, 17, '_stock', NULL),
(61, 17, '_stock_status', 'instock'),
(62, 17, '_wc_average_rating', '0'),
(63, 17, '_wc_review_count', '0'),
(64, 17, '_product_version', '3.7.1'),
(65, 17, '_price', '300'),
(66, 18, '_edit_last', '1'),
(67, 18, '_thumbnail_id', '15'),
(69, 18, 'total_sales', '0'),
(70, 18, '_tax_status', 'taxable'),
(71, 18, '_tax_class', ''),
(72, 18, '_manage_stock', 'yes'),
(73, 18, '_backorders', 'no'),
(74, 18, '_sold_individually', 'no'),
(75, 18, '_virtual', 'no'),
(76, 18, '_downloadable', 'no'),
(77, 18, '_download_limit', '-1'),
(78, 18, '_download_expiry', '-1'),
(79, 18, '_stock', '1000'),
(80, 18, '_stock_status', 'instock'),
(81, 18, '_wc_average_rating', '0'),
(82, 18, '_wc_review_count', '0'),
(83, 18, '_product_version', '3.7.1'),
(85, 18, '_edit_lock', '1585171426:1'),
(86, 19, '_edit_last', '1'),
(87, 19, '_edit_lock', '1585171425:1'),
(88, 19, '_thumbnail_id', '16'),
(90, 19, 'total_sales', '5'),
(91, 19, '_tax_status', 'taxable'),
(92, 19, '_tax_class', ''),
(93, 19, '_manage_stock', 'no'),
(94, 19, '_backorders', 'no'),
(95, 19, '_sold_individually', 'no'),
(96, 19, '_virtual', 'no'),
(97, 19, '_downloadable', 'no'),
(98, 19, '_download_limit', '-1'),
(99, 19, '_download_expiry', '-1'),
(100, 19, '_stock', NULL),
(101, 19, '_stock_status', 'instock'),
(102, 19, '_wc_average_rating', '0'),
(103, 19, '_wc_review_count', '0'),
(104, 19, '_product_version', '3.7.1'),
(106, 20, '_menu_item_type', 'post_type'),
(107, 20, '_menu_item_menu_item_parent', '0'),
(108, 20, '_menu_item_object_id', '6'),
(109, 20, '_menu_item_object', 'page'),
(110, 20, '_menu_item_target', ''),
(111, 20, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(112, 20, '_menu_item_xfn', ''),
(113, 20, '_menu_item_url', ''),
(124, 22, '_menu_item_type', 'taxonomy'),
(125, 22, '_menu_item_menu_item_parent', '0'),
(126, 22, '_menu_item_object_id', '16'),
(127, 22, '_menu_item_object', 'product_cat'),
(128, 22, '_menu_item_target', ''),
(129, 22, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(130, 22, '_menu_item_xfn', ''),
(131, 22, '_menu_item_url', ''),
(133, 23, '_menu_item_type', 'taxonomy'),
(134, 23, '_menu_item_menu_item_parent', '22'),
(135, 23, '_menu_item_object_id', '21'),
(136, 23, '_menu_item_object', 'product_cat'),
(137, 23, '_menu_item_target', ''),
(138, 23, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(139, 23, '_menu_item_xfn', ''),
(140, 23, '_menu_item_url', ''),
(142, 24, '_menu_item_type', 'taxonomy'),
(143, 24, '_menu_item_menu_item_parent', '22'),
(144, 24, '_menu_item_object_id', '23'),
(145, 24, '_menu_item_object', 'product_cat'),
(146, 24, '_menu_item_target', ''),
(147, 24, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(148, 24, '_menu_item_xfn', ''),
(149, 24, '_menu_item_url', ''),
(151, 25, '_menu_item_type', 'taxonomy'),
(152, 25, '_menu_item_menu_item_parent', '22'),
(153, 25, '_menu_item_object_id', '22'),
(154, 25, '_menu_item_object', 'product_cat'),
(155, 25, '_menu_item_target', ''),
(156, 25, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(157, 25, '_menu_item_xfn', ''),
(158, 25, '_menu_item_url', ''),
(160, 26, '_menu_item_type', 'taxonomy'),
(161, 26, '_menu_item_menu_item_parent', '22'),
(162, 26, '_menu_item_object_id', '20'),
(163, 26, '_menu_item_object', 'product_cat'),
(164, 26, '_menu_item_target', ''),
(165, 26, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(166, 26, '_menu_item_xfn', ''),
(167, 26, '_menu_item_url', ''),
(169, 27, '_menu_item_type', 'taxonomy'),
(170, 27, '_menu_item_menu_item_parent', '0'),
(171, 27, '_menu_item_object_id', '17'),
(172, 27, '_menu_item_object', 'product_cat'),
(173, 27, '_menu_item_target', ''),
(174, 27, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(175, 27, '_menu_item_xfn', ''),
(176, 27, '_menu_item_url', ''),
(178, 28, '_menu_item_type', 'taxonomy'),
(179, 28, '_menu_item_menu_item_parent', '0'),
(180, 28, '_menu_item_object_id', '15'),
(181, 28, '_menu_item_object', 'product_cat'),
(182, 28, '_menu_item_target', ''),
(183, 28, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(184, 28, '_menu_item_xfn', ''),
(185, 28, '_menu_item_url', ''),
(205, 31, '_edit_last', '1'),
(206, 31, '_edit_lock', '1579409730:1'),
(207, 31, '_wp_page_template', 'default'),
(208, 32, '_edit_last', '1'),
(209, 32, '_edit_lock', '1579409291:1'),
(210, 32, '_wp_page_template', 'templates/template-cart.php'),
(211, 17, '_sale_price', '300'),
(214, 19, '_product_attributes', 'a:1:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"0\";s:10:\"is_visible\";s:1:\"1\";s:12:\"is_variation\";s:1:\"1\";s:11:\"is_taxonomy\";s:1:\"1\";}}'),
(215, 18, '_product_attributes', 'a:2:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"0\";s:10:\"is_visible\";s:1:\"1\";s:12:\"is_variation\";s:1:\"0\";s:11:\"is_taxonomy\";s:1:\"1\";}s:7:\"pa_size\";a:6:{s:4:\"name\";s:7:\"pa_size\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"1\";s:10:\"is_visible\";s:1:\"1\";s:12:\"is_variation\";s:1:\"1\";s:11:\"is_taxonomy\";s:1:\"1\";}}'),
(219, 18, '_sku', '666'),
(220, 33, '_variation_description', ''),
(221, 33, 'total_sales', '0'),
(222, 33, '_tax_status', 'taxable'),
(223, 33, '_tax_class', 'parent'),
(224, 33, '_manage_stock', 'no'),
(225, 33, '_backorders', 'no'),
(226, 33, '_sold_individually', 'no'),
(227, 33, '_virtual', 'no'),
(228, 33, '_downloadable', 'no'),
(229, 33, '_download_limit', '-1'),
(230, 33, '_download_expiry', '-1'),
(231, 33, '_stock', NULL),
(232, 33, '_stock_status', 'instock'),
(233, 33, '_wc_average_rating', '0'),
(234, 33, '_wc_review_count', '0'),
(235, 33, 'attribute_pa_color', 'red'),
(236, 33, '_product_version', '3.8.1'),
(237, 33, '_regular_price', '40'),
(238, 33, '_price', '40'),
(242, 33, '_thumbnail_id', '9'),
(243, 19, '_price', '40'),
(244, 19, '_product_image_gallery', '15,13,10,14,11,8,46'),
(248, 36, '_edit_lock', '1586196375:1'),
(263, 36, '_edit_last', '1'),
(264, 36, '_wp_page_template', 'templates/template-woocommerce-account.php'),
(275, 39, 'user_registration_form_setting_default_user_role', 'subscriber'),
(276, 39, 'user_registration_form_setting_enable_strong_password', 'yes'),
(277, 39, 'user_registration_form_setting_minimum_password_strength', '3'),
(278, 39, 'user_registration_form_setting_redirect_options', ''),
(279, 39, 'user_registration_form_setting_form_submit_label', 'Submit'),
(280, 39, 'user_registration_form_setting_enable_recaptcha_support', 'no'),
(281, 39, 'user_registration_form_template', 'Default'),
(282, 39, 'user_registration_form_custom_class', ''),
(283, 39, 'user_registration_form_row_ids', '[\"0\"]'),
(284, 41, '_edit_lock', '1585171425:1'),
(285, 41, '_edit_last', '1'),
(286, 42, '_wp_attached_file', '2020/01/bolso.png'),
(287, 42, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:263;s:6:\"height\";i:156;s:4:\"file\";s:17:\"2020/01/bolso.png\";s:5:\"sizes\";a:3:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:17:\"bolso-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"bolso-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:17:\"bolso-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(288, 41, '_thumbnail_id', '42'),
(289, 41, '_regular_price', '500'),
(290, 41, 'total_sales', '0'),
(291, 41, '_tax_status', 'taxable'),
(292, 41, '_tax_class', ''),
(293, 41, '_manage_stock', 'no'),
(294, 41, '_backorders', 'no'),
(295, 41, '_sold_individually', 'no'),
(296, 41, '_virtual', 'no'),
(297, 41, '_downloadable', 'no'),
(298, 41, '_download_limit', '-1'),
(299, 41, '_download_expiry', '-1'),
(300, 41, '_stock', NULL),
(301, 41, '_stock_status', 'instock'),
(302, 41, '_wc_average_rating', '0'),
(303, 41, '_wc_review_count', '0'),
(304, 41, '_product_version', '3.7.1'),
(305, 41, '_price', '500'),
(306, 43, '_edit_lock', '1580241037:1'),
(307, 43, '_edit_last', '1'),
(308, 44, '_wp_attached_file', '2020/01/Reloj-hombre.png'),
(309, 44, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:199;s:6:\"height\";i:199;s:4:\"file\";s:24:\"2020/01/Reloj-hombre.png\";s:5:\"sizes\";a:3:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:24:\"Reloj-hombre-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"Reloj-hombre-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:24:\"Reloj-hombre-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(310, 43, '_thumbnail_id', '44'),
(311, 43, '_regular_price', '150'),
(312, 43, 'total_sales', '1'),
(313, 43, '_tax_status', 'taxable'),
(314, 43, '_tax_class', ''),
(315, 43, '_manage_stock', 'no'),
(316, 43, '_backorders', 'no'),
(317, 43, '_sold_individually', 'no'),
(318, 43, '_virtual', 'no'),
(319, 43, '_downloadable', 'no'),
(320, 43, '_download_limit', '-1'),
(321, 43, '_download_expiry', '-1'),
(322, 43, '_stock', NULL),
(323, 43, '_stock_status', 'instock'),
(324, 43, '_wc_average_rating', '0'),
(325, 43, '_wc_review_count', '0'),
(326, 43, '_product_version', '3.9.0'),
(327, 43, '_price', '150'),
(328, 45, '_edit_lock', '1580241036:1'),
(329, 45, '_edit_last', '1'),
(330, 46, '_wp_attached_file', '2020/01/osito-llavero.png'),
(331, 46, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:180;s:6:\"height\";i:201;s:4:\"file\";s:25:\"2020/01/osito-llavero.png\";s:5:\"sizes\";a:3:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:25:\"osito-llavero-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"osito-llavero-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:25:\"osito-llavero-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(332, 45, '_thumbnail_id', '46'),
(333, 45, 'total_sales', '0'),
(334, 45, '_tax_status', 'taxable'),
(335, 45, '_tax_class', ''),
(336, 45, '_manage_stock', 'no'),
(337, 45, '_backorders', 'no'),
(338, 45, '_sold_individually', 'no'),
(339, 45, '_virtual', 'no'),
(340, 45, '_downloadable', 'no'),
(341, 45, '_download_limit', '-1'),
(342, 45, '_download_expiry', '-1'),
(343, 45, '_stock', NULL),
(344, 45, '_stock_status', 'instock'),
(345, 45, '_wc_average_rating', '0'),
(346, 45, '_wc_review_count', '0'),
(347, 45, '_product_version', '3.9.0'),
(348, 45, '_regular_price', '89'),
(349, 45, '_price', '89'),
(350, 47, '_edit_lock', '1585171425:1'),
(351, 47, '_edit_last', '1'),
(352, 48, '_wp_attached_file', '2020/01/Billetera.png'),
(353, 48, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:180;s:6:\"height\";i:201;s:4:\"file\";s:21:\"2020/01/Billetera.png\";s:5:\"sizes\";a:3:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"Billetera-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"Billetera-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"Billetera-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(354, 47, '_thumbnail_id', '48'),
(355, 47, '_regular_price', '90'),
(356, 47, 'total_sales', '1'),
(357, 47, '_tax_status', 'taxable'),
(358, 47, '_tax_class', ''),
(359, 47, '_manage_stock', 'no'),
(360, 47, '_backorders', 'no'),
(361, 47, '_sold_individually', 'no'),
(362, 47, '_virtual', 'no'),
(363, 47, '_downloadable', 'no'),
(364, 47, '_download_limit', '-1'),
(365, 47, '_download_expiry', '-1'),
(366, 47, '_stock', NULL),
(367, 47, '_stock_status', 'instock'),
(368, 47, '_wc_average_rating', '0'),
(369, 47, '_wc_review_count', '0'),
(370, 47, '_product_version', '3.7.1'),
(371, 47, '_price', '90'),
(454, 54, '_variation_description', ''),
(455, 54, 'total_sales', '0'),
(456, 54, '_tax_status', 'taxable'),
(457, 54, '_tax_class', 'parent'),
(458, 54, '_manage_stock', 'yes'),
(459, 54, '_backorders', 'no'),
(460, 54, '_sold_individually', 'no'),
(461, 54, '_virtual', 'no'),
(462, 54, '_downloadable', 'no'),
(463, 54, '_download_limit', '-1'),
(464, 54, '_download_expiry', '-1'),
(465, 54, '_stock', '100'),
(466, 54, '_stock_status', 'instock'),
(467, 54, '_wc_average_rating', '0'),
(468, 54, '_wc_review_count', '0'),
(469, 54, 'attribute_pa_color', 'blue'),
(470, 54, 'attribute_pa_size', 'l'),
(471, 54, '_product_version', '3.8.1'),
(473, 54, '_regular_price', '350'),
(474, 54, '_price', '350'),
(481, 18, '_default_attributes', 'a:1:{s:7:\"pa_size\";s:1:\"l\";}'),
(484, 56, '_variation_description', ''),
(485, 56, 'total_sales', '0'),
(486, 56, '_tax_status', 'taxable'),
(487, 56, '_tax_class', 'parent'),
(488, 56, '_manage_stock', 'yes'),
(489, 56, '_backorders', 'no'),
(490, 56, '_sold_individually', 'no'),
(491, 56, '_virtual', 'no'),
(492, 56, '_downloadable', 'no'),
(493, 56, '_download_limit', '-1'),
(494, 56, '_download_expiry', '-1'),
(495, 56, '_stock', '200'),
(496, 56, '_stock_status', 'instock'),
(497, 56, '_wc_average_rating', '0'),
(498, 56, '_wc_review_count', '0'),
(499, 56, 'attribute_pa_size', 'm'),
(500, 56, 'attribute_pa_color', 'blue'),
(501, 56, '_product_version', '3.8.1'),
(502, 57, '_variation_description', ''),
(503, 57, 'total_sales', '0'),
(504, 57, '_tax_status', 'taxable'),
(505, 57, '_tax_class', 'parent'),
(506, 57, '_manage_stock', 'yes'),
(507, 57, '_backorders', 'no'),
(508, 57, '_sold_individually', 'no'),
(509, 57, '_virtual', 'no'),
(510, 57, '_downloadable', 'no'),
(511, 57, '_download_limit', '-1'),
(512, 57, '_download_expiry', '-1'),
(513, 57, '_stock', '200'),
(514, 57, '_stock_status', 'instock'),
(515, 57, '_wc_average_rating', '0'),
(516, 57, '_wc_review_count', '0'),
(517, 57, 'attribute_pa_size', 'l'),
(518, 57, 'attribute_pa_color', 'green'),
(519, 57, '_product_version', '3.8.1'),
(540, 56, '_regular_price', '350'),
(541, 56, '_sale_price', '300'),
(542, 56, '_price', '300'),
(543, 57, '_regular_price', '100'),
(544, 57, '_sale_price', '90'),
(545, 57, '_price', '90'),
(546, 18, '_price', '90'),
(547, 18, '_price', '300'),
(548, 18, '_price', '350'),
(555, 60, '_edit_lock', '1585513020:1'),
(556, 60, '_edit_last', '1'),
(557, 60, '_wp_page_template', 'templates/template-checkout.php'),
(575, 12, '_product_attributes', 'a:1:{s:8:\"pa_color\";a:6:{s:4:\"name\";s:8:\"pa_color\";s:5:\"value\";s:0:\"\";s:8:\"position\";s:1:\"0\";s:10:\"is_visible\";s:1:\"1\";s:12:\"is_variation\";s:1:\"1\";s:11:\"is_taxonomy\";s:1:\"1\";}}'),
(576, 62, '_edit_lock', '1581030882:1'),
(577, 62, '_edit_last', '1'),
(578, 62, '_wp_page_template', 'templates/template-terms-conditions.php'),
(579, 63, '_edit_lock', '1579621021:1'),
(580, 63, '_edit_last', '1'),
(581, 63, '_wp_page_template', 'default'),
(582, 64, '_edit_lock', '1581090639:1'),
(583, 64, '_edit_last', '1'),
(584, 64, '_wp_page_template', 'templates/template-privacy-policies.php'),
(585, 65, '_edit_lock', '1585439806:1'),
(586, 65, '_edit_last', '1'),
(587, 65, '_wp_page_template', 'templates/template-complaints-book.php'),
(588, 66, '_edit_lock', '1579624791:1'),
(589, 66, '_edit_last', '1'),
(590, 66, '_wp_page_template', 'templates/template-faq.php'),
(591, 68, '_order_key', 'wc_order_LbiLRqKGGVDev'),
(592, 68, '_customer_user', '1'),
(593, 68, '_payment_method', 'bacs'),
(594, 68, '_payment_method_title', 'Transferencia bancaria directa'),
(595, 68, '_customer_ip_address', '172.16.238.1'),
(596, 68, '_customer_user_agent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36'),
(597, 68, '_created_via', 'checkout'),
(598, 68, '_cart_hash', '321ac827afc19cb7b3dba8267561604c'),
(599, 68, '_billing_first_name', 'HUGO'),
(600, 68, '_billing_last_name', 'TRIGOSO PAREDES'),
(601, 68, '_billing_address_1', 'AV LAS LOMAS'),
(602, 68, '_billing_city', 'LIMA'),
(603, 68, '_billing_state', 'LIM'),
(604, 68, '_billing_postcode', 'LIMA01'),
(605, 68, '_billing_country', 'PE'),
(606, 68, '_billing_email', 'htrigoso@seek.pe'),
(607, 68, '_billing_phone', '918172291'),
(608, 68, '_shipping_first_name', 'HUGO'),
(609, 68, '_shipping_last_name', 'TRIGOSO'),
(610, 68, '_shipping_address_1', 'AV LOMAS'),
(611, 68, '_shipping_city', 'LIMA'),
(612, 68, '_shipping_state', 'LIM'),
(613, 68, '_shipping_postcode', 'LIMA01'),
(614, 68, '_shipping_country', 'PE'),
(615, 68, '_order_currency', 'PEN'),
(616, 68, '_cart_discount', '0'),
(617, 68, '_cart_discount_tax', '0'),
(618, 68, '_order_shipping', '0.00'),
(619, 68, '_order_shipping_tax', '0'),
(620, 68, '_order_tax', '0'),
(621, 68, '_order_total', '5120.00'),
(622, 68, '_order_version', '3.8.1'),
(623, 68, '_prices_include_tax', 'no'),
(624, 68, '_billing_address_index', 'HUGO TRIGOSO PAREDES  AV LAS LOMAS  LIMA LIM LIMA01 PE htrigoso@seek.pe 918172291'),
(625, 68, '_shipping_address_index', 'HUGO TRIGOSO  AV LOMAS  LIMA LIM LIMA01 PE'),
(626, 68, '_shipping_razon_social', 'SEEK'),
(627, 68, '_shipping_ruc', '20526541235'),
(628, 68, '_shipping_fiscal', 'AV LOMAS 3432 MIRAFLORES'),
(629, 68, 'is_vat_exempt', 'no'),
(630, 68, '_recorded_sales', 'yes'),
(631, 68, '_recorded_coupon_usage_counts', 'yes'),
(632, 68, '_order_stock_reduced', 'yes'),
(633, 69, '_edit_last', '1'),
(634, 69, '_wp_page_template', 'default'),
(635, 69, '_edit_lock', '1581005515:1'),
(640, 72, 'br_product_filter', 'a:69:{s:4:\"data\";a:0:{}s:12:\"br_wp_footer\";s:0:\"\";s:11:\"widget_type\";s:6:\"filter\";s:10:\"reset_hide\";s:19:\"berocket_no_filters\";s:5:\"title\";s:0:\"\";s:11:\"filter_type\";s:9:\"attribute\";s:9:\"attribute\";s:5:\"price\";s:15:\"custom_taxonomy\";s:11:\"product_cat\";s:4:\"type\";s:6:\"slider\";s:25:\"select_first_element_text\";s:0:\"\";s:8:\"operator\";s:2:\"OR\";s:15:\"order_values_by\";s:0:\"\";s:17:\"order_values_type\";s:3:\"asc\";s:17:\"text_before_price\";s:0:\"\";s:16:\"text_after_price\";s:0:\"\";s:20:\"enable_slider_inputs\";s:0:\"\";s:18:\"parent_product_cat\";s:0:\"\";s:11:\"depth_count\";s:1:\"0\";s:22:\"widget_collapse_enable\";s:0:\"\";s:14:\"widget_is_hide\";s:0:\"\";s:27:\"show_product_count_per_attr\";s:0:\"\";s:21:\"hide_child_attributes\";s:0:\"\";s:19:\"hide_collapse_arrow\";s:0:\"\";s:20:\"use_value_with_color\";s:0:\"\";s:14:\"values_per_row\";s:0:\"\";s:17:\"icon_before_title\";s:0:\"\";s:16:\"icon_after_title\";s:0:\"\";s:17:\"icon_before_value\";s:0:\"\";s:16:\"icon_after_value\";s:0:\"\";s:12:\"price_values\";s:0:\"\";s:11:\"description\";s:0:\"\";s:9:\"css_class\";s:0:\"\";s:16:\"tag_cloud_height\";s:1:\"0\";s:18:\"tag_cloud_min_font\";s:2:\"12\";s:18:\"tag_cloud_max_font\";s:2:\"14\";s:20:\"tag_cloud_tags_count\";s:3:\"100\";s:14:\"tag_cloud_type\";s:0:\"\";s:13:\"use_min_price\";s:0:\"\";s:9:\"min_price\";s:1:\"0\";s:13:\"use_max_price\";s:0:\"\";s:9:\"max_price\";s:1:\"1\";s:6:\"height\";s:4:\"auto\";s:12:\"scroll_theme\";s:4:\"dark\";s:18:\"selected_area_show\";s:0:\"\";s:19:\"hide_selected_arrow\";s:0:\"\";s:16:\"selected_is_hide\";s:0:\"\";s:14:\"slider_default\";s:0:\"\";s:12:\"number_style\";s:0:\"\";s:30:\"number_style_thousand_separate\";s:0:\"\";s:29:\"number_style_decimal_separate\";s:1:\".\";s:27:\"number_style_decimal_number\";s:1:\"2\";s:14:\"is_hide_mobile\";s:0:\"\";s:12:\"user_can_see\";s:0:\"\";s:15:\"cat_propagation\";s:0:\"\";s:11:\"product_cat\";s:0:\"\";s:26:\"parent_product_cat_current\";s:0:\"\";s:15:\"attribute_count\";s:0:\"\";s:9:\"show_page\";a:4:{i:0;s:0:\"\";i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";}s:15:\"cat_value_limit\";s:1:\"0\";s:10:\"hide_group\";a:1:{s:7:\"desktop\";s:1:\"1\";}s:6:\"ranges\";a:2:{i:0;s:1:\"1\";i:1;s:2:\"50\";}s:18:\"range_display_type\";s:0:\"\";s:16:\"to_infinity_text\";s:0:\"\";s:25:\"attribute_count_show_hide\";s:0:\"\";s:22:\"color_image_block_size\";s:9:\"h2em w2em\";s:29:\"color_image_block_size_height\";s:0:\"\";s:28:\"color_image_block_size_width\";s:0:\"\";s:19:\"color_image_checked\";s:17:\"brchecked_default\";s:30:\"color_image_checked_custom_css\";s:0:\"\";}'),
(641, 72, '_edit_lock', '1579725771:1'),
(642, 72, '_edit_last', '1'),
(643, 74, 'br_product_filter', 'a:59:{s:4:\"data\";a:0:{}s:12:\"br_wp_footer\";s:0:\"\";s:11:\"widget_type\";s:6:\"filter\";s:10:\"reset_hide\";s:19:\"berocket_no_filters\";s:5:\"title\";s:0:\"\";s:11:\"filter_type\";s:9:\"attribute\";s:9:\"attribute\";s:5:\"price\";s:15:\"custom_taxonomy\";s:11:\"product_cat\";s:4:\"type\";s:6:\"slider\";s:25:\"select_first_element_text\";s:0:\"\";s:8:\"operator\";s:2:\"OR\";s:15:\"order_values_by\";s:0:\"\";s:17:\"order_values_type\";s:0:\"\";s:17:\"text_before_price\";s:0:\"\";s:16:\"text_after_price\";s:0:\"\";s:20:\"enable_slider_inputs\";s:0:\"\";s:18:\"parent_product_cat\";s:0:\"\";s:11:\"depth_count\";s:1:\"0\";s:22:\"widget_collapse_enable\";s:1:\"0\";s:14:\"widget_is_hide\";s:1:\"0\";s:27:\"show_product_count_per_attr\";s:1:\"0\";s:21:\"hide_child_attributes\";s:1:\"0\";s:19:\"hide_collapse_arrow\";s:1:\"0\";s:20:\"use_value_with_color\";s:1:\"0\";s:14:\"values_per_row\";s:1:\"1\";s:17:\"icon_before_title\";s:0:\"\";s:16:\"icon_after_title\";s:0:\"\";s:17:\"icon_before_value\";s:0:\"\";s:16:\"icon_after_value\";s:0:\"\";s:12:\"price_values\";s:0:\"\";s:11:\"description\";s:0:\"\";s:9:\"css_class\";s:0:\"\";s:16:\"tag_cloud_height\";s:1:\"0\";s:18:\"tag_cloud_min_font\";s:2:\"12\";s:18:\"tag_cloud_max_font\";s:2:\"14\";s:20:\"tag_cloud_tags_count\";s:3:\"100\";s:14:\"tag_cloud_type\";s:3:\"doe\";s:13:\"use_min_price\";s:1:\"0\";s:9:\"min_price\";s:1:\"0\";s:13:\"use_max_price\";s:1:\"0\";s:9:\"max_price\";s:1:\"1\";s:6:\"height\";s:4:\"auto\";s:12:\"scroll_theme\";s:4:\"dark\";s:18:\"selected_area_show\";s:1:\"0\";s:19:\"hide_selected_arrow\";s:1:\"0\";s:16:\"selected_is_hide\";s:1:\"0\";s:14:\"slider_default\";s:1:\"0\";s:12:\"number_style\";s:1:\"0\";s:30:\"number_style_thousand_separate\";s:0:\"\";s:29:\"number_style_decimal_separate\";s:1:\".\";s:27:\"number_style_decimal_number\";s:1:\"2\";s:14:\"is_hide_mobile\";s:1:\"0\";s:12:\"user_can_see\";s:0:\"\";s:15:\"cat_propagation\";s:1:\"0\";s:11:\"product_cat\";s:0:\"\";s:26:\"parent_product_cat_current\";s:1:\"0\";s:15:\"attribute_count\";s:0:\"\";s:9:\"show_page\";a:4:{i:0;s:4:\"shop\";i:1;s:11:\"product_cat\";i:2;s:11:\"product_tag\";i:3;s:16:\"product_taxonomy\";}s:15:\"cat_value_limit\";s:1:\"0\";}'),
(646, 76, '_order_key', 'wc_order_yX2w135WXqH6f'),
(647, 76, '_customer_user', '1'),
(648, 76, '_payment_method', 'bacs'),
(649, 76, '_payment_method_title', 'Transferencia bancaria directa'),
(650, 76, '_customer_ip_address', '172.16.238.1'),
(651, 76, '_customer_user_agent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36'),
(652, 76, '_created_via', 'checkout'),
(653, 76, '_cart_hash', '252b25b2b8528eed251cb431828ea2d6'),
(654, 76, '_billing_first_name', 'HUGO'),
(655, 76, '_billing_last_name', 'TRIGOSO PAREDES'),
(656, 76, '_billing_address_1', 'AV LAS LOMAS'),
(657, 76, '_billing_city', 'LIMA'),
(658, 76, '_billing_state', 'LIM'),
(659, 76, '_billing_postcode', 'LIMA01'),
(660, 76, '_billing_country', 'PE'),
(661, 76, '_billing_email', 'htrigoso@seek.pe'),
(662, 76, '_billing_phone', '918172291'),
(663, 76, '_shipping_first_name', 'HUGO'),
(664, 76, '_shipping_last_name', 'TRIGOSO'),
(665, 76, '_shipping_address_1', 'AV LAS LOMAS'),
(666, 76, '_shipping_city', 'LIMA'),
(667, 76, '_shipping_state', 'LIM'),
(668, 76, '_shipping_postcode', 'LIMA01'),
(669, 76, '_shipping_country', 'PE'),
(670, 76, '_order_currency', 'PEN'),
(671, 76, '_cart_discount', '0'),
(672, 76, '_cart_discount_tax', '0'),
(673, 76, '_order_shipping', '10.00'),
(674, 76, '_order_shipping_tax', '0'),
(675, 76, '_order_tax', '0'),
(676, 76, '_order_total', '50.00'),
(677, 76, '_order_version', '3.8.1'),
(678, 76, '_prices_include_tax', 'no'),
(679, 76, '_billing_address_index', 'HUGO TRIGOSO PAREDES  AV LAS LOMAS  LIMA LIM LIMA01 PE htrigoso@seek.pe 918172291'),
(680, 76, '_shipping_address_index', 'HUGO TRIGOSO  AV LAS LOMAS  LIMA LIM LIMA01 PE'),
(681, 76, '_shipping_razon_social', 'SEEK'),
(682, 76, '_shipping_ruc', '20526541235'),
(683, 76, '_shipping_fiscal', 'AV LOMAS 3432 MIRAFLORES'),
(684, 76, 'is_vat_exempt', 'no'),
(685, 76, '_recorded_sales', 'yes'),
(686, 76, '_recorded_coupon_usage_counts', 'yes'),
(687, 76, '_order_stock_reduced', 'yes'),
(694, 84, '_edit_lock', '1581366449:1'),
(695, 84, '_edit_last', '1'),
(696, 87, '_wp_attached_file', '2020/01/cq5dam.resized.img_.1680.large_.time1467967699630-1.png'),
(697, 87, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:705;s:6:\"height\";i:560;s:4:\"file\";s:63:\"2020/01/cq5dam.resized.img_.1680.large_.time1467967699630-1.png\";s:5:\"sizes\";a:8:{s:6:\"medium\";a:4:{s:4:\"file\";s:63:\"cq5dam.resized.img_.1680.large_.time1467967699630-1-300x238.png\";s:5:\"width\";i:300;s:6:\"height\";i:238;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:63:\"cq5dam.resized.img_.1680.large_.time1467967699630-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:63:\"cq5dam.resized.img_.1680.large_.time1467967699630-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:63:\"cq5dam.resized.img_.1680.large_.time1467967699630-1-600x477.png\";s:5:\"width\";i:600;s:6:\"height\";i:477;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:63:\"cq5dam.resized.img_.1680.large_.time1467967699630-1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:63:\"cq5dam.resized.img_.1680.large_.time1467967699630-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:63:\"cq5dam.resized.img_.1680.large_.time1467967699630-1-600x477.png\";s:5:\"width\";i:600;s:6:\"height\";i:477;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:63:\"cq5dam.resized.img_.1680.large_.time1467967699630-1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(698, 36, 'imagen_login', '168'),
(699, 36, '_imagen_login', 'field_5e3208aa0b0f3'),
(700, 36, 'imagen_register', '169'),
(701, 36, '_imagen_register', 'field_5e32090ed3c22'),
(702, 88, '_edit_lock', '1585432501:1'),
(703, 88, '_edit_last', '1'),
(704, 94, '_wp_attached_file', '2020/02/1-1.png'),
(705, 94, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1558;s:6:\"height\";i:701;s:4:\"file\";s:15:\"2020/02/1-1.png\";s:5:\"sizes\";a:11:{s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"1-1-300x135.png\";s:5:\"width\";i:300;s:6:\"height\";i:135;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:16:\"1-1-1024x461.png\";s:5:\"width\";i:1024;s:6:\"height\";i:461;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"1-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:15:\"1-1-768x346.png\";s:5:\"width\";i:768;s:6:\"height\";i:346;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:16:\"1-1-1536x691.png\";s:5:\"width\";i:1536;s:6:\"height\";i:691;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:15:\"1-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:15:\"1-1-600x270.png\";s:5:\"width\";i:600;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:15:\"1-1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:15:\"1-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:15:\"1-1-600x270.png\";s:5:\"width\";i:600;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:15:\"1-1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(706, 6, 'slider_home_0_slider_home_image', '168'),
(707, 6, '_slider_home_0_slider_home_image', 'field_5e3839c5b5e92'),
(708, 6, 'slider_home_0_slider_home_title', 'Precios de oferta'),
(709, 6, '_slider_home_0_slider_home_title', 'field_5e383aa8b5e93'),
(710, 6, 'slider_home_0_slider_home_button', 'Ver más'),
(711, 6, '_slider_home_0_slider_home_button', 'field_5e383ac4b5e94'),
(712, 6, 'slider_home', '3'),
(713, 6, '_slider_home', 'field_5e3839a2b5e91'),
(714, 6, 'slider_home_0_slider_home_subtitle', 'La vida esta llena de aventuras, las posibilidades son infinitas, la libertad y el estilo no conoce límites.'),
(715, 6, '_slider_home_0_slider_home_subtitle', 'field_5e383ba51944a'),
(716, 6, 'slider_home_1_slider_home_image', '169'),
(717, 6, '_slider_home_1_slider_home_image', 'field_5e3839c5b5e92'),
(718, 6, 'slider_home_1_slider_home_title', 'Talleres'),
(719, 6, '_slider_home_1_slider_home_title', 'field_5e383aa8b5e93'),
(720, 6, 'slider_home_1_slider_home_subtitle', 'La vida esta llena de aventuras, las posibilidades son infinitas, la libertad y el estilo no conoce límites.'),
(721, 6, '_slider_home_1_slider_home_subtitle', 'field_5e383ba51944a'),
(722, 6, 'slider_home_1_slider_home_button', 'Ver más'),
(723, 6, '_slider_home_1_slider_home_button', 'field_5e383ac4b5e94'),
(724, 6, 'slider_home_2_slider_home_image', '94'),
(725, 6, '_slider_home_2_slider_home_image', 'field_5e3839c5b5e92'),
(726, 6, 'slider_home_2_slider_home_title', 'Novedades del mes'),
(727, 6, '_slider_home_2_slider_home_title', 'field_5e383aa8b5e93'),
(728, 6, 'slider_home_2_slider_home_subtitle', 'La vida esta llena de aventuras, las posibilidades son infinitas, la libertad y el estilo no conoce límites.'),
(729, 6, '_slider_home_2_slider_home_subtitle', 'field_5e383ba51944a'),
(730, 6, 'slider_home_2_slider_home_button', 'Ver más'),
(731, 6, '_slider_home_2_slider_home_button', 'field_5e383ac4b5e94'),
(732, 105, '_wp_attached_file', '2020/02/carro.png'),
(733, 105, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:339;s:6:\"height\";i:265;s:4:\"file\";s:17:\"2020/02/carro.png\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"carro-300x235.png\";s:5:\"width\";i:300;s:6:\"height\";i:235;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"carro-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:17:\"carro-300x265.png\";s:5:\"width\";i:300;s:6:\"height\";i:265;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:17:\"carro-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:17:\"carro-300x265.png\";s:5:\"width\";i:300;s:6:\"height\";i:265;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:17:\"carro-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(734, 6, 'slider_home_0_slider_home_link', ''),
(735, 6, '_slider_home_0_slider_home_link', 'field_5e38431da2e63'),
(736, 6, 'slider_home_1_slider_home_link', ''),
(737, 6, '_slider_home_1_slider_home_link', 'field_5e38431da2e63'),
(738, 6, 'slider_home_2_slider_home_link', ''),
(739, 6, '_slider_home_2_slider_home_link', 'field_5e38431da2e63'),
(740, 6, 'featured_products_0_featured_products_title', ' BMW <br> Christmas Sale'),
(741, 6, '_featured_products_0_featured_products_title', 'field_5e384401a2e66'),
(742, 6, 'featured_products_0_featured_products_image', '105'),
(743, 6, '_featured_products_0_featured_products_image', 'field_5e38440fa2e67'),
(744, 6, 'featured_products_0_featured_products_link', ''),
(745, 6, '_featured_products_0_featured_products_link', 'field_5e38446da2e68'),
(746, 6, 'featured_products_0_featured_products_discount_featured_products_discount_value', '-15'),
(747, 6, '_featured_products_0_featured_products_discount_featured_products_discount_value', 'field_5e3844e5a2e6a'),
(748, 6, 'featured_products_0_featured_products_discount_featured_products_discount_color', '#d20000'),
(749, 6, '_featured_products_0_featured_products_discount_featured_products_discount_color', 'field_5e3844f7a2e6b'),
(750, 6, 'featured_products_0_featured_products_discount', ''),
(751, 6, '_featured_products_0_featured_products_discount', 'field_5e384492a2e69'),
(752, 6, 'featured_products_1_featured_products_title', ' BMW LIFESTYLE <br> Accesorios'),
(753, 6, '_featured_products_1_featured_products_title', 'field_5e384401a2e66'),
(754, 6, 'featured_products_1_featured_products_image', '9'),
(755, 6, '_featured_products_1_featured_products_image', 'field_5e38440fa2e67'),
(756, 6, 'featured_products_1_featured_products_link', ''),
(757, 6, '_featured_products_1_featured_products_link', 'field_5e38446da2e68'),
(758, 6, 'featured_products_1_featured_products_discount_featured_products_discount_value', '-10'),
(759, 6, '_featured_products_1_featured_products_discount_featured_products_discount_value', 'field_5e3844e5a2e6a'),
(760, 6, 'featured_products_1_featured_products_discount_featured_products_discount_color', '#d20000'),
(761, 6, '_featured_products_1_featured_products_discount_featured_products_discount_color', 'field_5e3844f7a2e6b'),
(762, 6, 'featured_products_1_featured_products_discount', ''),
(763, 6, '_featured_products_1_featured_products_discount', 'field_5e384492a2e69'),
(764, 6, 'featured_products', '2'),
(765, 6, '_featured_products', 'field_5e38437ca2e65'),
(766, 6, 'offers_0_offers_title', 'Novedades <br> del mes'),
(767, 6, '_offers_0_offers_title', 'field_5e384401a2e66'),
(768, 6, 'offers_0_offers_image', '105'),
(769, 6, '_offers_0_offers_image', 'field_5e38440fa2e67'),
(770, 6, 'offers_0_offers_link', ''),
(771, 6, '_offers_0_offers_link', 'field_5e38446da2e68'),
(772, 6, 'offers_0_offers_discount_offers_discount_value', '-15'),
(773, 6, '_offers_0_offers_discount_offers_discount_value', 'field_5e3844e5a2e6a'),
(774, 6, 'offers_0_offers_discount_offers_discount_color', '#d20000'),
(775, 6, '_offers_0_offers_discount_offers_discount_color', 'field_5e3844f7a2e6b'),
(776, 6, 'offers_0_offers_discount', ''),
(777, 6, '_offers_0_offers_discount', 'field_5e384492a2e69'),
(778, 6, 'offers_1_offers_title', 'Precios de oferta <br> Accesorios'),
(779, 6, '_offers_1_offers_title', 'field_5e384401a2e66'),
(780, 6, 'offers_1_offers_image', '9'),
(781, 6, '_offers_1_offers_image', 'field_5e38440fa2e67'),
(782, 6, 'offers_1_offers_link', ''),
(783, 6, '_offers_1_offers_link', 'field_5e38446da2e68'),
(784, 6, 'offers_1_offers_discount_offers_discount_value', '-10'),
(785, 6, '_offers_1_offers_discount_offers_discount_value', 'field_5e3844e5a2e6a');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(786, 6, 'offers_1_offers_discount_offers_discount_color', '#d20000'),
(787, 6, '_offers_1_offers_discount_offers_discount_color', 'field_5e3844f7a2e6b'),
(788, 6, 'offers_1_offers_discount', ''),
(789, 6, '_offers_1_offers_discount', 'field_5e384492a2e69'),
(790, 6, 'offers', '2'),
(791, 6, '_offers', 'field_5e38437ca2e65'),
(792, 6, 'pf_title', 'Productos destacados'),
(793, 6, '_pf_title', 'field_5e384af71b224'),
(794, 6, 'pf_description', 'Morbi in sem quis dui placerat ornare. Pellentesque odio nisi, euismod in.'),
(795, 6, '_pf_description', 'field_5e384b121b225'),
(796, 6, 'bs_title', 'Los más vendidos'),
(797, 6, '_bs_title', 'field_5e384b86e5a92'),
(798, 6, 'bs_description', 'Morbi in sem quis dui placerat ornare. Pellentesque odio nisi, euismod in.'),
(799, 6, '_bs_description', 'field_5e384b8de5a93'),
(800, 112, '_edit_lock', '1580935597:1'),
(801, 112, '_edit_last', '1'),
(802, 127, '_regular_price', '90'),
(803, 127, 'total_sales', '0'),
(804, 127, '_tax_status', 'taxable'),
(805, 127, '_tax_class', ''),
(806, 127, '_manage_stock', 'no'),
(807, 127, '_backorders', 'no'),
(808, 127, '_sold_individually', 'no'),
(809, 127, '_virtual', 'no'),
(810, 127, '_downloadable', 'no'),
(811, 127, '_download_limit', '-1'),
(812, 127, '_download_expiry', '-1'),
(813, 127, '_thumbnail_id', '48'),
(814, 127, '_stock', NULL),
(815, 127, '_stock_status', 'instock'),
(816, 127, '_wc_average_rating', '0'),
(817, 127, '_wc_review_count', '0'),
(818, 127, '_product_version', '3.7.1'),
(819, 127, '_price', '90'),
(820, 127, '_edit_lock', '1585171323:1'),
(821, 127, '_edit_last', '1'),
(822, 129, '_order_key', 'wc_order_pLNYvkwQ6xurg'),
(823, 129, '_customer_user', '1'),
(824, 129, '_payment_method', 'woocommerce-seek'),
(825, 129, '_payment_method_title', NULL),
(826, 129, '_customer_ip_address', '172.16.238.1'),
(827, 129, '_customer_user_agent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36'),
(828, 129, '_created_via', 'checkout'),
(829, 129, '_cart_hash', '9bba50a5d22161c6cd4bfbd6627f06d0'),
(830, 129, '_billing_first_name', 'HUGO'),
(831, 129, '_billing_last_name', 'TRIGOSO PAREDES'),
(832, 129, '_billing_address_1', 'AV LAS LOMAS'),
(833, 129, '_billing_city', 'LIMA'),
(834, 129, '_billing_state', 'LIM'),
(835, 129, '_billing_postcode', 'LIMA01'),
(836, 129, '_billing_country', 'PE'),
(837, 129, '_billing_email', 'htrigoso@seek.pe'),
(838, 129, '_billing_phone', '918172291'),
(839, 129, '_shipping_first_name', 'HUGO'),
(840, 129, '_shipping_last_name', 'TRIGOSO PAREDES'),
(841, 129, '_shipping_address_1', 'AV LAS LOMAS'),
(842, 129, '_shipping_city', 'LIMA'),
(843, 129, '_shipping_state', 'LIM'),
(844, 129, '_shipping_postcode', 'LIMA01'),
(845, 129, '_shipping_country', 'PE'),
(846, 129, '_order_currency', 'PEN'),
(847, 129, '_cart_discount', '0'),
(848, 129, '_cart_discount_tax', '0'),
(849, 129, '_order_shipping', '0.00'),
(850, 129, '_order_shipping_tax', '0'),
(851, 129, '_order_tax', '0'),
(852, 129, '_order_total', '2129.00'),
(853, 129, '_order_version', '3.9.0'),
(854, 129, '_prices_include_tax', 'no'),
(855, 129, '_billing_address_index', 'HUGO TRIGOSO PAREDES  AV LAS LOMAS  LIMA LIM LIMA01 PE htrigoso@seek.pe 918172291'),
(856, 129, '_shipping_address_index', 'HUGO TRIGOSO PAREDES  AV LAS LOMAS  LIMA LIM LIMA01 PE'),
(857, 129, '_billing_razon_social', '-'),
(858, 129, '_billing_ruc', '-'),
(859, 129, '_billing_fiscal', '-'),
(860, 129, 'is_vat_exempt', 'no'),
(861, 130, '_order_key', 'wc_order_0KG6nWESKTB8M'),
(862, 130, '_customer_user', '1'),
(863, 130, '_payment_method', 'woocommerce-seek'),
(864, 130, '_payment_method_title', NULL),
(865, 130, '_customer_ip_address', '172.16.238.1'),
(866, 130, '_customer_user_agent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36'),
(867, 130, '_created_via', 'checkout'),
(868, 130, '_cart_hash', 'd5ea5220f3751996f716eed820fd9387'),
(869, 130, '_billing_first_name', 'HUGO'),
(870, 130, '_billing_last_name', 'TRIGOSO PAREDES'),
(871, 130, '_billing_address_1', 'AV LAS LOMAS'),
(872, 130, '_billing_city', 'LIMA'),
(873, 130, '_billing_state', 'LIM'),
(874, 130, '_billing_postcode', 'LIMA01'),
(875, 130, '_billing_country', 'PE'),
(876, 130, '_billing_email', 'htrigoso@seek.pe'),
(877, 130, '_billing_phone', '918172291'),
(878, 130, '_shipping_first_name', 'HUGO'),
(879, 130, '_shipping_last_name', 'TRIGOSO PAREDES'),
(880, 130, '_shipping_address_1', 'AV LAS LOMAS'),
(881, 130, '_shipping_city', 'LIMA'),
(882, 130, '_shipping_state', 'LIM'),
(883, 130, '_shipping_postcode', 'LIMA01'),
(884, 130, '_shipping_country', 'PE'),
(885, 130, '_order_currency', 'PEN'),
(886, 130, '_cart_discount', '0'),
(887, 130, '_cart_discount_tax', '0'),
(888, 130, '_order_shipping', '0.00'),
(889, 130, '_order_shipping_tax', '0'),
(890, 130, '_order_tax', '0'),
(891, 130, '_order_total', '40.00'),
(892, 130, '_order_version', '3.9.0'),
(893, 130, '_prices_include_tax', 'no'),
(894, 130, '_billing_address_index', 'HUGO TRIGOSO PAREDES  AV LAS LOMAS  LIMA LIM LIMA01 PE htrigoso@seek.pe 918172291'),
(895, 130, '_shipping_address_index', 'HUGO TRIGOSO PAREDES  AV LAS LOMAS  LIMA LIM LIMA01 PE'),
(896, 130, '_billing_razon_social', '-'),
(897, 130, '_billing_ruc', '-'),
(898, 130, '_billing_fiscal', '-'),
(899, 130, 'is_vat_exempt', 'no'),
(900, 131, '_order_key', 'wc_order_el6XNdJ44mi6h'),
(901, 131, '_customer_user', '1'),
(902, 131, '_payment_method', 'woocommerce-seek'),
(903, 131, '_payment_method_title', NULL),
(904, 131, '_customer_ip_address', '172.16.238.1'),
(905, 131, '_customer_user_agent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36'),
(906, 131, '_created_via', 'checkout'),
(907, 131, '_cart_hash', 'd5ea5220f3751996f716eed820fd9387'),
(908, 131, '_billing_first_name', 'HUGO'),
(909, 131, '_billing_last_name', 'TRIGOSO PAREDES'),
(910, 131, '_billing_address_1', 'AV LAS LOMAS'),
(911, 131, '_billing_city', 'LIMA'),
(912, 131, '_billing_state', 'LIM'),
(913, 131, '_billing_postcode', 'LIMA01'),
(914, 131, '_billing_country', 'PE'),
(915, 131, '_billing_email', 'htrigoso@seek.pe'),
(916, 131, '_billing_phone', '918172291'),
(917, 131, '_shipping_first_name', 'HUGO'),
(918, 131, '_shipping_last_name', 'TRIGOSO PAREDES'),
(919, 131, '_shipping_address_1', 'AV LAS LOMAS'),
(920, 131, '_shipping_city', 'LIMA'),
(921, 131, '_shipping_state', 'LIM'),
(922, 131, '_shipping_postcode', 'LIMA01'),
(923, 131, '_shipping_country', 'PE'),
(924, 131, '_order_currency', 'PEN'),
(925, 131, '_cart_discount', '0'),
(926, 131, '_cart_discount_tax', '0'),
(927, 131, '_order_shipping', '0.00'),
(928, 131, '_order_shipping_tax', '0'),
(929, 131, '_order_tax', '0'),
(930, 131, '_order_total', '40.00'),
(931, 131, '_order_version', '3.9.0'),
(932, 131, '_prices_include_tax', 'no'),
(933, 131, '_billing_address_index', 'HUGO TRIGOSO PAREDES  AV LAS LOMAS  LIMA LIM LIMA01 PE htrigoso@seek.pe 918172291'),
(934, 131, '_shipping_address_index', 'HUGO TRIGOSO PAREDES  AV LAS LOMAS  LIMA LIM LIMA01 PE'),
(935, 131, '_billing_razon_social', '-'),
(936, 131, '_billing_ruc', '-'),
(937, 131, '_billing_fiscal', '-'),
(938, 131, 'is_vat_exempt', 'no'),
(939, 131, 'Tienda', 'BMW LifeStyle Surco'),
(940, 131, '_edit_lock', '1580932997:1'),
(941, 133, '_order_key', 'wc_order_5iEkYLsgc6GRg'),
(942, 133, '_customer_user', '1'),
(943, 133, '_payment_method', 'woocommerce-seek'),
(944, 133, '_payment_method_title', NULL),
(945, 133, '_customer_ip_address', '172.16.238.1'),
(946, 133, '_customer_user_agent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36'),
(947, 133, '_created_via', 'checkout'),
(948, 133, '_cart_hash', '61d048c182af288ceee9f9b5423427a4'),
(949, 133, '_billing_first_name', 'HUGO'),
(950, 133, '_billing_last_name', 'TRIGOSO PAREDES'),
(951, 133, '_billing_address_1', 'AV LAS LOMAS'),
(952, 133, '_billing_city', 'LIMA'),
(953, 133, '_billing_state', 'LIM'),
(954, 133, '_billing_postcode', 'LIMA01'),
(955, 133, '_billing_country', 'PE'),
(956, 133, '_billing_email', 'htrigoso@seek.pe'),
(957, 133, '_billing_phone', '918172291'),
(958, 133, '_shipping_first_name', 'HUGO'),
(959, 133, '_shipping_last_name', 'TRIGOSO PAREDES'),
(960, 133, '_shipping_address_1', 'AV LAS LOMAS'),
(961, 133, '_shipping_city', 'LIMA'),
(962, 133, '_shipping_state', 'LIM'),
(963, 133, '_shipping_postcode', 'LIMA01'),
(964, 133, '_shipping_country', 'PE'),
(965, 133, '_order_currency', 'PEN'),
(966, 133, '_cart_discount', '0'),
(967, 133, '_cart_discount_tax', '0'),
(968, 133, '_order_shipping', '0.00'),
(969, 133, '_order_shipping_tax', '0'),
(970, 133, '_order_tax', '0'),
(971, 133, '_order_total', '80.00'),
(972, 133, '_order_version', '3.9.0'),
(973, 133, '_prices_include_tax', 'no'),
(974, 133, '_billing_address_index', 'HUGO TRIGOSO PAREDES  AV LAS LOMAS  LIMA LIM LIMA01 PE htrigoso@seek.pe 918172291'),
(975, 133, '_shipping_address_index', 'HUGO TRIGOSO PAREDES  AV LAS LOMAS  LIMA LIM LIMA01 PE'),
(976, 133, '_billing_razon_social', '-'),
(977, 133, '_billing_ruc', '-'),
(978, 133, '_billing_fiscal', '-'),
(979, 133, 'is_vat_exempt', 'no'),
(980, 133, 'Local', '-'),
(981, 133, '_edit_lock', '1580936811:1'),
(982, 134, '_order_key', 'wc_order_oQAZ5E50fJozb'),
(983, 134, '_customer_user', '1'),
(984, 134, '_payment_method', 'woocommerce-seek'),
(985, 134, '_payment_method_title', NULL),
(986, 134, '_customer_ip_address', '172.16.238.1'),
(987, 134, '_customer_user_agent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36'),
(988, 134, '_created_via', 'checkout'),
(989, 134, '_cart_hash', '157fde3ceba72b1c6a895b40c8a7f95e'),
(990, 134, '_billing_first_name', 'HUGO'),
(991, 134, '_billing_last_name', 'TRIGOSO PAREDES'),
(992, 134, '_billing_address_1', 'AV LAS LOMAS'),
(993, 134, '_billing_city', 'LIMA'),
(994, 134, '_billing_state', 'LIM'),
(995, 134, '_billing_postcode', 'LIMA01'),
(996, 134, '_billing_country', 'PE'),
(997, 134, '_billing_email', 'htrigoso@seek.pe'),
(998, 134, '_billing_phone', '918172291'),
(999, 134, '_shipping_first_name', 'HUGO'),
(1000, 134, '_shipping_last_name', 'TRIGOSO PAREDES'),
(1001, 134, '_shipping_address_1', 'AV LAS LOMAS'),
(1002, 134, '_shipping_city', 'LIMA'),
(1003, 134, '_shipping_state', 'LIM'),
(1004, 134, '_shipping_postcode', 'LIMA01'),
(1005, 134, '_shipping_country', 'PE'),
(1006, 134, '_order_currency', 'PEN'),
(1007, 134, '_cart_discount', '0'),
(1008, 134, '_cart_discount_tax', '0'),
(1009, 134, '_order_shipping', '0'),
(1010, 134, '_order_shipping_tax', '0'),
(1011, 134, '_order_tax', '0'),
(1012, 134, '_order_total', '300.00'),
(1013, 134, '_order_version', '3.9.0'),
(1014, 134, '_prices_include_tax', 'no'),
(1015, 134, '_billing_address_index', 'HUGO TRIGOSO PAREDES  AV LAS LOMAS  LIMA LIM LIMA01 PE htrigoso@seek.pe 918172291'),
(1016, 134, '_shipping_address_index', 'HUGO TRIGOSO PAREDES  AV LAS LOMAS  LIMA LIM LIMA01 PE'),
(1017, 134, '_billing_razon_social', '-'),
(1018, 134, '_billing_ruc', '-'),
(1019, 134, '_billing_fiscal', '-'),
(1020, 134, 'is_vat_exempt', 'no'),
(1021, 134, 'Local', 'BMW LifeStyle Jockey Plaza'),
(1022, 134, '_edit_lock', '1580944591:1'),
(1023, 134, '_edit_last', '1'),
(1024, 134, '_recorded_sales', 'yes'),
(1025, 134, '_recorded_coupon_usage_counts', 'no'),
(1026, 134, '_order_stock_reduced', 'no'),
(1027, 135, '_edit_lock', '1585513016:1'),
(1028, 135, '_edit_last', '1'),
(1029, 135, '_wp_page_template', 'templates/template-thank-checkout.php'),
(1030, 136, '_order_key', 'wc_order_kaLS7WV0RC95L'),
(1031, 136, '_customer_user', '1'),
(1032, 136, '_payment_method', 'woocommerce-seek'),
(1033, 136, '_payment_method_title', NULL),
(1034, 136, '_customer_ip_address', '172.16.238.1'),
(1035, 136, '_customer_user_agent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36'),
(1036, 136, '_created_via', 'checkout'),
(1037, 136, '_cart_hash', 'beb8eb8dec9b366e686f0a4be1595236'),
(1038, 136, '_billing_first_name', 'HUGO'),
(1039, 136, '_billing_last_name', 'TRIGOSO PAREDES'),
(1040, 136, '_billing_address_1', 'AV LAS LOMAS'),
(1041, 136, '_billing_city', 'LIMA'),
(1042, 136, '_billing_state', 'LIM'),
(1043, 136, '_billing_postcode', 'LIMA01'),
(1044, 136, '_billing_country', 'PE'),
(1045, 136, '_billing_email', 'htrigoso@seek.pe'),
(1046, 136, '_billing_phone', '918172291'),
(1047, 136, '_shipping_first_name', 'janina'),
(1048, 136, '_shipping_last_name', 'zevallos jacobo'),
(1049, 136, '_shipping_address_1', 'av huarochiri'),
(1050, 136, '_shipping_city', 'LIMA'),
(1051, 136, '_shipping_state', 'LIM'),
(1052, 136, '_shipping_postcode', 'LIMA01'),
(1053, 136, '_shipping_country', 'PE'),
(1054, 136, '_order_currency', 'PEN'),
(1055, 136, '_cart_discount', '0'),
(1056, 136, '_cart_discount_tax', '0'),
(1057, 136, '_order_shipping', '0'),
(1058, 136, '_order_shipping_tax', '0'),
(1059, 136, '_order_tax', '0'),
(1060, 136, '_order_total', '280.00'),
(1061, 136, '_order_version', '3.9.0'),
(1062, 136, '_prices_include_tax', 'no'),
(1063, 136, '_billing_address_index', 'HUGO TRIGOSO PAREDES  AV LAS LOMAS  LIMA LIM LIMA01 PE htrigoso@seek.pe 918172291'),
(1064, 136, '_shipping_address_index', 'janina zevallos jacobo  av huarochiri  LIMA LIM LIMA01 PE'),
(1065, 136, '_billing_razon_social', 'kawschool'),
(1066, 136, '_billing_ruc', '1042837584'),
(1067, 136, '_billing_fiscal', 'av micaela bastidas 1'),
(1068, 136, 'is_vat_exempt', 'no'),
(1069, 136, 'Local', 'BMW LifeStyle Surco'),
(1070, 136, '_edit_lock', '1581006328:1'),
(1071, 136, '_edit_last', '1'),
(1072, 136, '_recorded_coupon_usage_counts', 'no'),
(1073, 137, '_order_key', 'wc_order_8oA27zZzidDWX'),
(1074, 137, '_customer_user', '1'),
(1075, 137, '_payment_method', 'woocommerce-seek'),
(1076, 137, '_payment_method_title', 'VISANET'),
(1077, 137, '_customer_ip_address', '172.16.238.1'),
(1078, 137, '_customer_user_agent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36'),
(1079, 137, '_created_via', 'checkout'),
(1080, 137, '_cart_hash', '3119e6d550ac591a11e15c3b2c9424f8'),
(1081, 137, '_billing_first_name', 'HUGO'),
(1082, 137, '_billing_last_name', 'TRIGOSO PAREDES'),
(1083, 137, '_billing_address_1', 'AV LAS LOMAS'),
(1084, 137, '_billing_city', 'LIMA'),
(1085, 137, '_billing_state', 'LIM'),
(1086, 137, '_billing_postcode', 'LIMA01'),
(1087, 137, '_billing_country', 'PE'),
(1088, 137, '_billing_email', 'htrigoso@seek.pe'),
(1089, 137, '_billing_phone', '918172291'),
(1090, 137, '_shipping_first_name', 'janina'),
(1091, 137, '_shipping_last_name', 'zevallos jacobo'),
(1092, 137, '_shipping_address_1', 'av huarochiri'),
(1093, 137, '_shipping_city', 'LIMA'),
(1094, 137, '_shipping_state', 'LIM'),
(1095, 137, '_shipping_postcode', 'LIMA01'),
(1096, 137, '_shipping_country', 'PE'),
(1097, 137, '_order_currency', 'PEN'),
(1098, 137, '_cart_discount', '0'),
(1099, 137, '_cart_discount_tax', '0'),
(1100, 137, '_order_shipping', '0.00'),
(1101, 137, '_order_shipping_tax', '0'),
(1102, 137, '_order_tax', '0'),
(1103, 137, '_order_total', '250.00'),
(1104, 137, '_order_version', '3.9.0'),
(1105, 137, '_prices_include_tax', 'no'),
(1106, 137, '_billing_address_index', 'HUGO TRIGOSO PAREDES  AV LAS LOMAS  LIMA LIM LIMA01 PE htrigoso@seek.pe 918172291'),
(1107, 137, '_shipping_address_index', 'janina zevallos jacobo  av huarochiri  LIMA LIM LIMA01 PE'),
(1108, 137, '_billing_razon_social', '-'),
(1109, 137, '_billing_ruc', '-'),
(1110, 137, '_billing_fiscal', '-'),
(1111, 137, 'is_vat_exempt', 'no'),
(1112, 137, 'Local', 'BMW LifeStyle Surco'),
(1113, 138, '_edit_lock', '1581093304:1'),
(1114, 138, '_edit_last', '1'),
(1115, 138, '_wp_page_template', 'templates/template-customer-support.php'),
(1122, 140, '_edit_lock', '1581355138:1'),
(1123, 140, '_edit_last', '1'),
(1124, 140, '_wp_page_template', 'templates/template-search.php'),
(1125, 141, '_order_key', 'wc_order_D0TEGP1LebrxY'),
(1126, 141, '_customer_user', '0'),
(1127, 141, '_payment_method', 'woocommerce-seek'),
(1128, 141, '_payment_method_title', 'VISANET'),
(1129, 141, '_customer_ip_address', '172.16.238.1'),
(1130, 141, '_customer_user_agent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36'),
(1131, 141, '_created_via', 'checkout'),
(1132, 141, '_cart_hash', '899f9999d3ae5868ff4376fdb8c99655'),
(1133, 141, '_billing_first_name', 'janina'),
(1134, 141, '_billing_last_name', 'zevallos jacobo'),
(1135, 141, '_billing_address_1', 'av huarochiri'),
(1136, 141, '_billing_city', 'LIMA'),
(1137, 141, '_billing_state', 'LIM'),
(1138, 141, '_billing_postcode', 'LIMA01'),
(1139, 141, '_billing_country', 'PE'),
(1140, 141, '_billing_email', 'htrigoso@seek.pe'),
(1141, 141, '_billing_phone', '918172291'),
(1142, 141, '_shipping_first_name', 'janina'),
(1143, 141, '_shipping_last_name', 'zevallos jacobo'),
(1144, 141, '_shipping_address_1', 'av huarochiri'),
(1145, 141, '_shipping_city', 'LIMA'),
(1146, 141, '_shipping_state', 'LIM'),
(1147, 141, '_shipping_postcode', 'LIMA01'),
(1148, 141, '_shipping_country', 'PE'),
(1149, 141, '_order_currency', 'PEN'),
(1150, 141, '_cart_discount', '0'),
(1151, 141, '_cart_discount_tax', '0'),
(1152, 141, '_order_shipping', '0.00'),
(1153, 141, '_order_shipping_tax', '0'),
(1154, 141, '_order_tax', '0'),
(1155, 141, '_order_total', '270.00'),
(1156, 141, '_order_version', '3.9.0'),
(1157, 141, '_prices_include_tax', 'no'),
(1158, 141, '_billing_address_index', 'janina zevallos jacobo  av huarochiri  LIMA LIM LIMA01 PE htrigoso@seek.pe 918172291'),
(1159, 141, '_shipping_address_index', 'janina zevallos jacobo  av huarochiri  LIMA LIM LIMA01 PE'),
(1160, 141, '_billing_razon_social', '-'),
(1161, 141, '_billing_ruc', '-'),
(1162, 141, '_billing_fiscal', '-'),
(1163, 141, 'is_vat_exempt', 'no'),
(1164, 141, 'Local', 'BMW LifeStyle Surco'),
(1183, 145, '_edit_lock', '1582565219:1'),
(1184, 145, '_edit_last', '1'),
(1185, 145, 'discount_type', 'percent'),
(1186, 145, 'coupon_amount', '20'),
(1187, 145, 'individual_use', 'yes'),
(1188, 145, 'usage_limit', '100'),
(1189, 145, 'usage_limit_per_user', '1'),
(1190, 145, 'limit_usage_to_x_items', '0'),
(1191, 145, 'usage_count', '0'),
(1192, 145, 'date_expires', '1583298000'),
(1193, 145, 'free_shipping', 'yes'),
(1194, 145, 'exclude_sale_items', 'yes'),
(1195, 145, 'minimum_amount', '100'),
(1196, 145, 'maximum_amount', '400'),
(1197, 127, '_wp_old_slug', 'billetera-bmw-m-motor-2'),
(1198, 148, '_wp_attached_file', '2020/03/VQWxKr.jpg'),
(1199, 148, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:18:\"2020/03/VQWxKr.jpg\";s:5:\"sizes\";a:11:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"VQWxKr-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"VQWxKr-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"VQWxKr-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"VQWxKr-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:19:\"VQWxKr-1536x864.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:864;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:18:\"VQWxKr-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:18:\"VQWxKr-600x338.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:338;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:18:\"VQWxKr-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:18:\"VQWxKr-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:18:\"VQWxKr-600x338.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:338;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:18:\"VQWxKr-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:7:\"Team VC\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:48:\"E-Commerce Website Development company In India,\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:83:\"https://www.venture-care.com/digital-services/ecommerce-web-development-company.php\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:48:\"E-Commerce Website Development company In India,\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1200, 149, '_wp_attached_file', '2020/03/istockphoto-961335672-612x612-1.jpg'),
(1201, 149, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:612;s:6:\"height\";i:266;s:4:\"file\";s:43:\"2020/03/istockphoto-961335672-612x612-1.jpg\";s:5:\"sizes\";a:8:{s:6:\"medium\";a:4:{s:4:\"file\";s:43:\"istockphoto-961335672-612x612-1-300x130.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:130;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:43:\"istockphoto-961335672-612x612-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:43:\"istockphoto-961335672-612x612-1-300x266.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:266;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:43:\"istockphoto-961335672-612x612-1-600x261.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:261;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:43:\"istockphoto-961335672-612x612-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:43:\"istockphoto-961335672-612x612-1-300x266.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:266;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:43:\"istockphoto-961335672-612x612-1-600x261.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:261;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:43:\"istockphoto-961335672-612x612-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:24:\"Getty Images/iStockphoto\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:65:\"Businessman holding a phone with a shopping icon. Online shopping\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:65:\"Businessman holding a phone with a shopping icon. Online shopping\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1202, 150, '_wp_attached_file', '2020/03/ecommerce-03.jpg'),
(1203, 150, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:24:\"2020/03/ecommerce-03.jpg\";s:5:\"sizes\";a:11:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"ecommerce-03-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:25:\"ecommerce-03-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"ecommerce-03-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"ecommerce-03-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:25:\"ecommerce-03-1536x864.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:864;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:24:\"ecommerce-03-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:24:\"ecommerce-03-600x338.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:338;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:24:\"ecommerce-03-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:24:\"ecommerce-03-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:24:\"ecommerce-03-600x338.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:338;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:24:\"ecommerce-03-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1204, 154, '_wp_attached_file', '2020/03/sponsor_aje-150x120-1.png'),
(1205, 154, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:150;s:6:\"height\";i:120;s:4:\"file\";s:33:\"2020/03/sponsor_aje-150x120-1.png\";s:5:\"sizes\";a:2:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:33:\"sponsor_aje-150x120-1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:33:\"sponsor_aje-150x120-1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1206, 155, '_wp_attached_file', '2020/03/sponsor_el_comercio-1-150x120-1.png'),
(1207, 155, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:150;s:6:\"height\";i:120;s:4:\"file\";s:43:\"2020/03/sponsor_el_comercio-1-150x120-1.png\";s:5:\"sizes\";a:2:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:43:\"sponsor_el_comercio-1-150x120-1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:43:\"sponsor_el_comercio-1-150x120-1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1208, 156, '_wp_attached_file', '2020/03/sponsor_gloria-150x120-1.png'),
(1209, 156, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:150;s:6:\"height\";i:120;s:4:\"file\";s:36:\"2020/03/sponsor_gloria-150x120-1.png\";s:5:\"sizes\";a:2:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:36:\"sponsor_gloria-150x120-1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:36:\"sponsor_gloria-150x120-1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1210, 157, '_wp_attached_file', '2020/03/sponsor_wework-150x120-1.png'),
(1211, 157, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:150;s:6:\"height\";i:120;s:4:\"file\";s:36:\"2020/03/sponsor_wework-150x120-1.png\";s:5:\"sizes\";a:2:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:36:\"sponsor_wework-150x120-1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:36:\"sponsor_wework-150x120-1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1212, 6, 'marcas_0_marca', '154'),
(1213, 6, '_marcas_0_marca', 'field_5e7fc352a5938'),
(1214, 6, 'marcas_1_marca', '155'),
(1215, 6, '_marcas_1_marca', 'field_5e7fc352a5938'),
(1216, 6, 'marcas_2_marca', '156'),
(1217, 6, '_marcas_2_marca', 'field_5e7fc352a5938'),
(1218, 6, 'marcas_3_marca', '157'),
(1219, 6, '_marcas_3_marca', 'field_5e7fc352a5938'),
(1220, 6, 'marcas_4_marca', '156'),
(1221, 6, '_marcas_4_marca', 'field_5e7fc352a5938'),
(1222, 6, 'marcas_5_marca', '157'),
(1223, 6, '_marcas_5_marca', 'field_5e7fc352a5938'),
(1224, 6, 'marcas_6_marca', '155'),
(1225, 6, '_marcas_6_marca', 'field_5e7fc352a5938'),
(1226, 6, 'marcas_7_marca', '154'),
(1227, 6, '_marcas_7_marca', 'field_5e7fc352a5938'),
(1228, 6, 'marcas', '8'),
(1229, 6, '_marcas', 'field_5e7fc344a5937'),
(1230, 158, '_order_key', 'wc_order_Vo54jmb2nzR9Q'),
(1231, 158, '_customer_user', '1'),
(1232, 158, '_payment_method', 'bacs'),
(1233, 158, '_payment_method_title', 'Transferencia bancaria directa'),
(1234, 158, '_customer_ip_address', '127.0.0.1'),
(1235, 158, '_customer_user_agent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36'),
(1236, 158, '_created_via', 'checkout'),
(1237, 158, '_cart_hash', '157fde3ceba72b1c6a895b40c8a7f95e'),
(1238, 158, '_billing_first_name', 'Fran'),
(1239, 158, '_billing_last_name', 'De la Rosa'),
(1240, 158, '_billing_address_1', 'AV LAS LOMAS'),
(1241, 158, '_billing_city', 'LIMA'),
(1242, 158, '_billing_state', 'LIM'),
(1243, 158, '_billing_postcode', 'LIMA01'),
(1244, 158, '_billing_country', 'PE'),
(1245, 158, '_billing_email', 'htrigoso@seek.pe'),
(1246, 158, '_billing_phone', '918172291'),
(1247, 158, '_shipping_first_name', 'Fran'),
(1248, 158, '_shipping_last_name', 'De la Rosa'),
(1249, 158, '_shipping_address_1', 'AV LAS LOMAS'),
(1250, 158, '_shipping_city', 'LIMA'),
(1251, 158, '_shipping_state', 'LIM'),
(1252, 158, '_shipping_postcode', 'LIMA01'),
(1253, 158, '_shipping_country', 'PE'),
(1254, 158, '_order_currency', 'PEN'),
(1255, 158, '_cart_discount', '0'),
(1256, 158, '_cart_discount_tax', '0'),
(1257, 158, '_order_shipping', '0.00'),
(1258, 158, '_order_shipping_tax', '0'),
(1259, 158, '_order_tax', '0'),
(1260, 158, '_order_total', '300.00'),
(1261, 158, '_order_version', '3.7.1'),
(1262, 158, '_prices_include_tax', 'no'),
(1263, 158, '_billing_address_index', 'Fran De la Rosa  AV LAS LOMAS  LIMA LIM LIMA01 PE htrigoso@seek.pe 918172291'),
(1264, 158, '_shipping_address_index', 'Fran De la Rosa  AV LAS LOMAS  LIMA LIM LIMA01 PE'),
(1265, 158, '_billing_razon_social', '-'),
(1266, 158, '_billing_ruc', '-'),
(1267, 158, '_billing_fiscal', '-'),
(1268, 158, 'is_vat_exempt', 'no'),
(1269, 158, 'Local', 'Nuestra Central telefónica'),
(1270, 158, '_recorded_sales', 'yes'),
(1271, 158, '_recorded_coupon_usage_counts', 'yes'),
(1272, 158, '_order_stock_reduced', 'yes'),
(1273, 159, '_order_key', 'wc_order_0EPO0BLEVBhBk'),
(1274, 159, '_customer_user', '1'),
(1275, 159, '_payment_method', 'bacs'),
(1276, 159, '_payment_method_title', 'Transferencia bancaria directa'),
(1277, 159, '_customer_ip_address', '127.0.0.1'),
(1278, 159, '_customer_user_agent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Safari/537.36'),
(1279, 159, '_created_via', 'checkout'),
(1280, 159, '_cart_hash', '157fde3ceba72b1c6a895b40c8a7f95e'),
(1281, 159, '_billing_first_name', 'Fran'),
(1282, 159, '_billing_last_name', 'De la Rosa'),
(1283, 159, '_billing_address_1', 'AV LAS LOMAS'),
(1284, 159, '_billing_city', 'LIMA'),
(1285, 159, '_billing_state', 'LIM'),
(1286, 159, '_billing_postcode', 'LIMA01'),
(1287, 159, '_billing_country', 'PE'),
(1288, 159, '_billing_email', 'htrigoso@seek.pe'),
(1289, 159, '_billing_phone', '918172291'),
(1290, 159, '_shipping_first_name', 'Fran'),
(1291, 159, '_shipping_last_name', 'De la Rosa'),
(1292, 159, '_shipping_address_1', 'AV LAS LOMAS'),
(1293, 159, '_shipping_city', 'LIMA'),
(1294, 159, '_shipping_state', 'LIM'),
(1295, 159, '_shipping_postcode', 'LIMA01'),
(1296, 159, '_shipping_country', 'PE'),
(1297, 159, '_order_currency', 'PEN'),
(1298, 159, '_cart_discount', '0'),
(1299, 159, '_cart_discount_tax', '0'),
(1300, 159, '_order_shipping', '0.00'),
(1301, 159, '_order_shipping_tax', '0'),
(1302, 159, '_order_tax', '0'),
(1303, 159, '_order_total', '300.00'),
(1304, 159, '_order_version', '3.7.1'),
(1305, 159, '_prices_include_tax', 'no'),
(1306, 159, '_billing_address_index', 'Fran De la Rosa  AV LAS LOMAS  LIMA LIM LIMA01 PE htrigoso@seek.pe 918172291'),
(1307, 159, '_shipping_address_index', 'Fran De la Rosa  AV LAS LOMAS  LIMA LIM LIMA01 PE'),
(1308, 159, '_billing_razon_social', '-'),
(1309, 159, '_billing_ruc', '-'),
(1310, 159, '_billing_fiscal', '-'),
(1311, 159, 'is_vat_exempt', 'no'),
(1312, 159, 'Local', 'Nuestra Central telefónica'),
(1313, 159, '_recorded_sales', 'yes'),
(1314, 159, '_recorded_coupon_usage_counts', 'yes'),
(1315, 159, '_order_stock_reduced', 'yes'),
(1316, 37, '_edit_lock', '1585513022:1'),
(1317, 160, '_form', '<div class=\"subtitle\">\n    Para asegurar la calidad del servicio por favor llenar todos los campos que se muestran a continuación, nuestro equipo estará con ustedes a la brevedad\n</div>\n<div class=\"row\">\n    <div class=\"control customSelect \">\n        <label class=\"label\">Motivo</label>\n        [select* motivo \"Solicitud\" \"Mensaje\" \"Etc\"]\n    </div>\n    <div class=\"control customSelect \">\n        <label class=\"label\">Medio de servicio</label>\n        [select* servicio \"Servicio 1\" \"Servicio 2\" \"Etc\"]\n    </div>\n</div>\n\n<div class=\"row\">\n    <div class=\"control\">\n        <label class=\"label\">Nombres</label>\n        [text* firstname id:firstname]\n    </div>\n    <div class=\"control\">\n        <label class=\"label\">Apellidos</label>\n        [text* lastname id:lastname]\n    </div>\n</div>\n\n<div class=\"row\">\n    <div class=\"control\">\n        <label class=\"label\">Teléfono</label>\n        [tel* phone id:phone]\n    </div>\n    <div class=\"control\">\n        <label class=\"label\">Email</label>\n        [email* email id:email]\n    </div>\n</div>\n\n<div class=\"row\">\n    <div class=\"control\">\n        <label class=\"label\">Cliente nuevo:</label>\n        [radio clientenuevo label_first use_label_element default:1 \"Si\" \"No\"]\n    </div>\n    <div class=\"control\">\n        <div class=\"emisep\">Seleccionar</div>\n        <div class=\"lonely\">Seleccionar archivo (Motivo / Servicio) o Batería para ubicar el modelo:</div>\n        <div style=\"display: none;\" class=\"recep\">\n            [file archivo filetypes:pdf id:archivo]\n        </div>\n    </div>\n</div>\n\n<div class=\"row\">\n    <div class=\"control full\">\n        <label class=\"label\">Comentario:</label>\n        [textarea message id:message]\n    </div>\n</div>\n\n<div class=\"row call-action\">\n    <button type=\"submit\" class=\"button button-primary\">\n        <span>ENVIAR</span>\n    </button>\n</div>'),
(1318, 160, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:29:\"Garash Store \"[your-subject]\"\";s:6:\"sender\";s:39:\"Garash Store <wordpress@dev.garash.com>\";s:9:\"recipient\";s:16:\"htrigoso@seek.pe\";s:4:\"body\";s:172:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Garash Store (http://dev.garash.com)\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(1319, 160, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:29:\"Garash Store \"[your-subject]\"\";s:6:\"sender\";s:39:\"Garash Store <wordpress@dev.garash.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:114:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Garash Store (http://dev.garash.com)\";s:18:\"additional_headers\";s:26:\"Reply-To: htrigoso@seek.pe\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(1320, 160, '_messages', 'a:23:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";s:12:\"invalid_date\";s:29:\"The date format is incorrect.\";s:14:\"date_too_early\";s:44:\"The date is before the earliest one allowed.\";s:13:\"date_too_late\";s:41:\"The date is after the latest one allowed.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:20:\"The file is too big.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:14:\"invalid_number\";s:29:\"The number format is invalid.\";s:16:\"number_too_small\";s:47:\"The number is smaller than the minimum allowed.\";s:16:\"number_too_large\";s:46:\"The number is larger than the maximum allowed.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:17:\"captcha_not_match\";s:31:\"Your entered code is incorrect.\";s:13:\"invalid_email\";s:38:\"The e-mail address entered is invalid.\";s:11:\"invalid_url\";s:19:\"The URL is invalid.\";s:11:\"invalid_tel\";s:32:\"The telephone number is invalid.\";}'),
(1321, 160, '_additional_settings', ''),
(1322, 160, '_locale', 'es_ES'),
(1323, 160, '_config_errors', 'a:1:{s:23:\"mail.additional_headers\";a:1:{i:0;a:2:{s:4:\"code\";i:102;s:4:\"args\";a:3:{s:7:\"message\";s:51:\"Invalid mailbox syntax is used in the %name% field.\";s:6:\"params\";a:1:{s:4:\"name\";s:8:\"Reply-To\";}s:4:\"link\";s:68:\"https://contactform7.com/configuration-errors/invalid-mailbox-syntax\";}}}}'),
(1324, 161, '_edit_last', '1'),
(1325, 161, '_edit_lock', '1585710637:1'),
(1326, 165, '_edit_last', '1'),
(1327, 165, '_edit_lock', '1585757438:1'),
(1328, 165, '_wp_page_template', 'templates/template-contact.php'),
(1329, 165, 'contact_data_0_title', 'Central Telefónica'),
(1330, 165, '_contact_data_0_title', 'field_5e8406a2309c1'),
(1331, 165, 'contact_data_0_desc', '(+511) 113 4567'),
(1332, 165, '_contact_data_0_desc', 'field_5e8406a7309c2'),
(1333, 165, 'contact_data_1_title', 'Urgencias'),
(1334, 165, '_contact_data_1_title', 'field_5e8406a2309c1'),
(1335, 165, 'contact_data_1_desc', '(+511) 113 4567'),
(1336, 165, '_contact_data_1_desc', 'field_5e8406a7309c2'),
(1337, 165, 'contact_data_2_title', 'Horario de atención'),
(1338, 165, '_contact_data_2_title', 'field_5e8406a2309c1'),
(1339, 165, 'contact_data_2_desc', 'Lunes a Viernes: 8:00 a 18:00 pm'),
(1340, 165, '_contact_data_2_desc', 'field_5e8406a7309c2'),
(1341, 165, 'contact_data', '3'),
(1342, 165, '_contact_data', 'field_5e840683309c0'),
(1343, 166, '_order_key', 'wc_order_ue9MG7CEGKsii'),
(1344, 166, '_customer_user', '1'),
(1345, 166, '_payment_method', 'bacs'),
(1346, 166, '_payment_method_title', 'Transferencia bancaria directa'),
(1347, 166, '_customer_ip_address', '127.0.0.1'),
(1348, 166, '_customer_user_agent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36'),
(1349, 166, '_created_via', 'checkout'),
(1350, 166, '_cart_hash', 'ace9bd0a5a32cc290912229217059fc9'),
(1351, 166, '_billing_first_name', 'Fran'),
(1352, 166, '_billing_last_name', 'De la Rosa'),
(1353, 166, '_billing_address_1', 'AV LAS LOMAS'),
(1354, 166, '_billing_city', 'LIMA'),
(1355, 166, '_billing_state', 'LIM'),
(1356, 166, '_billing_postcode', 'LIMA01'),
(1357, 166, '_billing_country', 'PE'),
(1358, 166, '_billing_email', 'htrigoso@seek.pe'),
(1359, 166, '_billing_phone', '918172291'),
(1360, 166, '_shipping_first_name', 'Fran'),
(1361, 166, '_shipping_last_name', 'De la Rosa'),
(1362, 166, '_shipping_address_1', 'AV LAS LOMAS'),
(1363, 166, '_shipping_city', 'LIMA'),
(1364, 166, '_shipping_state', 'LIM'),
(1365, 166, '_shipping_postcode', 'LIMA01'),
(1366, 166, '_shipping_country', 'PE'),
(1367, 166, '_order_currency', 'PEN'),
(1368, 166, '_cart_discount', '0'),
(1369, 166, '_cart_discount_tax', '0'),
(1370, 166, '_order_shipping', '0.00'),
(1371, 166, '_order_shipping_tax', '0'),
(1372, 166, '_order_tax', '0'),
(1373, 166, '_order_total', '1580.00'),
(1374, 166, '_order_version', '3.7.1'),
(1375, 166, '_prices_include_tax', 'no'),
(1376, 166, '_billing_address_index', 'Fran De la Rosa  AV LAS LOMAS  LIMA LIM LIMA01 PE htrigoso@seek.pe 918172291'),
(1377, 166, '_shipping_address_index', 'Fran De la Rosa  AV LAS LOMAS  LIMA LIM LIMA01 PE'),
(1378, 166, '_billing_razon_social', '-'),
(1379, 166, '_billing_ruc', '-'),
(1380, 166, '_billing_fiscal', '-'),
(1381, 166, 'is_vat_exempt', 'no'),
(1382, 166, 'Local', '-'),
(1383, 166, '_recorded_sales', 'yes'),
(1384, 166, '_recorded_coupon_usage_counts', 'yes'),
(1385, 166, '_order_stock_reduced', 'yes'),
(1386, 168, '_wp_attached_file', '2020/04/fe24e649db9d259f2b59edef6bcea577.jpg'),
(1387, 168, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:900;s:4:\"file\";s:44:\"2020/04/fe24e649db9d259f2b59edef6bcea577.jpg\";s:5:\"sizes\";a:11:{s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"fe24e649db9d259f2b59edef6bcea577-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:45:\"fe24e649db9d259f2b59edef6bcea577-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"fe24e649db9d259f2b59edef6bcea577-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:44:\"fe24e649db9d259f2b59edef6bcea577-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:45:\"fe24e649db9d259f2b59edef6bcea577-1536x864.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:864;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:44:\"fe24e649db9d259f2b59edef6bcea577-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:44:\"fe24e649db9d259f2b59edef6bcea577-600x338.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:338;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:44:\"fe24e649db9d259f2b59edef6bcea577-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:44:\"fe24e649db9d259f2b59edef6bcea577-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:44:\"fe24e649db9d259f2b59edef6bcea577-600x338.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:338;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:44:\"fe24e649db9d259f2b59edef6bcea577-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1388, 169, '_wp_attached_file', '2020/04/talleres_reparatucoche.jpg'),
(1389, 169, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:34:\"2020/04/talleres_reparatucoche.jpg\";s:5:\"sizes\";a:11:{s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"talleres_reparatucoche-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:35:\"talleres_reparatucoche-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"talleres_reparatucoche-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:34:\"talleres_reparatucoche-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:35:\"talleres_reparatucoche-1536x864.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:864;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:34:\"talleres_reparatucoche-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:34:\"talleres_reparatucoche-600x338.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:338;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:34:\"talleres_reparatucoche-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:34:\"talleres_reparatucoche-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:34:\"talleres_reparatucoche-600x338.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:338;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:34:\"talleres_reparatucoche-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_posts`
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
-- Volcado de datos para la tabla `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2020-01-07 15:29:41', '2020-01-07 15:29:41', '<!-- wp:paragraph -->\n<p>Bienvenido a WordPress. Esta es su primera entrada. Edítela o bórrela, y ¡empiece a escribir!</p>\n<!-- /wp:paragraph -->', '¡Hola mundo!', '', 'publish', 'open', 'open', '', 'hola-mundo', '', '', '2020-01-07 15:29:41', '2020-01-07 15:29:41', '', 0, 'http://bmw-ecommerce.loc/?p=1', 0, 'post', '', 1),
(6, 1, '2020-01-07 15:43:27', '2020-01-07 15:43:27', '', 'Inicio', '', 'publish', 'closed', 'closed', '', 'inicio', '', '', '2020-04-05 15:39:07', '2020-04-05 20:39:07', '', 0, 'http://bmw-ecommerce.loc/?page_id=6', 0, 'page', '', 0),
(7, 1, '2020-01-07 22:09:09', '2020-01-07 22:09:09', '', 'woocommerce-placeholder', '', 'inherit', 'open', 'closed', '', 'woocommerce-placeholder', '', '', '2020-01-07 22:09:09', '2020-01-07 22:09:09', '', 0, 'http://bmw-ecommerce.loc/wp-content/uploads/2020/01/woocommerce-placeholder.png', 0, 'attachment', 'image/png', 0),
(8, 1, '2020-01-08 16:42:34', '2020-01-08 16:42:34', '', 'Polo-Hombre', '', 'inherit', 'open', 'closed', '', 'polo-hombre', '', '', '2020-01-08 16:42:34', '2020-01-08 16:42:34', '', 0, 'http://bmw-ecommerce.loc/wp-content/uploads/2020/01/Polo-Hombre.png', 0, 'attachment', 'image/png', 0),
(9, 1, '2020-01-08 16:43:04', '2020-01-08 16:43:04', '', 'reloj', '', 'inherit', 'open', 'closed', '', 'reloj', '', '', '2020-02-02 21:27:28', '2020-02-03 02:27:28', '', 6, 'http://bmw-ecommerce.loc/wp-content/uploads/2020/01/reloj.png', 0, 'attachment', 'image/png', 0),
(10, 1, '2020-01-08 16:43:33', '2020-01-08 16:43:33', '', 'bolsita', '', 'inherit', 'open', 'closed', '', 'bolsita', '', '', '2020-01-08 16:43:33', '2020-01-08 16:43:33', '', 0, 'http://bmw-ecommerce.loc/wp-content/uploads/2020/01/bolsita.png', 0, 'attachment', 'image/png', 0),
(11, 1, '2020-01-08 16:43:50', '2020-01-08 16:43:50', '', 'Gorra', '', 'inherit', 'open', 'closed', '', 'gorra', '', '', '2020-01-08 16:43:50', '2020-01-08 16:43:50', '', 0, 'http://bmw-ecommerce.loc/wp-content/uploads/2020/01/Gorra.png', 0, 'attachment', 'image/png', 0),
(12, 1, '2020-01-08 16:47:11', '2020-01-08 16:47:11', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Canguro Deportivo', '', 'publish', 'open', 'closed', '', 'canguro-deportivo-bmw', '', '', '2020-03-25 16:26:07', '2020-03-25 21:26:07', '', 0, 'http://bmw-ecommerce.loc/?post_type=product&#038;p=12', 0, 'product', '', 0),
(13, 1, '2020-01-08 16:46:11', '2020-01-08 16:46:11', '', '80222446464', '', 'inherit', 'open', 'closed', '', '80222446464', '', '', '2020-01-08 16:46:11', '2020-01-08 16:46:11', '', 12, 'http://bmw-ecommerce.loc/wp-content/uploads/2020/01/80222446464.png', 0, 'attachment', 'image/png', 0),
(14, 1, '2020-01-08 16:46:12', '2020-01-08 16:46:12', '', 'Carrito-de-jugyete', '', 'inherit', 'open', 'closed', '', 'carrito-de-jugyete', '', '', '2020-01-08 16:46:12', '2020-01-08 16:46:12', '', 12, 'http://bmw-ecommerce.loc/wp-content/uploads/2020/01/Carrito-de-jugyete.png', 0, 'attachment', 'image/png', 0),
(15, 1, '2020-01-08 16:46:14', '2020-01-08 16:46:14', '', 'maleta2', '', 'inherit', 'open', 'closed', '', 'maleta2', '', '', '2020-01-08 16:46:14', '2020-01-08 16:46:14', '', 12, 'http://bmw-ecommerce.loc/wp-content/uploads/2020/01/maleta2.png', 0, 'attachment', 'image/png', 0),
(16, 1, '2020-01-08 16:46:15', '2020-01-08 16:46:15', '', '29', '', 'inherit', 'open', 'closed', '', '29', '', '', '2020-01-08 16:46:15', '2020-01-08 16:46:15', '', 12, 'http://bmw-ecommerce.loc/wp-content/uploads/2020/01/29.png', 0, 'attachment', 'image/png', 0),
(17, 1, '2020-01-08 16:48:31', '2020-01-08 16:48:31', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Miniatura Vision Car', '', 'publish', 'open', 'closed', '', 'bmw-miniatura-vision-car', '', '', '2020-03-25 16:26:04', '2020-03-25 21:26:04', '', 0, 'http://bmw-ecommerce.loc/?post_type=product&#038;p=17', 0, 'product', '', 0),
(18, 1, '2020-01-08 16:49:03', '2020-01-08 16:49:03', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Lonchera Azul', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'publish', 'open', 'closed', '', 'lonchera-bmw-azul', '', '', '2020-03-25 16:26:00', '2020-03-25 21:26:00', '', 0, 'http://bmw-ecommerce.loc/?post_type=product&#038;p=18', 0, 'product', '', 0),
(19, 1, '2020-01-08 16:49:33', '2020-01-08 16:49:33', '<div>\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n</div>', 'Llavero MotorSport...', '', 'publish', 'open', 'closed', '', 'llavero-motorsport', '', '', '2020-03-25 16:25:56', '2020-03-25 21:25:56', '', 0, 'http://bmw-ecommerce.loc/?post_type=product&#038;p=19', 0, 'product', '', 0),
(20, 1, '2020-01-08 16:52:53', '2020-01-08 16:52:53', ' ', '', '', 'publish', 'closed', 'closed', '', '20', '', '', '2020-03-28 16:48:00', '2020-03-28 21:48:00', '', 0, 'http://bmw-ecommerce.loc/?p=20', 1, 'nav_menu_item', '', 0),
(22, 1, '2020-01-08 16:55:28', '2020-01-08 16:55:28', ' ', '', '', 'publish', 'closed', 'closed', '', '22', '', '', '2020-03-28 16:48:00', '2020-03-28 21:48:00', '', 0, 'http://bmw-ecommerce.loc/?p=22', 2, 'nav_menu_item', '', 0),
(23, 1, '2020-01-08 16:55:29', '2020-01-08 16:55:29', ' ', '', '', 'publish', 'closed', 'closed', '', '23', '', '', '2020-03-28 16:48:00', '2020-03-28 21:48:00', '', 16, 'http://bmw-ecommerce.loc/?p=23', 3, 'nav_menu_item', '', 0),
(24, 1, '2020-01-08 16:55:29', '2020-01-08 16:55:29', ' ', '', '', 'publish', 'closed', 'closed', '', '24', '', '', '2020-03-28 16:48:00', '2020-03-28 21:48:00', '', 16, 'http://bmw-ecommerce.loc/?p=24', 4, 'nav_menu_item', '', 0),
(25, 1, '2020-01-08 16:55:30', '2020-01-08 16:55:30', ' ', '', '', 'publish', 'closed', 'closed', '', '25', '', '', '2020-03-28 16:48:00', '2020-03-28 21:48:00', '', 16, 'http://bmw-ecommerce.loc/?p=25', 5, 'nav_menu_item', '', 0),
(26, 1, '2020-01-08 16:55:30', '2020-01-08 16:55:30', ' ', '', '', 'publish', 'closed', 'closed', '', '26', '', '', '2020-03-28 16:48:00', '2020-03-28 21:48:00', '', 16, 'http://bmw-ecommerce.loc/?p=26', 6, 'nav_menu_item', '', 0),
(27, 1, '2020-01-08 16:55:31', '2020-01-08 16:55:31', ' ', '', '', 'publish', 'closed', 'closed', '', '27', '', '', '2020-03-28 16:48:00', '2020-03-28 21:48:00', '', 0, 'http://bmw-ecommerce.loc/?p=27', 7, 'nav_menu_item', '', 0),
(28, 1, '2020-01-08 16:55:31', '2020-01-08 16:55:31', ' ', '', '', 'publish', 'closed', 'closed', '', '28', '', '', '2020-03-28 16:48:00', '2020-03-28 21:48:00', '', 0, 'http://bmw-ecommerce.loc/?p=28', 8, 'nav_menu_item', '', 0),
(31, 1, '2020-01-08 19:52:12', '2020-01-08 19:52:12', '', 'Tienda', '', 'publish', 'closed', 'closed', '', 'tienda', '', '', '2020-01-18 23:54:44', '2020-01-19 04:54:44', '', 0, 'http://bmw-ecommerce.loc/?page_id=31', 0, 'page', '', 0),
(32, 1, '2020-01-08 20:25:35', '2020-01-08 20:25:35', '[woocommerce_cart]', 'Cart', '', 'publish', 'closed', 'closed', '', 'cart', '', '', '2020-01-16 15:39:28', '2020-01-16 20:39:28', '', 0, 'http://bmw-ecommerce.loc/?page_id=32', 0, 'page', '', 0),
(33, 1, '2020-01-13 15:11:50', '2020-01-13 15:11:50', '', 'Llavero MotorSport... - Red', 'Color: Red', 'publish', 'closed', 'closed', '', 'llavero-motorsport-red', '', '', '2020-01-13 15:12:53', '2020-01-13 15:12:53', '', 19, 'http://bmw-ecommerce.loc/?post_type=product_variation&p=33', 1, 'product_variation', '', 0),
(36, 1, '2020-01-13 16:02:00', '2020-01-13 16:02:00', '', 'My Account', '', 'publish', 'closed', 'closed', '', 'my-account', '', '', '2020-04-06 13:06:13', '2020-04-06 18:06:13', '', 0, 'http://bmw-ecommerce.loc/my-account/', 0, 'page', '', 0),
(37, 1, '2020-01-13 16:02:00', '2020-01-13 16:02:00', '[user_registration_form id=\"35\"]', 'Registration', '', 'publish', 'closed', 'closed', '', 'registration', '', '', '2020-01-13 16:02:00', '2020-01-13 16:02:00', '', 0, 'http://bmw-ecommerce.loc/registration/', 0, 'page', '', 0),
(39, 1, '2020-01-13 19:35:10', '2020-01-13 19:35:10', '[[[{\"field_key\":\"first_name\",\"general_setting\":{\"label\":\"First Name\",\"description\":\"\",\"field_name\":\"first_name\",\"placeholder\":\"\",\"required\":\"yes\",\"hide_label\":\"no\"},\"advance_setting\":{\"custom_class\":\"\"}},{\"field_key\":\"last_name\",\"general_setting\":{\"label\":\"Last Name\",\"description\":\"\",\"field_name\":\"last_name\",\"placeholder\":\"\",\"required\":\"yes\",\"hide_label\":\"no\"},\"advance_setting\":{\"custom_class\":\"\"}},{\"field_key\":\"user_email\",\"general_setting\":{\"label\":\"User Email\",\"description\":\"\",\"field_name\":\"user_email\",\"placeholder\":\"\",\"required\":\"yes\",\"hide_label\":\"no\"},\"advance_setting\":{\"custom_class\":\"\"}},{\"field_key\":\"user_pass\",\"general_setting\":{\"label\":\"User Password\",\"description\":\"\",\"field_name\":\"user_pass\",\"placeholder\":\"\",\"required\":\"yes\",\"hide_label\":\"no\"},\"advance_setting\":{\"custom_class\":\"\"}},{\"field_key\":\"user_confirm_password\",\"general_setting\":{\"label\":\"Confirm Password\",\"description\":\"\",\"field_name\":\"user_confirm_password\",\"placeholder\":\"\",\"required\":\"yes\",\"hide_label\":\"no\"},\"advance_setting\":{\"custom_class\":\"\"}}]]]', 'Registarar usuario', '', 'publish', 'closed', 'closed', '', 'registarar-usuario', '', '', '2020-01-13 19:35:10', '2020-01-13 19:35:10', '', 0, 'http://bmw-ecommerce.loc/?post_type=user_registration&#038;p=39', 0, 'user_registration', '', 0),
(41, 1, '2020-01-15 17:28:01', '2020-01-15 17:28:01', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Bolsa de deporte', '', 'publish', 'open', 'closed', '', 'bolsa-de-deporte-bmw', '', '', '2020-03-25 16:25:52', '2020-03-25 21:25:52', '', 0, 'http://bmw-ecommerce.loc/?post_type=product&#038;p=41', 0, 'product', '', 0),
(42, 1, '2020-01-15 17:27:41', '2020-01-15 17:27:41', '', 'bolso', '', 'inherit', 'open', 'closed', '', 'bolso', '', '', '2020-01-15 17:27:41', '2020-01-15 17:27:41', '', 41, 'http://bmw-ecommerce.loc/wp-content/uploads/2020/01/bolso.png', 0, 'attachment', 'image/png', 0),
(43, 1, '2020-01-15 17:28:51', '2020-01-15 17:28:51', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Reloj de Pulsera cronó...', '', 'publish', 'open', 'closed', '', 'reloj-de-pulsera-crono', '', '', '2020-01-28 14:52:49', '2020-01-28 19:52:49', '', 0, 'http://bmw-ecommerce.loc/?post_type=product&#038;p=43', 0, 'product', '', 0),
(44, 1, '2020-01-15 17:28:36', '2020-01-15 17:28:36', '', 'Reloj-hombre', '', 'inherit', 'open', 'closed', '', 'reloj-hombre', '', '', '2020-01-15 17:28:36', '2020-01-15 17:28:36', '', 43, 'http://bmw-ecommerce.loc/wp-content/uploads/2020/01/Reloj-hombre.png', 0, 'attachment', 'image/png', 0),
(45, 1, '2020-01-15 17:29:32', '2020-01-15 17:29:32', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Oso de Peluche Teddy', '', 'publish', 'open', 'closed', '', 'oso-de-peluche-teddy', '', '', '2020-01-28 14:52:51', '2020-01-28 19:52:51', '', 0, 'http://bmw-ecommerce.loc/?post_type=product&#038;p=45', 0, 'product', '', 0),
(46, 1, '2020-01-15 17:29:21', '2020-01-15 17:29:21', '', 'osito-llavero', '', 'inherit', 'open', 'closed', '', 'osito-llavero', '', '', '2020-01-15 17:29:21', '2020-01-15 17:29:21', '', 45, 'http://bmw-ecommerce.loc/wp-content/uploads/2020/01/osito-llavero.png', 0, 'attachment', 'image/png', 0),
(47, 1, '2020-01-15 17:30:24', '2020-01-15 17:30:24', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Billetera Azul', 'Chaqueta en diseño con colour blocking con logotipo vistoso estampado sobre el brazo y bandas BMW M en el cuello.\r\n\r\nDescripción del producto: - Parte delantera blanca con costuras de hombros compactadas y logotipo BMW M Motorsport estampado en la parte izquierda.', 'publish', 'open', 'closed', '', 'billetera-bmw-m-motor', '', '', '2020-03-25 16:25:39', '2020-03-25 21:25:39', '', 0, 'http://bmw-ecommerce.loc/?post_type=product&#038;p=47', 0, 'product', '', 0),
(48, 1, '2020-01-15 17:30:17', '2020-01-15 17:30:17', '', 'Billetera', '', 'inherit', 'open', 'closed', '', 'billetera', '', '', '2020-01-15 17:30:17', '2020-01-15 17:30:17', '', 47, 'http://bmw-ecommerce.loc/wp-content/uploads/2020/01/Billetera.png', 0, 'attachment', 'image/png', 0),
(54, 1, '2020-01-16 19:19:21', '2020-01-16 19:19:21', '', 'Lonchera Azul - L', 'Size: L', 'publish', 'closed', 'closed', '', 'lonchera-bmw-azul', '', '', '2020-01-16 19:47:37', '2020-01-16 19:47:37', '', 18, 'http://bmw-ecommerce.loc/?post_type=product_variation&#038;p=54', 1, 'product_variation', '', 0),
(55, 1, '2020-01-16 19:20:05', '2020-01-16 19:20:05', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Lonchera BMW Azul', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'inherit', 'closed', 'closed', '', '18-autosave-v1', '', '', '2020-01-16 19:20:05', '2020-01-16 19:20:05', '', 18, 'http://bmw-ecommerce.loc/2020/01/16/18-autosave-v1/', 0, 'revision', '', 0),
(56, 1, '2020-01-16 19:51:26', '2020-01-16 19:51:26', '', 'Lonchera Azul - M', 'Size: M', 'publish', 'closed', 'closed', '', 'lonchera-bmw-azul-m-blue', '', '', '2020-01-16 19:53:05', '2020-01-16 19:53:05', '', 18, 'http://bmw-ecommerce.loc/?post_type=product_variation&p=56', 2, 'product_variation', '', 0),
(57, 1, '2020-01-16 19:51:29', '2020-01-16 19:51:29', '', 'Lonchera Azul - L', 'Size: L', 'publish', 'closed', 'closed', '', 'lonchera-bmw-azul-l-green', '', '', '2020-01-16 19:53:06', '2020-01-16 19:53:06', '', 18, 'http://bmw-ecommerce.loc/?post_type=product_variation&p=57', 3, 'product_variation', '', 0),
(60, 1, '2020-01-16 16:44:36', '2020-01-16 21:44:36', '[woocommerce_checkout]', 'Checkout', '', 'publish', 'closed', 'closed', '', 'checkout', '', '', '2020-01-16 16:44:36', '2020-01-16 21:44:36', '', 0, 'http://bmw-ecommerce.loc/?page_id=60', 0, 'page', '', 0),
(62, 1, '2020-01-21 10:25:30', '2020-01-21 15:25:30', 'El acceso y uso de este sitio web se rige por los \"Términos y Condiciones\" descritos a continuación, así como por la legislación que se aplique en la República de Perú. En consecuencia, todas las visitas y todos los contratos y transacciones que se realicen en este sitio, así como sus efectos jurídicos, quedarán regidos por estas reglas y sometidas a esta legislación.\r\n\r\nLos Términos y Condiciones contenidos en este instrumento se aplicarán a todos los actos y contratos que se ejecuten o celebren mediante los sistemas de oferta y comercialización comprendidos en este sitio web entre los usuarios de este sitio e Inchcape Motors Perú S.A. (“Inchcape”), la cual se denominará en adelante también en forma indistinta como \"la empresa\", o bien \"la empresa oferente\", \"el proveedor\" o \"la empresa proveedora\", según convenga al sentido del texto.\r\n\r\nEs requisito para comprar en la Tienda Virtual de Inchcape Motors Perú S.A (la “Tienda Virtual”) la aceptación expresa, por parte de los Usuarios o Clientes, de los Términos y Condiciones de ventas descritos a continuación. Cualquier persona que realice una transacción en la Tienda Virtual, declara y reconoce, por el hecho de efectuar la compra, que conoce y acepta los Términos y Condiciones. Se entenderán conocidos y aceptados los Términos y Condiciones por el solo hecho del registro y/o la compra de productos a través de este sitio.\r\n\r\nInchcape se reserva el derecho a modificar unilateralmente, en cualquier momento, los presentes Términos y Condiciones. No obstante, lo anterior, los cambios o modificaciones realizados a los presentes términos y condiciones serán puestos informados a los Usuarios antes de su puesta en vigencia, mediante su publicación en este portal Web. Los Usuarios reconocen que la Tienda Virtual puede presentar circunstancias, ajenas a la voluntad de Inchcape, que impliquen que este sitio web o la plataforma no se encuentren operando durante algún período. Inchcape no garantiza que el servicio de la plataforma será ininterrumpido, seguro o libre de errores, la Tienda Virtual funciona \"según disponibilidad\" sin ninguna garantía o condición, expresa, implícita o legal adicional.\r\n\r\nEn tales casos, Inchcape procurará restablecer la plataforma y el sistema con la mayor celeridad posible, sin que por ello pueda imputársele algún tipo de responsabilidad.\r\n\r\nTodos los nombres, enseñas comerciales, marcas, slogans, encabezados de páginas, gráficos, textos, logos, botones, íconos, imágenes, audio, códigos y software usados o incorporados a este sitio web, o su integración, son de propiedad de BMW, y se encuentran protegidos por las diversas legislaciones aplicables en los países correspondientes. Se prohíbe cualquier uso no autorizado de estos bienes incorporales, incluyendo, pero sin limitar la reproducción, modificación, distribución, transmisión, exhibición o impresión, aplicación, publicidad, apropiación o posesión de los mismos.\r\n<ol class=\"number\">\r\n 	<li>\r\n<h2>REGISTRO DEL USUARIO O CLIENTE</h2>\r\nPara comprar productos en la Tienda Virtual, no es necesario estar registrado. Para obtener mejores beneficios de la Tienda Virtual, el Usuario podrá registrarse completando y suscribiendo el formulario que aparece en el sitio web y enviándolo mediante un \"click\" en el elemento respectivo. Los datos necesarios para el registro son los siguientes: Nombre, Apellidos, correo electrónico, Clave, País de residencia, Tipo de documento, Número de documento, Género, Fecha de nacimiento, Celular. Para acceder al registro del usuario, se deberán aceptar los términos y condiciones de la web, así como la Política de Privacidad y Protección de Datos Personales de Inchcape Motors Perú S.A. (https://bmwlifestyleshopperu.pe/politicas-de-privacidad) El Usuario acepta que Inchcape utilice la dirección de correo electrónico que proporcione como medio principal para comunicarse.\r\n\r\nEl Usuario será el único responsable por mantener su Cuenta y contraseña seguras. En ningún caso Inchcape se hará responsable por pérdidas o daños ocasionados por el Usuario como consecuencia de no haber mantenido la seguridad de su Cuenta y contraseña.\r\n\r\nEn caso de no registrarse, el usuario deberá completar los datos que se indican en el formulario de compra con el fin de hacer efectiva la adquisición de productos.\r\n\r\nEl incumplimiento o violación de cualquier de los puntos establecidos en los Términos de Servicio, según lo determinado a la sola discreción de PAGOMÁTICO, podrá considerarse una causal de terminación inmediata de los Servicios.</li>\r\n<li>\r\n <h2>CLAVE SECRETA</h2>\r\n<p>El usuario dispondrá, una vez registrado, de un nombre y contraseña o clave definitiva que le permitirá el acceso personalizado, confidencial y seguro. El usuario tendrá la posibilidad de cambiar la clave de acceso, para lo cual deberá sujetarse al procedimiento establecido en el sitio respectivo. El Usuario será el único responsable por mantener su Cuenta y contraseña seguras, que serán personales e intransferibles y le permiten efectuar compras y obtener información sobre sus interacciones en la Tienda Virtual. En ningún caso Inchcape se hará responsable por pérdidas o daños ocasionados por el Usuario como consecuencia de no haber mantenido la seguridad de su Cuenta y contraseña.\r\n\r\n</p>\r\n</li>\r\n<li>\r\n <h2>MEDIOS DE PAGOS QUE SE PODRÁN UTILIZAR EN ESTE SITIO\r\n</h2>\r\n<p>Los productos y servicios ofrecidos en la Tienda Virtual, salvo que se señale una forma de pago distinta para casos particulares, podrán ser cancelados utilizando los siguientes medios de pago permitidos en este sitio:</p>\r\n<ul class=\"check\">\r\n   <li>Tarjeta de crédito: Visa, Mastercard, American Express y Diners Cub.</li>\r\n   <li>Pago en efectivo</li>\r\n   <li>Las procesadoras Visa, Mastercard, American Express y Diners garantizan una disponibilidad del 99,8% de sus plataformas. Inchcape en ningún caso será responsable por la falta de disponibilidad de las procesadoras.</li>\r\n</ul>\r\n</li>\r\n<li>\r\n <h2>DESPACHO DE LOS PRODUCTOS</h2>\r\n<p>Los productos adquiridos a través del sitio se sujetarán a las condiciones de despacho y entrega elegidas por el usuario y disponibles en el sitio. Cuando existan productos almacenados en diferentes fuentes, éstos serán despachados de manera independiente, de acuerdo a las alternativas disponibles en el sitio y escogidas por el usuario. La información del lugar de envío es de exclusiva responsabilidad del usuario y no podrá ser modificada durante la etapa de entrega. Los plazos elegidos para el despacho y entrega, se cuentan desde que Inchcape haya validado la solicitud de compra y el medio de pago utilizado, se consideran días hábiles para el cumplimiento de dicho plazo.</p>\r\n<p>Los plazos a considerar para la entrega de los productos adquiridos en la Tienda Virtual, son los siguientes:</p>\r\n\r\n<ol class=\"number\">\r\n<li>Para Lima: hasta 2 días (48 horas) hábiles, contados desde el día siguiente de recibida la confirmación de compra.</li>\r\n<li>Para provincia y Lima periférico: hasta 3 días (72 horas) hábiles, contados desde el día siguiente de recibida la confirmación de compra.</li>\r\n</ol>\r\n<p>Los gastos de envío varían de acuerdo al tamaño del producto y el lugar de destino. Asimismo, los clientes tendrán la opción de recojo en las tiendas de BMW Surco y San Isidro sin recargo por flete. La venta con retiro en tienda permite a nuestros clientes adquirir los productos ofrecidos en nuestra Tienda Virtual y recogerlos en cualquiera de nuestras tiendas. Para acceder a esta modalidad de recojo, el cliente deberá indicar en la solicitud de compra el nombre de la persona que retirará el producto de la tienda y su número de documento de identidad. El producto sólo será entregado a la persona indicada en dicha solicitud, presentando su Documento de Identidad.</p>\r\n</li>\r\n<li>\r\n <h2>VIGENCIA, VALIDEZ Y STOCK DE LAS OFERTAS CONTENIDAS EN ESTE SITIO</h2>\r\n<p>Los precios de los productos que ofrece la Tienda Virtual, se encontrarán vigentes sólo mientras aparezcan publicados en la misma. Inchcape podrá modificar cualquier información contenida en este sitio en cualquier momento y sin previo aviso.</p>\r\n<p>Los precios de los productos publicados en este sitio sólo tendrán vigencia y aplicación en éste sitio y no serán aplicables a otros canales de venta, tales como tiendas físicas, catálogos u otros.</p>\r\n</li>\r\n<li>\r\n <h2>CAMBIOS Y/O DEVOLUCIONES</h2>\r\n<p>Para realizar cambios o devoluciones de productos, el cliente deberá contactarse a nuestro call center 610 - 3535.. Para solicitudes de devolución el cliente deberá presentar el comprobante de pago correspondiente a la compra, además el producto tendrá que encontrarse en perfectas condiciones, tal y como fuera recibido al momento de la entrega del mismo por parte del Inchcape, contar con empaques originales, etiquetas, precios, bolsas, papeles, etc.. El cliente podrá realizar solicitudes de devolución dentro de las 48 horas hábiles siguientes posteriores a la entrega del producto, vencido dicho plazo no se aceptarán cambios o devoluciones.\r\n</p>\r\n<p>El cliente deberá revisar el estado de los productos al momento de la recepción y antes de firmar la constancia de entrega (Guía de remisión). La recepción del producto confirma la conformidad con el mismo.</p>\r\n<p>\r\n<strong>Importante:</strong> las devoluciones se harán efectivas de acuerdo al mismo medio de pago utilizado en la transacción original de compra.\r\n</p>\r\n</li>\r\n<li>\r\n    <h2>CONDICIONES GENERALES</h2>\r\n    <p>Los Usuarios deberán de realizar una compra con un monto mínimo de S/20.00 (VEINTE SOLES).</p>\r\n    <ol class=\"letter\">\r\n        <li>Para el funcionamiento u uso de la Tienda Virtual, el Usuario deberá tener en cuenta, en todo momento, la información indicada en estos Términos y Condiciones.</li>\r\n        <li>Los Términos y Condiciones y en general las transacciones que se realicen a través de la Tienda Virtual, se regirán e interpretarán de acuerdo con las leyes de la República del Perú. Las partes se someten de manera irrevocable e incondicional a la jurisdicción exclusiva de los tribunales de Cercado de Lima con respecto a cualquier disputa o reclamo que pueda surgir.</li>\r\n        <li>El Usuario no podrá utilizar los productos y servicios ofrecidos a través de la Tienda Virtual para ningún propósito ilegal o no autorizado ni podrá, en el uso del Servicio, violar cualquiera de las leyes en la jurisdicción establecida.</li>\r\n        <li>Salvo autorización expresa de Inchcape, el Usuario se compromete a no reproducir, duplicar, copiar, vender o revender los productos adquiridos a través de la Tienda Virtual o parte de ellos.</li>\r\n        <li>El Usuario reconoce y acepta que el uso que realice de la Tienda Virtual, incluida la información que comunique o sea almacenada por Inchcape, se rige por la Política de privacidad y Protección de Datos Personales de Inchcape, que podrá revisar en este sitio web.</li>\r\n        <li>El usuario conoce y acepta estar sujeto a los términos adicionales específicos del servicio, aplicables a los servicios adquiridos o proporcionados por los socios o proveedores de Inchcape u otros terceros.</li>\r\n        <li>Inchcape no será responsable de ningún daño directo, indirecto, incidental o consecuente resultantes del Uso de los productos y servicios ofrecidos en la Tienda Virtual.</li>\r\n        <li>El monto mínimo para compras a través de la Tienda Virtual es de S/20.00 (VEINTE SOLES).</li>\r\n        <li>Los pedidos que no tengan confirmación de pago después de la fecha de cierre de la etapa de recaudo, serán anulados automáticamente por el sistema.</li>\r\n        <li>Las fotografías de los productos son referenciales, y la ambientación utilizada en las fotografías no hace parte de los productos.</li>\r\n    </ol>\r\n</li>\r\n<li>\r\n <h2>COMPROBANTES DE PAGO</h2>\r\n<p>Según el reglamento de Comprobantes de Pago aprobado por la Resolución de Superintendencia N° 007-99 / SUNAT (RCP) y el Texto Único Ordenado de la Ley del Impuesto General a las Ventas e Impuesto Selectivo al Consumo, aprobado mediante Decreto Supremo N° 055-99-EF y normas modificatorias (TUO del IGV), se concluye: “No existe ningún procedimiento vigente que permita el canje de boletas de venta por facturas, más aún las notas de crédito no se encuentran previstas para modificar al adquirente o usuario que figura en el comprobante de pago original”. En consecuencia, el cliente deberá decidir correctamente el documento que solicitará como comprobante al momento de su compra, ya que no procederá cambio alguno.</p>\r\n</li>\r\n<li>\r\n <h2>LIBRO DE RECLAMACIONES</h2>\r\n<p>Conforme a lo establecido en el artículo 150º de la Ley Nº 29571 Código de Protección y Defensa del Consumidor, este portal web, la plataforma Tienda Virtual y los sitios web de cada Usuario contarán con un Libro de Reclamaciones Virtual, válido y aplicable sólo en la República del Perú. En el sitio web de Inchcape (https://bmwlifestyleshopperu.pe) de titularidad de Inchcape, existirá un formulario donde se registrarán los reclamos y/o quejas de los usuarios de la Tienda Virtual. Inchcape responderá los reclamos y/o quejas dentro del plazo legal de treinta (30) días calendario, prorrogable por treinta (30) días calendario adicionales.</p>\r\n<p>Cualquier inquietud o sugerencia sobre los presentes Términos y Condiciones podrá ser enviada al correo electrónico <strong>bmw@inchcape.pe</strong> </p>\r\n</li>\r\n</ol>', 'Terminos y condiciones', '', 'publish', 'closed', 'closed', '', 'terminos-y-condiciones', '', '', '2020-02-06 16:56:39', '2020-02-06 21:56:39', '', 63, 'http://bmw-ecommerce.loc/?page_id=62', 0, 'page', '', 0),
(63, 1, '2020-01-21 10:36:59', '2020-01-21 15:36:59', '', 'Servicio al cliente', '', 'publish', 'closed', 'closed', '', 'servicio-al-cliente', '', '', '2020-01-21 10:36:59', '2020-01-21 15:36:59', '', 0, 'http://bmw-ecommerce.loc/?page_id=63', 0, 'page', '', 0),
(64, 1, '2020-01-21 11:38:10', '2020-01-21 16:38:10', 'INCHCAPE MOTORS PERÚ S.A.C., con domicilio principal en la ciudad de Lima- Perú, (en adelante, “INCHCAPE”), respeta la privacidad de los usuarios y seguridad de los datos personales de sus clientes y usuarios, de conformidad con lo establecido en la Ley N° 29733, Ley de Protección de Datos Personales y su Reglamento, adoptando para ello las medidas técnicas y organizativas necesarias para evitar la pérdida, mal uso, alteración, acceso no autorizado y sustracción de los datos personales facilitados.\r\n\r\nINCHCAPE informa a sus clientes y usuarios que sus datos personales sólo podrán obtenerse para su tratamiento cuando sean adecuados, pertinentes y necesarios en relación con el ámbito y las finalidades para las que se hayan obtenido, estos serán suprimidos de los bancos de datos personales de titularidad de INCHCAPE cuando hayan dejado de ser necesarios o pertinentes para la finalidad indicada, o cuando así lo solicite el titular en el ejercicio de su derecho de cancelación.\r\n\r\nLos datos personales de los clientes y usuarios de este portal web podrían comunicarse o transferirse dentro y fuera del territorio nacional a algún tercero, siempre que sea necesaria su participación para el cumplimiento de las finalidades que se le indiquen. En cualquier caso, INCHCAPE garantiza la confidencialidad y el tratamiento seguro de su Información.\r\n\r\nLos Bancos de Datos de INCHCAPE cumplen con la exigencia legal de estar inscritos en el Registro Nacional de Protección de Datos Personales de la Dirección General de Protección de Datos Personales del Ministerio de Justicia y Derechos Humanos.\r\n\r\nPara el ingreso de datos y la realización de transacciones INCHCAPE utiliza el Protocolo de Seguridad SSL. Para mayor seguridad, INCHCAPE cuenta con un sistema de clave o contraseña para quienes deseen registrarse como usuarios de su plataforma. La Clave asignada a cada usuario es única e intransferible y será requerida cada vez que desee acceder a la plataforma como “usuario registrado”, de esta manera su información estará protegida. El usuario es responsable por el cuidado y custodia de la clave o contraseña asignada.\r\n\r\nLos usuarios y clientes que faciliten datos de carácter personal a INCHCAPE, podrán ejercer en cualquier momento los derechos de acceso, rectificación, cancelación y oposición (ARCO), respecto de sus datos personales, en los términos establecidos en la legislación vigente. Para ello deberán completar la Solicitud de Ejercicio de Derechos ARCO (<a href=\"https://bmwlifestyleshopperu.pe/media/filebmw/Formato%20Ejercicio%20Derechos%20ARCO.pdf\" download=\"\"><strong>descargar pdf</strong></a>), y enviarla a la siguiente dirección física: Avenida El Polo N° 1117, distrito de Santiago de Surco, provincia y departamento de Lima, o escaneada a la dirección electrónica <a href=\"mailto:datospersonales@inchcape.pe\">datospersonales@inchcape.pe</a>, adjuntando la siguiente información:\r\n<ul class=\"check\">\r\n 	<li>Copia del documento de identidad del titular de los datos personales.</li>\r\n 	<li>En caso de representación del titular, adjuntar una carta poder con firma legalizada.</li>\r\n 	<li>Documentos que sustenten la petición de la solicitud.</li>\r\n</ul>\r\nCuando la solicitud sea enviada por correo electrónico, el sistema le enviará una respuesta automática de recepción y se le responderá en el plazo legal.\r\n\r\nINCHCAPE podrá modificar en cualquier momento su Política Privacidad. Cualquier cambio sustancial en la presente Política será comunicado a través de este portal web.', 'PRIVACIDAD Y PROTECCIÓN DE DATOS PERSONALES', '', 'publish', 'closed', 'closed', '', 'privacidad-y-proteccion-de-datos-personales', '', '', '2020-02-07 10:52:32', '2020-02-07 15:52:32', '', 63, 'http://bmw-ecommerce.loc/?page_id=64', 0, 'page', '', 0),
(65, 1, '2020-01-21 11:39:29', '2020-01-21 16:39:29', '', 'Libro de reclamaciones', '', 'publish', 'closed', 'closed', '', 'libro-de-reclamaciones', '', '', '2020-01-21 11:41:47', '2020-01-21 16:41:47', '', 63, 'http://bmw-ecommerce.loc/?page_id=65', 0, 'page', '', 0),
(66, 1, '2020-01-21 11:39:58', '2020-01-21 16:39:58', '', 'Preguntas frecuentes', '', 'publish', 'closed', 'closed', '', 'preguntas-frecuentes', '', '', '2020-01-21 11:42:07', '2020-01-21 16:42:07', '', 63, 'http://bmw-ecommerce.loc/?page_id=66', 0, 'page', '', 0),
(68, 1, '2020-01-22 15:03:06', '2020-01-22 20:03:06', '', 'Order &ndash; enero 22, 2020 @ 03:03 PM', '', 'wc-on-hold', 'open', 'closed', 'wc_order_UeyyQA6M1FVW3', 'pedido-jan-22-2020-0803-pm', '', '', '2020-01-22 15:03:14', '2020-01-22 20:03:14', '', 0, 'http://bmw-ecommerce.loc/?post_type=shop_order&#038;p=68', 0, 'shop_order', '', 1),
(69, 1, '2020-01-22 15:18:33', '2020-01-22 20:18:33', '', 'Finalizar compra', '', 'publish', 'closed', 'closed', '', 'finalizar-compra', '', '', '2020-01-22 15:21:24', '2020-01-22 20:21:24', '', 0, 'http://bmw-ecommerce.loc/?page_id=69', 0, 'page', '', 0),
(72, 1, '2020-01-22 15:38:23', '2020-01-22 20:38:23', '', 'Orden de productos', '', 'publish', 'closed', 'closed', '', 'orden-de-productos', '', '', '2020-01-22 15:38:36', '2020-01-22 20:38:36', '', 0, 'http://bmw-ecommerce.loc/?post_type=br_product_filter&#038;p=72', 0, 'br_product_filter', '', 0),
(73, 1, '2020-01-22 15:38:38', '2020-01-22 20:38:38', '', 'Orden de productos', '', 'inherit', 'closed', 'closed', '', '72-autosave-v1', '', '', '2020-01-22 15:38:38', '2020-01-22 20:38:38', '', 72, 'http://bmw-ecommerce.loc/2020/01/22/72-autosave-v1/', 0, 'revision', '', 0),
(74, 1, '2020-01-22 15:39:30', '2020-01-22 20:39:30', '', '', '', 'publish', 'closed', 'closed', '', '74', '', '', '2020-01-22 15:39:30', '2020-01-22 20:39:30', '', 0, 'http://bmw-ecommerce.loc/?post_type=br_product_filter&p=74', 0, 'br_product_filter', '', 0),
(76, 1, '2020-01-23 14:51:17', '2020-01-23 19:51:17', '', 'Order &ndash; enero 23, 2020 @ 02:51 PM', '', 'wc-on-hold', 'open', 'closed', 'wc_order_MR0KOlHSMI2QM', 'pedido-jan-23-2020-0751-pm', '', '', '2020-01-23 14:51:25', '2020-01-23 19:51:25', '', 0, 'http://bmw-ecommerce.loc/?post_type=shop_order&#038;p=76', 0, 'shop_order', '', 1),
(84, 1, '2020-01-29 15:25:42', '2020-01-29 20:25:42', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:42:\"templates/template-woocommerce-account.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', '[CPT-Page MyAccount]', 'cpt-page-myaccount', 'publish', 'closed', 'closed', '', 'group_5e31e92f3c392', '', '', '2020-02-02 20:29:12', '2020-02-03 01:29:12', '', 0, 'http://bmw-ecommerce.loc/?post_type=acf-field-group&#038;p=84', 0, 'acf-field-group', '', 0),
(85, 1, '2020-01-29 15:25:43', '2020-01-29 20:25:43', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Imagen Login', 'imagen_login', 'publish', 'closed', 'closed', '', 'field_5e3208aa0b0f3', '', '', '2020-01-29 15:25:43', '2020-01-29 20:25:43', '', 84, 'http://bmw-ecommerce.loc/?post_type=acf-field&p=85', 0, 'acf-field', '', 0),
(86, 1, '2020-01-29 15:26:08', '2020-01-29 20:26:08', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Imagen Registro', 'imagen_register', 'publish', 'closed', 'closed', '', 'field_5e32090ed3c22', '', '', '2020-01-29 15:26:08', '2020-01-29 20:26:08', '', 84, 'http://bmw-ecommerce.loc/?post_type=acf-field&p=86', 1, 'acf-field', '', 0),
(87, 1, '2020-01-29 15:27:37', '2020-01-29 20:27:37', '', 'cq5dam.resized.img.1680.large.time1467967699630', '', 'inherit', 'open', 'closed', '', 'cq5dam-resized-img-1680-large-time1467967699630', '', '', '2020-01-29 15:27:37', '2020-01-29 20:27:37', '', 36, 'http://bmw-ecommerce.loc/wp-content/uploads/2020/01/cq5dam.resized.img_.1680.large_.time1467967699630-1.png', 0, 'attachment', 'image/png', 0),
(88, 1, '2020-02-02 20:37:39', '2020-02-03 01:37:39', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:27:\"templates/template-home.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', '[CPT-Home]', 'cpt-home', 'publish', 'closed', 'closed', '', 'group_5e3777a532db2', '', '', '2020-03-28 16:53:10', '2020-03-28 21:53:10', '', 0, 'http://bmw-ecommerce.loc/?post_type=acf-field-group&#038;p=88', 0, 'acf-field-group', '', 0),
(89, 1, '2020-02-02 20:37:39', '2020-02-03 01:37:39', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Slider Inicio', 'slider_home', 'publish', 'closed', 'closed', '', 'field_5e38396bb5e90', '', '', '2020-02-02 20:37:39', '2020-02-03 01:37:39', '', 88, 'http://bmw-ecommerce.loc/?post_type=acf-field&p=89', 0, 'acf-field', '', 0),
(90, 1, '2020-02-02 20:37:40', '2020-02-03 01:37:40', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Listado', 'slider_home', 'publish', 'closed', 'closed', '', 'field_5e3839a2b5e91', '', '', '2020-02-02 20:43:48', '2020-02-03 01:43:48', '', 88, 'http://bmw-ecommerce.loc/?post_type=acf-field&#038;p=90', 1, 'acf-field', '', 0),
(91, 1, '2020-02-02 20:37:40', '2020-02-03 01:37:40', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Imagen', 'slider_home_image', 'publish', 'closed', 'closed', '', 'field_5e3839c5b5e92', '', '', '2020-02-02 20:37:40', '2020-02-03 01:37:40', '', 90, 'http://bmw-ecommerce.loc/?post_type=acf-field&p=91', 0, 'acf-field', '', 0),
(92, 1, '2020-02-02 20:37:40', '2020-02-03 01:37:40', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Titulo', 'slider_home_title', 'publish', 'closed', 'closed', '', 'field_5e383aa8b5e93', '', '', '2020-02-02 20:37:40', '2020-02-03 01:37:40', '', 90, 'http://bmw-ecommerce.loc/?post_type=acf-field&p=92', 1, 'acf-field', '', 0),
(93, 1, '2020-02-02 20:37:40', '2020-02-03 01:37:40', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Botón', 'slider_home_button', 'publish', 'closed', 'closed', '', 'field_5e383ac4b5e94', '', '', '2020-02-02 20:41:55', '2020-02-03 01:41:55', '', 90, 'http://bmw-ecommerce.loc/?post_type=acf-field&#038;p=93', 3, 'acf-field', '', 0),
(94, 1, '2020-02-02 20:40:01', '2020-02-03 01:40:01', '', '1 (1)', '', 'inherit', 'open', 'closed', '', '1-1', '', '', '2020-02-02 20:40:01', '2020-02-03 01:40:01', '', 6, 'http://bmw-ecommerce.loc/wp-content/uploads/2020/02/1-1.png', 0, 'attachment', 'image/png', 0),
(95, 1, '2020-02-02 20:41:54', '2020-02-03 01:41:54', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Sub-Titulo', 'slider_home_subtitle', 'publish', 'closed', 'closed', '', 'field_5e383ba51944a', '', '', '2020-02-02 20:41:54', '2020-02-03 01:41:54', '', 90, 'http://bmw-ecommerce.loc/?post_type=acf-field&p=95', 2, 'acf-field', '', 0),
(96, 1, '2020-02-02 21:25:16', '2020-02-03 02:25:16', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Url', 'slider_home_link', 'publish', 'closed', 'closed', '', 'field_5e38431da2e63', '', '', '2020-02-02 21:25:16', '2020-02-03 02:25:16', '', 90, 'http://bmw-ecommerce.loc/?post_type=acf-field&p=96', 4, 'acf-field', '', 0),
(97, 1, '2020-02-02 21:25:16', '2020-02-03 02:25:16', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Ofertas', 'ofertas', 'publish', 'closed', 'closed', '', 'field_5e384102a2e61', '', '', '2020-02-02 21:55:25', '2020-02-03 02:55:25', '', 88, 'http://bmw-ecommerce.loc/?post_type=acf-field&#038;p=97', 5, 'acf-field', '', 0),
(98, 1, '2020-02-02 21:25:17', '2020-02-03 02:25:17', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";i:2;s:3:\"max\";i:2;s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Listado', 'offers', 'publish', 'closed', 'closed', '', 'field_5e38437ca2e65', '', '', '2020-02-02 21:55:25', '2020-02-03 02:55:25', '', 88, 'http://bmw-ecommerce.loc/?post_type=acf-field&#038;p=98', 6, 'acf-field', '', 0),
(99, 1, '2020-02-02 21:25:17', '2020-02-03 02:25:17', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Titulo', 'offers_title', 'publish', 'closed', 'closed', '', 'field_5e384401a2e66', '', '', '2020-02-02 21:32:01', '2020-02-03 02:32:01', '', 98, 'http://bmw-ecommerce.loc/?post_type=acf-field&#038;p=99', 0, 'acf-field', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(100, 1, '2020-02-02 21:25:17', '2020-02-03 02:25:17', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Imagen', 'offers_image', 'publish', 'closed', 'closed', '', 'field_5e38440fa2e67', '', '', '2020-02-02 21:32:01', '2020-02-03 02:32:01', '', 98, 'http://bmw-ecommerce.loc/?post_type=acf-field&#038;p=100', 1, 'acf-field', '', 0),
(101, 1, '2020-02-02 21:25:17', '2020-02-03 02:25:17', 'a:10:{s:4:\"type\";s:9:\"page_link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";s:0:\"\";s:8:\"taxonomy\";s:0:\"\";s:10:\"allow_null\";i:0;s:14:\"allow_archives\";i:1;s:8:\"multiple\";i:0;}', 'Url', 'offers_link', 'publish', 'closed', 'closed', '', 'field_5e38446da2e68', '', '', '2020-02-02 21:32:01', '2020-02-03 02:32:01', '', 98, 'http://bmw-ecommerce.loc/?post_type=acf-field&#038;p=101', 2, 'acf-field', '', 0),
(102, 1, '2020-02-02 21:25:17', '2020-02-03 02:25:17', 'a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Descuento', 'offers_discount', 'publish', 'closed', 'closed', '', 'field_5e384492a2e69', '', '', '2020-02-02 21:32:01', '2020-02-03 02:32:01', '', 98, 'http://bmw-ecommerce.loc/?post_type=acf-field&#038;p=102', 3, 'acf-field', '', 0),
(103, 1, '2020-02-02 21:25:18', '2020-02-03 02:25:18', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Valor', 'offers_discount_value', 'publish', 'closed', 'closed', '', 'field_5e3844e5a2e6a', '', '', '2020-02-02 21:32:01', '2020-02-03 02:32:01', '', 102, 'http://bmw-ecommerce.loc/?post_type=acf-field&#038;p=103', 0, 'acf-field', '', 0),
(104, 1, '2020-02-02 21:25:18', '2020-02-03 02:25:18', 'a:6:{s:4:\"type\";s:12:\"color_picker\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:7:\"#1c69d4\";}', 'Color', 'offers_discount_color', 'publish', 'closed', 'closed', '', 'field_5e3844f7a2e6b', '', '', '2020-02-02 21:32:01', '2020-02-03 02:32:01', '', 102, 'http://bmw-ecommerce.loc/?post_type=acf-field&#038;p=104', 1, 'acf-field', '', 0),
(105, 1, '2020-02-02 21:26:40', '2020-02-03 02:26:40', '', 'carro', '', 'inherit', 'open', 'closed', '', 'carro', '', '', '2020-02-02 21:26:40', '2020-02-03 02:26:40', '', 6, 'http://bmw-ecommerce.loc/wp-content/uploads/2020/02/carro.png', 0, 'attachment', 'image/png', 0),
(106, 1, '2020-02-02 21:53:06', '2020-02-03 02:53:06', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Productos Destacados', 'productos_destacados', 'publish', 'closed', 'closed', '', 'field_5e384ae11b223', '', '', '2020-02-02 21:53:06', '2020-02-03 02:53:06', '', 88, 'http://bmw-ecommerce.loc/?post_type=acf-field&p=106', 2, 'acf-field', '', 0),
(107, 1, '2020-02-02 21:53:06', '2020-02-03 02:53:06', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Titulo', 'pf_title', 'publish', 'closed', 'closed', '', 'field_5e384af71b224', '', '', '2020-02-02 21:55:25', '2020-02-03 02:55:25', '', 88, 'http://bmw-ecommerce.loc/?post_type=acf-field&#038;p=107', 3, 'acf-field', '', 0),
(108, 1, '2020-02-02 21:53:06', '2020-02-03 02:53:06', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Descripción', 'pf_description', 'publish', 'closed', 'closed', '', 'field_5e384b121b225', '', '', '2020-02-02 21:55:25', '2020-02-03 02:55:25', '', 88, 'http://bmw-ecommerce.loc/?post_type=acf-field&#038;p=108', 4, 'acf-field', '', 0),
(109, 1, '2020-02-02 21:55:25', '2020-02-03 02:55:25', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Prod más vendidos', 'prod_mas_vendidos', 'publish', 'closed', 'closed', '', 'field_5e384b72e5a91', '', '', '2020-03-28 16:41:44', '2020-03-28 21:41:44', '', 88, 'http://bmw-ecommerce.loc/?post_type=acf-field&#038;p=109', 7, 'acf-field', '', 0),
(110, 1, '2020-02-02 21:55:26', '2020-02-03 02:55:26', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Titulo', 'bs_title', 'publish', 'closed', 'closed', '', 'field_5e384b86e5a92', '', '', '2020-02-02 21:55:26', '2020-02-03 02:55:26', '', 88, 'http://bmw-ecommerce.loc/?post_type=acf-field&p=110', 8, 'acf-field', '', 0),
(111, 1, '2020-02-02 21:55:26', '2020-02-03 02:55:26', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Descripción', 'bs_description', 'publish', 'closed', 'closed', '', 'field_5e384b8de5a93', '', '', '2020-02-02 21:55:26', '2020-02-03 02:55:26', '', 88, 'http://bmw-ecommerce.loc/?post_type=acf-field&p=111', 9, 'acf-field', '', 0),
(112, 1, '2020-02-02 22:04:00', '2020-02-03 03:04:00', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:11:\"acf-options\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', '[CPT-Option]', 'cpt-option', 'publish', 'closed', 'closed', '', 'group_5e378ce24944f', '', '', '2020-02-05 15:48:41', '2020-02-05 20:48:41', '', 0, 'http://bmw-ecommerce.loc/?post_type=acf-field-group&#038;p=112', 0, 'acf-field-group', '', 0),
(113, 1, '2020-02-02 22:04:00', '2020-02-03 03:04:00', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Tiendas', 'tiendas', 'publish', 'closed', 'closed', '', 'field_5e384cfd21b65', '', '', '2020-02-02 22:04:00', '2020-02-03 03:04:00', '', 112, 'http://bmw-ecommerce.loc/?post_type=acf-field&p=113', 0, 'acf-field', '', 0),
(114, 1, '2020-02-02 22:04:01', '2020-02-03 03:04:01', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Listado', 'store_list_option', 'publish', 'closed', 'closed', '', 'field_5e384d4521b66', '', '', '2020-02-02 22:14:27', '2020-02-03 03:14:27', '', 112, 'http://bmw-ecommerce.loc/?post_type=acf-field&#038;p=114', 1, 'acf-field', '', 0),
(115, 1, '2020-02-02 22:04:01', '2020-02-03 03:04:01', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Nombre', 'store_list_option_name', 'publish', 'closed', 'closed', '', 'field_5e384d5121b67', '', '', '2020-02-02 22:04:01', '2020-02-03 03:04:01', '', 114, 'http://bmw-ecommerce.loc/?post_type=acf-field&p=115', 0, 'acf-field', '', 0),
(116, 1, '2020-02-02 22:04:01', '2020-02-03 03:04:01', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Dirección', 'store_list_option_address', 'publish', 'closed', 'closed', '', 'field_5e384d6a21b68', '', '', '2020-02-02 22:04:01', '2020-02-03 03:04:01', '', 114, 'http://bmw-ecommerce.loc/?post_type=acf-field&p=116', 1, 'acf-field', '', 0),
(117, 1, '2020-02-02 22:14:27', '2020-02-03 03:14:27', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Redes Sociales', 'redes_sociales', 'publish', 'closed', 'closed', '', 'field_5e384f45392c9', '', '', '2020-02-02 22:14:27', '2020-02-03 03:14:27', '', 112, 'http://bmw-ecommerce.loc/?post_type=acf-field&p=117', 2, 'acf-field', '', 0),
(118, 1, '2020-02-02 22:14:28', '2020-02-03 03:14:28', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Listado', 'social_networks', 'publish', 'closed', 'closed', '', 'field_5e384f50392ca', '', '', '2020-02-02 22:15:50', '2020-02-03 03:15:50', '', 112, 'http://bmw-ecommerce.loc/?post_type=acf-field&#038;p=118', 3, 'acf-field', '', 0),
(119, 1, '2020-02-02 22:14:28', '2020-02-03 03:14:28', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Imagen', 'social_networks_image', 'publish', 'closed', 'closed', '', 'field_5e384f6f392cb', '', '', '2020-02-02 22:16:40', '2020-02-03 03:16:40', '', 118, 'http://bmw-ecommerce.loc/?post_type=acf-field&#038;p=119', 1, 'acf-field', '', 0),
(120, 1, '2020-02-02 22:14:28', '2020-02-03 03:14:28', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'Link', 'social_networks_link', 'publish', 'closed', 'closed', '', 'field_5e384f8b392cc', '', '', '2020-02-02 22:20:22', '2020-02-03 03:20:22', '', 118, 'http://bmw-ecommerce.loc/?post_type=acf-field&#038;p=120', 2, 'acf-field', '', 0),
(121, 1, '2020-02-02 22:14:29', '2020-02-03 03:14:29', 'a:10:{s:4:\"type\";s:10:\"true_false\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"message\";s:0:\"\";s:13:\"default_value\";i:1;s:2:\"ui\";i:0;s:10:\"ui_on_text\";s:0:\"\";s:11:\"ui_off_text\";s:0:\"\";}', 'Estado', 'social_networks_status', 'publish', 'closed', 'closed', '', 'field_5e384f9c392cd', '', '', '2020-02-02 22:16:40', '2020-02-03 03:16:40', '', 118, 'http://bmw-ecommerce.loc/?post_type=acf-field&#038;p=121', 3, 'acf-field', '', 0),
(122, 1, '2020-02-02 22:16:40', '2020-02-03 03:16:40', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Nombre', 'social_networks_name', 'publish', 'closed', 'closed', '', 'field_5e3850400c868', '', '', '2020-02-02 22:16:40', '2020-02-03 03:16:40', '', 118, 'http://bmw-ecommerce.loc/?post_type=acf-field&p=122', 0, 'acf-field', '', 0),
(123, 1, '2020-02-02 22:26:06', '2020-02-03 03:26:06', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Contáctanos', 'libro_de_reclamaciones', 'publish', 'closed', 'closed', '', 'field_5e385189211fd', '', '', '2020-02-02 22:26:06', '2020-02-03 03:26:06', '', 112, 'http://bmw-ecommerce.loc/?post_type=acf-field&p=123', 4, 'acf-field', '', 0),
(124, 1, '2020-02-02 22:26:06', '2020-02-03 03:26:06', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Teléfono', 'contact_option_phone', 'publish', 'closed', 'closed', '', 'field_5e3851e0211fe', '', '', '2020-02-02 22:26:06', '2020-02-03 03:26:06', '', 112, 'http://bmw-ecommerce.loc/?post_type=acf-field&p=124', 5, 'acf-field', '', 0),
(125, 1, '2020-02-02 22:26:06', '2020-02-03 03:26:06', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Correo', 'contact_option_email', 'publish', 'closed', 'closed', '', 'field_5e385235211ff', '', '', '2020-02-02 22:26:06', '2020-02-03 03:26:06', '', 112, 'http://bmw-ecommerce.loc/?post_type=acf-field&p=125', 6, 'acf-field', '', 0),
(126, 1, '2020-02-02 22:26:07', '2020-02-03 03:26:07', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Horario', 'contact_option_hours', 'publish', 'closed', 'closed', '', 'field_5e38524121200', '', '', '2020-02-02 22:26:07', '2020-02-03 03:26:07', '', 112, 'http://bmw-ecommerce.loc/?post_type=acf-field&p=126', 7, 'acf-field', '', 0),
(127, 1, '2020-02-03 02:52:38', '2020-02-03 07:52:38', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Billetera motor', 'Chaqueta en diseño con colour blocking con logotipo vistoso estampado sobre el brazo y bandas BMW M en el cuello.\r\n\r\nDescripción del producto: - Parte delantera blanca con costuras de hombros compactadas y logotipo BMW M Motorsport estampado en la parte izquierda.', 'publish', 'open', 'closed', '', 'billetera-m', '', '', '2020-03-25 16:24:23', '2020-03-25 21:24:23', '', 0, 'http://bmw-ecommerce.loc/?post_type=product&#038;p=127', 0, 'product', '', 0),
(129, 1, '2020-02-05 12:45:57', '2020-02-05 17:45:57', '', 'Order &ndash; febrero 5, 2020 @ 12:45 PM', '', 'wc-cancelled', 'open', 'closed', 'wc_order_bdq8HAMCIPUOP', 'pedido-feb-05-2020-0545-pm', '', '', '2020-02-05 14:42:56', '2020-02-05 19:42:56', '', 0, 'http://bmw-ecommerce.loc/?post_type=shop_order&#038;p=129', 0, 'shop_order', '', 1),
(130, 1, '2020-02-05 12:50:02', '2020-02-05 17:50:02', '', 'Order &ndash; febrero 5, 2020 @ 12:50 PM', '', 'wc-cancelled', 'open', 'closed', 'wc_order_xI1SywzwiFEms', 'pedido-feb-05-2020-0550-pm', '', '', '2020-02-05 14:42:57', '2020-02-05 19:42:57', '', 0, 'http://bmw-ecommerce.loc/?post_type=shop_order&#038;p=130', 0, 'shop_order', '', 1),
(131, 1, '2020-02-05 14:53:08', '2020-02-05 19:53:08', '', 'Order &ndash; febrero 5, 2020 @ 02:53 PM', '', 'wc-cancelled', 'open', 'closed', 'wc_order_1dZtcAcbHr9RE', 'pedido-feb-05-2020-0753-pm', '', '', '2020-02-05 16:43:49', '2020-02-05 21:43:49', '', 0, 'http://bmw-ecommerce.loc/?post_type=shop_order&#038;p=131', 0, 'shop_order', '', 1),
(132, 1, '2020-02-05 15:48:12', '2020-02-05 20:48:12', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Horario', 'store_list_option_schedule', 'publish', 'closed', 'closed', '', 'field_5e3b29ecccdc2', '', '', '2020-02-05 15:48:41', '2020-02-05 20:48:41', '', 114, 'http://bmw-ecommerce.loc/?post_type=acf-field&#038;p=132', 2, 'acf-field', '', 0),
(133, 1, '2020-02-05 16:02:15', '2020-02-05 21:02:15', '', 'Order &ndash; febrero 5, 2020 @ 04:02 PM', '', 'wc-cancelled', 'open', 'closed', 'wc_order_m39U1JPwKQkvD', 'pedido-feb-05-2020-0902-pm', '', '', '2020-02-05 17:59:25', '2020-02-05 22:59:25', '', 0, 'http://bmw-ecommerce.loc/?post_type=shop_order&#038;p=133', 0, 'shop_order', '', 1),
(134, 1, '2020-02-05 16:44:25', '2020-02-05 21:44:25', '', 'Order &ndash; febrero 5, 2020 @ 04:44 PM', '', 'wc-cancelled', 'closed', 'closed', 'wc_order_viZ4a7V6Opj2P', 'pedido-feb-05-2020-0944-pm', '', '', '2020-02-05 18:50:47', '2020-02-05 23:50:47', '', 0, 'http://bmw-ecommerce.loc/?post_type=shop_order&#038;p=134', 0, 'shop_order', '', 4),
(135, 1, '2020-02-05 19:16:53', '2020-02-06 00:16:53', '', 'Gracias Checkout', '', 'publish', 'closed', 'closed', '', 'gracias-checkout', '', '', '2020-02-05 19:17:01', '2020-02-06 00:17:01', '', 0, 'http://bmw-ecommerce.loc/?page_id=135', 0, 'page', '', 0),
(136, 1, '2020-02-06 10:52:45', '2020-02-06 15:52:45', '', 'Order &ndash; febrero 6, 2020 @ 10:52 AM', '', 'wc-cancelled', 'closed', 'closed', 'wc_order_IIVUNZBrnJ59W', 'pedido-feb-06-2020-0352-pm', '', '', '2020-02-06 12:49:45', '2020-02-06 17:49:45', '', 0, 'http://bmw-ecommerce.loc/?post_type=shop_order&#038;p=136', 0, 'shop_order', '', 3),
(137, 1, '2020-02-06 11:53:45', '2020-02-06 16:53:45', '', 'Order &ndash; febrero 6, 2020 @ 11:53 AM', '', 'wc-cancelled', 'open', 'closed', 'wc_order_yBciwZ8zh3CvD', 'pedido-feb-06-2020-0453-pm', '', '', '2020-02-06 13:50:29', '2020-02-06 18:50:29', '', 0, 'http://bmw-ecommerce.loc/?post_type=shop_order&#038;p=137', 0, 'shop_order', '', 1),
(138, 1, '2020-02-07 10:53:17', '2020-02-07 15:53:17', '', 'Atencion al cliente', '', 'publish', 'closed', 'closed', '', 'atencion-al-cliente', '', '', '2020-02-07 10:57:59', '2020-02-07 15:57:59', '', 63, 'http://bmw-ecommerce.loc/?page_id=138', 0, 'page', '', 0),
(140, 1, '2020-02-10 12:12:26', '2020-02-10 17:12:26', '', 'Buscar', '', 'publish', 'closed', 'closed', '', 'buscar', '', '', '2020-02-10 12:12:26', '2020-02-10 17:12:26', '', 0, 'http://bmw-ecommerce.loc/?page_id=140', 0, 'page', '', 0),
(141, 1, '2020-02-10 16:46:13', '2020-02-10 21:46:13', '', 'Order &ndash; febrero 10, 2020 @ 04:46 PM', '', 'wc-cancelled', 'open', 'closed', 'wc_order_t9ZfzBM6iuTO5', 'pedido-feb-10-2020-0946-pm', '', '', '2020-02-10 17:48:16', '2020-02-10 22:48:16', '', 0, 'http://bmw-ecommerce.loc/?post_type=shop_order&#038;p=141', 0, 'shop_order', '', 1),
(145, 1, '2020-02-24 12:29:14', '2020-02-24 17:29:14', '', 'SUBARU2020', '', 'publish', 'closed', 'closed', '', 'subaru2020', '', '', '2020-02-24 12:29:14', '2020-02-24 17:29:14', '', 0, 'https://bmw-ecommerce.seekdev.com/?post_type=shop_coupon&#038;p=145', 0, 'shop_coupon', '', 0),
(148, 1, '2020-03-28 16:31:59', '2020-03-28 21:31:59', '', 'E-Commerce Website Development company In India,', 'E-Commerce Website Development company In India,', 'inherit', 'open', 'closed', '', 'e-commerce-website-development-company-in-india', '', '', '2020-03-28 16:31:59', '2020-03-28 21:31:59', '', 6, 'http://dev.garash.com/wp-content/uploads/2020/03/VQWxKr.jpg', 0, 'attachment', 'image/jpeg', 0),
(149, 1, '2020-03-28 16:32:01', '2020-03-28 21:32:01', '', 'Businessman holding a phone with a shopping icon. Online shopping', 'Businessman holding a phone with a shopping icon. Online shopping', 'inherit', 'open', 'closed', '', 'businessman-holding-a-phone-with-a-shopping-icon-online-shopping', '', '', '2020-03-28 16:32:01', '2020-03-28 21:32:01', '', 6, 'http://dev.garash.com/wp-content/uploads/2020/03/istockphoto-961335672-612x612-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(150, 1, '2020-03-28 16:32:03', '2020-03-28 21:32:03', '', 'ecommerce-03', '', 'inherit', 'open', 'closed', '', 'ecommerce-03', '', '', '2020-03-28 16:32:03', '2020-03-28 21:32:03', '', 6, 'http://dev.garash.com/wp-content/uploads/2020/03/ecommerce-03.jpg', 0, 'attachment', 'image/jpeg', 0),
(151, 1, '2020-03-28 16:36:27', '2020-03-28 21:36:27', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'marcas', 'marcas', 'publish', 'closed', 'closed', '', 'field_5e7fc344a5937', '', '', '2020-03-28 16:39:08', '2020-03-28 21:39:08', '', 88, 'http://dev.garash.com/?post_type=acf-field&#038;p=151', 11, 'acf-field', '', 0),
(152, 1, '2020-03-28 16:36:27', '2020-03-28 21:36:27', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'marca', 'marca', 'publish', 'closed', 'closed', '', 'field_5e7fc352a5938', '', '', '2020-03-28 16:36:27', '2020-03-28 21:36:27', '', 151, 'http://dev.garash.com/?post_type=acf-field&p=152', 0, 'acf-field', '', 0),
(153, 1, '2020-03-28 16:39:08', '2020-03-28 21:39:08', 'a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}', 'Marcas', 'marcas', 'publish', 'closed', 'closed', '', 'field_5e7fc3ea9222c', '', '', '2020-03-28 16:39:08', '2020-03-28 21:39:08', '', 88, 'http://dev.garash.com/?post_type=acf-field&p=153', 10, 'acf-field', '', 0),
(154, 1, '2020-03-28 16:42:27', '2020-03-28 21:42:27', '', 'sponsor_aje-150x120', '', 'inherit', 'open', 'closed', '', 'sponsor_aje-150x120', '', '', '2020-03-28 16:42:27', '2020-03-28 21:42:27', '', 6, 'http://dev.garash.com/wp-content/uploads/2020/03/sponsor_aje-150x120-1.png', 0, 'attachment', 'image/png', 0),
(155, 1, '2020-03-28 16:42:28', '2020-03-28 21:42:28', '', 'sponsor_el_comercio-1-150x120', '', 'inherit', 'open', 'closed', '', 'sponsor_el_comercio-1-150x120', '', '', '2020-03-28 16:42:28', '2020-03-28 21:42:28', '', 6, 'http://dev.garash.com/wp-content/uploads/2020/03/sponsor_el_comercio-1-150x120-1.png', 0, 'attachment', 'image/png', 0),
(156, 1, '2020-03-28 16:42:29', '2020-03-28 21:42:29', '', 'sponsor_gloria-150x120', '', 'inherit', 'open', 'closed', '', 'sponsor_gloria-150x120', '', '', '2020-03-28 16:42:29', '2020-03-28 21:42:29', '', 6, 'http://dev.garash.com/wp-content/uploads/2020/03/sponsor_gloria-150x120-1.png', 0, 'attachment', 'image/png', 0),
(157, 1, '2020-03-28 16:42:29', '2020-03-28 21:42:29', '', 'sponsor_wework-150x120', '', 'inherit', 'open', 'closed', '', 'sponsor_wework-150x120', '', '', '2020-03-28 16:42:29', '2020-03-28 21:42:29', '', 6, 'http://dev.garash.com/wp-content/uploads/2020/03/sponsor_wework-150x120-1.png', 0, 'attachment', 'image/png', 0),
(158, 1, '2020-03-28 19:06:04', '2020-03-29 00:06:04', '', 'Order &ndash; marzo 28, 2020 @ 07:06 PM', '', 'wc-on-hold', 'open', 'closed', 'wc_order_QPviXcfSQoc9U', 'pedido-mar-29-2020-1206-am', '', '', '2020-03-28 19:06:04', '2020-03-29 00:06:04', '', 0, 'http://dev.garash.com/?post_type=shop_order&#038;p=158', 0, 'shop_order', '', 1),
(159, 1, '2020-03-28 19:06:39', '2020-03-29 00:06:39', '', 'Order &ndash; marzo 28, 2020 @ 07:06 PM', '', 'wc-on-hold', 'open', 'closed', 'wc_order_hh0w1qvjSrW2w', 'pedido-mar-29-2020-1206-am-2', '', '', '2020-03-28 19:06:40', '2020-03-29 00:06:40', '', 0, 'http://dev.garash.com/?post_type=shop_order&#038;p=159', 0, 'shop_order', '', 1),
(160, 1, '2020-03-31 21:41:47', '2020-04-01 02:41:47', '<div class=\"subtitle\">\r\n    Para asegurar la calidad del servicio por favor llenar todos los campos que se muestran a continuación, nuestro equipo estará con ustedes a la brevedad\r\n</div>\r\n<div class=\"row\">\r\n    <div class=\"control customSelect \">\r\n        <label class=\"label\">Motivo</label>\r\n        [select* motivo \"Solicitud\" \"Mensaje\" \"Etc\"]\r\n    </div>\r\n    <div class=\"control customSelect \">\r\n        <label class=\"label\">Medio de servicio</label>\r\n        [select* servicio \"Servicio 1\" \"Servicio 2\" \"Etc\"]\r\n    </div>\r\n</div>\r\n\r\n<div class=\"row\">\r\n    <div class=\"control\">\r\n        <label class=\"label\">Nombres</label>\r\n        [text* firstname id:firstname]\r\n    </div>\r\n    <div class=\"control\">\r\n        <label class=\"label\">Apellidos</label>\r\n        [text* lastname id:lastname]\r\n    </div>\r\n</div>\r\n\r\n<div class=\"row\">\r\n    <div class=\"control\">\r\n        <label class=\"label\">Teléfono</label>\r\n        [tel* phone id:phone]\r\n    </div>\r\n    <div class=\"control\">\r\n        <label class=\"label\">Email</label>\r\n        [email* email id:email]\r\n    </div>\r\n</div>\r\n\r\n<div class=\"row\">\r\n    <div class=\"control\">\r\n        <label class=\"label\">Cliente nuevo:</label>\r\n        [radio clientenuevo label_first use_label_element default:1 \"Si\" \"No\"]\r\n    </div>\r\n    <div class=\"control\">\r\n        <div class=\"emisep\">Seleccionar</div>\r\n        <div class=\"lonely\">Seleccionar archivo (Motivo / Servicio) o Batería para ubicar el modelo:</div>\r\n        <div style=\"display: none;\" class=\"recep\">\r\n            [file archivo filetypes:pdf id:archivo]\r\n        </div>\r\n    </div>\r\n</div>\r\n\r\n<div class=\"row\">\r\n    <div class=\"control full\">\r\n        <label class=\"label\">Comentario:</label>\r\n        [textarea message id:message]\r\n    </div>\r\n</div>\r\n\r\n<div class=\"row call-action\">\r\n    <button type=\"submit\" class=\"button button-primary\">\r\n        <span>ENVIAR</span>\r\n    </button>\r\n</div>\n1\nGarash Store \"[your-subject]\"\nGarash Store <wordpress@dev.garash.com>\nhtrigoso@seek.pe\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Garash Store (http://dev.garash.com)\nReply-To: [your-email]\n\n\n\n\nGarash Store \"[your-subject]\"\nGarash Store <wordpress@dev.garash.com>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on Garash Store (http://dev.garash.com)\nReply-To: htrigoso@seek.pe\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nYour entered code is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Contacto', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2020-03-31 21:58:32', '2020-04-01 02:58:32', '', 0, 'http://dev.garash.com/?post_type=wpcf7_contact_form&#038;p=160', 0, 'wpcf7_contact_form', '', 0),
(161, 1, '2020-03-31 22:12:52', '2020-04-01 03:12:52', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:30:\"templates/template-contact.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'contacto', 'contacto', 'publish', 'closed', 'closed', '', 'group_5e840678dffdb', '', '', '2020-03-31 22:12:52', '2020-04-01 03:12:52', '', 0, 'http://dev.garash.com/?post_type=acf-field-group&#038;p=161', 0, 'acf-field-group', '', 0),
(162, 1, '2020-03-31 22:12:52', '2020-04-01 03:12:52', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'contact_data', 'contact_data', 'publish', 'closed', 'closed', '', 'field_5e840683309c0', '', '', '2020-03-31 22:12:52', '2020-04-01 03:12:52', '', 161, 'http://dev.garash.com/?post_type=acf-field&p=162', 0, 'acf-field', '', 0),
(163, 1, '2020-03-31 22:12:52', '2020-04-01 03:12:52', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'title', 'title', 'publish', 'closed', 'closed', '', 'field_5e8406a2309c1', '', '', '2020-03-31 22:12:52', '2020-04-01 03:12:52', '', 162, 'http://dev.garash.com/?post_type=acf-field&p=163', 0, 'acf-field', '', 0),
(164, 1, '2020-03-31 22:12:52', '2020-04-01 03:12:52', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'desc', 'desc', 'publish', 'closed', 'closed', '', 'field_5e8406a7309c2', '', '', '2020-03-31 22:12:52', '2020-04-01 03:12:52', '', 162, 'http://dev.garash.com/?post_type=acf-field&p=164', 1, 'acf-field', '', 0),
(165, 1, '2020-04-01 01:11:42', '2020-04-01 06:11:42', '', 'Contacto', '', 'publish', 'closed', 'closed', '', 'contacto', '', '', '2020-04-01 01:11:42', '2020-04-01 06:11:42', '', 0, 'http://dev.garash.com/?page_id=165', 0, 'page', '', 0),
(166, 1, '2020-04-01 11:16:25', '2020-04-01 16:16:25', '', 'Order &ndash; abril 1, 2020 @ 11:16 AM', '', 'wc-on-hold', 'open', 'closed', 'wc_order_B5Q1wRQEZMYh7', 'pedido-apr-01-2020-0416-pm', '', '', '2020-04-01 11:16:26', '2020-04-01 16:16:26', '', 0, 'http://dev.garash.com/?post_type=shop_order&#038;p=166', 0, 'shop_order', '', 1),
(167, 1, '2020-04-05 15:36:02', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-04-05 15:36:02', '0000-00-00 00:00:00', '', 0, 'http://dev.garash.com/?p=167', 0, 'post', '', 0),
(168, 1, '2020-04-05 15:38:42', '2020-04-05 20:38:42', '', 'fe24e649db9d259f2b59edef6bcea577', '', 'inherit', 'open', 'closed', '', 'fe24e649db9d259f2b59edef6bcea577', '', '', '2020-04-05 15:38:42', '2020-04-05 20:38:42', '', 6, 'http://dev.garash.com/wp-content/uploads/2020/04/fe24e649db9d259f2b59edef6bcea577.jpg', 0, 'attachment', 'image/jpeg', 0),
(169, 1, '2020-04-05 15:38:45', '2020-04-05 20:38:45', '', 'talleres_reparatucoche', '', 'inherit', 'open', 'closed', '', 'talleres_reparatucoche', '', '', '2020-04-05 15:38:45', '2020-04-05 20:38:45', '', 6, 'http://dev.garash.com/wp-content/uploads/2020/04/talleres_reparatucoche.jpg', 0, 'attachment', 'image/jpeg', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 16, 'order', '0'),
(2, 16, 'display_type', ''),
(3, 16, 'thumbnail_id', '0'),
(4, 17, 'order', '0'),
(5, 17, 'display_type', ''),
(6, 17, 'thumbnail_id', '0'),
(7, 15, 'display_type', ''),
(8, 15, 'thumbnail_id', '0'),
(15, 20, 'order', '0'),
(16, 20, 'display_type', ''),
(17, 20, 'thumbnail_id', '8'),
(18, 21, 'order', '0'),
(19, 21, 'display_type', ''),
(20, 21, 'thumbnail_id', '9'),
(21, 22, 'order', '0'),
(22, 22, 'display_type', ''),
(23, 22, 'thumbnail_id', '10'),
(24, 23, 'order', '0'),
(25, 23, 'display_type', ''),
(26, 23, 'thumbnail_id', '11'),
(27, 16, 'product_count_product_cat', '9'),
(28, 22, 'product_count_product_cat', '1'),
(29, 23, 'product_count_product_cat', '1'),
(30, 21, 'product_count_product_cat', '7'),
(31, 25, 'product_count_product_tag', '4'),
(32, 26, 'order', '0'),
(33, 26, 'display_type', ''),
(34, 26, 'thumbnail_id', '9'),
(35, 27, 'order', '0'),
(36, 27, 'display_type', ''),
(37, 27, 'thumbnail_id', '9'),
(38, 28, 'order', '0'),
(39, 28, 'display_type', ''),
(40, 28, 'thumbnail_id', '9'),
(41, 29, 'order', '0'),
(42, 29, 'display_type', ''),
(43, 29, 'thumbnail_id', '10'),
(44, 30, 'order_pa_color', '0'),
(45, 30, 'product_attribute_color', '#dd3333'),
(46, 31, 'order_pa_size', '0'),
(47, 32, 'order_pa_size', '0'),
(48, 33, 'order_pa_color', '0'),
(49, 33, 'product_attribute_color', '#81d742'),
(50, 34, 'order_pa_color', '0'),
(51, 34, 'product_attribute_color', '#1e73be'),
(52, 17, 'product_count_product_cat', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0,
  `term_order` int(4) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`, `term_order`) VALUES
(1, 'Sin categoría', 'sin-categoria', 0, 0),
(2, 'simple', 'simple', 0, 0),
(3, 'grouped', 'grouped', 0, 0),
(4, 'variable', 'variable', 0, 0),
(5, 'external', 'external', 0, 0),
(6, 'exclude-from-search', 'exclude-from-search', 0, 0),
(7, 'exclude-from-catalog', 'exclude-from-catalog', 0, 0),
(8, 'featured', 'featured', 0, 0),
(9, 'outofstock', 'outofstock', 0, 0),
(10, 'rated-1', 'rated-1', 0, 0),
(11, 'rated-2', 'rated-2', 0, 0),
(12, 'rated-3', 'rated-3', 0, 0),
(13, 'rated-4', 'rated-4', 0, 0),
(14, 'rated-5', 'rated-5', 0, 0),
(15, 'Comercio', 'comercio', 0, 12),
(16, 'Talleres mecánicos', 'talleres', 0, 1),
(17, 'Industrial', 'industrial', 0, 6),
(20, 'Ropa', 'ropa', 0, 11),
(21, 'Accesorios', 'accesorios', 0, 8),
(22, 'Equipaje', 'equipaje', 0, 10),
(23, 'Deporte', 'deporte', 0, 9),
(24, 'Menu Principal', 'menu-principal', 0, 0),
(25, 'Destacados', 'destacados', 0, 0),
(26, 'Acccesorios', 'acccesorios', 0, 13),
(27, 'Accesorios', 'accesorios-bmw-sale', 0, 5),
(28, 'Accesorios', 'accesorios-hombre', 0, 7),
(29, 'Otros', 'otros', 0, 3),
(30, 'Red', 'red', 0, 0),
(31, 'L', 'l', 0, 0),
(32, 'M', 'm', 0, 0),
(33, 'Green', 'green', 0, 0),
(34, 'Blue', 'blue', 0, 0),
(35, 'isdisabled', 'isdisabled', 0, 0),
(36, 'woocommerce-db-updates', 'woocommerce-db-updates', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(12, 4, 0),
(12, 8, 0),
(12, 9, 0),
(12, 16, 0),
(12, 22, 0),
(12, 25, 0),
(12, 34, 0),
(17, 2, 0),
(17, 8, 0),
(17, 16, 0),
(17, 23, 0),
(17, 25, 0),
(18, 4, 0),
(18, 8, 0),
(18, 16, 0),
(18, 21, 0),
(18, 25, 0),
(18, 30, 0),
(18, 31, 0),
(18, 32, 0),
(18, 33, 0),
(18, 34, 0),
(19, 4, 0),
(19, 8, 0),
(19, 16, 0),
(19, 21, 0),
(19, 25, 0),
(19, 30, 0),
(20, 24, 0),
(22, 24, 0),
(23, 24, 0),
(24, 24, 0),
(25, 24, 0),
(26, 24, 0),
(27, 24, 0),
(28, 24, 0),
(41, 2, 0),
(41, 8, 0),
(41, 16, 0),
(41, 21, 0),
(43, 2, 0),
(43, 8, 0),
(43, 16, 0),
(43, 21, 0),
(45, 2, 0),
(45, 16, 0),
(45, 21, 0),
(47, 2, 0),
(47, 16, 0),
(47, 21, 0),
(127, 2, 0),
(127, 16, 0),
(127, 17, 0),
(127, 21, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_term_taxonomy`
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
-- Volcado de datos para la tabla `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'product_type', '', 0, 6),
(3, 3, 'product_type', '', 0, 0),
(4, 4, 'product_type', '', 0, 3),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'product_visibility', '', 0, 0),
(7, 7, 'product_visibility', '', 0, 0),
(8, 8, 'product_visibility', '', 0, 6),
(9, 9, 'product_visibility', '', 0, 1),
(10, 10, 'product_visibility', '', 0, 0),
(11, 11, 'product_visibility', '', 0, 0),
(12, 12, 'product_visibility', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 0),
(14, 14, 'product_visibility', '', 0, 0),
(15, 15, 'product_cat', '', 0, 0),
(16, 16, 'product_cat', '', 0, 9),
(17, 17, 'product_cat', '', 0, 1),
(20, 20, 'product_cat', '', 16, 0),
(21, 21, 'product_cat', '', 16, 7),
(22, 22, 'product_cat', '', 16, 1),
(23, 23, 'product_cat', '', 16, 1),
(24, 24, 'nav_menu', '', 0, 8),
(25, 25, 'product_tag', '', 0, 4),
(26, 26, 'product_cat', '', 15, 0),
(27, 27, 'product_cat', '', 0, 0),
(28, 28, 'product_cat', '', 17, 0),
(29, 29, 'product_cat', '', 0, 0),
(30, 30, 'pa_color', '', 0, 2),
(31, 31, 'pa_size', '', 0, 1),
(32, 32, 'pa_size', '', 0, 1),
(33, 33, 'pa_color', '', 0, 1),
(34, 34, 'pa_color', '', 0, 2),
(35, 35, 'berocket_taxonomy_data', '', 0, 0),
(36, 36, 'action-group', '', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', 'Frank'),
(3, 1, 'last_name', 'De La Rosa Campos'),
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
(15, 1, 'show_welcome_panel', '0'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '167'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, '_woocommerce_tracks_anon_id', 'woo:Stvmg6UDExF3ubrRNSgvV+qz'),
(20, 1, 'wc_last_active', '1586044800'),
(21, 1, 'dismissed_no_secure_connection_notice', '1'),
(22, 1, 'dismissed_wc_admin_notice', '1'),
(23, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce'),
(24, 1, 'wp_user-settings-time', '1585167653'),
(25, 1, 'dismissed_install_notice', '1'),
(26, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(27, 1, 'metaboxhidden_nav-menus', 'a:3:{i:0;s:21:\"add-post-type-product\";i:1;s:12:\"add-post_tag\";i:2;s:15:\"add-product_tag\";}'),
(28, 1, 'nav_menu_recently_edited', '24'),
(29, 1, 'closedpostboxes_nav-menus', 'a:0:{}'),
(31, 1, 'closedpostboxes_product', 'a:1:{i:0;s:11:\"postexcerpt\";}'),
(32, 1, 'metaboxhidden_product', 'a:2:{i:0;s:10:\"postcustom\";i:1;s:7:\"slugdiv\";}'),
(79, 1, 'last_update', '1585757785'),
(80, 1, 'billing_first_name', 'Fran'),
(81, 1, 'billing_last_name', 'De la Rosa'),
(82, 1, 'billing_address_1', 'AV LAS LOMAS'),
(83, 1, 'billing_city', 'LIMA'),
(84, 1, 'billing_state', 'LIM'),
(85, 1, 'billing_postcode', 'LIMA01'),
(86, 1, 'billing_country', 'PE'),
(87, 1, 'billing_email', 'htrigoso@seek.pe'),
(88, 1, 'billing_phone', '918172291'),
(89, 1, 'shipping_first_name', 'Fran'),
(90, 1, 'shipping_last_name', 'De la Rosa'),
(91, 1, 'shipping_address_1', 'AV LAS LOMAS'),
(92, 1, 'shipping_city', 'LIMA'),
(93, 1, 'shipping_state', 'LIM'),
(94, 1, 'shipping_postcode', 'LIMA01'),
(95, 1, 'shipping_country', 'PE'),
(96, 1, 'shipping_method', 'a:1:{i:0;s:11:\"flat_rate:7\";}'),
(97, 1, 'shipping_razon_social', 'SEEK'),
(98, 1, 'shipping_ruc', '20526541235'),
(99, 1, 'shipping_fiscal', 'AV LOMAS 3432 MIRAFLORES'),
(104, 1, 'dismissed_template_files_notice', '1'),
(110, 1, 'closedpostboxes_toplevel_page_acf-options', 'a:1:{i:0;s:23:\"acf-group_5e378ce24944f\";}'),
(111, 1, 'metaboxhidden_toplevel_page_acf-options', 'a:0:{}'),
(112, 1, 'edit_product_per_page', '50'),
(116, 1, 'billing_razon_social', '-'),
(117, 1, 'billing_ruc', '-'),
(118, 1, 'billing_fiscal', '-'),
(131, 1, 'session_tokens', 'a:1:{s:64:\"442b8b907b1ebdc354835dd2a05fd89760d70d80e7db5d7f2a4e580948afa5d6\";a:4:{s:10:\"expiration\";i:1586291755;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.149 Safari/537.36\";s:5:\"login\";i:1586118955;}}'),
(164, 1, 'dismissed_update_notice', '1'),
(165, 1, 'dismissed_maxmind_license_key_notice', '1'),
(167, 1, 'closedpostboxes_dashboard', 'a:0:{}'),
(168, 1, 'metaboxhidden_dashboard', 'a:7:{i:0;s:19:\"dashboard_right_now\";i:1;s:18:\"dashboard_activity\";i:2;s:28:\"yith_dashboard_products_news\";i:3;s:24:\"yith_dashboard_blog_news\";i:4;s:34:\"user_registration_dashboard_status\";i:5;s:36:\"woocommerce_dashboard_recent_reviews\";i:6;s:17:\"dashboard_primary\";}'),
(197, 1, '_new_email', 'a:2:{s:4:\"hash\";s:32:\"c2eb464320f20d0c7b32133dda7a8ab7\";s:8:\"newemail\";s:29:\"frankdelarosacampos@gmail.com\";}'),
(198, 1, 'billing_company', ''),
(199, 1, 'billing_address_2', ''),
(200, 1, 'shipping_company', ''),
(201, 1, 'shipping_address_2', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_users`
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
-- Volcado de datos para la tabla `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BInwX.TR2UZs2lDgEAgSRDiByMWbgJ/', 'admin', 'htrigoso@seek.pe', '', '2020-01-07 15:29:40', '', 0, 'admin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_user_registration_sessions`
--

CREATE TABLE `wp_user_registration_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_wc_download_log`
--

CREATE TABLE `wp_wc_download_log` (
  `download_log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_wc_product_meta_lookup`
--

CREATE TABLE `wp_wc_product_meta_lookup` (
  `product_id` bigint(20) NOT NULL,
  `sku` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `virtual` tinyint(1) DEFAULT 0,
  `downloadable` tinyint(1) DEFAULT 0,
  `min_price` decimal(10,2) DEFAULT NULL,
  `max_price` decimal(10,2) DEFAULT NULL,
  `onsale` tinyint(1) DEFAULT 0,
  `stock_quantity` double DEFAULT NULL,
  `stock_status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT 'instock',
  `rating_count` bigint(20) DEFAULT 0,
  `average_rating` decimal(3,2) DEFAULT 0.00,
  `total_sales` bigint(20) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_wc_product_meta_lookup`
--

INSERT INTO `wp_wc_product_meta_lookup` (`product_id`, `sku`, `virtual`, `downloadable`, `min_price`, `max_price`, `onsale`, `stock_quantity`, `stock_status`, `rating_count`, `average_rating`, `total_sales`) VALUES
(12, '', 0, 0, '320.00', '320.00', 1, NULL, 'outofstock', 0, '0.00', 0),
(17, '', 0, 0, '300.00', '300.00', 1, NULL, 'instock', 0, '0.00', 24),
(18, '666', 0, 0, '90.00', '350.00', 0, 1000, 'instock', 0, '0.00', 0),
(19, '', 0, 0, '40.00', '40.00', 0, NULL, 'instock', 0, '0.00', 5),
(33, '', 0, 0, '40.00', '40.00', 0, NULL, 'instock', 0, '0.00', 0),
(41, '', 0, 0, '500.00', '500.00', 0, NULL, 'instock', 0, '0.00', 0),
(43, '', 0, 0, '150.00', '150.00', 0, NULL, 'instock', 0, '0.00', 1),
(45, '', 0, 0, '89.00', '89.00', 0, NULL, 'instock', 0, '0.00', 0),
(47, '', 0, 0, '90.00', '90.00', 0, NULL, 'instock', 0, '0.00', 1),
(54, '', 0, 0, '350.00', '350.00', 0, 100, 'instock', 0, '0.00', 0),
(56, '', 0, 0, '300.00', '300.00', 1, 200, 'instock', 0, '0.00', 0),
(57, '', 0, 0, '90.00', '90.00', 1, 200, 'instock', 0, '0.00', 0),
(61, '', 0, 0, '0.00', '0.00', 0, NULL, 'outofstock', 0, '0.00', 0),
(127, '', 0, 0, '90.00', '90.00', 0, NULL, 'instock', 0, '0.00', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_wc_tax_rate_classes`
--

CREATE TABLE `wp_wc_tax_rate_classes` (
  `tax_rate_class_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_wc_tax_rate_classes`
--

INSERT INTO `wp_wc_tax_rate_classes` (`tax_rate_class_id`, `name`, `slug`) VALUES
(1, 'Reduced rate', 'reduced-rate'),
(2, 'Zero rate', 'zero-rate'),
(3, 'Tasa reducida', 'tasa-reducida'),
(4, 'Tasa cero', 'tasa-cero');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_wc_webhooks`
--

CREATE TABLE `wp_wc_webhooks` (
  `webhook_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `topic` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT 0,
  `pending_delivery` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_woocommerce_api_keys`
--

CREATE TABLE `wp_woocommerce_api_keys` (
  `key_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_woocommerce_attribute_taxonomies`
--

CREATE TABLE `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_woocommerce_attribute_taxonomies`
--

INSERT INTO `wp_woocommerce_attribute_taxonomies` (`attribute_id`, `attribute_name`, `attribute_label`, `attribute_type`, `attribute_orderby`, `attribute_public`) VALUES
(1, 'color', 'Color', 'color', 'menu_order', 0),
(2, 'size', 'Size', 'select', 'menu_order', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_woocommerce_downloadable_product_permissions`
--

CREATE TABLE `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `download_id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `order_key` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_woocommerce_log`
--

CREATE TABLE `wp_woocommerce_log` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_woocommerce_order_itemmeta`
--

CREATE TABLE `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_woocommerce_order_itemmeta`
--

INSERT INTO `wp_woocommerce_order_itemmeta` (`meta_id`, `order_item_id`, `meta_key`, `meta_value`) VALUES
(1, 1, '_product_id', '17'),
(2, 1, '_variation_id', '0'),
(3, 1, '_qty', '16'),
(4, 1, '_tax_class', ''),
(5, 1, '_line_subtotal', '4800'),
(6, 1, '_line_subtotal_tax', '0'),
(7, 1, '_line_total', '4800'),
(8, 1, '_line_tax', '0'),
(9, 1, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(10, 2, '_product_id', '19'),
(11, 2, '_variation_id', '33'),
(12, 2, '_qty', '2'),
(13, 2, '_tax_class', ''),
(14, 2, '_line_subtotal', '80'),
(15, 2, '_line_subtotal_tax', '0'),
(16, 2, '_line_total', '80'),
(17, 2, '_line_tax', '0'),
(18, 2, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(19, 2, 'pa_color', 'red'),
(20, 3, '_product_id', '43'),
(21, 3, '_variation_id', '0'),
(22, 3, '_qty', '1'),
(23, 3, '_tax_class', ''),
(24, 3, '_line_subtotal', '150'),
(25, 3, '_line_subtotal_tax', '0'),
(26, 3, '_line_total', '150'),
(27, 3, '_line_tax', '0'),
(28, 3, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(29, 4, '_product_id', '47'),
(30, 4, '_variation_id', '0'),
(31, 4, '_qty', '1'),
(32, 4, '_tax_class', ''),
(33, 4, '_line_subtotal', '90'),
(34, 4, '_line_subtotal_tax', '0'),
(35, 4, '_line_total', '90'),
(36, 4, '_line_tax', '0'),
(37, 4, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(38, 5, 'method_id', 'local_pickup'),
(39, 5, 'instance_id', '5'),
(40, 5, 'cost', '0.00'),
(41, 5, 'total_tax', '0'),
(42, 5, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(43, 5, 'Artículos', 'BMW Miniatura Vision Car &times; 16, Llavero MotorSport... - Red &times; 2, Reloj de Pulsera cronó... &times; 1, Billetera BMW M Motor &times; 1'),
(44, 6, '_product_id', '19'),
(45, 6, '_variation_id', '33'),
(46, 6, '_qty', '1'),
(47, 6, '_tax_class', ''),
(48, 6, '_line_subtotal', '40'),
(49, 6, '_line_subtotal_tax', '0'),
(50, 6, '_line_total', '40'),
(51, 6, '_line_tax', '0'),
(52, 6, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(53, 6, 'pa_color', 'red'),
(54, 7, 'method_id', 'flat_rate'),
(55, 7, 'instance_id', '4'),
(56, 7, 'cost', '10.00'),
(57, 7, 'total_tax', '0'),
(58, 7, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(59, 7, 'Artículos', 'Llavero MotorSport... - Red &times; 1'),
(60, 8, '_product_id', '19'),
(61, 8, '_variation_id', '33'),
(62, 8, '_qty', '6'),
(63, 8, '_tax_class', ''),
(64, 8, '_line_subtotal', '240'),
(65, 8, '_line_subtotal_tax', '0'),
(66, 8, '_line_total', '240'),
(67, 8, '_line_tax', '0'),
(68, 8, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(69, 8, 'pa_color', 'red'),
(70, 9, '_product_id', '17'),
(71, 9, '_variation_id', '0'),
(72, 9, '_qty', '6'),
(73, 9, '_tax_class', ''),
(74, 9, '_line_subtotal', '1800'),
(75, 9, '_line_subtotal_tax', '0'),
(76, 9, '_line_total', '1800'),
(77, 9, '_line_tax', '0'),
(78, 9, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(79, 10, '_product_id', '45'),
(80, 10, '_variation_id', '0'),
(81, 10, '_qty', '1'),
(82, 10, '_tax_class', ''),
(83, 10, '_line_subtotal', '89'),
(84, 10, '_line_subtotal_tax', '0'),
(85, 10, '_line_total', '89'),
(86, 10, '_line_tax', '0'),
(87, 10, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(88, 11, 'method_id', 'flat_rate'),
(89, 11, 'instance_id', '7'),
(90, 11, 'cost', '0.00'),
(91, 11, 'total_tax', '0'),
(92, 11, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(93, 11, 'Artículos', 'Llavero MotorSport... - Red &times; 6, BMW Miniatura Vision Car &times; 6, Oso de Peluche Teddy &times; 1'),
(94, 12, '_product_id', '19'),
(95, 12, '_variation_id', '33'),
(96, 12, '_qty', '1'),
(97, 12, '_tax_class', ''),
(98, 12, '_line_subtotal', '40'),
(99, 12, '_line_subtotal_tax', '0'),
(100, 12, '_line_total', '40'),
(101, 12, '_line_tax', '0'),
(102, 12, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(103, 12, 'pa_color', 'red'),
(104, 13, 'method_id', 'flat_rate'),
(105, 13, 'instance_id', '7'),
(106, 13, 'cost', '0.00'),
(107, 13, 'total_tax', '0'),
(108, 13, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(109, 13, 'Artículos', 'Llavero MotorSport... - Red &times; 1'),
(110, 14, '_product_id', '19'),
(111, 14, '_variation_id', '33'),
(112, 14, '_qty', '1'),
(113, 14, '_tax_class', ''),
(114, 14, '_line_subtotal', '40'),
(115, 14, '_line_subtotal_tax', '0'),
(116, 14, '_line_total', '40'),
(117, 14, '_line_tax', '0'),
(118, 14, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(119, 14, 'pa_color', 'red'),
(120, 15, 'method_id', 'flat_rate'),
(121, 15, 'instance_id', '7'),
(122, 15, 'cost', '0.00'),
(123, 15, 'total_tax', '0'),
(124, 15, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(125, 15, 'Artículos', 'Llavero MotorSport... - Red &times; 1'),
(126, 16, '_product_id', '19'),
(127, 16, '_variation_id', '33'),
(128, 16, '_qty', '2'),
(129, 16, '_tax_class', ''),
(130, 16, '_line_subtotal', '80'),
(131, 16, '_line_subtotal_tax', '0'),
(132, 16, '_line_total', '80'),
(133, 16, '_line_tax', '0'),
(134, 16, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(135, 16, 'pa_color', 'red'),
(136, 17, 'method_id', 'flat_rate'),
(137, 17, 'instance_id', '7'),
(138, 17, 'cost', '0.00'),
(139, 17, 'total_tax', '0'),
(140, 17, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(141, 17, 'Artículos', 'Llavero MotorSport... - Red &times; 2'),
(142, 18, '_product_id', '17'),
(143, 18, '_variation_id', '0'),
(144, 18, '_qty', '1'),
(145, 18, '_tax_class', ''),
(146, 18, '_line_subtotal', '300'),
(147, 18, '_line_subtotal_tax', '0'),
(148, 18, '_line_total', '300'),
(149, 18, '_line_tax', '0'),
(150, 18, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(151, 19, 'method_id', 'local_pickup'),
(152, 19, 'instance_id', '6'),
(153, 19, 'cost', '0.00'),
(154, 19, 'total_tax', '0'),
(155, 19, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(156, 19, 'Artículos', 'BMW Miniatura Vision Car &times; 1'),
(157, 20, '_product_id', '19'),
(158, 20, '_variation_id', '33'),
(159, 20, '_qty', '1'),
(160, 20, '_tax_class', ''),
(161, 20, '_line_subtotal', '40'),
(162, 20, '_line_subtotal_tax', '0'),
(163, 20, '_line_total', '40'),
(164, 20, '_line_tax', '0'),
(165, 20, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(166, 20, 'pa_color', 'red'),
(167, 21, '_product_id', '43'),
(168, 21, '_variation_id', '0'),
(169, 21, '_qty', '1'),
(170, 21, '_tax_class', ''),
(171, 21, '_line_subtotal', '150'),
(172, 21, '_line_subtotal_tax', '0'),
(173, 21, '_line_total', '150'),
(174, 21, '_line_tax', '0'),
(175, 21, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(176, 22, '_product_id', '47'),
(177, 22, '_variation_id', '0'),
(178, 22, '_qty', '1'),
(179, 22, '_tax_class', ''),
(180, 22, '_line_subtotal', '90'),
(181, 22, '_line_subtotal_tax', '0'),
(182, 22, '_line_total', '90'),
(183, 22, '_line_tax', '0'),
(184, 22, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(185, 23, 'method_id', 'local_pickup'),
(186, 23, 'instance_id', '6'),
(187, 23, 'cost', '0.00'),
(188, 23, 'total_tax', '0'),
(189, 23, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(190, 23, 'Artículos', 'Llavero MotorSport... - Red &times; 1, Reloj de Pulsera cronó... &times; 1, Billetera BMW M Motor &times; 1'),
(191, 24, '_product_id', '19'),
(192, 24, '_variation_id', '33'),
(193, 24, '_qty', '4'),
(194, 24, '_tax_class', ''),
(195, 24, '_line_subtotal', '160'),
(196, 24, '_line_subtotal_tax', '0'),
(197, 24, '_line_total', '160'),
(198, 24, '_line_tax', '0'),
(199, 24, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(200, 24, 'pa_color', 'red'),
(201, 25, '_product_id', '47'),
(202, 25, '_variation_id', '0'),
(203, 25, '_qty', '1'),
(204, 25, '_tax_class', ''),
(205, 25, '_line_subtotal', '90'),
(206, 25, '_line_subtotal_tax', '0'),
(207, 25, '_line_total', '90'),
(208, 25, '_line_tax', '0'),
(209, 25, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(210, 26, 'method_id', 'local_pickup'),
(211, 26, 'instance_id', '6'),
(212, 26, 'cost', '0.00'),
(213, 26, 'total_tax', '0'),
(214, 26, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(215, 26, 'Artículos', 'Llavero MotorSport... - Red &times; 4, Billetera BMW M Motor &times; 1'),
(216, 27, '_product_id', '19'),
(217, 27, '_variation_id', '33'),
(218, 27, '_qty', '3'),
(219, 27, '_tax_class', ''),
(220, 27, '_line_subtotal', '120'),
(221, 27, '_line_subtotal_tax', '0'),
(222, 27, '_line_total', '120'),
(223, 27, '_line_tax', '0'),
(224, 27, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(225, 27, 'pa_color', 'red'),
(226, 28, '_product_id', '43'),
(227, 28, '_variation_id', '0'),
(228, 28, '_qty', '1'),
(229, 28, '_tax_class', ''),
(230, 28, '_line_subtotal', '150'),
(231, 28, '_line_subtotal_tax', '0'),
(232, 28, '_line_total', '150'),
(233, 28, '_line_tax', '0'),
(234, 28, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(235, 29, 'method_id', 'local_pickup'),
(236, 29, 'instance_id', '6'),
(237, 29, 'cost', '0.00'),
(238, 29, 'total_tax', '0'),
(239, 29, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(240, 29, 'Artículos', 'Llavero MotorSport... - Red &times; 3, Reloj de Pulsera cronó... &times; 1'),
(241, 30, '_product_id', '17'),
(242, 30, '_variation_id', '0'),
(243, 30, '_qty', '1'),
(244, 30, '_tax_class', ''),
(245, 30, '_line_subtotal', '300'),
(246, 30, '_line_subtotal_tax', '0'),
(247, 30, '_line_total', '300'),
(248, 30, '_line_tax', '0'),
(249, 30, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(250, 31, 'method_id', 'local_pickup'),
(251, 31, 'instance_id', '6'),
(252, 31, 'cost', '0.00'),
(253, 31, 'total_tax', '0'),
(254, 31, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(255, 31, 'Artículos', 'Miniatura Vision Car &times; 1'),
(256, 32, '_product_id', '17'),
(257, 32, '_variation_id', '0'),
(258, 32, '_qty', '1'),
(259, 32, '_tax_class', ''),
(260, 32, '_line_subtotal', '300'),
(261, 32, '_line_subtotal_tax', '0'),
(262, 32, '_line_total', '300'),
(263, 32, '_line_tax', '0'),
(264, 32, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(265, 33, 'method_id', 'local_pickup'),
(266, 33, 'instance_id', '6'),
(267, 33, 'cost', '0.00'),
(268, 33, 'total_tax', '0'),
(269, 33, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(270, 33, 'Artículos', 'Miniatura Vision Car &times; 1'),
(271, 34, '_product_id', '17'),
(272, 34, '_variation_id', '0'),
(273, 34, '_qty', '5'),
(274, 34, '_tax_class', ''),
(275, 34, '_line_subtotal', '1500'),
(276, 34, '_line_subtotal_tax', '0'),
(277, 34, '_line_total', '1500'),
(278, 34, '_line_tax', '0'),
(279, 34, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(280, 35, '_product_id', '19'),
(281, 35, '_variation_id', '33'),
(282, 35, '_qty', '2'),
(283, 35, '_tax_class', ''),
(284, 35, '_line_subtotal', '80'),
(285, 35, '_line_subtotal_tax', '0'),
(286, 35, '_line_total', '80'),
(287, 35, '_line_tax', '0'),
(288, 35, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(289, 35, 'pa_color', 'red'),
(290, 36, 'method_id', 'flat_rate'),
(291, 36, 'instance_id', '7'),
(292, 36, 'cost', '0.00'),
(293, 36, 'total_tax', '0'),
(294, 36, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(295, 36, 'Artículos', 'Miniatura Vision Car &times; 5, Llavero MotorSport... - Red &times; 2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_woocommerce_order_items`
--

CREATE TABLE `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_woocommerce_order_items`
--

INSERT INTO `wp_woocommerce_order_items` (`order_item_id`, `order_item_name`, `order_item_type`, `order_id`) VALUES
(1, 'BMW Miniatura Vision Car', 'line_item', 68),
(2, 'Llavero MotorSport... - Red', 'line_item', 68),
(3, 'Reloj de Pulsera cronó...', 'line_item', 68),
(4, 'Billetera BMW M Motor', 'line_item', 68),
(5, 'Recogida local', 'shipping', 68),
(6, 'Llavero MotorSport... - Red', 'line_item', 76),
(7, 'Precio fijo', 'shipping', 76),
(8, 'Llavero MotorSport... - Red', 'line_item', 129),
(9, 'BMW Miniatura Vision Car', 'line_item', 129),
(10, 'Oso de Peluche Teddy', 'line_item', 129),
(11, 'Despacho a domicilio', 'shipping', 129),
(12, 'Llavero MotorSport... - Red', 'line_item', 130),
(13, 'Despacho a domicilio', 'shipping', 130),
(14, 'Llavero MotorSport... - Red', 'line_item', 131),
(15, 'Despacho a domicilio', 'shipping', 131),
(16, 'Llavero MotorSport... - Red', 'line_item', 133),
(17, 'Despacho a domicilio', 'shipping', 133),
(18, 'BMW Miniatura Vision Car', 'line_item', 134),
(19, 'Recogida local', 'shipping', 134),
(20, 'Llavero MotorSport... - Red', 'line_item', 136),
(21, 'Reloj de Pulsera cronó...', 'line_item', 136),
(22, 'Billetera BMW M Motor', 'line_item', 136),
(23, 'Recogida local', 'shipping', 136),
(24, 'Llavero MotorSport... - Red', 'line_item', 137),
(25, 'Billetera BMW M Motor', 'line_item', 137),
(26, 'Recogida local', 'shipping', 137),
(27, 'Llavero MotorSport... - Red', 'line_item', 141),
(28, 'Reloj de Pulsera cronó...', 'line_item', 141),
(29, 'Recogida local', 'shipping', 141),
(30, 'Miniatura Vision Car', 'line_item', 158),
(31, 'Recogida local', 'shipping', 158),
(32, 'Miniatura Vision Car', 'line_item', 159),
(33, 'Recogida local', 'shipping', 159),
(34, 'Miniatura Vision Car', 'line_item', 166),
(35, 'Llavero MotorSport... - Red', 'line_item', 166),
(36, 'Despacho a domicilio', 'shipping', 166);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_woocommerce_payment_tokenmeta`
--

CREATE TABLE `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `payment_token_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_woocommerce_payment_tokens`
--

CREATE TABLE `wp_woocommerce_payment_tokens` (
  `token_id` bigint(20) UNSIGNED NOT NULL,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_woocommerce_sessions`
--

CREATE TABLE `wp_woocommerce_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_woocommerce_sessions`
--

INSERT INTO `wp_woocommerce_sessions` (`session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(1046, '1', 'a:7:{s:4:\"cart\";s:6:\"a:0:{}\";s:11:\"cart_totals\";s:367:\"a:15:{s:8:\"subtotal\";i:0;s:12:\"subtotal_tax\";i:0;s:14:\"shipping_total\";i:0;s:12:\"shipping_tax\";i:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";i:0;s:12:\"discount_tax\";i:0;s:19:\"cart_contents_total\";i:0;s:17:\"cart_contents_tax\";i:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";i:0;s:7:\"fee_tax\";i:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";i:0;s:9:\"total_tax\";i:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:8:\"customer\";s:847:\"a:26:{s:2:\"id\";s:1:\"1\";s:13:\"date_modified\";s:25:\"2020-04-01T11:16:25-05:00\";s:8:\"postcode\";s:6:\"LIMA01\";s:4:\"city\";s:4:\"LIMA\";s:9:\"address_1\";s:12:\"AV LAS LOMAS\";s:7:\"address\";s:12:\"AV LAS LOMAS\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:3:\"LIM\";s:7:\"country\";s:2:\"PE\";s:17:\"shipping_postcode\";s:6:\"LIMA01\";s:13:\"shipping_city\";s:4:\"LIMA\";s:18:\"shipping_address_1\";s:12:\"AV LAS LOMAS\";s:16:\"shipping_address\";s:12:\"AV LAS LOMAS\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:3:\"LIM\";s:16:\"shipping_country\";s:2:\"PE\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:4:\"Fran\";s:9:\"last_name\";s:10:\"De la Rosa\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:9:\"918172291\";s:5:\"email\";s:16:\"htrigoso@seek.pe\";s:19:\"shipping_first_name\";s:4:\"Fran\";s:18:\"shipping_last_name\";s:10:\"De la Rosa\";s:16:\"shipping_company\";s:0:\"\";}\";}', 1586291763);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_woocommerce_shipping_zones`
--

CREATE TABLE `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone_order` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_woocommerce_shipping_zones`
--

INSERT INTO `wp_woocommerce_shipping_zones` (`zone_id`, `zone_name`, `zone_order`) VALUES
(2, 'Peru', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_woocommerce_shipping_zone_locations`
--

CREATE TABLE `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_woocommerce_shipping_zone_locations`
--

INSERT INTO `wp_woocommerce_shipping_zone_locations` (`location_id`, `zone_id`, `location_code`, `location_type`) VALUES
(2, 2, 'PE', 'country');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_woocommerce_shipping_zone_methods`
--

CREATE TABLE `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `instance_id` bigint(20) UNSIGNED NOT NULL,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_order` bigint(20) UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_woocommerce_shipping_zone_methods`
--

INSERT INTO `wp_woocommerce_shipping_zone_methods` (`zone_id`, `instance_id`, `method_id`, `method_order`, `is_enabled`) VALUES
(0, 1, 'free_shipping', 1, 1),
(2, 6, 'local_pickup', 1, 1),
(2, 7, 'flat_rate', 2, 1),
(2, 8, 'free_shipping', 3, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_woocommerce_tax_rates`
--

CREATE TABLE `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT 0,
  `tax_rate_shipping` int(1) NOT NULL DEFAULT 1,
  `tax_rate_order` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_woocommerce_tax_rate_locations`
--

CREATE TABLE `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_wpf_filters`
--

CREATE TABLE `wp_wpf_filters` (
  `id` int(11) NOT NULL,
  `title` varchar(128) DEFAULT NULL,
  `setting_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `wp_wpf_filters`
--

INSERT INTO `wp_wpf_filters` (`id`, `title`, `setting_data`) VALUES
(1, 'Range Price', 'a:1:{s:8:\"settings\";a:35:{s:11:\"enable_ajax\";s:1:\"1\";s:22:\"show_clean_button_word\";s:5:\"Clear\";s:21:\"show_clean_block_word\";s:5:\"clear\";s:21:\"filtering_button_word\";s:6:\"Filter\";s:21:\"display_cols_in_a_row\";s:1:\"1\";s:11:\"display_for\";s:4:\"both\";s:12:\"filter_width\";s:3:\"100\";s:15:\"filter_width_in\";s:1:\"%\";s:18:\"filter_block_width\";s:3:\"100\";s:21:\"filter_block_width_in\";s:1:\"%\";s:19:\"filter_block_height\";s:0:\"\";s:21:\"main_buttons_position\";s:6:\"bottom\";s:32:\"filter_loader_icon_onload_enable\";s:1:\"1\";s:23:\"filter_loader_icon_name\";s:7:\"default\";s:25:\"filter_loader_icon_number\";s:1:\"0\";s:25:\"filter_loader_custom_icon\";s:0:\"\";s:24:\"filter_loader_icon_color\";s:5:\"black\";s:18:\"overlay_background\";s:5:\"black\";s:12:\"overlay_word\";s:8:\"WooBeWoo\";s:16:\"text_no_products\";s:17:\"No products found\";s:15:\"filter_position\";s:12:\"left_sidebar\";s:11:\"max_columns\";s:1:\"4\";s:18:\"max_columns_height\";s:0:\"\";s:22:\"max_full_screen_height\";s:0:\"\";s:14:\"checkbox_style\";s:8:\"checkbox\";s:15:\"hierarchy_style\";s:4:\"line\";s:22:\"mobile_filter_position\";s:4:\"left\";s:17:\"mobile_resolution\";s:0:\"\";s:18:\"count_product_shop\";s:1:\"0\";s:10:\"css_editor\";s:0:\"\";s:9:\"js_editor\";s:0:\"\";s:15:\"display_on_page\";s:4:\"both\";s:16:\"hide_filter_icon\";s:1:\"1\";s:18:\"cross_filter_style\";s:10:\"hide_terms\";s:7:\"filters\";a:1:{s:5:\"order\";s:3497:\"[{\"id\":\"wpfPrice\",\"settings\":{\"f_enable\":false,\"f_description\":\"\",\"f_title\":\"Price\",\"f_enable_title\":\"no\",\"f_skin_type\":\"default\",\"f_show_inputs\":true,\"f_currency_position\":\"before\",\"f_currency_show_as\":\"symbol\",\"f_price_tooltip_show_as\":true,\"f_name\":\"Price\"}},{\"id\":\"wpfPriceRange\",\"settings\":{\"f_enable\":true,\"f_description\":\"\",\"f_title\":\"Price range\",\"f_enable_title\":\"no\",\"f_frontend_type\":\"list\",\"f_dropdown_first_option_text\":\"\",\"f_range_automatic\":true,\"f_min\":\"\",\"f_max\":\"\",\"f_range\":\"\",\"f_max_options_count\":\"\",\"f_step\":\"20\",\"f_range_by_hands\":false,\"f_max_height\":\"200\",\"f_range_by_hands_values\":\"\",\"f_name\":\"Price range\"}},{\"id\":\"wpfSortBy\",\"settings\":{\"f_enable\":false,\"f_description\":\"\",\"f_title\":\"Sort by\",\"f_enable_title\":\"no\",\"f_options[]\":\"default,popularity,rating,date,price,price-desc,rand,title\",\"f_option_labels[default]\":\"\",\"f_option_labels[popularity]\":\"\",\"f_option_labels[rating]\":\"\",\"f_option_labels[date]\":\"\",\"f_option_labels[price]\":\"\",\"f_option_labels[price-desc]\":\"\",\"f_option_labels[rand]\":\"\",\"f_option_labels[title]\":\"\",\"f_name\":\"Sort by\"}},{\"id\":\"wpfCategory\",\"settings\":{\"f_enable\":false,\"f_description\":\"\",\"f_title\":\"Product categories\",\"f_enable_title\":\"no\",\"f_frontend_type\":\"list\",\"f_dropdown_first_option_text\":\"\",\"f_sort_by\":\"asc\",\"f_order_custom\":false,\"f_search_field\":false,\"f_show_hierarchical\":false,\"f_hierarchical_limit\":\"\",\"f_hide_parent\":false,\"f_show_count\":false,\"f_hide_empty\":false,\"f_mlist[]\":\"\",\"\":\"Select Some Options\",\"f_hidden_categories\":false,\"f_filtered_by_selected\":false,\"f_exclude_terms\":\"\",\"f_show_search_input\":false,\"f_search_label\":\"\",\"f_max_height\":\"200\",\"f_hide_taxonomy\":false,\"f_show_all_categories\":false,\"f_name\":\"Product categories\"}},{\"id\":\"wpfTags\",\"settings\":{\"f_enable\":false,\"f_description\":\"\",\"f_title\":\"Product tags\",\"f_enable_title\":\"no\",\"f_frontend_type\":\"list\",\"f_dropdown_first_option_text\":\"\",\"f_sort_by\":\"asc\",\"f_order_custom\":false,\"f_search_field\":false,\"f_show_hierarchical\":false,\"f_hierarchical_limit\":false,\"f_show_count\":false,\"f_hide_empty\":false,\"f_mlist[]\":\"\",\"\":\"Select Some Options\",\"f_hidden_tags\":false,\"f_exclude_terms\":\"\",\"f_show_search_input\":false,\"f_search_label\":\"\",\"f_max_height\":\"200\",\"f_show_all_tags\":false,\"f_name\":\"Product tags\"}},{\"id\":\"wpfAuthor\",\"settings\":{\"f_enable\":false,\"f_description\":\"\",\"f_title\":\"Author\",\"f_enable_title\":\"no\",\"f_mlist[]\":\"\",\"\":\"Select Some Options\",\"f_frontend_type\":\"list\",\"f_dropdown_first_option_text\":\"\",\"f_show_search_input\":false,\"f_search_label\":\"\",\"f_max_height\":\"200\",\"f_name\":\"Author\"}},{\"id\":\"wpfFeatured\",\"settings\":{\"f_enable\":false,\"f_description\":\"\",\"f_title\":\"Featured\",\"f_enable_title\":\"no\",\"f_name\":\"Featured\"}},{\"id\":\"wpfOnSale\",\"settings\":{\"f_enable\":false,\"f_description\":\"\",\"f_title\":\"On sale\",\"f_enable_title\":\"no\",\"f_checkbox_label\":\"\",\"f_name\":\"On sale\"}},{\"id\":\"wpfInStock\",\"settings\":{\"f_enable\":false,\"f_description\":\"\",\"f_title\":\"Stock status\",\"f_enable_title\":\"no\",\"f_dropdown_first_option_text\":\"\",\"f_options[]\":\"instock,outofstock,onbackorder\",\"f_status_names\":false,\"f_stock_statuses[in]\":\"\",\"f_stock_statuses[out]\":\"\",\"f_stock_statuses[on]\":\"\",\"f_name\":\"Stock status\"}},{\"id\":\"wpfRating\",\"settings\":{\"f_enable\":false,\"f_description\":\"\",\"f_title\":\"Rating\",\"f_enable_title\":\"no\",\"f_frontend_type\":\"linestars\",\"f_dropdown_first_option_text\":\"\",\"f_add_text\":\"\",\"f_add_text5\":\"\",\"f_name\":\"Rating\"}},{\"id\":\"wpfSearchText\",\"settings\":{\"f_enable\":false,\"f_description\":\"\",\"f_title\":\"Search by Text\",\"f_name\":\"Search by Text\"}}]\";}}}');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `wp_berocket_termmeta`
--
ALTER TABLE `wp_berocket_termmeta`
  ADD UNIQUE KEY `meta_id` (`meta_id`);

--
-- Indices de la tabla `wp_cf7dbplugin_st`
--
ALTER TABLE `wp_cf7dbplugin_st`
  ADD PRIMARY KEY (`submit_time`);

--
-- Indices de la tabla `wp_cf7dbplugin_submits`
--
ALTER TABLE `wp_cf7dbplugin_submits`
  ADD KEY `submit_time_idx` (`submit_time`),
  ADD KEY `form_name_idx` (`form_name`),
  ADD KEY `field_name_idx` (`field_name`);

--
-- Indices de la tabla `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10)),
  ADD KEY `woo_idx_comment_type` (`comment_type`);

--
-- Indices de la tabla `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indices de la tabla `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indices de la tabla `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indices de la tabla `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indices de la tabla `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indices de la tabla `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indices de la tabla `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indices de la tabla `wp_user_registration_sessions`
--
ALTER TABLE `wp_user_registration_sessions`
  ADD PRIMARY KEY (`session_key`),
  ADD UNIQUE KEY `session_id` (`session_id`);

--
-- Indices de la tabla `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD PRIMARY KEY (`download_log_id`),
  ADD KEY `permission_id` (`permission_id`),
  ADD KEY `timestamp` (`timestamp`);

--
-- Indices de la tabla `wp_wc_product_meta_lookup`
--
ALTER TABLE `wp_wc_product_meta_lookup`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `virtual` (`virtual`),
  ADD KEY `downloadable` (`downloadable`),
  ADD KEY `stock_status` (`stock_status`),
  ADD KEY `stock_quantity` (`stock_quantity`),
  ADD KEY `onsale` (`onsale`),
  ADD KEY `min_max_price` (`min_price`,`max_price`);

--
-- Indices de la tabla `wp_wc_tax_rate_classes`
--
ALTER TABLE `wp_wc_tax_rate_classes`
  ADD PRIMARY KEY (`tax_rate_class_id`),
  ADD UNIQUE KEY `slug` (`slug`(191));

--
-- Indices de la tabla `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  ADD PRIMARY KEY (`webhook_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indices de la tabla `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Indices de la tabla `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(20));

--
-- Indices de la tabla `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `user_order_remaining_expires` (`user_id`,`order_id`,`downloads_remaining`,`access_expires`);

--
-- Indices de la tabla `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `level` (`level`);

--
-- Indices de la tabla `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indices de la tabla `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indices de la tabla `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_token_id` (`payment_token_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indices de la tabla `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indices de la tabla `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD UNIQUE KEY `session_key` (`session_key`);

--
-- Indices de la tabla `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Indices de la tabla `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Indices de la tabla `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

--
-- Indices de la tabla `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`),
  ADD KEY `tax_rate_state` (`tax_rate_state`(2)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(10)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Indices de la tabla `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Indices de la tabla `wp_wpf_filters`
--
ALTER TABLE `wp_wpf_filters`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `wp_berocket_termmeta`
--
ALTER TABLE `wp_berocket_termmeta`
  MODIFY `meta_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT de la tabla `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11468;

--
-- AUTO_INCREMENT de la tabla `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1390;

--
-- AUTO_INCREMENT de la tabla `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170;

--
-- AUTO_INCREMENT de la tabla `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT de la tabla `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de la tabla `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de la tabla `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=207;

--
-- AUTO_INCREMENT de la tabla `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `wp_user_registration_sessions`
--
ALTER TABLE `wp_user_registration_sessions`
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  MODIFY `download_log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_wc_tax_rate_classes`
--
ALTER TABLE `wp_wc_tax_rate_classes`
  MODIFY `tax_rate_class_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  MODIFY `webhook_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  MODIFY `key_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=296;

--
-- AUTO_INCREMENT de la tabla `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de la tabla `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  MODIFY `token_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1047;

--
-- AUTO_INCREMENT de la tabla `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_wpf_filters`
--
ALTER TABLE `wp_wpf_filters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD CONSTRAINT `fk_wp_wc_download_log_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `wp_woocommerce_downloadable_product_permissions` (`permission_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
