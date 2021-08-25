-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 25, 2021 at 08:21 AM
-- Server version: 5.7.28
-- PHP Version: 7.2.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vue_backend`
--

-- --------------------------------------------------------

--
-- Table structure for table `employee_data`
--

DROP TABLE IF EXISTS `employee_data`;
CREATE TABLE IF NOT EXISTS `employee_data` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `employee_name` varchar(255) NOT NULL,
  `employee_salary` varchar(255) NOT NULL,
  `employee_age` int(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee_data`
--

INSERT INTO `employee_data` (`id`, `employee_name`, `employee_salary`, `employee_age`) VALUES
(1, 'Mohit', '8000', 20),
(2, 'Chirag', '10000', 20),
(3, 'Shoham', '5000', 19),
(4, 'Dharmesh', '2000', 20);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(19, '2014_10_12_000000_create_users_table', 1),
(20, '2014_10_12_100000_create_password_resets_table', 1),
(21, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(22, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(23, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(24, '2016_06_01_000004_create_oauth_clients_table', 1),
(25, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(26, '2019_08_19_000000_create_failed_jobs_table', 1),
(27, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
CREATE TABLE IF NOT EXISTS `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('078b8a4d1245b5b9bdca84eb6981c0dd25e51271f3ce5eced0fdf6cd3106a2d8ba6fb078f2b95a61', 1, '943c91e4-5b98-40b7-9e71-45efc8488ee9', 'User_token', '[]', 0, '2021-08-25 02:41:36', '2021-08-25 02:41:36', '2022-08-25 08:11:36'),
('6e7267bae495b4ed1ac00c4b586ac40e3a974287ac267c1f83ae1c45683947c17047743ab750db7c', 1, '943c91e4-5b98-40b7-9e71-45efc8488ee9', 'User_token', '[]', 0, '2021-08-25 02:50:17', '2021-08-25 02:50:17', '2022-08-25 08:20:17'),
('0fd99f0fe76fe47a31efda265ff0f32d6b7c4a8f69b0d19eb2761f7da597ebb71f52556af4df77e2', 1, '943c91e4-5b98-40b7-9e71-45efc8488ee9', 'User_token', '[]', 0, '2021-08-25 02:50:45', '2021-08-25 02:50:45', '2022-08-25 08:20:45'),
('d4f208596af91a1d37a5a151c317233927bb3c6f8ad288d4359206447f9e1cbb5467922e07cdf9a1', 1, '943c91e4-5b98-40b7-9e71-45efc8488ee9', 'User_token', '[]', 0, '2021-08-25 02:50:55', '2021-08-25 02:50:55', '2022-08-25 08:20:55');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
CREATE TABLE IF NOT EXISTS `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_user_id_index` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
CREATE TABLE IF NOT EXISTS `oauth_clients` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
('943c8882-0be1-437f-9bf5-f01b59d23434', NULL, 'Laravel Personal Access Client', 'XkbiOclbpflB35DvhLrPBcoZ4QEOIohXMacTXFb4', NULL, 'http://localhost', 1, 0, 0, '2021-08-25 02:08:11', '2021-08-25 02:08:11'),
('943c8882-1072-4dae-8031-8e13b9ffc6aa', NULL, 'Laravel Password Grant Client', 's5i0tmU5SjTfTfYl7tveexA4ZFg4cIDewuVy5p5r', 'users', 'http://localhost', 0, 1, 0, '2021-08-25 02:08:11', '2021-08-25 02:08:11'),
('943c91e4-5b98-40b7-9e71-45efc8488ee9', NULL, 'Laravel Personal Access Client', 'LI9EK6ozPiUrT8HHR33m5iM8v8jmuBGUAWw9jgi1', NULL, 'http://localhost', 1, 0, 0, '2021-08-25 02:34:26', '2021-08-25 02:34:26'),
('943c91e4-60f7-4570-af51-1a594c6fdf59', NULL, 'Laravel Password Grant Client', 'v7NT09nvTXk7v3iLCDk633c5rybvIpChq3X1NBWL', 'users', 'http://localhost', 0, 1, 0, '2021-08-25 02:34:26', '2021-08-25 02:34:26');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
CREATE TABLE IF NOT EXISTS `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `client_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, '943c8882-0be1-437f-9bf5-f01b59d23434', '2021-08-25 02:08:11', '2021-08-25 02:08:11'),
(2, '943c91e4-5b98-40b7-9e71-45efc8488ee9', '2021-08-25 02:34:26', '2021-08-25 02:34:26');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
CREATE TABLE IF NOT EXISTS `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'User_token', '1ed781e0f46651cc4c99b00cdc59e38ff320397fd3875a54b05025f7ce42380f', '[\"*\"]', NULL, '2021-08-25 02:11:01', '2021-08-25 02:11:01'),
(2, 'App\\Models\\User', 1, 'token-name', '36b2cd89a589ea1f93918ce609a95d83e3b1d36ed61a79e5787498579e59d438', '[\"server:update\"]', NULL, '2021-08-25 02:14:37', '2021-08-25 02:14:37'),
(3, 'App\\Models\\User', 1, 'token-name', '12bef7175110b62f82cff7e1e7ac714f83e330dbff1bd472caf6d3fba666fbe0', '[\"server:update\"]', NULL, '2021-08-25 02:15:09', '2021-08-25 02:15:09'),
(4, 'App\\Models\\User', 1, 'token-name', 'f0d741ac6a8b495397371193d6d54dfe9659cc1983f2baa95537abc78683203a', '[\"server:update\"]', NULL, '2021-08-25 02:15:21', '2021-08-25 02:15:21'),
(5, 'App\\Models\\User', 1, 'token-name', '26b3fbfe5a17e183d6b0d2dc743fa8c83b562e6e2a5a9e4638c4750ff45876e9', '[\"server:update\"]', NULL, '2021-08-25 02:15:48', '2021-08-25 02:15:48'),
(6, 'App\\Models\\User', 1, 'token-name', '39f9ff1fb615fc9ba90084ebb2a7540c2c6014dade1810f3d45cc9f9353ed04a', '[\"server:update\"]', NULL, '2021-08-25 02:16:01', '2021-08-25 02:16:01'),
(7, 'App\\Models\\User', 1, 'token-name', '1a11259d20279988430c6252d1a2bbd6dbcb795c49a9eff4ffd79d9649268205', '[\"server:update\"]', NULL, '2021-08-25 02:16:37', '2021-08-25 02:16:37'),
(8, 'App\\Models\\User', 1, 'token-name', 'ee1674a75dca1e437946a5f3870d2d08ffc50bcac0479519fb6aa8983e27448b', '[\"server:update\"]', NULL, '2021-08-25 02:16:50', '2021-08-25 02:16:50'),
(9, 'App\\Models\\User', 1, 'token-name', '47582d42d49f11a0a09ce83a23f08a7c2b8f18f2ab5c2c725fde91abcad9098b', '[\"server:update\"]', NULL, '2021-08-25 02:17:19', '2021-08-25 02:17:19'),
(10, 'App\\Models\\User', 1, 'token-name', '1d19a0b4e8a8f640c43f67721450cbbe5cc7bce119d561477c5e53441ceb0b6b', '[\"server:update\"]', NULL, '2021-08-25 02:17:52', '2021-08-25 02:17:52'),
(11, 'App\\Models\\User', 1, 'token-name', '3e62bc181aa829d5f609b668efbb992e29f0ab72a3a4406d87cf2d9f688411ad', '[\"server:update\"]', NULL, '2021-08-25 02:18:26', '2021-08-25 02:18:26'),
(12, 'App\\Models\\User', 1, 'token-name', '91969e757483179a145e35affb1dd09251d84ef444d54b32bba9f7fb0761a4b1', '[\"server:update\"]', NULL, '2021-08-25 02:19:18', '2021-08-25 02:19:18'),
(13, 'App\\Models\\User', 1, 'token-name', 'd46984658e4ed2185c542e683d5117953b2d65cac69bf148c6144a47d3ce766a', '[\"server:update\"]', NULL, '2021-08-25 02:19:38', '2021-08-25 02:19:38'),
(14, 'App\\Models\\User', 1, 'token-name', 'c628f31d760d91fed081b021d8e0eb2fcea96aae1a53bb9c06ed77a02f0dfff2', '[\"server:update\"]', NULL, '2021-08-25 02:19:54', '2021-08-25 02:19:54'),
(15, 'App\\Models\\User', 1, 'User_token', '728386f4cc28dc583deba0aea15aa02a9fc0615c4a3ab33221265c0248607c27', '[\"*\"]', NULL, '2021-08-25 02:21:15', '2021-08-25 02:21:15'),
(16, 'App\\Models\\User', 1, 'User_token', 'fdcbe11a9680e8b0bdc8445a5aa2b6b3586bb0ff10481462b92be0279292d608', '[\"*\"]', NULL, '2021-08-25 02:30:18', '2021-08-25 02:30:18');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, '$2y$10$t6C4RchY1H2dkomIXtsoEO5GruX1m4LFtpLCu5vvcqo50aoia8u.i', NULL, '2021-08-25 02:10:53', '2021-08-25 02:10:53');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
