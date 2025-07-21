-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 06, 2025 at 10:43 AM
-- Server version: 8.0.31
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fit_tdc_web`
--
CREATE DATABASE IF NOT EXISTS `fit_tdc_web` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `fit_tdc_web`;

-- --------------------------------------------------------

--
-- Table structure for table `assets_meta`
--

DROP TABLE IF EXISTS `assets_meta`;
CREATE TABLE IF NOT EXISTS `assets_meta` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `container` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `basename` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `filename` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `extension` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `assets_meta_container_folder_basename_unique` (`container`,`folder`,`basename`),
  KEY `assets_meta_container_index` (`container`),
  KEY `assets_meta_folder_index` (`folder`),
  KEY `assets_meta_basename_index` (`basename`),
  KEY `assets_meta_filename_index` (`filename`),
  KEY `assets_meta_extension_index` (`extension`),
  KEY `assets_meta_path_index` (`path`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assets_meta`
--

INSERT INTO `assets_meta` (`id`, `container`, `folder`, `basename`, `filename`, `extension`, `path`, `meta`, `created_at`, `updated_at`) VALUES
(1, 'assets', 'images/banners', 'courses-8.webp', 'courses-8', 'webp', 'images/banners/courses-8.webp', '{\"data\": [], \"size\": 49016, \"width\": 970, \"height\": 560, \"duration\": null, \"mime_type\": \"image/webp\", \"last_modified\": 1748411945}', '2025-05-27 22:59:05', '2025-05-27 22:59:05'),
(2, 'assets', 'images/lecturers', 'gv-2.jpg', 'gv-2', 'jpg', 'images/lecturers/gv-2.jpg', '{\"data\": [], \"size\": 252151, \"width\": 758, \"height\": 758, \"duration\": null, \"mime_type\": \"image/jpeg\", \"last_modified\": 1749307080}', '2025-06-07 07:38:00', '2025-06-07 07:38:00'),
(3, 'assets', 'images/lecturers', 'gv-3.jpg', 'gv-3', 'jpg', 'images/lecturers/gv-3.jpg', '{\"data\": [], \"size\": 482155, \"width\": 1242, \"height\": 1242, \"duration\": null, \"mime_type\": \"image/jpeg\", \"last_modified\": 1749310417}', '2025-06-07 08:33:37', '2025-06-07 08:33:37'),
(4, 'assets', 'images/lecturers', 'gv-5.jpg', 'gv-5', 'jpg', 'images/lecturers/gv-5.jpg', '{\"data\": [], \"size\": 31521, \"width\": 400, \"height\": 400, \"duration\": null, \"mime_type\": \"image/jpeg\", \"last_modified\": 1749310593}', '2025-06-07 08:36:33', '2025-06-07 08:36:33'),
(5, 'assets', 'images/lecturers', 'gv-4.jpg', 'gv-4', 'jpg', 'images/lecturers/gv-4.jpg', '{\"data\": [], \"size\": 162464, \"width\": 657, \"height\": 657, \"duration\": null, \"mime_type\": \"image/jpeg\", \"last_modified\": 1749310659}', '2025-06-07 08:37:39', '2025-06-07 08:37:39'),
(6, 'assets', 'images/lecturers', 'gv-6.jpg', 'gv-6', 'jpg', 'images/lecturers/gv-6.jpg', '{\"data\": [], \"size\": 27362, \"width\": 400, \"height\": 400, \"duration\": null, \"mime_type\": \"image/jpeg\", \"last_modified\": 1749737360}', '2025-06-12 07:09:20', '2025-06-12 07:09:20'),
(7, 'assets', 'images/lecturers', 'gv-7.jpg', 'gv-7', 'jpg', 'images/lecturers/gv-7.jpg', '{\"data\": [], \"size\": 26634, \"width\": 400, \"height\": 400, \"duration\": null, \"mime_type\": \"image/jpeg\", \"last_modified\": 1749737681}', '2025-06-12 07:14:41', '2025-06-12 07:14:41'),
(8, 'assets', 'images/lecturers', 'gv-8.jpg', 'gv-8', 'jpg', 'images/lecturers/gv-8.jpg', '{\"data\": [], \"size\": 18279, \"width\": 400, \"height\": 400, \"duration\": null, \"mime_type\": \"image/jpeg\", \"last_modified\": 1749738140}', '2025-06-12 07:22:20', '2025-06-12 07:22:20'),
(9, 'assets', 'images/lecturers', 'gv-1.jpg', 'gv-1', 'jpg', 'images/lecturers/gv-1.jpg', '{\"data\": [], \"size\": 34425, \"width\": 400, \"height\": 400, \"duration\": null, \"mime_type\": \"image/jpeg\", \"last_modified\": 1749739068}', '2025-06-12 07:37:48', '2025-06-12 07:37:48'),
(10, 'assets', 'images/lecturers', 'gv-9.jpg', 'gv-9', 'jpg', 'images/lecturers/gv-9.jpg', '{\"data\": [], \"size\": 35201, \"width\": 400, \"height\": 400, \"duration\": null, \"mime_type\": \"image/jpeg\", \"last_modified\": 1749739502}', '2025-06-12 07:45:02', '2025-06-12 07:45:02'),
(23, 'assets', 'images/events', 'event-3.jpg', 'event-3', 'jpg', 'images/events/event-3.jpg', '{\"data\": [], \"size\": 1204659, \"width\": 2560, \"height\": 1920, \"duration\": null, \"mime_type\": \"image/jpeg\", \"last_modified\": 1749907867}', '2025-06-14 06:31:07', '2025-06-14 06:31:07'),
(24, 'assets', 'images/events', 'event-5.jpg', 'event-5', 'jpg', 'images/events/event-5.jpg', '{\"data\": [], \"size\": 445331, \"width\": 2048, \"height\": 1366, \"duration\": null, \"mime_type\": \"image/jpeg\", \"last_modified\": 1749907922}', '2025-06-14 06:32:02', '2025-06-14 06:32:02'),
(25, 'assets', 'images/events', 'event-2.jpg', 'event-2', 'jpg', 'images/events/event-2.jpg', '{\"data\": [], \"size\": 415634, \"width\": 1920, \"height\": 1080, \"duration\": null, \"mime_type\": \"image/jpeg\", \"last_modified\": 1749907928}', '2025-06-14 06:32:08', '2025-06-14 06:32:08'),
(26, 'assets', 'images/events', 'event-4.jpg', 'event-4', 'jpg', 'images/events/event-4.jpg', '{\"data\": [], \"size\": 583614, \"width\": 2048, \"height\": 1365, \"duration\": null, \"mime_type\": \"image/jpeg\", \"last_modified\": 1749907935}', '2025-06-14 06:32:15', '2025-06-14 06:32:15'),
(28, 'assets', 'images/events', 'event-6.jpg', 'event-6', 'jpg', 'images/events/event-6.jpg', '{\"data\": [], \"size\": 178983, \"width\": 2048, \"height\": 1433, \"duration\": null, \"mime_type\": \"image/jpeg\", \"last_modified\": 1750842787}', '2025-06-25 02:13:07', '2025-06-25 02:13:07'),
(29, 'assets', 'images/events/event-4', 'event-4-1.jpg', 'event-4-1', 'jpg', 'images/events/event-4/event-4-1.jpg', '{\"data\": [], \"size\": 573532, \"width\": 2048, \"height\": 1365, \"duration\": null, \"mime_type\": \"image/jpeg\", \"last_modified\": 1750848946}', '2025-06-25 03:55:46', '2025-06-25 03:55:46'),
(30, 'assets', 'images/events/event-4', 'event-4-2.jpg', 'event-4-2', 'jpg', 'images/events/event-4/event-4-2.jpg', '{\"data\": [], \"size\": 583614, \"width\": 2048, \"height\": 1365, \"duration\": null, \"mime_type\": \"image/jpeg\", \"last_modified\": 1750848948}', '2025-06-25 03:55:48', '2025-06-25 03:55:48'),
(31, 'assets', 'images/events/event-4', 'event-4-3.jpg', 'event-4-3', 'jpg', 'images/events/event-4/event-4-3.jpg', '{\"data\": [], \"size\": 469073, \"width\": 2048, \"height\": 1365, \"duration\": null, \"mime_type\": \"image/jpeg\", \"last_modified\": 1750848950}', '2025-06-25 03:55:50', '2025-06-25 03:55:50'),
(32, 'assets', '/', 'logo.jpg', 'logo', 'jpg', 'logo.jpg', '{\"data\": [], \"size\": 10431, \"width\": 225, \"height\": 225, \"duration\": null, \"mime_type\": \"image/jpeg\", \"last_modified\": 1750928072}', '2025-06-26 01:54:32', '2025-06-26 01:54:32'),
(34, 'assets', 'files/tien-trinh-dao-tao', 'ttdt-nb-2024.png', 'ttdt-nb-2024', 'png', 'files/tien-trinh-dao-tao/ttdt-nb-2024.png', '{\"data\": [], \"size\": 457590, \"width\": 2616, \"height\": 1626, \"duration\": null, \"mime_type\": \"image/png\", \"last_modified\": 1751171893}', '2025-06-28 21:38:13', '2025-06-28 21:38:13'),
(35, 'assets', 'files/chuong-trinh-khung', 'ctk-nb-2024.pdf', 'ctk-nb-2024', 'pdf', 'files/chuong-trinh-khung/ctk-nb-2024.pdf', '{\"data\": [], \"size\": 811458, \"width\": null, \"height\": null, \"duration\": null, \"mime_type\": \"application/pdf\", \"last_modified\": 1751171921}', '2025-06-28 21:38:41', '2025-06-28 21:38:41'),
(36, 'assets', 'files/chuan-dau-ra', 'cdr-nb-2024.pdf', 'cdr-nb-2024', 'pdf', 'files/chuan-dau-ra/cdr-nb-2024.pdf', '{\"data\": [], \"size\": 1098818, \"width\": null, \"height\": null, \"duration\": null, \"mime_type\": \"application/pdf\", \"last_modified\": 1751171931}', '2025-06-28 21:38:51', '2025-06-28 21:38:51'),
(37, 'assets', 'images/students', 's-1.png', 's-1', 'png', 'images/students/s-1.png', '{\"data\": [], \"size\": 461779, \"width\": 631, \"height\": 947, \"duration\": null, \"mime_type\": \"image/png\", \"last_modified\": 1751640164}', '2025-07-04 07:42:44', '2025-07-04 07:42:44'),
(38, 'assets', 'images/events', 'event-7.jpg', 'event-7', 'jpg', 'images/events/event-7.jpg', '{\"data\": [], \"size\": 271319, \"width\": 2048, \"height\": 1138, \"duration\": null, \"mime_type\": \"image/jpeg\", \"last_modified\": 1751712411}', '2025-07-05 03:46:51', '2025-07-05 03:46:51');

-- --------------------------------------------------------

--
-- Table structure for table `asset_containers`
--

DROP TABLE IF EXISTS `asset_containers`;
CREATE TABLE IF NOT EXISTS `asset_containers` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `handle` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `disk` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `settings` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `asset_containers_handle_unique` (`handle`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `asset_containers`
--

INSERT INTO `asset_containers` (`id`, `handle`, `title`, `disk`, `settings`, `created_at`, `updated_at`) VALUES
(1, 'assets', 'Assets', 'assets', '{\"sort_by\": \"basename\", \"sort_dir\": \"asc\", \"allow_moving\": true, \"search_index\": null, \"warm_presets\": null, \"allow_uploads\": true, \"source_preset\": null, \"allow_renaming\": true, \"create_folders\": true, \"validation_rules\": [], \"allow_downloading\": true}', '2025-02-28 08:10:33', '2025-02-28 08:10:33');

-- --------------------------------------------------------

--
-- Table structure for table `blueprints`
--

DROP TABLE IF EXISTS `blueprints`;
CREATE TABLE IF NOT EXISTS `blueprints` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `namespace` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `handle` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` json NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `blueprints_handle_namespace_unique` (`handle`,`namespace`),
  KEY `blueprints_namespace_index` (`namespace`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blueprints`
--

INSERT INTO `blueprints` (`id`, `namespace`, `handle`, `data`, `created_at`, `updated_at`) VALUES
(1, NULL, 'default', '{\"tabs\": {\"main\": {\"sections\": [{\"fields\": [{\"field\": {\"type\": \"markdown\", \"display\": \"Content\", \"localizable\": true}, \"handle\": \"content\"}, {\"field\": {\"type\": \"users\", \"default\": \"current\", \"display\": \"Author\", \"max_items\": 1, \"localizable\": true}, \"handle\": \"author\"}, {\"field\": {\"type\": \"template\", \"display\": \"Template\", \"localizable\": true}, \"handle\": \"template\"}]}]}}, \"title\": \"Default\"}', '2025-02-24 22:30:02', '2025-02-24 22:30:02'),
(2, 'assets', 'assets', '{\"tabs\": {\"main\": {\"sections\": [{\"fields\": [{\"field\": {\"type\": \"text\", \"display\": \"Alt Text\", \"instructions\": \"Description of the image\"}, \"handle\": \"alt\"}]}]}}, \"title\": \"Asset\"}', '2025-02-24 22:30:02', '2025-02-24 22:30:02'),
(3, NULL, 'user', '{\"tabs\": {\"main\": {\"sections\": [{\"fields\": [{\"field\": {\"type\": \"text\", \"display\": \"Name\"}, \"handle\": \"name\"}, {\"field\": {\"type\": \"text\", \"input\": \"email\", \"display\": \"Email Address\"}, \"handle\": \"email\"}, {\"field\": {\"type\": \"user_roles\", \"width\": 50}, \"handle\": \"roles\"}, {\"field\": {\"type\": \"user_groups\", \"width\": 50}, \"handle\": \"groups\"}, {\"field\": {\"type\": \"assets\", \"container\": \"assets\", \"max_files\": 1}, \"handle\": \"avatar\"}]}]}}, \"title\": \"User\"}', '2025-02-24 22:30:02', '2025-02-24 22:30:02'),
(4, 'collections.posts', 'post', '{\"tabs\": {\"main\": {\"__count\": 0, \"display\": \"Main\", \"sections\": [{\"fields\": [{\"field\": {\"type\": \"toggle\", \"display\": \"Featured\"}, \"handle\": \"featured\"}, {\"field\": {\"type\": \"text\", \"required\": true, \"validate\": [\"required\"]}, \"handle\": \"title\"}, {\"field\": {\"type\": \"markdown\", \"buttons\": [\"bold\", \"italic\", \"unorderedlist\", \"orderedlist\", \"quote\", \"link\"], \"display\": \"Title Description\"}, \"handle\": \"title_description\"}, {\"field\": \"post_builder.sections\", \"handle\": \"sections\"}], \"__count\": 0}]}, \"sidebar\": {\"__count\": 1, \"display\": \"Sidebar\", \"sections\": [{\"fields\": [{\"field\": {\"type\": \"slug\", \"validate\": \"max:200\", \"localizable\": true}, \"handle\": \"slug\"}, {\"field\": {\"type\": \"assets\", \"folder\": \"images\", \"display\": \"Thumbnail\", \"validate\": [\"required\"], \"container\": \"assets\", \"max_files\": 1, \"min_files\": 1}, \"handle\": \"thumbnail\"}, {\"field\": {\"type\": \"date\", \"format\": \"d-m-Y\", \"default\": \"now\", \"required\": true, \"validate\": [\"required\"]}, \"handle\": \"date\"}, {\"field\": {\"type\": \"entries\", \"listable\": false, \"max_items\": 1, \"collections\": [\"posts\"], \"localizable\": true}, \"handle\": \"parent\"}], \"__count\": 0}]}}, \"title\": \"Post\"}', '2025-05-27 19:22:22', '2025-07-05 03:56:17'),
(5, 'collections.lecturers', 'lecturer', '{\"tabs\": {\"main\": {\"__count\": 0, \"display\": \"Main\", \"sections\": [{\"fields\": [{\"field\": {\"type\": \"text\", \"required\": true, \"validate\": [\"required\"]}, \"handle\": \"title\"}, {\"field\": {\"type\": \"text\", \"display\": \"Email\", \"input_type\": \"email\"}, \"handle\": \"email\"}, {\"field\": {\"type\": \"text\", \"display\": \"Phone number\", \"input_type\": \"tel\"}, \"handle\": \"phone_number\"}, {\"field\": {\"type\": \"text\", \"display\": \"LinkedIn\"}, \"handle\": \"linkedin\"}, {\"field\": {\"type\": \"select\", \"display\": \"Position\", \"options\": [{\"key\": \"Trưởng Khoa\", \"value\": \"Trưởng Khoa\"}, {\"key\": \"Thư Ký\", \"value\": \"Thư Ký\"}, {\"key\": \"Giảng Viên\", \"value\": \"Giảng Viên\"}, {\"key\": \"Trưởng Bộ môn\", \"value\": \"Trưởng Bộ môn\"}], \"validate\": [\"required\"]}, \"handle\": \"position\"}, {\"field\": {\"type\": \"integer\", \"default\": \"3\", \"display\": \"Priority\", \"placeholder\": \"Trưởng khoa = 1, Trưởng Bộ môn = 2, Giảng viên = 3\"}, \"handle\": \"priority\"}, {\"field\": {\"type\": \"select\", \"display\": \"Degree\", \"options\": [{\"key\": \"Cử nhân\", \"value\": \"Cử nhân\"}, {\"key\": \"Thạc sĩ\", \"value\": \"Thạc sĩ\"}, {\"key\": \"Tiến sĩ\", \"value\": \"Tiến sĩ\"}], \"validate\": [\"required\"]}, \"handle\": \"degree\"}, {\"field\": {\"type\": \"entries\", \"display\": \"Major\", \"validate\": [\"required\"], \"collections\": [\"majors\"]}, \"handle\": \"major\"}, {\"field\": {\"type\": \"markdown\", \"display\": \"Description\"}, \"handle\": \"description\"}], \"__count\": 0}]}, \"sidebar\": {\"__count\": 1, \"display\": \"Sidebar\", \"sections\": [{\"fields\": [{\"field\": {\"type\": \"slug\", \"validate\": \"max:200\", \"localizable\": true}, \"handle\": \"slug\"}, {\"field\": {\"type\": \"assets\", \"display\": \"Avatar\", \"validate\": [\"required\"], \"container\": \"assets\", \"max_files\": 1}, \"handle\": \"avatar\"}, {\"field\": {\"type\": \"date\", \"default\": \"now\", \"required\": true, \"validate\": [\"required\"]}, \"handle\": \"date\"}, {\"field\": {\"type\": \"entries\", \"listable\": false, \"max_items\": 1, \"collections\": [\"lecturers\"], \"localizable\": true}, \"handle\": \"parent\"}], \"__count\": 0}]}}, \"title\": \"Lecturer\"}', '2025-06-07 07:26:38', '2025-06-12 07:40:04'),
(7, 'collections.majors', 'major', '{\"tabs\": {\"main\": {\"__count\": 0, \"display\": \"Main\", \"sections\": [{\"fields\": [{\"field\": {\"type\": \"text\", \"required\": true, \"validate\": [\"required\"]}, \"handle\": \"title\"}, {\"field\": {\"type\": \"markdown\", \"display\": \"Description\", \"localizable\": true}, \"handle\": \"description\"}, {\"field\": {\"type\": \"integer\", \"display\": \"Position\", \"validate\": [\"required\"]}, \"handle\": \"pos\"}], \"__count\": 0}]}, \"sidebar\": {\"__count\": 1, \"display\": \"Sidebar\", \"sections\": [{\"fields\": [{\"field\": {\"type\": \"slug\", \"validate\": \"max:200\", \"localizable\": true}, \"handle\": \"slug\"}], \"__count\": 0}]}}, \"title\": \"Major\"}', '2025-06-07 08:20:32', '2025-06-09 07:59:16'),
(8, 'collections.pages', 'page', '{\"tabs\": {\"main\": {\"__count\": 0, \"display\": \"Main\", \"sections\": [{\"fields\": [{\"field\": {\"type\": \"text\", \"required\": true, \"validate\": [\"required\"]}, \"handle\": \"title\"}, {\"field\": {\"type\": \"markdown\", \"display\": \"Content\", \"localizable\": true}, \"handle\": \"content\"}, {\"field\": {\"type\": \"users\", \"default\": \"current\", \"display\": \"Author\", \"max_items\": 1, \"localizable\": true}, \"handle\": \"author\"}, {\"field\": {\"type\": \"template\", \"display\": \"Template\", \"localizable\": true}, \"handle\": \"template\"}, {\"field\": {\"type\": \"assets\", \"display\": \"Assets Field\", \"container\": \"assets\"}, \"handle\": \"assets_field\"}], \"__count\": 0}]}, \"sidebar\": {\"__count\": 1, \"display\": \"Sidebar\", \"sections\": [{\"fields\": [{\"field\": {\"type\": \"slug\", \"validate\": \"max:200\", \"localizable\": true}, \"handle\": \"slug\"}, {\"field\": {\"type\": \"entries\", \"listable\": false, \"max_items\": 1, \"collections\": [\"pages\"], \"localizable\": true}, \"handle\": \"parent\"}], \"__count\": 0}]}}, \"title\": \"Page\"}', '2025-06-27 00:09:51', '2025-06-27 00:09:51'),
(9, 'collections.classes_of', 'classes_of', '{\"tabs\": {\"main\": {\"__count\": 0, \"display\": \"Main\", \"sections\": [{\"fields\": [{\"field\": {\"type\": \"text\", \"required\": true, \"validate\": [\"required\"]}, \"handle\": \"title\"}, {\"field\": {\"type\": \"markdown\", \"display\": \"Content\", \"localizable\": true}, \"handle\": \"content\"}, {\"field\": {\"type\": \"users\", \"default\": \"current\", \"display\": \"Author\", \"max_items\": 1, \"localizable\": true}, \"handle\": \"author\"}, {\"field\": {\"type\": \"template\", \"display\": \"Template\", \"localizable\": true}, \"handle\": \"template\"}], \"__count\": 0}]}, \"sidebar\": {\"__count\": 1, \"display\": \"Sidebar\", \"sections\": [{\"fields\": [{\"field\": {\"type\": \"slug\", \"validate\": \"max:200\", \"localizable\": true}, \"handle\": \"slug\"}], \"__count\": 0}]}}, \"title\": \"Class Of\"}', '2025-06-27 02:42:33', '2025-06-27 02:42:33'),
(10, 'collections.courses', 'course', '{\"tabs\": {\"main\": {\"__count\": 0, \"display\": \"Main\", \"sections\": [{\"fields\": [{\"field\": {\"type\": \"text\", \"required\": true, \"validate\": [\"required\"]}, \"handle\": \"title\"}, {\"field\": {\"type\": \"integer\", \"display\": \"year\", \"validate\": [\"required\", \"min:2008\"]}, \"handle\": \"year\"}], \"__count\": 0}]}, \"sidebar\": {\"__count\": 1, \"display\": \"Sidebar\", \"sections\": [{\"fields\": [{\"field\": {\"type\": \"slug\", \"validate\": \"max:200\", \"localizable\": true}, \"handle\": \"slug\"}], \"__count\": 0}]}}, \"title\": \"Course\"}', '2025-06-27 02:50:29', '2025-06-27 03:52:33'),
(11, 'collections.programs', 'program', '{\"tabs\": {\"main\": {\"__count\": 0, \"display\": \"Main\", \"sections\": [{\"fields\": [{\"field\": {\"type\": \"text\", \"required\": true, \"validate\": [\"required\"]}, \"handle\": \"title\"}, {\"field\": {\"mode\": \"select\", \"type\": \"entries\", \"display\": \"Course\", \"max_items\": 1, \"collections\": [\"courses\"]}, \"handle\": \"course\"}, {\"field\": {\"type\": \"integer\", \"display\": \"Index\", \"instructions\": \"Thứ tự hiển thị của các chương trình: cnnt_dt:2, cntt_nb: 4, cntt_clc: 6, cntt_lt: 8, dh: 10, mmt: 12\"}, \"handle\": \"index\"}, {\"field\": {\"type\": \"assets\", \"folder\": \"files\", \"display\": \"Educational Process\", \"container\": \"assets\", \"max_files\": 1}, \"handle\": \"edu_process\"}, {\"field\": {\"type\": \"assets\", \"folder\": \"files\", \"display\": \"Educational Table\", \"container\": \"assets\", \"max_files\": 1}, \"handle\": \"edu_table\"}, {\"field\": {\"type\": \"assets\", \"folder\": \"files\", \"display\": \"Learning Outcomes\", \"container\": \"assets\", \"max_files\": 1}, \"handle\": \"learning_outcomes\"}], \"__count\": 0}]}, \"sidebar\": {\"__count\": 1, \"display\": \"Sidebar\", \"sections\": [{\"fields\": [{\"field\": {\"type\": \"slug\", \"validate\": \"max:200\", \"localizable\": true}, \"handle\": \"slug\"}], \"__count\": 0}]}}, \"title\": \"Program\"}', '2025-06-27 03:08:29', '2025-06-28 02:01:36'),
(12, 'collections.course_program', 'course_program', '{\"tabs\": {\"main\": {\"__count\": 0, \"display\": \"Main\", \"sections\": [{\"fields\": [{\"field\": {\"type\": \"text\", \"required\": true}, \"handle\": \"title\"}, {\"field\": {\"mode\": \"select\", \"type\": \"entries\", \"display\": \"Program\", \"collections\": [\"programs\"]}, \"handle\": \"program\"}, {\"field\": {\"mode\": \"select\", \"type\": \"entries\", \"display\": \"Course\", \"collections\": [\"courses\"]}, \"handle\": \"course\"}, {\"field\": {\"type\": \"assets\", \"folder\": \"files\", \"display\": \"Educational program\", \"container\": \"assets\", \"max_files\": 1, \"min_files\": 1}, \"handle\": \"edu_program\"}, {\"field\": {\"type\": \"assets\", \"folder\": \"files\", \"display\": \"Educational Table\", \"container\": \"assets\", \"max_files\": 1, \"min_files\": 1}, \"handle\": \"edu_table\"}, {\"field\": {\"type\": \"assets\", \"folder\": \"files\", \"display\": \"Learning Outcomes\", \"container\": \"assets\"}, \"handle\": \"learning_outcomes\"}], \"__count\": 0}]}, \"sidebar\": {\"__count\": 1, \"sections\": [{\"fields\": [{\"field\": {\"type\": \"slug\", \"validate\": \"max:200\", \"localizable\": true}, \"handle\": \"slug\"}], \"__count\": 0}]}}, \"title\": \"Course Program\"}', '2025-06-28 01:04:17', '2025-06-28 01:05:25'),
(13, 'collections.awards', 'award', '{\"tabs\": {\"main\": {\"__count\": 0, \"display\": \"Main\", \"sections\": [{\"fields\": [{\"field\": {\"type\": \"text\", \"required\": true, \"validate\": [\"required\"]}, \"handle\": \"title\"}, {\"field\": {\"type\": \"markdown\", \"display\": \"Content\", \"localizable\": true}, \"handle\": \"content\"}, {\"field\": {\"type\": \"integer\", \"display\": \"Year\", \"validate\": [null, \"min:1000\"], \"instructions\": \"Năm của giải thưởng đó\"}, \"handle\": \"year\"}], \"__count\": 0}]}, \"sidebar\": {\"__count\": 1, \"display\": \"Sidebar\", \"sections\": [{\"fields\": [{\"field\": {\"type\": \"slug\", \"validate\": \"max:200\", \"localizable\": true}, \"handle\": \"slug\"}], \"__count\": 0}]}}, \"title\": \"Award\"}', '2025-07-04 07:21:31', '2025-07-04 07:21:31'),
(14, 'collections.students', 'student', '{\"tabs\": {\"main\": {\"__count\": 0, \"display\": \"Main\", \"sections\": [{\"fields\": [{\"field\": {\"type\": \"toggle\", \"display\": \"Alumni\", \"instructions\": \"Là cựu sinh viên?\"}, \"handle\": \"alumni\"}, {\"field\": {\"type\": \"text\", \"required\": true, \"validate\": [\"required\"]}, \"handle\": \"title\"}, {\"field\": {\"type\": \"text\", \"display\": \"MSSV\", \"validate\": [\"required\", \"regex:/^\\\\d{5}[A-Z][A-Z]\\\\d{4}$/\"]}, \"handle\": \"mssv\"}, {\"field\": {\"type\": \"select\", \"display\": \"Major\", \"options\": [{\"key\": \"Công nghệ thôn tin\", \"value\": \"Công nghệ thôn tin\"}, {\"key\": \"Đồ Họa\", \"value\": \"Đồ Họa\"}, {\"key\": \"Truyền thông và mạng máy tính\", \"value\": \"Truyền thông và mạng máy tính\"}], \"taggable\": true, \"max_items\": 1}, \"handle\": \"major\"}, {\"field\": {\"type\": \"text\", \"display\": \"Class\"}, \"handle\": \"class\"}, {\"field\": {\"type\": \"assets\", \"folder\": \"images\", \"display\": \"Avatar\", \"container\": \"assets\", \"max_files\": 1, \"min_files\": 1}, \"handle\": \"avatar\"}, {\"field\": {\"type\": \"markdown\", \"folder\": \"images\", \"buttons\": [\"bold\", \"italic\", \"unorderedlist\", \"orderedlist\", \"quote\", \"link\", \"image\", \"table\", \"asset\"], \"display\": \"description\", \"container\": \"assets\"}, \"handle\": \"description\"}, {\"field\": {\"type\": \"entries\", \"display\": \"Awards\", \"collections\": [\"awards\"]}, \"handle\": \"awards\"}], \"__count\": 0}]}, \"sidebar\": {\"__count\": 1, \"display\": \"Sidebar\", \"sections\": [{\"fields\": [{\"field\": {\"type\": \"slug\", \"validate\": \"max:200\", \"localizable\": true}, \"handle\": \"slug\"}, {\"field\": {\"type\": \"date\", \"default\": \"now\", \"required\": true, \"validate\": [\"required\"]}, \"handle\": \"date\"}, {\"field\": {\"type\": \"entries\", \"listable\": false, \"max_items\": 1, \"collections\": [\"students\"], \"localizable\": true}, \"handle\": \"parent\"}], \"__count\": 0}]}}, \"title\": \"Student\"}', '2025-07-04 07:37:43', '2025-07-04 08:51:21');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
CREATE TABLE IF NOT EXISTS `cache` (
  `key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
CREATE TABLE IF NOT EXISTS `cache_locks` (
  `key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `collections`
--

DROP TABLE IF EXISTS `collections`;
CREATE TABLE IF NOT EXISTS `collections` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `handle` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `settings` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `collections_handle_unique` (`handle`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `collections`
--

INSERT INTO `collections` (`id`, `handle`, `title`, `settings`, `created_at`, `updated_at`) VALUES
(1, 'pages', 'Pages', '{\"dated\": false, \"mount\": null, \"sites\": [\"default\"], \"slugs\": true, \"inject\": [], \"layout\": null, \"routes\": \"{parent_uri}/{slug}\", \"sort_dir\": null, \"template\": null, \"propagate\": true, \"revisions\": false, \"structure\": {\"root\": true}, \"sort_field\": null, \"taxonomies\": null, \"search_index\": null, \"title_formats\": [], \"default_status\": true, \"origin_behavior\": \"select\", \"preview_targets\": [{\"label\": \"Entry\", \"format\": \"{permalink}\", \"refresh\": true}], \"past_date_behavior\": \"public\", \"future_date_behavior\": \"public\"}', '2025-02-24 22:30:02', '2025-02-24 22:30:02'),
(3, 'posts', 'Posts', '{\"dated\": true, \"mount\": null, \"sites\": null, \"slugs\": true, \"inject\": [], \"layout\": \"layout\", \"routes\": \"tin-tuc/{slug}\", \"sort_dir\": \"asc\", \"template\": \"posts/show\", \"propagate\": false, \"revisions\": false, \"structure\": {\"root\": false, \"slugs\": true}, \"sort_field\": null, \"taxonomies\": [], \"search_index\": null, \"title_formats\": [], \"default_status\": true, \"origin_behavior\": \"select\", \"preview_targets\": [{\"id\": \"yFF107TS\", \"label\": \"Entry\", \"format\": \"{permalink}\", \"refresh\": true}], \"past_date_behavior\": \"public\", \"future_date_behavior\": \"private\"}', '2025-05-27 19:20:59', '2025-06-25 03:43:34'),
(4, 'lecturers', 'Lecturers', '{\"dated\": true, \"mount\": null, \"sites\": null, \"slugs\": true, \"inject\": [], \"layout\": \"layout\", \"routes\": \"nhan-su/{slug}\", \"sort_dir\": \"asc\", \"template\": \"lecturers/show\", \"propagate\": false, \"revisions\": false, \"structure\": {\"root\": false, \"slugs\": true}, \"sort_field\": null, \"taxonomies\": [], \"search_index\": null, \"title_formats\": [], \"default_status\": true, \"origin_behavior\": \"select\", \"preview_targets\": [{\"id\": \"tpndoUCk\", \"label\": \"Entry\", \"format\": \"{permalink}\", \"refresh\": true}], \"past_date_behavior\": \"public\", \"future_date_behavior\": \"public\"}', '2025-06-07 07:17:03', '2025-06-12 04:07:41'),
(5, 'majors', 'Majors', '{\"dated\": false, \"mount\": null, \"sites\": null, \"slugs\": true, \"inject\": [], \"layout\": null, \"routes\": [], \"sort_dir\": null, \"template\": \"majors/show\", \"propagate\": false, \"revisions\": false, \"structure\": null, \"sort_field\": null, \"taxonomies\": [], \"search_index\": null, \"title_formats\": [], \"default_status\": true, \"origin_behavior\": \"select\", \"preview_targets\": [{\"label\": \"Entry\", \"format\": \"{permalink}\", \"refresh\": true}], \"past_date_behavior\": \"public\", \"future_date_behavior\": \"private\"}', '2025-06-07 08:13:55', '2025-06-12 03:12:16'),
(6, 'students', 'Students', '{\"dated\": true, \"mount\": null, \"sites\": null, \"slugs\": true, \"inject\": [], \"layout\": \"layout\", \"routes\": \"/sinh-vien/{slug}\", \"sort_dir\": \"asc\", \"template\": \"students/show\", \"propagate\": false, \"revisions\": false, \"structure\": {\"root\": false}, \"sort_field\": null, \"taxonomies\": [], \"search_index\": null, \"title_formats\": [], \"default_status\": true, \"origin_behavior\": \"select\", \"preview_targets\": [{\"id\": \"JdylSLTA\", \"label\": \"Entry\", \"format\": \"{permalink}\", \"refresh\": true}], \"past_date_behavior\": \"public\", \"future_date_behavior\": \"private\"}', '2025-06-26 02:08:06', '2025-07-01 07:11:20'),
(9, 'courses', 'Courses', '{\"dated\": false, \"mount\": null, \"sites\": null, \"slugs\": true, \"inject\": [], \"layout\": null, \"routes\": [], \"sort_dir\": null, \"template\": null, \"propagate\": false, \"revisions\": false, \"structure\": null, \"sort_field\": null, \"taxonomies\": [], \"search_index\": null, \"title_formats\": [], \"default_status\": true, \"origin_behavior\": \"select\", \"preview_targets\": [{\"label\": \"Entry\", \"format\": \"{permalink}\", \"refresh\": true}], \"past_date_behavior\": \"public\", \"future_date_behavior\": \"private\"}', '2025-06-27 02:47:46', '2025-06-27 02:47:46'),
(12, 'programs', 'Programs', '{\"dated\": false, \"mount\": null, \"sites\": null, \"slugs\": true, \"inject\": [], \"layout\": \"layout\", \"routes\": \"dao-tao/{slug}\", \"sort_dir\": \"asc\", \"template\": \"programs/show\", \"propagate\": false, \"revisions\": false, \"structure\": {\"root\": false}, \"sort_field\": null, \"taxonomies\": [], \"search_index\": null, \"title_formats\": [], \"default_status\": true, \"origin_behavior\": \"select\", \"preview_targets\": [{\"id\": \"XWvrKTQ9\", \"label\": \"Entry\", \"format\": \"{permalink}\", \"refresh\": true}], \"past_date_behavior\": \"public\", \"future_date_behavior\": \"private\"}', '2025-06-28 01:06:37', '2025-06-28 03:49:11'),
(13, 'awards', 'Awards', '{\"dated\": false, \"mount\": null, \"sites\": null, \"slugs\": true, \"inject\": [], \"layout\": null, \"routes\": [], \"sort_dir\": null, \"template\": null, \"propagate\": false, \"revisions\": false, \"structure\": null, \"sort_field\": null, \"taxonomies\": [], \"search_index\": null, \"title_formats\": [], \"default_status\": true, \"origin_behavior\": \"select\", \"preview_targets\": [{\"label\": \"Entry\", \"format\": \"{permalink}\", \"refresh\": true}], \"past_date_behavior\": \"public\", \"future_date_behavior\": \"private\"}', '2025-07-04 07:18:40', '2025-07-04 07:18:40');

-- --------------------------------------------------------

--
-- Table structure for table `entries`
--

DROP TABLE IF EXISTS `entries`;
CREATE TABLE IF NOT EXISTS `entries` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `site` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `origin_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uri` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int DEFAULT NULL,
  `collection` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `blueprint` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` json NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entries_site_index` (`site`),
  KEY `entries_origin_id_index` (`origin_id`),
  KEY `entries_uri_index` (`uri`),
  KEY `entries_order_index` (`order`),
  KEY `entries_collection_index` (`collection`),
  KEY `entries_blueprint_index` (`blueprint`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `entries`
--

INSERT INTO `entries` (`id`, `site`, `origin_id`, `published`, `slug`, `uri`, `date`, `order`, `collection`, `blueprint`, `data`, `created_at`, `updated_at`) VALUES
('0567aed4-c72e-4e6f-b2ab-ddcbe6307e69', 'default', NULL, 1, 'cao-tran-thai-anh', '/nhan-su/cao-tran-thai-anh', '2025-06-12 00:00:00', 1, 'lecturers', 'lecturer', '{\"email\": null, \"major\": [\"da687895-0627-4c9a-9b7f-8d522c3f7b02\"], \"title\": \"Ths. Cao Trần Thái Anh\", \"avatar\": \"images/lecturers/gv-4.jpg\", \"degree\": \"ths\", \"linkedin\": null, \"position\": \"Trưởng Bộ môn\", \"priority\": 2, \"thumbnail\": [\"images/lecturers/gv-4.jpg\"], \"updated_by\": \"8a2db8fc-eb50-49bb-89d4-b12017d31da0\", \"description\": null, \"phone_number\": null}', '2025-06-07 08:37:49', '2025-06-12 07:28:48'),
('09c9953f-3d37-4d5b-8bdb-ef7b1a3213ba', 'default', NULL, 1, 'cong-nghe-thong-tin-dai-tra-2024', '/dao-tao/cong-nghe-thong-tin-dai-tra-2024', NULL, 1, 'programs', 'program', '{\"type\": \"Đại trà\", \"index\": 2, \"title\": \"Công nghệ thông tin (Đại trà)\", \"course\": \"fa34aafd-71be-4a9c-b80f-32ef272bdd03\", \"edu_table\": null, \"updated_by\": \"8a2db8fc-eb50-49bb-89d4-b12017d31da0\", \"edu_process\": null, \"learning_outcomes\": null}', '2025-06-28 01:15:25', '2025-06-28 05:38:14'),
('1c9e5fc5-c650-4795-bd6e-ad5cf2109b67', 'default', NULL, 1, 'nguyen-huy-hoang', '/nhan-su/nguyen-huy-hoang', '2025-06-09 00:00:00', 2, 'lecturers', 'lecturer', '{\"name\": \"ThS. Nguyễn Huy Hoàng\", \"email\": \"hoanghn@tdc.edu.vn\", \"major\": [\"318bfa0a-8655-4b29-aaf2-7c7b236e336d\"], \"title\": \"ThS. Nguyễn Huy Hoàng\", \"avatar\": \"images/lecturers/gv-2.jpg\", \"degree\": \"Thạc sĩ\", \"linkedin\": null, \"position\": \"Trưởng Bộ môn\", \"priority\": 2, \"thumbnail\": [\"images/lecturers/gv-2.jpg\"], \"updated_by\": \"8a2db8fc-eb50-49bb-89d4-b12017d31da0\", \"description\": \"2010 - Cử nhân Công nghệ thông tin, Trường Đại học Khoa học tự nhiên - ĐHQG TpHCM\\n2013 - Thạc sĩ Khoa học máy tính, Trường Đại học Khoa học tự nhiên - ĐHQG TpHCM\", \"phone_number\": \"(+84)822158642\", \"template_field\": \"lecturers/show\"}', '2025-06-07 07:38:11', '2025-06-13 08:24:26'),
('1ca135c0-0a18-49fe-8eea-bae05793d53e', 'default', NULL, 1, 'truong-van-tien', '/sinh-vien/truong-van-tien', '2025-07-01 00:00:00', 1, 'students', 'student', '{\"mssv\": \"20211TT1234\", \"class\": \"CD20TT9\", \"major\": \"Công nghệ thôn tin\", \"title\": \"Trương Văn Tiến\", \"alumni\": true, \"author\": \"8a2db8fc-eb50-49bb-89d4-b12017d31da0\", \"avatar\": \"images/students/s-1.png\", \"awards\": [\"e5df6ab0-fdfd-49d8-8e6e-69982d914a49\", \"66039652-3b89-46a9-a5a3-b3c5bfef09b4\"], \"content\": null, \"template\": null, \"updated_by\": \"8a2db8fc-eb50-49bb-89d4-b12017d31da0\", \"description\": \"<h2>🏅 Sinh viên tiêu biểu: Trương Văn Tiến</h2>\\n\\n<p><strong>Trương Văn Tiến</strong> là sinh viên ưu tú của <strong>Khoa Công nghệ Thông tin – Trường Cao đẳng Công nghệ Thủ Đức</strong>, nổi bật với thành tích học tập xuất sắc, tinh thần cầu tiến và trách nhiệm cao trong mọi hoạt động học thuật cũng như phong trào sinh viên.</p>\\n\\n<h3>🌟 Thành tích nổi bật:</h3>\\n<ul>\\n  <li><strong>Liên tục đạt danh hiệu Sinh viên giỏi</strong> qua nhiều học kỳ liên tiếp.</li>\\n  <li><strong>Thủ khoa đầu ra của khoa</strong>, với điểm trung bình tích lũy đạt loại Xuất sắc.</li>\\n  <li><strong>Đạt giải Nhì</strong> trong cuộc thi <em>Lập trình Ứng dụng Web cấp trường năm 2024</em>.</li>\\n  <li><strong>Là đại diện của khoa</strong> tham dự cuộc thi <em>Olympic Tin học sinh viên toàn quốc</em>.</li>\\n  <li>Tham gia xây dựng nhiều dự án phần mềm <strong>ứng dụng thực tế trong đào tạo và quản lý sinh viên</strong>.</li>\\n  <li><strong>Giữ vai trò Phó Bí thư Chi đoàn</strong>, năng nổ, trách nhiệm trong mọi công tác Đoàn – Hội.</li>\\n</ul>\\n\\n<h3>🎯 Tinh thần học tập và đạo đức:</h3>\\n<p>Không chỉ giỏi chuyên môn, Trương Văn Tiến còn nổi tiếng là người có <strong>tinh thần học hỏi không ngừng</strong>, luôn chủ động nghiên cứu tài liệu, tham gia seminar học thuật, và không ngần ngại chia sẻ kiến thức với bạn bè. Với thái độ học tập nghiêm túc và khả năng làm việc nhóm hiệu quả, Tiến luôn được bạn bè và giảng viên tin tưởng, đánh giá cao.</p>\\n\\n<blockquote>\\n  <p><em>\\\"Thành công không đến từ sự may mắn, mà đến từ sự kiên trì và khát khao không ngừng nghỉ.\\\"</em><br>\\n  — <strong>Trương Văn Tiến</strong></p>\\n</blockquote>\\n\\n<h3>🤝 Gương mặt truyền cảm hứng:</h3>\\n<p>Hình ảnh một sinh viên vừa giỏi chuyên môn, vừa có tinh thần cống hiến vì cộng đồng sinh viên đã giúp Trương Văn Tiến trở thành một <strong>tấm gương sáng</strong>, truyền cảm hứng cho nhiều thế hệ sinh viên kế tiếp.</p>\\n\\n<hr>\\n\\n<p>🎓 <em>Trường Cao đẳng Công nghệ Thủ Đức tự hào khi có những sinh viên như Trương Văn Tiến – biểu tượng của sự nỗ lực, bản lĩnh và trí tuệ trẻ.</em></p>\"}', '2025-07-01 07:09:45', '2025-07-05 01:40:07'),
('28b66ff0-4bea-411c-8a15-3e5687fdd245', 'default', NULL, 1, 'uni-roadshow-2024-co-hoi-cho-sinh-vien-truoc-lan-song-cong-nghe-moi', '/tin-tuc/uni-roadshow-2024-co-hoi-cho-sinh-vien-truoc-lan-song-cong-nghe-moi', '2025-06-20 00:00:00', 3, 'posts', 'post', '{\"title\": \"UNI ROADSHOW 2024: Cơ Hội Cho Sinh Viên Trước Làn Sóng Công Nghệ Mới\", \"author\": \"8a2db8fc-eb50-49bb-89d4-b12017d31da0\", \"content\": \"Thời gian và địa điểm Thời gian: 13:30, Thứ Tư, ngày 11/12/2024 Địa điểm: Hội trường D, Trường Cao đẳng Công nghệ Thủ Đức (TDC)\\n\\n\\nThời gian và địa điểm\\nThời gian: 13:30, Thứ Tư, ngày 11/12/2024.\\nĐịa điểm: Hội trường D, Trường Cao đẳng Công nghệ Thủ Đức (TDC).\\n\\nTrường Cao đẳng Công nghệ Thủ Đức hân hạnh là điểm đến duy nhất của tour sự kiện UNI ROADSHOW 2024 trong hệ thống các trường cao đẳng. Đây là cơ hội đặc biệt để sinh viên TDC được kết nối với những xu hướng công nghệ mới nhất, mở rộng tầm nhìn và định hướng sự nghiệp trong thời đại công nghệ không ngừng thay đổi.\\n\\nChuyên đề: \\\"Cơ hội cho sinh viên trước làn sóng công nghệ mới\\\"\\nThế giới ngày nay thay đổi với tốc độ chóng mặt nhờ những tiến bộ vượt bậc của công nghệ. Việc nắm bắt kịp thời xu hướng mới không chỉ là một lợi thế mà còn là yếu tố then chốt để xây dựng sự nghiệp thành công.\\n\\nChuyên đề sẽ mang đến cho bạn:\\nThông tin về các xu hướng công nghệ hàng đầu hiện nay, cơ hội nghề nghiệp và định hướng tương lai trong kỷ nguyên số; Kiến thức, kỹ năng cần thiết để đón đầu làn sóng công nghệ.\\nĐây không chỉ là một sự kiện học thuật mà còn là nơi để các bạn sinh viên giao lưu, học hỏi và chuẩn bị hành trang vững chắc cho tương lai.\\n\\nĐăng ký ngay – số lượng có hạn!\\nhttp://event.fittdc.info/su-kien/uni-roadshow-2024-tai-tdc-44\\n\\nHãy cùng nhau định hình tương lai và khám phá những cơ hội lớn ngay từ hôm nay!\\nKhoa Công nghệ Thông tin - Trường Cao đẳng Công nghệ Thủ Đức.\", \"featured\": true, \"sections\": [], \"thumbnail\": \"images/events/event-6.jpg\", \"updated_by\": \"8a2db8fc-eb50-49bb-89d4-b12017d31da0\", \"title_description\": \"Thời gian và địa điểm Thời gian: 13:30, Thứ Tư, ngày 11/12/2024 Địa điểm: Hội trường D, Trường Cao đẳng Công nghệ Thủ Đức (TDC)\"}', '2025-06-19 21:26:47', '2025-07-05 03:49:20'),
('313c9c65-c3d2-42a3-9652-b3796e4226ce', 'default', NULL, 1, 'tin-tuc', '/tin-tuc', NULL, 3, 'pages', 'page', '{\"title\": \"Tin Tức\", \"author\": \"8a2db8fc-eb50-49bb-89d4-b12017d31da0\", \"parent\": \"f11292ac-cf88-49a8-96a7-b8e126103704\", \"content\": null, \"template\": \"posts/index\", \"updated_by\": \"8a2db8fc-eb50-49bb-89d4-b12017d31da0\"}', '2025-03-05 09:29:15', '2025-06-11 21:56:44'),
('318bfa0a-8655-4b29-aaf2-7c7b236e336d', 'default', NULL, 1, 'cong-nghe-phan-mem', NULL, NULL, NULL, 'majors', 'major', '{\"pos\": 2, \"index\": 2, \"title\": \"Công nghệ phần mềm\", \"updated_by\": \"8a2db8fc-eb50-49bb-89d4-b12017d31da0\", \"description\": \"Trang bị cho sinh viên các kiến thức và kỹ năng để trở thành nhà phát triển phần mềm chuyên nghiệp. Phát triển các hướng nghiên cứu tạo ra sản phẩm như phát triển ứng dụng trên di động, ứng dụng trên nền web, công cụ kiểm thử phần mềm, các tool hỗ trợ lập trình ứng dụng, … Liên kết chặt chẽ với các công ty phần mềm nhằm tạo điều kiện cho giảng viên và sinh viên tiếp cận các công nghệ mới đã và đang áp dụng trong thực tế.\", \"head_of_department\": [\"1c9e5fc5-c650-4795-bd6e-ad5cf2109b67\"]}', '2025-06-07 08:27:52', '2025-06-09 07:59:42'),
('31c84ce3-287b-4194-8d57-bf3614642f76', 'default', NULL, 1, 'ke-hoach-xet-tot-nghiep-2025', '/tin-tuc/ke-hoach-xet-tot-nghiep-2025', '2025-03-23 00:00:00', 2, 'posts', 'post', '{\"title\": \"Kế hoạch xét tốt nghiệp 2025\", \"author\": \"8a2db8fc-eb50-49bb-89d4-b12017d31da0\", \"content\": \"Các bạn sinh viên theo dõi kế hoạch xét tốt nghiệp để xét khi có nhu cầu.\", \"featured\": false, \"sections\": [{\"id\": \"mcbu2jl8\", \"type\": \"contents\", \"enabled\": true}], \"thumbnail\": [\"images/events/event-3.jpg\"], \"updated_by\": \"8a2db8fc-eb50-49bb-89d4-b12017d31da0\", \"title_description\": \"Các bạn sinh viên theo dõi kế hoạch xét tốt nghiệp để xét khi có nhu cầu.\"}', '2025-06-14 06:33:58', '2025-07-05 03:44:47'),
('35999bd5-587c-4f97-a740-ccb2426fb889', 'default', NULL, 1, 'khoa-2016', NULL, NULL, NULL, 'courses', 'course', '{\"year\": 2016, \"title\": \"Khóa 2016\", \"updated_by\": \"8a2db8fc-eb50-49bb-89d4-b12017d31da0\"}', '2025-06-27 04:03:00', '2025-06-27 04:03:00'),
('42156aa3-55f9-46a9-96df-37af4539ed39', 'default', NULL, 1, 'khoa-2022', NULL, NULL, NULL, 'courses', 'course', '{\"year\": 2022, \"title\": \"Khóa 2022\", \"updated_by\": \"8a2db8fc-eb50-49bb-89d4-b12017d31da0\"}', '2025-06-27 04:01:15', '2025-06-27 04:01:15'),
('49a18f3e-fb82-4bfa-8add-d366d20536d5', 'default', NULL, 1, 'sinh-vien-fit-tdc-tham-du-hoi-thao-future-now-fpt-techday-2024', '/tin-tuc/sinh-vien-fit-tdc-tham-du-hoi-thao-future-now-fpt-techday-2024', '2024-11-13 00:00:00', 4, 'posts', 'post', '{\"title\": \"Sinh Viên FIT-TDC Tham Dự Hội Thảo \\\"Future Now\\\" - FPT Techday 2024\", \"featured\": false, \"sections\": [], \"thumbnail\": \"images/events/event-7.jpg\", \"updated_by\": \"8a2db8fc-eb50-49bb-89d4-b12017d31da0\", \"title_description\": \"SINH VIÊN FIT-TDC THAM DỰ HỘI THẢO \\\"FUTURE NOW\\\" - FPT TECHDAY 2024 Ngày hôm nay, sinh viên Khoa Công nghệ Thông tin (FIT) Trường Cao đẳng Công nghệ Thủ Đức đã có cơ hội tham gia sự kiện công nghệ đình đám FPT Techday 2024 với chủ đề “Future Now”, nơi hội tụ những xu hướng kinh doanh và công nghệ mới nhất.\"}', '2025-07-05 03:47:03', '2025-07-05 03:48:57'),
('500c8bc7-081a-40b7-a6d6-55e4e4a26cc6', 'default', NULL, 1, 'cung-fit-tdc-tham-gia-ngay-hoi-dac-biet-chao-don-tan-sinh-vien-khoa-2024', '/tin-tuc/cung-fit-tdc-tham-gia-ngay-hoi-dac-biet-chao-don-tan-sinh-vien-khoa-2024', '2024-10-11 00:00:00', 5, 'posts', 'post', '{\"title\": \"Cùng FIT-TDC Tham Gia Ngày Hội Đặc Biệt: Chào Đón Tân Sinh Viên Khóa 2024\", \"parent\": null, \"featured\": false, \"sections\": [], \"thumbnail\": \"images/events/event-5.jpg\", \"updated_by\": \"8a2db8fc-eb50-49bb-89d4-b12017d31da0\", \"title_description\": \"Tân Sinh Viên TDC Sôi Động Cùng Ngày Hội Chào Đón 2024\"}', '2025-07-05 03:51:57', '2025-07-05 03:51:57'),
('532fefc8-274e-4cb7-8107-0c8010543fb1', 'default', NULL, 1, 'van-phong-khoa', NULL, NULL, NULL, 'majors', 'major', '{\"pos\": 0, \"index\": 0, \"title\": \"Văn phòng khoa\", \"updated_by\": \"8a2db8fc-eb50-49bb-89d4-b12017d31da0\", \"description\": \"Thiết lập lịch trình hoạt động của khoa CNTT trong năm học như: thời khóa biểu, lịch thi, đăng ký giảng dạy, ...\"}', '2025-06-07 08:39:54', '2025-06-09 07:59:58'),
('53aed5aa-b68e-4fd3-9933-2bb31cc37e47', 'default', NULL, 1, 'cong-nghe-thong-tin-dai-tra-2025', '/dao-tao/cong-nghe-thong-tin-dai-tra-2025', NULL, 2, 'programs', 'program', '{\"index\": 2, \"title\": \"Công nghệ thông tin (Đại trà)\", \"course\": \"5857143c-b5cf-469f-9242-8a5e7a7e8ec7\", \"edu_table\": null, \"updated_by\": \"8a2db8fc-eb50-49bb-89d4-b12017d31da0\", \"edu_process\": null, \"learning_outcomes\": null}', '2025-06-28 01:36:00', '2025-06-28 05:38:28'),
('53fdeff2-c816-4c02-921c-9b6ffce530cf', 'default', NULL, 1, 'cong-nghe-thong-tin-nhat-ban-2024', '/dao-tao/cong-nghe-thong-tin-nhat-ban-2024', NULL, 3, 'programs', 'program', '{\"type\": \"Đại trà\", \"index\": 4, \"title\": \"Công nghệ thông tin (Nhật Bản)\", \"course\": \"fa34aafd-71be-4a9c-b80f-32ef272bdd03\", \"edu_table\": \"files/chuong-trinh-khung/ctk-nb-2024.pdf\", \"updated_by\": \"8a2db8fc-eb50-49bb-89d4-b12017d31da0\", \"edu_process\": \"files/tien-trinh-dao-tao/ttdt-nb-2024.png\", \"duplicated_from\": \"09c9953f-3d37-4d5b-8bdb-ef7b1a3213ba\", \"learning_outcomes\": \"files/chuan-dau-ra/cdr-nb-2024.pdf\"}', '2025-06-28 01:36:44', '2025-06-28 21:39:00'),
('5857143c-b5cf-469f-9242-8a5e7a7e8ec7', 'default', NULL, 1, 'khoa-2025', NULL, NULL, NULL, 'courses', 'course', '{\"year\": 2025, \"title\": \"Khóa 2025\", \"updated_by\": \"8a2db8fc-eb50-49bb-89d4-b12017d31da0\"}', '2025-06-27 03:53:08', '2025-06-27 03:53:08'),
('58fab5af-6832-4014-9a63-d368671aadce', 'default', NULL, 1, 'dong-thi-thu-tham', '/nhan-su/dong-thi-thu-tham', '2025-06-12 00:00:00', 8, 'lecturers', 'lecturer', '{\"email\": \"dongthithutham@tdc.edu.vn\", \"major\": [\"532fefc8-274e-4cb7-8107-0c8010543fb1\"], \"title\": \"CN. Đồng Thị Thu Thấm\", \"avatar\": \"images/lecturers/gv-1.jpg\", \"degree\": \"Cử nhân\", \"linkedin\": null, \"position\": \"Thư Ký\", \"priority\": 3, \"updated_by\": \"8a2db8fc-eb50-49bb-89d4-b12017d31da0\", \"description\": \"Thư ký Khoa CNTT\", \"phone_number\": \"(+84) 28 2215 8642\"}', '2025-06-12 07:38:37', '2025-06-12 07:39:06'),
('66039652-3b89-46a9-a5a3-b3c5bfef09b4', 'default', NULL, 1, 'giai-thuong-sao-thang-gieng-2023', NULL, NULL, NULL, 'awards', 'award', '{\"year\": 2023, \"title\": \"Giải thưởng sao tháng giêng 2023\", \"content\": null, \"updated_by\": \"8a2db8fc-eb50-49bb-89d4-b12017d31da0\"}', '2025-07-05 01:38:38', '2025-07-05 01:38:36'),
('66b304bc-d9c2-421b-bf4c-3b7aaef56865', 'default', NULL, 1, 'khoa-2027', NULL, NULL, NULL, 'courses', 'course', '{\"year\": 2027, \"title\": \"Khóa 2027\", \"updated_by\": \"8a2db8fc-eb50-49bb-89d4-b12017d31da0\"}', '2025-06-29 01:03:43', '2025-06-29 01:03:43'),
('6aa2e1df-6352-409e-860b-63e470ca71cf', 'default', NULL, 1, 'khoa-2020', NULL, NULL, NULL, 'courses', 'course', '{\"year\": 2020, \"title\": \"Khóa 2020\", \"updated_by\": \"8a2db8fc-eb50-49bb-89d4-b12017d31da0\"}', '2025-06-27 04:01:44', '2025-06-27 04:01:44'),
('6ebe2a65-593f-44fd-84ae-092b764d8338', 'default', NULL, 1, 'thiet-ke-do-hoa-2025', '/dao-tao/thiet-ke-do-hoa-2025', NULL, 4, 'programs', 'program', '{\"index\": 10, \"title\": \"Thiết kế đồ họa\", \"course\": \"5857143c-b5cf-469f-9242-8a5e7a7e8ec7\", \"edu_table\": null, \"updated_by\": \"8a2db8fc-eb50-49bb-89d4-b12017d31da0\", \"edu_process\": null, \"duplicated_from\": \"7e69e327-504f-4737-a4d7-7fbc9f66dcb8\", \"learning_outcomes\": null}', '2025-06-28 01:41:01', '2025-06-28 05:38:56'),
('7392e090-3960-45f7-bd79-80c0a4357420', 'default', NULL, 1, 'vo-thanh-trung', '/nhan-su/vo-thanh-trung', '2025-06-12 00:00:00', 7, 'lecturers', 'lecturer', '{\"email\": \"trunga2@tdc.edu.vn\", \"major\": [\"532fefc8-274e-4cb7-8107-0c8010543fb1\"], \"title\": \"ThS. Võ Thành Trung\", \"avatar\": \"images/lecturers/gv-8.jpg\", \"degree\": \"Thạc sĩ\", \"linkedin\": null, \"position\": \"Trưởng Khoa\", \"priority\": 1, \"updated_by\": \"8a2db8fc-eb50-49bb-89d4-b12017d31da0\", \"description\": \"Trưởng Khoa CNTT\", \"phone_number\": \"(+84)822158642\"}', '2025-06-12 07:22:52', '2025-06-12 07:30:24'),
('7e69e327-504f-4737-a4d7-7fbc9f66dcb8', 'default', NULL, 1, 'thiet-ke-do-hoa', '/dao-tao/thiet-ke-do-hoa', NULL, 5, 'programs', 'program', '{\"index\": 10, \"title\": \"Thiết kế đồ họa\", \"course\": \"fa34aafd-71be-4a9c-b80f-32ef272bdd03\", \"edu_table\": null, \"updated_by\": \"8a2db8fc-eb50-49bb-89d4-b12017d31da0\", \"edu_process\": null, \"learning_outcomes\": null}', '2025-06-28 01:40:50', '2025-06-28 03:51:21'),
('80583a64-e8f3-40dc-878c-8f27d300b1c9', 'default', NULL, 1, 'khoa-2018', NULL, NULL, NULL, 'courses', 'course', '{\"year\": 2018, \"title\": \"Khóa 2018\", \"updated_by\": \"8a2db8fc-eb50-49bb-89d4-b12017d31da0\"}', '2025-06-27 04:02:19', '2025-06-27 04:02:19'),
('90ca4335-d42e-46b7-8aa9-175928f57689', 'default', NULL, 1, 'khoa-2019', NULL, NULL, NULL, 'courses', 'course', '{\"year\": 2019, \"title\": \"Khóa 2019\", \"updated_by\": \"8a2db8fc-eb50-49bb-89d4-b12017d31da0\"}', '2025-06-27 04:02:03', '2025-06-27 04:02:03'),
('911c7e04-dc2b-401e-947e-a27d51f62bdf', 'default', NULL, 1, 'ngo-minh-anh-thu', '/nhan-su/ngo-minh-anh-thu', '2025-06-12 00:00:00', 5, 'lecturers', 'lecturer', '{\"email\": \"thu.ngo@tdc.edu.vn\", \"major\": [\"318bfa0a-8655-4b29-aaf2-7c7b236e336d\"], \"title\": \"aThS. Ngô Minh Anh Thư\", \"avatar\": \"images/lecturers/gv-6.jpg\", \"degree\": \"Thạc sĩ\", \"linkedin\": null, \"position\": \"Giảng Viên\", \"priority\": 3, \"updated_by\": \"8a2db8fc-eb50-49bb-89d4-b12017d31da0\", \"description\": \"Chuyên ngành: Khoa học máy tính.\", \"phone_number\": \"(+84)822158642\"}', '2025-06-12 07:09:38', '2025-06-12 07:35:38'),
('9b2f2894-f969-44a8-98b2-c0977fdb3c73', 'default', NULL, 1, 'khoa-2017', NULL, NULL, NULL, 'courses', 'course', '{\"year\": 2017, \"title\": \"Khóa 2017\", \"updated_by\": \"8a2db8fc-eb50-49bb-89d4-b12017d31da0\"}', '2025-06-27 04:02:48', '2025-06-27 04:02:48'),
('9cef8284-f10e-4430-a966-a06eb657f573', 'default', NULL, 1, 'tuan-le-trien-lam-thiet-ke-do-hoa-khoa-2022-noi-hoi-tu-sang-tao-va-dam-me-nghe-thuat', '/tin-tuc/tuan-le-trien-lam-thiet-ke-do-hoa-khoa-2022-noi-hoi-tu-sang-tao-va-dam-me-nghe-thuat', '2024-12-10 00:00:00', 1, 'posts', 'post', '{\"title\": \"Tuần Lễ Triển Lãm Thiết Kế Đồ Họa – Khóa 2022: Nơi Hội Tụ Sáng Tạo và Đam Mê Nghệ Thuật\", \"featured\": true, \"sections\": [{\"id\": \"mcbu5k2a\", \"text\": \"Khám phá tài năng qua từng tác phẩm\\nTriển lãm không chỉ đơn thuần là một buổi trưng bày nghệ thuật, mà còn là một không gian sáng tạo nơi các ý tưởng được giao thoa, gặp gỡ. Mỗi sản phẩm được giới thiệu trong sự kiện là một câu chuyện riêng, mang đậm dấu ấn cá nhân, phản ánh tâm tư, trải nghiệm và khát vọng của thế hệ trẻ tài năng.\\n\\nThời gian: Từ 08h00 ngày 09/12/2024 (Thứ Hai) đến 11h00 ngày 14/12/2024 (Thứ Bảy).\\n\\nĐịa điểm: Trung tâm Thư Viện (D05-01), Trường Cao đẳng Công nghệ Thủ Đức.\", \"type\": \"contents\", \"enabled\": true}, {\"id\": \"mcbuafkx\", \"text\": \"**Cơ hội học hỏi và kết nối**\\nĐây là dịp để sinh viên, giảng viên, và những người yêu nghệ thuật giao lưu, chia sẻ kinh nghiệm, đồng thời lan tỏa nguồn cảm hứng sáng tạo. Ban tổ chức hy vọng rằng, mỗi người tham gia sẽ tìm thấy niềm đam mê và động lực để khám phá thêm khả năng của bản thân qua những khoảnh khắc thưởng lãm đầy ý nghĩa.\", \"type\": \"contents\", \"images\": [{\"id\": \"mcbuc8tm\", \"image\": \"images/events/event-4/event-4-1.jpg\", \"image_description\": \"Hình của sự kiện nề\"}], \"enabled\": true}, {\"id\": \"mcbvh53y\", \"type\": \"slideshow\", \"images\": [\"images/events/event-4/event-4-1.jpg\", \"images/events/event-4/event-4-2.jpg\", \"images/events/event-4/event-4-3.jpg\"], \"enabled\": false, \"image_slider\": [\"images/events/event-4/event-4-1.jpg\", \"images/events/event-4/event-4-2.jpg\", \"images/events/event-4/event-4-3.jpg\"]}, {\"id\": \"mcbwvpeo\", \"text\": \"**Hoạt động bình chọn sôi nổi**\\nKhi tham gia triển lãm, quý thầy cô và các bạn sinh viên còn có cơ hội bình chọn cho những tác phẩm mình yêu thích nhất thông qua mã QR được cung cấp tại sự kiện. Hoạt động bình chọn này cũng sẽ được ghi nhận vào điểm rèn luyện học kỳ 1 năm học 2024-2025 của sinh viên.\", \"type\": \"contents\", \"enabled\": true}, {\"id\": \"mcbxvcn1\", \"text\": \"**Thông điệp từ ban tổ chức**\\nKhoa CNTT rất mong được đón tiếp đông đảo quý Thầy Cô, sinh viên, và những người yêu nghệ thuật đến tham dự, thưởng lãm và cùng tạo nên những ký ức đẹp tại sự kiện. Hãy cùng nhau lan tỏa niềm đam mê nghệ thuật và khơi gợi sức sáng tạo trong mỗi chúng ta!\\n\\nHãy đến và cảm nhận sự thăng hoa của nghệ thuật tại Tuần lễ triển lãm các sản phẩm thiết kế đồ họa – Khóa 2022!\", \"type\": \"contents\", \"images\": [{\"id\": \"mcbxvdys\", \"image\": \"images/events/event-4/event-4-3.jpg\", \"image_description\": \"Sư kiện sôi nổi\"}], \"enabled\": true}], \"thumbnail\": \"images/events/event-4.jpg\", \"updated_by\": \"8a2db8fc-eb50-49bb-89d4-b12017d31da0\", \"title_description\": \"Nơi Hội Tụ Sáng Tạo và Đam Mê Nghệ Thuật Khoa CNTT - Trường Cao đẳng Công nghệ Thủ Đức hân hạnh giới thiệu Tuần lễ triển lãm các sản phẩm thiết kế đồ họa – Khóa 2022, một sự kiện văn hóa nghệ thuật đặc sắc diễn ra tại Trung tâm Thư Viện (D05-01) từ ngày 09/12/2024 (Thứ Hai) đến hết ngày 14/12/2024 (Thứ Bảy).\"}', '2025-06-25 03:53:27', '2025-07-05 04:55:12'),
('a0093804-ab25-4557-8e61-10f21447e9fa', 'default', NULL, 1, 'nguyen-phong-lan', '/nhan-su/nguyen-phong-lan', '2025-06-12 00:00:00', 3, 'lecturers', 'lecturer', '{\"email\": null, \"major\": [\"f42a9a4f-fb67-4344-99dc-45abeebe6264\"], \"title\": \"Ths. Nguyễn Phong Lan\", \"avatar\": \"images/lecturers/gv-5.jpg\", \"degree\": \"Thạc sĩ\", \"linkedin\": null, \"position\": \"Giảng Viên\", \"priority\": 3, \"thumbnail\": [\"images/lecturers/gv-5.jpg\"], \"updated_by\": \"8a2db8fc-eb50-49bb-89d4-b12017d31da0\", \"description\": null, \"phone_number\": null}', '2025-06-07 08:36:48', '2025-06-12 07:47:28'),
('a6a5a668-8c68-4332-8480-a77e4acada92', 'default', NULL, 1, 'dao-tao', '/dao-tao', NULL, 5, 'pages', 'page', '{\"title\": \"Đào Tạo\", \"author\": \"8a2db8fc-eb50-49bb-89d4-b12017d31da0\", \"parent\": \"f11292ac-cf88-49a8-96a7-b8e126103704\", \"content\": null, \"template\": \"programs/index\", \"updated_by\": \"8a2db8fc-eb50-49bb-89d4-b12017d31da0\", \"assets_field\": []}', '2025-06-11 21:56:27', '2025-06-28 02:06:31'),
('aadb331c-6626-44a2-9011-670e1cd812bd', 'default', NULL, 1, 'le-tho', '/nhan-su/le-tho', '2025-06-12 00:00:00', 6, 'lecturers', 'lecturer', '{\"email\": \"tholecntt@yahoo.com\", \"major\": [\"eb74e785-6622-4f5f-9cfd-c47bff603154\"], \"title\": \"ThS. Lê Thọ\", \"avatar\": \"images/lecturers/gv-7.jpg\", \"degree\": \"Thạc sĩ\", \"parent\": null, \"linkedin\": null, \"position\": \"Giảng Viên\", \"updated_by\": \"8a2db8fc-eb50-49bb-89d4-b12017d31da0\", \"description\": \"2011: Thạc sỹ Khoa học máy tính, ĐHKH Huế\", \"phone_number\": \"(+84)822158642\"}', '2025-06-12 07:14:54', '2025-06-12 07:14:54'),
('aaf6eeaa-0c44-47c7-b40c-083f61adcdd3', 'default', NULL, 1, 'khoa-2026', NULL, NULL, NULL, 'courses', 'course', '{\"year\": 2026, \"title\": \"Khóa 2026\", \"updated_by\": \"8a2db8fc-eb50-49bb-89d4-b12017d31da0\"}', '2025-06-29 00:29:00', '2025-06-29 00:29:00'),
('b3507678-c320-4b59-862b-08aa60c01b3a', 'default', NULL, 1, 'khoa-2023', NULL, NULL, NULL, 'courses', 'course', '{\"year\": 2023, \"title\": \"Khóa 2023\", \"updated_by\": \"8a2db8fc-eb50-49bb-89d4-b12017d31da0\"}', '2025-06-27 03:54:11', '2025-06-27 03:54:11'),
('c658f0ae-9f2e-4ec8-afee-72488c15436e', 'default', NULL, 1, 'cong-nghe-thong-tin-nhat-ban', '/dao-tao/cong-nghe-thong-tin-nhat-ban', NULL, 6, 'programs', 'program', '{\"type\": \"Đại trà\", \"index\": 4, \"title\": \"Công nghệ thông tin (Nhật Bản)\", \"course\": \"5857143c-b5cf-469f-9242-8a5e7a7e8ec7\", \"edu_table\": null, \"updated_by\": \"8a2db8fc-eb50-49bb-89d4-b12017d31da0\", \"edu_process\": null, \"duplicated_from\": \"53fdeff2-c816-4c02-921c-9b6ffce530cf\", \"learning_outcomes\": null}', '2025-06-28 01:37:56', '2025-06-28 03:51:21'),
('c899cbc6-bf0b-452d-99ac-a3bf5ff02a90', 'default', NULL, 1, 'truyen-thong-va-mang-may-tinh', '/dao-tao/truyen-thong-va-mang-may-tinh', NULL, 7, 'programs', 'program', '{\"index\": 12, \"title\": \"Truyền thông và mạng máy tính\", \"course\": \"b3507678-c320-4b59-862b-08aa60c01b3a\", \"edu_table\": null, \"updated_by\": \"8a2db8fc-eb50-49bb-89d4-b12017d31da0\", \"edu_process\": null, \"duplicated_from\": \"f503345e-2169-4ed6-acbb-ed1c20fef5ac\", \"learning_outcomes\": null}', '2025-06-28 01:40:01', '2025-06-28 03:51:21'),
('d7cedc2a-d238-4fda-b17f-28f818cdec93', 'default', NULL, 1, 'nguyen-thi-hong-my', '/nhan-su/nguyen-thi-hong-my', NULL, NULL, 'lecturers', 'lecturer', '{\"email\": null, \"major\": [\"eb74e785-6622-4f5f-9cfd-c47bff603154\"], \"title\": \"ThS. Nguyễn Thị Hồng Mỹ\", \"avatar\": \"images/lecturers/gv-3.jpg\", \"degree\": \"Thạc sĩ\", \"linkedin\": null, \"position\": \"Giảng Viên\", \"thumbnail\": [\"images/lecturers/gv-3.jpg\"], \"updated_by\": \"8a2db8fc-eb50-49bb-89d4-b12017d31da0\", \"description\": null, \"phone_number\": null}', '2025-06-07 08:33:52', '2025-06-12 04:05:59'),
('da687895-0627-4c9a-9b7f-8d522c3f7b02', 'default', NULL, 1, 'mang-may-tinh', NULL, NULL, NULL, 'majors', 'major', '{\"pos\": 4, \"index\": 4, \"title\": \"Mạng máy tính\", \"updated_by\": \"8a2db8fc-eb50-49bb-89d4-b12017d31da0\", \"description\": \"Sinh viên có khả năng nghiên cứu, thiết kế, phát triển và triển khai các ứng dụng về các công nghệ Mạng máy tính như cài đặt, quản trị, khắc phục sự cố hệ thống mạng máy tính; khai thác hiệu quả các dịch vụ mạng, phát triển các dịch vụ truyền thông trên mạng Internet, mạng truyền thông di động, Linux và phần mềm nguồn mở, an toàn thông tin trên mạng. Sau khi tốt nghiệp, sinh viên có thể tham gia vào các bộ phận quản trị hệ thống mạng của các công ty, Sở, Ban, Ngành và các Trung tâm tin học trong cả nước.\", \"head_of_department\": null}', '2025-06-07 08:30:32', '2025-06-09 08:00:16'),
('e1714626-ca99-4486-8b72-b510fc2607f8', 'default', NULL, 1, 'khoa-2021', NULL, NULL, NULL, 'courses', 'course', '{\"year\": 2021, \"title\": \"Khóa 2021\", \"updated_by\": \"8a2db8fc-eb50-49bb-89d4-b12017d31da0\"}', '2025-06-27 04:01:27', '2025-06-27 04:01:27'),
('e5df6ab0-fdfd-49d8-8e6e-69982d914a49', 'default', NULL, 1, 'sinh-vien-5-tot-cap-thanh', NULL, NULL, NULL, 'awards', 'award', '{\"year\": 2023, \"title\": \"Sinh viên 5 tốt cấp thành\", \"content\": null, \"updated_by\": \"8a2db8fc-eb50-49bb-89d4-b12017d31da0\"}', '2025-07-04 08:29:00', '2025-07-04 08:28:59'),
('eb74e785-6622-4f5f-9cfd-c47bff603154', 'default', NULL, 1, 'he-thong-thong-tin', NULL, NULL, NULL, 'majors', 'major', '{\"pos\": 1, \"index\": 1, \"title\": \"Hệ thống thông tin\", \"updated_by\": \"8a2db8fc-eb50-49bb-89d4-b12017d31da0\", \"description\": \"Mục tiêu của bộ môn này là cung cấp cho sinh viên kiến thức và kỹ năng để thiết kế, phát triển, quản lý và tối ưu hóa các phần mềm. Các nội dung chính của bộ môn Hệ thống thông tin bao gồm: phân tích và thiết kế hệ thống, quản lý cơ sở dữ liệu, các công nghệ mới trong hệ thống thông tin, bảo mật thông tin, ...\", \"head_of_department\": null}', '2025-06-07 08:29:24', '2025-06-09 08:00:40'),
('edcc383e-a32f-4952-8fa9-2ba92f52dbb7', 'default', NULL, 1, 'nhan-su', '/nhan-su', NULL, 4, 'pages', 'page', '{\"title\": \"Giảng Viên\", \"author\": \"8a2db8fc-eb50-49bb-89d4-b12017d31da0\", \"parent\": \"f11292ac-cf88-49a8-96a7-b8e126103704\", \"content\": null, \"template\": \"lecturers/index\", \"updated_by\": \"8a2db8fc-eb50-49bb-89d4-b12017d31da0\"}', '2025-06-07 05:45:45', '2025-06-11 21:56:35'),
('f11292ac-cf88-49a8-96a7-b8e126103704', 'default', NULL, 1, 'home', '/', NULL, 1, 'pages', 'page', '{\"title\": \"Trang Chủ\", \"author\": \"8a2db8fc-eb50-49bb-89d4-b12017d31da0\", \"content\": \"hello hello\", \"template\": \"home\", \"updated_by\": \"8a2db8fc-eb50-49bb-89d4-b12017d31da0\"}', '2025-03-05 07:41:56', '2025-06-11 21:49:23'),
('f135b84c-ad1f-4518-bee4-c159b702d95a', 'default', NULL, 1, 'tieu-kim-cuong', '/nhan-su/tieu-kim-cuong', '2025-06-12 00:00:00', 9, 'lecturers', 'lecturer', '{\"email\": \"tkcuong.fee.hut@gmail.com\", \"major\": [\"eb74e785-6622-4f5f-9cfd-c47bff603154\"], \"title\": \"ThS. Tiêu Kim Cương\", \"avatar\": \"images/lecturers/gv-9.jpg\", \"degree\": \"Thạc sĩ\", \"parent\": null, \"linkedin\": null, \"position\": \"Giảng Viên\", \"priority\": 3, \"updated_by\": \"8a2db8fc-eb50-49bb-89d4-b12017d31da0\", \"description\": \"**LÝ LỊCH KHOA HỌC**\\n\\n**1. Quá trình đào tạo**  \\n**a. Tốt nghiệp đại học**: Kỹ sư CNTT, tại Đại học Bách khoa Hà Nội  \\n**b. Tốt nghiệp sau đại học**:  \\n- Thạc sỹ Quản lý giáo dục: Đại học Kỹ thuật tổng hợp Dresden, CHLB Đức và Đại học Bách khoa Hà Nội  \\n- Thạc sỹ Công nghệ thông tin: Viện tin học quốc tế cho các nước nói tiếng Pháp (IFI) và Đại học Bách khoa Hà Nội  \\n\\n**2. Trình độ ngoại ngữ**  \\na. Tiếng Pháp (Nghe, nói, đọc, viết)  \\nb. Tiếng Đức (Nghe, đọc, viết)  \\nc. Tiếng Anh (Đọc, viết)  \\n\\n**3. Quá trình công tác**  \\n1. 1999-2012: Giảng viên Đại học Bách khoa Hà Nội  \\n2. 2013 cho đến hiện tại: TDC  \\n\\n**4. Nghiên cứu khoa học**  \\n\\n**4.1 Các đề tài nghiên cứu đã tham gia**  \\na. Xây dựng phần mềm quản lý Thi học kỳ qua mạng nội bộ của Khoa Sư phạm Kỹ thuật: Đề tài nghiên cứu khoa học trọng điểm cấp trường, chủ nhiệm, 2008  \\nb. Xây dựng bộ công cụ chuyển đổi bán tự động một bài giảng trực tuyến thành bài giảng theo chuẩn SCORM dựa trên giải pháp phần mềm mã nguồn mở / Elearning: Đề tài nghiên cứu khoa học trọng điểm cấp trường, chủ nhiệm, 2007  \\nc. Tính linh động, ngữ cảnh và sự thích nghi trong hệ thống giáo dục điện tử: Khoa CNTT, trường ENST- Bretagne, Cộng hòa Pháp, thành viên phát triển, 2007  \\nd. Các chuẩn cho giáo dục từ xa: Viện tin học quốc tế các nước nói tiếng Pháp (IFI), chủ nhiệm, 2007  \\ne. Hệ thống E-Commod và xây dựng các tác tử thông minh thay thế vai trò của con người: Viện tin học quốc tế các nước nói tiếng Pháp (IFI) kết hợp với viện nghiên cứu của Thái Lan, thành viên, 2006  \\nf. Hệ đa tác tử và phần mềm thương lượng mua bán trực tuyến qua mạng Internet và mạng di động (MarViT): Viện tin học quốc tế các nước nói tiếng Pháp (IFI), thành viên, 2006  \\n\\n**4.2 Các giáo trình, bài giảng đã xuất bản**  \\na. Tiêu Kim Cương. Giáo trình Ngôn ngữ lập trình C. Sách dùng cho các trường đào tạo hệ Trung học chuyên nghiệp. Nhà xuất bản Giáo dục, Hà Nội 2004  \\nb. Tiêu Kim Cương (Chủ biên), Lâm Quang Tùng, Mai Thanh Trúc, Nguyễn Hương Giang. Giáo trình Tin học. Sách dùng cho các trường dạy nghề hệ 12-24 tháng. Nhà xuất bản Giáo dục, Hà Nội 2006  \\nc. Tiêu Kim Cương. Giáo trình cho bài giảng môn học Lý luận dạy học. Phần đại cương – Cho sinh viên các lớp Sư phạm Kỹ thuật. Nhà xuất bản Bách khoa, Hà Nội 2004  \\n\\n**4.3 Các bài báo đã công bố**  \\na. e-Learning et le problème de partage de ressources pédagogiques sur Internet: Journal of Technical Education Science. Volume 2, N° 4, 2007, Page 69  \\nb. Tieu K.C., Nguyen H.Q. (2007). e-Learning et le problème de partage de ressources pédagogiques sur Internet, Workshop on E-learning Architecture and Technology (ELATE\'07), Vung Tau (Vietnam)  \\nc. Chuyển đổi bán tự động một khóa học trực tuyến sang chuẩn SCORM 2004 dựa trên giải pháp phần mềm mã nguồn mở: Tạp chí Khoa học và công nghệ các trường Đại học Kỹ thuật. Journal of Science & Technology. Số 63, 2008, trang 11  \\nd. Tiêu Kim Cương (2009). Phần mềm mã nguồn mở và vấn đề tổ chức thi học kỳ qua mạng. Kỷ yếu hội thảo “Đổi mới phương pháp giảng dạy đại học”, Đại học Bách khoa Hà Nội  \\ne. Dương Kim Oanh, Tiêu Kim Cương, Nguyễn Thành Công (2009). MOODLE và việc tổ chức thi học kỳ qua mạng. Áp dụng cho môn Tâm lý học chuyên ngành – Khoa SPKT ĐHBK Hà Nội. Tạp chí Khoa học giáo dục Kỹ thuật  \\n\\n**5. Hoạt động giảng dạy và nghiên cứu khoa học**  \\n\\n**5.1 Hoạt động giảng dạy**  \\n*Có khả năng giảng dạy các môn học sau*:  \\n- Kiến trúc máy tính  \\n- Công nghệ phần mềm  \\n- Vi xử lý  \\n- Cơ sở dữ liệu  \\n- Kỹ thuật lập trình (C)  \\n- Cấu trúc dữ liệu và giải thuật  \\n- Ngôn ngữ lập trình Java  \\n- Lập trình Android (Căn bản và nâng cao)  \\n- Lập trình IOS  \\n- Chuyên đề Lập trình Web trên di động  \\n- Hệ đa tác tử (Multi-Agent)  \\n\\n**5.2 Các hướng nghiên cứu chính**  \\n- Mô phỏng các hệ thống phức tạp  \\n- Thiết kế phần mềm hướng đa tác tử  \\n- Phát triển các ứng dụng trên di động  \\n- Phát triển chương trình đào tạo  \\n- e-Learning, m-Learning, p-Learning, dạy học tương tác, dạy học tương thích\", \"phone_number\": \"(+84) 822158642\"}', '2025-06-12 07:45:07', '2025-06-12 07:45:07'),
('f42a9a4f-fb67-4344-99dc-45abeebe6264', 'default', NULL, 1, 'do-hoa', NULL, NULL, NULL, 'majors', 'major', '{\"pos\": 3, \"index\": 3, \"title\": \"Đồ họa\", \"updated_by\": \"8a2db8fc-eb50-49bb-89d4-b12017d31da0\", \"description\": \"Giảng dạy các môn học của chuyên ngành thiết kế đồ họa và công nghệ thông tin đa phương tiện như Photoshop, Illustrator, Corel, 3Dmax, Xử lý phim, Kỹ thuật in ấn.. Kiến thức và kỹ năng được hình thành vững chắc hệ thống bài tập lớn, đồ án môn học, các chuyên đề về ứng dụng đồ họa trong thực tế không những giúp sinh viên tác phong chuyên nghiệp trong xử lý đồ họa mà còn có khả năng đáp ứng nhu cầu nhân lực trình độ cao của ngành đồ họa trong nước.\", \"head_of_department\": null}', '2025-06-07 08:30:01', '2025-06-09 08:00:08'),
('f503345e-2169-4ed6-acbb-ed1c20fef5ac', 'default', NULL, 1, 'truyen-thong-va-mang-may-tinh', '/dao-tao/truyen-thong-va-mang-may-tinh', NULL, 8, 'programs', 'program', '{\"index\": 12, \"title\": \"Truyền thông và mạng máy tính\", \"course\": \"fa34aafd-71be-4a9c-b80f-32ef272bdd03\", \"edu_table\": null, \"updated_by\": \"8a2db8fc-eb50-49bb-89d4-b12017d31da0\", \"edu_process\": null, \"learning_outcomes\": null}', '2025-06-28 01:39:47', '2025-06-28 03:51:21'),
('fa34aafd-71be-4a9c-b80f-32ef272bdd03', 'default', NULL, 1, 'khoa-2024', NULL, NULL, NULL, 'courses', 'course', '{\"year\": 2024, \"title\": \"Khóa 2024\", \"updated_by\": \"8a2db8fc-eb50-49bb-89d4-b12017d31da0\"}', '2025-06-27 02:58:31', '2025-06-27 02:58:29'),
('faaeeee8-0308-495f-80ac-77e67771c47e', 'default', NULL, 1, 'sinh-vien', '/sinh-vien', NULL, 6, 'pages', 'page', '{\"title\": \"Sinh Viên\", \"author\": \"8a2db8fc-eb50-49bb-89d4-b12017d31da0\", \"parent\": \"f11292ac-cf88-49a8-96a7-b8e126103704\", \"content\": null, \"template\": \"students/index\", \"updated_by\": \"8a2db8fc-eb50-49bb-89d4-b12017d31da0\"}', '2025-06-11 21:58:51', '2025-06-26 02:16:00'),
('home', 'default', NULL, 1, 'admin', '/admin', NULL, 2, 'pages', 'pages', '{\"title\": \"Admin\", \"author\": \"8a2db8fc-eb50-49bb-89d4-b12017d31da0\", \"parent\": \"f11292ac-cf88-49a8-96a7-b8e126103704\", \"content\": \"## Welcome to your brand new Statamic site!\\n\\nNot sure what to do next? Here are a few ideas, but feel free to explore in your own way, in your own time.\\n\\n- [Jump into the Control Panel](/cp) and edit this page or begin setting up your own collections and blueprints.\\n- [Head to the docs](https://statamic.dev) and learn how Statamic works.\\n- [Watch some Statamic videos](https://youtube.com/statamic) on YouTube.\\n- [Join our Discord chat](https://statamic.com/discord) and meet thousands of other Statamic developers.\\n- [Start a discussion](https://github.com/statamic/cms/discussions) and get answers to your questions.\\n- [Star Statamic on Github](https://github.com/statamic/cms) if you enjoy using it!\", \"template\": \"admin\", \"updated_by\": \"8a2db8fc-eb50-49bb-89d4-b12017d31da0\"}', '2025-02-24 22:30:02', '2025-03-05 07:51:25');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fieldsets`
--

DROP TABLE IF EXISTS `fieldsets`;
CREATE TABLE IF NOT EXISTS `fieldsets` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `handle` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` json NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `fieldsets_handle_unique` (`handle`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fieldsets`
--

INSERT INTO `fieldsets` (`id`, `handle`, `data`, `created_at`, `updated_at`) VALUES
(1, 'slideshow', '{\"title\": \"Slideshow\", \"fields\": [{\"field\": {\"type\": \"assets\", \"display\": \"Images\", \"container\": \"assets\"}, \"handle\": \"image_slider\"}]}', '2025-06-22 07:55:10', '2025-06-25 04:43:09'),
(2, 'post_builder', '{\"title\": \"Post Builder\", \"fields\": [{\"field\": {\"sets\": {\"new_set_group\": {\"sets\": {\"table\": {\"fields\": [{\"import\": \"table\"}], \"display\": \"Table\"}, \"contents\": {\"fields\": [{\"import\": \"post_content\"}], \"display\": \"Contents\"}, \"accordion\": {\"fields\": [{\"import\": \"accordion\"}], \"display\": \"Accordion\"}, \"slideshow\": {\"fields\": [{\"import\": \"slideshow\"}], \"display\": \"Slideshow\"}}, \"display\": \"New Set Group\"}}, \"type\": \"replicator\", \"display\": \"Sections\"}, \"handle\": \"sections\"}]}', '2025-06-22 08:00:53', '2025-06-25 03:27:47'),
(3, 'jumbotron', '{\"title\": \"Jumbotron\", \"fields\": [{\"field\": {\"type\": \"text\", \"display\": \"Jumbotron Title\"}, \"handle\": \"jumbotron_title\"}, {\"field\": {\"type\": \"text\", \"display\": \"Jumbotron Subtitle\"}, \"handle\": \"jumbotron_subtitle\"}]}', '2025-06-22 08:17:31', '2025-06-25 03:27:19'),
(4, 'accordion', '{\"title\": \"Accordion\", \"fields\": [{\"field\": {\"type\": \"grid\", \"fields\": [{\"field\": {\"type\": \"text\", \"display\": \"Card Title\"}, \"handle\": \"card_title\"}, {\"field\": {\"type\": \"text\", \"display\": \"Card Content\"}, \"handle\": \"card_content\"}], \"display\": \"Cards\"}, \"handle\": \"cards\"}]}', '2025-06-22 08:35:14', '2025-06-22 08:37:24'),
(5, 'table', '{\"title\": \"Table\", \"fields\": [{\"field\": {\"type\": \"table\", \"display\": \"Table Field\"}, \"handle\": \"table_field\"}]}', '2025-06-22 08:37:46', '2025-06-22 08:39:20'),
(6, 'post_content', '{\"title\": \"Post Content\", \"fields\": [{\"field\": {\"type\": \"grid\", \"fields\": [{\"field\": {\"type\": \"assets\", \"display\": \"Image\", \"container\": \"assets\", \"max_files\": 1, \"min_files\": 1}, \"handle\": \"image\"}, {\"field\": {\"type\": \"text\", \"display\": \"Image Description\"}, \"handle\": \"image_description\"}], \"display\": \"Images\"}, \"handle\": \"images\"}, {\"field\": {\"type\": \"markdown\", \"folder\": \"images\", \"buttons\": [\"bold\", \"italic\", \"strikethrough\", \"unorderedlist\", \"orderedlist\", \"quote\", \"link\"], \"display\": \"Text\", \"container\": \"assets\"}, \"handle\": \"text\"}]}', '2025-06-22 08:47:19', '2025-06-25 03:58:53');

-- --------------------------------------------------------

--
-- Table structure for table `forms`
--

DROP TABLE IF EXISTS `forms`;
CREATE TABLE IF NOT EXISTS `forms` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `handle` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `settings` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `forms_handle_unique` (`handle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `form_submissions`
--

DROP TABLE IF EXISTS `form_submissions`;
CREATE TABLE IF NOT EXISTS `form_submissions` (
  `id` decimal(14,4) NOT NULL,
  `form` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` json DEFAULT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `form_submissions_id_unique` (`id`),
  UNIQUE KEY `form_submissions_form_created_at_unique` (`form`,`created_at`),
  KEY `form_submissions_form_index` (`form`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `global_sets`
--

DROP TABLE IF EXISTS `global_sets`;
CREATE TABLE IF NOT EXISTS `global_sets` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `handle` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `settings` json NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `global_sets_handle_unique` (`handle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `global_set_variables`
--

DROP TABLE IF EXISTS `global_set_variables`;
CREATE TABLE IF NOT EXISTS `global_set_variables` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `handle` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `origin` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` json NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `global_set_variables_handle_index` (`handle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
CREATE TABLE IF NOT EXISTS `jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
CREATE TABLE IF NOT EXISTS `job_batches` (
  `id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_03_07_100000_create_asset_containers_table', 1),
(5, '2024_03_07_100000_create_asset_table', 1),
(6, '2024_03_07_100000_create_blueprints_table', 1),
(7, '2024_03_07_100000_create_collections_table', 1),
(8, '2024_03_07_100000_create_entries_table_with_string_ids', 1),
(9, '2024_03_07_100000_create_fieldsets_table', 1),
(10, '2024_03_07_100000_create_form_submissions_table', 1),
(11, '2024_03_07_100000_create_forms_table', 1),
(12, '2024_03_07_100000_create_global_variables_table', 1),
(13, '2024_03_07_100000_create_globals_table', 1),
(14, '2024_03_07_100000_create_navigation_trees_table', 1),
(15, '2024_03_07_100000_create_navigations_table', 1),
(16, '2024_03_07_100000_create_taxonomies_table', 1),
(17, '2024_03_07_100000_create_terms_table', 1),
(18, '2024_03_07_100000_create_tokens_table', 1),
(19, '2024_05_15_100000_modify_form_submissions_id', 1),
(20, '2024_07_16_100000_create_sites_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `navigations`
--

DROP TABLE IF EXISTS `navigations`;
CREATE TABLE IF NOT EXISTS `navigations` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `handle` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `settings` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `navigations_handle_unique` (`handle`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `navigations`
--

INSERT INTO `navigations` (`id`, `handle`, `title`, `settings`, `created_at`, `updated_at`) VALUES
(1, 'main_nav', 'Main Nav', '{\"max_depth\": null, \"collections\": [\"pages\"], \"expects_root\": false, \"select_across_sites\": false}', '2025-06-11 21:39:07', '2025-06-11 21:43:09');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sites`
--

DROP TABLE IF EXISTS `sites`;
CREATE TABLE IF NOT EXISTS `sites` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `handle` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attributes` json NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sites_handle_unique` (`handle`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sites`
--

INSERT INTO `sites` (`id`, `handle`, `name`, `url`, `locale`, `lang`, `attributes`, `created_at`, `updated_at`) VALUES
(1, 'default', '{{ config:app:name }}', '/', 'en_US', 'en', '[]', '2025-02-28 08:11:18', '2025-02-28 08:11:18');

-- --------------------------------------------------------

--
-- Table structure for table `taxonomies`
--

DROP TABLE IF EXISTS `taxonomies`;
CREATE TABLE IF NOT EXISTS `taxonomies` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `handle` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sites` json DEFAULT NULL,
  `settings` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `taxonomies_handle_unique` (`handle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `taxonomy_terms`
--

DROP TABLE IF EXISTS `taxonomy_terms`;
CREATE TABLE IF NOT EXISTS `taxonomy_terms` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `site` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `taxonomy` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` json NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `taxonomy_terms_slug_taxonomy_site_unique` (`slug`,`taxonomy`,`site`),
  KEY `taxonomy_terms_site_index` (`site`),
  KEY `taxonomy_terms_uri_index` (`uri`),
  KEY `taxonomy_terms_taxonomy_index` (`taxonomy`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tokens`
--

DROP TABLE IF EXISTS `tokens`;
CREATE TABLE IF NOT EXISTS `tokens` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `handler` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` json NOT NULL,
  `expire_at` timestamp NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tokens_token_unique` (`token`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tokens`
--

INSERT INTO `tokens` (`id`, `token`, `handler`, `data`, `expire_at`, `created_at`, `updated_at`) VALUES
(1, 'J3HEWiEMFFOdwycvMOgrJXu3yq2a9qaLayp5boeO', 'Statamic\\Tokens\\Handlers\\LivePreview', '[]', '2025-03-05 08:32:44', '2025-03-05 07:32:44', '2025-03-05 07:32:44'),
(2, 'tU973H6KGjbe9R5oCBBiuvSoDCuCEzjSbL1RxnUD', 'Statamic\\Tokens\\Handlers\\LivePreview', '[]', '2025-05-27 20:35:03', '2025-05-27 19:35:03', '2025-05-27 19:35:03'),
(3, 'xphaRCwZTq3JWzUIjZJ5FeuuQiwbqYEU82cS8L2h', 'Statamic\\Tokens\\Handlers\\LivePreview', '[]', '2025-05-27 20:35:20', '2025-05-27 19:35:20', '2025-05-27 19:35:20'),
(4, 'bNnyT8NehR5Q01bHYVWd1XeQR2CAq0ctGtUjmQad', 'Statamic\\Tokens\\Handlers\\LivePreview', '[]', '2025-05-27 20:51:08', '2025-05-27 19:47:59', '2025-05-27 19:51:08'),
(5, '4jaCj5nSLvQhxegGzREbg4pC3TcYlS86dZwzSODZ', 'Statamic\\Tokens\\Handlers\\LivePreview', '[]', '2025-06-07 06:46:03', '2025-06-07 05:46:03', '2025-06-07 05:46:03'),
(6, 'JjnPyO0DhPQ2UcZvYNDUNouVSwZ7tbEYEhQb1MIG', 'Statamic\\Tokens\\Handlers\\LivePreview', '[]', '2025-06-07 06:46:17', '2025-06-07 05:46:17', '2025-06-07 05:46:17'),
(7, 'hy4v7FWd6IuDrlfXcTakV37CBIgA1CkNJVPL6OrR', 'Statamic\\Tokens\\Handlers\\LivePreview', '[]', '2025-06-12 03:47:25', '2025-06-12 02:47:25', '2025-06-12 02:47:25'),
(8, '8ehvmpTeLGjtuJT08Z2iy71HuI5AR1tXYhus17Kf', 'Statamic\\Tokens\\Handlers\\LivePreview', '[]', '2025-06-12 04:07:50', '2025-06-12 03:07:50', '2025-06-12 03:07:50'),
(9, 'QcJCJ5TBeCWbtaywfj2rZUvktVjQqdSSsTiTz3Fa', 'Statamic\\Tokens\\Handlers\\LivePreview', '[]', '2025-06-12 04:08:49', '2025-06-12 03:08:25', '2025-06-12 03:08:49'),
(10, 'GoUfFGvEI4HF7SpXlRaZfsMN2E9yta7WImCi1KLL', 'Statamic\\Tokens\\Handlers\\LivePreview', '[]', '2025-06-12 04:16:20', '2025-06-12 03:16:20', '2025-06-12 03:16:20'),
(11, 'X9VHzAhbjMXIsENihZnX1M504vsgI1N5oCQsBdJF', 'Statamic\\Tokens\\Handlers\\LivePreview', '[]', '2025-06-12 04:21:35', '2025-06-12 03:21:35', '2025-06-12 03:21:35'),
(12, 'Ibw06JkYllVWiwoMn60CWrhCugUplgyaoZohG5H6', 'Statamic\\Tokens\\Handlers\\LivePreview', '[]', '2025-06-12 05:09:46', '2025-06-12 04:09:46', '2025-06-12 04:09:46'),
(13, '24yMUFeT9CpRXhoKgyXZXPhDMwIej7Y4onHWPGnz', 'Statamic\\Tokens\\Handlers\\LivePreview', '[]', '2025-06-25 04:48:21', '2025-06-25 03:48:21', '2025-06-25 03:48:21'),
(14, 'zk4xrBjTagUW2x6KDjdhBGzT5DMYlH2cmeA35PW2', 'Statamic\\Tokens\\Handlers\\LivePreview', '[]', '2025-06-28 06:22:38', '2025-06-28 05:22:38', '2025-06-28 05:22:38'),
(15, 'jFZZRPYDSux1PDKcwKOh0Yasd6ZiLKWZYJ0YKo1v', 'Statamic\\Tokens\\Handlers\\LivePreview', '[]', '2025-07-04 09:47:06', '2025-07-04 08:47:06', '2025-07-04 08:47:06');

-- --------------------------------------------------------

--
-- Table structure for table `trees`
--

DROP TABLE IF EXISTS `trees`;
CREATE TABLE IF NOT EXISTS `trees` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `handle` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tree` json DEFAULT NULL,
  `settings` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `trees_handle_type_locale_unique` (`handle`,`type`,`locale`),
  KEY `trees_type_index` (`type`),
  KEY `trees_locale_index` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `trees`
--

INSERT INTO `trees` (`id`, `handle`, `type`, `locale`, `tree`, `settings`, `created_at`, `updated_at`) VALUES
(1, 'pages', 'collection', 'default', '[{\"entry\": \"f11292ac-cf88-49a8-96a7-b8e126103704\"}, {\"entry\": \"home\"}, {\"entry\": \"313c9c65-c3d2-42a3-9652-b3796e4226ce\"}, {\"entry\": \"edcc383e-a32f-4952-8fa9-2ba92f52dbb7\"}, {\"entry\": \"a6a5a668-8c68-4332-8480-a77e4acada92\"}, {\"entry\": \"faaeeee8-0308-495f-80ac-77e67771c47e\"}]', '[]', '2025-02-24 22:30:02', '2025-06-11 21:58:51'),
(2, 'posts', 'collection', 'default', '[{\"entry\": \"9cef8284-f10e-4430-a966-a06eb657f573\"}, {\"entry\": \"31c84ce3-287b-4194-8d57-bf3614642f76\"}, {\"entry\": \"28b66ff0-4bea-411c-8a15-3e5687fdd245\"}, {\"entry\": \"49a18f3e-fb82-4bfa-8add-d366d20536d5\"}, {\"entry\": \"500c8bc7-081a-40b7-a6d6-55e4e4a26cc6\"}]', '[]', '2025-05-27 19:47:48', '2025-07-05 03:51:57'),
(3, 'main_nav', 'navigation', 'default', '[{\"id\": \"f945334c-51b7-4ff0-a8df-09e444878d57\", \"entry\": \"313c9c65-c3d2-42a3-9652-b3796e4226ce\"}, {\"id\": \"4941278b-058e-4059-8dbd-73881753a828\", \"entry\": \"a6a5a668-8c68-4332-8480-a77e4acada92\"}, {\"id\": \"1fb19e80-db0b-41c5-b65e-026cc7343caf\", \"entry\": \"edcc383e-a32f-4952-8fa9-2ba92f52dbb7\"}, {\"id\": \"1024df6c-e4c8-4473-8905-6246c8549984\", \"entry\": \"faaeeee8-0308-495f-80ac-77e67771c47e\"}]', '[]', '2025-06-11 21:39:07', '2025-06-11 22:03:05'),
(4, 'lecturers', 'collection', 'default', '[{\"entry\": \"0567aed4-c72e-4e6f-b2ab-ddcbe6307e69\"}, {\"entry\": \"1c9e5fc5-c650-4795-bd6e-ad5cf2109b67\"}, {\"entry\": \"a0093804-ab25-4557-8e61-10f21447e9fa\"}, {\"entry\": \"d7cedc2a-d238-4fda-b17f-28f818cdec93\"}, {\"entry\": \"911c7e04-dc2b-401e-947e-a27d51f62bdf\"}, {\"entry\": \"aadb331c-6626-44a2-9011-670e1cd812bd\"}, {\"entry\": \"7392e090-3960-45f7-bd79-80c0a4357420\"}, {\"entry\": \"58fab5af-6832-4014-9a63-d368671aadce\"}, {\"entry\": \"f135b84c-ad1f-4518-bee4-c159b702d95a\"}]', '[]', '2025-06-12 03:31:16', '2025-06-12 07:45:07'),
(5, 'programs', 'collection', 'default', '[{\"entry\": \"09c9953f-3d37-4d5b-8bdb-ef7b1a3213ba\"}, {\"entry\": \"53aed5aa-b68e-4fd3-9933-2bb31cc37e47\"}, {\"entry\": \"53fdeff2-c816-4c02-921c-9b6ffce530cf\"}, {\"entry\": \"6ebe2a65-593f-44fd-84ae-092b764d8338\"}, {\"entry\": \"7e69e327-504f-4737-a4d7-7fbc9f66dcb8\"}, {\"entry\": \"c658f0ae-9f2e-4ec8-afee-72488c15436e\"}, {\"entry\": \"c899cbc6-bf0b-452d-99ac-a3bf5ff02a90\"}, {\"entry\": \"f503345e-2169-4ed6-acbb-ed1c20fef5ac\"}]', '[]', '2025-06-28 03:51:14', '2025-06-28 05:38:14'),
(6, 'students', 'collection', 'default', '[{\"entry\": \"1ca135c0-0a18-49fe-8eea-bae05793d53e\"}]', '[]', '2025-07-01 07:11:45', '2025-07-04 08:00:32');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Test User', 'admin@gmail.com', NULL, '$2y$12$oRdZebf4fGJ.X361FuR2KO3ZTa4SL0L6.Hbi9Omf.HjsZzwq1H2.m', NULL, '2025-02-28 07:54:47', '2025-02-28 07:54:47');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
