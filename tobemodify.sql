-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 10, 2021 at 04:08 PM
-- Server version: 5.7.24
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kizitoguy`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_site`
--

DROP TABLE IF EXISTS `about_site`;
CREATE TABLE IF NOT EXISTS `about_site` (
  `id` int(1) NOT NULL,
  `about` text,
  `terms` text,
  `privacy_policy` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `about_site`
--

INSERT INTO `about_site` (`id`, `about`, `terms`, `privacy_policy`, `created_at`, `updated_at`) VALUES
(1, '<p>One of four major banking organizations in Australia and one of the largest banks in the world.</p>', '<p>A&nbsp;<strong>Product Disclosure Statement&nbsp;(PDS)</strong> is a document, or sometimes a group of documents, that contains information about a financial product including any significant benefits and risks, the cost of the financial product, and the fees and charges that the financial product issuer may receive. Supplementary PDSs may be issued from time to time and must be read in conjunction with the PDS to which they relate.</p>\r\n<p><br />A&nbsp;<strong>Financial Services Guide&nbsp;(FSG)</strong> describes the financial services offered by, and important information about, a financial services licensee.&nbsp; AFSL No 233714.</p>\r\n<p><br />A&nbsp;<strong>Credit Guide&nbsp;(CG)</strong> provides important information about a licensee\'s obligations in relation to consumer lending products regulated by the National Credit Code.&nbsp; Effective 1 March 2011, TD BANK holds an Australian Credit Licence (ACL) No. 233714.</p>\r\n<p><br /><strong>The Banking Code of Practice</strong><br />The&nbsp;<a title=\"Click to view the Banking Code Of Practice PDF document\" href=\"https://www.ausbanking.org.au/wp-content/uploads/2020/03/2020-Code-A4-Booklet-Interactive.pdf\" target=\"_blank\" rel=\"nofollow noopener noreferrer\" data-s-object-id=\"https://www.ausbanking.org.au/wp-content/uploads/2020/03/2020-code-a4-booklet-interactive.pdf_1\"><span class=\"icon-doc-link\">Banking Code of Practice</span></a> sets the standards of practice and service in the Australian banking industry. The Code applies to individual and small business customers, as well as their individual guarantors.</p>\r\n<h2>How to obtain a PDS or FSG</h2>\r\n<p>This page provides you with electronic access to the PDSs for financial products and services that are identified on this website and that are issued by Westpac Banking Corporation, product issuers within the TD BANK Group of Companies and non-related third party product issuers, together with electronic access to the FSGs for these companies.</p>\r\n<p>Please note that some PDSs are not yet available and that some financial products, such as bank products and margin loans, are not required to have a PDS.</p>', '<h1>Credit Reporting Policy</h1>\r\n<p>Our Credit Reporting Policy explains how we manage your credit information. Our handling of credit information is regulated by the Privacy Act and the Privacy (Credit Reporting) Code (known as the \'CR Code\').</p>\r\n<p>&nbsp;</p>\r\n<p>We are bound by the Privacy Act and will protect your credit information in accordance with it and the CR Code.&nbsp; These instruments regulate how we manage and collect your credit information.</p>\r\n<p>&nbsp;</p>\r\n<p>Credit information is personal information that has a bearing on credit that has been provided to you or that you have applied for. This includes credit for personal use and credit in connection with a business.&nbsp; It can also cover information about you as a guarantor of a loan.</p>\r\n<p>You can request access to credit information we hold about you. You can also ask for corrections to be made. To do so, please contact us on the details listed at \'Contact us\'.</p>', '2021-04-26 16:41:43', '2021-04-26 15:41:43');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'master', '$2y$10$9oAwjiohONuO3IfdiaozZOq7Rgf6ztQLLMxFJsXmiwJYNjCfc4SJC', '', '2020-12-06 16:18:36', '2020-12-06 15:18:36');

-- --------------------------------------------------------

--
-- Table structure for table `admin_bank`
--

DROP TABLE IF EXISTS `admin_bank`;
CREATE TABLE IF NOT EXISTS `admin_bank` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `bank_name` varchar(128) NOT NULL,
  `address` text NOT NULL,
  `swift` varchar(32) NOT NULL,
  `iban` varchar(32) NOT NULL,
  `acct_no` varchar(15) NOT NULL,
  `status` int(2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_bank`
--

INSERT INTO `admin_bank` (`id`, `name`, `bank_name`, `address`, `swift`, `iban`, `acct_no`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Boomchart', 'Citi bank', 'Somewhere in uk', '5444', '5678876', '12345678982', 0, '2020-07-01 23:36:45', '2020-07-01 21:36:45');

-- --------------------------------------------------------

--
-- Table structure for table `alerts`
--

DROP TABLE IF EXISTS `alerts`;
CREATE TABLE IF NOT EXISTS `alerts` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `user_id` int(32) NOT NULL,
  `amount` double NOT NULL,
  `details` text NOT NULL,
  `type` int(2) NOT NULL,
  `seen` int(2) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
  `reference` varchar(32) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `reference` (`reference`),
  KEY `reference_2` (`reference`)
) ENGINE=MyISAM AUTO_INCREMENT=475 DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `bank`
--

DROP TABLE IF EXISTS `bank`;
CREATE TABLE IF NOT EXISTS `bank` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `user_id` int(32) NOT NULL,
  `name` text,
  `address` text,
  `iban` varchar(32) DEFAULT NULL,
  `swift` varchar(32) DEFAULT NULL,
  `acct_no` varchar(32) DEFAULT NULL,
  `acct_name` varchar(191) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bank`
--

INSERT INTO `bank` (`id`, `user_id`, `name`, `address`, `iban`, `swift`, `acct_no`, `acct_name`, `created_at`, `updated_at`) VALUES
(3, 43, NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-02 19:16:16', '2021-01-02 19:16:16');

-- --------------------------------------------------------

--
-- Table structure for table `bank_transfer`
--

DROP TABLE IF EXISTS `bank_transfer`;
CREATE TABLE IF NOT EXISTS `bank_transfer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(32) NOT NULL,
  `amount` int(32) NOT NULL,
  `details` text NOT NULL,
  `image` varchar(32) NOT NULL,
  `status` int(2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

DROP TABLE IF EXISTS `branch`;
CREATE TABLE IF NOT EXISTS `branch` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `country` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `mobile` varchar(32) NOT NULL,
  `zip_code` int(32) NOT NULL,
  `postal_code` varchar(32) NOT NULL,
  `address` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`id`, `name`, `country`, `state`, `mobile`, `zip_code`, `postal_code`, `address`, `created_at`, `updated_at`) VALUES
(3, 'Histol', 'Indonesia', 'Georgia', '43567865433567', 4365443, '3454447567', 'Indonesia', '2020-06-27 05:41:51', '2020-06-27 09:41:51'),
(4, 'Bilson', 'Antigua & Barbuda', 'Georgia', '13245678786', 300216, '2423', 'Sekupang Batamg', '2020-01-27 19:49:41', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

DROP TABLE IF EXISTS `brands`;
CREATE TABLE IF NOT EXISTS `brands` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `image` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `status` int(2) DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `image`, `title`, `status`, `created_at`, `updated_at`) VALUES
(1, '1.png', 'Capterra', 1, '2020-02-15 07:33:23', '0000-00-00 00:00:00'),
(2, '2.png', 'crowd', 1, '2020-02-15 07:34:40', '0000-00-00 00:00:00'),
(3, '3.png', 'Getapp', 1, '2020-02-15 07:34:53', '0000-00-00 00:00:00'),
(4, '4.png', 'softwareadvice', 1, '2020-02-15 07:35:08', '0000-00-00 00:00:00'),
(5, '5.png', 'trustpilot', 1, '2020-02-15 07:35:22', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
CREATE TABLE IF NOT EXISTS `contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `full_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `seen` int(2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

DROP TABLE IF EXISTS `currency`;
CREATE TABLE IF NOT EXISTS `currency` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `currency` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `symbol` varchar(100) DEFAULT NULL,
  `status` int(2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=50 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `currency`
--

INSERT INTO `currency` (`id`, `currency`, `name`, `symbol`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Leke', 'ALL', 'Lek', 0, '2020-01-24 22:02:06', '0000-00-00 00:00:00'),
(2, 'Dollars', 'USD', '$', 1, '2020-12-05 13:03:47', '2020-12-05 12:03:47'),
(3, 'Afghanis', 'AFN', '?', 0, '2020-02-09 10:07:17', '2020-02-09 09:07:17'),
(4, 'Pesos', 'ARS', '$', 0, '2020-02-09 10:07:22', '2020-02-09 09:07:22'),
(5, 'Guilders', 'AWG', 'ƒ', 0, '2020-01-24 22:02:06', '0000-00-00 00:00:00'),
(6, 'Dollars', 'AUD', '$', 0, '2020-12-05 13:03:47', '2020-12-05 12:03:47'),
(7, 'New Manats', 'AZN', '???', 0, '2020-01-24 22:02:06', '0000-00-00 00:00:00'),
(8, 'Dollars', 'BSD', '$', 0, '2020-01-24 22:02:06', '0000-00-00 00:00:00'),
(9, 'Dollars', 'BBD', '$', 0, '2020-01-24 22:02:06', '0000-00-00 00:00:00'),
(10, 'Rubles', 'BYR', 'p.', 0, '2020-01-24 22:02:06', '0000-00-00 00:00:00'),
(11, 'Euro', 'EUR', '€', 0, '2020-01-24 22:02:06', '0000-00-00 00:00:00'),
(12, 'Dollars', 'BZD', 'BZ$', 0, '2020-01-24 22:02:06', '0000-00-00 00:00:00'),
(13, 'Dollars', 'BMD', '$', 0, '2020-01-24 22:02:06', '0000-00-00 00:00:00'),
(14, 'Bolivianos', 'BOB', '$b', 0, '2020-01-24 22:02:06', '0000-00-00 00:00:00'),
(15, 'Convertible Marka', 'BAM', 'KM', 0, '2020-01-24 22:02:06', '0000-00-00 00:00:00'),
(16, 'Pula', 'BWP', 'P', 0, '2020-01-24 22:02:06', '0000-00-00 00:00:00'),
(17, 'Leva', 'BGN', '??', 0, '2020-01-24 22:02:06', '0000-00-00 00:00:00'),
(18, 'Reais', 'BRL', 'R$', 0, '2020-01-24 22:02:06', '0000-00-00 00:00:00'),
(19, 'Pounds', 'GBP', '£', 0, '2020-01-24 22:02:06', '0000-00-00 00:00:00'),
(20, 'Dollars', 'BND', '$', 0, '2020-01-24 22:02:06', '0000-00-00 00:00:00'),
(21, 'Riels', 'KHR', '?', 0, '2020-01-24 22:02:06', '0000-00-00 00:00:00'),
(22, 'Dollars', 'CAD', '$', 0, '2020-01-24 22:02:06', '0000-00-00 00:00:00'),
(23, 'Dollars', 'KYD', '$', 0, '2020-01-24 22:02:06', '0000-00-00 00:00:00'),
(24, 'Pesos', 'CLP', '$', 0, '2020-01-24 22:02:06', '0000-00-00 00:00:00'),
(25, 'Yuan Renminbi', 'CNY', '¥', 0, '2020-01-24 22:02:06', '0000-00-00 00:00:00'),
(26, 'Pesos', 'COP', '$', 0, '2020-01-24 22:02:06', '0000-00-00 00:00:00'),
(27, 'Colón', 'CRC', '?', 0, '2020-01-24 22:02:06', '0000-00-00 00:00:00'),
(28, 'Kuna', 'HRK', 'kn', 0, '2020-01-24 22:02:06', '0000-00-00 00:00:00'),
(29, 'Pesos', 'CUP', '?', 0, '2020-01-24 22:02:06', '0000-00-00 00:00:00'),
(30, 'Koruny', 'CZK', 'K?', 0, '2020-01-24 22:02:06', '0000-00-00 00:00:00'),
(31, 'Kroner', 'DKK', 'kr', 0, '2020-01-24 22:02:06', '0000-00-00 00:00:00'),
(32, 'Pesos', 'DOP ', 'RD$', 0, '2020-01-24 22:02:06', '0000-00-00 00:00:00'),
(33, 'Dollars', 'XCD', '$', 0, '2020-01-24 22:02:06', '0000-00-00 00:00:00'),
(34, 'Pounds', 'EGP', '£', 0, '2020-01-24 22:02:06', '0000-00-00 00:00:00'),
(35, 'Colones', 'SVC', '$', 0, '2020-01-24 22:02:06', '0000-00-00 00:00:00'),
(36, 'Pounds', 'FKP', '£', 0, '2020-01-24 22:02:06', '0000-00-00 00:00:00'),
(37, 'Dollars', 'FJD', '$', 0, '2020-01-24 22:02:06', '0000-00-00 00:00:00'),
(38, 'Cedis', 'GHC', '¢', 0, '2020-01-24 22:02:06', '0000-00-00 00:00:00'),
(39, 'Pounds', 'GIP', '£', 0, '2020-01-24 22:02:06', '0000-00-00 00:00:00'),
(40, 'Quetzales', 'GTQ', 'Q', 0, '2020-01-24 22:02:06', '0000-00-00 00:00:00'),
(41, 'Pounds', 'GGP', '£', 0, '2020-01-24 22:02:06', '0000-00-00 00:00:00'),
(42, 'Dollars', 'GYD', '$', 0, '2020-01-24 22:02:06', '0000-00-00 00:00:00'),
(43, 'Lempiras', 'HNL', 'L', 0, '2020-01-24 22:02:06', '0000-00-00 00:00:00'),
(44, 'Dollars', 'HKD', '$', 0, '2020-01-24 22:02:06', '0000-00-00 00:00:00'),
(45, 'Forint', 'HUF', 'Ft', 0, '2020-01-24 22:02:06', '0000-00-00 00:00:00'),
(46, 'Kronur', 'ISK', 'kr', 0, '2020-01-24 22:02:06', '0000-00-00 00:00:00'),
(47, 'Rupees', 'INR', 'Rp', 0, '2020-02-09 10:07:17', '2020-02-09 09:07:17'),
(48, 'Rupiahs', 'IDR', 'Rp', 0, '2020-01-24 22:02:06', '0000-00-00 00:00:00'),
(49, 'Rials', 'IRR', '?', 0, '2020-01-24 22:02:06', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `deposit`
--

DROP TABLE IF EXISTS `deposit`;
CREATE TABLE IF NOT EXISTS `deposit` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `user_id` int(32) NOT NULL,
  `amount` varchar(191) NOT NULL,
  `payment_id` varchar(32) NOT NULL,
  `date` varchar(32) NOT NULL,
  `status` int(2) NOT NULL,
  `token` int(11) NOT NULL,
  `trans_id` text NOT NULL,
  `details` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `deposits`
--

DROP TABLE IF EXISTS `deposits`;
CREATE TABLE IF NOT EXISTS `deposits` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `gateway_id` int(11) DEFAULT NULL,
  `amount` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charge` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `usd` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btc_amo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btc_wallet` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trx` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `try` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=170 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `etemplates`
--

DROP TABLE IF EXISTS `etemplates`;
CREATE TABLE IF NOT EXISTS `etemplates` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `esender` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emessage` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `smsapi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `etemplates`
--

INSERT INTO `etemplates` (`id`, `esender`, `mobile`, `emessage`, `smsapi`, `created_at`, `updated_at`) VALUES
(1, 'customerservice@heritagecs.cc', '+1234567890', '<div>\r\n<p>&nbsp;</p>\r\n</div>\r\n<div>\r\n<div class=\"wrapper\" style=\"background-color: #f2f2f2;\"><br />\r\n<table id=\"emb-email-header-container\" class=\"header\" style=\"border-collapse: collapse; table-layout: fixed; margin-left: auto; margin-right: auto; height: 123px;\" width=\"418\" align=\"center\">\r\n<tbody>\r\n<tr style=\"height: 33px;\">\r\n<td style=\"padding: 0px; width: 629px; height: 33px;\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"https://www.heritagebank.com/wp-content/uploads/2020/08/heritage-logo_v4.png\" alt=\"https://www.heritagebank.com/wp-content/uploads/2020/08/heritage-logo_v4.png\" width=\"274\" height=\"112\" />\r\n<p>&nbsp;</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<br />\r\n<table class=\"layout layout--no-gutter\" style=\"border-collapse: collapse; table-layout: fixed; margin-left: auto; margin-right: auto; overflow-wrap: break-word; word-break: break-word; background-color: #ffffff; height: 205px;\" width=\"624\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td class=\"column\" style=\"padding: 0px; text-align: left; vertical-align: top; color: #60666d; font-size: 14px; line-height: 21px; font-family: sans-serif; width: 622px;\"><br />\r\n<div style=\"margin-left: 20px; margin-right: 20px;\"><span style=\"font-size: large;\">Hi {{name}},<br /></span>\r\n<p><strong>{{message}}</strong></p>\r\n</div>\r\n<div style=\"margin-left: 20px; margin-right: 20px; margin-bottom: 24px;\"><br />\r\n<p class=\"size-14\" style=\"margin-top: 0; margin-bottom: 0; font-size: 14px; line-height: 21px;\">Thanks,<br /><strong>HERITAGE-GROUP<br /></strong></p>\r\n</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n</div>', 'https://api.infobip.com/api/v3/sendsms/plain?user=****&password=****&sender=LetsMine&SMSText={{message}}&GSM={{number}}&type=longSMS', '2018-01-09 23:45:09', '2021-04-26 15:45:12');

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

DROP TABLE IF EXISTS `faq`;
CREATE TABLE IF NOT EXISTS `faq` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `question` text NOT NULL,
  `answer` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faq`
--

INSERT INTO `faq` (`id`, `question`, `answer`, `created_at`, `updated_at`) VALUES
(43, 'What is corporate internate banking?', '<p>Corporate internet banking is a secure online banking platform that enables cutomers make transfers to anyone in the world, 24 hours a day, 7 days a week</p>', '2020-01-24 22:12:28', '0000-00-00 00:00:00'),
(44, 'Can i update my account details from any branch?', '<p>Yes account update requsests can be made at any of the branches</p>', '2020-01-24 22:12:28', '0000-00-00 00:00:00'),
(45, 'How long does it take before my account becomes inactive?', '<p>Accounts become dormant after 6 months of inactivity</p>', '2020-01-24 22:12:28', '0000-00-00 00:00:00'),
(46, 'Is it possible to open an account in the coutry and operate the account while out of the country?', '<p>Yes, the account can be operated through any of our internet banking solution.</p>', '2020-01-24 22:12:28', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `gateways`
--

DROP TABLE IF EXISTS `gateways`;
CREATE TABLE IF NOT EXISTS `gateways` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `main_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gateimg` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `minamo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `maxamo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fixed_charge` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percent_charge` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rate` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `val1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `val2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=506 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gateways`
--

INSERT INTO `gateways` (`id`, `main_name`, `name`, `gateimg`, `minamo`, `maxamo`, `fixed_charge`, `percent_charge`, `rate`, `val1`, `val2`, `status`, `created_at`, `updated_at`) VALUES
(101, 'PayPal', 'PayPal', 'paypal.png', '5', '1000', '0.511', '2.52', '1', 'globalsmoneyexchange@gmail.com', NULL, 1, NULL, '2020-06-30 18:52:35'),
(102, 'PerfectMoney', 'Perfect Money', 'perfectmoney.png', '20', '20000', '2', '1', '80', 'U5376900', 'G079qn4Q7XATZBqyoCkBteGRg', 0, NULL, '2020-06-30 19:14:15'),
(103, 'Stripe', 'Stripe', 'stripe.png', '20', '20000', '2', '1', '80', 'U5376900', 'G079qn4Q7XATZBqyoCkBteGRg', 0, NULL, '2020-06-30 19:14:01'),
(104, 'Skrill', 'Skrill', 'skrill.png', '10', '50000', '3', '3', '80', 'demoqco@sun-fish.com', 'TheSoftKing', 0, NULL, '2020-06-30 18:51:13'),
(106, 'Voguepay', 'Voguepay', 'voguepay.png', '10', '50000', '3', '3', '80', NULL, NULL, 0, NULL, '2020-06-30 18:50:33'),
(107, 'Paystack', 'Paystack', 'paystack.png', '10', '50000', '3', '3', '1', 'pk_live_a97fa5c6e004076bdcf5e689c2771c2d8861bc72', NULL, 1, NULL, '2020-06-30 19:26:39'),
(108, 'Flutterwave', 'Flutterwave', 'flutterwave.png', '10', '50000', '3', '3', '80', 'FLWPUBK-9d9b4497a12c8226930c91c8cb23b81b-X', 'FLWSECK-9e6d77c844c0533ca612bef7539c2727-X', 0, NULL, '2020-06-30 18:50:06'),
(501, 'Blockchain.info', 'Blockchain', 'blockchain.png', '1', '20000', '1', '0.5', '80', '4cca49c9-ddbb-4472-935c-65077a16bfb5', 'xpub6BzaPsJWWdqa8Np8ACTn1nwMjV61KLMtCYUUEQKP71zMfABhHGr2BGymRRpzwt3Kq8iTuPtbXcg8Teoguwq27aAgtubZprSGRwuaUikkhLK', 1, NULL, '2020-06-30 19:21:23'),
(505, 'CoinPayment - BTC', 'CoinPayment', 'coinpayment.png', '1', '50000', '0.51', '2.52', '80', '77f90f5d5cb242bec85eb1f4ec2e5cec6afee88ed0896965bb19887811040b2a', 'dDe9E59433F702a7220c8c71460500DAc023E199BF95d556d1cF4d8bE90609c0', 0, NULL, '2020-06-30 18:14:04');

-- --------------------------------------------------------

--
-- Table structure for table `int_transfer`
--

DROP TABLE IF EXISTS `int_transfer`;
CREATE TABLE IF NOT EXISTS `int_transfer` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `ref_id` int(32) NOT NULL,
  `user_id` int(32) NOT NULL,
  `amount` int(32) NOT NULL,
  `details` text NOT NULL,
  `status` int(2) NOT NULL,
  `type` int(2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=126 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `loan`
--

DROP TABLE IF EXISTS `loan`;
CREATE TABLE IF NOT EXISTS `loan` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `user_id` int(32) NOT NULL,
  `amount` varchar(32) NOT NULL,
  `status` int(2) NOT NULL,
  `reference` int(32) NOT NULL,
  `details` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `logo`
--

DROP TABLE IF EXISTS `logo`;
CREATE TABLE IF NOT EXISTS `logo` (
  `id` int(32) NOT NULL,
  `image_link` varchar(128) NOT NULL,
  `image_link2` varchar(32) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logo`
--

INSERT INTO `logo` (`id`, `image_link`, `image_link2`, `created_at`, `updated_at`) VALUES
(1, 'images/logo_1619455221.png', 'images/favicon_1619455245.jpg', '2021-04-26 16:40:45', '2021-04-26 15:40:45');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL,
  `content` text NOT NULL,
  `status` int(2) NOT NULL DEFAULT '1',
  `created_at` varchar(32) NOT NULL,
  `updated_at` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `content`, `status`, `created_at`, `updated_at`) VALUES
(4, 'AML Policy', '<section class=\"td-text-with-link \">\r\n<div class=\"td-container\">\r\n<div class=\"td-col-xs-12  td-col-sm-10 td-col-sm-offset-1 td-col-md-8 td-col-md-offset-2 td-col-lg-8  td-col-lg-offset-2\">\r\n<div class=\"rte\">\r\n<p style=\"text-align: left;\">On August 10, 2010, the FDIC Board of Directors amended its insurance and advertising regulations to conform with the provisions of the Dodd-Frank Wall Street Report and Consumer Protection Act, which permanently increased the standard maximum deposit insurance amount from $100,000 to $250,000. This permanent increase became effective on July 22, 2010.</p>\r\n<p style=\"text-align: left;\"><strong>NOTICE OF EXPIRATION OF THE TEMPORARY FULL FDIC INSURANCE COVERAGE FOR NONINTEREST-BEARING TRANSACTION ACCOUNTS</strong></p>\r\n<p style=\"text-align: left;\">By operation of federal law, beginning January 1, 2013, funds deposited in a noninterest bearing transaction account (including an Interest on Lawyer Trust Account) no longer will receive unlimited deposit insurance coverage by the Federal Deposit Insurance Corporation (FDIC). Beginning January 1, 2013, all of a depositor\'s accounts at an insured depository institution, including all noninterest-bearing transaction accounts, will be insured by the FDIC up to the standard maximum deposit insurance amount ($250,000), for each deposit insurance ownership category.</p>\r\n<p style=\"text-align: left;\">For more information, visit: <a style=\"word-wrap: break-word;\" role=\"button\" href=\"https://www.td.com/us/en/personal-banking/universal-footer/fdic-coverage/\">http://www.fdic.gov/deposit/deposits/unlimited/expiration.html</a>.*</p>\r\n</div>\r\n</div>\r\n</div>\r\n</section>', 1, '2019-07-31 11:43:14', '2020-12-05 13:35:15'),
(6, 'Diversity', '<header>\r\n<div>\r\n<div>\r\n<div>\r\n<div>\r\n<div>\r\n<div>\r\n<div>\r\n<div>\r\n<div>\r\n<div>&nbsp;</div>\r\n</div>\r\n<div>\r\n<div>\r\n<div>\r\n<h1>Diversity</h1>\r\n<p>Individuals. Ideas. Inspiration. Yes, we\'re open</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</header>\r\n<div>\r\n<div>\r\n<div>\r\n<div>\r\n<div>\r\n<div>\r\n<div data-nn-conditional=\"\">\r\n<div>\r\n<p>Diversity and inclusion matter in our business. An inclusive and diverse workforce makes us better leaders and contributes to a more innovative, dynamic and, ultimately, more successful company. And, variety helps us meet the needs of our diverse client base.</p>\r\n<p>&nbsp;</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div>\r\n<div>\r\n<div>\r\n<div>\r\n<div>\r\n<div data-nn-conditional=\"\">\r\n<h2 id=\"col1textimage\">Inclusiveness</h2>\r\n<div>\r\n<p>We promote inclusion and encourage open dialogue to draw out everyone\'s opinions and perspectives. We recognize a diverse range of contributions to keep our people energetic, engaged and inspired. And we are a signatory to the UN Standards of Conduct for Business regarding tackling LGBTI discrimination around the world.</p>\r\n<p>&nbsp;</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div>\r\n<div>\r\n<div data-nn-conditional=\"\">\r\n<h2 id=\"col2textimage\">Flexibility</h2>\r\n<div>\r\n<p>We offer a modern, flexible working environment. We work where and how it\'s most appropriate according to individual, role and team requirements.</p>\r\n</div>\r\n</div>\r\n</div>\r\n<div>\r\n<div>&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 1, '2020-02-15 23:02:32', '2020-02-16 20:47:41'),
(7, 'Sponsoring', '<div class=\"pageheadline pageheadline__base\">\r\n<h2 class=\"pageheadline__title\"><span class=\"pageheadline__hl pageheadline__hl--xsmall\">The big picture</span></h2>\r\n</div>\r\n<div class=\"leadtext leadtext__base\">\r\n<div class=\"leadtext__rte\">\r\n<p>We&rsquo;re passionate about supporting the places where we live and work. Through our long-standing sponsorships of motor sports and contemporary art, we connect with communities in new and exciting ways every day. It&rsquo;s our way of understanding how the world works, one pit stop and brush stroke at a time.</p>\r\n</div>\r\n</div>', 1, '2020-02-15 23:06:08', '2020-02-15 23:06:08');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plan`
--

DROP TABLE IF EXISTS `plan`;
CREATE TABLE IF NOT EXISTS `plan` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `percent` varchar(32) NOT NULL,
  `min_deposit` int(32) NOT NULL,
  `amount` int(32) NOT NULL,
  `status` int(2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `plan`
--

INSERT INTO `plan` (`id`, `name`, `percent`, `min_deposit`, `amount`, `status`, `created_at`, `updated_at`) VALUES
(6, 'Starter pack', '10', 0, 999, 1, '2020-02-12 19:24:13', '2020-02-12 18:24:13'),
(7, 'Premium pack', '12.5', 999, 1999, 1, '2020-01-30 23:47:13', '0000-00-00 00:00:00'),
(10, 'Gold pack', '15', 1999, 2999, 1, '2020-01-30 23:47:13', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `profits`
--

DROP TABLE IF EXISTS `profits`;
CREATE TABLE IF NOT EXISTS `profits` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `user_id` int(32) NOT NULL,
  `plan_id` int(32) NOT NULL,
  `amount` int(32) NOT NULL,
  `profit` varchar(32) NOT NULL,
  `status` int(2) NOT NULL,
  `trx` varchar(16) NOT NULL,
  `end_date` varchar(32) NOT NULL,
  `date` varchar(32) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=91 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `reply_support`
--

DROP TABLE IF EXISTS `reply_support`;
CREATE TABLE IF NOT EXISTS `reply_support` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `ticket_id` int(32) NOT NULL,
  `reply` text NOT NULL,
  `status` int(2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
CREATE TABLE IF NOT EXISTS `review` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `occupation` varchar(255) NOT NULL,
  `image_link` varchar(32) DEFAULT NULL,
  `review` text NOT NULL,
  `status` int(2) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`id`, `name`, `occupation`, `image_link`, `review`, `status`, `created_at`, `updated_at`) VALUES
(11, 'Jason Well', 'Forex trader', 'update_1581806819.jpg', 'scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting', 0, '2021-11-10 16:05:45', '2020-06-27 09:20:32'),
(12, 'JacK Mill', 'Market analyst', 'update_1581806843.jpg', 'when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting', 0, '2021-11-10 16:05:29', '2020-06-27 09:20:22'),
(13, 'Micheal Pete', 'Forex analyst', 'update_1581806792.jpg', ' It has survived not only five centuries, but also the leap into electronic typesetting', 0, '2021-11-10 16:05:15', '2020-06-27 09:20:39'),
(14, 'Big brother', 'Web developer', 'update_1581806914.jpg', 'has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting', 0, '2021-11-10 16:04:55', '2020-06-27 09:20:12');

-- --------------------------------------------------------

--
-- Table structure for table `savings`
--

DROP TABLE IF EXISTS `savings`;
CREATE TABLE IF NOT EXISTS `savings` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `user_id` int(32) NOT NULL,
  `amount` varchar(32) NOT NULL,
  `target` varchar(255) NOT NULL,
  `end_date` varchar(32) NOT NULL,
  `reference` int(32) NOT NULL,
  `status` int(2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
CREATE TABLE IF NOT EXISTS `services` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `title` text,
  `details` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title`, `details`, `created_at`, `updated_at`) VALUES
(1, 'Wealth Management', NULL, '2020-06-27 05:23:15', '2020-06-27 09:23:15'),
(2, 'Asset Management', NULL, '2020-06-27 05:22:47', '2020-06-27 09:22:47'),
(3, 'Investment Bank', NULL, '2020-06-27 05:24:02', '2020-06-27 09:24:02');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(32) NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `site_name` varchar(200) DEFAULT NULL,
  `site_desc` text,
  `tawk_id` varchar(128) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `mobile` varchar(128) DEFAULT NULL,
  `address` text,
  `balance_reg` int(32) DEFAULT NULL,
  `email_notify` int(2) DEFAULT NULL,
  `sms_notify` int(2) DEFAULT NULL,
  `kyc` int(2) DEFAULT NULL,
  `transfer_charge` int(32) DEFAULT NULL,
  `transfer_chargex` int(32) DEFAULT NULL,
  `upgrade_fee` varchar(200) DEFAULT NULL,
  `loan_interest` int(32) DEFAULT NULL,
  `email_verification` int(2) DEFAULT NULL,
  `sms_verification` int(2) DEFAULT NULL,
  `registration` int(2) DEFAULT NULL,
  `withdraw_charge` varchar(191) DEFAULT NULL,
  `collateral_percent` int(32) DEFAULT NULL,
  `py_scheme` int(2) DEFAULT '0',
  `loan` int(2) DEFAULT '0',
  `save` int(2) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `title`, `site_name`, `site_desc`, `tawk_id`, `email`, `mobile`, `address`, `balance_reg`, `email_notify`, `sms_notify`, `kyc`, `transfer_charge`, `transfer_chargex`, `upgrade_fee`, `loan_interest`, `email_verification`, `sms_verification`, `registration`, `withdraw_charge`, `collateral_percent`, `py_scheme`, `loan`, `save`, `created_at`, `updated_at`) VALUES
(1, 'Your Only Choice for Community Banking | Heritage Group', 'Heritage Group', 'Start banking, budgeting, and saving up to 1.90% APY when you open an FDIC-Insured Protected Goals Account.', NULL, 'customerservice@heritagecs.cc', '+1234567894, +2345666666', 'Financial Complaints Authority GPO Box 3 Melbourne VIC 3001 | Corporation ABN 33 007 457 141 AFSL  credit licence 233714.', 2, 1, 0, 1, 5, 10, '200', 10, 1, 0, 1, '3', 50, 1, 1, 1, '2021-01-02 18:30:54', '2021-01-02 17:30:54');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

DROP TABLE IF EXISTS `slider`;
CREATE TABLE IF NOT EXISTS `slider` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `body` text NOT NULL,
  `image_link` varchar(32) NOT NULL,
  `status` int(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `title`, `body`, `image_link`, `status`) VALUES
(1, 'Fastest way to transfer money', 'we believe that the beauty of life lies in the little things that give us a better expression of ourselves, make us more social and connect emotionally', '1574025349.jpg', 1),
(2, 'Lorem Ipsum is simply dummy', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '1572813037.jpg', 1),
(3, 'Lorem Ipsum is simply dummy', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', '1572813073.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `social_links`
--

DROP TABLE IF EXISTS `social_links`;
CREATE TABLE IF NOT EXISTS `social_links` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `type` longtext COLLATE utf8_unicode_ci,
  `value` longtext COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `social_links`
--

INSERT INTO `social_links` (`id`, `type`, `value`, `created_at`, `updated_at`) VALUES
(1, 'facebook', 'https://facebook.com/', '2020-02-09 08:09:22', '2020-02-09 07:09:22'),
(2, 'instagram', 'https://instagram.com/', '2020-01-24 22:09:58', '0000-00-00 00:00:00'),
(3, 'twitter', 'https://twitter.com/', '2020-01-24 22:09:58', '0000-00-00 00:00:00'),
(4, 'skype', NULL, '2020-02-15 22:59:58', '2020-02-15 21:59:58'),
(5, 'pinterest', NULL, '2020-02-15 23:00:20', '2020-02-15 22:00:20'),
(7, 'linkedin', NULL, '2020-02-15 23:00:07', '2020-02-15 22:00:07'),
(8, 'youtube', NULL, '2020-02-15 22:59:48', '2020-02-15 21:59:48'),
(9, 'whatsapp', 'https://whatsapp.com/', '2020-02-09 08:09:38', '2020-02-09 07:09:38');

-- --------------------------------------------------------

--
-- Table structure for table `subscriber`
--

DROP TABLE IF EXISTS `subscriber`;
CREATE TABLE IF NOT EXISTS `subscriber` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subscriber`
--

INSERT INTO `subscriber` (`id`, `email`, `created_at`, `updated_at`) VALUES
(1, 'user@test.com', '2020-01-24 23:29:30', '2020-01-24 23:29:30'),
(2, 'freakboss3@gmail.com', '2020-01-24 23:32:13', '2020-01-24 23:32:13'),
(3, 'c@c.com', '2020-01-24 23:33:58', '2020-01-24 23:33:58'),
(4, 'naninick27@gmail.com', '2020-01-25 06:01:15', '2020-01-25 06:01:15'),
(5, 'inyamachidi355@gmail.com', '2020-01-25 06:12:24', '2020-01-25 06:12:24'),
(6, 'fish@castro.com', '2020-01-25 06:13:50', '2020-01-25 06:13:50');

-- --------------------------------------------------------

--
-- Table structure for table `support`
--

DROP TABLE IF EXISTS `support`;
CREATE TABLE IF NOT EXISTS `support` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `subject` text NOT NULL,
  `priority` varchar(8) NOT NULL,
  `message` text NOT NULL,
  `status` int(2) NOT NULL,
  `user_id` int(32) NOT NULL,
  `ticket_id` int(8) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transfers`
--

DROP TABLE IF EXISTS `transfers`;
CREATE TABLE IF NOT EXISTS `transfers` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `ref_id` int(32) NOT NULL,
  `amount` varchar(32) NOT NULL,
  `sender_id` int(32) NOT NULL,
  `receiver_id` int(32) NOT NULL,
  `status` int(2) NOT NULL,
  `type` int(32) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tran_acct`
--

DROP TABLE IF EXISTS `tran_acct`;
CREATE TABLE IF NOT EXISTS `tran_acct` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `amount` float NOT NULL,
  `type` int(2) NOT NULL,
  `ref` int(32) NOT NULL,
  `content` text NOT NULL,
  `user_id` int(32) NOT NULL,
  `date` varchar(32) NOT NULL,
  `seen` int(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `trending`
--

DROP TABLE IF EXISTS `trending`;
CREATE TABLE IF NOT EXISTS `trending` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `details` text NOT NULL,
  `image` varchar(64) NOT NULL,
  `cat_id` int(32) NOT NULL,
  `views` int(32) NOT NULL DEFAULT '0',
  `status` int(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trending`
--

INSERT INTO `trending` (`id`, `title`, `details`, `image`, `cat_id`, `views`, `status`, `created_at`, `updated_at`) VALUES
(9, 'Budget for Your Winter Trip to Cancun', '<p>It may be cold at home, but winter months are the peak season for Caribbean beaches, and for good reason: With beautiful scenery, tropical weather, and a dazzling array of adventure opportunities, a trip to sunny Mexico can be the perfect cure for the winter blues.</p>', 'post_1581767808.jpg', 2, 3, 1, '2020-02-16 16:12:34', '2020-02-16 15:12:34'),
(10, 'We are still choosing to help you grow your money and your confidence', '<p>We don&rsquo;t have a crystal ball, and can&rsquo;t predict when rates will change again, but we wanted to clearly communicate what&rsquo;s happening today. We believe that maintaining our high Protected Goals Account rates&mdash;and rewarding the choice to save&mdash;will help our customers continue to feel confident with their money.</p>', 'post_1581231667.jpg', 2, 5, 1, '2021-10-16 01:53:43', '2021-10-16 00:53:43'),
(11, 'Prioritize your savings goals based on what you really want.', '<p>You know you should be saving, but what should you save for first? Prioritizing your savings goals can be confusing. Here&rsquo;s how to sift through it all.</p>', 'post_1581231686.jpg', 2, 1, 1, '2020-02-16 15:15:06', '2020-02-16 14:15:06'),
(12, 'Foresight is 20/20: Bring Your Financial Future Into Focus', '<p>Forget hindsight&mdash;this decade, foresight is 20/20. It&rsquo;s a new year, and time for a new financial focus. Read on to see how Simple&rsquo;s built-in budgeting tools can help you plan a financial future so bright, you gotta wear shades.</p>', 'post_1581245829.jpg', 3, 2, 1, '2021-10-16 23:40:43', '2021-10-16 22:40:43');

-- --------------------------------------------------------

--
-- Table structure for table `trending_cat`
--

DROP TABLE IF EXISTS `trending_cat`;
CREATE TABLE IF NOT EXISTS `trending_cat` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `categories` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trending_cat`
--

INSERT INTO `trending_cat` (`id`, `categories`, `created_at`, `updated_at`) VALUES
(2, 'Inspiration', '2020-01-24 22:13:56', '0000-00-00 00:00:00'),
(3, 'Company', '2020-01-24 22:13:56', '0000-00-00 00:00:00'),
(4, 'Engineering', '2020-01-24 22:13:56', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `ui_design`
--

DROP TABLE IF EXISTS `ui_design`;
CREATE TABLE IF NOT EXISTS `ui_design` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `s6_title` text NOT NULL,
  `s7_title` text NOT NULL,
  `s7_body` text NOT NULL,
  `s7_image` varchar(32) NOT NULL,
  `s6_body` text NOT NULL,
  `s5_title` text NOT NULL,
  `s5_body` text NOT NULL,
  `s4_title` text NOT NULL,
  `s4_body` text NOT NULL,
  `s4_image` varchar(32) NOT NULL,
  `s3_title` text NOT NULL,
  `s3_body` text NOT NULL,
  `s3_image` varchar(32) NOT NULL,
  `s2_image` varchar(32) NOT NULL,
  `s2_title` text NOT NULL,
  `s2_body` text NOT NULL,
  `s1_title` text NOT NULL,
  `header_title` text NOT NULL,
  `header_body` text NOT NULL,
  `nav_type` int(2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ui_design`
--

INSERT INTO `ui_design` (`id`, `s6_title`, `s7_title`, `s7_body`, `s7_image`, `s6_body`, `s5_title`, `s5_body`, `s4_title`, `s4_body`, `s4_image`, `s3_title`, `s3_body`, `s3_image`, `s2_image`, `s2_title`, `s2_body`, `s1_title`, `header_title`, `header_body`, `nav_type`, `created_at`, `updated_at`) VALUES
(1, 'Get an account that suits you', 'What our client say about us', 'Due to our line fast, secure, and reliable services our client chooses us.', 'section4_1581766093.png', 'We want to create superior value for our clients, shareholders and employees. And we want to stand out as a winner in our industry: for our expertise, advice and execution, our contribution to society, our work environment, and our business success.', 'Build your savings without even trying.', 'Turn on Round-up Rules and start saving up effortlessly. Whenever you make a purchase, Goals make it easy to save for the things you want or want to do. There’s no need for spreadsheets or extra apps to budget and track your money.', 'Make plans for what to do, not what’s due.', 'Set up your recurring expenses (think power bill, cable, internet) in our app, and we\'ll do the work of saving for them each month. When you know your bills are covered, you can focus on the fun parts of having money—like saving for a trip to Japan and buying that new bike.', 'section3_1581869693.png', 'What are your goals?', 'Whatever stage of life you’re at, we can guide you through the opportunities and challenges you face. Your investment goals may be different, but here are some examples of the sort of questions our wealth planners can help you answer.', 'section2_1581766025.png', 'section1_1581765438.png', 'Financial intermediaries', 'Our solutions for independent financial advisors and wealth managers include research, infrastructure and a broad range of products and services.We offers high net worth and affluent individuals around the world a complete range of tailored advice and investment services. Our spectrum ranges from investment management to estate planning and corporate finance advice, in addition to specific wealth management products and services.', 'Market leaders use app to reach their brand & business.', 'Personal Banking, Loans, Cards & More', 'We help our clients to extend their offers and transform their cost structures. Services include market intelligence, business execution, liquidity provision, processing, and client servicing.', 1, '2020-12-05 13:00:34', '2020-12-05 12:00:34');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL,
  `image` varchar(32) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `name` varchar(64) NOT NULL,
  `balance` varchar(32) NOT NULL,
  `password` varchar(100) NOT NULL,
  `phone` varchar(32) NOT NULL,
  `country` varchar(191) DEFAULT NULL,
  `status` int(2) NOT NULL DEFAULT '0',
  `ip_address` varchar(32) NOT NULL,
  `last_login` varchar(32) DEFAULT NULL,
  `kyc_link` varchar(32) DEFAULT NULL,
  `kyc_status` int(2) NOT NULL DEFAULT '0',
  `acct_no` varchar(32) NOT NULL,
  `pin` varchar(32) NOT NULL DEFAULT '0000',
  `upgrade` int(2) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) DEFAULT NULL,
  `zip_code` varchar(255) DEFAULT NULL,
  `address` text,
  `city` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `verification_code` varchar(191) NOT NULL,
  `sms_code` varchar(191) NOT NULL,
  `phone_verify` tinyint(4) NOT NULL,
  `email_verify` tinyint(4) NOT NULL,
  `email_time` datetime NOT NULL,
  `phone_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=119 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `image`, `email`, `name`, `balance`, `password`, `phone`, `country`, `status`, `ip_address`, `last_login`, `kyc_link`, `kyc_status`, `acct_no`, `pin`, `upgrade`, `remember_token`, `zip_code`, `address`, `city`, `created_at`, `updated_at`, `verification_code`, `sms_code`, `phone_verify`, `email_verify`, `email_time`, `phone_time`) VALUES
(36, 'austus', NULL, 'ehis247@gmail.com', 'Ehis Austin', '602', '$2y$10$3iiOjNK6EZO4n1Y8MIsrI.vGf4LGMqhT2SQOeuFoILooRtz48yiLC', '08098740706', NULL, 0, '197.210.71.145, 197.210.71.145', '2021-05-29 09:13:29', NULL, 0, '2107083215', '0000', 1, NULL, NULL, NULL, NULL, '2020-12-06 13:56:32', '2021-05-29 08:13:29', 'O7VJEM', 'SLFMIY', 1, 1, '2020-12-06 15:01:32', '2020-12-06 15:01:32');

-- --------------------------------------------------------

--
-- Table structure for table `wallet_address`
--

DROP TABLE IF EXISTS `wallet_address`;
CREATE TABLE IF NOT EXISTS `wallet_address` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `coin_id` int(32) NOT NULL,
  `user_id` int(32) NOT NULL,
  `address` varchar(128) NOT NULL,
  `date` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wallet_address`
--

INSERT INTO `wallet_address` (`id`, `coin_id`, `user_id`, `address`, `date`) VALUES
(10, 3, 1, '45678hfjk6789yughgjk8', '2019-07-28 22:04:33'),
(13, 3, 11, '45678hfjk6789yughgjk8', '2019-08-16 20:59:55'),
(14, 12, 11, '45678hfjk6789yughgjk8', '2019-09-15 21:30:29');

-- --------------------------------------------------------

--
-- Table structure for table `winfo`
--

DROP TABLE IF EXISTS `winfo`;
CREATE TABLE IF NOT EXISTS `winfo` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `user_id` int(32) NOT NULL,
  `w_id` int(32) NOT NULL,
  `details` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `winfo`
--

INSERT INTO `winfo` (`id`, `user_id`, `w_id`, `details`) VALUES
(1, 10, 7, '5d687c278a3356ff31768421e77b9cdfd');

-- --------------------------------------------------------

--
-- Table structure for table `withdrawm`
--

DROP TABLE IF EXISTS `withdrawm`;
CREATE TABLE IF NOT EXISTS `withdrawm` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `method` varchar(128) NOT NULL,
  `status` int(2) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `withdrawm`
--

INSERT INTO `withdrawm` (`id`, `method`, `status`, `created_at`, `updated_at`) VALUES
(10, 'Bitcoin	', 0, '2020-01-30 08:25:31', '0000-00-00 00:00:00'),
(11, 'Litecoin', 0, '2020-01-30 08:25:31', '0000-00-00 00:00:00'),
(12, 'Bitcoin Cash', 0, '2020-01-30 08:25:31', '0000-00-00 00:00:00'),
(14, 'Stellar', 1, '2020-02-09 14:12:15', '2020-02-09 13:12:15'),
(15, 'Dash', 1, '2020-02-09 14:12:25', '2020-02-09 13:12:25'),
(16, 'Paypal', 1, '2020-02-09 14:12:34', '2020-02-09 13:12:34'),
(17, 'Perfect money', 1, '2020-02-09 14:13:12', '2020-02-09 13:13:12'),
(18, 'Skrill', 1, '2020-02-09 14:13:07', '2020-02-09 13:13:07'),
(19, 'Payu', 1, '2020-02-09 14:13:02', '2020-02-09 13:13:02'),
(20, 'Voguepay', 1, '2020-02-09 14:12:58', '2020-02-09 13:12:58'),
(21, 'Flutter wave', 1, '2020-02-09 14:12:04', '2020-02-09 13:12:04'),
(22, 'Paystack', 1, '2020-02-09 14:03:58', '2020-02-09 13:03:58'),
(23, 'Ethereum', 1, '2020-02-09 13:11:46', '2020-02-09 13:11:46');

-- --------------------------------------------------------

--
-- Table structure for table `w_history`
--

DROP TABLE IF EXISTS `w_history`;
CREATE TABLE IF NOT EXISTS `w_history` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `user_id` int(32) NOT NULL,
  `amount` int(32) NOT NULL,
  `status` int(2) NOT NULL,
  `coin_id` varchar(32) NOT NULL,
  `details` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=79 DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
