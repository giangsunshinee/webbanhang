-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 13, 2024 at 08:28 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webbanhang`
--

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `link` varchar(100) NOT NULL DEFAULT '#',
  `image` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `position` varchar(100) DEFAULT 'top-banner',
  `prioty` tinyint DEFAULT '0',
  `status` tinyint(1) DEFAULT '0',
  `updated_at` date DEFAULT NULL,
  `created_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `name`, `link`, `image`, `description`, `position`, `prioty`, `status`, `updated_at`, `created_at`) VALUES
(1, 'Bemet', '#', 'banner_bg.png', '', 'top-banner', 0, 1, NULL, NULL),
(2, 'gallery 1', '#', 'gallery_img01.jpg', '', 'gallery', 1, 1, NULL, NULL),
(3, 'gallery 2', '#', 'gallery_img02.jpg', '', 'gallery', 2, 1, NULL, NULL),
(4, 'gallery 3', '#', 'gallery_img03.jpg', '', 'gallery', 3, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `link` varchar(100) NOT NULL DEFAULT '#',
  `image` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `position` varchar(100) DEFAULT 'top-banner',
  `status` tinyint(1) DEFAULT '0',
  `updated_at` date DEFAULT NULL,
  `created_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `customer_id` int NOT NULL,
  `product_id` int NOT NULL,
  `price` float(10,2) NOT NULL,
  `quantity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`customer_id`, `product_id`, `price`, `quantity`) VALUES
(13, 7, 23423.00, 3),
(13, 9, 1000.00, 3);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `status` tinyint(1) DEFAULT '0',
  `updated_at` date NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `status`, `updated_at`, `created_at`) VALUES
(1, 'VANS', 1, '2024-11-12', '2024-10-05'),
(2, 'ADIDAS', 1, '2024-11-12', '2024-10-05'),
(7, 'MLB', 0, '2024-11-12', '2024-10-14'),
(8, 'NIKE', 0, '2024-11-12', '2024-11-12'),
(9, 'CONVERSE', 0, '2024-11-12', '2024-11-12');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int NOT NULL,
  `customer_id` int NOT NULL,
  `product_id` int NOT NULL,
  `comment` text,
  `updated_at` date DEFAULT NULL,
  `created_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `address` varchar(100) DEFAULT NULL,
  `gender` tinyint NOT NULL DEFAULT '0',
  `password` varchar(200) NOT NULL,
  `email_verified_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `phone`, `address`, `gender`, `password`, `email_verified_at`, `updated_at`, `created_at`) VALUES
(13, 'NGUYEN Meo', 'giangsunshinee@gmail.com', '0869311893', '11 - NGACH - 56/20 - DUONG THONG NHAT', 0, '$2y$12$.ArpFVMwgHEYtVWn1xXa.eJZGhMC4U7.Emyf9S1mfUkPfplv.90KW', '2024-10-03', '2024-10-04', '2024-10-03'),
(16, 'meo moe moe', 'haha@gmail.com', '0869311888', NULL, 0, '$2y$12$17KLo//5dgjZAkDI0TnyduPhytZWqqnJNUYknRziZTeCp3Kd8bBrG', NULL, '2024-10-05', '2024-10-05'),
(18, 'NGUYEN TRUONG GIANG', 'huhu@gmail.com', '0869311222', 'DUONG LIEU', 0, '$2y$12$4p6O.KgN3BYpTfl3J3LW6eBcmpILoLRYyeahN2fyu6bvaxRZQL53S', NULL, '2024-10-05', '2024-10-05'),
(19, 'hahahaha', 'kuhuh@gmail.com', '0869311111', 'da nang', 0, '$2y$12$gk/EEW/SdGb4cGWCcdDSse5ywCrczuK/M7eF.hqStI6exyuZRilaq', NULL, '2024-10-05', '2024-10-05');

-- --------------------------------------------------------

--
-- Table structure for table `customer_reset_tokens`
--

CREATE TABLE `customer_reset_tokens` (
  `email` varchar(100) NOT NULL,
  `token` varchar(100) NOT NULL,
  `updated_at` date DEFAULT NULL,
  `created_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `customer_reset_tokens`
--

INSERT INTO `customer_reset_tokens` (`email`, `token`, `updated_at`, `created_at`) VALUES
('giangsunshinee@gmail.com', 'XDZCblT09A5zZrDe1hhtEoe1mv81YTpjCPGp3h1QleSR0GEXTx', '2024-10-03', '2024-10-03');

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

CREATE TABLE `favorites` (
  `id` int NOT NULL,
  `customer_id` int NOT NULL,
  `product_id` int NOT NULL,
  `updated_at` date DEFAULT NULL,
  `created_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `favorites`
--

INSERT INTO `favorites` (`id`, `customer_id`, `product_id`, `updated_at`, `created_at`) VALUES
(10, 13, 8, '2024-10-08', '2024-10-08'),
(11, 13, 7, '2024-10-08', '2024-10-08');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `customer_id` int NOT NULL,
  `updated_at` date DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `token` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `email`, `phone`, `address`, `customer_id`, `updated_at`, `created_at`, `status`, `token`) VALUES
(12, 'NGUYEN Meo', 'giangsunshinee@gmail.com', '0869311893', '11 - NGACH - 56/20 - DUONG THONG NHAT', 13, '2024-10-19', '2024-10-17', 1, NULL),
(13, 'NGUYEN Meo', 'giangsunshinee@gmail.com', '0869311893', '11 - NGACH - 56/20 - DUONG THONG NHAT', 13, '2024-10-19', '2024-10-18', 2, 'Mb8KD5THrspNbTYzHs4saiEPTzIxJBXtHA7jOZPG'),
(14, 'nguoi dep the giot', 'giangsunshinee@gmail.com', '0869311893', '11 - NGACH - 56/20 - DUONG THONG NHAT', 13, '2024-10-19', '2024-10-19', 2, NULL),
(15, 'dep trai', 'giangsunshinee@gmail.com', '0869311893', '11 - NGACH - 56/20 - DUONG THONG NHAT', 13, '2024-10-19', '2024-10-19', 2, '69Z5WFVe65uQnpQEu8sQqD5fKa3lxVZOIz6fyp9t'),
(16, 'NGUYEN Meo', 'giangsunshinee@gmail.com', '0869311893', '11 - NGACH - 56/20 - DUONG THONG NHAT', 13, '2024-10-19', '2024-10-19', 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `order_id` int NOT NULL,
  `product_id` int NOT NULL,
  `quantity` tinyint NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`order_id`, `product_id`, `quantity`, `price`) VALUES
(12, 7, 1, 23423),
(12, 9, 2, 1000),
(13, 7, 2, 23423),
(13, 9, 2, 1000),
(14, 9, 1, 1000),
(15, 7, 3, 23423),
(15, 9, 3, 1000),
(16, 7, 3, 23423),
(16, 9, 3, 1000);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `updated_at` date DEFAULT NULL,
  `created_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `price` float(10,2) NOT NULL,
  `sale_price` float(10,2) NOT NULL,
  `category_id` int NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(1) DEFAULT '0',
  `updated_at` date NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `image`, `price`, `sale_price`, `category_id`, `description`, `status`, `updated_at`, `created_at`) VALUES
(3, 'Giày MLB BigBall Chunky A Gradient Classic Monogram New York Yankees Ivory', 'RVVieEzWqZFUiXIFapHeulgTD15R1YA5lKQnUKIt.jpg', 1700000.00, 750000.00, 7, '<ul style=\"list-style-position: initial; list-style-image: initial; padding: 0px; margin-bottom: 1.3em; color: rgb(70, 70, 70); font-family: Roboto, sans-serif; font-size: 16px;\"><li id=\"a9h3g_2q4bm\" type=\"\" style=\"margin-bottom: 0.2em; margin-left: 1.3em;\"><span id=\"a9h3g_2q4bm_efrjq\" class=\"\" data-text=\"true\">Trạng thái : Còn hàng, liên hệ Shop để check size tại cửa hàng</span></li><li id=\"a9h3g_1c74s\" type=\"\" style=\"margin-bottom: 0.2em; margin-left: 1.3em;\"><span id=\"a9h3g_1c74s_b96cq\" class=\"\" data-text=\"true\">Tình trạng : Hàng mới 100%</span></li><li id=\"a9h3g_8e9q0\" type=\"\" style=\"margin-bottom: 0.2em; margin-left: 1.3em;\"><span id=\"a9h3g_8e9q0_decc1\" class=\"\" data-text=\"true\">Giao hàng &amp; Thanh toán : Giao hàng trên toàn quốc và thanh toán khi nhận hàng, được đổi size trong vòng 7 ngày.</span></li><li id=\"a9h3g_1ohij\" type=\"\" style=\"margin-bottom: 0.2em; margin-left: 1.3em;\"><span id=\"a9h3g_1ohij_4g8cq\" class=\"\" data-text=\"true\">Sản phẩm được bảo hành 6 tháng lỗi do nhà sản xuất.</span></li></ul><span style=\"font-weight: bolder; color: rgb(70, 70, 70); font-family: Roboto, sans-serif; font-size: 16px;\"><img class=\"emoji\" role=\"img\" draggable=\"false\" src=\"https://s.w.org/images/core/emoji/13.1.0/svg/2705.svg\" alt=\"✅\" style=\"max-width: 100%; opacity: 1; transition: opacity 1s; border-width: initial !important; border-style: none !important; display: inline !important; height: 1em !important; vertical-align: -0.1em !important; box-shadow: none !important; width: 1em !important; margin: 0px 0.07em !important; background: none !important; padding: 0px !important;\">&nbsp;Tặng kèm vớ/tất cổ ngắn khử mùi</span><br style=\"color: rgb(70, 70, 70); font-family: Roboto, sans-serif; font-size: 16px;\"><span style=\"font-weight: bolder; color: rgb(70, 70, 70); font-family: Roboto, sans-serif; font-size: 16px;\"><img class=\"emoji\" role=\"img\" draggable=\"false\" src=\"https://s.w.org/images/core/emoji/13.1.0/svg/2705.svg\" alt=\"✅\" style=\"max-width: 100%; opacity: 1; transition: opacity 1s; border-width: initial !important; border-style: none !important; display: inline !important; height: 1em !important; vertical-align: -0.1em !important; box-shadow: none !important; width: 1em !important; margin: 0px 0.07em !important; background: none !important; padding: 0px !important;\">&nbsp;Đóng box carton kèm chống sốc, bảo vệ hộp giày nguyên vẹn</span>', 1, '2024-11-12', '2024-10-04'),
(4, 'Giày MLB Chunky Liner Los Angeles Pink Like Auth', 'iTp0jhS3bEOUPzkpI6dH6e0uADnniqur1VBOvpYj.jpg', 1800000.00, 750000.00, 7, '<ul style=\"list-style-position: initial; list-style-image: initial; padding: 0px; margin-bottom: 1.3em; color: rgb(70, 70, 70); font-family: Roboto, sans-serif; font-size: 16px;\"><li id=\"a9h3g_2q4bm\" type=\"\" style=\"margin-bottom: 0.2em; margin-left: 1.3em;\"><span id=\"a9h3g_2q4bm_efrjq\" class=\"\" data-text=\"true\">Trạng thái : Còn hàng, liên hệ Shop để check size tại cửa hàng</span></li><li id=\"a9h3g_1c74s\" type=\"\" style=\"margin-bottom: 0.2em; margin-left: 1.3em;\"><span id=\"a9h3g_1c74s_b96cq\" class=\"\" data-text=\"true\">Tình trạng : Hàng mới 100%</span></li><li id=\"a9h3g_8e9q0\" type=\"\" style=\"margin-bottom: 0.2em; margin-left: 1.3em;\"><span id=\"a9h3g_8e9q0_decc1\" class=\"\" data-text=\"true\">Giao hàng &amp; Thanh toán : Giao hàng trên toàn quốc và thanh toán khi nhận hàng, được đổi size trong vòng 7 ngày.</span></li><li id=\"a9h3g_1ohij\" type=\"\" style=\"margin-bottom: 0.2em; margin-left: 1.3em;\"><span id=\"a9h3g_1ohij_4g8cq\" class=\"\" data-text=\"true\">Sản phẩm được bảo hành 6 tháng lỗi do nhà sản xuất.</span></li></ul><span style=\"font-weight: bolder; color: rgb(70, 70, 70); font-family: Roboto, sans-serif; font-size: 16px;\"><img class=\"emoji\" role=\"img\" draggable=\"false\" src=\"https://s.w.org/images/core/emoji/13.1.0/svg/2705.svg\" alt=\"✅\" style=\"max-width: 100%; opacity: 1; transition: opacity 1s; border-width: initial !important; border-style: none !important; display: inline !important; height: 1em !important; vertical-align: -0.1em !important; box-shadow: none !important; width: 1em !important; margin: 0px 0.07em !important; background: none !important; padding: 0px !important;\">&nbsp;Tặng kèm vớ/tất cổ ngắn khử mùi</span><br style=\"color: rgb(70, 70, 70); font-family: Roboto, sans-serif; font-size: 16px;\"><span style=\"font-weight: bolder; color: rgb(70, 70, 70); font-family: Roboto, sans-serif; font-size: 16px;\"><img class=\"emoji\" role=\"img\" draggable=\"false\" src=\"https://s.w.org/images/core/emoji/13.1.0/svg/2705.svg\" alt=\"✅\" style=\"max-width: 100%; opacity: 1; transition: opacity 1s; border-width: initial !important; border-style: none !important; display: inline !important; height: 1em !important; vertical-align: -0.1em !important; box-shadow: none !important; width: 1em !important; margin: 0px 0.07em !important; background: none !important; padding: 0px !important;\">&nbsp;Đóng box carton kèm chống sốc, bảo vệ hộp giày nguyên vẹn</span>', 1, '2024-11-12', '2024-10-04'),
(7, 'Giày MLB Chunky Runner LA Dodgers Beige', '8dCc5ttNeiHnjdEy5zo9m8WAeGoLKAG1361KkxpJ.jpg', 1800000.00, 850000.00, 7, '<ul style=\"list-style-position: initial; list-style-image: initial; padding: 0px; margin-bottom: 1.3em; color: rgb(70, 70, 70); font-family: Roboto, sans-serif; font-size: 16px;\"><li id=\"a9h3g_2q4bm\" type=\"\" style=\"margin-bottom: 0.2em; margin-left: 1.3em;\"><span id=\"a9h3g_2q4bm_efrjq\" class=\"\" data-text=\"true\">Trạng thái : Còn hàng, liên hệ Shop để check size tại cửa hàng</span></li><li id=\"a9h3g_1c74s\" type=\"\" style=\"margin-bottom: 0.2em; margin-left: 1.3em;\"><span id=\"a9h3g_1c74s_b96cq\" class=\"\" data-text=\"true\">Tình trạng : Hàng mới 100%</span></li><li id=\"a9h3g_8e9q0\" type=\"\" style=\"margin-bottom: 0.2em; margin-left: 1.3em;\"><span id=\"a9h3g_8e9q0_decc1\" class=\"\" data-text=\"true\">Giao hàng &amp; Thanh toán : Giao hàng trên toàn quốc và thanh toán khi nhận hàng, được đổi size trong vòng 7 ngày.</span></li><li id=\"a9h3g_1ohij\" type=\"\" style=\"margin-bottom: 0.2em; margin-left: 1.3em;\"><span id=\"a9h3g_1ohij_4g8cq\" class=\"\" data-text=\"true\">Sản phẩm được bảo hành 6 tháng lỗi do nhà sản xuất.</span></li></ul><span style=\"font-weight: bolder; color: rgb(70, 70, 70); font-family: Roboto, sans-serif; font-size: 16px;\"><img class=\"emoji\" role=\"img\" draggable=\"false\" src=\"https://s.w.org/images/core/emoji/13.1.0/svg/2705.svg\" alt=\"✅\" style=\"max-width: 100%; opacity: 1; transition: opacity 1s; border-width: initial !important; border-style: none !important; display: inline !important; height: 1em !important; vertical-align: -0.1em !important; box-shadow: none !important; width: 1em !important; margin: 0px 0.07em !important; background: none !important; padding: 0px !important;\">&nbsp;Tặng kèm vớ/tất cổ ngắn khử mùi</span><br style=\"color: rgb(70, 70, 70); font-family: Roboto, sans-serif; font-size: 16px;\"><span style=\"font-weight: bolder; color: rgb(70, 70, 70); font-family: Roboto, sans-serif; font-size: 16px;\"><img class=\"emoji\" role=\"img\" draggable=\"false\" src=\"https://s.w.org/images/core/emoji/13.1.0/svg/2705.svg\" alt=\"✅\" style=\"max-width: 100%; opacity: 1; transition: opacity 1s; border-width: initial !important; border-style: none !important; display: inline !important; height: 1em !important; vertical-align: -0.1em !important; box-shadow: none !important; width: 1em !important; margin: 0px 0.07em !important; background: none !important; padding: 0px !important;\">&nbsp;Đóng box carton kèm chống sốc, bảo vệ hộp giày nguyên vẹn</span>', 1, '2024-11-12', '2024-10-06'),
(8, 'Giày MLB Big Ball Chunky NY Window Saffiano Cream White Like Auth', 'NNkFlOMCrXhM2rUjpBbpFliQhu9QwDqT8otxh86I.jpg', 1050000.00, 750000.00, 7, '<ul style=\"list-style-position: initial; list-style-image: initial; padding: 0px; margin-bottom: 1.3em; color: rgb(70, 70, 70); font-family: Roboto, sans-serif; font-size: 16px;\"><li id=\"a9h3g_2q4bm\" type=\"\" style=\"margin-bottom: 0.2em; margin-left: 1.3em;\"><span id=\"a9h3g_2q4bm_efrjq\" class=\"\" data-text=\"true\">Trạng thái : Còn hàng, liên hệ Shop để check size tại cửa hàng</span></li><li id=\"a9h3g_1c74s\" type=\"\" style=\"margin-bottom: 0.2em; margin-left: 1.3em;\"><span id=\"a9h3g_1c74s_b96cq\" class=\"\" data-text=\"true\">Tình trạng : Hàng mới 100%</span></li><li id=\"a9h3g_8e9q0\" type=\"\" style=\"margin-bottom: 0.2em; margin-left: 1.3em;\"><span id=\"a9h3g_8e9q0_decc1\" class=\"\" data-text=\"true\">Giao hàng &amp; Thanh toán : Giao hàng trên toàn quốc và thanh toán khi nhận hàng, được đổi size trong vòng 7 ngày.</span></li><li id=\"a9h3g_1ohij\" type=\"\" style=\"margin-bottom: 0.2em; margin-left: 1.3em;\"><span id=\"a9h3g_1ohij_4g8cq\" class=\"\" data-text=\"true\">Sản phẩm được bảo hành 6 tháng lỗi do nhà sản xuất.</span></li></ul><span style=\"font-weight: bolder; color: rgb(70, 70, 70); font-family: Roboto, sans-serif; font-size: 16px;\"><img class=\"emoji\" role=\"img\" draggable=\"false\" src=\"https://s.w.org/images/core/emoji/13.1.0/svg/2705.svg\" alt=\"✅\" style=\"max-width: 100%; opacity: 1; transition: opacity 1s; border-width: initial !important; border-style: none !important; display: inline !important; height: 1em !important; vertical-align: -0.1em !important; box-shadow: none !important; width: 1em !important; margin: 0px 0.07em !important; background: none !important; padding: 0px !important;\">&nbsp;Tặng kèm vớ/tất cổ ngắn khử mùi</span><br style=\"color: rgb(70, 70, 70); font-family: Roboto, sans-serif; font-size: 16px;\"><span style=\"font-weight: bolder; color: rgb(70, 70, 70); font-family: Roboto, sans-serif; font-size: 16px;\"><img class=\"emoji\" role=\"img\" draggable=\"false\" src=\"https://s.w.org/images/core/emoji/13.1.0/svg/2705.svg\" alt=\"✅\" style=\"max-width: 100%; opacity: 1; transition: opacity 1s; border-width: initial !important; border-style: none !important; display: inline !important; height: 1em !important; vertical-align: -0.1em !important; box-shadow: none !important; width: 1em !important; margin: 0px 0.07em !important; background: none !important; padding: 0px !important;\">&nbsp;Đóng box carton kèm chống sốc, bảo vệ hộp giày nguyên vẹn</span>', 1, '2024-11-12', '2024-10-06'),
(9, 'Giày MLB Chunky Liner New York Yankees ‘Black White’ Best Quality', 'a3YhfkL4l9Yio1QWbmxz6Vj2gN0GvaYDTk8Fky7c.jpg', 1500000.00, 900000.00, 7, '<ul style=\"list-style-position: initial; list-style-image: initial; padding: 0px; margin-bottom: 1.3em; color: rgb(70, 70, 70); font-family: Roboto, sans-serif; font-size: 16px;\"><li id=\"a9h3g_2q4bm\" type=\"\" style=\"margin-bottom: 0.2em; margin-left: 1.3em;\"><span id=\"a9h3g_2q4bm_efrjq\" class=\"\" data-text=\"true\">Trạng thái : Còn hàng, liên hệ Shop để check size tại cửa hàng</span></li><li id=\"a9h3g_1c74s\" type=\"\" style=\"margin-bottom: 0.2em; margin-left: 1.3em;\"><span id=\"a9h3g_1c74s_b96cq\" class=\"\" data-text=\"true\">Tình trạng : Hàng mới 100%</span></li><li id=\"a9h3g_8e9q0\" type=\"\" style=\"margin-bottom: 0.2em; margin-left: 1.3em;\"><span id=\"a9h3g_8e9q0_decc1\" class=\"\" data-text=\"true\">Giao hàng &amp; Thanh toán : Giao hàng trên toàn quốc và thanh toán khi nhận hàng, được đổi size trong vòng 7 ngày.</span></li><li id=\"a9h3g_1ohij\" type=\"\" style=\"margin-bottom: 0.2em; margin-left: 1.3em;\"><span id=\"a9h3g_1ohij_4g8cq\" class=\"\" data-text=\"true\">Sản phẩm được bảo hành 6 tháng lỗi do nhà sản xuất.</span></li></ul><p><span style=\"font-weight: bolder; color: rgb(70, 70, 70); font-family: Roboto, sans-serif; font-size: 16px;\"><img class=\"emoji\" role=\"img\" draggable=\"false\" src=\"https://s.w.org/images/core/emoji/13.1.0/svg/2705.svg\" alt=\"✅\" style=\"max-width: 100%; opacity: 1; transition: opacity 1s; border-width: initial !important; border-style: none !important; display: inline !important; height: 1em !important; vertical-align: -0.1em !important; box-shadow: none !important; width: 1em !important; margin: 0px 0.07em !important; background: none !important; padding: 0px !important;\">&nbsp;Tặng kèm vớ/tất cổ ngắn khử mùi</span><br style=\"color: rgb(70, 70, 70); font-family: Roboto, sans-serif; font-size: 16px;\"><span style=\"font-weight: bolder; color: rgb(70, 70, 70); font-family: Roboto, sans-serif; font-size: 16px;\"><img class=\"emoji\" role=\"img\" draggable=\"false\" src=\"https://s.w.org/images/core/emoji/13.1.0/svg/2705.svg\" alt=\"✅\" style=\"max-width: 100%; opacity: 1; transition: opacity 1s; border-width: initial !important; border-style: none !important; display: inline !important; height: 1em !important; vertical-align: -0.1em !important; box-shadow: none !important; width: 1em !important; margin: 0px 0.07em !important; background: none !important; padding: 0px !important;\">&nbsp;Đóng box carton kèm chống sốc, bảo vệ hộp giày nguyên vẹn</span></p>', 1, '2024-11-12', '2024-10-14'),
(10, 'Giày Adidas Samba OG ‘Black White’ Best Quality (Da Bò)', '9MrwWH3t6q18vOceCwkHveJ48vP4BleVwCzuVMdx.jpg', 1050000.00, 850000.00, 2, '<p>abc</p>', 1, '2024-11-12', '2024-11-12'),
(11, 'Giày Adidas Campus 00s ‘Wonder White’ Like Auth', 'VZ5Xp8mSXqZoRqliuRv0CXmiZg42njJCAvMEjYke.jpg', 1050000.00, 850000.00, 2, '<ul style=\"list-style-position: initial; list-style-image: initial; padding: 0px; margin-bottom: 1.3em; color: rgb(70, 70, 70); font-family: Roboto, sans-serif; font-size: 16px;\"><li id=\"a9h3g_2q4bm\" type=\"\" style=\"margin-bottom: 0.2em; margin-left: 1.3em;\"><span id=\"a9h3g_2q4bm_efrjq\" class=\"\" data-text=\"true\">Trạng thái : Còn hàng, liên hệ Shop để check size tại cửa hàng</span></li><li id=\"a9h3g_1c74s\" type=\"\" style=\"margin-bottom: 0.2em; margin-left: 1.3em;\"><span id=\"a9h3g_1c74s_b96cq\" class=\"\" data-text=\"true\">Tình trạng : Hàng mới 100%</span></li><li id=\"a9h3g_8e9q0\" type=\"\" style=\"margin-bottom: 0.2em; margin-left: 1.3em;\"><span id=\"a9h3g_8e9q0_decc1\" class=\"\" data-text=\"true\">Giao hàng &amp; Thanh toán : Giao hàng trên toàn quốc và thanh toán khi nhận hàng, được đổi size trong vòng 7 ngày.</span></li><li id=\"a9h3g_1ohij\" type=\"\" style=\"margin-bottom: 0.2em; margin-left: 1.3em;\"><span id=\"a9h3g_1ohij_4g8cq\" class=\"\" data-text=\"true\">Sản phẩm được bảo hành 6 tháng lỗi do nhà sản xuất.</span></li></ul><p><span style=\"font-weight: bolder; color: rgb(70, 70, 70); font-family: Roboto, sans-serif; font-size: 16px;\"><img class=\"emoji\" role=\"img\" draggable=\"false\" src=\"https://s.w.org/images/core/emoji/13.1.0/svg/2705.svg\" alt=\"✅\" style=\"max-width: 100%; opacity: 1; transition: opacity 1s; border-width: initial !important; border-style: none !important; display: inline !important; height: 1em !important; vertical-align: -0.1em !important; box-shadow: none !important; width: 1em !important; margin: 0px 0.07em !important; background: none !important; padding: 0px !important;\">&nbsp;Tặng kèm vớ/tất cổ ngắn khử mùi</span><br style=\"color: rgb(70, 70, 70); font-family: Roboto, sans-serif; font-size: 16px;\"><span style=\"font-weight: bolder; color: rgb(70, 70, 70); font-family: Roboto, sans-serif; font-size: 16px;\"><img class=\"emoji\" role=\"img\" draggable=\"false\" src=\"https://s.w.org/images/core/emoji/13.1.0/svg/2705.svg\" alt=\"✅\" style=\"max-width: 100%; opacity: 1; transition: opacity 1s; border-width: initial !important; border-style: none !important; display: inline !important; height: 1em !important; vertical-align: -0.1em !important; box-shadow: none !important; width: 1em !important; margin: 0px 0.07em !important; background: none !important; padding: 0px !important;\">&nbsp;Đóng box carton kèm chống sốc, bảo vệ hộp giày nguyên vẹn</span></p>', 1, '2024-11-12', '2024-11-12'),
(12, 'Giày Adidas Gazelle Indoor ‘Collegiate Green Hazy Sky’ Like Auth', 'YfkVhgAPc6juajyha47DSjEPhyr886noSvWA28W8.jpg', 1200000.00, 850000.00, 2, '<ul style=\"list-style-position: initial; list-style-image: initial; padding: 0px; margin-bottom: 1.3em; color: rgb(70, 70, 70); font-family: Roboto, sans-serif; font-size: 16px;\"><li id=\"a9h3g_2q4bm\" type=\"\" style=\"margin-bottom: 0.2em; margin-left: 1.3em;\"><span id=\"a9h3g_2q4bm_efrjq\" class=\"\" data-text=\"true\">Trạng thái : Còn hàng, liên hệ Shop để check size tại cửa hàng</span></li><li id=\"a9h3g_1c74s\" type=\"\" style=\"margin-bottom: 0.2em; margin-left: 1.3em;\"><span id=\"a9h3g_1c74s_b96cq\" class=\"\" data-text=\"true\">Tình trạng : Hàng mới 100%</span></li><li id=\"a9h3g_8e9q0\" type=\"\" style=\"margin-bottom: 0.2em; margin-left: 1.3em;\"><span id=\"a9h3g_8e9q0_decc1\" class=\"\" data-text=\"true\">Giao hàng &amp; Thanh toán : Giao hàng trên toàn quốc và thanh toán khi nhận hàng, được đổi size trong vòng 7 ngày.</span></li><li id=\"a9h3g_1ohij\" type=\"\" style=\"margin-bottom: 0.2em; margin-left: 1.3em;\"><span id=\"a9h3g_1ohij_4g8cq\" class=\"\" data-text=\"true\">Sản phẩm được bảo hành 6 tháng lỗi do nhà sản xuất.</span></li></ul><p><span style=\"font-weight: bolder; color: rgb(70, 70, 70); font-family: Roboto, sans-serif; font-size: 16px;\"><img class=\"emoji\" role=\"img\" draggable=\"false\" src=\"https://s.w.org/images/core/emoji/13.1.0/svg/2705.svg\" alt=\"✅\" style=\"max-width: 100%; opacity: 1; transition: opacity 1s; border-width: initial !important; border-style: none !important; display: inline !important; height: 1em !important; vertical-align: -0.1em !important; box-shadow: none !important; width: 1em !important; margin: 0px 0.07em !important; background: none !important; padding: 0px !important;\">&nbsp;Tặng kèm vớ/tất cổ ngắn khử mùi</span><br style=\"color: rgb(70, 70, 70); font-family: Roboto, sans-serif; font-size: 16px;\"><span style=\"font-weight: bolder; color: rgb(70, 70, 70); font-family: Roboto, sans-serif; font-size: 16px;\"><img class=\"emoji\" role=\"img\" draggable=\"false\" src=\"https://s.w.org/images/core/emoji/13.1.0/svg/2705.svg\" alt=\"✅\" style=\"max-width: 100%; opacity: 1; transition: opacity 1s; border-width: initial !important; border-style: none !important; display: inline !important; height: 1em !important; vertical-align: -0.1em !important; box-shadow: none !important; width: 1em !important; margin: 0px 0.07em !important; background: none !important; padding: 0px !important;\">&nbsp;Đóng box carton kèm chống sốc, bảo vệ hộp giày nguyên vẹn</span></p>', 1, '2024-11-12', '2024-11-12'),
(13, 'Giày Adidas Gazelle Indoor ‘Bold Orange’ Like Auth', 'ZWSFNeNpDj8i9xYLDLtgZlzNu1tLDDv7G1N0yu59.jpg', 1200000.00, 850000.00, 2, '<ul style=\"list-style-position: initial; list-style-image: initial; padding: 0px; margin-bottom: 1.3em; color: rgb(70, 70, 70); font-family: Roboto, sans-serif; font-size: 16px;\"><li id=\"a9h3g_2q4bm\" type=\"\" style=\"margin-bottom: 0.2em; margin-left: 1.3em;\"><span id=\"a9h3g_2q4bm_efrjq\" class=\"\" data-text=\"true\">Trạng thái : Còn hàng, liên hệ Shop để check size tại cửa hàng</span></li><li id=\"a9h3g_1c74s\" type=\"\" style=\"margin-bottom: 0.2em; margin-left: 1.3em;\"><span id=\"a9h3g_1c74s_b96cq\" class=\"\" data-text=\"true\">Tình trạng : Hàng mới 100%</span></li><li id=\"a9h3g_8e9q0\" type=\"\" style=\"margin-bottom: 0.2em; margin-left: 1.3em;\"><span id=\"a9h3g_8e9q0_decc1\" class=\"\" data-text=\"true\">Giao hàng &amp; Thanh toán : Giao hàng trên toàn quốc và thanh toán khi nhận hàng, được đổi size trong vòng 7 ngày.</span></li><li id=\"a9h3g_1ohij\" type=\"\" style=\"margin-bottom: 0.2em; margin-left: 1.3em;\"><span id=\"a9h3g_1ohij_4g8cq\" class=\"\" data-text=\"true\">Sản phẩm được bảo hành 6 tháng lỗi do nhà sản xuất.</span></li></ul><p><span style=\"font-weight: bolder; color: rgb(70, 70, 70); font-family: Roboto, sans-serif; font-size: 16px;\"><img class=\"emoji\" role=\"img\" draggable=\"false\" src=\"https://s.w.org/images/core/emoji/13.1.0/svg/2705.svg\" alt=\"✅\" style=\"max-width: 100%; opacity: 1; transition: opacity 1s; border-width: initial !important; border-style: none !important; display: inline !important; height: 1em !important; vertical-align: -0.1em !important; box-shadow: none !important; width: 1em !important; margin: 0px 0.07em !important; background: none !important; padding: 0px !important;\">&nbsp;Tặng kèm vớ/tất cổ ngắn khử mùi</span><br style=\"color: rgb(70, 70, 70); font-family: Roboto, sans-serif; font-size: 16px;\"><span style=\"font-weight: bolder; color: rgb(70, 70, 70); font-family: Roboto, sans-serif; font-size: 16px;\"><img class=\"emoji\" role=\"img\" draggable=\"false\" src=\"https://s.w.org/images/core/emoji/13.1.0/svg/2705.svg\" alt=\"✅\" style=\"max-width: 100%; opacity: 1; transition: opacity 1s; border-width: initial !important; border-style: none !important; display: inline !important; height: 1em !important; vertical-align: -0.1em !important; box-shadow: none !important; width: 1em !important; margin: 0px 0.07em !important; background: none !important; padding: 0px !important;\">&nbsp;Đóng box carton kèm chống sốc, bảo vệ hộp giày nguyên vẹn</span></p>', 1, '2024-11-12', '2024-11-12'),
(14, 'Giày Adidas Campus 00s ‘Core Black’ Like Auth', 'LyaS9pU3PLLBuq1IRAxCgydWReFgTUmMJY2w7jBf.jpg', 1050000.00, 800000.00, 2, '<ul style=\"list-style-position: initial; list-style-image: initial; padding: 0px; margin-bottom: 1.3em; color: rgb(70, 70, 70); font-family: Roboto, sans-serif; font-size: 16px;\"><li id=\"a9h3g_2q4bm\" type=\"\" style=\"margin-bottom: 0.2em; margin-left: 1.3em;\"><span id=\"a9h3g_2q4bm_efrjq\" class=\"\" data-text=\"true\">Trạng thái : Còn hàng, liên hệ Shop để check size tại cửa hàng</span></li><li id=\"a9h3g_1c74s\" type=\"\" style=\"margin-bottom: 0.2em; margin-left: 1.3em;\"><span id=\"a9h3g_1c74s_b96cq\" class=\"\" data-text=\"true\">Tình trạng : Hàng mới 100%</span></li><li id=\"a9h3g_8e9q0\" type=\"\" style=\"margin-bottom: 0.2em; margin-left: 1.3em;\"><span id=\"a9h3g_8e9q0_decc1\" class=\"\" data-text=\"true\">Giao hàng &amp; Thanh toán : Giao hàng trên toàn quốc và thanh toán khi nhận hàng, được đổi size trong vòng 7 ngày.</span></li><li id=\"a9h3g_1ohij\" type=\"\" style=\"margin-bottom: 0.2em; margin-left: 1.3em;\"><span id=\"a9h3g_1ohij_4g8cq\" class=\"\" data-text=\"true\">Sản phẩm được bảo hành 6 tháng lỗi do nhà sản xuất.</span></li></ul><p><span style=\"font-weight: bolder; color: rgb(70, 70, 70); font-family: Roboto, sans-serif; font-size: 16px;\"><img class=\"emoji\" role=\"img\" draggable=\"false\" src=\"https://s.w.org/images/core/emoji/13.1.0/svg/2705.svg\" alt=\"✅\" style=\"max-width: 100%; opacity: 1; transition: opacity 1s; border-width: initial !important; border-style: none !important; display: inline !important; height: 1em !important; vertical-align: -0.1em !important; box-shadow: none !important; width: 1em !important; margin: 0px 0.07em !important; background: none !important; padding: 0px !important;\">&nbsp;Tặng kèm vớ/tất cổ ngắn khử mùi</span><br style=\"color: rgb(70, 70, 70); font-family: Roboto, sans-serif; font-size: 16px;\"><span style=\"font-weight: bolder; color: rgb(70, 70, 70); font-family: Roboto, sans-serif; font-size: 16px;\"><img class=\"emoji\" role=\"img\" draggable=\"false\" src=\"https://s.w.org/images/core/emoji/13.1.0/svg/2705.svg\" alt=\"✅\" style=\"max-width: 100%; opacity: 1; transition: opacity 1s; border-width: initial !important; border-style: none !important; display: inline !important; height: 1em !important; vertical-align: -0.1em !important; box-shadow: none !important; width: 1em !important; margin: 0px 0.07em !important; background: none !important; padding: 0px !important;\">&nbsp;Đóng box carton kèm chống sốc, bảo vệ hộp giày nguyên vẹn</span></p>', 1, '2024-11-12', '2024-11-12'),
(15, 'Giày Vans Vault Knu Skool VR3 x Imran Potato Like Auth', 'y4zuqbP9x3X2g9iBQZZYBSFcxn9NhqAQ5sNb8Peh.jpg', 1800000.00, 850000.00, 1, '<ul style=\"list-style-position: initial; list-style-image: initial; padding: 0px; margin-bottom: 1.3em; color: rgb(70, 70, 70); font-family: Roboto, sans-serif; font-size: 16px;\"><li id=\"a9h3g_2q4bm\" type=\"\" style=\"margin-bottom: 0.2em; margin-left: 1.3em;\"><span id=\"a9h3g_2q4bm_efrjq\" class=\"\" data-text=\"true\">Trạng thái : Còn hàng, liên hệ Shop để check size tại cửa hàng</span></li><li id=\"a9h3g_1c74s\" type=\"\" style=\"margin-bottom: 0.2em; margin-left: 1.3em;\"><span id=\"a9h3g_1c74s_b96cq\" class=\"\" data-text=\"true\">Tình trạng : Hàng mới 100%</span></li><li id=\"a9h3g_8e9q0\" type=\"\" style=\"margin-bottom: 0.2em; margin-left: 1.3em;\"><span id=\"a9h3g_8e9q0_decc1\" class=\"\" data-text=\"true\">Giao hàng &amp; Thanh toán : Giao hàng trên toàn quốc và thanh toán khi nhận hàng, được đổi size trong vòng 7 ngày.</span></li><li id=\"a9h3g_1ohij\" type=\"\" style=\"margin-bottom: 0.2em; margin-left: 1.3em;\"><span id=\"a9h3g_1ohij_4g8cq\" class=\"\" data-text=\"true\">Sản phẩm được bảo hành 6 tháng lỗi do nhà sản xuất.</span></li></ul><p><span style=\"font-weight: bolder; color: rgb(70, 70, 70); font-family: Roboto, sans-serif; font-size: 16px;\"><img class=\"emoji\" role=\"img\" draggable=\"false\" src=\"https://s.w.org/images/core/emoji/13.1.0/svg/2705.svg\" alt=\"✅\" style=\"max-width: 100%; opacity: 1; transition: opacity 1s; border-width: initial !important; border-style: none !important; display: inline !important; height: 1em !important; vertical-align: -0.1em !important; box-shadow: none !important; width: 1em !important; margin: 0px 0.07em !important; background: none !important; padding: 0px !important;\">&nbsp;Tặng kèm vớ/tất cổ ngắn khử mùi</span><br style=\"color: rgb(70, 70, 70); font-family: Roboto, sans-serif; font-size: 16px;\"><span style=\"font-weight: bolder; color: rgb(70, 70, 70); font-family: Roboto, sans-serif; font-size: 16px;\"><img class=\"emoji\" role=\"img\" draggable=\"false\" src=\"https://s.w.org/images/core/emoji/13.1.0/svg/2705.svg\" alt=\"✅\" style=\"max-width: 100%; opacity: 1; transition: opacity 1s; border-width: initial !important; border-style: none !important; display: inline !important; height: 1em !important; vertical-align: -0.1em !important; box-shadow: none !important; width: 1em !important; margin: 0px 0.07em !important; background: none !important; padding: 0px !important;\">&nbsp;Đóng box carton kèm chống sốc, bảo vệ hộp giày nguyên vẹn</span></p>', 1, '2024-11-12', '2024-11-12'),
(16, 'Giày Vans CDG Like Auth', 'wK9JmyWHh04xr5xG1iWpipNjjS1z3avCcEWwhH5A.jpg', 1700000.00, 1300000.00, 1, '<ul style=\"list-style-position: initial; list-style-image: initial; padding: 0px; margin-bottom: 1.3em; color: rgb(70, 70, 70); font-family: Roboto, sans-serif; font-size: 16px;\"><li id=\"a9h3g_2q4bm\" type=\"\" style=\"margin-bottom: 0.2em; margin-left: 1.3em;\"><span id=\"a9h3g_2q4bm_efrjq\" class=\"\" data-text=\"true\">Trạng thái : Còn hàng, liên hệ Shop để check size tại cửa hàng</span></li><li id=\"a9h3g_1c74s\" type=\"\" style=\"margin-bottom: 0.2em; margin-left: 1.3em;\"><span id=\"a9h3g_1c74s_b96cq\" class=\"\" data-text=\"true\">Tình trạng : Hàng mới 100%</span></li><li id=\"a9h3g_8e9q0\" type=\"\" style=\"margin-bottom: 0.2em; margin-left: 1.3em;\"><span id=\"a9h3g_8e9q0_decc1\" class=\"\" data-text=\"true\">Giao hàng &amp; Thanh toán : Giao hàng trên toàn quốc và thanh toán khi nhận hàng, được đổi size trong vòng 7 ngày.</span></li><li id=\"a9h3g_1ohij\" type=\"\" style=\"margin-bottom: 0.2em; margin-left: 1.3em;\"><span id=\"a9h3g_1ohij_4g8cq\" class=\"\" data-text=\"true\">Sản phẩm được bảo hành 6 tháng lỗi do nhà sản xuất.</span></li></ul><p><span style=\"font-weight: bolder; color: rgb(70, 70, 70); font-family: Roboto, sans-serif; font-size: 16px;\"><img class=\"emoji\" role=\"img\" draggable=\"false\" src=\"https://s.w.org/images/core/emoji/13.1.0/svg/2705.svg\" alt=\"✅\" style=\"max-width: 100%; opacity: 1; transition: opacity 1s; border-width: initial !important; border-style: none !important; display: inline !important; height: 1em !important; vertical-align: -0.1em !important; box-shadow: none !important; width: 1em !important; margin: 0px 0.07em !important; background: none !important; padding: 0px !important;\">&nbsp;Tặng kèm vớ/tất cổ ngắn khử mùi</span><br style=\"color: rgb(70, 70, 70); font-family: Roboto, sans-serif; font-size: 16px;\"><span style=\"font-weight: bolder; color: rgb(70, 70, 70); font-family: Roboto, sans-serif; font-size: 16px;\"><img class=\"emoji\" role=\"img\" draggable=\"false\" src=\"https://s.w.org/images/core/emoji/13.1.0/svg/2705.svg\" alt=\"✅\" style=\"max-width: 100%; opacity: 1; transition: opacity 1s; border-width: initial !important; border-style: none !important; display: inline !important; height: 1em !important; vertical-align: -0.1em !important; box-shadow: none !important; width: 1em !important; margin: 0px 0.07em !important; background: none !important; padding: 0px !important;\">&nbsp;Đóng box carton kèm chống sốc, bảo vệ hộp giày nguyên vẹn</span></p>', 1, '2024-11-12', '2024-11-12'),
(17, 'Giày Vans Fog Siêu Cấp', 'Akxzv6gQ7A2LYLMzA3lmTVymMnh8znWurSrWXv9S.jpg', 7500000.00, 600000.00, 1, '<ul style=\"list-style-position: initial; list-style-image: initial; padding: 0px; margin-bottom: 1.3em; color: rgb(70, 70, 70); font-family: Roboto, sans-serif; font-size: 16px;\"><li id=\"a9h3g_2q4bm\" type=\"\" style=\"margin-bottom: 0.2em; margin-left: 1.3em;\"><span id=\"a9h3g_2q4bm_efrjq\" class=\"\" data-text=\"true\">Trạng thái : Còn hàng, liên hệ Shop để check size tại cửa hàng</span></li><li id=\"a9h3g_1c74s\" type=\"\" style=\"margin-bottom: 0.2em; margin-left: 1.3em;\"><span id=\"a9h3g_1c74s_b96cq\" class=\"\" data-text=\"true\">Tình trạng : Hàng mới 100%</span></li><li id=\"a9h3g_8e9q0\" type=\"\" style=\"margin-bottom: 0.2em; margin-left: 1.3em;\"><span id=\"a9h3g_8e9q0_decc1\" class=\"\" data-text=\"true\">Giao hàng &amp; Thanh toán : Giao hàng trên toàn quốc và thanh toán khi nhận hàng, được đổi size trong vòng 7 ngày.</span></li><li id=\"a9h3g_1ohij\" type=\"\" style=\"margin-bottom: 0.2em; margin-left: 1.3em;\"><span id=\"a9h3g_1ohij_4g8cq\" class=\"\" data-text=\"true\">Sản phẩm được bảo hành 6 tháng lỗi do nhà sản xuất.</span></li></ul><p><span style=\"font-weight: bolder; color: rgb(70, 70, 70); font-family: Roboto, sans-serif; font-size: 16px;\"><img class=\"emoji\" role=\"img\" draggable=\"false\" src=\"https://s.w.org/images/core/emoji/13.1.0/svg/2705.svg\" alt=\"✅\" style=\"max-width: 100%; opacity: 1; transition: opacity 1s; border-width: initial !important; border-style: none !important; display: inline !important; height: 1em !important; vertical-align: -0.1em !important; box-shadow: none !important; width: 1em !important; margin: 0px 0.07em !important; background: none !important; padding: 0px !important;\">&nbsp;Tặng kèm vớ/tất cổ ngắn khử mùi</span><br style=\"color: rgb(70, 70, 70); font-family: Roboto, sans-serif; font-size: 16px;\"><span style=\"font-weight: bolder; color: rgb(70, 70, 70); font-family: Roboto, sans-serif; font-size: 16px;\"><img class=\"emoji\" role=\"img\" draggable=\"false\" src=\"https://s.w.org/images/core/emoji/13.1.0/svg/2705.svg\" alt=\"✅\" style=\"max-width: 100%; opacity: 1; transition: opacity 1s; border-width: initial !important; border-style: none !important; display: inline !important; height: 1em !important; vertical-align: -0.1em !important; box-shadow: none !important; width: 1em !important; margin: 0px 0.07em !important; background: none !important; padding: 0px !important;\">&nbsp;Đóng box carton kèm chống sốc, bảo vệ hộp giày nguyên vẹn</span></p>', 1, '2024-11-12', '2024-11-12'),
(18, 'Giày Vans Amiri Like Auth', 'Pdx7NpJSb6gHrgX4cm9UST2bpSLWcCwdflSsNokR.jpg', 3200000.00, 1500000.00, 1, '<ul style=\"list-style-position: initial; list-style-image: initial; padding: 0px; margin-bottom: 1.3em; color: rgb(70, 70, 70); font-family: Roboto, sans-serif; font-size: 16px;\"><li id=\"a9h3g_2q4bm\" type=\"\" style=\"margin-bottom: 0.2em; margin-left: 1.3em;\"><span id=\"a9h3g_2q4bm_efrjq\" class=\"\" data-text=\"true\">Trạng thái : Còn hàng, liên hệ Shop để check size tại cửa hàng</span></li><li id=\"a9h3g_1c74s\" type=\"\" style=\"margin-bottom: 0.2em; margin-left: 1.3em;\"><span id=\"a9h3g_1c74s_b96cq\" class=\"\" data-text=\"true\">Tình trạng : Hàng mới 100%</span></li><li id=\"a9h3g_8e9q0\" type=\"\" style=\"margin-bottom: 0.2em; margin-left: 1.3em;\"><span id=\"a9h3g_8e9q0_decc1\" class=\"\" data-text=\"true\">Giao hàng &amp; Thanh toán : Giao hàng trên toàn quốc và thanh toán khi nhận hàng, được đổi size trong vòng 7 ngày.</span></li><li id=\"a9h3g_1ohij\" type=\"\" style=\"margin-bottom: 0.2em; margin-left: 1.3em;\"><span id=\"a9h3g_1ohij_4g8cq\" class=\"\" data-text=\"true\">Sản phẩm được bảo hành 6 tháng lỗi do nhà sản xuất.</span></li></ul><p><span style=\"font-weight: bolder; color: rgb(70, 70, 70); font-family: Roboto, sans-serif; font-size: 16px;\"><img class=\"emoji\" role=\"img\" draggable=\"false\" src=\"https://s.w.org/images/core/emoji/13.1.0/svg/2705.svg\" alt=\"✅\" style=\"max-width: 100%; opacity: 1; transition: opacity 1s; border-width: initial !important; border-style: none !important; display: inline !important; height: 1em !important; vertical-align: -0.1em !important; box-shadow: none !important; width: 1em !important; margin: 0px 0.07em !important; background: none !important; padding: 0px !important;\">&nbsp;Tặng kèm vớ/tất cổ ngắn khử mùi</span><br style=\"color: rgb(70, 70, 70); font-family: Roboto, sans-serif; font-size: 16px;\"><span style=\"font-weight: bolder; color: rgb(70, 70, 70); font-family: Roboto, sans-serif; font-size: 16px;\"><img class=\"emoji\" role=\"img\" draggable=\"false\" src=\"https://s.w.org/images/core/emoji/13.1.0/svg/2705.svg\" alt=\"✅\" style=\"max-width: 100%; opacity: 1; transition: opacity 1s; border-width: initial !important; border-style: none !important; display: inline !important; height: 1em !important; vertical-align: -0.1em !important; box-shadow: none !important; width: 1em !important; margin: 0px 0.07em !important; background: none !important; padding: 0px !important;\">&nbsp;Đóng box carton kèm chống sốc, bảo vệ hộp giày nguyên vẹn</span></p>', 1, '2024-11-12', '2024-11-12'),
(19, 'Giày Vans Dior Blue Like Auth', 'iwoWufe2CVmLZhsXzjmguxm1ERTYBdGBfI4OfZWH.jpg', 3200000.00, 1200000.00, 1, '<ul style=\"list-style-position: initial; list-style-image: initial; padding: 0px; margin-bottom: 1.3em; color: rgb(70, 70, 70); font-family: Roboto, sans-serif; font-size: 16px;\"><li id=\"a9h3g_2q4bm\" type=\"\" style=\"margin-bottom: 0.2em; margin-left: 1.3em;\"><span id=\"a9h3g_2q4bm_efrjq\" class=\"\" data-text=\"true\">Trạng thái : Còn hàng, liên hệ Shop để check size tại cửa hàng</span></li><li id=\"a9h3g_1c74s\" type=\"\" style=\"margin-bottom: 0.2em; margin-left: 1.3em;\"><span id=\"a9h3g_1c74s_b96cq\" class=\"\" data-text=\"true\">Tình trạng : Hàng mới 100%</span></li><li id=\"a9h3g_8e9q0\" type=\"\" style=\"margin-bottom: 0.2em; margin-left: 1.3em;\"><span id=\"a9h3g_8e9q0_decc1\" class=\"\" data-text=\"true\">Giao hàng &amp; Thanh toán : Giao hàng trên toàn quốc và thanh toán khi nhận hàng, được đổi size trong vòng 7 ngày.</span></li><li id=\"a9h3g_1ohij\" type=\"\" style=\"margin-bottom: 0.2em; margin-left: 1.3em;\"><span id=\"a9h3g_1ohij_4g8cq\" class=\"\" data-text=\"true\">Sản phẩm được bảo hành 6 tháng lỗi do nhà sản xuất.</span></li></ul><p><span style=\"font-weight: bolder; color: rgb(70, 70, 70); font-family: Roboto, sans-serif; font-size: 16px;\"><img class=\"emoji\" role=\"img\" draggable=\"false\" src=\"https://s.w.org/images/core/emoji/13.1.0/svg/2705.svg\" alt=\"✅\" style=\"max-width: 100%; opacity: 1; transition: opacity 1s; border-width: initial !important; border-style: none !important; display: inline !important; height: 1em !important; vertical-align: -0.1em !important; box-shadow: none !important; width: 1em !important; margin: 0px 0.07em !important; background: none !important; padding: 0px !important;\">&nbsp;Tặng kèm vớ/tất cổ ngắn khử mùi</span><br style=\"color: rgb(70, 70, 70); font-family: Roboto, sans-serif; font-size: 16px;\"><span style=\"font-weight: bolder; color: rgb(70, 70, 70); font-family: Roboto, sans-serif; font-size: 16px;\"><img class=\"emoji\" role=\"img\" draggable=\"false\" src=\"https://s.w.org/images/core/emoji/13.1.0/svg/2705.svg\" alt=\"✅\" style=\"max-width: 100%; opacity: 1; transition: opacity 1s; border-width: initial !important; border-style: none !important; display: inline !important; height: 1em !important; vertical-align: -0.1em !important; box-shadow: none !important; width: 1em !important; margin: 0px 0.07em !important; background: none !important; padding: 0px !important;\">&nbsp;Đóng box carton kèm chống sốc, bảo vệ hộp giày nguyên vẹn</span></p>', 1, '2024-11-12', '2024-11-12');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` int NOT NULL,
  `image` varchar(100) NOT NULL,
  `product_id` int NOT NULL,
  `status` tinyint(1) DEFAULT '0',
  `updated_at` date DEFAULT NULL,
  `created_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `image`, `product_id`, `status`, `updated_at`, `created_at`) VALUES
(15, 'ybTiCDYfBOoFbnJJRlpGiZ1aZ7HyQOQrNmMd36dL.jpg', 9, 0, '2024-11-12', '2024-11-12'),
(16, 'ZRiJjQixcRVXhhTyrFfgpHAEmonjFBYSfcm5bCCq.jpg', 9, 0, '2024-11-12', '2024-11-12'),
(17, 'hFVraaFolIRMNlRLNKRMo0xxUaqYOwOkOmOQ1bYG.jpg', 9, 0, '2024-11-12', '2024-11-12'),
(18, 'RqLqWlURYVFyy30wpbaILXDtSno2vkFQ4SNtQ8VI.jpg', 8, 0, '2024-11-12', '2024-11-12'),
(19, 'kdYhHzOTAwv1YVA6Otpq2n2RWj6rPWPdCVTzmYAw.jpg', 8, 0, '2024-11-12', '2024-11-12'),
(20, '4NivbbnfWF1U56V4H49CSJK01FyIY6UcUwYWdcyW.jpg', 8, 0, '2024-11-12', '2024-11-12'),
(21, 'OIKO9Q0MUMfd3BVU1fwEGEisV2BNTKI7gp9yZMeV.jpg', 7, 0, '2024-11-12', '2024-11-12'),
(22, 'wPh9j4QhYuHgjYGR5pD4Rq9LQFF2pNaRciudBvdj.jpg', 7, 0, '2024-11-12', '2024-11-12'),
(23, '8s4irnJLHVAhkLABn8KKKffpmvHgQgNYJdEQnMNS.jpg', 7, 0, '2024-11-12', '2024-11-12'),
(24, 'y2cpicnJtKnRvP4E00ySGku70DYarqY7WoS5gGg1.jpg', 7, 0, '2024-11-12', '2024-11-12'),
(25, 'bKBkhaeXPFpm4K5DiXuDFtqCl8ELwTWCI5GD6rmm.jpg', 7, 0, '2024-11-12', '2024-11-12'),
(26, 'KSNwIvQ8YZAyCLaKvCW4ThIE86lNh5ZchWGqZQ90.jpg', 4, 0, '2024-11-12', '2024-11-12'),
(27, 'p4mJ5D3ukFTGYbYwSJsuL4ECmMJgFtSJvIH9mUrW.jpg', 4, 0, '2024-11-12', '2024-11-12'),
(28, '6QVvqXszLDSnJT6xtUNaHKQgDc8M65Y4dAZPlEqK.jpg', 3, 0, '2024-11-12', '2024-11-12'),
(29, 'FQsdVK5zyS75FgMpqQhQxt1wekST0xp4GcYsYdb6.jpg', 3, 0, '2024-11-12', '2024-11-12'),
(30, 'oLlL90tmRIOcXQmHUQYYa8R6RBnCQ3nezyzDuIrm.jpg', 3, 0, '2024-11-12', '2024-11-12'),
(32, 'Gemeg2xKExjUxgKzkOQxK7zp5K7V6mOVaDQzAod1.jpg', 10, 0, '2024-11-12', '2024-11-12'),
(33, 'TcOIZx0d8wIi9XDgBjxG2OYbuxnojlGKguoT8yYU.jpg', 10, 0, '2024-11-12', '2024-11-12'),
(34, 'WLEZHcQgSErVyOR0DeAQqCRYkSf9BSDXAV1XETvy.jpg', 10, 0, '2024-11-12', '2024-11-12'),
(35, 'xkaSyA2jJKYAX5ciJGboHMnHJBqkY5jp6aMEiHYh.jpg', 11, 0, '2024-11-12', '2024-11-12'),
(36, 'YxY5yZIZGTKW2I5GJfyu7i8AuGWO6FyWE84JRgJV.jpg', 11, 0, '2024-11-12', '2024-11-12'),
(37, 'ZdVYfFg5GJlUVfsiaW0D93D3x7ADvK2uVe2c8Jdw.jpg', 12, 0, '2024-11-12', '2024-11-12'),
(38, 'sLBn10jIcV3ceZo7b8L6dTtTnbbQFuFCBhhaHMxE.jpg', 12, 0, '2024-11-12', '2024-11-12'),
(39, 'TRgbC85Uy46Zk9ITfcwiPOGZdM3ABXI0zYOsZIMJ.jpg', 12, 0, '2024-11-12', '2024-11-12'),
(40, 'xn5ghZ2RLmviMtF60WgDByIzgvsY7RcWYJXrCRJh.jpg', 13, 0, '2024-11-12', '2024-11-12'),
(41, '8pCdgvSM0J5RsQQPJB88H5ZWA2IGiweIt75SXnhy.jpg', 13, 0, '2024-11-12', '2024-11-12'),
(42, 'ETL8f9slqMfzr770c97bH3fdWtVevP6ALsat6HBt.jpg', 13, 0, '2024-11-12', '2024-11-12'),
(43, '8czTCNmrirnyiJzHaBakLIL46ogipaPaeRqPa1BL.jpg', 14, 0, '2024-11-12', '2024-11-12'),
(44, '9lwz31SmrKcKnVo30oaypNMuiZlSYEgoKut7VBFt.jpg', 14, 0, '2024-11-12', '2024-11-12'),
(45, 'g78SnQPquH0xS4HCeVZglRB8m12gDlWk58anm0F9.jpg', 14, 0, '2024-11-12', '2024-11-12'),
(46, 'RgBDrAsBTRmTOMs5feZAodDwNDr3wddLmtkZ19Aa.jpg', 15, 0, '2024-11-12', '2024-11-12'),
(47, 'fdGtvIfvDpKrRV9poau2B12epG7zVYkGugBNV6Gw.jpg', 15, 0, '2024-11-12', '2024-11-12'),
(48, '6V8VT1W8grZUSAc6bZ05MWprrXzd5hytEUYKr7JW.jpg', 15, 0, '2024-11-12', '2024-11-12'),
(49, 'VjBoqMaRrRusZzTgpxFJDH79MULAxE77cDBJkBOJ.jpg', 16, 0, '2024-11-12', '2024-11-12'),
(50, 'rLoedU1z7q3OdpO7ZqfN1BGt91f9Cl17mq5XGxv7.jpg', 16, 0, '2024-11-12', '2024-11-12'),
(51, 'bVsq5dJnj8KWPQY8kwLqlxyA9kv6YBWRAHDHYspw.jpg', 16, 0, '2024-11-12', '2024-11-12'),
(52, '75AZei3v7Z0ARgkx9GMSVx7du1OZfoFBjz2M0xgv.jpg', 17, 0, '2024-11-12', '2024-11-12'),
(53, 'GQfvMrePAJrWe1gIiEbP4LR2r0zeOWT511w25uuQ.jpg', 17, 0, '2024-11-12', '2024-11-12'),
(54, 'wBuaYhsNkjN0gYm8Ecqm9HHpYYXQb0gpHTTAOBEG.jpg', 17, 0, '2024-11-12', '2024-11-12'),
(55, 'a8nNWgzt890E4hJPMfJgLdHRnhuuxuOm3apsv5SA.jpg', 18, 0, '2024-11-12', '2024-11-12'),
(56, '1GR1K3olYAIoy0IWSEcsFZPPBgIeIKJmEnhbTX8F.jpg', 18, 0, '2024-11-12', '2024-11-12'),
(57, 'njVDMNWj03DX0rz5CR83CxOkDVZqUP9EUFbN2aPC.jpg', 18, 0, '2024-11-12', '2024-11-12'),
(58, 'fAlOqC6TV3X9cubJMsGnWGgC7BqGwrwWb2zdawJx.jpg', 19, 0, '2024-11-12', '2024-11-12'),
(59, 'PyoclkamW0NW1KOwj8oRAkpuIBaKmerU3OJVIZfG.jpg', 19, 0, '2024-11-12', '2024-11-12');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `updated_at` date NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `updated_at`, `created_at`) VALUES
(2, 'admin', 'admin@gmail.com', '$2y$12$wEiCS3z2rnMNtCWaqDQrguoogDY8Q0xAO/fTweVzgTB0hnJ8t0YG6', '2024-10-04', '2024-10-04'),
(7, 'javascrift', 'admin3@gmail.com', '$2y$12$KQm1oOxIjbgduVC6hBe/XeSQbOO1Z3rvIG/19N.zbyT1ixPwzy9Ry', '2024-10-05', '2024-10-05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`customer_id`,`product_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `phone` (`phone`);

--
-- Indexes for table `customer_reset_tokens`
--
ALTER TABLE `customer_reset_tokens`
  ADD PRIMARY KEY (`email`),
  ADD UNIQUE KEY `token` (`token`);

--
-- Indexes for table `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `product_id` (`product_id`);

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
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`order_id`,`product_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `favorites`
--
ALTER TABLE `favorites`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`),
  ADD CONSTRAINT `carts_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`),
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `favorites`
--
ALTER TABLE `favorites`
  ADD CONSTRAINT `favorites_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`),
  ADD CONSTRAINT `favorites_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`);

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `order_details_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
