-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 29, 2022 at 09:55 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.3.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `services`
--

-- --------------------------------------------------------

--
-- Table structure for table `attachments_orders`
--

CREATE TABLE `attachments_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `file_name` varchar(999) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_number` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Created_by` varchar(999) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `title`, `content`, `created_at`, `updated_at`) VALUES
(1, 'gamal', 'gamal@gmail.com', 'شكاوى العملاء', 'مافي شي ولاشي بس عم نجرب.', '2022-07-08 08:45:09', '2022-07-08 08:45:09'),
(2, 'lia', 'lia@gmail.com', 'رسالة تدقيق', 'يرجى قبول خدمتي المقدمة من ثلاثة أيام,وشكرا لجهودكم.', '2022-07-09 10:23:39', '2022-07-09 10:23:39'),
(3, 'provider', 'provider@gmail.com', 'رسالة تدقيق', 'يرجى تدقيق طلب تقديم الخدمة الوارد إليكم.', '2022-07-11 06:26:08', '2022-07-11 06:26:08');

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
-- Table structure for table `friends`
--

CREATE TABLE `friends` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user` bigint(20) UNSIGNED NOT NULL,
  `friend` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `friends`
--

INSERT INTO `friends` (`id`, `user`, `friend`, `created_at`, `updated_at`) VALUES
(1, 1, 3, '2022-07-08 06:58:57', '2022-07-08 06:58:57');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `thread` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `sender_id` bigint(20) UNSIGNED NOT NULL,
  `receiver_id` bigint(20) UNSIGNED NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_read` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `thread`, `sender_id`, `receiver_id`, `message`, `is_read`, `created_at`, `updated_at`) VALUES
(1, '5-1', 5, 1, 'مرحبا معاذ', '1', '2022-07-08 07:19:31', '2022-07-08 07:23:54'),
(2, '1-5', 1, 5, 'أهلا أحمد', '1', '2022-07-08 07:20:44', '2022-07-08 07:23:54'),
(3, '1-5', 1, 5, '0', '1', '2022-07-08 07:20:48', '2022-07-08 07:23:54'),
(4, '1-5', 1, 5, 'كيفك', '1', '2022-07-08 07:21:00', '2022-07-08 07:23:54'),
(5, '5-1', 5, 1, 'تمام ', '1', '2022-07-08 07:21:07', '2022-07-08 07:23:54'),
(6, '5-1', 5, 1, 'أنا عندي عندي ملاحظات', '1', '2022-07-08 07:21:18', '2022-07-08 07:23:54'),
(7, '1-5', 1, 5, 'تفضل ', '1', '2022-07-08 07:21:25', '2022-07-08 07:23:54'),
(8, '5-1', 5, 1, 'بالبداية بدي أتشركن على الموقع الجميل', '1', '2022-07-08 07:21:52', '2022-07-08 07:23:54'),
(9, '5-1', 5, 1, 'وثانيا في سهولة بالتعامل مع الزبائن', '1', '2022-07-08 07:22:16', '2022-07-08 07:23:54'),
(10, '1-5', 1, 5, 'شكرا على ملاحظاتك', '1', '2022-07-08 07:22:36', '2022-07-08 07:23:54'),
(11, '1-5', 1, 5, 'بالتوفيق للجميع ', '1', '2022-07-08 07:22:43', '2022-07-08 07:23:54'),
(12, '1-5', 1, 5, 'هل يوجد ملاحظات أخرى؟', '1', '2022-07-08 07:23:18', '2022-07-08 07:23:54'),
(13, '5-1', 5, 1, 'لا أخي كلو تمام وشكرا للرد منكم.', '1', '2022-07-08 07:23:44', '2022-07-08 07:23:54'),
(14, '1-3', 1, 3, 'مرحبا', '1', '2022-07-08 07:59:25', '2022-07-08 07:59:38'),
(15, '1-3', 1, 3, 'أهلا', '0', '2022-07-08 07:59:45', '2022-07-08 07:59:45'),
(16, '4-3', 4, 3, 'مرحبا', '1', '2022-07-08 08:49:51', '2022-07-08 08:49:53'),
(17, '3-4', 3, 4, 'أهلا', '0', '2022-07-08 08:49:57', '2022-07-08 08:49:57'),
(18, '3-4', 3, 4, 'كيفك', '0', '2022-07-08 08:50:00', '2022-07-08 08:50:00'),
(19, '5-10', 5, 10, 'مرحبا', '1', '2022-07-09 06:55:41', '2022-07-09 06:57:18'),
(20, '5-10', 5, 10, 'كيفك', '1', '2022-07-09 06:55:50', '2022-07-09 06:57:18'),
(21, '10-5', 10, 5, 'اهلا احمد', '0', '2022-07-09 06:57:29', '2022-07-09 06:57:29'),
(22, '10-5', 10, 5, 'انا كرم ', '0', '2022-07-09 06:57:44', '2022-07-09 06:57:44');

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
(4, '2022_04_14_144259_create_sections_table', 1),
(5, '2022_04_15_183248_create_services_table', 1),
(6, '2022_04_19_123124_create_orders_table', 1),
(7, '2022_04_21_104836_create_attachments_orders_table', 1),
(8, '2022_04_23_152719_create_permission_tables', 1),
(9, '2022_05_05_113212_create_notifications_table', 1),
(10, '2022_05_10_141624_create_messages_table', 1),
(11, '2022_05_10_141645_create_friends_table', 1),
(12, '2022_05_22_163731_create_contacts_table', 1),
(13, '2022_05_26_185653_create_ratings_table', 1),
(14, '2022_05_28_102523_create_reviews_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\User', 1),
(2, 'App\\User', 3),
(2, 'App\\User', 5),
(2, 'App\\User', 7),
(2, 'App\\User', 8),
(2, 'App\\User', 11),
(2, 'App\\User', 12),
(2, 'App\\User', 13),
(2, 'App\\User', 19),
(3, 'App\\User', 2),
(3, 'App\\User', 4),
(3, 'App\\User', 6),
(3, 'App\\User', 9),
(3, 'App\\User', 10),
(3, 'App\\User', 14),
(3, 'App\\User', 15),
(3, 'App\\User', 16),
(3, 'App\\User', 17),
(3, 'App\\User', 18),
(3, 'App\\User', 20);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('00260c19-a711-48c1-824a-91c07d178024', 'App\\Notifications\\Add_service', 'App\\User', 17, '{\"id\":13,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"amir\"}', NULL, '2022-07-09 08:02:23', '2022-07-09 08:02:23'),
('0102ec67-e910-4c6a-aa47-8f7b8507139a', 'App\\Notifications\\Add_service', 'App\\User', 15, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"saher\"}', NULL, '2022-07-09 08:21:20', '2022-07-09 08:21:20'),
('027dc6d3-fb3e-41b0-9295-a0e83cdf289d', 'App\\Notifications\\Add_service', 'App\\User', 18, '{\"id\":22,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"yara\"}', NULL, '2022-07-09 08:32:09', '2022-07-09 08:32:09'),
('02fbb51f-b327-4743-9586-53d452b2a1f3', 'App\\Notifications\\Add_service', 'App\\User', 4, '{\"id\":22,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"yara\"}', NULL, '2022-07-09 08:32:06', '2022-07-09 08:32:06'),
('031ddfb8-c920-4bf2-b496-7fcce98d2e0a', 'App\\Notifications\\Add_service', 'App\\User', 18, '{\"id\":9,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"ahmad\"}', NULL, '2022-07-09 07:56:13', '2022-07-09 07:56:13'),
('031f0e2a-75be-4b4e-a9bf-a67f93c34cf3', 'App\\Notifications\\Add_service', 'App\\User', 11, '{\"id\":5,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-08 08:21:35', '2022-07-08 08:21:35'),
('0344b6e6-1504-4b6f-ae86-abf65c8555de', 'App\\Notifications\\Add_service', 'App\\User', 13, '{\"id\":17,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"lia\"}', NULL, '2022-07-09 08:25:08', '2022-07-09 08:25:08'),
('03ec7f01-1598-4a03-9a2e-ff11709a99b9', 'App\\Notifications\\Add_service', 'App\\User', 9, '{\"id\":22,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"yara\"}', NULL, '2022-07-09 08:32:06', '2022-07-09 08:32:06'),
('041928ad-8551-421c-9f69-21279c86088c', 'App\\Notifications\\Add_service', 'App\\User', 6, '{\"id\":15,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"saher\"}', NULL, '2022-07-09 08:22:39', '2022-07-09 08:22:39'),
('0465d46c-2666-4fa6-a963-2f495f4480b8', 'App\\Notifications\\Add_service', 'App\\User', 13, '{\"id\":32,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-09 08:57:29', '2022-07-09 08:57:29'),
('052a8530-addd-4366-948b-345b09b34589', 'App\\Notifications\\Add_message', 'App\\User', 15, '{\"id\":2,\"title\":\" \\u064a\\u0648\\u062c\\u062f \\u0631\\u0633\\u0627\\u0644\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0644\\u062f\\u064a\\u0643 \\u0645\\u0646 \\u0642\\u0628\\u0644 :\",\"user\":\"lia\"}', NULL, '2022-07-09 10:23:41', '2022-07-09 10:23:41'),
('05c7877c-2df2-45c0-bf40-52d43c693376', 'App\\Notifications\\Add_service', 'App\\User', 11, '{\"id\":4,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-08 08:20:19', '2022-07-08 08:20:19'),
('06267508-0f7d-4eee-800a-5059cc7231d1', 'App\\Notifications\\Add_service', 'App\\User', 12, '{\"id\":17,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"lia\"}', NULL, '2022-07-09 08:25:08', '2022-07-09 08:25:08'),
('06716549-351b-4e3d-8cf7-cfd5ca736144', 'App\\Notifications\\Add_service', 'App\\User', 13, '{\"id\":2,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"ahmad\"}', NULL, '2022-07-08 07:31:18', '2022-07-08 07:31:18'),
('07286360-7c79-4deb-b554-a949ba121321', 'App\\Notifications\\Add_service', 'App\\User', 11, '{\"id\":34,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-09 09:02:22', '2022-07-09 09:02:22'),
('07dacc27-aab2-477c-b835-827ac340d57e', 'App\\Notifications\\Add_service', 'App\\User', 1, '{\"id\":18,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"lia\"}', '2022-07-09 08:50:47', '2022-07-09 08:26:46', '2022-07-09 08:50:47'),
('07e6510b-50fa-47f5-bf32-01480137babf', 'App\\Notifications\\Add_message', 'App\\User', 12, '{\"id\":1,\"title\":\" \\u064a\\u0648\\u062c\\u062f \\u0631\\u0633\\u0627\\u0644\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0644\\u062f\\u064a\\u0643 \\u0645\\u0646 \\u0642\\u0628\\u0644 :\",\"user\":\"gamal\"}', NULL, '2022-07-08 08:45:09', '2022-07-08 08:45:09'),
('07ee4a4d-7340-42e5-b18d-3560163ab644', 'App\\Notifications\\Add_service', 'App\\User', 1, '{\"id\":1,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', '2022-07-08 07:50:43', '2022-07-08 07:29:21', '2022-07-08 07:50:43'),
('0851a46a-bfd9-4ece-90da-a655c6100179', 'App\\Notifications\\Add_service', 'App\\User', 11, '{\"id\":11,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"amir\"}', NULL, '2022-07-09 07:58:59', '2022-07-09 07:58:59'),
('089a9e94-ec8e-4e11-b215-1fac8289e7b0', 'App\\Notifications\\Add_service', 'App\\User', 1, '{\"id\":11,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"amir\"}', '2022-07-09 08:50:47', '2022-07-09 07:58:58', '2022-07-09 08:50:47'),
('09062bd7-d4da-4dfd-aca4-6b31b4a2f477', 'App\\Notifications\\Add_service', 'App\\User', 4, '{\"id\":19,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"lia\"}', NULL, '2022-07-09 08:27:34', '2022-07-09 08:27:34'),
('0942e952-0d2c-4b0d-ac63-0c4796a22663', 'App\\Notifications\\Add_service', 'App\\User', 11, '{\"id\":29,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"abd\"}', NULL, '2022-07-09 08:42:42', '2022-07-09 08:42:42'),
('098d4aee-98b2-4b56-8db3-67ac6e317484', 'App\\Notifications\\Add_service', 'App\\User', 20, '{\"id\":2,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"ahmad\"}', NULL, '2022-07-08 07:31:20', '2022-07-08 07:31:20'),
('0a0e1195-8eaf-480c-8eca-95daa9119773', 'App\\Notifications\\Add_service', 'App\\User', 4, '{\"id\":34,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-09 09:02:22', '2022-07-09 09:02:22'),
('0a404814-e226-4131-8ec7-603c3871c681', 'App\\Notifications\\Add_service', 'App\\User', 18, '{\"id\":2,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"ahmad\"}', NULL, '2022-07-08 07:31:19', '2022-07-08 07:31:19'),
('0a678be9-3a01-4c77-a874-c9771781cc23', 'App\\Notifications\\Add_service', 'App\\User', 1, '{\"id\":6,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', '2022-07-09 07:33:11', '2022-07-08 08:22:32', '2022-07-09 07:33:11'),
('0ab16a6a-4251-4806-9bf3-c12026166446', 'App\\Notifications\\Add_service', 'App\\User', 6, '{\"id\":1,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-08 07:29:21', '2022-07-08 07:29:21'),
('0abef6ce-7e2c-4441-8391-63f25b697049', 'App\\Notifications\\Add_service', 'App\\User', 17, '{\"id\":5,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-08 08:21:37', '2022-07-08 08:21:37'),
('0b390723-916c-4b4d-95e3-2f5df2bf8b01', 'App\\Notifications\\Add_service', 'App\\User', 4, '{\"id\":32,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-09 08:57:29', '2022-07-09 08:57:29'),
('0c914435-84c7-4c1e-a51c-bd7a1a41105b', 'App\\Notifications\\Add_service', 'App\\User', 16, '{\"id\":32,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-09 08:57:29', '2022-07-09 08:57:29'),
('0cad0180-16f0-4660-8cd4-b28c382a8b26', 'App\\Notifications\\Add_service', 'App\\User', 1, '{\"id\":34,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-09 09:02:22', '2022-07-09 09:02:22'),
('0d36fc97-10b0-41ca-bacd-4be43c9c1d4c', 'App\\Notifications\\Add_service', 'App\\User', 18, '{\"id\":7,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-08 08:23:40', '2022-07-08 08:23:40'),
('0d55dfe1-d704-4116-8e89-48bd64593fd8', 'App\\Notifications\\Add_service', 'App\\User', 9, '{\"id\":23,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"heba\"}', NULL, '2022-07-09 08:34:50', '2022-07-09 08:34:50'),
('0d817c4c-ca76-40a6-8b8c-8de94ce02393', 'App\\Notifications\\Add_message', 'App\\User', 14, '{\"id\":2,\"title\":\" \\u064a\\u0648\\u062c\\u062f \\u0631\\u0633\\u0627\\u0644\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0644\\u062f\\u064a\\u0643 \\u0645\\u0646 \\u0642\\u0628\\u0644 :\",\"user\":\"lia\"}', NULL, '2022-07-09 10:23:41', '2022-07-09 10:23:41'),
('0dd952b4-182f-4aa4-b618-1ba7cabafb53', 'App\\Notifications\\Add_service', 'App\\User', 12, '{\"id\":4,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-08 08:20:19', '2022-07-08 08:20:19'),
('0e1ab718-2082-4393-84ef-4d00a9f831e1', 'App\\Notifications\\Add_service', 'App\\User', 5, '{\"id\":13,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"amir\"}', NULL, '2022-07-09 08:02:22', '2022-07-09 08:02:22'),
('0e6c06b6-156b-4562-81ca-8d64948233d9', 'App\\Notifications\\Add_service', 'App\\User', 17, '{\"id\":23,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"heba\"}', NULL, '2022-07-09 08:34:52', '2022-07-09 08:34:52'),
('0e6ff768-53fa-4d76-b78b-5379d72094ac', 'App\\Notifications\\Add_service', 'App\\User', 16, '{\"id\":13,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"amir\"}', NULL, '2022-07-09 08:02:23', '2022-07-09 08:02:23'),
('0f5c3ae2-3c3e-4eb6-8ee2-34db2cb63f5f', 'App\\Notifications\\Add_service', 'App\\User', 16, '{\"id\":4,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-08 08:20:20', '2022-07-08 08:20:20'),
('0f934a84-5604-4b79-a23b-d9b6e4a0755a', 'App\\Notifications\\Add_service', 'App\\User', 7, '{\"id\":3,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"yara\"}', NULL, '2022-07-08 07:36:46', '2022-07-08 07:36:46'),
('101ba9e6-d5c8-4f85-8360-4e1962c28751', 'App\\Notifications\\Add_service', 'App\\User', 19, '{\"id\":18,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"lia\"}', NULL, '2022-07-09 08:26:47', '2022-07-09 08:26:47'),
('105c6563-616b-4115-a2b2-fecca6a1bd8e', 'App\\Notifications\\Add_message', 'App\\User', 16, '{\"id\":2,\"title\":\" \\u064a\\u0648\\u062c\\u062f \\u0631\\u0633\\u0627\\u0644\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0644\\u062f\\u064a\\u0643 \\u0645\\u0646 \\u0642\\u0628\\u0644 :\",\"user\":\"lia\"}', NULL, '2022-07-09 10:23:41', '2022-07-09 10:23:41'),
('108c49a1-517b-4fe0-b3de-d8199388d68e', 'App\\Notifications\\Add_service', 'App\\User', 1, '{\"id\":22,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"yara\"}', '2022-07-09 08:50:46', '2022-07-09 08:32:06', '2022-07-09 08:50:46'),
('1092c593-dcb4-415d-bd63-a2b740a73043', 'App\\Notifications\\Add_service', 'App\\User', 12, '{\"id\":5,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-08 08:21:35', '2022-07-08 08:21:35'),
('10be6459-d1a8-4b1a-810d-ad6f92d8e09b', 'App\\Notifications\\Add_service', 'App\\User', 5, '{\"id\":12,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"amir\"}', NULL, '2022-07-09 08:01:10', '2022-07-09 08:01:10'),
('11472f87-72ef-4b72-ae2a-a4e85d5e3621', 'App\\Notifications\\Add_service', 'App\\User', 9, '{\"id\":8,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-08 08:28:18', '2022-07-08 08:28:18'),
('1168be39-934c-4f05-8927-e0a3b92bbf6e', 'App\\Notifications\\Add_service', 'App\\User', 16, '{\"id\":9,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"ahmad\"}', NULL, '2022-07-09 07:56:13', '2022-07-09 07:56:13'),
('12300987-3eae-49b8-a611-9e4f28c04de0', 'App\\Notifications\\Add_service', 'App\\User', 8, '{\"id\":8,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-08 08:28:18', '2022-07-08 08:28:18'),
('12f862cb-0702-4bfd-9c0f-8b3a3407092a', 'App\\Notifications\\Add_service', 'App\\User', 3, '{\"id\":3,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"yara\"}', NULL, '2022-07-08 07:36:46', '2022-07-08 07:36:46'),
('133eccbf-e3b8-4ed1-b35a-ddab30ded634', 'App\\Notifications\\Add_message', 'App\\User', 8, '{\"id\":2,\"title\":\" \\u064a\\u0648\\u062c\\u062f \\u0631\\u0633\\u0627\\u0644\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0644\\u062f\\u064a\\u0643 \\u0645\\u0646 \\u0642\\u0628\\u0644 :\",\"user\":\"lia\"}', NULL, '2022-07-09 10:23:40', '2022-07-09 10:23:40'),
('13a32a69-a44f-4381-8932-b32075823513', 'App\\Notifications\\Add_service', 'App\\User', 6, '{\"id\":3,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"yara\"}', NULL, '2022-07-08 07:36:46', '2022-07-08 07:36:46'),
('13b5414f-44c8-4d5f-9f33-46245a8bcd64', 'App\\Notifications\\Add_message', 'App\\User', 20, '{\"id\":2,\"title\":\" \\u064a\\u0648\\u062c\\u062f \\u0631\\u0633\\u0627\\u0644\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0644\\u062f\\u064a\\u0643 \\u0645\\u0646 \\u0642\\u0628\\u0644 :\",\"user\":\"lia\"}', NULL, '2022-07-09 10:23:41', '2022-07-09 10:23:41'),
('14b8f2b6-b9d1-4470-ba02-4eca21251270', 'App\\Notifications\\Add_service', 'App\\User', 12, '{\"id\":30,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"abd\"}', NULL, '2022-07-09 08:43:53', '2022-07-09 08:43:53'),
('1546cb46-adae-4368-8a3a-1c13eb92f631', 'App\\Notifications\\Add_service', 'App\\User', 4, '{\"id\":4,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-08 08:20:19', '2022-07-08 08:20:19'),
('1619d3a4-9261-4b16-9a85-a42a6f672b76', 'App\\Notifications\\Add_service', 'App\\User', 12, '{\"id\":33,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-09 08:59:44', '2022-07-09 08:59:44'),
('16471a28-2bf7-4cac-b3b2-c733aadd9321', 'App\\Notifications\\Add_message', 'App\\User', 19, '{\"id\":3,\"title\":\" \\u064a\\u0648\\u062c\\u062f \\u0631\\u0633\\u0627\\u0644\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0644\\u062f\\u064a\\u0643 \\u0645\\u0646 \\u0642\\u0628\\u0644 :\",\"user\":\"provider\"}', NULL, '2022-07-11 06:26:12', '2022-07-11 06:26:12'),
('1700d964-f3be-4d87-804f-210287704c24', 'App\\Notifications\\Add_service', 'App\\User', 18, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"saher\"}', NULL, '2022-07-09 08:21:21', '2022-07-09 08:21:21'),
('17398e31-2f46-4fae-a31f-4ec0efc613ea', 'App\\Notifications\\Add_service', 'App\\User', 19, '{\"id\":29,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"abd\"}', NULL, '2022-07-09 08:42:43', '2022-07-09 08:42:43'),
('1877d06f-6237-40a3-8024-b028b7fb0d06', 'App\\Notifications\\Add_service', 'App\\User', 18, '{\"id\":11,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"amir\"}', NULL, '2022-07-09 07:58:59', '2022-07-09 07:58:59'),
('187e1cba-b273-4bef-87b9-a629b02e6670', 'App\\Notifications\\Add_service', 'App\\User', 11, '{\"id\":30,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"abd\"}', NULL, '2022-07-09 08:43:53', '2022-07-09 08:43:53'),
('18b15c80-1e8c-4b66-b31c-6b5e3bce6bc8', 'App\\Notifications\\Add_service', 'App\\User', 4, '{\"id\":7,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-08 08:23:39', '2022-07-08 08:23:39'),
('18c8df8e-c422-4fe0-8cdc-a02bbdc62627', 'App\\Notifications\\Add_service', 'App\\User', 7, '{\"id\":28,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"abd\"}', NULL, '2022-07-09 08:41:21', '2022-07-09 08:41:21'),
('19521b21-1174-442c-a5e3-a8ba3b5956bd', 'App\\Notifications\\Add_service', 'App\\User', 20, '{\"id\":1,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-08 07:29:23', '2022-07-08 07:29:23'),
('19e71db2-2b58-42a4-8241-72632fbdfcbe', 'App\\Notifications\\Add_service', 'App\\User', 5, '{\"id\":21,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"yara\"}', NULL, '2022-07-09 08:30:47', '2022-07-09 08:30:47'),
('19f40700-cae7-47ad-abcc-e2e75c2b7ea5', 'App\\Notifications\\Add_service', 'App\\User', 17, '{\"id\":28,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"abd\"}', NULL, '2022-07-09 08:41:21', '2022-07-09 08:41:21'),
('1a3b1cb1-a95a-4756-a605-c89e5f73b3d1', 'App\\Notifications\\Add_service', 'App\\User', 18, '{\"id\":28,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"abd\"}', NULL, '2022-07-09 08:41:21', '2022-07-09 08:41:21'),
('1a6e8ea9-e926-486e-9d62-97ea9d5a52d8', 'App\\Notifications\\Add_service', 'App\\User', 5, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"saher\"}', NULL, '2022-07-09 08:21:19', '2022-07-09 08:21:19'),
('1ab23857-be60-4440-b8a1-9b8c4806979c', 'App\\Notifications\\Add_service', 'App\\User', 20, '{\"id\":19,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"lia\"}', NULL, '2022-07-09 08:27:34', '2022-07-09 08:27:34'),
('1b0103b1-ebd1-4ff6-a422-91d2bc4ebb3c', 'App\\Notifications\\Add_message', 'App\\User', 17, '{\"id\":3,\"title\":\" \\u064a\\u0648\\u062c\\u062f \\u0631\\u0633\\u0627\\u0644\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0644\\u062f\\u064a\\u0643 \\u0645\\u0646 \\u0642\\u0628\\u0644 :\",\"user\":\"provider\"}', NULL, '2022-07-11 06:26:12', '2022-07-11 06:26:12'),
('1b2ed54b-b90f-49b1-8df4-675ed4fae91d', 'App\\Notifications\\Add_service', 'App\\User', 10, '{\"id\":22,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"yara\"}', NULL, '2022-07-09 08:32:06', '2022-07-09 08:32:06'),
('1c1e669b-5e29-4b87-8faf-102d12c844d1', 'App\\Notifications\\Add_service', 'App\\User', 5, '{\"id\":22,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"yara\"}', NULL, '2022-07-09 08:32:06', '2022-07-09 08:32:06'),
('1cc47788-ef72-4df2-bfec-541f39610b82', 'App\\Notifications\\Add_service', 'App\\User', 9, '{\"id\":32,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-09 08:57:29', '2022-07-09 08:57:29'),
('1cf9726e-4d39-42a2-a48c-3b3a25d5719f', 'App\\Notifications\\Add_service', 'App\\User', 7, '{\"id\":12,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"amir\"}', NULL, '2022-07-09 08:01:10', '2022-07-09 08:01:10'),
('1d7c8d96-45ab-46f6-a971-2cb407c51c63', 'App\\Notifications\\Add_service', 'App\\User', 3, '{\"id\":32,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-09 08:57:29', '2022-07-09 08:57:29'),
('1d811643-d68c-42b7-8590-5cd7592bd91e', 'App\\Notifications\\Add_message', 'App\\User', 9, '{\"id\":3,\"title\":\" \\u064a\\u0648\\u062c\\u062f \\u0631\\u0633\\u0627\\u0644\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0644\\u062f\\u064a\\u0643 \\u0645\\u0646 \\u0642\\u0628\\u0644 :\",\"user\":\"provider\"}', NULL, '2022-07-11 06:26:11', '2022-07-11 06:26:11'),
('1db5e0f5-2bcd-4de9-8443-ca887e8c3802', 'App\\Notifications\\Add_message', 'App\\User', 13, '{\"id\":1,\"title\":\" \\u064a\\u0648\\u062c\\u062f \\u0631\\u0633\\u0627\\u0644\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0644\\u062f\\u064a\\u0643 \\u0645\\u0646 \\u0642\\u0628\\u0644 :\",\"user\":\"gamal\"}', NULL, '2022-07-08 08:45:09', '2022-07-08 08:45:09'),
('1e9b3063-fba0-4df9-9687-525ecd3a787d', 'App\\Notifications\\Add_message', 'App\\User', 20, '{\"id\":1,\"title\":\" \\u064a\\u0648\\u062c\\u062f \\u0631\\u0633\\u0627\\u0644\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0644\\u062f\\u064a\\u0643 \\u0645\\u0646 \\u0642\\u0628\\u0644 :\",\"user\":\"gamal\"}', NULL, '2022-07-08 08:45:09', '2022-07-08 08:45:09'),
('1eda9cf8-5b27-4f9f-9c39-1e82d174b411', 'App\\Notifications\\Add_service', 'App\\User', 1, '{\"id\":21,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"yara\"}', '2022-07-09 08:50:46', '2022-07-09 08:30:47', '2022-07-09 08:50:46'),
('1f215c9f-cf05-44ec-bf11-346df3dc2a04', 'App\\Notifications\\Add_service', 'App\\User', 9, '{\"id\":20,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"yara\"}', NULL, '2022-07-09 08:29:03', '2022-07-09 08:29:03'),
('1f5a2b66-7159-4aaa-a8af-434be7c26fdb', 'App\\Notifications\\Add_service', 'App\\User', 5, '{\"id\":15,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"saher\"}', NULL, '2022-07-09 08:22:39', '2022-07-09 08:22:39'),
('1f706322-c995-4d3c-9d14-7e3e87a2d982', 'App\\Notifications\\Add_service', 'App\\User', 11, '{\"id\":9,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"ahmad\"}', NULL, '2022-07-09 07:56:13', '2022-07-09 07:56:13'),
('1f9c797c-61b4-4077-ba1e-2293a061d326', 'App\\Notifications\\Add_service', 'App\\User', 1, '{\"id\":28,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"abd\"}', '2022-07-09 08:50:44', '2022-07-09 08:41:21', '2022-07-09 08:50:44'),
('1fa88335-98e9-4c23-9985-4143b4f36f36', 'App\\Notifications\\Add_service', 'App\\User', 17, '{\"id\":9,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"ahmad\"}', NULL, '2022-07-09 07:56:13', '2022-07-09 07:56:13'),
('1fb2d809-8b6c-4dc2-ad0b-b9a68f80bb47', 'App\\Notifications\\Add_service', 'App\\User', 19, '{\"id\":9,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"ahmad\"}', NULL, '2022-07-09 07:56:13', '2022-07-09 07:56:13'),
('2018d76a-f0e2-43d6-9e37-a561e0ec5ac7', 'App\\Notifications\\Add_service', 'App\\User', 8, '{\"id\":29,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"abd\"}', NULL, '2022-07-09 08:42:42', '2022-07-09 08:42:42'),
('20d38223-4f20-4823-8981-540f77f65dd5', 'App\\Notifications\\Add_service', 'App\\User', 14, '{\"id\":5,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-08 08:21:36', '2022-07-08 08:21:36'),
('20e3dc76-e891-42f9-8718-bf1616a4a50d', 'App\\Notifications\\Add_service', 'App\\User', 7, '{\"id\":23,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"heba\"}', NULL, '2022-07-09 08:34:50', '2022-07-09 08:34:50'),
('213448b4-e6d8-4c54-aed1-ab923ae391dc', 'App\\Notifications\\Add_service', 'App\\User', 9, '{\"id\":7,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-08 08:23:39', '2022-07-08 08:23:39'),
('219b65bd-986f-4b01-8575-99b9333fe0a9', 'App\\Notifications\\Add_service', 'App\\User', 17, '{\"id\":32,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-09 08:57:29', '2022-07-09 08:57:29'),
('21b13d39-06fc-4c77-bc70-353bf5dbc5e6', 'App\\Notifications\\Add_service', 'App\\User', 3, '{\"id\":7,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-08 08:23:38', '2022-07-08 08:23:38'),
('21f8884d-da60-4fb9-a4c7-5a50184852bd', 'App\\Notifications\\Add_service', 'App\\User', 13, '{\"id\":7,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-08 08:23:39', '2022-07-08 08:23:39'),
('2230b93a-d551-4e20-a42d-c9020923b9eb', 'App\\Notifications\\Add_service', 'App\\User', 5, '{\"id\":20,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"yara\"}', NULL, '2022-07-09 08:29:03', '2022-07-09 08:29:03'),
('22365f52-244d-4430-8771-4e0dddda8d9b', 'App\\Notifications\\Add_message', 'App\\User', 5, '{\"id\":2,\"title\":\" \\u064a\\u0648\\u062c\\u062f \\u0631\\u0633\\u0627\\u0644\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0644\\u062f\\u064a\\u0643 \\u0645\\u0646 \\u0642\\u0628\\u0644 :\",\"user\":\"lia\"}', NULL, '2022-07-09 10:23:40', '2022-07-09 10:23:40'),
('228b45b7-9e1b-4b41-bfe8-95b8493dc2f2', 'App\\Notifications\\Add_service', 'App\\User', 16, '{\"id\":27,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"heba\"}', NULL, '2022-07-09 08:39:18', '2022-07-09 08:39:18'),
('22a0a3dc-595d-4f0c-b919-ebcb99ee683a', 'App\\Notifications\\Add_service', 'App\\User', 19, '{\"id\":1,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-08 07:29:23', '2022-07-08 07:29:23'),
('22d1c732-6366-4223-8032-eab4d31e3246', 'App\\Notifications\\Add_service', 'App\\User', 12, '{\"id\":7,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-08 08:23:39', '2022-07-08 08:23:39'),
('2305c865-d54a-4162-9711-e9d8dbbd598c', 'App\\Notifications\\Add_service', 'App\\User', 12, '{\"id\":29,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"abd\"}', NULL, '2022-07-09 08:42:43', '2022-07-09 08:42:43'),
('237bad59-a90b-4459-97f2-6033ec095ca7', 'App\\Notifications\\Add_service', 'App\\User', 12, '{\"id\":27,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"heba\"}', NULL, '2022-07-09 08:39:18', '2022-07-09 08:39:18'),
('23d05d62-1959-4bce-b870-bdfe8f93bfe4', 'App\\Notifications\\Add_service', 'App\\User', 3, '{\"id\":12,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"amir\"}', NULL, '2022-07-09 08:01:10', '2022-07-09 08:01:10'),
('24c4ac57-673b-4416-9d63-7740994f65f7', 'App\\Notifications\\Add_message', 'App\\User', 4, '{\"id\":2,\"title\":\" \\u064a\\u0648\\u062c\\u062f \\u0631\\u0633\\u0627\\u0644\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0644\\u062f\\u064a\\u0643 \\u0645\\u0646 \\u0642\\u0628\\u0644 :\",\"user\":\"lia\"}', NULL, '2022-07-09 10:23:40', '2022-07-09 10:23:40'),
('25af1bf9-ac7d-4422-823f-547573f5c9c3', 'App\\Notifications\\Add_service', 'App\\User', 3, '{\"id\":34,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-09 09:02:22', '2022-07-09 09:02:22'),
('25ec672d-69ea-421e-b7d8-0263020563ca', 'App\\Notifications\\Add_service', 'App\\User', 6, '{\"id\":26,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"heba\"}', NULL, '2022-07-09 08:37:53', '2022-07-09 08:37:53'),
('260e843f-6320-40ed-833d-f41b780fe50a', 'App\\Notifications\\Add_service', 'App\\User', 4, '{\"id\":33,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-09 08:59:43', '2022-07-09 08:59:43'),
('26d8b11b-411f-4f97-95dc-729bce28627f', 'App\\Notifications\\Add_service', 'App\\User', 4, '{\"id\":20,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"yara\"}', NULL, '2022-07-09 08:29:02', '2022-07-09 08:29:02'),
('26e6a97d-b0b9-470a-b84b-8fd951cbfcd7', 'App\\Notifications\\Add_service', 'App\\User', 15, '{\"id\":11,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"amir\"}', NULL, '2022-07-09 07:58:59', '2022-07-09 07:58:59'),
('26eea22e-24cd-46b6-be6e-d9c67c7fe48a', 'App\\Notifications\\Add_service', 'App\\User', 8, '{\"id\":34,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-09 09:02:22', '2022-07-09 09:02:22'),
('27071494-ceab-4cc0-b884-553d543a3a36', 'App\\Notifications\\Add_service', 'App\\User', 1, '{\"id\":16,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"saher\"}', '2022-07-09 08:50:47', '2022-07-09 08:23:24', '2022-07-09 08:50:47'),
('279b8e62-f93b-48f0-8a05-253b53a324d8', 'App\\Notifications\\Add_service', 'App\\User', 14, '{\"id\":32,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-09 08:57:29', '2022-07-09 08:57:29'),
('2925c90c-d898-404e-bf25-a6f969445176', 'App\\Notifications\\Add_service', 'App\\User', 18, '{\"id\":6,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-08 08:22:33', '2022-07-08 08:22:33'),
('293b4c44-afc7-4708-a1a5-b7501315e642', 'App\\Notifications\\Add_service', 'App\\User', 6, '{\"id\":22,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"yara\"}', NULL, '2022-07-09 08:32:06', '2022-07-09 08:32:06'),
('29fe5bdb-801b-4379-96c9-f678fe5009f0', 'App\\Notifications\\Add_service', 'App\\User', 13, '{\"id\":13,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"amir\"}', NULL, '2022-07-09 08:02:23', '2022-07-09 08:02:23'),
('2a4977c8-870f-4a8d-9e3f-21c7b8a055ef', 'App\\Notifications\\Add_service', 'App\\User', 12, '{\"id\":9,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"ahmad\"}', NULL, '2022-07-09 07:56:13', '2022-07-09 07:56:13'),
('2adad4d5-dbe8-4cab-832b-65e18d9d237a', 'App\\Notifications\\Add_service', 'App\\User', 11, '{\"id\":12,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"amir\"}', NULL, '2022-07-09 08:01:10', '2022-07-09 08:01:10'),
('2b09a451-363d-44a5-94f3-e416f5c83b24', 'App\\Notifications\\Add_service', 'App\\User', 16, '{\"id\":18,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"lia\"}', NULL, '2022-07-09 08:26:47', '2022-07-09 08:26:47'),
('2b78210c-b4eb-48d7-a0da-9f4e15daa770', 'App\\Notifications\\Add_service', 'App\\User', 12, '{\"id\":23,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"heba\"}', NULL, '2022-07-09 08:34:51', '2022-07-09 08:34:51'),
('2d808135-0e0a-4a54-8bc1-2cf9f8c11db1', 'App\\Notifications\\Add_service', 'App\\User', 3, '{\"id\":25,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"heba\"}', NULL, '2022-07-09 08:36:36', '2022-07-09 08:36:36'),
('2eb53f75-5a71-414c-93dd-4b4c04d9b902', 'App\\Notifications\\Add_service', 'App\\User', 8, '{\"id\":26,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"heba\"}', NULL, '2022-07-09 08:37:53', '2022-07-09 08:37:53'),
('2eb85d1c-60af-42ad-aa7e-2fea5c1e1d26', 'App\\Notifications\\Add_service', 'App\\User', 9, '{\"id\":2,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"ahmad\"}', NULL, '2022-07-08 07:31:18', '2022-07-08 07:31:18'),
('2ed7af02-a14d-4902-ba96-d0651aaf9b0e', 'App\\Notifications\\Add_service', 'App\\User', 11, '{\"id\":10,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"ahmad\"}', NULL, '2022-07-09 07:57:25', '2022-07-09 07:57:25'),
('2ed957c0-b36d-4995-ae66-b21c2e301825', 'App\\Notifications\\Add_service', 'App\\User', 18, '{\"id\":31,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"abd\"}', NULL, '2022-07-09 08:44:30', '2022-07-09 08:44:30'),
('2ee9019d-7f0c-4fba-a41f-f432da73db7b', 'App\\Notifications\\Add_service', 'App\\User', 12, '{\"id\":21,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"yara\"}', NULL, '2022-07-09 08:30:47', '2022-07-09 08:30:47'),
('2f38b62a-b76a-4705-8744-13f9b3fedd8b', 'App\\Notifications\\Add_service', 'App\\User', 7, '{\"id\":7,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-08 08:23:39', '2022-07-08 08:23:39'),
('2f43839f-6ff6-4488-a477-cd2a03a6da24', 'App\\Notifications\\Add_service', 'App\\User', 14, '{\"id\":21,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"yara\"}', NULL, '2022-07-09 08:30:47', '2022-07-09 08:30:47'),
('2fd97f8c-0dba-4493-b353-091d18a34bcb', 'App\\Notifications\\Add_service', 'App\\User', 7, '{\"id\":32,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-09 08:57:29', '2022-07-09 08:57:29'),
('300e71e2-ff90-4288-952d-7a478b6bd591', 'App\\Notifications\\Add_service', 'App\\User', 13, '{\"id\":10,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"ahmad\"}', NULL, '2022-07-09 07:57:25', '2022-07-09 07:57:25'),
('302557b9-89ce-4d23-9b5f-fcf4bc1b46b8', 'App\\Notifications\\Add_service', 'App\\User', 11, '{\"id\":25,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"heba\"}', NULL, '2022-07-09 08:36:37', '2022-07-09 08:36:37'),
('3053216b-85ca-4353-a0af-d26b44c3ae84', 'App\\Notifications\\Add_service', 'App\\User', 16, '{\"id\":17,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"lia\"}', NULL, '2022-07-09 08:25:09', '2022-07-09 08:25:09'),
('30663e7c-84e7-4417-bbd9-69225e21d11a', 'App\\Notifications\\Add_service', 'App\\User', 16, '{\"id\":8,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-08 08:28:18', '2022-07-08 08:28:18'),
('30d1d868-ede9-44f2-94ed-e2f20dd2bccd', 'App\\Notifications\\Add_service', 'App\\User', 13, '{\"id\":20,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"yara\"}', NULL, '2022-07-09 08:29:03', '2022-07-09 08:29:03'),
('3188b20b-f098-4676-b0de-598e56993d0d', 'App\\Notifications\\Add_service', 'App\\User', 12, '{\"id\":8,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-08 08:28:18', '2022-07-08 08:28:18'),
('32808991-df11-403e-b17e-ab1b25eb53ed', 'App\\Notifications\\Add_service', 'App\\User', 6, '{\"id\":13,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"amir\"}', NULL, '2022-07-09 08:02:22', '2022-07-09 08:02:22'),
('32fbaa34-59b2-4753-b283-2571ed67a9e6', 'App\\Notifications\\Add_service', 'App\\User', 20, '{\"id\":15,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"saher\"}', NULL, '2022-07-09 08:22:40', '2022-07-09 08:22:40'),
('33636654-ba4a-4540-93d5-904887d37812', 'App\\Notifications\\Add_service', 'App\\User', 5, '{\"id\":29,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"abd\"}', NULL, '2022-07-09 08:42:42', '2022-07-09 08:42:42'),
('33af1f93-4207-4dbe-b7c9-8cc9ff8c26c1', 'App\\Notifications\\Add_message', 'App\\User', 9, '{\"id\":1,\"title\":\" \\u064a\\u0648\\u062c\\u062f \\u0631\\u0633\\u0627\\u0644\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0644\\u062f\\u064a\\u0643 \\u0645\\u0646 \\u0642\\u0628\\u0644 :\",\"user\":\"gamal\"}', NULL, '2022-07-08 08:45:09', '2022-07-08 08:45:09'),
('33b0c4c6-d7e2-42da-9f61-127e246bf07e', 'App\\Notifications\\Add_service', 'App\\User', 8, '{\"id\":32,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-09 08:57:29', '2022-07-09 08:57:29'),
('33b53d25-ce08-45d1-9c2a-616262d53e8f', 'App\\Notifications\\Add_service', 'App\\User', 5, '{\"id\":27,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"heba\"}', NULL, '2022-07-09 08:39:18', '2022-07-09 08:39:18'),
('344c2e7d-c5ab-4206-95bb-d21ed155644c', 'App\\Notifications\\Add_service', 'App\\User', 16, '{\"id\":12,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"amir\"}', NULL, '2022-07-09 08:01:10', '2022-07-09 08:01:10'),
('3486a8b3-1382-49be-adf0-3a976994f906', 'App\\Notifications\\Add_service', 'App\\User', 11, '{\"id\":8,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-08 08:28:18', '2022-07-08 08:28:18'),
('351e57c6-19cc-4a87-b60c-8dd9a19430e0', 'App\\Notifications\\Add_service', 'App\\User', 18, '{\"id\":27,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"heba\"}', NULL, '2022-07-09 08:39:18', '2022-07-09 08:39:18'),
('3543b01e-2461-42b5-ba1d-9b8e672883fd', 'App\\Notifications\\Add_service', 'App\\User', 8, '{\"id\":22,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"yara\"}', NULL, '2022-07-09 08:32:06', '2022-07-09 08:32:06');
INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('354673e9-a83f-4749-96f3-f2aa8388b4e4', 'App\\Notifications\\Add_service', 'App\\User', 15, '{\"id\":20,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"yara\"}', NULL, '2022-07-09 08:29:03', '2022-07-09 08:29:03'),
('357cb936-532b-461e-99a6-7b66caa96016', 'App\\Notifications\\Add_service', 'App\\User', 18, '{\"id\":34,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-09 09:02:23', '2022-07-09 09:02:23'),
('358324f3-59f2-4f82-8481-1908491b341a', 'App\\Notifications\\Add_service', 'App\\User', 13, '{\"id\":4,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-08 08:20:19', '2022-07-08 08:20:19'),
('3614cf76-0518-47e4-a9a4-603a6019bdb7', 'App\\Notifications\\Add_message', 'App\\User', 20, '{\"id\":3,\"title\":\" \\u064a\\u0648\\u062c\\u062f \\u0631\\u0633\\u0627\\u0644\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0644\\u062f\\u064a\\u0643 \\u0645\\u0646 \\u0642\\u0628\\u0644 :\",\"user\":\"provider\"}', NULL, '2022-07-11 06:26:12', '2022-07-11 06:26:12'),
('36bf1b05-12a1-476d-94b0-679f1af94cb3', 'App\\Notifications\\Add_service', 'App\\User', 14, '{\"id\":28,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"abd\"}', NULL, '2022-07-09 08:41:21', '2022-07-09 08:41:21'),
('3746dc95-fe33-4bd6-b307-b9c44c05ab53', 'App\\Notifications\\Add_service', 'App\\User', 17, '{\"id\":6,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-08 08:22:33', '2022-07-08 08:22:33'),
('37513998-d6c8-439b-ac76-dfeb1699e2be', 'App\\Notifications\\Add_service', 'App\\User', 16, '{\"id\":33,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-09 08:59:45', '2022-07-09 08:59:45'),
('37bb339e-1dd4-4089-b0a0-a7e45a7b3f70', 'App\\Notifications\\Add_service', 'App\\User', 12, '{\"id\":3,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"yara\"}', NULL, '2022-07-08 07:36:46', '2022-07-08 07:36:46'),
('37f7fb29-3087-4987-b811-0cd8a0fbf5f9', 'App\\Notifications\\Add_service', 'App\\User', 20, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"saher\"}', NULL, '2022-07-09 08:21:21', '2022-07-09 08:21:21'),
('3802c7c1-d7bc-42b3-8e6c-55a301f4c68a', 'App\\Notifications\\Add_service', 'App\\User', 15, '{\"id\":2,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"ahmad\"}', NULL, '2022-07-08 07:31:18', '2022-07-08 07:31:18'),
('380efafb-5eff-418f-ad56-6bc153f11d4a', 'App\\Notifications\\Add_service', 'App\\User', 13, '{\"id\":5,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-08 08:21:36', '2022-07-08 08:21:36'),
('381e41fc-bab7-4610-954e-92f275be9bb1', 'App\\Notifications\\Add_service', 'App\\User', 4, '{\"id\":15,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"saher\"}', NULL, '2022-07-09 08:22:39', '2022-07-09 08:22:39'),
('3886a10c-5bdc-4936-bdfb-c96e6a27e210', 'App\\Notifications\\Add_service', 'App\\User', 14, '{\"id\":4,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-08 08:20:20', '2022-07-08 08:20:20'),
('3991e6d8-62e3-465a-b470-60a759e928b6', 'App\\Notifications\\Add_service', 'App\\User', 9, '{\"id\":21,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"yara\"}', NULL, '2022-07-09 08:30:47', '2022-07-09 08:30:47'),
('39cb0586-5fe4-4bbd-b298-7552b4db9d6d', 'App\\Notifications\\Add_service', 'App\\User', 10, '{\"id\":31,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"abd\"}', NULL, '2022-07-09 08:44:30', '2022-07-09 08:44:30'),
('3a55e792-330b-4476-b38b-71e2f50a4dff', 'App\\Notifications\\Add_service', 'App\\User', 4, '{\"id\":2,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"ahmad\"}', NULL, '2022-07-08 07:31:17', '2022-07-08 07:31:17'),
('3aff7309-2833-4615-9439-8b0638c7a41e', 'App\\Notifications\\Add_service', 'App\\User', 3, '{\"id\":21,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"yara\"}', NULL, '2022-07-09 08:30:47', '2022-07-09 08:30:47'),
('3b29b01b-a397-4da8-b8e3-7392732592c7', 'App\\Notifications\\Add_service', 'App\\User', 16, '{\"id\":21,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"yara\"}', NULL, '2022-07-09 08:30:48', '2022-07-09 08:30:48'),
('3b46c02b-5b84-4ba6-a5cd-13365c80fdbf', 'App\\Notifications\\Add_service', 'App\\User', 18, '{\"id\":32,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-09 08:57:29', '2022-07-09 08:57:29'),
('3b6625db-6573-4dd8-8170-6ce3f0afbc27', 'App\\Notifications\\Add_service', 'App\\User', 15, '{\"id\":32,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-09 08:57:29', '2022-07-09 08:57:29'),
('3c08c03e-2a96-4d4f-9492-ad793d3cb771', 'App\\Notifications\\Add_service', 'App\\User', 16, '{\"id\":16,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"saher\"}', NULL, '2022-07-09 08:23:24', '2022-07-09 08:23:24'),
('3c215fdc-a732-4285-acbf-de860e93ba01', 'App\\Notifications\\Add_service', 'App\\User', 18, '{\"id\":17,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"lia\"}', NULL, '2022-07-09 08:25:10', '2022-07-09 08:25:10'),
('3c48807a-d1b6-409d-83bf-a6bdbe10f5f4', 'App\\Notifications\\Add_service', 'App\\User', 12, '{\"id\":13,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"amir\"}', NULL, '2022-07-09 08:02:23', '2022-07-09 08:02:23'),
('3c5e2cea-91fa-4209-b4a2-63b456c139e0', 'App\\Notifications\\Add_service', 'App\\User', 1, '{\"id\":27,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"heba\"}', '2022-07-09 08:50:45', '2022-07-09 08:39:17', '2022-07-09 08:50:45'),
('3cd4387b-fd05-4692-ad36-539c0803b5e3', 'App\\Notifications\\Add_service', 'App\\User', 4, '{\"id\":12,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"amir\"}', NULL, '2022-07-09 08:01:10', '2022-07-09 08:01:10'),
('3d95a0f5-06bc-4136-83b0-9eb676bb7c23', 'App\\Notifications\\Add_service', 'App\\User', 7, '{\"id\":8,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-08 08:28:18', '2022-07-08 08:28:18'),
('3e91e1d7-ae0b-437e-9492-76b3a5ef0134', 'App\\Notifications\\Add_service', 'App\\User', 20, '{\"id\":21,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"yara\"}', NULL, '2022-07-09 08:30:48', '2022-07-09 08:30:48'),
('3eac50fe-65b6-4234-a3ad-506a07b45f4f', 'App\\Notifications\\Add_message', 'App\\User', 18, '{\"id\":2,\"title\":\" \\u064a\\u0648\\u062c\\u062f \\u0631\\u0633\\u0627\\u0644\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0644\\u062f\\u064a\\u0643 \\u0645\\u0646 \\u0642\\u0628\\u0644 :\",\"user\":\"lia\"}', NULL, '2022-07-09 10:23:41', '2022-07-09 10:23:41'),
('3eb2c9bc-b3f8-48d6-879a-a425dbc156c2', 'App\\Notifications\\Add_service', 'App\\User', 10, '{\"id\":8,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-08 08:28:18', '2022-07-08 08:28:18'),
('3f03b19d-c775-4a0b-8c72-89beea38af93', 'App\\Notifications\\Add_service', 'App\\User', 5, '{\"id\":1,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-08 07:29:21', '2022-07-08 07:29:21'),
('3f8668ac-d682-4e49-8785-4ef247b4aa6f', 'App\\Notifications\\Add_service', 'App\\User', 4, '{\"id\":5,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-08 08:21:33', '2022-07-08 08:21:33'),
('40514498-d169-4330-b773-446cec5ac209', 'App\\Notifications\\Add_service', 'App\\User', 14, '{\"id\":27,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"heba\"}', NULL, '2022-07-09 08:39:18', '2022-07-09 08:39:18'),
('40deca10-f44d-42da-a421-108398007f89', 'App\\Notifications\\Add_service', 'App\\User', 14, '{\"id\":15,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"saher\"}', NULL, '2022-07-09 08:22:39', '2022-07-09 08:22:39'),
('40fe9000-9d3c-4e7f-94bc-e89773b3a506', 'App\\Notifications\\Add_service', 'App\\User', 7, '{\"id\":18,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"lia\"}', NULL, '2022-07-09 08:26:47', '2022-07-09 08:26:47'),
('4151edd6-36ac-4bd5-9fa8-02f3e96e6a37', 'App\\Notifications\\Add_service', 'App\\User', 19, '{\"id\":3,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"yara\"}', NULL, '2022-07-08 07:36:47', '2022-07-08 07:36:47'),
('41e2d983-d250-42b5-a730-3cb6f5d6dbea', 'App\\Notifications\\Add_service', 'App\\User', 14, '{\"id\":3,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"yara\"}', NULL, '2022-07-08 07:36:46', '2022-07-08 07:36:46'),
('4209dacc-d330-44c8-ae2a-709e05ff3003', 'App\\Notifications\\Add_service', 'App\\User', 1, '{\"id\":5,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', '2022-07-09 07:33:11', '2022-07-08 08:21:33', '2022-07-09 07:33:11'),
('43585393-45d5-49ed-a1a9-5f14db284f56', 'App\\Notifications\\Add_service', 'App\\User', 6, '{\"id\":30,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"abd\"}', NULL, '2022-07-09 08:43:53', '2022-07-09 08:43:53'),
('438154e1-3a74-4e6f-965b-aa8fc2cd1b57', 'App\\Notifications\\Add_message', 'App\\User', 19, '{\"id\":2,\"title\":\" \\u064a\\u0648\\u062c\\u062f \\u0631\\u0633\\u0627\\u0644\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0644\\u062f\\u064a\\u0643 \\u0645\\u0646 \\u0642\\u0628\\u0644 :\",\"user\":\"lia\"}', NULL, '2022-07-09 10:23:41', '2022-07-09 10:23:41'),
('438f23ff-141f-49ee-bda1-008735e1ecdc', 'App\\Notifications\\Add_message', 'App\\User', 4, '{\"id\":1,\"title\":\" \\u064a\\u0648\\u062c\\u062f \\u0631\\u0633\\u0627\\u0644\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0644\\u062f\\u064a\\u0643 \\u0645\\u0646 \\u0642\\u0628\\u0644 :\",\"user\":\"gamal\"}', NULL, '2022-07-08 08:45:09', '2022-07-08 08:45:09'),
('4403a4ac-e7d6-4ac5-a865-ac37b25822cc', 'App\\Notifications\\Add_service', 'App\\User', 19, '{\"id\":6,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-08 08:22:33', '2022-07-08 08:22:33'),
('445df057-62ed-44e1-8398-c596b5d75d1f', 'App\\Notifications\\Add_service', 'App\\User', 12, '{\"id\":18,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"lia\"}', NULL, '2022-07-09 08:26:47', '2022-07-09 08:26:47'),
('44b8096c-6f8b-4878-8ea5-b0a95d1adbcb', 'App\\Notifications\\Add_message', 'App\\User', 18, '{\"id\":3,\"title\":\" \\u064a\\u0648\\u062c\\u062f \\u0631\\u0633\\u0627\\u0644\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0644\\u062f\\u064a\\u0643 \\u0645\\u0646 \\u0642\\u0628\\u0644 :\",\"user\":\"provider\"}', NULL, '2022-07-11 06:26:12', '2022-07-11 06:26:12'),
('4564cb09-e294-48da-80e9-d657319412ef', 'App\\Notifications\\Add_service', 'App\\User', 10, '{\"id\":4,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-08 08:20:19', '2022-07-08 08:20:19'),
('4655b307-20e1-424a-9ec3-89c4ba455211', 'App\\Notifications\\Add_message', 'App\\User', 19, '{\"id\":1,\"title\":\" \\u064a\\u0648\\u062c\\u062f \\u0631\\u0633\\u0627\\u0644\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0644\\u062f\\u064a\\u0643 \\u0645\\u0646 \\u0642\\u0628\\u0644 :\",\"user\":\"gamal\"}', NULL, '2022-07-08 08:45:09', '2022-07-08 08:45:09'),
('46b0bf89-720f-4804-8300-edc1100e28a8', 'App\\Notifications\\Add_service', 'App\\User', 20, '{\"id\":3,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"yara\"}', NULL, '2022-07-08 07:36:47', '2022-07-08 07:36:47'),
('4841d18f-6086-4883-81c6-2c8d8aa6170e', 'App\\Notifications\\Add_service', 'App\\User', 10, '{\"id\":34,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-09 09:02:22', '2022-07-09 09:02:22'),
('48527ffc-763b-4a14-8428-59c4208fa7ff', 'App\\Notifications\\Add_service', 'App\\User', 12, '{\"id\":19,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"lia\"}', NULL, '2022-07-09 08:27:34', '2022-07-09 08:27:34'),
('4868df8d-5e28-4639-805e-dee44fed56d5', 'App\\Notifications\\Add_service', 'App\\User', 8, '{\"id\":18,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"lia\"}', NULL, '2022-07-09 08:26:47', '2022-07-09 08:26:47'),
('48b2d91e-9551-4527-aff0-793eeb2ce3cc', 'App\\Notifications\\Add_service', 'App\\User', 15, '{\"id\":26,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"heba\"}', NULL, '2022-07-09 08:37:55', '2022-07-09 08:37:55'),
('48e98ff2-030b-4a0b-ae38-aed4a33a9b4c', 'App\\Notifications\\Add_message', 'App\\User', 13, '{\"id\":3,\"title\":\" \\u064a\\u0648\\u062c\\u062f \\u0631\\u0633\\u0627\\u0644\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0644\\u062f\\u064a\\u0643 \\u0645\\u0646 \\u0642\\u0628\\u0644 :\",\"user\":\"provider\"}', NULL, '2022-07-11 06:26:12', '2022-07-11 06:26:12'),
('490429d0-efb0-4183-a084-0a08bd6ef907', 'App\\Notifications\\Add_service', 'App\\User', 9, '{\"id\":34,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-09 09:02:22', '2022-07-09 09:02:22'),
('49400913-cc8a-4046-be98-d6039907202c', 'App\\Notifications\\Add_service', 'App\\User', 1, '{\"id\":9,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"ahmad\"}', '2022-07-09 08:50:47', '2022-07-09 07:56:12', '2022-07-09 08:50:47'),
('49a0d107-bca8-4608-8ee2-a410bb484f79', 'App\\Notifications\\Add_service', 'App\\User', 15, '{\"id\":19,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"lia\"}', NULL, '2022-07-09 08:27:34', '2022-07-09 08:27:34'),
('49a0e954-ec62-4b28-a582-8c5f8dcd6ebd', 'App\\Notifications\\Add_service', 'App\\User', 13, '{\"id\":3,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"yara\"}', NULL, '2022-07-08 07:36:46', '2022-07-08 07:36:46'),
('49a1384c-7aed-46af-b945-27172efc518a', 'App\\Notifications\\Add_service', 'App\\User', 10, '{\"id\":1,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-08 07:29:22', '2022-07-08 07:29:22'),
('4a271432-c0c2-489b-9c67-8e8f7e65dcac', 'App\\Notifications\\Add_service', 'App\\User', 20, '{\"id\":23,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"heba\"}', NULL, '2022-07-09 08:34:52', '2022-07-09 08:34:52'),
('4ac63f9f-af3c-46ff-bc7f-a768087161cc', 'App\\Notifications\\Add_service', 'App\\User', 13, '{\"id\":1,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-08 07:29:22', '2022-07-08 07:29:22'),
('4c1b5901-bd52-46a2-b566-dce06d2e7e78', 'App\\Notifications\\Add_service', 'App\\User', 4, '{\"id\":28,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"abd\"}', NULL, '2022-07-09 08:41:21', '2022-07-09 08:41:21'),
('4da18667-b6f1-4711-abad-14deffb4bd42', 'App\\Notifications\\Add_service', 'App\\User', 3, '{\"id\":11,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"amir\"}', NULL, '2022-07-09 07:58:58', '2022-07-09 07:58:58'),
('4db5570e-0309-4cff-8288-5e0c5493f449', 'App\\Notifications\\Add_service', 'App\\User', 19, '{\"id\":13,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"amir\"}', NULL, '2022-07-09 08:02:23', '2022-07-09 08:02:23'),
('4dcd5732-6c0f-4df5-9759-abaf6476dec2', 'App\\Notifications\\Add_service', 'App\\User', 12, '{\"id\":32,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-09 08:57:29', '2022-07-09 08:57:29'),
('4e02d9fd-894a-42fc-bb6c-8dea0c37c3f2', 'App\\Notifications\\Add_service', 'App\\User', 3, '{\"id\":19,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"lia\"}', NULL, '2022-07-09 08:27:34', '2022-07-09 08:27:34'),
('4e26e0d6-c7cb-438c-afb4-95c85aacf9bc', 'App\\Notifications\\Add_service', 'App\\User', 19, '{\"id\":33,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-09 08:59:45', '2022-07-09 08:59:45'),
('4ebf4096-b90f-414f-8c37-008d28718771', 'App\\Notifications\\Add_service', 'App\\User', 8, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"saher\"}', NULL, '2022-07-09 08:21:19', '2022-07-09 08:21:19'),
('4f129dbc-6f4c-4166-845c-4c525f9bac9e', 'App\\Notifications\\Add_service', 'App\\User', 17, '{\"id\":30,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"abd\"}', NULL, '2022-07-09 08:43:54', '2022-07-09 08:43:54'),
('4f42b3a0-82df-4825-aae2-04f40f5ba621', 'App\\Notifications\\Add_service', 'App\\User', 19, '{\"id\":17,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"lia\"}', NULL, '2022-07-09 08:25:10', '2022-07-09 08:25:10'),
('4f6e0d03-476f-45ff-8aad-c9377f3f06f8', 'App\\Notifications\\Add_service', 'App\\User', 10, '{\"id\":5,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-08 08:21:34', '2022-07-08 08:21:34'),
('4f73efbc-d1ae-47e7-8e26-99cfa335c1f1', 'App\\Notifications\\Add_service', 'App\\User', 10, '{\"id\":2,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"ahmad\"}', NULL, '2022-07-08 07:31:18', '2022-07-08 07:31:18'),
('5034dbd5-48c5-4730-96c2-03748d1a762c', 'App\\Notifications\\Add_service', 'App\\User', 8, '{\"id\":23,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"heba\"}', NULL, '2022-07-09 08:34:50', '2022-07-09 08:34:50'),
('505d9e28-b09c-431c-9d3f-ba8158a6bbad', 'App\\Notifications\\Add_service', 'App\\User', 10, '{\"id\":12,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"amir\"}', NULL, '2022-07-09 08:01:10', '2022-07-09 08:01:10'),
('507a2299-0f88-4016-a521-766a4826cfdd', 'App\\Notifications\\Add_service', 'App\\User', 9, '{\"id\":3,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"yara\"}', NULL, '2022-07-08 07:36:46', '2022-07-08 07:36:46'),
('50c098a6-3a13-46b9-a030-ea3f3f219c0e', 'App\\Notifications\\Add_service', 'App\\User', 4, '{\"id\":1,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-08 07:29:21', '2022-07-08 07:29:21'),
('516b9c00-9304-4778-af12-3f847ab50e91', 'App\\Notifications\\Add_service', 'App\\User', 8, '{\"id\":7,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-08 08:23:39', '2022-07-08 08:23:39'),
('51940fd3-6053-4c42-9a6a-cfb065da6180', 'App\\Notifications\\Add_service', 'App\\User', 16, '{\"id\":30,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"abd\"}', NULL, '2022-07-09 08:43:54', '2022-07-09 08:43:54'),
('51dc0383-e00b-482a-bf3f-45d2c505556e', 'App\\Notifications\\Add_service', 'App\\User', 19, '{\"id\":2,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"ahmad\"}', NULL, '2022-07-08 07:31:19', '2022-07-08 07:31:19'),
('5212fedf-827f-4d91-b4fe-3a8856a1bca0', 'App\\Notifications\\Add_service', 'App\\User', 6, '{\"id\":16,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"saher\"}', NULL, '2022-07-09 08:23:24', '2022-07-09 08:23:24'),
('52526574-12e6-440e-839f-56f5d2467b90', 'App\\Notifications\\Add_service', 'App\\User', 18, '{\"id\":25,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"heba\"}', NULL, '2022-07-09 08:36:37', '2022-07-09 08:36:37'),
('525b5865-ab7c-40bc-836d-51586676ea13', 'App\\Notifications\\Add_service', 'App\\User', 14, '{\"id\":22,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"yara\"}', NULL, '2022-07-09 08:32:07', '2022-07-09 08:32:07'),
('526f4c24-57c8-4dec-ab59-3b1001049ffa', 'App\\Notifications\\Add_service', 'App\\User', 11, '{\"id\":3,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"yara\"}', NULL, '2022-07-08 07:36:46', '2022-07-08 07:36:46'),
('52b2abda-6612-415d-b4da-cb9a202638e9', 'App\\Notifications\\Add_service', 'App\\User', 19, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"saher\"}', NULL, '2022-07-09 08:21:21', '2022-07-09 08:21:21'),
('52d9022b-165e-446c-9992-ddf0c00494c5', 'App\\Notifications\\Add_service', 'App\\User', 15, '{\"id\":28,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"abd\"}', NULL, '2022-07-09 08:41:21', '2022-07-09 08:41:21'),
('52fafbd6-cf5c-47d3-8266-1595044e5b31', 'App\\Notifications\\Add_message', 'App\\User', 12, '{\"id\":3,\"title\":\" \\u064a\\u0648\\u062c\\u062f \\u0631\\u0633\\u0627\\u0644\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0644\\u062f\\u064a\\u0643 \\u0645\\u0646 \\u0642\\u0628\\u0644 :\",\"user\":\"provider\"}', NULL, '2022-07-11 06:26:11', '2022-07-11 06:26:11'),
('535c7548-c5e5-466c-b886-877a94f998e3', 'App\\Notifications\\Add_service', 'App\\User', 16, '{\"id\":2,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"ahmad\"}', NULL, '2022-07-08 07:31:18', '2022-07-08 07:31:18'),
('537ac109-f9a4-45b3-aaf1-1e93d3b5ec12', 'App\\Notifications\\Add_service', 'App\\User', 14, '{\"id\":17,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"lia\"}', NULL, '2022-07-09 08:25:08', '2022-07-09 08:25:08'),
('5393d2c9-a8e5-423d-ad23-4a3441926ad6', 'App\\Notifications\\Add_service', 'App\\User', 3, '{\"id\":16,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"saher\"}', NULL, '2022-07-09 08:23:24', '2022-07-09 08:23:24'),
('54d3dbfe-c4ad-49a5-a63f-2e42a2193168', 'App\\Notifications\\Add_service', 'App\\User', 9, '{\"id\":18,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"lia\"}', NULL, '2022-07-09 08:26:47', '2022-07-09 08:26:47'),
('564c1484-7871-40e8-a810-6721b51f1ad8', 'App\\Notifications\\Add_service', 'App\\User', 4, '{\"id\":26,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"heba\"}', NULL, '2022-07-09 08:37:53', '2022-07-09 08:37:53'),
('56d21874-fb86-4d2d-83a1-00212881775e', 'App\\Notifications\\Add_message', 'App\\User', 10, '{\"id\":3,\"title\":\" \\u064a\\u0648\\u062c\\u062f \\u0631\\u0633\\u0627\\u0644\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0644\\u062f\\u064a\\u0643 \\u0645\\u0646 \\u0642\\u0628\\u0644 :\",\"user\":\"provider\"}', NULL, '2022-07-11 06:26:11', '2022-07-11 06:26:11'),
('56daa560-5f5a-4841-bd4b-bc67d25a325a', 'App\\Notifications\\Add_service', 'App\\User', 6, '{\"id\":9,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"ahmad\"}', NULL, '2022-07-09 07:56:13', '2022-07-09 07:56:13'),
('56f5588e-62ea-4326-8fda-d61557d467d7', 'App\\Notifications\\Add_service', 'App\\User', 15, '{\"id\":8,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-08 08:28:18', '2022-07-08 08:28:18'),
('57113e82-8793-4d13-9d7f-a38280f55811', 'App\\Notifications\\Add_service', 'App\\User', 16, '{\"id\":15,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"saher\"}', NULL, '2022-07-09 08:22:39', '2022-07-09 08:22:39'),
('57927bde-f349-4e1b-986f-77ff07e38eaa', 'App\\Notifications\\Add_service', 'App\\User', 16, '{\"id\":11,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"amir\"}', NULL, '2022-07-09 07:58:59', '2022-07-09 07:58:59'),
('5797364f-10d9-4f0b-93d5-274d5734d875', 'App\\Notifications\\Add_service', 'App\\User', 6, '{\"id\":12,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"amir\"}', NULL, '2022-07-09 08:01:10', '2022-07-09 08:01:10'),
('58bf6bb4-2703-4b49-8101-308bad0187c1', 'App\\Notifications\\Add_service', 'App\\User', 14, '{\"id\":31,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"abd\"}', NULL, '2022-07-09 08:44:30', '2022-07-09 08:44:30'),
('5970cede-6eeb-40d8-b7d5-14b4e6c4a74a', 'App\\Notifications\\Add_service', 'App\\User', 17, '{\"id\":19,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"lia\"}', NULL, '2022-07-09 08:27:34', '2022-07-09 08:27:34'),
('5a2d45fa-a5d7-44f9-af17-1dcb89f1dbde', 'App\\Notifications\\Add_service', 'App\\User', 8, '{\"id\":16,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"saher\"}', NULL, '2022-07-09 08:23:24', '2022-07-09 08:23:24'),
('5a736eca-c425-4f52-a77e-a163919830aa', 'App\\Notifications\\Add_service', 'App\\User', 15, '{\"id\":1,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-08 07:29:23', '2022-07-08 07:29:23'),
('5a787805-ebf7-49b4-8523-e79c3e937dff', 'App\\Notifications\\Add_service', 'App\\User', 12, '{\"id\":25,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"heba\"}', NULL, '2022-07-09 08:36:37', '2022-07-09 08:36:37'),
('5ac4b92f-3a27-4ccd-9b9d-91d11f5b7905', 'App\\Notifications\\Add_service', 'App\\User', 10, '{\"id\":28,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"abd\"}', NULL, '2022-07-09 08:41:21', '2022-07-09 08:41:21'),
('5b07222e-bd15-4cf6-b388-4646e4d0576e', 'App\\Notifications\\Add_service', 'App\\User', 16, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"saher\"}', NULL, '2022-07-09 08:21:21', '2022-07-09 08:21:21'),
('5b1678b2-a8c0-42dc-9682-ffef4398713b', 'App\\Notifications\\Add_service', 'App\\User', 7, '{\"id\":27,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"heba\"}', NULL, '2022-07-09 08:39:18', '2022-07-09 08:39:18'),
('5c297eec-ee85-4f08-be7a-62b1a5ad4cd2', 'App\\Notifications\\Add_service', 'App\\User', 10, '{\"id\":33,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-09 08:59:44', '2022-07-09 08:59:44'),
('5c2ecde8-7417-4edc-9cbc-0eaf3422e757', 'App\\Notifications\\Add_message', 'App\\User', 5, '{\"id\":3,\"title\":\" \\u064a\\u0648\\u062c\\u062f \\u0631\\u0633\\u0627\\u0644\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0644\\u062f\\u064a\\u0643 \\u0645\\u0646 \\u0642\\u0628\\u0644 :\",\"user\":\"provider\"}', NULL, '2022-07-11 06:26:11', '2022-07-11 06:26:11'),
('5c31075d-5bca-4369-ac29-de4557fb2bba', 'App\\Notifications\\Add_service', 'App\\User', 7, '{\"id\":1,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-08 07:29:21', '2022-07-08 07:29:21'),
('5c55e2c3-623d-4c3a-bbdf-6cce937f3cac', 'App\\Notifications\\Add_service', 'App\\User', 17, '{\"id\":27,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"heba\"}', NULL, '2022-07-09 08:39:18', '2022-07-09 08:39:18'),
('5cb0584c-8a98-4f07-96aa-af009e36dea1', 'App\\Notifications\\Add_service', 'App\\User', 13, '{\"id\":18,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"lia\"}', NULL, '2022-07-09 08:26:47', '2022-07-09 08:26:47'),
('5cf83316-f606-4405-8d2b-ab560ed1fcce', 'App\\Notifications\\Add_service', 'App\\User', 12, '{\"id\":34,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-09 09:02:22', '2022-07-09 09:02:22'),
('5da5fb43-ea52-49d9-a7fe-cc9037e16b6a', 'App\\Notifications\\Add_service', 'App\\User', 1, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"saher\"}', '2022-07-09 08:50:47', '2022-07-09 08:21:19', '2022-07-09 08:50:47'),
('5db653c1-d248-42e5-9658-5e19fe8833b9', 'App\\Notifications\\Add_service', 'App\\User', 19, '{\"id\":12,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"amir\"}', NULL, '2022-07-09 08:01:10', '2022-07-09 08:01:10'),
('5dc19503-8c7e-441e-9c93-680da860b16d', 'App\\Notifications\\Add_service', 'App\\User', 8, '{\"id\":28,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"abd\"}', NULL, '2022-07-09 08:41:21', '2022-07-09 08:41:21'),
('5dd74b98-7ca0-432c-8932-2117c18727e3', 'App\\Notifications\\Add_service', 'App\\User', 4, '{\"id\":25,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"heba\"}', NULL, '2022-07-09 08:36:36', '2022-07-09 08:36:36'),
('5e0420fe-7b08-44d1-af05-23800bb8c1a8', 'App\\Notifications\\Add_service', 'App\\User', 18, '{\"id\":3,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"yara\"}', NULL, '2022-07-08 07:36:47', '2022-07-08 07:36:47'),
('5e08a0ca-908a-4ffb-8990-2578a52db42a', 'App\\Notifications\\Add_service', 'App\\User', 19, '{\"id\":24,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"heba\"}', NULL, '2022-07-09 08:35:51', '2022-07-09 08:35:51'),
('5e209b39-5fd8-4f62-8595-eeecd1842b2b', 'App\\Notifications\\Add_service', 'App\\User', 15, '{\"id\":25,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"heba\"}', NULL, '2022-07-09 08:36:37', '2022-07-09 08:36:37'),
('5e9405fb-bdda-4ca3-b029-cf6275da6b0b', 'App\\Notifications\\Add_message', 'App\\User', 5, '{\"id\":1,\"title\":\" \\u064a\\u0648\\u062c\\u062f \\u0631\\u0633\\u0627\\u0644\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0644\\u062f\\u064a\\u0643 \\u0645\\u0646 \\u0642\\u0628\\u0644 :\",\"user\":\"gamal\"}', NULL, '2022-07-08 08:45:09', '2022-07-08 08:45:09'),
('5f3fb7bb-0c6d-4e4a-8d44-01b18fcfa47f', 'App\\Notifications\\Add_service', 'App\\User', 7, '{\"id\":2,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"ahmad\"}', NULL, '2022-07-08 07:31:17', '2022-07-08 07:31:17'),
('5f83f5f8-4da0-4cb6-80ca-41616a29f0a8', 'App\\Notifications\\Add_service', 'App\\User', 5, '{\"id\":2,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"ahmad\"}', NULL, '2022-07-08 07:31:17', '2022-07-08 07:31:17'),
('5fe84090-1935-4e49-a5c7-bce488a8d02e', 'App\\Notifications\\Add_service', 'App\\User', 18, '{\"id\":1,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-08 07:29:23', '2022-07-08 07:29:23'),
('603800ed-bc08-463e-920b-89d9d7c7d21f', 'App\\Notifications\\Add_service', 'App\\User', 16, '{\"id\":26,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"heba\"}', NULL, '2022-07-09 08:37:55', '2022-07-09 08:37:55'),
('60fbd5ab-042e-4bf3-a3cb-1764123a70b6', 'App\\Notifications\\Add_service', 'App\\User', 6, '{\"id\":6,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-08 08:22:32', '2022-07-08 08:22:32'),
('61e864cc-fcd9-4006-8687-28e8032ee2fc', 'App\\Notifications\\Add_message', 'App\\User', 7, '{\"id\":1,\"title\":\" \\u064a\\u0648\\u062c\\u062f \\u0631\\u0633\\u0627\\u0644\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0644\\u062f\\u064a\\u0643 \\u0645\\u0646 \\u0642\\u0628\\u0644 :\",\"user\":\"gamal\"}', NULL, '2022-07-08 08:45:09', '2022-07-08 08:45:09'),
('61f562e5-5439-4342-afd5-cfc93ade43dd', 'App\\Notifications\\Add_service', 'App\\User', 16, '{\"id\":19,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"lia\"}', NULL, '2022-07-09 08:27:34', '2022-07-09 08:27:34'),
('62b2a181-293d-4d4f-88da-c6417edf921f', 'App\\Notifications\\Add_service', 'App\\User', 5, '{\"id\":30,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"abd\"}', NULL, '2022-07-09 08:43:53', '2022-07-09 08:43:53'),
('6313b180-65b2-4fa7-95f2-142cafb728cc', 'App\\Notifications\\Add_service', 'App\\User', 20, '{\"id\":5,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-08 08:21:38', '2022-07-08 08:21:38'),
('63612131-d6e4-431f-b8f3-5265a125fb46', 'App\\Notifications\\Add_service', 'App\\User', 3, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"saher\"}', NULL, '2022-07-09 08:21:19', '2022-07-09 08:21:19'),
('638a5e97-1a6a-4e08-b405-9e675a4807aa', 'App\\Notifications\\Add_service', 'App\\User', 18, '{\"id\":20,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"yara\"}', NULL, '2022-07-09 08:29:03', '2022-07-09 08:29:03'),
('63dafc0c-6210-49e8-baea-8efa1f753e72', 'App\\Notifications\\Add_service', 'App\\User', 19, '{\"id\":11,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"amir\"}', NULL, '2022-07-09 07:58:59', '2022-07-09 07:58:59'),
('63ed97ec-d308-4dee-aaba-41ba9edd5f72', 'App\\Notifications\\Add_service', 'App\\User', 20, '{\"id\":26,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"heba\"}', NULL, '2022-07-09 08:37:55', '2022-07-09 08:37:55'),
('63fae09f-6cf1-42ba-ad4f-7d616cfa4d92', 'App\\Notifications\\Add_service', 'App\\User', 14, '{\"id\":1,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-08 07:29:22', '2022-07-08 07:29:22'),
('642f330f-c293-4412-94c3-a433f976d55c', 'App\\Notifications\\Add_service', 'App\\User', 16, '{\"id\":29,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"abd\"}', NULL, '2022-07-09 08:42:43', '2022-07-09 08:42:43'),
('64cdd11b-7ddf-4eeb-84a0-7c2fddb43682', 'App\\Notifications\\Add_service', 'App\\User', 6, '{\"id\":20,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"yara\"}', NULL, '2022-07-09 08:29:03', '2022-07-09 08:29:03'),
('6563d931-38a3-4c89-a498-cf66306dd16c', 'App\\Notifications\\Add_service', 'App\\User', 18, '{\"id\":18,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"lia\"}', NULL, '2022-07-09 08:26:47', '2022-07-09 08:26:47'),
('658b99e6-f94b-44bc-a245-2db08b303cd0', 'App\\Notifications\\Add_service', 'App\\User', 13, '{\"id\":25,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"heba\"}', NULL, '2022-07-09 08:36:37', '2022-07-09 08:36:37'),
('65e958a6-4ff4-4b3c-a7b9-acfe6439534c', 'App\\Notifications\\Add_service', 'App\\User', 18, '{\"id\":15,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"saher\"}', NULL, '2022-07-09 08:22:40', '2022-07-09 08:22:40'),
('66136462-3e0f-4f35-a502-26d06f8f6d2a', 'App\\Notifications\\Add_service', 'App\\User', 10, '{\"id\":10,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"ahmad\"}', NULL, '2022-07-09 07:57:25', '2022-07-09 07:57:25'),
('661ed2a9-71ea-4ff8-9d6e-4fc928f822d1', 'App\\Notifications\\Add_service', 'App\\User', 17, '{\"id\":3,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"yara\"}', NULL, '2022-07-08 07:36:47', '2022-07-08 07:36:47'),
('6626dd68-04e8-43f8-a386-cc06cfe4506b', 'App\\Notifications\\Add_service', 'App\\User', 10, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"saher\"}', NULL, '2022-07-09 08:21:19', '2022-07-09 08:21:19'),
('664d40b5-af9f-4555-ae6d-79dac8ca9cc2', 'App\\Notifications\\Add_service', 'App\\User', 1, '{\"id\":29,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"abd\"}', '2022-07-09 08:50:44', '2022-07-09 08:42:42', '2022-07-09 08:50:44'),
('669d79fb-cb4b-443a-be80-dd244468797e', 'App\\Notifications\\Add_service', 'App\\User', 5, '{\"id\":8,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-08 08:28:18', '2022-07-08 08:28:18');
INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('66c4774a-0b08-4ba0-9850-e33d8cf69d23', 'App\\Notifications\\Add_service', 'App\\User', 16, '{\"id\":24,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"heba\"}', NULL, '2022-07-09 08:35:51', '2022-07-09 08:35:51'),
('6754636d-02c1-4b4f-83f8-e57aa26394cf', 'App\\Notifications\\Add_service', 'App\\User', 10, '{\"id\":16,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"saher\"}', NULL, '2022-07-09 08:23:24', '2022-07-09 08:23:24'),
('677fca1c-d022-44e6-aa7b-7653208acfc8', 'App\\Notifications\\Add_message', 'App\\User', 6, '{\"id\":1,\"title\":\" \\u064a\\u0648\\u062c\\u062f \\u0631\\u0633\\u0627\\u0644\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0644\\u062f\\u064a\\u0643 \\u0645\\u0646 \\u0642\\u0628\\u0644 :\",\"user\":\"gamal\"}', NULL, '2022-07-08 08:45:09', '2022-07-08 08:45:09'),
('67b2718e-a21b-49f8-9f76-f16a050aab8a', 'App\\Notifications\\Add_service', 'App\\User', 20, '{\"id\":30,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"abd\"}', NULL, '2022-07-09 08:43:54', '2022-07-09 08:43:54'),
('688146eb-39ce-40a1-95fc-fdff9cd042bc', 'App\\Notifications\\Add_service', 'App\\User', 14, '{\"id\":10,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"ahmad\"}', NULL, '2022-07-09 07:57:25', '2022-07-09 07:57:25'),
('68b8ed97-ed54-4606-b19f-455c86b3e7f6', 'App\\Notifications\\Add_service', 'App\\User', 11, '{\"id\":19,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"lia\"}', NULL, '2022-07-09 08:27:34', '2022-07-09 08:27:34'),
('68fa6203-b65e-4296-af83-882422c373af', 'App\\Notifications\\Add_service', 'App\\User', 9, '{\"id\":16,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"saher\"}', NULL, '2022-07-09 08:23:24', '2022-07-09 08:23:24'),
('6928c686-efd7-4561-8396-c56acd350aa9', 'App\\Notifications\\Add_service', 'App\\User', 18, '{\"id\":8,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-08 08:28:18', '2022-07-08 08:28:18'),
('69b3ff4b-e92c-43cc-871f-5ebe01263d24', 'App\\Notifications\\Add_message', 'App\\User', 7, '{\"id\":2,\"title\":\" \\u064a\\u0648\\u062c\\u062f \\u0631\\u0633\\u0627\\u0644\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0644\\u062f\\u064a\\u0643 \\u0645\\u0646 \\u0642\\u0628\\u0644 :\",\"user\":\"lia\"}', NULL, '2022-07-09 10:23:40', '2022-07-09 10:23:40'),
('6a03020c-2b00-4e51-bdaf-1404b3c647f4', 'App\\Notifications\\Add_service', 'App\\User', 14, '{\"id\":18,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"lia\"}', NULL, '2022-07-09 08:26:47', '2022-07-09 08:26:47'),
('6aac72c5-af29-4454-8bd1-8fa9c630c864', 'App\\Notifications\\Add_service', 'App\\User', 6, '{\"id\":32,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-09 08:57:29', '2022-07-09 08:57:29'),
('6aac87af-e728-43a4-a4d6-0ca8c5d8f1c7', 'App\\Notifications\\Add_service', 'App\\User', 4, '{\"id\":9,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"ahmad\"}', NULL, '2022-07-09 07:56:12', '2022-07-09 07:56:12'),
('6b0c5985-bb60-45c1-96f6-2dc8cc94f150', 'App\\Notifications\\Add_service', 'App\\User', 20, '{\"id\":34,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-09 09:02:23', '2022-07-09 09:02:23'),
('6c0dadf1-867c-481f-90b0-0ae2aa337fb7', 'App\\Notifications\\Add_service', 'App\\User', 6, '{\"id\":34,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-09 09:02:22', '2022-07-09 09:02:22'),
('6c4d47c2-c3cf-4d2f-8b71-1c4e58703276', 'App\\Notifications\\Add_service', 'App\\User', 6, '{\"id\":28,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"abd\"}', NULL, '2022-07-09 08:41:21', '2022-07-09 08:41:21'),
('6c63b3b3-f8d3-47c3-9da2-e5a10c278e26', 'App\\Notifications\\Add_service', 'App\\User', 10, '{\"id\":21,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"yara\"}', NULL, '2022-07-09 08:30:47', '2022-07-09 08:30:47'),
('6cc0a1fc-edb9-495c-88e1-2bf85a5c5d1b', 'App\\Notifications\\Add_service', 'App\\User', 3, '{\"id\":30,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"abd\"}', NULL, '2022-07-09 08:43:53', '2022-07-09 08:43:53'),
('6cc69c1e-9853-48b3-9e23-41249e8e6a7a', 'App\\Notifications\\Add_service', 'App\\User', 7, '{\"id\":33,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-09 08:59:43', '2022-07-09 08:59:43'),
('6d02e5ab-b6ea-4fb9-a5b4-d34b343819a4', 'App\\Notifications\\Add_service', 'App\\User', 6, '{\"id\":2,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"ahmad\"}', NULL, '2022-07-08 07:31:17', '2022-07-08 07:31:17'),
('6d5867dd-dd8c-4e44-b2fd-54643fbe6387', 'App\\Notifications\\Add_service', 'App\\User', 16, '{\"id\":7,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-08 08:23:39', '2022-07-08 08:23:39'),
('6eb2cd75-75c4-4b09-a073-4999d43e4481', 'App\\Notifications\\Add_service', 'App\\User', 19, '{\"id\":19,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"lia\"}', NULL, '2022-07-09 08:27:34', '2022-07-09 08:27:34'),
('6ed05a29-bb32-41f9-bcf0-092ed689ed8b', 'App\\Notifications\\Add_message', 'App\\User', 8, '{\"id\":3,\"title\":\" \\u064a\\u0648\\u062c\\u062f \\u0631\\u0633\\u0627\\u0644\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0644\\u062f\\u064a\\u0643 \\u0645\\u0646 \\u0642\\u0628\\u0644 :\",\"user\":\"provider\"}', NULL, '2022-07-11 06:26:11', '2022-07-11 06:26:11'),
('6ee17972-3efe-4b06-9613-a09d7da220da', 'App\\Notifications\\Add_service', 'App\\User', 17, '{\"id\":29,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"abd\"}', NULL, '2022-07-09 08:42:43', '2022-07-09 08:42:43'),
('6eef81d7-f647-4a48-88a9-1a08577de4e9', 'App\\Notifications\\Add_service', 'App\\User', 13, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"saher\"}', NULL, '2022-07-09 08:21:20', '2022-07-09 08:21:20'),
('6fc0b0d6-0fdb-414b-88e2-f054c932987b', 'App\\Notifications\\Add_message', 'App\\User', 14, '{\"id\":3,\"title\":\" \\u064a\\u0648\\u062c\\u062f \\u0631\\u0633\\u0627\\u0644\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0644\\u062f\\u064a\\u0643 \\u0645\\u0646 \\u0642\\u0628\\u0644 :\",\"user\":\"provider\"}', NULL, '2022-07-11 06:26:12', '2022-07-11 06:26:12'),
('6fd815de-d23c-4f7f-af8c-8604670f3ad1', 'App\\Notifications\\Add_service', 'App\\User', 8, '{\"id\":27,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"heba\"}', NULL, '2022-07-09 08:39:18', '2022-07-09 08:39:18'),
('706b6fd9-5467-431f-a204-54802c1c9f72', 'App\\Notifications\\Add_service', 'App\\User', 11, '{\"id\":22,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"yara\"}', NULL, '2022-07-09 08:32:07', '2022-07-09 08:32:07'),
('71c5b4f3-a156-4dea-8642-1cad4cc2330e', 'App\\Notifications\\Add_service', 'App\\User', 14, '{\"id\":6,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-08 08:22:33', '2022-07-08 08:22:33'),
('71d560fa-9056-46ea-bdd2-6093e8c2e6fa', 'App\\Notifications\\Add_service', 'App\\User', 17, '{\"id\":12,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"amir\"}', NULL, '2022-07-09 08:01:10', '2022-07-09 08:01:10'),
('7201ae29-effd-4ac0-b61a-3ac12ba9183f', 'App\\Notifications\\Add_service', 'App\\User', 13, '{\"id\":34,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-09 09:02:22', '2022-07-09 09:02:22'),
('7292117b-95db-48fa-9d62-24df644e9168', 'App\\Notifications\\Add_service', 'App\\User', 13, '{\"id\":30,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"abd\"}', NULL, '2022-07-09 08:43:54', '2022-07-09 08:43:54'),
('72b0b130-674c-4801-b0cc-a9875a08e09b', 'App\\Notifications\\Add_service', 'App\\User', 18, '{\"id\":12,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"amir\"}', NULL, '2022-07-09 08:01:10', '2022-07-09 08:01:10'),
('7360b97c-e1fc-4a92-b355-e92308247768', 'App\\Notifications\\Add_service', 'App\\User', 10, '{\"id\":27,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"heba\"}', NULL, '2022-07-09 08:39:18', '2022-07-09 08:39:18'),
('738260df-3eea-46ea-bc1d-50e11efa7f21', 'App\\Notifications\\Add_service', 'App\\User', 9, '{\"id\":1,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-08 07:29:21', '2022-07-08 07:29:21'),
('73b64c56-3663-48af-8b4b-2ae56b23a37b', 'App\\Notifications\\Add_service', 'App\\User', 7, '{\"id\":26,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"heba\"}', NULL, '2022-07-09 08:37:53', '2022-07-09 08:37:53'),
('73d77451-d0e0-4c1a-a426-cdfabfbed006', 'App\\Notifications\\Add_service', 'App\\User', 7, '{\"id\":9,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"ahmad\"}', NULL, '2022-07-09 07:56:13', '2022-07-09 07:56:13'),
('7451355d-3d4c-4bd3-a564-22039401dc31', 'App\\Notifications\\Add_message', 'App\\User', 16, '{\"id\":1,\"title\":\" \\u064a\\u0648\\u062c\\u062f \\u0631\\u0633\\u0627\\u0644\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0644\\u062f\\u064a\\u0643 \\u0645\\u0646 \\u0642\\u0628\\u0644 :\",\"user\":\"gamal\"}', NULL, '2022-07-08 08:45:09', '2022-07-08 08:45:09'),
('74996176-a851-4ec9-81b2-2a017f972c95', 'App\\Notifications\\Add_service', 'App\\User', 10, '{\"id\":23,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"heba\"}', NULL, '2022-07-09 08:34:51', '2022-07-09 08:34:51'),
('74e31c1b-79d8-4277-a160-a79983c2d807', 'App\\Notifications\\Add_service', 'App\\User', 12, '{\"id\":11,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"amir\"}', NULL, '2022-07-09 07:58:59', '2022-07-09 07:58:59'),
('74effdfb-b608-4c5e-92fa-0666cc5f2ba4', 'App\\Notifications\\Add_service', 'App\\User', 20, '{\"id\":6,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-08 08:22:33', '2022-07-08 08:22:33'),
('769e9f08-cf56-4b27-a1ed-c7da912b9133', 'App\\Notifications\\Add_service', 'App\\User', 11, '{\"id\":21,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"yara\"}', NULL, '2022-07-09 08:30:47', '2022-07-09 08:30:47'),
('76c09d61-6cc2-4c74-bcde-0d7293c3c64f', 'App\\Notifications\\Add_service', 'App\\User', 17, '{\"id\":31,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"abd\"}', NULL, '2022-07-09 08:44:30', '2022-07-09 08:44:30'),
('76d1215b-b6ac-4aee-bd23-fec030d3aa7c', 'App\\Notifications\\Add_service', 'App\\User', 12, '{\"id\":12,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"amir\"}', NULL, '2022-07-09 08:01:10', '2022-07-09 08:01:10'),
('76f3fb48-d906-4b91-836b-b3d5098af309', 'App\\Notifications\\Add_service', 'App\\User', 14, '{\"id\":30,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"abd\"}', NULL, '2022-07-09 08:43:54', '2022-07-09 08:43:54'),
('7704ffba-8af1-463d-a30d-22ed5ee52ac1', 'App\\Notifications\\Add_service', 'App\\User', 12, '{\"id\":16,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"saher\"}', NULL, '2022-07-09 08:23:24', '2022-07-09 08:23:24'),
('77246b63-142f-4d0e-bf3e-3582f3265a18', 'App\\Notifications\\Add_service', 'App\\User', 18, '{\"id\":19,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"lia\"}', NULL, '2022-07-09 08:27:34', '2022-07-09 08:27:34'),
('7779c33a-50db-45d7-90a4-a97155fa0db8', 'App\\Notifications\\Add_service', 'App\\User', 6, '{\"id\":33,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-09 08:59:43', '2022-07-09 08:59:43'),
('77bf018a-7f4a-4bee-846f-13ac73c57e98', 'App\\Notifications\\Add_service', 'App\\User', 6, '{\"id\":4,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-08 08:20:19', '2022-07-08 08:20:19'),
('77e86f86-e379-4b10-931b-f2d315d09379', 'App\\Notifications\\Add_service', 'App\\User', 14, '{\"id\":33,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-09 08:59:45', '2022-07-09 08:59:45'),
('780b439e-c7bb-4858-935d-f7fa0f11934e', 'App\\Notifications\\Add_service', 'App\\User', 19, '{\"id\":5,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-08 08:21:37', '2022-07-08 08:21:37'),
('785ef7a5-4e1c-4f35-a787-b3b58dc31fea', 'App\\Notifications\\Add_service', 'App\\User', 4, '{\"id\":18,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"lia\"}', NULL, '2022-07-09 08:26:46', '2022-07-09 08:26:46'),
('792b06fe-3c8c-4fd1-9dfd-9c89266e6252', 'App\\Notifications\\Add_service', 'App\\User', 9, '{\"id\":33,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-09 08:59:43', '2022-07-09 08:59:43'),
('79410e6a-c2e3-4905-a2e5-a0cad2ffbfc0', 'App\\Notifications\\Add_service', 'App\\User', 16, '{\"id\":6,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-08 08:22:33', '2022-07-08 08:22:33'),
('7a01ebf1-3c9a-4e67-8151-24c766a19c33', 'App\\Notifications\\Add_service', 'App\\User', 3, '{\"id\":1,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-08 07:29:21', '2022-07-08 07:29:21'),
('7ab539c0-2697-44e1-96bd-4e88bf7471a2', 'App\\Notifications\\Add_service', 'App\\User', 10, '{\"id\":24,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"heba\"}', NULL, '2022-07-09 08:35:51', '2022-07-09 08:35:51'),
('7aea30be-b508-4843-9c38-00e613d337bd', 'App\\Notifications\\Add_service', 'App\\User', 9, '{\"id\":6,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-08 08:22:33', '2022-07-08 08:22:33'),
('7b095c3f-3c8f-4df1-a0d7-d0d1c72a4088', 'App\\Notifications\\Add_service', 'App\\User', 8, '{\"id\":12,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"amir\"}', NULL, '2022-07-09 08:01:10', '2022-07-09 08:01:10'),
('7b81af7d-d50a-44be-941d-909e14269f14', 'App\\Notifications\\Add_message', 'App\\User', 10, '{\"id\":1,\"title\":\" \\u064a\\u0648\\u062c\\u062f \\u0631\\u0633\\u0627\\u0644\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0644\\u062f\\u064a\\u0643 \\u0645\\u0646 \\u0642\\u0628\\u0644 :\",\"user\":\"gamal\"}', NULL, '2022-07-08 08:45:09', '2022-07-08 08:45:09'),
('7b88917e-9550-4a01-9f81-5389cd94e706', 'App\\Notifications\\Add_service', 'App\\User', 1, '{\"id\":13,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"amir\"}', '2022-07-09 08:50:47', '2022-07-09 08:02:22', '2022-07-09 08:50:47'),
('7bc945e7-80bc-4d74-97b5-5ac3760ae3dc', 'App\\Notifications\\Add_service', 'App\\User', 17, '{\"id\":16,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"saher\"}', NULL, '2022-07-09 08:23:24', '2022-07-09 08:23:24'),
('7be1ae74-df25-4ec1-aaba-01284abba76d', 'App\\Notifications\\Add_service', 'App\\User', 15, '{\"id\":16,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"saher\"}', NULL, '2022-07-09 08:23:24', '2022-07-09 08:23:24'),
('7c982335-637c-4e07-91e0-7ac8ddd94a83', 'App\\Notifications\\Add_service', 'App\\User', 3, '{\"id\":23,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"heba\"}', NULL, '2022-07-09 08:34:50', '2022-07-09 08:34:50'),
('7d92684b-c992-4b75-af1d-686791ff1786', 'App\\Notifications\\Add_service', 'App\\User', 10, '{\"id\":26,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"heba\"}', NULL, '2022-07-09 08:37:54', '2022-07-09 08:37:54'),
('7d93c7b8-332b-44fe-bb54-41a2f12376b3', 'App\\Notifications\\Add_service', 'App\\User', 5, '{\"id\":24,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"heba\"}', NULL, '2022-07-09 08:35:51', '2022-07-09 08:35:51'),
('7e4f5c0a-36c6-4b62-b605-f1cbc78f63fd', 'App\\Notifications\\Add_service', 'App\\User', 9, '{\"id\":9,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"ahmad\"}', NULL, '2022-07-09 07:56:13', '2022-07-09 07:56:13'),
('7e6311f6-be3e-4a64-9afa-7352bd004793', 'App\\Notifications\\Add_service', 'App\\User', 5, '{\"id\":3,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"yara\"}', NULL, '2022-07-08 07:36:46', '2022-07-08 07:36:46'),
('7e8c0234-65db-41c3-ba49-b2d60ab56e51', 'App\\Notifications\\Add_service', 'App\\User', 14, '{\"id\":2,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"ahmad\"}', NULL, '2022-07-08 07:31:18', '2022-07-08 07:31:18'),
('7efa86e5-ea68-45c3-9835-7ce00e2fce44', 'App\\Notifications\\Add_service', 'App\\User', 12, '{\"id\":1,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-08 07:29:22', '2022-07-08 07:29:22'),
('7f69352d-5121-4449-ac56-e697f6cfed80', 'App\\Notifications\\Add_service', 'App\\User', 3, '{\"id\":31,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"abd\"}', NULL, '2022-07-09 08:44:29', '2022-07-09 08:44:29'),
('7fe72a90-2cef-4d94-8a4b-e3ec6b53a93f', 'App\\Notifications\\Add_service', 'App\\User', 20, '{\"id\":24,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"heba\"}', NULL, '2022-07-09 08:35:51', '2022-07-09 08:35:51'),
('7fed84e0-f7d1-4a7e-bb84-dbe73ef04077', 'App\\Notifications\\Add_service', 'App\\User', 19, '{\"id\":27,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"heba\"}', NULL, '2022-07-09 08:39:18', '2022-07-09 08:39:18'),
('801c6858-5fb7-4ac4-9117-fc81bae5565a', 'App\\Notifications\\Add_service', 'App\\User', 10, '{\"id\":20,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"yara\"}', NULL, '2022-07-09 08:29:03', '2022-07-09 08:29:03'),
('80245c55-c11e-4498-aebd-d0789ec6fec6', 'App\\Notifications\\Add_service', 'App\\User', 18, '{\"id\":33,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-09 08:59:45', '2022-07-09 08:59:45'),
('812b3b51-d3a9-466b-90a2-afa83ab23526', 'App\\Notifications\\Add_service', 'App\\User', 6, '{\"id\":27,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"heba\"}', NULL, '2022-07-09 08:39:18', '2022-07-09 08:39:18'),
('81ffe85c-2e90-4be5-9e4e-b476a91651f4', 'App\\Notifications\\Add_service', 'App\\User', 14, '{\"id\":23,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"heba\"}', NULL, '2022-07-09 08:34:51', '2022-07-09 08:34:51'),
('82513142-9d0e-4bf4-8e74-1171225c6e70', 'App\\Notifications\\Add_service', 'App\\User', 1, '{\"id\":32,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-09 08:57:29', '2022-07-09 08:57:29'),
('82b4ec5c-e092-4336-a0a3-ccf63e599b85', 'App\\Notifications\\Add_message', 'App\\User', 6, '{\"id\":3,\"title\":\" \\u064a\\u0648\\u062c\\u062f \\u0631\\u0633\\u0627\\u0644\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0644\\u062f\\u064a\\u0643 \\u0645\\u0646 \\u0642\\u0628\\u0644 :\",\"user\":\"provider\"}', NULL, '2022-07-11 06:26:11', '2022-07-11 06:26:11'),
('837c6dcd-c2d6-4037-a45a-b7576713f3df', 'App\\Notifications\\Add_service', 'App\\User', 4, '{\"id\":27,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"heba\"}', NULL, '2022-07-09 08:39:17', '2022-07-09 08:39:17'),
('844ffce8-9729-4853-8b4c-3f2f3b037e3e', 'App\\Notifications\\Add_service', 'App\\User', 15, '{\"id\":18,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"lia\"}', NULL, '2022-07-09 08:26:47', '2022-07-09 08:26:47'),
('84ae8fa1-b0e7-4824-979e-fab8966a4bfc', 'App\\Notifications\\Add_service', 'App\\User', 8, '{\"id\":25,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"heba\"}', NULL, '2022-07-09 08:36:37', '2022-07-09 08:36:37'),
('853fb4a0-abeb-4e92-b5a8-e1e6fb6996ce', 'App\\Notifications\\Add_service', 'App\\User', 11, '{\"id\":27,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"heba\"}', NULL, '2022-07-09 08:39:18', '2022-07-09 08:39:18'),
('854cc855-ffec-4468-9b1f-1f382b244578', 'App\\Notifications\\Add_service', 'App\\User', 7, '{\"id\":5,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-08 08:21:33', '2022-07-08 08:21:33'),
('856cbfd5-8eb9-4d51-9a8c-7aad61d9c897', 'App\\Notifications\\Add_service', 'App\\User', 5, '{\"id\":18,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"lia\"}', NULL, '2022-07-09 08:26:47', '2022-07-09 08:26:47'),
('856db06b-8b35-4d38-b864-43176ac04991', 'App\\Notifications\\Add_service', 'App\\User', 19, '{\"id\":10,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"ahmad\"}', NULL, '2022-07-09 07:57:25', '2022-07-09 07:57:25'),
('85e97bc8-b3ed-4376-8306-79c6089d014f', 'App\\Notifications\\Add_service', 'App\\User', 12, '{\"id\":26,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"heba\"}', NULL, '2022-07-09 08:37:54', '2022-07-09 08:37:54'),
('8616db57-3d85-4e3b-a1cf-8bf305a2abf6', 'App\\Notifications\\Add_service', 'App\\User', 17, '{\"id\":18,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"lia\"}', NULL, '2022-07-09 08:26:47', '2022-07-09 08:26:47'),
('868bd056-dc8e-4c27-ab5f-a6d47e224073', 'App\\Notifications\\Add_message', 'App\\User', 1, '{\"id\":3,\"title\":\" \\u064a\\u0648\\u062c\\u062f \\u0631\\u0633\\u0627\\u0644\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0644\\u062f\\u064a\\u0643 \\u0645\\u0646 \\u0642\\u0628\\u0644 :\",\"user\":\"provider\"}', NULL, '2022-07-11 06:26:11', '2022-07-11 06:26:11'),
('86a020ab-17c1-4082-a7f0-0a42f6f22bc4', 'App\\Notifications\\Add_service', 'App\\User', 6, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"saher\"}', NULL, '2022-07-09 08:21:19', '2022-07-09 08:21:19'),
('86e1bd5c-e15c-4097-a28a-08e231f1f0fa', 'App\\Notifications\\Add_service', 'App\\User', 17, '{\"id\":11,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"amir\"}', NULL, '2022-07-09 07:58:59', '2022-07-09 07:58:59'),
('8703ff35-c175-478f-82b4-8946854259ba', 'App\\Notifications\\Add_service', 'App\\User', 1, '{\"id\":26,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"heba\"}', '2022-07-09 08:50:45', '2022-07-09 08:37:53', '2022-07-09 08:50:45'),
('879c6d45-ad15-436c-b192-c3fbe3069bbd', 'App\\Notifications\\Add_service', 'App\\User', 4, '{\"id\":31,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"abd\"}', NULL, '2022-07-09 08:44:29', '2022-07-09 08:44:29'),
('87b3f76b-c982-4d9b-82e0-11a9e0572a9c', 'App\\Notifications\\Add_service', 'App\\User', 15, '{\"id\":31,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"abd\"}', NULL, '2022-07-09 08:44:30', '2022-07-09 08:44:30'),
('8807d6d1-f9e7-4a2f-87a1-93992fbdac6c', 'App\\Notifications\\Add_service', 'App\\User', 18, '{\"id\":23,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"heba\"}', NULL, '2022-07-09 08:34:52', '2022-07-09 08:34:52'),
('88147cb6-c0db-4692-a1de-501af4579cc6', 'App\\Notifications\\Add_service', 'App\\User', 9, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"saher\"}', NULL, '2022-07-09 08:21:19', '2022-07-09 08:21:19'),
('886522d2-1b2a-4f78-aea6-3c2fa659c323', 'App\\Notifications\\Add_service', 'App\\User', 7, '{\"id\":6,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-08 08:22:32', '2022-07-08 08:22:32'),
('8aa22e7c-45d6-4530-8c0a-9ef17d64e1f2', 'App\\Notifications\\Add_service', 'App\\User', 15, '{\"id\":21,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"yara\"}', NULL, '2022-07-09 08:30:47', '2022-07-09 08:30:47'),
('8cc24f16-76b9-4e2c-ae73-e965bf2a4175', 'App\\Notifications\\Add_service', 'App\\User', 13, '{\"id\":33,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-09 08:59:44', '2022-07-09 08:59:44'),
('8da9ada3-c95b-4e6e-a5d3-ae2775ea8793', 'App\\Notifications\\Add_service', 'App\\User', 3, '{\"id\":2,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"ahmad\"}', NULL, '2022-07-08 07:31:17', '2022-07-08 07:31:17'),
('8dd572cd-b566-4198-83ca-095edec60760', 'App\\Notifications\\Add_service', 'App\\User', 6, '{\"id\":10,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"ahmad\"}', NULL, '2022-07-09 07:57:25', '2022-07-09 07:57:25'),
('8e1ebb5f-bd1b-45e7-9c4d-7d4c7c183552', 'App\\Notifications\\Add_service', 'App\\User', 20, '{\"id\":10,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"ahmad\"}', NULL, '2022-07-09 07:57:25', '2022-07-09 07:57:25'),
('8e741191-bbc7-4f9b-b59a-c0b7b73bea7b', 'App\\Notifications\\Add_service', 'App\\User', 4, '{\"id\":11,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"amir\"}', NULL, '2022-07-09 07:58:58', '2022-07-09 07:58:58'),
('8ecd836a-c418-41fc-9612-4fe784d1b679', 'App\\Notifications\\Add_service', 'App\\User', 15, '{\"id\":24,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"heba\"}', NULL, '2022-07-09 08:35:51', '2022-07-09 08:35:51'),
('8f0143b7-bdad-4ce4-a6dc-62bcbb265548', 'App\\Notifications\\Add_service', 'App\\User', 8, '{\"id\":31,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"abd\"}', NULL, '2022-07-09 08:44:30', '2022-07-09 08:44:30'),
('8f44f292-8313-4e14-9aa7-6200cf68049b', 'App\\Notifications\\Add_service', 'App\\User', 11, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"saher\"}', NULL, '2022-07-09 08:21:19', '2022-07-09 08:21:19'),
('8f5b0638-fa74-4b72-8597-b59d2c13f507', 'App\\Notifications\\Add_service', 'App\\User', 4, '{\"id\":23,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"heba\"}', NULL, '2022-07-09 08:34:50', '2022-07-09 08:34:50'),
('8fbe15fc-2105-4cc8-b312-8be8a6002a9d', 'App\\Notifications\\Add_service', 'App\\User', 6, '{\"id\":11,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"amir\"}', NULL, '2022-07-09 07:58:58', '2022-07-09 07:58:58'),
('9032c82b-6f24-4680-97c9-b14a585db538', 'App\\Notifications\\Add_service', 'App\\User', 3, '{\"id\":18,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"lia\"}', NULL, '2022-07-09 08:26:46', '2022-07-09 08:26:46'),
('906fc742-e2e5-46e4-9a4d-5615f6d8e1c8', 'App\\Notifications\\Add_service', 'App\\User', 19, '{\"id\":34,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-09 09:02:23', '2022-07-09 09:02:23'),
('90fa1dbd-4431-40da-b47f-ec7f05d5d98e', 'App\\Notifications\\Add_service', 'App\\User', 13, '{\"id\":8,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-08 08:28:18', '2022-07-08 08:28:18'),
('912a6cad-a5cc-4177-ad99-7270bff7a974', 'App\\Notifications\\Add_message', 'App\\User', 4, '{\"id\":3,\"title\":\" \\u064a\\u0648\\u062c\\u062f \\u0631\\u0633\\u0627\\u0644\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0644\\u062f\\u064a\\u0643 \\u0645\\u0646 \\u0642\\u0628\\u0644 :\",\"user\":\"provider\"}', NULL, '2022-07-11 06:26:11', '2022-07-11 06:26:11'),
('91bcf06d-e6a8-4e09-820a-78241a2bc50b', 'App\\Notifications\\Add_service', 'App\\User', 17, '{\"id\":33,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-09 08:59:45', '2022-07-09 08:59:45'),
('91d77a17-2e2f-4e96-87a2-4829235522f9', 'App\\Notifications\\Add_service', 'App\\User', 14, '{\"id\":25,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"heba\"}', NULL, '2022-07-09 08:36:37', '2022-07-09 08:36:37'),
('91da5d5e-9566-4f88-9833-d884c3f410e4', 'App\\Notifications\\Add_service', 'App\\User', 4, '{\"id\":24,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"heba\"}', NULL, '2022-07-09 08:35:51', '2022-07-09 08:35:51'),
('92046992-789c-4b08-82a5-6997da004f6f', 'App\\Notifications\\Add_service', 'App\\User', 15, '{\"id\":22,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"yara\"}', NULL, '2022-07-09 08:32:08', '2022-07-09 08:32:08'),
('9205e4ea-b0ff-4765-8349-01cfa834b781', 'App\\Notifications\\Add_service', 'App\\User', 10, '{\"id\":30,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"abd\"}', NULL, '2022-07-09 08:43:53', '2022-07-09 08:43:53'),
('92994846-d3ff-4e63-a979-259f71c7cb14', 'App\\Notifications\\Add_service', 'App\\User', 11, '{\"id\":26,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"heba\"}', NULL, '2022-07-09 08:37:54', '2022-07-09 08:37:54'),
('92dfdce4-8766-4eb7-8696-c21e422d9a80', 'App\\Notifications\\Add_service', 'App\\User', 7, '{\"id\":25,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"heba\"}', NULL, '2022-07-09 08:36:37', '2022-07-09 08:36:37'),
('933ee013-10ca-4c1b-a9d2-51ee2957d90f', 'App\\Notifications\\Add_service', 'App\\User', 16, '{\"id\":5,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-08 08:21:36', '2022-07-08 08:21:36'),
('93db051b-f25a-4f93-8abc-c6c261f7ad80', 'App\\Notifications\\Add_service', 'App\\User', 20, '{\"id\":18,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"lia\"}', NULL, '2022-07-09 08:26:47', '2022-07-09 08:26:47'),
('94ab2a3e-1786-41ed-9ee7-af38002fe01c', 'App\\Notifications\\Add_service', 'App\\User', 7, '{\"id\":30,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"abd\"}', NULL, '2022-07-09 08:43:53', '2022-07-09 08:43:53'),
('95b35115-ad51-4c74-ac99-d54969dadc95', 'App\\Notifications\\Add_service', 'App\\User', 17, '{\"id\":2,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"ahmad\"}', NULL, '2022-07-08 07:31:19', '2022-07-08 07:31:19'),
('95b3de6c-c128-4388-93f4-0e621a3c9910', 'App\\Notifications\\Add_service', 'App\\User', 15, '{\"id\":3,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"yara\"}', NULL, '2022-07-08 07:36:47', '2022-07-08 07:36:47'),
('95e76e3f-955a-4b65-85b7-b84bbcdf1abd', 'App\\Notifications\\Add_service', 'App\\User', 7, '{\"id\":31,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"abd\"}', NULL, '2022-07-09 08:44:30', '2022-07-09 08:44:30'),
('95ec0f6a-68f6-4185-911a-383c2765f4c3', 'App\\Notifications\\Add_service', 'App\\User', 1, '{\"id\":17,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"lia\"}', '2022-07-09 08:50:47', '2022-07-09 08:25:08', '2022-07-09 08:50:47'),
('972aa42b-11e2-4c6d-8777-2d5d684fb00c', 'App\\Notifications\\Add_service', 'App\\User', 7, '{\"id\":19,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"lia\"}', NULL, '2022-07-09 08:27:34', '2022-07-09 08:27:34'),
('978e2082-ca5c-4b49-848a-2074d22dabf2', 'App\\Notifications\\Add_service', 'App\\User', 5, '{\"id\":16,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"saher\"}', NULL, '2022-07-09 08:23:24', '2022-07-09 08:23:24'),
('97ac0a31-9f55-4a5d-82be-c13f2047fa66', 'App\\Notifications\\Add_service', 'App\\User', 16, '{\"id\":28,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"abd\"}', NULL, '2022-07-09 08:41:21', '2022-07-09 08:41:21'),
('9854303c-bf8e-4725-ac3f-ab46e2ecec1f', 'App\\Notifications\\Add_service', 'App\\User', 10, '{\"id\":18,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"lia\"}', NULL, '2022-07-09 08:26:47', '2022-07-09 08:26:47'),
('98b66679-5ab5-46ef-8e87-369908a87e3b', 'App\\Notifications\\Add_service', 'App\\User', 18, '{\"id\":30,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"abd\"}', NULL, '2022-07-09 08:43:54', '2022-07-09 08:43:54'),
('992c93d1-e867-4050-b01c-db988ddc11c4', 'App\\Notifications\\Add_message', 'App\\User', 17, '{\"id\":2,\"title\":\" \\u064a\\u0648\\u062c\\u062f \\u0631\\u0633\\u0627\\u0644\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0644\\u062f\\u064a\\u0643 \\u0645\\u0646 \\u0642\\u0628\\u0644 :\",\"user\":\"lia\"}', NULL, '2022-07-09 10:23:41', '2022-07-09 10:23:41'),
('9948b457-a86e-49ac-911e-6525054783b3', 'App\\Notifications\\Add_service', 'App\\User', 3, '{\"id\":8,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-08 08:28:18', '2022-07-08 08:28:18'),
('994d94a3-7c8b-4691-b75e-d91c1e379e36', 'App\\Notifications\\Add_service', 'App\\User', 17, '{\"id\":24,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"heba\"}', NULL, '2022-07-09 08:35:51', '2022-07-09 08:35:51'),
('99d8ec92-4946-40d5-8082-4e64a4c605af', 'App\\Notifications\\Add_service', 'App\\User', 8, '{\"id\":5,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-08 08:21:34', '2022-07-08 08:21:34'),
('9a31255c-cc3c-470a-ac5b-27430ad48079', 'App\\Notifications\\Add_service', 'App\\User', 18, '{\"id\":24,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"heba\"}', NULL, '2022-07-09 08:35:51', '2022-07-09 08:35:51'),
('9a43dcaa-3ce7-4d2c-9940-7a3c2f43ac10', 'App\\Notifications\\Add_service', 'App\\User', 11, '{\"id\":7,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-08 08:23:39', '2022-07-08 08:23:39'),
('9a9f99d3-1331-4f94-9752-de41d785cf04', 'App\\Notifications\\Add_service', 'App\\User', 1, '{\"id\":19,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"lia\"}', '2022-07-09 08:50:46', '2022-07-09 08:27:34', '2022-07-09 08:50:46'),
('9ac782c0-3864-4b43-8f96-0d4e453db474', 'App\\Notifications\\Add_service', 'App\\User', 11, '{\"id\":28,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"abd\"}', NULL, '2022-07-09 08:41:21', '2022-07-09 08:41:21'),
('9b0e3341-6178-4912-ba58-f173e046eccb', 'App\\Notifications\\Add_message', 'App\\User', 3, '{\"id\":2,\"title\":\" \\u064a\\u0648\\u062c\\u062f \\u0631\\u0633\\u0627\\u0644\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0644\\u062f\\u064a\\u0643 \\u0645\\u0646 \\u0642\\u0628\\u0644 :\",\"user\":\"lia\"}', NULL, '2022-07-09 10:23:40', '2022-07-09 10:23:40'),
('9b57cfac-9444-4779-adf2-371c19105565', 'App\\Notifications\\Add_service', 'App\\User', 17, '{\"id\":21,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"yara\"}', NULL, '2022-07-09 08:30:48', '2022-07-09 08:30:48'),
('9b7043de-3ab6-4d0a-9be1-10c4e42658a4', 'App\\Notifications\\Add_service', 'App\\User', 18, '{\"id\":29,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"abd\"}', NULL, '2022-07-09 08:42:43', '2022-07-09 08:42:43'),
('9c3ab791-35c3-4312-8981-dbfb7c44651a', 'App\\Notifications\\Add_service', 'App\\User', 5, '{\"id\":11,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"amir\"}', NULL, '2022-07-09 07:58:58', '2022-07-09 07:58:58');
INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('9c7c5a88-3cd0-4d65-a112-3f10123b37b7', 'App\\Notifications\\Add_service', 'App\\User', 8, '{\"id\":33,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-09 08:59:43', '2022-07-09 08:59:43'),
('9cb9c8ee-3c57-47f3-82d4-e8531a2243c4', 'App\\Notifications\\Add_service', 'App\\User', 8, '{\"id\":21,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"yara\"}', NULL, '2022-07-09 08:30:47', '2022-07-09 08:30:47'),
('9d15bb39-bc7e-4411-b777-35e6d28a3fa7', 'App\\Notifications\\Add_service', 'App\\User', 4, '{\"id\":10,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"ahmad\"}', NULL, '2022-07-09 07:57:25', '2022-07-09 07:57:25'),
('9d18052f-6fff-4669-a589-a520d9af2b7e', 'App\\Notifications\\Add_service', 'App\\User', 12, '{\"id\":2,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"ahmad\"}', NULL, '2022-07-08 07:31:18', '2022-07-08 07:31:18'),
('9d5e574d-69a9-423b-8581-d0d9f93da9bb', 'App\\Notifications\\Add_service', 'App\\User', 20, '{\"id\":8,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-08 08:28:19', '2022-07-08 08:28:19'),
('9d950169-6a9b-4319-8ab3-9252d9e5184e', 'App\\Notifications\\Add_service', 'App\\User', 3, '{\"id\":28,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"abd\"}', NULL, '2022-07-09 08:41:21', '2022-07-09 08:41:21'),
('9e5c77d0-c993-4352-b09a-3bf3c40a110b', 'App\\Notifications\\Add_service', 'App\\User', 13, '{\"id\":22,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"yara\"}', NULL, '2022-07-09 08:32:07', '2022-07-09 08:32:07'),
('9f0f44aa-6dbe-4a9e-b147-bb8aca561cd4', 'App\\Notifications\\Add_service', 'App\\User', 15, '{\"id\":29,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"abd\"}', NULL, '2022-07-09 08:42:43', '2022-07-09 08:42:43'),
('a00faf09-0bc4-4158-a77c-9ee2fc14cb81', 'App\\Notifications\\Add_service', 'App\\User', 15, '{\"id\":10,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"ahmad\"}', NULL, '2022-07-09 07:57:25', '2022-07-09 07:57:25'),
('a06a09fe-a94c-4088-a9f0-e0d85de7364b', 'App\\Notifications\\Add_service', 'App\\User', 9, '{\"id\":11,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"amir\"}', NULL, '2022-07-09 07:58:59', '2022-07-09 07:58:59'),
('a0d28598-48d8-428d-a678-d1808b673026', 'App\\Notifications\\Add_service', 'App\\User', 17, '{\"id\":7,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-08 08:23:39', '2022-07-08 08:23:39'),
('a0e72189-59ec-476d-9743-7ba0103a3d36', 'App\\Notifications\\Add_service', 'App\\User', 15, '{\"id\":30,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"abd\"}', NULL, '2022-07-09 08:43:54', '2022-07-09 08:43:54'),
('a0f4ad28-f182-4ac8-8765-7cec053c628e', 'App\\Notifications\\Add_service', 'App\\User', 9, '{\"id\":4,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-08 08:20:19', '2022-07-08 08:20:19'),
('a1fef6b4-f748-4947-864d-d1c4f9e794e0', 'App\\Notifications\\Add_service', 'App\\User', 20, '{\"id\":22,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"yara\"}', NULL, '2022-07-09 08:32:09', '2022-07-09 08:32:09'),
('a202adcf-98cb-4051-b90e-ad4adcf9d0b9', 'App\\Notifications\\Add_service', 'App\\User', 15, '{\"id\":12,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"amir\"}', NULL, '2022-07-09 08:01:10', '2022-07-09 08:01:10'),
('a305ace0-8e5a-43c5-b07d-7aefc9c7ef57', 'App\\Notifications\\Add_service', 'App\\User', 8, '{\"id\":19,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"lia\"}', NULL, '2022-07-09 08:27:34', '2022-07-09 08:27:34'),
('a36ff916-8724-44f2-ba93-eacf0658aae6', 'App\\Notifications\\Add_message', 'App\\User', 14, '{\"id\":1,\"title\":\" \\u064a\\u0648\\u062c\\u062f \\u0631\\u0633\\u0627\\u0644\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0644\\u062f\\u064a\\u0643 \\u0645\\u0646 \\u0642\\u0628\\u0644 :\",\"user\":\"gamal\"}', NULL, '2022-07-08 08:45:09', '2022-07-08 08:45:09'),
('a399fca9-b855-40fc-aa8b-7678d9ba9f24', 'App\\Notifications\\Add_service', 'App\\User', 6, '{\"id\":19,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"lia\"}', NULL, '2022-07-09 08:27:34', '2022-07-09 08:27:34'),
('a3bd9507-dbc1-4012-aaee-948e000a455a', 'App\\Notifications\\Add_service', 'App\\User', 8, '{\"id\":1,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-08 07:29:21', '2022-07-08 07:29:21'),
('a3c0295f-a592-478a-a990-cd49538b7176', 'App\\Notifications\\Add_service', 'App\\User', 3, '{\"id\":13,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"amir\"}', NULL, '2022-07-09 08:02:22', '2022-07-09 08:02:22'),
('a497f68b-fca3-4dd2-9232-e9a7f260da27', 'App\\Notifications\\Add_service', 'App\\User', 18, '{\"id\":13,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"amir\"}', NULL, '2022-07-09 08:02:23', '2022-07-09 08:02:23'),
('a4bdd363-6ec4-46c3-8f12-ad2338a1c8e0', 'App\\Notifications\\Add_service', 'App\\User', 13, '{\"id\":6,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-08 08:22:33', '2022-07-08 08:22:33'),
('a4fbc424-ad29-4822-809f-7b66d5483ebb', 'App\\Notifications\\Add_message', 'App\\User', 15, '{\"id\":3,\"title\":\" \\u064a\\u0648\\u062c\\u062f \\u0631\\u0633\\u0627\\u0644\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0644\\u062f\\u064a\\u0643 \\u0645\\u0646 \\u0642\\u0628\\u0644 :\",\"user\":\"provider\"}', NULL, '2022-07-11 06:26:12', '2022-07-11 06:26:12'),
('a5e3b845-b341-4519-9cc6-d8efc486b99c', 'App\\Notifications\\Add_service', 'App\\User', 16, '{\"id\":1,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-08 07:29:23', '2022-07-08 07:29:23'),
('a6389b9b-2a31-496f-be99-b4ea115f4158', 'App\\Notifications\\Add_service', 'App\\User', 5, '{\"id\":9,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"ahmad\"}', NULL, '2022-07-09 07:56:12', '2022-07-09 07:56:12'),
('a68a3c19-7949-4bd6-8db1-64614217c240', 'App\\Notifications\\Add_service', 'App\\User', 9, '{\"id\":19,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"lia\"}', NULL, '2022-07-09 08:27:34', '2022-07-09 08:27:34'),
('a785820b-8483-44dd-87f6-f0e0994f7a8d', 'App\\Notifications\\Add_service', 'App\\User', 5, '{\"id\":33,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-09 08:59:43', '2022-07-09 08:59:43'),
('a7d8d40e-9a63-43cd-88c7-dc55fddfdc70', 'App\\Notifications\\Add_service', 'App\\User', 14, '{\"id\":26,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"heba\"}', NULL, '2022-07-09 08:37:55', '2022-07-09 08:37:55'),
('a82aa548-f7cb-4250-9852-0f0b600cf2f6', 'App\\Notifications\\Add_service', 'App\\User', 5, '{\"id\":6,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-08 08:22:32', '2022-07-08 08:22:32'),
('a854e150-de3a-4676-878a-0a4984d8a9ef', 'App\\Notifications\\Add_service', 'App\\User', 18, '{\"id\":5,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-08 08:21:37', '2022-07-08 08:21:37'),
('a941e6d3-f998-4f37-ba42-6ab109769221', 'App\\Notifications\\Add_service', 'App\\User', 1, '{\"id\":33,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-09 08:59:43', '2022-07-09 08:59:43'),
('a9aab52f-f983-433a-9542-99f23ee1987c', 'App\\Notifications\\Add_service', 'App\\User', 7, '{\"id\":29,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"abd\"}', NULL, '2022-07-09 08:42:42', '2022-07-09 08:42:42'),
('a9abc5e8-5cfc-43f7-b8af-34946bb2c3e5', 'App\\Notifications\\Add_service', 'App\\User', 19, '{\"id\":21,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"yara\"}', NULL, '2022-07-09 08:30:48', '2022-07-09 08:30:48'),
('a9f336c9-cdb1-4d98-b1ec-d87c3ea21dbc', 'App\\Notifications\\Add_service', 'App\\User', 6, '{\"id\":23,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"heba\"}', NULL, '2022-07-09 08:34:50', '2022-07-09 08:34:50'),
('a9f53926-7a88-47e3-9955-191be43275b0', 'App\\Notifications\\Add_service', 'App\\User', 14, '{\"id\":29,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"abd\"}', NULL, '2022-07-09 08:42:43', '2022-07-09 08:42:43'),
('aa514b39-8cab-4d98-8a4f-f80d5502488a', 'App\\Notifications\\Add_service', 'App\\User', 13, '{\"id\":29,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"abd\"}', NULL, '2022-07-09 08:42:43', '2022-07-09 08:42:43'),
('aafc3d3c-19dd-4b3d-9dde-6019fe3ff8e5', 'App\\Notifications\\Add_service', 'App\\User', 7, '{\"id\":24,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"heba\"}', NULL, '2022-07-09 08:35:51', '2022-07-09 08:35:51'),
('ab0e844d-5549-45f4-b221-7b590ae348c8', 'App\\Notifications\\Add_service', 'App\\User', 15, '{\"id\":13,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"amir\"}', NULL, '2022-07-09 08:02:23', '2022-07-09 08:02:23'),
('ab654d09-501f-48d4-bcd4-d453198ec4a4', 'App\\Notifications\\Add_service', 'App\\User', 6, '{\"id\":21,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"yara\"}', NULL, '2022-07-09 08:30:47', '2022-07-09 08:30:47'),
('ab6d4524-505c-48f9-ad2b-34ba6bef3c8f', 'App\\Notifications\\Add_service', 'App\\User', 7, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"saher\"}', NULL, '2022-07-09 08:21:19', '2022-07-09 08:21:19'),
('abbb0fc2-320a-4b94-b7c2-793781c0bf4f', 'App\\Notifications\\Add_service', 'App\\User', 10, '{\"id\":15,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"saher\"}', NULL, '2022-07-09 08:22:39', '2022-07-09 08:22:39'),
('abe89714-8d74-4805-be0c-a58635ac3f6a', 'App\\Notifications\\Add_service', 'App\\User', 12, '{\"id\":10,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"ahmad\"}', NULL, '2022-07-09 07:57:25', '2022-07-09 07:57:25'),
('ac326911-bbad-4c33-b8ae-c21ef5ad1863', 'App\\Notifications\\Add_service', 'App\\User', 20, '{\"id\":29,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"abd\"}', NULL, '2022-07-09 08:42:44', '2022-07-09 08:42:44'),
('ac98d7cd-c698-4b37-8c74-015bef6e8f24', 'App\\Notifications\\Add_message', 'App\\User', 7, '{\"id\":3,\"title\":\" \\u064a\\u0648\\u062c\\u062f \\u0631\\u0633\\u0627\\u0644\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0644\\u062f\\u064a\\u0643 \\u0645\\u0646 \\u0642\\u0628\\u0644 :\",\"user\":\"provider\"}', NULL, '2022-07-11 06:26:11', '2022-07-11 06:26:11'),
('aca90238-8926-4aa6-82b5-c5a26aa4e966', 'App\\Notifications\\Add_service', 'App\\User', 19, '{\"id\":30,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"abd\"}', NULL, '2022-07-09 08:43:54', '2022-07-09 08:43:54'),
('acabe87a-85f4-4386-9579-442651e5a23b', 'App\\Notifications\\Add_service', 'App\\User', 17, '{\"id\":4,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-08 08:20:20', '2022-07-08 08:20:20'),
('ad12c016-12bf-4987-a98e-16cbccab2b3a', 'App\\Notifications\\Add_service', 'App\\User', 10, '{\"id\":6,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-08 08:22:33', '2022-07-08 08:22:33'),
('ad4996a6-f607-4975-bf1a-8c098d196e60', 'App\\Notifications\\Add_service', 'App\\User', 3, '{\"id\":33,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-09 08:59:43', '2022-07-09 08:59:43'),
('aec43f14-ec23-4853-a176-fdf7e791bda5', 'App\\Notifications\\Add_message', 'App\\User', 6, '{\"id\":2,\"title\":\" \\u064a\\u0648\\u062c\\u062f \\u0631\\u0633\\u0627\\u0644\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0644\\u062f\\u064a\\u0643 \\u0645\\u0646 \\u0642\\u0628\\u0644 :\",\"user\":\"lia\"}', NULL, '2022-07-09 10:23:40', '2022-07-09 10:23:40'),
('af5df0d5-d69e-45d1-948e-21493fed5c81', 'App\\Notifications\\Add_service', 'App\\User', 9, '{\"id\":27,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"heba\"}', NULL, '2022-07-09 08:39:18', '2022-07-09 08:39:18'),
('affddcde-2111-4bc3-8ef5-18c5800bf367', 'App\\Notifications\\Add_service', 'App\\User', 14, '{\"id\":8,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-08 08:28:18', '2022-07-08 08:28:18'),
('b04c492a-9796-486c-ae2e-bc3febde3bec', 'App\\Notifications\\Add_service', 'App\\User', 10, '{\"id\":3,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"yara\"}', NULL, '2022-07-08 07:36:46', '2022-07-08 07:36:46'),
('b225ae71-f1c5-43b5-bcc4-606577067e1f', 'App\\Notifications\\Add_service', 'App\\User', 15, '{\"id\":15,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"saher\"}', NULL, '2022-07-09 08:22:39', '2022-07-09 08:22:39'),
('b25717cd-d5d6-4aba-82fc-a955db93e938', 'App\\Notifications\\Add_service', 'App\\User', 19, '{\"id\":32,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-09 08:57:29', '2022-07-09 08:57:29'),
('b2579d01-5340-4100-835b-60f2044e450f', 'App\\Notifications\\Add_service', 'App\\User', 8, '{\"id\":30,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"abd\"}', NULL, '2022-07-09 08:43:53', '2022-07-09 08:43:53'),
('b2b4bf12-c16d-4714-9213-a7fff8473f00', 'App\\Notifications\\Add_service', 'App\\User', 11, '{\"id\":20,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"yara\"}', NULL, '2022-07-09 08:29:03', '2022-07-09 08:29:03'),
('b2dd2c68-1025-497f-b825-a8686649fbc0', 'App\\Notifications\\Add_service', 'App\\User', 16, '{\"id\":25,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"heba\"}', NULL, '2022-07-09 08:36:37', '2022-07-09 08:36:37'),
('b30ca659-610e-4f5e-9957-6281e9f8c33d', 'App\\Notifications\\Add_service', 'App\\User', 10, '{\"id\":7,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-08 08:23:39', '2022-07-08 08:23:39'),
('b3408285-2851-40da-8dde-26eac03ddae0', 'App\\Notifications\\Add_service', 'App\\User', 12, '{\"id\":24,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"heba\"}', NULL, '2022-07-09 08:35:51', '2022-07-09 08:35:51'),
('b34e79da-fe02-4d0b-b5d6-96af299c1c1e', 'App\\Notifications\\Add_service', 'App\\User', 3, '{\"id\":24,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"heba\"}', NULL, '2022-07-09 08:35:51', '2022-07-09 08:35:51'),
('b37f4fbd-c729-4795-a519-2718794a97cf', 'App\\Notifications\\Add_service', 'App\\User', 9, '{\"id\":25,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"heba\"}', NULL, '2022-07-09 08:36:37', '2022-07-09 08:36:37'),
('b3e6cb89-c347-448d-b71b-afb340aba2ae', 'App\\Notifications\\Add_service', 'App\\User', 15, '{\"id\":9,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"ahmad\"}', NULL, '2022-07-09 07:56:13', '2022-07-09 07:56:13'),
('b3f0f67f-c071-4d9e-aa7d-e1f09dc515a6', 'App\\Notifications\\Add_service', 'App\\User', 3, '{\"id\":5,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-08 08:21:33', '2022-07-08 08:21:33'),
('b4020c34-74f7-4526-b136-12a056d431b4', 'App\\Notifications\\Add_service', 'App\\User', 9, '{\"id\":28,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"abd\"}', NULL, '2022-07-09 08:41:21', '2022-07-09 08:41:21'),
('b4032337-b51d-4f2e-b8bd-7be8d2685176', 'App\\Notifications\\Add_service', 'App\\User', 9, '{\"id\":24,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"heba\"}', NULL, '2022-07-09 08:35:51', '2022-07-09 08:35:51'),
('b4301663-cb54-4742-bc91-c1c657726fcd', 'App\\Notifications\\Add_message', 'App\\User', 11, '{\"id\":3,\"title\":\" \\u064a\\u0648\\u062c\\u062f \\u0631\\u0633\\u0627\\u0644\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0644\\u062f\\u064a\\u0643 \\u0645\\u0646 \\u0642\\u0628\\u0644 :\",\"user\":\"provider\"}', NULL, '2022-07-11 06:26:11', '2022-07-11 06:26:11'),
('b43a91c0-633e-41aa-adfd-4a1a3ad717c5', 'App\\Notifications\\Add_service', 'App\\User', 3, '{\"id\":15,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"saher\"}', NULL, '2022-07-09 08:22:39', '2022-07-09 08:22:39'),
('b479eb90-6f7b-4b58-b0cc-00ce10d01e48', 'App\\Notifications\\Add_service', 'App\\User', 11, '{\"id\":23,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"heba\"}', NULL, '2022-07-09 08:34:51', '2022-07-09 08:34:51'),
('b4aba7f5-bc65-4e0a-a02d-163d6123112c', 'App\\Notifications\\Add_service', 'App\\User', 9, '{\"id\":10,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"ahmad\"}', NULL, '2022-07-09 07:57:25', '2022-07-09 07:57:25'),
('b4c95ffc-aa29-4829-af80-2dcb5e037e3c', 'App\\Notifications\\Add_message', 'App\\User', 17, '{\"id\":1,\"title\":\" \\u064a\\u0648\\u062c\\u062f \\u0631\\u0633\\u0627\\u0644\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0644\\u062f\\u064a\\u0643 \\u0645\\u0646 \\u0642\\u0628\\u0644 :\",\"user\":\"gamal\"}', NULL, '2022-07-08 08:45:09', '2022-07-08 08:45:09'),
('b4f51797-1575-4936-b3ff-2c400a77609e', 'App\\Notifications\\Add_service', 'App\\User', 20, '{\"id\":32,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-09 08:57:29', '2022-07-09 08:57:29'),
('b515bf13-11f6-4433-b9c5-c0768c7611bc', 'App\\Notifications\\Add_service', 'App\\User', 9, '{\"id\":5,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-08 08:21:34', '2022-07-08 08:21:34'),
('b5ba6cf8-def8-4ce2-a7dc-c15c0303ae64', 'App\\Notifications\\Add_service', 'App\\User', 8, '{\"id\":2,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"ahmad\"}', NULL, '2022-07-08 07:31:18', '2022-07-08 07:31:18'),
('b5c1b91e-a35b-4403-b664-c7da377a18af', 'App\\Notifications\\Add_service', 'App\\User', 9, '{\"id\":30,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"abd\"}', NULL, '2022-07-09 08:43:53', '2022-07-09 08:43:53'),
('b5cee07f-1107-44eb-9b73-89e868a40349', 'App\\Notifications\\Add_service', 'App\\User', 16, '{\"id\":34,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-09 09:02:22', '2022-07-09 09:02:22'),
('b5d72f6e-a045-49ee-8d51-175050da1d77', 'App\\Notifications\\Add_message', 'App\\User', 18, '{\"id\":1,\"title\":\" \\u064a\\u0648\\u062c\\u062f \\u0631\\u0633\\u0627\\u0644\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0644\\u062f\\u064a\\u0643 \\u0645\\u0646 \\u0642\\u0628\\u0644 :\",\"user\":\"gamal\"}', NULL, '2022-07-08 08:45:09', '2022-07-08 08:45:09'),
('b5dac13b-dc8d-4cc8-9668-1fe21e1756dd', 'App\\Notifications\\Add_service', 'App\\User', 20, '{\"id\":25,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"heba\"}', NULL, '2022-07-09 08:36:37', '2022-07-09 08:36:37'),
('b60b36ed-5f54-4703-90f2-292002eed516', 'App\\Notifications\\Add_service', 'App\\User', 20, '{\"id\":31,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"abd\"}', NULL, '2022-07-09 08:44:30', '2022-07-09 08:44:30'),
('b6cbc159-21a3-48a7-b0b5-e7f4e7c47da5', 'App\\Notifications\\Add_service', 'App\\User', 3, '{\"id\":22,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"yara\"}', NULL, '2022-07-09 08:32:06', '2022-07-09 08:32:06'),
('b7484735-1bf1-413d-89be-f28fc6a1f0ff', 'App\\Notifications\\Add_service', 'App\\User', 9, '{\"id\":29,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"abd\"}', NULL, '2022-07-09 08:42:42', '2022-07-09 08:42:42'),
('b753c1c3-a700-4524-b0c6-52492bc2a6a1', 'App\\Notifications\\Add_service', 'App\\User', 20, '{\"id\":4,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-08 08:20:21', '2022-07-08 08:20:21'),
('b7825298-2d4e-4e45-a77e-8e096c1e1f50', 'App\\Notifications\\Add_service', 'App\\User', 13, '{\"id\":19,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"lia\"}', NULL, '2022-07-09 08:27:34', '2022-07-09 08:27:34'),
('b7a69df0-8555-42af-a33a-f810c1a221de', 'App\\Notifications\\Add_service', 'App\\User', 14, '{\"id\":11,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"amir\"}', NULL, '2022-07-09 07:58:59', '2022-07-09 07:58:59'),
('b829bf36-23f8-434a-897e-adfce8732c36', 'App\\Notifications\\Add_service', 'App\\User', 15, '{\"id\":5,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-08 08:21:36', '2022-07-08 08:21:36'),
('b854d4c8-62d6-4673-8c49-cbb128ceb24d', 'App\\Notifications\\Add_service', 'App\\User', 9, '{\"id\":17,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"lia\"}', NULL, '2022-07-09 08:25:08', '2022-07-09 08:25:08'),
('b934f9d8-e330-404b-bb89-6447415bd7d9', 'App\\Notifications\\Add_service', 'App\\User', 12, '{\"id\":28,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"abd\"}', NULL, '2022-07-09 08:41:21', '2022-07-09 08:41:21'),
('b98f6834-f48a-4666-a099-826d5e902bb3', 'App\\Notifications\\Add_service', 'App\\User', 19, '{\"id\":31,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"abd\"}', NULL, '2022-07-09 08:44:30', '2022-07-09 08:44:30'),
('b9cf3da2-103f-48e1-9e6f-ce17847b7569', 'App\\Notifications\\Add_service', 'App\\User', 6, '{\"id\":24,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"heba\"}', NULL, '2022-07-09 08:35:51', '2022-07-09 08:35:51'),
('ba4d0928-aaa5-4923-a58f-e42539fed9f6', 'App\\Notifications\\Add_service', 'App\\User', 7, '{\"id\":34,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-09 09:02:22', '2022-07-09 09:02:22'),
('ba7dbee6-8127-41cf-ae16-384cf5a3a8aa', 'App\\Notifications\\Add_service', 'App\\User', 13, '{\"id\":15,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"saher\"}', NULL, '2022-07-09 08:22:39', '2022-07-09 08:22:39'),
('babacc61-12f5-4978-b0b3-314897c5736a', 'App\\Notifications\\Add_service', 'App\\User', 14, '{\"id\":12,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"amir\"}', NULL, '2022-07-09 08:01:10', '2022-07-09 08:01:10'),
('bbb05b04-35c3-45dd-a9ad-9f857d021c5d', 'App\\Notifications\\Add_service', 'App\\User', 11, '{\"id\":32,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-09 08:57:29', '2022-07-09 08:57:29'),
('bbcdd60b-cce6-4b3f-a2e6-736c67bc2362', 'App\\Notifications\\Add_service', 'App\\User', 3, '{\"id\":6,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-08 08:22:32', '2022-07-08 08:22:32'),
('bc41a01d-1168-4676-9070-0f86ea7dbbff', 'App\\Notifications\\Add_service', 'App\\User', 6, '{\"id\":5,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-08 08:21:33', '2022-07-08 08:21:33'),
('bc82e9e7-d693-404c-b339-c0d0a24abf16', 'App\\Notifications\\Add_service', 'App\\User', 12, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"saher\"}', NULL, '2022-07-09 08:21:19', '2022-07-09 08:21:19'),
('bcdc02d4-ae03-4af5-bdf9-20bdb7b089f7', 'App\\Notifications\\Add_service', 'App\\User', 14, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"saher\"}', NULL, '2022-07-09 08:21:20', '2022-07-09 08:21:20'),
('bcf415f7-4eb1-4f2b-be6b-cc30277fbb19', 'App\\Notifications\\Add_message', 'App\\User', 1, '{\"id\":1,\"title\":\" \\u064a\\u0648\\u062c\\u062f \\u0631\\u0633\\u0627\\u0644\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0644\\u062f\\u064a\\u0643 \\u0645\\u0646 \\u0642\\u0628\\u0644 :\",\"user\":\"gamal\"}', '2022-07-09 07:33:11', '2022-07-08 08:45:09', '2022-07-09 07:33:11'),
('bd504a9e-a701-4e95-8e96-cf832fb4f633', 'App\\Notifications\\Add_service', 'App\\User', 8, '{\"id\":15,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"saher\"}', NULL, '2022-07-09 08:22:39', '2022-07-09 08:22:39'),
('bd6f8d09-86c5-422a-a9b1-02285ba96484', 'App\\Notifications\\Add_service', 'App\\User', 7, '{\"id\":13,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"amir\"}', NULL, '2022-07-09 08:02:22', '2022-07-09 08:02:22'),
('be12a06a-b0ba-44e2-ae52-76db4ea43ff8', 'App\\Notifications\\Add_service', 'App\\User', 7, '{\"id\":11,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"amir\"}', NULL, '2022-07-09 07:58:58', '2022-07-09 07:58:58'),
('befba9ab-acda-4289-ac6d-9516d4ffe35d', 'App\\Notifications\\Add_service', 'App\\User', 15, '{\"id\":34,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-09 09:02:22', '2022-07-09 09:02:22'),
('bf23c384-d75f-4132-b1f1-4dce6204658d', 'App\\Notifications\\Add_service', 'App\\User', 4, '{\"id\":21,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"yara\"}', NULL, '2022-07-09 08:30:47', '2022-07-09 08:30:47'),
('bf4cbbe5-baa1-4380-b257-2e19c7f10997', 'App\\Notifications\\Add_service', 'App\\User', 11, '{\"id\":1,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-08 07:29:22', '2022-07-08 07:29:22'),
('bfb97fd7-53cf-4014-a7d4-ac98d72e4b60', 'App\\Notifications\\Add_service', 'App\\User', 20, '{\"id\":20,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"yara\"}', NULL, '2022-07-09 08:29:03', '2022-07-09 08:29:03'),
('c0acd21f-7996-4c79-b926-356413078466', 'App\\Notifications\\Add_service', 'App\\User', 8, '{\"id\":24,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"heba\"}', NULL, '2022-07-09 08:35:51', '2022-07-09 08:35:51'),
('c0e6fb21-03eb-4844-9090-dc66950c8826', 'App\\Notifications\\Add_service', 'App\\User', 13, '{\"id\":27,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"heba\"}', NULL, '2022-07-09 08:39:18', '2022-07-09 08:39:18'),
('c133f1e1-7739-43df-9753-c5a4d6073e89', 'App\\Notifications\\Add_service', 'App\\User', 8, '{\"id\":3,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"yara\"}', NULL, '2022-07-08 07:36:46', '2022-07-08 07:36:46'),
('c19c6541-c237-437c-8c27-2d4a667bb7e8', 'App\\Notifications\\Add_service', 'App\\User', 6, '{\"id\":18,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"lia\"}', NULL, '2022-07-09 08:26:47', '2022-07-09 08:26:47'),
('c1b67add-947b-4fed-ba66-9a42b2a3dd9f', 'App\\Notifications\\Add_service', 'App\\User', 5, '{\"id\":10,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"ahmad\"}', NULL, '2022-07-09 07:57:25', '2022-07-09 07:57:25'),
('c20b61eb-4235-4a2a-ab50-164ee9d54c8c', 'App\\Notifications\\Add_service', 'App\\User', 5, '{\"id\":19,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"lia\"}', NULL, '2022-07-09 08:27:34', '2022-07-09 08:27:34'),
('c235e86d-2afc-4b7c-bc17-81f61c18defe', 'App\\Notifications\\Add_service', 'App\\User', 18, '{\"id\":10,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"ahmad\"}', NULL, '2022-07-09 07:57:25', '2022-07-09 07:57:25'),
('c2561d78-f07d-4d13-ac5e-aa666f5c100d', 'App\\Notifications\\Add_service', 'App\\User', 12, '{\"id\":31,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"abd\"}', NULL, '2022-07-09 08:44:30', '2022-07-09 08:44:30'),
('c35eb481-031f-4e4f-a4e9-aea0d90ed9d1', 'App\\Notifications\\Add_service', 'App\\User', 5, '{\"id\":17,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"lia\"}', NULL, '2022-07-09 08:25:08', '2022-07-09 08:25:08'),
('c3abc187-27a1-49e4-85af-c84d80595476', 'App\\Notifications\\Add_message', 'App\\User', 1, '{\"id\":2,\"title\":\" \\u064a\\u0648\\u062c\\u062f \\u0631\\u0633\\u0627\\u0644\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0644\\u062f\\u064a\\u0643 \\u0645\\u0646 \\u0642\\u0628\\u0644 :\",\"user\":\"lia\"}', NULL, '2022-07-09 10:23:40', '2022-07-09 10:23:40'),
('c3d5b428-78ff-4b7d-8462-9757c264d437', 'App\\Notifications\\Add_service', 'App\\User', 17, '{\"id\":15,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"saher\"}', NULL, '2022-07-09 08:22:40', '2022-07-09 08:22:40'),
('c409c6df-0bc8-4e75-9a31-5a13f48dc3fe', 'App\\Notifications\\Add_service', 'App\\User', 14, '{\"id\":34,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-09 09:02:22', '2022-07-09 09:02:22'),
('c413a08b-b014-4799-8ec8-2ef560e8d6e0', 'App\\Notifications\\Add_service', 'App\\User', 4, '{\"id\":16,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"saher\"}', NULL, '2022-07-09 08:23:24', '2022-07-09 08:23:24'),
('c413c904-5369-4c54-b788-3ba6bd655556', 'App\\Notifications\\Add_service', 'App\\User', 4, '{\"id\":13,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"amir\"}', NULL, '2022-07-09 08:02:22', '2022-07-09 08:02:22'),
('c4a47560-1df1-4656-a5e8-3476ffdff80d', 'App\\Notifications\\Add_service', 'App\\User', 20, '{\"id\":12,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"amir\"}', NULL, '2022-07-09 08:01:10', '2022-07-09 08:01:10'),
('c4d58473-b363-4fd5-935f-696de0e365cc', 'App\\Notifications\\Add_service', 'App\\User', 17, '{\"id\":22,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"yara\"}', NULL, '2022-07-09 08:32:09', '2022-07-09 08:32:09'),
('c4e4696e-b87b-43d6-94eb-fbe050bf67dc', 'App\\Notifications\\Add_service', 'App\\User', 20, '{\"id\":13,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"amir\"}', NULL, '2022-07-09 08:02:24', '2022-07-09 08:02:24'),
('c4f6ebcd-de5c-4eeb-8732-a9432c65bcc7', 'App\\Notifications\\Add_service', 'App\\User', 10, '{\"id\":25,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"heba\"}', NULL, '2022-07-09 08:36:37', '2022-07-09 08:36:37'),
('c5786e3f-4166-4475-9d8d-84a74ee74446', 'App\\Notifications\\Add_service', 'App\\User', 7, '{\"id\":21,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"yara\"}', NULL, '2022-07-09 08:30:47', '2022-07-09 08:30:47'),
('c5c1facf-4db1-459d-a586-819f8492046c', 'App\\Notifications\\Add_service', 'App\\User', 11, '{\"id\":16,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"saher\"}', NULL, '2022-07-09 08:23:24', '2022-07-09 08:23:24'),
('c60f17ba-117b-48ea-b427-e5ebd72cb331', 'App\\Notifications\\Add_service', 'App\\User', 19, '{\"id\":20,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"yara\"}', NULL, '2022-07-09 08:29:03', '2022-07-09 08:29:03'),
('c6db2bdd-14e2-45e3-b5e6-363b8fa333d7', 'App\\Notifications\\Add_service', 'App\\User', 8, '{\"id\":11,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"amir\"}', NULL, '2022-07-09 07:58:58', '2022-07-09 07:58:58'),
('c71b7fd5-e1c5-4d3e-9a61-b7dbec745671', 'App\\Notifications\\Add_service', 'App\\User', 4, '{\"id\":30,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"abd\"}', NULL, '2022-07-09 08:43:53', '2022-07-09 08:43:53'),
('c741c956-fa11-4352-93f9-7f83a9864c9c', 'App\\Notifications\\Add_service', 'App\\User', 20, '{\"id\":7,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-08 08:23:40', '2022-07-08 08:23:40'),
('c7529bb6-802d-4364-b79d-049145c42707', 'App\\Notifications\\Add_service', 'App\\User', 3, '{\"id\":27,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"heba\"}', NULL, '2022-07-09 08:39:17', '2022-07-09 08:39:17'),
('c77d6a9d-f071-4e59-ba43-70b3ab2ccc4f', 'App\\Notifications\\Add_service', 'App\\User', 15, '{\"id\":7,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-08 08:23:39', '2022-07-08 08:23:39'),
('c78d1300-99c3-4e3c-ab55-3be4195c843f', 'App\\Notifications\\Add_service', 'App\\User', 9, '{\"id\":26,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"heba\"}', NULL, '2022-07-09 08:37:53', '2022-07-09 08:37:53'),
('c8091306-6235-43f3-b55b-b828bcfdd872', 'App\\Notifications\\Add_message', 'App\\User', 8, '{\"id\":1,\"title\":\" \\u064a\\u0648\\u062c\\u062f \\u0631\\u0633\\u0627\\u0644\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0644\\u062f\\u064a\\u0643 \\u0645\\u0646 \\u0642\\u0628\\u0644 :\",\"user\":\"gamal\"}', NULL, '2022-07-08 08:45:09', '2022-07-08 08:45:09'),
('c8455981-d219-4b19-b473-3bf2cceb0854', 'App\\Notifications\\Add_service', 'App\\User', 6, '{\"id\":25,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"heba\"}', NULL, '2022-07-09 08:36:37', '2022-07-09 08:36:37'),
('c8e5c6af-1d63-47dc-856c-a16fb7705b32', 'App\\Notifications\\Add_service', 'App\\User', 1, '{\"id\":25,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"heba\"}', '2022-07-09 08:50:45', '2022-07-09 08:36:36', '2022-07-09 08:50:45'),
('cb13e541-b369-4e43-8721-edc7183c61ee', 'App\\Notifications\\Add_service', 'App\\User', 7, '{\"id\":22,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"yara\"}', NULL, '2022-07-09 08:32:06', '2022-07-09 08:32:06'),
('cb72ce54-66f2-477f-96a2-d6f8970fe7bc', 'App\\Notifications\\Add_service', 'App\\User', 7, '{\"id\":16,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"saher\"}', NULL, '2022-07-09 08:23:24', '2022-07-09 08:23:24'),
('cbe44e29-fa64-4eb5-864a-696d8bede71e', 'App\\Notifications\\Add_service', 'App\\User', 4, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"saher\"}', NULL, '2022-07-09 08:21:19', '2022-07-09 08:21:19'),
('ccd44afa-6010-4573-b1cc-1ae819ad2d24', 'App\\Notifications\\Add_service', 'App\\User', 3, '{\"id\":10,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"ahmad\"}', NULL, '2022-07-09 07:57:25', '2022-07-09 07:57:25'),
('cce83909-a029-437f-898b-b7acfafcf9ed', 'App\\Notifications\\Add_service', 'App\\User', 19, '{\"id\":8,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-08 08:28:19', '2022-07-08 08:28:19'),
('cd74f639-59f1-464d-9f0e-8330780462f0', 'App\\Notifications\\Add_service', 'App\\User', 19, '{\"id\":23,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"heba\"}', NULL, '2022-07-09 08:34:52', '2022-07-09 08:34:52'),
('cd85a14e-e860-41af-8637-504ee8483282', 'App\\Notifications\\Add_service', 'App\\User', 14, '{\"id\":7,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-08 08:23:39', '2022-07-08 08:23:39');
INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('cdaf4723-5bc3-4e8b-b6a6-1c6accc4de0c', 'App\\Notifications\\Add_service', 'App\\User', 1, '{\"id\":31,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"abd\"}', '2022-07-09 08:50:43', '2022-07-09 08:44:29', '2022-07-09 08:50:43'),
('cdc1abff-e3ef-4f40-8ea0-8e18718b3eda', 'App\\Notifications\\Add_message', 'App\\User', 13, '{\"id\":2,\"title\":\" \\u064a\\u0648\\u062c\\u062f \\u0631\\u0633\\u0627\\u0644\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0644\\u062f\\u064a\\u0643 \\u0645\\u0646 \\u0642\\u0628\\u0644 :\",\"user\":\"lia\"}', NULL, '2022-07-09 10:23:41', '2022-07-09 10:23:41'),
('cf4640db-46b8-4ae3-9379-e17c52cda6de', 'App\\Notifications\\Add_service', 'App\\User', 19, '{\"id\":26,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"heba\"}', NULL, '2022-07-09 08:37:55', '2022-07-09 08:37:55'),
('cf4b6305-b765-4258-aa39-6ae5c1003a56', 'App\\Notifications\\Add_service', 'App\\User', 5, '{\"id\":4,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-08 08:20:19', '2022-07-08 08:20:19'),
('cf5756da-4738-4472-a1ef-0973e2070eef', 'App\\Notifications\\Add_service', 'App\\User', 1, '{\"id\":12,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"amir\"}', '2022-07-09 08:50:47', '2022-07-09 08:01:10', '2022-07-09 08:50:47'),
('cf885fc2-1d65-46e1-9ca6-db496a62ad9c', 'App\\Notifications\\Add_service', 'App\\User', 3, '{\"id\":4,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-08 08:20:19', '2022-07-08 08:20:19'),
('cfcf4ae3-a025-4e6c-972e-dcd60f716920', 'App\\Notifications\\Add_service', 'App\\User', 7, '{\"id\":10,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"ahmad\"}', NULL, '2022-07-09 07:57:25', '2022-07-09 07:57:25'),
('d021b18a-4a7f-4728-9965-1f9ec0d33625', 'App\\Notifications\\Add_service', 'App\\User', 8, '{\"id\":20,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"yara\"}', NULL, '2022-07-09 08:29:03', '2022-07-09 08:29:03'),
('d024ec3b-fb0c-40b1-9b1a-121f47f4e166', 'App\\Notifications\\Add_service', 'App\\User', 17, '{\"id\":8,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-08 08:28:18', '2022-07-08 08:28:18'),
('d0dee291-d5f6-44f9-be6f-0578a556567e', 'App\\Notifications\\Add_service', 'App\\User', 11, '{\"id\":33,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-09 08:59:44', '2022-07-09 08:59:44'),
('d10787d3-539e-4f23-bbfe-8fbfa0a42fbe', 'App\\Notifications\\Add_service', 'App\\User', 17, '{\"id\":20,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"yara\"}', NULL, '2022-07-09 08:29:03', '2022-07-09 08:29:03'),
('d1780848-7d4b-45f4-bd53-d49ab1f1b230', 'App\\Notifications\\Add_service', 'App\\User', 9, '{\"id\":15,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"saher\"}', NULL, '2022-07-09 08:22:39', '2022-07-09 08:22:39'),
('d1e3cf49-3c2e-4eac-886d-8f5c6a827b36', 'App\\Notifications\\Add_service', 'App\\User', 18, '{\"id\":4,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-08 08:20:20', '2022-07-08 08:20:20'),
('d2184ddd-8839-4b00-84a2-b8a3db4fc320', 'App\\Notifications\\Add_service', 'App\\User', 15, '{\"id\":6,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-08 08:22:33', '2022-07-08 08:22:33'),
('d2187fa1-4037-4a6b-8af7-4da354c4b24f', 'App\\Notifications\\Add_service', 'App\\User', 4, '{\"id\":8,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-08 08:28:18', '2022-07-08 08:28:18'),
('d23346b3-8cdd-430e-b51f-17150921e73d', 'App\\Notifications\\Add_service', 'App\\User', 3, '{\"id\":9,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"ahmad\"}', NULL, '2022-07-09 07:56:12', '2022-07-09 07:56:12'),
('d243de8f-e39d-4e27-9897-03e1bc2f1a72', 'App\\Notifications\\Add_service', 'App\\User', 14, '{\"id\":19,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"lia\"}', NULL, '2022-07-09 08:27:34', '2022-07-09 08:27:34'),
('d245a5ea-a5c1-4362-b57b-b6569bbb135c', 'App\\Notifications\\Add_service', 'App\\User', 10, '{\"id\":11,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"amir\"}', NULL, '2022-07-09 07:58:59', '2022-07-09 07:58:59'),
('d24788b7-2f69-4d08-a537-efbf67ec43eb', 'App\\Notifications\\Add_service', 'App\\User', 12, '{\"id\":22,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"yara\"}', NULL, '2022-07-09 08:32:07', '2022-07-09 08:32:07'),
('d25e1fb7-868e-4e79-9515-59788715fbef', 'App\\Notifications\\Add_service', 'App\\User', 16, '{\"id\":20,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"yara\"}', NULL, '2022-07-09 08:29:03', '2022-07-09 08:29:03'),
('d272163c-4a1c-4dd3-9909-81e24c42f90e', 'App\\Notifications\\Add_service', 'App\\User', 9, '{\"id\":12,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"amir\"}', NULL, '2022-07-09 08:01:10', '2022-07-09 08:01:10'),
('d27880ce-5447-4af0-8f02-a647ee9d7979', 'App\\Notifications\\Add_message', 'App\\User', 10, '{\"id\":2,\"title\":\" \\u064a\\u0648\\u062c\\u062f \\u0631\\u0633\\u0627\\u0644\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0644\\u062f\\u064a\\u0643 \\u0645\\u0646 \\u0642\\u0628\\u0644 :\",\"user\":\"lia\"}', NULL, '2022-07-09 10:23:40', '2022-07-09 10:23:40'),
('d302b676-71f0-4738-b7a6-c7131df4f6bb', 'App\\Notifications\\Add_service', 'App\\User', 12, '{\"id\":20,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"yara\"}', NULL, '2022-07-09 08:29:03', '2022-07-09 08:29:03'),
('d35d3dbb-d5dd-46e8-afac-dc59664e2caf', 'App\\Notifications\\Add_service', 'App\\User', 6, '{\"id\":7,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-08 08:23:39', '2022-07-08 08:23:39'),
('d3bea0a8-ab43-4121-b3e7-1d0c29e917ff', 'App\\Notifications\\Add_service', 'App\\User', 7, '{\"id\":4,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-08 08:20:19', '2022-07-08 08:20:19'),
('d3db2bef-6800-4558-bcc2-c451232ab3f1', 'App\\Notifications\\Add_service', 'App\\User', 5, '{\"id\":23,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"heba\"}', NULL, '2022-07-09 08:34:50', '2022-07-09 08:34:50'),
('d41e2a3f-3a94-4a77-8616-b22b8f423d5f', 'App\\Notifications\\Add_service', 'App\\User', 8, '{\"id\":17,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"lia\"}', NULL, '2022-07-09 08:25:08', '2022-07-09 08:25:08'),
('d43d0ef0-a120-4e26-b78a-d331fcfba845', 'App\\Notifications\\Add_service', 'App\\User', 19, '{\"id\":28,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"abd\"}', NULL, '2022-07-09 08:41:21', '2022-07-09 08:41:21'),
('d4aebb1c-9653-4ef8-94be-ff481754f891', 'App\\Notifications\\Add_service', 'App\\User', 20, '{\"id\":33,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-09 08:59:45', '2022-07-09 08:59:45'),
('d5054af6-aac2-4325-a71a-ec0153489aab', 'App\\Notifications\\Add_service', 'App\\User', 20, '{\"id\":9,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"ahmad\"}', NULL, '2022-07-09 07:56:13', '2022-07-09 07:56:13'),
('d51e7a10-f0b6-40d8-abe9-0dd3b36177ff', 'App\\Notifications\\Add_service', 'App\\User', 1, '{\"id\":23,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"heba\"}', '2022-07-09 08:50:45', '2022-07-09 08:34:50', '2022-07-09 08:50:45'),
('d5877632-cd41-4654-a05b-190d34181116', 'App\\Notifications\\Add_service', 'App\\User', 13, '{\"id\":28,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"abd\"}', NULL, '2022-07-09 08:41:21', '2022-07-09 08:41:21'),
('d6b48751-9e88-4bc6-b6c8-e826a889e22f', 'App\\Notifications\\Add_service', 'App\\User', 13, '{\"id\":21,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"yara\"}', NULL, '2022-07-09 08:30:47', '2022-07-09 08:30:47'),
('d6f43ae3-72d0-4d67-9890-d84622c05507', 'App\\Notifications\\Add_service', 'App\\User', 10, '{\"id\":13,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"amir\"}', NULL, '2022-07-09 08:02:22', '2022-07-09 08:02:22'),
('d71ff3ab-24ff-4014-87c8-6eec0c2a079e', 'App\\Notifications\\Add_message', 'App\\User', 11, '{\"id\":1,\"title\":\" \\u064a\\u0648\\u062c\\u062f \\u0631\\u0633\\u0627\\u0644\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0644\\u062f\\u064a\\u0643 \\u0645\\u0646 \\u0642\\u0628\\u0644 :\",\"user\":\"gamal\"}', NULL, '2022-07-08 08:45:09', '2022-07-08 08:45:09'),
('d7fcec32-3373-434d-ab2a-dc08167eaa6e', 'App\\Notifications\\Add_service', 'App\\User', 15, '{\"id\":23,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"heba\"}', NULL, '2022-07-09 08:34:52', '2022-07-09 08:34:52'),
('d85a161d-ec89-4200-a739-88d4e14c7d8f', 'App\\Notifications\\Add_service', 'App\\User', 6, '{\"id\":8,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-08 08:28:18', '2022-07-08 08:28:18'),
('d88b360a-d33f-4d70-a9e6-56ea09315095', 'App\\Notifications\\Add_service', 'App\\User', 7, '{\"id\":20,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"yara\"}', NULL, '2022-07-09 08:29:03', '2022-07-09 08:29:03'),
('d8d15fbf-1392-4c1b-90a0-784ad4b35be3', 'App\\Notifications\\Add_service', 'App\\User', 1, '{\"id\":7,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', '2022-07-09 07:33:11', '2022-07-08 08:23:38', '2022-07-09 07:33:11'),
('d8df4d96-6fc2-449c-928a-13668224ed9f', 'App\\Notifications\\Add_service', 'App\\User', 5, '{\"id\":7,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-08 08:23:39', '2022-07-08 08:23:39'),
('d9532dfd-b9e3-45db-8091-daae1ec237b7', 'App\\Notifications\\Add_service', 'App\\User', 1, '{\"id\":8,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', '2022-07-09 07:33:11', '2022-07-08 08:28:17', '2022-07-09 07:33:11'),
('d9ac0833-5d6b-4b5f-8c88-3981f74c1277', 'App\\Notifications\\Add_service', 'App\\User', 19, '{\"id\":4,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-08 08:20:20', '2022-07-08 08:20:20'),
('d9b836ef-b21e-4f59-8b19-47ce7f0d8705', 'App\\Notifications\\Add_service', 'App\\User', 17, '{\"id\":10,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"ahmad\"}', NULL, '2022-07-09 07:57:25', '2022-07-09 07:57:25'),
('d9bb5f4f-69f3-4acb-b407-441522426f6a', 'App\\Notifications\\Add_service', 'App\\User', 8, '{\"id\":13,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"amir\"}', NULL, '2022-07-09 08:02:22', '2022-07-09 08:02:22'),
('d9c7c379-a4ae-4e7f-ae91-43b47b96dec8', 'App\\Notifications\\Add_service', 'App\\User', 16, '{\"id\":10,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"ahmad\"}', NULL, '2022-07-09 07:57:25', '2022-07-09 07:57:25'),
('da6fb4bd-4fe7-4510-9600-8ba5c962f9ee', 'App\\Notifications\\Add_service', 'App\\User', 4, '{\"id\":29,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"abd\"}', NULL, '2022-07-09 08:42:42', '2022-07-09 08:42:42'),
('daecf1ad-df20-48c0-ae1e-6e22ce3bef0f', 'App\\Notifications\\Add_service', 'App\\User', 1, '{\"id\":30,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"abd\"}', '2022-07-09 08:50:44', '2022-07-09 08:43:53', '2022-07-09 08:50:44'),
('db121f25-c86e-406c-8994-70ed9df585ea', 'App\\Notifications\\Add_service', 'App\\User', 7, '{\"id\":15,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"saher\"}', NULL, '2022-07-09 08:22:39', '2022-07-09 08:22:39'),
('db2d7f9f-3020-46ce-befa-713693c39648', 'App\\Notifications\\Add_service', 'App\\User', 19, '{\"id\":25,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"heba\"}', NULL, '2022-07-09 08:36:37', '2022-07-09 08:36:37'),
('db4cbce1-3c6d-449d-b3c1-4e34139de8d7', 'App\\Notifications\\Add_service', 'App\\User', 15, '{\"id\":17,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"lia\"}', NULL, '2022-07-09 08:25:09', '2022-07-09 08:25:09'),
('dbc6ed79-171e-4cd6-8651-2f39df1e78ae', 'App\\Notifications\\Add_service', 'App\\User', 8, '{\"id\":4,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-08 08:20:19', '2022-07-08 08:20:19'),
('dc20af68-9a3f-4c00-abd2-ebfc05cbfa32', 'App\\Notifications\\Add_service', 'App\\User', 17, '{\"id\":26,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"heba\"}', NULL, '2022-07-09 08:37:55', '2022-07-09 08:37:55'),
('dc3012b4-38a4-410f-9b8a-f9adfb3fc8bc', 'App\\Notifications\\Add_service', 'App\\User', 11, '{\"id\":6,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-08 08:22:33', '2022-07-08 08:22:33'),
('dd30b105-c117-4cc1-b157-90cf64cad14c', 'App\\Notifications\\Add_service', 'App\\User', 1, '{\"id\":10,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"ahmad\"}', '2022-07-09 08:50:47', '2022-07-09 07:57:25', '2022-07-09 08:50:47'),
('dd7af2fc-83ad-47b0-9a42-9dff745f8d60', 'App\\Notifications\\Add_service', 'App\\User', 5, '{\"id\":31,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"abd\"}', NULL, '2022-07-09 08:44:29', '2022-07-09 08:44:29'),
('de355a76-b357-4de0-b3d3-a6e3fc9059e2', 'App\\Notifications\\Add_service', 'App\\User', 8, '{\"id\":9,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"ahmad\"}', NULL, '2022-07-09 07:56:13', '2022-07-09 07:56:13'),
('de51a316-ce25-408e-8d22-ce929b392120', 'App\\Notifications\\Add_service', 'App\\User', 3, '{\"id\":20,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"yara\"}', NULL, '2022-07-09 08:29:02', '2022-07-09 08:29:02'),
('de6b8b85-7a53-4ca9-8205-c08e3c22c5f8', 'App\\Notifications\\Add_service', 'App\\User', 16, '{\"id\":22,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"yara\"}', NULL, '2022-07-09 08:32:08', '2022-07-09 08:32:08'),
('de997b9e-ea59-4ce9-bd7c-2e859a59143e', 'App\\Notifications\\Add_service', 'App\\User', 7, '{\"id\":17,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"lia\"}', NULL, '2022-07-09 08:25:08', '2022-07-09 08:25:08'),
('df3a9120-10b8-4aa6-9ed2-b1491365d0f1', 'App\\Notifications\\Add_service', 'App\\User', 11, '{\"id\":24,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"heba\"}', NULL, '2022-07-09 08:35:51', '2022-07-09 08:35:51'),
('e00a102e-471c-420f-bf2b-02eec659b1a0', 'App\\Notifications\\Add_service', 'App\\User', 3, '{\"id\":17,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"lia\"}', NULL, '2022-07-09 08:25:08', '2022-07-09 08:25:08'),
('e1b03dc5-3542-4300-a8c0-103154129433', 'App\\Notifications\\Add_service', 'App\\User', 13, '{\"id\":31,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"abd\"}', NULL, '2022-07-09 08:44:30', '2022-07-09 08:44:30'),
('e230b78e-b4c0-4084-a979-8d2e1eda75e3', 'App\\Notifications\\Add_service', 'App\\User', 20, '{\"id\":28,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"abd\"}', NULL, '2022-07-09 08:41:21', '2022-07-09 08:41:21'),
('e2b738d2-a538-4d41-84e1-fab02861b490', 'App\\Notifications\\Add_service', 'App\\User', 11, '{\"id\":17,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"lia\"}', NULL, '2022-07-09 08:25:08', '2022-07-09 08:25:08'),
('e31d9cd3-cefe-4cdc-a648-c6d4f7035871', 'App\\Notifications\\Add_service', 'App\\User', 10, '{\"id\":29,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"abd\"}', NULL, '2022-07-09 08:42:42', '2022-07-09 08:42:42'),
('e3a813d4-ef80-43a1-a10e-25d4ed90fe79', 'App\\Notifications\\Add_service', 'App\\User', 17, '{\"id\":17,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"lia\"}', NULL, '2022-07-09 08:25:10', '2022-07-09 08:25:10'),
('e3f031c9-297e-4391-9b3a-fe99347b7b69', 'App\\Notifications\\Add_service', 'App\\User', 1, '{\"id\":24,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"heba\"}', '2022-07-09 08:50:45', '2022-07-09 08:35:51', '2022-07-09 08:50:45'),
('e460d333-44d8-408f-8c81-9e44d2993537', 'App\\Notifications\\Add_message', 'App\\User', 3, '{\"id\":3,\"title\":\" \\u064a\\u0648\\u062c\\u062f \\u0631\\u0633\\u0627\\u0644\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0644\\u062f\\u064a\\u0643 \\u0645\\u0646 \\u0642\\u0628\\u0644 :\",\"user\":\"provider\"}', NULL, '2022-07-11 06:26:11', '2022-07-11 06:26:11'),
('e492b5b3-dbf1-45b1-bcd4-ad0aa1b9d193', 'App\\Notifications\\Add_service', 'App\\User', 16, '{\"id\":31,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"abd\"}', NULL, '2022-07-09 08:44:30', '2022-07-09 08:44:30'),
('e543639c-136b-426e-ab76-48b56597100a', 'App\\Notifications\\Add_service', 'App\\User', 12, '{\"id\":6,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-08 08:22:33', '2022-07-08 08:22:33'),
('e5489013-3f1b-46f2-8906-a5899f4c9b7c', 'App\\Notifications\\Add_service', 'App\\User', 14, '{\"id\":9,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"ahmad\"}', NULL, '2022-07-09 07:56:13', '2022-07-09 07:56:13'),
('e55e4196-f7a3-4ddc-947c-cdd7dceb9aea', 'App\\Notifications\\Add_service', 'App\\User', 9, '{\"id\":31,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"abd\"}', NULL, '2022-07-09 08:44:30', '2022-07-09 08:44:30'),
('e62c8c95-f0c8-497b-b48a-94bec2cd94bc', 'App\\Notifications\\Add_service', 'App\\User', 8, '{\"id\":10,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"ahmad\"}', NULL, '2022-07-09 07:57:25', '2022-07-09 07:57:25'),
('e64deb23-5d6e-4337-b3b2-055afb5e9bf5', 'App\\Notifications\\Add_service', 'App\\User', 14, '{\"id\":13,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"amir\"}', NULL, '2022-07-09 08:02:23', '2022-07-09 08:02:23'),
('e696498a-e77b-4e10-a18c-5f75e56c8f55', 'App\\Notifications\\Add_service', 'App\\User', 13, '{\"id\":24,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"heba\"}', NULL, '2022-07-09 08:35:51', '2022-07-09 08:35:51'),
('e6db9347-7937-4a13-88a8-5ea9d87f2564', 'App\\Notifications\\Add_service', 'App\\User', 6, '{\"id\":17,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"lia\"}', NULL, '2022-07-09 08:25:08', '2022-07-09 08:25:08'),
('e77ff58d-c36c-4aca-9a32-0466b70c6386', 'App\\Notifications\\Add_service', 'App\\User', 5, '{\"id\":26,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"heba\"}', NULL, '2022-07-09 08:37:53', '2022-07-09 08:37:53'),
('e79962b1-914c-43f6-877a-8e51f25ce2db', 'App\\Notifications\\Add_service', 'App\\User', 1, '{\"id\":4,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', '2022-07-09 07:33:11', '2022-07-08 08:20:19', '2022-07-09 07:33:11'),
('e81b12bc-2676-49d3-ba79-174eebcd0032', 'App\\Notifications\\Add_service', 'App\\User', 9, '{\"id\":13,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"amir\"}', NULL, '2022-07-09 08:02:22', '2022-07-09 08:02:22'),
('e82facd1-7326-4bb4-a5bf-3e2c9cdaf2a5', 'App\\Notifications\\Add_service', 'App\\User', 1, '{\"id\":15,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"saher\"}', '2022-07-09 08:50:47', '2022-07-09 08:22:39', '2022-07-09 08:50:47'),
('e8ff67f4-651b-4ac0-bde9-a1746213e35e', 'App\\Notifications\\Add_service', 'App\\User', 14, '{\"id\":20,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"yara\"}', NULL, '2022-07-09 08:29:03', '2022-07-09 08:29:03'),
('e91d3e91-ad5f-4cf9-ac2b-70a879672486', 'App\\Notifications\\Add_service', 'App\\User', 18, '{\"id\":21,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"yara\"}', NULL, '2022-07-09 08:30:48', '2022-07-09 08:30:48'),
('e9752535-aee3-4cd6-9d7e-014899fbfb01', 'App\\Notifications\\Add_service', 'App\\User', 13, '{\"id\":16,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"saher\"}', NULL, '2022-07-09 08:23:24', '2022-07-09 08:23:24'),
('e983e9ad-bc41-4c42-86d4-33830ac78fce', 'App\\Notifications\\Add_service', 'App\\User', 17, '{\"id\":34,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-09 09:02:22', '2022-07-09 09:02:22'),
('e9bd7b22-c571-4976-8d17-e44aeb96d0de', 'App\\Notifications\\Add_service', 'App\\User', 6, '{\"id\":29,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"abd\"}', NULL, '2022-07-09 08:42:42', '2022-07-09 08:42:42'),
('e9fad29b-0d80-44c1-8300-36b6859c73d4', 'App\\Notifications\\Add_service', 'App\\User', 6, '{\"id\":31,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"abd\"}', NULL, '2022-07-09 08:44:30', '2022-07-09 08:44:30'),
('ea916d49-6c6f-4d6a-a9ab-f6a69b82f8e0', 'App\\Notifications\\Add_service', 'App\\User', 4, '{\"id\":17,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"lia\"}', NULL, '2022-07-09 08:25:08', '2022-07-09 08:25:08'),
('eaca3f09-4237-4c65-a675-da2cba5131e5', 'App\\Notifications\\Add_service', 'App\\User', 15, '{\"id\":27,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"heba\"}', NULL, '2022-07-09 08:39:18', '2022-07-09 08:39:18'),
('eaea1709-08d0-4f39-a05c-d40df773a142', 'App\\Notifications\\Add_message', 'App\\User', 11, '{\"id\":2,\"title\":\" \\u064a\\u0648\\u062c\\u062f \\u0631\\u0633\\u0627\\u0644\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0644\\u062f\\u064a\\u0643 \\u0645\\u0646 \\u0642\\u0628\\u0644 :\",\"user\":\"lia\"}', NULL, '2022-07-09 10:23:40', '2022-07-09 10:23:40'),
('eb6cfba0-8cfa-4035-a738-a0f44ce5b34d', 'App\\Notifications\\Add_message', 'App\\User', 9, '{\"id\":2,\"title\":\" \\u064a\\u0648\\u062c\\u062f \\u0631\\u0633\\u0627\\u0644\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0644\\u062f\\u064a\\u0643 \\u0645\\u0646 \\u0642\\u0628\\u0644 :\",\"user\":\"lia\"}', NULL, '2022-07-09 10:23:40', '2022-07-09 10:23:40'),
('ebf5d277-a6c9-4d86-8e9d-579c9a60daeb', 'App\\Notifications\\Add_service', 'App\\User', 11, '{\"id\":2,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"ahmad\"}', NULL, '2022-07-08 07:31:18', '2022-07-08 07:31:18'),
('ebf5de58-1e13-44fa-93d1-1f7dd9d82655', 'App\\Notifications\\Add_service', 'App\\User', 8, '{\"id\":6,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-08 08:22:33', '2022-07-08 08:22:33'),
('ed049b45-26d2-4ca3-a4a3-0186698d2777', 'App\\Notifications\\Add_service', 'App\\User', 11, '{\"id\":15,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"saher\"}', NULL, '2022-07-09 08:22:39', '2022-07-09 08:22:39'),
('ed8cb1c0-e97e-4f19-b461-9348095f97cb', 'App\\Notifications\\Add_service', 'App\\User', 10, '{\"id\":32,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-09 08:57:29', '2022-07-09 08:57:29'),
('edc94921-d99b-4b8c-abde-fa9d95c8d0c7', 'App\\Notifications\\Add_service', 'App\\User', 16, '{\"id\":23,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"heba\"}', NULL, '2022-07-09 08:34:52', '2022-07-09 08:34:52'),
('ee080d2b-27f0-42d0-a25f-5c626f83a820', 'App\\Notifications\\Add_service', 'App\\User', 19, '{\"id\":16,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"saher\"}', NULL, '2022-07-09 08:23:24', '2022-07-09 08:23:24'),
('ee4dc75c-9630-4308-a2ca-ef02f107874f', 'App\\Notifications\\Add_service', 'App\\User', 5, '{\"id\":28,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"abd\"}', NULL, '2022-07-09 08:41:21', '2022-07-09 08:41:21'),
('ee60dc24-cfbd-4f10-9537-5144d777e6a5', 'App\\Notifications\\Add_service', 'App\\User', 16, '{\"id\":3,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"yara\"}', NULL, '2022-07-08 07:36:47', '2022-07-08 07:36:47'),
('ee8db5df-1ac8-4bb0-9458-0c9425c53566', 'App\\Notifications\\Add_service', 'App\\User', 5, '{\"id\":32,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-09 08:57:29', '2022-07-09 08:57:29'),
('eef2fba3-576c-4cc0-886c-97710d6aefad', 'App\\Notifications\\Add_service', 'App\\User', 15, '{\"id\":4,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-08 08:20:20', '2022-07-08 08:20:20'),
('ef7bdbe5-f248-4189-af9c-c6d58ed43e68', 'App\\Notifications\\Add_service', 'App\\User', 13, '{\"id\":23,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"heba\"}', NULL, '2022-07-09 08:34:51', '2022-07-09 08:34:51'),
('ef9a7b53-7da0-454a-88d0-584dc88db591', 'App\\Notifications\\Add_service', 'App\\User', 19, '{\"id\":15,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"saher\"}', NULL, '2022-07-09 08:22:40', '2022-07-09 08:22:40'),
('efc369cc-35c7-47e5-b90d-30000bfc758d', 'App\\Notifications\\Add_message', 'App\\User', 16, '{\"id\":3,\"title\":\" \\u064a\\u0648\\u062c\\u062f \\u0631\\u0633\\u0627\\u0644\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0644\\u062f\\u064a\\u0643 \\u0645\\u0646 \\u0642\\u0628\\u0644 :\",\"user\":\"provider\"}', NULL, '2022-07-11 06:26:12', '2022-07-11 06:26:12'),
('f04bbd77-602f-40b1-a2f0-8a77dd03f0f8', 'App\\Notifications\\Add_service', 'App\\User', 19, '{\"id\":22,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"yara\"}', NULL, '2022-07-09 08:32:09', '2022-07-09 08:32:09'),
('f098b495-1315-4a43-b531-4baf5aa4075d', 'App\\Notifications\\Add_service', 'App\\User', 13, '{\"id\":26,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"heba\"}', NULL, '2022-07-09 08:37:55', '2022-07-09 08:37:55'),
('f0b4a230-796d-43b9-874d-f5053b142ed3', 'App\\Notifications\\Add_message', 'App\\User', 15, '{\"id\":1,\"title\":\" \\u064a\\u0648\\u062c\\u062f \\u0631\\u0633\\u0627\\u0644\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0644\\u062f\\u064a\\u0643 \\u0645\\u0646 \\u0642\\u0628\\u0644 :\",\"user\":\"gamal\"}', NULL, '2022-07-08 08:45:09', '2022-07-08 08:45:09'),
('f0eab119-9742-4c69-9e9c-28108a8c521b', 'App\\Notifications\\Add_service', 'App\\User', 14, '{\"id\":24,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"heba\"}', NULL, '2022-07-09 08:35:51', '2022-07-09 08:35:51'),
('f171b3aa-501b-4352-854b-8ccf9b75e303', 'App\\Notifications\\Add_service', 'App\\User', 11, '{\"id\":13,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"amir\"}', NULL, '2022-07-09 08:02:22', '2022-07-09 08:02:22'),
('f1952a65-ba6f-4818-b134-7c1b7d4d51ca', 'App\\Notifications\\Add_service', 'App\\User', 13, '{\"id\":9,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"ahmad\"}', NULL, '2022-07-09 07:56:13', '2022-07-09 07:56:13'),
('f2a753c0-31b1-40c5-b2ab-12928deebd70', 'App\\Notifications\\Add_service', 'App\\User', 20, '{\"id\":17,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"lia\"}', NULL, '2022-07-09 08:25:10', '2022-07-09 08:25:10'),
('f2c1cb75-d1b7-400c-9585-148d5d7b7d60', 'App\\Notifications\\Add_service', 'App\\User', 17, '{\"id\":1,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-08 07:29:23', '2022-07-08 07:29:23'),
('f2db5118-30ab-4bfc-bfc5-784fc67213f2', 'App\\Notifications\\Add_service', 'App\\User', 1, '{\"id\":3,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"yara\"}', '2022-07-08 07:50:42', '2022-07-08 07:36:46', '2022-07-08 07:50:42'),
('f348ab59-75b1-462c-9141-9f2074250f51', 'App\\Notifications\\Add_service', 'App\\User', 15, '{\"id\":33,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-09 08:59:45', '2022-07-09 08:59:45'),
('f36e44af-2274-499b-b2b0-3e9aeea206cb', 'App\\Notifications\\Add_service', 'App\\User', 11, '{\"id\":31,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"abd\"}', NULL, '2022-07-09 08:44:30', '2022-07-09 08:44:30'),
('f3a691e4-7b76-4cf7-9300-6c4ad1eb3255', 'App\\Notifications\\Add_service', 'App\\User', 1, '{\"id\":2,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"ahmad\"}', '2022-07-08 07:50:42', '2022-07-08 07:31:17', '2022-07-08 07:50:42'),
('f3d3d414-2f0a-4dae-be8a-1709c51b2952', 'App\\Notifications\\Add_service', 'App\\User', 12, '{\"id\":15,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"saher\"}', NULL, '2022-07-09 08:22:39', '2022-07-09 08:22:39'),
('f42e6065-a262-41d2-8087-8dc32b948289', 'App\\Notifications\\Add_service', 'App\\User', 18, '{\"id\":26,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"heba\"}', NULL, '2022-07-09 08:37:55', '2022-07-09 08:37:55'),
('f5c250a8-4b46-4ce8-9065-beb56c6092fe', 'App\\Notifications\\Add_service', 'App\\User', 19, '{\"id\":7,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-08 08:23:40', '2022-07-08 08:23:40'),
('f5f7b9b4-a49a-4654-a791-f2053834cff2', 'App\\Notifications\\Add_service', 'App\\User', 4, '{\"id\":3,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"yara\"}', NULL, '2022-07-08 07:36:46', '2022-07-08 07:36:46'),
('f62bdf62-0404-421b-8bd2-8a8e27d83578', 'App\\Notifications\\Add_service', 'App\\User', 20, '{\"id\":27,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"heba\"}', NULL, '2022-07-09 08:39:19', '2022-07-09 08:39:19'),
('f69e1a8b-d7ba-4e28-b68a-0db0bfb98f3b', 'App\\Notifications\\Add_service', 'App\\User', 10, '{\"id\":9,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"ahmad\"}', NULL, '2022-07-09 07:56:13', '2022-07-09 07:56:13'),
('f7146045-a86d-4e4d-8b85-82c9b732914b', 'App\\Notifications\\Add_service', 'App\\User', 3, '{\"id\":29,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"abd\"}', NULL, '2022-07-09 08:42:42', '2022-07-09 08:42:42'),
('f7a56997-697e-474c-bf28-90c6c37b095b', 'App\\Notifications\\Add_service', 'App\\User', 20, '{\"id\":16,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"saher\"}', NULL, '2022-07-09 08:23:24', '2022-07-09 08:23:24'),
('f7b03b6f-3e24-49d4-ac28-97f124dbbb4e', 'App\\Notifications\\Add_service', 'App\\User', 1, '{\"id\":20,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"yara\"}', '2022-07-09 08:50:46', '2022-07-09 08:29:02', '2022-07-09 08:50:46'),
('f7f0a163-a2e7-4b28-9c20-8217cb6b1ad8', 'App\\Notifications\\Add_service', 'App\\User', 10, '{\"id\":19,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"lia\"}', NULL, '2022-07-09 08:27:34', '2022-07-09 08:27:34'),
('f9955e7c-2fab-46ea-9269-65c78e6e8e7b', 'App\\Notifications\\Add_message', 'App\\User', 12, '{\"id\":2,\"title\":\" \\u064a\\u0648\\u062c\\u062f \\u0631\\u0633\\u0627\\u0644\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0644\\u062f\\u064a\\u0643 \\u0645\\u0646 \\u0642\\u0628\\u0644 :\",\"user\":\"lia\"}', NULL, '2022-07-09 10:23:40', '2022-07-09 10:23:40'),
('fa166e84-1513-400e-ae70-61a4d7166207', 'App\\Notifications\\Add_service', 'App\\User', 18, '{\"id\":16,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"saher\"}', NULL, '2022-07-09 08:23:24', '2022-07-09 08:23:24'),
('fa9b303e-79d5-41c7-ae46-b4d178e30760', 'App\\Notifications\\Add_service', 'App\\User', 5, '{\"id\":34,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-09 09:02:22', '2022-07-09 09:02:22'),
('fad45029-3f33-47e8-8974-3007ec614c4b', 'App\\Notifications\\Add_service', 'App\\User', 17, '{\"id\":25,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"heba\"}', NULL, '2022-07-09 08:36:37', '2022-07-09 08:36:37'),
('faf06dbb-be8b-49a8-af81-36b407ca333b', 'App\\Notifications\\Add_service', 'App\\User', 20, '{\"id\":11,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"amir\"}', NULL, '2022-07-09 07:58:59', '2022-07-09 07:58:59'),
('fb2d831c-8e2e-47ad-a196-3c47e3419c5e', 'App\\Notifications\\Add_service', 'App\\User', 5, '{\"id\":25,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"heba\"}', NULL, '2022-07-09 08:36:36', '2022-07-09 08:36:36'),
('fc73be64-f938-4b94-86a2-4313d78422e1', 'App\\Notifications\\Add_message', 'App\\User', 3, '{\"id\":1,\"title\":\" \\u064a\\u0648\\u062c\\u062f \\u0631\\u0633\\u0627\\u0644\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0644\\u062f\\u064a\\u0643 \\u0645\\u0646 \\u0642\\u0628\\u0644 :\",\"user\":\"gamal\"}', NULL, '2022-07-08 08:45:09', '2022-07-08 08:45:09'),
('fcbeb07d-1da2-4f4b-b87c-9b15468f7a7d', 'App\\Notifications\\Add_service', 'App\\User', 5, '{\"id\":5,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-08 08:21:33', '2022-07-08 08:21:33'),
('fcd3035f-e718-4860-ac0a-81b362846ff1', 'App\\Notifications\\Add_service', 'App\\User', 13, '{\"id\":12,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"amir\"}', NULL, '2022-07-09 08:01:10', '2022-07-09 08:01:10'),
('fda1198e-027a-494b-861b-2846bcf9d8cd', 'App\\Notifications\\Add_service', 'App\\User', 11, '{\"id\":18,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"lia\"}', NULL, '2022-07-09 08:26:47', '2022-07-09 08:26:47'),
('fe392565-391e-4d00-938a-803ff1df0830', 'App\\Notifications\\Add_service', 'App\\User', 3, '{\"id\":26,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"heba\"}', NULL, '2022-07-09 08:37:53', '2022-07-09 08:37:53'),
('fe4009c5-6a2b-4f1a-85de-b7ce977a8599', 'App\\Notifications\\Add_service', 'App\\User', 10, '{\"id\":17,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"lia\"}', NULL, '2022-07-09 08:25:08', '2022-07-09 08:25:08'),
('fe70fcb8-ea99-4204-97b7-e15219bc4f8a', 'App\\Notifications\\Add_service', 'App\\User', 14, '{\"id\":16,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"saher\"}', NULL, '2022-07-09 08:23:24', '2022-07-09 08:23:24'),
('fe751466-20d8-475a-a171-ec77a3e00a92', 'App\\Notifications\\Add_service', 'App\\User', 4, '{\"id\":6,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"provider\"}', NULL, '2022-07-08 08:22:32', '2022-07-08 08:22:32'),
('fe87b0a5-a53f-450d-9b2e-950de9f18827', 'App\\Notifications\\Add_service', 'App\\User', 17, '{\"id\":14,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"saher\"}', NULL, '2022-07-09 08:21:21', '2022-07-09 08:21:21');
INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('ffd20f69-68fe-4c64-9dd8-66f928d29180', 'App\\Notifications\\Add_service', 'App\\User', 13, '{\"id\":11,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u062e\\u062f\\u0645\\u0629 \\u062c\\u062f\\u064a\\u062f\\u0629 \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"amir\"}', NULL, '2022-07-09 07:58:59', '2022-07-09 07:58:59');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_number` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_Date` date DEFAULT NULL,
  `Due_Date` date DEFAULT NULL,
  `service_id` bigint(20) UNSIGNED NOT NULL,
  `section_id` bigint(20) UNSIGNED NOT NULL,
  `Amount_collection` decimal(8,2) DEFAULT NULL,
  `OrderStatus` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Value_OrderStatus` int(11) NOT NULL,
  `PaymentStatus` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Value_PaymentStatus` int(11) NOT NULL,
  `user` varchar(999) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Payment_Date` date DEFAULT NULL,
  `pyment_card` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Amount_current` decimal(8,2) NOT NULL DEFAULT 0.00,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_number`, `order_Date`, `Due_Date`, `service_id`, `section_id`, `Amount_collection`, `OrderStatus`, `Value_OrderStatus`, `PaymentStatus`, `Value_PaymentStatus`, `user`, `user_id`, `note`, `Payment_Date`, `pyment_card`, `Amount_current`, `deleted_at`, `created_at`, `updated_at`) VALUES
(9, '49a3e35f-11f1-4106-a215-7bcc9b55e566', '2022-07-09', '2022-07-28', 4, 76, '700000.00', 'منفذ', 1, 'مدفوع', 1, 'customer', 4, NULL, '2022-07-25', '10101', '50000.00', NULL, '2022-07-09 09:11:48', '2022-07-09 10:08:23'),
(11, 'b337ce42-7212-43a6-9842-21987c316e3b', '2022-07-09', '2022-07-31', 6, 40, '800000.00', 'قيد التنفيذ', 2, 'غير مدفوع', 3, 'customer', 4, NULL, NULL, NULL, '0.00', NULL, '2022-07-09 09:12:26', '2022-07-09 10:03:12'),
(12, 'daac8ea4-e863-494c-8894-c97e3a9d3fea', '2022-07-09', '2022-07-24', 8, 89, '30000.00', 'منفذ', 1, 'مدفوع', 1, 'customer', 4, NULL, '2022-07-24', '10210', '50000.00', NULL, '2022-07-09 09:12:42', '2022-07-09 10:13:13'),
(13, '62484f49-6e8a-40e0-b1e4-5e5537f3d319', '2022-07-09', '2022-07-24', 9, 77, '950000.00', 'قيد التنفيذ', 2, 'مدفوع جزئيا', 2, 'customer', 4, NULL, '2022-07-31', '010101', '20000.00', NULL, '2022-07-09 09:14:57', '2022-07-09 10:11:11'),
(14, '7785942c-b683-4256-af39-fea9a9968619', '2022-07-09', '2022-07-28', 10, 87, '800000.00', 'غير منفذ', 3, 'مدفوع جزئيا', 2, 'customer', 4, NULL, '2022-07-09', '2222', '60000.00', NULL, '2022-07-09 09:15:09', '2022-07-09 09:56:11'),
(15, 'eed7a59e-903a-4724-8072-68946da12032', '2022-07-09', '2022-07-20', 11, 80, '600000.00', 'غير منفذ', 3, 'مدفوع جزئيا', 2, 'customer', 4, NULL, '2022-07-09', '0101', '6000.00', NULL, '2022-07-09 09:15:18', '2022-07-09 09:56:29'),
(16, '394aff7f-4f85-46ba-85f8-522f42b8c37e', '2022-07-09', '2022-07-27', 12, 88, '750000.00', 'قيد التنفيذ', 2, 'مدفوع', 1, 'customer', 4, NULL, '2022-07-25', '10101', '90000.00', NULL, '2022-07-09 09:15:31', '2022-07-09 10:07:41'),
(17, '8e8313bf-da61-4952-a250-3f9f1d73c89f', '2022-07-09', '2022-07-28', 13, 81, '300000.00', 'منفذ', 1, 'مدفوع', 1, 'customer', 4, NULL, '2022-07-25', '010102', '2000.00', NULL, '2022-07-09 09:15:45', '2022-07-09 10:12:49'),
(18, '500daee9-5756-4964-838a-117de79f63e1', '2022-07-09', '2022-07-26', 14, 28, '50000.00', 'غير منفذ', 3, 'مدفوع جزئيا', 2, 'customer', 4, NULL, '2022-07-09', '500', '3000.00', NULL, '2022-07-09 09:15:59', '2022-07-09 09:56:41'),
(19, 'c7f14704-4ff1-49ac-9501-2e464233a5cf', '2022-07-09', '2022-07-29', 15, 29, '60000.00', 'قيد التنفيذ', 2, 'مدفوع', 1, 'customer', 4, NULL, '2022-07-09', '000', '9000.00', NULL, '2022-07-09 09:16:07', '2022-07-09 09:57:56'),
(20, '33f183ab-fc53-4124-8903-6fbe455c037f', '2022-07-09', '2022-07-31', 16, 30, '450000.00', 'قيد التنفيذ', 2, 'مدفوع جزئيا', 2, 'customer', 4, NULL, '2022-07-24', '10101', '50000.00', NULL, '2022-07-09 09:16:19', '2022-07-09 10:07:12'),
(21, '5ae90cfc-3a2f-4f94-9a88-c89bb5002d91', '2022-07-09', '2022-07-28', 17, 43, '790000.00', 'قيد التنفيذ', 2, 'مدفوع', 1, 'customer', 4, NULL, '2022-07-31', '0101', '60000.00', NULL, '2022-07-09 09:16:33', '2022-07-09 10:10:15'),
(23, '2a479ef0-df8a-48d1-b7be-dfce50667d0a', '2022-07-09', '2022-07-23', 19, 49, '85000.00', 'قيد التنفيذ', 2, 'مدفوع جزئيا', 2, 'customer', 4, NULL, '2022-07-25', '0000', '30000.00', NULL, '2022-07-09 09:16:51', '2022-07-09 10:06:35'),
(24, '5c283cf4-50f2-46b6-91d6-f7232e3d76e1', '2022-07-09', '2022-07-29', 20, 42, '120000.00', 'منفذ', 1, 'مدفوع', 1, 'gamal', 6, NULL, '2022-07-31', '01012', '96000.00', NULL, '2022-07-09 09:19:16', '2022-07-09 10:14:01'),
(25, '1e0d8235-167f-4cc1-bbd5-0a208ec29010', '2022-07-09', '2022-07-28', 21, 42, '600000.00', 'منفذ', 1, 'مدفوع', 1, 'gamal', 6, NULL, '2022-07-25', '6000', '0.00', NULL, '2022-07-09 09:19:35', '2022-07-09 10:06:13'),
(26, '4839e91b-67fe-4c15-ae01-4f3b56105a14', '2022-07-09', '2022-07-16', 22, 45, '450000.00', 'قيد التنفيذ', 2, 'مدفوع جزئيا', 2, 'gamal', 6, NULL, '2022-07-31', '1010', '20000.00', NULL, '2022-07-09 09:21:26', '2022-07-09 10:08:06'),
(27, 'cf021269-fd36-4e43-adf3-aa76494e8f7d', '2022-07-09', '2022-07-22', 23, 59, '600000.00', 'منفذ', 1, 'مدفوع', 1, 'gamal', 6, NULL, '2022-07-24', '010120', '78000.00', NULL, '2022-07-09 09:21:37', '2022-07-09 10:14:22'),
(28, '688539db-c805-4da1-a9ce-7e760d778c98', '2022-07-09', '2022-07-27', 24, 59, '50000.00', 'قيد التنفيذ', 2, 'مدفوع', 1, 'gamal', 6, NULL, '2022-07-09', '000', '90000.00', NULL, '2022-07-09 09:21:50', '2022-07-09 10:00:32'),
(29, '2c9951a4-8cad-41cc-aaef-4427fa178921', '2022-07-09', '2022-07-29', 25, 53, '80000.00', 'غير منفذ', 3, 'مدفوع جزئيا', 2, 'gamal', 6, NULL, '2022-07-09', '000', '9000.00', NULL, '2022-07-09 09:22:01', '2022-07-09 09:59:16'),
(30, '6161fda2-d3b8-447b-a268-d62230efab03', '2022-07-09', '2022-07-30', 27, 90, '800000.00', 'منفذ', 1, 'مدفوع', 1, 'gamal', 6, NULL, '2022-07-24', '00101', '60000.00', NULL, '2022-07-09 09:22:18', '2022-07-09 10:10:53'),
(31, '534d3dc5-d5ad-4a83-a1d5-7ef8ff910eb4', '2022-07-09', '2022-07-27', 28, 9, '600000.00', 'منفذ', 1, 'مدفوع', 1, 'gamal', 6, NULL, '2022-07-31', '1010', '2000.00', NULL, '2022-07-09 09:24:41', '2022-07-09 10:08:52'),
(32, 'c632a8f3-91c3-4c3c-94dc-4f752c385432', '2022-07-09', '2022-07-31', 29, 71, '800000.00', 'غير منفذ', 3, 'مدفوع جزئيا', 2, 'gamal', 6, NULL, '2022-07-09', '000', '8000.00', NULL, '2022-07-09 09:24:52', '2022-07-09 09:59:27'),
(33, 'ed914e46-11d1-496b-8d57-b43617af9d72', '2022-07-09', '2022-07-31', 30, 40, '70000.00', 'منفذ', 1, 'مدفوع', 1, 'gamal', 6, NULL, '2022-07-31', '0101', '90000.00', NULL, '2022-07-09 09:25:02', '2022-07-09 10:12:23'),
(34, '567bd426-01dd-43ac-92ef-fec05d170080', '2022-07-09', '2022-07-27', 32, 86, '800000.00', 'قيد التنفيذ', 2, 'مدفوع', 1, 'gamal', 6, NULL, '2022-07-31', '1010', '80000.00', NULL, '2022-07-09 09:25:25', '2022-07-09 10:09:53'),
(35, 'b6409c08-0fcd-429c-9fe5-da1a1eac3994', '2022-07-09', '2022-07-28', 33, 85, '800000.00', 'قيد التنفيذ', 2, 'غير مدفوع', 3, 'gamal', 6, NULL, NULL, NULL, '0.00', NULL, '2022-07-09 09:25:35', '2022-07-09 10:03:31'),
(36, '0f31ba11-4888-486a-83e0-a64f9a9ec2be', '2022-07-09', '2022-07-27', 34, 79, '86000.00', 'منفذ', 1, 'مدفوع', 1, 'gamal', 6, NULL, '2022-07-31', '60000', '0.00', NULL, '2022-07-09 09:26:43', '2022-07-09 10:05:47');

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
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'لوحة التحكم', 'web', '2022-07-07 15:56:40', '2022-07-07 15:56:40'),
(2, 'قبول ورفض الخدمات', 'web', '2022-07-07 15:56:40', '2022-07-07 15:56:40'),
(3, 'قبول ورفض الطلبات', 'web', '2022-07-07 15:56:40', '2022-07-07 15:56:40'),
(4, 'عرض صلاحية', 'web', '2022-07-07 15:56:40', '2022-07-07 15:56:40'),
(5, 'اضافة صلاحية', 'web', '2022-07-07 15:56:40', '2022-07-07 15:56:40'),
(6, 'تعديل صلاحية', 'web', '2022-07-07 15:56:41', '2022-07-07 15:56:41'),
(7, 'حذف صلاحية', 'web', '2022-07-07 15:56:41', '2022-07-07 15:56:41'),
(8, 'اضافة طلب', 'web', '2022-07-07 15:56:41', '2022-07-07 15:56:41'),
(9, 'حذف طلب', 'web', '2022-07-07 15:56:41', '2022-07-07 15:56:41'),
(10, 'تصدير EXCEL', 'web', '2022-07-07 15:56:41', '2022-07-07 15:56:41'),
(11, 'تعديل الطلب', 'web', '2022-07-07 15:56:41', '2022-07-07 15:56:41');

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `services_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `stars_rated` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`id`, `services_id`, `user_id`, `stars_rated`, `created_at`, `updated_at`) VALUES
(1, 30, 6, '5', '2022-07-09 10:27:06', '2022-07-09 10:27:06');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_review` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `user_id`, `service_id`, `user_review`, `created_at`, `updated_at`) VALUES
(1, '6', '30', 'خدمة مميزة ومعاملة جيدة من قبل مقدمها ,يوجد تعاون مستقبلي ولن تكون أخر خدمة بيننا.', '2022-07-09 10:27:55', '2022-07-09 10:27:55');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'owner', 'web', '2022-07-07 15:56:41', '2022-07-07 15:56:41'),
(2, 'provider', 'web', '2022-07-07 15:58:03', '2022-07-07 15:58:03'),
(3, 'customer', 'web', '2022-07-07 15:58:18', '2022-07-07 15:58:18');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 2),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(8, 3),
(9, 1),
(10, 1),
(11, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(999) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `Created_by` varchar(999) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `name`, `description`, `parent_id`, `Created_by`, `created_at`, `updated_at`) VALUES
(2, 'التصميم الإعلاني', 'القسم الأول', NULL, 'mouaz mohammed alkhateeb', '2022-07-07 15:59:54', '2022-07-08 08:13:23'),
(3, 'الكتابة والترجمة', 'القسم الثاني', NULL, 'mouaz mohammed alkhateeb', '2022-07-07 16:00:06', '2022-07-08 15:14:21'),
(5, 'أعمال', 'القسم الثالث', NULL, 'mouaz mohammed alkhateeb', '2022-07-07 16:00:46', '2022-07-08 15:17:36'),
(6, 'الدعم التقني', 'القسم الرابع', NULL, 'mouaz mohammed alkhateeb', '2022-07-07 16:01:25', '2022-07-08 15:17:48'),
(7, 'التسويق الإلكتروني', 'القسم الخامس', NULL, 'mouaz mohammed alkhateeb', '2022-07-07 16:02:16', '2022-07-08 15:18:01'),
(8, 'الصوتيات', 'القسم السادس', NULL, 'mouaz mohammed alkhateeb', '2022-07-08 04:44:00', '2022-07-08 15:18:11'),
(9, 'إدخال البيانات', NULL, 5, 'mouaz mohammed alkhateeb', '2022-07-08 04:48:56', '2022-07-08 04:48:56'),
(10, 'استشارات أعمال', NULL, 5, 'mouaz mohammed alkhateeb', '2022-07-08 04:49:27', '2022-07-08 04:49:27'),
(11, 'تجارة إلكترونية', NULL, 5, 'mouaz mohammed alkhateeb', '2022-07-08 04:49:49', '2022-07-08 04:49:49'),
(12, 'خدمات مالية', NULL, 5, 'mouaz mohammed alkhateeb', '2022-07-08 04:50:03', '2022-07-08 04:50:03'),
(13, 'دراسات وأبحاث', NULL, 5, 'mouaz mohammed alkhateeb', '2022-07-08 04:50:16', '2022-07-08 04:50:16'),
(28, 'إدارة حسابات التواصل الإجتماعي', NULL, 7, 'mouaz mohammed alkhateeb', '2022-07-08 04:53:59', '2022-07-08 04:53:59'),
(29, 'إعلانات المواقع', NULL, 7, 'mouaz mohammed alkhateeb', '2022-07-08 04:54:13', '2022-07-08 04:54:13'),
(30, 'استشارات تسويقية', NULL, 7, 'mouaz mohammed alkhateeb', '2022-07-08 04:54:32', '2022-07-08 04:54:32'),
(31, 'التسويق بالمحتوى', NULL, 7, 'mouaz mohammed alkhateeb', '2022-07-08 04:54:47', '2022-07-08 04:54:47'),
(32, 'تسويق عبر البريد الإلكتروني', NULL, 7, 'mouaz mohammed alkhateeb', '2022-07-08 04:55:05', '2022-07-08 04:55:05'),
(33, 'التسويق عبر أنستغرام', NULL, 7, 'mouaz mohammed alkhateeb', '2022-07-08 04:55:24', '2022-07-08 04:55:24'),
(34, 'تحليلات المواقع', NULL, 7, 'mouaz mohammed alkhateeb', '2022-07-08 04:55:44', '2022-07-08 04:55:44'),
(35, 'خدمات seo', NULL, 7, 'mouaz mohammed alkhateeb', '2022-07-08 04:56:00', '2022-07-08 04:56:00'),
(36, 'إنتاج الكتب الصوتية', NULL, 8, 'mouaz mohammed alkhateeb', '2022-07-08 04:57:04', '2022-07-08 04:57:04'),
(37, 'المعالجة الصوتية', NULL, 8, 'mouaz mohammed alkhateeb', '2022-07-08 04:57:15', '2022-07-08 04:57:15'),
(38, 'تحرير بودكاست', NULL, 8, 'mouaz mohammed alkhateeb', '2022-07-08 04:57:31', '2022-07-08 04:57:31'),
(39, 'تعليق صوتي', NULL, 8, 'mouaz mohammed alkhateeb', '2022-07-08 04:57:42', '2022-07-08 04:57:42'),
(40, 'خدمات سكربت صوتي', NULL, 8, 'mouaz mohammed alkhateeb', '2022-07-08 04:57:52', '2022-07-08 04:57:52'),
(41, 'تصميم انترو', NULL, 2, 'mouaz mohammed alkhateeb', '2022-07-08 04:58:44', '2022-07-08 04:58:44'),
(42, 'تصميم صور متحركة', NULL, 2, 'mouaz mohammed alkhateeb', '2022-07-08 04:58:58', '2022-07-08 04:58:58'),
(43, 'موشن غرافيك', NULL, 2, 'mouaz mohammed alkhateeb', '2022-07-08 04:59:09', '2022-07-08 04:59:09'),
(44, 'مونتاج الفيديو', NULL, 2, 'mouaz mohammed alkhateeb', '2022-07-08 04:59:20', '2022-07-08 04:59:20'),
(45, 'وايت بورد', NULL, 2, 'mouaz mohammed alkhateeb', '2022-07-08 04:59:30', '2022-07-08 04:59:30'),
(46, 'أغلفة الكتب والمجلات', NULL, 2, 'mouaz mohammed alkhateeb', '2022-07-08 04:59:43', '2022-07-08 04:59:43'),
(47, 'تصميم بطاقة العمل', NULL, 2, 'mouaz mohammed alkhateeb', '2022-07-08 04:59:56', '2022-07-08 04:59:56'),
(48, 'تصميم بنرات وتيشرتات', NULL, 2, 'mouaz mohammed alkhateeb', '2022-07-08 05:00:14', '2022-07-08 05:00:14'),
(49, 'تصميم الشعار', NULL, 2, 'mouaz mohammed alkhateeb', '2022-07-08 05:00:26', '2022-07-08 05:00:26'),
(50, 'خدمات تعديل الصور', NULL, 2, 'mouaz mohammed alkhateeb', '2022-07-08 05:00:42', '2022-07-08 05:00:42'),
(51, 'الكتابة الإبداعية', NULL, 3, 'mouaz mohammed alkhateeb', '2022-07-08 05:01:41', '2022-07-08 05:01:41'),
(52, 'تفريغ النصوص على الوورد', NULL, 3, 'mouaz mohammed alkhateeb', '2022-07-08 05:01:59', '2022-07-08 05:01:59'),
(53, 'كتابة السيرة الذاتية', NULL, 3, 'mouaz mohammed alkhateeb', '2022-07-08 05:02:16', '2022-07-08 05:02:16'),
(54, 'كتابة النصوص الإعلانية', NULL, 3, 'mouaz mohammed alkhateeb', '2022-07-08 05:02:32', '2022-07-08 05:02:32'),
(55, 'كتابة سيناريو', NULL, 3, 'mouaz mohammed alkhateeb', '2022-07-08 05:02:42', '2022-07-08 05:02:42'),
(56, 'كتابة محتوى متخصص', NULL, 3, 'mouaz mohammed alkhateeb', '2022-07-08 05:02:56', '2022-07-08 05:02:56'),
(57, 'خدمات التلخيص', NULL, 3, 'mouaz mohammed alkhateeb', '2022-07-08 05:03:22', '2022-07-08 05:03:22'),
(58, 'كتابة محتوى مواقع', NULL, 3, 'mouaz mohammed alkhateeb', '2022-07-08 05:03:57', '2022-07-08 05:03:57'),
(59, 'كتابة مقالات ومراجعات', NULL, 3, 'mouaz mohammed alkhateeb', '2022-07-08 05:04:10', '2022-07-08 05:04:10'),
(70, 'كتابة النصوص على برنامج word', NULL, 3, 'mouaz mohammed alkhateeb', '2022-07-08 07:33:39', '2022-07-08 07:33:39'),
(71, 'خدمات excel', NULL, 3, 'mouaz mohammed alkhateeb', '2022-07-08 07:34:13', '2022-07-08 07:34:13'),
(72, 'البرمجة والتطوير', 'القسم السابع', NULL, 'mouaz mohammed alkhateeb', '2022-07-08 08:14:42', '2022-07-08 15:18:24'),
(73, 'أنظمة إدارة المحتوى', NULL, 72, 'mouaz mohammed alkhateeb', '2022-07-08 08:15:20', '2022-07-08 08:15:20'),
(74, 'html', NULL, 72, 'mouaz mohammed alkhateeb', '2022-07-08 08:15:31', '2022-07-08 08:15:31'),
(75, 'css', NULL, 72, 'mouaz mohammed alkhateeb', '2022-07-08 08:15:39', '2022-07-08 08:15:39'),
(76, 'php', NULL, 72, 'mouaz mohammed alkhateeb', '2022-07-08 08:15:47', '2022-07-08 08:15:47'),
(77, 'python', NULL, 72, 'mouaz mohammed alkhateeb', '2022-07-08 08:15:55', '2022-07-08 08:15:55'),
(78, 'java', NULL, 72, 'mouaz mohammed alkhateeb', '2022-07-08 08:16:06', '2022-07-08 08:16:06'),
(79, 'android', NULL, 72, 'mouaz mohammed alkhateeb', '2022-07-08 08:16:21', '2022-07-08 08:16:21'),
(80, 'تطوير متاجر إلكترونية', NULL, 72, 'mouaz mohammed alkhateeb', '2022-07-08 08:16:38', '2022-07-08 08:16:38'),
(81, 'خدمات wordpress', NULL, 72, 'mouaz mohammed alkhateeb', '2022-07-08 08:16:54', '2022-07-08 08:16:54'),
(82, 'ios', NULL, 72, 'mouaz mohammed alkhateeb', '2022-07-08 08:17:04', '2022-07-08 08:17:04'),
(83, 'bootstrap', NULL, 72, 'mouaz mohammed alkhateeb', '2022-07-08 08:17:21', '2022-07-08 08:17:21'),
(84, 'vue.js', NULL, 72, 'mouaz mohammed alkhateeb', '2022-07-08 08:17:35', '2022-07-08 08:17:35'),
(85, 'react.js', NULL, 72, 'mouaz mohammed alkhateeb', '2022-07-08 08:17:46', '2022-07-08 08:17:46'),
(86, 'javascript', NULL, 72, 'mouaz mohammed alkhateeb', '2022-07-08 08:18:14', '2022-07-08 08:18:14'),
(87, 'صياانة شبكات', NULL, 6, 'mouaz mohammed alkhateeb', '2022-07-08 08:25:40', '2022-07-08 08:25:40'),
(88, 'مساعد إفتراضي', NULL, 6, 'mouaz mohammed alkhateeb', '2022-07-08 08:25:53', '2022-07-08 08:25:53'),
(89, 'خدمات أنظمة التشغيل', NULL, 6, 'mouaz mohammed alkhateeb', '2022-07-08 08:26:24', '2022-07-08 08:26:50'),
(90, 'خدمة ترجمة الللغة الإيطالية', NULL, 3, 'mouaz mohammed alkhateeb', '2022-07-08 15:17:08', '2022-07-08 15:17:08'),
(91, 'خدمة ترجمة الللغة الرومانية', NULL, 3, 'mouaz mohammed alkhateeb', '2022-07-08 15:17:25', '2022-07-08 15:17:25');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(999) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `section_id` bigint(20) UNSIGNED NOT NULL,
  `service_provider_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Value_status` int(11) NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `name`, `description`, `section_id`, `service_provider_id`, `status`, `Value_status`, `price`, `image`, `deleted_at`, `created_at`, `updated_at`) VALUES
(4, 'تصميم مواقع الويب بلغة php& laravel', 'السعر يشمل crud فقط وأي تعديل إضافي يعتبر برسوم مختلفة', 76, 3, 'فعالة', 1, '700000', 'images/serviceImage/1657279219.png', NULL, '2022-07-08 08:20:19', '2022-07-09 08:46:05'),
(5, 'تصميم لوغوإحترافي بزمن قياسي', 'أي تعديل يعتبر مأجور برسوم مختلفة.', 49, 3, 'فعالة', 1, '75000', 'images/serviceImage/1657279293.jpg', NULL, '2022-07-08 08:21:33', '2022-07-08 08:28:54'),
(6, 'خدمة التغريغ الصوتي والسكربتات', 'السعر قابل للتفاوض.', 40, 3, 'فعالة', 1, '800000', 'images/serviceImage/1657279352.jpg', NULL, '2022-07-08 08:22:32', '2022-07-08 08:28:59'),
(8, 'تنصيب نظام ويندوز وماك ولينوكس', NULL, 89, 3, 'فعالة', 1, '30000', 'images/serviceImage/1657279697.jpg', NULL, '2022-07-08 08:28:17', '2022-07-08 08:28:44'),
(9, 'تصميم برامج سطح مكتب بإستخدام python', NULL, 77, 5, 'فعالة', 1, '950000', 'images/serviceImage/1657368460.jpg', NULL, '2022-07-09 07:56:10', '2022-07-09 09:07:40'),
(10, 'حل مشاكل الشبكات الحاسوبية', NULL, 87, 5, 'فعالة', 1, '800000', 'images/serviceImage/1657364245.jfif', NULL, '2022-07-09 07:57:25', '2022-07-09 08:48:56'),
(11, 'انشاء متجر على منصة shopify', NULL, 80, 7, 'فعالة', 1, '600000', 'images/serviceImage/1657364338.png', NULL, '2022-07-09 07:58:58', '2022-07-09 08:50:01'),
(12, 'تنفيذ مخططات system anylses لتحليل المشاريع', NULL, 88, 7, 'فعالة', 1, '750000', 'images/serviceImage/1657364469.jpg', NULL, '2022-07-09 08:01:09', '2022-07-09 08:50:09'),
(13, 'تصميم وبرمجة قالب wordpress', NULL, 81, 7, 'فعالة', 1, '300000', 'images/serviceImage/1657364542.jpeg', NULL, '2022-07-09 08:02:22', '2022-07-09 08:50:18'),
(14, 'إدارة صفحات الفيسبوك والأنستا بإحترافية عالية', NULL, 28, 8, 'فعالة', 1, '50000', 'images/serviceImage/1657365679.jpg', NULL, '2022-07-09 08:21:19', '2022-07-09 08:50:30'),
(15, 'جيت بوست في موقع صبايا لدعم موقعك وتصدر محركات البحث', NULL, 29, 8, 'فعالة', 1, '60000', 'images/serviceImage/1657365759.jpg', NULL, '2022-07-09 08:22:39', '2022-07-09 08:50:36'),
(16, 'خطة تسويق متكاملة لمشروعك أو متجرك', NULL, 30, 8, 'فعالة', 1, '450000', 'images/serviceImage/1657365804.jpg', NULL, '2022-07-09 08:23:24', '2022-07-09 08:50:55'),
(17, 'تصميم فيديو موشن غرافيك مع رسم إبداعي', NULL, 43, 11, 'فعالة', 1, '790000', 'images/serviceImage/1657365933.jpg', NULL, '2022-07-09 08:25:08', '2022-07-09 08:51:19'),
(18, 'تصميم ومونتاج مشاريع فيديو', NULL, 44, 11, 'فعالة', 1, '25000', 'images/serviceImage/1657366006.jpg', NULL, '2022-07-09 08:26:46', '2022-07-09 08:51:26'),
(19, 'تصميم لوغو بإحترافية', NULL, 49, 11, 'فعالة', 1, '85000', 'images/serviceImage/1657366053.jpg', NULL, '2022-07-09 08:27:33', '2022-07-09 08:51:12'),
(20, 'رسوم متحركة 2D', NULL, 42, 12, 'فعالة', 1, '120000', 'images/serviceImage/1657366142.jpg', NULL, '2022-07-09 08:29:02', '2022-07-09 08:51:45'),
(21, 'تصوير لتطبيقات الموبايل عن طريق adobe xd', NULL, 42, 12, 'فعالة', 1, '600000', 'images/serviceImage/1657366247.png', NULL, '2022-07-09 08:30:47', '2022-07-09 08:51:53'),
(22, 'تصميم معماري داخلي وتنفيذي', NULL, 45, 12, 'فعالة', 1, '450000', 'images/serviceImage/1657366326.jpg', NULL, '2022-07-09 08:32:06', '2022-07-09 08:52:29'),
(23, 'كتابة مقالات علمية متخصصة بعلوم الحاسوب', NULL, 59, 13, 'فعالة', 1, '600000', 'images/serviceImage/1657366490.jpg', NULL, '2022-07-09 08:34:50', '2022-07-09 08:52:18'),
(24, 'كتابة خطابات توصية وخطاب النية بشكل إحترافي', NULL, 59, 13, 'فعالة', 1, '50000', 'images/serviceImage/1657366551.png', NULL, '2022-07-09 08:35:51', '2022-07-09 08:52:38'),
(25, 'كتابة سيرة ذاتية مميزة ومدققة.', NULL, 53, 13, 'فعالة', 1, '80000', 'images/serviceImage/1657366596.jpg', NULL, '2022-07-09 08:36:36', '2022-07-09 08:52:46'),
(26, 'كتابة شروط الخصوصية والأحكام للشركات', NULL, 56, 13, 'فعالة', 1, '900000', 'images/serviceImage/1657366673.png', NULL, '2022-07-09 08:37:53', '2022-07-09 08:52:52'),
(27, 'ترجمة وتنضيد نصوص من اللغة العربية إلى الإيطالية', NULL, 90, 13, 'فعالة', 1, '800000', 'images/serviceImage/1657366757.jpg', NULL, '2022-07-09 08:39:17', '2022-07-09 08:51:06'),
(28, 'خدمة إدخال وتحليل البيانات', NULL, 9, 19, 'فعالة', 1, '600000', 'images/serviceImage/1657366881.png', NULL, '2022-07-09 08:41:21', '2022-07-09 08:45:34'),
(29, 'تصميم لوحة تحكم على برنامج الإكسل', NULL, 71, 19, 'فعالة', 1, '800000', 'images/serviceImage/1657366962.jpg', NULL, '2022-07-09 08:42:42', '2022-07-09 08:46:53'),
(30, 'تفريغ نصوص من الإنكليزية للعربية', NULL, 40, 19, 'فعالة', 1, '70000', 'images/serviceImage/1657367033.jpg', NULL, '2022-07-09 08:43:53', '2022-07-09 08:46:40'),
(31, 'اتعليق صوتي وسكربتات يوتيوب', NULL, 39, 19, 'فعالة', 1, '96000', 'images/serviceImage/1657367069.jpg', NULL, '2022-07-09 08:44:29', '2022-07-09 08:46:31'),
(32, 'تصميم مواقع بلغة javascript', NULL, 86, 3, 'فعالة', 1, '800000', 'images/serviceImage/1657367849.png', NULL, '2022-07-09 08:57:29', '2022-07-09 09:02:42'),
(33, 'بناء واجهات أمامية إستخدام vue.js', NULL, 85, 3, 'فعالة', 1, '800000', 'images/serviceImage/1657367983.jpeg', NULL, '2022-07-09 08:59:43', '2022-07-09 09:02:47'),
(34, 'تصميم تطبيقات موبايل بإستخدام flutter', NULL, 79, 3, 'فعالة', 1, '86000', 'images/serviceImage/1657368142.png', NULL, '2022-07-09 09:02:22', '2022-07-09 09:02:53');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '/assets/img/faces/2.jpg',
  `socialite` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bio` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `roles_name` text COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '["customer"]',
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'غير نشط',
  `last_seen` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `provider_id`, `avatar`, `socialite`, `bio`, `roles_name`, `status`, `last_seen`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'mouaz mohammed alkhateeb', 'mouaz@gmail.com', '$2y$10$R2CGW8SM.OgclJROWRMVC.LltemJQlRP6nMx8j706fhKe9kqn.F6W', NULL, '/images/profile/1657278469.jpg', NULL, NULL, '[\"owner\"]', 'نشط', NULL, NULL, '2022-07-07 15:56:41', '2022-07-08 08:07:49'),
(3, 'provider', 'provider@gmail.com', '$2y$10$.VAjktCTT/0ad59ycQUNS.nxFd2GEa7Ey/O3Z5l05iPDU6sheSnCS', NULL, '/images/profile/1657271504.png', NULL, 'مقدم خدمات عديدة وبأسعار جيدة,اعمل كطالب في قسم هندسة الحواسيب والأتمتة.', '[\"provider\"]', 'نشط', NULL, NULL, '2022-07-08 05:15:46', '2022-07-08 06:11:44'),
(4, 'customer', 'customer@gmail.com', '$2y$10$q8Z0xV1FsVIAcDY1cH8s7.pisthJcGbTKFuPh9VjnOlpMDzD.HzKi', NULL, '/images/profile/1657271554.png', NULL, 'زبون نشيط وصادق في التعاملات.', '[\"customer\"]', 'نشط', NULL, NULL, '2022-07-08 05:16:24', '2022-07-08 06:12:34'),
(5, 'ahmad', 'ahmad@gmail.com', '$2y$10$3gkSr3I62HoW/uzRMWfr5usTXRNuMEmY6MF/pbBaHEGt/FkFtOofa', NULL, '/images/profile/1657271308.png', NULL, 'تحياتي..\r\nمهندس برمجيات بخبرة خمس سنوات,أقدم خدمات مميزة وبأسعار تنافسية.', '[\"provider\"]', 'نشط', NULL, NULL, '2022-07-08 05:16:51', '2022-07-09 06:44:48'),
(6, 'gamal', 'gamal@gmail.com', '$2y$10$K0uDkBDFCFC9susU7sgLeO7Pyt/4AduiETb.ajZqwiHjjXvc3ZsqG', NULL, '/images/profile/1657271360.png', NULL, 'زبون نشيط.', '[\"customer\"]', 'نشط', NULL, NULL, '2022-07-08 05:17:17', '2022-07-08 06:09:20'),
(7, 'amir', 'amir@gmail.com', '$2y$10$HvTUwwEO.ASbvE1/cgHbBOFpTuAKdg2B05jl.Ur4w5JMUJW8BxqgS', NULL, '/images/profile/1657271642.jpg', NULL, 'خبرة ثلاثة سنوات في مونتاج الفيديو وتصميم الصور.', '[\"provider\"]', 'نشط', NULL, NULL, '2022-07-08 05:17:39', '2022-07-08 06:14:02'),
(8, 'saher', 'saher@gmail.com', '$2y$10$4.b1IulrgR8Ya2PLbasc0uW2pj9Pqe1sKC8UcVOP7KQZtt/Wi9pHy', NULL, '/images/profile/1657271703.jpg', NULL, 'خدمات التسويق الإلكتروني بكفاءة وسرعة وجدية في التعامل .', '[\"provider\"]', 'نشط', NULL, NULL, '2022-07-08 05:17:59', '2022-07-08 06:15:03'),
(9, 'khaled', 'khaled@gmail.com', '$2y$10$ADRVA15o3nsuS.F36OSdNeQt9cmZ8zx7FLQA0o9JakoEaDk2Ut4ym', NULL, '/images/profile/1657273949.jpg', NULL, 'زبون نشيط.', '[\"customer\"]', 'نشط', NULL, NULL, '2022-07-08 05:18:23', '2022-07-08 06:52:29'),
(10, 'karam', 'karam@gmail.com', '$2y$10$.TnhfNWdz9hlC3LBsZSh7.W2j8dhRXKWY95ITV/XqGEKLGAVbvLK6', NULL, '/images/profile/1657274002.jpg', NULL, 'زبون ومشتري دائم.', '[\"customer\"]', 'نشط', NULL, NULL, '2022-07-08 05:18:54', '2022-07-08 06:53:22'),
(11, 'lia', 'lia@gmail.com', '$2y$10$6TRPOx9Fj9X9Hh14QibkNufpymNOX0m0JtY7GBfDR6fEcz4adDmPa', NULL, '/images/profile/1657271874.jpg', NULL, 'طالبة في الأدب الفرنسي وأقدم خدمات الترجمة من وإلى الفرنسية مع التدقيق.', '[\"provider\"]', 'نشط', NULL, NULL, '2022-07-08 05:19:22', '2022-07-08 06:17:54'),
(12, 'yara', 'yara@gmail.com', '$2y$10$BWCdzixMUPhAdQ46mP9h6ON8s.K4qyXfCeKD29F1OUGqImCs8lPzu', NULL, '/images/profile/1657271979.jpg', NULL, 'خبرة مميزة في التفريغ الصوتي والإلقاء الصوتي وسكربتات الأفلام.', '[\"provider\"]', 'نشط', NULL, NULL, '2022-07-08 05:19:55', '2022-07-08 06:19:39'),
(13, 'heba', 'heba@gmail.com', '$2y$10$4m.zPCWzaAZ658CU1HS.B.C6kSHSNlimdpl5pvswsbEUqsVeOCcM2', NULL, '/images/profile/1657272323.jpg', NULL, 'طالبة في قسم هندسة الحواسيب والأتمتة ومقدمة خدمات مميزة وبأسعار تنافسية.', '[\"provider\"]', 'نشط', NULL, NULL, '2022-07-08 05:20:24', '2022-07-08 06:25:23'),
(14, 'ahlam', 'ahlam@gmail.com', '$2y$10$cTA7P8psGrmMB7huYmohYOsIjf1o4syILLz5pDrFK0Mtbn1onFlMq', NULL, '/images/profile/1657273272.png', NULL, 'زبون مميز وطالبة في قسم هندسة الحواسيب والأتمتة.', '[\"customer\"]', 'نشط', NULL, NULL, '2022-07-08 05:20:49', '2022-07-08 06:41:12'),
(15, 'mira', 'mira@gmail.com', '$2y$10$C851RsljASn1zbyTC/ycpup0KpJcbs3.6RiheO2hPMks4dAalBR/S', NULL, '/images/profile/1657273422.jpg', NULL, 'زبون دائم.', '[\"customer\"]', 'نشط', NULL, NULL, '2022-07-08 05:21:13', '2022-07-08 06:43:42'),
(16, 'yaman', 'yaman@gmail.com', '$2y$10$XoL3AVNvy.M36Ob71Tujk.SNZSovFnxbQz80FzPC1szUXtj/xSj82', NULL, '/images/profile/1657273708.jpg', NULL, 'زبون دائم.', '[\"customer\"]', 'نشط', NULL, NULL, '2022-07-08 05:21:43', '2022-07-08 06:48:28'),
(17, 'omar', 'omar@gmail.com', '$2y$10$r9rBHSRUpXP8wFyQ43chfu8T/lT2xgJjpJh8C5jUG81/vQpa.JURy', NULL, '/images/profile/1657273808.jpg', NULL, 'زبون نشط.', '[\"customer\"]', 'نشط', NULL, NULL, '2022-07-08 05:22:11', '2022-07-08 06:50:08'),
(18, 'yazan', 'yazan@gmail.com', '$2y$10$NhrLYv7TYOxJLyryVpiUYeKk5odUSP.oXrKOwACVfSZwCAmGjXQ62', NULL, '/images/profile/1657273748.jpg', NULL, 'زبون دائم.', '[\"customer\"]', 'نشط', NULL, NULL, '2022-07-08 05:22:37', '2022-07-08 06:49:08'),
(19, 'abd', 'abd@gmail.com', '$2y$10$SuswEHZqBijRL2YysJk0RuBJMl5fsn3sRnIX3Io.iAhOrsPnRCtby', NULL, '/images/profile/1657271810.png', NULL, 'كاتب ثقافي ومدقق لغوي بخبرة عشرة سنوات.', '[\"provider\"]', 'نشط', NULL, NULL, '2022-07-08 05:23:01', '2022-07-08 06:16:50'),
(20, 'ibraheem', 'ibraheem@gmail.com', '$2y$10$4/R9SZtjlsKI8pg3yWgereyFzR6wCd.xFrym32OIUDswlfFawqi2G', NULL, '/images/profile/1657274065.jpg', NULL, 'زبون ومشتري دائم.', '[\"customer\"]', 'نشط', NULL, NULL, '2022-07-08 05:23:32', '2022-07-08 06:54:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attachments_orders`
--
ALTER TABLE `attachments_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attachments_orders_order_id_foreign` (`order_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `friends`
--
ALTER TABLE `friends`
  ADD PRIMARY KEY (`id`),
  ADD KEY `friends_user_foreign` (`user`),
  ADD KEY `friends_friend_foreign` (`friend`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `messages_sender_id_foreign` (`sender_id`),
  ADD KEY `messages_receiver_id_foreign` (`receiver_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_service_id_foreign` (`service_id`),
  ADD KEY `orders_section_id_foreign` (`section_id`);

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
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ratings_services_id_foreign` (`services_id`),
  ADD KEY `ratings_user_id_foreign` (`user_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sections_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `services_section_id_foreign` (`section_id`),
  ADD KEY `services_service_provider_id_foreign` (`service_provider_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attachments_orders`
--
ALTER TABLE `attachments_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `friends`
--
ALTER TABLE `friends`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attachments_orders`
--
ALTER TABLE `attachments_orders`
  ADD CONSTRAINT `attachments_orders_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `friends`
--
ALTER TABLE `friends`
  ADD CONSTRAINT `friends_friend_foreign` FOREIGN KEY (`friend`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `friends_user_foreign` FOREIGN KEY (`user`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_receiver_id_foreign` FOREIGN KEY (`receiver_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `messages_sender_id_foreign` FOREIGN KEY (`sender_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orders_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ratings`
--
ALTER TABLE `ratings`
  ADD CONSTRAINT `ratings_services_id_foreign` FOREIGN KEY (`services_id`) REFERENCES `services` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ratings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sections`
--
ALTER TABLE `sections`
  ADD CONSTRAINT `sections_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `services`
--
ALTER TABLE `services`
  ADD CONSTRAINT `services_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `services_service_provider_id_foreign` FOREIGN KEY (`service_provider_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
