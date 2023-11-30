-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 30, 2023 at 06:45 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wordpress`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(2, 4684, 'as', 'andrei.sviridov00@e-uvt.ro', '', '::1', '2023-11-02 14:29:28', '2023-11-02 14:29:28', 'Asdas', 0, '1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'review', 0, 0),
(6, 4684, 'Andrei', 'andreisv178@gmail.com', '', '::1', '2023-11-08 11:51:39', '2023-11-08 11:51:39', 'Merge', 0, '1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'review', 0, 0),
(13, 4706, 'admin', 'andrei.sviridov00@e-uvt.ro', 'http://localhost/wordpress', '::1', '2023-11-30 13:37:02', '2023-11-30 13:37:02', 'Comentariu nr 2', 0, '1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.1 Safari/605.1.15', 'review', 0, 1),
(17, 4706, 'admin', 'andrei.sviridov00@e-uvt.ro', 'http://localhost/wordpress', '::1', '2023-11-30 15:45:32', '2023-11-30 15:45:32', 'Comentariu nr 1', 0, '1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'review', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_orders`
--

CREATE TABLE `wp_wc_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `currency` varchar(10) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `total_amount` decimal(26,8) DEFAULT NULL,
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `billing_email` varchar(320) DEFAULT NULL,
  `date_created_gmt` datetime DEFAULT NULL,
  `date_updated_gmt` datetime DEFAULT NULL,
  `parent_order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `payment_method` varchar(100) DEFAULT NULL,
  `payment_method_title` text DEFAULT NULL,
  `transaction_id` varchar(100) DEFAULT NULL,
  `ip_address` varchar(100) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `customer_note` text DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `tax_amount` decimal(26,8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_wc_orders`
--

INSERT INTO `wp_wc_orders` (`id`, `currency`, `type`, `total_amount`, `customer_id`, `billing_email`, `date_created_gmt`, `date_updated_gmt`, `parent_order_id`, `payment_method`, `payment_method_title`, `transaction_id`, `ip_address`, `user_agent`, `customer_note`, `status`, `tax_amount`) VALUES
(4695, 'RON', 'shop_order', 1000.00000000, 1, 'andrei.sviridov00@e-uvt.ro', '2023-11-02 14:32:13', '2023-11-02 14:57:39', 0, 'cod', 'Cash on delivery', '', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'sunt de la ora 15', NULL, NULL),
(4901, 'RON', 'shop_order', 250.00000000, 0, 'andreisv178@gmail.com', '2023-11-29 17:03:41', '2023-11-29 17:17:15', 0, 'cod', 'Cash on delivery', '', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '', NULL, NULL),
(4902, 'RON', 'shop_order', 2200.00000000, 1, 'amd@email.com', '2023-11-29 20:03:31', '2023-11-29 20:04:20', 0, 'cod', 'Cash on delivery', '', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.1 Safari/605.1.15', '', NULL, NULL),
(4908, 'RON', 'shop_order', 1650.00000000, 1, 'andrei.sviridov00@e-uvt.ro', '2023-11-30 14:28:21', '2023-11-30 14:50:44', 0, 'cod', 'Cash on delivery', '', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '', 'wc-completed', 0.00000000),
(4909, 'RON', 'shop_order', 1065.00000000, 1, 'exemplu@emai.com', '2023-11-30 15:05:17', '2023-11-30 16:30:29', 0, 'cod', 'Cash on delivery', '', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '', 'wc-completed', 0.00000000),
(4921, 'RON', 'shop_order', 2000.00000000, 1, 'exemplu@emai.com', '2023-11-30 16:39:12', '2023-11-30 16:41:48', 0, 'cod', 'Cash on delivery', '', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '', 'wc-completed', 0.00000000),
(4945, 'RON', 'shop_order', 3150.00000000, 1, 'exemplu@emai.com', '2023-11-30 17:13:54', '2023-11-30 17:13:55', 0, 'cod', 'Cash on delivery', '', '::1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', '', 'wc-processing', 0.00000000);

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_order_addresses`
--

CREATE TABLE `wp_wc_order_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `total_paid` decimal(26,8) DEFAULT NULL,
  `address_type` varchar(20) DEFAULT NULL,
  `first_name` text DEFAULT NULL,
  `last_name` text DEFAULT NULL,
  `company` text DEFAULT NULL,
  `address_1` text DEFAULT NULL,
  `address_2` text DEFAULT NULL,
  `city` text DEFAULT NULL,
  `state` text DEFAULT NULL,
  `postcode` text DEFAULT NULL,
  `country` text DEFAULT NULL,
  `email` varchar(320) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_wc_order_addresses`
--

INSERT INTO `wp_wc_order_addresses` (`id`, `order_id`, `total_paid`, `address_type`, `first_name`, `last_name`, `company`, `address_1`, `address_2`, `city`, `state`, `postcode`, `country`, `email`, `phone`) VALUES
(1, 4695, NULL, 'billing', 'Andrei', 'Sviridov', NULL, 'C17', '211', 'Timisoara', 'TM', '3000521', 'RO', 'andrei.sviridov00@e-uvt.ro', '0735076740'),
(4, 4901, NULL, 'shipping', 'Andrei', 'Sviridov', NULL, 'Mihai Viteazul Nr 12', NULL, 'Piatra Neamt', 'TM', '610004', 'RO', NULL, NULL),
(5, 4902, NULL, 'billing', 'Andrei', 'Sviridov', 'companie optionalaaaa', 'street adress', 'ap 1', 'New Delphi', 'VS', '123321', 'RO', 'amd@email.com', '0735076740'),
(18, 4908, NULL, 'shipping', 'Andrei', 'Sviridov', 'acest NUme Optionaaaal', '2. 2 Adresa drum', 'adresa apartament2', 'Orasul', 'TM', '123456789', 'RO', NULL, NULL),
(21, 4909, NULL, 'billing', 'Andrei', 'Sviridov', 'acest NUme Optionaaaal', '2. 3 Adresa drum', 'adresa apartament3', 'Orasul', 'TM', '123456789', 'RO', 'exemplu@emai.com', '0735076740'),
(23, 4921, NULL, 'billing', 'Andrei', 'Sviridov', NULL, 'Test adresa', 'test 2', 'Orasul', 'TM', '123456789', 'RO', 'exemplu@emai.com', '0735076740');

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_items`
--

CREATE TABLE `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_name` text NOT NULL,
  `order_item_type` varchar(200) NOT NULL DEFAULT '',
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(320) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_woocommerce_order_items`
--

INSERT INTO `wp_woocommerce_order_items` (`order_item_id`, `order_item_name`, `order_item_type`, `order_id`, `email`) VALUES
(1, 'Geam', 'line_item', 4695, ''),
(23, 'Fereastră PVC termopan 150x150 - LEMN', 'line_item', 4945, ''),
(24, 'Rulouri Aluminiu', 'line_item', 4945, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_comments`
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
-- Indexes for table `wp_wc_orders`
--
ALTER TABLE `wp_wc_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `date_created` (`date_created_gmt`),
  ADD KEY `customer_id_billing_email` (`customer_id`,`billing_email`(171)),
  ADD KEY `billing_email` (`billing_email`(191)),
  ADD KEY `type_status_date` (`type`,`date_created_gmt`),
  ADD KEY `parent_order_id` (`parent_order_id`),
  ADD KEY `date_updated` (`date_updated_gmt`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `wp_wc_order_addresses`
--
ALTER TABLE `wp_wc_order_addresses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `address_type_order_id` (`address_type`,`order_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `email` (`email`(191)),
  ADD KEY `phone` (`phone`);

--
-- Indexes for table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `order_item_name` (`order_item_name`(768)),
  ADD KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `wp_wc_order_addresses`
--
ALTER TABLE `wp_wc_order_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
