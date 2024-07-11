-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 11, 2024 at 02:51 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `line1` varchar(100) DEFAULT NULL,
  `line2` varchar(100) DEFAULT NULL,
  `pincode` varchar(10) DEFAULT NULL,
  `state` varchar(25) DEFAULT NULL,
  `area` varchar(50) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT 0,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `update_date` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `uid`, `line1`, `line2`, `pincode`, `state`, `area`, `city`, `is_default`, `created_date`, `update_date`) VALUES
(5, 3, 'Gram Panchayat Ni Pachal', 'Lakhiya Sheri', '394510', 'Gujarat', 'Vallabhnagar', 'Bhavnagar', 0, '2024-07-02 11:05:39', '2024-07-03 10:01:16');

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` int(11) NOT NULL,
  `type` enum('style','occasion','fabric') DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `update_date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`id`, `type`, `name`, `active`, `created_date`, `update_date`) VALUES
(1, 'fabric', 'cotton', 1, '2024-06-27 16:40:00', '2024-06-27 16:40:00'),
(2, 'fabric', 'rayon', 1, '2024-06-27 16:40:00', '2024-06-27 16:40:00'),
(3, 'fabric', 'silk', 1, '2024-06-27 16:40:00', '2024-06-27 16:40:00'),
(4, 'occasion', 'daily', 1, '2024-06-27 16:41:33', '2024-06-27 16:41:33'),
(5, 'occasion', 'fastival', 1, '2024-06-27 16:41:33', '2024-06-27 16:41:33'),
(6, 'occasion', 'office', 1, '2024-06-27 16:41:33', '2024-06-27 16:41:33'),
(7, 'occasion', 'fusion', 1, '2024-06-27 16:41:33', '2024-06-27 16:41:33'),
(8, 'style', 'alia cut', 1, '2024-06-27 16:44:51', '2024-06-27 16:44:51'),
(9, 'style', 'straight', 1, '2024-06-27 16:44:51', '2024-06-27 16:44:51'),
(10, 'style', 'a-line', 1, '2024-06-27 16:44:51', '2024-06-27 16:44:51'),
(11, 'style', 'angrakha', 1, '2024-06-27 16:44:51', '2024-06-27 16:44:51'),
(12, 'style', 'anarkali', 1, '2024-06-27 16:44:51', '2024-06-27 16:44:51'),
(13, 'style', 'sharara', 1, '2024-06-27 16:44:51', '2024-06-27 16:44:51');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `variant_id` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `update_date` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `uid`, `variant_id`, `qty`, `created_date`, `update_date`) VALUES
(1, 3, 368, 5, '2024-07-09 16:54:45', '2024-07-09 16:54:45'),
(2, 3, 369, 2, '2024-07-09 17:21:05', '2024-07-09 17:41:43');

-- --------------------------------------------------------

--
-- Stand-in structure for view `demo`
-- (See below for the actual view)
--
CREATE TABLE `demo` (
`qty` int(11)
,`color_id` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `uid` int(11) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(75) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`uid`, `uname`, `email`, `password`, `created_date`) VALUES
(1, 'Chirag', 'chirag@gmail.com', '$2a$10$Y75qXJ8K6mOVJidVuW/QWehmH3U6E776bjmS12QZelsZJ0if.0Mwy', '2024-01-10 14:35:59');

-- --------------------------------------------------------

--
-- Table structure for table `tblcolor`
--

CREATE TABLE `tblcolor` (
  `color_id` int(11) NOT NULL,
  `color_name` varchar(50) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `update_date` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblcolor`
--

INSERT INTO `tblcolor` (`color_id`, `color_name`, `active`, `created_date`, `update_date`) VALUES
(2, 'Yellow', 1, '2024-01-16 14:39:48', '2024-06-27 15:05:20'),
(3, 'Pink', 1, '2024-01-16 14:40:08', '2024-06-27 15:05:23'),
(4, 'Green', 1, '2024-01-16 14:40:08', '2024-06-27 15:05:26'),
(8, 'Red', 1, '2024-04-04 14:44:14', '0000-00-00 00:00:00'),
(28, 'Silver', 1, '2024-06-14 10:18:56', '0000-00-00 00:00:00'),
(31, 'Peach', 1, '2024-06-27 12:18:05', '0000-00-00 00:00:00'),
(32, 'Maroon', 1, '2024-07-02 12:37:29', '2024-07-02 12:37:29'),
(33, 'Teal', 1, '2024-07-02 12:50:45', '2024-07-02 12:50:45');

-- --------------------------------------------------------

--
-- Table structure for table `tblimages`
--

CREATE TABLE `tblimages` (
  `image_id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `color_id` int(11) DEFAULT NULL,
  `image_array` text NOT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_date` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblimages`
--

INSERT INTO `tblimages` (`image_id`, `product_id`, `color_id`, `image_array`, `created_date`, `updated_date`) VALUES
(213, 115, 3, '[\"product_1719903682542_46677.png\",\"product_1719903682543_95897.png\",\"product_1719903682543_34323.png\"]', '2024-07-02 12:31:22', '2024-07-02 12:31:22'),
(214, 115, 2, '[\"product_1719903875801_32775.png\",\"product_1719903865330_54122.png\"]', '2024-07-02 12:34:25', '2024-07-02 12:34:37'),
(215, 116, 32, '[\"product_1719904109873_45923.png\"]', '2024-07-02 12:38:29', '2024-07-02 12:38:29'),
(216, 117, 8, '[\"product_1719904497058_54787.png\"]', '2024-07-02 12:44:57', '2024-07-02 12:44:57'),
(217, 118, 32, '[\"product_1719904772190_13004.png\"]', '2024-07-02 12:49:32', '2024-07-02 12:49:32'),
(218, 118, 3, '[\"product_1719904837528_61781.png\"]', '2024-07-02 12:50:37', '2024-07-02 12:50:37'),
(220, 119, 32, '[\"product_1719906702601_60736.png\"]', '2024-07-02 13:21:42', '2024-07-02 13:21:42'),
(221, 120, 32, '[\"product_1720431955056_33723.png\"]', '2024-07-08 15:15:55', '2024-07-08 15:15:55'),
(222, 120, 4, '[\"product_1720432032574_11228.png\"]', '2024-07-08 15:17:12', '2024-07-08 15:17:12'),
(223, 118, 33, '[\"product_1720442239721_62137.png\"]', '2024-07-08 18:07:19', '2024-07-08 18:07:19');

-- --------------------------------------------------------

--
-- Table structure for table `tblproduct`
--

CREATE TABLE `tblproduct` (
  `product_id` int(11) NOT NULL,
  `product_title` varchar(250) DEFAULT NULL,
  `product_desc` text DEFAULT NULL,
  `pc_id` int(11) NOT NULL,
  `fabric` int(11) DEFAULT NULL,
  `occasion` int(11) DEFAULT NULL,
  `style` int(11) DEFAULT NULL,
  `draft` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) DEFAULT 0,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_date` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblproduct`
--

INSERT INTO `tblproduct` (`product_id`, `product_title`, `product_desc`, `pc_id`, `fabric`, `occasion`, `style`, `draft`, `status`, `created_date`, `updated_date`) VALUES
(115, 'Pink & Beige Handblock Printed Dupatta Set', '<h4>PRODUCT DETAILS&nbsp;</h4><p>Pink &amp; Beige printed kurta with&nbsp;trousers&nbsp;&amp; dupatta set</p><p>White&nbsp;yellow printed&nbsp;straight calf length kurta, has a round neck, three-quarter sleeves, side slits</p><p>White solid trousers, has elasticated waistband, slip-on closure</p><p>White yellow printed dupatta, has printed border</p><h4>SIZE &amp; FIT</h4><p>Dupatta Length: 2.25 metres</p><p>Dupatta Width: 1.06 metres</p><p>The model (height 5\'8\") is wearing a size S</p><h4>MATERIAL &amp; CARE</h4><p>Kurta fabric: pure cotton</p><p>Bottom fabric: pure cotton</p><p>Dupatta fabric: voile</p><p>Hand-wash</p><h4>COMPLETE THE LOOK</h4><p>Perfect for warm weather or a resort get-away, this beautiful&nbsp;White&nbsp;dupatta set from Yufta will help you feel feminine and modest. Complement this kurta set with gold accessories.</p>', 2, 1, 4, 10, 0, 1, '2024-07-02 12:29:57', '2024-07-03 11:46:54'),
(116, 'Black Pure Cotton Paisley Print Pakistani Style Kurta And Trousers With Dupatta Set', '<h4>PRODUCT DETAILS&nbsp;</h4><p>Black printed Kurta with Trousers with dupatta</p><p><br></p><p><strong>Kurta design:</strong></p><ul><li>Ethnic motifs printed</li><li>Pakistani style shape</li><li>Regular style</li><li>Round neck, long flared sleeves</li><li>Na pockets</li><li>Knee length length with straight hem</li><li>Pure cotton machine weave fabric</li></ul><p><br></p><p><strong>Trousers design:</strong></p><ul><li>Printed Trousers</li><li>Elasticated waistband</li><li>Slip-on closure</li></ul><p>&nbsp;</p><h4>SIZE &amp; FIT</h4><p>The model (height 5\'8) is wearing a size S</p><h4>MATERIAL &amp; CARE</h4><p>&nbsp;</p><p>Top Fabric 100% Pure Cotton Bottom Fabric Pure Cotton Dupatta Fabric Voile</p>', 7, 2, 5, 10, 0, 1, '2024-07-02 12:37:19', '2024-07-02 13:26:31'),
(117, 'Silk Blend Red Digital Print Kurta', '<h4>PRODUCT DETAILS&nbsp;</h4><p>&nbsp;</p><ul><li>Colour: pink &amp; brown&nbsp;</li><li>Floral printed</li><li>V-neck</li><li>Three-Quarter , regular&nbsp;sleeves</li><li>Straight shape with regular style</li><li>Calf length with straight&nbsp;hem</li><li>Machine weave regular silk</li></ul><p>&nbsp;</p><h4>SIZE &amp; FIT</h4><p>The model (height 5\'8) is wearing a size S</p><h4>MATERIAL &amp; CARE</h4><p>100% Silk Blend</p><p>Dry Clean</p>', 6, 3, 5, 10, 0, 1, '2024-07-02 12:43:39', '2024-07-08 18:11:22'),
(118, 'Floral,Sequins_Work Kurta Sharara with Dupatta Set In Color Red , Pink , Maroon', '<p><strong>PRODUCT DETAILS</strong></p><p>Teal&nbsp;Embroidered Straight Kurta Sharara with Dupatta Set</p><p><strong>Kurta Design:</strong></p><ul><li>Floral&nbsp;Print With Sequins_Work&nbsp;</li><li>Straight Shape</li><li>Three quarter sleeve</li><li>Round Neck</li><li>Above Knee Length</li><li>Side Slits Kurta With Straight Hem</li><li>Pure cotton Machine Weave Fabric</li></ul><p><strong>Sharara Design:</strong></p><ul><li>Printed Sharara</li><li>Slip-On Waist</li></ul><p><strong>Size &amp; Fit</strong></p><p>The model (height 5\'8) is wearing a size S</p><p><strong>Material &amp; Care</strong></p><p>Pure cotton Machine wash</p>', 5, 2, 5, 13, 0, 1, '2024-07-02 12:47:14', '2024-07-02 15:15:18'),
(119, 'Maroon Floral Print Zari_Work Anarkali Kurta Trouser And Dupatta Set', '<h4>PRODUCT DETAILS&nbsp;</h4><p>Maroon Floral Print Anarkali Kurta Trouser And Dupatta Set</p><p><strong>Kurta Design :-</strong></p><ul><li>Zari_Work on neck</li><li>Anarkali Shape Have A Lining</li><li>Three quarter Puff Sleeves</li><li>V-Neck</li><li>Calf Length,</li><li>Flared Hem</li></ul><p><strong>Trouser Design: -</strong></p><ul><li>Solid One Pocket Trouser</li><li>Slip-On Waistband</li></ul><h4>SIZE &amp; FIT</h4><p>Dupatta Length (Width 0.8 Mtr and length 2.20Mtr)</p><h4>MATERIAL &amp; CARE</h4><p>Top Fabric 100% Voile Bottom Fabric Voile Dupatta Fabric Voile</p>', 7, 2, 5, 9, 0, 1, '2024-07-02 13:20:55', '2024-07-02 14:28:02'),
(120, 'Yufta Piping On Yoke Floral Print Maroon Cotton Kurta Set With Dupatta Set', '<h4>PRODUCT DETAILS&nbsp;</h4><p>Maroon printed Kurta with Trouser &amp; dupatta</p><p><br></p><h4><strong>Kurta design:</strong></h4><ul><li>Floral printed</li><li>Straight shape</li><li>Regular style</li><li>Round neck, three-quarter regular sleeves</li><li>1 pockets</li><li>Calf&nbsp;length with straight hem</li><li>Pure cotton machine weave fabric</li></ul><h4><strong>Trouser design:</strong></h4><ul><li>Printed Trouser</li><li>Elasticated waistband</li><li>Slip-on closure</li></ul><h4><strong>Dupatta design:</strong></h4><ul><li>Printed dupatta</li></ul><h4><strong>SIZE &amp; FIT</strong></h4><p>The model (height 5\'8) is wearing a size S</p><h4><strong>MATERIAL &amp; CARE</strong></h4><p>Kurta fabric: Pure Cotton</p><p>Bottom fabric: Pure Cotton</p><p>Dupatta fabric: Pure Cotton</p><p>Hand Wash</p>', 2, 2, 5, 11, 0, 1, '2024-07-08 15:15:00', '2024-07-08 18:31:09');

-- --------------------------------------------------------

--
-- Table structure for table `tblproductcategory`
--

CREATE TABLE `tblproductcategory` (
  `pc_id` int(11) NOT NULL,
  `category_name` varchar(50) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `update_date` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblproductcategory`
--

INSERT INTO `tblproductcategory` (`pc_id`, `category_name`, `created_date`, `update_date`) VALUES
(1, 'Bottom', '2024-01-18 16:50:01', '2024-01-18 16:50:01'),
(2, 'Dress', '2024-01-18 16:50:01', '2024-01-18 16:50:01'),
(3, 'Dupatta', '2024-01-18 16:50:01', '2024-01-18 16:50:01'),
(4, 'Jumpsuit', '2024-01-18 16:50:01', '2024-01-18 16:50:01'),
(5, 'Kaftan', '2024-01-18 16:50:01', '2024-01-18 16:50:01'),
(6, 'Kurta', '2024-01-18 16:50:01', '2024-01-18 16:50:01'),
(7, 'Kurta Sets', '2024-01-18 16:50:01', '2024-01-18 16:50:01'),
(8, 'Sarees', '2024-01-18 16:50:01', '2024-01-18 16:50:01'),
(9, 'Satis & Lehenga ', '2024-01-18 16:50:01', '2024-01-18 16:50:01'),
(10, 'Shirt', '2024-01-18 16:50:01', '2024-01-18 16:50:01'),
(11, 'Top', '2024-01-18 16:50:01', '2024-01-18 16:50:01'),
(12, 'Tunics', '2024-01-18 16:50:01', '2024-01-18 16:50:01');

-- --------------------------------------------------------

--
-- Table structure for table `tblsize`
--

CREATE TABLE `tblsize` (
  `size_id` int(11) NOT NULL,
  `size_name` varchar(50) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_date` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblsize`
--

INSERT INTO `tblsize` (`size_id`, `size_name`, `active`, `created_date`, `updated_date`) VALUES
(2, 'S', 1, '2024-01-16 17:17:25', '2024-06-27 14:56:36'),
(3, 'M', 1, '2024-01-16 17:17:25', '2024-06-27 14:56:40'),
(4, 'L', 1, '2024-01-16 17:17:25', '2024-06-27 14:56:44'),
(5, 'XL', 1, '2024-01-16 17:17:25', '2024-01-16 17:17:25'),
(6, 'XXL', 1, '2024-01-16 17:17:25', '2024-01-16 17:17:25'),
(7, '3XL', 1, '2024-01-16 17:17:25', '2024-01-16 17:17:25'),
(8, '4XL', 1, '2024-01-16 17:17:25', '2024-01-16 17:17:25'),
(9, '5XL', 1, '2024-01-16 17:17:25', '2024-01-16 17:17:25'),
(10, '6XL', 1, '2024-01-18 14:39:41', '2024-01-18 14:39:41'),
(11, '1 to 2 Month', 1, '2024-01-18 14:39:41', '2024-01-18 14:39:41'),
(12, '2 to 3 Month', 1, '2024-01-18 14:39:41', '2024-01-18 14:39:41'),
(13, '3 to 4 Month', 1, '2024-01-18 14:39:41', '2024-01-18 14:39:41'),
(14, '4 to 5 Month', 1, '2024-01-18 14:39:41', '2024-01-18 14:39:41'),
(15, '5 to 6 Month', 1, '2024-01-18 14:39:41', '2024-01-18 14:39:41'),
(16, '6 to 7 Month', 1, '2024-01-18 14:39:41', '2024-01-18 14:39:41'),
(17, '7 to 8 Month', 1, '2024-01-18 14:39:41', '2024-01-18 14:39:41'),
(18, '8 to 9 Month', 1, '2024-01-18 14:39:41', '2024-01-18 14:39:41'),
(19, '9 to 10 Month', 1, '2024-01-18 14:39:41', '2024-01-18 14:39:41'),
(20, '10 to 11 Month', 1, '2024-01-18 14:39:41', '2024-01-18 14:39:41'),
(21, '1 to 2 Years', 1, '2024-01-18 14:39:41', '2024-01-18 14:39:41'),
(22, '2 to 3 Years', 1, '2024-01-18 14:39:41', '2024-01-18 14:39:41'),
(23, '3 to 4 Years', 1, '2024-01-18 14:39:41', '2024-01-18 14:39:41'),
(24, '4 to 5 Years', 1, '2024-01-18 14:39:41', '2024-01-18 14:39:41'),
(25, '5 to 6 Years', 1, '2024-01-18 14:39:41', '2024-01-18 14:39:41'),
(26, '6 to 7 Years', 1, '2024-01-18 14:39:41', '2024-01-18 14:39:41'),
(27, '7 to 8 Years', 1, '2024-01-18 14:39:41', '2024-01-18 14:39:41'),
(28, '8 to 9 Years', 1, '2024-01-18 14:39:41', '2024-01-18 14:39:41'),
(29, '9 to 10 Years', 1, '2024-01-18 14:39:41', '2024-01-18 14:39:41'),
(30, '10 to 11 Years', 1, '2024-01-18 14:39:41', '2024-01-18 14:39:41'),
(31, '11 to 12 Years', 1, '2024-01-18 14:39:41', '2024-01-18 14:39:41'),
(32, '12 to 13 Years', 1, '2024-01-18 14:39:41', '2024-01-18 14:39:41'),
(33, '13 to 14 Years', 1, '2024-01-18 14:39:41', '2024-01-18 14:39:41'),
(34, '14 to 15 Years', 1, '2024-01-18 14:39:41', '2024-01-18 14:39:41'),
(35, '18', 1, '2024-01-18 14:39:41', '2024-01-18 14:39:41'),
(36, '20', 1, '2024-01-18 14:39:41', '2024-01-18 14:39:41'),
(37, '22', 1, '2024-01-18 14:39:41', '2024-01-18 14:39:41'),
(38, '24', 1, '2024-01-18 14:39:41', '2024-01-18 14:39:41'),
(39, '26', 1, '2024-01-18 14:39:41', '2024-01-18 14:39:41'),
(40, '28', 1, '2024-01-18 14:39:41', '2024-01-18 14:39:41'),
(41, '30', 1, '2024-01-18 14:39:41', '2024-01-18 14:39:41'),
(42, '32', 1, '2024-01-18 14:39:41', '2024-01-18 14:39:41'),
(43, '34', 1, '2024-01-18 14:39:41', '2024-01-18 14:39:41'),
(44, '36', 1, '2024-01-18 14:39:41', '2024-01-18 14:39:41'),
(45, '38', 1, '2024-01-18 14:39:41', '2024-01-18 14:39:41'),
(46, '40', 1, '2024-01-18 14:39:41', '2024-01-18 14:39:41'),
(47, '42', 1, '2024-01-18 14:39:41', '2024-01-18 14:39:41'),
(48, '44', 1, '2024-01-18 14:39:41', '2024-01-18 14:39:41'),
(49, '46', 1, '2024-01-18 14:39:41', '2024-01-18 14:39:41');

-- --------------------------------------------------------

--
-- Table structure for table `tbltheme`
--

CREATE TABLE `tbltheme` (
  `theme_id` int(11) NOT NULL,
  `theme_obj` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbltheme`
--

INSERT INTO `tbltheme` (`theme_id`, `theme_obj`) VALUES
(5, '{\"text\":\"#283618\",\"body\":\"#fefae0\",\"primary\":\"#bc6c25\",\"secondary\":\"#dda15e\",\"light\":\"#fefae0\",\"dark\":\"#606c38\"}');

-- --------------------------------------------------------

--
-- Table structure for table `tblvariant`
--

CREATE TABLE `tblvariant` (
  `variant_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `color_id` int(11) DEFAULT NULL,
  `size_id` int(11) DEFAULT NULL,
  `sku_id` varchar(50) DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `sale_price` decimal(10,2) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `variant_status` tinyint(1) NOT NULL DEFAULT 0,
  `created_date` datetime DEFAULT current_timestamp(),
  `updated_date` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblvariant`
--

INSERT INTO `tblvariant` (`variant_id`, `product_id`, `color_id`, `size_id`, `sku_id`, `image_id`, `price`, `sale_price`, `stock`, `variant_status`, `created_date`, `updated_date`) VALUES
(368, 115, 3, 2, '4324324', 213, '599.00', '299.00', 120, 1, '2024-07-02 12:30:07', '2024-07-08 14:22:38'),
(369, 115, 2, 2, 'gd435', 214, '599.00', '399.00', 20, 1, '2024-07-02 12:32:35', '2024-07-08 18:10:13'),
(370, 115, 2, 3, 'dfgdfg534', 214, '599.00', '399.00', 20, 1, '2024-07-02 12:32:38', '2024-07-08 18:10:38'),
(371, 115, 2, 4, 'dfgdf4543', 214, '599.00', '399.00', 20, 1, '2024-07-02 12:32:40', '2024-07-08 18:10:39'),
(372, 115, 3, 3, 'vsderttert45', 213, '599.00', '299.00', 103, 1, '2024-07-02 12:34:49', '2024-07-02 12:35:19'),
(373, 115, 3, 4, 'fdff', 213, '599.00', '299.00', 103, 1, '2024-07-02 12:34:52', '2024-07-03 12:33:07'),
(374, 116, 32, 2, 'vvsd', 215, '899.00', '599.00', 20, 1, '2024-07-02 12:37:35', '2024-07-02 12:38:34'),
(375, 116, 32, 3, 'gregerg', 215, '899.00', '599.00', 20, 1, '2024-07-02 12:37:38', '2024-07-02 12:38:34'),
(376, 116, 32, 4, 'ergregrg', 215, '899.00', '599.00', 20, 1, '2024-07-02 12:37:40', '2024-07-02 12:38:34'),
(377, 117, 8, 2, 'dsfdsf', 216, '499.00', '399.00', 15, 1, '2024-07-02 12:43:51', '2024-07-02 12:45:05'),
(378, 117, 8, 3, 'vdre', 216, '499.00', '399.00', 15, 1, '2024-07-02 12:43:53', '2024-07-02 12:45:05'),
(379, 117, 8, 4, 'dfvfv', 216, '499.00', '399.00', 15, 1, '2024-07-02 12:43:54', '2024-07-02 12:45:05'),
(380, 118, 32, 2, 'dfgdf', 217, '1499.00', '999.00', 444, 1, '2024-07-02 12:48:11', '2024-07-03 15:02:46'),
(381, 118, 32, 3, 'dsfd', 217, '1499.00', '999.00', 444, 1, '2024-07-02 12:48:13', '2024-07-03 15:02:48'),
(382, 118, 3, 2, 'bgdfg', 218, '1499.00', '999.00', 35, 1, '2024-07-02 12:49:45', '2024-07-03 15:02:43'),
(383, 118, 3, 3, 'tret', 218, '1499.00', '999.00', 35, 1, '2024-07-02 12:49:48', '2024-07-03 15:02:45'),
(384, 118, 33, 2, 'vdvdv', 223, '1499.00', '999.00', 45, 1, '2024-07-02 12:50:52', '2024-07-08 18:07:19'),
(385, 118, 33, 3, 'sdetert', 223, '1499.00', '999.00', 45, 1, '2024-07-02 12:51:01', '2024-07-08 18:07:19'),
(386, 119, 32, 2, 'hbffdd', 220, '1299.00', '1199.00', 12, 1, '2024-07-02 13:21:01', '2024-07-09 12:35:54'),
(387, 120, 32, 2, 'gdfgdfg', 221, '499.00', '99.00', 59, 1, '2024-07-08 15:15:07', '2024-07-09 12:08:20'),
(388, 120, 32, 3, 'gdfgdfvdvsd', 221, '499.00', '99.00', 121, 1, '2024-07-08 15:15:11', '2024-07-09 12:08:20'),
(389, 120, 4, 3, 'dgdfgvdsv', 222, '499.00', '99.00', 59, 1, '2024-07-08 15:16:13', '2024-07-09 12:08:29'),
(390, 120, 4, 4, 'gdfgdfvdsvsd', 222, '499.00', '99.00', 59, 1, '2024-07-08 15:16:17', '2024-07-09 12:08:29'),
(391, 120, 4, 5, 'gdfgdgger', 222, '499.00', '99.00', 59, 1, '2024-07-08 15:16:19', '2024-07-09 12:08:29');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `uid` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `mno` varchar(10) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `update_date` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`uid`, `name`, `email`, `password`, `mno`, `status`, `created_date`, `update_date`) VALUES
(1, 'Chirag', 'chirag@gmail.com', '$2a$10$EgykgzBoKOmVrR.D4nFTV.VNK6xWP9IwWikD6Kt/uDI/nz.avPyGu', '1123344556', 1, '2024-06-28 13:19:32', '2024-07-09 09:45:29'),
(2, 'Chirag', 'chirag@gmail.om', '$2a$10$6p8U.rjbLvOilb/jFiYtSuYAUUgGo1HOjAVzYAqc7aS0wOoYRJake', NULL, 1, '2024-06-28 14:24:04', '2024-06-28 14:24:04'),
(3, 'John wick', 'admin@gmail.com', '$2a$10$PUTOpg59pOoWyW4b789fhOmwpap/kKa1ZNYD55dFVyWJ1F/g65rkW', '7778889994', 1, '2024-06-28 17:51:44', '2024-07-03 09:59:37'),
(4, 'admin', 'admin123@gmail.com', '$2a$10$Su0MrqrzyQhOQH5g0F6SqezQGTTVvB1yHgw6.9Bgo3wonx2mCoUqm', NULL, 1, '2024-07-01 09:53:04', '2024-07-01 09:53:04');

-- --------------------------------------------------------

--
-- Structure for view `demo`
--
DROP TABLE IF EXISTS `demo`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `demo`  AS SELECT `cart`.`qty` AS `qty`, `tblvariant`.`color_id` AS `color_id` FROM (`cart` join `tblvariant`) WHERE `cart`.`variant_id` = `tblvariant`.`variant_id``variant_id`  ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uid` (`uid`),
  ADD KEY `variant_id` (`variant_id`);

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `tblcolor`
--
ALTER TABLE `tblcolor`
  ADD PRIMARY KEY (`color_id`);

--
-- Indexes for table `tblimages`
--
ALTER TABLE `tblimages`
  ADD PRIMARY KEY (`image_id`),
  ADD KEY `color_id` (`color_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `tblproduct`
--
ALTER TABLE `tblproduct`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `Category` (`pc_id`),
  ADD KEY `tblproduct_ibfk_1` (`occasion`),
  ADD KEY `fabric` (`fabric`),
  ADD KEY `style` (`style`);

--
-- Indexes for table `tblproductcategory`
--
ALTER TABLE `tblproductcategory`
  ADD PRIMARY KEY (`pc_id`);

--
-- Indexes for table `tblsize`
--
ALTER TABLE `tblsize`
  ADD PRIMARY KEY (`size_id`);

--
-- Indexes for table `tbltheme`
--
ALTER TABLE `tbltheme`
  ADD PRIMARY KEY (`theme_id`);

--
-- Indexes for table `tblvariant`
--
ALTER TABLE `tblvariant`
  ADD PRIMARY KEY (`variant_id`),
  ADD UNIQUE KEY `unique` (`sku_id`),
  ADD KEY `Color ID` (`color_id`),
  ADD KEY `Size ID` (`size_id`),
  ADD KEY `product_id` (`image_id`),
  ADD KEY `product ID` (`product_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcolor`
--
ALTER TABLE `tblcolor`
  MODIFY `color_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `tblimages`
--
ALTER TABLE `tblimages`
  MODIFY `image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=224;

--
-- AUTO_INCREMENT for table `tblproduct`
--
ALTER TABLE `tblproduct`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `tblproductcategory`
--
ALTER TABLE `tblproductcategory`
  MODIFY `pc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tblsize`
--
ALTER TABLE `tblsize`
  MODIFY `size_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `tbltheme`
--
ALTER TABLE `tbltheme`
  MODIFY `theme_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblvariant`
--
ALTER TABLE `tblvariant`
  MODIFY `variant_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=392;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `addresses_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`variant_id`) REFERENCES `tblvariant` (`variant_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tblimages`
--
ALTER TABLE `tblimages`
  ADD CONSTRAINT `tblimages_ibfk_1` FOREIGN KEY (`color_id`) REFERENCES `tblcolor` (`color_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `tblimages_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `tblproduct` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tblproduct`
--
ALTER TABLE `tblproduct`
  ADD CONSTRAINT `Category` FOREIGN KEY (`pc_id`) REFERENCES `tblproductcategory` (`pc_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tblproduct_ibfk_1` FOREIGN KEY (`occasion`) REFERENCES `attributes` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `tblproduct_ibfk_2` FOREIGN KEY (`fabric`) REFERENCES `attributes` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `tblproduct_ibfk_3` FOREIGN KEY (`style`) REFERENCES `attributes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tblvariant`
--
ALTER TABLE `tblvariant`
  ADD CONSTRAINT `Color ID` FOREIGN KEY (`color_id`) REFERENCES `tblcolor` (`color_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `Size ID` FOREIGN KEY (`size_id`) REFERENCES `tblsize` (`size_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `product ID` FOREIGN KEY (`product_id`) REFERENCES `tblproduct` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_id` FOREIGN KEY (`image_id`) REFERENCES `tblimages` (`image_id`) ON DELETE SET NULL ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
