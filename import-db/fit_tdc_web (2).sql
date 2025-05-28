-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 14, 2025 at 03:07 AM
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
CREATE DATABASE IF NOT EXISTS `fit_tdc_web` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `fit_tdc_web`;

-- --------------------------------------------------------

--
-- Table structure for table `assets_meta`
--

DROP TABLE IF EXISTS `assets_meta`;
CREATE TABLE IF NOT EXISTS `assets_meta` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `container` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `basename` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `filename` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `extension` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `asset_containers`
--

DROP TABLE IF EXISTS `asset_containers`;
CREATE TABLE IF NOT EXISTS `asset_containers` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `handle` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `disk` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `namespace` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `handle` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` json NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `blueprints_handle_namespace_unique` (`handle`,`namespace`),
  KEY `blueprints_namespace_index` (`namespace`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blueprints`
--

INSERT INTO `blueprints` (`id`, `namespace`, `handle`, `data`, `created_at`, `updated_at`) VALUES
(1, NULL, 'default', '{\"tabs\": {\"main\": {\"sections\": [{\"fields\": [{\"field\": {\"type\": \"markdown\", \"display\": \"Content\", \"localizable\": true}, \"handle\": \"content\"}, {\"field\": {\"type\": \"users\", \"default\": \"current\", \"display\": \"Author\", \"max_items\": 1, \"localizable\": true}, \"handle\": \"author\"}, {\"field\": {\"type\": \"template\", \"display\": \"Template\", \"localizable\": true}, \"handle\": \"template\"}]}]}}, \"title\": \"Default\"}', '2025-02-24 22:30:02', '2025-02-24 22:30:02'),
(2, 'assets', 'assets', '{\"tabs\": {\"main\": {\"sections\": [{\"fields\": [{\"field\": {\"type\": \"text\", \"display\": \"Alt Text\", \"instructions\": \"Description of the image\"}, \"handle\": \"alt\"}]}]}}, \"title\": \"Asset\"}', '2025-02-24 22:30:02', '2025-02-24 22:30:02'),
(3, NULL, 'user', '{\"tabs\": {\"main\": {\"sections\": [{\"fields\": [{\"field\": {\"type\": \"text\", \"display\": \"Name\"}, \"handle\": \"name\"}, {\"field\": {\"type\": \"text\", \"input\": \"email\", \"display\": \"Email Address\"}, \"handle\": \"email\"}, {\"field\": {\"type\": \"user_roles\", \"width\": 50}, \"handle\": \"roles\"}, {\"field\": {\"type\": \"user_groups\", \"width\": 50}, \"handle\": \"groups\"}, {\"field\": {\"type\": \"assets\", \"container\": \"assets\", \"max_files\": 1}, \"handle\": \"avatar\"}]}]}}, \"title\": \"User\"}', '2025-02-24 22:30:02', '2025-02-24 22:30:02');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
CREATE TABLE IF NOT EXISTS `cache` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
CREATE TABLE IF NOT EXISTS `cache_locks` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `handle` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `settings` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `collections_handle_unique` (`handle`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `collections`
--

INSERT INTO `collections` (`id`, `handle`, `title`, `settings`, `created_at`, `updated_at`) VALUES
(1, 'pages', 'Pages', '{\"dated\": false, \"mount\": null, \"sites\": [\"default\"], \"slugs\": true, \"inject\": [], \"layout\": null, \"routes\": \"{parent_uri}/{slug}\", \"sort_dir\": null, \"template\": null, \"propagate\": true, \"revisions\": false, \"structure\": {\"root\": true}, \"sort_field\": null, \"taxonomies\": null, \"search_index\": null, \"title_formats\": [], \"default_status\": true, \"origin_behavior\": \"select\", \"preview_targets\": [{\"label\": \"Entry\", \"format\": \"{permalink}\", \"refresh\": true}], \"past_date_behavior\": \"public\", \"future_date_behavior\": \"public\"}', '2025-02-24 22:30:02', '2025-02-24 22:30:02');

-- --------------------------------------------------------

--
-- Table structure for table `entries`
--

DROP TABLE IF EXISTS `entries`;
CREATE TABLE IF NOT EXISTS `entries` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `origin_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uri` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int DEFAULT NULL,
  `collection` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blueprint` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
('313c9c65-c3d2-42a3-9652-b3796e4226ce', 'default', NULL, 1, 'posts', '/posts', NULL, 3, 'pages', 'page', '{\"title\": \"posts\", \"author\": \"8a2db8fc-eb50-49bb-89d4-b12017d31da0\", \"parent\": \"f11292ac-cf88-49a8-96a7-b8e126103704\", \"content\": null, \"template\": null, \"updated_by\": \"8a2db8fc-eb50-49bb-89d4-b12017d31da0\"}', '2025-03-05 09:29:15', '2025-03-05 09:29:15'),
('f11292ac-cf88-49a8-96a7-b8e126103704', 'default', NULL, 1, 'home', '/', NULL, 1, 'pages', 'page', '{\"title\": \"Home\", \"author\": \"8a2db8fc-eb50-49bb-89d4-b12017d31da0\", \"content\": \"hello hello\", \"template\": \"home\", \"updated_by\": \"8a2db8fc-eb50-49bb-89d4-b12017d31da0\"}', '2025-03-05 07:41:56', '2025-03-05 08:01:21'),
('home', 'default', NULL, 1, 'admin', '/admin', NULL, 2, 'pages', 'pages', '{\"title\": \"Admin\", \"author\": \"8a2db8fc-eb50-49bb-89d4-b12017d31da0\", \"parent\": \"f11292ac-cf88-49a8-96a7-b8e126103704\", \"content\": \"## Welcome to your brand new Statamic site!\\n\\nNot sure what to do next? Here are a few ideas, but feel free to explore in your own way, in your own time.\\n\\n- [Jump into the Control Panel](/cp) and edit this page or begin setting up your own collections and blueprints.\\n- [Head to the docs](https://statamic.dev) and learn how Statamic works.\\n- [Watch some Statamic videos](https://youtube.com/statamic) on YouTube.\\n- [Join our Discord chat](https://statamic.com/discord) and meet thousands of other Statamic developers.\\n- [Start a discussion](https://github.com/statamic/cms/discussions) and get answers to your questions.\\n- [Star Statamic on Github](https://github.com/statamic/cms) if you enjoy using it!\", \"template\": \"admin\", \"updated_by\": \"8a2db8fc-eb50-49bb-89d4-b12017d31da0\"}', '2025-02-24 22:30:02', '2025-03-05 07:51:25');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `handle` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` json NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `fieldsets_handle_unique` (`handle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `forms`
--

DROP TABLE IF EXISTS `forms`;
CREATE TABLE IF NOT EXISTS `forms` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `handle` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `form` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `handle` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `handle` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `origin` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
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
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `handle` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `settings` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `navigations_handle_unique` (`handle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `handle` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `handle` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `site` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `taxonomy` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `handler` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` json NOT NULL,
  `expire_at` timestamp NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tokens_token_unique` (`token`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tokens`
--

INSERT INTO `tokens` (`id`, `token`, `handler`, `data`, `expire_at`, `created_at`, `updated_at`) VALUES
(1, 'J3HEWiEMFFOdwycvMOgrJXu3yq2a9qaLayp5boeO', 'Statamic\\Tokens\\Handlers\\LivePreview', '[]', '2025-03-05 08:32:44', '2025-03-05 07:32:44', '2025-03-05 07:32:44');

-- --------------------------------------------------------

--
-- Table structure for table `trees`
--

DROP TABLE IF EXISTS `trees`;
CREATE TABLE IF NOT EXISTS `trees` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `handle` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tree` json DEFAULT NULL,
  `settings` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `trees_handle_type_locale_unique` (`handle`,`type`,`locale`),
  KEY `trees_type_index` (`type`),
  KEY `trees_locale_index` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `trees`
--

INSERT INTO `trees` (`id`, `handle`, `type`, `locale`, `tree`, `settings`, `created_at`, `updated_at`) VALUES
(1, 'pages', 'collection', 'default', '[{\"entry\": \"f11292ac-cf88-49a8-96a7-b8e126103704\"}, {\"entry\": \"home\"}, {\"entry\": \"313c9c65-c3d2-42a3-9652-b3796e4226ce\"}]', '[]', '2025-02-24 22:30:02', '2025-03-05 09:29:15');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
