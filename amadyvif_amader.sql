-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 21, 2023 at 03:15 AM
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
-- Database: `organization`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `nameen` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email2` varchar(255) NOT NULL,
  `email_verify` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `admin_password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `version_type` varchar(255) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `payment` int(11) DEFAULT NULL,
  `available_sms` int(255) NOT NULL DEFAULT 0,
  `forget_code` varchar(255) DEFAULT NULL,
  `forget_time` varchar(255) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `expired_date` date DEFAULT NULL,
  `subscribe` int(11) DEFAULT NULL,
  `payment_duration` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `magazine_size` int(11) DEFAULT NULL,
  `member_size` int(11) DEFAULT NULL,
  `executive_size` int(11) DEFAULT NULL,
  `senior_size` int(11) DEFAULT NULL,
  `general_size` int(11) DEFAULT NULL,
  `notice_size` int(11) DEFAULT NULL,
  `welcome_size` int(11) DEFAULT NULL,
  `testimonial_size` int(11) DEFAULT NULL,
  `slide_size` int(11) DEFAULT NULL,
  `blood_size` int(11) DEFAULT NULL,
  `advisor_size` int(11) DEFAULT NULL,
  `sms_access` int(11) DEFAULT NULL,
  `header_size` varchar(11) DEFAULT NULL,
  `resheader_size` varchar(11) DEFAULT NULL,
  `text1` text DEFAULT NULL,
  `text2` text DEFAULT NULL,
  `text3` text DEFAULT NULL,
  `text4` text DEFAULT NULL,
  `text5` varchar(255) DEFAULT NULL,
  `fb_link` varchar(255) DEFAULT NULL,
  `youtube_link` varchar(255) DEFAULT NULL,
  `other_link` varchar(255) DEFAULT NULL,
  `registration` varchar(255) NOT NULL,
  `header` text NOT NULL,
  `footer` text DEFAULT NULL,
  `formname` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `custom1` varchar(255) DEFAULT NULL,
  `custom2` varchar(255) DEFAULT NULL,
  `custom3` varchar(255) DEFAULT NULL,
  `custom4` varchar(255) DEFAULT NULL,
  `custom5` varchar(255) DEFAULT NULL,
  `custom6` varchar(255) DEFAULT NULL,
  `custom7` varchar(255) DEFAULT NULL,
  `custom8` varchar(255) DEFAULT NULL,
  `custom9` varchar(255) DEFAULT NULL,
  `custom10` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `nameen`, `address`, `email`, `email2`, `email_verify`, `mobile`, `admin_name`, `admin_password`, `role`, `version_type`, `status`, `payment`, `available_sms`, `forget_code`, `forget_time`, `created_date`, `expired_date`, `subscribe`, `payment_duration`, `image`, `magazine_size`, `member_size`, `executive_size`, `senior_size`, `general_size`, `notice_size`, `welcome_size`, `testimonial_size`, `slide_size`, `blood_size`, `advisor_size`, `sms_access`, `header_size`, `resheader_size`, `text1`, `text2`, `text3`, `text4`, `text5`, `fb_link`, `youtube_link`, `other_link`, `registration`, `header`, `footer`, `formname`, `phone`, `custom1`, `custom2`, `custom3`, `custom4`, `custom5`, `custom6`, `custom7`, `custom8`, `custom9`, `custom10`, `created_at`, `updated_at`) VALUES
(12, 'ডেমো  ছাত্র কল্যাণ সমিতি', 'Demo Student Welfare Association', 'University Of Dhaka', 'rayhanbabu458@gmail.com', 'a2d466d297c2338164beb1bcd5e14d33', '1', '01750360044', 'demoswa', '123456', 'Admin', 'free', '1', 1000, 0, '84615', NULL, '2022-12-16', '2022-12-28', 12, 1, NULL, 5, 100, 5, 5, 5, 5, 2, 5, 2, 1000, 2, NULL, '35px', '22px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-16 12:36:46', '2022-12-16 12:36:46'),
(13, 'চিলমারী ছাত্রকল্যাণ সমিতি, ঢাকা', 'Chilmari Student Welfare Association, Dhaka', 'Shahbagh, Dhaka', 'durumanhasan@gmail.com', '231c0f3918fb160bb81e3cf94a72d26d', '1', '01316992436', 'cswad', 'CSWAD2022#', 'Admin', 'free', '1', 1000, 0, NULL, NULL, '2022-12-18', '2022-12-30', 12, 1, NULL, 5, 100, 5, 5, 5, 5, 2, 5, 2, 1000, 2, NULL, '35px', '22px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-18 15:33:46', '2022-12-18 15:33:46'),
(14, 'ম্যাথেমা', 'Mathema (A circle of mathematicians)', 'Fazlul  Huq Muslim Hall, University Of Dhaka', 'khfoysaldu007@gmail.com', '37190f237a5fd70cfd2ab812ed18c9fb', '1', '01772091515', 'mathema', 'mathema2023', 'Admin', 'free', '1', 1000, 0, NULL, NULL, '2023-01-07', '2023-01-19', 12, 1, NULL, 5, 100, 5, 5, 5, 5, 2, 5, 2, 1000, 2, NULL, '35px', '22px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-08 03:49:53', '2023-01-08 03:49:53'),
(15, 'গোবিন্দগঞ্জ উপজেলা ছাত্র কল্যাণ সমিতি', 'Gobindaganj Upazila Student Welfare Association', 'Dhaka, Bangladesh', 'abrouf1998@gmail.com', 'a217a57acd063779bb5ec175da039c12', '1', '01643039479', 'guswa', 'guswa2023', 'Admin', 'free', '1', 1000, 0, NULL, NULL, '2023-01-09', '2023-01-21', 12, 1, NULL, 5, 100, 5, 5, 5, 5, 2, 5, 3, 1000, 2, NULL, '35px', '22px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-10 00:06:22', '2023-01-10 00:25:27'),
(16, 'বিরল  জেলা ছাত্র কল্যাণ  সমিতি, ঢাকা', 'Birol Upazila  Student Welfare Association', 'University Of Dhaka', 'contact@buswad.org', 'a38a52bfc2b441da1eaaf6b284841860', '1', '01516501602', 'buswad', 'buswad$2008', 'Admin', 'free', '1', 1000, 0, NULL, NULL, '2023-01-24', '2023-02-05', 12, 1, NULL, 5, 200, 5, 5, 5, 5, 2, 15, 2, 1000, 2, NULL, '35px', '20px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-24 18:02:53', '2023-01-25 02:26:45'),
(17, 'এপ্লিমেটিক্স', 'APPLIMATICS', 'Fazlul Huq Muslim Hall, Dhaka University', 'applimatics.fh@gmail.com', '80a50d291fb073cb0886895760d8ffc3', '1', '01521407346', 'applimatics', '407346', 'Admin', 'free', '1', 1000, 0, NULL, NULL, '2023-01-27', '2023-02-08', 12, 1, NULL, 5, 100, 5, 5, 5, 5, 2, 5, 2, 1000, 2, NULL, '35px', '20px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-27 22:11:45', '2023-01-27 22:11:45'),
(18, 'ঢাকা ইউনিভার্সিটি স্টুডেন্ট এ্যাসোসিয়েশন অব কুড়িগ্রাম (ডুসাক)', 'Dhaka University Student\'s Association Of Kurigram', 'Dhaka University, Bangladesh', 'dusak.official@gmail.com', 'ab89f423b35f0f9fa5ee4a17ce0d50fc', '1', '01521309821', 'dusak', 'Dusak2023#', 'Admin', 'free', '1', 1000, 0, NULL, NULL, '2023-02-11', '2023-02-23', 12, 1, NULL, 5, 100, 5, 5, 5, 5, 2, 5, 2, 1000, 2, NULL, '35px', '20px', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-11 21:59:04', '2023-02-11 21:59:04'),
(19, 'কক্সবাজার স্টুডেন্টস  ফোরাম', 'Cox\'s Bazar Student  Forum, Dhaka University', '2nd Floor, TSC, University of Dhaka', 'csfofficialdu@gmail.com', '83cb1021b632745d74fa91049c6e651c', '1', '01615828815', 'csfdu', '65765306', 'Admin', 'paid', '1', 1000, -3, NULL, NULL, '2023-07-09', '2023-07-21', 12, 1, NULL, 5, 500, 5, 5, 5, 5, 2, 5, 6, 1000, 2, NULL, '35px', '20px', 'Dear Corporation,<br>   Thank you so much for your recent sponsorship of our organization! We were thrilled to work with you for the recent event. As a sponsor, your contribution is vital to continue our important work. We cannot succeed without the generosity of supporters like you.   We are open to new ideas and would love to find more ways to work together in the future. Please feel free to contact us if you have any questions. Thank you again for your support! We are so grateful to have you as part of our team!', 'www.csfdu.org', NULL, NULL, NULL, NULL, NULL, NULL, 'Yes', 'Exhibitors Details <br>  Tourism Fair Registration From', '<b> Stall Size :</b><br> Standard Booth(8*8)sft=64sft, Regular Rate(Negotiable)', 'Contact Person', 'Phone Number', 'Institution/Organization', 'E-mail', '', '', '', '', '', '', '', '', '2023-07-09 12:18:51', '2023-09-27 15:00:12');

-- --------------------------------------------------------

--
-- Table structure for table `apps`
--

CREATE TABLE `apps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `dureg` text NOT NULL,
  `phone` int(11) NOT NULL,
  `category` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `apps`
--

INSERT INTO `apps` (`id`, `admin_name`, `dureg`, `phone`, `category`, `created_at`, `updated_at`) VALUES
(10, 'csfdu', 'Csf Is A Students Community Based Organisation. It is the first Dhaka University based Students platform for the students of Cox\'s Bazar. Its journey started on 16th December 2009 with the motto \" Work For Better Cox’s Bazar \"We have an executive Committee of 139 members along with many renowned teachers of University of Dhaka as Adviser. Besides many professionals in Their respective fields such as Corporate Leaders,  Government & Non government policy makers, Business men are also engaged with our organisations. \r\n\r\n#What We Do..\r\n1) Organize long and short term workshops on Education & Skill development. \r\n2) Organize the Bengali cultural Programme /procession. \r\n3) Organize special training on rebuilding career & leadership quality. \r\n4) Conduct Climate Activities to create awareness and draw attention to policy makers, due to Cox’s Bazar being a Most Valuable area. \r\n5) Organize  seminar, conference and education & skill development workshop, debate,  Sports Competition and so on..\r\n6) Support the Students to get employment in different fields Through internship arrangement, career festival or voluntary jobs. \r\n7) Publish Yearly Magazine, Both English & Bangla. \r\n8) Fresher\'s Reception \r\n9) Monthly team Meeting to discuss the contemporary issues of Students. \r\n\r\n Stay Tuned With Us', 1, 'history', '2023-09-13 18:54:14', '2023-09-15 18:26:19'),
(12, 'csfdu', 'Janata Bank Account No <br>\r\n<b> Saving a/c 4405734239283</b><br>', 2, 'bank', '2023-09-14 15:56:30', '2023-09-26 16:33:08');

-- --------------------------------------------------------

--
-- Table structure for table `eiin_sms`
--

CREATE TABLE `eiin_sms` (
  `id` int(255) NOT NULL,
  `admin_name` varchar(500) NOT NULL,
  `nameen` varchar(450) DEFAULT NULL,
  `smsno` int(255) NOT NULL,
  `payment` int(120) NOT NULL,
  `payment_type` varchar(500) DEFAULT NULL,
  `ref` varchar(500) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` varchar(100) DEFAULT NULL,
  `verify_status` varchar(100) DEFAULT NULL,
  `payment_time` timestamp NULL DEFAULT NULL,
  `payment_date` date DEFAULT NULL,
  `payment_year` int(25) DEFAULT NULL,
  `payment_month` int(25) DEFAULT NULL,
  `payment_day` int(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `eiin_sms`
--

INSERT INTO `eiin_sms` (`id`, `admin_name`, `nameen`, `smsno`, `payment`, `payment_type`, `ref`, `created_at`, `status`, `verify_status`, `payment_time`, `payment_date`, `payment_year`, `payment_month`, `payment_day`) VALUES
(7, 'demoswa', 'Demo Student Welfare Association', 750, 300, 'Admin', '', '2022-12-16 02:07:24', '1', '1', '2022-12-16 13:07:22', '2022-12-16', 2022, 12, 16),
(8, 'csfdu', 'Cox\'s Bazar Student  Forum', 2500, 1000, '', '', '2023-09-25 02:19:09', '0', '1', '2010-10-10 14:10:10', '2023-09-25', 2023, 9, 25),
(9, 'csfdu', 'Cox\'s Bazar Student  Forum, Dhaka University', 750, 300, '', '', '2023-09-28 05:19:02', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'csfdu', 'Cox\'s Bazar Student  Forum, Dhaka University', 750, 300, '', '', '2023-09-29 05:25:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'csfdu', 'Cox\'s Bazar Student  Forum, Dhaka University', 750, 300, '', '', '2023-10-04 16:10:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `post` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expres`
--

CREATE TABLE `expres` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lang` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `serial` varchar(255) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `date1` date DEFAULT NULL,
  `date2` date DEFAULT NULL,
  `text1` varchar(255) DEFAULT NULL,
  `text2` varchar(255) DEFAULT NULL,
  `text3` varchar(255) DEFAULT NULL,
  `text4` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expres`
--

INSERT INTO `expres` (`id`, `lang`, `image`, `serial`, `admin_name`, `name`, `category`, `date1`, `date2`, `text1`, `text2`, `text3`, `text4`, `created_at`, `updated_at`) VALUES
(4, NULL, NULL, '1', 'demoswa', 'Md Rayhan Babu', 'President', '2022-12-08', '2023-03-16', NULL, NULL, NULL, NULL, '2022-12-16 13:22:01', '2022-12-16 13:22:01'),
(5, NULL, NULL, '1', 'cswad', 'Md. Ruman Hasan', 'President', '2018-10-01', '2021-12-01', NULL, NULL, NULL, NULL, '2022-12-18 15:42:18', '2022-12-18 15:42:18'),
(6, NULL, NULL, '2', 'cswad', 'Faysol Mahmud Rusho', 'Secretary', '2018-10-01', '2020-12-01', NULL, NULL, NULL, NULL, '2022-12-18 15:43:16', '2022-12-18 15:43:16'),
(7, NULL, NULL, '1', 'buswad', 'Demo Name', 'President', '2023-01-03', '2023-01-30', NULL, NULL, NULL, NULL, '2023-01-24 19:42:17', '2023-01-24 19:42:17'),
(8, NULL, NULL, '1', 'buswad', 'Demo Name', 'Secretary', '2022-01-24', '2023-01-24', NULL, NULL, NULL, NULL, '2023-01-24 19:42:39', '2023-01-24 19:42:39'),
(9, NULL, NULL, '01', 'applimatics', 'Nur Mohammad Salem', 'President', '2022-02-26', '2023-01-25', NULL, NULL, NULL, NULL, '2023-01-27 22:22:27', '2023-01-27 22:22:27'),
(10, NULL, NULL, '01', 'applimatics', 'Mahmud Hassan', 'Secretary', '2022-02-26', '2023-01-25', NULL, NULL, NULL, NULL, '2023-01-27 22:23:00', '2023-01-27 22:23:41'),
(11, NULL, NULL, '8', 'csfdu', 'Noman Parvez', 'President', '2020-01-10', '2022-03-17', NULL, NULL, NULL, NULL, '2023-09-14 20:39:19', '2023-09-14 20:39:19'),
(12, NULL, '1023381051.png', '9', 'csfdu', 'Miraz Uddin', 'Secretary', '2020-01-10', '2022-03-17', NULL, NULL, NULL, NULL, '2023-09-14 20:40:31', '2023-10-04 13:48:33');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `finances`
--

CREATE TABLE `finances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lang` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `admin_name` varchar(255) NOT NULL,
  `des` varchar(255) NOT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `amount` int(11) NOT NULL,
  `cetagory` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `finances`
--

INSERT INTO `finances` (`id`, `lang`, `name`, `admin_name`, `des`, `phone`, `amount`, `cetagory`, `date`, `email`, `created_at`, `updated_at`) VALUES
(7, NULL, 'Md Rayhan Babu', 'demoswa', 'daasfds', NULL, 100, 'Earning', '2022-12-15', NULL, '2022-12-16 13:06:37', '2022-12-16 13:06:37'),
(9, NULL, 'Cox\'s Bazar Chamber of Commerce and Industry', 'csfdu', '1st Cox’s Bazar Tourism Fair Sponsorship', '+880 1811-624610', 250000, 'Earning', '2023-09-26', 'Sonali Bank Limited, saving a/c 4405734239283, Moin Uddin - Dhaka University Club Manager,  Du Campus Branch', '2023-09-25 12:33:44', '2023-09-27 16:07:35'),
(10, NULL, 'Md. Niaz Morshed Elite', 'csfdu', '1st Cox’s Bazar Tourism Fair Donation.', '01913123230', 100000, 'Earning', '2023-10-01', 'Cash', '2023-09-27 18:58:11', '2023-10-01 15:26:42'),
(11, NULL, NULL, 'csfdu', 'Decoration', NULL, 870000, 'Spending', '2023-09-28', NULL, '2023-09-28 05:14:31', '2023-09-28 05:14:31'),
(12, NULL, 'Islami Bank Bangladesh Plc', 'csfdu', '1st Cox’s Bazar Tourism Fair -2023 Sponsorship', 'islamibankprd@gmail.com', 50000, 'Earning', '2023-10-02', 'Islami Bank Bangladesh Plc, SMSA-189, Sayemon Islam Bappi, Pekua Branch', '2023-10-02 17:54:01', '2023-10-03 15:14:57');

-- --------------------------------------------------------

--
-- Table structure for table `forms`
--

CREATE TABLE `forms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) NOT NULL,
  `custom1` text DEFAULT NULL,
  `custom2` text DEFAULT NULL,
  `custom3` text DEFAULT NULL,
  `custom4` text DEFAULT NULL,
  `custom5` text DEFAULT NULL,
  `custom6` text DEFAULT NULL,
  `custom7` text DEFAULT NULL,
  `custom8` text DEFAULT NULL,
  `custom9` text DEFAULT NULL,
  `custom10` text DEFAULT NULL,
  `verify_status` varchar(255) DEFAULT '0',
  `comment` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `forms`
--

INSERT INTO `forms` (`id`, `admin_name`, `name`, `email`, `phone`, `custom1`, `custom2`, `custom3`, `custom4`, `custom5`, `custom6`, `custom7`, `custom8`, `custom9`, `custom10`, `verify_status`, `comment`, `created_at`, `updated_at`) VALUES
(1, 'demoswa', 'rayhan babu', 'rayhan@gmail.com', '01750360044', 'custom Dinajpur', '', '', '', '', '', '', '', '', '', '0', NULL, '2023-09-12 10:54:46', '2023-09-12 10:54:46'),
(2, 'demoswa', 'khj', 'rayhan@gmail.com', '01750360044', 'custom Dinajpur', '', '', '', '', '', '', '', '', '', '0', NULL, '2023-09-12 10:55:08', '2023-09-12 10:55:08'),
(3, 'demoswa', 'khj', 'rayhan@gmail.com', '01750360044', 'custom Dinajpur', '', '', '', '', '', '', '', '', '', '0', NULL, '2023-09-12 10:55:36', '2023-09-12 10:55:36'),
(4, 'demoswa', 'khj', 'rayhan@gmail.com', '01750360044', 'custom Dinajpur', '', '', '4 ffssssssf', '', '', '', '', '', '', '0', NULL, '2023-09-12 10:56:04', '2023-09-12 10:56:04'),
(5, 'demoswa', 'Md Rayhan Babu', '', '01750360044', 'Department', '', '', '', '', '', '', '', '', '', '0', NULL, '2023-09-12 14:07:21', '2023-09-12 14:07:21'),
(6, 'demoswa', 'Md Rayhan Babu', '', '01750360044', 'Department', '', '', '', '', '', '', '', '', '', '0', NULL, '2023-09-12 14:08:15', '2023-09-12 14:08:15'),
(7, 'demoswa', '23', '', '01309122154', '45', '', '', '', '', '', '', '', '', '', '0', NULL, '2023-09-12 14:09:39', '2023-09-12 14:09:39'),
(8, 'demoswa', 'Md Rayhan Babu 55', '', '0175036004444', '144', '4444', '', '', '', '', '', '', '', '', '0', NULL, '2023-09-12 14:10:25', '2023-09-12 14:10:25'),
(13, 'csfdu', 'Saif', '', '01755598414', 'Hotel The Cox Today', 'hos.ctg@hotelthecoxtoday.com', '', '', '', '', '', '', '', '', '1', NULL, '2023-09-14 03:08:26', '2023-09-18 13:25:28'),
(14, 'csfdu', 'M Rezaul Karim', '', '01618099089', 'ticket stall', 'unitours.cox@gmail.com', '', '', '', '', '', '', '', '', '1', NULL, '2023-09-15 02:31:10', '2023-09-18 13:25:56'),
(15, 'csfdu', 'Nurul Anwar Munna', '', '01708777775', 'Royal Beach Resort', 'anwarnurul1934@gmail.com', '', '', '', '', '', '', '', '', '1', NULL, '2023-09-15 02:45:04', '2023-09-18 13:25:48'),
(16, 'csfdu', 'Shefayet Hoshen Ripon', '', '+8801644343563', 'Ar-Rihla Tours & Travels', 'arrihla3@gmail.com', '', '', '', '', '', '', '', '', '1', NULL, '2023-09-15 02:45:38', '2023-09-18 13:25:16'),
(18, 'csfdu', 'Omar Fayez Hridoy', '', '01887663685 /01779404190', 'Galaxy Pearl Shop', 'omar404190@gmail.com', '', '', '', '', '', '', '', '', '1', NULL, '2023-09-15 05:28:56', '2023-09-18 13:25:40'),
(21, 'csfdu', 'Mohammad Shahnawaz', '', '01720355991, 01840122116', 'Grand Beach Resort', 'grandbeachr@gmail.com', '', '', '', '', '', '', '', '', '0', NULL, '2023-09-20 04:07:52', '2023-09-20 04:07:52'),
(23, 'demoswa', 'Rayhan', '', '01750360044', 'custom1', 'custom 2', '', '', '', '', '', '', '', '', '0', NULL, '2023-09-25 16:59:59', '2023-09-25 16:59:59'),
(24, 'demoswa', 'Rayhan', '', '01750360044', 'custom1', 'custom 2', '', '', '', '', '', '', '', '', '0', NULL, '2023-09-25 18:57:55', '2023-09-25 18:57:55'),
(25, 'demoswa', 'Rayhan', '', '01750360044', '', '', '', '', '', '', '', '', '', '', '0', NULL, '2023-09-25 19:03:21', '2023-09-25 19:03:21'),
(26, 'demoswa', 'Rayhan', '', '01750360044', 'custom1', 'custom 2', '', '', '', '', '', '', '', '', '0', NULL, '2023-09-25 19:54:59', '2023-09-25 19:54:59'),
(29, 'csfdu', 'rew', '', '5464', 'ewr', 'iftekharrafti7040@gmail.com', '', '', '', '', '', '', '', '', '0', NULL, '2023-09-27 00:04:56', '2023-09-27 00:04:56');

-- --------------------------------------------------------

--
-- Table structure for table `magazines`
--

CREATE TABLE `magazines` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `serial` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `admin_name` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `text1` text NOT NULL,
  `text2` text DEFAULT NULL,
  `text3` text DEFAULT NULL,
  `text4` text DEFAULT NULL,
  `date` date DEFAULT NULL,
  `name` text DEFAULT NULL,
  `workplace` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `magazines`
--

INSERT INTO `magazines` (`id`, `serial`, `image`, `admin_name`, `category`, `title`, `text1`, `text2`, `text3`, `text4`, `date`, `name`, `workplace`, `created_at`, `updated_at`) VALUES
(37, 1, '982562664.jpg', 'demoswa', 'Slide', 'Image 1', 'text1', NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-16 12:56:44', '2022-12-16 12:56:44'),
(38, 1, '2068894564.jpg', 'demoswa', 'Welcome', 'রাশিয়া ২ লাখ সেনা নিয়ে কিয়েভে হামলার প্রস্তুতি নিচ্ছে', '২০২৩ সালের শুরুর দিকে রুশ বাহিনী নতুন করে ইউক্রেনের রাজধানী কিয়েভে হামলা করতে পারে। এই লক্ষ্যে দুই লাখ সেনা নিয়ে প্রস্তুতি নিচ্ছে ক্রেমলিন। ইউক্রেনের সশস্ত্র বাহিনীর প্রধান জেনারেল ভ্যালেরি জালুঝনি ব্রিটিশ সাময়িকী দ্য ইকনোমিস্টকে দেওয়া এক সক্ষাৎকারে তাঁর এই আশঙ্কার কথাই জানিয়েছেন।', '২০২৩ সালের শুরুর দিকে রুশ বাহিনী নতুন করে ইউক্রেনের রাজধানী কিয়েভে হামলা করতে পারে। এই লক্ষ্যে দুই লাখ সেনা নিয়ে প্রস্তুতি নিচ্ছে ক্রেমলিন। ইউক্রেনের সশস্ত্র বাহিনীর প্রধান জেনারেল ভ্যালেরি জালুঝনি ব্রিটিশ সাময়িকী দ্য ইকনোমিস্টকে দেওয়া এক সক্ষাৎকারে তাঁর এই আশঙ্কার কথাই জানিয়েছেন।', NULL, NULL, NULL, 'Md Rayhan Babu', 'Dhaka University', '2022-12-16 13:14:24', '2022-12-16 13:14:24'),
(39, 2, NULL, 'demoswa', 'Welcome', 'প্ল্যান ইন্টারন্যাশনালে চাকরি', 'স্বীকৃত বিশ্ববিদ্যালয় থেকে কমিউনিকেশনস, ইংরেজি বা অ্যাডভারটাইজিং বা এ ধরনের বিষয়ে স্নাতকোত্তর ডিগ্রি থাকতে হবে। কোনো উন্নয়ন সংস্থায় স্ট্র্যাটেজিক কমিউনিকেশনস পদে অন্তত ছয় থেকে আট বছরের চাকরির অভিজ্ঞতা থাকতে হবে। ওয়েব ও সামাজিক যোগাযোগমাধ্যমে কনটেন্ট বিষয়ে অভিজ্ঞ হতে হবে। ইংরেজি ও বাংলা ভাষায় সাবলীল হতে হবে। উপস্থাপনার দক্ষতা থাকতে হবে। যোগাযোগে দক্ষ হতে হবে। মিডিয়া রিলেশন, ফটোগ্রাফি ও ক্রিয়েটিং রাইটিংয়ে প্রশিক্ষণ থাকলে বাড়তি যোগ্যতা হিসেবে বিবেচিত হবে। ভ্রমণের মানসিকতা থাকতে হবে।', NULL, NULL, NULL, NULL, 'Fazlul Huq Muslim Hall', 'Dhaka University', '2022-12-16 13:15:40', '2022-12-16 13:15:40'),
(40, 1, '1010026100.jpg', 'demoswa', 'Testimonial', 'ছুটির দিনে সেদ্ধ কুলি পিঠা দিয়ে নাশতা', 'পানি, গুঁড়া দুধ ও লবণ একসঙ্গে ফুটিয়ে নিন। দুই রকম চালের গুঁড়া একসঙ্গে দিয়ে কাই বানিয়ে নিতে হবে। ভালো করে ময়ান দিয়ে খামির বানাতে হবে। ছোট ছোট রুটি বানিয়ে নিন। পুর দিয়ে ২ ভাঁজ করে মুখ ভালো করে চেপে বন্ধ করে দিন। বেণির মতো ভাঁজ করে নকশা করে নিতে পারেন। অথবা ছাঁচের সহায়তায় কেটে নিতে হবে। এখন পিঠাগুলো স্টিম পাত্রে রেখে ঢেকে ভাপ দিতে হবে ৬ থেকে ৭ মিনিট। এবার নামিয়ে গরম বা ঠান্ডা দুইভাবেই পরিবেশন করতে পারেন। ইচ্ছা করলে ঝাল পুর দিয়েও এই পিঠা বানানো যায়।', 'rayhan', NULL, NULL, NULL, 'Md Rayhan Babu', 'পরিসংখ্যান বিভাগ  ঢাকা বিশ্ববিদ্যালয়', '2022-12-16 13:23:39', '2022-12-16 13:23:39'),
(41, 1, '366595236.jpeg', 'guswa', 'Slide', '.', 'text1', NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-10 00:23:52', '2023-01-10 00:25:14'),
(42, 2, '1479322980.jpeg', 'guswa', 'Slide', '.', 'text1', NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-10 00:24:21', '2023-01-10 00:25:50'),
(43, 3, '440612528.jpeg', 'guswa', 'Slide', '.', 'text1', NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-10 00:25:37', '2023-01-10 00:25:37'),
(44, 1, '1165527438.jpg', 'buswad', 'Slide', 'নির্বাচন-পরবর্তী স্থিরচিত্র', 'text1', NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-24 19:31:56', '2023-01-24 19:31:56'),
(45, 2, '1316835151.jpg', 'buswad', 'Slide', 'মিটিং চলাকালীন সময়', 'text1', NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-24 19:32:18', '2023-01-24 19:32:18'),
(46, 1, '1888696125.jpg', 'buswad', 'Welcome', 'সভাপতির শুভেচ্ছা বাণী', 'text 1', 'text2', NULL, NULL, NULL, 'মোঃ রায়হান বাবু', 'সভাপতি, বিরল উপজেলা ছাত্র কল্যাণ সমিতি , ঢাকা', '2023-01-24 19:34:30', '2023-01-24 19:35:33'),
(47, 2, NULL, 'buswad', 'Welcome', 'সাধারণ সম্পাদকের বাণী', 'text1', 'text2', NULL, NULL, NULL, 'গোলাপ মোস্তফা', 'সাধারণ সম্পাদক, বিরল উপজেলা ছাত্র কল্যাণ সমিতি , ঢাকা', '2023-01-24 19:37:58', '2023-01-24 19:37:58'),
(48, 1, NULL, 'buswad', 'Testimonial', 'Demo Testimonial', 'text1', 'text2', NULL, NULL, NULL, 'Demo Name', 'Demo Work Place', '2023-01-24 19:40:59', '2023-01-24 19:40:59'),
(49, 1, NULL, 'buswad', 'Magazine', 'Demo Magazine', 'text1', 'text2', NULL, NULL, NULL, 'Demo Name', 'Demo Work Place', '2023-01-24 19:41:26', '2023-01-24 19:41:26'),
(52, 2, '166361910.jpg', 'csfdu', 'Welcome', 'General Secretary', 'ঢাকা বিশ্ববিদ্যালয়স্থ পর্যটন নগরী কক্সবাজারের সাধারণ শিক্ষার্থীদের আনন্দ - বেদনা, মিলন- বিরহ সংকটের প্রিয় সংগঠন কক্সবাজার স্টুডেন্টস ফোরাম, ঢাকা বিশ্ববিদ্যালয়। একতা, সমতা ও অসম্প্রদায়িকতার স্লোগান নিয়ে কক্সবাজারের সাধারণ শিক্ষার্থীদের দূর্যোগ- দূর্বিপাকে দায়বদ্ধ সংগঠন, কক্সবাজার স্টুডেন্টস ফোরাম কক্সবাজারের ছাত্রসমাজ ও সাধারণ মানুষের মুখপাত্র হিসাবে কাজ করছে। বছরব্যাপী সংগঠনের কর্মসূচি ও সামাজিক দায়বদ্ধতার অংশ হিসেবে কক্সবাজারের সাধারণ  শিক্ষার্থীদের প্রাণবন্ত ও উজ্জীবিত করতে, বুদ্ধি মুক্তির প্রসারে সাহিত্য - সাংস্কৃতিক অনুষ্ঠান, ক্রীড়া প্রতিযোগিতা, শিক্ষা ও দক্ষতা উন্নয়নমূলক ওয়ার্কশপ, আগামীর রুদ্ধ দ্বার বাতায়ন উন্মুক্ত করতে সেমিনার - সিম্পোজিয়াম আয়োজন, স্মারকলিপি প্রদান, ম্যাগাজিন প্রকাশ এবং প্রত্যয়ী স্মৃতির পরম্পরায় নুতন - পুরাতনের প্রত্যাশা ও প্রাপ্তির মেলবন্ধন ঘটাতে বদ্ধপরিকর কক্সবাজার স্টুডেন্টস ফোরাম, ঢাকা বিশ্ববিদ্যালয়।', NULL, NULL, NULL, NULL, 'Sayemon Islam Bappi', 'Cox\'s Bazar Students Forum, Dhaka University', '2023-09-13 18:01:00', '2023-09-13 18:23:35'),
(53, 1, '1392507966.jpg', 'csfdu', 'Welcome', 'President', 'On behalf of the entire Cox’s Bazar Students Forum team, I want to extend a warm thank you for Stay Tuned our Organisation. We were thrilled to have you join us and we hope that you found the Website valuable and informative. Your presence at our organisation made it all the more special and we are grateful for your support.', NULL, NULL, NULL, NULL, 'Rasel Rahman', 'Cox\'s Bazar Students Forum, Dhaka University', '2023-09-13 18:10:53', '2023-09-13 18:10:53'),
(55, 1, '286866046.jpeg', 'csfdu', 'Slide', '.', 'text1', NULL, NULL, 'Logu', NULL, NULL, NULL, '2023-09-14 16:07:50', '2023-09-14 16:09:30'),
(56, 9, '826196025.jpg', 'csfdu', 'Slide', '.', 'text1', NULL, NULL, 'Slide', NULL, NULL, NULL, '2023-09-16 05:32:04', '2023-09-30 01:26:05'),
(57, 4, '185168608.jpg', 'csfdu', 'Slide', '.', 'text1', NULL, NULL, 'Slide', NULL, NULL, NULL, '2023-09-16 05:33:06', '2023-09-16 14:51:19'),
(58, 10, '2141661684.jpg', 'csfdu', 'Slide', '.', 'text1', NULL, NULL, 'Slide', NULL, NULL, NULL, '2023-09-16 05:33:55', '2023-09-30 01:27:10'),
(59, 2, '992978213.jpg', 'csfdu', 'Slide', '1st Tourism Fair', 'text1', NULL, NULL, 'Slide', NULL, NULL, NULL, '2023-09-30 01:23:33', '2023-09-30 01:26:52'),
(60, 3, '1760339903.jpg', 'csfdu', 'Slide', '.', 'text1', NULL, NULL, 'Slide', NULL, NULL, NULL, '2023-09-30 01:34:52', '2023-10-06 01:34:39');

-- --------------------------------------------------------

--
-- Table structure for table `maintains`
--

CREATE TABLE `maintains` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` int(11) NOT NULL,
  `maintain_name` varchar(255) NOT NULL,
  `maintain_password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `forget_code` varchar(255) DEFAULT NULL,
  `forget_time` varchar(255) DEFAULT NULL,
  `subscribe` int(11) DEFAULT NULL,
  `payment` int(15) DEFAULT NULL,
  `version_type` varchar(255) DEFAULT NULL,
  `payment_duration` int(11) DEFAULT NULL,
  `magazine_size` int(11) DEFAULT NULL,
  `member_size` int(11) DEFAULT NULL,
  `executive_size` int(15) DEFAULT NULL,
  `senior_size` int(11) DEFAULT NULL,
  `general_size` int(11) DEFAULT NULL,
  `notice_size` int(11) DEFAULT NULL,
  `welcome_size` int(11) DEFAULT NULL,
  `testimonial_size` int(11) DEFAULT NULL,
  `slide_size` int(11) DEFAULT NULL,
  `blood_size` int(11) DEFAULT NULL,
  `advisor_size` int(11) DEFAULT NULL,
  `sms_access` int(11) DEFAULT NULL,
  `header_size` varchar(11) DEFAULT NULL,
  `resheader_size` varchar(11) DEFAULT NULL,
  `text1` varchar(255) DEFAULT NULL,
  `text2` varchar(255) DEFAULT NULL,
  `text3` varchar(255) DEFAULT NULL,
  `text4` varchar(255) DEFAULT NULL,
  `text5` varchar(255) DEFAULT NULL,
  `fb_link` varchar(255) DEFAULT NULL,
  `youtube_link` varchar(255) DEFAULT NULL,
  `other_link` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `maintains`
--

INSERT INTO `maintains` (`id`, `name`, `email`, `mobile`, `maintain_name`, `maintain_password`, `role`, `status`, `forget_code`, `forget_time`, `subscribe`, `payment`, `version_type`, `payment_duration`, `magazine_size`, `member_size`, `executive_size`, `senior_size`, `general_size`, `notice_size`, `welcome_size`, `testimonial_size`, `slide_size`, `blood_size`, `advisor_size`, `sms_access`, `header_size`, `resheader_size`, `text1`, `text2`, `text3`, `text4`, `text5`, `fb_link`, `youtube_link`, `other_link`, `created_at`, `updated_at`) VALUES
(1, 'MD Rayhan Babu', 'rayhanbabu458@gmail.com', 1750360044, 'maintain', 'Rayhanbabu458@', 'maintain', '1', '85818', NULL, 12, 1000, 'free', 1, 5, 500, 5, 5, 5, 5, 2, 5, 5, 1000, 2, NULL, '35px', '20px', NULL, NULL, NULL, NULL, NULL, 'https://www.facebook.com/csfofficialdu?mibextid=ZbWKwL', NULL, NULL, NULL, '2023-09-14 22:06:57');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
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
(9, '2022_06_22_181643_create_employees_table', 1),
(14, '2022_06_15_060925_create_maintains_table', 3),
(16, '2022_06_25_103319_create_testimonials_table', 4),
(18, '2022_06_26_082209_create_texts_table', 5),
(20, '2022_12_07_223127_create_magazines_table', 6),
(21, '2022_06_16_122523_create_notices_table', 7),
(22, '2022_06_15_103041_create_admins_table', 8),
(25, '2022_12_09_092411_create_finances_table', 9),
(28, '2022_12_09_163607_create_onlinepayments_table', 10),
(30, '2022_12_10_083513_create_sms_table', 11),
(32, '2022_12_10_111843_create_expres_table', 12),
(35, '2022_06_16_104716_create_apps_table', 13);

-- --------------------------------------------------------

--
-- Table structure for table `notices`
--

CREATE TABLE `notices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `serial` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `text` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notices`
--

INSERT INTO `notices` (`id`, `serial`, `title`, `admin_name`, `text`, `image`, `date`, `created_at`, `updated_at`) VALUES
(12, 1, 'rayhan', 'demoswa', 'জেনারেল ভ্যালেরি আরও বলেন, ‘কিয়েভে হামলার জন্য একেবারে নতুন ২ লাখ সেনা নিয়ে প্রস্তুতি নিচ্ছে রাশিয়া। রাশিয়া যে আবার কিয়েভে হামলা চালাতে যাচ্ছে এ ব্যাপারে আমার কোনো সন্দেহ নেই। আমরা সব হিসাবনিকাশ করেছি, যেমন কতগুলো ট্যাংক, আর্টিলারি ও অন্যান্য আরও যেসব প্রয়োজন হতে পারে।’', '1192586212.pdf', NULL, '2022-12-16 13:12:01', '2022-12-16 13:12:15'),
(13, 1, 'demo notice', 'buswad', 'demo description', '288063249.jpeg', NULL, '2023-01-24 19:40:24', '2023-01-24 19:40:24'),
(14, 1, 'কক্সবাজার স্টুডেন্টস ফোরামের সভাপতি -সাধারণ সম্পাদকের সাথে ডুসাটের নব নির্বাচিত কমিটির সৌজন্য সাক্ষাত।', 'csfdu', 'Cox\'s Bazar Students\' Forum, Dhaka University- এর মান্যবর সভাপতি রাসেল রহমান  এবং সাধারণ সম্পাদক সাইমুন ইসলাম বাপ্পি এর সাথে ডুসাটের নব নির্বাচিত কমিটির সৌজন্য সাক্ষাত। এইসময় ডুসাটের নবনির্বাচিত কমিটিকে অভিনন্দন জানান কক্সবাজার স্টুডেন্টস ফোরামের শীর্ষ দুই নেতা।সামনের দিনে কক্সবাজারের বিভিন্ন সমস্যা এবং সম্ভাবনা নিয়ে একসাথে কাজ করার প্রতিশ্রুতি ও ব্যক্ত করা হয়।', '1672771121.jpg', NULL, '2023-09-15 04:56:45', '2023-09-15 05:07:11'),
(15, 2, 'কক্সবাজার স্টুডেন্টস ফোরামের সাথে কক্সবাজার সমিতির প্রতিনিধির মিটিং', 'csfdu', '১৬ সেপ্টেম্বর ২০২৩ ইংরেজি তারিখে কক্সবাজার সমিতির সাথে কক্সবাজার স্টুডেন্টস ফোরামের সভাপতি এবং সাধারণ সম্পাদকের নেতৃত্বে একটি টিম সমিতির সাধারণ সম্পাদক খোরশেদ আলম এবং সিনিয়র যুগ্ম সাধারণ সম্পাদক সুজন শর্মার সাথে বনানী কিউব হোল্ডিংস লিমিটেডের অফিসে কক্সবাজারের শিক্ষার্থীদের সংকট- সম্ভাবনা নিয়ে আলোচনা হয়েছে। এতে সমিতির পক্ষ থেকে কক্সবাজার শিক্ষার্থীদের পাশে থাকার অঙ্গীকার ব্যক্ত করা হয়। তাছাড়া, কক্সবাজার স্টুডেন্টস ফোরামের এইবারের নবীনবরণ ও মিলনমেলায় সার্বিক সহযোগিতার আশ্বাস দেওয়া হয়।', '1387064288.jpg', NULL, '2023-09-17 04:52:53', '2023-09-17 04:52:53');

-- --------------------------------------------------------

--
-- Table structure for table `onlinepayments`
--

CREATE TABLE `onlinepayments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `des1` varchar(255) DEFAULT NULL,
  `des2` varchar(255) DEFAULT NULL,
  `des3` varchar(255) DEFAULT NULL,
  `amount1` int(11) NOT NULL DEFAULT 0,
  `amount2` int(11) NOT NULL DEFAULT 0,
  `amount3` int(11) NOT NULL DEFAULT 0,
  `payment` int(11) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `subscribe` int(11) DEFAULT NULL,
  `payment_duration` int(11) DEFAULT NULL,
  `created_date` date NOT NULL,
  `expired_date` date NOT NULL,
  `payment_type` varchar(255) DEFAULT NULL,
  `payment_time` timestamp NULL DEFAULT NULL,
  `payment_date` varchar(255) DEFAULT NULL,
  `payment_year` varchar(255) DEFAULT NULL,
  `payment_month` varchar(255) DEFAULT NULL,
  `payment_day` varchar(255) DEFAULT NULL,
  `others` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `onlinepayments`
--

INSERT INTO `onlinepayments` (`id`, `admin_name`, `des1`, `des2`, `des3`, `amount1`, `amount2`, `amount3`, `payment`, `status`, `type`, `subscribe`, `payment_duration`, `created_date`, `expired_date`, `payment_type`, `payment_time`, `payment_date`, `payment_year`, `payment_month`, `payment_day`, `others`, `created_at`, `updated_at`) VALUES
(4, 'demoswa', 'Website Renew', NULL, NULL, 1000, 0, 0, 1000, NULL, NULL, 12, 1, '2022-12-16', '2022-12-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-16 12:36:46', '2022-12-16 12:36:46'),
(5, 'cswad', 'Website Renew', NULL, NULL, 1000, 0, 0, 1000, NULL, NULL, 12, 1, '2022-12-18', '2022-12-30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-18 15:33:46', '2022-12-18 15:33:46'),
(6, 'mathema', 'Website Renew', NULL, NULL, 1000, 0, 0, 1000, NULL, NULL, 12, 1, '2023-01-07', '2023-01-19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-08 03:49:53', '2023-01-08 03:49:53'),
(7, 'guswa', 'Website Renew', NULL, NULL, 1000, 0, 0, 1000, NULL, NULL, 12, 1, '2023-01-09', '2023-01-21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-10 00:06:22', '2023-01-10 00:06:22'),
(8, 'buswad', 'Website Renew', NULL, NULL, 1000, 0, 0, 1000, NULL, NULL, 12, 1, '2023-01-24', '2023-02-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-24 18:02:53', '2023-01-24 18:02:53'),
(9, 'applimatics', 'Website Renew', NULL, NULL, 1000, 0, 0, 1000, NULL, NULL, 12, 1, '2023-01-27', '2023-02-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-27 22:11:45', '2023-01-27 22:11:45'),
(10, 'dusak', 'Website Renew', NULL, NULL, 1000, 0, 0, 1000, NULL, NULL, 12, 1, '2023-02-11', '2023-02-23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-11 21:59:04', '2023-02-11 21:59:04'),
(11, 'csfdu', 'Website Renew', NULL, NULL, 1000, 0, 0, 1000, '1', NULL, 12, 1, '2023-07-09', '2023-07-21', 'Admin', '2023-09-13 01:21:20', '2023-09-12', '2023', '9', '12', NULL, '2023-07-09 12:18:51', '2023-07-09 12:18:51');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sms`
--

CREATE TABLE `sms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `sms_type` varchar(255) NOT NULL,
  `sms_count` int(11) NOT NULL,
  `class` varchar(255) DEFAULT NULL,
  `babu` varchar(255) DEFAULT NULL,
  `section` varchar(255) DEFAULT NULL,
  `others1` varchar(255) DEFAULT NULL,
  `others2` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sms`
--

INSERT INTO `sms` (`id`, `admin_name`, `sms_type`, `sms_count`, `class`, `babu`, `section`, `others1`, `others2`, `subject`, `text`, `created_at`, `updated_at`) VALUES
(6, 'demoswa', 'single', 1, NULL, NULL, NULL, NULL, NULL, NULL, 'amader', '2022-12-16 13:08:09', '2022-12-16 13:08:09'),
(7, 'csfdu', 'single', 1, NULL, NULL, NULL, NULL, NULL, NULL, 'rayhan babu', '2023-09-25 12:01:58', '2023-09-25 12:01:58'),
(8, 'csfdu', 'members', 2, 'Senior', NULL, NULL, 'serial(1 to 3)', NULL, NULL, 'testing csfdu.org sms api server', '2023-09-25 12:18:32', '2023-09-25 12:18:32');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `serial` int(11) NOT NULL,
  `lang` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `admin_name` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `verify_status` int(25) NOT NULL DEFAULT 0,
  `workplace` text NOT NULL,
  `current_address` text DEFAULT NULL,
  `permanent_address` text DEFAULT NULL,
  `blood` varchar(255) DEFAULT NULL,
  `blood_status` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `phone_status` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `email_status` varchar(255) DEFAULT NULL,
  `fb_link` varchar(255) DEFAULT NULL,
  `youtube_link` varchar(255) DEFAULT NULL,
  `web_link` varchar(255) DEFAULT NULL,
  `text1` varchar(255) DEFAULT NULL,
  `text2` varchar(255) DEFAULT NULL,
  `text3` varchar(255) DEFAULT NULL,
  `text4` varchar(255) DEFAULT NULL,
  `bloodno` int(155) NOT NULL DEFAULT 0,
  `blood_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `serial`, `lang`, `image`, `admin_name`, `category`, `name`, `verify_status`, `workplace`, `current_address`, `permanent_address`, `blood`, `blood_status`, `phone`, `phone_status`, `email`, `email_status`, `fb_link`, `youtube_link`, `web_link`, `text1`, `text2`, `text3`, `text4`, `bloodno`, `blood_date`, `created_at`, `updated_at`) VALUES
(28, 1, NULL, '1890611429.jpg', 'demoswa', 'Executive', 'Md Rayhan Babu', 0, 'Dhaka University', NULL, NULL, NULL, 'show', NULL, 'show', NULL, 'show', NULL, NULL, NULL, 'President', NULL, NULL, NULL, 0, NULL, '2022-12-16 12:58:20', '2022-12-19 00:30:00'),
(29, 2, NULL, NULL, 'demoswa', 'Executive', 'Fazlul Huq Muslim Hall', 0, 'Dhaka University', NULL, NULL, NULL, 'show', NULL, 'show', NULL, 'show', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2022-12-16 12:59:02', '2022-12-16 12:59:02'),
(30, 1, NULL, '1499025552.jpg', 'cswad', 'Senior', 'Md. Ruman Hasan', 0, 'University of Dhaka', 'Fazlul Huq Muslim Hall', 'Mouzathana Mondalpara', 'A+', 'show', '01316992436', 'show', 'durumanhasan@gmail.com', 'show', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2022-12-18 15:49:07', '2022-12-18 15:49:07'),
(31, 1, NULL, NULL, 'cswad', 'Executive', 'Yeasir Arafat Plabon', 0, 'University of Dhaka', 'Solimullah hall', 'Jorgas chilmari', 'O+', 'show', NULL, 'show', NULL, 'show', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2022-12-18 15:53:21', '2022-12-18 15:53:21'),
(32, 2, NULL, NULL, 'cswad', 'Executive', 'Md. Atikur Rahman', 0, 'University of Dhaka', 'Zia hall', 'Thanapara', NULL, 'show', NULL, 'show', NULL, 'show', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2022-12-18 15:54:06', '2022-12-18 15:54:06'),
(33, 1, NULL, NULL, 'demoswa', 'Advisor', 'Md Rayhan Babu', 0, 'Dhaka University', NULL, NULL, NULL, 'show', NULL, 'show', NULL, 'show', NULL, NULL, NULL, 'Ex-President', NULL, NULL, NULL, 0, NULL, '2022-12-19 00:25:20', '2022-12-19 00:27:49'),
(34, 1, NULL, '1696435806.jpg', 'mathema', 'Executive', 'Khondker Aadnan Foysal', 0, 'Dhaka University', NULL, NULL, 'A+', 'show', '01772091515', 'show', NULL, 'show', NULL, NULL, NULL, 'President', NULL, NULL, NULL, 0, NULL, '2023-01-08 04:00:05', '2023-01-08 23:52:12'),
(35, 1, NULL, '1157379297.jpg', 'guswa', 'Executive', 'মো: আব্দুর রউফ', 0, 'ঢাকা বিশ্ববিদ্যালয়', 'ফজলুল হক মুসলিম হল, ঢাকা বিশ্ববদ্যালয়।', 'ফুলবাড়ী, গোবিন্দগঞ্জ', 'AB+', 'show', '01643039479', 'show', 'abrouf1998@gmail.com', 'show', 'https://www.facebook.com/profile.php?id=100009370005663&mibextid=ZbWKwL', NULL, NULL, 'সভাপতি', NULL, NULL, NULL, 0, NULL, '2023-01-10 00:13:05', '2023-01-10 00:14:14'),
(36, 1, NULL, '859667844.jpg', 'guswa', 'Advisor', 'সৌরভ কুমার সাহা', 0, 'ঢাকা বিশ্ববিদ্যালয়', 'হাতিরপুল', 'বালুয়াহাট, গোবিন্দগঞ্জ', NULL, 'show', NULL, 'show', NULL, 'show', NULL, NULL, NULL, 'সাবেক সভাপতি', NULL, NULL, NULL, 0, NULL, '2023-01-10 00:47:11', '2023-01-10 00:47:11'),
(37, 2, NULL, '1953487793.jpg', 'mathema', 'Executive', 'Md. Zannatun Naiem', 0, 'University of Dhaka', NULL, NULL, 'A+', 'show', '01733828582', 'show', 'zannanaiem@gmail.com', 'show', NULL, NULL, NULL, 'Secretary', NULL, NULL, NULL, 0, NULL, '2023-01-13 19:36:12', '2023-01-13 19:36:12'),
(38, 1, NULL, NULL, 'mathema', 'Advisor', 'Jasim uddin', 0, 'University of Dhaka', NULL, NULL, NULL, 'show', '01515608860', 'hidden', NULL, 'show', NULL, NULL, NULL, 'Advisor', NULL, NULL, NULL, 0, NULL, '2023-01-24 16:05:21', '2023-01-24 16:05:21'),
(39, 2, NULL, NULL, 'mathema', 'Advisor', 'Sazzad Qader Moon', 0, 'University of Dhaka', NULL, NULL, NULL, 'show', NULL, 'hidden', NULL, 'show', NULL, NULL, NULL, 'Advisor', NULL, NULL, NULL, 0, NULL, '2023-01-24 16:06:44', '2023-01-24 16:06:44'),
(40, 3, NULL, NULL, 'mathema', 'Advisor', 'MSI Heimel', 0, 'Janata Bank Limited', NULL, NULL, NULL, 'show', '01521212236', 'show', NULL, 'show', NULL, NULL, NULL, 'Advisor', NULL, NULL, NULL, 0, NULL, '2023-01-24 16:08:45', '2023-01-24 16:08:45'),
(41, 4, NULL, NULL, 'mathema', 'Advisor', 'Abu Hasib Mukto', 0, 'University of Dhaka', NULL, NULL, NULL, 'show', '01515623316', 'show', NULL, 'show', NULL, NULL, NULL, 'Advisor', NULL, NULL, NULL, 0, NULL, '2023-01-24 16:09:45', '2023-01-24 16:09:45'),
(42, 5, NULL, NULL, 'mathema', 'Advisor', 'Md. Shamim Hossain', 0, 'University of Dhaka', NULL, NULL, NULL, 'show', '01757653465', 'show', NULL, 'show', NULL, NULL, NULL, 'Advisor', NULL, NULL, NULL, 0, NULL, '2023-01-24 16:11:17', '2023-01-24 16:11:17'),
(43, 6, NULL, NULL, 'mathema', 'Advisor', 'Harun-Ur-Rashid Himel', 0, 'University of Dhaka', NULL, NULL, NULL, 'show', '01986551692', 'show', NULL, 'show', NULL, NULL, NULL, 'Advisor', NULL, NULL, NULL, 0, NULL, '2023-01-24 16:12:39', '2023-01-24 16:12:39'),
(44, 7, NULL, NULL, 'mathema', 'Advisor', 'Siam Al Musahed', 0, 'University of Dhaka', NULL, NULL, NULL, 'show', '01646791708', 'show', NULL, 'show', NULL, NULL, NULL, 'Advisor', NULL, NULL, NULL, 0, NULL, '2023-01-24 16:13:43', '2023-01-24 16:13:43'),
(45, 1, NULL, '306661961.jpg', 'buswad', 'Executive', 'মোঃ রায়হান বাবু', 0, 'পরিসংখ্যান বিভাগ,  ঢাকা বিশ্ববিদ্যালয়', 'ফজলুল হক  মুসলিম হল', 'জগতপুর, বিরল, দিনাজপুর', 'B+', 'show', '01750360044', 'show', 'rayhanbabu458@gmail.com', 'show', 'https://www.facebook.com/rayhanbabuancova', NULL, NULL, 'সভাপতি', NULL, NULL, NULL, 0, NULL, '2023-01-24 19:16:21', '2023-01-24 19:18:06'),
(46, 2, NULL, NULL, 'buswad', 'Executive', 'গোলাপ মোস্তফা', 0, 'বাংলা বিভাগ,  ঢাকা বিশ্ববিদ্যালয়', NULL, 'জসিম উদ্দিন হল , ঢাবি', 'O+', 'show', NULL, 'show', NULL, 'show', NULL, NULL, NULL, 'সাধারণ সম্পাদক', NULL, NULL, NULL, 0, NULL, '2023-01-24 19:21:09', '2023-01-24 19:21:09'),
(47, 1, NULL, NULL, 'buswad', 'Advisor', 'Demo Advisor  Name', 0, 'Demo Work Place', NULL, NULL, NULL, 'show', NULL, 'show', NULL, 'show', NULL, NULL, NULL, 'Demo Designation', NULL, NULL, NULL, 0, NULL, '2023-01-24 19:21:53', '2023-01-24 19:22:38'),
(48, 1, NULL, NULL, 'buswad', 'Senior', 'Demo Senior Name', 0, 'Demo Work Place', NULL, NULL, NULL, 'show', NULL, 'show', NULL, 'show', NULL, NULL, NULL, 'Demo Designation', NULL, NULL, NULL, 0, NULL, '2023-01-24 19:22:21', '2023-01-24 19:22:59'),
(49, 1, NULL, NULL, 'buswad', 'General', 'Demo General  Name', 0, 'Demo Work Place', NULL, NULL, NULL, 'show', NULL, 'show', NULL, 'show', NULL, NULL, NULL, 'Demo Designation', NULL, NULL, NULL, 0, NULL, '2023-01-24 19:23:28', '2023-01-24 19:23:28'),
(50, 1, NULL, '1895386564.jpg', 'applimatics', 'Advisor', 'Nur Mohammad Salem', 0, 'University of Dhaka', 'Fazlul Huq Muslim Hall, Dhaka University, Dhaka 1000', NULL, 'B+', 'show', '01521407346', 'show', 'nmdsalem22@gmail.com', 'show', 'https://www.facebook.com/nurmohammad.mesalem?mibextid=ZbWKwL', NULL, NULL, 'Advisor', NULL, NULL, NULL, 0, NULL, '2023-01-27 22:17:44', '2023-01-27 22:17:44'),
(51, 2, NULL, NULL, 'buswad', 'Senior', 'মেহেদী মাহমুদ', 0, 'ঢাকা বিশ্ববিদ্যালয়', 'বিজয় একাত্তর হল, ঢাকা বিশ্ববিদ্যালয়', 'দক্ষিণ লালবাগ, দিনাজপুর', 'A+', 'show', '01776809060', 'show', 'mehedi.mahmud.0925@gmail.com', 'show', 'www.facebook.com/ammehedi.0925', NULL, NULL, 'সাবেক সাধারণ সম্পাদক', NULL, NULL, NULL, 0, NULL, '2023-01-30 22:00:23', '2023-01-31 04:18:29'),
(52, 2, NULL, NULL, 'buswad', 'General', 'Md. Nayeem Chowdhury', 0, 'Dhaka University', 'Azimpur, Dhaka', 'Boardhut, Birol, Dinajpur', 'A+', 'show', '01752012866', 'hidden', 'nayeem14369chowdhury@gmail.com', 'show', NULL, NULL, NULL, 'Student', NULL, NULL, NULL, 0, NULL, '2023-03-04 17:25:46', '2023-03-04 17:25:46'),
(53, 3, NULL, NULL, 'buswad', 'General', 'Md Mofijul Islam Limon', 0, 'Dhaka University', 'Fazlul Huq Muslim Hall', 'Mirzapur, 10 No Ranipukur UP', 'O+', 'show', '01521778152', 'show', 'mdmofijulislamlimon94@gmail.com', 'show', NULL, NULL, NULL, 'Student', NULL, NULL, NULL, 0, NULL, '2023-03-04 17:28:19', '2023-03-04 17:28:19'),
(54, 4, NULL, NULL, 'buswad', 'General', 'মোঃ রায়হান বাবু', 0, 'Dhaka University', 'Fazlul Huq Muslim Hall', 'জগতপুর,১০ নং রানিপুকুর', 'B+', 'show', NULL, 'show', 'rayhanbabu458@gmail.com', 'show', NULL, NULL, NULL, 'Student', NULL, NULL, NULL, 0, NULL, '2023-03-04 17:32:12', '2023-03-04 17:32:12'),
(55, 5, NULL, NULL, 'buswad', 'General', 'মোঃমাহামুদুন নবী রুপক', 0, 'বাংলাদেশ ইউনিভার্সিটি অব্ প্রফেশনালস(বিইউপি)', 'মণিপুরীপাড়া,ঢাকা', 'বিরল,দিনাজপুর', 'AB+', 'show', '01821030253', 'show', 'rupokbup77@gmail.com', 'show', NULL, NULL, NULL, 'শিক্ষার্থী', NULL, NULL, NULL, 0, NULL, '2023-03-04 17:55:27', '2023-03-04 17:55:27'),
(56, 6, NULL, NULL, 'buswad', 'General', 'Ajharul Islam', 0, 'Jagannath University', 'Gendaria, Dhaka.', 'Shaboil, Birol, Dinajpur', 'A+', 'show', '01710904305', 'show', 'Islamsmajhar@gmail.com', 'show', NULL, NULL, NULL, 'Private Company Job', NULL, NULL, NULL, 0, NULL, '2023-03-04 18:00:56', '2023-03-04 18:00:56'),
(57, 7, NULL, NULL, 'buswad', 'General', 'নুসরাত জেবিন ইরা', 0, 'Dhaka University', 'কবি সুফিয়া কামাল হল, ঢাকা বিশ্ববিদ্যালয়', 'মাধববাটী, বিরল, দিনাজপুর', 'B+', 'show', '01875063820', 'show', 'nusratjabinira13@gmail.com', 'show', NULL, NULL, NULL, 'শিক্ষার্থী', NULL, NULL, NULL, 0, NULL, '2023-03-04 18:03:21', '2023-03-04 18:03:21'),
(58, 8, NULL, NULL, 'buswad', 'General', 'ফিরোজ আহমেদ', 0, 'ঢাকা কলেজ', 'কাঠাল বাগান', 'শিবপুর , ১০ রাণীপুকুর', 'O+', 'show', '01716550338', 'show', 'firojahamad14@gmail.com', 'show', NULL, NULL, NULL, 'N/A', NULL, NULL, NULL, 0, NULL, '2023-03-04 19:28:17', '2023-03-04 19:30:10'),
(59, 9, NULL, NULL, 'buswad', 'General', 'জুয়েল ইসলাম', 0, 'ঢাকা বিশ্ববিদ্যালয়', 'বিজয় একাত্তর হল, ঢাবি', 'বিজয় একাত্তর হল, ঢাবি', 'A+', 'show', '01308372062', 'show', 'mdjuwelislam406776@gmail.com', 'show', NULL, NULL, NULL, 'ছাত্র', NULL, NULL, NULL, 0, NULL, '2023-03-04 22:58:24', '2023-03-04 22:58:24'),
(60, 10, NULL, NULL, 'buswad', 'General', 'উৎপল চন্দ্র সরকার', 0, 'ঢাকা প্রকৌশল ও প্রযুক্তি বিশ্ববিদ্যালয়,(ডুয়েট), গাজীপুর।', 'ডুয়েট, গাজীপুর।', 'বামনগাও,৮নং ধর্মপুর ইউনিয়ন।', 'O+', 'show', '01768498148', 'show', 'utpalchandra148@gmail.com', 'show', NULL, NULL, NULL, 'ছাত্র', NULL, NULL, NULL, 0, NULL, '2023-03-04 23:01:05', '2023-03-04 23:01:05'),
(61, 11, NULL, NULL, 'buswad', 'General', 'মোঃ সোহেল পারভেজ', 0, 'তিতুমীর কলেজ', '৫৫/১ সিদ্দেশ্বরী রোড, রমনা ঢাকা।', '৫৫/১ সিদ্দেশ্বরী রোডউত্তর রবিপুর বিরল দিনাজপুর , রমনা ঢাকা।', 'B+', 'show', '01786796244', 'show', 'soheldnj99@gmail.com', 'show', NULL, NULL, NULL, 'ছাত্র', NULL, NULL, NULL, 0, NULL, '2023-03-04 23:03:33', '2023-03-04 23:03:33'),
(62, 12, NULL, NULL, 'buswad', 'General', 'মো:আরিফ ফয়সাল', 0, 'অর্থনীতি বিভাগ, ঢাকা বিশ্ববিদ্যালয়', 'সলিমুল্লাহ মুসলিম হল', 'ভুতিগাও, পলাশবাড়ী, বিরল', 'B+', 'show', NULL, 'show', 'ariffaisaldu@gmail.com', 'show', NULL, NULL, NULL, 'ছাত্র', NULL, NULL, NULL, 0, NULL, '2023-03-04 23:05:36', '2023-03-04 23:05:36'),
(63, 13, NULL, NULL, 'buswad', 'General', 'মো:তানভীর হোসেন', 0, 'সাউথইস্ট বিশ্ববিদ্যালয়', 'Uttara. Uttarkhan.dhaka', 'Gopalpur.birol. Dinajpur', 'B+', 'show', '01756305016', 'show', 'tanvirbirol18@gmail.com', 'show', NULL, NULL, NULL, 'ছাত্র', NULL, NULL, NULL, 0, NULL, '2023-03-04 23:11:16', '2023-03-04 23:11:16'),
(64, 14, NULL, NULL, 'buswad', 'General', 'মোঃ সেলিম রেজা ইমন', 0, 'বঙ্গবন্ধু শেখ মুজিবুর রহমান মেরিটাইম ইউনিভার্সিটি, বাংলাদেশ', 'Mirpur DOHS, Dhaka', 'গ্রাম : রতনৌর, ইউনিয়ন : শহরগ্রাম,  থানা: বিরল,  দিনাজপুর', 'A+', 'show', '01521551127', 'show', 'imon9131514@gmail.com', 'show', NULL, NULL, NULL, 'ছাত্র', NULL, NULL, NULL, 0, NULL, '2023-03-04 23:23:11', '2023-03-04 23:23:11'),
(65, 15, NULL, NULL, 'buswad', 'General', 'মো: মকসুল মিনার', 0, 'ফারইষ্ট ইন্টারন্যাশনাল ইউনিভার্সিটি', 'ওয়্যারলেসগেট, মহাখালী, ঢাকা 1212', 'বিরল শাহাপাড়া, বিরল, দিনাজপুর', 'O+', 'show', '01960862025', 'show', 'oneminar2015@gmail.com', 'show', NULL, NULL, NULL, 'ছাত্র', NULL, NULL, NULL, 0, NULL, '2023-03-04 23:26:50', '2023-03-04 23:26:50'),
(66, 16, NULL, NULL, 'buswad', 'General', 'মো:আশিকুজ্জামান আকাশ', 0, 'ঢাকা কলেজ', 'মোহাম্মদপুর, ঢাকা', 'শিবপুর, ১০নং রানীপুকুর', 'O+', 'show', '01719400744', 'show', 'akashafnaan@gmail.com', 'show', NULL, NULL, NULL, 'ছাত্র', NULL, NULL, NULL, 0, NULL, '2023-03-04 23:28:14', '2023-03-04 23:28:14'),
(67, 17, NULL, NULL, 'buswad', 'General', 'মো: শাহীন আলম', 0, 'ঢাকা বিশ্ববিদ্যালয়', 'যমুনা-৬০০৯, বিজয় একাত্তর হল, ঢাকা বিশ্ববিদ্যালয়', 'রাণীপুর, কামদেবপুর, বিরল, দিনাজপুর', 'B+', 'show', '01755290523', 'show', 'shahin319592@gmail.com', 'show', NULL, NULL, NULL, 'ছাত্র', NULL, NULL, NULL, 0, NULL, '2023-03-04 23:29:36', '2023-03-04 23:29:36'),
(68, 18, NULL, NULL, 'buswad', 'General', 'সজীব কুমার দেবশর্মা', 0, 'ঢাকা বিশ্ববিদ্যালয়', 'জগন্নাথ হল,  ঢাকা বিশ্ববিদ্যালয়', 'গ্রাম: শুকদেবপুর, ইউনিয়ন : ধামইর, বিরল, দিনাজপুর', 'O+', 'show', '01758096168', 'show', 'ssharma1@isrt.ac.bd', 'show', NULL, NULL, NULL, 'ছাত্র', NULL, NULL, NULL, 0, NULL, '2023-03-04 23:32:44', '2023-03-04 23:32:44'),
(69, 19, NULL, NULL, 'buswad', 'General', 'সৈয়দ আন নাফি সিদ্দিকী', 0, 'ঢাকা বিশ্ববিদ্যালয়', 'স্যার এ.এফ রহমান হল', 'চক কাঞ্চন,বিরল,দিনাজপুর।', 'A+', 'show', '01615129671', 'show', 'nafi.siddiki@gmail.com', 'show', NULL, NULL, NULL, 'ছাত্র', NULL, NULL, NULL, 0, NULL, '2023-03-04 23:35:00', '2023-03-04 23:35:00'),
(70, 20, NULL, NULL, 'buswad', 'General', 'মোঃ ইমতিয়াজ জামান শান্ত', 0, 'ঢাকা বিশ্ববিদ্যালয়', 'হাজী মুহাম্মদ মুহসিন হল,  রুমঃ ২৩০', 'ভারাডাঙ্গী, ভান্ডারা,  বিরল,  দিনাজপুর', 'O+', 'show', '01717925777', 'show', 'imtiajzamansanto@gmail.com', 'show', NULL, NULL, NULL, 'ছাত্র', NULL, NULL, NULL, 0, NULL, '2023-03-05 00:23:23', '2023-03-05 00:23:23'),
(71, 21, NULL, NULL, 'buswad', 'General', 'মোঃ মাহামুদুল হক', 0, 'ঢাকা বিশ্ববিদ্যালয়', 'ফজলুল হক মুসলিম হল,এক্স-১০০৪', 'বিষ্ণুপুর, রাণী পুকুর', 'O+', 'show', '01554714773', 'show', 'mahamudulhaque800@gmail.com', 'show', NULL, NULL, NULL, 'ছাত্র', NULL, NULL, NULL, 0, NULL, '2023-03-05 00:25:05', '2023-03-05 00:25:05'),
(72, 22, NULL, NULL, 'buswad', 'General', 'আব্দুল্লাহ-আল মাহ্দী হাসান', 0, 'ঢাকা বিশ্ববিদ্যালয়', 'ফজলুল হক মুসলিম হল', 'বানিয়াপাড়া, বিরল, দিনাজপুর', 'O+', 'show', '01521551376', 'show', 'aamhasan2000@gmail.com', 'show', NULL, NULL, NULL, 'ছাত্র', NULL, NULL, NULL, 0, NULL, '2023-03-05 00:26:30', '2023-03-05 00:26:30'),
(73, 23, NULL, NULL, 'buswad', 'General', 'মো: জাহিদ হাসান', 0, 'ঢাকা বিশ্ববিদ্যালয়', 'রুম নং -২৪,  শহীদ সার্জেন্ট জহুরুল হক হল, ঢাকা বিশ্ববিদ্যালয়।', 'ধর্মজইন কাড়লিয়া পাড়া,  কামদেবপুর, বিরল, দিনাজপুর।', 'O+', 'show', '01869759617', 'show', 'mdzahid92652@gmail.com', 'show', NULL, NULL, NULL, 'ছাত্র', NULL, NULL, NULL, 0, NULL, '2023-03-05 00:27:42', '2023-03-05 00:27:42'),
(74, 24, NULL, NULL, 'buswad', 'General', 'মোঃ সবুজ রানা সোহাগ', 0, 'ঢাকা বিশ্ববিদ্যালয়', 'ফজলুল হক মুসলিম হল', 'গ্ৰাম:পিপল্যা, ইউনিয়ন:ধামইড়, উপজেলা : বিরল', 'AB+', 'show', '01576549845', 'show', 'sobujran27@gmail.com', 'show', NULL, NULL, NULL, 'ছাত্র', NULL, NULL, NULL, 0, NULL, '2023-03-05 00:29:55', '2023-03-05 00:29:55'),
(75, 25, NULL, NULL, 'buswad', 'General', 'মোঃ আলমগীর কবির', 0, 'জগন্নাথ বিশ্ববিদ্যালয়', 'শাপলা সরণি,পশ্চিম শেওড়াপাড়া,মিরপুর,ঢাকা', 'বৈরাগীপাড়া,বালান্দোর,বিরল,দিনাজপুর', 'O+', 'show', '01751046836', 'show', 'alomalomgir235@gmail.com', 'show', NULL, NULL, NULL, 'ছাত্র', NULL, NULL, NULL, 0, NULL, '2023-03-06 03:17:48', '2023-03-06 03:19:04'),
(76, 26, NULL, NULL, 'buswad', 'General', 'মোঃরাসেল আলী', 0, 'ঢাকা বিশ্ববিদ্যালয়', 'Sergeant Zahurul Huq Hall, Room:24, DU', 'Vill+post:Kamdebpur,  UP: Dhormopur, Biral, Dinajpur', 'B+', 'show', '01944191360', 'show', 'raselali.info@gmail.com', 'show', NULL, NULL, NULL, 'ছাত্র', NULL, NULL, NULL, 0, NULL, '2023-03-06 03:21:14', '2023-03-06 03:21:14'),
(77, 27, NULL, NULL, 'buswad', 'General', 'Mursed Shaharia', 0, 'ঢাকা বিশ্ববিদ্যালয়', 'ফজলুল হক মুসলিম হল', 'Pachshala,Narabari', 'B+', 'show', '01301186217', 'show', 'mursedshaharia@gmail.com', 'show', NULL, NULL, NULL, 'ছাত্র', NULL, NULL, NULL, 0, NULL, '2023-03-06 03:22:51', '2023-03-06 03:22:51'),
(78, 28, NULL, NULL, 'buswad', 'General', 'সম্রাট কুমার দেব শর্মা', 0, 'জগন্নাথ বিশ্ববিদ্যালয়', 'ঢাকা, স্বামীবাগ', 'চাপইড়, ৯ নং মংগলপুর', 'AB+', 'show', '01735561230', 'show', 'samratkumardev2001@gmail.com', 'show', NULL, NULL, NULL, 'ছাত্র', NULL, NULL, NULL, 0, NULL, '2023-03-06 03:24:46', '2023-03-06 03:24:46'),
(79, 29, NULL, NULL, 'buswad', 'General', 'অজয় চন্দ্র সরকার', 0, 'ঢাকা বিশ্ববিদ্যালয়', 'জগন্নাথ হল,  ঢাকা বিশ্ববিদ্যালয়', 'জগতপুর, ১০ নং', 'A+', 'show', '01737986860', 'show', 'ajoysarker183@gmail.com', 'show', NULL, NULL, NULL, 'ছাত্র', NULL, NULL, NULL, 0, NULL, '2023-03-06 03:26:55', '2023-03-06 03:26:55'),
(80, 30, NULL, NULL, 'buswad', 'General', 'মোঃ মোস্তাফিজুর রহমান', 0, 'ঢাকা বিশ্ববিদ্যালয়', 'চাংখারপুল, ঢাকা', 'গড়ুর গ্রাম, মঙ্গলপুর, বিরল, দিনাজপুর', 'O+', 'show', '01568252423', 'show', 'md.mostafizurrahman4954@gmail.com', 'show', NULL, NULL, NULL, 'ছাত্র', NULL, NULL, NULL, 0, NULL, '2023-03-06 03:33:28', '2023-03-06 03:33:28'),
(81, 31, NULL, NULL, 'buswad', 'General', 'Md Alfaz Zaman Akash', 0, 'East West University', 'Aftabnagar', 'Bohobol Dighi, Ranipukur', 'B+', 'show', '01310226757', 'show', 'zamanalfaz1516@gmail.com', 'show', NULL, NULL, NULL, 'ছাত্র', NULL, NULL, NULL, 0, NULL, '2023-03-06 03:37:09', '2023-03-06 03:37:09'),
(82, 32, NULL, NULL, 'buswad', 'General', 'আফরিন আক্তার বৃষ্টি', 0, 'ঢাকা বিশ্ববিদ্যালয়', 'শামসুন নাহার হল', 'কামদেবপুর, বিরল, দিনাজপুর', 'A+', 'show', '01761178845', 'show', 'mstafrin-2019214452@soc.du.ac.bd', 'show', NULL, NULL, NULL, 'Student', NULL, NULL, NULL, 0, NULL, '2023-03-06 03:39:46', '2023-03-06 03:39:46'),
(83, 33, NULL, NULL, 'buswad', 'General', 'মোঃ মনিরুজ্জামান মুন্না', 0, 'Mirpur College', 'Dhaka Cantonment', 'Village: Betura, Union: 06 no Vandara, Upazila: Birol', 'B+', 'show', '01727672464', 'show', 'monyruzzamanmunna22@gmail.com', 'show', NULL, NULL, NULL, 'ছাত্র + JOB', NULL, NULL, NULL, 0, NULL, '2023-03-06 03:41:51', '2023-03-06 03:41:51'),
(84, 34, NULL, NULL, 'buswad', 'General', 'Moten chandra roy(palash)', 0, 'Dhaka college', 'Ajimpur,Dhaka', 'Varadangi,Biral,Dinajpur', 'O+', 'show', '01757095269', 'show', 'palashfx010@gmail.com', 'show', NULL, NULL, NULL, 'ছাত্র', NULL, NULL, NULL, 0, NULL, '2023-03-06 03:43:51', '2023-03-06 03:43:51'),
(85, 35, NULL, NULL, 'buswad', 'General', 'মোঃ আব্দুল লতিফ', 0, 'ঢাকা প্রকৌশল ও প্রযুক্তি বিশ্ববিদ্যালয় (ডুয়েট)', 'ডুয়েট, গাজীপুর', 'রাংগন, বোর্ডহাট', 'O+', 'show', '01793940142', 'show', 'lotifislam15@gmail.com', 'show', NULL, NULL, NULL, 'ছাত্র', NULL, NULL, NULL, 0, NULL, '2023-03-06 04:55:05', '2023-03-06 04:55:05'),
(86, 36, NULL, NULL, 'buswad', 'General', 'মো ইসতেহাক ইসলাম', 0, 'ঢাকা বিশ্ববিদ্যালয়', 'মোহাম্মদ পুর, ঢাকা ১২০৭', 'মঙ্গলপুর, বিরল,দিনাজপুর', 'B+', 'show', '01723129634', 'show', 'sistahak900@gmail.com', 'show', NULL, NULL, NULL, 'ছাত্র', NULL, NULL, NULL, 0, NULL, '2023-03-06 04:57:10', '2023-03-06 04:57:10'),
(87, 37, NULL, NULL, 'buswad', 'General', 'আরমান আজিজ', 0, 'ঢাকা বিশ্ববিদ্যালয়', 'শহিদুল্লাহ হল', 'মোখলেসপুর জয়হার,বিরল', 'B+', 'show', '01521727182', 'show', 'armanaziz2531541@gmail.com', 'show', NULL, NULL, NULL, 'ছাত্র', NULL, NULL, NULL, 0, NULL, '2023-03-06 04:59:44', '2023-03-06 04:59:44'),
(88, 38, NULL, NULL, 'buswad', 'General', 'শারমিন আক্তার', 0, 'ঢাকা বিশ্ববিদ্যালয়', 'কবি সুফিয়া কামাল হল', 'ভান্ডারা, বিরল, দিনাজপুর', 'O+', 'show', '01798826910', 'show', 'sharminbithe8@gmail.com', 'show', NULL, NULL, NULL, 'ছাত্রী', NULL, NULL, NULL, 0, NULL, '2023-03-06 05:01:20', '2023-03-06 05:01:20'),
(89, 39, NULL, NULL, 'buswad', 'General', 'MD. Naimur Rahman Leon', 0, 'ঢাকা বিশ্ববিদ্যালয়', 'ফজলুল হক মুসলিম হল', 'Rampur,Birol, Dinajpur', 'B+', 'show', '01314212682', 'show', 'nrleon123@gmail.com', 'show', NULL, NULL, NULL, 'Student', NULL, NULL, NULL, 0, NULL, '2023-03-06 05:02:38', '2023-03-06 05:02:38'),
(90, 40, NULL, NULL, 'buswad', 'General', 'রুদ্র সরকার', 0, 'ঢাকা বিশ্ববিদ্যালয়', 'জগন্নাথ হল,  ঢাকা বিশ্ববিদ্যালয়', 'জগতপুর, রাণীপুকুর', 'A+', 'show', '01794854312', 'show', 'rudraasarker@gmail.com', 'show', NULL, NULL, NULL, 'ছাত্র', NULL, NULL, NULL, 0, NULL, '2023-03-06 05:04:09', '2023-03-06 05:04:09'),
(91, 41, NULL, NULL, 'buswad', 'General', 'রওশন জাহান', 0, 'ঢাকা বিশ্ববিদ্যালয়', 'রোকেয়া হল', 'বনগাঁও,কামদেবপুর,৮ নং ধর্মপুর', 'O+', 'show', '01810344404', 'show', 'tanjinadhu22@gmail.com', 'show', NULL, NULL, NULL, 'ছাত্রী', NULL, NULL, NULL, 0, NULL, '2023-03-06 05:07:44', '2023-03-06 05:07:44'),
(92, 42, NULL, NULL, 'buswad', 'General', 'মো: জনি ইসলাম', 0, 'Dhaka college', 'আজিমপুর , ঢাকা', 'তরন্জা, মঙ্গলপুর, বিরল , দিনাজপুর', 'A+', 'show', '01710549175', 'show', 'mdjonyislamjony.gmail.com', 'show', NULL, NULL, NULL, 'ছাত্র', NULL, NULL, NULL, 0, NULL, '2023-03-06 05:09:22', '2023-03-06 05:09:22'),
(93, 43, NULL, NULL, 'buswad', 'General', 'মোছাঃ শিরিন আক্তার', 0, 'ঢাকা বিশ্ববিদ্যালয়', 'কবি সুফিয়া কামাল হল, ঢাকা বিশ্ববিদ্যালয়', 'বালান্দোর, বিরল, দিনাজপুর', 'B+', 'show', '01744529808', 'show', 'mstshirinakter707@gmail.com', 'show', NULL, NULL, NULL, 'ছাত্রী', NULL, NULL, NULL, 0, NULL, '2023-03-06 05:10:51', '2023-03-06 05:10:51'),
(94, 44, NULL, NULL, 'buswad', 'General', 'মুমতাহহিনা মুম', 0, 'বিএসসি নার্সিং', 'মিরপুর শ্যাওড়াপাড়া ইকবাল রোড ৪২১/৪', 'গ্রাম=লক্ষ্মীপুর,থানা=বিরল, জেলা=দিনাজপুর', 'B+', 'show', '01323580313', 'show', 'mum002244@gmail.com', 'show', NULL, NULL, NULL, 'ছাত্রী', NULL, NULL, NULL, 0, NULL, '2023-03-06 05:12:12', '2023-03-06 05:12:12'),
(95, 45, NULL, NULL, 'buswad', 'General', 'মোঃ আব্দুর রাজ্জাক', 0, 'শেরেবাংলা কৃষি বিশ্ববিদ্যালয়', 'শেরেবাংলা কৃষি বিশ্ববিদ্যালয়', 'যুগিহারী, বিজোড়া', 'O+', 'show', '01705451441', 'show', 'abrazzak9718@gmail.com', 'show', NULL, NULL, NULL, 'ছাত্র', NULL, NULL, NULL, 0, NULL, '2023-03-06 05:13:21', '2023-03-06 05:13:21'),
(96, 1, NULL, '346012677.jpeg', 'csfdu', 'Executive', 'Rasel Rahman', 1, 'Dhaka University', NULL, NULL, NULL, 'show', NULL, 'show', NULL, 'show', NULL, NULL, NULL, 'President', NULL, NULL, NULL, 0, NULL, '2023-07-09 12:31:39', '2023-09-15 06:11:56'),
(97, 2, NULL, '1069422974.jpg', 'csfdu', 'Executive', 'Sayemon Islam Bappi', 1, 'Dhaka University', NULL, NULL, 'AB+', 'show', NULL, 'show', NULL, 'show', NULL, NULL, NULL, 'General Secretary', NULL, NULL, NULL, 0, NULL, '2023-07-09 12:32:14', '2023-09-15 13:54:06'),
(102, 1, NULL, '1076329679.jpg', 'csfdu', 'General', 'Hamidul Islam Arfat', 1, 'Session: 2018-19, Department of Islamic Studies', 'Surjasen Hall', 'Bara Moheshkhali, Moheshkhali', 'O+', 'show', '01867752371', 'show', 'hamidulislamarfat123@gmail.com', 'show', NULL, NULL, NULL, 'General Member', NULL, NULL, NULL, 0, NULL, '2023-09-14 01:54:52', '2023-09-24 23:36:53'),
(103, 2, NULL, '609120248.jpg', 'csfdu', 'General', 'Mohammed Eunus', 1, 'Law', 'Sir A F Rahman Hall', 'Mondal para, Ramu', 'A+', 'show', '01834382567', 'show', 'eunuspervej48@gmail.com', 'show', NULL, NULL, NULL, 'General Member', NULL, NULL, NULL, 0, NULL, '2023-09-14 01:54:59', '2023-09-24 23:37:13'),
(105, 4, NULL, '1099472599.jpg', 'csfdu', 'General', 'Nurul Amin', 1, 'Geography and Environment (2017-18)', 'Sir A F Rahman Hall', 'Mina Bazar,Whykong,Teknaf,Cox\'s Bazar', 'A+', 'show', '01868231934', 'show', 'nurul-63-2017616665@geoenv.du.ac.bd', 'show', NULL, NULL, NULL, 'General Member', NULL, NULL, NULL, 0, NULL, '2023-09-14 01:59:30', '2023-09-24 23:39:34'),
(106, 5, NULL, '319743198.jpg', 'csfdu', 'General', 'Abdul kader', 1, '2019-20 Islamic history & culture', 'Banggabondhu hall', 'Moheskhali', 'B+', 'show', '01850537288', 'show', 'abdulkadersayed956@gmail.com', 'show', NULL, NULL, NULL, 'General Member', NULL, NULL, NULL, 0, NULL, '2023-09-14 01:59:52', '2023-09-24 23:40:32'),
(107, 6, NULL, '180647317.jpg', 'csfdu', 'General', 'Md Shah Newaz', 1, 'Islamic History & Culture. Session: 2017-18', 'Jatir Janak Bangabandhu Sheikh Mujibur Rahman Hall.DU', 'Baharchara, Teknaf, Cox\'s Bazar', 'A+', 'show', '01518926988', 'show', 'newazcoxbd97@gmail.com', 'show', NULL, NULL, NULL, 'General Member', NULL, NULL, NULL, 0, NULL, '2023-09-14 02:00:29', '2023-09-24 23:40:40'),
(108, 7, NULL, '141949991.jpg', 'csfdu', 'General', 'Jalal Ahamed', 1, 'Television, Film and photography', 'Haji Muhammad Mohsin Hall', 'Shil khali,Pekua, Cox\'sBazar.', 'O+', 'show', '01831644277', 'show', 'jalaljcd@gmail.com', 'show', NULL, NULL, NULL, 'General Member', NULL, NULL, NULL, 0, NULL, '2023-09-14 02:02:00', '2023-09-24 23:40:49'),
(109, 8, NULL, '1301637710.jpg', 'csfdu', 'General', 'Md Abdul Hamid', 1, 'Bangla, 17-18', 'Sir A F Rahman Hall', 'Dulahazara, Chakaria, Cox’s Bazar', 'O+', 'show', '01521402304', 'show', 'mdahamid2525@gmail.com', 'show', NULL, NULL, NULL, 'General Member', NULL, NULL, NULL, 0, NULL, '2023-09-14 02:02:03', '2023-09-24 23:40:58'),
(110, 9, NULL, '140996083.jpg', 'csfdu', 'General', 'Abdul Malek', 1, 'Accounting & Information Systems (2017-18)', 'Sir A F Rahman Hall', 'Ramu,Cox’s Bazar', 'A+', 'show', '01815802450', 'show', 'sdmalek2016@gmail.com', 'show', NULL, NULL, NULL, 'General Member', NULL, NULL, NULL, 0, NULL, '2023-09-14 02:02:22', '2023-09-24 23:41:05'),
(111, 10, NULL, '201039791.jpg', 'csfdu', 'General', 'Md Tarek Masud Irfan', 1, 'Islamic History and Culture (2021-2022)', 'Ziaur Rahman Hall', 'Taziakata,Moheshkhali', 'B+', 'show', '01862791518', 'show', 'tmirfanihcdu@gmail.com', 'show', NULL, NULL, NULL, 'General Member', NULL, NULL, NULL, 0, NULL, '2023-09-14 02:02:27', '2023-09-24 23:41:14'),
(112, 11, NULL, '686230420.tmp', 'csfdu', 'General', 'Istiak Bulbul Tawhid', 1, 'ACI Limited/ 2012-2013, Management, University of Dhaka', 'Gulshan-1 /Haji Mohammad Muhsin Hall', 'Officer Char, Ramu, Cox’s Bazar', 'B+', 'show', '01830854441', 'show', 'tawhid.mgt19.du@gmail.com', 'show', NULL, NULL, NULL, 'General Member', NULL, NULL, NULL, 0, NULL, '2023-09-14 02:03:05', '2023-09-24 23:41:27'),
(113, 12, NULL, '1094459580.jpg', 'csfdu', 'General', 'Fariha Tasnim', 1, 'Department of English', 'Ruqayyah Hall', 'Mia para, Pekua, Cox\'s Bazar', 'O+', 'show', '01874231600', 'hidden', 'farihadu64@gmail.com', 'show', NULL, NULL, NULL, 'General Member', NULL, NULL, NULL, 0, NULL, '2023-09-14 02:03:09', '2023-09-24 23:41:40'),
(114, 13, NULL, '1262514201.tmp', 'csfdu', 'General', 'SHAHJAMAL SAYEM', 0, '2016-17', 'Kabi Jasimuddin', 'Cox\'sBazar', 'O+', 'show', '01521483599', 'show', 'shahjamal-3rd-2016118515@iml.du.ac.bd', 'show', NULL, NULL, NULL, 'General Member', NULL, NULL, NULL, 0, NULL, '2023-09-14 02:03:28', '2023-09-24 23:42:40'),
(115, 14, NULL, '1248605636.jpg', 'csfdu', 'General', 'Mohammad Omar Faroque', 1, '2014-2015, Public Administration', 'Dhaka', 'Kakara, Chakoria', 'O+', 'show', '01620230270', 'show', 'Faruksoton.du@gmail.com', 'show', NULL, NULL, NULL, 'General Member', NULL, NULL, NULL, 0, NULL, '2023-09-14 02:03:45', '2023-09-24 23:42:58'),
(116, 15, NULL, '806006771.jpg', 'csfdu', 'General', 'RAMZANUL ALAM', 1, '2015-16, Islamic History & Culture', '413, Sir A F Rahman Hall, University of Dhaka.', 'Thalia Ghona, Ramu, Cox’s Bazar.', 'A+', 'show', '01851801576', 'show', 'ramzandu001@gmail.com', 'show', NULL, NULL, NULL, 'General Member', NULL, NULL, NULL, 0, NULL, '2023-09-14 02:03:56', '2023-09-24 23:43:12'),
(117, 16, NULL, '419512109.jpg', 'csfdu', 'General', 'Fatema Tasnim Zuma', 1, '2021-2022,Criminology, University of Dhaka', '5,Chan villa,New Palton,Azimpur', 'Putibila, Gorokghata,Moheshkhali, Cox’s Bazar', 'AB+', 'show', '01812858277', 'hidden', 'fatimatasnim.zuma@gmail.com', 'show', NULL, NULL, NULL, 'General Member', NULL, NULL, NULL, 0, NULL, '2023-09-14 02:04:15', '2023-09-24 23:43:24'),
(118, 17, NULL, '590987571.jpg', 'csfdu', 'General', 'Taslima Akter', 1, '2019-2020, Management', 'Shamsun Nahar Hall', 'Bhalukia Palong, Ukhia,  Cox’s Bazar', 'B+', 'show', '01880695934', 'hidden', 'taslimaakter5934@gmail.com', 'show', NULL, NULL, NULL, 'General Member', NULL, NULL, NULL, 0, NULL, '2023-09-14 02:04:38', '2023-09-24 23:44:01'),
(119, 18, NULL, '1015050856.jpg', 'csfdu', 'General', 'Arjit Das', 1, 'History (2019-2020)', 'Jagannath Hall', 'Mohajerpara, Sadar, Cox\'s Bazar', 'A+', 'show', '01732242465', 'show', 'arjitdas33@gmail.com', 'show', NULL, NULL, NULL, 'General Member', NULL, NULL, NULL, 0, NULL, '2023-09-14 02:05:45', '2023-09-24 23:44:37'),
(120, 19, NULL, '658207988.jpg', 'csfdu', 'General', 'Mohammad Jihad', 0, 'University of Dhaka', 'Shahid Seargeant Zahurul Haque Hall', 'Sutabepari Para, Pekua, Cox’s Bazar.', 'O+', 'show', NULL, 'show', 'mohammadjahid15112001@gmail.com', 'show', NULL, NULL, NULL, 'General Member', NULL, NULL, NULL, 0, NULL, '2023-09-14 02:08:37', '2023-09-24 23:45:59'),
(122, 20, NULL, '366396678.jpg', 'csfdu', 'General', 'Shahidul Islam Shamim', 1, '2017-18, Disaster management, University of Dhaka', 'Surjasen hall', 'North Dhurung, Kutubdia, Cox’s Bazar', 'B+', 'show', '01881689678', 'show', 'sishamim07@gmail.com', 'show', NULL, NULL, NULL, 'General Member', NULL, NULL, NULL, 0, NULL, '2023-09-14 02:10:06', '2023-09-24 23:46:20'),
(123, 21, NULL, '678733762.jpg', 'csfdu', 'General', 'Ahmed Al Shahik', 1, '22-23, International Business', 'Arambagh, Motijheel, Dhaka/ Bijoy ekattor', 'Palakata, Chakaria', 'A+', 'show', '01575158117', 'show', 'ahmedalshahik091@gmail.com', 'show', NULL, NULL, NULL, 'General Member', NULL, NULL, NULL, 0, NULL, '2023-09-14 02:13:21', '2023-09-24 23:46:32'),
(124, 22, NULL, '91903814.png', 'csfdu', 'General', 'Mohammed Ridwan', 1, 'Law', 'Sir A F Rahman Hall', 'Chakmarkul, Ramu, Cox’s Bazar', 'O+', 'show', '01580336033', 'show', 'ridwan.du.law49@gmail.com', 'show', NULL, NULL, NULL, 'General Member', NULL, NULL, NULL, 0, NULL, '2023-09-14 02:13:29', '2023-09-24 23:46:47'),
(125, 23, NULL, '64209406.png', 'csfdu', 'General', 'Md Zahed Hosen', 1, '2021-22,Social Welfare, Dhaka University', 'surja sen', 'Islamabad,Safar,Cox bazar', 'O+', 'show', '01316786754', 'show', 'jahedhasan6754@gmail.com', 'show', NULL, NULL, NULL, 'General Member', NULL, NULL, NULL, 0, NULL, '2023-09-14 02:13:44', '2023-09-24 23:47:01'),
(126, 24, NULL, '2013739079.jpg', 'csfdu', 'General', 'Mohammad Saidul Islam', 1, 'Arabic | 2020-2021', 'Master da Surjasen Hall', 'Abdullah para,Dhoniakata,Toitong,Pekua,Cox\'sbazar', 'B+', 'show', '01886411990', 'show', 'sayeed72933@gmail.com', 'show', NULL, NULL, NULL, 'General Member', NULL, NULL, NULL, 0, NULL, '2023-09-14 02:13:53', '2023-09-24 23:47:18'),
(127, 25, NULL, '1337814501.jpg', 'csfdu', 'General', 'Nurul Islam Nahid', 1, '21-22, Department of Management', 'Kabi Jasimuddin hall', 'Leda,Hnila, Teknaf, Cox\'s Bazar', 'O+', 'show', '01635543299', 'show', 'ninsmn0902@gmail.com', 'show', NULL, NULL, NULL, 'General Member', NULL, NULL, NULL, 0, NULL, '2023-09-14 02:14:09', '2023-09-24 23:47:33'),
(128, 26, NULL, '795057474.jpg', 'csfdu', 'General', 'Mohammed Mubarok', 1, 'Pali and Buddhist Studies, University of Dhaka', 'P-10011, Bijoy Ekattor Hall', '6 No ward,Mogbazar, Chakaria, Cox\'s Bazar', 'B+', 'show', '01542640149', 'show', 'mohammedmubarok2001@gmail.com', 'show', NULL, NULL, NULL, 'General Member', NULL, NULL, NULL, 0, NULL, '2023-09-14 02:14:50', '2023-09-24 23:47:43'),
(129, 27, NULL, '2050731765.jpg', 'csfdu', 'General', 'Md. Shahjahan Monir', 1, '2020-21- Pali and Buddhist Studies', 'Shaheed Sargent Zahurul Haque Hall', 'Eidgah -Cox\'s Bazar sadar - Cox’s Bazar', 'O+', 'show', '01882917310', 'show', 'mdshahjahanmonir073@gmail.com', 'show', NULL, NULL, NULL, 'General Member', NULL, NULL, NULL, 0, NULL, '2023-09-14 02:14:57', '2023-09-24 23:47:56'),
(130, 28, NULL, '1809313336.png', 'csfdu', 'General', 'Mohammad Abdul Wahed', 1, '2018-2019, Institute of Health Economics, University of Dhaka', 'Zahurul Hoq Hall', 'Chepotkhali, Jaliapalong, Ukhia, Cox\'s Bazar', 'O+', 'show', '01824495639', 'show', 'minhazz83954@gmail.com', 'show', NULL, NULL, NULL, 'General Member', NULL, NULL, NULL, 0, NULL, '2023-09-14 02:16:43', '2023-09-24 23:48:07'),
(131, 29, NULL, '1916499932.jpg', 'csfdu', 'General', 'Karim Ullah', 1, '2022-23, Arabic - University of Dhaka', 'Moktizoddah Ziaur Rahman hall', 'Baharchara, Teknaf, Cox\'s Bazar', 'AB+', 'show', '01854560403', 'show', 'karimullahbahari85@gmail.com', 'show', NULL, NULL, NULL, 'General Member', NULL, NULL, NULL, 0, NULL, '2023-09-14 02:16:59', '2023-09-24 23:48:18'),
(132, 30, NULL, '109878438.jpg', 'csfdu', 'General', 'Jaker Hossain', 1, 'Civilian Staff Officer, Bangladesh Navy, Ministry of Defence', 'DE-01, Dolonchapa Building, Navy officer\'s Residential Area, Lovelane, Chattogram.', 'Vill:Uttarnolbila,Post: Kalarmarchara,Thana: Moheshkhali, District: Cox\'s bazar', 'B+', 'show', '01836569117', 'show', 'jakerh336@gmail.com', 'show', NULL, NULL, NULL, 'General Member', NULL, NULL, NULL, 0, NULL, '2023-09-14 02:19:52', '2023-09-24 23:48:29'),
(133, 31, NULL, '1277596731.jpg', 'csfdu', 'General', 'Mohammad Abu Sayed', 1, '2017-2018, Banking and Insurance,DU', 'Azimpur', 'Pekua, Cox\'sbazar', 'A+', 'show', '01815300021', 'show', 'mdabusayed1013@gmail.com', 'show', NULL, NULL, NULL, 'General Member', NULL, NULL, NULL, 0, NULL, '2023-09-14 02:20:09', '2023-09-24 23:48:39'),
(134, 32, NULL, '637675839.jpg', 'csfdu', 'General', 'Mohammad Zisan', 1, '2022–2023/Banking and Insurance / University of Dhaka', 'Bijoy Ekattor Hall', 'Majer Para–Kutubdia –Cox\'bazar', 'B+', 'show', '01608012605', 'show', 'mdzisan012605@gmail.com', 'show', NULL, NULL, NULL, 'General Member', NULL, NULL, NULL, 0, NULL, '2023-09-14 02:20:47', '2023-09-24 23:48:51'),
(135, 33, NULL, '227423078.jpg', 'csfdu', 'General', 'Mohammad Nasim', 1, '2021-2022,Marketing -Faculty Of Business Studies', 'Sir A F Rahman Hall', 'Illishia para, Joarianala, Ramu,Cox’s Bazar', 'O+', 'show', '01302065516', 'show', 'mohammadnasimnasim811@gmail.com', 'show', NULL, NULL, NULL, 'General Member', NULL, NULL, NULL, 0, NULL, '2023-09-14 02:21:40', '2023-09-24 23:49:01'),
(136, 34, NULL, '1781115523.jpg', 'csfdu', 'General', 'Shefayet Hoshen Ripon', 1, 'Arabic department, 2017-18', 'Sir A F rahman Hall', 'Harbang,Chakoria', 'B+', 'show', '01860295772', 'show', 'shefayetdu2017@gmail.com', 'show', NULL, NULL, NULL, 'General Member', NULL, NULL, NULL, 0, NULL, '2023-09-14 02:22:07', '2023-09-24 23:49:13'),
(137, 35, NULL, '552279399.jpg', 'csfdu', 'General', 'Arfatul Islam', 1, '2020-21, department of Political Science, university of Dhaka', 'Kabi jashim uddin hall', 'Koiyerbil, Kutubdia, ward no.04', 'A+', 'show', '01862300445', 'show', 'arfatulislamkutubi@gmail.com', 'show', NULL, NULL, NULL, 'General Member', NULL, NULL, NULL, 0, NULL, '2023-09-14 02:23:43', '2023-09-24 23:49:25'),
(138, 36, NULL, '1788833529.jpg', 'csfdu', 'General', 'Ajhar Uddin', 1, 'Arabic (2020-21)', 'Zahurul Haque hall', 'Utter baragupe', 'AB-', 'show', '01820997285', 'show', 'ajharuddinsayed@gmail.com', 'show', NULL, NULL, NULL, 'General Member', NULL, NULL, NULL, 0, NULL, '2023-09-14 02:24:30', '2023-09-24 23:49:36'),
(139, 37, NULL, '2007522555.jpg', 'csfdu', 'General', 'FARUKUL ISLAM', 1, '2016-17, Department of Finance, University of Dhaka', 'Bijoy Ekattor Hall', 'Bakkumpara,Khutakhali, Chakaria, Cox\'s Bazar', 'B+', 'show', '01849214932', 'show', 'Farukdu932@gmail.com', 'show', NULL, NULL, NULL, 'General Member', NULL, NULL, NULL, 0, NULL, '2023-09-14 02:24:56', '2023-09-24 23:49:48'),
(140, 38, NULL, '1576922414.png', 'csfdu', 'General', 'Dibya Chakraborty', 1, 'Soil,Water and Environment, University of Dhaka', 'Jagannath hall,Room no : 9012', 'Gorakghata,Moheshkhali, Cox\'sBazar', 'B+', 'show', '01521488328', 'show', 'dibya.mohsin@gmail.com', 'show', NULL, NULL, NULL, 'General Member', NULL, NULL, NULL, 0, NULL, '2023-09-14 02:25:58', '2023-09-24 23:49:59'),
(141, 39, NULL, '639735296.jpg', 'csfdu', 'General', 'Md Abtahee Islam Sadaf', 1, '2022-2023 Session - Islamic History & Culture - University Of Dhaka', 'Surja Sen Hall', 'Boilla para,  8 No. Ward,  Cox\'s Bazar Pourasova, Cox\'s Bazar Sadr', 'AB+', 'show', '01558042638', 'show', 'abtaheesadaf@gmail.com', 'show', NULL, NULL, NULL, 'General Member', NULL, NULL, NULL, 0, NULL, '2023-09-14 02:26:09', '2023-09-24 23:50:13'),
(142, 40, NULL, '377720670.jpg', 'csfdu', 'General', 'Muhammad Zehadul Islam', 1, 'Management Information Systems, University of Dhaka', 'Haji Muhammad Muhsin Hall', 'West Ujantia, Pekua, Cox\'s Bazar', 'AB+', 'show', '01616732565', 'show', 'muhammadzehadul-16th-2020815228@mis.du.ac.bd', 'show', NULL, NULL, NULL, 'General Member', NULL, NULL, NULL, 0, NULL, '2023-09-14 02:28:44', '2023-09-24 23:50:27'),
(143, 41, NULL, '854441548.png', 'csfdu', 'General', 'Md. Rahim', 1, '2018-19 Banking', 'Bijoy Ekattor', 'Teknaf', 'O+', 'show', '01322406133', 'show', 'arrahimtr@gmail.com', 'show', NULL, NULL, NULL, 'General Member', NULL, NULL, NULL, 0, NULL, '2023-09-14 02:28:59', '2023-09-24 23:50:40'),
(144, 42, NULL, '447289602.jpg', 'csfdu', 'General', 'Belal Uddin', 1, '2020-21- Economics- DU7', 'Mirpur-10', 'Miyarpara, Bhoraghope- Kutubdia-cox\'s bazar', 'B+', 'show', '01300055751', 'show', 'mdbelaluddin4835@gmail.com', 'show', NULL, NULL, NULL, 'General Member', NULL, NULL, NULL, 0, NULL, '2023-09-14 02:32:38', '2023-09-24 23:50:53'),
(145, 43, NULL, '2076805523.jpg', 'csfdu', 'General', 'Morjina Akter', 1, 'Session: 2019-2020, Department : Finance, Institution: Faculty of Business Studies', 'Hall: Shamsun Nahar Hall', 'Village: Kawerkhop, Upazila: Ramu, Zila: Cox\'sBazar', 'B+', 'show', '01516396649', 'hidden', 'morjina562000@gmail.com', 'show', NULL, NULL, NULL, 'General Member', NULL, NULL, NULL, 0, NULL, '2023-09-14 02:35:15', '2023-09-24 23:51:08'),
(146, 44, NULL, '380038567.jpg', 'csfdu', 'General', 'Sabiha Mahin Toha', 1, '2022-23/ linguistics /Dhaka University', 'Roqayahh hall', 'Rajapalong- Ukhiya- cox\'s bazar', 'O+', 'show', '01602439535', 'hidden', 'sabihatoha1419@gmail.com', 'show', NULL, NULL, NULL, 'General Member', NULL, NULL, NULL, 0, NULL, '2023-09-14 02:35:59', '2023-09-24 23:51:21'),
(147, 45, NULL, '1634970101.jpg', 'csfdu', 'General', 'Ariful Islam', 1, 'Students, 2017-2018, management,  fbs', 'Kabi JasimUddin Hall', 'Nolbonia, ukhia Cox\'s Bazar', 'A+', 'show', '01581402452', 'show', 'ariful.shohag88@gmail.com', 'show', NULL, NULL, NULL, 'General Member', NULL, NULL, NULL, 0, NULL, '2023-09-14 02:36:31', '2023-09-24 23:51:35'),
(148, 46, NULL, '1831295461.jpg', 'csfdu', 'General', 'Arfat Rahaman Sakib', 1, '2018-19,World Religions and Culture', 'Haji Mohammad Mohsin Hall', 'Moricha Palong,Ukhia.', 'O+', 'show', '01883358333', 'show', 'sakibdu08@gmail.com', 'show', NULL, NULL, NULL, 'General Member', NULL, NULL, NULL, 0, NULL, '2023-09-14 02:48:46', '2023-09-24 23:51:50'),
(149, 47, NULL, '2026639023.jpg', 'csfdu', 'General', 'Anwar Sadek', 1, '2022-2023 > Arabic', 'Bijoy ekattor hall', 'Putibila Lomba Haydar Para,gorakghata,Moheshkhali, Cox\'s Bazar.', 'O+', 'show', '01881360615', 'show', 'mdanwarsadekrobin@gmail.com', 'show', NULL, NULL, NULL, 'General Member', NULL, NULL, NULL, 0, NULL, '2023-09-14 02:48:59', '2023-09-24 23:52:04'),
(150, 48, NULL, '1055145873.jpg', 'csfdu', 'General', 'Mohammad Parvez', 1, 'linguistic 2022-2023', 'মোহাম্মদ পুর, শেখেরটেক ১', 'হ্নীলা,টেকনাফ, কক্সবাজার', 'AB+', 'show', '01818349639', 'show', 'cparvez387@gmail.com', 'show', NULL, NULL, NULL, 'General Member', NULL, NULL, NULL, 0, NULL, '2023-09-14 02:50:43', '2023-09-24 23:52:16'),
(151, 49, NULL, '2146586972.jpg', 'csfdu', 'General', 'Sobaidul Islam', 1, 'Health Economics/2017-18/University of Dhaka', 'Zahurul Haque Hall', 'Ukhia,Cox\'sbazar', 'O+', 'show', '01856146798', 'show', 'sobaidul798@gmail.com', 'show', NULL, NULL, NULL, 'General Member', NULL, NULL, NULL, 0, NULL, '2023-09-14 02:55:41', '2023-09-24 23:52:27'),
(152, 50, NULL, '1333736968.jpg', 'csfdu', 'General', 'Nurul Anwar Siddiquee', 1, 'Marketing', 'Salimullah Muslim Hall', 'East Maheshkhalia Para,Teknaf,Cox\'s Bazar', 'B+', 'show', '01619054554', 'show', 'Na831532@gmail.com', 'show', NULL, NULL, NULL, 'General Member', NULL, NULL, NULL, 0, NULL, '2023-09-14 03:06:12', '2023-09-24 23:52:48'),
(153, 51, NULL, '1889719811.jpg', 'csfdu', 'General', 'Mohammad Jahangir Alam', 1, 'Session: 2018-19 ( Banking), FBS', 'Bijoy 71 hall', 'Teknaf Sadar Union, Teknaf, Cox\'s Bazar', 'A+', 'show', '01614878667', 'show', 'mnzahangir67@gmail.com', 'show', NULL, NULL, NULL, 'General Member', NULL, NULL, NULL, 0, NULL, '2023-09-14 03:07:17', '2023-09-24 23:53:43'),
(154, 52, NULL, '1894110541.jpg', 'csfdu', 'General', 'Mohammad Kaif', 1, '2022-2023,English,Dhaka University', 'Mohsin Hall', 'Shah parir Dwip, Teknaf', 'O+', 'show', '01748943818', 'show', 'kaifbinshafi76217@gmail.com', 'show', NULL, NULL, NULL, 'General Member', NULL, NULL, NULL, 0, NULL, '2023-09-14 03:11:43', '2023-09-24 23:54:16'),
(155, 53, NULL, '843703633.jpg', 'csfdu', 'General', 'Md. Amran Khan', 1, 'Institute Of Education and Research', 'Sir A F Rahman Hall', 'Mogoria Kata, Bara Moheshkhali, Moheshkhali', 'B+', 'show', '01581735407', 'show', 'amranak187@gmail.com', 'show', NULL, NULL, NULL, 'General Member', NULL, NULL, NULL, 0, NULL, '2023-09-14 03:13:14', '2023-09-24 23:54:33'),
(156, 54, NULL, '2098566350.jpeg', 'csfdu', 'General', 'Ismailur Rahman Parvej', 1, '22-23/  political science', 'Mohsin hall, Dhaka university', 'Harbang, Chakaria, Cox’sbazar', 'O+', 'show', '01844833742', 'show', 'parvejismail17@gmail.com', 'show', NULL, NULL, NULL, 'General Member', NULL, NULL, NULL, 0, NULL, '2023-09-14 03:13:18', '2023-09-24 23:54:54'),
(157, 55, NULL, '839941717.jpg', 'csfdu', 'General', 'MD. Abdul Hannan', 1, 'Sociology', 'Kabi Jasim Uddin Hall', 'Maheshkhali', 'B+', 'show', '01568024399', 'show', 'mdabdul-2016116779@soc.du.ac.bd', 'show', NULL, NULL, NULL, 'General Member', NULL, NULL, NULL, 0, NULL, '2023-09-14 03:22:17', '2023-09-24 23:55:12'),
(158, 56, NULL, '1110686023.jpg', 'csfdu', 'General', 'Mohammad Earidul Moin Sajath', 1, '2022-23/Management information system /University of dhaka', 'A F Rahman hall', 'Boraghop /Kutubdia /cox\'sbazar', 'O+', 'show', '01640843167', 'show', 'sajathullah465@gmail.com', 'show', NULL, NULL, NULL, 'General Member', NULL, NULL, NULL, 0, NULL, '2023-09-14 03:27:26', '2023-09-24 23:55:23'),
(159, 57, NULL, '106144377.jpg', 'csfdu', 'General', 'AKM SAFAYAT UDDIN', 1, 'Playpen School Bashundhara RA', '121/kha, Uttar Para, Khilkhet, Dhaka 1229', 'Vill: Binamara, Upazi', 'O+', 'show', '01909246090', 'show', 'safayat736@gmail.com', 'show', NULL, NULL, NULL, 'General Member', NULL, NULL, NULL, 0, NULL, '2023-09-14 03:28:47', '2023-09-24 23:55:38'),
(160, 58, NULL, '1469078644.jpg', 'csfdu', 'General', 'আহসান আহমেদ', 1, 'সমাজবিজ্ঞান', 'কবি জসিমউদদীন হল', 'ঈদগাঁও, কক্সবাজার', 'O+', 'show', '01836708866', 'show', 'ahsan.soc.du@gmail.com', 'show', NULL, NULL, NULL, 'General Member', NULL, NULL, NULL, 0, NULL, '2023-09-14 03:29:48', '2023-09-24 23:56:02'),
(161, 59, NULL, '2133491563.jpg', 'csfdu', 'General', 'Arshad Ullah', 1, 'Mass Communication and Journalism', 'SM Hall, University of Dhaka', 'Mohashkhali, Cox\'s Bazar', 'B+', 'show', '01518974767', 'show', 'arshad.mcj@gmail.com', 'show', NULL, NULL, NULL, 'General Member', NULL, NULL, NULL, 0, NULL, '2023-09-14 03:33:06', '2023-09-24 23:56:20'),
(162, 60, NULL, '1853004312.jpg', 'csfdu', 'General', 'Nurul Azim', 1, '2015-16 Arabic', 'Muktijoddha Ziaur Rahman Hall', 'Raja Palong,Ukhia,Cox\'s Bazar', 'O+', 'show', '01851398371', 'show', 'nurulazim767@gmail.com', 'show', NULL, NULL, NULL, 'General Member', NULL, NULL, NULL, 0, NULL, '2023-09-14 03:36:32', '2023-09-24 23:56:35'),
(163, 61, NULL, '309209232.tmp', 'csfdu', 'General', 'Tanvir Hasan', 1, '2022-23-islamic studies -Dhaka university', 'Kobi jashim uddin hall', 'Gorokghata, Moheshkhali, Cox\'s Bazar', 'A+', 'show', '01521714141', 'show', 'hasantanvir357@gmail.com', 'show', NULL, NULL, NULL, 'General Member', NULL, NULL, NULL, 0, NULL, '2023-09-14 03:41:35', '2023-09-24 23:56:47'),
(164, 62, NULL, '983382378.jpg', 'csfdu', 'General', 'Saifur Rahman Turjo', 1, '2018-19/OSL/University Of Dhaka', 'Zahurul Haque Hall', 'Sreemura,Chakmarkul,Ramu,Cox’s Bazar', 'B+', 'show', '01647457550', 'show', 'turjosr2@gmail.com', 'show', NULL, NULL, NULL, 'General Member', NULL, NULL, NULL, 0, NULL, '2023-09-14 03:47:37', '2023-09-24 23:57:03'),
(165, 63, NULL, '190228147.jpg', 'csfdu', 'General', 'Amzad Hossain', 1, 'History 2016-17', 'Hazi Mohammad Mohsin Hall', 'Pekua,shilkhali,Jarulbania', 'O+', 'show', '01835338283', 'show', 'amzad338283@gmail.com', 'show', NULL, NULL, NULL, 'General Member', NULL, NULL, NULL, 0, NULL, '2023-09-14 04:02:29', '2023-09-24 23:57:19'),
(166, 64, NULL, '1067782436.jpg', 'csfdu', 'General', 'Tareq Aziz', 1, '2019-20, History', 'Bijoy Ekattor Hall', 'Sadar Cox\'s Bazar', 'A+', 'show', '01312523267', 'show', 'tareqcox01@gmail.com', 'show', NULL, NULL, NULL, 'General Member', NULL, NULL, NULL, 0, NULL, '2023-09-14 04:04:39', '2023-09-24 23:57:32'),
(167, 65, NULL, '1568586244.jpg', 'csfdu', 'General', 'Mijanur Rahman', 1, 'Mass communication and journalism. Session: 2020-21', 'Zia Hall', 'Barabakia,pekua', 'B+', 'show', '01840857993', 'show', 'mizanurrahman344115@gmail', 'show', NULL, NULL, NULL, 'General Member', NULL, NULL, NULL, 0, NULL, '2023-09-14 04:05:56', '2023-09-24 23:57:43'),
(168, 66, NULL, '1678673100.tmp', 'csfdu', 'General', 'Mohammad Shahinor', 1, 'Department of Management', 'Haji Mohammad Mohsin Hall', 'Baharchara, Jalalabad, Edgaon, Cox\'sbazar', 'AB+', 'show', '01860673645', 'show', 'mdshahin673645@gmail.com', 'show', NULL, NULL, NULL, 'General Member', NULL, NULL, NULL, 0, NULL, '2023-09-14 04:14:02', '2023-09-24 23:57:53'),
(169, 67, NULL, '1654664819.jpg', 'csfdu', 'General', 'Shihab Uddin', 1, 'Finance Department, DU(2020-21)', 'Surja Sen Hall', 'Chotamoheshkhali, Moheshkhali', 'AB+', 'show', '01884870197', 'show', 'hashihabuddin2020@gmail.com', 'show', NULL, NULL, NULL, 'General Member', NULL, NULL, NULL, 0, NULL, '2023-09-14 04:22:29', '2023-09-24 23:58:06'),
(170, 68, NULL, '309001892.jpg', 'csfdu', 'General', 'Rafikul Islam', 1, 'S:2022-2023 D:Sociology Ins:University of Dhaka', 'Muktijoddha Ziaur Rahman Hall', 'Raibaparpara,Pekua,Cox’s Bazar', 'B+', 'show', '01822335060', 'show', 'rafikulislam122714@gmail.com', 'show', NULL, NULL, NULL, 'General Member', NULL, NULL, NULL, 0, NULL, '2023-09-14 04:27:18', '2023-09-24 23:58:16'),
(171, 69, NULL, '398008535.jpg', 'csfdu', 'General', 'Misbahul Kabir', 1, 'IER', 'Kabi Jashimuddin Hall', 'Miajir Ghuna, Toitong, Pekua, CoxsBazar', 'A+', 'show', '01828380788', 'show', 'misbahdu62@gmail.com', 'show', NULL, NULL, NULL, 'General Member', NULL, NULL, NULL, 0, NULL, '2023-09-14 04:36:10', '2023-09-24 23:58:29'),
(172, 70, NULL, '1634682435.jpg', 'csfdu', 'General', 'Mohammad Aktarul Hamid', 1, '2020-21; Accounting ; University of Dhaka.', 'Bijoy Ekattor Hall', 'Baroghop, Kutubdia, Cox’s Bazar.', 'B+', 'show', '01516099791', 'show', 'mdhamidkutubi16@gmail.com', 'show', NULL, NULL, NULL, 'General Member', NULL, NULL, NULL, 0, NULL, '2023-09-14 04:37:24', '2023-09-24 23:58:40'),
(173, 71, NULL, '906313679.jpg', 'csfdu', 'General', 'MD. TAHER', 1, 'Economics', 'Sir A F Rahman Hall', 'Islampur, Eidgaon, Cox bazar', 'O+', 'show', '01883025104', 'show', 'md.taher.du@gmail.com', 'show', NULL, NULL, NULL, 'General Member', NULL, NULL, NULL, 0, NULL, '2023-09-14 05:02:35', '2023-09-24 23:59:04'),
(174, 3, NULL, '322557920.jpg', 'csfdu', 'Executive', 'Tansina Sultana Shirin', 1, 'Business Faculty', NULL, NULL, NULL, 'show', NULL, 'show', NULL, 'show', NULL, NULL, NULL, 'Treasurer', NULL, NULL, NULL, 0, NULL, '2023-09-14 05:03:28', '2023-09-15 06:11:06'),
(175, 4, NULL, '1020833963.jpg', 'csfdu', 'Executive', 'Shaki Aktar', 1, 'Japanese Studies', NULL, NULL, NULL, 'show', NULL, 'show', NULL, 'show', NULL, NULL, NULL, 'Vice President', NULL, NULL, NULL, 0, NULL, '2023-09-14 05:13:10', '2023-09-15 06:11:18'),
(176, 72, NULL, '501052057.jpg', 'csfdu', 'General', 'Gias Uddin', 1, 'Session 18-19', 'Zahurul huq hall', 'Teknaf', 'O+', 'show', '01865369501', 'show', 'giasuddin5001@gmail.com', 'show', NULL, NULL, NULL, 'General Member', NULL, NULL, NULL, 0, NULL, '2023-09-14 05:16:34', '2023-09-24 23:59:26'),
(177, 5, NULL, '321489123.jpg', 'csfdu', 'Executive', 'MD Abdur Rahman Arian', 1, 'Social Science', NULL, NULL, NULL, 'show', NULL, 'show', NULL, 'show', NULL, NULL, NULL, 'Vice President', NULL, NULL, NULL, 0, NULL, '2023-09-14 05:18:53', '2023-09-15 06:11:46'),
(178, 6, NULL, '600249679.jpg', 'csfdu', 'Executive', 'Nikar Sultana Omi', 1, 'Arts Faculty', NULL, NULL, NULL, 'show', NULL, 'show', NULL, 'show', NULL, NULL, NULL, 'Joint Secretary', NULL, NULL, NULL, 0, NULL, '2023-09-14 05:21:59', '2023-09-15 06:12:06'),
(179, 7, NULL, '1877401974.jpg', 'csfdu', 'Executive', 'Kashem Sikder', 1, 'Business Faculty', NULL, NULL, NULL, 'show', NULL, 'show', NULL, 'show', NULL, NULL, NULL, 'Joint Secretary', NULL, NULL, NULL, 0, NULL, '2023-09-14 05:25:35', '2023-09-15 06:12:15'),
(180, 73, NULL, '1301703035.jpeg', 'csfdu', 'General', 'Muhammad Omar Faruque', 1, 'Mass Communication & Journalism', 'Kabi Jasimuddin Hall', 'Shilkhali, Pekua, Cox\'s bazar', 'B+', 'show', '01580264683', 'show', 'omarfaruque131126@gmail.com', 'show', NULL, NULL, NULL, 'General Member', NULL, NULL, NULL, 0, NULL, '2023-09-14 05:26:55', '2023-09-24 23:59:39'),
(181, 8, NULL, '1053475517.jpg', 'csfdu', 'Executive', 'Sanjida Reshmee', 1, 'Law Faculty', NULL, NULL, NULL, 'show', NULL, 'show', NULL, 'show', NULL, NULL, NULL, 'Organising Secretary', NULL, NULL, NULL, 0, NULL, '2023-09-14 05:29:50', '2023-09-15 06:12:24'),
(182, 10, NULL, '1208355945.jpg', 'csfdu', 'Executive', 'Mohammad Arafat', 1, 'Arts Faculty', NULL, NULL, NULL, 'show', NULL, 'show', NULL, 'show', NULL, NULL, NULL, 'Office Secretary', NULL, NULL, NULL, 0, NULL, '2023-09-14 05:33:52', '2023-09-15 06:12:32'),
(183, 11, NULL, '422508674.jpeg', 'csfdu', 'Executive', 'Mohammad Asif', 1, 'Business Faculty', NULL, NULL, NULL, 'show', NULL, 'show', NULL, 'show', NULL, NULL, NULL, 'Planning secretary', NULL, NULL, NULL, 0, NULL, '2023-09-14 05:34:58', '2023-09-15 06:12:39'),
(184, 11, NULL, '734240726.jpg', 'csfdu', 'Executive', 'Omma Hani Israt', 1, 'Business Faculty', NULL, NULL, NULL, 'show', NULL, 'show', NULL, 'show', NULL, NULL, NULL, 'Women Development Affairs Secretary', NULL, NULL, NULL, 0, NULL, '2023-09-14 05:44:33', '2023-09-15 17:29:13'),
(185, 9, NULL, '759545650.jpg', 'csfdu', 'Executive', 'Mustafa Akhil', 1, 'Social Science', NULL, NULL, NULL, 'show', NULL, 'show', NULL, 'show', NULL, NULL, NULL, 'Editor', NULL, NULL, NULL, 0, NULL, '2023-09-14 05:54:50', '2023-09-15 17:29:33');
INSERT INTO `testimonials` (`id`, `serial`, `lang`, `image`, `admin_name`, `category`, `name`, `verify_status`, `workplace`, `current_address`, `permanent_address`, `blood`, `blood_status`, `phone`, `phone_status`, `email`, `email_status`, `fb_link`, `youtube_link`, `web_link`, `text1`, `text2`, `text3`, `text4`, `bloodno`, `blood_date`, `created_at`, `updated_at`) VALUES
(186, 74, NULL, '1865988368.tmp', 'csfdu', 'General', 'Mohammad Bayezid', 1, '2018-19 - Anthropology - Faculty of Social Science', 'SM hall', 'Pinjirkul - Ukhia - Cox\'s bazar', 'AB+', 'show', '01855406086', 'show', 'bayezid883@gmail.com', 'show', NULL, NULL, NULL, 'General Member', NULL, NULL, NULL, 0, NULL, '2023-09-14 06:06:30', '2023-09-24 23:59:54'),
(187, 75, NULL, '1789600555.jpg', 'csfdu', 'General', 'Mohammad Inzamamul Hoque Mahadi', 1, '2018-2019. Economics. Dhaka University.', 'Sir A F Rahman Hall, Dhaka University', 'Shilkhali,Pekua,Cox’s Bazar', 'AB+', 'show', '01873737366', 'show', 'inzamamulhoquemahadi5656@gmail.com', 'show', NULL, NULL, NULL, 'General Member', NULL, NULL, NULL, 0, NULL, '2023-09-14 06:12:29', '2023-09-25 00:00:06'),
(188, 76, NULL, '2115568304.jpg', 'csfdu', 'General', 'Salman Kabir', 1, 'Applied mathematics', 'Fazlul huq muslim hall', 'Baraitali, chakaria, Coxs bazar', 'O+', 'show', '01875566107', 'show', 'salmankabir288@gmail.com', 'show', NULL, NULL, NULL, 'General Member', NULL, NULL, NULL, 0, NULL, '2023-09-14 09:43:28', '2023-09-25 00:00:18'),
(189, 77, NULL, '1801995845.png', 'csfdu', 'General', 'Borhan Uddin', 1, '2022-2023, Islamic History and Culture, University of Dhaka', 'Sir A.F. Rahman', 'Ukhiarghona Lamarpara,Ramu,Cox’sbazar', 'B+', 'show', '01836788818', 'show', 'www.borhan1320@gmail.com', 'show', NULL, NULL, NULL, 'General Member', NULL, NULL, NULL, 0, NULL, '2023-09-14 10:53:29', '2023-09-25 00:00:31'),
(190, 78, NULL, '2098176563.jpg', 'csfdu', 'General', 'Abdur Rahman', 1, '2020-21-- Law-- University of Dhaka', 'Haji Muhammad Mohsin Hall', 'Ukhia-Cox\'s Bazar', 'A+', 'show', '01868674554', 'show', 'arrahman076s@gmail.com', 'show', NULL, NULL, NULL, 'General Member', NULL, NULL, NULL, 0, NULL, '2023-09-14 11:43:06', '2023-09-25 00:00:42'),
(191, 79, NULL, '1369802011.jpg', 'csfdu', 'General', 'Salman Aziz', 1, '2020-21 session,  Department of Islamic Studies,  Dhaka University', 'Master da Surja Sen Hall', 'Village- Master para, Kharulia, Upazila-Cox\'s Bazar Sadar', 'A+', 'show', '01825442911', 'show', 'sazizcox02@gmail.com', 'show', NULL, NULL, NULL, 'General Member', NULL, NULL, NULL, 0, NULL, '2023-09-14 13:45:56', '2023-09-25 00:00:55'),
(192, 80, NULL, '1464557010.jpg', 'csfdu', 'General', 'Abdul Aziz', 1, '2022-23, EEE, Dhaka University of Engineering and Technology', 'Duet gate, Joydebpur, Gazipur', 'East bakhali, North dhurung, Kutubdia, Cox’s Bazar', 'AB+', 'show', '01622465589', 'show', 'abdulaziz71079@gmail.com', 'show', NULL, NULL, NULL, 'General Member', NULL, NULL, NULL, 0, NULL, '2023-09-14 14:14:10', '2023-09-25 00:01:08'),
(193, 81, NULL, '703570935.jpg', 'csfdu', 'General', 'Mohammad Hanif', 1, '2022-23-AIS-University of Dhaka', 'jatrabari', 'Chakaria,cox\'sbazar', 'B+', 'show', '01823377462', 'show', 'Mohammadhanif9670@gmail.com', 'show', NULL, NULL, NULL, 'General Member', NULL, NULL, NULL, 0, NULL, '2023-09-14 14:20:24', '2023-09-25 00:01:21'),
(194, 82, NULL, '1991667912.png', 'csfdu', 'General', 'Arkan Uddin', 1, 'Institute of Health Economics', 'Muktijoddha Ziaur Rahaman Hall', 'Shilkhali, Pekua', 'O+', 'show', '01865236910', 'show', 'arkanuddin967@gmail.com', 'show', NULL, NULL, NULL, 'General Member', NULL, NULL, NULL, 0, NULL, '2023-09-14 14:45:48', '2023-09-25 00:01:34'),
(195, 83, NULL, '1235955499.jpg', 'csfdu', 'General', 'Tazin Ahmad', 1, '2021- 22, information science and library management', 'Shamsunnahar Hall', 'Amila para - Pekua - Cox’s Bazar', 'O+', 'show', '01537493815', 'show', 'sweetytazinahmad@gmail.com', 'show', NULL, NULL, NULL, 'General Member', NULL, NULL, NULL, 0, NULL, '2023-09-14 14:59:48', '2023-09-25 00:01:51'),
(197, 84, NULL, '1541366492.jpg', 'csfdu', 'General', 'Mohammed Hanif', 1, 'Session 20-21,Department of Marketing, University of Dhaka', 'Surja sen hall', 'Ukhia, Cox’s Bazar', 'A-', 'show', '01757402293', 'show', 'mohammedhanif402293@gmail.com', 'show', NULL, NULL, NULL, 'General Member', NULL, NULL, NULL, 0, NULL, '2023-09-14 16:00:44', '2023-09-25 00:02:18'),
(201, 85, NULL, '2077193709.jpg', 'csfdu', 'General', 'Abu bakar Siddique sharif', 1, 'Department of management', 'Bijoy ekattor hall University of Dhaka', 'Darbesh kata, chakaria, Cox Bazar', 'B+', 'show', '01758051555', 'show', 'absssharif555@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '2020-21', NULL, NULL, 0, NULL, '2023-09-14 18:07:28', '2023-09-25 00:02:42'),
(202, 86, NULL, '1209397794.png', 'csfdu', 'General', 'Anowar Zahed', 1, 'Political Science', 'Bijoy Ekattor Hall', 'Rastar Para, Khurushkul, Cox’s Bazar', 'B+', 'show', '01888253660', 'show', 'zahed768731@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '2020-21', NULL, NULL, 0, NULL, '2023-09-14 18:09:42', '2023-09-25 00:03:00'),
(203, 3, NULL, '515588606.jpg', 'csfdu', 'Alumni', 'Mohammad Nurul Huda', 1, 'Bangla Academy', NULL, 'Cox’s Bazar', NULL, 'show', NULL, 'show', NULL, 'show', NULL, NULL, NULL, 'Director General', NULL, NULL, NULL, 0, NULL, '2023-09-14 23:00:53', '2023-09-15 18:10:11'),
(205, 87, NULL, '1587180384.jpg', 'csfdu', 'General', 'Md. Jamshed', 1, 'Department of Finance', 'Kabi Jasim Uddin Hall', 'Eidgaon', 'B+', 'show', '01660167922', 'show', 'mdjamshed1614@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '2021-2022', NULL, NULL, 0, NULL, '2023-09-15 14:20:48', '2023-09-25 00:03:24'),
(206, 88, NULL, '138723370.png', 'csfdu', 'General', 'Mizanur Rahman', 1, 'Mass Communication and Journalism', 'Salimullah Muslim hall', 'Nheela, Teknaf, Cox\'s Bazar', 'A+', 'show', '01879516873', 'show', 'mizanntc@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '2018-19', NULL, NULL, 0, NULL, '2023-09-15 14:33:39', '2023-09-25 00:03:51'),
(207, 89, NULL, '895108682.jpg', 'csfdu', 'General', 'Azizul Mostafa', 1, 'Robotics and Mechatronics Engineering (RME)', 'Dr. Mohammad shahidull hall', 'Kalarmarchara, Moheshkhali.', 'O+', 'show', '01521746541', 'show', 'azizulmostafa2@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '2020-21', NULL, NULL, 0, NULL, '2023-09-15 16:05:05', '2023-09-25 00:04:08'),
(208, 90, NULL, '2130425957.jpg', 'csfdu', 'General', 'Taharina Zannat Prome', 1, 'Department of Communication Disorders-University of Dhaka', 'Ruqqayah hall', 'Chakaria', 'B+', 'show', '01874640470', 'hidden', 'taharinazannatprome@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '2021-2022', NULL, NULL, 0, NULL, '2023-09-15 16:11:48', '2023-09-25 00:04:23'),
(209, 91, NULL, '853995388.jpg', 'csfdu', 'General', 'Afifah Hoque', 1, 'Islamic history and culture', 'Shamsun Nahar Hall', 'Chakaria', 'A+', 'show', '01756476073', 'hidden', 'afifahhoque60@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '2021-22', NULL, NULL, 0, NULL, '2023-09-15 16:25:18', '2023-09-25 00:04:43'),
(210, 92, NULL, '1761031602.jpg', 'csfdu', 'General', 'Farhan Shahriar Anik', 1, 'Department of Peace and Conflict Studies', 'Kabi Jasim Uddin Hall', 'Chakaria', 'O+', 'show', '01845026885', 'show', 'www.farhandupacs1@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '2018-19', NULL, NULL, 0, NULL, '2023-09-15 16:28:22', '2023-09-25 00:05:06'),
(211, 93, NULL, '623154350.jpg', 'csfdu', 'General', 'Md Abdul Ahad Bin Siraj Rajab', 1, 'Applied Mathematics', 'Amar Ekushey', 'Eidgah', 'O+', 'show', '01609515363', 'show', 'ahrajab1228@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '22-23', NULL, NULL, 0, NULL, '2023-09-15 16:36:24', '2023-09-25 00:05:34'),
(212, 94, NULL, '847223226.jpeg', 'csfdu', 'General', 'Asmaul Hosna', 1, 'Management', 'Ruqayyah Hall', 'Chakaria', 'A+', 'show', '01830158110', 'hidden', 'asmaulhosna561@gmail', 'show', NULL, NULL, NULL, 'General Member', '2019-2020', NULL, NULL, 0, NULL, '2023-09-15 17:48:29', '2023-09-25 00:05:54'),
(213, 1, NULL, '1638521040.jpg', 'csfdu', 'Alumni', 'Osman Sarwar Alam Chowdhury Mp', 1, 'Dhaka University', NULL, NULL, NULL, 'show', NULL, 'show', NULL, 'show', NULL, NULL, NULL, 'Former Diplomat & Member of Parliament from Cox\'s Bazar-3.', NULL, NULL, NULL, 0, NULL, '2023-09-15 18:16:19', '2023-09-15 18:16:19'),
(214, 2, NULL, '1394473427.jpg', 'csfdu', 'Alumni', 'Salahuddin Ahmed Mp', 1, 'Cox\'s Bazar', 'India', 'Cox\'s Bazar', NULL, 'show', NULL, 'show', NULL, 'show', NULL, NULL, NULL, 'Former State minister of communication and Member of parliament from Cox\'s Bazar-1', NULL, NULL, NULL, 0, NULL, '2023-09-15 18:18:11', '2023-09-23 05:08:32'),
(215, 4, NULL, '849421936.jpg', 'csfdu', 'Alumni', 'Salimullah Khan', 1, 'U-LAB University', 'Dhaka', 'Cox’s Bazar', NULL, 'show', NULL, 'show', NULL, 'show', NULL, NULL, NULL, 'Bangladeshi writer & Critic.', NULL, NULL, NULL, 0, NULL, '2023-09-15 18:19:33', '2023-09-15 18:25:38'),
(216, 5, NULL, '962992625.jpg', 'csfdu', 'Alumni', 'Santosh Sharma', 1, 'Kalbela', 'Dhaka', 'Cox’s Bazar', NULL, 'show', NULL, 'show', NULL, 'show', NULL, NULL, NULL, 'Editor at Daily Kalbela', NULL, NULL, NULL, 0, NULL, '2023-09-15 18:21:18', '2023-09-15 18:24:41'),
(217, 6, NULL, '256254719.jpg', 'csfdu', 'Alumni', 'Shafiul Azim', 1, 'Biman Bangladesh Airlines', NULL, NULL, NULL, 'show', NULL, 'show', NULL, 'show', NULL, NULL, NULL, 'Managing Director & CEO', NULL, NULL, NULL, 0, NULL, '2023-09-15 18:23:14', '2023-09-15 18:23:14'),
(218, 95, NULL, '1817746087.png', 'csfdu', 'General', 'Sakib Alhasan', 1, 'Islamic Studies', 'Kabi Jasimuddin Hall', 'Chakaria', 'O+', 'show', '01885049110', 'show', 'hmsakibalhassan6708@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '22-23', NULL, NULL, 0, NULL, '2023-09-15 20:29:00', '2023-09-25 00:07:06'),
(219, 96, NULL, '1889563122.jpg', 'csfdu', 'General', 'MD.Faruk', 1, 'Criminology Department', 'Haji Mohammad Mohsin Hall', 'Mognama, pekua,Cox’s bazar', 'B+', 'show', '01834398276', 'show', 'mdfarukducox@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '2015-16', NULL, NULL, 0, NULL, '2023-09-15 21:30:06', '2023-09-25 00:07:22'),
(220, 97, NULL, '2070776190.jpg', 'csfdu', 'General', 'রাজিমুল হক রাকিব', 1, 'Management information systems', 'SM HALL', '1 No ward chakaria Pourashova', 'O+', 'show', '01866359108', 'show', 'rakib204533@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '2017-18', NULL, NULL, 0, NULL, '2023-09-15 21:31:19', '2023-09-25 00:07:36'),
(221, 98, NULL, '1703712684.jpg', 'csfdu', 'General', 'Md.Raji Ullah', 1, 'Tourism & Hospitality Management', 'Bijoy Ekattor Hall', 'Chakmarkul, Ramu, Cox’s Bazar.', 'O+', 'show', '01845224751', 'show', 'mdrajiullah94@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '2017-18', NULL, NULL, 0, NULL, '2023-09-15 21:45:25', '2023-09-25 00:07:53'),
(222, 99, NULL, '2086101826.png', 'csfdu', 'General', 'Mohammad Mobin', 1, 'Linguistics', 'The sir A F Rahman hall', 'Manikpur,Chakoria', 'O+', 'show', '01615099465', 'show', 'mohammadmobin9897@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '21-22', NULL, NULL, 0, NULL, '2023-09-15 21:52:24', '2023-09-25 00:08:04'),
(223, 100, NULL, '693700541.jpg', 'csfdu', 'General', 'SHAHJAMAL SAYEM', 1, 'University of Dhaka', 'Kabi Jasimuddin', 'Cox\'sBazar', 'O+', 'show', '01521483599', 'show', 'shahjamal-3rd-2016118515@iml.du.ac.bd', 'show', NULL, NULL, NULL, 'General Member', '2016-17', NULL, NULL, 0, NULL, '2023-09-15 21:55:51', '2023-09-16 05:10:05'),
(224, 101, NULL, '212484657.jpg', 'csfdu', 'General', 'Saad al jadid', 1, 'Printing and publication studies', 'Sir A Af Rahman Hall', 'Chakaria', 'O+', 'show', '01306720990', 'show', 'saadaljadid82@gmali.com', 'show', NULL, NULL, NULL, 'General Member', '2021-22', NULL, NULL, 0, NULL, '2023-09-15 21:56:24', '2023-09-25 00:08:25'),
(225, 102, NULL, '773372684.tmp', 'csfdu', 'General', 'Mohammad Khalid Hasan', 1, 'Islamic Studies, University of Dhaka', 'Shaheed Sergeant Zahurul Hoque Hall, University of Dhaka', 'South Kharulia, Jhilongha, Cox’s Bazar', 'B+', 'show', '01846148879', 'show', 'khalid.hasan148879@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '2021-22', NULL, NULL, 0, NULL, '2023-09-15 22:10:26', '2023-09-25 00:08:39'),
(226, 103, NULL, '772563774.png', 'csfdu', 'General', 'Jaynal Abedin', 1, 'Department of Sociology', 'Bijoy Ekattor Hall', 'Baharchhara, Teknaf', 'O+', 'show', '01844853752', 'show', 'jaynalcoxb@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '2019-2020', NULL, NULL, 0, NULL, '2023-09-15 22:15:46', '2023-09-25 00:09:21'),
(227, 104, NULL, '1237344654.jpg', 'csfdu', 'General', 'Md. Mir Kashem', 1, 'Tourism and Hospitality Management', 'Kabi Jasimuddin Hall', 'Kutubdia', 'B+', 'show', '01845701372', 'show', 'kashemshikderthm@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '2016-17', NULL, NULL, 0, NULL, '2023-09-15 22:20:19', '2023-09-25 00:09:40'),
(228, 105, NULL, '1117455451.jpg', 'csfdu', 'General', 'Akibul Islam', 1, 'International Relations', 'Shaheed Sergeant Zahurul Haque Hall', 'shaharbill, Chakaria, Cox\'s Bazar', 'A+', 'show', '01521484621', 'show', 'Akibul.eshan@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '2016-17', NULL, NULL, 0, NULL, '2023-09-15 23:16:53', '2023-09-25 00:10:07'),
(229, 106, NULL, '358314870.jpg', 'csfdu', 'General', 'Mijanur Rahman Rim', 1, 'Arabic Department', 'Bijoy Ekattor Hall', 'Chakaria', 'A+', 'show', '01611903103', 'show', 'mrahman16298@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '2016-17', NULL, NULL, 0, NULL, '2023-09-15 23:48:14', '2023-09-25 00:10:21'),
(230, 107, NULL, '736612382.jpg', 'csfdu', 'General', 'Arfatul Islam', 1, 'Department of Arabic', 'Bijoy Ekattor Hall', 'Malumghat, Chakaria', 'O+', 'show', '01580481590', 'show', 'arfatulislam4152@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '2017-18', NULL, NULL, 0, NULL, '2023-09-15 23:57:45', '2023-09-25 00:10:43'),
(231, 108, NULL, '351342616.jpg', 'csfdu', 'General', 'Mohammad Obaidur Rahman', 1, 'Philosophy', 'Muktijoddha Ziaur Rahman Hall', 'Jhawtala,Cox\'s Bazar Sadar', 'O+', 'show', '01822997759', 'show', 'saftyobaid@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '2020-21', NULL, NULL, 0, NULL, '2023-09-16 01:02:51', '2023-09-25 00:10:56'),
(232, 109, NULL, '2145332877.jpg', 'csfdu', 'General', 'Sydur Rahman', 1, 'Dept:Pali and Buddhist studies', 'Bangabandhu hall', 'Zila:Cox’s Bazar, Upzila-Chakaria,Village -Poharchanda', 'B+', 'show', '01568340595', 'show', 'sydorsayed2121@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '21-22', NULL, NULL, 0, NULL, '2023-09-16 01:42:47', '2023-09-25 00:11:21'),
(233, 110, NULL, '1698950696.jpg', 'csfdu', 'General', 'Miftahul Jannat Noha', 1, 'Department: Information Science and Library Management', 'Kabi Sufia Kamal Hall', 'Pekua, Cox’s Bazar', 'O+', 'show', '01537372336', 'hidden', 'miftahuljannatnoha2336@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '2020-21', NULL, NULL, 0, NULL, '2023-09-16 02:09:35', '2023-09-25 00:12:30'),
(234, 111, NULL, '1583530428.jpg', 'csfdu', 'General', 'Md Sirajul Alam', 1, 'Amirabad', 'Amirabad lohagara', 'Moheskhali', 'A+', 'show', '01630909463', 'show', 'mohammadmanik181314@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '2015-16', NULL, NULL, 0, NULL, '2023-09-16 03:48:27', '2023-09-25 00:12:45'),
(235, 112, NULL, '565307960.jpg', 'csfdu', 'General', 'Osman Sarwaar', 1, 'Department of Management', 'Surjasen Hall', 'Ukhiya', 'A+', 'show', '01871743182', 'show', 'osarwaar0@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '2018-18', NULL, NULL, 0, NULL, '2023-09-16 04:40:18', '2023-09-25 00:13:08'),
(236, 113, NULL, '1927967068.jpg', 'csfdu', 'General', 'Nafisa Tabassum Rafia', 1, 'Institute of Health Economics- University of Dhaka', 'Kabi Sufia Kamal Hall', 'Sikder Bill,  Ukhiya', 'B+', 'show', '01673662788', 'hidden', 'nafisarafia991@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '2022-23', NULL, NULL, 0, NULL, '2023-09-16 05:04:16', '2023-09-25 00:13:25'),
(237, 114, NULL, '1853592375.jpg', 'csfdu', 'General', 'Tanjila Mostafa', 1, '22-23-Japanese language & culture -Dhaka University', 'Bangamata sheikh Fazilatunnesa Mujib Hall', 'Kolghor,chakmarkul-Ramu-Cox\'s Bazar', 'B+', 'show', '01628297527', 'hidden', 'tanjila0mostafa@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '22-23', NULL, NULL, 0, NULL, '2023-09-16 05:21:09', '2023-09-25 00:13:44'),
(238, 115, NULL, '975476613.jpg', 'csfdu', 'General', 'kaucher jahan', 1, 'Economics, DU', 'Ruqayyah Hall', 'Khutakhali,  Chakaria.', 'A+', 'show', '01641654391', 'hidden', 'kaucherjahan1999@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '2016-17', NULL, NULL, 0, NULL, '2023-09-16 20:07:02', '2023-09-25 00:14:02'),
(239, 116, NULL, '1037178336.jpg', 'csfdu', 'General', 'Safia Afnan', 1, 'Department of Peace  and Conflict Studies', 'Ruqayyah hall', 'Pekua Upazila', 'O+', 'show', '01707835917', 'hidden', 'safiafnn@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '2019-20', NULL, NULL, 0, NULL, '2023-09-16 20:51:53', '2023-09-25 00:14:22'),
(240, 117, NULL, '1258531528.jpg', 'csfdu', 'General', 'Mostafizur Rahman', 1, 'Accounting & Information Systems', 'Bangabandhu Hall', 'Pekua', 'O+', 'show', '01521583962', 'show', 'mostafizurduacc@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '2015-16', NULL, NULL, 0, NULL, '2023-09-16 21:38:42', '2023-09-25 00:14:42'),
(241, 118, NULL, '1786830067.jpg', 'csfdu', 'General', 'Abidul Islam', 1, 'Sociology', 'Zia Hall', 'Konakhali, Chakaria', 'O+', 'show', '01521746271', 'show', 'abidulislam2683@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '2016-2017', NULL, NULL, 0, NULL, '2023-09-16 21:58:15', '2023-09-25 00:14:59'),
(242, 119, NULL, '2099517543.jpg', 'csfdu', 'General', 'Mohammad Sowkat', 1, 'Bangla', 'Sir A F Rahman Hall', 'Moheshkhali', 'B+', 'show', '01630220477', 'show', 'mohammadsowkatdu@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '2018-19', NULL, NULL, 0, NULL, '2023-09-16 22:17:58', '2023-09-25 00:15:19'),
(243, 120, NULL, '1414232442.jpg', 'csfdu', 'General', 'Fardin Hasan Ishan', 1, 'Political Science', 'Shahid sergeant zahurul Haque Hall', 'Moheshkhali', 'B+', 'show', '01886523627', 'show', 'fardinhasanishan@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '2020-21', NULL, NULL, 0, NULL, '2023-09-16 23:05:10', '2023-09-25 00:15:35'),
(244, 121, NULL, '84193803.tmp', 'csfdu', 'General', 'Fatema Islam', 1, 'INFORMATION SCIENCE', 'BOKSI BAZAR', 'COX\'S BAZAR', 'AB+', 'show', '01814924028', 'hidden', 'fatemapearl18@yahoo.com', 'show', NULL, NULL, NULL, 'General Member', '2021-2022', NULL, NULL, 0, NULL, '2023-09-16 23:52:55', '2023-09-25 00:16:09'),
(245, 122, NULL, '445820636.tmp', 'csfdu', 'General', 'Morshedul Islam', 1, 'Augmedix Bangladesh Limited', 'Bakshi Bazar', 'Cox\'s Bazar Sadar', 'O+', 'show', '01814924028', 'show', 'morshedpearl18@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '2019-2020', NULL, NULL, 0, NULL, '2023-09-17 00:21:31', '2023-09-25 00:16:42'),
(246, 123, NULL, '1932545396.jpg', 'csfdu', 'General', 'Rafsan Uddin', 1, 'Textile Engineering', 'Mohammadpur,dhaka.', 'Pekua', 'O+', 'show', '01874178106', 'show', 'uddinrafsan33@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '2019-20', NULL, NULL, 0, NULL, '2023-09-17 01:07:51', '2023-09-25 00:17:01'),
(247, 124, NULL, '402363694.png', 'csfdu', 'General', 'sourav barua', 1, 'Health Economics', 'jagannath hall', 'ukhiya', 'A+', 'show', '01324530654', 'show', 'sonnibarua@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '21-22', NULL, NULL, 0, NULL, '2023-09-17 01:44:24', '2023-09-25 00:17:19'),
(248, 125, NULL, '975400971.jpg', 'csfdu', 'General', 'MD. JAHEDUL ISLAM', 1, 'DEPARTMENT OF FINANCE', 'Salimullah Muslim Hall', 'Sonar Para, Inani, Ukhia, Cox’s Bazar', 'O+', 'show', '01521307611', 'show', 'mdjahedulislam867@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '2015-16', NULL, NULL, 0, NULL, '2023-09-17 02:10:52', '2023-09-25 00:17:38'),
(249, 126, NULL, '519248888.jpg', 'csfdu', 'General', 'Prabal Barua', 1, 'Finance', 'Jagannath Hall', 'Kutupalong, Ukhia', 'A+', 'show', '01704875843', 'show', 'jakybarua7@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '2017-18', NULL, NULL, 0, NULL, '2023-09-17 02:25:09', '2023-09-25 00:17:57'),
(250, 127, NULL, '2096774547.jpg', 'csfdu', 'General', 'Abdul Mozid', 1, 'Philosophy', '312, Sir A F Rahman Hall, University of Dhaka.', 'Kutubdia', 'O+', 'show', '01634050662', 'show', 'abdulmozid2754@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '2015-16', NULL, NULL, 0, NULL, '2023-09-17 02:30:36', '2023-09-25 00:18:34'),
(251, 128, NULL, '268561426.jpg', 'csfdu', 'General', 'Tarequr Rahaman', 1, 'Department Of Oceanography', 'Dr.Md Shahidullah Hall', 'Malumghat, Chakaraia', 'B+', 'show', '01518793776', 'show', 'tarequrrahaman2019@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '2019-2020', NULL, NULL, 0, NULL, '2023-09-17 03:40:55', '2023-09-25 00:19:12'),
(252, 129, NULL, '1099647075.jpg', 'csfdu', 'General', 'MOZAHED HOSSAIN', 1, 'M.phil at Dhaka University', 'Bangabandhu Hall', 'Pekua', 'A-', 'show', '01648908653', 'show', 'mozahed.pbs10@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '2015-16', NULL, NULL, 0, NULL, '2023-09-17 04:37:22', '2023-09-25 00:19:29'),
(253, 130, NULL, '1085194014.jpg', 'csfdu', 'General', 'Imrul Kayesh', 1, 'Stylex Collection( Buying House), Mohakhali DOHS, Ex Student -Dept. Of Tourism and Hospitality management', 'Adorshonogor, Middle Badda, Dhaka.', 'North Mehernama, Pekua, Cox,s Bazar', 'B+', 'show', '01838919396', 'show', 'imrulkdu@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '2008-2009', NULL, NULL, 0, NULL, '2023-09-17 04:42:32', '2023-09-25 00:19:45'),
(254, 131, NULL, '1062549938.jpg', 'csfdu', 'General', 'Khaled Nur Taimon Ahamed', 1, 'Persian Language and Literature', 'Bijoy Ekattor Hall', 'Pekua', 'B+', 'show', '01316786726', 'show', 'taimonahamed@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '2021-22', NULL, NULL, 0, NULL, '2023-09-17 17:06:06', '2023-09-25 00:20:04'),
(255, 132, NULL, '1376240330.jpg', 'csfdu', 'General', 'Md Nurul Absar', 1, 'nurulabsardu@gmail.com', 'Kabi Jasimuddin Hall', 'Ramu', 'A+', 'show', '01310775255', 'show', 'nurulabsardu@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '2017-18', NULL, NULL, 0, NULL, '2023-09-17 22:08:41', '2023-09-25 00:20:35'),
(256, 133, NULL, '322741117.jpg', 'csfdu', 'General', 'Salman kabir', 1, 'Applied mathematics', 'Fazlul huq muslim hall', 'Baraitali, Chakaria, Coxs bazar', 'O+', 'show', '01924260922', 'show', 'salmankabir288@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '2018-19', NULL, NULL, 0, NULL, '2023-09-18 00:15:04', '2023-09-25 00:20:52'),
(257, 134, NULL, '91725557.jpg', 'csfdu', 'General', 'Sakib Hasan', 1, 'Islamic History and Culture', 'Azimpur, Dhaka-1205', 'Saharbil, Chakoria', 'B+', 'show', '01640710630', 'show', 'sakibhasan98789@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '2020-21', NULL, NULL, 0, NULL, '2023-09-18 00:17:02', '2023-09-25 00:21:10'),
(258, 135, NULL, '207426851.jpg', 'csfdu', 'General', 'Shafat Rahaman', 1, 'Mass Communication and Journalism - University of Dhaka', 'Haji Muhammad Mohsin Hall', 'Ukhiya', 'AB+', 'show', '01823912726', 'show', 'rahamanshafat@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '2017-18', NULL, NULL, 0, NULL, '2023-09-18 00:19:56', '2023-09-25 00:21:32'),
(259, 136, NULL, '1716643491.jpg', 'csfdu', 'General', 'Shejanur Rahman Imon', 1, 'MIS-DU', 'Sir A F Rahman Hall', 'Ramu, Cox’s Bazar', 'O+', 'show', '01886535508', 'show', 'shejanurrahmanimon@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '2019-20', NULL, NULL, 0, NULL, '2023-09-18 00:21:20', '2023-09-25 00:21:50'),
(260, 137, NULL, '1922428410.jpg', 'csfdu', 'General', 'Mohammad Touhidul Hasan', 1, 'Institute of social welfare & research', 'Surjasen Hall', 'Chakaria', 'O+', 'show', '01875117420', 'show', 'touhid.iswr.du@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '2017-2018', NULL, NULL, 0, NULL, '2023-09-18 00:24:41', '2023-09-25 00:22:11'),
(261, 138, NULL, '1591112263.jpg', 'csfdu', 'General', 'Arfat Rahaman', 1, 'Accounting & Information System', 'Mohsin Hall', 'Cox\'s Bazar Sadar', 'B+', 'show', '01721911380', 'show', 'Arfatrahaman97@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '2014-2015', NULL, NULL, 0, NULL, '2023-09-18 00:25:12', '2023-09-25 00:22:29'),
(262, 139, NULL, '1017416172.jpg', 'csfdu', 'General', 'Mohammad Imran Hossain', 1, 'Arabic', 'Shaheed Sergeant Zuhorul Hoque Hall', 'Chakaria', 'O+', 'show', '01879936600', 'show', 'imranhn6600@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '2020-21', NULL, NULL, 0, NULL, '2023-09-18 00:26:48', '2023-09-25 00:22:48'),
(263, 140, NULL, '1651008934.jpg', 'csfdu', 'General', 'anisur rahman', 1, 'footwear Engineering.  Du', 'Lalmatia,  dhaka.', 'Ukhia, Cox’s Bazar', 'AB-', 'show', '01837139396', 'show', 'anisrahmanstudent@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '22-23', NULL, NULL, 0, NULL, '2023-09-18 00:27:26', '2023-09-25 00:23:15'),
(264, 141, NULL, '839334790.jpg', 'csfdu', 'General', 'Selim  Ullah', 1, 'Sociology', 'Haji Mohammad Mohsin Hall', 'Teknaf', 'O-', 'show', '01874832273', 'show', 'selimsoc11@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '2016-17', NULL, NULL, 0, NULL, '2023-09-18 00:29:07', '2023-09-25 00:23:34'),
(265, 142, NULL, '638513885.jpg', 'csfdu', 'General', 'Md Showkat', 1, 'Oceanography,DU', 'AEH', 'Duttor dhurun,kutubdia', 'B+', 'show', '01521584100', 'show', 'mohammadshowkat647@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '2018-19', NULL, NULL, 0, NULL, '2023-09-18 00:30:50', '2023-09-25 00:27:00'),
(266, 143, NULL, '366787641.jpeg', 'csfdu', 'General', 'Abid Anwar', 1, 'Math', 'Fazlul Huq Hall', 'Eidgah , Coxbazar', 'A+', 'show', '01859904446', 'show', 'rraabid@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '2018-19', NULL, NULL, 0, NULL, '2023-09-18 00:38:09', '2023-09-25 00:27:37'),
(267, 144, NULL, '471273560.jpg', 'csfdu', 'General', 'MD. RASHEL MAHMUD', 1, 'IER', 'SIR A F RAHMAN HALL', 'Moheshkhali, Cox\'s Bazar', 'AB+', 'show', '01830477610', 'show', 'mdrashelmahmud542@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '2013-14', NULL, NULL, 0, NULL, '2023-09-18 00:41:48', '2023-09-25 00:28:05'),
(268, 145, NULL, '1689820903.jpg', 'csfdu', 'General', 'Jashim Uddin', 1, 'Geography & Environment, Dhaka University', 'Bijoy Ekattor Hall', 'Maheshkhali', 'O+', 'show', '01849486432', 'show', 'jasimuddin4940@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '2016-17', NULL, NULL, 0, NULL, '2023-09-18 00:45:47', '2023-09-25 00:28:37'),
(269, 146, NULL, '125048024.jpg', 'csfdu', 'General', 'MD JAHEDUL ISLAM', 1, 'Mass Communication & Journalism', 'Mohoshin Hall', 'Cox\'s Bazar Upazila', 'B-', 'show', '01833721728', 'show', 'mdjahedulislam217795@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '2015-16', NULL, NULL, 0, NULL, '2023-09-18 00:51:48', '2023-09-25 00:29:02'),
(270, 147, NULL, '617777305.jpg', 'csfdu', 'General', 'Rafiq Uddin', 1, 'Urdu, Dhaka University', 'Surja Sen Hall', 'Ukhia', 'O+', 'show', '01869166520', 'show', 'rafiquddin327@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '2021-22', NULL, NULL, 0, NULL, '2023-09-18 00:51:49', '2023-09-25 00:29:29'),
(271, 148, NULL, '1755251503.jpg', 'csfdu', 'General', 'emran hakim ullah', 1, 'DMLC', 'Bijoy 71 Hall', 'Kutubdia', 'B+', 'show', '01846868090', 'show', 'emranhakimullah@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '2015-16', NULL, NULL, 0, NULL, '2023-09-18 01:02:00', '2023-09-25 00:30:04'),
(272, 149, NULL, '481059200.jpg', 'csfdu', 'General', 'Yesin Arafat Rafi', 1, 'Political Science-University Of Dhaka', 'Shaheed Sergeant Zahurul Haque Hall', 'Chara Battali,Inani,Ukhiya', 'A+', 'show', '01306737173', 'show', 'yesinarafatrafi@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '2020-21', NULL, NULL, 0, NULL, '2023-09-18 01:09:23', '2023-09-25 00:30:30'),
(273, 150, NULL, '902311867.jpg', 'csfdu', 'General', 'Nusrat Islam Dolon', 1, 'Food and Nutrition', 'Mirpur 2, Dhaka.', 'Vill: Binamara, Upazila: Chakaria', 'AB+', 'show', '01962522502', 'hidden', 'nusrat.islam.dolon@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '2017-2018', NULL, NULL, 0, NULL, '2023-09-18 01:10:38', '2023-09-25 00:33:25'),
(274, 151, NULL, '524621334.jpg', 'csfdu', 'General', 'Abdul Hakim', 1, 'Department of English,Dhaka College', 'Azimpur, Dhaka', 'Kutubdia', 'A+', 'show', '01888723266', 'show', 'ah1849172@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '2020-21', NULL, NULL, 0, NULL, '2023-09-18 01:21:46', '2023-09-25 00:34:22'),
(275, 152, NULL, '442676536.jpg', 'csfdu', 'General', 'Murshedul Islam Akash', 1, 'Marketing', 'Salimullah Muslim Hall', 'Ramu Cox\'s Bazar', 'A+', 'show', '01516358493', 'show', 'murshedulislamakash98@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '2018-19', NULL, NULL, 0, NULL, '2023-09-18 01:36:12', '2023-09-25 00:34:49'),
(276, 153, NULL, '320860988.jpg', 'csfdu', 'General', 'Md. Wahidul Islam', 1, 'International Business', 'Tongi, Gazipur', 'Pekua', 'B+', 'show', '01515213624', 'show', 'wahidulislamib6@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '2012-2013', NULL, NULL, 0, NULL, '2023-09-18 01:41:38', '2023-09-25 00:35:16'),
(277, 154, NULL, '2042918658.jpg', 'csfdu', 'General', 'Rashedul Islam', 1, 'Footwear Engineering', 'Shaheed Sargent Jahurul Haque Hall', 'Teknaf, Cox’s Bazar', 'AB+', 'show', '01521705536', 'show', 'rashedulislam225157@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '2019-20', NULL, NULL, 0, NULL, '2023-09-18 01:47:39', '2023-09-25 00:35:46'),
(278, 155, NULL, '1526940594.jpg', 'csfdu', 'General', 'Bappy Rakhain', 1, 'Microbiology', 'Jagannath Hall', 'Ukhia', 'O+', 'show', '01710183258', 'show', 'bappyrakhain@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '2017-18', NULL, NULL, 0, NULL, '2023-09-18 02:09:22', '2023-09-25 00:36:17'),
(279, 156, NULL, '711644667.jpg', 'csfdu', 'General', 'Umme Salma Urmi', 1, 'Department of Soil, Water,& Environment, University Of Dhaka', 'Shamsunnahar Hall', 'Chiringa, Chakaria', 'A+', 'show', '01974891541', 'hidden', 'urmiurmi158@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '2020-2021', NULL, NULL, 0, NULL, '2023-09-18 02:13:08', '2023-09-25 00:36:46'),
(280, 157, NULL, '373355998.jpg', 'csfdu', 'General', 'Mohammad Parvez', 1, 'linguistic', 'বঙ্গবন্ধু হল', 'টেকনাফ', 'AB+', 'show', '01818349639', 'show', 'cparvez387@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '22-23', NULL, NULL, 0, NULL, '2023-09-18 02:15:30', '2023-09-25 00:37:21'),
(281, 158, NULL, '1210435228.jpg', 'csfdu', 'General', 'Md. Emrul Shahed', 1, 'Soil, Water and Environment, Shaheed Suhrawardy College (7 College)', 'Azimpur, Dhaka', 'Boillapara, Baitush Sharaf Road, Cox’s Bazar Sadar', 'O+', 'show', '01521219590', 'show', 'imemrulshahed@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '2017-18', NULL, NULL, 0, NULL, '2023-09-18 02:46:09', '2023-09-25 00:37:47'),
(282, 159, NULL, '59314777.jpg', 'csfdu', 'General', 'Elaf Binte Amin', 1, 'Department of economics, University of Dhaka', 'Mohammadpur, Dhaka -1207', 'Moheshkhali', 'AB+', 'show', '01876765577', 'hidden', 'elaf.amin2003@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '2021-22', NULL, NULL, 0, NULL, '2023-09-18 02:54:27', '2023-09-25 00:38:37'),
(283, 160, NULL, '1366133678.tmp', 'csfdu', 'General', 'Naimul Islam', 1, 'Dhaka University', 'Bijoy 71 Hall', 'Maheshkhali', 'B+', 'show', '01861943196', 'show', 'naimabidmehrab7322@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '2017-18', NULL, NULL, 0, NULL, '2023-09-18 03:08:44', '2023-09-25 00:39:07'),
(284, 161, NULL, '482086818.jpg', 'csfdu', 'General', 'Tahiyad Shuvoo', 1, 'Information Science and Library Management -University Of Dhaka', '511 No. Room.  kabi Jashim Uddin Hall', '1567,Rajapalong,Ukhiya,Cox\'sBazar', 'A+', 'show', '01538044869', 'show', 'tahiyadshuvoo13@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '18-19', NULL, NULL, 0, NULL, '2023-09-18 03:12:35', '2023-09-25 00:40:09'),
(285, 162, NULL, '2085249125.jpg', 'csfdu', 'General', 'Morjina Akter', 1, 'Department: Finance.  Institution: Faculty of Business Studies', 'Shamsun Nahar Hall', 'Village: Kawerkhop, Upazila: Ramu, Zila: Cox\'sBazar', 'B+', 'show', '01753123094', 'hidden', 'morjina562000@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '2019-2020', NULL, NULL, 0, NULL, '2023-09-18 03:51:59', '2023-09-25 00:40:40'),
(286, 163, NULL, '1719942735.jpg', 'csfdu', 'General', 'Meharab Hossain', 1, 'IB', 'SM Hall', 'Pekua', 'O+', 'show', '01821576057', 'show', 'mdmeharab8596@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '2019-20', NULL, NULL, 0, NULL, '2023-09-18 04:07:43', '2023-09-25 00:41:06'),
(287, 164, NULL, '1698971238.jpg', 'csfdu', 'General', 'Jahedul Hoque', 1, 'Department of Management, Faculty of Business Studies, University of Dhaka', 'Sir A F Rahman Hall', 'Ukhiya, Cox\'s Bazar', 'B+', 'show', '01866466066', 'show', 'jahedulhoque777@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '2019-20', NULL, NULL, 0, NULL, '2023-09-18 04:25:41', '2023-09-25 00:41:30'),
(288, 165, NULL, '822466359.jpg', 'csfdu', 'General', 'Md Shahidul Islam', 1, 'Department of Banking and Insurance, University of Dhaka', 'Bijoy Ekattor Hall', 'Teknaf', 'O+', 'show', '01521774953', 'show', 'shahidulislamsameer42@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '2019-2020', NULL, NULL, 0, NULL, '2023-09-18 04:48:19', '2023-09-25 00:47:32'),
(289, 166, NULL, '1926434067.tmp', 'csfdu', 'General', 'Tanvirul Islam', 1, 'Jahangirnagar University', 'Bishwakabi Rabindranath Tagore Hall, JU', 'Dhakkin Dhurung, Kutubdia', 'A+', 'show', '01530145377', 'show', 'tanvirul305@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '2020-2021', NULL, NULL, 0, NULL, '2023-09-18 08:47:32', '2023-09-25 00:48:11'),
(290, 167, NULL, '272784327.tmp', 'csfdu', 'General', 'Easin Arfath', 1, 'International relations University of Dhaka', 'Kobi Jasim Uddin Hall', 'Kutubdia', 'O+', 'show', '01886219139', 'show', 'easinarfath654@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '2022-23', NULL, NULL, 0, NULL, '2023-09-18 14:09:26', '2023-09-25 00:48:48'),
(291, 168, NULL, '1726634103.jpg', 'csfdu', 'General', 'Shahidul Islam', 1, 'Institute of Education and Research', 'Sir A. F. Rahman Hall, University of Dhaka', 'Pekua', 'B+', 'show', '01836037473', 'show', 'shahidassaddu@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '2015-16', NULL, NULL, 0, NULL, '2023-09-18 14:35:19', '2023-09-25 00:49:16'),
(292, 169, NULL, '1957842032.jpeg', 'csfdu', 'General', 'Md Abdullah', 1, 'Dept. of Tourism and Hospitality Management', 'Zahurul Hoque Hall', 'South Mithachari, Ramu', 'O+', 'show', '01516392001', 'show', 'abdullahdu425633@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '2019-20', NULL, NULL, 0, NULL, '2023-09-18 14:46:44', '2023-09-25 00:49:46'),
(293, 170, NULL, '1157097206.jpg', 'csfdu', 'General', 'Zahangir Alam', 1, 'Arabic', 'FR Hall', 'Chakaria', 'O+', 'show', '01878269396', 'show', 'zahangir832001@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '2020-21', NULL, NULL, 0, NULL, '2023-09-18 15:18:53', '2023-09-25 00:50:11'),
(294, 171, NULL, '1769758369.jpg', 'csfdu', 'General', 'Md Hanifur lslam', 1, 'Japanese studies', 'Kabi Jasim Uddin', 'Eidgah,Cox’s Bazar', 'A+', 'show', '01883157327', 'show', 'duhanif.com@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '2022-2023', NULL, NULL, 0, NULL, '2023-09-18 18:44:58', '2023-09-25 00:51:05'),
(295, 172, NULL, '1814104919.jpg', 'csfdu', 'General', 'Rimon Sharma Joy', 1, 'Zoology', 'Jagannath hall', 'Monipur, Shaplapur, Moheshkhali, Coxsbazar', 'O+', 'show', '01845084856', 'show', 'rimonsharmajoy@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '2021-2022', NULL, NULL, 0, NULL, '2023-09-18 19:05:54', '2023-09-25 00:55:11'),
(296, 173, NULL, '937594348.jpg', 'csfdu', 'General', 'Gufran', 1, 'University of Dhaka, political science', 'Bijoy Ekattor Hall', 'Kutubdia', 'AB+', 'show', '01881473746', 'show', 'gufrankutubi@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '2021-22', NULL, NULL, 0, NULL, '2023-09-18 19:07:29', '2023-09-25 00:55:27'),
(297, 174, NULL, '1617644063.jpg', 'csfdu', 'General', 'Shahbaz Uddin', 1, 'Biochemistry and Molecular Biology', 'Dr Muhammad Shahidullah Hall', 'Chakaria', 'O+', 'show', '01838086996', 'show', 'shahbajuddin14@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '2018-19', NULL, NULL, 0, NULL, '2023-09-18 19:46:54', '2023-09-25 00:55:54'),
(298, 175, NULL, '489473683.jpg', 'csfdu', 'General', 'Harunur rasid', 1, 'Marketing, Dhaka university', 'Shaheed sergeant jahrul hoque hall', 'Harbang, chakaria, cox\'s bazar', 'O+', 'show', '01861367071', 'show', 'harunmohammad000000@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '2020-2021', NULL, NULL, 0, NULL, '2023-09-18 22:32:12', '2023-09-25 00:56:16'),
(299, 176, NULL, '1052718594.png', 'csfdu', 'General', 'Sumaiya Tabassum', 1, 'Department of philosophy, University of Dhaka', 'Kabi Sufia Kamal Hall', 'Chakaria', 'A+', 'show', '01871962105', 'hidden', 'tabsu2000@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '2018-19', NULL, NULL, 0, NULL, '2023-09-18 22:37:08', '2023-09-25 00:56:33'),
(300, 177, NULL, '447973541.jpg', 'csfdu', 'General', 'Mishkat Hossain', 1, 'Management', 'Haji Muhammad Mohsin Hall', 'Chakaria', 'B+', 'show', '01516037080', 'show', 'mishkathossain9@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '2018-19', NULL, NULL, 0, NULL, '2023-09-18 22:40:08', '2023-09-25 00:56:52'),
(301, 178, NULL, '2086545474.jpg', 'csfdu', 'General', 'Rezaul Karim', 1, 'Department of History, University of Dhaka', 'Bijoy ekattor', 'Chakaria', 'B+', 'show', '01879738274', 'show', 'rezaulkarimraju0250@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '2020-21', NULL, NULL, 0, NULL, '2023-09-18 22:40:37', '2023-09-25 00:57:08'),
(302, 179, NULL, '801307022.jpg', 'csfdu', 'General', 'Lutfur Kabir Rana', 1, 'Department of History', 'Shaheed Sargeant Zahurul Haq Hall.', 'Chakaria', 'B+', 'show', '01864254892', 'show', 'lutfurkabirrana@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '2018-19', NULL, NULL, 0, NULL, '2023-09-18 22:43:55', '2023-09-25 00:57:29'),
(303, 180, NULL, '1767482009.jpg', 'csfdu', 'General', 'Tahrima Tarannum Tahi', 1, 'Marketing, MBA', 'Shamsunnahar Hall', 'Chakaria Upazila', 'O+', 'show', '01878214050', 'hidden', 'tahrimatarannum120@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '2021-2022', NULL, NULL, 0, NULL, '2023-09-18 22:48:58', '2023-09-25 00:57:46'),
(304, 181, NULL, '2129056613.jpg', 'csfdu', 'General', 'Mostafa Ahmad', 1, 'Department of International Relations', 'Surja Sen Hall, Room- 475, University of Dhaka', 'Chakoria', 'B+', 'show', '01831730978', 'show', 'mostafa.duir@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '2018-19', NULL, NULL, 0, NULL, '2023-09-18 22:56:15', '2023-09-25 00:58:15'),
(305, 182, NULL, '483135.jpg', 'csfdu', 'General', 'Mohammadur rahman', 1, 'Arabic', 'Zia hall (408)', 'Chakaria', 'A+', 'show', '01864427870', 'show', 'mahmudchk70@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '2017-18', NULL, NULL, 0, NULL, '2023-09-18 23:02:26', '2023-09-25 00:58:29'),
(306, 183, NULL, '285941080.jpg', 'csfdu', 'General', 'MD. Jahid Hossain', 1, 'Political science, University of Dhaka', 'Bijoy Ekattor Hall', 'Ramu', 'O+', 'show', '01862568286', 'show', 'jahidhossain.862568286@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '20-21', NULL, NULL, 0, NULL, '2023-09-18 23:07:47', '2023-09-25 00:58:44'),
(307, 184, NULL, '179870986.jpg', 'csfdu', 'General', 'Harunur Rashid', 1, 'Department of political science, University of Dhaka', 'Shaheed Serjent Zohurul Hoque Hall', 'Union:Badarkhali, upazilla:Chakaria,Zilla:Cox\'s Bazar', 'B+', 'show', '01329264401', 'show', 'harunurrashid121380@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '2022-23', NULL, NULL, 0, NULL, '2023-09-18 23:12:39', '2023-09-25 00:59:06'),
(308, 185, NULL, '690804554.jpeg', 'csfdu', 'General', 'Mohammad Ashraful Islam', 1, 'LPE;DU', 'Dr.Qudrat e Khuda Hostel;Dhaka University', 'Chakaria', 'A+', 'show', '01881432017', 'show', 'mdashraful-2020017305@ilet.du.ac.bd', 'show', NULL, NULL, NULL, 'General Member', '2020-2021', NULL, NULL, 0, NULL, '2023-09-18 23:14:58', '2023-09-25 00:59:20'),
(309, 186, NULL, '1400620750.jpg', 'csfdu', 'General', 'Md Asraful Islam Sakib', 1, 'English Department', 'Bijoy Ekattor Hall', 'Chakaria', 'AB+', 'show', '01860847274', 'show', 'sakibasraf@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '2016-2017', NULL, NULL, 0, NULL, '2023-09-18 23:36:36', '2023-09-25 00:59:37'),
(310, 187, NULL, '1829991433.jpg', 'csfdu', 'General', 'Jamsadul Islam Rizvy', 1, 'Tejgaon college', '84 Indira road,Farmgate, Dhaka', 'Ali akbar dail,Kutubdia', 'A+', 'show', '01609427605', 'show', 'jamsadulislamrizvy2@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '2022-2023', NULL, NULL, 0, NULL, '2023-09-19 00:37:44', '2023-09-25 00:59:57'),
(311, 188, NULL, '19869064.jpg', 'csfdu', 'General', 'Farjana Akter Arjo', 1, 'Tourism and hospitality management', 'Ruqayyah hall', 'Nheela, teknaf', 'AB+', 'show', '01881445826', 'hidden', 'farjana9593@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '2018-19', NULL, NULL, 0, NULL, '2023-09-19 01:48:20', '2023-09-25 01:00:08'),
(312, 189, NULL, '721958779.jpg', 'csfdu', 'General', 'Mehedul islam', 1, 'DU,Social Welfare', 'Zia hall', 'Chakaria', 'AB+', 'show', '01875650402', 'show', 'mehedirabdan02@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '2020-21', NULL, NULL, 0, NULL, '2023-09-19 01:49:56', '2023-09-25 01:00:20'),
(313, 190, NULL, '832131301.tmp', 'csfdu', 'General', 'Jannatun Nayem Saima', 1, 'English', 'Bakshibazar', 'Ukhia', 'B+', 'show', '01584004019', 'hidden', 'jannatunnayemsaima@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '2016-17', NULL, NULL, 0, NULL, '2023-09-19 02:38:41', '2023-09-25 01:00:37'),
(314, 191, NULL, '1561634585.jpg', 'csfdu', 'General', 'Mohammad Moin Uddin', 1, 'Women and Gender Studies', 'Zia Hall', 'Chakaria', 'O+', 'show', '01635286884', 'show', 'moinuddindu1@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '2018-19', NULL, NULL, 0, NULL, '2023-09-19 04:18:21', '2023-09-25 01:00:59'),
(315, 192, NULL, '608614857.jpg', 'csfdu', 'General', 'Mashrur Auwad Nahiyan', 1, 'Department of Finance, University of Dhaka', 'Kabi Jashim uddin Hall', 'Dhemushia, Chakoria, Cox\'s bazar', 'A+', 'show', '01304446472', 'show', 'knahiyan70@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '2021-22', NULL, NULL, 0, NULL, '2023-09-19 04:24:10', '2023-09-25 01:01:13'),
(316, 193, NULL, '2065492850.jpg', 'csfdu', 'General', 'Ahad Ullah', 1, 'Population sciences', 'Shahed sergeant Jahurul Haque Hall', 'Kutubdia', 'O+', 'show', '01827912265', 'show', 'ahadullahdu2015@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '2015-16', NULL, NULL, 0, NULL, '2023-09-19 09:58:33', '2023-09-25 01:01:31'),
(317, 194, NULL, '1682876706.jpg', 'csfdu', 'General', 'Asraful Ahesan', 1, 'Economics', 'Haji Muhammad Mohsin Hall', 'Chakaria', 'A+', 'show', '01787855255', 'show', 'asraful.ahesan.bd@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '2016-2017', NULL, NULL, 0, NULL, '2023-09-19 15:39:02', '2023-09-25 01:01:49'),
(318, 195, NULL, '989464377.jpg', 'csfdu', 'General', 'Khandokar maeen ahmed', 1, 'Arabic Department', 'Master da Surja sen hall', 'Cox’s Bazar', 'A+', 'show', '01791639264', 'show', 'khandakarmaeenahmed123@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '2021-22', NULL, NULL, 0, NULL, '2023-09-19 15:45:19', '2023-09-25 01:02:02'),
(319, 196, NULL, '83066126.jpg', 'csfdu', 'General', 'Saha Amran', 1, 'Social Welfare -University of Dhaka', 'Bangabandhu Hall', 'Ukhiya', 'B+', 'show', '01575447051', 'show', 'sahaamran900@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '2021-22', NULL, NULL, 0, NULL, '2023-09-19 18:31:40', '2023-09-25 01:02:16'),
(320, 197, NULL, '2111045303.jpg', 'csfdu', 'General', 'S.M. Omar', 1, 'Criminology', 'Surja Sen', 'Sadar', 'A+', 'show', '01997786166', 'show', 's.m.omar1@outlook.com', 'show', NULL, NULL, NULL, 'General Member', '19-20', NULL, NULL, 0, NULL, '2023-09-19 18:39:17', '2023-09-25 01:02:32'),
(321, 198, NULL, '1023829167.jpg', 'csfdu', 'General', 'Minhajul Islam Minar', 1, 'Department of Management Information Systems, University of Dhaka', 'A. F Rahman Hall', 'Chakaria', 'B-', 'show', '01879282306', 'show', 'miminar214@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '2022-2023', NULL, NULL, 0, NULL, '2023-09-19 19:07:54', '2023-09-25 01:02:45'),
(322, 199, NULL, '1363247133.jpg', 'csfdu', 'General', 'Esmaile Hossen', 1, 'Smart Group', 'Surjasen Hall', 'Pekua', 'O+', 'show', '01837575676', 'show', 'esmailedu2011@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '2011-12', NULL, NULL, 0, NULL, '2023-09-19 19:12:29', '2023-09-25 01:02:58'),
(323, 200, NULL, '708947558.jpg', 'csfdu', 'General', 'Raihan Chowdhury', 1, 'Department of Marketing', 'Sm hall', 'Toitong pekua coxsbazar', 'B+', 'show', '01772565044', 'show', 'raihanchy8423@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '2017-18', NULL, NULL, 0, NULL, '2023-09-19 20:05:31', '2023-09-25 01:03:14'),
(324, 201, NULL, '1477739025.jpg', 'csfdu', 'General', 'Tamjidur Rahman Sanu', 1, 'Department of Islamic studies', 'Haji Mohammad Mohsin Hall', 'Village :Shantinagar,Union :Harbang, Upazila :Chakoria, Zilla :Cox’sbazar', 'O+', 'show', '01860292604', 'show', 'tamjidurrahman-13th-2018522073@dis.du.ac.bd', 'show', NULL, NULL, NULL, 'General Member', '2018-19', NULL, NULL, 0, NULL, '2023-09-19 21:27:23', '2023-09-25 01:03:41'),
(325, 202, NULL, '1474332335.jpg', 'csfdu', 'General', 'Khurshed Alam', 0, 'Bangla', 'Old Dhaka', 'Kutubdia', 'O+', 'show', NULL, 'show', 'mkhalam127@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '20-21', NULL, NULL, 0, NULL, '2023-09-19 22:51:02', '2023-09-25 02:58:03'),
(326, 203, NULL, '904056089.jpg', 'csfdu', 'General', 'Mohammed Yousuf', 1, 'English', 'Kabi Jasim Uddin Hall', 'Chakaria', 'O+', 'show', '01887222120', 'show', 'yousuf17chk@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '2019-20', NULL, NULL, 0, NULL, '2023-09-20 00:05:48', '2023-09-25 02:59:10'),
(327, 204, NULL, '1083432243.jpg', 'csfdu', 'General', 'MIZANUR RAHMAN', 1, 'Management', 'Zia Hall', 'South Haji para, Sadar Cox’s Bazar', 'A+', 'show', '01865595423', 'show', 'id32mizanurrahman@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '2017-18', NULL, NULL, 0, NULL, '2023-09-20 03:16:24', '2023-09-25 02:59:30'),
(328, 205, NULL, '771315259.jpg', 'csfdu', 'General', 'Mainul Hasan', 1, 'Banking and insurance', 'Bijoy Ekattor Hall', 'Chakaria', 'O+', 'show', '01314326373', 'show', 'mhmoino@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '19-20', NULL, NULL, 0, NULL, '2023-09-20 03:29:02', '2023-09-27 16:41:26'),
(329, 206, NULL, '1699649016.jpeg', 'csfdu', 'General', 'মো. আসিফ আলী', 1, 'পালি এন্ড বুদ্ধিস্ট স্টাডিস, ঢাকা বিশ্ববিদ্যালয়', 'বঙ্গবন্ধু হল, ঢাকা বিশ্ববিদ্যালয়', '৬ নাম্বার ওয়ার্ড, মগবাজার, চকরিয়া,কক্সবাজার', 'AB+', 'show', '01750365682', 'show', 'mdasifali8866@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '২০-২১', NULL, NULL, 0, NULL, '2023-09-20 04:11:49', '2023-09-27 16:41:47'),
(330, 207, NULL, '1988659747.jpg', 'csfdu', 'General', 'Mishu Aktar', 1, 'Mass communication and journalism, University of Dhaka', 'Samnun Nahar Hall', 'Moulobipara, Ward-07, Tytong, Pekua, Coxbazar-4770', 'B+', 'show', '01822145141', 'hidden', 'misoakter141@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '2022-23', NULL, NULL, 0, NULL, '2023-09-20 04:30:46', '2023-09-27 16:42:12'),
(331, 208, NULL, '986183779.jpg', 'csfdu', 'General', 'Ariful Islam Emon', 1, 'Department of Pali And Buddhist Studies', 'Surja Sen Hall', 'Eidgah', 'A+', 'show', '01585855361', 'show', 'arifulemon7710@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '2018-19', NULL, NULL, 0, NULL, '2023-09-20 06:28:49', '2023-09-27 16:42:31'),
(332, 209, NULL, '1307986088.jpg', 'csfdu', 'General', 'Mohammad Borhan Uddin', 1, 'Arabic', 'Masterda Surja Sen Hall  University of Dhaka.', 'Chakoria', 'O+', 'show', '01889992648', 'show', 'borhandu297@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '2016-2017', NULL, NULL, 0, NULL, '2023-09-20 10:00:45', '2023-09-27 16:42:49'),
(333, 210, NULL, '1171659462.jpg', 'csfdu', 'General', 'Riaz Uddin', 1, 'Islamic history and culture', 'Surja Sen Hall', 'Nheela,Tennaf', 'A+', 'show', '01882803675', 'show', 'riazuddin018828@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '2020-21', NULL, NULL, 0, NULL, '2023-09-20 15:01:32', '2023-09-27 16:43:05'),
(334, 211, NULL, '1963817703.jpg', 'csfdu', 'General', 'Arman Uddin', 1, 'Management', 'Kabi Jashim Uddin Hall', 'Ukhiya', 'O+', 'show', '01516132116', 'show', 'armanuddin43210@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '2017-18', NULL, NULL, 0, NULL, '2023-09-20 15:46:11', '2023-09-27 16:43:29'),
(335, 212, NULL, '571336499.jpg', 'csfdu', 'General', 'Ziasmin Akter', 1, 'Anthropology', 'Shamsun Nahar Hall', 'Eidgaon', 'B+', 'show', '01886798943', 'hidden', 'ziasminakter64@gmail', 'show', NULL, NULL, NULL, 'General Member', '2018-19', NULL, NULL, 0, NULL, '2023-09-21 00:26:55', '2023-09-27 16:44:56'),
(336, 213, NULL, '73025840.jpg', 'csfdu', 'General', 'Md. Arshad Ullah', 1, 'English Department', 'Jamuna-11012, Bijoy Ekattor Hall', 'Bara Kulal Para, Bara Moheshkhali, Moheshkhali', 'O+', 'show', '01851621419', 'show', 'arshad3engdu@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '2015-2016', NULL, NULL, 0, NULL, '2023-09-21 23:08:22', '2023-09-27 16:47:38');
INSERT INTO `testimonials` (`id`, `serial`, `lang`, `image`, `admin_name`, `category`, `name`, `verify_status`, `workplace`, `current_address`, `permanent_address`, `blood`, `blood_status`, `phone`, `phone_status`, `email`, `email_status`, `fb_link`, `youtube_link`, `web_link`, `text1`, `text2`, `text3`, `text4`, `bloodno`, `blood_date`, `created_at`, `updated_at`) VALUES
(337, 214, NULL, '1882622029.jpg', 'csfdu', 'General', 'Nasir Uddin', 1, 'Sociology', 'Shahid Sergeant  Zahurul Haq  Hall', 'Kutubdia', 'O+', 'show', '01516037200', 'show', 'nasiruct6@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '2018-19', NULL, NULL, 0, NULL, '2023-09-21 23:13:53', '2023-09-27 16:48:01'),
(338, 215, NULL, '543906779.png', 'csfdu', 'General', 'Mohammad Aktab Uddin Taki', 1, 'Department of Islamic Studies', 'Muktijoddha Ziaur Rahman Hall', 'Uttarb Baraghop,Kutubdia, Cox’s Bazar', 'O-', 'show', '01848146662', 'show', 'aktabuddin410@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '2019-2020', NULL, NULL, 0, NULL, '2023-09-21 23:18:47', '2023-09-27 16:48:30'),
(339, 216, NULL, '932711686.jpg', 'csfdu', 'General', 'Mohammed Tuaha', 1, 'Sociology -Social Science', 'Kabi Jasimuddin Hall', 'Kutubdia', 'B+', 'show', '01836127401', 'show', 'mohammedtuaha401@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '2016-17', NULL, NULL, 0, NULL, '2023-09-21 23:37:46', '2023-09-27 16:48:47'),
(340, 217, NULL, '786580069.png', 'csfdu', 'General', 'Morshedul Islam', 1, 'Banking and Insurance, FBS, DU.', 'The Sir AF Rahman hall', 'Cox\'s Bazar Sadar, Cox\'s Bazar', 'B+', 'show', '01319041130', 'show', 'morshedk061@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '2020-2021', NULL, NULL, 0, NULL, '2023-09-22 17:13:53', '2023-09-27 16:49:30'),
(341, 218, NULL, '65246911.jpg', 'csfdu', 'General', 'Tamzidul Hasan', 1, 'Arabic', 'Kabi Jasimuddin Hall', 'Ramu', 'O+', 'show', '01892426722', 'show', 'tamzidultasib@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '2021-22', NULL, NULL, 0, NULL, '2023-09-22 18:41:58', '2023-09-27 16:49:56'),
(342, 219, NULL, '1346919482.jpeg', 'csfdu', 'General', 'Saiful Islam', 1, 'Marketing', 'Salimullah Muslim hall', 'Ramu', 'B+', 'show', '01647587677', 'show', 'himumktdu@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '2018-19', NULL, NULL, 0, NULL, '2023-09-23 01:31:28', '2023-09-27 16:50:11'),
(343, 220, NULL, '311057818.jpg', 'csfdu', 'General', 'Saimul Huda Siddique', 1, 'Statistics', 'Amar Ekushey Hall', 'Kutubdia', 'B+', 'show', '01521110119', 'show', 'saimul4832@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '2018-19', NULL, NULL, 0, NULL, '2023-09-23 01:56:12', '2023-09-27 16:50:24'),
(344, 221, NULL, '372222317.jpg', 'csfdu', 'General', 'Mohammad Anis', 1, 'Department of management', 'Bangabandhu Hall,DU', 'Chakoria', 'O+', 'show', '01811362553', 'show', 'mohammad-26th-2019913320@mgt.du.ac.bd', 'show', NULL, NULL, NULL, 'General Member', '2019-2020', NULL, NULL, 0, NULL, '2023-09-23 03:11:14', '2023-09-27 16:50:42'),
(345, 222, NULL, '1841031112.jpg', 'csfdu', 'General', 'Mohammed Younus Munna', 1, 'Management Information Systems', 'Hall: Shaheed Sergeant Zahurul Huq Hall', 'Teknaf', 'B+', 'show', '01876224390', 'show', 'munna.bin.idris@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '2017-18', NULL, NULL, 0, NULL, '2023-09-23 03:27:51', '2023-09-27 16:51:09'),
(346, 223, NULL, '2076531305.jpg', 'csfdu', 'General', 'Mosaruf Hossain', 1, 'Finance', 'Kabi Jasimuddin Hall', 'Uttar Napithkhali,Islampur,Eidgah,Cox’s Bazar', 'O+', 'show', '01609422131', 'show', 'mosarufmail@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '2020-2021', NULL, NULL, 0, NULL, '2023-09-23 04:55:16', '2023-09-27 16:51:25'),
(347, 224, NULL, '363847989.jpg', 'csfdu', 'General', 'Rifat Hossain', 1, 'Department of Anthropology', 'Shaheed Sergeant Zahurul Haq Hall', 'Shikdar Para, Hnila, Teknaf', 'O+', 'show', '01860253568', 'show', 'rifathossaiin@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '2019-2020', NULL, NULL, 0, NULL, '2023-09-23 05:02:09', '2023-09-27 16:51:43'),
(348, 225, NULL, '1870101140.jpg', 'csfdu', 'General', 'Shahriar Aziz Fahim', 1, 'Department of Law,University of Dhaka', 'Muktijoddha Ziaur Rahman Hall', 'Chakaria', 'B+', 'show', '01752303774', 'show', 'shahriarazizfahim@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '22-23', NULL, NULL, 0, NULL, '2023-09-23 06:00:41', '2023-09-27 16:52:06'),
(349, 226, NULL, '1302014946.jpg', 'csfdu', 'General', 'Mamunur Rashid', 1, 'Sociology', 'Sir A F Rahman Hall', 'Pekua Cox’s Bazar', 'O+', 'show', '01864149264', 'show', 'mamunurdu30@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '2017-18', NULL, NULL, 0, NULL, '2023-09-24 04:13:37', '2023-09-27 16:52:26'),
(350, 227, NULL, '560325206.png', 'csfdu', 'General', 'Imtiaz Ahmad', 1, 'Islamic studies', 'Bijoy Ekattor hall', 'Teknaf, Cox’s Bazar', 'A+', 'show', '01521536015', 'show', 'ahmadimtiaz559@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '2019-2020', NULL, NULL, 0, NULL, '2023-09-24 11:30:31', '2023-09-27 16:52:45'),
(351, 228, NULL, '1502546718.png', 'csfdu', 'General', 'Aminul Kaiser Monna', 1, 'Dhaka University', 'Jahurul Haque hall', 'Ukhia, Cox\'s Bazar', 'A+', 'show', '01840858471', 'show', 'akmonna35397@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '2019-20', NULL, NULL, 0, NULL, '2023-09-24 16:17:57', '2023-09-27 16:53:03'),
(352, 229, NULL, '302520805.jpg', 'csfdu', 'General', 'N. M Rashidujjaman Masum', 1, 'Computer Science & Engineering (CSE)', 'Mohammadpur, Dhaka-1207', 'Chakaria', 'O+', 'show', '01522105332', 'show', 'nmrmasumbdkk531@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '22-23', NULL, NULL, 0, NULL, '2023-09-25 01:15:41', '2023-09-27 16:53:37'),
(353, 230, NULL, '283979995.jpg', 'csfdu', 'General', 'Rishita Das priti', 1, 'Public administration', 'Sufia kamal', 'Kutubdia', 'B+', 'show', '01954100248', 'hidden', 'dasrishita54@gmail', 'show', NULL, NULL, NULL, 'General Member', '2022-2023', NULL, NULL, 0, NULL, '2023-09-25 01:17:37', '2023-09-27 16:54:22'),
(354, 1, NULL, NULL, 'csfdu', 'Senior', 'Rayhan', 1, 'Dhaka University', NULL, NULL, NULL, 'show', '01750360044', 'show', NULL, 'show', NULL, NULL, NULL, 'President', NULL, NULL, NULL, 1, '2023-10-03', '2023-09-25 12:04:07', '2023-10-04 13:37:49'),
(355, 2, NULL, NULL, 'csfdu', 'Senior', 'Bappi', 1, 'Dhaka University', NULL, NULL, NULL, 'show', '01822242200', 'show', NULL, 'show', NULL, NULL, NULL, 'President', NULL, NULL, NULL, 0, NULL, '2023-09-25 12:06:07', '2023-09-25 12:17:37'),
(361, 234, NULL, '526717885.png', 'csfdu', 'General', 'Tofazzal Hossen Asif', 1, 'Banking & Insurance', 'Kobi Jasimuddin Hall', 'Pekua', 'B+', 'show', '01879514387', 'show', 'asif099218@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '2019-20', NULL, NULL, 0, NULL, '2023-10-05 00:45:44', '2023-10-05 15:32:25'),
(362, 235, NULL, '118231867.jpg', 'csfdu', 'General', 'Eidmul Hasan Shakib', 1, 'Management', 'Hazi Mohammad Mohsin Hall', 'Eidgaon', 'O+', 'show', '01633537757', 'show', 'shakib828354@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '2018-19', NULL, NULL, 0, NULL, '2023-10-05 01:02:45', '2023-10-05 15:32:49'),
(363, 236, NULL, '585903199.jpg', 'csfdu', 'General', 'Shahriar Mohammad Yamin', 1, 'Disaster Management', 'Muktijoddha Ziaur Rahman Hall', 'Moheshkhali', 'O+', 'show', '01881458834', 'show', 'yaminteller@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '2020-21', NULL, NULL, 0, NULL, '2023-10-05 01:04:33', '2023-10-05 15:33:04'),
(364, 237, NULL, '2068050987.jpg', 'csfdu', 'General', 'Belal Uddin', 1, 'History, DU', 'Muktijoddha Ziaur Rahman Hall', 'Ukhiya', 'B+', 'show', '01575465598', 'show', 'Mebelaldu0@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '2017-18', NULL, NULL, 0, NULL, '2023-10-05 03:16:08', '2023-10-05 15:33:22'),
(365, 238, NULL, '1981114904.tmp', 'csfdu', 'General', 'Mohammad Faijul Islam Sumon', 1, 'History of Art', 'Bijoy Ekattar Hall', 'Abdul Bari Para, Ward:01, Chakaria, Cox’s Bazar.', 'O-', 'show', '01849962646', 'show', 'faijuldu92@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '2013-14', NULL, NULL, 0, NULL, '2023-10-05 14:45:04', '2023-10-05 15:34:01'),
(366, 235, NULL, '1803723517.jpeg', 'csfdu', 'General', 'Saikat Sharma', 0, 'Management, University of Dhaka', 'Jagannath Hall', 'Cox’s bazar sadar', 'A+', 'show', '01305981804', 'show', 'saikatsharma127588@gmail.com', 'show', NULL, NULL, NULL, 'General Member', '2020-2021', NULL, NULL, 0, NULL, '2023-10-06 03:04:47', '2023-10-06 03:04:47');

-- --------------------------------------------------------

--
-- Table structure for table `texts`
--

CREATE TABLE `texts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lang` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `admin_name` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `workplace` text NOT NULL,
  `current_address` text DEFAULT NULL,
  `permanent_address` text DEFAULT NULL,
  `blood` varchar(255) DEFAULT NULL,
  `bloodno` int(11) DEFAULT NULL,
  `blood_date` date DEFAULT NULL,
  `blood_status` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `texts`
--

INSERT INTO `texts` (`id`, `lang`, `image`, `admin_name`, `name`, `workplace`, `current_address`, `permanent_address`, `blood`, `bloodno`, `blood_date`, `blood_status`, `phone`, `created_at`, `updated_at`) VALUES
(10, NULL, NULL, 'demoswa', 'Md Rayhan Babu', 'Dhaka University', NULL, NULL, 'B+', NULL, '2022-12-12', NULL, '01750360044', '2022-12-16 13:12:37', '2022-12-16 13:12:58'),
(11, NULL, NULL, 'mathema', 'rayhan', 'Dhaka University', 'dhaka university', '24', 'B+', NULL, '2022-08-12', NULL, '01521700829', '2023-01-08 04:06:01', '2023-01-08 04:06:53');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `apps`
--
ALTER TABLE `apps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eiin_sms`
--
ALTER TABLE `eiin_sms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expres`
--
ALTER TABLE `expres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `finances`
--
ALTER TABLE `finances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forms`
--
ALTER TABLE `forms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `magazines`
--
ALTER TABLE `magazines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `maintains`
--
ALTER TABLE `maintains`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notices`
--
ALTER TABLE `notices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `onlinepayments`
--
ALTER TABLE `onlinepayments`
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
-- Indexes for table `sms`
--
ALTER TABLE `sms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `texts`
--
ALTER TABLE `texts`
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
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `apps`
--
ALTER TABLE `apps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `eiin_sms`
--
ALTER TABLE `eiin_sms`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expres`
--
ALTER TABLE `expres`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `finances`
--
ALTER TABLE `finances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `forms`
--
ALTER TABLE `forms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `magazines`
--
ALTER TABLE `magazines`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `maintains`
--
ALTER TABLE `maintains`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `notices`
--
ALTER TABLE `notices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `onlinepayments`
--
ALTER TABLE `onlinepayments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sms`
--
ALTER TABLE `sms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=367;

--
-- AUTO_INCREMENT for table `texts`
--
ALTER TABLE `texts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
