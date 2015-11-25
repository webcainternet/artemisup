-- phpMyAdmin SQL Dump
-- version 2.11.6
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 16, 2014 at 05:26 PM
-- Server version: 5.0.51
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `439`
--

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

DROP TABLE IF EXISTS `oc_banner`;
CREATE TABLE `oc_banner` (
  `banner_id` int(11) NOT NULL auto_increment,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY  (`banner_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `banner`
--

INSERT INTO `oc_banner` (`banner_id`, `name`, `status`) VALUES
(22, 'slider', 1),
(16, 'banners', 1),
(21, 'bannerHeader', 1);

-- --------------------------------------------------------

--
-- Table structure for table `banner_image`
--

DROP TABLE IF EXISTS `oc_banner_image`;
CREATE TABLE `oc_banner_image` (
  `banner_image_id` int(11) NOT NULL auto_increment,
  `banner_id` int(11) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY  (`banner_image_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=382 ;

--
-- Dumping data for table `banner_image`
--

INSERT INTO `oc_banner_image` (`banner_image_id`, `banner_id`, `link`, `image`) VALUES
(381, 16, 'index.php?route=product/product&amp;product_id=32', 'data/banner1.jpg'),
(380, 16, 'index.php?route=product/product&amp;product_id=29', 'data/banner2.jpg'),
(379, 16, 'index.php?route=product/product&amp;product_id=28', 'data/banner3.jpg'),
(368, 22, 'index.php?route=product/product&amp;product_id=34', 'data/slide1.jpg'),
(367, 22, 'index.php?route=product/product&amp;product_id=46', 'data/slide2.jpg'),
(366, 22, 'index.php?route=product/product&amp;product_id=49', 'data/slide3.jpg'),
(369, 21, 'index.php?route=product/product&amp;product_id=42', 'data/banner-header.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `banner_image_description`
--

DROP TABLE IF EXISTS `oc_banner_image_description`;
CREATE TABLE `oc_banner_image_description` (
  `banner_image_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `banner_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` longtext character set utf8 collate utf8_bin NOT NULL,
  PRIMARY KEY  (`banner_image_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `banner_image_description`
--

INSERT INTO `oc_banner_image_description` (`banner_image_id`, `language_id`, `banner_id`, `title`, `description`) VALUES
(381, 3, 16, 'banner-1', 0x266c743b68312667743b526564266c743b2f68312667743b0d0a266c743b68322667743b77696e6573266c743b2f68322667743b0d0a266c743b702667743b4c6f72656d20697073756d20646f6c6f722073697420616d657420636f6e736520637465747572206164697069736963696e672e266c743b2f702667743b0d0a266c743b6469762667743b266c743b7370616e2667743b53686f70206e6f7721266c743b2f7370616e2667743b266c743b2f6469762667743b),
(380, 3, 16, 'banner-2', 0x266c743b68312667743b5768697465266c743b2f68312667743b0d0a266c743b68322667743b77696e6573266c743b2f68322667743b0d0a266c743b702667743b4c6f72656d20697073756d20646f6c6f722073697420616d657420636f6e736520637465747572206164697069736963696e672e266c743b2f702667743b0d0a266c743b6469762667743b266c743b7370616e2667743b53686f70206e6f7721266c743b2f7370616e2667743b266c743b2f6469762667743b),
(381, 1, 16, 'banner-1', 0x266c743b68312667743b526564266c743b2f68312667743b0d0a266c743b68322667743b77696e6573266c743b2f68322667743b0d0a266c743b702667743b4c6f72656d20697073756d20646f6c6f722073697420616d657420636f6e736520637465747572206164697069736963696e672e266c743b2f702667743b0d0a266c743b6469762667743b266c743b7370616e2667743b53686f70206e6f7721266c743b2f7370616e2667743b266c743b2f6469762667743b),
(381, 2, 16, 'banner-1', 0x266c743b68312667743b526564266c743b2f68312667743b0d0a266c743b68322667743b77696e6573266c743b2f68322667743b0d0a266c743b702667743b4c6f72656d20697073756d20646f6c6f722073697420616d657420636f6e736520637465747572206164697069736963696e672e266c743b2f702667743b0d0a266c743b6469762667743b266c743b7370616e2667743b53686f70206e6f7721266c743b2f7370616e2667743b266c743b2f6469762667743b),
(380, 1, 16, 'banner-2', 0x266c743b68312667743b5768697465266c743b2f68312667743b0d0a266c743b68322667743b77696e6573266c743b2f68322667743b0d0a266c743b702667743b4c6f72656d20697073756d20646f6c6f722073697420616d657420636f6e736520637465747572206164697069736963696e672e266c743b2f702667743b0d0a266c743b6469762667743b266c743b7370616e2667743b53686f70206e6f7721266c743b2f7370616e2667743b266c743b2f6469762667743b),
(380, 2, 16, 'banner-2', 0x266c743b68312667743b5768697465266c743b2f68312667743b0d0a266c743b68322667743b77696e6573266c743b2f68322667743b0d0a266c743b702667743b4c6f72656d20697073756d20646f6c6f722073697420616d657420636f6e736520637465747572206164697069736963696e672e266c743b2f702667743b0d0a266c743b6469762667743b266c743b7370616e2667743b53686f70206e6f7721266c743b2f7370616e2667743b266c743b2f6469762667743b),
(379, 2, 16, 'banner-3', 0x266c743b68312667743b50696e6b266c743b2f68312667743b0d0a266c743b68322667743b77696e6573266c743b2f68322667743b0d0a266c743b702667743b4c6f72656d20697073756d20646f6c6f722073697420616d657420636f6e736520637465747572206164697069736963696e672e266c743b2f702667743b0d0a266c743b6469762667743b266c743b7370616e2667743b53686f70206e6f7721266c743b2f7370616e2667743b266c743b2f6469762667743b),
(379, 3, 16, 'banner-3', 0x266c743b68312667743b50696e6b266c743b2f68312667743b0d0a266c743b68322667743b77696e6573266c743b2f68322667743b0d0a266c743b702667743b4c6f72656d20697073756d20646f6c6f722073697420616d657420636f6e736520637465747572206164697069736963696e672e266c743b2f702667743b0d0a266c743b6469762667743b266c743b7370616e2667743b53686f70206e6f7721266c743b2f7370616e2667743b266c743b2f6469762667743b),
(379, 1, 16, 'banner-3', 0x266c743b68312667743b50696e6b266c743b2f68312667743b0d0a266c743b68322667743b77696e6573266c743b2f68322667743b0d0a266c743b702667743b4c6f72656d20697073756d20646f6c6f722073697420616d657420636f6e736520637465747572206164697069736963696e672e266c743b2f702667743b0d0a266c743b6469762667743b266c743b7370616e2667743b53686f70206e6f7721266c743b2f7370616e2667743b266c743b2f6469762667743b),
(368, 3, 22, 'slide-1', 0x266c743b68312667743bd0a1686f6f736520616d6f6e67266c743b2f68312667743b0d0a266c743b68322667743b74686520626573742077696e6573266c743b2f68322667743b),
(368, 2, 22, 'slide-1', 0x266c743b68312667743bd0a1686f6f736520616d6f6e67266c743b2f68312667743b0d0a266c743b68322667743b74686520626573742077696e6573266c743b2f68322667743b),
(368, 1, 22, 'slide-1', 0x266c743b68312667743bd0a1686f6f736520616d6f6e67266c743b2f68312667743b0d0a266c743b68322667743b74686520626573742077696e6573266c743b2f68322667743b),
(367, 3, 22, 'slide-2', 0x266c743b68312667743b546f702032302057696e65266c743b2f68312667743b0d0a266c743b68322667743b6f662032303134266c743b2f68322667743b),
(367, 2, 22, 'slide-2', 0x266c743b68312667743b546f702032302057696e65266c743b2f68312667743b0d0a266c743b68322667743b6f662032303134266c743b2f68322667743b),
(366, 1, 22, 'slide-3', 0x266c743b68312667743b4e6577266c743b2f68312667743b0d0a266c743b68322667743b4172726976616c73266c743b2f68322667743b),
(366, 2, 22, 'slide-3', 0x266c743b68312667743b4e6577266c743b2f68312667743b0d0a266c743b68322667743b4172726976616c73266c743b2f68322667743b),
(366, 3, 22, 'slide-3', 0x266c743b68312667743b4e6577266c743b2f68312667743b0d0a266c743b68322667743b4172726976616c73266c743b2f68322667743b),
(369, 1, 21, 'banner-1', 0x266c743b68312667743b53616c65266c743b2f68312667743b0d0a266c743b68332667743b47657420757020746f266c743b2f68332667743b0d0a266c743b68322667743b266c743b7370616e2667743b353025266c743b2f7370616e2667743b206f6666266c743b2f68322667743b0d0a266c743b702667743b706c757320667265652064656c6976657279206f6e0d0a6f7264657273206f76657220243939266c743b2f702667743b),
(369, 2, 21, 'banner-1', 0x266c743b68312667743b53616c65266c743b2f68312667743b0d0a266c743b68332667743b47657420757020746f266c743b2f68332667743b0d0a266c743b68322667743b266c743b7370616e2667743b353025266c743b2f7370616e2667743b206f6666266c743b2f68322667743b0d0a266c743b702667743b706c757320667265652064656c6976657279206f6e0d0a6f7264657273206f76657220243939266c743b2f702667743b),
(367, 1, 22, 'slide-2', 0x266c743b68312667743b546f702032302057696e65266c743b2f68312667743b0d0a266c743b68322667743b6f662032303134266c743b2f68322667743b),
(369, 3, 21, 'banner-1', 0x266c743b68312667743b53616c65266c743b2f68312667743b0d0a266c743b68332667743b47657420757020746f266c743b2f68332667743b0d0a266c743b68322667743b266c743b7370616e2667743b353025266c743b2f7370616e2667743b206f6666266c743b2f68322667743b0d0a266c743b702667743b706c757320667265652064656c6976657279206f6e0d0a6f7264657273206f76657220243939266c743b2f702667743b);

-- --------------------------------------------------------

--
-- Table structure for table `extension`
--

DROP TABLE IF EXISTS `oc_extension`;
CREATE TABLE `oc_extension` (
  `extension_id` int(11) NOT NULL auto_increment,
  `type` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  PRIMARY KEY  (`extension_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=501 ;

--
-- Dumping data for table `extension`
--

INSERT INTO `oc_extension` (`extension_id`, `type`, `code`) VALUES
(23, 'payment', 'cod'),
(22, 'total', 'shipping'),
(57, 'total', 'sub_total'),
(58, 'total', 'tax'),
(59, 'total', 'total'),
(468, 'module', 'latest'),
(390, 'total', 'credit'),
(387, 'shipping', 'flat'),
(349, 'total', 'handling'),
(350, 'total', 'low_order_fee'),
(389, 'total', 'coupon'),
(445, 'module', 'filter'),
(464, 'module', 'account'),
(393, 'total', 'reward'),
(398, 'total', 'voucher'),
(407, 'payment', 'free_checkout'),
(444, 'module', 'featured'),
(440, 'module', 'banner'),
(467, 'module', 'information'),
(465, 'module', 'affiliate'),
(466, 'module', 'bestseller'),
(499, 'module', 'manufacturer'),
(449, 'module', 'special'),
(481, 'shipping', 'free'),
(494, 'module', 'compare'),
(495, 'module', 'vqmod_manager'),
(500, 'module', 'newcarousel');

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

DROP TABLE IF EXISTS `oc_setting`;
CREATE TABLE `oc_setting` (
  `setting_id` int(11) NOT NULL auto_increment,
  `store_id` int(11) NOT NULL default '0',
  `group` varchar(32) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL,
  `serialized` tinyint(1) NOT NULL,
  PRIMARY KEY  (`setting_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6818 ;

--
-- Dumping data for table `setting`
--

INSERT INTO `oc_setting` (`setting_id`, `store_id`, `group`, `key`, `value`, `serialized`) VALUES
(1, 0, 'shipping', 'shipping_sort_order', '3', 0),
(2, 0, 'sub_total', 'sub_total_sort_order', '1', 0),
(3, 0, 'sub_total', 'sub_total_status', '1', 0),
(4, 0, 'tax', 'tax_status', '1', 0),
(5, 0, 'total', 'total_sort_order', '9', 0),
(6, 0, 'total', 'total_status', '1', 0),
(7, 0, 'tax', 'tax_sort_order', '5', 0),
(8, 0, 'free_checkout', 'free_checkout_sort_order', '1', 0),
(9, 0, 'cod', 'cod_sort_order', '5', 0),
(10, 0, 'cod', 'cod_total', '0.01', 0),
(11, 0, 'cod', 'cod_order_status_id', '1', 0),
(12, 0, 'cod', 'cod_geo_zone_id', '0', 0),
(13, 0, 'cod', 'cod_status', '1', 0),
(14, 0, 'shipping', 'shipping_status', '1', 0),
(15, 0, 'shipping', 'shipping_estimator', '1', 0),
(27, 0, 'coupon', 'coupon_sort_order', '4', 0),
(28, 0, 'coupon', 'coupon_status', '1', 0),
(3047, 0, 'flat', 'flat_sort_order', '1', 0),
(3046, 0, 'flat', 'flat_status', '1', 0),
(3045, 0, 'flat', 'flat_geo_zone_id', '0', 0),
(3044, 0, 'flat', 'flat_tax_class_id', '9', 0),
(3043, 0, 'flat', 'flat_cost', '5.00', 0),
(42, 0, 'credit', 'credit_sort_order', '7', 0),
(43, 0, 'credit', 'credit_status', '1', 0),
(53, 0, 'reward', 'reward_sort_order', '2', 0),
(54, 0, 'reward', 'reward_status', '1', 0),
(6595, 0, 'account', 'account_module', 'a:8:{i:0;a:4:{s:9:"layout_id";s:1:"6";s:8:"position";s:12:"column_right";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"2";}i:1;a:4:{s:9:"layout_id";s:1:"4";s:8:"position";s:12:"column_right";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"2";}i:2;a:4:{s:9:"layout_id";s:2:"11";s:8:"position";s:12:"column_right";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"2";}i:3;a:4:{s:9:"layout_id";s:1:"5";s:8:"position";s:12:"column_right";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"2";}i:4;a:4:{s:9:"layout_id";s:1:"9";s:8:"position";s:12:"column_right";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"2";}i:5;a:4:{s:9:"layout_id";s:1:"7";s:8:"position";s:12:"column_right";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"2";}i:6;a:4:{s:9:"layout_id";s:1:"8";s:8:"position";s:12:"column_right";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"2";}i:7;a:4:{s:9:"layout_id";s:1:"2";s:8:"position";s:12:"column_right";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"2";}}', 1),
(6705, 0, 'special', 'special_module', 'a:1:{i:0;a:7:{s:5:"limit";s:1:"4";s:11:"image_width";s:3:"229";s:12:"image_height";s:3:"251";s:9:"layout_id";s:1:"1";s:8:"position";s:11:"content_top";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"2";}}', 1),
(6803, 0, 'config', 'config_file_mime_allowed', 'text/plain\r\nimage/png\r\nimage/jpeg\r\nimage/jpeg\r\nimage/jpeg\r\nimage/gif\r\nimage/bmp\r\nimage/vnd.microsoft.icon\r\nimage/tiff\r\nimage/tiff\r\nimage/svg+xml\r\nimage/svg+xml\r\napplication/zip\r\napplication/x-rar-compressed\r\napplication/x-msdownload\r\napplication/vnd.ms-cab-compressed\r\naudio/mpeg\r\nvideo/quicktime\r\nvideo/quicktime\r\napplication/pdf\r\nimage/vnd.adobe.photoshop\r\napplication/postscript\r\napplication/postscript\r\napplication/postscript\r\napplication/msword\r\napplication/rtf\r\napplication/vnd.ms-excel\r\napplication/vnd.ms-powerpoint\r\napplication/vnd.oasis.opendocument.text\r\napplication/vnd.oasis.opendocument.spreadsheet', 0),
(5340, 0, 'compare', 'compare_module', 'a:2:{i:0;a:4:{s:9:"layout_id";s:1:"3";s:8:"position";s:12:"column_right";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"4";}i:1;a:4:{s:9:"layout_id";s:1:"2";s:8:"position";s:12:"column_right";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"4";}}', 1),
(94, 0, 'voucher', 'voucher_sort_order', '8', 0),
(95, 0, 'voucher', 'voucher_status', '1', 0),
(103, 0, 'free_checkout', 'free_checkout_status', '1', 0),
(104, 0, 'free_checkout', 'free_checkout_order_status_id', '1', 0),
(4353, 0, 'affiliate', 'affiliate_module', 'a:1:{i:0;a:4:{s:9:"layout_id";s:2:"10";s:8:"position";s:12:"column_right";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"3";}}', 1),
(5133, 0, 'filter', 'filter_module', 'a:1:{i:0;a:4:{s:9:"layout_id";s:1:"3";s:8:"position";s:12:"column_right";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"4";}}', 1),
(3579, 0, 'information', 'information_module', 'a:1:{i:0;a:4:{s:9:"layout_id";s:1:"3";s:8:"position";s:12:"column_right";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"2";}}', 1),
(6719, 0, 'config', 'config_country_id', '222', 0),
(6720, 0, 'config', 'config_zone_id', '3563', 0),
(6721, 0, 'config', 'config_language', 'en', 0),
(6722, 0, 'config', 'config_admin_language', 'en', 0),
(6723, 0, 'config', 'config_currency', 'USD', 0),
(6724, 0, 'config', 'config_currency_auto', '1', 0),
(6725, 0, 'config', 'config_length_class_id', '1', 0),
(6726, 0, 'config', 'config_weight_class_id', '1', 0),
(6727, 0, 'config', 'config_catalog_limit', '6', 0),
(6728, 0, 'config', 'config_admin_limit', '20', 0),
(6729, 0, 'config', 'config_product_count', '0', 0),
(6730, 0, 'config', 'config_review_status', '1', 0),
(6731, 0, 'config', 'config_download', '1', 0),
(6732, 0, 'config', 'config_voucher_min', '1', 0),
(6733, 0, 'config', 'config_voucher_max', '1000', 0),
(6734, 0, 'config', 'config_tax', '1', 0),
(6735, 0, 'config', 'config_vat', '0', 0),
(6736, 0, 'config', 'config_tax_default', 'shipping', 0),
(6737, 0, 'config', 'config_tax_customer', 'shipping', 0),
(6738, 0, 'config', 'config_customer_online', '0', 0),
(6739, 0, 'config', 'config_customer_group_id', '1', 0),
(6740, 0, 'config', 'config_customer_group_display', 'a:1:{i:0;s:1:"1";}', 1),
(6741, 0, 'config', 'config_customer_price', '0', 0),
(6742, 0, 'config', 'config_account_id', '3', 0),
(6743, 0, 'config', 'config_cart_weight', '1', 0),
(6744, 0, 'config', 'config_guest_checkout', '1', 0),
(6745, 0, 'config', 'config_checkout_id', '5', 0),
(6746, 0, 'config', 'config_order_edit', '100', 0),
(6747, 0, 'config', 'config_invoice_prefix', 'INV-2012-00', 0),
(6748, 0, 'config', 'config_order_status_id', '1', 0),
(6749, 0, 'config', 'config_complete_status_id', '5', 0),
(6750, 0, 'config', 'config_stock_display', '0', 0),
(6751, 0, 'config', 'config_stock_warning', '0', 0),
(6752, 0, 'config', 'config_stock_checkout', '0', 0),
(6753, 0, 'config', 'config_stock_status_id', '5', 0),
(6754, 0, 'config', 'config_affiliate_id', '4', 0),
(6755, 0, 'config', 'config_commission', '5', 0),
(6756, 0, 'config', 'config_return_id', '0', 0),
(6757, 0, 'config', 'config_return_status_id', '2', 0),
(6758, 0, 'config', 'config_logo', 'data/logo.png', 0),
(6759, 0, 'config', 'config_icon', 'data/favicon.png', 0),
(6760, 0, 'config', 'config_image_category_width', '214', 0),
(6761, 0, 'config', 'config_image_category_height', '235', 0),
(6762, 0, 'config', 'config_image_thumb_width', '270', 0),
(6763, 0, 'config', 'config_image_thumb_height', '270', 0),
(6764, 0, 'config', 'config_image_popup_width', '600', 0),
(6765, 0, 'config', 'config_image_popup_height', '600', 0),
(6766, 0, 'config', 'config_image_product_width', '229', 0),
(6767, 0, 'config', 'config_image_product_height', '282', 0),
(6768, 0, 'config', 'config_image_additional_width', '70', 0),
(6769, 0, 'config', 'config_image_additional_height', '70', 0),
(6770, 0, 'config', 'config_image_related_width', '170', 0),
(6771, 0, 'config', 'config_image_related_height', '186', 0),
(6772, 0, 'config', 'config_image_compare_width', '90', 0),
(6773, 0, 'config', 'config_image_compare_height', '90', 0),
(6774, 0, 'config', 'config_image_wishlist_width', '47', 0),
(6775, 0, 'config', 'config_image_wishlist_height', '47', 0),
(6776, 0, 'config', 'config_image_cart_width', '69', 0),
(6777, 0, 'config', 'config_image_cart_height', '69', 0),
(6778, 0, 'config', 'config_ftp_host', '192.168.9.2', 0),
(6779, 0, 'config', 'config_ftp_port', '21', 0),
(6780, 0, 'config', 'config_ftp_username', '', 0),
(6781, 0, 'config', 'config_ftp_password', '', 0),
(6782, 0, 'config', 'config_ftp_root', '', 0),
(6783, 0, 'config', 'config_ftp_status', '0', 0),
(6784, 0, 'config', 'config_mail_protocol', 'mail', 0),
(6785, 0, 'config', 'config_mail_parameter', '', 0),
(6786, 0, 'config', 'config_smtp_host', '', 0),
(6787, 0, 'config', 'config_smtp_username', '', 0),
(6788, 0, 'config', 'config_smtp_password', '', 0),
(6789, 0, 'config', 'config_smtp_port', '25', 0),
(6790, 0, 'config', 'config_smtp_timeout', '5', 0),
(6791, 0, 'config', 'config_alert_mail', '0', 0),
(6792, 0, 'config', 'config_account_mail', '0', 0),
(6793, 0, 'config', 'config_alert_emails', '', 0),
(6794, 0, 'config', 'config_fraud_detection', '0', 0),
(6795, 0, 'config', 'config_fraud_key', '', 0),
(6796, 0, 'config', 'config_fraud_score', '', 0),
(6797, 0, 'config', 'config_fraud_status_id', '7', 0),
(6798, 0, 'config', 'config_secure', '0', 0),
(6799, 0, 'config', 'config_shared', '0', 0),
(6800, 0, 'config', 'config_robots', 'abot\r\ndbot\r\nebot\r\nhbot\r\nkbot\r\nlbot\r\nmbot\r\nnbot\r\nobot\r\npbot\r\nrbot\r\nsbot\r\ntbot\r\nvbot\r\nybot\r\nzbot\r\nbot.\r\nbot/\r\n_bot\r\n.bot\r\n/bot\r\n-bot\r\n:bot\r\n(bot\r\ncrawl\r\nslurp\r\nspider\r\nseek\r\naccoona\r\nacoon\r\nadressendeutschland\r\nah-ha.com\r\nahoy\r\naltavista\r\nananzi\r\nanthill\r\nappie\r\narachnophilia\r\narale\r\naraneo\r\naranha\r\narchitext\r\naretha\r\narks\r\nasterias\r\natlocal\r\natn\r\natomz\r\naugurfind\r\nbackrub\r\nbannana_bot\r\nbaypup\r\nbdfetch\r\nbig brother\r\nbiglotron\r\nbjaaland\r\nblackwidow\r\nblaiz\r\nblog\r\nblo.\r\nbloodhound\r\nboitho\r\nbooch\r\nbradley\r\nbutterfly\r\ncalif\r\ncassandra\r\nccubee\r\ncfetch\r\ncharlotte\r\nchurl\r\ncienciaficcion\r\ncmc\r\ncollective\r\ncomagent\r\ncombine\r\ncomputingsite\r\ncsci\r\ncurl\r\ncusco\r\ndaumoa\r\ndeepindex\r\ndelorie\r\ndepspid\r\ndeweb\r\ndie blinde kuh\r\ndigger\r\nditto\r\ndmoz\r\ndocomo\r\ndownload express\r\ndtaagent\r\ndwcp\r\nebiness\r\nebingbong\r\ne-collector\r\nejupiter\r\nemacs-w3 search engine\r\nesther\r\nevliya celebi\r\nezresult\r\nfalcon\r\nfelix ide\r\nferret\r\nfetchrover\r\nfido\r\nfindlinks\r\nfireball\r\nfish search\r\nfouineur\r\nfunnelweb\r\ngazz\r\ngcreep\r\ngenieknows\r\ngetterroboplus\r\ngeturl\r\nglx\r\ngoforit\r\ngolem\r\ngrabber\r\ngrapnel\r\ngralon\r\ngriffon\r\ngromit\r\ngrub\r\ngulliver\r\nhamahakki\r\nharvest\r\nhavindex\r\nhelix\r\nheritrix\r\nhku www octopus\r\nhomerweb\r\nhtdig\r\nhtml index\r\nhtml_analyzer\r\nhtmlgobble\r\nhubater\r\nhyper-decontextualizer\r\nia_archiver\r\nibm_planetwide\r\nichiro\r\niconsurf\r\niltrovatore\r\nimage.kapsi.net\r\nimagelock\r\nincywincy\r\nindexer\r\ninfobee\r\ninformant\r\ningrid\r\ninktomisearch.com\r\ninspector web\r\nintelliagent\r\ninternet shinchakubin\r\nip3000\r\niron33\r\nisraeli-search\r\nivia\r\njack\r\njakarta\r\njavabee\r\njetbot\r\njumpstation\r\nkatipo\r\nkdd-explorer\r\nkilroy\r\nknowledge\r\nkototoi\r\nkretrieve\r\nlabelgrabber\r\nlachesis\r\nlarbin\r\nlegs\r\nlibwww\r\nlinkalarm\r\nlink validator\r\nlinkscan\r\nlockon\r\nlwp\r\nlycos\r\nmagpie\r\nmantraagent\r\nmapoftheinternet\r\nmarvin/\r\nmattie\r\nmediafox\r\nmediapartners\r\nmercator\r\nmerzscope\r\nmicrosoft url control\r\nminirank\r\nmiva\r\nmj12\r\nmnogosearch\r\nmoget\r\nmonster\r\nmoose\r\nmotor\r\nmultitext\r\nmuncher\r\nmuscatferret\r\nmwd.search\r\nmyweb\r\nnajdi\r\nnameprotect\r\nnationaldirectory\r\nnazilla\r\nncsa beta\r\nnec-meshexplorer\r\nnederland.zoek\r\nnetcarta webmap engine\r\nnetmechanic\r\nnetresearchserver\r\nnetscoop\r\nnewscan-online\r\nnhse\r\nnokia6682/\r\nnomad\r\nnoyona\r\nnutch\r\nnzexplorer\r\nobjectssearch\r\noccam\r\nomni\r\nopen text\r\nopenfind\r\nopenintelligencedata\r\norb search\r\nosis-project\r\npack rat\r\npageboy\r\npagebull\r\npage_verifier\r\npanscient\r\nparasite\r\npartnersite\r\npatric\r\npear.\r\npegasus\r\nperegrinator\r\npgp key agent\r\nphantom\r\nphpdig\r\npicosearch\r\npiltdownman\r\npimptrain\r\npinpoint\r\npioneer\r\npiranha\r\nplumtreewebaccessor\r\npogodak\r\npoirot\r\npompos\r\npoppelsdorf\r\npoppi\r\npopular iconoclast\r\npsycheclone\r\npublisher\r\npython\r\nrambler\r\nraven search\r\nroach\r\nroad runner\r\nroadhouse\r\nrobbie\r\nrobofox\r\nrobozilla\r\nrules\r\nsalty\r\nsbider\r\nscooter\r\nscoutjet\r\nscrubby\r\nsearch.\r\nsearchprocess\r\nsemanticdiscovery\r\nsenrigan\r\nsg-scout\r\nshai''hulud\r\nshark\r\nshopwiki\r\nsidewinder\r\nsift\r\nsilk\r\nsimmany\r\nsite searcher\r\nsite valet\r\nsitetech-rover\r\nskymob.com\r\nsleek\r\nsmartwit\r\nsna-\r\nsnappy\r\nsnooper\r\nsohu\r\nspeedfind\r\nsphere\r\nsphider\r\nspinner\r\nspyder\r\nsteeler/\r\nsuke\r\nsuntek\r\nsupersnooper\r\nsurfnomore\r\nsven\r\nsygol\r\nszukacz\r\ntach black widow\r\ntarantula\r\ntempleton\r\n/teoma\r\nt-h-u-n-d-e-r-s-t-o-n-e\r\ntheophrastus\r\ntitan\r\ntitin\r\ntkwww\r\ntoutatis\r\nt-rex\r\ntutorgig\r\ntwiceler\r\ntwisted\r\nucsd\r\nudmsearch\r\nurl check\r\nupdated\r\nvagabondo\r\nvalkyrie\r\nverticrawl\r\nvictoria\r\nvision-search\r\nvolcano\r\nvoyager/\r\nvoyager-hc\r\nw3c_validator\r\nw3m2\r\nw3mir\r\nwalker\r\nwallpaper\r\nwanderer\r\nwauuu\r\nwavefire\r\nweb core\r\nweb hopper\r\nweb wombat\r\nwebbandit\r\nwebcatcher\r\nwebcopy\r\nwebfoot\r\nweblayers\r\nweblinker\r\nweblog monitor\r\nwebmirror\r\nwebmonkey\r\nwebquest\r\nwebreaper\r\nwebsitepulse\r\nwebsnarf\r\nwebstolperer\r\nwebvac\r\nwebwalk\r\nwebwatch\r\nwebwombat\r\nwebzinger\r\nwget\r\nwhizbang\r\nwhowhere\r\nwild ferret\r\nworldlight\r\nwwwc\r\nwwwster\r\nxenu\r\nxget\r\nxift\r\nxirq\r\nyandex\r\nyanga\r\nyeti\r\nyodao\r\nzao\r\nzippp\r\nzyborg', 0),
(6815, 0, 'banner', 'banner_module', 'a:2:{i:0;a:7:{s:9:"banner_id";s:2:"21";s:5:"width";s:3:"368";s:6:"height";s:3:"385";s:9:"layout_id";s:1:"1";s:8:"position";s:10:"header_top";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"2";}i:1;a:7:{s:9:"banner_id";s:2:"16";s:5:"width";s:3:"368";s:6:"height";s:3:"223";s:9:"layout_id";s:1:"1";s:8:"position";s:11:"content_top";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}}', 1),
(6802, 0, 'config', 'config_file_extension_allowed', 'txt\r\npng\r\njpe\r\njpeg\r\njpg\r\ngif\r\nbmp\r\nico\r\ntiff\r\ntif\r\nsvg\r\nsvgz\r\nzip\r\nrar\r\nmsi\r\ncab\r\nmp3\r\nqt\r\nmov\r\npdf\r\npsd\r\nai\r\neps\r\nps\r\ndoc\r\nrtf\r\nxls\r\nppt\r\nodt\r\nods', 0),
(6801, 0, 'config', 'config_seo_url', '0', 0),
(2056, 0, 'newslideshow', 'slideshow_module', 'a:1:{i:0;a:7:{s:9:"banner_id";s:2:"14";s:5:"width";s:4:"1000";s:6:"height";s:3:"400";s:9:"layout_id";s:1:"6";s:8:"position";s:11:"content_top";s:6:"status";s:1:"1";s:10:"sort_order";s:0:"";}}', 1),
(3051, 0, 'free', 'free_sort_order', '2', 0),
(3050, 0, 'free', 'free_status', '0', 0),
(3049, 0, 'free', 'free_geo_zone_id', '0', 0),
(3048, 0, 'free', 'free_total', '', 0),
(6594, 0, 'bestseller', 'bestseller_module', 'a:4:{i:0;a:7:{s:5:"limit";s:1:"1";s:11:"image_width";s:3:"304";s:12:"image_height";s:3:"344";s:9:"layout_id";s:1:"4";s:8:"position";s:12:"column_right";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}i:1;a:7:{s:5:"limit";s:1:"1";s:11:"image_width";s:3:"304";s:12:"image_height";s:3:"344";s:9:"layout_id";s:1:"3";s:8:"position";s:12:"column_right";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}i:2;a:7:{s:5:"limit";s:1:"1";s:11:"image_width";s:3:"304";s:12:"image_height";s:3:"344";s:9:"layout_id";s:1:"8";s:8:"position";s:12:"column_right";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}i:3;a:7:{s:5:"limit";s:1:"1";s:11:"image_width";s:3:"304";s:12:"image_height";s:3:"344";s:9:"layout_id";s:1:"7";s:8:"position";s:12:"column_right";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}}', 1),
(6596, 0, 'latest', 'latest_module', 'a:3:{i:0;a:7:{s:5:"limit";s:1:"1";s:11:"image_width";s:3:"304";s:12:"image_height";s:3:"344";s:9:"layout_id";s:1:"4";s:8:"position";s:12:"column_right";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}i:1;a:7:{s:5:"limit";s:1:"1";s:11:"image_width";s:3:"304";s:12:"image_height";s:3:"344";s:9:"layout_id";s:1:"9";s:8:"position";s:12:"column_right";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}i:2;a:7:{s:5:"limit";s:1:"1";s:11:"image_width";s:3:"304";s:12:"image_height";s:3:"344";s:9:"layout_id";s:1:"2";s:8:"position";s:12:"column_right";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}}', 1),
(6708, 0, 'featured', 'featured_module', 'a:1:{i:0;a:7:{s:5:"limit";s:1:"4";s:11:"image_width";s:3:"229";s:12:"image_height";s:3:"251";s:9:"layout_id";s:1:"1";s:8:"position";s:11:"content_top";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"2";}}', 1),
(5341, 0, 'manufacturer', 'manufacturer_module', 'a:1:{i:0;a:4:{s:9:"layout_id";s:1:"3";s:8:"position";s:12:"column_right";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"5";}}', 1),
(6817, 0, 'newcarousel', 'newcarousel_module', 'a:1:{i:0;a:7:{s:9:"banner_id";s:2:"22";s:5:"width";s:3:"770";s:6:"height";s:3:"387";s:9:"layout_id";s:1:"1";s:8:"position";s:10:"header_top";s:6:"status";s:1:"1";s:10:"sort_order";s:1:"1";}}', 1),
(6706, 0, 'featured', 'product', '', 0),
(6718, 0, 'config', 'config_layout_id', '4', 0),
(6717, 0, 'config', 'config_template', 'theme439', 0),
(6715, 0, 'config', 'config_title', 'Wine online store', 0),
(6716, 0, 'config', 'config_meta_description', 'Wine online store', 0),
(6714, 0, 'config', 'config_fax', '1-800-234-5678', 0),
(6707, 0, 'featured', 'featured_product', '34,46,49,42', 0),
(6713, 0, 'config', 'config_telephone', '(800) 2345-6789', 0),
(6712, 0, 'config', 'config_email', 'admin@demolink.org', 0),
(6711, 0, 'config', 'config_address', '8901 Marmora Road, Glasgow, D04 89GR', 0),
(6710, 0, 'config', 'config_owner', 'Wine online store', 0),
(6709, 0, 'config', 'config_name', 'Wine store', 0),
(6804, 0, 'config', 'config_maintenance', '0', 0),
(6805, 0, 'config', 'config_password', '1', 0),
(6806, 0, 'config', 'config_encryption', 'ea4f89dfb1d48ab0e056f3b062d95975', 0),
(6807, 0, 'config', 'config_compression', '0', 0),
(6808, 0, 'config', 'config_error_display', '1', 0),
(6809, 0, 'config', 'config_error_log', '1', 0),
(6810, 0, 'config', 'config_error_filename', 'error.txt', 0),
(6811, 0, 'config', 'config_google_analytics', '', 0);
