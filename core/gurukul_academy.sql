-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 08, 2021 at 02:58 PM
-- Server version: 5.7.33
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gurukul_academy`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '0 - deactive, 1 - active',
  `role_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified` int(11) NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `status`, `role_id`, `name`, `username`, `email`, `email_verified`, `image`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 'Admin', 'admin', 'admin@gmail.com', 0, '1613814214513697840.png', '$2y$10$q7PIHP9NSRt2TUUnqdYwJeiC6aIPcr5xy1h6BqN11Ou4BGjWvZfTG', NULL, NULL, '2021-04-11 06:19:17'),
(4, 1, 1, 'Gurukul School Admin', 'gurukul', 'admin@gurukul.com', 0, '16257521391695973522.png', '$2y$10$U.nP2LsMqtGZ/7wC3jIGu.g8Niw57dRNJkTVjEbqqEHVnzPmXyOb.', NULL, '2021-07-08 08:03:59', '2021-07-08 08:03:59');

-- --------------------------------------------------------

--
-- Table structure for table `archives`
--

CREATE TABLE `archives` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `archives`
--

INSERT INTO `archives` (`id`, `date`, `created_at`, `updated_at`) VALUES
(1, '01/2021', '2021-02-11 05:12:54', '2021-02-11 05:12:54');

-- --------------------------------------------------------

--
-- Table structure for table `backups`
--

CREATE TABLE `backups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bcategories`
--

CREATE TABLE `bcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `serial_number` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bcategories`
--

INSERT INTO `bcategories` (`id`, `language_id`, `name`, `slug`, `status`, `serial_number`, `created_at`, `updated_at`) VALUES
(1, 1, 'Courses Offer', 'Courses-Offer', 1, 0, '2021-02-11 00:51:53', '2021-07-08 08:36:05'),
(2, 1, 'Gurukul News', 'Gurukul-News', 1, 1, '2021-02-11 00:52:01', '2021-07-07 17:47:38'),
(4, 1, 'School Event', 'School-Event', 1, 0, '2021-02-11 00:52:59', '2021-07-07 17:47:31');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `bcategory_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(4) DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `serial_number` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `language_id`, `bcategory_id`, `title`, `slug`, `image`, `content`, `status`, `meta_keywords`, `meta_description`, `serial_number`, `created_at`, `updated_at`) VALUES
(1, 1, 4, 'Magna aliqua. Ut enim ad minim venia m, quis nostrud exercitation', 'Magna-aliqua.-Ut-enim-ad-minim-venia-m,-quis-nostrud-exercitation', '16257007291674726144.jpg', '<div><p>Lorem ipsum dolor sit amet, consectetur\r\n adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore \r\nmagna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco\r\n laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor \r\nin reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla \r\npariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa \r\nqui officia deserunt mollit anim id est laborum. Sed ut perspiciatis \r\nunde omnis iste natus error sit voluptatem accusantium doloremque \r\nlaudantium, totam rem aperiam, eaque ipsa quae ab illo inventore \r\nveritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo \r\nenim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, \r\nsed quia consequuntur magni dolores eos qui ratione voluptatem sequi \r\nnesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit \r\namet, consectetur, adipisci velit, sed quia non numquam eius modi \r\ntempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.</p>\r\n                                    <p>Lorem ipsum dolor \r\nsit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt\r\n ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud\r\n exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. \r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum \r\ndolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non \r\nproident, sunt in culpa qui officia deserunt.</p>\r\n                                    \r\n                                </div>\r\n\r\n<div><br>Setting the mood with incense\r\n                                    <p>Lorem ipsum dolor sit amet, \r\nconsectetur adipisicing elit, sed do eiusmod tempor incidi-dunt ut \r\nlabore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud \r\nexercitati-on ullamco laboris nisi ut aliquip ex ea commodo consequat. \r\nDuis aute irure dolor in repre-henderit in voluptate velit esse cillum \r\ndolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non \r\nproident, sunt in culpa qui officia. </p>\r\n                                    A cleansing hot shower or bath\r\n                                    <p>Lorem ipsum dolor sit amet, \r\nconsectetur adipisicing elit, sed do eiusmod tempor incidi-dunt ut \r\nlabore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud \r\nexercitati-on ullamco laboris nisi ut aliquip ex ea commodo consequat. \r\nDuis aute irure dolor in repre-henderit in voluptate velit esse cillum \r\ndolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non \r\nproident, sunt in culpa qui officia. </p>\r\n                                    Setting the mood with incense\r\n                                    <ul>\r\n                                        <li> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do.</li>\r\n                                        <li> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do.</li>\r\n                                        <li> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do.</li>\r\n                                        <li> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do.</li>\r\n                                        <li> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do.</li></ul></div>', 1, 'html,css,js', 'Duis aute irure dolor in repre-henderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia.', 0, '2021-02-11 05:35:56', '2021-07-07 17:47:09'),
(2, 1, 2, 'Adipisicing elit, sed do eiusmod tempor incididunt ut labore et', 'Adipisicing-elit,-sed-do-eiusmod-tempor-incididunt-ut-labore-et', '16257007131105893592.jpg', '<div><p>Lorem ipsum dolor sit amet, consectetur\r\n adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore \r\nmagna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco\r\n laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor \r\nin reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla \r\npariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa \r\nqui officia deserunt mollit anim id est laborum. Sed ut perspiciatis \r\nunde omnis iste natus error sit voluptatem accusantium doloremque \r\nlaudantium, totam rem aperiam, eaque ipsa quae ab illo inventore \r\nveritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo \r\nenim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, \r\nsed quia consequuntur magni dolores eos qui ratione voluptatem sequi \r\nnesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit \r\namet, consectetur, adipisci velit, sed quia non numquam eius modi \r\ntempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.</p>\r\n                                    <p>Lorem ipsum dolor \r\nsit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt\r\n ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud\r\n exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. \r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum \r\ndolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non \r\nproident, sunt in culpa qui officia deserunt.</p>\r\n                                    \r\n                                </div>\r\n\r\n<div><br>Setting the mood with incense\r\n                                    <p>Lorem ipsum dolor sit amet, \r\nconsectetur adipisicing elit, sed do eiusmod tempor incidi-dunt ut \r\nlabore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud \r\nexercitati-on ullamco laboris nisi ut aliquip ex ea commodo consequat. \r\nDuis aute irure dolor in repre-henderit in voluptate velit esse cillum \r\ndolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non \r\nproident, sunt in culpa qui officia. </p>\r\n                                    A cleansing hot shower or bath\r\n                                    <p>Lorem ipsum dolor sit amet, \r\nconsectetur adipisicing elit, sed do eiusmod tempor incidi-dunt ut \r\nlabore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud \r\nexercitati-on ullamco laboris nisi ut aliquip ex ea commodo consequat. \r\nDuis aute irure dolor in repre-henderit in voluptate velit esse cillum \r\ndolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non \r\nproident, sunt in culpa qui officia. </p>\r\n                                    Setting the mood with incense\r\n                                    <ul>\r\n                                        <li> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do.</li>\r\n                                        <li> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do.</li>\r\n                                        <li> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do.</li>\r\n                                        <li> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do.</li>\r\n                                        <li> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do.</li></ul></div>', 1, 'html,css,js', 'Duis aute irure dolor in repre-henderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia.', 0, '2021-02-11 05:35:56', '2021-07-07 17:46:53'),
(3, 1, 1, 'Lorem ipsum dolor sit amet, consecte cing elit, sed do', 'Lorem-ipsum-dolor-sit-amet,-consecte-cing-elit,-sed-do', '16257006961483554888.jpg', '<div><p>Lorem ipsum dolor sit amet, consectetur\r\n adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore \r\nmagna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco\r\n laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor \r\nin reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla \r\npariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa \r\nqui officia deserunt mollit anim id est laborum. Sed ut perspiciatis \r\nunde omnis iste natus error sit voluptatem accusantium doloremque \r\nlaudantium, totam rem aperiam, eaque ipsa quae ab illo inventore \r\nveritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo \r\nenim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, \r\nsed quia consequuntur magni dolores eos qui ratione voluptatem sequi \r\nnesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit \r\namet, consectetur, adipisci velit, sed quia non numquam eius modi \r\ntempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.</p>\r\n                                    <p>Lorem ipsum dolor \r\nsit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt\r\n ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud\r\n exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. \r\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum \r\ndolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non \r\nproident, sunt in culpa qui officia deserunt.</p>\r\n                                    \r\n                                </div>\r\n\r\n<div><br>Setting the mood with incense\r\n                                    <p>Lorem ipsum dolor sit amet, \r\nconsectetur adipisicing elit, sed do eiusmod tempor incidi-dunt ut \r\nlabore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud \r\nexercitati-on ullamco laboris nisi ut aliquip ex ea commodo consequat. \r\nDuis aute irure dolor in repre-henderit in voluptate velit esse cillum \r\ndolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non \r\nproident, sunt in culpa qui officia. </p>\r\n                                    A cleansing hot shower or bath\r\n                                    <p>Lorem ipsum dolor sit amet, \r\nconsectetur adipisicing elit, sed do eiusmod tempor incidi-dunt ut \r\nlabore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud \r\nexercitati-on ullamco laboris nisi ut aliquip ex ea commodo consequat. \r\nDuis aute irure dolor in repre-henderit in voluptate velit esse cillum \r\ndolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non \r\nproident, sunt in culpa qui officia. </p>\r\n                                    Setting the mood with incense\r\n                                    <ul>\r\n                                        <li> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do.</li>\r\n                                        <li> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do.</li>\r\n                                        <li> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do.</li>\r\n                                        <li> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do.</li>\r\n                                        <li> Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do.</li></ul></div>', 1, 'html,css,js', 'Duis aute irure dolor in repre-henderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia.', 0, '2021-02-11 05:35:56', '2021-07-07 17:46:36');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `language_id`, `status`, `name`, `image`, `link`, `serial_number`, `created_at`, `updated_at`) VALUES
(1, '1', 1, 'geniusdevs', '16129535581894368474.png', 'https://themeforest.net/user/geniusdevs/portfolio', 0, '2021-02-10 04:39:18', '2021-02-10 05:41:14'),
(2, '1', 1, 'geniusdevs', '16129535851643753715.png', 'https://themeforest.net/user/geniusdevs/portfolio', 0, '2021-02-10 04:39:45', '2021-02-10 05:41:08'),
(3, '1', 1, 'geniusdevs', '16129536061477062131.png', 'https://themeforest.net/user/geniusdevs/portfolio', 0, '2021-02-10 04:40:06', '2021-02-10 05:41:04'),
(4, '1', 1, 'geniusdevs', '16129536221147220531.png', 'https://themeforest.net/user/geniusdevs/portfolio', 0, '2021-02-10 04:40:22', '2021-02-10 05:40:59'),
(5, '1', 1, 'geniusdevs', '1612953650268349824.png', 'https://themeforest.net/user/geniusdevs/portfolio', 0, '2021-02-10 04:40:50', '2021-02-10 05:40:55'),
(6, '1', 1, 'geniusdevs', '1612953665451385670.png', 'https://themeforest.net/user/geniusdevs/portfolio', 0, '2021-02-10 04:41:05', '2021-02-10 05:40:48');

-- --------------------------------------------------------

--
-- Table structure for table `counters`
--

CREATE TABLE `counters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `counters`
--

INSERT INTO `counters` (`id`, `language_id`, `status`, `title`, `number`, `icon`, `text`, `serial_number`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Activities Done', 100, 'fal fa-box', 'Sed ut perspiciatis unde omnis iste natus error sit voluptsantium doloremque laudantium', 0, '2021-02-10 03:19:45', '2021-07-08 08:57:51'),
(2, 1, 1, 'Happy Staffs', 20, 'fal fa-users', 'Sed ut perspiciatis unde omnis iste natus error sit voluptsantium doloremque laudantium', 0, '2021-02-10 03:20:34', '2021-07-08 08:57:39'),
(3, 1, 1, 'Qualified Grauates', 500, 'fal fa-globe', 'Sed ut perspiciatis unde omnis iste natus error sit voluptsantium doloremque laudantium', 0, '2021-02-10 03:21:11', '2021-07-08 08:57:28'),
(4, 1, 1, 'Students', 900, 'fal fa-award', 'Sed ut perspiciatis unde omnis iste natus error sit voluptsantium doloremque laudantiu', 0, '2021-02-10 03:21:37', '2021-07-08 08:57:09');

-- --------------------------------------------------------

--
-- Table structure for table `daynamicpages`
--

CREATE TABLE `daynamicpages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` blob,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `serial_number` int(11) NOT NULL DEFAULT '0',
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `emailsettings`
--

CREATE TABLE `emailsettings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `is_smtp` int(11) DEFAULT NULL,
  `header_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_host` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_port` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_encryption` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_user` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_pass` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_verification_email` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `emailsettings`
--

INSERT INTO `emailsettings` (`id`, `is_smtp`, `header_email`, `smtp_host`, `smtp_port`, `email_encryption`, `smtp_user`, `smtp_pass`, `from_email`, `from_name`, `is_verification_email`, `created_at`, `updated_at`) VALUES
(1, 0, 'smtp', 'smtp.mailtrap.io', '2525', 'tls', '8db3922982412e', 'mamun', 'skynet@gmail.com', 'Skynet', 1, NULL, '2021-05-19 09:45:16');

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
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `serial_number` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `language_id`, `status`, `title`, `content`, `serial_number`, `created_at`, `updated_at`) VALUES
(1, '1', 1, 'We Provide Professional Service', '<p><span style=\"color:rgb(97,97,97);font-family:Karla, sans-serif;font-size:15px;\">Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam</span><br></p>', 0, '2021-02-10 00:33:37', '2021-02-10 00:39:16'),
(2, '1', 1, 'Stay Up, Stay Running & Protected', '<p><span style=\"color:rgb(97,97,97);font-family:Karla, sans-serif;font-size:15px;\">Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam</span><br></p>', 1, '2021-02-10 00:34:16', '2021-02-10 00:39:04'),
(3, '1', 1, 'Our Experienced Experts', '<p><span style=\"color:rgb(97,97,97);font-family:Karla, sans-serif;font-size:15px;\">Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam</span><br></p>', 0, '2021-02-10 00:34:37', '2021-02-10 00:38:55'),
(4, '1', 1, 'Management Engineering System', '<p><span style=\"color:rgb(97,97,97);font-family:Karla, sans-serif;font-size:15px;\">Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam</span><br></p>', 0, '2021-02-10 00:34:53', '2021-02-10 00:38:51');

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

CREATE TABLE `features` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `flinks`
--

CREATE TABLE `flinks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `flinks`
--

INSERT INTO `flinks` (`id`, `language_id`, `name`, `url`, `serial_number`, `created_at`, `updated_at`) VALUES
(1, 1, 'About Us', '/about', 0, '2021-02-14 22:55:49', '2021-07-08 08:00:24'),
(3, 1, 'Courses', '/service', 0, '2021-02-14 22:56:19', '2021-07-08 08:01:00'),
(4, 1, 'Blogs', '/blog', 1, '2021-02-14 22:56:27', '2021-07-08 08:01:19'),
(5, 1, 'Events and News', '/event', 0, '2021-02-19 07:45:06', '2021-07-08 08:01:33');

-- --------------------------------------------------------

--
-- Table structure for table `histories`
--

CREATE TABLE `histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `histories`
--

INSERT INTO `histories` (`id`, `language_id`, `status`, `title`, `image`, `date`, `position`, `serial_number`, `created_at`, `updated_at`) VALUES
(3, '1', 1, 'Educating students for success in changing the world', 'portfolio_1625749834935709520.jpg', '2078', 'Field Trip', 0, '2021-02-10 23:46:12', '2021-07-08 07:25:34'),
(4, '1', 1, 'Educating students for success in changing the world', 'portfolio_1625749814951194408.jpg', '2078', 'Startup', 0, '2021-02-10 23:47:05', '2021-07-08 07:25:14');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` int(11) NOT NULL DEFAULT '0',
  `direction` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `code`, `is_default`, `direction`, `created_at`, `updated_at`) VALUES
(1, 'English', 'en', 1, 'ltr', NULL, '2021-02-22 03:06:07');

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
(1, '2020_05_25_122740_create_admins_table', 1),
(2, '2020_05_26_000000_create_users_table', 1),
(3, '2020_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_10_12_100000_create_password_resets_table', 1),
(7, '2020_10_26_035012_create_languages_table', 1),
(8, '2020_10_27_024546_create_sliders_table', 1),
(10, '2020_10_27_025335_create_services_table', 1),
(12, '2020_10_27_025627_create_faqs_table', 1),
(13, '2020_11_17_122813_create_newsletters_table', 1),
(14, '2020_11_20_085050_create_emailsettings_table', 1),
(15, '2020_12_25_124242_create_socials_table', 1),
(16, '2021_01_01_123641_create_blogs_table', 1),
(17, '2021_01_01_123728_create_bcategories_table', 1),
(18, '2021_01_03_110518_create_testimonials_table', 1),
(22, '2021_01_24_111458_create_backups_table', 1),
(23, '2021_02_07_145147_create_features_table', 1),
(24, '2021_02_07_145631_create_why_selects_table', 1),
(26, '2021_02_07_151616_create_clients_table', 1),
(27, '2021_02_07_152047_create_counters_table', 1),
(28, '2021_02_08_041017_create_archives_table', 1),
(29, '2021_02_08_042120_create_portfolios_table', 1),
(30, '2021_02_08_042357_create_portfolio_images_table', 1),
(31, '2020_10_13_123757_create_settings_table', 2),
(32, '2020_10_14_103316_create_sectiontitle_table', 3),
(33, '2021_02_09_043348_add_video_info_to_sectiontitles_table', 4),
(34, '2021_02_09_050446_add_about_info_to_sectiontitles_table', 5),
(36, '2020_10_27_025547_create_teams_table', 6),
(37, '2021_02_07_151349_create_histories_table', 7),
(38, '2021_02_12_045400_add_opening_hours_to_settings', 8),
(39, '2021_02_13_041641_add_meet_text_to_sectiontitles_table', 9),
(40, '2021_02_15_035217_add_footer_bg_to_settings_table', 10),
(41, '2021_02_15_043251_create_flinks_table', 11),
(42, '2021_02_15_112132_add_testimonial_content_to_sectiontitles_table', 12),
(43, '2021_02_16_111526_add_link_to_portfolios_table', 13),
(44, '2020_10_27_025201_create_packages_table', 14),
(45, '2021_01_24_105925_create_quotes_table', 15),
(46, '2021_01_07_105717_create_daynamicpages_table', 16),
(47, '2021_02_19_140441_add_page_visibility_to_settings_table', 17),
(48, '2021_01_24_110045_create_roles_table', 18),
(50, '2021_04_23_204005_add_moretableinsettings2_to_settings_table', 19);

-- --------------------------------------------------------

--
-- Table structure for table `newsletters`
--

CREATE TABLE `newsletters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `feature` text COLLATE utf8mb4_unicode_ci,
  `serial_number` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `portfolios`
--

CREATE TABLE `portfolios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `submission_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_id` int(11) DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(4) DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `serial_number` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `portfolio_images`
--

CREATE TABLE `portfolio_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `portfolio_id` int(11) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quotes`
--

CREATE TABLE `quotes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `budget` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `skypenumber` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0-pending, 1-prcessing, 2-completed, 3-rejected',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `permissions`, `created_at`, `updated_at`) VALUES
(1, 'Admin', '[\"Home\",\"About\",\"Quote\",\"Service\",\"Contact\",\"Portfolio\",\"Blog\",\"Subscribers\"]', '2021-02-19 12:53:15', '2021-07-08 08:02:47'),
(3, 'Developer', NULL, '2021-02-19 13:47:18', '2021-07-08 08:02:14');

-- --------------------------------------------------------

--
-- Table structure for table `sectiontitles`
--

CREATE TABLE `sectiontitles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `w_we_are_sub_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `w_we_are_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `w_we_are_text` text COLLATE utf8mb4_unicode_ci,
  `video_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_sub_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_image_right` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_image_left` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_bg_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_content` text COLLATE utf8mb4_unicode_ci,
  `service_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_sub_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `w_c_us_sub_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `w_c_us_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `w_c_us_image1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `w_c_us_image2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `team_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `team_sub_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_sub_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_form_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_section_bg_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_form_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_map` text COLLATE utf8mb4_unicode_ci,
  `faq_sub_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `faq_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `faq_bg_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `faq_image1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `faq_image2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_sub_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_sub_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_bg_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_f_icon1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_f_icon2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_f_text1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_f_text2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_sub_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_text` text COLLATE utf8mb4_unicode_ci,
  `about_experince_yers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_intro_video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_image` text COLLATE utf8mb4_unicode_ci,
  `get_quote_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `get_quote_sub_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `our_history_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `our_history_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `package_sub_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `package_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `portfolio_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `portfolio_sub_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `counter_bg_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meeet_us_bg_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meeet_us_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meeet_us_button_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meeet_us_button_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `testimonial_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `testimonial_subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sectiontitles`
--

INSERT INTO `sectiontitles` (`id`, `language_id`, `w_we_are_sub_title`, `w_we_are_title`, `w_we_are_text`, `video_title`, `video_sub_title`, `video_text`, `video_image`, `video_link`, `video_image_right`, `video_image_left`, `video_bg_image`, `video_content`, `service_title`, `service_sub_title`, `w_c_us_sub_title`, `w_c_us_title`, `w_c_us_image1`, `w_c_us_image2`, `team_title`, `team_sub_title`, `contact_sub_title`, `contact_title`, `contact_form_title`, `contact_section_bg_image`, `contact_form_image`, `contact_map`, `faq_sub_title`, `faq_title`, `faq_bg_image`, `faq_image1`, `faq_image2`, `blog_title`, `blog_sub_title`, `hero_sub_title`, `hero_title`, `hero_text`, `hero_image`, `hero_bg_image`, `hero_f_icon1`, `hero_f_icon2`, `hero_f_text1`, `hero_f_text2`, `about_title`, `about_sub_title`, `about_text`, `about_experince_yers`, `about_intro_video`, `about_image`, `get_quote_title`, `get_quote_sub_title`, `our_history_title`, `our_history_text`, `package_sub_title`, `package_title`, `portfolio_title`, `portfolio_sub_title`, `counter_bg_image`, `meeet_us_bg_image`, `meeet_us_text`, `meeet_us_button_text`, `meeet_us_button_link`, `created_at`, `updated_at`, `testimonial_title`, `testimonial_subtitle`) VALUES
(1, '1', 'WHO WE ARE', 'Educating students for success in changing the world', 'Perspiciatis unde omnis iste natus error sit voluptatem accusantium dolorem-quelaudantium, totam rem aperiam eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quiavoluptas sit aspernatur aut odit aut fugit, sed quia quuntur magni dolores eos ratione voluptatem sequi nesciunt eque porroe.', 'Educating students for success in changing the world', 'INTRO VIDEO', 'Educating students for success in changing the world', '1625700339419683974.jpg', 'https://www.youtube.com/watch?v=TdSA7gkVYU0', '16257003391169935047.jpg', '1625700339927606729.jpg', '16257003381940293907.jpg', 'hether you are building an enterprise web portal or a state-of-the-art website, you always need the right modern tools. Well-built and maintained PHP frameworks provide those tools in abundance, allowing maintained PHP frameworks provide those tools in abundance, allowing developers to save time, re-use code, and streamline the back end. As software development tools continuously.', 'Educating students for success in changing the world', 'OUR COURSES', 'WHO WE ARE', 'Why Choose Us', '1625700359770342795.jpg', '16257003591723740319.jpg', 'Meet Our Exclusive Leadership', 'OUR TEAM MEMBER', 'CONTACT US', 'Educating students for success in changing the world', 'Educating students for success in changing the world', '16257004391254591951.jpg', '16257004391105260822.jpg', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3499.3186957622934!2d80.57440051456145!3d28.710020287321576!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39a1ecce1c1e8f2f%3A0xbda0895b021d3648!2sGurukul%20Academy!5e0!3m2!1sen!2snp!4v1625700479146!5m2!1sen!2snp\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', 'FAQ', 'Why Choose Our Solutions', '1612937982770064829.jpg', '1612937982435794173.jpg', '1612938123482410717.jpg', 'Read Our Latest News & Blog', 'LATEST NEWS', 'Nursery to Class Nine', 'Gurukul Academy English School', 'Uttar Behadi, Dhangadhi', '16256997531180847723.jpg', '16257515251466563471.jpg', 'fa fa-user', 'fa fa-mobile', 'Admission Open', 'Online Classes', 'Educating students for success in changing the world', 'ABOUT US', '<p>Does any industry face a more complex audience journey and marketing sales process than B2B technology? Consider the number of people who influence a sale, the length of the decision-making cycle, the competing interests of the people who purchase, implement, manage, and use the technology. It’s a lot meaningful content here. It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.</p><p>The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', '20', 'https://www.youtube.com', '16257000932004752744.jpg', NULL, NULL, 'Our History', 'Does any industry face a more complex audience journey and marketing sales process than B2B technology.', 'School Offers', 'Our Courses Packages', 'Read Our Recent Events', 'Latest News and Events', NULL, '16131902461486580724.jpg', 'Preparing For Your Business Success', 'Meet With Us', 'https://codecanyon.net/user/geniusdevs', NULL, '2021-07-08 08:33:40', 'What Our Students Says', 'Testominals');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `serial_number` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `language_id`, `status`, `title`, `slug`, `icon`, `image`, `content`, `serial_number`, `created_at`, `updated_at`) VALUES
(3, '1', 1, 'High School', 'High-School', 'fal fa-map-marked-alt', '16257017461639457192.jpg', '<p>As a result, most of us need to know how to use computers. Our knowledge of computers will help us to tap into challenging career opportunities and enhance the quality of our lives. It is imperative that quality students be encouraged and motivated to study computers and become capable and responsible IT professionals. The education model needs to align itself with dynamically changing technology to meet the growing need for skilled IT manpower and deliver state-of-the-art, industry relevant and technology ready programs.​ Today, the term Information Technology (IT) has ballooned to encompass many aspects of computing and technology and the term is more recognizable than ever before. The Information Technology umbrella can be quite large, covering many fields. IT professionals perform a variety of duties that range from installing applications, managing information, to designing complex applications, managing computer networks and designing and managing databases. <br></p>', 0, '2021-02-11 07:16:06', '2021-07-07 18:04:06'),
(5, '1', 1, 'Secondary Level', 'Secondary-Level', 'fal fa-hurricane', '16257017011103073810.jpg', '<p>As a result, most of us need to know how to use computers. Our knowledge of computers will help us to tap into challenging career opportunities and enhance the quality of our lives. It is imperative that quality students be encouraged and motivated to study computers and become capable and responsible IT professionals. The education model needs to align itself with dynamically changing technology to meet the growing need for skilled IT manpower and deliver state-of-the-art, industry relevant and technology ready programs.​ Today, the term Information Technology (IT) has ballooned to encompass many aspects of computing and technology and the term is more recognizable than ever before. The Information Technology umbrella can be quite large, covering many fields. IT professionals perform a variety of duties that range from installing applications, managing information, to designing complex applications, managing computer networks and designing and managing databases. <br></p>', 0, '2021-02-11 07:22:50', '2021-07-07 18:03:21'),
(6, '1', 1, 'Kindergarden', 'Kindergarden', 'fal fa-bezier-curve', '1625701682473001135.jpg', '<p>As a result, most of us need to know how to use computers. Our knowledge of computers will help us to tap into challenging career opportunities and enhance the quality of our lives. It is imperative that quality students be encouraged and motivated to study computers and become capable and responsible IT professionals. The education model needs to align itself with dynamically changing technology to meet the growing need for skilled IT manpower and deliver state-of-the-art, industry relevant and technology ready programs.​ Today, the term Information Technology (IT) has ballooned to encompass many aspects of computing and technology and the term is more recognizable than ever before. The Information Technology umbrella can be quite large, covering many fields. IT professionals perform a variety of duties that range from installing applications, managing information, to designing complex applications, managing computer networks and designing and managing databases. <br></p>', 0, '2021-02-11 07:23:18', '2021-07-07 18:03:02');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `theme_version` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `base_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `header_logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fav_icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `breadcrumb_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contactemail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `opening_hours` text COLLATE utf8mb4_unicode_ci,
  `footer_text` text COLLATE utf8mb4_unicode_ci,
  `footer_bg_image` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `copyright_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `messenger` text COLLATE utf8mb4_unicode_ci,
  `disqus` text COLLATE utf8mb4_unicode_ci,
  `add_this_status` text COLLATE utf8mb4_unicode_ci,
  `facebook_pexel` text COLLATE utf8mb4_unicode_ci,
  `google_analytics` text COLLATE utf8mb4_unicode_ci,
  `announcement` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `announcement_delay` decimal(11,2) NOT NULL DEFAULT '0.00',
  `maintainance_text` text COLLATE utf8mb4_unicode_ci,
  `tawk_to` text COLLATE utf8mb4_unicode_ci,
  `cookie_alert_text` blob,
  `google_recaptcha_site_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_recaptcha_secret_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_messenger` tinyint(4) NOT NULL DEFAULT '1',
  `is_disqus` tinyint(4) NOT NULL DEFAULT '1',
  `is_google_analytics` tinyint(4) NOT NULL DEFAULT '1',
  `is_add_this_status` tinyint(4) NOT NULL DEFAULT '1',
  `is_facebook_pexel` tinyint(4) NOT NULL DEFAULT '1',
  `is_announcement` tinyint(4) NOT NULL DEFAULT '1',
  `is_maintainance_mode` tinyint(4) NOT NULL DEFAULT '1',
  `is_blog_share_links` tinyint(4) NOT NULL DEFAULT '1',
  `is_tawk_to` tinyint(4) NOT NULL DEFAULT '1',
  `is_recaptcha` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_cooki_alert` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_t1_slider_section` tinyint(4) NOT NULL DEFAULT '1',
  `is_t1_who_we_are_section` tinyint(4) NOT NULL DEFAULT '1',
  `is_t1_intro_video_section` tinyint(4) NOT NULL DEFAULT '1',
  `is_t1_service_section` tinyint(4) NOT NULL DEFAULT '1',
  `is_t1_why_choose_us_section` tinyint(4) NOT NULL DEFAULT '1',
  `is_t1_portfolio_section` tinyint(4) NOT NULL DEFAULT '1',
  `is_t1_testimonial_section` tinyint(4) NOT NULL DEFAULT '1',
  `is_t1_team_section` tinyint(4) NOT NULL DEFAULT '1',
  `is_t1_contact_section` tinyint(4) NOT NULL DEFAULT '1',
  `is_t1_faq_counter_section` tinyint(4) NOT NULL DEFAULT '1',
  `is_t1_meet_us_section` tinyint(4) NOT NULL DEFAULT '1',
  `is_t1_blog_section` tinyint(4) NOT NULL DEFAULT '1',
  `is_t1_clint_section` tinyint(4) NOT NULL DEFAULT '1',
  `is_t2_hero_section` tinyint(4) NOT NULL DEFAULT '1',
  `is_t2_about_section` tinyint(4) NOT NULL DEFAULT '1',
  `is_t2_service_section` tinyint(4) NOT NULL DEFAULT '1',
  `is_t2_intro_video_section` tinyint(4) NOT NULL DEFAULT '1',
  `is_t2_team_section` tinyint(4) NOT NULL DEFAULT '1',
  `is_t2_counter_section` tinyint(4) NOT NULL DEFAULT '1',
  `is_t2_testimonial_section` tinyint(4) NOT NULL DEFAULT '1',
  `is_t2_contact_section` tinyint(4) NOT NULL DEFAULT '1',
  `is_t2_faq_section` tinyint(4) NOT NULL DEFAULT '1',
  `is_t2_quote_section` tinyint(4) NOT NULL DEFAULT '1',
  `is_t2_news_section` tinyint(4) NOT NULL DEFAULT '1',
  `is_t2_client_section` tinyint(4) NOT NULL DEFAULT '1',
  `is_t3_hero_section` tinyint(4) NOT NULL DEFAULT '1',
  `is_t3_service_section` tinyint(4) NOT NULL DEFAULT '1',
  `is_t3_portfolio_section` tinyint(4) NOT NULL DEFAULT '1',
  `is_t3_testimonial_section` tinyint(4) NOT NULL DEFAULT '1',
  `is_t3_faq_section` tinyint(4) NOT NULL DEFAULT '1',
  `is_t3_team_section` tinyint(4) NOT NULL DEFAULT '1',
  `is_t3_meet_us_section` tinyint(4) NOT NULL DEFAULT '1',
  `is_t3_news_section` tinyint(4) NOT NULL DEFAULT '1',
  `is_t3_client_section` tinyint(4) NOT NULL DEFAULT '1',
  `is_t4_hero_section` tinyint(4) NOT NULL DEFAULT '1',
  `is_t4_client_section` tinyint(4) NOT NULL DEFAULT '1',
  `is_t4_about_section` tinyint(4) NOT NULL DEFAULT '1',
  `is_t4_feature_section` tinyint(4) NOT NULL DEFAULT '1',
  `is_t4_who_we_are_section` tinyint(4) NOT NULL DEFAULT '1',
  `is_t4_intro_video_section` tinyint(4) NOT NULL DEFAULT '1',
  `is_t4_portfolio_section` tinyint(4) NOT NULL DEFAULT '1',
  `is_t4_counter_section` tinyint(4) NOT NULL DEFAULT '1',
  `is_t4_testmonial_section` tinyint(4) NOT NULL DEFAULT '1',
  `is_t4_faq_section` tinyint(4) NOT NULL DEFAULT '1',
  `is_t4_contact_section` tinyint(4) NOT NULL DEFAULT '1',
  `about_page` tinyint(4) NOT NULL DEFAULT '1',
  `service_page` tinyint(4) NOT NULL DEFAULT '1',
  `poerfolio_page` tinyint(4) NOT NULL DEFAULT '1',
  `package_page` tinyint(4) NOT NULL DEFAULT '1',
  `team_page` tinyint(4) NOT NULL DEFAULT '1',
  `faq_page` tinyint(4) NOT NULL DEFAULT '1',
  `blog_page` tinyint(4) NOT NULL DEFAULT '1',
  `contact_page` tinyint(4) NOT NULL DEFAULT '1',
  `quote_page` tinyint(4) NOT NULL DEFAULT '1',
  `about_about` tinyint(4) NOT NULL DEFAULT '1',
  `about_w_w_a` tinyint(4) NOT NULL DEFAULT '1',
  `about_choose_us` tinyint(4) NOT NULL DEFAULT '1',
  `about_history` tinyint(4) NOT NULL DEFAULT '1',
  `is_video_hero` tinyint(4) NOT NULL DEFAULT '1',
  `is_whatsapp` tinyint(4) NOT NULL DEFAULT '1',
  `is_call_button` tinyint(4) NOT NULL DEFAULT '1',
  `whatsapp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `maintainance_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_section_video_link` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `language_id`, `theme_version`, `website_title`, `base_color`, `header_logo`, `footer_logo`, `fav_icon`, `breadcrumb_image`, `number`, `email`, `contactemail`, `address`, `opening_hours`, `footer_text`, `footer_bg_image`, `meta_keywords`, `meta_description`, `copyright_text`, `messenger`, `disqus`, `add_this_status`, `facebook_pexel`, `google_analytics`, `announcement`, `announcement_delay`, `maintainance_text`, `tawk_to`, `cookie_alert_text`, `google_recaptcha_site_key`, `google_recaptcha_secret_key`, `is_messenger`, `is_disqus`, `is_google_analytics`, `is_add_this_status`, `is_facebook_pexel`, `is_announcement`, `is_maintainance_mode`, `is_blog_share_links`, `is_tawk_to`, `is_recaptcha`, `is_cooki_alert`, `created_at`, `updated_at`, `is_t1_slider_section`, `is_t1_who_we_are_section`, `is_t1_intro_video_section`, `is_t1_service_section`, `is_t1_why_choose_us_section`, `is_t1_portfolio_section`, `is_t1_testimonial_section`, `is_t1_team_section`, `is_t1_contact_section`, `is_t1_faq_counter_section`, `is_t1_meet_us_section`, `is_t1_blog_section`, `is_t1_clint_section`, `is_t2_hero_section`, `is_t2_about_section`, `is_t2_service_section`, `is_t2_intro_video_section`, `is_t2_team_section`, `is_t2_counter_section`, `is_t2_testimonial_section`, `is_t2_contact_section`, `is_t2_faq_section`, `is_t2_quote_section`, `is_t2_news_section`, `is_t2_client_section`, `is_t3_hero_section`, `is_t3_service_section`, `is_t3_portfolio_section`, `is_t3_testimonial_section`, `is_t3_faq_section`, `is_t3_team_section`, `is_t3_meet_us_section`, `is_t3_news_section`, `is_t3_client_section`, `is_t4_hero_section`, `is_t4_client_section`, `is_t4_about_section`, `is_t4_feature_section`, `is_t4_who_we_are_section`, `is_t4_intro_video_section`, `is_t4_portfolio_section`, `is_t4_counter_section`, `is_t4_testmonial_section`, `is_t4_faq_section`, `is_t4_contact_section`, `about_page`, `service_page`, `poerfolio_page`, `package_page`, `team_page`, `faq_page`, `blog_page`, `contact_page`, `quote_page`, `about_about`, `about_w_w_a`, `about_choose_us`, `about_history`, `is_video_hero`, `is_whatsapp`, `is_call_button`, `whatsapp`, `maintainance_image`, `hero_section_video_link`) VALUES
(1, '1', 'theme4', 'Gurukul Academy English School', '59B390', 'header_logo_16256993071077904878.png', 'footer_logo1625700794209958756.png', 'fav_icon_16257526222132549161.png', 'breadcrumb_image_.jpg', '984-8540406', 'gurukulacademy@gmail.com', 'gurukulacademy@gmail.com', 'Dhangadhi, Uttarbehadi-4', 'Sun - Fri / 10AM - 5PM', 'Educating students for success in changing the world', 'footer_bg_image_16257007941368945242.jpg', 'gurukul,academy,school', 'Gurukul Academy English School', '<p>Copyright by @ Gurukul Academy - 2021</p>', NULL, 'gurukul', NULL, NULL, '6Lf9jOQUAAAAALO4C5pC7O_HHw0Z1BuYCU_FA606', '16257020481528189421.jpg', '3.00', 'We are upgrading our site. We will come back soon. \r\nPlease stay with us.\r\nThank you.', '<!--Start of Tawk.to Script-->\r\n<script type=\"text/javascript\">\r\nvar Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();\r\n(function(){\r\nvar s1=document.createElement(\"script\"),s0=document.getElementsByTagName(\"script\")[0];\r\ns1.async=true;\r\ns1.src=\'https://embed.tawk.to/602f3cb99c4f165d47c4d425/1eus8adqv\';\r\ns1.charset=\'UTF-8\';\r\ns1.setAttribute(\'crossorigin\',\'*\');\r\ns0.parentNode.insertBefore(s1,s0);\r\n})();\r\n</script>\r\n<!--End of Tawk.to Script-->', 0x3c703e3c7370616e20636c6173733d22636f6f6b69652d636f6e73656e745f5f6d65737361676522207374796c653d226d617267696e3a203070783b2070616464696e673a203070783b20626f726465723a203070783b20766572746963616c2d616c69676e3a20626173656c696e653b20666f6e742d66616d696c793a20506f7070696e732c2073616e732d73657269663b223e596f757220657870657269656e6365206f6e207468697320736974652077696c6c20626520696d70726f76656420627920616c6c6f77696e6720636f6f6b6965732e3c2f7370616e3e3c62723e3c2f703e, '6Lf9jOQUAAAAABJKj_nQBNvji7wh4DdOZIPAdRKk', '6Lf9jOQUAAAAALO4C5pC7O_HHw0Z1BuYCU_FA606', 1, 0, 0, 1, 1, 1, 0, 1, 0, '0', 0, NULL, '2021-07-08 08:12:02', 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 1, 0, 1, 1, 1, 1, 0, 0, 0, 1, 0, 0, 1, 0, 1, 1, 1, 1, 0, 0, 0, 1, 0, 1, 0, 1, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, '984-8540406', '1619241714761747856.jpg', 'https://www.youtube.com/watch?v=BAVfUvByStY&t=2s');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `language_id`, `status`, `image`, `subtitle`, `title`, `text`, `button_text`, `button_link`, `serial_number`, `created_at`, `updated_at`) VALUES
(1, '1', '1', '16127970561434260582.jpg', 'IT Business Consulting', 'Best IT Soluations Provider Agency', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremda tium totam rem aperiam eaque ipsa quae ab illo inventore veritatis', 'Our Services', '#', 0, '2021-02-08 08:27:37', '2021-02-21 04:43:30'),
(3, '1', '1', '1612795438968642221.jpg', 'IT Business Consulting', 'Best IT Soluations Provider Agency', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremda tium totam rem aperiam eaque ipsa quae ab illo inventore veritatis', 'Our Services', '#', 1, '2021-02-08 08:27:37', '2021-02-21 04:42:52');

-- --------------------------------------------------------

--
-- Table structure for table `socials`
--

CREATE TABLE `socials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(4) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dagenation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `serial_number` int(11) NOT NULL DEFAULT '0',
  `icon1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zipcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `email_verify_token` text COLLATE utf8mb4_unicode_ci,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `why_selects`
--

CREATE TABLE `why_selects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `why_selects`
--

INSERT INTO `why_selects` (`id`, `language_id`, `status`, `title`, `icon`, `text`, `serial_number`, `created_at`, `updated_at`) VALUES
(1, '1', 1, 'Active Outdoor Activities', 'fa fa-bicycle', 'We focus on outdoor learning and Activities.', 0, '2021-07-08 08:51:11', '2021-07-08 08:54:17'),
(2, '1', 1, 'Better Social Interactions', 'fa fa-users', 'We offer Improvements of Students Ability', 1, '2021-07-08 08:53:35', '2021-07-08 08:54:31'),
(3, '1', 1, 'Gurukul Qualified Teachers', 'fa fa-graduation-cap', 'We are proud of our qualifed teachers.', 2, '2021-07-08 08:55:41', '2021-07-08 08:55:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `archives`
--
ALTER TABLE `archives`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `backups`
--
ALTER TABLE `backups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bcategories`
--
ALTER TABLE `bcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `counters`
--
ALTER TABLE `counters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `daynamicpages`
--
ALTER TABLE `daynamicpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emailsettings`
--
ALTER TABLE `emailsettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flinks`
--
ALTER TABLE `flinks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `histories`
--
ALTER TABLE `histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `portfolios`
--
ALTER TABLE `portfolios`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `portfolio_images`
--
ALTER TABLE `portfolio_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quotes`
--
ALTER TABLE `quotes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sectiontitles`
--
ALTER TABLE `sectiontitles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `socials`
--
ALTER TABLE `socials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- Indexes for table `why_selects`
--
ALTER TABLE `why_selects`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `archives`
--
ALTER TABLE `archives`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `backups`
--
ALTER TABLE `backups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bcategories`
--
ALTER TABLE `bcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `counters`
--
ALTER TABLE `counters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `daynamicpages`
--
ALTER TABLE `daynamicpages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `emailsettings`
--
ALTER TABLE `emailsettings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `features`
--
ALTER TABLE `features`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `flinks`
--
ALTER TABLE `flinks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `histories`
--
ALTER TABLE `histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `portfolios`
--
ALTER TABLE `portfolios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `portfolio_images`
--
ALTER TABLE `portfolio_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quotes`
--
ALTER TABLE `quotes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sectiontitles`
--
ALTER TABLE `sectiontitles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `socials`
--
ALTER TABLE `socials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `why_selects`
--
ALTER TABLE `why_selects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
