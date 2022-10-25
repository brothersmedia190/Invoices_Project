-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 24, 2022 at 04:20 PM
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
-- Database: `invoices_project`
--

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
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_number` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice_Date` date DEFAULT NULL,
  `Due_date` date DEFAULT NULL,
  `product` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_id` bigint(20) UNSIGNED NOT NULL,
  `Amount_collection` decimal(8,2) DEFAULT NULL,
  `Amount_Commission` decimal(8,2) NOT NULL,
  `Discount` decimal(8,2) NOT NULL,
  `Value_VAT` decimal(8,2) NOT NULL,
  `Rate_VAT` varchar(999) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Total` decimal(8,2) NOT NULL,
  `Status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Value_Status` int(11) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Payment_Date` date DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `invoice_number`, `invoice_Date`, `Due_date`, `product`, `section_id`, `Amount_collection`, `Amount_Commission`, `Discount`, `Value_VAT`, `Rate_VAT`, `Total`, `Status`, `Value_Status`, `note`, `Payment_Date`, `deleted_at`, `created_at`, `updated_at`) VALUES
(7, '34', '2022-10-22', '2022-10-21', 'v1', 1, '132123.00', '2.00', '1.00', '0.05', '5%', '1.05', 'مدفوعة', 1, 'asdad', '2022-10-22', NULL, '2022-10-22 17:41:12', '2022-10-22 17:56:49'),
(8, '554', '2022-10-22', '2022-10-20', 'v1', 1, '23.00', '4.00', '2.00', '0.10', '5%', '2.10', 'مدفوعة جزئيا', 3, 'wdfwf', '2022-10-22', NULL, '2022-10-22 17:43:25', '2022-10-22 17:57:06'),
(9, '456', '2022-10-22', '2022-10-19', 'v1', 1, '787.00', '2.00', '1.00', '0.10', '10%', '1.10', 'غير مدفوعة', 2, 'asdasd', NULL, NULL, '2022-10-22 17:44:54', '2022-10-22 17:44:54'),
(10, '34', '2022-10-22', '2022-10-18', 'v1', 1, '787.00', '2.00', '1.00', '0.05', '5%', '1.05', 'غير مدفوعة', 2, 'assdas', NULL, NULL, '2022-10-22 17:46:32', '2022-10-22 17:46:32'),
(11, '34', '2022-10-22', '2022-10-18', 'v1', 1, '787.00', '2.00', '1.00', '0.05', '5%', '1.05', 'غير مدفوعة', 2, 'assdas', NULL, '2022-10-22 17:57:19', '2022-10-22 17:46:58', '2022-10-22 17:57:19'),
(12, '878', '2022-10-22', '2022-10-22', 'v1', 1, '888.00', '3.00', '1.00', '0.20', '10%', '2.20', 'غير مدفوعة', 2, 'trert', NULL, NULL, '2022-10-22 19:56:33', '2022-10-22 19:56:33');

-- --------------------------------------------------------

--
-- Table structure for table `invoices_details`
--

CREATE TABLE `invoices_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_Invoice` bigint(20) UNSIGNED NOT NULL,
  `invoice_number` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Section` varchar(999) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Value_Status` int(11) NOT NULL,
  `Payment_Date` date DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoices_details`
--

INSERT INTO `invoices_details` (`id`, `id_Invoice`, `invoice_number`, `product`, `Section`, `Status`, `Value_Status`, `Payment_Date`, `note`, `user`, `created_at`, `updated_at`) VALUES
(6, 7, '34', 'v1', '1', 'غير مدفوعة', 2, NULL, 'asdad', 'abdo', '2022-10-22 17:41:12', '2022-10-22 17:41:12'),
(7, 8, '554', 'v1', '1', 'غير مدفوعة', 2, NULL, 'wdfwf', 'abdo', '2022-10-22 17:43:25', '2022-10-22 17:43:25'),
(8, 9, '456', 'v1', '1', 'غير مدفوعة', 2, NULL, 'asdasd', 'abdo', '2022-10-22 17:44:54', '2022-10-22 17:44:54'),
(9, 10, '34', 'v1', '1', 'غير مدفوعة', 2, NULL, 'assdas', 'abdo', '2022-10-22 17:46:32', '2022-10-22 17:46:32'),
(10, 11, '34', 'v1', '1', 'غير مدفوعة', 2, NULL, 'assdas', 'abdo', '2022-10-22 17:46:58', '2022-10-22 17:46:58'),
(11, 7, '34', 'v1', '1', 'مدفوعة', 1, '2022-10-22', 'asdad', 'abdo', '2022-10-22 17:56:49', '2022-10-22 17:56:49'),
(12, 8, '554', 'v1', '1', 'مدفوعة جزئيا', 3, '2022-10-22', 'wdfwf', 'abdo', '2022-10-22 17:57:06', '2022-10-22 17:57:06'),
(13, 12, '878', 'v1', '1', 'غير مدفوعة', 2, NULL, 'trert', 'abdo', '2022-10-22 19:56:34', '2022-10-22 19:56:34');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_attachments`
--

CREATE TABLE `invoice_attachments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `file_name` varchar(999) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice_number` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Created_by` varchar(999) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoice_attachments`
--

INSERT INTO `invoice_attachments` (`id`, `file_name`, `invoice_number`, `Created_by`, `invoice_id`, `created_at`, `updated_at`) VALUES
(5, 'namecheap-order-100597676.pdf', '34', 'abdo', 7, '2022-10-22 17:41:12', '2022-10-22 17:41:12'),
(6, 'namecheap-order-100597676.pdf', '554', 'abdo', 8, '2022-10-22 17:43:25', '2022-10-22 17:43:25'),
(7, 'namecheap-order-100597676.pdf', '456', 'abdo', 9, '2022-10-22 17:44:54', '2022-10-22 17:44:54'),
(8, 'namecheap-order-100597676.pdf', '34', 'abdo', 10, '2022-10-22 17:46:32', '2022-10-22 17:46:32'),
(9, 'namecheap-order-100597676.pdf', '34', 'abdo', 11, '2022-10-22 17:46:58', '2022-10-22 17:46:58'),
(10, 'user-png-icon-16.jpg', '554', 'abdo', 8, '2022-10-22 18:02:23', '2022-10-22 18:02:23'),
(11, 'WmFwZndlY212dk5URXZjbWptRUVjbW12Y21qYW14am1Uag.jpg', '878', 'abdo', 12, '2022-10-22 19:56:34', '2022-10-22 19:56:34');

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
(4, '2022_10_21_151503_create_sections_table', 1),
(5, '2022_10_21_151706_create_invoices_table', 1),
(6, '2022_10_21_151821_create_products_table', 1),
(7, '2022_10_21_151842_create_invoices_details_table', 1),
(8, '2022_10_21_151911_create_invoice_attachments_table', 1),
(9, '2022_10_21_155934_create_permission_tables', 1),
(10, '2022_10_21_220000_create_notifications_table', 2);

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
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2);

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
('694d7af9-67d4-4c76-a1ba-3187abd604ee', 'App\\Notifications\\Add_invoice_new', 'App\\Models\\User', 2, '{\"id\":12,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"abdo\"}', NULL, '2022-10-22 19:56:36', '2022-10-22 19:56:36'),
('8709c509-4e72-4812-afe7-55d979d750b9', 'App\\Notifications\\Add_invoice_new', 'App\\Models\\User', 1, '{\"id\":12,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"abdo\"}', NULL, '2022-10-22 19:56:36', '2022-10-22 19:56:36'),
('c73a6180-10b6-4a80-a5ba-75850e3d2dab', 'App\\Notifications\\Add_invoice_new', 'App\\Models\\User', 1, '{\"id\":3,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"abdo\"}', '2022-10-22 19:54:17', '2022-10-22 16:52:36', '2022-10-22 19:54:17'),
('e11030f0-a6ea-431c-b43d-a8b9bcb2e6c5', 'App\\Notifications\\Add_invoice_new', 'App\\Models\\User', 1, '{\"id\":5,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"abdo\"}', '2022-10-22 19:54:17', '2022-10-22 17:35:54', '2022-10-22 19:54:17'),
('f3e7a489-196f-47c9-9ed5-3b4ee9196c7a', 'App\\Notifications\\Add_invoice_new', 'App\\Models\\User', 1, '{\"id\":4,\"title\":\"\\u062a\\u0645 \\u0627\\u0636\\u0627\\u0641\\u0629 \\u0641\\u0627\\u062a\\u0648\\u0631\\u0629 \\u062c\\u062f\\u064a\\u062f \\u0628\\u0648\\u0627\\u0633\\u0637\\u0629 :\",\"user\":\"abdo\"}', '2022-10-22 19:54:17', '2022-10-22 16:53:55', '2022-10-22 19:54:17');

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
(1, 'الفواتير', 'web', '2022-10-21 19:37:27', '2022-10-21 19:37:27'),
(2, 'قائمة الفواتير', 'web', '2022-10-21 19:37:28', '2022-10-21 19:37:28'),
(3, 'الفواتير المدفوعة', 'web', '2022-10-21 19:37:28', '2022-10-21 19:37:28'),
(4, 'الفواتير المدفوعة جزئيا', 'web', '2022-10-21 19:37:28', '2022-10-21 19:37:28'),
(5, 'الفواتير الغير مدفوعة', 'web', '2022-10-21 19:37:28', '2022-10-21 19:37:28'),
(6, 'ارشيف الفواتير', 'web', '2022-10-21 19:37:28', '2022-10-21 19:37:28'),
(7, 'التقارير', 'web', '2022-10-21 19:37:28', '2022-10-21 19:37:28'),
(8, 'تقرير الفواتير', 'web', '2022-10-21 19:37:28', '2022-10-21 19:37:28'),
(9, 'تقرير العملاء', 'web', '2022-10-21 19:37:28', '2022-10-21 19:37:28'),
(10, 'المستخدمين', 'web', '2022-10-21 19:37:28', '2022-10-21 19:37:28'),
(11, 'قائمة المستخدمين', 'web', '2022-10-21 19:37:28', '2022-10-21 19:37:28'),
(12, 'صلاحيات المستخدمين', 'web', '2022-10-21 19:37:28', '2022-10-21 19:37:28'),
(13, 'الاعدادات', 'web', '2022-10-21 19:37:29', '2022-10-21 19:37:29'),
(14, 'المنتجات', 'web', '2022-10-21 19:37:29', '2022-10-21 19:37:29'),
(15, 'الاقسام', 'web', '2022-10-21 19:37:29', '2022-10-21 19:37:29'),
(16, 'اضافة فاتورة', 'web', '2022-10-21 19:37:29', '2022-10-21 19:37:29'),
(17, 'حذف الفاتورة', 'web', '2022-10-21 19:37:29', '2022-10-21 19:37:29'),
(18, 'تصدير EXCEL', 'web', '2022-10-21 19:37:29', '2022-10-21 19:37:29'),
(19, 'تغير حالة الدفع', 'web', '2022-10-21 19:37:29', '2022-10-21 19:37:29'),
(20, 'تعديل الفاتورة', 'web', '2022-10-21 19:37:29', '2022-10-21 19:37:29'),
(21, 'ارشفة الفاتورة', 'web', '2022-10-21 19:37:29', '2022-10-21 19:37:29'),
(22, 'طباعةالفاتورة', 'web', '2022-10-21 19:37:29', '2022-10-21 19:37:29'),
(23, 'اضافة مرفق', 'web', '2022-10-21 19:37:29', '2022-10-21 19:37:29'),
(24, 'حذف المرفق', 'web', '2022-10-21 19:37:29', '2022-10-21 19:37:29'),
(25, 'اضافة مستخدم', 'web', '2022-10-21 19:37:29', '2022-10-21 19:37:29'),
(26, 'تعديل مستخدم', 'web', '2022-10-21 19:37:29', '2022-10-21 19:37:29'),
(27, 'حذف مستخدم', 'web', '2022-10-21 19:37:29', '2022-10-21 19:37:29'),
(28, 'عرض صلاحية', 'web', '2022-10-21 19:37:30', '2022-10-21 19:37:30'),
(29, 'اضافة صلاحية', 'web', '2022-10-21 19:37:30', '2022-10-21 19:37:30'),
(30, 'تعديل صلاحية', 'web', '2022-10-21 19:37:30', '2022-10-21 19:37:30'),
(31, 'حذف صلاحية', 'web', '2022-10-21 19:37:30', '2022-10-21 19:37:30'),
(32, 'اضافة منتج', 'web', '2022-10-21 19:37:30', '2022-10-21 19:37:30'),
(33, 'تعديل منتج', 'web', '2022-10-21 19:37:30', '2022-10-21 19:37:30'),
(34, 'حذف منتج', 'web', '2022-10-21 19:37:30', '2022-10-21 19:37:30'),
(35, 'اضافة قسم', 'web', '2022-10-21 19:37:30', '2022-10-21 19:37:30'),
(36, 'تعديل قسم', 'web', '2022-10-21 19:37:30', '2022-10-21 19:37:30'),
(37, 'حذف قسم', 'web', '2022-10-21 19:37:30', '2022-10-21 19:37:30'),
(38, 'الاشعارات', 'web', '2022-10-21 19:37:30', '2022-10-21 19:37:30');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Product_name` varchar(999) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `section_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `Product_name`, `description`, `section_id`, `created_at`, `updated_at`) VALUES
(1, 'v1', 'sdasd', 1, '2022-10-22 16:47:14', '2022-10-22 16:47:14');

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
(1, 'owner', 'web', '2022-10-21 19:39:08', '2022-10-21 19:39:08'),
(2, 'كاتب', 'web', '2022-10-22 17:54:51', '2022-10-22 17:54:51');

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
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(21, 2),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `section_name` varchar(999) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Created_by` varchar(999) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `section_name`, `description`, `Created_by`, `created_at`, `updated_at`) VALUES
(1, 'قسم 1', '1', 'abdo', '2022-10-22 16:46:40', '2022-10-22 16:46:40');

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
  `roles_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `Status` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `roles_name`, `Status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'abdo', 'abdo@gmail.com', NULL, '$2y$10$n0PW.9A94toKR9m5H35B9e.So1j3l.r7hkPdOeW2FKxFvIQLbt/ee', '[\"owner\"]', 'مفعل', NULL, '2022-10-21 19:39:08', '2022-10-21 19:39:08'),
(2, 'ali', 'ali@gmail.com', NULL, '$2y$10$I0h249JNwrnHh4/GfdS50uAYkp911GF.MyeNJlAYLWao0r6LYOMOW', '[\"\\u0643\\u0627\\u062a\\u0628\"]', 'مفعل', NULL, '2022-10-22 17:56:05', '2022-10-22 17:56:05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoices_section_id_foreign` (`section_id`);

--
-- Indexes for table `invoices_details`
--
ALTER TABLE `invoices_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoices_details_id_invoice_foreign` (`id_Invoice`);

--
-- Indexes for table `invoice_attachments`
--
ALTER TABLE `invoice_attachments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice_attachments_invoice_id_foreign` (`invoice_id`);

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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_section_id_foreign` (`section_id`);

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
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `invoices_details`
--
ALTER TABLE `invoices_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `invoice_attachments`
--
ALTER TABLE `invoice_attachments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `invoices`
--
ALTER TABLE `invoices`
  ADD CONSTRAINT `invoices_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `invoices_details`
--
ALTER TABLE `invoices_details`
  ADD CONSTRAINT `invoices_details_id_invoice_foreign` FOREIGN KEY (`id_Invoice`) REFERENCES `invoices` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `invoice_attachments`
--
ALTER TABLE `invoice_attachments`
  ADD CONSTRAINT `invoice_attachments_invoice_id_foreign` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`) ON DELETE CASCADE;

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
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
