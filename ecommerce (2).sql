-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 01, 2024 at 01:43 PM
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
  `created_data` datetime NOT NULL DEFAULT current_timestamp(),
  `update_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblcolor`
--

INSERT INTO `tblcolor` (`color_id`, `color_name`, `created_data`, `update_date`) VALUES
(2, 'Yellow', '2024-01-16 14:39:48', '2024-01-16 14:39:48'),
(3, 'Pink', '2024-01-16 14:40:08', '2024-01-16 14:40:08'),
(4, 'Green', '2024-01-16 14:40:08', '2024-01-16 14:41:16'),
(8, 'Red', '2024-04-04 14:44:14', '0000-00-00 00:00:00');

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
(1, 1, 2, '[\"1.png\",\"2.png\"]', '2024-04-04 16:50:20', '2024-04-05 18:30:53'),
(21, 1, 3, '[\"image_1712550879988_8396770.png\",\"image_1712550879988_943470142.png\"]', '2024-04-08 10:04:39', '2024-04-08 10:04:39');

-- --------------------------------------------------------

--
-- Table structure for table `tblproduct`
--

CREATE TABLE `tblproduct` (
  `product_id` int(11) NOT NULL,
  `product_title` varchar(250) DEFAULT NULL,
  `pack_of` varchar(50) DEFAULT NULL,
  `ideal_for` varchar(50) DEFAULT NULL,
  `product_desc` text DEFAULT NULL,
  `pc_id` int(11) NOT NULL,
  `is_draft` tinyint(1) NOT NULL DEFAULT 1,
  `active_status` tinyint(1) DEFAULT 0,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_date` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblproduct`
--

INSERT INTO `tblproduct` (`product_id`, `product_title`, `pack_of`, `ideal_for`, `product_desc`, `pc_id`, `is_draft`, `active_status`, `created_date`, `updated_date`) VALUES
(1, 'tyy Update', '2', 'female', '<p>ytryr</p>', 1, 1, 0, '2024-04-03 17:11:43', '2024-04-03 17:12:26'),
(2, 'hghg', '1', 'female', '<p>hgfhf</p>', 2, 1, 0, '2024-04-04 10:53:50', '2024-04-04 10:53:50'),
(3, 'vfdb', '2', 'female', '<p>bfd</p>', 2, 1, 0, '2024-04-04 17:14:11', '2024-04-04 17:14:11'),
(4, 'jjtyj', '1', 'female', '<p>jtyjty</p>', 2, 1, 0, '2024-04-04 18:22:35', '2024-04-04 18:22:35');

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
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_date` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblsize`
--

INSERT INTO `tblsize` (`size_id`, `size_name`, `created_date`, `updated_date`) VALUES
(1, 'XS', '2024-01-16 17:17:25', '2024-01-16 17:17:25'),
(2, 'S', '2024-01-16 17:17:25', '2024-01-16 17:17:25'),
(3, 'M', '2024-01-16 17:17:25', '2024-01-16 17:17:25'),
(4, 'L', '2024-01-16 17:17:25', '2024-01-16 17:17:25'),
(5, 'XL', '2024-01-16 17:17:25', '2024-01-16 17:17:25'),
(6, 'XXL', '2024-01-16 17:17:25', '2024-01-16 17:17:25'),
(7, '3XL', '2024-01-16 17:17:25', '2024-01-16 17:17:25'),
(8, '4XL', '2024-01-16 17:17:25', '2024-01-16 17:17:25'),
(9, '5XL', '2024-01-16 17:17:25', '2024-01-16 17:17:25'),
(10, '6XL', '2024-01-18 14:39:41', '2024-01-18 14:39:41'),
(11, '1 to 2 Month', '2024-01-18 14:39:41', '2024-01-18 14:39:41'),
(12, '2 to 3 Month', '2024-01-18 14:39:41', '2024-01-18 14:39:41'),
(13, '3 to 4 Month', '2024-01-18 14:39:41', '2024-01-18 14:39:41'),
(14, '4 to 5 Month', '2024-01-18 14:39:41', '2024-01-18 14:39:41'),
(15, '5 to 6 Month', '2024-01-18 14:39:41', '2024-01-18 14:39:41'),
(16, '6 to 7 Month', '2024-01-18 14:39:41', '2024-01-18 14:39:41'),
(17, '7 to 8 Month', '2024-01-18 14:39:41', '2024-01-18 14:39:41'),
(18, '8 to 9 Month', '2024-01-18 14:39:41', '2024-01-18 14:39:41'),
(19, '9 to 10 Month', '2024-01-18 14:39:41', '2024-01-18 14:39:41'),
(20, '10 to 11 Month', '2024-01-18 14:39:41', '2024-01-18 14:39:41'),
(21, '1 to 2 Years', '2024-01-18 14:39:41', '2024-01-18 14:39:41'),
(22, '2 to 3 Years', '2024-01-18 14:39:41', '2024-01-18 14:39:41'),
(23, '3 to 4 Years', '2024-01-18 14:39:41', '2024-01-18 14:39:41'),
(24, '4 to 5 Years', '2024-01-18 14:39:41', '2024-01-18 14:39:41'),
(25, '5 to 6 Years', '2024-01-18 14:39:41', '2024-01-18 14:39:41'),
(26, '6 to 7 Years', '2024-01-18 14:39:41', '2024-01-18 14:39:41'),
(27, '7 to 8 Years', '2024-01-18 14:39:41', '2024-01-18 14:39:41'),
(28, '8 to 9 Years', '2024-01-18 14:39:41', '2024-01-18 14:39:41'),
(29, '9 to 10 Years', '2024-01-18 14:39:41', '2024-01-18 14:39:41'),
(30, '10 to 11 Years', '2024-01-18 14:39:41', '2024-01-18 14:39:41'),
(31, '11 to 12 Years', '2024-01-18 14:39:41', '2024-01-18 14:39:41'),
(32, '12 to 13 Years', '2024-01-18 14:39:41', '2024-01-18 14:39:41'),
(33, '13 to 14 Years', '2024-01-18 14:39:41', '2024-01-18 14:39:41'),
(34, '14 to 15 Years', '2024-01-18 14:39:41', '2024-01-18 14:39:41'),
(35, '18', '2024-01-18 14:39:41', '2024-01-18 14:39:41'),
(36, '20', '2024-01-18 14:39:41', '2024-01-18 14:39:41'),
(37, '22', '2024-01-18 14:39:41', '2024-01-18 14:39:41'),
(38, '24', '2024-01-18 14:39:41', '2024-01-18 14:39:41'),
(39, '26', '2024-01-18 14:39:41', '2024-01-18 14:39:41'),
(40, '28', '2024-01-18 14:39:41', '2024-01-18 14:39:41'),
(41, '30', '2024-01-18 14:39:41', '2024-01-18 14:39:41'),
(42, '32', '2024-01-18 14:39:41', '2024-01-18 14:39:41'),
(43, '34', '2024-01-18 14:39:41', '2024-01-18 14:39:41'),
(44, '36', '2024-01-18 14:39:41', '2024-01-18 14:39:41'),
(45, '38', '2024-01-18 14:39:41', '2024-01-18 14:39:41'),
(46, '40', '2024-01-18 14:39:41', '2024-01-18 14:39:41'),
(47, '42', '2024-01-18 14:39:41', '2024-01-18 14:39:41'),
(48, '44', '2024-01-18 14:39:41', '2024-01-18 14:39:41'),
(49, '46', '2024-01-18 14:39:41', '2024-01-18 14:39:41');

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
  `sku_name` varchar(50) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `sale_price` float DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `variant_status` tinyint(1) NOT NULL DEFAULT 0,
  `created_date` datetime DEFAULT current_timestamp(),
  `updated_date` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblvariant`
--

INSERT INTO `tblvariant` (`variant_id`, `product_id`, `color_id`, `size_id`, `sku_name`, `price`, `sale_price`, `stock`, `variant_status`, `created_date`, `updated_date`) VALUES
(28, 2, 2, 1, NULL, NULL, NULL, NULL, 0, '2024-04-04 17:25:17', '2024-04-04 17:25:17'),
(39, 4, 2, 2, NULL, NULL, NULL, NULL, 0, '2024-04-05 11:38:18', '2024-04-05 11:38:18'),
(48, 1, 2, 5, NULL, NULL, NULL, NULL, 0, '2024-04-05 12:45:19', '2024-04-05 12:45:19'),
(49, 1, 2, 2, NULL, NULL, NULL, NULL, 0, '2024-04-05 12:58:00', '2024-04-05 12:58:00'),
(51, 1, 3, 2, NULL, NULL, NULL, NULL, 0, '2024-04-05 18:18:31', '2024-04-05 18:18:31');

--
-- Indexes for dumped tables
--

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
  ADD PRIMARY KEY (`image_id`);

--
-- Indexes for table `tblproduct`
--
ALTER TABLE `tblproduct`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `Category` (`pc_id`);

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
  ADD UNIQUE KEY `unique` (`sku_name`),
  ADD KEY `product ID` (`product_id`),
  ADD KEY `Color ID` (`color_id`),
  ADD KEY `Size ID` (`size_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcolor`
--
ALTER TABLE `tblcolor`
  MODIFY `color_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tblimages`
--
ALTER TABLE `tblimages`
  MODIFY `image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tblproduct`
--
ALTER TABLE `tblproduct`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblproductcategory`
--
ALTER TABLE `tblproductcategory`
  MODIFY `pc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tblsize`
--
ALTER TABLE `tblsize`
  MODIFY `size_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `tbltheme`
--
ALTER TABLE `tbltheme`
  MODIFY `theme_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblvariant`
--
ALTER TABLE `tblvariant`
  MODIFY `variant_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tblproduct`
--
ALTER TABLE `tblproduct`
  ADD CONSTRAINT `Category` FOREIGN KEY (`pc_id`) REFERENCES `tblproductcategory` (`pc_id`) ON UPDATE CASCADE;

--
-- Constraints for table `tblvariant`
--
ALTER TABLE `tblvariant`
  ADD CONSTRAINT `Color ID` FOREIGN KEY (`color_id`) REFERENCES `tblcolor` (`color_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `Size ID` FOREIGN KEY (`size_id`) REFERENCES `tblsize` (`size_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `product ID` FOREIGN KEY (`product_id`) REFERENCES `tblproduct` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
