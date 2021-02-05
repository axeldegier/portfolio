-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server versie:                5.7.24 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Versie:              10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Structuur van  tabel portfolio.categories wordt geschreven
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_slug_unique` (`slug`),
  KEY `categories_parent_id_foreign` (`parent_id`),
  CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumpen data van tabel portfolio.categories: ~2 rows (ongeveer)
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
REPLACE INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
	(1, NULL, 1, 'Category 1', 'category-1', '2021-01-20 10:39:07', '2021-01-20 10:39:07'),
	(2, NULL, 1, 'Category 2', 'category-2', '2021-01-20 10:39:07', '2021-01-20 10:39:07');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;

-- Structuur van  tabel portfolio.data_rows wordt geschreven
CREATE TABLE IF NOT EXISTS `data_rows` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `data_type_id` int(10) unsigned NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `data_rows_data_type_id_foreign` (`data_type_id`),
  CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumpen data van tabel portfolio.data_rows: ~55 rows (ongeveer)
/*!40000 ALTER TABLE `data_rows` DISABLE KEYS */;
REPLACE INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
	(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
	(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
	(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
	(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
	(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
	(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
	(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
	(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
	(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{"model":"TCG\\\\Voyager\\\\Models\\\\Role","table":"roles","type":"belongsTo","column":"role_id","key":"id","label":"display_name","pivot_table":"roles","pivot":0}', 10),
	(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{"model":"TCG\\\\Voyager\\\\Models\\\\Role","table":"roles","type":"belongsToMany","column":"id","key":"id","label":"display_name","pivot_table":"user_roles","pivot":"1","taggable":"0"}', 11),
	(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
	(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
	(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
	(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
	(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
	(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
	(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
	(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
	(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
	(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
	(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
	(22, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
	(23, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{"default":"","null":"","options":{"":"-- None --"},"relationship":{"key":"id","label":"name"}}', 2),
	(24, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{"default":1}', 3),
	(25, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 4),
	(26, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{"slugify":{"origin":"name"}}', 5),
	(27, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, NULL, 6),
	(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
	(29, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
	(30, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, NULL, 2),
	(31, 5, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, NULL, 3),
	(32, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 4),
	(33, 5, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 5),
	(34, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 6),
	(35, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{"resize":{"width":"1000","height":"null"},"quality":"70%","upsize":true,"thumbnails":[{"name":"medium","scale":"50%"},{"name":"small","scale":"25%"},{"name":"cropped","crop":{"width":"300","height":"250"}}]}', 7),
	(36, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{"slugify":{"origin":"title","forceUpdate":true},"validation":{"rule":"unique:posts,slug"}}', 8),
	(37, 5, 'meta_description', 'text_area', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 9),
	(38, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 10),
	(39, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{"default":"DRAFT","options":{"PUBLISHED":"published","DRAFT":"draft","PENDING":"pending"}}', 11),
	(40, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 12),
	(41, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 13),
	(42, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, NULL, 14),
	(43, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, NULL, 15),
	(44, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
	(45, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, NULL, 2),
	(46, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 3),
	(47, 6, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 4),
	(48, 6, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 5),
	(49, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{"slugify":{"origin":"title"},"validation":{"rule":"unique:pages,slug"}}', 6),
	(50, 6, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 7),
	(51, 6, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 8),
	(52, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{"default":"INACTIVE","options":{"INACTIVE":"INACTIVE","ACTIVE":"ACTIVE"}}', 9),
	(53, 6, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, NULL, 10),
	(54, 6, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, NULL, 11),
	(55, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, NULL, 12);
/*!40000 ALTER TABLE `data_rows` ENABLE KEYS */;

-- Structuur van  tabel portfolio.data_types wordt geschreven
CREATE TABLE IF NOT EXISTS `data_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `data_types_name_unique` (`name`),
  UNIQUE KEY `data_types_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumpen data van tabel portfolio.data_types: ~6 rows (ongeveer)
/*!40000 ALTER TABLE `data_types` DISABLE KEYS */;
REPLACE INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
	(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2021-01-20 10:39:06', '2021-01-20 10:39:06'),
	(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2021-01-20 10:39:06', '2021-01-20 10:39:06'),
	(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2021-01-20 10:39:06', '2021-01-20 10:39:06'),
	(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2021-01-20 10:39:07', '2021-01-20 10:39:07'),
	(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2021-01-20 10:39:07', '2021-01-20 10:39:07'),
	(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2021-01-20 10:39:07', '2021-01-20 10:39:07');
/*!40000 ALTER TABLE `data_types` ENABLE KEYS */;

-- Structuur van  tabel portfolio.failed_jobs wordt geschreven
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumpen data van tabel portfolio.failed_jobs: ~0 rows (ongeveer)
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- Structuur van  tabel portfolio.menus wordt geschreven
CREATE TABLE IF NOT EXISTS `menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumpen data van tabel portfolio.menus: ~1 rows (ongeveer)
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
REPLACE INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
	(1, 'admin', '2021-01-20 10:39:06', '2021-01-20 10:39:06'),
	(2, 'Test', '2021-02-01 14:25:11', '2021-02-01 14:25:11');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;

-- Structuur van  tabel portfolio.menu_items wordt geschreven
CREATE TABLE IF NOT EXISTS `menu_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int(10) unsigned DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `menu_items_menu_id_foreign` (`menu_id`),
  CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumpen data van tabel portfolio.menu_items: ~14 rows (ongeveer)
/*!40000 ALTER TABLE `menu_items` DISABLE KEYS */;
REPLACE INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
	(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2021-01-20 10:39:06', '2021-01-20 10:39:06', 'voyager.dashboard', NULL),
	(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 4, '2021-01-20 10:39:06', '2021-02-01 14:27:38', 'voyager.media.index', NULL),
	(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2021-01-20 10:39:06', '2021-01-20 10:39:06', 'voyager.users.index', NULL),
	(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2021-01-20 10:39:06', '2021-01-20 10:39:06', 'voyager.roles.index', NULL),
	(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 8, '2021-01-20 10:39:06', '2021-02-01 14:27:38', NULL, NULL),
	(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2021-01-20 10:39:06', '2021-02-01 14:27:38', 'voyager.menus.index', NULL),
	(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2021-01-20 10:39:06', '2021-02-01 14:27:38', 'voyager.database.index', NULL),
	(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2021-01-20 10:39:06', '2021-02-01 14:27:38', 'voyager.compass.index', NULL),
	(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2021-01-20 10:39:06', '2021-02-01 14:27:38', 'voyager.bread.index', NULL),
	(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 9, '2021-01-20 10:39:06', '2021-02-01 14:27:38', 'voyager.settings.index', NULL),
	(11, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 7, '2021-01-20 10:39:07', '2021-02-01 14:27:38', 'voyager.categories.index', NULL),
	(12, 1, 'Posts', '', '_self', 'voyager-news', NULL, NULL, 5, '2021-01-20 10:39:07', '2021-02-01 14:27:38', 'voyager.posts.index', NULL),
	(13, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 6, '2021-01-20 10:39:07', '2021-02-01 14:27:38', 'voyager.pages.index', NULL),
	(14, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 5, '2021-01-20 10:39:07', '2021-02-01 14:27:38', 'voyager.hooks', NULL);
/*!40000 ALTER TABLE `menu_items` ENABLE KEYS */;

-- Structuur van  tabel portfolio.migrations wordt geschreven
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumpen data van tabel portfolio.migrations: ~27 rows (ongeveer)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
REPLACE INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1),
	(4, '2016_01_01_000000_add_voyager_user_fields', 2),
	(5, '2016_01_01_000000_create_data_types_table', 2),
	(6, '2016_05_19_173453_create_menu_table', 2),
	(7, '2016_10_21_190000_create_roles_table', 2),
	(8, '2016_10_21_190000_create_settings_table', 2),
	(9, '2016_11_30_135954_create_permission_table', 2),
	(10, '2016_11_30_141208_create_permission_role_table', 2),
	(11, '2016_12_26_201236_data_types__add__server_side', 2),
	(12, '2017_01_13_000000_add_route_to_menu_items_table', 2),
	(13, '2017_01_14_005015_create_translations_table', 2),
	(14, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 2),
	(15, '2017_03_06_000000_add_controller_to_data_types_table', 2),
	(16, '2017_04_21_000000_add_order_to_data_rows_table', 2),
	(17, '2017_07_05_210000_add_policyname_to_data_types_table', 2),
	(18, '2017_08_05_000000_add_group_to_settings_table', 2),
	(19, '2017_11_26_013050_add_user_role_relationship', 2),
	(20, '2017_11_26_015000_create_user_roles_table', 2),
	(21, '2018_03_11_000000_add_user_settings', 2),
	(22, '2018_03_14_000000_add_details_to_data_types_table', 2),
	(23, '2018_03_16_000000_make_settings_value_nullable', 2),
	(24, '2016_01_01_000000_create_pages_table', 3),
	(25, '2016_01_01_000000_create_posts_table', 3),
	(26, '2016_02_15_204651_create_categories_table', 3),
	(27, '2017_04_11_000000_alter_post_nullable_fields_table', 3);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Structuur van  tabel portfolio.pages wordt geschreven
CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pages_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumpen data van tabel portfolio.pages: ~0 rows (ongeveer)
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
REPLACE INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
	(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2021-01-20 10:39:07', '2021-01-20 10:39:07');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;

-- Structuur van  tabel portfolio.password_resets wordt geschreven
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumpen data van tabel portfolio.password_resets: ~0 rows (ongeveer)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Structuur van  tabel portfolio.permissions wordt geschreven
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permissions_key_index` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumpen data van tabel portfolio.permissions: ~41 rows (ongeveer)
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
REPLACE INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
	(1, 'browse_admin', NULL, '2021-01-20 10:39:06', '2021-01-20 10:39:06'),
	(2, 'browse_bread', NULL, '2021-01-20 10:39:06', '2021-01-20 10:39:06'),
	(3, 'browse_database', NULL, '2021-01-20 10:39:06', '2021-01-20 10:39:06'),
	(4, 'browse_media', NULL, '2021-01-20 10:39:06', '2021-01-20 10:39:06'),
	(5, 'browse_compass', NULL, '2021-01-20 10:39:06', '2021-01-20 10:39:06'),
	(6, 'browse_menus', 'menus', '2021-01-20 10:39:06', '2021-01-20 10:39:06'),
	(7, 'read_menus', 'menus', '2021-01-20 10:39:06', '2021-01-20 10:39:06'),
	(8, 'edit_menus', 'menus', '2021-01-20 10:39:06', '2021-01-20 10:39:06'),
	(9, 'add_menus', 'menus', '2021-01-20 10:39:06', '2021-01-20 10:39:06'),
	(10, 'delete_menus', 'menus', '2021-01-20 10:39:06', '2021-01-20 10:39:06'),
	(11, 'browse_roles', 'roles', '2021-01-20 10:39:06', '2021-01-20 10:39:06'),
	(12, 'read_roles', 'roles', '2021-01-20 10:39:06', '2021-01-20 10:39:06'),
	(13, 'edit_roles', 'roles', '2021-01-20 10:39:06', '2021-01-20 10:39:06'),
	(14, 'add_roles', 'roles', '2021-01-20 10:39:06', '2021-01-20 10:39:06'),
	(15, 'delete_roles', 'roles', '2021-01-20 10:39:06', '2021-01-20 10:39:06'),
	(16, 'browse_users', 'users', '2021-01-20 10:39:06', '2021-01-20 10:39:06'),
	(17, 'read_users', 'users', '2021-01-20 10:39:06', '2021-01-20 10:39:06'),
	(18, 'edit_users', 'users', '2021-01-20 10:39:06', '2021-01-20 10:39:06'),
	(19, 'add_users', 'users', '2021-01-20 10:39:06', '2021-01-20 10:39:06'),
	(20, 'delete_users', 'users', '2021-01-20 10:39:06', '2021-01-20 10:39:06'),
	(21, 'browse_settings', 'settings', '2021-01-20 10:39:06', '2021-01-20 10:39:06'),
	(22, 'read_settings', 'settings', '2021-01-20 10:39:06', '2021-01-20 10:39:06'),
	(23, 'edit_settings', 'settings', '2021-01-20 10:39:06', '2021-01-20 10:39:06'),
	(24, 'add_settings', 'settings', '2021-01-20 10:39:06', '2021-01-20 10:39:06'),
	(25, 'delete_settings', 'settings', '2021-01-20 10:39:06', '2021-01-20 10:39:06'),
	(26, 'browse_categories', 'categories', '2021-01-20 10:39:07', '2021-01-20 10:39:07'),
	(27, 'read_categories', 'categories', '2021-01-20 10:39:07', '2021-01-20 10:39:07'),
	(28, 'edit_categories', 'categories', '2021-01-20 10:39:07', '2021-01-20 10:39:07'),
	(29, 'add_categories', 'categories', '2021-01-20 10:39:07', '2021-01-20 10:39:07'),
	(30, 'delete_categories', 'categories', '2021-01-20 10:39:07', '2021-01-20 10:39:07'),
	(31, 'browse_posts', 'posts', '2021-01-20 10:39:07', '2021-01-20 10:39:07'),
	(32, 'read_posts', 'posts', '2021-01-20 10:39:07', '2021-01-20 10:39:07'),
	(33, 'edit_posts', 'posts', '2021-01-20 10:39:07', '2021-01-20 10:39:07'),
	(34, 'add_posts', 'posts', '2021-01-20 10:39:07', '2021-01-20 10:39:07'),
	(35, 'delete_posts', 'posts', '2021-01-20 10:39:07', '2021-01-20 10:39:07'),
	(36, 'browse_pages', 'pages', '2021-01-20 10:39:07', '2021-01-20 10:39:07'),
	(37, 'read_pages', 'pages', '2021-01-20 10:39:07', '2021-01-20 10:39:07'),
	(38, 'edit_pages', 'pages', '2021-01-20 10:39:07', '2021-01-20 10:39:07'),
	(39, 'add_pages', 'pages', '2021-01-20 10:39:07', '2021-01-20 10:39:07'),
	(40, 'delete_pages', 'pages', '2021-01-20 10:39:07', '2021-01-20 10:39:07'),
	(41, 'browse_hooks', NULL, '2021-01-20 10:39:07', '2021-01-20 10:39:07');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;

-- Structuur van  tabel portfolio.permission_role wordt geschreven
CREATE TABLE IF NOT EXISTS `permission_role` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_permission_id_index` (`permission_id`),
  KEY `permission_role_role_id_index` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumpen data van tabel portfolio.permission_role: ~40 rows (ongeveer)
/*!40000 ALTER TABLE `permission_role` DISABLE KEYS */;
REPLACE INTO `permission_role` (`permission_id`, `role_id`) VALUES
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
	(38, 1),
	(39, 1),
	(40, 1);
/*!40000 ALTER TABLE `permission_role` ENABLE KEYS */;

-- Structuur van  tabel portfolio.posts wordt geschreven
CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `posts_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumpen data van tabel portfolio.posts: ~4 rows (ongeveer)
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
REPLACE INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
	(6, 1, 1, 'Super hang on', NULL, 'een game gemaakt met javascript', '<p><span style="color: #000000; font-family: Lato, -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px; text-align: center;">SuperHang-On game gemaakt in november 2020</span></p>\r\n<p><a class="btn btn-info" href="https://github.com/axeldegier/jsgame.git" type="button">Github</a></p>', 'posts/post6.jpg', 'super-hang-on', NULL, NULL, 'PUBLISHED', 1, '2021-02-02 07:07:41', '2021-02-02 07:16:31'),
	(7, 1, 1, 'Horse reality', NULL, 'character customizer', '<p>Horse reality</p>\r\n<p>&nbsp;</p>\r\n<p><a class="btn btn-info" href="https://github.com/axeldegier/horse-reality.git" type="button">Github</a></p>\r\n<p>&nbsp;</p>\r\n<p><img title="horse" src="https://www.horsereality.com/upload/pages/699173de3.png" alt="horse" width="329" height="108" /></p>', 'posts/post7.png', 'horse-reality', NULL, NULL, 'PUBLISHED', 0, '2021-02-02 07:12:49', '2021-02-02 07:21:10'),
	(8, 1, 1, 'Qr scanner', NULL, 'Scherm voor een webshop', '<p>Dit is een een website waar je QR codes kan scannnen</p>\r\n<p><a class="btn btn-info" href="https://github.com/caseyvanschaarenburg/hotpink.git" type="button">Github</a></p>', 'posts/post8.png', 'qr-scanner', NULL, NULL, 'PUBLISHED', 0, '2021-02-02 07:29:04', '2021-02-02 07:30:41'),
	(9, 1, 1, 'Webshop', NULL, 'Hotpink', '<p>Webshop</p>\r\n<p><a class="btn btn-info" href="https://github.com/caseyvanschaarenburg/webshop.git" type="button">Github</a></p>', 'posts/post9.png', 'webshop', NULL, NULL, 'PUBLISHED', 0, '2021-02-02 07:32:27', '2021-02-02 07:42:00');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;

-- Structuur van  tabel portfolio.roles wordt geschreven
CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumpen data van tabel portfolio.roles: ~2 rows (ongeveer)
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
REPLACE INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
	(1, 'admin', 'Administrator', '2021-01-20 10:39:06', '2021-01-20 10:39:06'),
	(2, 'user', 'Normal User', '2021-01-20 10:39:06', '2021-01-20 10:39:06');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;

-- Structuur van  tabel portfolio.settings wordt geschreven
CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumpen data van tabel portfolio.settings: ~10 rows (ongeveer)
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
REPLACE INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
	(1, 'site.title', 'Site Title', 'Portfolio', '', 'text', 1, 'Site'),
	(2, 'site.description', 'Site Description', 'Portfolio', '', 'text', 2, 'Site'),
	(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
	(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
	(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
	(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
	(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
	(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
	(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
	(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;

-- Structuur van  tabel portfolio.translations wordt geschreven
CREATE TABLE IF NOT EXISTS `translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) unsigned NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumpen data van tabel portfolio.translations: ~30 rows (ongeveer)
/*!40000 ALTER TABLE `translations` DISABLE KEYS */;
REPLACE INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
	(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2021-01-20 10:39:07', '2021-01-20 10:39:07'),
	(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2021-01-20 10:39:07', '2021-01-20 10:39:07'),
	(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2021-01-20 10:39:07', '2021-01-20 10:39:07'),
	(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2021-01-20 10:39:07', '2021-01-20 10:39:07'),
	(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2021-01-20 10:39:07', '2021-01-20 10:39:07'),
	(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2021-01-20 10:39:07', '2021-01-20 10:39:07'),
	(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2021-01-20 10:39:07', '2021-01-20 10:39:07'),
	(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2021-01-20 10:39:07', '2021-01-20 10:39:07'),
	(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2021-01-20 10:39:07', '2021-01-20 10:39:07'),
	(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2021-01-20 10:39:07', '2021-01-20 10:39:07'),
	(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2021-01-20 10:39:07', '2021-01-20 10:39:07'),
	(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2021-01-20 10:39:07', '2021-01-20 10:39:07'),
	(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2021-01-20 10:39:07', '2021-01-20 10:39:07'),
	(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2021-01-20 10:39:07', '2021-01-20 10:39:07'),
	(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2021-01-20 10:39:07', '2021-01-20 10:39:07'),
	(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2021-01-20 10:39:07', '2021-01-20 10:39:07'),
	(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2021-01-20 10:39:07', '2021-01-20 10:39:07'),
	(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2021-01-20 10:39:07', '2021-01-20 10:39:07'),
	(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2021-01-20 10:39:07', '2021-01-20 10:39:07'),
	(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2021-01-20 10:39:07', '2021-01-20 10:39:07'),
	(21, 'menu_items', 'title', 2, 'pt', 'Media', '2021-01-20 10:39:07', '2021-01-20 10:39:07'),
	(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2021-01-20 10:39:07', '2021-01-20 10:39:07'),
	(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2021-01-20 10:39:07', '2021-01-20 10:39:07'),
	(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2021-01-20 10:39:07', '2021-01-20 10:39:07'),
	(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2021-01-20 10:39:07', '2021-01-20 10:39:07'),
	(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2021-01-20 10:39:07', '2021-01-20 10:39:07'),
	(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2021-01-20 10:39:07', '2021-01-20 10:39:07'),
	(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2021-01-20 10:39:07', '2021-01-20 10:39:07'),
	(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2021-01-20 10:39:07', '2021-01-20 10:39:07'),
	(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2021-01-20 10:39:07', '2021-01-20 10:39:07');
/*!40000 ALTER TABLE `translations` ENABLE KEYS */;

-- Structuur van  tabel portfolio.users wordt geschreven
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_role_id_foreign` (`role_id`),
  CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumpen data van tabel portfolio.users: ~2 rows (ongeveer)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
REPLACE INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
	(1, 1, 'Admin', 'admin@admin.com', 'users/default.png', NULL, '$2y$10$ZRQkIyPywFrTUyVn3xZWSe0UGem1LRy3fqJFIq6hh7VZqQge5TAOG', 'Yfj8KIwcdCSz29GXktIW4P81hdlAoZzqK6c23jg8Dp3RtdhGg028PrEWHeS3', NULL, '2021-01-20 10:39:07', '2021-01-20 10:39:07'),
	(2, 2, 'Axel', 'axeldegier@outlook.com', 'users/default.png', NULL, '$2y$10$RB2Yi2rRCw0fzZiWsd7oYelTBR4pVnqgG/TmuIEx6w9IFzzKWnNoK', 'wM1J66sTOozDvxli2j5DwArLp5jVeybTD6KGepT5Pos5ddm7uomWyokkuUs8', '{"locale":"en"}', '2021-01-20 10:58:40', '2021-01-20 19:57:30');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Structuur van  tabel portfolio.user_roles wordt geschreven
CREATE TABLE IF NOT EXISTS `user_roles` (
  `user_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `user_roles_user_id_index` (`user_id`),
  KEY `user_roles_role_id_index` (`role_id`),
  CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumpen data van tabel portfolio.user_roles: ~0 rows (ongeveer)
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
