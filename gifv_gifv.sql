-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 01, 2023 at 09:25 AM
-- Server version: 10.3.27-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gifv_gifv`
--

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `title`, `image`, `desc`, `status`, `created_at`, `updated_at`, `type`) VALUES
(1, 'Banner 1', 'banners/November2023/IyaqJK9BFtUVqIcjaXv0.jpg', 'Banner 1', 'ACTIVE', '2023-11-08 21:09:00', '2023-11-10 23:23:22', 'bannerHome'),
(2, 'Banner middle', 'banners/November2023/U2rWrv3MUmIsr0vVCQAw.jpg', NULL, 'ACTIVE', '2023-11-09 03:38:00', '2023-11-10 21:40:13', 'bannerMiddle'),
(3, 'banner middle 2', 'banners/November2023/s4SCMLVZ1WU4WZTv9zF1.jpg', NULL, 'ACTIVE', '2023-11-09 03:39:00', '2023-11-10 21:40:24', 'bannerMiddle'),
(4, 'Banner 2', 'banners/November2023/HURERBVOyAORXTIijQ4A.jpg', NULL, 'ACTIVE', '2023-11-10 21:38:00', '2023-11-10 23:23:39', 'bannerHome');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Tin Tức', 'tin-tuc', '2023-11-08 21:38:00', '2023-11-08 21:38:17');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(7, 'Hạt giống thủy canh', 'hat-giong-thuy-canh', '2023-11-08 22:38:39', '2023-11-08 22:38:39'),
(8, 'Phụ kiện thủy canh', 'phu-kien-thuy-canh', '2023-11-08 22:39:00', '2023-11-08 22:39:00'),
(9, 'Dung dịch thủy canh', 'dung-dich-thuy-canh', '2023-11-11 03:58:25', '2023-11-11 03:58:25'),
(10, 'Bộ trụ thủy canh', 'bo-tru-thuy-canh', '2023-11-12 23:22:04', '2023-11-12 23:22:04');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rate` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `name`, `avt`, `comment`, `rate`, `created_at`, `updated_at`) VALUES
(1, 'Nguyen Quang Hai', 'comments/November2023/C1eYlMhecCi1YnDrPI9T.png', 's', 5, '2023-11-15 23:31:25', '2023-11-15 23:31:25');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `address`, `email`, `phone`, `content`, `created_at`, `updated_at`) VALUES
(2, 'Nguyen Quang Hai', 'Thái Nguyên', 'admin@admin.com', '0359808267', 'a', '2023-11-10 03:55:05', '2023-11-10 03:55:05');

-- --------------------------------------------------------

--
-- Table structure for table `country_visits`
--

CREATE TABLE `country_visits` (
  `id` bigint(20) NOT NULL,
  `country` varchar(255) NOT NULL,
  `visits` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `country_visits`
--

INSERT INTO `country_visits` (`id`, `country`, `visits`, `created_at`, `updated_at`) VALUES
(1, 'United States', 460, NULL, '2023-11-30 20:42:17'),
(2, 'Vietnam', 79, '2023-11-15 01:14:11', '2023-11-30 20:40:41');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` int(11) DEFAULT NULL,
  `percent_off` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `code`, `type`, `value`, `percent_off`, `created_at`, `updated_at`) VALUES
(1, 'ABC123', 'fixed', 20, 50, '2023-11-08 20:36:11', '2023-11-13 01:56:32'),
(2, 'DEF456', 'percent', NULL, 40, '2023-11-08 20:36:11', '2023-11-08 20:36:11'),
(3, 'FlashSale', 'fixed', 10000, NULL, '2023-11-13 04:37:17', '2023-11-13 04:49:03'),
(5, 'Sale', 'percent_off', NULL, 20, '2023-11-13 04:47:59', '2023-11-13 04:48:47');

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 1, 'provider_id', 'text', 'Provider', 0, 1, 1, 0, 0, 0, NULL, 13),
(23, 4, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(24, 4, 'name', 'text', 'Tên sản phẩm', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"}}', 2),
(25, 4, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"},\"validation\":{\"rule\":\"unique:products,slug\"},\"display\":{\"width\":\"6\"}}', 3),
(26, 4, 'details', 'text_area', 'Mô tả', 0, 0, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\"}}', 4),
(27, 4, 'price', 'number', 'Giá', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\"},\"display\":{\"width\":\"6\"}}', 5),
(28, 4, 'image', 'image', 'Hình ảnh', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"4\"},\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"100%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"70%\"},{\"name\":\"small\",\"scale\":\"70%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"570\",\"height\":\"540\"}},{\"name\":\"box\",\"crop\":{\"width\":\"270\",\"height\":\"251\"}}]}', 7),
(29, 4, 'images', 'multiple_images', 'Hình ảnh thêm', 0, 0, 1, 1, 1, 1, '{\"display\":{\"width\":\"8\"}}', 8),
(30, 4, 'featured', 'checkbox', 'Hiển thị', 1, 1, 1, 1, 1, 1, '{\"on\":\"Yes\",\"off\":\"No\",\"checked\":\"true\"}', 11),
(31, 4, 'category_id', 'number', 'Category Id', 1, 0, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\"}}', 9),
(32, 4, 'description', 'rich_text_box', 'Nội dung', 1, 0, 1, 1, 1, 0, '{\"validation\":{\"rule\":\"required\"}}', 10),
(33, 4, 'quantity', 'number', 'Số lượng', 1, 1, 1, 1, 1, 0, '{\"validation\":{\"rule\":\"required\"},\"display\":{\"width\":\"6\"}}', 12),
(34, 4, 'product_belongsto_category_relationship', 'relationship', 'Danh mục sản phẩm', 1, 1, 1, 1, 1, 0, '{\"model\":\"App\\\\Category\",\"table\":\"category\",\"type\":\"belongsTo\",\"column\":\"category_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"category\",\"pivot\":\"0\",\"taggable\":\"0\"}', 15),
(35, 4, 'product_belongstomany_tag_relationship', 'relationship', 'Tags', 0, 0, 1, 1, 1, 1, '{\"model\":\"App\\\\Tag\",\"table\":\"tags\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"product_tag\",\"pivot\":\"1\",\"taggable\":\"on\"}', 16),
(36, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, '{}', 17),
(37, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 1, 0, 0, 0, '{}', 18),
(38, 5, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(39, 5, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(40, 5, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"},\"validation\":{\"rule\":\"unique:category,slug\"}}', 3),
(41, 5, 'category_hasmany_product_relationship', 'relationship', 'Products', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Product\",\"table\":\"products\",\"type\":\"hasMany\",\"column\":\"category_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"category\",\"pivot\":\"0\",\"taggable\":\"0\"}', 4),
(42, 5, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 5),
(43, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(44, 6, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(45, 6, 'code', 'text', 'Mã giảm giá', 1, 1, 1, 1, 1, 1, '{}', 2),
(46, 6, 'type', 'select_dropdown', 'Thể loại', 1, 1, 1, 1, 1, 1, '{\"default\":\"fixed\",\"options\":{\"fixed\":\"Fixed value\",\"percent_off\":\"Percent Off\"}}', 3),
(47, 6, 'value', 'number', 'Số tiền giảm', 0, 1, 1, 1, 1, 1, '{}', 4),
(48, 6, 'percent_off', 'number', 'Phần trăm', 0, 1, 1, 1, 1, 1, '{}', 5),
(49, 6, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 6),
(50, 6, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(51, 7, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(52, 7, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{\"rules\":\"unique:tags,name\"}', 2),
(53, 7, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"rules\":\"unique:tags,slug\"}', 3),
(54, 7, 'tag_belongstomany_product_relationship', 'relationship', 'Products', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Product\",\"table\":\"products\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"product_tag\",\"pivot\":\"1\",\"taggable\":\"0\"}', 4),
(55, 7, 'create_at', 'timestamp', 'voyager::seeders.data_rows.create_at', 0, 0, 0, 0, 0, 0, NULL, 5),
(56, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 6),
(57, 9, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(58, 9, 'user_id', 'number', 'User Id', 0, 0, 1, 0, 0, 0, '{}', 2),
(59, 9, 'billing_email', 'text', 'Email', 0, 0, 0, 0, 0, 0, '{}', 3),
(60, 9, 'billing_name', 'text', 'Họ tên', 1, 1, 1, 1, 1, 0, '{}', 4),
(61, 9, 'billing_city', 'text', 'Huyện (thành phố)', 1, 1, 1, 1, 1, 0, '{}', 6),
(62, 9, 'billing_province', 'text', 'Tỉnh', 1, 1, 1, 1, 0, 0, '{}', 7),
(63, 9, 'billing_postalcode', 'text', 'Postal Code', 1, 0, 0, 0, 0, 0, '{}', 8),
(64, 9, 'billing_phone', 'number', 'Phone', 1, 0, 1, 0, 0, 0, '{}', 9),
(65, 9, 'billing_name_on_card', 'text', 'Name on card', 1, 0, 0, 0, 0, 0, '{}', 10),
(66, 9, 'billing_discount', 'number', 'Được giảm', 1, 0, 0, 0, 0, 0, '{}', 11),
(67, 9, 'billing_discount_code', 'text', 'Discount code', 0, 0, 0, 0, 0, 0, '{}', 12),
(68, 9, 'billing_subtotal', 'number', 'Tổng tiền', 1, 1, 1, 0, 0, 0, '{}', 18),
(69, 9, 'billing_tax', 'number', 'Tax', 1, 0, 0, 0, 0, 0, '{}', 14),
(70, 9, 'billing_total', 'number', 'Total', 1, 0, 0, 0, 0, 0, '{}', 16),
(71, 9, 'payment_gateway', 'text', 'Gateway', 1, 0, 0, 0, 0, 0, '{\"null\":\"\"}', 17),
(72, 9, 'shipped', 'checkbox', 'Shipped', 1, 1, 1, 1, 1, 1, '{\"checked\":\"false\",\"on\":\"Yes\",\"off\":\"No\"}', 19),
(73, 9, 'error', 'text', 'Error', 0, 0, 0, 0, 0, 0, '{\"null\":\"\"}', 20),
(74, 9, 'order_belongstomany_product_relationship', 'relationship', 'Order Products', 0, 1, 1, 0, 0, 0, '{\"model\":\"App\\\\Product\",\"table\":\"products\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"order_product\",\"pivot\":\"1\",\"taggable\":\"0\"}', 21),
(75, 9, 'order_belongsto_user_relationship', 'relationship', 'User', 0, 0, 1, 0, 0, 0, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"orders\",\"pivot\":\"0\",\"taggable\":\"0\"}', 22),
(76, 9, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, '{}', 13),
(77, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 1, 0, 0, 0, '{}', 15),
(78, 11, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(79, 11, 'title', 'text', 'Tiêu đề', 0, 1, 1, 1, 1, 1, '{}', 2),
(80, 11, 'image', 'image', 'Hình ảnh', 0, 1, 1, 1, 1, 1, 'null', 3),
(81, 11, 'desc', 'text', 'Mô tả', 0, 1, 1, 1, 1, 1, '{}', 4),
(82, 11, 'status', 'select_dropdown', 'Trạng thái', 0, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 5),
(83, 11, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(84, 11, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(85, 12, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(86, 12, 'title', 'text', 'Tiêu đề', 0, 1, 1, 1, 1, 1, '{}', 2),
(87, 12, 'excerpt', 'text_area', 'Mô tả', 0, 0, 1, 1, 1, 1, '{}', 3),
(88, 12, 'body', 'rich_text_box', 'Nội dung', 0, 0, 1, 1, 1, 1, '{}', 4),
(89, 12, 'image', 'image', 'Hình ảnh', 0, 1, 1, 1, 1, 1, '{}', 5),
(90, 12, 'slug', 'text', 'Slug', 0, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(91, 12, 'meta_description', 'text', 'Meta Description', 0, 0, 1, 1, 1, 1, '{}', 7),
(92, 12, 'meta_keywords', 'text', 'Meta Keywords', 0, 0, 1, 1, 1, 1, '{}', 8),
(93, 12, 'status', 'select_dropdown', 'Trạng thái', 0, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(94, 12, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 11),
(95, 12, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 12),
(96, 13, 'id', 'number', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(97, 13, 'author_id', 'text', 'Author Id', 0, 0, 1, 1, 1, 1, '{}', 2),
(98, 13, 'category_id', 'text', 'Category Id', 0, 0, 1, 1, 1, 1, '{}', 3),
(99, 13, 'title', 'text', 'Tiêu đề', 0, 1, 1, 1, 1, 1, '{}', 4),
(100, 13, 'seo_title', 'text', 'Seo Title', 0, 0, 1, 1, 1, 1, '{}', 5),
(101, 13, 'excerpt', 'text_area', 'Mô tả', 0, 0, 1, 1, 1, 1, '{}', 6),
(102, 13, 'body', 'rich_text_box', 'Nội dung', 0, 0, 1, 1, 1, 1, '{}', 7),
(103, 13, 'image', 'image', 'Hình ảnh', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"100%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"70%\"},{\"name\":\"small\",\"scale\":\"70%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"370\",\"height\":\"293\"}}]}', 8),
(104, 13, 'slug', 'text', 'Slug', 0, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 9),
(105, 13, 'meta_description', 'text', 'Meta Description', 0, 0, 1, 1, 1, 1, '{}', 10),
(106, 13, 'meta_keywords', 'text', 'Meta Keywords', 0, 0, 1, 1, 1, 1, '{}', 11),
(107, 13, 'status', 'select_dropdown', 'Trạng thái', 0, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"C\\u00f4ng khai\",\"DRAFT\":\"Nh\\u00e1p\",\"PENDING\":\"\\u0110ang duy\\u1ec7t\"}}', 12),
(108, 13, 'featured', 'checkbox', 'Nổi bật', 0, 1, 1, 1, 1, 1, '{\"on\":\"C\\u00f3\",\"off\":\"Kh\\u00f4ng\",\"checked\":true}', 13),
(109, 13, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 14),
(110, 13, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 15),
(111, 14, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(112, 14, 'parent_id', 'select_dropdown', 'Parent Id', 0, 1, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(113, 14, 'order', 'text', 'Order', 0, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(114, 14, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 4),
(115, 14, 'slug', 'text', 'Slug', 0, 1, 1, 1, 1, 1, '{}', 5),
(116, 14, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(117, 14, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(118, 9, 'billing_address', 'text', 'Xã (phường)', 1, 1, 1, 1, 1, 1, '{}', 5),
(119, 11, 'type', 'select_dropdown', 'Loại', 0, 1, 1, 1, 1, 1, '{\"default\":\"bannerHome\",\"options\":{\"bannerHome\":\"banner home\",\"bannerMiddle\":\"banner middle\"}}', 6),
(120, 15, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(121, 15, 'name', 'text', 'Họ Tên', 0, 1, 1, 1, 1, 1, '{}', 2),
(122, 15, 'address', 'text', 'Địa chỉ', 0, 1, 1, 1, 1, 1, '{}', 3),
(123, 15, 'email', 'text', 'Email', 0, 1, 1, 1, 1, 1, '{}', 4),
(124, 15, 'phone', 'text', 'Số điện thoại', 0, 1, 1, 1, 1, 1, '{}', 5),
(125, 15, 'content', 'text', 'Nội Dung', 0, 1, 1, 1, 1, 1, '{}', 6),
(126, 15, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(127, 15, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(128, 12, 'type', 'select_dropdown', 'Thể loại', 0, 1, 1, 1, 1, 1, '{\"default\":\"Gioi-thieu\",\"options\":{\"Gioi-thieu\":\"Gi\\u1edbi thi\\u1ec7u\",\"Chinh-sach\":\"Ch\\u00ednh s\\u00e1ch\"}}', 10),
(129, 16, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(130, 16, 'title', 'text', 'Tiêu đề', 0, 1, 1, 1, 1, 1, '{}', 2),
(131, 16, 'slug', 'text', 'Slug', 0, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:projects,slug\"}}', 3),
(132, 16, 'desc', 'text_area', 'Mô tả', 0, 0, 1, 1, 1, 1, '{}', 4),
(133, 16, 'content', 'rich_text_box', 'Nội Dung', 0, 0, 1, 1, 1, 1, '{}', 5),
(134, 16, 'image', 'image', 'Hình ảnh', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"100%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"70%\"},{\"name\":\"small\",\"scale\":\"70%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"370\",\"height\":\"293\"}}]}', 6),
(135, 16, 'status', 'select_dropdown', 'Trạng thái', 0, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"C\\u00f4ng khai\",\"DRAFT\":\"Nh\\u00e1p\",\"PENDING\":\"\\u0110ang duy\\u1ec7t\"}}', 7),
(136, 16, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 8),
(137, 16, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(138, 17, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(139, 17, 'name', 'text', 'Tên', 0, 1, 1, 1, 1, 1, '{}', 2),
(142, 17, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(143, 17, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(144, 4, 'promotional_price', 'number', 'Giá khuyến mại', 0, 0, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"}}', 6),
(145, 4, 'evaluate', 'select_dropdown', 'Số sao đánh giá', 0, 0, 1, 1, 1, 1, '{\"default\":\"5\",\"options\":{\"1\":\"1 sao\",\"2\":\"2 sao\",\"3\":\"3 sao\",\"4\":\"4 sao\",\"5\":\"5 sao\"}}', 14),
(146, 4, 'quantity_purchased', 'number', 'Số lượng đã bán', 0, 0, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"}}', 13),
(163, 17, 'email', 'text', 'Email', 0, 1, 1, 1, 1, 1, '{}', 3),
(164, 17, 'phone', 'text', 'Số điện thoại', 0, 1, 1, 1, 1, 1, '{}', 4),
(165, 17, 'address', 'text', 'Địa chỉ', 0, 1, 1, 1, 1, 1, '{}', 5),
(166, 17, 'products', 'text', 'Products', 0, 0, 0, 0, 0, 0, '{}', 6),
(167, 23, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(168, 23, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{}', 2),
(169, 23, 'avt', 'image', 'Avt', 0, 1, 1, 1, 1, 1, '{}', 3),
(170, 23, 'comment', 'text', 'Comment', 0, 1, 1, 1, 1, 1, '{}', 4),
(171, 23, 'rate', 'text', 'Rate', 0, 1, 1, 1, 1, 1, '{}', 5),
(172, 23, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(173, 23, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2023-11-08 20:36:12', '2023-11-08 20:36:12'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2023-11-08 20:36:12', '2023-11-08 20:36:12'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, NULL, '2023-11-08 20:36:12', '2023-11-08 20:36:12'),
(4, 'products', 'products', 'Sản phẩm', 'Sản phẩm', 'voyager-bag', 'App\\Product', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2023-11-08 20:36:12', '2023-11-16 22:43:04'),
(5, 'category', 'category', 'Category', 'Categories', 'voyager-categories', 'App\\Category', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2023-11-08 20:36:12', '2023-11-08 22:45:30'),
(6, 'coupons', 'coupons', 'Mã giảm giá', 'Mã giảm giá', 'voyager-buy', 'App\\Coupon', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2023-11-08 20:36:12', '2023-11-13 04:44:37'),
(7, 'tags', 'tags', 'Tag', 'Tags', 'voyager-tag', 'App\\Tag', NULL, '', '', 1, 0, NULL, '2023-11-08 20:36:12', '2023-11-08 20:36:12'),
(8, 'product_tag', 'product_tag', 'Product Tag', 'Products Tags', '', 'App\\ProductTag', NULL, '', '', 1, 0, NULL, '2023-11-08 20:36:12', '2023-11-08 20:36:12'),
(9, 'orders', 'orders', 'Đơn hàng', 'Đơn hàng', 'voyager-documentation', 'App\\Order', NULL, 'App\\Http\\Controllers\\Voyager\\OrdersController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2023-11-08 20:36:12', '2023-11-15 22:30:59'),
(10, 'visits', 'country_visits', 'Country Visit', 'Country Visits', 'voyager-documentation', 'App\\CountryVisit', '', NULL, '', 1, 0, NULL, '2023-11-08 20:36:12', '2023-11-08 20:36:12'),
(11, 'banners', 'banners', 'Banner', 'Banners', 'voyager-photos', 'App\\Banner', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-11-08 21:05:21', '2023-11-10 23:23:09'),
(12, 'pages', 'pages', 'Trang giới thiệu', 'Trang giới thiệu', 'voyager-file-text', 'App\\Page', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-11-08 21:14:37', '2023-11-15 19:48:10'),
(13, 'posts', 'posts', 'Bài viết', 'Bài viết', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2023-11-08 21:22:24', '2023-11-09 03:58:51'),
(14, 'categories', 'categories', 'Category', 'Categories', NULL, 'TCG\\Voyager\\Models\\Category', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2023-11-08 21:25:13', '2023-11-08 21:25:13'),
(15, 'contacts', 'contacts', 'Liên hệ', 'Liên hệ', 'voyager-thumbs-up', 'App\\Contact', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2023-11-10 03:49:46', '2023-11-10 03:49:46'),
(16, 'projects', 'projects', 'Dự án', 'Dự án', 'voyager-logbook', 'App\\Project', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2023-11-12 21:09:50', '2023-11-12 21:09:50'),
(17, 'partners', 'partners', 'Đối tác', 'Đối tác', 'voyager-world', 'App\\Partner', NULL, 'App\\Http\\Controllers\\Voyager\\PartnersController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-11-12 21:44:27', '2023-11-15 02:58:08'),
(23, 'comments', 'comments', 'Comment', 'Comments', NULL, 'App\\Comment', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2023-11-15 23:31:10', '2023-11-15 23:31:10');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2023-11-08 20:36:12', '2023-11-08 20:36:12'),
(2, 'main', '2023-11-08 20:36:12', '2023-11-08 20:36:12');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2023-11-08 20:36:12', '2023-11-08 20:36:12', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 11, '2023-11-08 20:36:12', '2023-11-12 21:44:41', 'voyager.media.index', NULL),
(3, 1, 'Tài khoản', '', '_self', 'voyager-person', '#000000', 35, 1, '2023-11-08 20:36:12', '2023-11-12 21:41:47', 'voyager.users.index', 'null'),
(4, 1, 'Phân quyền', '', '_self', 'voyager-lock', '#000000', 35, 2, '2023-11-08 20:36:12', '2023-11-12 21:41:48', 'voyager.roles.index', 'null'),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 12, '2023-11-08 20:36:12', '2023-11-12 21:44:41', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2023-11-08 20:36:12', '2023-11-08 20:53:37', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2023-11-08 20:36:12', '2023-11-08 20:53:37', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2023-11-08 20:36:12', '2023-11-08 20:53:37', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2023-11-08 20:36:12', '2023-11-08 20:53:38', 'voyager.bread.index', NULL),
(10, 1, 'Cấu hình website', '', '_self', 'voyager-settings', '#000000', NULL, 13, '2023-11-08 20:36:12', '2023-11-17 20:51:11', 'voyager.settings.index', 'null'),
(15, 1, 'Sản phẩm', '', '_self', 'voyager-bag', '#000000', 21, 2, '2023-11-08 20:36:12', '2023-11-08 20:55:00', 'voyager.products.index', 'null'),
(16, 1, 'Danh mục sản phẩm', '', '_self', 'voyager-categories', '#000000', 21, 1, '2023-11-08 20:36:12', '2023-11-08 20:54:44', 'voyager.category.index', 'null'),
(17, 1, 'Mã giảm giá', '', '_self', 'voyager-wand', '#000000', 21, 3, '2023-11-08 20:36:12', '2023-11-08 20:55:28', 'voyager.coupons.index', 'null'),
(18, 1, 'Tags', '', '_self', 'voyager-tag', NULL, 21, 4, '2023-11-08 20:36:12', '2023-11-14 02:18:26', 'voyager.tags.index', NULL),
(19, 1, 'Đơn hàng', '', '_self', 'voyager-documentation', '#000000', NULL, 4, '2023-11-08 20:36:12', '2023-11-15 03:19:06', 'voyager.orders.index', 'null'),
(21, 1, 'Quản lý sản phẩm', '', '_self', 'voyager-categories', '#000000', NULL, 6, '2023-11-08 20:54:10', '2023-11-15 03:19:15', NULL, ''),
(22, 1, 'Banners', '', '_self', 'voyager-photos', NULL, NULL, 2, '2023-11-08 21:05:22', '2023-11-08 21:10:13', 'voyager.banners.index', NULL),
(23, 1, 'Trang giới thiệu', '', '_self', 'voyager-file-text', NULL, NULL, 3, '2023-11-08 21:14:37', '2023-11-15 03:19:06', 'voyager.pages.index', NULL),
(24, 1, 'Bài viết', '', '_self', 'voyager-news', '#000000', 26, 2, '2023-11-08 21:22:24', '2023-11-08 21:27:22', 'voyager.posts.index', 'null'),
(25, 1, 'Danh mục bài viết', '', '_self', 'voyager-lock', '#000000', 26, 1, '2023-11-08 21:25:13', '2023-11-08 21:27:45', 'voyager.categories.index', 'null'),
(26, 1, 'Quản lý bài viết', '', '_self', 'voyager-categories', '#000000', NULL, 7, '2023-11-08 21:26:17', '2023-11-15 03:19:15', NULL, ''),
(27, 2, 'TRANG CHỦ', '/', '_self', NULL, '#000000', NULL, 1, '2023-11-09 01:56:06', '2023-11-09 01:56:13', NULL, ''),
(28, 2, 'GIỚI THIỆU', '/about/gioi-thieu', '_self', NULL, '#000000', NULL, 2, '2023-11-09 01:56:22', '2023-11-12 20:26:41', NULL, ''),
(29, 2, 'KIẾN THỨC', '/news', '_self', NULL, '#000000', NULL, 4, '2023-11-09 01:56:51', '2023-11-21 03:32:36', NULL, ''),
(30, 2, 'LIÊN HỆ', '/contact', '_self', NULL, '#000000', NULL, 7, '2023-11-09 01:57:14', '2023-11-12 20:48:58', NULL, ''),
(31, 1, 'Liên hệ', '', '_self', 'voyager-thumbs-up', NULL, NULL, 9, '2023-11-10 03:49:47', '2023-11-15 03:19:15', 'voyager.contacts.index', NULL),
(32, 2, 'DỰ ÁN', '/projects', '_self', NULL, '#000000', NULL, 5, '2023-11-12 20:48:31', '2023-11-12 21:20:24', NULL, ''),
(34, 1, 'Dự án', '', '_self', 'voyager-logbook', NULL, NULL, 8, '2023-11-12 21:09:50', '2023-11-15 03:19:15', 'voyager.projects.index', NULL),
(35, 1, 'Quản lý tài khoản', '', '_self', 'voyager-categories', '#000000', NULL, 10, '2023-11-12 21:41:39', '2023-11-12 21:44:41', NULL, ''),
(36, 1, 'Báo giá sỉ', '', '_self', 'voyager-world', '#000000', NULL, 5, '2023-11-12 21:44:28', '2023-11-16 22:35:59', 'voyager.partners.index', 'null'),
(37, 2, 'BÁO GIÁ', '/bao-gia', '_self', NULL, '#000000', NULL, 6, '2023-11-13 22:47:20', '2023-11-13 22:47:31', NULL, ''),
(43, 1, 'Comments', '', '_self', NULL, NULL, 26, 3, '2023-11-15 23:31:10', '2023-11-16 22:35:52', 'voyager.comments.index', NULL),
(45, 2, 'Hạt giống Xà Lách Baby ăn non', '/products/hat-giong-xa-lach-baby-an-non', '_self', NULL, '#000000', 11, 2, '2023-11-21 03:07:30', '2023-11-21 03:07:33', NULL, ''),
(46, 2, 'Hạt giống đậu bắp xanh giống mới', '/products/hat-giong-dau-bap-xanh', '_self', NULL, '#000000', 11, 3, '2023-11-21 03:08:03', '2023-11-21 03:08:07', NULL, ''),
(47, 2, 'Hạt giống cà chua bi lùn', '/products/hat-giong-ca-chua-bi-lun', '_self', NULL, '#000000', 11, 4, '2023-11-21 03:08:30', '2023-11-21 03:08:34', NULL, ''),
(48, 2, 'SẢN PHẨM', '/products', '_self', NULL, '#000000', NULL, 3, '2023-11-21 03:32:31', '2023-11-21 03:32:36', NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1),
(24, '2019_10_16_185424_create_products_table', 1),
(25, '2019_10_17_195112_create_categories_table', 1),
(26, '2019_10_17_195227_add_category_id_to_products_table', 1),
(27, '2019_10_18_002421_create_coupons_table', 1),
(28, '2019_10_19_145706_add_images_column_to_products', 1),
(29, '2019_10_20_114921_create_tags_table', 1),
(30, '2019_10_20_115306_create_products_tags_table', 1),
(31, '2019_10_22_185425_create_orders_table', 1),
(32, '2019_10_22_190613_create_order_product_table', 1),
(33, '2019_11_09_002942_add_quantity_to_products_table', 1),
(34, '2020_06_27_012504_create_visits_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `billing_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_province` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_postalcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_name_on_card` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_discount` int(11) NOT NULL DEFAULT 0,
  `billing_discount_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_subtotal` int(11) NOT NULL,
  `billing_tax` int(11) NOT NULL,
  `billing_total` int(11) NOT NULL,
  `payment_gateway` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'stripe',
  `shipped` tinyint(1) NOT NULL DEFAULT 0,
  `error` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `billing_email`, `billing_name`, `billing_address`, `billing_city`, `billing_province`, `billing_postalcode`, `billing_phone`, `billing_name_on_card`, `billing_discount`, `billing_discount_code`, `billing_subtotal`, `billing_tax`, `billing_total`, `payment_gateway`, `shipped`, `error`, `created_at`, `updated_at`) VALUES
(43, 1, 'nguyenquanghai@gmail.com', 'Nguyễn Quang hải', 'Mỹ hà', 'Lạng Giang', 'Bắc Giang', '1234', '0359808567', 'abc', 0, NULL, 90000, 0, 90000, 'stripe', 0, NULL, '2023-11-12 22:03:07', '2023-11-17 20:19:17'),
(56, NULL, 'thanhnam.vip88@taomaytinh.com', 'Nam Nguyễn Thành', 'Khu đô thị Hồng Vũ Phường Thắng Lợi', 'Sông Công', 'Thái Nguyên', '1234', '0374700292', 'abc', 0, NULL, 45000, 0, 45000, 'stripe', 1, NULL, '2023-11-15 10:49:02', '2023-11-17 20:19:33'),
(61, NULL, 'test@gmail.com', 'huy van', '121212', 'ádf', 'ád', '1234', '0827661575', 'abc', 0, NULL, 29000, 0, 29000, 'stripe', 0, NULL, '2023-11-17 02:10:51', '2023-11-17 02:10:51'),
(62, 1, 'test@gmail.com', 'Nguyễn Thị Hoa', 'Kha Sơn', 'Phú Bình', 'Thái Nguyên', '1234', '0397726264', 'abc', 0, NULL, 369000, 0, 369000, 'stripe', 0, NULL, '2023-11-17 20:21:39', '2023-11-17 20:21:39'),
(67, 1, 'test@gmail.com', 'Nguyen Quang Hai', 'Thái Nguyên', 'Thai Nguyen city', 'Thai Nguyen city', '1234', '0359808267', 'abc', 0, NULL, 143000, 0, 143000, 'stripe', 0, NULL, '2023-11-23 05:06:32', '2023-11-23 05:06:32'),
(68, NULL, 'test@gmail.com', 'Nguyen Quang Hai', 'My Ha', 'Lang Giang', 'Bac Giang', '1234', '0359808267', 'abc', 0, NULL, 140000, 0, 140000, 'stripe', 0, NULL, '2023-11-30 04:22:55', '2023-11-30 04:22:55');

-- --------------------------------------------------------

--
-- Table structure for table `order_product`
--

CREATE TABLE `order_product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `quantity` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_product`
--

INSERT INTO `order_product` (`id`, `product_id`, `order_id`, `quantity`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, 1, '2023-11-08 20:36:12', '2023-11-08 20:36:12'),
(2, NULL, NULL, 2, '2023-11-08 20:36:12', '2023-11-08 20:36:12'),
(3, NULL, NULL, 3, '2023-11-08 20:36:12', '2023-11-08 20:36:12'),
(4, NULL, NULL, 1, '2023-11-08 20:36:12', '2023-11-08 20:36:12'),
(5, NULL, NULL, 3, '2023-11-08 20:36:12', '2023-11-08 20:36:12'),
(6, NULL, NULL, 2, '2023-11-08 20:36:12', '2023-11-08 20:36:12'),
(7, NULL, NULL, 1, '2023-11-08 20:36:12', '2023-11-08 20:36:12'),
(8, NULL, NULL, 3, '2023-11-08 20:36:12', '2023-11-08 20:36:12'),
(9, NULL, NULL, 1, '2023-11-08 20:36:12', '2023-11-08 20:36:12'),
(10, NULL, NULL, 2, '2023-11-08 20:36:12', '2023-11-08 20:36:12'),
(11, NULL, NULL, 3, '2023-11-08 20:36:12', '2023-11-08 20:36:12'),
(12, NULL, NULL, 1, '2023-11-08 20:36:12', '2023-11-08 20:36:12'),
(13, NULL, NULL, 2, '2023-11-08 20:36:12', '2023-11-08 20:36:12'),
(14, NULL, NULL, 1, '2023-11-08 20:36:12', '2023-11-08 20:36:12'),
(15, NULL, NULL, 2, '2023-11-08 20:36:12', '2023-11-08 20:36:12'),
(16, NULL, NULL, 2, '2023-11-08 20:36:12', '2023-11-08 20:36:12'),
(17, NULL, NULL, 1, '2023-11-08 20:36:12', '2023-11-08 20:36:12'),
(18, NULL, NULL, 3, '2023-11-08 20:36:12', '2023-11-08 20:36:12'),
(19, NULL, NULL, 2, '2023-11-08 20:36:12', '2023-11-08 20:36:12'),
(20, NULL, NULL, 2, '2023-11-08 20:36:12', '2023-11-08 20:36:12'),
(21, NULL, NULL, 3, '2023-11-08 20:36:13', '2023-11-08 20:36:13'),
(22, NULL, NULL, 1, '2023-11-08 20:36:13', '2023-11-08 20:36:13'),
(23, NULL, NULL, 3, '2023-11-08 20:36:13', '2023-11-08 20:36:13'),
(24, NULL, NULL, 2, '2023-11-08 20:36:13', '2023-11-08 20:36:13'),
(25, NULL, NULL, 1, '2023-11-08 20:36:13', '2023-11-08 20:36:13'),
(26, NULL, NULL, 1, '2023-11-08 20:36:13', '2023-11-08 20:36:13'),
(27, NULL, NULL, 3, '2023-11-08 20:36:13', '2023-11-08 20:36:13'),
(28, NULL, NULL, 2, '2023-11-08 20:36:13', '2023-11-08 20:36:13'),
(29, NULL, NULL, 2, '2023-11-08 20:36:13', '2023-11-08 20:36:13'),
(30, NULL, NULL, 1, '2023-11-08 20:36:13', '2023-11-08 20:36:13'),
(31, NULL, NULL, 1, '2023-11-08 20:39:15', '2023-11-08 20:39:15'),
(32, NULL, NULL, 1, '2023-11-08 20:40:12', '2023-11-08 20:40:12'),
(33, NULL, NULL, 1, '2023-11-08 20:40:12', '2023-11-08 20:40:12'),
(34, NULL, NULL, 1, '2023-11-08 20:44:46', '2023-11-08 20:44:46'),
(35, NULL, NULL, 9, '2023-11-08 20:45:40', '2023-11-08 20:45:40'),
(36, NULL, NULL, 1, '2023-11-08 22:17:45', '2023-11-08 22:17:45'),
(37, NULL, NULL, 1, '2023-11-08 22:17:45', '2023-11-08 22:17:45'),
(38, 123, NULL, 1, '2023-11-08 23:19:47', '2023-11-08 23:19:47'),
(39, 125, NULL, 1, '2023-11-10 05:09:44', '2023-11-10 05:09:44'),
(40, 126, NULL, 1, '2023-11-10 05:11:12', '2023-11-10 05:11:12'),
(41, 124, NULL, 1, '2023-11-10 20:38:51', '2023-11-10 20:38:51'),
(42, 126, NULL, 1, '2023-11-10 20:38:51', '2023-11-10 20:38:51'),
(43, 124, NULL, 1, '2023-11-10 20:39:04', '2023-11-10 20:39:04'),
(44, 126, NULL, 1, '2023-11-10 20:39:04', '2023-11-10 20:39:04'),
(45, 123, NULL, 1, '2023-11-10 20:40:32', '2023-11-10 20:40:32'),
(46, 123, NULL, 1, '2023-11-10 20:43:19', '2023-11-10 20:43:19'),
(47, 123, NULL, 1, '2023-11-10 20:46:50', '2023-11-10 20:46:50'),
(48, 123, NULL, 1, '2023-11-10 20:47:07', '2023-11-10 20:47:07'),
(49, 124, NULL, 1, '2023-11-10 20:54:23', '2023-11-10 20:54:23'),
(50, 123, NULL, 1, '2023-11-10 22:44:04', '2023-11-10 22:44:04'),
(51, 123, NULL, 1, '2023-11-10 22:46:04', '2023-11-10 22:46:04'),
(52, 126, NULL, 1, '2023-11-10 22:50:37', '2023-11-10 22:50:37'),
(53, 122, NULL, 1, '2023-11-10 22:53:01', '2023-11-10 22:53:01'),
(54, 122, NULL, 1, '2023-11-10 22:53:25', '2023-11-10 22:53:25'),
(55, 125, NULL, 1, '2023-11-10 23:08:38', '2023-11-10 23:08:38'),
(56, 123, NULL, 1, '2023-11-10 23:12:39', '2023-11-10 23:12:39'),
(57, 125, NULL, 1, '2023-11-10 23:27:55', '2023-11-10 23:27:55'),
(58, 122, NULL, 1, '2023-11-11 02:21:29', '2023-11-11 02:21:29'),
(59, 126, NULL, 9, '2023-11-11 03:13:00', '2023-11-11 03:13:00'),
(60, 122, NULL, 4, '2023-11-11 03:13:00', '2023-11-11 03:13:00'),
(61, 125, NULL, 8, '2023-11-11 03:13:00', '2023-11-11 03:13:00'),
(62, 123, NULL, 1, '2023-11-11 03:35:17', '2023-11-11 03:35:17'),
(63, 123, NULL, 1, '2023-11-11 03:38:31', '2023-11-11 03:38:31'),
(64, 124, NULL, 1, '2023-11-11 03:40:06', '2023-11-11 03:40:06'),
(65, 123, NULL, 6, '2023-11-11 03:40:06', '2023-11-11 03:40:06'),
(66, 125, NULL, 4, '2023-11-11 03:43:26', '2023-11-11 03:43:26'),
(67, 124, NULL, 1, '2023-11-11 03:43:26', '2023-11-11 03:43:26'),
(68, 125, NULL, 3, '2023-11-11 03:51:35', '2023-11-11 03:51:35'),
(69, 128, NULL, 2, '2023-11-11 06:46:57', '2023-11-11 06:46:57'),
(70, 129, NULL, 2, '2023-11-12 20:09:55', '2023-11-12 20:09:55'),
(71, 129, 43, 2, '2023-11-12 22:03:07', '2023-11-12 22:03:07'),
(72, 129, NULL, 2, '2023-11-12 22:40:27', '2023-11-12 22:40:27'),
(73, 125, NULL, 1, '2023-11-12 22:40:27', '2023-11-12 22:40:27'),
(74, 126, NULL, 5, '2023-11-12 22:46:26', '2023-11-12 22:46:26'),
(75, 126, NULL, 1, '2023-11-12 22:48:31', '2023-11-12 22:48:31'),
(76, 129, NULL, 1, '2023-11-12 22:51:58', '2023-11-12 22:51:58'),
(77, 123, NULL, 5, '2023-11-12 22:51:58', '2023-11-12 22:51:58'),
(78, 125, NULL, 1, '2023-11-12 22:51:58', '2023-11-12 22:51:58'),
(79, 126, NULL, 1, '2023-11-12 22:51:58', '2023-11-12 22:51:58'),
(80, 126, NULL, 9, '2023-11-12 22:54:00', '2023-11-12 22:54:00'),
(81, 128, NULL, 1, '2023-11-13 01:56:13', '2023-11-13 01:56:13'),
(82, 124, NULL, 9, '2023-11-13 03:25:03', '2023-11-13 03:25:03'),
(83, 129, NULL, 2, '2023-11-14 20:15:17', '2023-11-14 20:15:17'),
(84, 127, NULL, 3, '2023-11-15 03:28:24', '2023-11-15 03:28:24'),
(85, 122, NULL, 1, '2023-11-15 03:56:08', '2023-11-15 03:56:08'),
(86, 123, NULL, 2, '2023-11-15 03:56:45', '2023-11-15 03:56:45'),
(87, 123, NULL, 1, '2023-11-15 04:06:03', '2023-11-15 04:06:03'),
(88, 129, NULL, 1, '2023-11-15 04:06:03', '2023-11-15 04:06:03'),
(89, 129, 56, 1, '2023-11-15 10:49:02', '2023-11-15 10:49:02'),
(90, 123, NULL, 1, '2023-11-15 20:45:25', '2023-11-15 20:45:25'),
(91, 125, NULL, 2, '2023-11-15 22:30:19', '2023-11-15 22:30:19'),
(92, 124, NULL, 1, '2023-11-16 07:14:06', '2023-11-16 07:14:06'),
(93, 134, NULL, 6, '2023-11-16 21:39:53', '2023-11-16 21:39:53'),
(94, 137, 61, 1, '2023-11-17 02:10:51', '2023-11-17 02:10:51'),
(95, 122, 62, 3, '2023-11-17 20:21:39', '2023-11-17 20:21:39'),
(96, 136, 62, 3, '2023-11-17 20:21:39', '2023-11-17 20:21:39'),
(97, 125, 62, 5, '2023-11-17 20:21:39', '2023-11-17 20:21:39'),
(98, 129, 62, 2, '2023-11-17 20:21:40', '2023-11-17 20:21:40'),
(99, 125, NULL, 2, '2023-11-22 02:00:12', '2023-11-22 02:00:12'),
(100, 132, NULL, 7, '2023-11-22 02:00:12', '2023-11-22 02:00:12'),
(101, 138, NULL, 3, '2023-11-22 03:38:56', '2023-11-22 03:38:56'),
(102, 130, NULL, 1, '2023-11-22 03:38:56', '2023-11-22 03:38:56'),
(103, 135, NULL, 1, '2023-11-23 04:59:55', '2023-11-23 04:59:55'),
(104, 127, NULL, 1, '2023-11-23 05:02:55', '2023-11-23 05:02:55'),
(105, 130, 67, 1, '2023-11-23 05:06:32', '2023-11-23 05:06:32'),
(106, 138, 67, 1, '2023-11-23 05:06:32', '2023-11-23 05:06:32'),
(107, 132, 67, 1, '2023-11-23 05:06:32', '2023-11-23 05:06:32'),
(108, 131, 67, 1, '2023-11-23 05:06:32', '2023-11-23 05:06:32'),
(109, 133, 67, 1, '2023-11-23 05:06:32', '2023-11-23 05:06:32'),
(110, 139, 68, 1, '2023-11-30 04:22:55', '2023-11-30 04:22:55');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`, `type`) VALUES
(1, 'GIỚI THIỆU VỀ CÂY TRỒNG TRONG PHỐ GIFV', 'GIFV là đơn vị tiên phong nghiên cứu, ứng dụng công nghệ và cung cấp các thiết bị vật tư thuỷ canh hàng đầu tại Việt Nam. Sau hơn 4 năm đi vào hoạt động, chúng tôi vinh dự trở thành sự lựa chọn tin cậy của hơn 10.000+ hộ gia đình trên khắp cả nước. Với slogan cùng bạn gieo trồng yêu thương, GIFV luôn làm việc bằng cả trái tim để đem đến cho khách hàng các sản phẩm, dịch vụ tốt nhất và nhất chất lượng.', '<p>GIFV tự h&agrave;o l&agrave; một trong những đơn vị ti&ecirc;n phong trong lĩnh vực trồng rau thủy canh, cung cấp thiết bị, dung dịch dinh dưỡng v&agrave; thi c&ocirc;ng trọn g&oacute;i hệ thống trồng rau thủy canh. L&agrave; doanh nghiệp c&oacute; nhiều năm kinh nghiệm về lĩnh vực ph&aacute;t triển m&ocirc; h&igrave;nh trồng rau thủy canh tại nh&agrave;, phục vụ ph&aacute;t triển n&ocirc;ng nghiệp đ&ocirc; thị, n&acirc;ng tầm v&agrave; định hướng thay đổi c&aacute;c phương ph&aacute;p trồng rau truyền thống.</p>\r\n<p><strong>LĨNH VỰC HOẠT ĐỘNG</strong><br>- Ph&acirc;n phối thiết bị, dung dịch, gi&aacute; thể trồng rau thủy canh.<br>- Sản xuất &ndash; cung cấp vật tư dụng cụ trồng rau thủy canh ph&aacute;t triển theo m&ocirc; h&igrave;nh trang trại thương mại.<br>- Tư vấn thiết kế, lắp đặt trọn g&oacute;i m&ocirc; h&igrave;nh trồng rau thủy canh nh&agrave; phố tại tphcm v&agrave; c&aacute;c tỉnh th&agrave;nh l&acirc;n cận.<br>- Cung cấp c&acirc;y con &ndash; c&acirc;y giống rau c&aacute;c loại.<br>- Chuyển giao c&ocirc;ng nghệ &ndash; kỹ thuật trồng rau thủy canh<br><strong>MỤC TI&Ecirc;U</strong><br>Phổ th&ocirc;ng phương ph&aacute;p trồng rau thủy canh đến nh&agrave; nh&agrave;, người người; Đồng thời gi&uacute;p thay đổi phương thức canh t&aacute;c N&ocirc;ng nghiệp truyền thống v&agrave; cảnh quan xanh cho gia đ&igrave;nh. GIFV mong muốn đưa m&ocirc; h&igrave;nh trồng rau thủy canh đến với kh&aacute;ch h&agrave;ng nh&agrave; phố như một xu hướng tất yếu trong cuộc sống hiện đại. Kh&ocirc;ng những đem lại nhiều lợi &iacute;ch từ gi&agrave;n rau sạch thủy canh m&agrave; c&ograve;n tạo th&ecirc;m kh&ocirc;ng gian để gia đ&igrave;nh thư gi&atilde;n, c&ugrave;ng sinh hoạt v&agrave; gắn kết hơn.</p>', 'pages/November2023/y52O172UHZ7CtW9QIA6t.jpg', 'gioi-thieu', 'Xuất phát từ niềm đam mê trang trí cây cảnh và mong muốn mang thiên nhiên đến từng không gian sống trong ngôi nhà của mỗi người', 'Xuất phát từ niềm đam mê trang trí cây cảnh và mong muốn mang thiên nhiên đến từng không gian sống trong ngôi nhà của mỗi người', 'ACTIVE', '2023-11-08 21:37:00', '2023-11-15 19:50:05', 'Gioi-thieu'),
(2, 'Điều khoản dịch vụ', NULL, '<div class=\"description\">Khi qu&yacute; kh&aacute;ch truy cập v&agrave;o trang web của ch&uacute;ng t&ocirc;i c&oacute; nghĩa l&agrave; qu&yacute; kh&aacute;ch đồng &yacute; với c&aacute;c điều khoản n&agrave;y. Trang web c&oacute; quyền thay đổi, chỉnh sửa, th&ecirc;m hoặc lược bỏ bất kỳ phần n&agrave;o trong Quy định v&agrave; Điều kiện sử dụng, v&agrave;o bất cứ l&uacute;c n&agrave;o. C&aacute;c thay đổi c&oacute; hiệu lực ngay khi được đăng tr&ecirc;n trang web m&agrave; kh&ocirc;ng cần th&ocirc;ng b&aacute;o trước. V&agrave; khi qu&yacute; kh&aacute;ch tiếp tục sử dụng trang web, sau khi c&aacute;c thay đổi về quy định v&agrave; điều kiện được đăng tải, c&oacute; nghĩa l&agrave; qu&yacute; kh&aacute;ch chấp nhận với những thay đổi đ&oacute;.</div>\r\n<div class=\"content\">\r\n<div>\r\n<div>Khi qu&yacute; kh&aacute;ch truy cập v&agrave;o trang web của ch&uacute;ng t&ocirc;i c&oacute; nghĩa l&agrave; qu&yacute; kh&aacute;ch đồng &yacute; với c&aacute;c điều khoản n&agrave;y. Trang web c&oacute; quyền thay đổi, chỉnh sửa, th&ecirc;m hoặc lược bỏ bất kỳ phần n&agrave;o trong Quy định v&agrave; Điều kiện sử dụng, v&agrave;o bất cứ l&uacute;c n&agrave;o. C&aacute;c thay đổi c&oacute; hiệu lực ngay khi được đăng tr&ecirc;n trang web m&agrave; kh&ocirc;ng cần th&ocirc;ng b&aacute;o trước. V&agrave; khi qu&yacute; kh&aacute;ch tiếp tục sử dụng trang web, sau khi c&aacute;c thay đổi về quy định v&agrave; điều kiện được đăng tải, c&oacute; nghĩa l&agrave; qu&yacute; kh&aacute;ch chấp nhận với những thay đổi đ&oacute;.</div>\r\n<div>Qu&yacute; kh&aacute;ch vui l&ograve;ng kiểm tra thường xuy&ecirc;n để cập nhật những thay đổi của ch&uacute;ng t&ocirc;i.</div>\r\n<div><strong>1. Hướng dẫn sử dụng web</strong></div>\r\n<div>- Khi v&agrave;o web của ch&uacute;ng t&ocirc;i, người d&ugrave;ng tối thiểu phải 18 tuổi hoặc truy cập dưới sự gi&aacute;m s&aacute;t của cha mẹ hay người gi&aacute;m hộ hợp ph&aacute;p.</div>\r\n<div>- Ch&uacute;ng t&ocirc;i cấp giấy ph&eacute;p sử dụng để bạn c&oacute; thể mua sắm tr&ecirc;n web trong khu&ocirc;n khổ điều khoản v&agrave; điều kiện sử dụng đ&atilde; đề ra.</div>\r\n<div>- Nghi&ecirc;m cấm sử dụng bất kỳ phần n&agrave;o của trang web n&agrave;y với mục đ&iacute;ch thương mại hoặc nh&acirc;n danh bất kỳ đối t&aacute;c thứ ba n&agrave;o nếu kh&ocirc;ng được ch&uacute;ng t&ocirc;i cho ph&eacute;p bằng văn bản. Nếu vi phạm bất cứ điều n&agrave;o trong đ&acirc;y, ch&uacute;ng t&ocirc;i sẽ hủy giấy ph&eacute;p của bạn m&agrave; kh&ocirc;ng cần b&aacute;o trước.</div>\r\n<div>- Trang web n&agrave;y chỉ d&ugrave;ng để cung cấp th&ocirc;ng tin sản phẩm chứ ch&uacute;ng t&ocirc;i kh&ocirc;ng phải nh&agrave; sản xuất n&ecirc;n những nhận x&eacute;t hiển thị tr&ecirc;n web l&agrave; &yacute; kiến c&aacute; nh&acirc;n của kh&aacute;ch h&agrave;ng, kh&ocirc;ng phải của ch&uacute;ng t&ocirc;i.</div>\r\n<div>- Trong suốt qu&aacute; tr&igrave;nh đặt dịch vụ, qu&yacute; kh&aacute;ch đồng &yacute; nhận email quảng c&aacute;o từ website. Sau đ&oacute;, nếu kh&ocirc;ng muốn tiếp tục nhận mail, qu&yacute; kh&aacute;ch c&oacute; thể từ chối bằng c&aacute;ch nhấp v&agrave;o đường link ở dưới c&ugrave;ng trong mọi email quảng c&aacute;o.</div>\r\n<div><strong>2. Chấp nhận đơn h&agrave;ng v&agrave; gi&aacute; cả</strong></div>\r\n<div>- Ch&uacute;ng t&ocirc;i c&oacute; quyền từ chối hoặc hủy đơn h&agrave;ng của qu&yacute; kh&aacute;ch v&igrave; bất kỳ l&yacute; do g&igrave; v&agrave;o bất kỳ l&uacute;c n&agrave;o. Ch&uacute;ng t&ocirc;i c&oacute; thể hỏi th&ecirc;m về số điện thoại v&agrave; địa chỉ trước khi nhận đơn h&agrave;ng.</div>\r\n<div>- Ch&uacute;ng t&ocirc;i cam kết sẽ cung cấp th&ocirc;ng tin gi&aacute; cả ch&iacute;nh x&aacute;c nhất cho người ti&ecirc;u d&ugrave;ng. Tuy nhi&ecirc;n, đ&ocirc;i l&uacute;c vẫn c&oacute; sai s&oacute;t xảy ra, v&iacute; dụ như trường hợp gi&aacute; dịch vụ kh&ocirc;ng hiển thị ch&iacute;nh x&aacute;c tr&ecirc;n trang web hoặc sai gi&aacute;, t&ugrave;y theo từng trường hợp ch&uacute;ng t&ocirc;i sẽ li&ecirc;n hệ hướng dẫn hoặc th&ocirc;ng b&aacute;o hủy dịch vụ đ&oacute; cho qu&yacute; kh&aacute;ch. Ch&uacute;ng t&ocirc;i cũng c&oacute; quyền từ chối hoặc hủy bỏ bất kỳ dịch vụ n&agrave;o d&ugrave; dịch vụ đ&oacute; đ&atilde; hay chưa được x&aacute;c nhận hoặc đ&atilde; bị thanh to&aacute;n.</div>\r\n<div><strong>3. Thương hiệu v&agrave; bản quyền</strong></div>\r\n<div>- Mọi quyền sở hữu tr&iacute; tuệ (đ&atilde; đăng k&yacute; hoặc chưa đăng k&yacute;), nội dung th&ocirc;ng tin v&agrave; tất cả c&aacute;c thiết kế, văn bản, đồ họa, phần mềm, h&igrave;nh ảnh, video, &acirc;m nhạc, &acirc;m thanh, bi&ecirc;n dịch phần mềm, m&atilde; nguồn v&agrave; phần mềm cơ bản đều l&agrave; t&agrave;i sản của ch&uacute;ng t&ocirc;i. To&agrave;n bộ nội dung của trang web được bảo vệ bởi luật bản quyền của Việt Nam v&agrave; c&aacute;c c&ocirc;ng ước quốc tế. Bản quyền đ&atilde; được bảo lưu.</div>\r\n<div><strong>4. Quyền ph&aacute;p l&yacute;</strong></div>\r\n<div>- C&aacute;c điều kiện, điều khoản v&agrave; nội dung của trang web n&agrave;y được điều chỉnh bởi luật ph&aacute;p Việt Nam v&agrave; T&ograve;a &aacute;n c&oacute; thẩm quyền tại Việt Nam sẽ giải quyết bất kỳ tranh chấp n&agrave;o ph&aacute;t sinh từ việc sử dụng tr&aacute;i ph&eacute;p trang web n&agrave;y.</div>\r\n<div><strong>5. Quy định về bảo mật</strong></div>\r\n<div>- Trang web của ch&uacute;ng t&ocirc;i coi trọng việc bảo mật th&ocirc;ng tin v&agrave; sử dụng c&aacute;c biện ph&aacute;p tốt nhất bảo vệ th&ocirc;ng tin v&agrave; việc thanh to&aacute;n của qu&yacute; kh&aacute;ch. Th&ocirc;ng tin của qu&yacute; kh&aacute;ch trong qu&aacute; tr&igrave;nh thanh to&aacute;n sẽ được m&atilde; h&oacute;a để đảm bảo an to&agrave;n. Sau khi qu&yacute; kh&aacute;ch ho&agrave;n th&agrave;nh qu&aacute; tr&igrave;nh đặt dịch vụ, qu&yacute; kh&aacute;ch sẽ tho&aacute;t khỏi chế độ an to&agrave;n.</div>\r\n<div>- Qu&yacute; kh&aacute;ch kh&ocirc;ng được sử dụng bất kỳ chương tr&igrave;nh, c&ocirc;ng cụ hay h&igrave;nh thức n&agrave;o kh&aacute;c để can thiệp v&agrave;o hệ thống hay l&agrave;m thay đổi cấu tr&uacute;c dữ liệu. Trang web cũng nghi&ecirc;m cấm việc ph&aacute;t t&aacute;n, truyền b&aacute; hay cổ vũ cho bất kỳ hoạt động n&agrave;o nhằm can thiệp, ph&aacute; hoại hay x&acirc;m nhập v&agrave;o dữ liệu của hệ thống. C&aacute; nh&acirc;n hay tổ chức vi phạm sẽ bị tước bỏ mọi quyền lợi cũng như sẽ bị truy tố trước ph&aacute;p luật nếu cần thiết.</div>\r\n<div>- Mọi th&ocirc;ng tin giao dịch sẽ được bảo mật nhưng trong trường hợp cơ quan ph&aacute;p luật y&ecirc;u cầu, ch&uacute;ng t&ocirc;i sẽ buộc phải cung cấp những th&ocirc;ng tin n&agrave;y cho c&aacute;c cơ quan ph&aacute;p luật.</div>\r\n</div>\r\n</div>', 'pages/November2023/5TnWLuHqDOPi2eVbczxR.jpg', 'dieu-khoan-va-dich-vu', NULL, NULL, 'ACTIVE', '2023-11-10 22:10:00', '2023-11-12 21:34:40', 'Chinh-sach'),
(3, 'Chính sách bảo mật', NULL, '<div class=\"description\">Ch&uacute;ng t&ocirc;i thu thập v&agrave; sử dụng th&ocirc;ng tin c&aacute; nh&acirc;n bạn với mục đ&iacute;ch ph&ugrave; hợp v&agrave; ho&agrave;n to&agrave;n tu&acirc;n thủ nội dung của \"Ch&iacute;nh s&aacute;ch bảo mật\" n&agrave;y. Khi cần thiết, ch&uacute;ng t&ocirc;i c&oacute; thể sử dụng những th&ocirc;ng tin n&agrave;y để li&ecirc;n hệ trực tiếp với bạn dưới c&aacute;c h&igrave;nh thức như: Hotline, hỗ trợ trực tuyến, thư cảm ơn, th&ocirc;ng tin về kỹ thuật v&agrave; bảo mật...</div>\r\n<div class=\"content\">\r\n<div><strong>Ch&iacute;nh s&aacute;ch bảo mật</strong><br><strong>1. Mục đ&iacute;ch v&agrave; phạm vi thu thập th&ocirc;ng tin:</strong></div>\r\n<div>Để truy cập v&agrave; sử dụng một số dịch vụ tại website, bạn c&oacute; thể sẽ được y&ecirc;u cầu đăng k&yacute; với ch&uacute;ng t&ocirc;i th&ocirc;ng tin c&aacute; nh&acirc;n (Email, Họ t&ecirc;n, Số ĐT li&ecirc;n lạc&hellip;). Mọi th&ocirc;ng tin khai b&aacute;o phải đảm bảo t&iacute;nh ch&iacute;nh x&aacute;c v&agrave; hợp ph&aacute;p. Ch&uacute;ng t&ocirc;i kh&ocirc;ng chịu mọi tr&aacute;ch nhiệm li&ecirc;n quan đến ph&aacute;p luật của th&ocirc;ng tin khai b&aacute;o.</div>\r\n<div>Ch&uacute;ng t&ocirc;i thu thập v&agrave; sử dụng th&ocirc;ng tin c&aacute; nh&acirc;n bạn với mục đ&iacute;ch ph&ugrave; hợp v&agrave; ho&agrave;n to&agrave;n tu&acirc;n thủ nội dung của \"Ch&iacute;nh s&aacute;ch bảo mật\" n&agrave;y. Khi cần thiết, ch&uacute;ng t&ocirc;i c&oacute; thể sử dụng những th&ocirc;ng tin n&agrave;y để li&ecirc;n hệ trực tiếp với bạn dưới c&aacute;c h&igrave;nh thức như: Hotline, hỗ trợ trực tuyến, thư cảm ơn, th&ocirc;ng tin về kỹ thuật v&agrave; bảo mật...</div>\r\n<div>Trong một số trường hợp, ch&uacute;ng t&ocirc;i c&oacute; thể thu&ecirc; một đơn vị độc lập để tiến h&agrave;nh c&aacute;c dự &aacute;n nghi&ecirc;n cứu thị trường v&agrave; khi đ&oacute; th&ocirc;ng tin của bạn sẽ được cung cấp cho đơn vị n&agrave;y để tiến h&agrave;nh dự &aacute;n. B&ecirc;n thứ ba n&agrave;y sẽ bị r&agrave;ng buộc bởi một thỏa thuận về bảo mật m&agrave; theo đ&oacute; họ chỉ được ph&eacute;p sử dụng những th&ocirc;ng tin được cung cấp cho mục đ&iacute;ch ho&agrave;n th&agrave;nh dự &aacute;n.</div>\r\n<div><strong>2. Phạm vi sử dụng th&ocirc;ng tin:</strong></div>\r\n<div>- Website thu thập v&agrave; sử dụng th&ocirc;ng tin c&aacute; nh&acirc;n qu&yacute; kh&aacute;ch với mục đ&iacute;ch ph&ugrave; hợp v&agrave; ho&agrave;n to&agrave;n tu&acirc;n thủ nội dung của &ldquo;Ch&iacute;nh s&aacute;ch bảo mật&rdquo; n&agrave;y.</div>\r\n<div>- Khi cần thiết, ch&uacute;ng t&ocirc;i c&oacute; thể sử dụng những th&ocirc;ng tin n&agrave;y để li&ecirc;n hệ trực tiếp với bạn dưới c&aacute;c h&igrave;nh thức như: Hotline, hỗ trợ trực tuyến, thư cảm ơn, th&ocirc;ng tin về kỹ thuật v&agrave; bảo mật, qu&yacute; kh&aacute;ch c&oacute; thể nhận được thư định kỳ cung cấp th&ocirc;ng tin sản phẩm, dịch vụ mới, th&ocirc;ng tin về c&aacute;c sự kiện sắp tới hoặc th&ocirc;ng tin tuyển dụng nếu qu&yacute; kh&aacute;ch đăng k&iacute; nhận email th&ocirc;ng b&aacute;o.</div>\r\n<div><strong>3. Thời gian lưu trữ th&ocirc;ng tin:</strong></div>\r\n<div>Ngoại trừ c&aacute;c trường hợp về sử dụng th&ocirc;ng tin c&aacute; nh&acirc;n như đ&atilde; n&ecirc;u trong ch&iacute;nh s&aacute;ch n&agrave;y, ch&uacute;ng t&ocirc;i</div>\r\n</div>', 'pages/November2023/Nya9FA91LDVgLq70KL7k.jpg', 'chinh-sach-bao-mat', NULL, NULL, 'ACTIVE', '2023-11-10 22:11:00', '2023-11-12 21:35:07', 'Chinh-sach'),
(4, 'Chính sách đổi trả', NULL, '<p>Điều kiện được đổi h&agrave;ng:<br>H&agrave;ng kh&ocirc;ng đ&uacute;ng chủng loại, mẫu m&atilde; như trong đơn đặt h&agrave;ng.<br>Sản phẩm chưa đưa đến tay kh&aacute;ch h&agrave;ng sử dụng nhưng đ&atilde; xảy ra lỗi.<br>Sản phẩm bị ảnh hưởng trong qu&aacute; tr&igrave;nh vận chuyển: bong tr&oacute;c, bể vỡ&hellip;<br>H&agrave;ng kh&ocirc;ng được đổi trong trường hợp:<br>Lỗi sản phẩm do kh&aacute;ch h&agrave;ng: sử dụng sai quy định của nh&agrave; sản xuất.<br>Sản phẩm bị bể vỡ trong qu&aacute; tr&igrave;nh kh&aacute;ch h&agrave;ng vận chuyển sử dụng.<br>Cam kết chất lượng:<br>Để đảm bảo uy t&iacute;n cho C&ocirc;ng Ty, ch&uacute;ng t&ocirc;i cam kết cung cấp h&agrave;ng h&oacute;a đều l&agrave; h&agrave;ng thật, ch&iacute;nh h&atilde;ng v&agrave; mới 100%. H&agrave;ng h&oacute;a đ&aacute;p ứng đ&uacute;ng v&agrave; đủ ti&ecirc;u chuẩn của kh&aacute;ch h&agrave;ng y&ecirc;u cầu.<br>C&ocirc;ng ty kh&ocirc;ng chịu tr&aacute;ch nhiệm trong qu&aacute; tr&igrave;nh kh&aacute;ch h&agrave;ng vận chuyển đến c&ocirc;ng ty bị mất, hư hỏng.<br>Qu&yacute; kh&aacute;ch h&agrave;ng kiểm tra h&agrave;ng trước khi giao nhận, kh&aacute;ch h&agrave;ng sau khi nhận h&agrave;ng th&igrave; sẽ ho&agrave;n to&agrave;n chịu tr&aacute;ch nhiệm về những sai lệch về sản phẩm kh&ocirc;ng do lỗi nh&agrave; sản xuất.<br>Thời gian v&agrave; thủ tục đổi h&agrave;ng:<br>Thời gian đổi h&agrave;ng: Qu&yacute; kh&aacute;ch mua h&agrave;ng tại website sẽ được đổi trả ngay đối với sản phẩm nhỏ, đối với sản phẩm vận chuyển xa th&igrave; đổi trả trong v&ograve;ng 3 ng&agrave;y theo ng&agrave;y ghi tr&ecirc;n h&oacute;a đơn.<br>Thủ tục đổi h&agrave;ng: Gửi lại sản phẩm theo đ&uacute;ng mẫu m&atilde; quy c&aacute;ch khi c&ocirc;ng ty gửi đến. Xin vui l&ograve;ng n&ecirc;u r&otilde; l&yacute; do đổi h&agrave;ng. H&agrave;ng h&oacute;a kh&ocirc;ng thể đổi nếu kh&ocirc;ng c&oacute; h&oacute;a đơn, giấy xuất kho của website đi k&egrave;m.<br>Ph&iacute; dịch vụ đổi trả h&agrave;ng sẽ do kh&aacute;ch h&agrave;ng thanh to&aacute;n<br>Sau khi nhận được h&agrave;ng, C&ocirc;ng Ty sẽ chủ động li&ecirc;n hệ với kh&aacute;ch h&agrave;ng để giải quyết c&aacute;c vấn đề li&ecirc;n quan.</p>', 'pages/November2023/LD1402OsDJkXsi5jRgpe.jpg', 'chinh-sach-doi-tra', NULL, NULL, 'ACTIVE', '2023-11-10 22:11:00', '2023-11-12 21:34:58', 'Chinh-sach'),
(5, 'Chính sách giao hàng', NULL, '<div>CH&Iacute;NH S&Aacute;CH GIAO H&Agrave;NG<br>1.&nbsp; &nbsp; Sau khi lựa chọn sản phẩm tr&ecirc;n website qu&yacute; kh&aacute;ch c&oacute; thể gọi điện đặt h&agrave;ng hoặc đến trực tiếp c&ocirc;ng ty. C&ocirc;ng Ty đưa ra c&aacute;c phương thức vận chuyển h&agrave;ng như sau:<br>&middot;&nbsp; &nbsp; &nbsp; Kh&aacute;ch h&agrave;ng c&oacute; thể trực tiếp đến C&ocirc;ng Ty để mua h&agrave;ng.<br>&middot;&nbsp; &nbsp; &nbsp; Miễn ph&iacute; vận chuyển đối với c&aacute;c đơn h&agrave;ng trong tỉnh Th&aacute;i Nguy&ecirc;n. Đơn h&agrave;ng ngo&agrave;i tỉnh Th&aacute;i Nguy&ecirc;n qu&yacute; kh&aacute;ch trả th&ecirc;m ph&iacute; vận chuyển.<br>&middot;&nbsp; &nbsp; &nbsp; Đối với đơn h&agrave;ng gửi đi c&aacute;c tỉnh, Qu&yacute; kh&aacute;ch thanh to&aacute;n ph&iacute; gửi h&agrave;ng.<br>&middot;&nbsp; &nbsp; &nbsp; Thời gian giao h&agrave;ng kh&ocirc;ng qu&aacute; 24h kể từ l&uacute;c qu&yacute; kh&aacute;ch đặt h&agrave;ng, hoặc đ&atilde; đặt cọc.<br>2.&nbsp; &nbsp; Ch&iacute;nh s&aacute;ch lắp đặt:<br>C&ocirc;ng ty sẽ c&oacute; kỹ thuật lắp đặt m&aacute;y ho&agrave;n chỉnh khi giao cho kh&aacute;ch h&agrave;ng, chạy thử m&aacute;y cho kh&aacute;ch h&agrave;ng. C&ograve;n lại c&aacute;c chi tiết như lắp đặt, đi đường ống đến thiết bị của Qu&yacute; kh&aacute;ch th&igrave; c&ocirc;ng ty sẽ kh&ocirc;ng chịu tr&aacute;ch nhiệm lắp đặt. Ch&uacute;ng t&ocirc;i c&oacute; thể thu&ecirc; gi&uacute;p người hỗ trợ cho qu&yacute; kh&aacute;ch, Qu&yacute; kh&aacute;ch sẽ chịu khoản ph&iacute; n&agrave;y.</div>\r\n<div>\r\n<div>Địa chỉ: Tổ 12 Phường Thắng Lợi TP S&ocirc;ng C&ocirc;ng Tỉnh Th&aacute;i Nguy&ecirc;n</div>\r\n<div>Điện thoại: 0876.719.666</div>\r\n<div>Email: gifv.co.ltd@gmail.com</div>\r\nCh&uacute;ng t&ocirc;i xin ch&acirc;n th&agrave;nh c&aacute;m ơn Qu&yacute; kh&aacute;ch h&agrave;ng đ&atilde; mua h&agrave;ng của C&ocirc;ng ty. Chắc chắn Qu&yacute; kh&aacute;ch h&agrave;ng sẽ h&agrave;i l&ograve;ng về chất lượng dịch vụ &amp; th&aacute;i độ phục vụ tốt nhất từ C&ocirc;ng Ty.</div>', 'pages/November2023/BMEJUHevJ7OcCYo5gNii.jpg', 'chinh-sach-giao-hang', NULL, NULL, 'ACTIVE', '2023-11-10 22:11:00', '2023-11-12 21:34:49', 'Chinh-sach');

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

CREATE TABLE `partners` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `products` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `partners`
--

INSERT INTO `partners` (`id`, `name`, `email`, `phone`, `created_at`, `updated_at`, `address`, `products`) VALUES
(8, 'Nguyen Quang Hai', 'nguyenquanghai@gmail.com', '0359808267', '2023-11-15 02:42:15', '2023-11-15 02:42:15', 'Thái Nguyên', '[{\"name\":\"Dung dịch thủy canh cho cây ăn trái\",\"quantity\":\"12\"},{\"name\":\"Hạt giống măng tây xanh\",\"quantity\":\"12\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2023-11-08 20:36:12', '2023-11-08 20:36:12'),
(2, 'browse_bread', NULL, '2023-11-08 20:36:12', '2023-11-08 20:36:12'),
(3, 'browse_database', NULL, '2023-11-08 20:36:12', '2023-11-08 20:36:12'),
(4, 'browse_media', NULL, '2023-11-08 20:36:12', '2023-11-08 20:36:12'),
(5, 'browse_compass', NULL, '2023-11-08 20:36:12', '2023-11-08 20:36:12'),
(6, 'browse_menus', 'menus', '2023-11-08 20:36:12', '2023-11-08 20:36:12'),
(7, 'read_menus', 'menus', '2023-11-08 20:36:12', '2023-11-08 20:36:12'),
(8, 'edit_menus', 'menus', '2023-11-08 20:36:12', '2023-11-08 20:36:12'),
(9, 'add_menus', 'menus', '2023-11-08 20:36:12', '2023-11-08 20:36:12'),
(10, 'delete_menus', 'menus', '2023-11-08 20:36:12', '2023-11-08 20:36:12'),
(11, 'browse_roles', 'roles', '2023-11-08 20:36:12', '2023-11-08 20:36:12'),
(12, 'read_roles', 'roles', '2023-11-08 20:36:12', '2023-11-08 20:36:12'),
(13, 'edit_roles', 'roles', '2023-11-08 20:36:12', '2023-11-08 20:36:12'),
(14, 'add_roles', 'roles', '2023-11-08 20:36:12', '2023-11-08 20:36:12'),
(15, 'delete_roles', 'roles', '2023-11-08 20:36:12', '2023-11-08 20:36:12'),
(16, 'browse_users', 'users', '2023-11-08 20:36:12', '2023-11-08 20:36:12'),
(17, 'read_users', 'users', '2023-11-08 20:36:12', '2023-11-08 20:36:12'),
(18, 'edit_users', 'users', '2023-11-08 20:36:12', '2023-11-08 20:36:12'),
(19, 'add_users', 'users', '2023-11-08 20:36:12', '2023-11-08 20:36:12'),
(20, 'delete_users', 'users', '2023-11-08 20:36:12', '2023-11-08 20:36:12'),
(21, 'browse_settings', 'settings', '2023-11-08 20:36:12', '2023-11-08 20:36:12'),
(22, 'read_settings', 'settings', '2023-11-08 20:36:12', '2023-11-08 20:36:12'),
(23, 'edit_settings', 'settings', '2023-11-08 20:36:12', '2023-11-08 20:36:12'),
(24, 'add_settings', 'settings', '2023-11-08 20:36:12', '2023-11-08 20:36:12'),
(25, 'delete_settings', 'settings', '2023-11-08 20:36:12', '2023-11-08 20:36:12'),
(26, 'browse_products', 'products', '2023-11-08 20:36:12', '2023-11-08 20:36:12'),
(27, 'read_products', 'products', '2023-11-08 20:36:12', '2023-11-08 20:36:12'),
(28, 'edit_products', 'products', '2023-11-08 20:36:12', '2023-11-08 20:36:12'),
(29, 'add_products', 'products', '2023-11-08 20:36:12', '2023-11-08 20:36:12'),
(30, 'delete_products', 'products', '2023-11-08 20:36:12', '2023-11-08 20:36:12'),
(31, 'browse_category', 'category', '2023-11-08 20:36:12', '2023-11-08 20:36:12'),
(32, 'read_category', 'category', '2023-11-08 20:36:12', '2023-11-08 20:36:12'),
(33, 'edit_category', 'category', '2023-11-08 20:36:12', '2023-11-08 20:36:12'),
(34, 'add_category', 'category', '2023-11-08 20:36:12', '2023-11-08 20:36:12'),
(35, 'delete_category', 'category', '2023-11-08 20:36:12', '2023-11-08 20:36:12'),
(36, 'browse_coupons', 'coupons', '2023-11-08 20:36:12', '2023-11-08 20:36:12'),
(37, 'read_coupons', 'coupons', '2023-11-08 20:36:12', '2023-11-08 20:36:12'),
(38, 'edit_coupons', 'coupons', '2023-11-08 20:36:12', '2023-11-08 20:36:12'),
(39, 'add_coupons', 'coupons', '2023-11-08 20:36:12', '2023-11-08 20:36:12'),
(40, 'delete_coupons', 'coupons', '2023-11-08 20:36:12', '2023-11-08 20:36:12'),
(41, 'browse_tags', 'tags', '2023-11-08 20:36:12', '2023-11-08 20:36:12'),
(42, 'read_tags', 'tags', '2023-11-08 20:36:12', '2023-11-08 20:36:12'),
(43, 'edit_tags', 'tags', '2023-11-08 20:36:12', '2023-11-08 20:36:12'),
(44, 'add_tags', 'tags', '2023-11-08 20:36:12', '2023-11-08 20:36:12'),
(45, 'delete_tags', 'tags', '2023-11-08 20:36:12', '2023-11-08 20:36:12'),
(46, 'browse_product_tag', 'product_tag', '2023-11-08 20:36:12', '2023-11-08 20:36:12'),
(47, 'read_product_tag', 'product_tag', '2023-11-08 20:36:12', '2023-11-08 20:36:12'),
(48, 'edit_product_tag', 'product_tag', '2023-11-08 20:36:12', '2023-11-08 20:36:12'),
(49, 'add_product_tag', 'product_tag', '2023-11-08 20:36:12', '2023-11-08 20:36:12'),
(50, 'delete_product_tag', 'product_tag', '2023-11-08 20:36:12', '2023-11-08 20:36:12'),
(51, 'browse_orders', 'orders', '2023-11-08 20:36:12', '2023-11-08 20:36:12'),
(52, 'read_orders', 'orders', '2023-11-08 20:36:12', '2023-11-08 20:36:12'),
(53, 'edit_orders', 'orders', '2023-11-08 20:36:12', '2023-11-08 20:36:12'),
(54, 'add_orders', 'orders', '2023-11-08 20:36:12', '2023-11-08 20:36:12'),
(55, 'delete_orders', 'orders', '2023-11-08 20:36:12', '2023-11-08 20:36:12'),
(61, 'browse_banners', 'banners', '2023-11-08 21:05:22', '2023-11-08 21:05:22'),
(62, 'read_banners', 'banners', '2023-11-08 21:05:22', '2023-11-08 21:05:22'),
(63, 'edit_banners', 'banners', '2023-11-08 21:05:22', '2023-11-08 21:05:22'),
(64, 'add_banners', 'banners', '2023-11-08 21:05:22', '2023-11-08 21:05:22'),
(65, 'delete_banners', 'banners', '2023-11-08 21:05:22', '2023-11-08 21:05:22'),
(66, 'browse_pages', 'pages', '2023-11-08 21:14:37', '2023-11-08 21:14:37'),
(67, 'read_pages', 'pages', '2023-11-08 21:14:37', '2023-11-08 21:14:37'),
(68, 'edit_pages', 'pages', '2023-11-08 21:14:37', '2023-11-08 21:14:37'),
(69, 'add_pages', 'pages', '2023-11-08 21:14:37', '2023-11-08 21:14:37'),
(70, 'delete_pages', 'pages', '2023-11-08 21:14:37', '2023-11-08 21:14:37'),
(71, 'browse_posts', 'posts', '2023-11-08 21:22:24', '2023-11-08 21:22:24'),
(72, 'read_posts', 'posts', '2023-11-08 21:22:24', '2023-11-08 21:22:24'),
(73, 'edit_posts', 'posts', '2023-11-08 21:22:24', '2023-11-08 21:22:24'),
(74, 'add_posts', 'posts', '2023-11-08 21:22:24', '2023-11-08 21:22:24'),
(75, 'delete_posts', 'posts', '2023-11-08 21:22:24', '2023-11-08 21:22:24'),
(76, 'browse_categories', 'categories', '2023-11-08 21:25:13', '2023-11-08 21:25:13'),
(77, 'read_categories', 'categories', '2023-11-08 21:25:13', '2023-11-08 21:25:13'),
(78, 'edit_categories', 'categories', '2023-11-08 21:25:13', '2023-11-08 21:25:13'),
(79, 'add_categories', 'categories', '2023-11-08 21:25:13', '2023-11-08 21:25:13'),
(80, 'delete_categories', 'categories', '2023-11-08 21:25:13', '2023-11-08 21:25:13'),
(81, 'browse_contacts', 'contacts', '2023-11-10 03:49:46', '2023-11-10 03:49:46'),
(82, 'read_contacts', 'contacts', '2023-11-10 03:49:46', '2023-11-10 03:49:46'),
(83, 'edit_contacts', 'contacts', '2023-11-10 03:49:46', '2023-11-10 03:49:46'),
(84, 'add_contacts', 'contacts', '2023-11-10 03:49:46', '2023-11-10 03:49:46'),
(85, 'delete_contacts', 'contacts', '2023-11-10 03:49:46', '2023-11-10 03:49:46'),
(86, 'browse_projects', 'projects', '2023-11-12 21:09:50', '2023-11-12 21:09:50'),
(87, 'read_projects', 'projects', '2023-11-12 21:09:50', '2023-11-12 21:09:50'),
(88, 'edit_projects', 'projects', '2023-11-12 21:09:50', '2023-11-12 21:09:50'),
(89, 'add_projects', 'projects', '2023-11-12 21:09:50', '2023-11-12 21:09:50'),
(90, 'delete_projects', 'projects', '2023-11-12 21:09:50', '2023-11-12 21:09:50'),
(91, 'browse_partners', 'partners', '2023-11-12 21:44:28', '2023-11-12 21:44:28'),
(92, 'read_partners', 'partners', '2023-11-12 21:44:28', '2023-11-12 21:44:28'),
(93, 'edit_partners', 'partners', '2023-11-12 21:44:28', '2023-11-12 21:44:28'),
(94, 'add_partners', 'partners', '2023-11-12 21:44:28', '2023-11-12 21:44:28'),
(95, 'delete_partners', 'partners', '2023-11-12 21:44:28', '2023-11-12 21:44:28'),
(116, 'browse_comments', 'comments', '2023-11-15 23:31:10', '2023-11-15 23:31:10'),
(117, 'read_comments', 'comments', '2023-11-15 23:31:10', '2023-11-15 23:31:10'),
(118, 'edit_comments', 'comments', '2023-11-15 23:31:10', '2023-11-15 23:31:10'),
(119, 'add_comments', 'comments', '2023-11-15 23:31:10', '2023-11-15 23:31:10'),
(120, 'delete_comments', 'comments', '2023-11-15 23:31:10', '2023-11-15 23:31:10');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(91, 1),
(92, 1),
(93, 1),
(94, 1),
(95, 1),
(116, 1),
(117, 1),
(118, 1),
(119, 1),
(120, 1);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Trồng rau thuỷ canh và trồng rau thổ canh có gì khác nhau', NULL, 'Trồng rau thủy canh và trồng rau thổ canh có những đặc điểm khác biệt rõ ràng - Về Khái Niệm - Về các yếu tố dinh dưỡng - Về diện tích và năng suất cây trồng - Về sâu bệnh hại - Về thuốc bảo vệ thực vật - Về cách chăm sóc - Về chi phí , giá thành - Về độ an toàn - Một số yếu tố khác Hãy cùng thủy canh Phan Châu tìm hiểu nhé.!', '<h2 dir=\"ltr\" style=\"box-sizing: border-box; font-family: \'segoe ui\'; font-weight: 500; line-height: 1.1; color: #39464f; margin-top: 20px; margin-bottom: 10px; font-size: 30px; background-color: rgba(255, 255, 255, 0.24); text-align: justify !important;\"><span style=\"box-sizing: border-box; color: #006400;\"><span style=\"box-sizing: border-box; font-size: 16px;\"><big style=\"box-sizing: border-box;\">1. V&ecirc;̀ khái ni&ecirc;̣m</big></span></span></h2>\r\n<h3 dir=\"ltr\" style=\"box-sizing: border-box; font-family: \'segoe ui\'; font-weight: 500; line-height: 1.1; color: #39464f; margin-top: 20px; margin-bottom: 10px; font-size: 24px; background-color: rgba(255, 255, 255, 0.24); text-align: justify !important;\"><big style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; font-size: 14px;\"><strong style=\"box-sizing: border-box;\">Tr&ocirc;̀ng rau thủy canh :</strong></span></big></h3>\r\n<p dir=\"ltr\" style=\"box-sizing: border-box; margin: 0px 0px 10px 40px; color: #39464f; font-family: \'segoe ui\'; background-color: rgba(255, 255, 255, 0.24); text-align: justify !important;\"><span style=\"box-sizing: border-box; color: #000000;\"><big style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; font-size: 14px;\"><span style=\"box-sizing: border-box; background-color: transparent;\">&bull; Tr&ocirc;̀ng rau ( c&acirc;y ) bằng phương pháp thủy canh</span><span style=\"box-sizing: border-box; background-color: transparent;\">&nbsp;là kỹ thu&acirc;̣t tròng c&acirc;y kh&ocirc;ng c&acirc;̀n đ&acirc;́t, c&acirc;y được tr&ocirc;̀ng trong nước có chứa dinh dưỡng</span></span></big></span></p>\r\n<p dir=\"ltr\" style=\"box-sizing: border-box; margin: 0px 0px 10px 40px; color: #39464f; font-family: \'segoe ui\'; background-color: rgba(255, 255, 255, 0.24); text-align: justify !important;\"><span style=\"box-sizing: border-box; color: #000000;\">&bull;&nbsp;</span><span style=\"box-sizing: border-box; color: #000000;\">Phương pháp cung c&acirc;́p t&acirc;́t cả các dinh dưỡng thi&ecirc;́t y&ecirc;́u dưới dạng hòa tan trong nước cả đa, trung và vi lượng. Trong phương pháp này r&ecirc;̃ c&acirc;y được bao bọc bởi giá th&ecirc;̉ như mút x&ocirc;́p, đ&acirc;́t sét. sơ dừa, tr&acirc;́u hun,..</span></p>\r\n<div style=\"box-sizing: border-box; text-align: center; color: #39464f; font-family: \'segoe ui\'; background-color: rgba(255, 255, 255, 0.24);\">\r\n<figure class=\"image\" style=\"box-sizing: border-box; margin-right: 0px; margin-left: 0px; text-align: justify !important;\"><img style=\"box-sizing: border-box; border: 0px; vertical-align: middle; max-width: 100%;\" src=\"https://vuontrudung.com/upload/user/images/tr%C3%B4%CC%80ng%20rau%20thu%CC%89y%20canh%2024_12.jpg\" alt=\"\" width=\"766\" height=\"511\">\r\n<figcaption style=\"box-sizing: border-box; text-align: justify !important;\"><em style=\"box-sizing: border-box;\">Phương pháp tr&ocirc;̀ng rau thủy canh</em></figcaption>\r\n</figure>\r\n</div>\r\n<h3 dir=\"ltr\" style=\"box-sizing: border-box; font-family: \'segoe ui\'; font-weight: 500; line-height: 1.1; color: #39464f; margin-top: 20px; margin-bottom: 10px; font-size: 24px; background-color: rgba(255, 255, 255, 0.24); text-align: justify !important;\"><big style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; font-size: 14px;\"><strong style=\"box-sizing: border-box;\">Tr&ocirc;̀ng rau th&ocirc;̉ canh :</strong></span></big></h3>\r\n<p dir=\"ltr\" style=\"box-sizing: border-box; margin: 0px 0px 10px 40px; color: #39464f; font-family: \'segoe ui\'; background-color: rgba(255, 255, 255, 0.24); text-align: justify !important;\"><span style=\"box-sizing: border-box; color: #000000;\">&bull;&nbsp;</span><span style=\"box-sizing: border-box; color: #000000;\">Là phương pháp tr&ocirc;̀ng truy&ecirc;̀n th&ocirc;́ng, nguy&ecirc;n thủy có từ ngàn xưa. Đất được sử dụng để l&agrave;m gi&aacute; thể, l&agrave; nơi lưu trữ dinh dưỡng cũng như c&aacute;c chất cần thiết qua ph&acirc;n b&oacute;n v&agrave;o đất để c&acirc;y ph&aacute;t triển.​</span></p>\r\n<div style=\"box-sizing: border-box; text-align: center; color: #39464f; font-family: \'segoe ui\'; background-color: rgba(255, 255, 255, 0.24);\">\r\n<figure class=\"image\" style=\"box-sizing: border-box; margin-right: 0px; margin-left: 0px; text-align: justify !important;\"><img style=\"box-sizing: border-box; border: 0px; vertical-align: middle; max-width: 100%;\" src=\"https://vuontrudung.com/upload/user/images/tr%C3%B4%CC%80ng%20rau%20th%C3%B4%CC%89%20canh%2027_12.jpg\" alt=\"\" width=\"772\" height=\"721\">\r\n<figcaption style=\"box-sizing: border-box; text-align: justify !important;\"><em style=\"box-sizing: border-box;\">Phương pháp tr&ocirc;̀ng rau th&ocirc;̉ canh&nbsp;</em></figcaption>\r\n</figure>\r\n</div>', 'posts\\November2023\\4VyHFICLCFuYbaeFkh8s.jpg', 'trong-rau-thuy-canh-va-trong-rau-tho-canh-co-gi-khac-nhau', NULL, NULL, 'PUBLISHED', 1, '2023-11-08 21:41:00', '2023-11-14 20:21:55'),
(2, 1, 1, 'Vì sao trồng thủy canh là xu hướng? Đây là lời giải đáp từ chuyên gia!', NULL, '“Trồng rau mô hình thuỷ canh cho phép chúng ta trồng và thu hoạch cây trên giàn mà không cần dùng đất. Khi mà rất nhiều người vì chạy theo lợi nhuận khiến sản lượng rau sạch ngày càng khan hiếm thì hệ thống này mang tới nhiều tiện ích cho sức khỏe. Đặc biệt, các mô hình trồng rau thông thường hiện gặp vô số vấn đề khó khăn về diện tích, đất đai, công chăm sóc,…thì mô hình trồng thuỷ canh lại có thể giải quyết toàn bộ các vấn đề đó.” – Chuyên gia Nông nghiệp Hoàng Bá Tú nhận định.', '<p style=\"box-sizing: border-box; font-family: Roboto, Arial, sans-serif; font-size: 15px; line-height: 1.5; margin: 0px 0px 1rem; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: #212529; text-align: justify;\"><span style=\"box-sizing: border-box; font-size: 14pt; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; font-family: Times, serif; font-size: 15px; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; font-family: Roboto, Arial, sans-serif; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: #000000;\">Trong v&agrave;i năm trở lại đ&acirc;y,&nbsp;&nbsp;</span></span></span><span style=\"box-sizing: border-box; font-size: 14pt; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; font-family: Times, serif; font-size: 15px; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; font-family: Roboto, Arial, sans-serif; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: #1155cc;\"><u style=\"box-sizing: border-box; font: inherit; margin: 0px; padding: 0px; border: 0px; vertical-align: baseline;\">trồng rau thuỷ canh</u></span></span></span><span style=\"box-sizing: border-box; font-size: 14pt; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; font-family: Times, serif; font-size: 15px; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; font-family: Roboto, Arial, sans-serif; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: #000000;\">&nbsp;tại Việt Nam đ&atilde; bắt đầu nở rộ v&agrave; trở th&agrave;nh xu hướng rộng mở. Từ n&ocirc;ng th&ocirc;n, thị trấn tới c&aacute;c th&agrave;nh phố lớn kh&ocirc;ng kh&oacute; để bắt gặp m&ocirc; h&igrave;nh n&agrave;y. Vậy tại sao trồng rau thuỷ canh lại c&oacute; sức h&uacute;t đặc biệt tới vậy? Ngay sau đ&acirc;y, Thuỷ canh SkyFarm Việt Nam xin tr&iacute;ch lời giải đ&aacute;p từ Chuy&ecirc;n gia N&ocirc;ng nghiệp Ho&agrave;ng B&aacute; T&uacute; để bạn đọc hiểu r&otilde; hơn về m&ocirc; h&igrave;nh rau sạch được ưa chuộng h&agrave;ng đầu hiện nay.</span></span></span></p>\r\n<p style=\"box-sizing: border-box; font-family: Roboto, Arial, sans-serif; font-size: 15px; line-height: 1.5; margin: 0px 0px 1rem; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: #212529; text-align: justify;\"><span style=\"box-sizing: border-box; font-size: 14pt; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; font-family: Times, serif; font-size: 15px; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; font-family: Roboto, Arial, sans-serif; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: #000000;\"><span style=\"box-sizing: border-box; font-family: inherit; font-size: inherit; line-height: inherit; font-weight: bolder; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\">Giải quyết vấn đề kh&oacute; khăn của c&aacute;c m&ocirc; h&igrave;nh trồng rau th&ocirc;ng thường!</span></span></span></span></p>\r\n<p style=\"box-sizing: border-box; font-family: Roboto, Arial, sans-serif; font-size: 15px; line-height: 1.5; margin: 0px 0px 1rem; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: #212529; text-align: justify;\"><span style=\"box-sizing: border-box; font-size: 14pt; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; font-family: Times, serif; font-size: 15px; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; font-family: Roboto, Arial, sans-serif; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: #000000;\">Chuy&ecirc;n gia Ho&agrave;ng B&aacute; T&uacute; cho biết, kh&aacute;i niệm đơn giản nhất về &ldquo;trồng thuỷ canh&rdquo; ch&iacute;nh l&agrave; m&ocirc; h&igrave;nh trồng rau bằng dung dịch chứa dinh dưỡng cần thiết cho c&acirc;y. Về cơ bản, hệ thống n&agrave;y sẽ cho ph&eacute;p người d&acirc;n trồng v&agrave; thu hoạch c&acirc;y rau tr&ecirc;n gi&agrave;n m&agrave; kh&ocirc;ng phải d&ugrave;ng đất.</span></span></span></p>\r\n<p style=\"box-sizing: border-box; font-family: Roboto, Arial, sans-serif; font-size: 15px; line-height: 1.5; margin: 0px 0px 1rem; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: #212529; text-align: justify;\"><span style=\"box-sizing: border-box; font-size: 14pt; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; font-family: Times, serif; font-size: 15px; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; font-family: Roboto, Arial, sans-serif; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: #000000;\">Sở dĩ, trồng rau thuỷ canh ng&agrave;y c&agrave;ng được ưa chuộng bởi hệ thống n&agrave;y mang tới rất nhiều tiện &iacute;ch cho cuộc sống, nhất l&agrave; giải quyết vấn đề vệ sinh an to&agrave;n thực phẩm v&agrave; nguồn rau sạch.</span></span></span></p>\r\n<p style=\"box-sizing: border-box; font-family: Roboto, Arial, sans-serif; font-size: 15px; line-height: 1.5; margin: 0px 0px 1rem; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: #212529; text-align: center;\"><span style=\"box-sizing: border-box; font-size: 14pt; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; font-family: Times, serif; font-size: 15px; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; font-family: Roboto, Arial, sans-serif; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: #000000;\"><img style=\"box-sizing: border-box; font: inherit; border: 0px none; margin: 10px 0px; padding: 0px; vertical-align: middle; max-width: 100%; height: 600px; width: 800px;\" src=\"https://www.skyfarm.vn/uploads/tin-tuc/thuy-canh-skyfarm1.jpg\"></span></span></span></p>\r\n<p style=\"box-sizing: border-box; font-family: Roboto, Arial, sans-serif; font-size: 15px; line-height: 1.5; margin: 0px 0px 1rem; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: #212529; text-align: center;\"><span style=\"box-sizing: border-box; font-size: 14pt; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; font-family: Times, serif; font-size: 15px; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; font-family: Roboto, Arial, sans-serif; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: #000000;\"><em style=\"box-sizing: border-box; font-family: inherit; font-size: inherit; line-height: inherit; margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\">Trồng rau thuỷ canh gi&uacute;p giải quyết vấn đề rau sạch.</em></span></span></span></p>\r\n<p style=\"box-sizing: border-box; font-family: Roboto, Arial, sans-serif; font-size: 15px; line-height: 1.5; margin: 0px 0px 1rem; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: #212529; text-align: justify;\"><span style=\"box-sizing: border-box; font-size: 14pt; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; font-family: Times, serif; font-size: 15px; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; font-family: Roboto, Arial, sans-serif; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: #000000;\">Theo số liệu thống k&ecirc;, lượng rau sạch do c&aacute;c cơ sở, trang trại uy t&iacute;n sản xuất chỉ đ&aacute;p ứng được khoảng 1/3 nhu cầu của người d&acirc;n. Phần lớn lượng ti&ecirc;u thụ rau quả tập trung nhiều nhất ở c&aacute;c tỉnh th&agrave;nh lớn như H&agrave; Nội hay TP. Hồ Ch&iacute; Minh. Khi lượng cung kh&ocirc;ng đủ sẽ dẫn đến việc lẫn tạp nguồn rau kh&ocirc;ng chất lượng, c&aacute;c doanh nghiệp trồng rau v&igrave; mục đ&iacute;ch lợi nhuận cao, nguồn rau sạch khan hiếm, hậu quả ảnh hưởng cho người d&ugrave;ng rất nghi&ecirc;m trọng.</span></span></span></p>\r\n<p style=\"box-sizing: border-box; font-family: Roboto, Arial, sans-serif; font-size: 15px; line-height: 1.5; margin: 0px 0px 1rem; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: #212529; text-align: justify;\"><span style=\"box-sizing: border-box; font-size: 14pt; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; font-family: Times, serif; font-size: 15px; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; font-family: Roboto, Arial, sans-serif; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: #000000;\">Vị chuy&ecirc;n gia cũng ph&acirc;n t&iacute;ch th&ecirc;m, trong khi c&aacute;c phương ph&aacute;p trồng rau th&ocirc;ng thường gặp phải nhiều vấn đề kh&oacute; khăn như diện t&iacute;ch, đất đai, s&acirc;u bệnh cũng như c&ocirc;ng chăm s&oacute;c,&hellip;Th&igrave; hệ thống trồng rau thủy canh lại c&oacute; thể giải quyết được tất cả những vấn đề đ&oacute;.</span></span></span></p>\r\n<p style=\"box-sizing: border-box; font-family: Roboto, Arial, sans-serif; font-size: 15px; line-height: 1.5; margin: 0px 0px 1rem; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: #212529; text-align: justify;\"><span style=\"box-sizing: border-box; font-size: 14pt; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; font-family: Times, serif; font-size: 15px; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; font-family: Roboto, Arial, sans-serif; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: #000000;\">Cụ thể, hệ thống trồng rau thuỷ canh c&oacute; khả năng thực hiện tự động việc chăm s&oacute;c c&acirc;y trồng từ l&uacute;c nảy mầm cho đến khi thu hoạch. C&aacute;c chất dinh dưỡng cho c&acirc;y trồng được h&ograve;a tan v&agrave;o nước v&agrave; bơm đi khắp c&aacute;c ống thủy canh. L&uacute;c n&agrave;y, rễ c&acirc;y nhận chất dinh dưỡng trực tiếp trong thuỷ canh v&agrave; ph&aacute;t triển cho đến l&uacute;c trưởng th&agrave;nh, đạt kết quả tốt nhất.</span></span></span></p>\r\n<p style=\"box-sizing: border-box; font-family: Roboto, Arial, sans-serif; font-size: 15px; line-height: 1.5; margin: 0px 0px 1rem; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: #212529; text-align: justify;\"><span style=\"box-sizing: border-box; font-size: 14pt; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; font-family: Times, serif; font-size: 15px; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; font-family: Roboto, Arial, sans-serif; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: #000000;\">Chưa kể, việc trồng rau bằng phương ph&aacute;p thuỷ canh cũng c&aacute;ch ly ho&agrave;n to&agrave;n với nguồn s&acirc;u bệnh, nấm mốc từ đất. Do đ&oacute; tiết kiệm tối đa c&ocirc;ng chăm s&oacute;c, rau quả kh&ocirc;ng bị s&acirc;u bệnh g&acirc;y hại.</span></span></span></p>\r\n<p style=\"box-sizing: border-box; font-family: Roboto, Arial, sans-serif; font-size: 15px; line-height: 1.5; margin: 0px 0px 1rem; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: #212529; text-align: justify;\"><span style=\"box-sizing: border-box; font-size: 14pt; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; font-family: Times, serif; font-size: 15px; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; font-family: Roboto, Arial, sans-serif; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: #000000;\">Một điểm cộng của m&ocirc; h&igrave;nh trồng rau thuỷ canh vượt trội hơn so với c&aacute;c phương ph&aacute;p canh t&aacute;c th&ocirc;ng thường kh&aacute;c ch&iacute;nh l&agrave; vấn đề trồng rau tr&aacute;i vụ. Chuy&ecirc;n gia Ho&agrave;ng B&aacute; T&uacute; chỉ ra rằng, phương ph&aacute;p trồng rau thuỷ canh vượt trội hơn hẳn khi c&oacute; thể trồng được hầu hết c&aacute;c loại rau củ v&agrave;o bất kỳ m&ugrave;a n&agrave;o trong năm. D&ugrave; ở miền Bắc vẫn c&oacute; thể trồng được c&aacute;c loại c&acirc;y miền Nam v&agrave; ngược lại với m&ocirc; h&igrave;nh n&agrave;y. Đ&acirc;y thực sự l&agrave; lợi thế cực kỳ tuyệt vời.</span></span></span></p>\r\n<p style=\"box-sizing: border-box; font-family: Roboto, Arial, sans-serif; font-size: 15px; line-height: 1.5; margin: 0px 0px 1rem; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: #212529; text-align: justify;\"><span style=\"box-sizing: border-box; font-size: 14pt; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; font-family: Times, serif; font-size: 15px; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; font-family: Roboto, Arial, sans-serif; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: #000000;\">Đặc biệt, qu&aacute; tr&igrave;nh trồng rau thuỷ canh ho&agrave;n to&agrave;n tự động v&agrave; kh&ocirc;ng sử dụng chất h&oacute;a học n&ecirc;n đảm bảo được chất lượng sạch v&agrave; ho&agrave;n to&agrave;n kh&ocirc;ng g&acirc;y hại đến sức khỏe người d&ugrave;ng.</span></span></span></p>', 'posts\\November2023\\ab5BbqyEgageKlbWA1Jw.jpg', 'vi-sao-trong-thuy-canh-la-xu-huong-day-la-loi-giai-dap-tu-chuyen-gia', NULL, NULL, 'PUBLISHED', 0, '2023-11-09 03:51:00', '2023-11-15 03:27:42');
INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(3, 1, 1, 'Giàn thuỷ canh có quá đắt? Review chi tiết từ người dùng!', NULL, 'Mô hình trồng rau thuỷ canh đang dần trở nên phổ biến hàng đầu trong lĩnh vực nuôi trồng nông sản tại Việt Nam. Nhờ những ưu điểm, lợi thế lớn mà phương pháp này đã được rất nhiều nhà vườn tin tưởng chọn lựa. Song, không ít khách hàng vẫn còn băn khoăn, lo sợ là liệu chi phí lắp đặt giàn thuỷ canh có quá đắt hay không? Cùng gặp gỡ và lắng nghe cảm nhận thực tế từ một vị khách hàng đã lắp đặt hệ thống thuỷ canh nhà phố tại SkyFarm để có câu trả lời khách quan nhất về vấn đề này nhé.', '<p style=\"box-sizing: border-box; font-family: Roboto, Arial, sans-serif; font-size: 15px; line-height: 1.5; margin: 0px 0px 1rem; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: #212529; text-align: justify;\"><span style=\"box-sizing: border-box; font-size: 14pt; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; font-family: Times, serif; font-size: 15px; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; font-family: Roboto, Arial, sans-serif; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: #000000;\">L&agrave; một trong những vị kh&aacute;ch h&agrave;ng quen thuộc tại SkyFarm Việt Nam, chị Ng&ocirc; B&iacute;ch Thuỷ hiện đang sở hữu hệ thống gi&agrave;n thuỷ canh tr&ecirc;n s&acirc;n thượng với diện t&iacute;ch chỉ khoảng 8 m&eacute;t vu&ocirc;ng. Mỗi th&aacute;ng gia đ&igrave;nh chị Thuỷ c&oacute; thể tự đ&aacute;p ứng được nguồn rau sạch cho cả gia đ&igrave;nh 6 người.</span></span></span></p>\r\n<p style=\"box-sizing: border-box; font-family: Roboto, Arial, sans-serif; font-size: 15px; line-height: 1.5; margin: 0px 0px 1rem; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: #212529; text-align: justify;\"><span style=\"box-sizing: border-box; font-size: 14pt; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; font-family: Times, serif; font-size: 15px; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; font-family: Roboto, Arial, sans-serif; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: #000000;\">Khi được hỏi về vấn đề&nbsp;</span></span></span><span style=\"box-sizing: border-box; font-size: 14pt; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; font-family: Times, serif; font-size: 15px; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; font-family: Roboto, Arial, sans-serif; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: #000000;\"><em style=\"box-sizing: border-box; font-family: inherit; font-size: inherit; line-height: inherit; margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\">&ldquo;Gi&agrave;n thuỷ canh c&oacute; qu&aacute; đắt?&rdquo;,&nbsp;</em></span></span></span><span style=\"box-sizing: border-box; font-size: 14pt; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; font-family: Times, serif; font-size: 15px; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; font-family: Roboto, Arial, sans-serif; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: #000000;\">chị Thuỷ cho biết, việc t&iacute;nh to&aacute;n hợp l&yacute; v&agrave; lựa chọn đơn vị cung cấp ph&ugrave; hợp th&igrave; việc đầu tư gi&agrave;n thuỷ canh&nbsp;</span></span></span><span style=\"box-sizing: border-box; font-size: 14pt; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; font-family: Times, serif; font-size: 15px; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; font-family: Roboto, Arial, sans-serif; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: #000000;\"><span style=\"box-sizing: border-box; font-family: inherit; font-size: inherit; line-height: inherit; font-weight: bolder; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\">kh&ocirc;ng qu&aacute; tốn k&eacute;m</span></span></span></span><span style=\"box-sizing: border-box; font-size: 14pt; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; font-family: Times, serif; font-size: 15px; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; font-family: Roboto, Arial, sans-serif; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: #000000;\">, thậm ch&iacute; c&ograve;n tiết kiệm hơn rất nhiều so với c&aacute;c phương ph&aacute;p kh&aacute;c.</span></span></span></p>\r\n<h2 style=\"box-sizing: border-box; font-family: Roboto, Arial, sans-serif; font-size: 24px; line-height: 1.2; margin: 0px 0px 0.5rem; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: #212529;\">C&aacute;ch để sở hữu vườn rau thuỷ canh đa dạng, hợp l&yacute; chỉ với 8m2</h2>\r\n<p style=\"box-sizing: border-box; font-family: Roboto, Arial, sans-serif; font-size: 15px; line-height: 1.5; margin: 0px 0px 1rem; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: #212529; text-align: justify;\"><span style=\"box-sizing: border-box; font-size: 14pt; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; font-family: Times, serif; font-size: 15px; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; font-family: Roboto, Arial, sans-serif; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: #000000;\">Kh&ocirc;ng chỉ gia đ&igrave;nh chị Thuỷ m&agrave; c&oacute; rất nhiều gia đ&igrave;nh c&oacute; khoảng kh&ocirc;ng gian để trồng rau thuỷ canh nhưng v&igrave; kh&ocirc;ng biết n&ecirc;n trồng như thế n&agrave;o, chọn loại gi&agrave;n v&agrave; bố tr&iacute; l&agrave;m sao cho hợp l&yacute;.</span></span></span></p>\r\n<p style=\"box-sizing: border-box; font-family: Roboto, Arial, sans-serif; font-size: 15px; line-height: 1.5; margin: 0px 0px 1rem; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: #212529; text-align: justify;\"><span style=\"box-sizing: border-box; font-size: 14pt; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; font-family: Times, serif; font-size: 15px; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; font-family: Roboto, Arial, sans-serif; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: #000000;\">Thuỷ canh SkyFarm Việt Nam đ&atilde; đưa ra tư vấn, giới thiệu cho chị Thuỷ m&ocirc; h&igrave;nh vườn rau thuỷ canh 8m2 tại s&acirc;n thượng v&ocirc; c&ugrave;ng ph&ugrave; hợp.</span></span></span></p>\r\n<p style=\"box-sizing: border-box; font-family: Roboto, Arial, sans-serif; font-size: 15px; line-height: 1.5; margin: 0px 0px 1rem; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: #212529; text-align: justify;\"><span style=\"box-sizing: border-box; font-size: 14pt; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; font-family: Times, serif; font-size: 15px; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; font-family: Roboto, Arial, sans-serif; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: #000000;\">Với 8m2 nhỏ gọn, c&aacute;c kh&aacute;ch h&agrave;ng c&oacute; thể lắp đặt 1 gi&agrave;n thuỷ canh nằm ngang ở giữa, 1 bộ thuỷ canh cho c&acirc;y ăn quả hoặc một gi&agrave;n thuỷ canh tay đỡ. Với c&aacute;ch bố tr&iacute; n&agrave;y sẽ c&oacute; thể vừa tận dụng kh&ocirc;ng gian hợp l&yacute;, vừa l&agrave;m đa dạng vườn rau. Đ&acirc;y l&agrave; một sự phối hợp ho&agrave;n hảo được c&oacute; thể ph&ugrave; hợp với hầu hết c&aacute;c hộ gia đ&igrave;nh.</span></span></span></p>\r\n<p style=\"box-sizing: border-box; font-family: Roboto, Arial, sans-serif; font-size: 15px; line-height: 1.5; margin: 0px 0px 1rem; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: #212529; text-align: center;\"><span style=\"box-sizing: border-box; font-size: 14pt; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; font-family: Times, serif; font-size: 15px; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; font-family: Roboto, Arial, sans-serif; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: #000000;\"><img style=\"box-sizing: border-box; font: inherit; border: 0px none; margin: 10px 0px; padding: 0px; vertical-align: middle; max-width: 100%; height: 600px; width: 800px;\" src=\"https://www.skyfarm.vn/uploads/tin-tuc/gian-thuy-canh-co-qua-dat.jpg\" /></span></span></span></p>\r\n<p style=\"box-sizing: border-box; font-family: Roboto, Arial, sans-serif; font-size: 15px; line-height: 1.5; margin: 0px 0px 1rem; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: #212529; text-align: center;\"><span style=\"box-sizing: border-box; font-size: 14pt; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; font-family: Times, serif; font-size: 15px; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; font-family: Roboto, Arial, sans-serif; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: #000000;\"><em style=\"box-sizing: border-box; font-family: inherit; font-size: inherit; line-height: inherit; margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\">Chi ph&iacute; đầu tư gi&agrave;n thuỷ canh kh&ocirc;ng qu&aacute; đắt như nhiều người vẫn nghĩ.</em></span></span></span></p>\r\n<p style=\"box-sizing: border-box; font-family: Roboto, Arial, sans-serif; font-size: 15px; line-height: 1.5; margin: 0px 0px 1rem; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: #212529; text-align: justify;\"><span style=\"box-sizing: border-box; font-size: 14pt; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; font-family: Times, serif; font-size: 15px; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; font-family: Roboto, Arial, sans-serif; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: #000000;\">Đối với gi&agrave;n thủy canh, c&aacute;c kh&aacute;ch h&agrave;ng c&oacute; thể t&ugrave;y chọn theo mức độ nhận nắng của vườn. Nếu vườn nh&agrave; bạn c&oacute; thể nhận nhiều &aacute;nh s&aacute;ng, c&oacute; thể ưu ti&ecirc;n chọn gi&agrave;n ngang. C&ograve;n nếu vườn c&oacute; hướng nắng một b&ecirc;n n&ecirc;n chọn c&aacute;c gi&agrave;n chữ A hoặc b&aacute;n chữ A.</span></span></span></p>\r\n<p style=\"box-sizing: border-box; font-family: Roboto, Arial, sans-serif; font-size: 15px; line-height: 1.5; margin: 0px 0px 1rem; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: #212529; text-align: justify;\"><span style=\"box-sizing: border-box; font-size: 14pt; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; font-family: Times, serif; font-size: 15px; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; font-family: Roboto, Arial, sans-serif; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: #000000;\">Với c&aacute;ch bố tr&iacute; vườn rau thủy canh như tr&ecirc;n, gia đ&igrave;nh chị Thuỷ c&ugrave;ng rất nhiều c&aacute;c kh&aacute;ch h&agrave;ng kh&aacute;c tại SkyFarm vừa c&oacute; cả rau, lại c&ograve;n c&oacute; th&ecirc;m c&aacute;c loại hoa quả như dưa lưới, c&agrave; chua, b&iacute;,&hellip;gi&uacute;p cho bữa cơm gia đ&igrave;nh c&agrave;ng th&ecirc;m phong ph&uacute;.</span></span></span></p>\r\n<h2 style=\"box-sizing: border-box; font-family: Roboto, Arial, sans-serif; font-size: 24px; line-height: 1.2; margin: 0px 0px 0.5rem; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: #212529;\">Chi ph&iacute; cho gi&agrave;n rau thuỷ canh 8m2 l&agrave; bao nhi&ecirc;u? C&oacute; qu&aacute; đắt kh&ocirc;ng?</h2>\r\n<p style=\"box-sizing: border-box; font-family: Roboto, Arial, sans-serif; font-size: 15px; line-height: 1.5; margin: 0px 0px 1rem; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: #212529; text-align: justify;\"><span style=\"box-sizing: border-box; font-size: 14pt; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; font-family: Times, serif; font-size: 15px; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; font-family: Roboto, Arial, sans-serif; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: #000000;\">Như đ&atilde; đề cấp, c&aacute;c kh&aacute;ch h&agrave;ng c&oacute; thể lựa chọn c&aacute;c loại gi&agrave;n v&agrave; kiểu d&aacute;ng, k&iacute;ch cỡ gi&agrave;n sao cho ph&ugrave; hợp với kh&ocirc;ng gian trồng. Điều n&agrave;y sẽ gi&uacute;p tiết kiệm tối đa chi ph&iacute; lắp đặt v&agrave; hiệu quả đạt được cũng cao hơn.</span></span></span></p>\r\n<p style=\"box-sizing: border-box; font-family: Roboto, Arial, sans-serif; font-size: 15px; line-height: 1.5; margin: 0px 0px 1rem; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: #212529; text-align: justify;\"><span style=\"box-sizing: border-box; font-size: 14pt; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; font-family: Times, serif; font-size: 15px; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; font-family: Roboto, Arial, sans-serif; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: #000000;\">Với vườn rau 8m2 nh&agrave; chị Thuỷ, chi ph&iacute; để lắp đặt gi&agrave;n thuỷ canh cụ thể như sau:</span></span></span></p>\r\n<p style=\"box-sizing: border-box; font-family: Roboto, Arial, sans-serif; font-size: 15px; line-height: 1.5; margin: 0px 0px 1rem; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: #212529; text-align: justify;\"><span style=\"box-sizing: border-box; font-size: 14pt; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; font-family: Times, serif; font-size: 15px; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; font-family: Roboto, Arial, sans-serif; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: #000000;\">+ Bộ th&ugrave;ng thuỷ canh tĩnh Grow Box 02 cho c&acirc;y ăn tr&aacute;i c&oacute;&nbsp;</span></span></span><span style=\"box-sizing: border-box; font-size: 14pt; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; font-family: Times, serif; font-size: 15px; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; font-family: Roboto, Arial, sans-serif; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: #000000;\"><span style=\"box-sizing: border-box; font-family: inherit; font-size: inherit; line-height: inherit; font-weight: bolder; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\">gi&aacute; chỉ từ 590 ngh&igrave;n đồng.</span></span></span></span></p>\r\n<p style=\"box-sizing: border-box; font-family: Roboto, Arial, sans-serif; font-size: 15px; line-height: 1.5; margin: 0px 0px 1rem; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: #212529; text-align: justify;\"><span style=\"box-sizing: border-box; font-size: 14pt; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; font-family: Times, serif; font-size: 15px; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; font-family: Roboto, Arial, sans-serif; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: #000000;\">+ Bộ gi&agrave;n thủy canh b&aacute;n chữ A GLS 02 đ&oacute;n &aacute;nh s&aacute;ng 1 chiều hiệu quả gi&aacute; chỉ&nbsp;</span></span></span><span style=\"box-sizing: border-box; font-size: 14pt; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; font-family: Times, serif; font-size: 15px; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; font-family: Roboto, Arial, sans-serif; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: #000000;\"><span style=\"box-sizing: border-box; font-family: inherit; font-size: inherit; line-height: inherit; font-weight: bolder; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\">3 triệu 990 ngh&igrave;n đồng.</span></span></span></span></p>\r\n<p style=\"box-sizing: border-box; font-family: Roboto, Arial, sans-serif; font-size: 15px; line-height: 1.5; margin: 0px 0px 1rem; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: #212529; text-align: justify;\"><span style=\"box-sizing: border-box; font-size: 14pt; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; font-family: Times, serif; font-size: 15px; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; font-family: Roboto, Arial, sans-serif; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: #000000;\">Vậy, ước t&iacute;nh chi ph&iacute; cho 1 vườn rau như vậy chỉ tầm hơn 4.5 triệu đồng, gi&agrave;n rau thuỷ canh n&agrave;y c&oacute; tuổi thọ l&ecirc;n tới hơn 10 năm.</span></span></span></p>\r\n<p style=\"box-sizing: border-box; font-family: Roboto, Arial, sans-serif; font-size: 15px; line-height: 1.5; margin: 0px 0px 1rem; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: #212529; text-align: justify;\"><span style=\"box-sizing: border-box; font-size: 14pt; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; font-family: Times, serif; font-size: 15px; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; font-family: Roboto, Arial, sans-serif; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: #000000;\">Nếu t&iacute;nh tất cả chi ph&iacute; bảo dưỡng, chăm s&oacute;c v&agrave; duy tr&igrave;,&hellip;gia đ&igrave;nh chị Thuỷ chỉ cần bỏ th&ecirc;m khoảng 150.000 đồng/th&aacute;ng (hạt giống, dinh dưỡng,&hellip;) m&agrave; vẫn c&oacute; thể đảm bảo số lượng v&agrave; chất lượng rau sạch cho gia đ&igrave;nh.</span></span></span></p>\r\n<p style=\"box-sizing: border-box; font-family: Roboto, Arial, sans-serif; font-size: 15px; line-height: 1.5; margin: 0px 0px 1rem; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: #212529; text-align: center;\"><span style=\"box-sizing: border-box; font-size: 14pt; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; font-family: Times, serif; font-size: 15px; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; font-family: Roboto, Arial, sans-serif; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: #000000;\"><img style=\"box-sizing: border-box; font: inherit; border: 0px none; margin: 10px 0px; padding: 0px; vertical-align: middle; max-width: 100%; height: 600px; width: 800px;\" src=\"https://www.skyfarm.vn/uploads/tin-tuc/loi-ich-trong-rau-thuy-canh.jpg\" /></span></span></span></p>\r\n<p style=\"box-sizing: border-box; font-family: Roboto, Arial, sans-serif; font-size: 15px; line-height: 1.5; margin: 0px 0px 1rem; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: #212529; text-align: center;\"><span style=\"box-sizing: border-box; font-size: 14pt; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; font-family: Times, serif; font-size: 15px; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; font-family: Roboto, Arial, sans-serif; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: #000000;\"><em style=\"box-sizing: border-box; font-family: inherit; font-size: inherit; line-height: inherit; margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\">Vừa c&oacute; rau sạch để sử dụng, gia đ&igrave;nh chị Thuỷ vừa tận dụng khoảng kh&ocirc;ng gian cho con trẻ vui chơi.</em></span></span></span></p>\r\n<p style=\"box-sizing: border-box; font-family: Roboto, Arial, sans-serif; font-size: 15px; line-height: 1.5; margin: 0px 0px 1rem; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: #212529; text-align: justify;\"><span style=\"box-sizing: border-box; font-size: 14pt; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; font-family: Times, serif; font-size: 15px; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; font-family: Roboto, Arial, sans-serif; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: #000000;\">Trong khi đ&oacute;, trung b&igrave;nh một gia đ&igrave;nh Việt (4 - 6 người) sẽ phải chi từ 1 &ndash; 1.5 triệu đồng/th&aacute;ng để đảm bảo nhu cầu rau sạch cho cả gia đ&igrave;nh. Chưa kể những hộ đ&ocirc;ng th&agrave;nh vi&ecirc;n, khoản chi ph&iacute; n&agrave;y c&oacute; thể l&ecirc;n tới 2 &ndash; 3 triệu/th&aacute;ng ở c&aacute;c tỉnh th&agrave;nh phố lớn.</span></span></span></p>\r\n<p style=\"box-sizing: border-box; font-family: Roboto, Arial, sans-serif; font-size: 15px; line-height: 1.5; margin: 0px 0px 1rem; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: #212529; text-align: justify;\"><span style=\"box-sizing: border-box; font-size: 14pt; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; font-family: Times, serif; font-size: 15px; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; font-family: Roboto, Arial, sans-serif; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: #000000;\">Chị Ng&ocirc; B&iacute;ch Thuỷ cho biết:&nbsp;</span></span></span><span style=\"box-sizing: border-box; font-size: 14pt; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; font-family: Times, serif; font-size: 15px; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; font-family: Roboto, Arial, sans-serif; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: #000000;\"><em style=\"box-sizing: border-box; font-family: inherit; font-size: inherit; line-height: inherit; margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\">&ldquo;Từ ng&agrave;y lắp gi&agrave;n thuỷ canh trồng rau quả gia đ&igrave;nh t&ocirc;i tiết kiệm được hơn &frac34; chi ph&iacute; rau quả so với b&igrave;nh thường mua ở chợ. Gi&agrave;n trồng kh&ocirc;ng cần chăm s&oacute;c nhiều m&agrave; rau quả ph&aacute;t triển nhanh lắm. Ngo&agrave;i ra, khoảng s&acirc;n thượng b&acirc;y giờ c&oacute; th&ecirc;m một khu c&acirc;y rau xanh rất đẹp, c&aacute;c con t&ocirc;i cũng c&oacute; chỗ chơi vừa l&agrave;nh mạnh lại vừa khơi được ch&iacute; t&ograve; m&ograve; của ch&uacute;ng nữa. Đầu tư hơn 4 triệu nhưng giờ tiện lợi, tiết kiệm được hơn bao nhi&ecirc;u. T&ocirc;i rất h&agrave;i l&ograve;ng.&rdquo;</em></span></span></span></p>', 'posts\\November2023\\AAfsnPImHJHey6BLgkQy.jpg', 'gian-thuy-canh-co-qua-dat-review-chi-tiet-tu-nguoi-dung', NULL, NULL, 'PUBLISHED', 0, '2023-11-09 03:52:00', '2023-11-09 03:59:53');
INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(4, 1, 1, 'Kỹ thuật trồng dưa leo baby chuẩn, sai quả, giòn ngọt', NULL, 'Bạn đang băn khoăn tìm hiểu cách trồng dưa leo baby mà chưa biết cần chuẩn bị gì? Cách gieo trồng và chăm sóc ra sao?,…Những thông tin trong bài viết dưới đây sẽ giải đáp toàn bộ thắc mắc nêu trên. Lưu ý rằng, việc nắm rõ kỹ thuật trồng dưa leo baby chắc chắn sẽ giúp các bạn đạt được hiệu quả và năng suất tốt nhất.', '<h2 style=\"box-sizing: border-box; font-family: Roboto, Arial, sans-serif; font-size: 24px; line-height: 1.2; margin: 0px 0px 0.5rem; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: #212529;\">I &ndash; V&igrave; sao dưa leo baby lại được ưa chuộng?</h2>\r\n<p style=\"box-sizing: border-box; font-family: Roboto, Arial, sans-serif; font-size: 15px; line-height: 1.5; margin: 0px 0px 1rem; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: #212529; text-align: justify;\"><span style=\"box-sizing: border-box; font-size: 14pt; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; font-family: Times, serif; font-size: 15px; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; font-family: Roboto, Arial, sans-serif; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: #000000;\">Trong c&aacute;c c&acirc;y họ bầu b&iacute; th&igrave; dưa leo l&agrave; loại c&acirc;y giữ vị tr&iacute; h&agrave;ng đầu trong c&aacute;c chủng loại rau c&oacute; chế biến xuất khẩu, nhất l&agrave; giống dưa leo baby. Dưa leo baby c&ograve;n được gọi l&agrave; dưa chuột baby, sở hữu lượng lớn dưỡng chất tốt cho sức khỏe, được ưa chuộng hơn so với dưa leo th&ocirc;ng thường.</span></span></span></p>\r\n<p style=\"box-sizing: border-box; font-family: Roboto, Arial, sans-serif; font-size: 15px; line-height: 1.5; margin: 0px 0px 1rem; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: #212529; text-align: center;\"><span style=\"box-sizing: border-box; font-size: 14pt; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; font-family: Times, serif; font-size: 15px; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; font-family: Roboto, Arial, sans-serif; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: #000000;\"><img style=\"box-sizing: border-box; font: inherit; border: 0px none; margin: 10px 0px; padding: 0px; vertical-align: middle; max-width: 100%; height: 763px; width: 800px;\" title=\"c&aacute;ch trồng dưa leo baby\" src=\"https://www.skyfarm.vn/uploads/tin-tuc/cach-trong-dua-leo-baby.jpg\" alt=\"c&aacute;ch trồng dưa leo baby\" /></span></span></span></p>\r\n<p style=\"box-sizing: border-box; font-family: Roboto, Arial, sans-serif; font-size: 15px; line-height: 1.5; margin: 0px 0px 1rem; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: #212529; text-align: center;\"><span style=\"box-sizing: border-box; font-size: 14pt; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; font-family: Times, serif; font-size: 15px; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; font-family: Roboto, Arial, sans-serif; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: #000000;\"><em style=\"box-sizing: border-box; font-family: inherit; font-size: inherit; line-height: inherit; margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\">Dưa leo baby sở hữu gi&aacute; trị dinh dưỡng cao n&ecirc;n rất được ưa chuộng.</em></span></span></span></p>\r\n<p style=\"box-sizing: border-box; font-family: Roboto, Arial, sans-serif; font-size: 15px; line-height: 1.5; margin: 0px 0px 1rem; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: #212529; text-align: justify;\"><span style=\"box-sizing: border-box; font-size: 14pt; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; font-family: Times, serif; font-size: 15px; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; font-family: Roboto, Arial, sans-serif; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: #000000;\">Cụ thể, dưa leo baby chứa hầu hết c&aacute;c loại vitamin, kho&aacute;ng chất tự nhi&ecirc;n cần nạp v&agrave;o cơ thể h&agrave;ng ng&agrave;y bao gồm vitamin C, chất xơ, vitamin B1, vitamin B2, vitamin V3, vitamin B5, vitamin B6, sắt, magie, phốt pho, kali, folic acid, vitamin C, canxi, kẽm,&hellip; m&agrave; kh&ocirc;ng phải loại thực phẩm n&agrave;o cũng c&oacute; được.&nbsp;</span></span></span></p>\r\n<p style=\"box-sizing: border-box; font-family: Roboto, Arial, sans-serif; font-size: 15px; line-height: 1.5; margin: 0px 0px 1rem; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: #212529; text-align: justify;\"><span style=\"box-sizing: border-box; font-size: 14pt; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; font-family: Times, serif; font-size: 15px; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; font-family: Roboto, Arial, sans-serif; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: #000000;\">Do đ&oacute;, việc ăn dưa leo baby mỗi ng&agrave;y sẽ l&agrave; phương ph&aacute;p tốt nhất, đơn giản nhất để cung cấp dưỡng chất cho cơ thể đặc biệt l&agrave; nguồn cung cấp vitamin, kho&aacute;ng chất tự nhi&ecirc;n.</span></span></span></p>\r\n<p style=\"box-sizing: border-box; font-family: Roboto, Arial, sans-serif; font-size: 15px; line-height: 1.5; margin: 0px 0px 1rem; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: #212529; text-align: justify;\"><span style=\"box-sizing: border-box; font-size: 14pt; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; font-family: Times, serif; font-size: 15px; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; font-family: Roboto, Arial, sans-serif; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: #000000;\">Chưa kể, dưa leo baby c&ograve;n mang lại gi&aacute; trị kinh tế cao, dễ gieo trồng v&agrave; &iacute;t tốn c&ocirc;ng chăm s&oacute;c. Do đ&oacute; cũng kh&ocirc;ng c&oacute; g&igrave; qu&aacute; ngạc nhi&ecirc;n khi loại quả n&agrave;y nhận được sự ưa th&iacute;ch v&agrave; tin tưởng của nhiều người.</span></span></span></p>\r\n<h2 style=\"box-sizing: border-box; font-family: Roboto, Arial, sans-serif; font-size: 24px; line-height: 1.2; margin: 0px 0px 0.5rem; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: #212529;\">II &ndash; Kỹ thuật trồng dưa leo baby đ&uacute;ng c&aacute;ch</h2>\r\n<p style=\"box-sizing: border-box; font-family: Roboto, Arial, sans-serif; font-size: 15px; line-height: 1.5; margin: 0px 0px 1rem; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: #212529; text-align: justify;\"><span style=\"box-sizing: border-box; font-size: 14pt; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; font-family: Times, serif; font-size: 15px; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; font-family: Roboto, Arial, sans-serif; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: #000000;\">C&oacute; nhiều c&aacute;ch trồng dưa leo baby, tuy nhi&ecirc;n dưới đ&acirc;y, SkyFarm Việt Nam sẽ tổng hợp chi tiết kỹ thuật trồng dưa leo baby theo phương ph&aacute;p thuỷ canh. Đ&acirc;y được đ&aacute;nh gi&aacute; l&agrave; phương ph&aacute;p mang tới hiệu quả tốt nhất hiện nay.</span></span></span></p>\r\n<h3 style=\"box-sizing: border-box; font-family: Roboto, Arial, sans-serif; font-size: 20px; line-height: 1.2; margin: 0px 0px 0.5rem; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: #212529;\">1.Thời vụ v&agrave; c&aacute;ch trộn đất trồng dưa leo baby</h3>\r\n<p style=\"box-sizing: border-box; font-family: Roboto, Arial, sans-serif; font-size: 15px; line-height: 1.5; margin: 0px 0px 1rem; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: #212529; text-align: justify;\"><span style=\"box-sizing: border-box; font-size: 14pt; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; font-family: Times, serif; font-size: 15px; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; font-family: Roboto, Arial, sans-serif; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: #000000;\">Đối với dưa chuột baby, c&aacute;c bạn c&oacute; thể trồng quanh năm bởi đ&acirc;y l&agrave; giống c&acirc;y ưa nhiệt, trồng nơi c&oacute; chứa nhiều &aacute;nh s&aacute;ng.</span></span></span></p>\r\n<p style=\"box-sizing: border-box; font-family: Roboto, Arial, sans-serif; font-size: 15px; line-height: 1.5; margin: 0px 0px 1rem; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: #212529; text-align: center;\"><span style=\"box-sizing: border-box; font-size: 14pt; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; font-family: Times, serif; font-size: 15px; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; font-family: Roboto, Arial, sans-serif; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: #000000;\"><img style=\"box-sizing: border-box; font: inherit; border: 0px none; margin: 10px 0px; padding: 0px; vertical-align: middle; max-width: 100%; height: 800px; width: 800px;\" title=\"kỹ thuật trồng dưa leo baby chuẩn\" src=\"https://www.skyfarm.vn/uploads/tin-tuc/ky-thuat-trong-dua-leo-baby.jpg\" alt=\"kỹ thuật trồng dưa leo baby chuẩn\" /></span></span></span></p>\r\n<p style=\"box-sizing: border-box; font-family: Roboto, Arial, sans-serif; font-size: 15px; line-height: 1.5; margin: 0px 0px 1rem; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: #212529; text-align: justify;\"><span style=\"box-sizing: border-box; font-size: 14pt; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; font-family: Times, serif; font-size: 15px; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; font-family: Roboto, Arial, sans-serif; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: #000000;\">Tuy nhi&ecirc;n, bộ rễ của dưa leo baby yếu v&agrave; sức hấp thụ của rễ k&eacute;m n&ecirc;n cần trồng trong đất gi&agrave;u dinh dưỡng, đất thịt pha c&aacute;t, đất thịt nhẹ, tơi xốp v&agrave; m&agrave;u mỡ. Do đ&oacute;, trước khi trồng n&ecirc;n trộn đất c&ugrave;ng với tro trấu, xơ dừa, m&ugrave;n hoặc ph&acirc;n tr&ugrave;n quế theo tỷ lệ 4:1:1 th&iacute;ch hợp để đất c&oacute; thể tơi xốp tho&aacute;t nước tốt.</span></span></span></p>\r\n<h3 style=\"box-sizing: border-box; font-family: Roboto, Arial, sans-serif; font-size: 20px; line-height: 1.2; margin: 0px 0px 0.5rem; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: #212529;\">2. Xử l&yacute; hạt giống trước khi gieo</h3>\r\n<p style=\"box-sizing: border-box; font-family: Roboto, Arial, sans-serif; font-size: 15px; line-height: 1.5; margin: 0px 0px 1rem; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: #212529; text-align: justify;\"><span style=\"box-sizing: border-box; font-size: 14pt; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; font-family: Times, serif; font-size: 15px; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; font-family: Roboto, Arial, sans-serif; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: #000000;\">C&aacute;c bạn c&oacute; thể gieo thẳng hạt giống, tuy nhi&ecirc;n n&ecirc;n ng&acirc;m ủ nếu muốn kiểm so&aacute;t tốt hạt giống của m&igrave;nh:</span></span></span></p>\r\n<p style=\"box-sizing: border-box; font-family: Roboto, Arial, sans-serif; font-size: 15px; line-height: 1.5; margin: 0px 0px 1rem; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: #212529; text-align: justify;\"><span style=\"box-sizing: border-box; font-size: 14pt; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; font-family: Times, serif; font-size: 15px; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; font-family: Roboto, Arial, sans-serif; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: #000000;\">+ Ng&acirc;m hạt trong nước ấm khoảng 38&ordm; C &ndash; 45&ordm; C ( 2 s&ocirc;i + 3 lạnh) trong 3 - 4 giờ.</span></span></span></p>\r\n<p style=\"box-sizing: border-box; font-family: Roboto, Arial, sans-serif; font-size: 15px; line-height: 1.5; margin: 0px 0px 1rem; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: #212529; text-align: justify;\"><span style=\"box-sizing: border-box; font-size: 14pt; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; font-family: Times, serif; font-size: 15px; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; font-family: Roboto, Arial, sans-serif; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: #000000;\">_ Vớt hạt giống ra v&agrave; để r&aacute;o sau đ&oacute; ủ trong b&ocirc;ng g&ograve;n ẩm (hoặc vải mềm) khoảng 36 &ndash; 48 giờ, c&aacute;c hạt sẽ nh&uacute; mầm.</span></span></span></p>', 'posts\\November2023\\bZBsQnU1DMxLn4U7O0F7.jpg', 'ky-thuat-trong-dua-leo-baby-chuan-sai-qua-gion-ngot', NULL, NULL, 'PUBLISHED', 0, '2023-11-09 03:53:00', '2023-11-09 03:56:44');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT 10,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `promotional_price` int(11) DEFAULT NULL,
  `evaluate` int(11) DEFAULT NULL,
  `quantity_purchased` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `details`, `price`, `image`, `images`, `featured`, `quantity`, `category_id`, `description`, `created_at`, `updated_at`, `promotional_price`, `evaluate`, `quantity_purchased`) VALUES
(122, 'Hạt giống cải soăn Kale xanh và tím', 'hat-giong-cai-soan-kale-xanh-va-tim', 'Giao hàng toàn quốc - Nhận hàng thanh toán', 39000, 'products/November2023/ONGnFaoCJ37fRaYWKIaw.jpg', NULL, 1, 96, 7, '<p style=\"box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; color: #000000; font-family: Roboto, sans-serif; font-size: 16px;\">C&aacute;c chuy&ecirc;n gia đ&atilde; chứng minh trong cải kale chưa rất nhiều vitamin C, canxi ngo&agrave;i ra trong cải kale c&ograve;n dồi d&agrave;o vitamin A, K c&ugrave;ng lutein, sắt v&agrave; chất chồng oxy h&oacute;a.</p>\r\n<p style=\"box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; color: #000000; font-family: Roboto, sans-serif; font-size: 16px;\">Với dưỡng chất phong ph&uacute;,&nbsp;<span style=\"box-sizing: border-box;\">cải kale xoăn t&iacute;m l&agrave; thực phẩm rất bổ dưỡng</span>, tốt cho sức khỏe v&agrave; sắc đẹp. C&aacute;c&nbsp;<em style=\"box-sizing: border-box;\">c&ocirc;ng dụng của cải kale</em>&nbsp;đối với sức khỏe như:</p>\r\n<p>- Hỗ trợ th&uacute;c đẩy sức khỏe tim mạch<br>- Hỗ trợ thải độc<br>- Tăng cường thị gi&aacute;c<br>- Hỗ trợ giảm c&acirc;n<br>- Cải thiện t&igrave;nh trạng mệt mỏi<br>- Cải thiện sức khỏe xương khớp<br>- Ph&ograve;ng chống ung thư<br>- Hỗ trợ điều trị bệnh tiểu đường</p>', '2023-11-08 22:44:11', '2023-11-17 20:21:40', NULL, 4, 4),
(123, 'Hạt giống măng tây xanh F1 giống mới', 'hat-giong-mang-tay-xanh', 'Thời vụ gieo trồng: quanh năm (miền Nam)', 35000, 'products/November2023/vGq4BSYznOjsv2IkZSMv.jpg', NULL, 1, 78, 7, '<p style=\"box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; color: #000000; font-family: Roboto, sans-serif; font-size: medium;\">Hạt giống măng t&acirc;y</p>\r\n<p style=\"box-sizing: border-box; margin-bottom: 1.3em; margin-top: 0px; color: #000000; font-family: Roboto, sans-serif; font-size: medium;\">&ndash; Thời vụ gieo trồng: quanh năm (miền Nam)<br style=\"box-sizing: border-box;\">&ndash; Thời gian bắt đầu thu hoạch: 7-8 th&aacute;ng sau khi gieo, năng suất ổn định 1 năm (sau gieo) v&agrave; c&oacute; thể k&eacute;o d&agrave;i từ 2-3 năm<br style=\"box-sizing: border-box;\">&ndash; Khoảng c&aacute;ch trồng: h&agrave;ng đ&ocirc;i c&aacute;ch h&agrave;ng đ&ocirc;i 50cm, h&agrave;ng c&aacute;ch h&agrave;ng của h&agrave;ng đ&ocirc;i: 30cm, c&acirc;y c&aacute;ch c&acirc;y tr&ecirc;n h&agrave;ng 30cm<br style=\"box-sizing: border-box;\">&ndash; Lượng giống gieo trồng/ 1000m2: 250 &ndash; 300g<br style=\"box-sizing: border-box;\">C&Aacute;CH TRỒNG HẠT MĂNG T&Acirc;Y<br style=\"box-sizing: border-box;\"><span class=\"_5mfr\" style=\"box-sizing: border-box;\">?</span>Chuẩn bị:&nbsp;&nbsp;Đất trồng măng t&acirc;y l&agrave; đất ph&ugrave; sa, đất thịt nhẹ hoặc đất pha c&aacute;t. Nếu tự trộn đất bạn n&ecirc;n th&ecirc;m ph&acirc;n chuồng hữu cơ, rơm hoặc cỏ kh&ocirc; cắt nhỏ trộn đều theo tỷ lệ 2 phần đất, 1 phần ph&acirc;n hữu cơ, 1 phần tro trấu hoặc rơm kh&ocirc;&hellip;<br style=\"box-sizing: border-box;\"><span class=\"_5mfr\" style=\"box-sizing: border-box;\">?</span>&nbsp;Th&ugrave;ng xốp to<span class=\"text_exposed_show\" style=\"box-sizing: border-box;\"><br style=\"box-sizing: border-box;\">&ndash; Ươm hạt: Hạt giống măng t&acirc;y lớn v&agrave; c&oacute; vỏ rất d&agrave;y, v&igrave; vậy trước khi tiến h&agrave;nh ng&acirc;m ủ hạt măng t&acirc;y th&igrave; cần mang hạt giống đem phơi nắng chiều từ 2 &ndash; 3 giờ cho hạt kh&ocirc; để tăng cường khả năng h&uacute;t nước khi ng&acirc;m hạt. Ủ hạt gi&ocirc;́ng trong nước &acirc;̉m khoảng 2-4 giờ. Sau đ&oacute; xả bằng nước lạnh, ch&agrave; x&aacute;t hạt để rửa sạch bụi bẩn v&agrave; loại bỏ những hạt hư l&eacute;p.<br style=\"box-sizing: border-box;\">&ndash; Chỉ cần ủ hạt trong khăn ẩm tối m&agrave;u nhiệt độ 30 &ndash; 40&deg;C trong v&ograve;ng 1 tuần, để nơi k&iacute;n gi&oacute; v&agrave; &aacute;nh s&aacute;ng, c&aacute;ch 12 tiếng phun nước ấm cho khăn 1 lần. Sau 9 &ndash; 12 ng&agrave;y ủ th&igrave; hạt giống sẽ nứt nanh.<br style=\"box-sizing: border-box;\"><span class=\"_5mfr\" style=\"box-sizing: border-box;\"><span class=\"_6qdm\" style=\"box-sizing: border-box;\">?</span></span>Gieo hạt: Gieo hạt s&acirc;u 1-2,5 cm. Phủ l&ecirc;n hạt một lớp đất mỏng v&agrave; tưới nước. Ch&uacute; &yacute; phải tưới nước h&agrave;ng ng&agrave;y để cung cấp độ ẩm cho hạt nảy mầm. Ch&uacute; &yacute; li&ecirc;n tục bổ sung nước cho c&acirc;y khi đất kh&ocirc;.<br style=\"box-sizing: border-box;\"><span class=\"_5mfr\" style=\"box-sizing: border-box;\"><span class=\"_6qdm\" style=\"box-sizing: border-box;\">?</span></span>Chăm s&oacute;c: B&oacute;n ph&acirc;n chuồng, ph&acirc;n l&acirc;n, ph&acirc;n NPK theo chu kỳ 10-15 ng&agrave;y.</span></p>', '2023-11-08 22:54:02', '2023-11-21 04:31:21', NULL, 4, 9),
(124, 'Hạt giống rau muống lá liễu', 'hat-giong-rau-muong-la-lieu', 'Hạt giống rau muống lá tre', 25000, 'products/November2023/AyvFbdkWVj5Jr1gR4bSx.png', NULL, 1, 85, 7, '<p><span style=\"color: #000000; font-family: Roboto, sans-serif; font-size: medium;\">&ndash; Hạt Giống Rau Muống: c&oacute; nguồn gốc xuất xứ từ Việt Nam</span><br style=\"box-sizing: border-box; color: #000000; font-family: Roboto, sans-serif; font-size: medium;\"><span style=\"color: #000000; font-family: Roboto, sans-serif; font-size: medium;\">&ndash; Giống Rau Muống sinh trưởng mạnh, độ đồng đều cao, trồng được tr&ecirc;n nhiều v&ugrave;ng đất kh&aacute;c nhau</span><br style=\"box-sizing: border-box; color: #000000; font-family: Roboto, sans-serif; font-size: medium;\"><span style=\"color: #000000; font-family: Roboto, sans-serif; font-size: medium;\">&ndash; Giống kh&aacute;ng s&acirc;u bệnh tốt, năng suất cao, chất lượng ăn ngon, ngọt</span><br style=\"box-sizing: border-box; color: #000000; font-family: Roboto, sans-serif; font-size: medium;\"><span style=\"color: #000000; font-family: Roboto, sans-serif; font-size: medium;\">&ndash; Thời vụ trồng: quanh năm</span><br style=\"box-sizing: border-box; color: #000000; font-family: Roboto, sans-serif; font-size: medium;\"><span style=\"color: #000000; font-family: Roboto, sans-serif; font-size: medium;\">&ndash; Thời gian thu hoạch: 25 &ndash; 30 ng&agrave;y sau khi gieo</span><br style=\"box-sizing: border-box; color: #000000; font-family: Roboto, sans-serif; font-size: medium;\"><span style=\"color: #000000; font-family: Roboto, sans-serif; font-size: medium;\">&ndash; Khoảng c&aacute;ch trồng: gieo sạ theo l&iacute;p (luống)</span><br style=\"box-sizing: border-box; color: #000000; font-family: Roboto, sans-serif; font-size: medium;\"><span style=\"color: #000000; font-family: Roboto, sans-serif; font-size: medium;\">&ndash; Lượng giống cần thiết/1000m2: sạ thẳng 10kg</span></p>', '2023-11-08 22:56:29', '2023-11-16 20:23:12', NULL, 3, 10),
(125, 'Hạt giống đậu bắp xanh giống mới', 'hat-giong-dau-bap-xanh', 'Hạt giống đậu bắp xanh cao sản siêu lùn là một giống đậu bắp mới', 15000, 'products/November2023/o98vkn43diQcG3pXWWao.jpg', NULL, 1, 71, 7, '<p style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; border: 0px; background: transparent; outline: 0px; vertical-align: top; color: #333333; font-family: Arial, sans-serif;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; background: transparent; font-weight: inherit; outline: 0px; vertical-align: top; font-size: 14pt; font-family: arial, helvetica, sans-serif;\"><strong style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; background: transparent; outline: 0px; vertical-align: top;\">Hạt giống đậu bắp xanh cao sản si&ecirc;u l&ugrave;n&nbsp;</strong>l&agrave; một giống đậu bắp mới, đạt giải AAS về sản lượng v&agrave; cả chất lượng. Được biết đ&acirc;y l&agrave; giống rất được ưa chuộng hiện nay v&igrave; mang lại hiệu quả kinh tế rất cao cho người trồng.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; border: 0px; background: transparent; outline: 0px; vertical-align: top; color: #333333; font-family: Arial, sans-serif;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; background: transparent; font-weight: inherit; outline: 0px; vertical-align: top; font-size: 14pt; font-family: arial, helvetica, sans-serif;\"><strong style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; background: transparent; outline: 0px; vertical-align: top;\">- Đậu bắp xanh cao sản si&ecirc;u l&ugrave;n</strong>&nbsp;hay c&ograve;n được biết đến với c&aacute;i t&ecirc;n Abelmoschus Esculentus. Đ&acirc;y l&agrave; loại hạt giống đậu bắp mới, khi sinh trưởng th&acirc;n c&acirc;y c&oacute; thể đạt đến độ cao 120 cm, rất sai quả với m&agrave;u l&aacute; xanh đậm, d&agrave;y chất diệp lục.</span></p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; border: 0px; background: transparent; outline: 0px; vertical-align: top; color: #333333; font-family: Arial, sans-serif;\"><span style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; background: transparent; font-weight: inherit; outline: 0px; vertical-align: top; font-size: 14pt; font-family: arial, helvetica, sans-serif;\"><strong style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; background: transparent; outline: 0px; vertical-align: top;\">- Hạt giống đậu bắp xanh cao sản si&ecirc;u l&ugrave;n&nbsp;</strong>c&oacute; thể cho quả to đến gần 23 cm, nhưng th&ocirc;ng thường sẽ được thu hoạch khi quả đạt từ 7 &ndash; 10 cm.&nbsp;<strong style=\"box-sizing: border-box; margin: 0px; padding: 0px; border: 0px; background: transparent; outline: 0px; vertical-align: top;\">Đậu bắp xanh cao sản si&ecirc;u l&ugrave;n</strong>&nbsp;c&oacute; thịt d&agrave;y, ngon, ngọt; chi&ecirc;n, x&agrave;o đều thơm ngon đậm đ&agrave;.</span></p>', '2023-11-08 22:58:36', '2023-11-22 02:00:12', NULL, 4, 10),
(126, 'Bút thử nồng độ PH chính hãng', 'but-thu-nong-do-ph', 'Mỗi môi trường có một nồng độ PH nhất định, trong cơ thể người cũng vậy', 125000, 'products/November2023/p9qfsWLk3ReDopLZdKFx.jpg', '[\"products\\/November2023\\/rxmhwA53821Xv68dz5rS.jpg\"]', 1, 69, 8, '<p><span style=\"color: #333333; font-family: Arial, Tahoma, Verdana, sans-serif;\">Mỗi m&ocirc;i trường c&oacute; một nồng độ PH nhất định, trong cơ thể người cũng vậy. Nếu giữ độ PH trong cơ thể người trong khoảng&nbsp;</span><strong style=\"box-sizing: border-box; color: #333333; font-family: Arial, Tahoma, Verdana, sans-serif;\">7.3 &ndash; 7.4</strong><span style=\"color: #333333; font-family: Arial, Tahoma, Verdana, sans-serif;\">&nbsp;v&agrave; mang t&iacute;nh kiềm th&igrave; đ&acirc;y l&agrave; điều kiện tốt nhất để c&aacute;c tế b&agrave;o hoạt động b&igrave;nh thường.&nbsp;Nếu cơ thể mất đi t&iacute;nh kiềm m&agrave; chuyển sang t&iacute;nh axit th&igrave; lượng axit dư thừa trong cơ thể sẽ g&acirc;y ra c&aacute;c bệnh m&atilde;n t&iacute;nh như ung thư, tiểu đường, c&aacute;c bệnh về dạ d&agrave;y, đường ruột,&hellip;Một trong những phương ph&aacute;p gi&uacute;p c&acirc;n bằng độ hP trong cơ thể hiệu quả nhất l&agrave; bổ xung nước c&oacute; t&iacute;nh kiềm gi&uacute;p c&acirc;n bằng t&iacute;nh axit trong cơ thể. Lợi &iacute;ch của nước gi&agrave;u t&iacute;nh kiềm&nbsp;l&agrave; vậy, l&agrave;m sao để biết được nguồn nước m&agrave; gia đ&igrave;nh bạn đang sử dụng c&oacute; đạt đủ ti&ecirc;u chuẩn tốt cho sức khỏe hay kh&ocirc;ng, đ&oacute; l&agrave; l&uacute;c bạn cần một thiết bị đo độ pH nhỏ gọn, độ ch&iacute;nh x&aacute;c cao như&nbsp;</span><em style=\"box-sizing: border-box; color: #333333; font-family: Arial, Tahoma, Verdana, sans-serif;\"><strong style=\"box-sizing: border-box;\">B&uacute;t đo độ pH TPH01605&nbsp;</strong></em><span style=\"color: #333333; font-family: Arial, Tahoma, Verdana, sans-serif;\">trong nh&agrave; m&igrave;nh.</span></p>', '2023-11-08 23:05:17', '2023-11-17 23:25:58', NULL, 5, 16),
(127, 'Bút đo nồng độ PPM chính hãng', 'but-do-nong-do-ppm-chinh-hang', 'Bút đo nồng độ PPM chính hãng tại Thuỷ canh Việt Nam là loại bút cầm tay tốt nhất thị trường hiện nay.', 120000, 'products/November2023/j6CBGonVHgiaQr0gp9HU.jpg', '[\"products\\\\November2023\\\\VT682RaHWwc08o6vIkkV.jpg\"]', 1, 96, 8, '<p style=\"box-sizing: border-box; font-family: Roboto, Arial, sans-serif; font-size: 15px; line-height: 1.5; margin: 0px 0px 1rem; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: #212529; text-align: justify;\"><span style=\"box-sizing: border-box; font-size: 14pt; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; font-family: Times, serif; font-size: 15px; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; font-family: Roboto, Arial, sans-serif; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: #000000;\"><span style=\"box-sizing: border-box; font-family: inherit; font-size: inherit; line-height: inherit; font-weight: bolder; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\">B&uacute;t đo nồng độ PPM ch&iacute;nh h&atilde;ng&nbsp;tại Thuỷ canh SkyFarm Việt Nam l&agrave; loại b&uacute;t cầm tay tốt nhất thị trường hiện nay. Sản phẩm đảm bảo độ bền v&agrave; mức độ ch&iacute;nh x&aacute;c cực cao. Đặc biệt, b&uacute;t đo nồng độ PPM&nbsp;</span></span></span></span><span style=\"box-sizing: border-box; font-size: 14pt; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; font-family: Times, serif; font-size: 15px; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; font-family: Roboto, Arial, sans-serif; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: #000000;\"><span style=\"box-sizing: border-box; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; font-family: inherit; font-size: inherit; line-height: inherit; font-weight: bolder; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\">TDS &amp; EC Meter hiện c&oacute; mức gi&aacute; cực kỳ ưu đ&atilde;i. C</span></span><span style=\"box-sizing: border-box; font-family: inherit; font-size: inherit; line-height: inherit; font-weight: bolder; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\">hỉ với 210 ngh&igrave;n đồng, c&aacute;c bạn đ&atilde; sở hữu ngay loại dụng cụ thuỷ canh cực kỳ hữu &iacute;ch.</span></span></span></span></p>\r\n<p style=\"box-sizing: border-box; font-family: Roboto, Arial, sans-serif; font-size: 15px; line-height: 1.5; margin: 0px 0px 1rem; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: #212529; text-align: center;\"><img style=\"box-sizing: border-box; font: inherit; border: 0px none; margin: 10px auto; padding: 0px; vertical-align: middle; max-width: 100%; height: 500px; display: block; width: 500px;\" title=\"Th&ocirc;ng số kỹ thuật b&uacute;t đo ppm\" src=\"https://www.skyfarm.vn/uploads/Thuy-canh/thiet-bi-ho-tro/but-do-nong-do-ppm-1.jpg\" alt=\"Th&ocirc;ng số kỹ thuật b&uacute;t đo ppm\"></p>\r\n<h2 style=\"box-sizing: border-box; font-family: Roboto, Arial, sans-serif; font-size: 24px; line-height: 1.2; margin: 0px 0px 0.5rem; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: #212529; text-align: justify;\"><span style=\"box-sizing: border-box; font-size: 14pt; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; font-family: Times, serif; font-size: 15px; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; font-family: Roboto, Arial, sans-serif; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: #000000;\"><span style=\"box-sizing: border-box; font-family: inherit; font-size: inherit; line-height: inherit; font-weight: bolder; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\">Th&ocirc;ng tin về b&uacute;t đo nồng độ PPM&nbsp;</span></span></span></span></h2>\r\n<p style=\"box-sizing: border-box; font-family: Roboto, Arial, sans-serif; font-size: 15px; line-height: 1.5; margin: 0px 0px 1rem; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: #212529; text-align: justify;\"><span style=\"box-sizing: border-box; font-size: 14pt; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; font-family: Times, serif; font-size: 15px; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline;\"><span style=\"box-sizing: border-box; font-family: Roboto, Arial, sans-serif; line-height: 1.5; margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; vertical-align: baseline; color: #000000;\">Dung dịch thủy canh c&oacute; vai tr&ograve; quyết định trực tiếp tới năng suất của c&acirc;y trồng bằng phương ph&aacute;p thuỷ canh. Tuy nhi&ecirc;n, c&aacute;c chất dinh dưỡng trong dung dịch thuỷ canh cần c&oacute; h&agrave;m lượng, nồng độ đầy đủ, theo đ&uacute;ng tỉ lệ để c&acirc;y c&oacute; thể ph&aacute;t triển tốt. V&agrave; c&aacute;c loại b&uacute;t đo nồng độ dinh dưỡng thủy canh PPM đ&oacute;ng vai tr&ograve; quan trọng trong c&ocirc;ng đoạn n&agrave;y.</span></span></span></p>', '2023-11-08 23:08:28', '2023-11-23 05:02:55', NULL, 4, 4),
(128, 'Dung dịch thủy canh cho cây ăn trái', 'dung-dich-dinh-duong-thuy-canh-danh-cho-cay-an-trai', 'Dung dịch thủy canh Hydro Umat V là một loại dinh dưỡng thủy canh cao cấp', 85000, 'products/November2023/2IEnz6hfP8PBxjP2xNHn.png', NULL, 1, 99, 9, '<p><strong>Dung dịch thủy canh</strong>&nbsp;hydro umat V l&agrave; một loại ph&acirc;n b&oacute;n thủy canh được pha cho&nbsp;<strong>nước trồng rau thủy canh</strong>&nbsp;cho c&acirc;y rau ăn l&aacute;.&nbsp;<strong>D</strong><strong>ung dịch thủy canh</strong> đảm bảo cung cấp chất dinh dưỡng cho c&acirc;y trồng trong hệ thống thuỷ canh. Bao gồm 3 nh&oacute;m hợp chất quan trọng.</p>\r\n<div>\r\n<h3>3 nh&oacute;m chất dinh dưỡng thiết yếu phần kh&ocirc;ng thể thiếu trong&nbsp;<strong>dinh dưỡng thủy canh&nbsp;</strong></h3>\r\n<p>Đa lượng: đ&acirc;y l&agrave; nh&oacute;m c&aacute;c chất dinh dưỡng thiết yếu m&agrave; c&acirc;y trồng cần nhiều bao gồm: đạm (N), l&acirc;n (P), kali (K).</p>\r\n</div>\r\n<div>Trong nước dinh dưỡng cho c&acirc;y thủy canh c&aacute;c chất n&agrave;y tồn tại dưới những ion để c&acirc;y dễ hấp thu như: NO3-N (đạm-nitrat),&nbsp; P2O5 (l&acirc;n) sẽ chuyễn h&oacute;a th&agrave;nh PO43- để c&acirc;y dễ hấp thu. V&agrave; K2O (kali)</div>\r\n<div>&nbsp;</div>\r\n<div>Nh&oacute;m thứ 2 l&agrave; nh&oacute;m trung lượng.</div>\r\n<div>\r\n<div>Đ&acirc;y l&agrave; c&aacute;c chất dinh dưỡng kho&aacute;ng thiết yếu m&agrave; c&acirc;y trồng cần ở mức trung b&igrave;nh bao gồm: lưu huỳnh (S), canxi (Ca), magi&ecirc;(Mg).</div>\r\n<div>Mặc d&ugrave; số lượng y&ecirc;u cầu kh&ocirc;ng lớn như NPK nhưng c&aacute;c chất trung lượng (canxi, magi&ecirc; v&agrave; lưu huỳnh) l&agrave; những chất c&oacute; vai tr&ograve; v&ocirc; c&ugrave;ng thiết yếu đối với c&acirc;y trồng.</div>\r\n<div>&nbsp;</div>\r\n<div>Cuối c&ugrave;ng l&agrave; nh&oacute;m vi lượng trong&nbsp;dung dịch trồng rau thủy canh.&nbsp;Đ&acirc;y l&agrave; c&aacute;c chất dinh dưỡng kho&aacute;ng thiết yếu m&agrave; c&acirc;y trồng cần với số lượng &iacute;t, bao gồm c&aacute;c nguy&ecirc;n tố: kẽm (Zn), sắt (Fe), đồng (Cu), mangan (Mn), bo (B), molypđen (Mo), Clo (Cl)</div>\r\n<div>Nếu thiếu 1 trong c&aacute;c hợp chất tr&ecirc;n c&acirc;y trồng sẽ ph&aacute;t triển kh&ocirc;ng tốt, v&agrave;ng l&aacute;, c&ograve;i c&acirc;y..nhưng nếu dư th&igrave; chất lượng rau ăn sẽ bị ảnh hưởng đ&aacute;ng kể.</div>\r\n</div>', '2023-11-11 04:00:21', '2023-11-15 03:42:04', NULL, 4, 1),
(129, 'Combo 50 viên nén xơ dừa', 'combo-50-vien-nen-xo-dua', 'Thành phần: Mụn dừa đã xử lý, men vi sinh cao cấp và chất dinh dưỡng hữu cơ', 49000, 'products/November2023/uhOJDaQu7uinKhEXLgFz.jpg', NULL, 1, 487, 8, '<p>Trong nội dung b&agrave;i viết dưới đ&acirc;y ch&uacute;ng t&ocirc;i xin giới thiệu tới c&aacute;c bạn vi&ecirc;n n&eacute;n ươm hạt xơ dừa được tạo th&agrave;nh từ xơ dừa n&eacute;n, k&iacute;ch thước của n&oacute; khi chưa sử dụng chỉ khoảng 1cm b&aacute;n k&iacute;nh, 1cm chiều cao &ndash; tương đương với một con cờ tướng. Đ&atilde; qua kiểm nghiệm thực tế cho thấy vi&ecirc;n n&eacute;n ươm hạt xơ dừa c&oacute; nhiều ưu điểm cũng như t&iacute;nh năng ưu việt hơn so với phương ph&aacute;p ươm hạt truyền thống rất nhiều.</p>\r\n<p><strong>Những đặc t&iacute;nh v&agrave; ưu điểm của vi&ecirc;n n&eacute;n xơ dừa:</strong></p>\r\n<p>-Kh&ocirc;ng cần sử dụng th&ecirc;m đất, ph&acirc;n b&oacute;n hay thuốc k&iacute;ch th&iacute;ch nảy mầm<br>-Sạch sẽ v&agrave; rất tiện dụng, kh&ocirc;ng cần trộn đất đổ v&agrave;o như c&aacute;c loại bầu ươm<br>-C&acirc;y được ươm bằng VI&Ecirc;N N&Eacute;N ƯƠM HẠT rất bụ bẫm, mập mạp, ngừa s&acirc;u bệnh hại.<br>-Bạn c&oacute; thể nhồi hạt v&agrave;o lỗ tr&ecirc;n vi&ecirc;n n&eacute;n xơ dừa, xong mới xếp ch&uacute;ng ra s&agrave;n v&agrave; tưới nước l&ecirc;n, Vi&ecirc;n xơ dừa sẽ nở ra tương đương với c&aacute;c loại bầu ươm<br>-Vi&ecirc;n n&eacute;n xơ dừa đ&atilde; được pha trộn đủ dinh dưỡng k&iacute;ch th&iacute;ch cho hạt nảy mầm, hơn nữa cấu tạo của xơ dừa cũng tạo độ ẩm tối ưu cho hạt nảy mầm hơn l&agrave; sử dụng c&aacute;c loại đất.<br>-Bạn cũng kh&ocirc;ng cần phải x&eacute; bầu ươm trước khi đem trồng, giấy bọc của bầu ươm sẽ tự ti&ecirc;u hủy sau khi được ch&ocirc;n xuống đất.<br>-Vi&ecirc;n n&eacute;n thay thế cho những bầu ươm hạt tự chế truyền thống m&agrave; lại giản tiện, an to&agrave;n. Ngo&agrave;i ra, nhờ k&iacute;ch thước nhỏ gọn, nhẹ nh&agrave;ng n&ecirc;n c&oacute; thể dễ d&agrave;ng vận chuyển v&agrave; sử dụng.</p>\r\n<p><img class=\"aligncenter wp-image-1946 size-full entered lazyloaded\" style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://vattuthuycanh.com/wp-content/uploads/combo-100-vien-nen-xo-dua3.jpg\" sizes=\"(max-width: 600px) 100vw, 600px\" srcset=\"https://vattuthuycanh.com/wp-content/uploads/combo-100-vien-nen-xo-dua3.jpg 600w, https://vattuthuycanh.com/wp-content/uploads/combo-100-vien-nen-xo-dua3-100x100.jpg 100w, https://vattuthuycanh.com/wp-content/uploads/combo-100-vien-nen-xo-dua3-20x20.jpg 20w, https://vattuthuycanh.com/wp-content/uploads/combo-100-vien-nen-xo-dua3-300x300.jpg 300w\" alt=\"Combo 1000 vi&ecirc;n n&eacute;n ươm hạt xơ dừa\" width=\"600\" height=\"600\" data-lazy-srcset=\"https://vattuthuycanh.com/wp-content/uploads/combo-100-vien-nen-xo-dua3.jpg 600w, https://vattuthuycanh.com/wp-content/uploads/combo-100-vien-nen-xo-dua3-100x100.jpg 100w, https://vattuthuycanh.com/wp-content/uploads/combo-100-vien-nen-xo-dua3-20x20.jpg 20w, https://vattuthuycanh.com/wp-content/uploads/combo-100-vien-nen-xo-dua3-300x300.jpg 300w\" data-lazy-sizes=\"(max-width: 600px) 100vw, 600px\" data-lazy-src=\"https://vattuthuycanh.com/wp-content/uploads/combo-100-vien-nen-xo-dua3.jpg\" data-ll-status=\"loaded\"></p>\r\n<p><strong>C&aacute;ch sử dụng vi&ecirc;n n&eacute;n ươm hạt xơ dừa:</strong></p>\r\n<p>-Cho vi&ecirc;n n&eacute;n xơ dừa v&agrave;o khay hoặc chậu t&ugrave;y &yacute;<br>-Sau đ&oacute; đổ nước v&agrave;o v&agrave; ng&acirc;m vi&ecirc;n n&eacute;n khoảng 1 ph&uacute;t cho đến khi vi&ecirc;n n&eacute;n nở gấp 3 lần thể t&iacute;ch ban đầu<br>-Cho hạt giống cần ươm hạt v&agrave;o lỗ ở giữa vi&ecirc;n n&eacute;n<br>-Đặt vi&ecirc;n n&eacute;n ở nơi kh&ocirc; gi&aacute;o, tr&aacute;nh &aacute;nh nắng trực tiếp<br>-Tưới phun sương h&agrave;ng ng&agrave;y để giữ ẩm vi&ecirc;n n&eacute;n<br>-Khi c&acirc;y con được 5 l&aacute; trồng vi&ecirc;n n&eacute;n l&ecirc;n gi&agrave;n, hoặc trụ thủy canh.</p>', '2023-11-11 04:05:38', '2023-11-17 20:21:40', 45000, 5, 7),
(130, 'Hạt giống cà chua chịu nhiệt lai', 'hat-giong-ca-chua-chiu-nhiet', 'Hạt giống cà chua chịu nhiệt lai F1 là loại cây sinh trưởng hữu hạn, thích hợp trồng mùa mưa và mùa khô', 29000, 'products/November2023/fF4gChCaLIVfyAXyVlgf.png', NULL, 1, 198, 7, '<p><strong>1. Đất trồng:</strong><br>- Đất sạch gi&agrave;u dinh dưỡng, trước khi trồng cần phủ một lớp ph&acirc;n hữu cơ l&ecirc;n mặt đất trồng.<br>- V&igrave; c&acirc;y ưa ẩm n&oacute;ng n&ecirc;n kh&ocirc;ng để đất bị qu&aacute; kh&ocirc;. N&ecirc;n tưới nước h&agrave;ng ng&agrave;y để giữ ẩm cho đất.<br><strong>2. Gieo hạt:</strong><br>- Ng&acirc;m hạt giống trong nước ấm theo tỷ lệ 2 s&ocirc;i 3 lạnh khoảng từ 4-5 tiếng trước khi gieo.<br>- Tiến h&agrave;nh gieo hạt v&agrave;o khay hoặc chậu. Để ở nơi c&oacute; &aacute;nh nắng nhiều nhưng kh&ocirc;ng qu&aacute; kh&ocirc; n&oacute;ng.<br>- Khi gieo xong h&atilde;y tưới phun sương nhẹ l&ecirc;n bề mặt cho đất ẩm để hạt nhanh nẩy mầm.<br>- D&ugrave;ng một tấm b&igrave;a hay tờ b&aacute;o để che mặt chậu lại nhằm tạo độ ẩm, gi&uacute;p hạt nhanh nẩy mầm hơn, n&ecirc;n chừa một khe hở nhỏ cho kh&ocirc;ng kh&iacute; dễ lưu th&ocirc;ng v&agrave;o.<br>- Khi c&acirc;y cao khoảng 8-10cm th&igrave; đem ra chậu lớn hay ngo&agrave;i đất để trồng.<br>- Khi c&acirc;y cao khoảng 50cm cần l&agrave;m gi&agrave;n hoặc l&agrave;m c&acirc;y chống cho c&acirc;y leo l&ecirc;n, kh&ocirc;ng bị ng&atilde;.<br>- Khi c&acirc;y ra hoa cần b&oacute;n th&ecirc;m ph&acirc;n như ph&acirc;n hữu cơ, ph&acirc;n chuồng&hellip; để bổ sung th&ecirc;m chất dinh dưỡng cho c&acirc;y.<br>- Khi c&acirc;y ra tr&aacute;i cần tỉa bớt l&aacute; để tr&aacute;nh l&aacute; che mất &aacute;nh nắng chiếu đến quả v&agrave; dinh dưỡng kh&ocirc;ng được tập trung về quả.</p>', '2023-11-16 21:02:45', '2023-11-23 05:06:32', 24000, 4, 3),
(131, 'Hạt giống cà chua bi lùn', 'hat-giong-ca-chua-bi-lun', 'Cà chua là nguyên liệu dễ chế biến lắm luôn', 29000, 'products/November2023/FvfVbJRCBTn7m543zKfv.jpg', NULL, 1, 99, 7, '<p>C&agrave; chua l&agrave; nguy&ecirc;n liệu dễ chế biến lắm lu&ocirc;n!! N&agrave;o l&agrave; nấu canh , x&agrave;o, trộn salad, xay sinh tố, &eacute;p lấy nước hay l&agrave;m nguy&ecirc;n liệu để đắp mặt của chị em phụ nữ nữa chứ. Mỗi ng&agrave;y cơ thể được dung nạp c&agrave; chua th&igrave; rất tốt nha cả nh&agrave;</p>\r\n<p>C&agrave; chua bi l&ugrave;n trồng quanh năm, năng suất cao. C&acirc;y sinh trưởng ph&aacute;t triển mạnh, chịu nhiệt tốt. C&acirc;y cao 30cm th&iacute;ch hợp trồng chậu, d&ugrave;ng để trang tr&iacute; trong nh&agrave;, s&acirc;n vườn hoặc c&oacute; thể ăn tr&aacute;i. &nbsp;Quả mọc th&agrave;nh từng ch&ugrave;m rất đẹp, tr&aacute;i tr&ograve;n, nhỏ, ch&iacute;n c&oacute; m&agrave;u đỏ. Thu hoạch 65-70 ng&agrave;y sau khi gieo</p>\r\n<p><strong>QUY C&Aacute;CH:</strong>&nbsp;0.1g</p>\r\n<p><strong>SẢN PHẨM CỦA:&nbsp;</strong>CTY TNHH MTV HẠT GIỐNG RẠNG Đ&Ocirc;NG</p>\r\n<p><strong>THU HOẠCH</strong>: tầm 65-70 ng&agrave;y sau khi gieo</p>\r\n<p><strong>TI&Ecirc;U CHUẨN:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong></p>\r\n<p>&nbsp;-Tỷ lệ nảy mầm: &gt;85%</p>\r\n<p>&nbsp;- &ETH;ộ sạch: &gt;99%</p>\r\n<p>&nbsp;- Độ ẩm: &lt;10% &nbsp;&nbsp;&nbsp;</p>\r\n<p><strong>C&Aacute;CH TRỒNG:</strong></p>\r\n<p>- B1: Xử l&yacute; đất nếu đất đ&atilde; qua sử dụng bằng c&aacute;ch tiến h&agrave;nh c&agrave;y xới đất cho đất tơi xốp. dọn dẹp cỏ r&aacute;c nếu c&oacute;. Rải v&ocirc;i bột l&ecirc;n bề mặt, phơi ải từ 5-7 ng&agrave;y để c&acirc;n bằng độ pH trong suốt m&ugrave;a vụ v&agrave; khử tr&ugrave;ng, ti&ecirc;u diệt những ấu tr&ugrave;ng s&acirc;u bệnh. Sau đ&oacute; trộn đất theo tỉ lệ ( 7 phần đất + 3 phần ph&acirc;n tr&ugrave;n quế hoặc ph&acirc;n b&ograve;, ph&acirc;n chuồng&hellip;) để tăng độ dinh dưỡng cho đất. Cuối c&ugrave;ng tưới nước tạo độ ẩm cho đất.<br>- B2: Ng&acirc;m hạt 3-4 giờ trong nước ấm (2 s&ocirc;i 3 lạnh). Ủ hạt trong khăn, để chỗ m&aacute;t, tưới ẩm h&agrave;ng ng&agrave;y đến khi hạt nứt nanh rồi đem gieo.<br>- B3: Tiến h&agrave;nh gieo: cho 5-6 hạt v&agrave;o chậu. Kế tiếp, phủ lớp rươm rạ hoặc lớp đất mỏng l&ecirc;n hạt. Sau đ&oacute; tưới phun nước cho hạt để giữ ẩm</p>\r\n<p><strong>C&Aacute;CH CHĂM S&Oacute;C:</strong></p>\r\n<p>-Tưới nước s&aacute;ng chiều</p>\r\n<p>-B&oacute;n th&uacute;c ph&acirc;n kho&aacute;ng</p>', '2023-11-16 21:16:40', '2023-11-23 05:06:32', 25000, 4, 6),
(132, 'Hạt giống Cà chua Cherry đỏ lai', 'hat-giong-ca-chua-cherry-do-lai', 'Cà chua được mệnh danh là một nhà máy dinh dưỡng vì nó cung cấp rất nhiều thành phần có lợi cho sức khỏe. Một thực phẩm trên cả tuyệt vời R cả nhà cho cà chua vào thực đơn ăn uống của mình bạn nhé', 29000, 'products/November2023/xVSYog7RLyZzVJe6o39b.jpg', NULL, 1, 92, 7, '<p>- C&agrave; chua cherry đỏ trồng quanh năm, c&acirc;y ph&aacute;t triển mạnh, sinh trưởng v&ocirc; hạn, kh&aacute;ng bệnh tốt. Tr&aacute;i h&igrave;nh trứng, thịt d&agrave;y, cứng, ch&iacute;n m&agrave;u đỏ tươi, trọng lượng tr&aacute;i 14-15g. Thu hoạch 75-80 ng&agrave;y sau khi gieo</p>\r\n<p><strong>QUY C&Aacute;CH:</strong> 0.1g</p>\r\n<p><strong>THU HOẠCH:</strong>&nbsp;Tầm 75-80 ng&agrave;y sau khi gieo</p>\r\n<p><strong>TI&Ecirc;U CHUẨN:&nbsp;&nbsp;&nbsp;</strong>&nbsp;&nbsp;&nbsp;</p>\r\n<p>&nbsp;- Tỷ lệ nảy mầm: &gt;85%</p>\r\n<p>&nbsp;- &ETH;ộ sạch: &gt;99%</p>\r\n<p>&nbsp;- Độ ẩm: &lt;10% &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>\r\n<p><strong>C&Aacute;CH TRỒNG:</strong></p>\r\n<p>- B1: Xử l&yacute; đất nếu đất đ&atilde; qua sử dụng bằng c&aacute;ch tiến h&agrave;nh c&agrave;y xới đất cho đất tơi xốp. dọn dẹp cỏ r&aacute;c nếu c&oacute;. Rải v&ocirc;i bột l&ecirc;n bề mặt, phơi ải từ 5-7 ng&agrave;y để c&acirc;n bằng độ pH trong suốt m&ugrave;a vụ v&agrave; khử tr&ugrave;ng, ti&ecirc;u diệt những ấu tr&ugrave;ng s&acirc;u bệnh. Sau đ&oacute; trộn đất theo tỉ lệ (7 phần đất + 3 phần ph&acirc;n tr&ugrave;n quế hoặc ph&acirc;n b&ograve;, ph&acirc;n chuồng&hellip;) để tăng độ dinh dưỡng cho đất. Cuối c&ugrave;ng tưới nước tạo độ ẩm cho đất.</p>\r\n<p>- B2: Ng&acirc;m hạt 4-6 giờ trong nước ấm (2 s&ocirc;i 3 lạnh). Ủ hạt trong khăn, để chỗ m&aacute;t, tưới ẩm h&agrave;ng ng&agrave;y. Sau 2-3 ng&agrave;y hạt nảy mầm th&igrave; tiến h&agrave;nh gieo</p>\r\n<p>- B3: Tiến h&agrave;nh gieo: cho 5-6 hạt v&agrave;o chậu. Kế tiếp, phủ lớp rươm rạ hoặc lớp đất mỏng l&ecirc;n hạt. Sau đ&oacute; tưới phun nước cho hạt để giữ ẩm</p>\r\n<p><strong>C&Aacute;CH CHĂM S&Oacute;C:</strong></p>\r\n<p>&nbsp; - Tưới nước s&aacute;ng chiều</p>\r\n<p>&nbsp; - B&oacute;n th&uacute;c ph&acirc;n kho&aacute;ng</p>', '2023-11-16 21:24:12', '2023-11-23 05:06:32', 25000, 4, 11),
(133, 'Hạt giống cải soăn kale khủng long', 'hat-giong-cai-soan-kale-khung-long', 'Cây sinh trưởng nhanh, phát triển mạnh, năng suất cao, trồng được quanh năm', 29000, 'products/November2023/dHKTmgjhAGX6AqEI8zmQ.jpg', NULL, 1, 99, 7, '<p>&nbsp;Hạt Giống Rau Cải xoăn Kale laci cao 60 đến 90 cm v&agrave; c&oacute; l&aacute; m&agrave;u xanh đậm với \"kết cấu nổi\". Hương vị của n&oacute; được m&ocirc; tả l&agrave; \"hơi ngọt v&agrave; tinh tế hơn cải xoăn.\" Giống lacinato đ&ocirc;i khi được gọi l&agrave; \"cải xoăn khủng long\" bởi v&igrave; những chiếc l&aacute; x&ugrave; x&igrave; của n&oacute; c&oacute; thể tr&ocirc;ng giống như da khủng long, v&agrave; c&oacute; lẽ v&igrave; h&igrave;nh dạng độc đ&aacute;o của l&aacute; l&agrave; gợi l&ecirc;n hệ thực vật nguy&ecirc;n thủy. V&igrave; hương vị của n&oacute;, \"hơi đắng đất\", n&oacute; được gọi l&agrave; \"con cưng của thế giới ẩm thực\".</p>\r\n<p><strong>GI&Aacute; TRỊ DINH DƯỠNG V&Agrave; LỢI &Iacute;CH SỨC KHỎE TỪ CẢI XOĂN KALE</strong><br>Trong một 100gr cải kale laci chứa hơn 50% khẩu phần vitamin K, A, C cần thiết cho một người.<br>Cụ thể l&agrave; 491 mg vitamin K, 120 mg vitamin C, 9.990 IU vitamin A, c&ugrave;ng nhiều chất xơ, canxi, sắt, mangan, đồng, vitamin B, E &hellip;<br>Ngo&agrave;i ra c&ograve;n chứa c&aacute;c chất chống oxy h&oacute;a quercetin, kaempferol với lượng calo cực &iacute;t, chỉ khoảng 49,5 kcal/ 100gr rau cải xoăn.</p>\r\n<p><strong>KỸ THUẬT GIEO TRỒNG HẠT GIỐNG CẢI XOĂN KALE&nbsp;</strong><br>Bước 1: Chuẩn bị gieo trồng<br>Thời vụ gieo trồng: trồng v&agrave;o thời điểm kh&iacute; hậu m&aacute;t mẻ, n&ecirc;n chọn nơi c&oacute; &aacute;nh nắng mặt trời đầy đủ.<br>Hạt giống: t&igrave;m mua hạt giống cải xoăn kale laci tại c&aacute;c cửa h&agrave;ng hạt giống c&oacute; uy t&iacute;n tr&ecirc;n to&agrave;n quốc để nhận được hạt giống cải kale chất lượng tốt v&agrave; gi&aacute; cả hợp l&yacute;.<br>Đất trồng: tơi xốp, pH từ 5,5 &ndash; 6, đất nhiều m&ugrave;n, lượng hữu cơ vừa phải. Kh&ocirc;ng sử dụng loại đất kh&ocirc; cằn, đất c&aacute;t hay đất s&eacute;t để trồng hạt giống cải kale, sẽ l&agrave;m giảm hương vị v&agrave; năng suất của c&acirc;y.<br>Dụng cụ gieo trồng: th&ugrave;ng xốp, khay gỗ, chậu nhựa c&oacute; tho&aacute;t nước hoặc gieo trực tiếp trong vườn nh&agrave;.<br>Bước 2: Gieo trồng hạt giống<br>1️.Ủ hạt giống: Ng&acirc;m hạt giống trong nước ấm (tỉ lệ 2 s&ocirc;i 3 lạnh để hạt nứt nanh) trong 6 &ndash; 8 tiếng. Sau đ&oacute; bạn gieo hạt giống &nbsp;v&agrave;o đất ẩm hoặc vi&ecirc;n n&eacute;n ươm mầm. Sau khoảng 5- 7 ng&agrave;y hạt sẽ nảy mầm. Để chậu ươm ở nơi tho&aacute;ng m&aacute;t, c&oacute; &aacute;nh s&aacute;ng nhẹ.<br>2️.Ươm c&acirc;y: Tưới nước thường xuy&ecirc;n đảm bảo độ ẩm cho hạt giống cải kale nảy mầm, tr&aacute;nh đọng nước ở bề mặt đất. Sau khi hạt giống cải kale laci nảy mầm, tỉa bớt những c&acirc;y yếu, nhỏ để tạo th&ecirc;m kh&ocirc;ng gian cho c&aacute;c c&acirc;y c&ograve;n lại.<br>3️.Gieo trồng c&acirc;y con: Sau khoảng 2 &ndash; 3 tuần c&acirc;y con sẽ cao từ 7 &ndash; 10cm, l&uacute;c n&agrave;y c&acirc;y c&oacute; &iacute;t nhất 4 l&aacute; v&agrave; c&oacute; thể đem trồng ra ngo&agrave;i.<br>Vỗ nhẹ v&agrave;o chậu ươm để lấy c&acirc;y con ra v&agrave; đặt v&agrave;o hố trồng, hố phải c&oacute; độ s&acirc;u từ 20- 25 cm để khi lấp đất, đất chạm được đến cuống l&aacute; đầu ti&ecirc;n của c&acirc;y.</p>', '2023-11-16 21:32:17', '2023-11-23 05:06:32', NULL, 3, 3),
(134, 'Hạt giống cải bó xôi', 'hat-giong-cai-bo-xoi', 'Rau cải bó xôi hay còn có tên gọi khác là chân vịt hay rau bina. Nó là một trong những thực phẩm vô cùng bổ ích cho cơ thể', 29000, 'products/November2023/fpElSo6HDSjn9vK0XMWL.jpg', NULL, 1, 194, 7, '<p>Trong cải b&oacute; x&ocirc;i chứa hơn 35 loại vitamin v&agrave; dưỡng chất thiết yếu. Vitamin C c&oacute; trong cải b&oacute; x&ocirc;i hoạt động như một chất chống oxy h&oacute;a. N&oacute; c&oacute; thể l&agrave;m h&ograve;a tan trong nước v&agrave; l&agrave;m giảm nguy cơ g&acirc;y ra rất nhiều bệnh tật kh&aacute;c.</p>\r\n<p>Kh&ocirc;ng phải ngẫu nhi&ecirc;n m&agrave; trong bộ phim hoạt h&igrave;nh thủy thủ Popeye (một bộ phim hoạt h&igrave;nh được y&ecirc;u th&iacute;ch một thời) với hình ảnh chàng thủy thủ trẻ &ldquo;bơm cơ bắp&rdquo; bằng rau ch&acirc;n vịt (cải b&oacute; x&ocirc;i) để tăng sức mạnh đ&aacute;nh bại Sinbad v&agrave; mọi đối thủ.&nbsp;</p>\r\n<p>Dưới đ&acirc;y l&agrave; những lợi &iacute;ch cụ thể của cải b&oacute; x&ocirc;i:&nbsp;</p>\r\n<p>Tốt cho mắt</p>\r\n<p>Luteun l&agrave; 1 loại carotenoid c&oacute; c&oacute; trong cải b&oacute; x&ocirc;i. T&aacute;c dụng ngăn ngừa c&aacute;c bệnh về mắt như bệnh đục thủy tinh thể v&agrave; tho&aacute;i h&oacute;a điểm đen ở người gi&agrave;. Loại thường c&oacute; trong c&aacute;c loại rau c&oacute; m&agrave;u xanh. Đặc biệt l&agrave; cải b&oacute; x&ocirc;i, loại thực phẩm được khuy&ecirc;n d&ugrave;ng.&nbsp;</p>\r\n<p>Chống ung thư tiền liệt tuyến</p>\r\n<p>Cũng như vitamin E v&agrave; C, carotenoid l&agrave; chất chống oxy h&oacute;a mạnh. N&oacute; tham gia t&iacute;ch cực v&agrave;o việc khống chế sự ph&acirc;n chia của c&aacute;c tế b&agrave;o g&acirc;y ung thư.&nbsp;</p>\r\n<p>Cải thiện t&igrave;nh trạng b&eacute;o ph&igrave;</p>\r\n<p>Thức ăn c&oacute; t&iacute;nh axit cao l&agrave; nguy&ecirc;n nh&acirc;n chủ yếu dẫn đến b&eacute;o ph&igrave; v&agrave; c&aacute;c chứng bệnh kh&aacute;c. C&aacute;c chất dinh dưỡng c&oacute; trong cải b&oacute; x&ocirc;i c&oacute; khả năng kiềm h&oacute;a, c&acirc;n bằng lại chế độ ăn uống c&oacute; axit cao. Cải thiện t&igrave;nh trạng thừa mỡ, gi&uacute;p giảm c&acirc;n.</p>\r\n<p>Tốt cho hệ tim mạch</p>\r\n<p>Ăn cải b&oacute; x&ocirc;i rất tốt để gi&uacute;p hệ tim mạch ổn định v&agrave; bảo vệ tim mạch rất tốt.</p>\r\n<p>Gi&uacute;p xương chắc khỏe</p>\r\n<p>Vitamin K rất quan trọng trong việc duy tr&igrave; sức khỏe của xương. N&oacute; đảm nhận vai tr&ograve; k&iacute;ch hoạt osteocalcin, một loại protein non - collagen ch&iacute;nh trong xương.</p>\r\n<p>Osteocalcin neo chặt c&aacute;c ph&acirc;n tử calcium molecules trong xương. Cải b&oacute; x&ocirc;i kh&ocirc;ng chỉ gi&agrave;u vitamin K, m&agrave; c&ograve;n chứa cả mage &ndash; một dưỡng chất tuyệt vời trong việc tạo xương.</p>\r\n<p>Trị qu&aacute;ng g&agrave; ở mắt</p>\r\n<p>500 g cải b&oacute; x&ocirc;i tươi, nghiền n&aacute;t lấy nước. Mỗi ng&agrave;y uống 2 lần sẽ cải thiện t&igrave;nh trạng qu&aacute;ng g&agrave; ở mắt, gi&uacute;p đ&ocirc;i mắt trở lại trạng th&aacute;i s&aacute;ng v&agrave; khỏe.</p>\r\n<p>Hỗ trợ điều trị bệnh về đường ti&ecirc;u h&oacute;a</p>\r\n<p>100g cải b&oacute; x&ocirc;i, 1/3 muỗng c&agrave; ph&ecirc; muối, nấu với 3 ch&eacute;n nước, c&ograve;n 1 ch&eacute;n. Người lớn uống một lần v&agrave;o buổi trưa. Trẻ em uống s&aacute;ng v&agrave; chiều. D&ugrave;ng l&acirc;u d&agrave;i sẽ cho kết quả cải thiện r&otilde; rệt, c&aacute;c bệnh về t&aacute;o b&oacute;n, kết lị sẽ được thuy&ecirc;n giảm v&agrave; dứt hẳn.</p>', '2023-11-16 21:39:05', '2023-11-21 04:09:20', 25000, 5, 6),
(135, 'Hạt giống cải cầu vồng', 'hat-giong-cai-cau-vong', 'Hạt giống rau cải cầu vồng bảy màu bao gồm màu  vàng, hồng, cam, tím, đỏ, xanh lá cây, trắng. Cây có thể trồng và cho thu hoạch quanh năm. Tuổi thọ của cây khoảng 2 năm tùy vào cách chăm sóc.', 32000, 'products/November2023/kWmqASF31ltrp8aPfMP0.jpg', NULL, 1, 99, 7, '<p><strong>Hướng dẫn c&aacute;ch trồng cải cầu vồng:</strong><br>-Để hạt giống nảy mầm nhanh hơn c&oacute; thể ng&acirc;m hạt giống với nước ấm 40-45độ C hoặc theo tỷ lệ 2 s&ocirc;i, 3 lạnh. Thời gian ng&acirc;m hạt giống khoảng 4-6 giờ.<br>-Thời gian nảy mầm của hạt giống l&agrave; từ 7-10 ng&agrave;y. Tỷ lệ nảy mầm l&agrave; 80%.<br>-Thời gian ra 2 l&aacute; thật l&agrave; từ 15-20 ng&agrave;y.<br>-C&oacute; thể gieo hạt giống trực tiếp ngo&agrave;i trời hoặc trong nh&agrave; v&agrave;o m&ugrave;a xu&acirc;n hoặc đầu m&ugrave;a thu.<br>-Nhiệt độ ph&aacute;t triển: C&acirc;y cần đầy đủ &aacute;nh s&aacute;ng mặt trời từ 6-8h/ng&agrave;y. Nhiệt độ ph&aacute;t triển tốt từ 15 đến 30 độ C, dưới 10 độ C hoặc cao hơn 30 độ C c&acirc;y ph&aacute;t triển chậm.<br>&ndash; Đất trồng c&oacute; độ PH từ 6 trở l&ecirc;n, đất tơi xốp, ẩm, tho&aacute;t nước tốt.<br>-C&acirc;y c&oacute; khả năng sống trong chậu v&agrave; được trồng như một loại c&acirc;y cảnh do m&agrave;u sắc rực rỡ của n&oacute;.<br>-Số lượng c&acirc;y trồng tr&ecirc;n 1m2 khoảng từ 12-15 hạt, gieo hạt s&acirc;u 1,2cm, c&acirc;y c&aacute;ch c&acirc;y 15-20cm, h&agrave;ng c&aacute;ch h&agrave;ng từ 30-35cm.<br>-B&oacute;n l&oacute;t ph&acirc;n b&ograve; ủ hoai trước khi trồng v&agrave; b&oacute;n ph&acirc;n bổ xung mỗi 6 tuần một lần.<br>-T&ugrave;y v&agrave;o kh&iacute; hậu từng v&ugrave;ng, c&acirc;y c&oacute; tuổi thọ khoảng 2 năm.<br>&ndash; Sau 65-70 ng&agrave;y gieo hạt l&agrave; bạn đ&atilde; c&oacute; thể thu hoạch những c&acirc;y cải cầu vồng đầu ti&ecirc;n. Cải trưởng th&agrave;nh c&oacute; t&aacute;n l&aacute; to rộng, th&acirc;n mập v&agrave; to.<br>-Thu hoạch cắt tỉa l&aacute; trưởng th&agrave;nh ph&iacute;a b&ecirc;n ngo&agrave;i v&agrave; để lại l&aacute; non b&ecirc;n trong mọc l&ecirc;n cho thu hoạch tiếp.<br>-Ph&ograve;ng trừ s&acirc;u hại: Khi c&acirc;y con th&igrave; ph&ograve;ng kiến, dế, c&ocirc;n tr&ugrave;ng cắn đứt th&acirc;n c&acirc;y non. Khi c&acirc;y trưởng th&agrave;nh ph&ograve;ng trừ s&acirc;u ăn l&aacute;, bọ c&aacute;nh cứng.</p>\r\n<p><strong>Lưu &yacute;:&nbsp;</strong></p>\r\n<p>&ndash; Cải cầu vồng ưa s&aacute;ng, do đ&oacute; khi trồng bạn n&ecirc;n chọn nơi đ&oacute;n được nhiều &aacute;nh s&aacute;ng mặt trời để c&acirc;y ph&aacute;t triển tốt nhất.<br>Cải cầu vồng kh&aacute; dễ trồng v&agrave; hầu như kh&ocirc;ng gặp nhiều vấn đề về s&acirc;u bệnh hại. Tuy nhi&ecirc;n, cải c&oacute; thể bị tấn c&ocirc;ng bởi một số bệnh hại v&agrave; c&ocirc;n tr&ugrave;ng tấn c&ocirc;ng l&aacute;.<br>&ndash; Bệnh đốm l&aacute; l&agrave; loại bệnh thường xả ra đối với c&aacute;c loại c&acirc;y họ cải. Biểu hiện của bệnh l&agrave; tr&ecirc;n l&aacute; c&oacute; những vết đốm m&agrave;u n&acirc;u hoặc đen nhỏ lan ra mặt l&aacute;. Bệnh thường diễn biến khi thời tiết ấm &aacute;p v&agrave; mưa nhiều. Biện ph&aacute;p ở đ&acirc;y l&agrave; bạn phải giữ c&acirc;y trồng của bạn th&ocirc;ng tho&aacute;ng v&agrave; kịp thời ph&aacute;t hiện những l&aacute; c&oacute; dấu hiệu bị bệnh.</p>\r\n<div>&ndash; Một loại c&ocirc;n tr&ugrave;ng hại cải cầu vồng như rệp, bọ, hay điển h&igrave;nh l&agrave; những con ốc s&ecirc;n chuy&ecirc;n ăn l&aacute; tr&ecirc;n l&aacute; c&acirc;y. Ch&uacute;ng ph&aacute;t triển v&agrave; b&ograve; l&ecirc;n c&acirc;y ăn l&aacute; v&agrave; th&acirc;n. Ch&uacute;ng thường hoạt động v&agrave;o ban đ&ecirc;m do đ&oacute; bạn cần t&igrave;m v&agrave; loại bỏ những con ốc s&ecirc;n n&agrave;y c&agrave;ng sớm c&agrave;ng tốt trước khi ch&uacute;ng ph&aacute; hoại cả vườn cải của bạn.</div>', '2023-11-16 21:43:59', '2023-11-23 04:59:55', NULL, 3, 1),
(136, 'Hạt giống xà lách xoắn', 'hat-giong-xa-lach-xoan', 'Hạt Giống Xà lách xoắn là giống chịu nhiệt tốt, độ đồng đều cao, thích hợp điều kiện khí hậu nhiệt đới.', 29000, 'products/November2023/jwqnRl3L2TMBi5rbGC8R.jpg', NULL, 1, 97, 7, '<p>Hạt giống x&agrave; l&aacute;ch xoắn</p>\r\n<p>&ndash; Hạt Giống X&agrave; l&aacute;ch xoắn l&agrave; giống chịu nhiệt tốt, độ đồng đều cao, th&iacute;ch hợp điều kiện kh&iacute; hậu nhiệt đới.<br>&ndash; C&acirc;y cao 28-35 cm, l&aacute; m&agrave;u xanh s&aacute;ng, c&oacute; viền gợn s&oacute;ng, kh&ocirc;ng bị r&aacute;ch khi gặp mưa.<br>&ndash; Thu hoạch: 30 -35 ng&agrave;y sau khi gieo.<br>&ndash; Khoảng c&aacute;ch trồng x&agrave; l&aacute;ch xoắn : trồng tr&ecirc;n l&iacute;p, khoảng c&aacute;ch giữa 2 l&iacute;p: 30- 40cm, c&acirc;y c&aacute;ch c&acirc;y tr&ecirc;n h&agrave;ng 20-25 cm, h&agrave;ng c&aacute;ch h&agrave;ng 20 cm<br>&ndash; Mật độ gieo: 13.000 &ndash; 16.000 c&acirc;y/1000m2.</p>\r\n<p><strong>HƯỚNG DẪN C&Aacute;CH TRỒNG:&nbsp;</strong></p>\r\n<p>* Chuẩn bị:<br>&ndash; Khay trồng rau (Th&ugrave;ng xốp)<br>&ndash; Đất trồng rau ( bạn chọn đất sạch , ph&acirc;n b&ograve; đ&atilde; qua xử l&yacute; khuẩn nh&eacute;, chấu , hoặc rơm )<br>&ndash; Hạt giống cải x&agrave; l&aacute;ch sạch.<br>* Tiến h&agrave;ng trồng:<br>&ndash; B1: Ng&acirc;m hạt giống cải x&agrave; l&aacute;ch trong nước ấm ( tỷ lệ 3 lạnh : 1 n&oacute;ng ) trong 2 đến 3 giờ cho hạt x&agrave; l&aacute;ch mau nảy mầm khi trồng.<br>&ndash; B2: L&agrave;m đất, cho đất v&agrave;o khay nhựa trồng rau ( tỷ lệ 3 đất :1 b&ograve; )<br>&ndash; B3: Gieo hạt x&agrave; l&aacute;ch đ&atilde; ng&acirc;m nước ấm v&agrave;o khay nhựa với mật độ cho ph&eacute;p ( trung b&igrave;nh 1 khay nhựa trồng rau cần 20 đến 30 hạt, v&igrave; ph&ograve;ng những hạt x&agrave; l&aacute;ch kh&ocirc;ng nảy mầm ) .&nbsp;Khoảng c&aacute;ch gieo l&agrave; trung b&igrave;nh từ 10 đến 20 cm khi trồng x&agrave; l&aacute;ch tại nh&agrave;.<br>&ndash; B4: Phủ một lớp chấu l&ecirc;n để cho khay trồng rau giữ nước tốt cho x&agrave; l&aacute;ch mau lớn, tưới nước 2 lần một ng&agrave;y trong v&ograve;ng 1 tuần (s&aacute;ng sớm, chiều m&aacute;t )<br>&ndash; B5: Khi x&agrave; l&aacute;ch nảy mầm v&agrave; ph&aacute;t triển được 4 đến 6 l&aacute; , bạn t&aacute;ch c&acirc;y mang đi trồng với khoảng c&aacute;ch 10 đến 20 cm 1 c&acirc;y .<br>Lưu &yacute; : Nhớ kh&ocirc;ng n&ecirc;n trồng rể x&agrave; l&aacute;ch qu&aacute; s&acirc;u , hoặc qu&aacute; n&ocirc;ng , sẽ l&agrave;m giảm tỉ lệ sinh trưởng của rau.<br>&ndash; B6: Sau 1 tuần tưới mỗi ng&agrave;y một lần v&agrave; đến 30-35 ng&agrave;y bạn c&oacute; thể thu hoạch .</p>', '2023-11-16 21:49:13', '2023-11-21 04:09:11', 25000, 4, 3),
(137, 'Hạt giống Xà Lách Baby ăn non', 'hat-giong-xa-lach-baby-an-non', 'Hạt giống Rạng Đông là đơn vị cung cấp hạt giống rau củ quả uy tín từ năm 2014. Cty chuyên nghiên cứu, sản xuất và kinh doanh hạt giống rau màu chất lượng cao', 29000, 'products/November2023/UNlaMx8R7xDycjJgd0Z3.jpg', NULL, 1, 99, 7, '<p>Hạt giống Rạng Đ&ocirc;ng l&agrave; đơn vị cung cấp hạt giống rau củ quả uy t&iacute;n từ năm 2014. Cty chuy&ecirc;n nghi&ecirc;n cứu, sản xuất v&agrave; kinh doanh hạt giống rau m&agrave;u chất lượng cao. C&ocirc;ng ty đ&atilde; nghi&ecirc;n cứu ra những sản phẩm hạt giống rau m&agrave;u với c&aacute;c đặc t&iacute;nh vượt trội như: Năng suất cao,kh&aacute;ng b&ecirc;nh tốt, chất lượng sản phẩm tốt, được thị trường ưa chuộng. HẠT GIỐNG RẠNG Đ&Ocirc;NG &ndash; GIỐNG TỐT CHO M&Ugrave;A BỘI THU.</p>', '2023-11-16 21:52:12', '2023-11-21 04:08:58', 25000, 4, 1);
INSERT INTO `products` (`id`, `name`, `slug`, `details`, `price`, `image`, `images`, `featured`, `quantity`, `category_id`, `description`, `created_at`, `updated_at`, `promotional_price`, `evaluate`, `quantity_purchased`) VALUES
(138, 'Rọ nhựa trồng rau thủy canh', 'ro-nhua-trong-rau-thuy-canh', 'Rọ nhựa trồng rau thủy canh (còn được gọi là cốc trồng rau, cốc thủy canh, cốc trồng thủy canh,…) được sử dụng để chuyên dùng trong việc trồng cây thủy canh, dùng làm giá đỡ giá thể và rau, tạo điều kiện cho bộ rễ phát triển', 49000, 'products/November2023/YVTK3BxBf40N8HBH0dHG.jpg', NULL, 1, 196, 8, '<p>Rọ nhựa trồng rau thủy canh phi 65 được l&agrave;m từ nhựa PP, dẻo dai, kh&ocirc;ng gi&ograve;n, kh&ocirc;ng vỡ, chịu được nắng mưa trong thời gian d&agrave;i. K&iacute;ch thước: miệng 65mm, cao 65cm Nhựa dẻo, b&oacute;p kh&ocirc;ng vỡ, kh&ocirc;ng g&atilde;y, chịu được mưa nắng trong thời gian d&agrave;i Sản xuất tại Việt Nam</p>', '2023-11-16 22:05:55', '2023-11-23 05:06:32', 40000, 4, 4),
(139, 'Bơm chìm mini 12V', 'bom-chim-mini-12v', 'Khi sử dụng bơm chất lỏng xin lưu ý các vấn đề cặn bẩn, không dùng cho bơm xăng, dung môi, hay các hóa chất ăn mòn.', 155000, 'products/November2023/HzOUEkmFp6XSyHrAqDoc.jpg', NULL, 1, 9, 8, '<p>Sử dụng hẽ động cơ 555 c&oacute; than Lưu lượng bơm: 2 l / ph&uacute;t</p>\r\n<p>Đường k&iacute;nh đầu ống: 6.6 mm</p>\r\n<p>-Khi sử dụng bơm chất lỏng xin lưu &yacute; c&aacute;c vấn đề cặn bẩn, kh&ocirc;ng d&ugrave;ng cho bơm xăng, dung m&ocirc;i, hay c&aacute;c h&oacute;a chất ăn m&ograve;n.</p>', '2023-11-16 22:12:31', '2023-11-30 04:22:55', 140000, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_tag`
--

CREATE TABLE `product_tag` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_tag`
--

INSERT INTO `product_tag` (`id`, `product_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(122, 122, 1, NULL, NULL),
(123, 123, 1, NULL, NULL),
(124, 124, 1, NULL, NULL),
(125, 124, 2, NULL, NULL),
(126, 125, 1, NULL, NULL),
(127, 125, 2, NULL, NULL),
(128, 126, 3, NULL, NULL),
(129, 126, 4, NULL, NULL),
(130, 127, 3, NULL, NULL),
(131, 128, 4, NULL, NULL),
(132, 129, 2, NULL, NULL),
(133, 130, 1, NULL, NULL),
(134, 131, 1, NULL, NULL),
(135, 132, 1, NULL, NULL),
(136, 132, 4, NULL, NULL),
(137, 132, 2, NULL, NULL),
(138, 133, 1, NULL, NULL),
(139, 133, 4, NULL, NULL),
(140, 134, 4, NULL, NULL),
(141, 134, 2, NULL, NULL),
(142, 135, 1, NULL, NULL),
(143, 135, 2, NULL, NULL),
(144, 136, 1, NULL, NULL),
(145, 136, 4, NULL, NULL),
(146, 137, 1, NULL, NULL),
(147, 137, 4, NULL, NULL),
(148, 138, 3, NULL, NULL),
(149, 139, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `title`, `slug`, `desc`, `content`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Phương pháp và quy trình trồng rau thủy canh trụ đứng', 'phuong-phap-va-quy-trinh-trong-rau-thuy-canh-tru-dung', 'Đối với những hộ gia đình không có nhiều không gian thì trồng rau thủy canh trụ đứng là giải pháp tốt cho vấn đề này để có thể cung cấp rau sạch cho bữa ăn hằng ngày. Phương pháp này không chỉ giúp bảo vệ môi trường mà còn giúp tạo thêm không gian xanh cho gia đình.', '<div>Đối với những hộ gia đ&igrave;nh kh&ocirc;ng c&oacute; nhiều kh&ocirc;ng gian th&igrave; trồng rau thủy canh trụ đứng l&agrave; giải ph&aacute;p tốt cho vấn đề n&agrave;y để c&oacute; thể cung cấp rau sạch cho bữa ăn hằng ng&agrave;y. Phương ph&aacute;p n&agrave;y kh&ocirc;ng chỉ gi&uacute;p bảo vệ m&ocirc;i trường m&agrave; c&ograve;n gi&uacute;p tạo th&ecirc;m kh&ocirc;ng gian xanh cho gia đ&igrave;nh.</div>\r\n<ul>\r\n<li><strong>Phương ph&aacute;p thủy canh trụ đứng l&agrave; g&igrave;?</strong></li>\r\n</ul>\r\n<div>Cũng như c&aacute;c phương ph&aacute;p thủy canh th&ocirc;ng thường, phương ph&aacute;p&nbsp;trồng rau thủy canh tru đứng&nbsp;cũng kh&ocirc;ng sử dụng đất m&agrave; nu&ocirc;i trồng rau bằng dung dịch dinh dưỡng. Đa số c&aacute;c loại thủy canh trụ đứng đều thực hiện theo phương ph&aacute;p thủy canh hồi lưu.<br>M&ocirc; h&igrave;nh trồng rau thủy canh trụ đứng được h&igrave;nh th&agrave;nh từ một trụ đứng độc lập hoặc nhiều trụ đứng li&ecirc;n kết với nhau. Tr&ecirc;n th&acirc;n trụ được trổ những điềm trồng nh&ocirc; ra v&agrave; được ph&acirc;n bố trải đều khắp trụ. Một th&ugrave;ng chứa dung dịch thủy canh v&agrave; m&aacute;y bơm gi&uacute;p đưa dung dịch dinh dưỡng đi tuần ho&agrave;n khắp trụ.</div>\r\n<div>&nbsp;</div>\r\n<div>\r\n<div><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://vuontrudung.com/upload/user/images/images1442602_tru_khi_canh1.jpg\" alt=\"\" width=\"900\" height=\"600\"></div>\r\n</div>\r\n<div>&nbsp;<br>So với hệ thống ống trồng thủy canh th&ocirc;ng thường, trụ đứng thủy canh dường như c&oacute; rất nhiều ưu điểm vượt trội. Ngo&agrave;i những điểm mạnh như kh&ocirc;ng cần đến đất trồng, dễ d&agrave;ng kiểm so&aacute;t c&aacute;c nguy&ecirc;n tố kho&aacute;ng v&agrave; chất dinh dưỡng cần thiết hay hạn chế tối đa s&acirc;u bệnh; trụ đứng thủy canh c&ograve;n gi&uacute;p tiết kiệm một c&aacute;ch tối đa kh&ocirc;ng gian trong ng&ocirc;i nh&agrave; bạn bằng c&aacute;ch tận dụng kh&ocirc;ng gian.</div>\r\n<ul>\r\n<li><strong>Quy tr&igrave;nh trồng rau thủy canh trụ đứng</strong></li>\r\n</ul>\r\n<div><em><strong>C&aacute;c bước&nbsp;trồng rau thủy canh trụ đứng&nbsp;được thực hiện lần lượt như sau:</strong></em><br>Đầu ti&ecirc;n, bạn cần ng&acirc;m hạt giống trong nước ấm khoảng 4 giờ, sau đ&oacute; ươm hạt giống l&ecirc;n gi&aacute; thể l&agrave; xơ dừa hoặc m&uacute;t xốp, được đặt trong rọ, mỗi rọ đựng gi&aacute; thể chỉ n&ecirc;n ươm khoảng 5 hạt giống. Phun nước tưới đều l&ecirc;n hạt giống v&agrave; gi&aacute; thể đều đặn trong khoảng 5 ng&agrave;y.<br>Bước tiếp theo l&agrave; pha dung dịch thủy canh v&agrave;o th&ugrave;ng chứa, dung dịch thủy canh được pha theo tỉ lệ 1/100. Sau khi pha dung dịch dinh dưỡng v&agrave;o th&ugrave;ng, tiến h&agrave;nh đặt rọ c&acirc;y v&agrave;o những điểm trồng tr&ecirc;n th&acirc;n trụ. Cần tr&aacute;nh cho dung dịch thủy canh tiếp x&uacute;c trực tiếp với dung dịch thủy canh v&igrave; sẽ khiến l&aacute; bị &uacute;ng, chết c&oacute; thể g&acirc;y ra mầm bệnh l&acirc;y lan cho vườn rau.</div>\r\n<div><br>Trong 15 ng&agrave;y đầu, c&acirc;y con cần được phun sương mỗi ng&agrave;y để gi&uacute;p c&acirc;y m&aacute;t mẻ. Đồng thời, những c&acirc;y con ốm yếu, c&ograve;i cọc cần được loại bỏ để đảm bảo sự ph&aacute;t triển đồng đều v&agrave; chất lượng sản phẩm.<br>Cần thường xuy&ecirc;n theo d&otilde;i nồng độ chất dinh dưỡng c&oacute; trong dung dịch để đ&aacute;p ứng nhu cầu ph&aacute;t triển của c&acirc;y. Cần phải đảm bảo c&acirc;y được cung cấp đầy đủ &aacute;nh nắng nhưng kh&ocirc;ng n&ecirc;n để nắng qu&aacute; gắt khiến c&acirc;y bị h&eacute;o hoặc ch&aacute;y l&aacute;. Nếu nắng qu&aacute; gắt, n&ecirc;n l&agrave;m gi&agrave;n che cho c&acirc;y để đảm bảo c&acirc;y ph&aacute;t triển tốt.<br>Sau khoảng 35 &ndash; 40 ng&agrave;y từ khi gieo hạt, rau củ đ&atilde; c&oacute; thể thu hoạch được, t&ugrave;y theo từng loại c&acirc;y. Khi thu hoạch n&ecirc;n d&ugrave;ng dao, k&eacute;o để tr&aacute;nh l&agrave;m tổn hại đến c&aacute;c c&acirc;y kh&aacute;c.</div>\r\n<div>Rau vụ thu hoạch, n&ecirc;n vệ sinh trụ thủy canh để loại bỏ mầm bệnh tiềm ẩn c&oacute; thể g&acirc;y nguy hại cho vụ sau. Gi&uacute;p loại bỏ việc t&iacute;ch tụ độc tố c&oacute; trong nguồn nước c&oacute; thể g&acirc;y nguy hại đến sức khỏe. Đồng thời việc n&agrave;y cũng gi&uacute;p đảm bảo vệ sinh m&ocirc;i trường hơn.</div>', 'projects/November2023/2CIilBg74FoFf5KfWSlJ.jpg', 'PUBLISHED', '2023-11-12 21:11:51', '2023-11-12 21:11:51'),
(2, 'Mô hình trồng rau sạch trên sân thượng diện tích nhỏ hẹp', 'mo-hinh-trong-rau-sach-tren-san-thuong-dien-tich-nho-hep', 'Với những ưu điểm có thể nhận thấy ngay lập tức của bộ trồng rau khí canh trụ đứng là lựa chọn tối ưu cho những gia đình muốn có vườn rau sạch ngay tại nhà nhưng diện tích nhà phố nhỏ hẹp.Bộ trồng rau khí canh trụ đứng giải pháp cho nhà phố nhỏ hẹp.', '<div>Hệ thống&nbsp;trồng rau kh&iacute; canh trụ đứng&nbsp;được nghi&ecirc;n cứu v&agrave; thiết kế dựa tr&ecirc;n c&ocirc;ng nghệ nu&ocirc;i trồng kh&iacute; canh , trồng c&acirc;y chỉ c&oacute; kh&ocirc;ng kh&iacute; v&agrave; nước. C&ocirc;ng nghệ kh&iacute; canh Aeroponics &ndash; đang được Nasa sử dụng. Đ&acirc;y l&agrave; xu hướng tất yếu của Việt Nam trong tương lai gần.</div>\r\n<div>&nbsp;</div>\r\n<div>&nbsp; &nbsp; &nbsp;&nbsp;Trồng rau kh&iacute; canh trụ đứng&nbsp;c&oacute; những ưu điểm đ&aacute;p ứng được những vướng mắc của những&nbsp;nh&agrave; phố c&oacute; diện t&iacute;ch c&ocirc;ng nhỏ&nbsp;như ban c&ocirc;ng, s&acirc;n thượng, s&acirc;n,&hellip;.</div>\r\n<div>&nbsp;</div>\r\n<div>\r\n<figure class=\"image\"><img src=\"https://vuontrudung.com/upload/user/images/viet%20tin%20tuc/He%20thong%20khi%20canh%20tru%20dung.JPG\" alt=\"\" width=\"60%\" height=\"60%\">\r\n<figcaption><em>&nbsp;Trồng rau kh&iacute; canh trụ đứng</em>&nbsp;</figcaption>\r\n</figure>\r\n<div>&nbsp;</div>\r\n</div>\r\n<div>&nbsp; &nbsp; &nbsp;&nbsp;Ưu điểm của việc&nbsp;trồng rau kh&iacute; canh trụ đứng&nbsp;l&agrave;:</div>\r\n<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - Kh&ocirc;ng chiếm mất nhiều kh&ocirc;ng gian, diện t&iacute;ch, chỉ cần từ 1 m2 trở l&ecirc;n l&agrave; c&oacute; thể lắp được trụ trồng rau kh&iacute; canh.</div>\r\n<div>Bộ kh&iacute; canh trụ đứng bao gồm:</div>\r\n<ul>\r\n<li>Th&ugrave;ng thể t&iacute;ch 70 lit</li>\r\n<li>Nắp th&ugrave;ng</li>\r\n<li>6 c&acirc;y inox 304 d&agrave;i 1.545mm, kh&ocirc;ng rỉ s&eacute;t</li>\r\n<li>1 Nắp pha dinh dưỡng, 1 nắp p&iacute;t , 2 nắp đỉnh trụ.</li>\r\n<li>2 d&acirc;y dẫn bơm dinh dưỡng</li>\r\n<li>Motor lifetech ap3100 bơm cao 2.8m</li>\r\n<li>2 tấm m&uacute;t 56 vi&ecirc;n</li>\r\n<li>Đ&oacute;ng th&ugrave;ng quy c&aacute;ch 57x57x31&nbsp; cm</li>\r\n</ul>\r\n<div>&nbsp;</div>\r\n<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - Bộ trụ kh&iacute; canh lắp r&aacute;p linh hoạt,t&ugrave;y theo địa h&igrave;nh thực tế m&agrave; lắp. Lắp thẳng h&agrave;ng d&agrave;i, hay 2 h&agrave;ng, 3 h&agrave;ng hoặc chữ L, &hellip;.</div>\r\n<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;- Hiệu suất rau tr&ecirc;n diện t&iacute;ch trồng rau cao.</div>\r\n<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Với bộ&nbsp;trồng rau kh&iacute; canh&nbsp;1 trụ c&oacute; 66 rọ trồng rau.</div>\r\n<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; + Chỉ từ 15 đến 30 ng&agrave;y, tương đương c&oacute; được 0,5 kg đến gần 1 kg .( T&ugrave;y theo từng loại rau)</div>\r\n<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Với bộ&nbsp;trồng rau kh&iacute; canh&nbsp;66 rọ c&oacute; thể trồng được c&ugrave;ng l&uacute;c nhiều loại rau tr&ecirc;n 1 trụ</div>\r\n<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</div>\r\n<div>\r\n<figure class=\"image\"><img src=\"https://vuontrudung.com/upload/user/images/viet%20tin%20tuc/trong%20rau%20khi%20canh.jpg\" alt=\"\">\r\n<figcaption>&nbsp;Nhiều loại rau tr&ecirc;n 1 trụ</figcaption>\r\n</figure>\r\n<div>&nbsp;</div>\r\n</div>\r\n<div>&nbsp;</div>\r\n<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - Hệ thống&nbsp;trồng rau kh&iacute; canh trụ đứng&nbsp;c&oacute; trọng lượng nhẹ, gọn</div>\r\n<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - Về mỹ quan th&igrave; sạch sẽ, th&ocirc;ng tho&aacute;ng.</div>\r\n<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - Vận h&agrave;nh tự động, đơn giản v&agrave; dễ d&agrave;ng.</div>\r\n<div>&nbsp;</div>\r\n<div>TRỤ TRỒNG RAU KH&Iacute; CANH&nbsp;&nbsp;l&agrave; một phương ph&aacute;p trồng rau c&ocirc;ng nghệ cao tạo m&ocirc;i trường dinh dưỡng ẩm gi&uacute;p rau ph&aacute;t triển nhanh v&agrave; năng xuất cao hơn.&nbsp;Hệ thống th&aacute;p rau kh&iacute; canh&nbsp;(kh&iacute; canh trụ đứng) cho ph&eacute;p ch&uacute;ng ta trồng được hầu hết c&aacute;c loại rau quả, thảo mộc, tr&aacute;i c&acirc;y với diện t&iacute;ch mỗi th&aacute;p rau chưa đến 0.3m&sup2;.</div>\r\n<div>&nbsp;</div>\r\n<div><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://vuontrudung.com/upload/user/images/viet%20tin%20tuc/mo%20hinh%20thuy%20canh%20trung%20dung.jpg\" alt=\"\"></div>\r\n<div>&nbsp;</div>\r\n<div>TRỤ TRỒNG RAU KH&Iacute; CANH&nbsp;về cơ bản đ&atilde; được tự động h&oacute;a đến 80% với hệ thống bơm lưu động, hẹn giờ, bể chứa duy tr&igrave; 5-7 ng&agrave;y, tuy nhi&ecirc;n để duy tr&igrave;, tạo ra năng suất v&agrave; độ bền của sản phẩm, c&oacute; những c&ocirc;ng việc bạn phải thực hiện trong qu&aacute; tr&igrave;nh chăm s&oacute;c như sau:</div>\r\n<div>Bổ sung nước v&agrave; dinh dưỡng:&nbsp;Trong qu&aacute; tr&igrave;nh rau ph&aacute;t triển. C&acirc;y sẽ hấp thu dinh dưỡng v&agrave; tho&aacute;t hơi nước khiến lượng dinh dưỡng bị hao hụt. Th&ocirc;ng thường bạn sẽ phải bổ sung dinh dưỡng &nbsp;từ 5 &ndash; 7 ng&agrave;y một lần</div>\r\n<div>Ươm c&acirc;y thay thế: Đối với hệ thống kh&iacute; canh hay thủy canh, bạn phải ươm sẵn c&acirc;y con trước khi cho l&ecirc;n gi&agrave;n.</div>\r\n<div>Vệ sinh hệ thống: Sau mỗi vụ rau, bạn n&ecirc;n vệ sinh c&aacute;c điểm tho&aacute;t nước của hệ thống để đảm bảo trụ rau hoạt động tốt v&agrave;o lứa rau tiếp theo.</div>', 'projects/November2023/ZVSWXV7YB3cDnR0aGkL9.jpg', 'PUBLISHED', '2023-11-12 21:13:55', '2023-11-12 21:13:55'),
(3, 'Mô hình thuỷ canh sử dụng cho dự án nhà cô Hằng', 'mo-hinh-thuy-canh-su-dung-cho-du-an-nha-co-hang', 'Với giàn thuỷ canh bán chữ A dài 3 mét, 4 tầng, 128 rọ trồng,…mỗi tháng gia đình cô Hằng  có thẻ thu hoạch được 12kg rau/tháng. Phí duy trì mỗi tháng chỉ dao động khoảng 80 nghìn đồng mà không phải lo về độ bền của giàn trồng. Đây là một trong những dự án mà GIFV đã triển khai rất thành công chỉ trong 1 ngày.', '<p>Do nhu cầu rau sạch ng&agrave;y c&agrave;ng gia tăng m&agrave; thời gian gần đ&acirc;y số lượng kh&aacute;ch h&agrave;ng li&ecirc;n hệ GIFV để thiết kế thi c&ocirc;ng gi&agrave;n trồng thuỷ canh tăng ch&oacute;ng mặt. Đội ngũ kỹ sư của GIFV đ&atilde; phải l&agrave;m việc kh&ocirc;ng kể ng&agrave;y nghỉ.</p>\r\n<p>C&ugrave;ng t&igrave;m hiểu qua m&ocirc; h&igrave;nh thuỷ canh nh&agrave; c&ocirc; Hằng ngay dưới đ&acirc;y nh&eacute;.</p>\r\n<h2 id=\"mocirc-higravenh-thuy-canh-su-dung-cho-du-aacuten-nhagrave-cocirc-hang\">M&ocirc; h&igrave;nh thuỷ canh sử dụng cho dự &aacute;n nh&agrave; c&ocirc; Hằng</h2>\r\n<p>Sau khi nhận th&ocirc;ng tin, đội ngũ kỹ sư SkyFarm đ&atilde; l&ecirc;n đường tới gia đ&igrave;nh c&ocirc; Hằng để khảo s&aacute;t, tư vấn v&agrave; tiến h&agrave;nh thiết kế, thi c&ocirc;ng. Với diện t&iacute;ch s&acirc;n thượng nh&agrave; c&ocirc; Hằng, do hướng đ&oacute;n nắng kh&aacute; khuất, do đ&oacute; GIFV đ&atilde; thiết kế gi&agrave;n thuỷ canh b&aacute;n chữ A.</p>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" title=\"M&ocirc; h&igrave;nh thuỷ canh sử dụng cho dự &aacute;n nh&agrave; c&ocirc; Hằng\" src=\"https://skyfarm.vn/uploads/tin-tuc/du-an-thuy-canh-nha-co-hang-skyfarm.jpg\" alt=\"M&ocirc; h&igrave;nh thuỷ canh sử dụng cho dự &aacute;n nh&agrave; c&ocirc; Hằng\"></p>\r\n<p>&nbsp;</p>\r\n<p>Đ&acirc;y l&agrave; m&ocirc; h&igrave;nh thuỷ canh rất ph&ugrave; hợp với những kh&ocirc;ng gian đ&oacute;n &aacute;nh s&aacute;ng yếu. Nhờ thiết kế theo tầng sẽ gi&uacute;p tạo khoảng trống ph&ugrave; hợp giữa c&aacute;c loại c&acirc;y v&agrave; đ&oacute;n hướng nắng san đều cho c&aacute;c c&acirc;y c&oacute; thể quang hợp tốt nhất.</p>\r\n<p>Cụ thể, gi&agrave;n thuỷ canh b&aacute;n chữ A của gia đ&igrave;nh c&ocirc; Hằng d&agrave;i 3 m&eacute;t , 4 tầng, 8 ống với 128 lỗ trồng. Với gi&agrave;n trồng n&agrave;y, trong vụ đầu ti&ecirc;n, gia đ&igrave;nh c&ocirc; Hằng sẽ được định hướng trồng rau cải ngọt, x&agrave; l&aacute;ch v&agrave; rau muống. Đ&acirc;y l&agrave; những loại rau dễ trồng, thu hoạch nhanh v&agrave; được d&ugrave;ng nhiều trong c&aacute;c bữa ăn gia đ&igrave;nh. V&agrave; dinh dưỡng sử dụng l&agrave; Grow Master gi&uacute;p c&acirc;y sinh trưởng v&agrave; ph&aacute;t triển tốt nhất.</p>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" title=\"M&ocirc; h&igrave;nh thuỷ canh sử dụng cho dự &aacute;n nh&agrave; c&ocirc; Hằng\" src=\"https://skyfarm.vn/uploads/tin-tuc/du-an-nha-co-hang-phu-my-hung.jpg\" alt=\"M&ocirc; h&igrave;nh thuỷ canh sử dụng cho dự &aacute;n nh&agrave; c&ocirc; Hằng\"></p>\r\n<p>&nbsp;</p>\r\n<p>Theo ước t&iacute;nh, mỗi rọ thuỷ canh nh&agrave; c&ocirc; Hằng sẽ cho khoảng 100 gram rau khi thu hoạch. Theo đ&oacute;, sau khoảng 30 ng&agrave;y c&oacute; thể thu hoạch 1 vụ với khoảng 12kg rau. Chi ph&iacute; duy tr&igrave; mỗi vụ sẽ dao động khoảng 80 ngh&igrave;n đồng bao gồm hạt giống, m&uacute;t ươm, dinh dưỡng v&agrave; điện nước.</p>\r\n<h2 id=\"uu-diem-cua-giagraven-thuy-canh-baacuten-chu-a-du-aacuten-nhagrave-cocirc-hang\">Ưu điểm của gi&agrave;n thuỷ canh b&aacute;n chữ A dự &aacute;n nh&agrave; c&ocirc; Hằng</h2>\r\n<p>Gi&agrave;n thuỷ canh b&aacute;n chữ A nh&agrave; c&ocirc; Hằng được l&agrave;m bằng chất liệu sắt hộp m&atilde; kẽm, kh&ocirc;ng gỉ. M&ocirc; h&igrave;nh n&agrave;y c&oacute; thể th&iacute;ch ứng với điều kiện thời tiết, m&ocirc;i trường cũng như c&oacute; độ bền cao.</p>\r\n<p>Đặc biệt, c&aacute;c thanh sắt c&oacute; đường k&iacute;nh nhỏ, thanh mảnh nhưng sức chịu lực lại rất cao. Nhờ đ&oacute; gi&uacute;p đảm bảo gi&agrave;n đỡ lu&ocirc;n chắc chắn.</p>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" title=\"Ưu điểm của gi&agrave;n thuỷ canh b&aacute;n chữ A dự &aacute;n nh&agrave; c&ocirc; Hằng\" src=\"https://skyfarm.vn/uploads/tin-tuc/du-an-thuy-canh-nha-co-hang.jpg\" alt=\"Ưu điểm của gi&agrave;n thuỷ canh b&aacute;n chữ A dự &aacute;n nh&agrave; c&ocirc; Hằng\"></p>\r\n<p><em>Gi&agrave;n rau thuỷ canh ph&aacute;t triển xanh tốt khiến c&ocirc; Hằng rất h&agrave;i l&ograve;ng.</em></p>\r\n<p>Trong khi đ&oacute;, c&aacute;c&nbsp;ống nhựa thuỷ canh&nbsp;của m&ocirc; h&igrave;nh n&agrave;y được l&agrave;m từ uPVC c&oacute; thể chống nắng, chịu nhiệt tốt hơn 18% so với c&aacute;c loại ống nhựa kh&aacute;c. Độ bền cao cũng gi&uacute;p giữ độ pH cũng như nồng độ dinh dưỡng an to&agrave;n, ổn định.</p>\r\n<p>C&aacute;c&nbsp;rọ thủy canh&nbsp;c&oacute; t&iacute;nh đ&agrave;n hồi cao, chịu nhiệt tốt cũng như nhỏ gọn n&ecirc;n rất dễ ươm trồng. Đặc biệt, chất liệu l&agrave;m rọ thuỷ canh l&agrave; loại nhựa tổng hợp c&oacute; thể chịu nhiệt tốt, kh&ocirc;ng lo hư hỏng d&ugrave; thời tiết nắng gắt hay nhiệt độ cao.</p>\r\n<p>Theo đ&oacute;, với gi&agrave;n trồng thuỷ canh b&aacute;n chữ A tại GIFV sẽ ph&ugrave; hợp ho&agrave;n to&agrave;n với m&ocirc; h&igrave;nh thuỷ canh tr&ecirc;n s&acirc;n thượng nh&agrave; c&ocirc; Hằng.</p>\r\n<h3>Tại sao n&ecirc;n chọn GIFV l&agrave; đơn vị thiết kế, thi c&ocirc;ng hệ thống thuỷ canh?</h3>\r\n<p>GIFV tự h&agrave;o l&agrave; đơn vị&nbsp; tư vấn, thiết kế v&agrave; lắp đặt hệ thống thuỷ canh h&agrave;ng đầu tại Việt Nam. Tại đ&acirc;y tự h&agrave;o mang tới những giải ph&aacute;p thuỷ canh ph&ugrave; hợp với mọi nhu cầu v&agrave; diện t&iacute;ch của kh&aacute;ch h&agrave;ng.</p>\r\n<p>Từ hệ thống thuỷ canh, dung dịch thuỷ canh, b&uacute;t đo nồng độ tới c&aacute;c loại hạt giống,&hellip;lu&ocirc;n được GIFV tiếp nhận v&agrave; thực hiện. GIFV cũng sẽ c&oacute; đội ngũ đến tận nơi để khảo s&aacute;t v&agrave; tư vấn cũng như tiến h&agrave;nh lắp đặt v&agrave; theo d&otilde;i sau lắp đặt.</p>\r\n<p>Sau khi dự &aacute;n ho&agrave;n th&agrave;nh, đội ngũ GIFV cũng sẽ hướng dẫn cho c&aacute;c kh&aacute;ch h&agrave;ng c&aacute;ch sử dụng những thiết bị trồng rau thủy canh, kiểm tra nồng độ dinh dưỡng, gieo trồng hay c&aacute;ch chăm s&oacute;c mỗi loại c&acirc;y rau kh&aacute;c nhau để đạt được năng suất cao nhất.</p>\r\n<p>Ngo&agrave;i ra, GIFV cũng cung cấp v&agrave; hướng dẫn chi tiết. Hỗ trợ kỹ thuật online, điện thoại để chắc chắn kh&aacute;ch h&agrave;ng sẽ l&agrave;m th&agrave;nh c&ocirc;ng. Li&ecirc;n hệ ngay với GIFV để nhận được những tư vấn cụ thể v&agrave; ph&ugrave; hợp với diện t&iacute;ch cũng như như cầu của gia đ&igrave;nh bạn.</p>', 'projects/November2023/ZiTnrPdfL0z9C9TqMc3z.jpg', 'PUBLISHED', '2023-11-15 20:05:10', '2023-11-15 20:05:10');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2023-11-08 20:36:12', '2023-11-08 20:36:12'),
(2, 'user', 'Normal User', '2023-11-08 20:36:12', '2023-11-08 20:36:12'),
(3, 'adminweb', 'adminweb', '2023-11-16 23:13:58', '2023-11-16 23:13:58');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Nông Nghiệp Trong Phố GIFV', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'GIFV chuyên thiết kế, thi công và chăm sóc vườn rau thuỷ canh tại nhà.', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', 'settings/November2023/BwegjEMpbRFopvPeCO8j.png', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', 'settings/November2023/SWMyjRElqChDlb2mw6N5.jpg', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'GIFV', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin'),
(11, 'site.stock_threshold', 'Stock Threshold', NULL, '', 'number', 6, 'Site'),
(12, 'site.phone', 'phone', '0876719666', NULL, 'text', 7, 'Site'),
(13, 'site.email', 'email', 'gifv.co.ltd@gmail.com', NULL, 'text', 8, 'Site'),
(14, 'site.address', 'address', 'Tổ 12 Phường Thắng Lợi TP Sông Công Tỉnh Thái Nguyên', NULL, 'text', 9, 'Site'),
(15, 'site.map_contact', 'map_contact', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d14852.683576721804!2d105.81587037952507!3d21.461810192137325!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31351f7a1b4015a5%3A0xc6c4a84ed69ce3b6!2zVGjhuq9uZyBM4bujaSwgVHAuIFPDtG5nIEPDtG5nLCBUaMOhaSBOZ3V5w6puLCBWaeG7h3QgTmFt!5e0!3m2!1svi!2s!4v1699605811734!5m2!1svi!2s\" width=\"1920\" height=\"600\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', NULL, 'text_area', 10, 'Site'),
(16, 'site.breadcrumb', 'breadcrumb', 'settings/November2023/Y1KEc4ry5l2f3zzSeqVg.png', NULL, 'image', 11, 'Site'),
(18, 'network.social_tiktok', 'social_tiktok', 'https://www.tiktok.com/@nongnghieptrongpho', NULL, 'text', 13, 'network'),
(19, 'network.social_facebook', 'social_facebook', 'https://www.facebook.com/nongnghieptrongpho?mibextid=ZbWKwL', NULL, 'text', 14, 'network'),
(20, 'network.social_youtube', 'social_youtube', 'https://www.youtube.com/', NULL, 'text', 15, 'network'),
(21, 'network.zalo', 'zalo', '0876719666', NULL, 'text', 16, 'network'),
(22, 'site.favico', 'favico', 'settings/November2023/li31QkC1Nu8EGKaNFIQN.png', NULL, 'image', 17, 'Site'),
(23, 'network.social_instagram', 'social_instagram', 'https://www.instagram.com/', NULL, 'text', 18, 'network');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Hạt giống', 'hat-giong', '2023-11-08 20:36:11', '2023-11-08 23:09:21'),
(2, 'Cây trồng', 'cay-trong', '2023-11-08 20:36:11', '2023-11-08 23:09:38'),
(3, 'Phụ kiện', 'phu-kien', '2023-11-08 20:36:11', '2023-11-08 23:09:53'),
(4, 'Thủy canh', 'thuy-canh', '2023-11-08 20:36:11', '2023-11-08 23:10:08');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `github_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `github_id`, `facebook_id`, `google_id`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users/November2023/IecetEUzkgUCFR0leVSs.png', NULL, NULL, NULL, NULL, '$2y$10$EehnxWRy/FBdAN..eFG8f.2lBJdiHVgW4AkltvJ5c5CZ/EuZTdsRm', 'O5UMkyvM41jj5Xdr673rBYZdOyXnnYZB0Zsjf265QYOc7Dtqa3xxoBxeRklU', '{\"locale\":\"vi\"}', '2023-11-08 20:36:12', '2023-11-09 23:08:58'),
(2, 2, 'Nguyen Quang Hai', 'content@content.com', 'users/default.png', NULL, NULL, NULL, NULL, '$2y$10$Fz12iwnXhvbszO.rZcUh8uhyL5RlpIgSyxZ0AY2HIvPrl2WX62T7q', NULL, NULL, '2023-11-09 23:17:28', '2023-11-09 23:17:28'),
(4, 3, 'adminweb@admin.com', 'adminweb@admin.com', 'users/default.png', NULL, NULL, NULL, NULL, '$2y$10$ipy3IN5EqgY9yJed.EXmh.BxIBrD0urRLQoMUmsNNIi2StM3AirbO', NULL, '{\"locale\":\"vi\"}', '2023-11-16 23:21:49', '2023-11-16 23:21:49');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES
(4, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_name_unique` (`name`),
  ADD UNIQUE KEY `category_slug_unique` (`slug`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country_visits`
--
ALTER TABLE `country_visits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coupons_code_unique` (`code`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `order_product`
--
ALTER TABLE `order_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_product_product_id_foreign` (`product_id`),
  ADD KEY `order_product_order_id_foreign` (`order_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_name_unique` (`name`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `product_tag`
--
ALTER TABLE `product_tag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_tag_product_id_foreign` (`product_id`),
  ADD KEY `product_tag_tag_id_foreign` (`tag_id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tags_name_unique` (`name`),
  ADD UNIQUE KEY `tags_slug_unique` (`slug`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `country_visits`
--
ALTER TABLE `country_visits`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=174;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `order_product`
--
ALTER TABLE `order_product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `partners`
--
ALTER TABLE `partners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- AUTO_INCREMENT for table `product_tag`
--
ALTER TABLE `product_tag`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `order_product`
--
ALTER TABLE `order_product`
  ADD CONSTRAINT `order_product_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `order_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_tag`
--
ALTER TABLE `product_tag`
  ADD CONSTRAINT `product_tag_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
