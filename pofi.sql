-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 23, 2023 at 06:14 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pofi`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` bigint(20) UNSIGNED NOT NULL,
  `brand_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Oppo', 'active', NULL, NULL),
(2, 'Vivo', 'active', NULL, NULL),
(3, 'Realme', 'active', NULL, NULL),
(4, 'One+ HD', 'active', NULL, NULL),
(5, 'Sony HD', 'active', NULL, NULL),
(6, 'LG HD', 'active', NULL, NULL),
(7, 'Voltas', 'active', NULL, NULL),
(8, 'Whirlpool', 'active', NULL, NULL),
(9, 'Panasonic', 'active', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `main_category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`, `main_category`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Mobile', '0', 'active', NULL, NULL),
(2, 'TV', '0', 'active', NULL, NULL),
(3, 'AC', '0', 'active', NULL, NULL),
(4, '4G Mobile', '1', 'active', NULL, NULL),
(5, '5G Mobile', '1', 'active', NULL, NULL),
(6, 'LCD', '2', 'active', NULL, NULL),
(7, 'LED', '2', 'active', NULL, NULL),
(8, 'QLED', '2', 'active', NULL, NULL),
(9, 'Central AC', '3', 'active', NULL, NULL),
(10, 'Window AC', '3', 'active', NULL, NULL),
(11, 'Smart AC', '3', 'active', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_01_23_132507_create_brands_table', 1),
(6, '2023_01_23_132524_create_categories_table', 1),
(7, '2023_01_23_132539_create_products_table', 1);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_category` int(11) NOT NULL,
  `product_subcategory` int(11) NOT NULL,
  `product_original_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_has_discount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_discount_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_quantity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `product_code`, `product_slug`, `product_category`, `product_subcategory`, `product_original_price`, `product_has_discount`, `product_discount_price`, `product_quantity`, `product_image`, `product_status`, `created_at`, `updated_at`) VALUES
(1, 'OPPO K10 (Blue Flame, 128 GB)  (6 GB RAM)', '0001', NULL, 1, 4, '18999', '21%', '14990', '1', 'https://rukminim1.flixcart.com/image/832/832/l2jcccw0/mobile/h/x/3/-original-imagduwqakhhkrse.jpeg?q=70', 'active', NULL, NULL),
(2, 'OPPO F19 Pro+ 5G (Space Silver, 128 GB)  (8 GB RAM)', '0002', NULL, 1, 5, '29990', '39%', '17999', '1', 'https://rukminim1.flixcart.com/image/832/832/kn97te80/mobile/f/d/h/f19-pro-5g-cph2213-oppo-original-imagfz397gzbjxtb.jpeg?q=70', 'active', NULL, NULL),
(3, 'LG UQ7500 108 cm (43 inch) Ultra HD (4K) LED Smart WebOS TV 2022 Edition  (43UQ7500PSF)', '0003', NULL, 2, 6, '49990', '38%', '30990', '1', 'https://rukminim1.flixcart.com/image/832/832/xif0q/television/n/h/y/-original-imagg24zpbk2h7tx.jpeg?q=70', 'active', NULL, NULL),
(4, 'Hisense A6H 139 cm (55 inch) Ultra HD (4K) LED Smart Google TV with Hands Free Voice Control, Dolby Vision and Atmos  (55A6H)', '0004', NULL, 2, 7, '59990', '40%', '35490', '1', 'https://rukminim1.flixcart.com/image/832/832/xif0q/television/q/8/z/-original-imagk7sj2wsrecyj.jpeg?q=70', 'active', NULL, NULL),
(5, 'CARRIER 1.5 Ton 5 Star Split Inverter AC - White  (18K ESTER DXi INVERTER R32 SPLIT AC_CAI18ES5R32F0, Copper Condenser)', '0005', NULL, 3, 9, '76090', '50%', '37999', '1', 'https://rukminim1.flixcart.com/image/832/832/xif0q/air-conditioner-new/h/5/i/-original-imagha8sgzfjhvgk.jpeg?q=70', 'active', NULL, NULL),
(6, 'LG Convertible 6-in-1 Cooling 1.5 Ton 5 Star Split AI Dual Inverter NA AC - White  (RS-Q19RNZE, Copper Condenser)', '0006', NULL, 3, 10, '75990', '38%', '46490', '1', 'https://rukminim1.flixcart.com/image/832/832/xif0q/air-conditioner-new/j/j/j/-original-imaghuzhejknryxa.jpeg?q=70', 'active', NULL, NULL),
(7, 'OPPO 123sd', '0007', NULL, 1, 4, '18999', '21%', '14990', '1', 'https://rukminim1.flixcart.com/image/832/832/l2jcccw0/mobile/h/x/3/-original-imagduwqakhhkrse.jpeg?q=70', 'active', NULL, NULL),
(8, 'OPPO F19 Pro+ 5G (Space Silver, 128 GB)  (8 GB RAM)', '0002', NULL, 1, 5, '29990', '39%', '17999', '1', 'https://rukminim1.flixcart.com/image/832/832/kn97te80/mobile/f/d/h/f19-pro-5g-cph2213-oppo-original-imagfz397gzbjxtb.jpeg?q=70', 'active', NULL, NULL),
(9, 'LG UQ7500 108 cm (43 inch) Ultra HD (4K) LED Smart WebOS TV 2022 Edition  (43UQ7500PSF)', '0003', NULL, 2, 6, '49990', '38%', '30990', '1', 'https://rukminim1.flixcart.com/image/832/832/xif0q/television/n/h/y/-original-imagg24zpbk2h7tx.jpeg?q=70', 'active', NULL, NULL),
(10, 'Hisense A6H 139 cm (55 inch) Ultra HD (4K) LED Smart Google TV with Hands Free Voice Control, Dolby Vision and Atmos  (55A6H)', '0004', NULL, 2, 7, '59990', '40%', '35490', '1', 'https://rukminim1.flixcart.com/image/832/832/xif0q/television/q/8/z/-original-imagk7sj2wsrecyj.jpeg?q=70', 'active', NULL, NULL),
(11, 'CARRIER 1.5 Ton 5 Star Split Inverter AC - White  (18K ESTER DXi INVERTER R32 SPLIT AC_CAI18ES5R32F0, Copper Condenser)', '0005', NULL, 3, 9, '76090', '50%', '37999', '1', 'https://rukminim1.flixcart.com/image/832/832/xif0q/air-conditioner-new/h/5/i/-original-imagha8sgzfjhvgk.jpeg?q=70', 'active', NULL, NULL),
(12, 'LG Convertible 6-in-1 Cooling 1.5 Ton 5 Star Split AI Dual Inverter NA AC - White  (RS-Q19RNZE, Copper Condenser)', '0006', NULL, 3, 10, '75990', '38%', '46490', '1', 'https://rukminim1.flixcart.com/image/832/832/xif0q/air-conditioner-new/j/j/j/-original-imaghuzhejknryxa.jpeg?q=70', 'active', NULL, NULL),
(13, 'OPPO K10 (Blue Flame, 128 GB)  (6 GB RAM)', '0001', NULL, 1, 4, '18999', '21%', '14990', '1', 'https://rukminim1.flixcart.com/image/832/832/l2jcccw0/mobile/h/x/3/-original-imagduwqakhhkrse.jpeg?q=70', 'active', NULL, NULL),
(14, 'OPPO F19 Pro+ 5G (Space Silver, 128 GB)  (8 GB RAM)', '0002', NULL, 1, 5, '29990', '39%', '17999', '1', 'https://rukminim1.flixcart.com/image/832/832/kn97te80/mobile/f/d/h/f19-pro-5g-cph2213-oppo-original-imagfz397gzbjxtb.jpeg?q=70', 'active', NULL, NULL),
(15, 'LG UQ7500 108 cm (43 inch) Ultra HD (4K) LED Smart WebOS TV 2022 Edition  (43UQ7500PSF)', '0003', NULL, 2, 6, '49990', '38%', '30990', '1', 'https://rukminim1.flixcart.com/image/832/832/xif0q/television/n/h/y/-original-imagg24zpbk2h7tx.jpeg?q=70', 'active', NULL, NULL),
(16, 'Hisense A6H 139 cm (55 inch) Ultra HD (4K) LED Smart Google TV with Hands Free Voice Control, Dolby Vision and Atmos  (55A6H)', '0004', NULL, 2, 7, '59990', '40%', '35490', '1', 'https://rukminim1.flixcart.com/image/832/832/xif0q/television/q/8/z/-original-imagk7sj2wsrecyj.jpeg?q=70', 'active', NULL, NULL),
(17, 'CARRIER 1.5 Ton 5 Star Split Inverter AC - White  (18K ESTER DXi INVERTER R32 SPLIT AC_CAI18ES5R32F0, Copper Condenser)', '0005', NULL, 3, 9, '76090', '50%', '37999', '1', 'https://rukminim1.flixcart.com/image/832/832/xif0q/air-conditioner-new/h/5/i/-original-imagha8sgzfjhvgk.jpeg?q=70', 'active', NULL, NULL),
(18, 'LG Convertible 6-in-1 Cooling 1.5 Ton 5 Star Split AI Dual Inverter NA AC - White  (RS-Q19RNZE, Copper Condenser)', '0006', NULL, 3, 10, '75990', '38%', '46490', '1', 'https://rukminim1.flixcart.com/image/832/832/xif0q/air-conditioner-new/j/j/j/-original-imaghuzhejknryxa.jpeg?q=70', 'active', NULL, NULL),
(19, 'OPPO K10 (Blue Flame, 128 GB)  (6 GB RAM)', '0001', NULL, 1, 4, '18999', '21%', '14990', '1', 'https://rukminim1.flixcart.com/image/832/832/l2jcccw0/mobile/h/x/3/-original-imagduwqakhhkrse.jpeg?q=70', 'active', NULL, NULL),
(20, 'OPPO F19 Pro+ 5G (Space Silver, 128 GB)  (8 GB RAM)', '0002', NULL, 1, 5, '29990', '39%', '17999', '1', 'https://rukminim1.flixcart.com/image/832/832/kn97te80/mobile/f/d/h/f19-pro-5g-cph2213-oppo-original-imagfz397gzbjxtb.jpeg?q=70', 'active', NULL, NULL),
(21, 'LG UQ7500 108 cm (43 inch) Ultra HD (4K) LED Smart WebOS TV 2022 Edition  (43UQ7500PSF)', '0003', NULL, 2, 6, '49990', '38%', '30990', '1', 'https://rukminim1.flixcart.com/image/832/832/xif0q/television/n/h/y/-original-imagg24zpbk2h7tx.jpeg?q=70', 'active', NULL, NULL),
(22, 'Hisense A6H 139 cm (55 inch) Ultra HD (4K) LED Smart Google TV with Hands Free Voice Control, Dolby Vision and Atmos  (55A6H)', '0004', NULL, 2, 7, '59990', '40%', '35490', '1', 'https://rukminim1.flixcart.com/image/832/832/xif0q/television/q/8/z/-original-imagk7sj2wsrecyj.jpeg?q=70', 'active', NULL, NULL),
(23, 'CARRIER 1.5 Ton 5 Star Split Inverter AC - White  (18K ESTER DXi INVERTER R32 SPLIT AC_CAI18ES5R32F0, Copper Condenser)', '0005', NULL, 3, 9, '76090', '50%', '37999', '1', 'https://rukminim1.flixcart.com/image/832/832/xif0q/air-conditioner-new/h/5/i/-original-imagha8sgzfjhvgk.jpeg?q=70', 'active', NULL, NULL),
(24, 'OPPO K10 (Blue Flame, 128 GB)  (6 GB RAM)', '0001', NULL, 1, 4, '18999', '21%', '14990', '1', 'https://rukminim1.flixcart.com/image/832/832/l2jcccw0/mobile/h/x/3/-original-imagduwqakhhkrse.jpeg?q=70', 'active', NULL, NULL),
(25, 'OPPO F19 Pro+ 5G (Space Silver, 128 GB)  (8 GB RAM)', '0002', NULL, 1, 5, '29990', '39%', '17999', '1', 'https://rukminim1.flixcart.com/image/832/832/kn97te80/mobile/f/d/h/f19-pro-5g-cph2213-oppo-original-imagfz397gzbjxtb.jpeg?q=70', 'active', NULL, NULL),
(26, 'LG UQ7500 108 cm (43 inch) Ultra HD (4K) LED Smart WebOS TV 2022 Edition  (43UQ7500PSF)', '0003', NULL, 2, 6, '49990', '38%', '30990', '1', 'https://rukminim1.flixcart.com/image/832/832/xif0q/television/n/h/y/-original-imagg24zpbk2h7tx.jpeg?q=70', 'active', NULL, NULL),
(27, 'Hisense A6H 139 cm (55 inch) Ultra HD (4K) LED Smart Google TV with Hands Free Voice Control, Dolby Vision and Atmos  (55A6H)', '0004', NULL, 2, 7, '59990', '40%', '35490', '1', 'https://rukminim1.flixcart.com/image/832/832/xif0q/television/q/8/z/-original-imagk7sj2wsrecyj.jpeg?q=70', 'active', NULL, NULL),
(28, 'CARRIER 1.5 Ton 5 Star Split Inverter AC - White  (18K ESTER DXi INVERTER R32 SPLIT AC_CAI18ES5R32F0, Copper Condenser)', '0005', NULL, 3, 9, '76090', '50%', '37999', '1', 'https://rukminim1.flixcart.com/image/832/832/xif0q/air-conditioner-new/h/5/i/-original-imagha8sgzfjhvgk.jpeg?q=70', 'active', NULL, NULL),
(29, 'OPPO K10 (Blue Flame, 128 GB)  (6 GB RAM)', '0001', NULL, 1, 4, '18999', '21%', '14990', '1', 'https://rukminim1.flixcart.com/image/832/832/l2jcccw0/mobile/h/x/3/-original-imagduwqakhhkrse.jpeg?q=70', 'active', NULL, NULL),
(30, 'OPPO F19 Pro+ 5G (Space Silver, 128 GB)  (8 GB RAM)', '0002', NULL, 1, 5, '29990', '39%', '17999', '1', 'https://rukminim1.flixcart.com/image/832/832/kn97te80/mobile/f/d/h/f19-pro-5g-cph2213-oppo-original-imagfz397gzbjxtb.jpeg?q=70', 'active', NULL, NULL),
(31, 'LG UQ7500 108 cm (43 inch) Ultra HD (4K) LED Smart WebOS TV 2022 Edition  (43UQ7500PSF)', '0003', NULL, 2, 6, '49990', '38%', '30990', '1', 'https://rukminim1.flixcart.com/image/832/832/xif0q/television/n/h/y/-original-imagg24zpbk2h7tx.jpeg?q=70', 'active', NULL, NULL),
(32, 'Hisense A6H 139 cm (55 inch) Ultra HD (4K) LED Smart Google TV with Hands Free Voice Control, Dolby Vision and Atmos  (55A6H)', '0004', NULL, 2, 7, '59990', '40%', '35490', '1', 'https://rukminim1.flixcart.com/image/832/832/xif0q/television/q/8/z/-original-imagk7sj2wsrecyj.jpeg?q=70', 'active', NULL, NULL),
(33, 'CARRIER 1.5 Ton 5 Star Split Inverter AC - White  (18K ESTER DXi INVERTER R32 SPLIT AC_CAI18ES5R32F0, Copper Condenser)', '0005', NULL, 3, 9, '76090', '50%', '37999', '1', 'https://rukminim1.flixcart.com/image/832/832/xif0q/air-conditioner-new/h/5/i/-original-imagha8sgzfjhvgk.jpeg?q=70', 'active', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
