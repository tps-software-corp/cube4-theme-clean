-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Jul 15, 2019 at 08:41 AM
-- Server version: 5.7.26
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eccube4`
--

-- --------------------------------------------------------

--
-- Table structure for table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dtb_authority_role`
--

CREATE TABLE `dtb_authority_role` (
  `id` int(10) UNSIGNED NOT NULL,
  `authority_id` smallint(5) UNSIGNED DEFAULT NULL,
  `creator_id` int(10) UNSIGNED DEFAULT NULL,
  `deny_url` varchar(4000) NOT NULL,
  `create_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `update_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `discriminator_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dtb_base_info`
--

CREATE TABLE `dtb_base_info` (
  `id` int(10) UNSIGNED NOT NULL,
  `country_id` smallint(5) UNSIGNED DEFAULT NULL,
  `pref_id` smallint(5) UNSIGNED DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `company_kana` varchar(255) DEFAULT NULL,
  `postal_code` varchar(8) DEFAULT NULL,
  `addr01` varchar(255) DEFAULT NULL,
  `addr02` varchar(255) DEFAULT NULL,
  `phone_number` varchar(14) DEFAULT NULL,
  `business_hour` varchar(255) DEFAULT NULL,
  `email01` varchar(255) DEFAULT NULL,
  `email02` varchar(255) DEFAULT NULL,
  `email03` varchar(255) DEFAULT NULL,
  `email04` varchar(255) DEFAULT NULL,
  `shop_name` varchar(255) DEFAULT NULL,
  `shop_kana` varchar(255) DEFAULT NULL,
  `shop_name_eng` varchar(255) DEFAULT NULL,
  `update_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `good_traded` varchar(4000) DEFAULT NULL,
  `message` varchar(4000) DEFAULT NULL,
  `delivery_free_amount` decimal(12,2) UNSIGNED DEFAULT NULL,
  `delivery_free_quantity` int(10) UNSIGNED DEFAULT NULL,
  `option_mypage_order_status_display` tinyint(1) NOT NULL DEFAULT '1',
  `option_nostock_hidden` tinyint(1) NOT NULL DEFAULT '0',
  `option_favorite_product` tinyint(1) NOT NULL DEFAULT '1',
  `option_product_delivery_fee` tinyint(1) NOT NULL DEFAULT '0',
  `option_product_tax_rule` tinyint(1) NOT NULL DEFAULT '0',
  `option_customer_activate` tinyint(1) NOT NULL DEFAULT '1',
  `option_remember_me` tinyint(1) NOT NULL DEFAULT '1',
  `authentication_key` varchar(255) DEFAULT NULL,
  `php_path` varchar(255) DEFAULT NULL,
  `option_point` tinyint(1) NOT NULL DEFAULT '1',
  `basic_point_rate` decimal(10,0) UNSIGNED DEFAULT '1',
  `point_conversion_rate` decimal(10,0) UNSIGNED DEFAULT '1',
  `discriminator_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dtb_base_info`
--

INSERT INTO `dtb_base_info` (`id`, `country_id`, `pref_id`, `company_name`, `company_kana`, `postal_code`, `addr01`, `addr02`, `phone_number`, `business_hour`, `email01`, `email02`, `email03`, `email04`, `shop_name`, `shop_kana`, `shop_name_eng`, `update_date`, `good_traded`, `message`, `delivery_free_amount`, `delivery_free_quantity`, `option_mypage_order_status_display`, `option_nostock_hidden`, `option_favorite_product`, `option_product_delivery_fee`, `option_product_tax_rule`, `option_customer_activate`, `option_remember_me`, `authentication_key`, `php_path`, `option_point`, `basic_point_rate`, `point_conversion_rate`, `discriminator_type`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'tabe@localhosstt', 'tabe@localhosstt', 'tabe@localhosstt', 'tabe@localhosstt', 'Tabe 01', NULL, NULL, '2019-05-06 06:41:02', NULL, NULL, NULL, NULL, 1, 0, 1, 0, 0, 1, 1, NULL, NULL, 1, '1', '1', 'baseinfo');

-- --------------------------------------------------------

--
-- Table structure for table `dtb_block`
--

CREATE TABLE `dtb_block` (
  `id` int(10) UNSIGNED NOT NULL,
  `device_type_id` smallint(5) UNSIGNED DEFAULT NULL,
  `block_name` varchar(255) DEFAULT NULL,
  `file_name` varchar(255) NOT NULL,
  `use_controller` tinyint(1) NOT NULL DEFAULT '0',
  `deletable` tinyint(1) NOT NULL DEFAULT '1',
  `create_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `update_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `discriminator_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dtb_block`
--

INSERT INTO `dtb_block` (`id`, `device_type_id`, `block_name`, `file_name`, `use_controller`, `deletable`, `create_date`, `update_date`, `discriminator_type`) VALUES
(1, 10, 'Giỏ hàng', 'cart', 0, 0, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'block'),
(2, 10, 'Thể loại', 'category', 0, 0, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'block'),
(3, 10, 'Điều hướng danh mục (PC)', 'category_nav_pc', 0, 0, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'block'),
(4, 10, 'Điều hướng danh mục (SP)', 'category_nav_sp', 0, 0, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'block'),
(5, 10, 'Sản phẩm mới', 'eyecatch', 0, 0, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'block'),
(6, 10, 'Chân trang', 'footer', 0, 0, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'block'),
(7, 10, 'Đầu trang (Tìm kiếm sản phẩm, Menu đăng nhập, Giỏ hàng)', 'header', 0, 0, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'block'),
(8, 10, 'Điều hướng đăng nhập (Common)', 'login', 0, 0, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'block'),
(9, 10, 'Điều hướng đăng nhập (SP)', 'login_sp', 0, 0, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'block'),
(10, 10, 'Logos', 'logo', 0, 0, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'block'),
(11, 10, 'Sản phẩm mới', 'new_item', 0, 0, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'block'),
(12, 10, 'Tin tức', 'news', 0, 0, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'block'),
(13, 10, 'Tìm kiếm sản phẩm', 'search_product', 1, 0, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'block'),
(14, 10, 'Tính năng', 'topic', 0, 0, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'block');

-- --------------------------------------------------------

--
-- Table structure for table `dtb_block_position`
--

CREATE TABLE `dtb_block_position` (
  `section` int(10) UNSIGNED NOT NULL,
  `block_id` int(10) UNSIGNED NOT NULL,
  `layout_id` int(10) UNSIGNED NOT NULL,
  `block_row` int(10) UNSIGNED DEFAULT NULL,
  `discriminator_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dtb_block_position`
--

INSERT INTO `dtb_block_position` (`section`, `block_id`, `layout_id`, `block_row`, `discriminator_type`) VALUES
(3, 3, 1, 1, 'blockposition'),
(3, 3, 2, 1, 'blockposition'),
(3, 7, 1, 0, 'blockposition'),
(3, 7, 2, 0, 'blockposition'),
(7, 2, 1, 3, 'blockposition'),
(7, 5, 1, 0, 'blockposition'),
(7, 11, 1, 2, 'blockposition'),
(7, 12, 1, 4, 'blockposition'),
(7, 14, 1, 1, 'blockposition'),
(10, 6, 1, 0, 'blockposition'),
(10, 6, 2, 0, 'blockposition'),
(11, 4, 1, 1, 'blockposition'),
(11, 4, 2, 1, 'blockposition'),
(11, 9, 1, 2, 'blockposition'),
(11, 9, 2, 2, 'blockposition'),
(11, 13, 1, 0, 'blockposition'),
(11, 13, 2, 0, 'blockposition');

-- --------------------------------------------------------

--
-- Table structure for table `dtb_cart`
--

CREATE TABLE `dtb_cart` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED DEFAULT NULL,
  `cart_key` varchar(255) DEFAULT NULL,
  `pre_order_id` varchar(255) DEFAULT NULL,
  `total_price` decimal(12,2) UNSIGNED NOT NULL DEFAULT '0.00',
  `delivery_fee_total` decimal(12,2) UNSIGNED NOT NULL DEFAULT '0.00',
  `sort_no` smallint(5) UNSIGNED DEFAULT NULL,
  `create_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `update_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `add_point` decimal(12,0) UNSIGNED NOT NULL DEFAULT '0',
  `use_point` decimal(12,0) UNSIGNED NOT NULL DEFAULT '0',
  `discriminator_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dtb_cart`
--

INSERT INTO `dtb_cart` (`id`, `customer_id`, `cart_key`, `pre_order_id`, `total_price`, `delivery_fee_total`, `sort_no`, `create_date`, `update_date`, `add_point`, `use_point`, `discriminator_type`) VALUES
(1, NULL, 'CoNKl9doeOrYtiu19C6BrDvv9KVrIPos_1', NULL, '30800.00', '0.00', NULL, '2019-05-07 02:47:12', '2019-05-07 02:47:12', '0', '0', 'cart'),
(4, NULL, 'LwRe4x9rPBNKs55p4CBtzIaCf2GyEKaN_1', NULL, '122650.00', '0.00', NULL, '2019-05-07 04:05:59', '2019-05-07 04:12:02', '0', '0', 'cart'),
(5, NULL, 'UdaDDIk6p1SaRGaWE0L2DS4izHAon5wU_1', NULL, '55000.00', '0.00', NULL, '2019-05-07 04:56:50', '2019-05-07 04:56:50', '0', '0', 'cart');

-- --------------------------------------------------------

--
-- Table structure for table `dtb_cart_item`
--

CREATE TABLE `dtb_cart_item` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_class_id` int(10) UNSIGNED DEFAULT NULL,
  `cart_id` int(10) UNSIGNED DEFAULT NULL,
  `price` decimal(12,2) NOT NULL DEFAULT '0.00',
  `quantity` decimal(10,0) NOT NULL DEFAULT '0',
  `point_rate` decimal(10,0) UNSIGNED DEFAULT NULL,
  `discriminator_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dtb_cart_item`
--

INSERT INTO `dtb_cart_item` (`id`, `product_class_id`, `cart_id`, `price`, `quantity`, `point_rate`, `discriminator_type`) VALUES
(1, 10, 1, '30800.00', '1', NULL, 'cartitem'),
(5, 5, 4, '53900.00', '1', NULL, 'cartitem'),
(6, 6, 4, '37950.00', '1', NULL, 'cartitem'),
(7, 10, 4, '30800.00', '1', NULL, 'cartitem'),
(8, 9, 5, '55000.00', '1', NULL, 'cartitem');

-- --------------------------------------------------------

--
-- Table structure for table `dtb_category`
--

CREATE TABLE `dtb_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_category_id` int(10) UNSIGNED DEFAULT NULL,
  `creator_id` int(10) UNSIGNED DEFAULT NULL,
  `category_name` varchar(255) NOT NULL,
  `hierarchy` int(10) UNSIGNED NOT NULL,
  `sort_no` int(11) NOT NULL,
  `create_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `update_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `discriminator_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dtb_category`
--

INSERT INTO `dtb_category` (`id`, `parent_category_id`, `creator_id`, `category_name`, `hierarchy`, `sort_no`, `create_date`, `update_date`, `discriminator_type`) VALUES
(1, NULL, NULL, 'Gelato', 1, 5, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'category'),
(2, NULL, NULL, 'Sản phẩm mới', 1, 6, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'category'),
(3, 1, NULL, 'Món tráng miệng ngon', 2, 3, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'category'),
(4, 3, NULL, 'CUBE', 3, 2, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'category'),
(5, NULL, NULL, 'Bánh mì kẹp kem', 1, 1, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'category'),
(6, 5, NULL, 'Trái cây', 2, 4, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'category');

-- --------------------------------------------------------

--
-- Table structure for table `dtb_class_category`
--

CREATE TABLE `dtb_class_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `class_name_id` int(10) UNSIGNED DEFAULT NULL,
  `creator_id` int(10) UNSIGNED DEFAULT NULL,
  `backend_name` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `sort_no` int(10) UNSIGNED NOT NULL,
  `visible` tinyint(1) NOT NULL DEFAULT '1',
  `create_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `update_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `discriminator_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dtb_class_category`
--

INSERT INTO `dtb_class_category` (`id`, `class_name_id`, `creator_id`, `backend_name`, `name`, `sort_no`, `visible`, `create_date`, `update_date`, `discriminator_type`) VALUES
(1, 1, NULL, 'Chocolate', 'Sô cô la', 3, 1, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'classcategory'),
(2, 1, NULL, 'Green Tea', 'Trà xanh', 2, 1, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'classcategory'),
(3, 1, NULL, 'Vanilla', 'Vị vani', 1, 1, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'classcategory'),
(4, 2, NULL, '16mm × 16mm', '16mm × 16mm', 3, 1, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'classcategory'),
(5, 2, NULL, '32mm × 32mm', '32mm × 32mm', 2, 1, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'classcategory'),
(6, 2, NULL, '64cm × 64cm', '64cm × 64cm', 1, 1, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'classcategory');

-- --------------------------------------------------------

--
-- Table structure for table `dtb_class_name`
--

CREATE TABLE `dtb_class_name` (
  `id` int(10) UNSIGNED NOT NULL,
  `creator_id` int(10) UNSIGNED DEFAULT NULL,
  `backend_name` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `sort_no` int(10) UNSIGNED NOT NULL,
  `create_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `update_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `discriminator_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dtb_class_name`
--

INSERT INTO `dtb_class_name` (`id`, `creator_id`, `backend_name`, `name`, `sort_no`, `create_date`, `update_date`, `discriminator_type`) VALUES
(1, NULL, 'Flavors for CUBE', 'Hương vị', 1, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'classname'),
(2, NULL, 'Sizes for CUBE', 'Kích thước', 2, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'classname');

-- --------------------------------------------------------

--
-- Table structure for table `dtb_csv`
--

CREATE TABLE `dtb_csv` (
  `id` int(10) UNSIGNED NOT NULL,
  `csv_type_id` smallint(5) UNSIGNED DEFAULT NULL,
  `creator_id` int(10) UNSIGNED DEFAULT NULL,
  `entity_name` varchar(255) NOT NULL,
  `field_name` varchar(255) NOT NULL,
  `reference_field_name` varchar(255) DEFAULT NULL,
  `disp_name` varchar(255) NOT NULL,
  `sort_no` smallint(5) UNSIGNED NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `create_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `update_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `discriminator_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dtb_csv`
--

INSERT INTO `dtb_csv` (`id`, `csv_type_id`, `creator_id`, `entity_name`, `field_name`, `reference_field_name`, `disp_name`, `sort_no`, `enabled`, `create_date`, `update_date`, `discriminator_type`) VALUES
(1, 1, NULL, 'Eccube\\\\Entity\\\\Product', 'id', NULL, 'Định danh sản phẩm', 1, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(2, 1, NULL, 'Eccube\\\\Entity\\\\Product', 'Status', 'id', 'Mã trạng thái', 2, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(3, 1, NULL, 'Eccube\\\\Entity\\\\Product', 'Status', 'name', 'Trạng thái', 3, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(4, 1, NULL, 'Eccube\\\\Entity\\\\Product', 'name', NULL, 'Tên sản phẩm', 4, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(5, 1, NULL, 'Eccube\\\\Entity\\\\Product', 'note', NULL, 'Ghi chú', 5, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(6, 1, NULL, 'Eccube\\\\Entity\\\\Product', 'description_list', NULL, 'Mô tả sản phẩm', 6, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(7, 1, NULL, 'Eccube\\\\Entity\\\\Product', 'description_detail', NULL, 'Mô tả sản phẩm (chi tiết)', 7, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(8, 1, NULL, 'Eccube\\\\Entity\\\\Product', 'search_word', NULL, 'Từ tìm kiếm', 8, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(9, 1, NULL, 'Eccube\\\\Entity\\\\Product', 'free_area', NULL, 'Khác', 9, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(10, 1, NULL, 'Eccube\\\\Entity\\\\ProductClass', 'id', NULL, 'Mã phân loại sản phẩm', 10, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(11, 1, NULL, 'Eccube\\\\Entity\\\\ProductClass', 'SaleType', 'id', 'Mã kiểu bán', 11, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(12, 1, NULL, 'Eccube\\\\Entity\\\\ProductClass', 'SaleType', 'name', 'Tên kiểu bán', 12, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(13, 1, NULL, 'Eccube\\\\Entity\\\\ProductClass', 'ClassCategory1', 'id', 'Mã loại lớp 1', 13, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(14, 1, NULL, 'Eccube\\\\Entity\\\\ProductClass', 'ClassCategory1', 'name', 'Loại lớp 1', 14, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(15, 1, NULL, 'Eccube\\\\Entity\\\\ProductClass', 'ClassCategory2', 'id', 'Mã loại lớp 2', 15, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(16, 1, NULL, 'Eccube\\\\Entity\\\\ProductClass', 'ClassCategory2', 'name', 'Loại lớp 2', 16, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(17, 1, NULL, 'Eccube\\\\Entity\\\\ProductClass', 'DeliveryDuration', 'id', 'Mã thời gian vận chuyển', 17, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(18, 1, NULL, 'Eccube\\\\Entity\\\\ProductClass', 'DeliveryDuration', 'name', 'Thời gian vận chuyển', 18, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(19, 1, NULL, 'Eccube\\\\Entity\\\\ProductClass', 'code', NULL, 'Mã sản phẩm', 19, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(20, 1, NULL, 'Eccube\\\\Entity\\\\ProductClass', 'stock', NULL, 'Số lượng', 20, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(21, 1, NULL, 'Eccube\\\\Entity\\\\ProductClass', 'stock_unlimited', NULL, 'Không giới hạn số lượng', 21, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(22, 1, NULL, 'Eccube\\\\Entity\\\\ProductClass', 'sale_limit', NULL, 'Số lượng bán tối đa cho một lần', 22, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(23, 1, NULL, 'Eccube\\\\Entity\\\\ProductClass', 'price01', NULL, 'Giá gốc', 23, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(24, 1, NULL, 'Eccube\\\\Entity\\\\ProductClass', 'price02', NULL, 'Giá bán', 24, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(25, 1, NULL, 'Eccube\\\\Entity\\\\ProductClass', 'delivery_fee', NULL, 'Phí giao hàng', 25, 0, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(26, 1, NULL, 'Eccube\\\\Entity\\\\Product', 'ProductImage', 'file_name', 'Ảnh sản phẩm', 26, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(27, 1, NULL, 'Eccube\\\\Entity\\\\Product', 'ProductCategories', 'category_id', 'Mã thể loại', 27, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(28, 1, NULL, 'Eccube\\\\Entity\\\\Product', 'ProductCategories', 'Category', 'Tên thể loại', 28, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(29, 1, NULL, 'Eccube\\\\Entity\\\\Product', 'ProductTag', 'tag_id', 'Mã thẻ', 29, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(30, 1, NULL, 'Eccube\\\\Entity\\\\Product', 'ProductTag', 'Tag', 'Tên thẻ', 30, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(31, 2, NULL, 'Eccube\\\\Entity\\\\Customer', 'id', NULL, 'Mã khách hàng', 1, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(32, 2, NULL, 'Eccube\\\\Entity\\\\Customer', 'name01', NULL, 'Tên', 2, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(33, 2, NULL, 'Eccube\\\\Entity\\\\Customer', 'name02', NULL, 'Họ', 3, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(36, 2, NULL, 'Eccube\\\\Entity\\\\Customer', 'company_name', NULL, 'Tên công ty', 6, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(37, 2, NULL, 'Eccube\\\\Entity\\\\Customer', 'postal_code', NULL, 'Mã bưu điện', 7, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(38, 2, NULL, 'Eccube\\\\Entity\\\\Customer', 'Pref', 'id', 'Mã tỉnh', 9, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(39, 2, NULL, 'Eccube\\\\Entity\\\\Customer', 'Pref', 'name', 'Tên tỉnh', 10, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(40, 2, NULL, 'Eccube\\\\Entity\\\\Customer', 'addr01', NULL, 'Quận huyện và thành phố', 11, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(41, 2, NULL, 'Eccube\\\\Entity\\\\Customer', 'addr02', NULL, 'Số nhà và đường', 12, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(42, 2, NULL, 'Eccube\\\\Entity\\\\Customer', 'email', NULL, 'Email', 13, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(43, 2, NULL, 'Eccube\\\\Entity\\\\Customer', 'phone_number', NULL, 'Số điện thoại', 14, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(44, 2, NULL, 'Eccube\\\\Entity\\\\Customer', 'Sex', 'id', 'Mã giới tính', 20, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(45, 2, NULL, 'Eccube\\\\Entity\\\\Customer', 'Sex', 'name', 'Tên giới tính', 21, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(46, 2, NULL, 'Eccube\\\\Entity\\\\Customer', 'Job', 'id', 'Mã việc làm', 22, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(47, 2, NULL, 'Eccube\\\\Entity\\\\Customer', 'Job', 'name', 'Việc làm', 23, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(48, 2, NULL, 'Eccube\\\\Entity\\\\Customer', 'birth', NULL, 'Sinh nhật', 24, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(49, 2, NULL, 'Eccube\\\\Entity\\\\Customer', 'first_buy_date', NULL, 'Ngày mua hàng đầu tiên', 25, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(50, 2, NULL, 'Eccube\\\\Entity\\\\Customer', 'last_buy_date', NULL, 'Ngày mua hàng sau cùng', 26, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(51, 2, NULL, 'Eccube\\\\Entity\\\\Customer', 'buy_times', NULL, 'Số lần mua hàng', 27, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(52, 2, NULL, 'Eccube\\\\Entity\\\\Customer', 'note', NULL, 'Ghi chú', 28, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(53, 2, NULL, 'Eccube\\\\Entity\\\\Customer', 'Status', 'id', 'Mã trạng thái', 29, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(54, 2, NULL, 'Eccube\\\\Entity\\\\Customer', 'Status', 'name', 'Tên trạng thái', 30, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(55, 2, NULL, 'Eccube\\\\Entity\\\\Customer', 'create_date', NULL, 'Ngày đăng ký', 31, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(56, 2, NULL, 'Eccube\\\\Entity\\\\Customer', 'update_date', NULL, 'Ngày cặp nhật', 32, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(57, 3, NULL, 'Eccube\\\\Entity\\\\Order', 'id', NULL, 'Mã đơn hàng', 1, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(58, 3, NULL, 'Eccube\\\\Entity\\\\Order', 'order_no', NULL, 'Số đơn hàng', 2, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(59, 3, NULL, 'Eccube\\\\Entity\\\\Order', 'Customer', 'id', 'Mã khách hàng', 3, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(60, 3, NULL, 'Eccube\\\\Entity\\\\Order', 'name01', NULL, 'Tên khách hàng', 4, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(61, 3, NULL, 'Eccube\\\\Entity\\\\Order', 'name02', NULL, 'Họ khách hàng', 5, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(64, 3, NULL, 'Eccube\\\\Entity\\\\Order', 'company_name', NULL, 'Tên công ty', 8, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(65, 3, NULL, 'Eccube\\\\Entity\\\\Order', 'postal_code', NULL, 'Mã bưu điện', 9, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(66, 3, NULL, 'Eccube\\\\Entity\\\\Order', 'Pref', 'id', 'Mã tỉnh', 10, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(67, 3, NULL, 'Eccube\\\\Entity\\\\Order', 'Pref', 'name', 'Tên tỉnh', 11, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(68, 3, NULL, 'Eccube\\\\Entity\\\\Order', 'addr01', NULL, 'Quận huyện', 12, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(69, 3, NULL, 'Eccube\\\\Entity\\\\Order', 'addr02', NULL, 'Số nhà tên đường', 13, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(70, 3, NULL, 'Eccube\\\\Entity\\\\Order', 'email', NULL, 'Email', 14, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(71, 3, NULL, 'Eccube\\\\Entity\\\\Order', 'phone_number', NULL, 'Số điện thoại', 15, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(72, 3, NULL, 'Eccube\\\\Entity\\\\Order', 'Sex', 'id', 'Mã giới tính', 16, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(73, 3, NULL, 'Eccube\\\\Entity\\\\Order', 'Sex', 'name', 'Giới tính', 17, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(74, 3, NULL, 'Eccube\\\\Entity\\\\Order', 'Job', 'id', 'Mã việc làm', 18, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(75, 3, NULL, 'Eccube\\\\Entity\\\\Order', 'Job', 'name', 'Việc làm', 19, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(76, 3, NULL, 'Eccube\\\\Entity\\\\Order', 'birth', NULL, 'Sinh nhật', 20, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(77, 3, NULL, 'Eccube\\\\Entity\\\\Order', 'note', NULL, 'Ghi chú', 21, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(78, 3, NULL, 'Eccube\\\\Entity\\\\Order', 'subtotal', NULL, 'Tổng tiền chưa tính phí', 22, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(79, 3, NULL, 'Eccube\\\\Entity\\\\Order', 'discount', NULL, 'Giảm giá', 23, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(80, 3, NULL, 'Eccube\\\\Entity\\\\Order', 'delivery_fee_total', NULL, 'Tổng phí vận chuyển', 24, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(81, 3, NULL, 'Eccube\\\\Entity\\\\Order', 'tax', NULL, 'Thuế', 25, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(82, 3, NULL, 'Eccube\\\\Entity\\\\Order', 'total', NULL, 'Tổng tiền', 26, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(83, 3, NULL, 'Eccube\\\\Entity\\\\Order', 'payment_total', NULL, 'Tổng tiền thanh toán', 27, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(84, 3, NULL, 'Eccube\\\\Entity\\\\Order', 'OrderStatus', 'id', 'Mã trạng thái đơn hàng', 28, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(85, 3, NULL, 'Eccube\\\\Entity\\\\Order', 'OrderStatus', 'name', 'Trạng thái đơn hàng', 29, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(86, 3, NULL, 'Eccube\\\\Entity\\\\Order', 'Payment', 'id', 'Mã phương thức thanh toán', 30, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(87, 3, NULL, 'Eccube\\\\Entity\\\\Order', 'payment_method', NULL, 'Phương thức thanh toán', 31, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(88, 3, NULL, 'Eccube\\\\Entity\\\\Order', 'order_date', NULL, 'Ngày đặt hàng', 32, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(89, 3, NULL, 'Eccube\\\\Entity\\\\Order', 'payment_date', NULL, 'Ngày trả tiền', 33, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(90, 3, NULL, 'Eccube\\\\Entity\\\\OrderItem', 'id', NULL, 'Mã chi tiết đơn hàng', 34, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(91, 3, NULL, 'Eccube\\\\Entity\\\\OrderItem', 'Product', 'id', 'Định danh sản phẩm', 35, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(92, 3, NULL, 'Eccube\\\\Entity\\\\OrderItem', 'ProductClass', 'id', 'Mã phân loại sản phẩm', 36, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(93, 3, NULL, 'Eccube\\\\Entity\\\\OrderItem', 'product_name', NULL, 'Tên sản phẩm', 37, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(94, 3, NULL, 'Eccube\\\\Entity\\\\OrderItem', 'product_code', NULL, 'Mã sản phẩm', 38, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(95, 3, NULL, 'Eccube\\\\Entity\\\\OrderItem', 'class_name1', NULL, 'Lựa chọn 1', 39, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(96, 3, NULL, 'Eccube\\\\Entity\\\\OrderItem', 'class_name2', NULL, 'Lựa chọn 2', 40, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(97, 3, NULL, 'Eccube\\\\Entity\\\\OrderItem', 'class_category_name1', NULL, 'Tên loại lớp 1', 41, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(98, 3, NULL, 'Eccube\\\\Entity\\\\OrderItem', 'class_category_name2', NULL, 'Tên loại lớp 2', 42, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(99, 3, NULL, 'Eccube\\\\Entity\\\\OrderItem', 'price', NULL, 'Giá', 43, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(100, 3, NULL, 'Eccube\\\\Entity\\\\OrderItem', 'quantity', NULL, 'Số lượng', 44, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(101, 3, NULL, 'Eccube\\\\Entity\\\\OrderItem', 'tax_rate', NULL, 'Tỉ lệ thuế', 45, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(102, 3, NULL, 'Eccube\\\\Entity\\\\OrderItem', 'tax_rule', NULL, 'Mã thuế', 46, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(103, 3, NULL, 'Eccube\\\\Entity\\\\OrderItem', 'OrderItemType', 'id', 'Mã loại mục', 47, 1, '2018-07-23 09:00:00', '2018-07-23 09:00:00', 'csv'),
(104, 3, NULL, 'Eccube\\\\Entity\\\\OrderItem', 'OrderItemType', 'name', 'Tên loại mục', 48, 1, '2018-07-23 09:00:00', '2018-07-23 09:00:00', 'csv'),
(105, 3, NULL, 'Eccube\\\\Entity\\\\Shipping', 'id', NULL, 'Mã giao hàng', 49, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(106, 3, NULL, 'Eccube\\\\Entity\\\\Shipping', 'name01', NULL, 'Tên người nhận', 50, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(107, 3, NULL, 'Eccube\\\\Entity\\\\Shipping', 'name02', NULL, 'Họ người nhận', 51, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(110, 3, NULL, 'Eccube\\\\Entity\\\\Shipping', 'company_name', NULL, 'Tên công ty người nhận', 54, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(111, 3, NULL, 'Eccube\\\\Entity\\\\Shipping', 'postal_code', NULL, 'Mã bưu cục người nhận', 55, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(112, 3, NULL, 'Eccube\\\\Entity\\\\Shipping', 'Pref', 'id', 'Mã tỉnh', 56, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(113, 3, NULL, 'Eccube\\\\Entity\\\\Shipping', 'Pref', 'name', 'Tên tỉnh', 57, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(114, 3, NULL, 'Eccube\\\\Entity\\\\Shipping', 'addr01', NULL, 'Quận huyện thành phố', 58, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(115, 3, NULL, 'Eccube\\\\Entity\\\\Shipping', 'addr02', NULL, 'Số nhà tên đường', 59, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(116, 3, NULL, 'Eccube\\\\Entity\\\\Shipping', 'phone_number', NULL, 'Số điện thoại người nhận', 60, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(117, 3, NULL, 'Eccube\\\\Entity\\\\Shipping', 'Delivery', 'id', 'Mã công ty vận chuyển', 61, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(118, 3, NULL, 'Eccube\\\\Entity\\\\Shipping', 'shipping_delivery_name', NULL, 'Tên công ty vận chuyển', 62, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(119, 3, NULL, 'Eccube\\\\Entity\\\\Shipping', 'DeliveryTime', 'id', 'Mã thời gian vận chuyển', 63, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(120, 3, NULL, 'Eccube\\\\Entity\\\\Shipping', 'shipping_delivery_time', NULL, 'Thời gian vận chuyển', 64, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(121, 3, NULL, 'Eccube\\\\Entity\\\\Shipping', 'shipping_delivery_date', NULL, 'Ngày vận chuyển', 65, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(122, 3, NULL, 'Eccube\\\\Entity\\\\Shipping', 'DeliveryFee', 'id', 'Mã phí vận chuyển', 66, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(123, 3, NULL, 'Eccube\\\\Entity\\\\Shipping', 'shipping_delivery_fee', NULL, 'Phí vận chuyển', 67, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(124, 3, NULL, 'Eccube\\\\Entity\\\\Shipping', 'shipping_date', NULL, 'Ngày vận chuyển', 68, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(125, 3, NULL, 'Eccube\\\\Entity\\\\Shipping', 'tracking_number', NULL, 'Mã theo dõi ', 69, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(126, 3, NULL, 'Eccube\\\\Entity\\\\Shipping', 'note', NULL, 'Ghi chú giao hàng', 70, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(127, 3, NULL, 'Eccube\\\\Entity\\\\Shipping', 'mail_send_date', NULL, 'Ngày gửi mail', 71, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(128, 4, NULL, 'Eccube\\\\Entity\\\\Order', 'id', NULL, 'Mã đơn hàng', 1, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(129, 4, NULL, 'Eccube\\\\Entity\\\\Order', 'order_no', NULL, 'Số đơn hàng', 2, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(130, 4, NULL, 'Eccube\\\\Entity\\\\Order', 'Customer', 'id', 'Mã khách hàng', 3, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(131, 4, NULL, 'Eccube\\\\Entity\\\\Order', 'name01', NULL, 'Tên khách hàng', 4, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(132, 4, NULL, 'Eccube\\\\Entity\\\\Order', 'name02', NULL, 'Họ khách hàng', 5, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(135, 4, NULL, 'Eccube\\\\Entity\\\\Order', 'company_name', NULL, 'Tên công ty', 8, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(136, 4, NULL, 'Eccube\\\\Entity\\\\Order', 'postal_code', NULL, 'Mã bưu cục', 9, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(137, 4, NULL, 'Eccube\\\\Entity\\\\Order', 'Pref', 'id', 'Mã tỉnh', 10, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(138, 4, NULL, 'Eccube\\\\Entity\\\\Order', 'Pref', 'name', 'Tên tỉnh', 11, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(139, 4, NULL, 'Eccube\\\\Entity\\\\Order', 'addr01', NULL, 'Quận huyện tỉnh', 12, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(140, 4, NULL, 'Eccube\\\\Entity\\\\Order', 'addr02', NULL, 'Số nhà tên đường', 13, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(141, 4, NULL, 'Eccube\\\\Entity\\\\Order', 'email', NULL, 'Email', 14, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(142, 4, NULL, 'Eccube\\\\Entity\\\\Order', 'phone_number', NULL, 'Số điện thoại', 15, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(143, 4, NULL, 'Eccube\\\\Entity\\\\Order', 'Sex', 'id', 'Mã giới tính', 16, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(144, 4, NULL, 'Eccube\\\\Entity\\\\Order', 'Sex', 'name', 'Tên giới tính', 17, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(145, 4, NULL, 'Eccube\\\\Entity\\\\Order', 'Job', 'id', 'Mã việc làm', 18, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(146, 4, NULL, 'Eccube\\\\Entity\\\\Order', 'Job', 'name', 'Việc làm', 19, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(147, 4, NULL, 'Eccube\\\\Entity\\\\Order', 'birth', NULL, 'Sinh nhật', 20, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(148, 4, NULL, 'Eccube\\\\Entity\\\\Order', 'note', NULL, 'Ghi chú', 21, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(149, 4, NULL, 'Eccube\\\\Entity\\\\Order', 'subtotal', NULL, 'Tổng giá chưa tính phí', 22, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(150, 4, NULL, 'Eccube\\\\Entity\\\\Order', 'discount', NULL, 'Giảm giá', 23, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(151, 4, NULL, 'Eccube\\\\Entity\\\\Order', 'delivery_fee_total', NULL, 'Tổng phí giao hàng', 24, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(152, 4, NULL, 'Eccube\\\\Entity\\\\Order', 'tax', NULL, 'Thuế', 25, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(153, 4, NULL, 'Eccube\\\\Entity\\\\Order', 'total', NULL, 'Tổng tiền', 26, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(154, 4, NULL, 'Eccube\\\\Entity\\\\Order', 'payment_total', NULL, 'Tổng tiền thanh toán', 27, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(155, 4, NULL, 'Eccube\\\\Entity\\\\Order', 'OrderStatus', 'id', 'Mã trạng thái đơn hàng', 28, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(156, 4, NULL, 'Eccube\\\\Entity\\\\Order', 'OrderStatus', 'name', 'Trạng thái đơn hàng', 29, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(157, 4, NULL, 'Eccube\\\\Entity\\\\Order', 'Payment', 'id', 'Mã thanh toán', 30, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(158, 4, NULL, 'Eccube\\\\Entity\\\\Order', 'payment_method', NULL, 'Tên phương thức thanh toán', 31, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(159, 4, NULL, 'Eccube\\\\Entity\\\\Order', 'order_date', NULL, 'Ngày đặt hàng', 32, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(160, 4, NULL, 'Eccube\\\\Entity\\\\Order', 'payment_date', NULL, 'Ngày thanh toán', 33, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(161, 4, NULL, 'Eccube\\\\Entity\\\\OrderItem', 'id', NULL, 'Mã chi tiết đơn hàng', 34, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(162, 4, NULL, 'Eccube\\\\Entity\\\\OrderItem', 'Product', 'id', 'Định danh sản phẩm', 35, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(163, 4, NULL, 'Eccube\\\\Entity\\\\OrderItem', 'ProductClass', 'id', 'Mã loại sản phẩm', 36, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(164, 4, NULL, 'Eccube\\\\Entity\\\\OrderItem', 'product_name', NULL, 'Tên sản phẩm', 37, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(165, 4, NULL, 'Eccube\\\\Entity\\\\OrderItem', 'product_code', NULL, 'Mã sản phẩm', 38, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(166, 4, NULL, 'Eccube\\\\Entity\\\\OrderItem', 'class_name1', NULL, 'Lựa chọn 1', 39, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(167, 4, NULL, 'Eccube\\\\Entity\\\\OrderItem', 'class_name2', NULL, 'Lựa chọn 2', 40, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(168, 4, NULL, 'Eccube\\\\Entity\\\\OrderItem', 'class_category_name1', NULL, 'Tên loại lớp 1', 41, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(169, 4, NULL, 'Eccube\\\\Entity\\\\OrderItem', 'class_category_name2', NULL, 'Tên loại lớp 2', 42, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(170, 4, NULL, 'Eccube\\\\Entity\\\\OrderItem', 'price', NULL, 'Giá', 43, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(171, 4, NULL, 'Eccube\\\\Entity\\\\OrderItem', 'quantity', NULL, 'Số lượng', 44, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(172, 4, NULL, 'Eccube\\\\Entity\\\\OrderItem', 'tax_rate', NULL, 'Tỉ lệ thuế', 45, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(173, 4, NULL, 'Eccube\\\\Entity\\\\OrderItem', 'tax_rule', NULL, 'Mã thuế', 46, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(174, 4, NULL, 'Eccube\\\\Entity\\\\OrderItem', 'OrderItemType', 'id', 'Mã loại mục', 47, 1, '2018-07-23 09:00:00', '2018-07-23 09:00:00', 'csv'),
(175, 4, NULL, 'Eccube\\\\Entity\\\\OrderItem', 'OrderItemType', 'name', 'Tên loại mục', 48, 1, '2018-07-23 09:00:00', '2018-07-23 09:00:00', 'csv'),
(176, 4, NULL, 'Eccube\\\\Entity\\\\Shipping', 'id', NULL, 'Mã giao hàng', 49, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(177, 4, NULL, 'Eccube\\\\Entity\\\\Shipping', 'name01', NULL, 'Tên', 50, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(178, 4, NULL, 'Eccube\\\\Entity\\\\Shipping', 'name02', NULL, 'Họ', 51, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(181, 4, NULL, 'Eccube\\\\Entity\\\\Shipping', 'company_name', NULL, 'Tên công ty nhận hàng', 54, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(182, 4, NULL, 'Eccube\\\\Entity\\\\Shipping', 'postal_code', NULL, 'Mã bưu cục nhận hàng', 55, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(183, 4, NULL, 'Eccube\\\\Entity\\\\Shipping', 'Pref', 'id', 'Mã tỉnh thành phố nhận hàng', 56, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(184, 4, NULL, 'Eccube\\\\Entity\\\\Shipping', 'Pref', 'name', 'Tên tỉnh thành phố nhận hàng', 57, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(185, 4, NULL, 'Eccube\\\\Entity\\\\Shipping', 'addr01', NULL, 'Quận huyện thành phố nhận hàng', 58, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(186, 4, NULL, 'Eccube\\\\Entity\\\\Shipping', 'addr02', NULL, 'Số nhà số đường nhận hàng', 59, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(187, 4, NULL, 'Eccube\\\\Entity\\\\Shipping', 'phone_number', NULL, 'Số điện thoại nhận hàng', 60, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(188, 4, NULL, 'Eccube\\\\Entity\\\\Shipping', 'Delivery', 'id', 'Mã công ty giao hàng', 61, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(189, 4, NULL, 'Eccube\\\\Entity\\\\Shipping', 'shipping_delivery_name', NULL, 'Tên công ty giao hàng', 62, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(190, 4, NULL, 'Eccube\\\\Entity\\\\Shipping', 'DeliveryTime', 'id', 'Mã thời gian giao hàng', 63, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(191, 4, NULL, 'Eccube\\\\Entity\\\\Shipping', 'shipping_delivery_time', NULL, 'Thời gian công ty giao hàng', 64, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(192, 4, NULL, 'Eccube\\\\Entity\\\\Shipping', 'shipping_delivery_date', NULL, 'Ngày công ty giao hàng', 65, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(193, 4, NULL, 'Eccube\\\\Entity\\\\Shipping', 'DeliveryFee', 'id', 'Mã phí giao hàng', 66, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(194, 4, NULL, 'Eccube\\\\Entity\\\\Shipping', 'shipping_delivery_fee', NULL, 'Phí giao hàng', 67, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(195, 4, NULL, 'Eccube\\\\Entity\\\\Shipping', 'shipping_date', NULL, 'Ngày giao hàng', 68, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(196, 4, NULL, 'Eccube\\\\Entity\\\\Shipping', 'tracking_number', NULL, 'Mã theo dõi ', 69, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(197, 4, NULL, 'Eccube\\\\Entity\\\\Shipping', 'note', NULL, 'Ghi chú giao hàng', 70, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(198, 4, NULL, 'Eccube\\\\Entity\\\\Shipping', 'mail_send_date', NULL, 'Ngày gửi mail', 71, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(199, 5, NULL, 'Eccube\\\\Entity\\\\Category', 'id', NULL, 'Mã thể loại', 1, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(200, 5, NULL, 'Eccube\\\\Entity\\\\Category', 'sort_no', NULL, 'Thứ tự hiển thị', 2, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(201, 5, NULL, 'Eccube\\\\Entity\\\\Category', 'name', NULL, 'Tên thể loại', 3, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(202, 5, NULL, 'Eccube\\\\Entity\\\\Category', 'Parent', 'id', 'Mã thể loại cha', 4, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv'),
(203, 5, NULL, 'Eccube\\\\Entity\\\\Category', 'level', NULL, 'Phân cấp', 5, 1, '2017-03-07 10:14:00', '2017-03-07 10:14:00', 'csv');

-- --------------------------------------------------------

--
-- Table structure for table `dtb_customer`
--

CREATE TABLE `dtb_customer` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_status_id` smallint(5) UNSIGNED DEFAULT NULL,
  `sex_id` smallint(5) UNSIGNED DEFAULT NULL,
  `job_id` smallint(5) UNSIGNED DEFAULT NULL,
  `country_id` smallint(5) UNSIGNED DEFAULT NULL,
  `pref_id` smallint(5) UNSIGNED DEFAULT NULL,
  `name01` varchar(255) NOT NULL,
  `name02` varchar(255) NOT NULL,
  `kana01` varchar(255) DEFAULT NULL,
  `kana02` varchar(255) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `postal_code` varchar(8) DEFAULT NULL,
  `addr01` varchar(255) DEFAULT NULL,
  `addr02` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `phone_number` varchar(14) DEFAULT NULL,
  `birth` datetime DEFAULT NULL COMMENT '(DC2Type:datetimetz)',
  `password` varchar(255) NOT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `secret_key` varchar(255) NOT NULL,
  `first_buy_date` datetime DEFAULT NULL COMMENT '(DC2Type:datetimetz)',
  `last_buy_date` datetime DEFAULT NULL COMMENT '(DC2Type:datetimetz)',
  `buy_times` decimal(10,0) UNSIGNED DEFAULT '0',
  `buy_total` decimal(12,2) UNSIGNED DEFAULT '0.00',
  `note` varchar(4000) DEFAULT NULL,
  `reset_key` varchar(255) DEFAULT NULL,
  `reset_expire` datetime DEFAULT NULL COMMENT '(DC2Type:datetimetz)',
  `point` decimal(12,0) NOT NULL DEFAULT '0',
  `create_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `update_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `discriminator_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dtb_customer_address`
--

CREATE TABLE `dtb_customer_address` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED DEFAULT NULL,
  `country_id` smallint(5) UNSIGNED DEFAULT NULL,
  `pref_id` smallint(5) UNSIGNED DEFAULT NULL,
  `name01` varchar(255) NOT NULL,
  `name02` varchar(255) NOT NULL,
  `kana01` varchar(255) DEFAULT NULL,
  `kana02` varchar(255) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `postal_code` varchar(8) DEFAULT NULL,
  `addr01` varchar(255) DEFAULT NULL,
  `addr02` varchar(255) DEFAULT NULL,
  `phone_number` varchar(14) DEFAULT NULL,
  `create_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `update_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `discriminator_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dtb_customer_favorite_product`
--

CREATE TABLE `dtb_customer_favorite_product` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED DEFAULT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `create_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `update_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `discriminator_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dtb_delivery`
--

CREATE TABLE `dtb_delivery` (
  `id` int(10) UNSIGNED NOT NULL,
  `creator_id` int(10) UNSIGNED DEFAULT NULL,
  `sale_type_id` smallint(5) UNSIGNED DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `service_name` varchar(255) DEFAULT NULL,
  `description` varchar(4000) DEFAULT NULL,
  `confirm_url` varchar(4000) DEFAULT NULL,
  `sort_no` int(10) UNSIGNED DEFAULT NULL,
  `visible` tinyint(1) NOT NULL DEFAULT '1',
  `create_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `update_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `discriminator_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dtb_delivery`
--

INSERT INTO `dtb_delivery` (`id`, `creator_id`, `sale_type_id`, `name`, `service_name`, `description`, `confirm_url`, `sort_no`, `visible`, `create_date`, `update_date`, `discriminator_type`) VALUES
(1, NULL, 1, 'Sample Company', 'Sample Company', NULL, NULL, 1, 1, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'delivery'),
(2, NULL, 2, 'Sample Delivery', 'Sample Delivery', NULL, NULL, 2, 1, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'delivery');

-- --------------------------------------------------------

--
-- Table structure for table `dtb_delivery_duration`
--

CREATE TABLE `dtb_delivery_duration` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `duration` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `sort_no` int(10) UNSIGNED NOT NULL,
  `discriminator_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dtb_delivery_duration`
--

INSERT INTO `dtb_delivery_duration` (`id`, `name`, `duration`, `sort_no`, `discriminator_type`) VALUES
(1, 'Cùng ngày', 0, 0, 'deliveryduration'),
(2, '1-2 ngày', 1, 1, 'deliveryduration'),
(3, '3-4 ngày', 3, 2, 'deliveryduration'),
(4, 'Hơn 1 tuần sau', 7, 3, 'deliveryduration'),
(5, 'Hơn 2 tuần sau', 14, 4, 'deliveryduration'),
(6, 'Hơn 3 tuần sau', 21, 5, 'deliveryduration'),
(7, 'Hơn 1 tuần sau', 30, 6, 'deliveryduration'),
(8, 'Hơn 2 tuần sau', 60, 7, 'deliveryduration'),
(9, 'Đặt hàng trở lại (Đã giao một lần có sẵn)', 0, 8, 'deliveryduration');

-- --------------------------------------------------------

--
-- Table structure for table `dtb_delivery_fee`
--

CREATE TABLE `dtb_delivery_fee` (
  `id` int(10) UNSIGNED NOT NULL,
  `delivery_id` int(10) UNSIGNED DEFAULT NULL,
  `pref_id` smallint(5) UNSIGNED DEFAULT NULL,
  `fee` decimal(12,2) UNSIGNED NOT NULL,
  `discriminator_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dtb_delivery_fee`
--

INSERT INTO `dtb_delivery_fee` (`id`, `delivery_id`, `pref_id`, `fee`, `discriminator_type`) VALUES
(1, 1, 1, '1000.00', 'deliveryfee'),
(2, 1, 2, '1000.00', 'deliveryfee'),
(3, 1, 3, '1000.00', 'deliveryfee'),
(4, 1, 4, '1000.00', 'deliveryfee'),
(5, 1, 5, '1000.00', 'deliveryfee'),
(6, 1, 6, '1000.00', 'deliveryfee'),
(7, 1, 7, '1000.00', 'deliveryfee'),
(8, 1, 8, '1000.00', 'deliveryfee'),
(9, 1, 9, '1000.00', 'deliveryfee'),
(10, 1, 10, '1000.00', 'deliveryfee'),
(11, 1, 11, '1000.00', 'deliveryfee'),
(12, 1, 12, '1000.00', 'deliveryfee'),
(13, 1, 13, '1000.00', 'deliveryfee'),
(14, 1, 14, '1000.00', 'deliveryfee'),
(15, 1, 15, '1000.00', 'deliveryfee'),
(16, 1, 16, '1000.00', 'deliveryfee'),
(17, 1, 17, '1000.00', 'deliveryfee'),
(18, 1, 18, '1000.00', 'deliveryfee'),
(19, 1, 19, '1000.00', 'deliveryfee'),
(20, 1, 20, '1000.00', 'deliveryfee'),
(21, 1, 21, '1000.00', 'deliveryfee'),
(22, 1, 22, '1000.00', 'deliveryfee'),
(23, 1, 23, '1000.00', 'deliveryfee'),
(24, 1, 24, '1000.00', 'deliveryfee'),
(25, 1, 25, '1000.00', 'deliveryfee'),
(26, 1, 26, '1000.00', 'deliveryfee'),
(27, 1, 27, '1000.00', 'deliveryfee'),
(28, 1, 28, '1000.00', 'deliveryfee'),
(29, 1, 29, '1000.00', 'deliveryfee'),
(30, 1, 30, '1000.00', 'deliveryfee'),
(31, 1, 31, '1000.00', 'deliveryfee'),
(32, 1, 32, '1000.00', 'deliveryfee'),
(33, 1, 33, '1000.00', 'deliveryfee'),
(34, 1, 34, '1000.00', 'deliveryfee'),
(35, 1, 35, '1000.00', 'deliveryfee'),
(36, 1, 36, '1000.00', 'deliveryfee'),
(37, 1, 37, '1000.00', 'deliveryfee'),
(38, 1, 38, '1000.00', 'deliveryfee'),
(39, 1, 39, '1000.00', 'deliveryfee'),
(40, 1, 40, '1000.00', 'deliveryfee'),
(41, 1, 41, '1000.00', 'deliveryfee'),
(42, 1, 42, '1000.00', 'deliveryfee'),
(43, 1, 43, '1000.00', 'deliveryfee'),
(44, 1, 44, '1000.00', 'deliveryfee'),
(45, 1, 45, '1000.00', 'deliveryfee'),
(46, 1, 46, '1000.00', 'deliveryfee'),
(47, 1, 47, '1000.00', 'deliveryfee'),
(48, 1, 48, '1000.00', 'deliveryfee'),
(49, 1, 49, '1000.00', 'deliveryfee'),
(50, 1, 50, '1000.00', 'deliveryfee'),
(51, 1, 51, '1000.00', 'deliveryfee'),
(52, 1, 52, '1000.00', 'deliveryfee'),
(53, 1, 53, '1000.00', 'deliveryfee'),
(54, 1, 54, '1000.00', 'deliveryfee'),
(55, 1, 55, '1000.00', 'deliveryfee'),
(56, 1, 56, '1000.00', 'deliveryfee'),
(57, 1, 57, '1000.00', 'deliveryfee'),
(58, 1, 58, '1000.00', 'deliveryfee'),
(59, 1, 59, '1000.00', 'deliveryfee'),
(60, 1, 60, '1000.00', 'deliveryfee'),
(61, 1, 61, '1000.00', 'deliveryfee'),
(62, 1, 62, '1000.00', 'deliveryfee'),
(63, 1, 63, '1000.00', 'deliveryfee'),
(64, 2, 1, '0.00', 'deliveryfee'),
(65, 2, 2, '0.00', 'deliveryfee'),
(66, 2, 3, '0.00', 'deliveryfee'),
(67, 2, 4, '0.00', 'deliveryfee'),
(68, 2, 5, '0.00', 'deliveryfee'),
(69, 2, 6, '0.00', 'deliveryfee'),
(70, 2, 7, '0.00', 'deliveryfee'),
(71, 2, 8, '0.00', 'deliveryfee'),
(72, 2, 9, '0.00', 'deliveryfee'),
(73, 2, 10, '0.00', 'deliveryfee'),
(74, 2, 11, '0.00', 'deliveryfee'),
(75, 2, 12, '0.00', 'deliveryfee'),
(76, 2, 13, '0.00', 'deliveryfee'),
(77, 2, 14, '0.00', 'deliveryfee'),
(78, 2, 15, '0.00', 'deliveryfee'),
(79, 2, 16, '0.00', 'deliveryfee'),
(80, 2, 17, '0.00', 'deliveryfee'),
(81, 2, 18, '0.00', 'deliveryfee'),
(82, 2, 19, '0.00', 'deliveryfee'),
(83, 2, 20, '0.00', 'deliveryfee'),
(84, 2, 21, '0.00', 'deliveryfee'),
(85, 2, 22, '0.00', 'deliveryfee'),
(86, 2, 23, '0.00', 'deliveryfee'),
(87, 2, 24, '0.00', 'deliveryfee'),
(88, 2, 25, '0.00', 'deliveryfee'),
(89, 2, 26, '0.00', 'deliveryfee'),
(90, 2, 27, '0.00', 'deliveryfee'),
(91, 2, 28, '0.00', 'deliveryfee'),
(92, 2, 29, '0.00', 'deliveryfee'),
(93, 2, 30, '0.00', 'deliveryfee'),
(94, 2, 31, '0.00', 'deliveryfee'),
(95, 2, 32, '0.00', 'deliveryfee'),
(96, 2, 33, '0.00', 'deliveryfee'),
(97, 2, 34, '0.00', 'deliveryfee'),
(98, 2, 35, '0.00', 'deliveryfee'),
(99, 2, 36, '0.00', 'deliveryfee'),
(100, 2, 37, '0.00', 'deliveryfee'),
(101, 2, 38, '0.00', 'deliveryfee'),
(102, 2, 39, '0.00', 'deliveryfee'),
(103, 2, 40, '0.00', 'deliveryfee'),
(104, 2, 41, '0.00', 'deliveryfee'),
(105, 2, 42, '0.00', 'deliveryfee'),
(106, 2, 43, '0.00', 'deliveryfee'),
(107, 2, 44, '0.00', 'deliveryfee'),
(108, 2, 45, '0.00', 'deliveryfee'),
(109, 2, 46, '0.00', 'deliveryfee'),
(110, 2, 47, '0.00', 'deliveryfee'),
(111, 2, 48, '0.00', 'deliveryfee'),
(112, 2, 49, '0.00', 'deliveryfee'),
(113, 2, 50, '0.00', 'deliveryfee'),
(114, 2, 51, '0.00', 'deliveryfee'),
(115, 2, 52, '0.00', 'deliveryfee'),
(116, 2, 53, '0.00', 'deliveryfee'),
(117, 2, 54, '0.00', 'deliveryfee'),
(118, 2, 55, '0.00', 'deliveryfee'),
(119, 2, 56, '0.00', 'deliveryfee'),
(120, 2, 57, '0.00', 'deliveryfee'),
(121, 2, 58, '0.00', 'deliveryfee'),
(122, 2, 59, '0.00', 'deliveryfee'),
(123, 2, 60, '0.00', 'deliveryfee'),
(124, 2, 61, '0.00', 'deliveryfee'),
(125, 2, 62, '0.00', 'deliveryfee'),
(126, 2, 63, '0.00', 'deliveryfee');

-- --------------------------------------------------------

--
-- Table structure for table `dtb_delivery_time`
--

CREATE TABLE `dtb_delivery_time` (
  `id` int(10) UNSIGNED NOT NULL,
  `delivery_id` int(10) UNSIGNED DEFAULT NULL,
  `delivery_time` varchar(255) NOT NULL,
  `sort_no` smallint(5) UNSIGNED NOT NULL,
  `visible` tinyint(1) NOT NULL DEFAULT '1',
  `create_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `update_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `discriminator_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dtb_delivery_time`
--

INSERT INTO `dtb_delivery_time` (`id`, `delivery_id`, `delivery_time`, `sort_no`, `visible`, `create_date`, `update_date`, `discriminator_type`) VALUES
(1, 1, 'Sáng', 1, 1, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'deliverytime'),
(2, 1, 'Chiều', 2, 1, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'deliverytime');

-- --------------------------------------------------------

--
-- Table structure for table `dtb_layout`
--

CREATE TABLE `dtb_layout` (
  `id` int(10) UNSIGNED NOT NULL,
  `device_type_id` smallint(5) UNSIGNED DEFAULT NULL,
  `layout_name` varchar(255) DEFAULT NULL,
  `create_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `update_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `discriminator_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dtb_layout`
--

INSERT INTO `dtb_layout` (`id`, `device_type_id`, `layout_name`, `create_date`, `update_date`, `discriminator_type`) VALUES
(0, 10, 'Xem trước', '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'layout'),
(1, 10, 'Bố trí trang chủ', '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'layout'),
(2, 10, 'Bố trí trang phụ', '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'layout');

-- --------------------------------------------------------

--
-- Table structure for table `dtb_mail_history`
--

CREATE TABLE `dtb_mail_history` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED DEFAULT NULL,
  `creator_id` int(10) UNSIGNED DEFAULT NULL,
  `send_date` datetime DEFAULT NULL COMMENT '(DC2Type:datetimetz)',
  `mail_subject` varchar(255) DEFAULT NULL,
  `mail_body` longtext,
  `mail_html_body` longtext,
  `discriminator_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dtb_mail_template`
--

CREATE TABLE `dtb_mail_template` (
  `id` int(10) UNSIGNED NOT NULL,
  `creator_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `mail_subject` varchar(255) DEFAULT NULL,
  `create_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `update_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `discriminator_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dtb_mail_template`
--

INSERT INTO `dtb_mail_template` (`id`, `creator_id`, `name`, `file_name`, `mail_subject`, `create_date`, `update_date`, `discriminator_type`) VALUES
(1, NULL, 'Nhận đơn đặt hàng', 'Mail/vi/order.twig', 'Rất cảm ơn bạn đã đặt hàng!', '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'mailtemplate'),
(2, NULL, 'Đăng ký tạm thời', 'Mail/vi/entry_confirm.twig', 'Xác nhận đăng ký thành viên', '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'mailtemplate'),
(3, NULL, 'Đăng ký chính thức', 'Mail/vi/entry_complete.twig', 'Hoàn thành đăng ký thành viên', '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'mailtemplate'),
(4, NULL, 'Hủy thành viên', 'Mail/vi/customer_withdraw_mail.twig', 'Hoàn tất hủy thành viên', '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'mailtemplate'),
(5, NULL, 'Biên nhận yêu cầu', 'Mail/vi/contact_mail.twig', 'Cảm ơn bạn đã yêu cầu', '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'mailtemplate'),
(6, NULL, 'Đặt lại mật khẩu', 'Mail/vi/forgot_mail.twig', 'Đặt lại mật khẩu của bạn', '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'mailtemplate'),
(7, NULL, 'Nhắc nhở mật khẩu', 'Mail/vi/reset_complete_mail.twig', 'Mật khẩu của bạn đã được thay đổi', '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'mailtemplate'),
(8, NULL, 'Thông báo giao hàng', 'Mail/vi/shipping_notify.twig', 'Đơn hàng của bạn đã được giao', '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'mailtemplate');

-- --------------------------------------------------------

--
-- Table structure for table `dtb_member`
--

CREATE TABLE `dtb_member` (
  `id` int(10) UNSIGNED NOT NULL,
  `work_id` smallint(5) UNSIGNED DEFAULT NULL,
  `authority_id` smallint(5) UNSIGNED DEFAULT NULL,
  `creator_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `login_id` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `sort_no` smallint(5) UNSIGNED NOT NULL,
  `create_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `update_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `login_date` datetime DEFAULT NULL COMMENT '(DC2Type:datetimetz)',
  `discriminator_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dtb_member`
--

INSERT INTO `dtb_member` (`id`, `work_id`, `authority_id`, `creator_id`, `name`, `department`, `login_id`, `password`, `salt`, `sort_no`, `create_date`, `update_date`, `login_date`, `discriminator_type`) VALUES
(1, 1, 0, 1, 'Administrator', 'Tabe 01', 'admin', '36e523466d5d18af8d0907933c0f72e2c356171ddeb430942c0d95261210e2e3', 'jrnvnS3y0+YmNNKatPYiUDTPfDTYOWmIaxIg+vAZ', 1, '2019-05-06 06:41:02', '2019-07-15 08:41:07', '2019-07-15 08:41:07', 'member');

-- --------------------------------------------------------

--
-- Table structure for table `dtb_news`
--

CREATE TABLE `dtb_news` (
  `id` int(10) UNSIGNED NOT NULL,
  `creator_id` int(10) UNSIGNED DEFAULT NULL,
  `publish_date` datetime DEFAULT NULL COMMENT '(DC2Type:datetimetz)',
  `title` varchar(255) NOT NULL,
  `description` longtext,
  `url` varchar(4000) DEFAULT NULL,
  `link_method` tinyint(1) NOT NULL DEFAULT '0',
  `create_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `update_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `visible` tinyint(1) NOT NULL DEFAULT '1',
  `discriminator_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dtb_news`
--

INSERT INTO `dtb_news` (`id`, `creator_id`, `publish_date`, `title`, `description`, `url`, `link_method`, `create_date`, `update_date`, `visible`, `discriminator_type`) VALUES
(1, NULL, '2019-01-08 10:14:52', 'Cửa hàng mới phát hành!', 'Cho dù đó là cho văn phòng hoặc nhà của bạn, chúng tôi có một lựa chọn tuyệt vời các sản phẩm có thể nâng cao năng suất và cuộc sống hàng ngày của bạn.', NULL, 1, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 1, 'news');

-- --------------------------------------------------------

--
-- Table structure for table `dtb_order`
--

CREATE TABLE `dtb_order` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED DEFAULT NULL,
  `country_id` smallint(5) UNSIGNED DEFAULT NULL,
  `pref_id` smallint(5) UNSIGNED DEFAULT NULL,
  `sex_id` smallint(5) UNSIGNED DEFAULT NULL,
  `job_id` smallint(5) UNSIGNED DEFAULT NULL,
  `payment_id` int(10) UNSIGNED DEFAULT NULL,
  `device_type_id` smallint(5) UNSIGNED DEFAULT NULL,
  `pre_order_id` varchar(255) DEFAULT NULL,
  `order_no` varchar(255) DEFAULT NULL,
  `message` varchar(4000) DEFAULT NULL,
  `name01` varchar(255) NOT NULL,
  `name02` varchar(255) NOT NULL,
  `kana01` varchar(255) DEFAULT NULL,
  `kana02` varchar(255) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone_number` varchar(14) DEFAULT NULL,
  `postal_code` varchar(8) DEFAULT NULL,
  `addr01` varchar(255) DEFAULT NULL,
  `addr02` varchar(255) DEFAULT NULL,
  `birth` datetime DEFAULT NULL COMMENT '(DC2Type:datetimetz)',
  `subtotal` decimal(12,2) UNSIGNED NOT NULL DEFAULT '0.00',
  `discount` decimal(12,2) UNSIGNED NOT NULL DEFAULT '0.00',
  `delivery_fee_total` decimal(12,2) UNSIGNED NOT NULL DEFAULT '0.00',
  `charge` decimal(12,2) UNSIGNED NOT NULL DEFAULT '0.00',
  `tax` decimal(12,2) UNSIGNED NOT NULL DEFAULT '0.00',
  `total` decimal(12,2) UNSIGNED NOT NULL DEFAULT '0.00',
  `payment_total` decimal(12,2) UNSIGNED NOT NULL DEFAULT '0.00',
  `payment_method` varchar(255) DEFAULT NULL,
  `note` varchar(4000) DEFAULT NULL,
  `create_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `update_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `order_date` datetime DEFAULT NULL COMMENT '(DC2Type:datetimetz)',
  `payment_date` datetime DEFAULT NULL COMMENT '(DC2Type:datetimetz)',
  `currency_code` varchar(255) DEFAULT NULL,
  `complete_message` longtext,
  `complete_mail_message` longtext,
  `add_point` decimal(12,0) UNSIGNED NOT NULL DEFAULT '0',
  `use_point` decimal(12,0) UNSIGNED NOT NULL DEFAULT '0',
  `order_status_id` smallint(5) UNSIGNED DEFAULT NULL,
  `discriminator_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dtb_order_item`
--

CREATE TABLE `dtb_order_item` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED DEFAULT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `product_class_id` int(10) UNSIGNED DEFAULT NULL,
  `shipping_id` int(10) UNSIGNED DEFAULT NULL,
  `rounding_type_id` smallint(5) UNSIGNED DEFAULT NULL,
  `tax_type_id` smallint(5) UNSIGNED DEFAULT NULL,
  `tax_display_type_id` smallint(5) UNSIGNED DEFAULT NULL,
  `order_item_type_id` smallint(5) UNSIGNED DEFAULT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_code` varchar(255) DEFAULT NULL,
  `class_name1` varchar(255) DEFAULT NULL,
  `class_name2` varchar(255) DEFAULT NULL,
  `class_category_name1` varchar(255) DEFAULT NULL,
  `class_category_name2` varchar(255) DEFAULT NULL,
  `price` decimal(12,2) NOT NULL DEFAULT '0.00',
  `quantity` decimal(10,0) NOT NULL DEFAULT '0',
  `tax` decimal(10,0) NOT NULL DEFAULT '0',
  `tax_rate` decimal(10,0) UNSIGNED NOT NULL DEFAULT '0',
  `tax_rule_id` smallint(5) UNSIGNED DEFAULT NULL,
  `currency_code` varchar(255) DEFAULT NULL,
  `processor_name` varchar(255) DEFAULT NULL,
  `point_rate` decimal(10,0) UNSIGNED DEFAULT NULL,
  `discriminator_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dtb_order_pdf`
--

CREATE TABLE `dtb_order_pdf` (
  `member_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `message1` varchar(255) DEFAULT NULL,
  `message2` varchar(255) DEFAULT NULL,
  `message3` varchar(255) DEFAULT NULL,
  `note1` varchar(255) DEFAULT NULL,
  `note2` varchar(255) DEFAULT NULL,
  `note3` varchar(255) DEFAULT NULL,
  `create_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `update_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `visible` tinyint(1) NOT NULL DEFAULT '1',
  `discriminator_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dtb_page`
--

CREATE TABLE `dtb_page` (
  `id` int(10) UNSIGNED NOT NULL,
  `master_page_id` int(10) UNSIGNED DEFAULT NULL,
  `page_name` varchar(255) DEFAULT NULL,
  `url` varchar(255) NOT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `edit_type` smallint(5) UNSIGNED NOT NULL DEFAULT '1',
  `author` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `keyword` varchar(255) DEFAULT NULL,
  `create_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `update_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `meta_robots` varchar(255) DEFAULT NULL,
  `meta_tags` varchar(4000) DEFAULT NULL,
  `discriminator_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dtb_page`
--

INSERT INTO `dtb_page` (`id`, `master_page_id`, `page_name`, `url`, `file_name`, `edit_type`, `author`, `description`, `keyword`, `create_date`, `update_date`, `meta_robots`, `meta_tags`, `discriminator_type`) VALUES
(0, NULL, 'Xem trước', 'preview', NULL, 1, NULL, NULL, NULL, '2017-03-07 10:14:52', '2017-03-07 10:14:52', NULL, NULL, 'page'),
(1, NULL, 'Trang chủ', 'homepage', 'index', 2, NULL, NULL, NULL, '2017-03-07 10:14:52', '2017-03-07 10:14:52', NULL, NULL, 'page'),
(2, NULL, 'Danh sách sản phẩm', 'product_list', 'Product/list', 2, NULL, NULL, NULL, '2017-03-07 10:14:52', '2017-03-07 10:14:52', NULL, NULL, 'page'),
(3, NULL, 'Chi tiết sản phẩm', 'product_detail', 'Product/detail', 2, NULL, NULL, NULL, '2017-03-07 10:14:52', '2017-03-07 10:14:52', NULL, NULL, 'page'),
(4, NULL, 'Tài khoản của tôi', 'mypage', 'Mypage/index', 2, NULL, NULL, NULL, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'noindex', NULL, 'page'),
(5, NULL, 'Tài khoản của tôi / Chỉnh sửa thông tin', 'mypage_change', 'Mypage/change', 2, NULL, NULL, NULL, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'noindex', NULL, 'page'),
(6, NULL, 'Tài khoản của tôi / Chỉnh sửa thông tin (hoàn thành)', 'mypage_change_complete', 'Mypage/change_complete', 2, NULL, NULL, NULL, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'noindex', NULL, 'page'),
(7, NULL, 'Tài khoản của tôi / Tất cả các địa chỉ giao hàng', 'mypage_delivery', 'Mypage/delivery', 2, NULL, NULL, NULL, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'noindex', NULL, 'page'),
(8, NULL, 'Tài khoản của tôi / Thêm địa chỉ giao hàng', 'mypage_delivery_new', 'Mypage/delivery_edit', 2, NULL, NULL, NULL, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'noindex', NULL, 'page'),
(9, NULL, 'Tài khoản của tôi / Sản phẩm ưa thích', 'mypage_favorite', 'Mypage/favorite', 2, NULL, NULL, NULL, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'noindex', NULL, 'page'),
(10, NULL, 'Tài khoản của tôi / Lịch sử mua hàng', 'mypage_history', 'Mypage/history', 2, NULL, NULL, NULL, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'noindex', NULL, 'page'),
(11, NULL, 'Tài khoản của tôi / Đăng nhập', 'mypage_login', 'Mypage/login', 2, NULL, NULL, NULL, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'noindex', NULL, 'page'),
(12, NULL, 'Tài khoản của tôi / Hủy tài khoản', 'mypage_withdraw', 'Mypage/withdraw', 2, NULL, NULL, NULL, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'noindex', NULL, 'page'),
(13, NULL, 'Tài khoản của tôi / Hủy tài khoản (hoàn thành)', 'mypage_withdraw_complete', 'Mypage/withdraw_complete', 2, NULL, NULL, NULL, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'noindex', NULL, 'page'),
(14, NULL, 'Về chúng tôi', 'help_about', 'Help/about', 2, NULL, NULL, NULL, '2017-03-07 10:14:52', '2017-03-07 10:14:52', NULL, NULL, 'page'),
(15, NULL, 'Giỏ hàng', 'cart', 'Cart/index', 2, NULL, NULL, NULL, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'noindex', NULL, 'page'),
(16, NULL, 'Liên hệ', 'contact', 'Contact/index', 2, NULL, NULL, NULL, '2017-03-07 10:14:52', '2017-03-07 10:14:52', NULL, NULL, 'page'),
(17, NULL, 'Liên hệ (hoàn thành)', 'contact_complete', 'Contact/complete', 2, NULL, NULL, NULL, '2017-03-07 10:14:52', '2017-03-07 10:14:52', NULL, NULL, 'page'),
(18, NULL, 'Đăng ký', 'entry', 'Entry/index', 2, NULL, NULL, NULL, '2017-03-07 10:14:52', '2017-03-07 10:14:52', NULL, NULL, 'page'),
(19, NULL, 'Điều khoản và điều kiện', 'help_agreement', 'Help/agreement', 2, NULL, NULL, NULL, '2017-03-07 10:14:52', '2017-03-07 10:14:52', NULL, NULL, 'page'),
(20, NULL, 'Đăng ký tạm thời hoàn thành', 'entry_complete', 'Entry/complete', 2, NULL, NULL, NULL, '2017-03-07 10:14:52', '2017-03-07 10:14:52', NULL, NULL, 'page'),
(21, NULL, 'Chính sách giao hàng và trả hàng', 'help_tradelaw', 'Help/tradelaw', 2, NULL, NULL, NULL, '2017-03-07 10:14:52', '2017-03-07 10:14:52', NULL, NULL, 'page'),
(22, NULL, 'Đăng ký thành viên (kích hoạt)', 'entry_activate', 'Entry/activate', 2, NULL, NULL, NULL, '2017-03-07 10:14:52', '2017-03-07 10:14:52', NULL, NULL, 'page'),
(23, NULL, 'Mua hàng', 'shopping', 'Shopping/index', 2, NULL, NULL, NULL, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'noindex', NULL, 'page'),
(24, NULL, 'Mua hàng / Địa chỉ giao hàng', 'shopping_shipping', 'Shopping/shipping', 2, NULL, NULL, NULL, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'noindex', NULL, 'page'),
(25, NULL, 'Mua hàng / Chọn nhiều địa chỉ giao hàng', 'shopping_shipping_multiple', 'Shopping/shipping_multiple', 2, NULL, NULL, NULL, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'noindex', NULL, 'page'),
(28, NULL, 'Mua hàng / Hoàn thành', 'shopping_complete', 'Shopping/complete', 2, NULL, NULL, NULL, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'noindex', NULL, 'page'),
(29, NULL, 'Chính sách bảo mật', 'help_privacy', 'Help/privacy', 2, NULL, NULL, NULL, '2017-03-07 10:14:52', '2017-03-07 10:14:52', NULL, NULL, 'page'),
(30, NULL, 'Đăng nhập', 'shopping_login', 'Shopping/login', 2, NULL, NULL, NULL, '2017-03-07 10:14:52', '2017-03-07 10:14:52', NULL, NULL, 'page'),
(31, NULL, 'Mua hàng không cần tài khoản', 'shopping_nonmember', 'Shopping/nonmember', 2, NULL, NULL, NULL, '2017-03-07 10:14:52', '2017-03-07 10:14:52', NULL, NULL, 'page'),
(32, NULL, 'Mua hàng / Thêm-sửa địa chỉ giao hàng', 'shopping_shipping_edit', 'Shopping/shipping_edit', 2, NULL, NULL, NULL, '2017-03-07 01:15:02', '2017-03-07 01:15:02', 'noindex', NULL, 'page'),
(33, NULL, 'Mua hàng / Giao hàng nhiều địa chỉ (Thêm địa chỉ giao hàng)', 'shopping_shipping_multiple_edit', 'Shopping/shipping_multiple_edit', 2, NULL, NULL, NULL, '2017-03-07 01:15:02', '2017-03-07 01:15:02', 'noindex', NULL, 'page'),
(34, NULL, 'Mua hàng / Lỗi', 'shopping_error', 'Shopping/shopping_error', 2, NULL, NULL, NULL, '2017-03-07 01:15:02', '2017-03-07 01:15:02', 'noindex', NULL, 'page'),
(35, NULL, 'Hướng dẫn mua hàng', 'help_guide', 'Help/guide', 2, NULL, NULL, NULL, '2017-03-07 01:15:02', '2017-03-07 01:15:02', NULL, NULL, 'page'),
(36, NULL, 'Cài đặt lại mật khẩu', 'forgot', 'Forgot/index', 2, NULL, NULL, NULL, '2017-03-07 01:15:02', '2017-03-07 01:15:02', NULL, NULL, 'page'),
(37, NULL, 'Cài đặt lại mật khẩu (cảm ơn)', 'forgot_complete', 'Forgot/complete', 2, NULL, NULL, NULL, '2017-03-07 01:15:02', '2017-03-07 01:15:02', 'noindex', NULL, 'page'),
(38, NULL, 'Cài đặt lại mật khẩu (Nhập mật khẩu mới)', 'forgot_reset', 'Forgot/reset', 2, NULL, NULL, NULL, '2017-03-07 01:15:02', '2017-03-07 01:15:05', 'noindex', NULL, 'page'),
(42, NULL, 'Mua hàng / Thay đổi địa chỉ giao hàng', 'shopping_shipping_edit_change', 'Shopping/index', 2, NULL, NULL, NULL, '2017-03-07 01:15:03', '2017-03-07 01:15:03', 'noindex', NULL, 'page'),
(44, 8, 'Tài khoản của tôi / Chỉnh sửa địa chỉ giao hàng', 'mypage_delivery_edit', 'Mypage/delivery_edit', 2, NULL, NULL, NULL, '2017-03-07 01:15:05', '2017-03-07 01:15:05', 'noindex', NULL, 'page'),
(45, NULL, 'Mua sắm / Xác nhận', 'shopping_confirm', 'Shopping/confirm', 2, NULL, NULL, NULL, '2017-03-07 01:15:03', '2017-03-07 01:15:03', 'noindex', NULL, 'page'),
(46, NULL, 'Tìm kiếm mã bưu điện', 'help_postalcode', 'Help/postalcode', 2, NULL, NULL, NULL, '2017-03-07 01:15:03', '2017-03-07 01:15:03', 'noindex', NULL, 'page');

-- --------------------------------------------------------

--
-- Table structure for table `dtb_page_layout`
--

CREATE TABLE `dtb_page_layout` (
  `page_id` int(10) UNSIGNED NOT NULL,
  `layout_id` int(10) UNSIGNED NOT NULL,
  `sort_no` smallint(5) UNSIGNED NOT NULL,
  `discriminator_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dtb_page_layout`
--

INSERT INTO `dtb_page_layout` (`page_id`, `layout_id`, `sort_no`, `discriminator_type`) VALUES
(0, 0, 2, 'pagelayout'),
(1, 1, 42, 'pagelayout'),
(2, 2, 4, 'pagelayout'),
(3, 2, 5, 'pagelayout'),
(4, 2, 6, 'pagelayout'),
(5, 2, 7, 'pagelayout'),
(6, 2, 8, 'pagelayout'),
(7, 2, 36, 'pagelayout'),
(8, 2, 37, 'pagelayout'),
(9, 2, 9, 'pagelayout'),
(10, 2, 10, 'pagelayout'),
(11, 2, 11, 'pagelayout'),
(12, 2, 12, 'pagelayout'),
(13, 2, 14, 'pagelayout'),
(14, 2, 13, 'pagelayout'),
(15, 2, 15, 'pagelayout'),
(16, 2, 16, 'pagelayout'),
(17, 2, 17, 'pagelayout'),
(18, 2, 18, 'pagelayout'),
(19, 2, 33, 'pagelayout'),
(20, 2, 19, 'pagelayout'),
(21, 2, 20, 'pagelayout'),
(22, 2, 21, 'pagelayout'),
(23, 2, 35, 'pagelayout'),
(24, 2, 22, 'pagelayout'),
(25, 2, 34, 'pagelayout'),
(28, 2, 23, 'pagelayout'),
(29, 2, 24, 'pagelayout'),
(30, 2, 25, 'pagelayout'),
(31, 2, 26, 'pagelayout'),
(32, 2, 27, 'pagelayout'),
(33, 2, 28, 'pagelayout'),
(34, 2, 29, 'pagelayout'),
(35, 2, 30, 'pagelayout'),
(36, 2, 31, 'pagelayout'),
(37, 2, 32, 'pagelayout'),
(38, 2, 39, 'pagelayout'),
(42, 2, 38, 'pagelayout'),
(44, 2, 40, 'pagelayout'),
(45, 2, 41, 'pagelayout'),
(46, 2, 42, 'pagelayout');

-- --------------------------------------------------------

--
-- Table structure for table `dtb_payment`
--

CREATE TABLE `dtb_payment` (
  `id` int(10) UNSIGNED NOT NULL,
  `creator_id` int(10) UNSIGNED DEFAULT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `charge` decimal(12,2) UNSIGNED DEFAULT '0.00',
  `rule_max` decimal(12,2) UNSIGNED DEFAULT NULL,
  `sort_no` smallint(5) UNSIGNED DEFAULT NULL,
  `fixed` tinyint(1) NOT NULL DEFAULT '1',
  `payment_image` varchar(255) DEFAULT NULL,
  `rule_min` decimal(12,2) UNSIGNED DEFAULT NULL,
  `method_class` varchar(255) DEFAULT NULL,
  `visible` tinyint(1) NOT NULL DEFAULT '1',
  `create_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `update_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `discriminator_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dtb_payment`
--

INSERT INTO `dtb_payment` (`id`, `creator_id`, `payment_method`, `charge`, `rule_max`, `sort_no`, `fixed`, `payment_image`, `rule_min`, `method_class`, `visible`, `create_date`, `update_date`, `discriminator_type`) VALUES
(1, NULL, 'Thanh toán khi giao hàng', '0.00', NULL, 1, 1, NULL, '0.00', 'Eccube\\Service\\Payment\\Method\\Cash', 1, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'payment');

-- --------------------------------------------------------

--
-- Table structure for table `dtb_payment_option`
--

CREATE TABLE `dtb_payment_option` (
  `delivery_id` int(10) UNSIGNED NOT NULL,
  `payment_id` int(10) UNSIGNED NOT NULL,
  `discriminator_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dtb_payment_option`
--

INSERT INTO `dtb_payment_option` (`delivery_id`, `payment_id`, `discriminator_type`) VALUES
(1, 1, 'paymentoption'),
(2, 1, 'paymentoption');

-- --------------------------------------------------------

--
-- Table structure for table `dtb_plugin`
--

CREATE TABLE `dtb_plugin` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  `version` varchar(255) NOT NULL,
  `source` varchar(255) NOT NULL,
  `initialized` tinyint(1) NOT NULL DEFAULT '0',
  `create_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `update_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `discriminator_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dtb_product`
--

CREATE TABLE `dtb_product` (
  `id` int(10) UNSIGNED NOT NULL,
  `creator_id` int(10) UNSIGNED DEFAULT NULL,
  `product_status_id` smallint(5) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `note` varchar(4000) DEFAULT NULL,
  `description_list` varchar(4000) DEFAULT NULL,
  `description_detail` varchar(4000) DEFAULT NULL,
  `search_word` varchar(4000) DEFAULT NULL,
  `free_area` longtext,
  `create_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `update_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `discriminator_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dtb_product`
--

INSERT INTO `dtb_product` (`id`, `creator_id`, `product_status_id`, `name`, `note`, `description_list`, `description_detail`, `search_word`, `free_area`, `create_date`, `update_date`, `discriminator_type`) VALUES
(1, NULL, 1, 'CUBE đầy màu sắc', NULL, NULL, 'CUBE gelatos là tốt ngay cả trong mùa đông. Hương vị sô cô la phổ biến có hương vị sô cô la ngọt ngào của nó. Đó là người bán lâu năm của chúng tôi vì độ ngọt khiêm tốn và kích thước tốt cho người Nhật. Hương vị vani hạng nhất là một món quà yêu thích.', NULL, NULL, '2018-09-28 10:14:52', '2018-09-28 10:14:52', 'product'),
(2, NULL, 1, 'Sandwich kem Cherry', NULL, NULL, 'Kem cherry do Hokkaido sản xuất được kẹp với bánh quy giòn. Dễ dàng mang lại nhiều vì hình dạng hình khối của nó. Đi kèm trong một hộp rắn miễn phí chỉ có sẵn bây giờ.', NULL, NULL, '2018-09-28 10:14:52', '2018-09-28 10:14:52', 'product'),
(3, 1, 1, 'CUBE đầy màu sắc', NULL, NULL, 'CUBE gelatos là tốt ngay cả trong mùa đông. Hương vị sô cô la phổ biến có hương vị sô cô la ngọt ngào của nó. Đó là người bán lâu năm của chúng tôi vì độ ngọt khiêm tốn và kích thước tốt cho người Nhật. Hương vị vani hạng nhất là một món quà yêu thích.', NULL, NULL, '2019-05-06 07:13:52', '2019-05-06 07:14:13', 'product'),
(4, 1, 1, 'Sandwich kem Cherry', NULL, NULL, 'Kem cherry do Hokkaido sản xuất được kẹp với bánh quy giòn. Dễ dàng mang lại nhiều vì hình dạng hình khối của nó. Đi kèm trong một hộp rắn miễn phí chỉ có sẵn bây giờ.', NULL, NULL, '2019-05-06 07:14:00', '2019-05-06 07:14:04', 'product'),
(5, 1, 1, 'CUBE đầy màu sắc', NULL, NULL, 'CUBE gelatos là tốt ngay cả trong mùa đông. Hương vị sô cô la phổ biến có hương vị sô cô la ngọt ngào của nó. Đó là người bán lâu năm của chúng tôi vì độ ngọt khiêm tốn và kích thước tốt cho người Nhật. Hương vị vani hạng nhất là một món quà yêu thích.', NULL, NULL, '2019-05-06 07:14:17', '2019-05-06 07:14:20', 'product');

-- --------------------------------------------------------

--
-- Table structure for table `dtb_product_category`
--

CREATE TABLE `dtb_product_category` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `discriminator_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dtb_product_category`
--

INSERT INTO `dtb_product_category` (`product_id`, `category_id`, `discriminator_type`) VALUES
(1, 1, 'productcategory'),
(1, 2, 'productcategory'),
(1, 3, 'productcategory'),
(1, 4, 'productcategory'),
(2, 2, 'productcategory'),
(2, 5, 'productcategory'),
(2, 6, 'productcategory'),
(3, 1, 'productcategory'),
(3, 2, 'productcategory'),
(3, 3, 'productcategory'),
(3, 4, 'productcategory'),
(4, 2, 'productcategory'),
(4, 5, 'productcategory'),
(4, 6, 'productcategory'),
(5, 1, 'productcategory'),
(5, 2, 'productcategory'),
(5, 3, 'productcategory'),
(5, 4, 'productcategory');

-- --------------------------------------------------------

--
-- Table structure for table `dtb_product_class`
--

CREATE TABLE `dtb_product_class` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `sale_type_id` smallint(5) UNSIGNED DEFAULT NULL,
  `class_category_id1` int(10) UNSIGNED DEFAULT NULL,
  `class_category_id2` int(10) UNSIGNED DEFAULT NULL,
  `delivery_duration_id` int(10) UNSIGNED DEFAULT NULL,
  `creator_id` int(10) UNSIGNED DEFAULT NULL,
  `product_code` varchar(255) DEFAULT NULL,
  `stock` decimal(10,0) DEFAULT NULL,
  `stock_unlimited` tinyint(1) NOT NULL DEFAULT '0',
  `sale_limit` decimal(10,0) UNSIGNED DEFAULT NULL,
  `price01` decimal(12,2) DEFAULT NULL,
  `price02` decimal(12,2) NOT NULL,
  `delivery_fee` decimal(12,2) UNSIGNED DEFAULT NULL,
  `visible` tinyint(1) NOT NULL DEFAULT '1',
  `create_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `update_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `currency_code` varchar(255) DEFAULT NULL,
  `point_rate` decimal(10,0) UNSIGNED DEFAULT NULL,
  `discriminator_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dtb_product_class`
--

INSERT INTO `dtb_product_class` (`id`, `product_id`, `sale_type_id`, `class_category_id1`, `class_category_id2`, `delivery_duration_id`, `creator_id`, `product_code`, `stock`, `stock_unlimited`, `sale_limit`, `price01`, `price02`, `delivery_fee`, `visible`, `create_date`, `update_date`, `currency_code`, `point_rate`, `discriminator_type`) VALUES
(0, 1, 1, NULL, NULL, NULL, NULL, 'cube-01', NULL, 1, NULL, '115000.00', '110000.00', NULL, 0, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'JPY', NULL, 'productclass'),
(1, 1, 1, 3, 6, NULL, NULL, 'cube-01', NULL, 1, NULL, '115000.00', '110000.00', NULL, 1, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'JPY', NULL, 'productclass'),
(2, 1, 1, 3, 5, NULL, NULL, 'cube-02', NULL, 1, NULL, '95000.00', '93000.00', NULL, 1, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'JPY', NULL, 'productclass'),
(3, 1, 1, 3, 4, NULL, NULL, 'cube-03', NULL, 1, NULL, '75000.00', '74000.00', NULL, 1, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'JPY', NULL, 'productclass'),
(4, 1, 1, 2, 6, NULL, NULL, 'cube-04', NULL, 1, NULL, '95000.00', '93000.00', NULL, 1, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'JPY', NULL, 'productclass'),
(5, 1, 1, 2, 5, NULL, NULL, 'cube-05', NULL, 1, NULL, '50000.00', '49000.00', NULL, 1, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'JPY', NULL, 'productclass'),
(6, 1, 1, 2, 4, NULL, NULL, 'cube-06', NULL, 1, NULL, '35000.00', '34500.00', NULL, 1, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'JPY', NULL, 'productclass'),
(7, 1, 1, 1, 6, NULL, NULL, 'cube-07', NULL, 1, NULL, NULL, '180000.00', NULL, 1, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'JPY', NULL, 'productclass'),
(8, 1, 1, 1, 5, NULL, NULL, 'cube-08', NULL, 1, NULL, NULL, '130000.00', NULL, 1, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'JPY', NULL, 'productclass'),
(9, 1, 1, 1, 4, NULL, NULL, 'cube-09', NULL, 1, NULL, NULL, '50000.00', NULL, 1, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'JPY', NULL, 'productclass'),
(10, 2, 1, NULL, NULL, NULL, 1, 'sand-01', '100', 0, '5', '3000.00', '28000.00', NULL, 1, '2017-03-07 10:14:52', '2019-05-06 07:13:21', 'JPY', NULL, 'productclass'),
(11, 3, 1, NULL, NULL, NULL, 1, 'cube-01', NULL, 1, NULL, '115000.00', '110000.00', NULL, 0, '2019-05-06 07:13:52', '2019-05-06 07:13:52', 'VND', NULL, 'productclass'),
(12, 3, 1, 3, 6, NULL, 1, 'cube-01', NULL, 1, NULL, '115000.00', '110000.00', NULL, 1, '2019-05-06 07:13:52', '2019-05-06 07:13:52', 'VND', NULL, 'productclass'),
(13, 3, 1, 3, 5, NULL, 1, 'cube-02', NULL, 1, NULL, '95000.00', '93000.00', NULL, 1, '2019-05-06 07:13:52', '2019-05-06 07:13:52', 'VND', NULL, 'productclass'),
(14, 3, 1, 3, 4, NULL, 1, 'cube-03', NULL, 1, NULL, '75000.00', '74000.00', NULL, 1, '2019-05-06 07:13:52', '2019-05-06 07:13:52', 'VND', NULL, 'productclass'),
(15, 3, 1, 2, 6, NULL, 1, 'cube-04', NULL, 1, NULL, '95000.00', '93000.00', NULL, 1, '2019-05-06 07:13:52', '2019-05-06 07:13:52', 'VND', NULL, 'productclass'),
(16, 3, 1, 2, 5, NULL, 1, 'cube-05', NULL, 1, NULL, '50000.00', '49000.00', NULL, 1, '2019-05-06 07:13:52', '2019-05-06 07:13:52', 'VND', NULL, 'productclass'),
(17, 3, 1, 2, 4, NULL, 1, 'cube-06', NULL, 1, NULL, '35000.00', '34500.00', NULL, 1, '2019-05-06 07:13:52', '2019-05-06 07:13:52', 'VND', NULL, 'productclass'),
(18, 3, 1, 1, 6, NULL, 1, 'cube-07', NULL, 1, NULL, NULL, '180000.00', NULL, 1, '2019-05-06 07:13:52', '2019-05-06 07:13:52', 'VND', NULL, 'productclass'),
(19, 3, 1, 1, 5, NULL, 1, 'cube-08', NULL, 1, NULL, NULL, '130000.00', NULL, 1, '2019-05-06 07:13:52', '2019-05-06 07:13:52', 'VND', NULL, 'productclass'),
(20, 3, 1, 1, 4, NULL, 1, 'cube-09', NULL, 1, NULL, NULL, '50000.00', NULL, 1, '2019-05-06 07:13:52', '2019-05-06 07:13:52', 'VND', NULL, 'productclass'),
(21, 3, 1, NULL, NULL, NULL, 1, 'cube-01', NULL, 1, NULL, '115000.00', '110000.00', NULL, 0, '2019-05-06 07:13:52', '2019-05-06 07:13:52', 'VND', NULL, 'productclass'),
(22, 4, 1, NULL, NULL, NULL, 1, 'sand-01', '100', 0, '5', '3000.00', '28000.00', NULL, 1, '2019-05-06 07:14:00', '2019-05-06 07:14:04', 'VND', NULL, 'productclass'),
(23, 5, 1, NULL, NULL, NULL, 1, 'cube-01', NULL, 1, NULL, '115000.00', '110000.00', NULL, 0, '2019-05-06 07:14:17', '2019-05-06 07:14:17', 'VND', NULL, 'productclass'),
(24, 5, 1, 3, 6, NULL, 1, 'cube-01', NULL, 1, NULL, '115000.00', '110000.00', NULL, 1, '2019-05-06 07:14:17', '2019-05-06 07:14:17', 'VND', NULL, 'productclass'),
(25, 5, 1, 3, 5, NULL, 1, 'cube-02', NULL, 1, NULL, '95000.00', '93000.00', NULL, 1, '2019-05-06 07:14:17', '2019-05-06 07:14:17', 'VND', NULL, 'productclass'),
(26, 5, 1, 3, 4, NULL, 1, 'cube-03', NULL, 1, NULL, '75000.00', '74000.00', NULL, 1, '2019-05-06 07:14:17', '2019-05-06 07:14:17', 'VND', NULL, 'productclass'),
(27, 5, 1, 2, 6, NULL, 1, 'cube-04', NULL, 1, NULL, '95000.00', '93000.00', NULL, 1, '2019-05-06 07:14:17', '2019-05-06 07:14:17', 'VND', NULL, 'productclass'),
(28, 5, 1, 2, 5, NULL, 1, 'cube-05', NULL, 1, NULL, '50000.00', '49000.00', NULL, 1, '2019-05-06 07:14:17', '2019-05-06 07:14:17', 'VND', NULL, 'productclass'),
(29, 5, 1, 2, 4, NULL, 1, 'cube-06', NULL, 1, NULL, '35000.00', '34500.00', NULL, 1, '2019-05-06 07:14:17', '2019-05-06 07:14:17', 'VND', NULL, 'productclass'),
(30, 5, 1, 1, 6, NULL, 1, 'cube-07', NULL, 1, NULL, NULL, '180000.00', NULL, 1, '2019-05-06 07:14:17', '2019-05-06 07:14:17', 'VND', NULL, 'productclass'),
(31, 5, 1, 1, 5, NULL, 1, 'cube-08', NULL, 1, NULL, NULL, '130000.00', NULL, 1, '2019-05-06 07:14:17', '2019-05-06 07:14:17', 'VND', NULL, 'productclass'),
(32, 5, 1, 1, 4, NULL, 1, 'cube-09', NULL, 1, NULL, NULL, '50000.00', NULL, 1, '2019-05-06 07:14:17', '2019-05-06 07:14:17', 'VND', NULL, 'productclass'),
(33, 5, 1, NULL, NULL, NULL, 1, 'cube-01', NULL, 1, NULL, '115000.00', '110000.00', NULL, 0, '2019-05-06 07:14:17', '2019-05-06 07:14:17', 'VND', NULL, 'productclass'),
(34, 5, 1, NULL, NULL, NULL, 1, 'cube-01', NULL, 1, NULL, '115000.00', '110000.00', NULL, 0, '2019-05-06 07:14:17', '2019-05-06 07:14:17', 'VND', NULL, 'productclass');

-- --------------------------------------------------------

--
-- Table structure for table `dtb_product_image`
--

CREATE TABLE `dtb_product_image` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `creator_id` int(10) UNSIGNED DEFAULT NULL,
  `file_name` varchar(255) NOT NULL,
  `sort_no` smallint(5) UNSIGNED NOT NULL,
  `create_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `discriminator_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dtb_product_image`
--

INSERT INTO `dtb_product_image` (`id`, `product_id`, `creator_id`, `file_name`, `sort_no`, `create_date`, `discriminator_type`) VALUES
(7, 1, 1, '0506140956_5ccfddc46d57a.jpg', 1, '2019-05-06 07:10:01', 'productimage'),
(8, 2, 1, '0506141319_5ccfde8f66224.jpg', 1, '2019-05-06 07:13:21', 'productimage'),
(9, 3, 1, '0506141352_5ccfdeb04fdcb.jpg', 1, '2019-05-06 07:13:52', 'productimage'),
(10, 4, 1, '0506141400_5ccfdeb84443d.jpg', 1, '2019-05-06 07:14:00', 'productimage'),
(11, 5, 1, '0506141417_5ccfdec9a6b4d.jpg', 1, '2019-05-06 07:14:17', 'productimage'),
(12, 5, 1, '0506142241_5ccfe0c15d2ff.jpg', 2, '2019-05-06 07:22:43', 'productimage');

-- --------------------------------------------------------

--
-- Table structure for table `dtb_product_stock`
--

CREATE TABLE `dtb_product_stock` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_class_id` int(10) UNSIGNED DEFAULT NULL,
  `creator_id` int(10) UNSIGNED DEFAULT NULL,
  `stock` decimal(10,0) DEFAULT NULL,
  `create_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `update_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `discriminator_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dtb_product_stock`
--

INSERT INTO `dtb_product_stock` (`id`, `product_class_id`, `creator_id`, `stock`, `create_date`, `update_date`, `discriminator_type`) VALUES
(1, 0, NULL, NULL, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'productstock'),
(2, 1, NULL, NULL, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'productstock'),
(3, 2, NULL, NULL, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'productstock'),
(4, 3, NULL, NULL, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'productstock'),
(5, 4, NULL, NULL, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'productstock'),
(6, 5, NULL, NULL, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'productstock'),
(7, 6, NULL, NULL, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'productstock'),
(8, 7, NULL, NULL, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'productstock'),
(9, 8, NULL, NULL, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'productstock'),
(10, 9, NULL, NULL, '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'productstock'),
(11, 10, 1, '100', '2017-03-07 10:14:52', '2019-05-06 07:13:21', 'productstock'),
(12, 11, 1, NULL, '2019-05-06 07:13:52', '2019-05-06 07:13:52', 'productstock'),
(13, 12, 1, NULL, '2019-05-06 07:13:52', '2019-05-06 07:13:52', 'productstock'),
(14, 13, 1, NULL, '2019-05-06 07:13:52', '2019-05-06 07:13:52', 'productstock'),
(15, 14, 1, NULL, '2019-05-06 07:13:52', '2019-05-06 07:13:52', 'productstock'),
(16, 15, 1, NULL, '2019-05-06 07:13:52', '2019-05-06 07:13:52', 'productstock'),
(17, 16, 1, NULL, '2019-05-06 07:13:52', '2019-05-06 07:13:52', 'productstock'),
(18, 17, 1, NULL, '2019-05-06 07:13:52', '2019-05-06 07:13:52', 'productstock'),
(19, 18, 1, NULL, '2019-05-06 07:13:52', '2019-05-06 07:13:52', 'productstock'),
(20, 19, 1, NULL, '2019-05-06 07:13:52', '2019-05-06 07:13:52', 'productstock'),
(21, 20, 1, NULL, '2019-05-06 07:13:52', '2019-05-06 07:13:52', 'productstock'),
(22, 21, 1, NULL, '2019-05-06 07:13:52', '2019-05-06 07:13:52', 'productstock'),
(23, 22, 1, '100', '2019-05-06 07:14:00', '2019-05-06 07:14:04', 'productstock'),
(24, 23, 1, NULL, '2019-05-06 07:14:17', '2019-05-06 07:14:17', 'productstock'),
(25, 24, 1, NULL, '2019-05-06 07:14:17', '2019-05-06 07:14:17', 'productstock'),
(26, 25, 1, NULL, '2019-05-06 07:14:17', '2019-05-06 07:14:17', 'productstock'),
(27, 26, 1, NULL, '2019-05-06 07:14:17', '2019-05-06 07:14:17', 'productstock'),
(28, 27, 1, NULL, '2019-05-06 07:14:17', '2019-05-06 07:14:17', 'productstock'),
(29, 28, 1, NULL, '2019-05-06 07:14:17', '2019-05-06 07:14:17', 'productstock'),
(30, 29, 1, NULL, '2019-05-06 07:14:17', '2019-05-06 07:14:17', 'productstock'),
(31, 30, 1, NULL, '2019-05-06 07:14:17', '2019-05-06 07:14:17', 'productstock'),
(32, 31, 1, NULL, '2019-05-06 07:14:17', '2019-05-06 07:14:17', 'productstock'),
(33, 32, 1, NULL, '2019-05-06 07:14:17', '2019-05-06 07:14:17', 'productstock'),
(34, 33, 1, NULL, '2019-05-06 07:14:17', '2019-05-06 07:14:17', 'productstock'),
(35, 34, 1, NULL, '2019-05-06 07:14:17', '2019-05-06 07:14:17', 'productstock');

-- --------------------------------------------------------

--
-- Table structure for table `dtb_product_tag`
--

CREATE TABLE `dtb_product_tag` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `tag_id` int(10) UNSIGNED DEFAULT NULL,
  `creator_id` int(10) UNSIGNED DEFAULT NULL,
  `create_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `discriminator_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dtb_shipping`
--

CREATE TABLE `dtb_shipping` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED DEFAULT NULL,
  `country_id` smallint(5) UNSIGNED DEFAULT NULL,
  `pref_id` smallint(5) UNSIGNED DEFAULT NULL,
  `delivery_id` int(10) UNSIGNED DEFAULT NULL,
  `creator_id` int(10) UNSIGNED DEFAULT NULL,
  `name01` varchar(255) NOT NULL,
  `name02` varchar(255) NOT NULL,
  `kana01` varchar(255) DEFAULT NULL,
  `kana02` varchar(255) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `phone_number` varchar(14) DEFAULT NULL,
  `postal_code` varchar(8) DEFAULT NULL,
  `addr01` varchar(255) DEFAULT NULL,
  `addr02` varchar(255) DEFAULT NULL,
  `delivery_name` varchar(255) DEFAULT NULL,
  `time_id` int(10) UNSIGNED DEFAULT NULL,
  `delivery_time` varchar(255) DEFAULT NULL,
  `delivery_date` datetime DEFAULT NULL COMMENT '(DC2Type:datetimetz)',
  `shipping_date` datetime DEFAULT NULL COMMENT '(DC2Type:datetimetz)',
  `tracking_number` varchar(255) DEFAULT NULL,
  `note` varchar(4000) DEFAULT NULL,
  `sort_no` smallint(5) UNSIGNED DEFAULT NULL,
  `create_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `update_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `mail_send_date` datetime DEFAULT NULL COMMENT '(DC2Type:datetimetz)',
  `discriminator_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dtb_tag`
--

CREATE TABLE `dtb_tag` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `sort_no` smallint(5) UNSIGNED NOT NULL,
  `discriminator_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dtb_tag`
--

INSERT INTO `dtb_tag` (`id`, `name`, `sort_no`, `discriminator_type`) VALUES
(1, 'Sản phẩm mới', 1, 'tag'),
(2, 'Lựa chọn của chúng tôi', 2, 'tag'),
(3, 'Sản phẩm giới hạn', 3, 'tag');

-- --------------------------------------------------------

--
-- Table structure for table `dtb_tax_rule`
--

CREATE TABLE `dtb_tax_rule` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_class_id` int(10) UNSIGNED DEFAULT NULL,
  `creator_id` int(10) UNSIGNED DEFAULT NULL,
  `country_id` smallint(5) UNSIGNED DEFAULT NULL,
  `pref_id` smallint(5) UNSIGNED DEFAULT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `rounding_type_id` smallint(5) UNSIGNED DEFAULT NULL,
  `tax_rate` decimal(10,0) UNSIGNED NOT NULL DEFAULT '8',
  `tax_adjust` decimal(10,0) UNSIGNED NOT NULL DEFAULT '0',
  `apply_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `create_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `update_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `discriminator_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dtb_tax_rule`
--

INSERT INTO `dtb_tax_rule` (`id`, `product_class_id`, `creator_id`, `country_id`, `pref_id`, `product_id`, `rounding_type_id`, `tax_rate`, `tax_adjust`, `apply_date`, `create_date`, `update_date`, `discriminator_type`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, 1, '10', '0', '2019-01-08 10:14:52', '2019-01-08 10:14:52', '2019-01-08 10:14:52', 'taxrule');

-- --------------------------------------------------------

--
-- Table structure for table `dtb_template`
--

CREATE TABLE `dtb_template` (
  `id` int(10) UNSIGNED NOT NULL,
  `device_type_id` smallint(5) UNSIGNED DEFAULT NULL,
  `template_code` varchar(255) NOT NULL,
  `template_name` varchar(255) NOT NULL,
  `create_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `update_date` datetime NOT NULL COMMENT '(DC2Type:datetimetz)',
  `discriminator_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dtb_template`
--

INSERT INTO `dtb_template` (`id`, `device_type_id`, `template_code`, `template_name`, `create_date`, `update_date`, `discriminator_type`) VALUES
(1, 10, 'default', 'Default', '2017-03-07 10:14:52', '2017-03-07 10:14:52', 'template');

-- --------------------------------------------------------

--
-- Table structure for table `mtb_authority`
--

CREATE TABLE `mtb_authority` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `sort_no` smallint(5) UNSIGNED NOT NULL,
  `discriminator_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mtb_authority`
--

INSERT INTO `mtb_authority` (`id`, `name`, `sort_no`, `discriminator_type`) VALUES
(0, 'Quản lý hệ thống', 0, 'authority'),
(1, 'Chủ cửa hàng', 1, 'authority');

-- --------------------------------------------------------

--
-- Table structure for table `mtb_country`
--

CREATE TABLE `mtb_country` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `sort_no` smallint(5) UNSIGNED NOT NULL,
  `discriminator_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mtb_country`
--

INSERT INTO `mtb_country` (`id`, `name`, `sort_no`, `discriminator_type`) VALUES
(4, 'Afghanistan', 4, 'country'),
(8, 'Albania', 12, 'country'),
(10, 'Antarctic', 149, 'country'),
(12, 'Algeria', 9, 'country'),
(16, 'American Samoa', 7, 'country'),
(20, 'Andorra', 17, 'country'),
(24, 'Angola', 15, 'country'),
(28, 'Antigua and Barbuda', 16, 'country'),
(31, 'Azerbaijan', 3, 'country'),
(32, 'Argentina', 10, 'country'),
(36, 'Australia', 39, 'country'),
(40, 'Austria', 40, 'country'),
(44, 'The Bahamas', 167, 'country'),
(48, 'Bahrain', 161, 'country'),
(50, 'Bangladesh', 175, 'country'),
(51, 'Armenia', 13, 'country'),
(52, 'Barbados', 172, 'country'),
(56, 'Belgium', 201, 'country'),
(60, 'Bermuda Islands | Bermuda', 169, 'country'),
(64, 'Bhutan', 181, 'country'),
(68, 'Bolivia | Bolivia Multi Ethnic Countries', 206, 'country'),
(70, 'Bosnia-Herzegovina', 203, 'country'),
(72, 'Botswana', 204, 'country'),
(74, 'Bouvet Island', 182, 'country'),
(76, 'Brazil', 186, 'country'),
(84, 'Belize', 199, 'country'),
(86, 'British Indian Ocean Territory', 20, 'country'),
(90, 'Solomon Islands', 121, 'country'),
(92, 'British Virgin Islands', 21, 'country'),
(96, 'Brunei | Brunei Darussalam', 193, 'country'),
(100, 'Bulgaria', 191, 'country'),
(104, 'Myanmar', 224, 'country'),
(108, 'Burundi', 194, 'country'),
(112, 'Belarus', 198, 'country'),
(116, 'Cambodia', 55, 'country'),
(120, 'Cameroon', 53, 'country'),
(124, 'Canada', 51, 'country'),
(132, 'Cabo Verde', 45, 'country'),
(136, 'Cayman Islands', 75, 'country'),
(140, 'Central African Republic', 130, 'country'),
(144, 'Sri Lanka', 108, 'country'),
(148, 'Chad', 129, 'country'),
(152, 'Chile', 134, 'country'),
(156, 'People\'s Republic of China | China', 131, 'country'),
(158, 'Taiwan', 125, 'country'),
(162, 'Christmas Island (Australia) | Christmas Island', 71, 'country'),
(166, 'Cocos Islands | Cocos (Keeling) Islands', 78, 'country'),
(170, 'Columbia', 81, 'country'),
(174, 'Comoros', 80, 'country'),
(175, 'Mayotte', 214, 'country'),
(178, 'Republic of Congo', 82, 'country'),
(180, 'Democratic Republic of the Congo', 83, 'country'),
(184, 'Cook Islands', 69, 'country'),
(188, 'Costa Rica', 79, 'country'),
(191, 'Croatia', 74, 'country'),
(192, 'Cuba', 60, 'country'),
(196, 'Cyprus', 59, 'country'),
(203, 'Czech', 128, 'country'),
(204, 'Benin', 196, 'country'),
(208, 'Denmark', 136, 'country'),
(212, 'Dominica country', 141, 'country'),
(214, 'Dominican Republic', 140, 'country'),
(218, 'Ecuador', 33, 'country'),
(222, 'El Salvador', 38, 'country'),
(226, 'Equatorial Guinea', 113, 'country'),
(231, 'Ethiopia', 36, 'country'),
(232, 'Eritrea', 37, 'country'),
(233, 'Estonia', 35, 'country'),
(234, 'Faroe Islands', 184, 'country'),
(238, 'Falkland Islands | Falkland (Malvinas) Islands', 185, 'country'),
(239, 'South Georgia and the South Sandwich Islands', 85, 'country'),
(242, 'Fiji', 178, 'country'),
(246, 'Finland', 180, 'country'),
(248, 'Orlando Islands', 41, 'country'),
(250, 'France', 187, 'country'),
(254, 'French Guiana', 188, 'country'),
(258, 'French Polynesia', 189, 'country'),
(260, 'French Southern and Antarctic Region', 190, 'country'),
(262, 'Djibouti', 94, 'country'),
(266, 'Gabon', 52, 'country'),
(268, 'Georgia', 72, 'country'),
(270, 'Gambia', 54, 'country'),
(275, 'Palestine', 173, 'country'),
(276, 'Germany', 137, 'country'),
(288, 'Ghana', 44, 'country'),
(292, 'Gibraltar', 95, 'country'),
(296, 'Kiribati', 63, 'country'),
(300, 'Greece', 62, 'country'),
(304, 'Greenland', 70, 'country'),
(308, 'Grenada', 73, 'country'),
(312, 'Guadeloupe', 66, 'country'),
(316, 'Guam', 67, 'country'),
(320, 'Guatemala', 65, 'country'),
(324, 'Guinea', 57, 'country'),
(328, 'Guyana', 47, 'country'),
(332, 'Haiti', 162, 'country'),
(334, 'Heard Island and Mcdonald Islands', 160, 'country'),
(336, 'Vatican City | Vatican City State', 164, 'country'),
(340, 'Honduras', 209, 'country'),
(344, 'Hong Kong', 208, 'country'),
(348, 'Hungary', 174, 'country'),
(352, 'Iceland', 1, 'country'),
(356, 'India', 26, 'country'),
(360, 'Indonesia', 27, 'country'),
(364, 'Iran | Islamic Republic of Iran', 25, 'country'),
(368, 'Iraq', 24, 'country'),
(372, 'Ireland', 2, 'country'),
(376, 'Israel', 22, 'country'),
(380, 'Italy', 23, 'country'),
(384, 'Cote d\'Ivoire', 77, 'country'),
(388, 'Jamaica', 97, 'country'),
(392, 'Japan', 153, 'country'),
(398, 'Kazakhstan', 48, 'country'),
(400, 'Jordan', 236, 'country'),
(404, 'Kenya', 76, 'country'),
(408, 'Democratic People\'s Republic of Korea', 133, 'country'),
(410, 'South Korea', 124, 'country'),
(414, 'Kuwait', 68, 'country'),
(417, 'Kyrgyzstan', 64, 'country'),
(418, 'Laos | Lao People\'s Democratic Republic', 237, 'country'),
(422, 'Lebanon', 247, 'country'),
(426, 'Lesotho', 246, 'country'),
(428, 'Latvia', 238, 'country'),
(430, 'Liberia', 242, 'country'),
(434, 'Libya', 240, 'country'),
(438, 'Liechtenstein', 241, 'country'),
(440, 'Lithuania', 239, 'country'),
(442, 'Luxembourg', 244, 'country'),
(446, 'Macau', 211, 'country'),
(450, 'Madagascar', 213, 'country'),
(454, 'Malawi', 215, 'country'),
(458, 'Malaysia', 219, 'country'),
(462, 'Maldives', 230, 'country'),
(466, 'Mali Republic | Mali', 216, 'country'),
(470, 'Malta', 217, 'country'),
(474, 'Martinique', 218, 'country'),
(478, 'Mauritania', 227, 'country'),
(480, 'Mauritius', 226, 'country'),
(484, 'Mexico', 225, 'country'),
(492, 'Monaco', 229, 'country'),
(496, 'Mongolia country | Mongolia', 233, 'country'),
(498, 'Moldova | Moldova Republic', 231, 'country'),
(499, 'Montenegro', 234, 'country'),
(500, 'Montserrat', 235, 'country'),
(504, 'Morocco', 232, 'country'),
(508, 'Mozambique', 228, 'country'),
(512, 'Oman', 42, 'country'),
(516, 'Namibia', 148, 'country'),
(520, 'Nauru', 147, 'country'),
(524, 'Nepal', 157, 'country'),
(528, 'Netherlands', 43, 'country'),
(531, 'Curaçao | Curaçao', 61, 'country'),
(533, 'Aruba', 11, 'country'),
(534, 'Sint Maarten | Sint Maarten (Netherlands territory)', 100, 'country'),
(535, 'BES Islands | Bonaire, Sint-Eustatius and Mackerel', 205, 'country'),
(540, 'New Caledonia', 155, 'country'),
(548, 'Vanuatu', 166, 'country'),
(554, 'New Zealand', 156, 'country'),
(558, 'Nicaragua', 151, 'country'),
(562, 'Niger', 152, 'country'),
(566, 'Nigeria', 146, 'country'),
(570, 'Niue', 150, 'country'),
(574, 'Norfolk Island', 158, 'country'),
(578, 'Norway', 159, 'country'),
(580, 'Northern Mariana Islands', 56, 'country'),
(581, 'United States Minor Outlying Islands', 50, 'country'),
(583, 'Federated States of Micronesia', 221, 'country'),
(584, 'Marshall Islands', 210, 'country'),
(585, 'Palau', 170, 'country'),
(586, 'Pakistan', 163, 'country'),
(591, 'Panama', 165, 'country'),
(598, 'Papua New Guinea', 168, 'country'),
(600, 'Paraguay', 171, 'country'),
(604, 'Peru', 200, 'country'),
(608, 'Philippines', 179, 'country'),
(612, 'Pitcairn Islands | Pitcairn', 177, 'country'),
(616, 'Poland', 202, 'country'),
(620, 'Portugal', 207, 'country'),
(624, 'Guinea-Bissau', 58, 'country'),
(626, 'East Timor', 176, 'country'),
(630, 'Puerto Rico', 183, 'country'),
(634, 'Qatar', 49, 'country'),
(638, 'Reunion', 248, 'country'),
(642, 'Romania', 243, 'country'),
(643, 'Russia | Russian Federation', 249, 'country'),
(646, 'Rwanda', 245, 'country'),
(652, 'Saint Barthelemy | Saint Barthelemy', 88, 'country'),
(654, 'St. Helena Ascension and Tristan da Cunha', 118, 'country'),
(659, 'Saint Kitts and Nevis', 116, 'country'),
(660, 'Anguilla', 14, 'country'),
(662, 'Saint Lucia', 119, 'country'),
(663, 'Saint Martin (West Indies) | Saint Martin (French territory)', 92, 'country'),
(666, 'Saint Pierre and Miquelon Island', 90, 'country'),
(670, 'Saint Vincent and the Grenadines | Saint Vincent and the Grenadines', 117, 'country'),
(674, 'San Marino', 91, 'country'),
(678, 'Sao Tome and Principe', 87, 'country'),
(682, 'Saudi Arabia', 84, 'country'),
(686, 'Senegal', 114, 'country'),
(688, 'Serbia', 115, 'country'),
(690, 'Seychelles', 112, 'country'),
(694, 'Sierra Leone', 93, 'country'),
(702, 'Singapore', 99, 'country'),
(703, 'Slovakia', 109, 'country'),
(704, 'Vietnam', 195, 'country'),
(705, 'Slovenia', 110, 'country'),
(706, 'Somalia', 120, 'country'),
(710, 'South Africa Republic | South Africa', 222, 'country'),
(716, 'Zimbabwe', 101, 'country'),
(724, 'Spain', 106, 'country'),
(728, 'South Sudan', 223, 'country'),
(729, 'Sudan', 104, 'country'),
(732, 'Western Sahara', 154, 'country'),
(740, 'Suriname', 107, 'country'),
(744, 'Svalbard and Jan Mayen Island', 105, 'country'),
(748, 'Swaziland', 111, 'country'),
(752, 'Sweden', 103, 'country'),
(756, 'Switzerland', 102, 'country'),
(760, 'Syria | Syria / Arab Republic', 98, 'country'),
(762, 'Tajikistan', 126, 'country'),
(764, 'Thailand Kingdom | Thailand', 123, 'country'),
(768, 'Togo', 138, 'country'),
(772, 'Tokelau', 139, 'country'),
(776, 'Tonga', 145, 'country'),
(780, 'Republic of Trinidad and Tobago', 142, 'country'),
(784, 'United Arab Emirates', 8, 'country'),
(788, 'Tunisia', 132, 'country'),
(792, 'Turkey', 144, 'country'),
(795, 'Turkmenistan', 143, 'country'),
(796, 'Turks & Caicos Islands', 122, 'country'),
(798, 'Tuvalu', 135, 'country'),
(800, 'Uganda', 29, 'country'),
(804, 'Ukraine', 30, 'country'),
(807, 'Macedonia Republic | Macedonia Former Yugoslav Republic', 212, 'country'),
(818, 'Egypt', 34, 'country'),
(826, 'England', 19, 'country'),
(831, 'Guernsey', 46, 'country'),
(832, 'Jersey', 96, 'country'),
(833, 'Isle of Man', 220, 'country'),
(834, 'Tanzania', 127, 'country'),
(840, 'United States of America', 5, 'country'),
(850, 'US Virgin Islands', 6, 'country'),
(854, 'Burkina Faso', 192, 'country'),
(858, 'Uruguay', 32, 'country'),
(860, 'Uzbekistan', 31, 'country'),
(862, 'Venezuela | Venezuela / Bolivar Republic', 197, 'country'),
(876, 'Wallis and Futuna', 28, 'country'),
(882, 'Samoa', 86, 'country'),
(887, 'Yemen', 18, 'country'),
(894, 'Zambia', 89, 'country');

-- --------------------------------------------------------

--
-- Table structure for table `mtb_csv_type`
--

CREATE TABLE `mtb_csv_type` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `sort_no` smallint(5) UNSIGNED NOT NULL,
  `discriminator_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mtb_csv_type`
--

INSERT INTO `mtb_csv_type` (`id`, `name`, `sort_no`, `discriminator_type`) VALUES
(1, 'Sản phẩm CSV', 3, 'csvtype'),
(2, 'Khách hàng CSV', 4, 'csvtype'),
(3, 'Đơn hàng CSV', 1, 'csvtype'),
(4, 'Giao hàng CSV', 1, 'csvtype'),
(5, 'Danh mục nhóm CSV', 5, 'csvtype');

-- --------------------------------------------------------

--
-- Table structure for table `mtb_customer_order_status`
--

CREATE TABLE `mtb_customer_order_status` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `sort_no` smallint(5) UNSIGNED NOT NULL,
  `discriminator_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mtb_customer_order_status`
--

INSERT INTO `mtb_customer_order_status` (`id`, `name`, `sort_no`, `discriminator_type`) VALUES
(1, 'Đã nhận đơn hàng', 0, 'customerorderstatus'),
(3, 'Đã hủy đơn hàng', 4, 'customerorderstatus'),
(4, 'Đã nhận đơn hàng', 3, 'customerorderstatus'),
(5, 'Đã giao đơn hàng', 6, 'customerorderstatus'),
(6, 'Đã nhận đơn hàng', 2, 'customerorderstatus'),
(7, 'Đã nhận đơn hàng', 1, 'customerorderstatus'),
(8, 'Đơn hàng chưa hoàn thành', 5, 'customerorderstatus'),
(9, 'Đã trả lại đơn hàng', 7, 'customerorderstatus');

-- --------------------------------------------------------

--
-- Table structure for table `mtb_customer_status`
--

CREATE TABLE `mtb_customer_status` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `sort_no` smallint(5) UNSIGNED NOT NULL,
  `discriminator_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mtb_customer_status`
--

INSERT INTO `mtb_customer_status` (`id`, `name`, `sort_no`, `discriminator_type`) VALUES
(1, 'Tạm thời', 0, 'customerstatus'),
(2, 'Chính thức', 1, 'customerstatus'),
(3, 'Đã hủy', 2, 'customerstatus');

-- --------------------------------------------------------

--
-- Table structure for table `mtb_device_type`
--

CREATE TABLE `mtb_device_type` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `sort_no` smallint(5) UNSIGNED NOT NULL,
  `discriminator_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mtb_device_type`
--

INSERT INTO `mtb_device_type` (`id`, `name`, `sort_no`, `discriminator_type`) VALUES
(2, 'Di động', 0, 'devicetype'),
(10, 'Máy tính', 1, 'devicetype');

-- --------------------------------------------------------

--
-- Table structure for table `mtb_job`
--

CREATE TABLE `mtb_job` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `sort_no` smallint(5) UNSIGNED NOT NULL,
  `discriminator_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mtb_job`
--

INSERT INTO `mtb_job` (`id`, `name`, `sort_no`, `discriminator_type`) VALUES
(1, 'Công chức nhà nước', 0, 'job'),
(2, 'Tư vấn', 1, 'job'),
(3, 'Kỹ sư (IT)', 2, 'job'),
(4, 'Kỹ sư (Khác IT)', 3, 'job'),
(5, 'Tài chính', 4, 'job'),
(6, 'Bác sĩ', 5, 'job'),
(7, 'Luật sư', 6, 'job'),
(8, 'Quản trị / Nhân sự / Thư ký', 7, 'job'),
(9, 'Bán hàng', 8, 'job'),
(10, 'Nghiên cứu và phát triển (R&D)', 9, 'job'),
(11, 'PR', 10, 'job'),
(12, 'Lập kế hoạch / Tiếp thị', 11, 'job'),
(13, 'Thiết kế', 12, 'job'),
(14, 'Chủ doanh nghiệp / Thành viên hội đồng quản trị', 13, 'job'),
(15, 'Nhà xuất bản / Truyền thông đại chúng', 14, 'job'),
(16, 'Sinh viên / Bán thời gian', 15, 'job'),
(17, 'Người nội trợ', 16, 'job'),
(18, 'Khác', 17, 'job');

-- --------------------------------------------------------

--
-- Table structure for table `mtb_order_item_type`
--

CREATE TABLE `mtb_order_item_type` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `sort_no` smallint(5) UNSIGNED NOT NULL,
  `discriminator_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mtb_order_item_type`
--

INSERT INTO `mtb_order_item_type` (`id`, `name`, `sort_no`, `discriminator_type`) VALUES
(1, 'Sản phẩm', 0, 'orderitemtype'),
(2, 'Phí giao hàng', 1, 'orderitemtype'),
(3, 'Phí thanh toán', 2, 'orderitemtype'),
(4, 'Giảm giá', 3, 'orderitemtype'),
(5, 'Thuế', 4, 'orderitemtype'),
(6, 'Điểm thưởng', 5, 'orderitemtype');

-- --------------------------------------------------------

--
-- Table structure for table `mtb_order_status`
--

CREATE TABLE `mtb_order_status` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `display_order_count` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `sort_no` smallint(5) UNSIGNED NOT NULL,
  `discriminator_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mtb_order_status`
--

INSERT INTO `mtb_order_status` (`id`, `display_order_count`, `name`, `sort_no`, `discriminator_type`) VALUES
(1, 1, 'Mới', 0, 'orderstatus'),
(3, 0, 'Đã hủy', 3, 'orderstatus'),
(4, 1, 'Đang xử lý', 2, 'orderstatus'),
(5, 0, 'Đã giao hàng', 4, 'orderstatus'),
(6, 1, 'Đã thanh toán', 1, 'orderstatus'),
(7, 0, 'Đang thanh toán', 6, 'orderstatus'),
(8, 0, 'Đang mua', 5, 'orderstatus'),
(9, 0, 'Đã trả lại', 7, 'orderstatus');

-- --------------------------------------------------------

--
-- Table structure for table `mtb_order_status_color`
--

CREATE TABLE `mtb_order_status_color` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `sort_no` smallint(5) UNSIGNED NOT NULL,
  `discriminator_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mtb_order_status_color`
--

INSERT INTO `mtb_order_status_color` (`id`, `name`, `sort_no`, `discriminator_type`) VALUES
(1, '#437ec4', 0, 'orderstatuscolor'),
(3, '#C04949', 3, 'orderstatuscolor'),
(4, '#EEB128', 2, 'orderstatuscolor'),
(5, '#25B877', 4, 'orderstatuscolor'),
(6, '#25B877', 1, 'orderstatuscolor'),
(7, '#A3A3A3', 6, 'orderstatuscolor'),
(8, '#A3A3A3', 5, 'orderstatuscolor'),
(9, '#C04949', 7, 'orderstatuscolor');

-- --------------------------------------------------------

--
-- Table structure for table `mtb_page_max`
--

CREATE TABLE `mtb_page_max` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `sort_no` smallint(5) UNSIGNED NOT NULL,
  `discriminator_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mtb_page_max`
--

INSERT INTO `mtb_page_max` (`id`, `name`, `sort_no`, `discriminator_type`) VALUES
(10, '10', 0, 'pagemax'),
(20, '20', 1, 'pagemax'),
(30, '30', 2, 'pagemax'),
(40, '40', 3, 'pagemax'),
(50, '50', 4, 'pagemax'),
(60, '60', 5, 'pagemax'),
(70, '70', 6, 'pagemax'),
(80, '80', 7, 'pagemax'),
(90, '90', 8, 'pagemax'),
(100, '100', 9, 'pagemax');

-- --------------------------------------------------------

--
-- Table structure for table `mtb_pref`
--

CREATE TABLE `mtb_pref` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `sort_no` smallint(5) UNSIGNED NOT NULL,
  `discriminator_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mtb_pref`
--

INSERT INTO `mtb_pref` (`id`, `name`, `sort_no`, `discriminator_type`) VALUES
(1, 'Hồ Chí Minh', 1, 'pref'),
(2, 'Hà Nội', 2, 'pref'),
(3, 'Đà Nẵng', 3, 'pref'),
(4, 'An Giang', 4, 'pref'),
(5, 'Bà Rịa - Vũng Tàu', 5, 'pref'),
(6, 'Bắc Giang', 6, 'pref'),
(7, 'Bắc Kạn', 7, 'pref'),
(8, 'Bạc Liêu', 8, 'pref'),
(9, 'Bắc Ninh', 9, 'pref'),
(10, 'Bến Tre', 10, 'pref'),
(11, 'Bình Dương', 11, 'pref'),
(12, 'Bình Phước', 12, 'pref'),
(13, 'Bình Thuận', 13, 'pref'),
(14, 'Bình Định', 14, 'pref'),
(15, 'Cà Mau', 15, 'pref'),
(16, 'Cần Thơ', 16, 'pref'),
(17, 'Cao Bằng', 17, 'pref'),
(18, 'Gia Lai', 18, 'pref'),
(19, 'Hà Giang', 19, 'pref'),
(20, 'Hà Nam', 20, 'pref'),
(21, 'Hà Tĩnh', 21, 'pref'),
(22, 'Hải Dương', 22, 'pref'),
(23, 'Hải Phòng', 23, 'pref'),
(24, 'Hậu Giang', 24, 'pref'),
(25, 'Hoà Bình', 25, 'pref'),
(26, 'Hưng Yên', 26, 'pref'),
(27, 'Khánh Hòa', 27, 'pref'),
(28, 'Kiên Giang', 28, 'pref'),
(29, 'Kon Tum', 29, 'pref'),
(30, 'Lai Châu', 30, 'pref'),
(31, 'Lâm Đồng', 31, 'pref'),
(32, 'Lạng Sơn', 32, 'pref'),
(33, 'Lào Cai', 33, 'pref'),
(34, 'Long An', 34, 'pref'),
(35, 'Nam Định', 35, 'pref'),
(36, 'Nghệ An', 36, 'pref'),
(37, 'Ninh Bình', 37, 'pref'),
(38, 'Ninh Thuận', 38, 'pref'),
(39, 'Phú Thọ', 39, 'pref'),
(40, 'Phú Yên', 40, 'pref'),
(41, 'Quảng Bình', 41, 'pref'),
(42, 'Quảng Nam', 42, 'pref'),
(43, 'Quảng Ngãi', 43, 'pref'),
(44, 'Quảng Ninh', 44, 'pref'),
(45, 'Quảng Trị', 45, 'pref'),
(46, 'Sóc Trăng', 46, 'pref'),
(47, 'Sơn La', 47, 'pref'),
(48, 'Tây Ninh', 48, 'pref'),
(49, 'Thái Bình', 49, 'pref'),
(50, 'Thái Nguyên', 50, 'pref'),
(51, 'Thanh Hóa', 51, 'pref'),
(52, 'Thừa Thiên Huế', 52, 'pref'),
(53, 'Tiền Giang', 53, 'pref'),
(54, 'Trà Vinh', 54, 'pref'),
(55, 'Tuyên Quang', 55, 'pref'),
(56, 'Vĩnh Long', 56, 'pref'),
(57, 'Vĩnh Phúc', 57, 'pref'),
(58, 'Yên Bái', 58, 'pref'),
(59, 'Đắk Lắk', 59, 'pref'),
(60, 'Đắk Nông', 60, 'pref'),
(61, 'Điện Biên', 61, 'pref'),
(62, 'Đồng Nai', 62, 'pref'),
(63, 'Đồng Tháp', 63, 'pref');

-- --------------------------------------------------------

--
-- Table structure for table `mtb_product_list_max`
--

CREATE TABLE `mtb_product_list_max` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `sort_no` smallint(5) UNSIGNED NOT NULL,
  `discriminator_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mtb_product_list_max`
--

INSERT INTO `mtb_product_list_max` (`id`, `name`, `sort_no`, `discriminator_type`) VALUES
(20, '20 mục', 0, 'productlistmax'),
(40, '40 mục', 1, 'productlistmax'),
(60, '60 mục', 2, 'productlistmax');

-- --------------------------------------------------------

--
-- Table structure for table `mtb_product_list_order_by`
--

CREATE TABLE `mtb_product_list_order_by` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `sort_no` smallint(5) UNSIGNED NOT NULL,
  `discriminator_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mtb_product_list_order_by`
--

INSERT INTO `mtb_product_list_order_by` (`id`, `name`, `sort_no`, `discriminator_type`) VALUES
(1, 'Giá thấp đến cao', 0, 'productlistorderby'),
(2, 'Hàng mới nhất', 2, 'productlistorderby'),
(3, 'Giá cao tới thấp', 1, 'productlistorderby');

-- --------------------------------------------------------

--
-- Table structure for table `mtb_product_status`
--

CREATE TABLE `mtb_product_status` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `sort_no` smallint(5) UNSIGNED NOT NULL,
  `discriminator_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mtb_product_status`
--

INSERT INTO `mtb_product_status` (`id`, `name`, `sort_no`, `discriminator_type`) VALUES
(1, 'Hiện', 0, 'productstatus'),
(2, 'Ẩn', 1, 'productstatus'),
(3, 'Ngưng', 2, 'productstatus');

-- --------------------------------------------------------

--
-- Table structure for table `mtb_rounding_type`
--

CREATE TABLE `mtb_rounding_type` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `sort_no` smallint(5) UNSIGNED NOT NULL,
  `discriminator_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mtb_rounding_type`
--

INSERT INTO `mtb_rounding_type` (`id`, `name`, `sort_no`, `discriminator_type`) VALUES
(1, 'Làm tròn', 0, 'roundingtype'),
(2, 'Làm tròn lên', 1, 'roundingtype'),
(3, 'Làm tròn xuống', 2, 'roundingtype');

-- --------------------------------------------------------

--
-- Table structure for table `mtb_sale_type`
--

CREATE TABLE `mtb_sale_type` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `sort_no` smallint(5) UNSIGNED NOT NULL,
  `discriminator_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mtb_sale_type`
--

INSERT INTO `mtb_sale_type` (`id`, `name`, `sort_no`, `discriminator_type`) VALUES
(1, 'Loại A', 0, 'saletype'),
(2, 'Loại B', 1, 'saletype');

-- --------------------------------------------------------

--
-- Table structure for table `mtb_sex`
--

CREATE TABLE `mtb_sex` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `sort_no` smallint(5) UNSIGNED NOT NULL,
  `discriminator_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mtb_sex`
--

INSERT INTO `mtb_sex` (`id`, `name`, `sort_no`, `discriminator_type`) VALUES
(1, 'Nam', 0, 'sex'),
(2, 'Nữ', 1, 'sex');

-- --------------------------------------------------------

--
-- Table structure for table `mtb_tax_display_type`
--

CREATE TABLE `mtb_tax_display_type` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `sort_no` smallint(5) UNSIGNED NOT NULL,
  `discriminator_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mtb_tax_display_type`
--

INSERT INTO `mtb_tax_display_type` (`id`, `name`, `sort_no`, `discriminator_type`) VALUES
(1, 'Chưa bao gồm thuế.', 0, 'taxdisplaytype'),
(2, 'Đã bao gồm thuế.', 1, 'taxdisplaytype');

-- --------------------------------------------------------

--
-- Table structure for table `mtb_tax_type`
--

CREATE TABLE `mtb_tax_type` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `sort_no` smallint(5) UNSIGNED NOT NULL,
  `discriminator_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mtb_tax_type`
--

INSERT INTO `mtb_tax_type` (`id`, `name`, `sort_no`, `discriminator_type`) VALUES
(1, 'Chịu thuế', 0, 'taxtype'),
(2, 'Không chịu thuế', 1, 'taxtype'),
(3, 'Miễn thuế', 2, 'taxtype');

-- --------------------------------------------------------

--
-- Table structure for table `mtb_work`
--

CREATE TABLE `mtb_work` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `sort_no` smallint(5) UNSIGNED NOT NULL,
  `discriminator_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mtb_work`
--

INSERT INTO `mtb_work` (`id`, `name`, `sort_no`, `discriminator_type`) VALUES
(0, 'Không hoạt động', 0, 'work'),
(1, 'Họat động', 1, 'work');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `dtb_authority_role`
--
ALTER TABLE `dtb_authority_role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_4A1F70B181EC865B` (`authority_id`),
  ADD KEY `IDX_4A1F70B161220EA6` (`creator_id`);

--
-- Indexes for table `dtb_base_info`
--
ALTER TABLE `dtb_base_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_1D3655F4F92F3E70` (`country_id`),
  ADD KEY `IDX_1D3655F4E171EF5F` (`pref_id`);

--
-- Indexes for table `dtb_block`
--
ALTER TABLE `dtb_block`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `device_type_id` (`device_type_id`,`file_name`),
  ADD KEY `IDX_6B54DCBD4FFA550E` (`device_type_id`);

--
-- Indexes for table `dtb_block_position`
--
ALTER TABLE `dtb_block_position`
  ADD PRIMARY KEY (`section`,`block_id`,`layout_id`),
  ADD KEY `IDX_35DCD731E9ED820C` (`block_id`),
  ADD KEY `IDX_35DCD7318C22AA1A` (`layout_id`);

--
-- Indexes for table `dtb_cart`
--
ALTER TABLE `dtb_cart`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `dtb_cart_pre_order_id_idx` (`pre_order_id`),
  ADD KEY `IDX_FC3C24F09395C3F3` (`customer_id`),
  ADD KEY `dtb_cart_update_date_idx` (`update_date`);

--
-- Indexes for table `dtb_cart_item`
--
ALTER TABLE `dtb_cart_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_B0228F7421B06187` (`product_class_id`),
  ADD KEY `IDX_B0228F741AD5CDBF` (`cart_id`);

--
-- Indexes for table `dtb_category`
--
ALTER TABLE `dtb_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_5ED2C2B796A8F92` (`parent_category_id`),
  ADD KEY `IDX_5ED2C2B61220EA6` (`creator_id`);

--
-- Indexes for table `dtb_class_category`
--
ALTER TABLE `dtb_class_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_9B0D1DBAB462FB2A` (`class_name_id`),
  ADD KEY `IDX_9B0D1DBA61220EA6` (`creator_id`);

--
-- Indexes for table `dtb_class_name`
--
ALTER TABLE `dtb_class_name`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_187C95AD61220EA6` (`creator_id`);

--
-- Indexes for table `dtb_csv`
--
ALTER TABLE `dtb_csv`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_F55F48C3E8507796` (`csv_type_id`),
  ADD KEY `IDX_F55F48C361220EA6` (`creator_id`);

--
-- Indexes for table `dtb_customer`
--
ALTER TABLE `dtb_customer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `secret_key` (`secret_key`),
  ADD KEY `IDX_8298BBE3C00AF8A7` (`customer_status_id`),
  ADD KEY `IDX_8298BBE35A2DB2A0` (`sex_id`),
  ADD KEY `IDX_8298BBE3BE04EA9` (`job_id`),
  ADD KEY `IDX_8298BBE3F92F3E70` (`country_id`),
  ADD KEY `IDX_8298BBE3E171EF5F` (`pref_id`),
  ADD KEY `dtb_customer_buy_times_idx` (`buy_times`),
  ADD KEY `dtb_customer_buy_total_idx` (`buy_total`),
  ADD KEY `dtb_customer_create_date_idx` (`create_date`),
  ADD KEY `dtb_customer_update_date_idx` (`update_date`),
  ADD KEY `dtb_customer_last_buy_date_idx` (`last_buy_date`),
  ADD KEY `dtb_customer_email_idx` (`email`);

--
-- Indexes for table `dtb_customer_address`
--
ALTER TABLE `dtb_customer_address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_6C38C0F89395C3F3` (`customer_id`),
  ADD KEY `IDX_6C38C0F8F92F3E70` (`country_id`),
  ADD KEY `IDX_6C38C0F8E171EF5F` (`pref_id`);

--
-- Indexes for table `dtb_customer_favorite_product`
--
ALTER TABLE `dtb_customer_favorite_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_ED6313839395C3F3` (`customer_id`),
  ADD KEY `IDX_ED6313834584665A` (`product_id`);

--
-- Indexes for table `dtb_delivery`
--
ALTER TABLE `dtb_delivery`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_3420D9FA61220EA6` (`creator_id`),
  ADD KEY `IDX_3420D9FAB0524E01` (`sale_type_id`);

--
-- Indexes for table `dtb_delivery_duration`
--
ALTER TABLE `dtb_delivery_duration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dtb_delivery_fee`
--
ALTER TABLE `dtb_delivery_fee`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_491552412136921` (`delivery_id`),
  ADD KEY `IDX_4915524E171EF5F` (`pref_id`);

--
-- Indexes for table `dtb_delivery_time`
--
ALTER TABLE `dtb_delivery_time`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_E80EE3A612136921` (`delivery_id`);

--
-- Indexes for table `dtb_layout`
--
ALTER TABLE `dtb_layout`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_5A62AA7C4FFA550E` (`device_type_id`);

--
-- Indexes for table `dtb_mail_history`
--
ALTER TABLE `dtb_mail_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_4870AB118D9F6D38` (`order_id`),
  ADD KEY `IDX_4870AB1161220EA6` (`creator_id`);

--
-- Indexes for table `dtb_mail_template`
--
ALTER TABLE `dtb_mail_template`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_1CB16DB261220EA6` (`creator_id`);

--
-- Indexes for table `dtb_member`
--
ALTER TABLE `dtb_member`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_10BC3BE6BB3453DB` (`work_id`),
  ADD KEY `IDX_10BC3BE681EC865B` (`authority_id`),
  ADD KEY `IDX_10BC3BE661220EA6` (`creator_id`);

--
-- Indexes for table `dtb_news`
--
ALTER TABLE `dtb_news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_EA4C351761220EA6` (`creator_id`);

--
-- Indexes for table `dtb_order`
--
ALTER TABLE `dtb_order`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `dtb_order_pre_order_id_idx` (`pre_order_id`),
  ADD KEY `IDX_1D66D8079395C3F3` (`customer_id`),
  ADD KEY `IDX_1D66D807F92F3E70` (`country_id`),
  ADD KEY `IDX_1D66D807E171EF5F` (`pref_id`),
  ADD KEY `IDX_1D66D8075A2DB2A0` (`sex_id`),
  ADD KEY `IDX_1D66D807BE04EA9` (`job_id`),
  ADD KEY `IDX_1D66D8074C3A3BB` (`payment_id`),
  ADD KEY `IDX_1D66D8074FFA550E` (`device_type_id`),
  ADD KEY `IDX_1D66D807D7707B45` (`order_status_id`),
  ADD KEY `dtb_order_email_idx` (`email`),
  ADD KEY `dtb_order_order_date_idx` (`order_date`),
  ADD KEY `dtb_order_payment_date_idx` (`payment_date`),
  ADD KEY `dtb_order_update_date_idx` (`update_date`),
  ADD KEY `dtb_order_order_no_idx` (`order_no`);

--
-- Indexes for table `dtb_order_item`
--
ALTER TABLE `dtb_order_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_A0C8C3ED8D9F6D38` (`order_id`),
  ADD KEY `IDX_A0C8C3ED4584665A` (`product_id`),
  ADD KEY `IDX_A0C8C3ED21B06187` (`product_class_id`),
  ADD KEY `IDX_A0C8C3ED4887F3F8` (`shipping_id`),
  ADD KEY `IDX_A0C8C3ED1BD5C574` (`rounding_type_id`),
  ADD KEY `IDX_A0C8C3ED84042C99` (`tax_type_id`),
  ADD KEY `IDX_A0C8C3EDA2505856` (`tax_display_type_id`),
  ADD KEY `IDX_A0C8C3EDCAD13EAD` (`order_item_type_id`);

--
-- Indexes for table `dtb_order_pdf`
--
ALTER TABLE `dtb_order_pdf`
  ADD PRIMARY KEY (`member_id`);

--
-- Indexes for table `dtb_page`
--
ALTER TABLE `dtb_page`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_E3951A67D0618E8C` (`master_page_id`),
  ADD KEY `dtb_page_url_idx` (`url`);

--
-- Indexes for table `dtb_page_layout`
--
ALTER TABLE `dtb_page_layout`
  ADD PRIMARY KEY (`page_id`,`layout_id`),
  ADD KEY `IDX_F2799941C4663E4` (`page_id`),
  ADD KEY `IDX_F27999418C22AA1A` (`layout_id`);

--
-- Indexes for table `dtb_payment`
--
ALTER TABLE `dtb_payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_7AFF628F61220EA6` (`creator_id`);

--
-- Indexes for table `dtb_payment_option`
--
ALTER TABLE `dtb_payment_option`
  ADD PRIMARY KEY (`delivery_id`,`payment_id`),
  ADD KEY `IDX_5631540D12136921` (`delivery_id`),
  ADD KEY `IDX_5631540D4C3A3BB` (`payment_id`);

--
-- Indexes for table `dtb_plugin`
--
ALTER TABLE `dtb_plugin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dtb_product`
--
ALTER TABLE `dtb_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_C49DE22F61220EA6` (`creator_id`),
  ADD KEY `IDX_C49DE22F557B630` (`product_status_id`);

--
-- Indexes for table `dtb_product_category`
--
ALTER TABLE `dtb_product_category`
  ADD PRIMARY KEY (`product_id`,`category_id`),
  ADD KEY `IDX_B05778914584665A` (`product_id`),
  ADD KEY `IDX_B057789112469DE2` (`category_id`);

--
-- Indexes for table `dtb_product_class`
--
ALTER TABLE `dtb_product_class`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_1A11D1BA4584665A` (`product_id`),
  ADD KEY `IDX_1A11D1BAB0524E01` (`sale_type_id`),
  ADD KEY `IDX_1A11D1BA248D128` (`class_category_id1`),
  ADD KEY `IDX_1A11D1BA9B418092` (`class_category_id2`),
  ADD KEY `IDX_1A11D1BABA4269E` (`delivery_duration_id`),
  ADD KEY `IDX_1A11D1BA61220EA6` (`creator_id`),
  ADD KEY `dtb_product_class_price02_idx` (`price02`),
  ADD KEY `dtb_product_class_stock_stock_unlimited_idx` (`stock`,`stock_unlimited`);

--
-- Indexes for table `dtb_product_image`
--
ALTER TABLE `dtb_product_image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_3267CC7A4584665A` (`product_id`),
  ADD KEY `IDX_3267CC7A61220EA6` (`creator_id`);

--
-- Indexes for table `dtb_product_stock`
--
ALTER TABLE `dtb_product_stock`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_BC6C9E4521B06187` (`product_class_id`),
  ADD KEY `IDX_BC6C9E4561220EA6` (`creator_id`);

--
-- Indexes for table `dtb_product_tag`
--
ALTER TABLE `dtb_product_tag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_4433E7214584665A` (`product_id`),
  ADD KEY `IDX_4433E721BAD26311` (`tag_id`),
  ADD KEY `IDX_4433E72161220EA6` (`creator_id`);

--
-- Indexes for table `dtb_shipping`
--
ALTER TABLE `dtb_shipping`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_2EBD22CE8D9F6D38` (`order_id`),
  ADD KEY `IDX_2EBD22CEF92F3E70` (`country_id`),
  ADD KEY `IDX_2EBD22CEE171EF5F` (`pref_id`),
  ADD KEY `IDX_2EBD22CE12136921` (`delivery_id`),
  ADD KEY `IDX_2EBD22CE61220EA6` (`creator_id`);

--
-- Indexes for table `dtb_tag`
--
ALTER TABLE `dtb_tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dtb_tax_rule`
--
ALTER TABLE `dtb_tax_rule`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_59F696DE21B06187` (`product_class_id`),
  ADD KEY `IDX_59F696DE61220EA6` (`creator_id`),
  ADD KEY `IDX_59F696DEF92F3E70` (`country_id`),
  ADD KEY `IDX_59F696DEE171EF5F` (`pref_id`),
  ADD KEY `IDX_59F696DE4584665A` (`product_id`),
  ADD KEY `IDX_59F696DE1BD5C574` (`rounding_type_id`);

--
-- Indexes for table `dtb_template`
--
ALTER TABLE `dtb_template`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_94C12A694FFA550E` (`device_type_id`);

--
-- Indexes for table `mtb_authority`
--
ALTER TABLE `mtb_authority`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mtb_country`
--
ALTER TABLE `mtb_country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mtb_csv_type`
--
ALTER TABLE `mtb_csv_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mtb_customer_order_status`
--
ALTER TABLE `mtb_customer_order_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mtb_customer_status`
--
ALTER TABLE `mtb_customer_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mtb_device_type`
--
ALTER TABLE `mtb_device_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mtb_job`
--
ALTER TABLE `mtb_job`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mtb_order_item_type`
--
ALTER TABLE `mtb_order_item_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mtb_order_status`
--
ALTER TABLE `mtb_order_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mtb_order_status_color`
--
ALTER TABLE `mtb_order_status_color`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mtb_page_max`
--
ALTER TABLE `mtb_page_max`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mtb_pref`
--
ALTER TABLE `mtb_pref`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mtb_product_list_max`
--
ALTER TABLE `mtb_product_list_max`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mtb_product_list_order_by`
--
ALTER TABLE `mtb_product_list_order_by`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mtb_product_status`
--
ALTER TABLE `mtb_product_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mtb_rounding_type`
--
ALTER TABLE `mtb_rounding_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mtb_sale_type`
--
ALTER TABLE `mtb_sale_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mtb_sex`
--
ALTER TABLE `mtb_sex`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mtb_tax_display_type`
--
ALTER TABLE `mtb_tax_display_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mtb_tax_type`
--
ALTER TABLE `mtb_tax_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mtb_work`
--
ALTER TABLE `mtb_work`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dtb_authority_role`
--
ALTER TABLE `dtb_authority_role`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dtb_base_info`
--
ALTER TABLE `dtb_base_info`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `dtb_block`
--
ALTER TABLE `dtb_block`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `dtb_cart`
--
ALTER TABLE `dtb_cart`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `dtb_cart_item`
--
ALTER TABLE `dtb_cart_item`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `dtb_category`
--
ALTER TABLE `dtb_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `dtb_class_category`
--
ALTER TABLE `dtb_class_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `dtb_class_name`
--
ALTER TABLE `dtb_class_name`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `dtb_csv`
--
ALTER TABLE `dtb_csv`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=204;

--
-- AUTO_INCREMENT for table `dtb_customer`
--
ALTER TABLE `dtb_customer`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dtb_customer_address`
--
ALTER TABLE `dtb_customer_address`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dtb_customer_favorite_product`
--
ALTER TABLE `dtb_customer_favorite_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dtb_delivery`
--
ALTER TABLE `dtb_delivery`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `dtb_delivery_duration`
--
ALTER TABLE `dtb_delivery_duration`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `dtb_delivery_fee`
--
ALTER TABLE `dtb_delivery_fee`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT for table `dtb_delivery_time`
--
ALTER TABLE `dtb_delivery_time`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `dtb_layout`
--
ALTER TABLE `dtb_layout`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `dtb_mail_history`
--
ALTER TABLE `dtb_mail_history`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dtb_mail_template`
--
ALTER TABLE `dtb_mail_template`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `dtb_member`
--
ALTER TABLE `dtb_member`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `dtb_news`
--
ALTER TABLE `dtb_news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `dtb_order`
--
ALTER TABLE `dtb_order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dtb_order_item`
--
ALTER TABLE `dtb_order_item`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dtb_page`
--
ALTER TABLE `dtb_page`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `dtb_payment`
--
ALTER TABLE `dtb_payment`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `dtb_plugin`
--
ALTER TABLE `dtb_plugin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dtb_product`
--
ALTER TABLE `dtb_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `dtb_product_class`
--
ALTER TABLE `dtb_product_class`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `dtb_product_image`
--
ALTER TABLE `dtb_product_image`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `dtb_product_stock`
--
ALTER TABLE `dtb_product_stock`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `dtb_product_tag`
--
ALTER TABLE `dtb_product_tag`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dtb_shipping`
--
ALTER TABLE `dtb_shipping`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dtb_tag`
--
ALTER TABLE `dtb_tag`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `dtb_tax_rule`
--
ALTER TABLE `dtb_tax_rule`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `dtb_template`
--
ALTER TABLE `dtb_template`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dtb_authority_role`
--
ALTER TABLE `dtb_authority_role`
  ADD CONSTRAINT `FK_4A1F70B161220EA6` FOREIGN KEY (`creator_id`) REFERENCES `dtb_member` (`id`),
  ADD CONSTRAINT `FK_4A1F70B181EC865B` FOREIGN KEY (`authority_id`) REFERENCES `mtb_authority` (`id`);

--
-- Constraints for table `dtb_base_info`
--
ALTER TABLE `dtb_base_info`
  ADD CONSTRAINT `FK_1D3655F4E171EF5F` FOREIGN KEY (`pref_id`) REFERENCES `mtb_pref` (`id`),
  ADD CONSTRAINT `FK_1D3655F4F92F3E70` FOREIGN KEY (`country_id`) REFERENCES `mtb_country` (`id`);

--
-- Constraints for table `dtb_block`
--
ALTER TABLE `dtb_block`
  ADD CONSTRAINT `FK_6B54DCBD4FFA550E` FOREIGN KEY (`device_type_id`) REFERENCES `mtb_device_type` (`id`);

--
-- Constraints for table `dtb_block_position`
--
ALTER TABLE `dtb_block_position`
  ADD CONSTRAINT `FK_35DCD7318C22AA1A` FOREIGN KEY (`layout_id`) REFERENCES `dtb_layout` (`id`),
  ADD CONSTRAINT `FK_35DCD731E9ED820C` FOREIGN KEY (`block_id`) REFERENCES `dtb_block` (`id`);

--
-- Constraints for table `dtb_cart`
--
ALTER TABLE `dtb_cart`
  ADD CONSTRAINT `FK_FC3C24F09395C3F3` FOREIGN KEY (`customer_id`) REFERENCES `dtb_customer` (`id`);

--
-- Constraints for table `dtb_cart_item`
--
ALTER TABLE `dtb_cart_item`
  ADD CONSTRAINT `FK_B0228F741AD5CDBF` FOREIGN KEY (`cart_id`) REFERENCES `dtb_cart` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_B0228F7421B06187` FOREIGN KEY (`product_class_id`) REFERENCES `dtb_product_class` (`id`);

--
-- Constraints for table `dtb_category`
--
ALTER TABLE `dtb_category`
  ADD CONSTRAINT `FK_5ED2C2B61220EA6` FOREIGN KEY (`creator_id`) REFERENCES `dtb_member` (`id`),
  ADD CONSTRAINT `FK_5ED2C2B796A8F92` FOREIGN KEY (`parent_category_id`) REFERENCES `dtb_category` (`id`);

--
-- Constraints for table `dtb_class_category`
--
ALTER TABLE `dtb_class_category`
  ADD CONSTRAINT `FK_9B0D1DBA61220EA6` FOREIGN KEY (`creator_id`) REFERENCES `dtb_member` (`id`),
  ADD CONSTRAINT `FK_9B0D1DBAB462FB2A` FOREIGN KEY (`class_name_id`) REFERENCES `dtb_class_name` (`id`);

--
-- Constraints for table `dtb_class_name`
--
ALTER TABLE `dtb_class_name`
  ADD CONSTRAINT `FK_187C95AD61220EA6` FOREIGN KEY (`creator_id`) REFERENCES `dtb_member` (`id`);

--
-- Constraints for table `dtb_csv`
--
ALTER TABLE `dtb_csv`
  ADD CONSTRAINT `FK_F55F48C361220EA6` FOREIGN KEY (`creator_id`) REFERENCES `dtb_member` (`id`),
  ADD CONSTRAINT `FK_F55F48C3E8507796` FOREIGN KEY (`csv_type_id`) REFERENCES `mtb_csv_type` (`id`);

--
-- Constraints for table `dtb_customer`
--
ALTER TABLE `dtb_customer`
  ADD CONSTRAINT `FK_8298BBE35A2DB2A0` FOREIGN KEY (`sex_id`) REFERENCES `mtb_sex` (`id`),
  ADD CONSTRAINT `FK_8298BBE3BE04EA9` FOREIGN KEY (`job_id`) REFERENCES `mtb_job` (`id`),
  ADD CONSTRAINT `FK_8298BBE3C00AF8A7` FOREIGN KEY (`customer_status_id`) REFERENCES `mtb_customer_status` (`id`),
  ADD CONSTRAINT `FK_8298BBE3E171EF5F` FOREIGN KEY (`pref_id`) REFERENCES `mtb_pref` (`id`),
  ADD CONSTRAINT `FK_8298BBE3F92F3E70` FOREIGN KEY (`country_id`) REFERENCES `mtb_country` (`id`);

--
-- Constraints for table `dtb_customer_address`
--
ALTER TABLE `dtb_customer_address`
  ADD CONSTRAINT `FK_6C38C0F89395C3F3` FOREIGN KEY (`customer_id`) REFERENCES `dtb_customer` (`id`),
  ADD CONSTRAINT `FK_6C38C0F8E171EF5F` FOREIGN KEY (`pref_id`) REFERENCES `mtb_pref` (`id`),
  ADD CONSTRAINT `FK_6C38C0F8F92F3E70` FOREIGN KEY (`country_id`) REFERENCES `mtb_country` (`id`);

--
-- Constraints for table `dtb_customer_favorite_product`
--
ALTER TABLE `dtb_customer_favorite_product`
  ADD CONSTRAINT `FK_ED6313834584665A` FOREIGN KEY (`product_id`) REFERENCES `dtb_product` (`id`),
  ADD CONSTRAINT `FK_ED6313839395C3F3` FOREIGN KEY (`customer_id`) REFERENCES `dtb_customer` (`id`);

--
-- Constraints for table `dtb_delivery`
--
ALTER TABLE `dtb_delivery`
  ADD CONSTRAINT `FK_3420D9FA61220EA6` FOREIGN KEY (`creator_id`) REFERENCES `dtb_member` (`id`),
  ADD CONSTRAINT `FK_3420D9FAB0524E01` FOREIGN KEY (`sale_type_id`) REFERENCES `mtb_sale_type` (`id`);

--
-- Constraints for table `dtb_delivery_fee`
--
ALTER TABLE `dtb_delivery_fee`
  ADD CONSTRAINT `FK_491552412136921` FOREIGN KEY (`delivery_id`) REFERENCES `dtb_delivery` (`id`),
  ADD CONSTRAINT `FK_4915524E171EF5F` FOREIGN KEY (`pref_id`) REFERENCES `mtb_pref` (`id`);

--
-- Constraints for table `dtb_delivery_time`
--
ALTER TABLE `dtb_delivery_time`
  ADD CONSTRAINT `FK_E80EE3A612136921` FOREIGN KEY (`delivery_id`) REFERENCES `dtb_delivery` (`id`);

--
-- Constraints for table `dtb_layout`
--
ALTER TABLE `dtb_layout`
  ADD CONSTRAINT `FK_5A62AA7C4FFA550E` FOREIGN KEY (`device_type_id`) REFERENCES `mtb_device_type` (`id`);

--
-- Constraints for table `dtb_mail_history`
--
ALTER TABLE `dtb_mail_history`
  ADD CONSTRAINT `FK_4870AB1161220EA6` FOREIGN KEY (`creator_id`) REFERENCES `dtb_member` (`id`),
  ADD CONSTRAINT `FK_4870AB118D9F6D38` FOREIGN KEY (`order_id`) REFERENCES `dtb_order` (`id`);

--
-- Constraints for table `dtb_mail_template`
--
ALTER TABLE `dtb_mail_template`
  ADD CONSTRAINT `FK_1CB16DB261220EA6` FOREIGN KEY (`creator_id`) REFERENCES `dtb_member` (`id`);

--
-- Constraints for table `dtb_member`
--
ALTER TABLE `dtb_member`
  ADD CONSTRAINT `FK_10BC3BE661220EA6` FOREIGN KEY (`creator_id`) REFERENCES `dtb_member` (`id`),
  ADD CONSTRAINT `FK_10BC3BE681EC865B` FOREIGN KEY (`authority_id`) REFERENCES `mtb_authority` (`id`),
  ADD CONSTRAINT `FK_10BC3BE6BB3453DB` FOREIGN KEY (`work_id`) REFERENCES `mtb_work` (`id`);

--
-- Constraints for table `dtb_news`
--
ALTER TABLE `dtb_news`
  ADD CONSTRAINT `FK_EA4C351761220EA6` FOREIGN KEY (`creator_id`) REFERENCES `dtb_member` (`id`);

--
-- Constraints for table `dtb_order`
--
ALTER TABLE `dtb_order`
  ADD CONSTRAINT `FK_1D66D8074C3A3BB` FOREIGN KEY (`payment_id`) REFERENCES `dtb_payment` (`id`),
  ADD CONSTRAINT `FK_1D66D8074FFA550E` FOREIGN KEY (`device_type_id`) REFERENCES `mtb_device_type` (`id`),
  ADD CONSTRAINT `FK_1D66D8075A2DB2A0` FOREIGN KEY (`sex_id`) REFERENCES `mtb_sex` (`id`),
  ADD CONSTRAINT `FK_1D66D8079395C3F3` FOREIGN KEY (`customer_id`) REFERENCES `dtb_customer` (`id`),
  ADD CONSTRAINT `FK_1D66D807BE04EA9` FOREIGN KEY (`job_id`) REFERENCES `mtb_job` (`id`),
  ADD CONSTRAINT `FK_1D66D807E171EF5F` FOREIGN KEY (`pref_id`) REFERENCES `mtb_pref` (`id`),
  ADD CONSTRAINT `FK_1D66D807F92F3E70` FOREIGN KEY (`country_id`) REFERENCES `mtb_country` (`id`);

--
-- Constraints for table `dtb_order_item`
--
ALTER TABLE `dtb_order_item`
  ADD CONSTRAINT `FK_A0C8C3ED1BD5C574` FOREIGN KEY (`rounding_type_id`) REFERENCES `mtb_rounding_type` (`id`),
  ADD CONSTRAINT `FK_A0C8C3ED21B06187` FOREIGN KEY (`product_class_id`) REFERENCES `dtb_product_class` (`id`),
  ADD CONSTRAINT `FK_A0C8C3ED4584665A` FOREIGN KEY (`product_id`) REFERENCES `dtb_product` (`id`),
  ADD CONSTRAINT `FK_A0C8C3ED4887F3F8` FOREIGN KEY (`shipping_id`) REFERENCES `dtb_shipping` (`id`),
  ADD CONSTRAINT `FK_A0C8C3ED84042C99` FOREIGN KEY (`tax_type_id`) REFERENCES `mtb_tax_type` (`id`),
  ADD CONSTRAINT `FK_A0C8C3ED8D9F6D38` FOREIGN KEY (`order_id`) REFERENCES `dtb_order` (`id`),
  ADD CONSTRAINT `FK_A0C8C3EDA2505856` FOREIGN KEY (`tax_display_type_id`) REFERENCES `mtb_tax_display_type` (`id`),
  ADD CONSTRAINT `FK_A0C8C3EDCAD13EAD` FOREIGN KEY (`order_item_type_id`) REFERENCES `mtb_order_item_type` (`id`);

--
-- Constraints for table `dtb_page`
--
ALTER TABLE `dtb_page`
  ADD CONSTRAINT `FK_E3951A67D0618E8C` FOREIGN KEY (`master_page_id`) REFERENCES `dtb_page` (`id`);

--
-- Constraints for table `dtb_page_layout`
--
ALTER TABLE `dtb_page_layout`
  ADD CONSTRAINT `FK_F27999418C22AA1A` FOREIGN KEY (`layout_id`) REFERENCES `dtb_layout` (`id`),
  ADD CONSTRAINT `FK_F2799941C4663E4` FOREIGN KEY (`page_id`) REFERENCES `dtb_page` (`id`);

--
-- Constraints for table `dtb_payment`
--
ALTER TABLE `dtb_payment`
  ADD CONSTRAINT `FK_7AFF628F61220EA6` FOREIGN KEY (`creator_id`) REFERENCES `dtb_member` (`id`);

--
-- Constraints for table `dtb_payment_option`
--
ALTER TABLE `dtb_payment_option`
  ADD CONSTRAINT `FK_5631540D12136921` FOREIGN KEY (`delivery_id`) REFERENCES `dtb_delivery` (`id`),
  ADD CONSTRAINT `FK_5631540D4C3A3BB` FOREIGN KEY (`payment_id`) REFERENCES `dtb_payment` (`id`);

--
-- Constraints for table `dtb_product`
--
ALTER TABLE `dtb_product`
  ADD CONSTRAINT `FK_C49DE22F557B630` FOREIGN KEY (`product_status_id`) REFERENCES `mtb_product_status` (`id`),
  ADD CONSTRAINT `FK_C49DE22F61220EA6` FOREIGN KEY (`creator_id`) REFERENCES `dtb_member` (`id`);

--
-- Constraints for table `dtb_product_category`
--
ALTER TABLE `dtb_product_category`
  ADD CONSTRAINT `FK_B057789112469DE2` FOREIGN KEY (`category_id`) REFERENCES `dtb_category` (`id`),
  ADD CONSTRAINT `FK_B05778914584665A` FOREIGN KEY (`product_id`) REFERENCES `dtb_product` (`id`);

--
-- Constraints for table `dtb_product_class`
--
ALTER TABLE `dtb_product_class`
  ADD CONSTRAINT `FK_1A11D1BA248D128` FOREIGN KEY (`class_category_id1`) REFERENCES `dtb_class_category` (`id`),
  ADD CONSTRAINT `FK_1A11D1BA4584665A` FOREIGN KEY (`product_id`) REFERENCES `dtb_product` (`id`),
  ADD CONSTRAINT `FK_1A11D1BA61220EA6` FOREIGN KEY (`creator_id`) REFERENCES `dtb_member` (`id`),
  ADD CONSTRAINT `FK_1A11D1BA9B418092` FOREIGN KEY (`class_category_id2`) REFERENCES `dtb_class_category` (`id`),
  ADD CONSTRAINT `FK_1A11D1BAB0524E01` FOREIGN KEY (`sale_type_id`) REFERENCES `mtb_sale_type` (`id`),
  ADD CONSTRAINT `FK_1A11D1BABA4269E` FOREIGN KEY (`delivery_duration_id`) REFERENCES `dtb_delivery_duration` (`id`);

--
-- Constraints for table `dtb_product_image`
--
ALTER TABLE `dtb_product_image`
  ADD CONSTRAINT `FK_3267CC7A4584665A` FOREIGN KEY (`product_id`) REFERENCES `dtb_product` (`id`),
  ADD CONSTRAINT `FK_3267CC7A61220EA6` FOREIGN KEY (`creator_id`) REFERENCES `dtb_member` (`id`);

--
-- Constraints for table `dtb_product_stock`
--
ALTER TABLE `dtb_product_stock`
  ADD CONSTRAINT `FK_BC6C9E4521B06187` FOREIGN KEY (`product_class_id`) REFERENCES `dtb_product_class` (`id`),
  ADD CONSTRAINT `FK_BC6C9E4561220EA6` FOREIGN KEY (`creator_id`) REFERENCES `dtb_member` (`id`);

--
-- Constraints for table `dtb_product_tag`
--
ALTER TABLE `dtb_product_tag`
  ADD CONSTRAINT `FK_4433E7214584665A` FOREIGN KEY (`product_id`) REFERENCES `dtb_product` (`id`),
  ADD CONSTRAINT `FK_4433E72161220EA6` FOREIGN KEY (`creator_id`) REFERENCES `dtb_member` (`id`),
  ADD CONSTRAINT `FK_4433E721BAD26311` FOREIGN KEY (`tag_id`) REFERENCES `dtb_tag` (`id`);

--
-- Constraints for table `dtb_shipping`
--
ALTER TABLE `dtb_shipping`
  ADD CONSTRAINT `FK_2EBD22CE12136921` FOREIGN KEY (`delivery_id`) REFERENCES `dtb_delivery` (`id`),
  ADD CONSTRAINT `FK_2EBD22CE61220EA6` FOREIGN KEY (`creator_id`) REFERENCES `dtb_member` (`id`),
  ADD CONSTRAINT `FK_2EBD22CE8D9F6D38` FOREIGN KEY (`order_id`) REFERENCES `dtb_order` (`id`),
  ADD CONSTRAINT `FK_2EBD22CEE171EF5F` FOREIGN KEY (`pref_id`) REFERENCES `mtb_pref` (`id`),
  ADD CONSTRAINT `FK_2EBD22CEF92F3E70` FOREIGN KEY (`country_id`) REFERENCES `mtb_country` (`id`);

--
-- Constraints for table `dtb_tax_rule`
--
ALTER TABLE `dtb_tax_rule`
  ADD CONSTRAINT `FK_59F696DE1BD5C574` FOREIGN KEY (`rounding_type_id`) REFERENCES `mtb_rounding_type` (`id`),
  ADD CONSTRAINT `FK_59F696DE21B06187` FOREIGN KEY (`product_class_id`) REFERENCES `dtb_product_class` (`id`),
  ADD CONSTRAINT `FK_59F696DE4584665A` FOREIGN KEY (`product_id`) REFERENCES `dtb_product` (`id`),
  ADD CONSTRAINT `FK_59F696DE61220EA6` FOREIGN KEY (`creator_id`) REFERENCES `dtb_member` (`id`),
  ADD CONSTRAINT `FK_59F696DEE171EF5F` FOREIGN KEY (`pref_id`) REFERENCES `mtb_pref` (`id`),
  ADD CONSTRAINT `FK_59F696DEF92F3E70` FOREIGN KEY (`country_id`) REFERENCES `mtb_country` (`id`);

--
-- Constraints for table `dtb_template`
--
ALTER TABLE `dtb_template`
  ADD CONSTRAINT `FK_94C12A694FFA550E` FOREIGN KEY (`device_type_id`) REFERENCES `mtb_device_type` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
