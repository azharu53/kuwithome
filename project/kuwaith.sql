-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 27, 2017 at 08:15 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kuwaith`
--

-- --------------------------------------------------------

--
-- Table structure for table `kuwait_akeeba_common`
--

CREATE TABLE `kuwait_akeeba_common` (
  `key` varchar(192) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kuwait_akeeba_common`
--

INSERT INTO `kuwait_akeeba_common` (`key`, `value`) VALUES
('fof30', '[\"com_akeeba\"]'),
('stats_lastrun', '1500834612'),
('stats_siteid', '5e38c97fa8f357fd816e4f0448b54ca2101caa69'),
('stats_siteurl', '842ca4ffa0ac8ecc1f6a3f2a4696e962');

-- --------------------------------------------------------

--
-- Table structure for table `kuwait_ak_profiles`
--

CREATE TABLE `kuwait_ak_profiles` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `configuration` longtext COLLATE utf8mb4_unicode_ci,
  `filters` longtext COLLATE utf8mb4_unicode_ci,
  `quickicon` tinyint(3) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kuwait_ak_profiles`
--

INSERT INTO `kuwait_ak_profiles` (`id`, `description`, `configuration`, `filters`, `quickicon`) VALUES
(1, 'Default Backup Profile', '###AES128###CTeRDzZp1b/HyWPkWUt/JwlZpg+nkJvRXvRuuVTsEbPb5doL9h6ZTEuJG5O5i6MdKa8Ap99JlDPOagAgW09V2HMwZO484zQkUnN7PIMwR19le187vw+wnPZneki9lkJI9EktM7ZjAIjIxn3qTi3IW7ZCLMpdPbjdeCFREkFbp0lA5IHCTUayvj4vgNTR7hrkh9Ca4dk/v/qOE2bYgvOS+r0McLeZWI99oGSS2aXTCsXxy8VYcKKwKOgPiCFe7IA+X4hJoemtTQIgB3gVODNvd5elPrJ5ARu/6qNJxj9GJvTx5buTcKttkthfjS43chOK6goOdvqTkBUHGMscjuXLHOPjy3DLGBcTXwpMb5AXfzwkiABEZWkuZpuqkLWveGFNZJQBXfaMqlbrhSbmiBM31l2v+S/50ybAG+EXMxeAWcwcVcQjCMjkP+t7xD3/c89NNYWnhbLfnFQlqJMP9OEllTpLP//c457Rj52ynVP4cNM+YW7TjZW9VgYkDsvdmgG21F6F8hMhuZjVxzjKvc6ntEHXN0Yy8JWSatJj2pi1PP5HUsER/LEvN5UKqJmHUzWJxydcPVK0Zlzhou65kB7N0sMs1/eMp/U3HPLiq4StntRJVcQWp3f4FXFPM8M1MFdPgIl29VQr3jyC1WGnDBzfTKJbT4OIY4wjUkBiZjLaQYvWjZ3hh0mMWDb2w+mGB55xI9QEMaXwc8VEFTcfoAgdsBjoTvgoeZJSCGYS5uJ0Q2DqLViXQJfBIFPwZOLLdvLcQ4zUniOmnfm+NgmPtzThP8EjeX/ZTRrOMeU2WrOU7SP5/fLiNqDZunE7etctnBeNduufHQd3lI4Tm9HwL3w6W6J4zZ0RyPB1wzTcmI4bNvmd3SG0CePe1aN25+KWSMywyQFXieIbLabLyBSXGxpEnYNMoHgHxKv9tt+Q4loUAAVlQ/pSGLP00R0QHpnj6RIq1tjxxSY0za25f4iGIXyP/peTetz+XyxLmehasrCfhbMaUDjB1wfTLBqriaHjifguVZuZd5F2iyjYAH77mPgFnnd012ZpBJeb/7SlZ69V01k9AhtniLrLSRg8QkaQgJ/opRg6Qa+CWTTC+0E7HehDGs5CpnnkuTQZeD39JsSjNN+R6oHqXVTU57g4Mqa6Wsk6rENONN6c0mRmQ1Bdf0CThjGSod8mjdTtwHeLt/RbYjOIj/yHTCJngxk4SqONMaYE8xmtbj0oB7ygbGO2+ETWvtHRhffMRvKxMiOJ+nLMw0ajjTXuo3ww1c2J4SJEIX5hqQqfWR6oyWhYjeUUS4vbHAwAw9hgJecP74E2rmeYbbX5w/gQj09R5D9PPRKelmN8Y9Tkh8Tef9DoJbufMvDlNDOHPJScKFr8wDfngK16ry339srsH0/0aBM6WwbEeErixQftEeMdD90+e91rRJUYaUBLsKZQOfOem8n4FiH7+YMUVICg+KtPthBOVXPmg6QrDrHjssh9uBWd+/KbCuBfpqtrL841YkxPte9mHX0xdWufKDv2sFzLh35I75Yhm2TVXi+Rr3ehRH2Yen46AcSKHMhn601YapNMw5B8FF0ZRCW1VpzMsMTeq+se+yvyo1HN9kdtUAEQ1PG3cLbEydFxwdSfsPNA0sz0C153MxrgvBINsPggXA2zddPVDhB4s/419/YErQykd2XtzKx19O8Wcyj3NB7p7UMSJIt3KQanc+jZNWYxcZAMc8t9Y09CPakeYvNB3lCoYUaxoYPh7qlGLLqmwSOn52hg6TE9NO22Imsg/BXbyC+rEVR2FPjTOmJEFdpt78jZehbLYqJvK70g02lW2m5zEW36aJ1ZXaBTq4CzaI/1um1CPMa5fQHq5Fg7ZCFqGxC4uI1e1s+AWowyAzV4myZWhHfZdRsLirTScq2+REUYCw+A5xmDOzr+T0LlYKFdRUCVgSZTOLifhDapGY2XNjR44OVHqB79vso186+JZYGO4NVp8+sxfKgyDKYooeLMJmwEYuvnnjXrJjOABin6OMgADGnwe5/tAYlQefb+G/aZE24WMBuIqXvAoIZqkmsPjTStmNh7I1ew4/oYrgNLV0R+hrqUxj4zFnlIrvdFXlE/kNPgZf8OEmx21EslGqyQJKZrPs8b0uqev3TlKdJyE+cdaY3sGWdfMRbUX4wUdIsegM0qRdyI9L6MHeduDbrII9FxcfzyHSKFyNahL0AlrBISCswDiK25TeoESooTPZLko8IQGJXNpoiscv3Z+h6Yguy8VXxqyJotZmGB5bsQsIYnDxK9utu9987UQ9GFyfdjJSanIhkDKsQlP53H4kA/N6kwhVifcOAQ0Fgtxk+K+1uuIVegX3/6DTEIoW37Tbh4fNsnWfksqfK+YH2INmVCV68hXq1ed7ORg/IHZAsuWtsM3CwTvDRg8Pg+tGoZX3padAx29h/SI6/Umssbe3/RBEd0Br/BU40OzlrrTUpQU1Rdxsj5GMsQcQlkaJh37gBdWR/kUvlqm0+KEg+GTNk6YY/h90Nw1QFbhbZgjIZ/QmrxPk3+1b9wBli3NBSAJiBTSlBJVihSn8LHpbBxP5kbWHVGBmotBwAA', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `kuwait_ak_stats`
--

CREATE TABLE `kuwait_ak_stats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` longtext COLLATE utf8mb4_unicode_ci,
  `backupstart` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `backupend` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` enum('run','fail','complete') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'run',
  `origin` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'backend',
  `type` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'full',
  `profile_id` bigint(20) NOT NULL DEFAULT '1',
  `archivename` longtext COLLATE utf8mb4_unicode_ci,
  `absolute_path` longtext COLLATE utf8mb4_unicode_ci,
  `multipart` int(11) NOT NULL DEFAULT '0',
  `tag` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `backupid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filesexist` tinyint(3) NOT NULL DEFAULT '1',
  `remote_filename` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_size` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kuwait_ak_stats`
--

INSERT INTO `kuwait_ak_stats` (`id`, `description`, `comment`, `backupstart`, `backupend`, `status`, `origin`, `type`, `profile_id`, `archivename`, `absolute_path`, `multipart`, `tag`, `backupid`, `filesexist`, `remote_filename`, `total_size`) VALUES
(1, 'Backup taken on Sunday, 16 July 2017 17:55', '', '2017-07-16 12:25:13', '2017-07-16 12:26:22', 'complete', 'backend', 'full', 1, 'site-localhost-20170716-175513.jpa', 'C:/xampp/htdocs/kuwithome/administrator/components/com_akeeba/backup/site-localhost-20170716-175513.jpa', 1, 'backend', 'id1', 1, NULL, 15672868),
(2, 'Backup taken on Sunday, 23 July 2017 18:30', '', '2017-07-23 13:00:53', '2017-07-23 13:02:58', 'complete', 'backend', 'full', 1, 'site-localhost-20170723-183053.jpa', 'C:/xampp/htdocs/kuwithome/administrator/components/com_akeeba/backup/site-localhost-20170723-183053.jpa', 1, 'backend', 'id2', 1, NULL, 17801097);

-- --------------------------------------------------------

--
-- Table structure for table `kuwait_ak_storage`
--

CREATE TABLE `kuwait_ak_storage` (
  `tag` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastupdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `data` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kuwait_assets`
--

CREATE TABLE `kuwait_assets` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) UNSIGNED NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kuwait_assets`
--

INSERT INTO `kuwait_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 0, 135, 0, 'root.1', 'Root Asset', '{\"core.login.site\":{\"6\":1,\"2\":1},\"core.login.admin\":{\"6\":1},\"core.login.offline\":{\"6\":1},\"core.admin\":{\"8\":1},\"core.manage\":{\"7\":1},\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),
(2, 1, 1, 2, 1, 'com_admin', 'com_admin', '{}'),
(3, 1, 3, 6, 1, 'com_banners', 'com_banners', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(4, 1, 7, 8, 1, 'com_cache', 'com_cache', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
(5, 1, 9, 10, 1, 'com_checkin', 'com_checkin', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
(6, 1, 11, 12, 1, 'com_config', 'com_config', '{}'),
(7, 1, 13, 16, 1, 'com_contact', 'com_contact', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(8, 1, 17, 20, 1, 'com_content', 'com_content', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1}}'),
(9, 1, 21, 22, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 23, 24, 1, 'com_installer', 'com_installer', '{\"core.manage\":{\"7\":0},\"core.delete\":{\"7\":0},\"core.edit.state\":{\"7\":0}}'),
(11, 1, 25, 26, 1, 'com_languages', 'com_languages', '{\"core.admin\":{\"7\":1}}'),
(12, 1, 27, 28, 1, 'com_login', 'com_login', '{}'),
(13, 1, 29, 30, 1, 'com_mailto', 'com_mailto', '{}'),
(14, 1, 31, 32, 1, 'com_massmail', 'com_massmail', '{}'),
(15, 1, 33, 34, 1, 'com_media', 'com_media', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1,\"2\":1},\"core.delete\":{\"5\":1,\"2\":1}}'),
(16, 1, 35, 42, 1, 'com_menus', 'com_menus', '{\"core.admin\":{\"7\":1}}'),
(17, 1, 43, 44, 1, 'com_messages', 'com_messages', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
(18, 1, 45, 84, 1, 'com_modules', 'com_modules', '{\"core.admin\":{\"7\":1}}'),
(19, 1, 85, 88, 1, 'com_newsfeeds', 'com_newsfeeds', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(20, 1, 89, 90, 1, 'com_plugins', 'com_plugins', '{\"core.admin\":{\"7\":1}}'),
(21, 1, 91, 92, 1, 'com_redirect', 'com_redirect', '{\"core.admin\":{\"7\":1}}'),
(22, 1, 93, 94, 1, 'com_search', 'com_search', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(23, 1, 95, 96, 1, 'com_templates', 'com_templates', '{\"core.admin\":{\"7\":1}}'),
(24, 1, 97, 106, 1, 'com_users', 'com_users', '{\"core.admin\":{\"7\":1}}'),
(26, 1, 107, 108, 1, 'com_wrapper', 'com_wrapper', '{}'),
(27, 8, 18, 19, 2, 'com_content.category.2', 'Uncategorised', '{}'),
(28, 3, 4, 5, 2, 'com_banners.category.3', 'Uncategorised', '{}'),
(29, 7, 14, 15, 2, 'com_contact.category.4', 'Uncategorised', '{}'),
(30, 19, 86, 87, 2, 'com_newsfeeds.category.5', 'Uncategorised', '{}'),
(32, 24, 98, 99, 2, 'com_users.category.7', 'Uncategorised', '{}'),
(33, 1, 109, 110, 1, 'com_finder', 'com_finder', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(34, 1, 111, 112, 1, 'com_joomlaupdate', 'com_joomlaupdate', '{}'),
(35, 1, 113, 114, 1, 'com_tags', 'com_tags', '{}'),
(36, 1, 115, 116, 1, 'com_contenthistory', 'com_contenthistory', '{}'),
(37, 1, 117, 118, 1, 'com_ajax', 'com_ajax', '{}'),
(38, 1, 119, 120, 1, 'com_postinstall', 'com_postinstall', '{}'),
(39, 18, 46, 47, 2, 'com_modules.module.1', 'Main Menu', '{}'),
(40, 18, 48, 49, 2, 'com_modules.module.2', 'Login', '{}'),
(41, 18, 50, 51, 2, 'com_modules.module.3', 'Popular Articles', '{}'),
(42, 18, 52, 53, 2, 'com_modules.module.4', 'Recently Added Articles', '{}'),
(43, 18, 54, 55, 2, 'com_modules.module.8', 'Toolbar', '{}'),
(44, 18, 56, 57, 2, 'com_modules.module.9', 'Quick Icons', '{}'),
(45, 18, 58, 59, 2, 'com_modules.module.10', 'Logged-in Users', '{}'),
(46, 18, 60, 61, 2, 'com_modules.module.12', 'Admin Menu', '{}'),
(47, 18, 62, 63, 2, 'com_modules.module.13', 'Admin Submenu', '{}'),
(48, 18, 64, 65, 2, 'com_modules.module.14', 'User Status', '{}'),
(49, 18, 66, 67, 2, 'com_modules.module.15', 'Title', '{}'),
(50, 18, 68, 69, 2, 'com_modules.module.16', 'Login Form', '{}'),
(51, 18, 70, 71, 2, 'com_modules.module.17', 'Breadcrumbs', '{}'),
(52, 18, 72, 73, 2, 'com_modules.module.79', 'Multilanguage status', '{}'),
(53, 18, 74, 75, 2, 'com_modules.module.86', 'Joomla Version', '{}'),
(54, 16, 36, 37, 2, 'com_menus.menu.1', 'Main Menu', '{}'),
(55, 1, 121, 126, 1, 'com_gmapfp', 'COM_GMAPFP', '{\"core.create\":{\"2\":1},\"core.delete\":{\"2\":1},\"core.edit\":{\"2\":1},\"core.edit.state\":{\"2\":1},\"core.admin\":{\"2\":1}}'),
(56, 55, 122, 123, 2, 'com_gmapfp.category.8', 'Test1', '{}'),
(57, 1, 127, 128, 1, 'com_akeeba', 'Akeeba', '{}'),
(58, 55, 124, 125, 2, 'com_gmapfp.category.9', 'Test2', '{}'),
(59, 18, 76, 77, 2, 'com_modules.module.87', 'Homebanner', '{}'),
(60, 18, 78, 79, 2, 'com_modules.module.88', 'GMapFP', '{}'),
(61, 16, 38, 39, 2, 'com_menus.menu.2', 'Login', '{}'),
(62, 18, 80, 81, 2, 'com_modules.module.89', 'My Account', '{}'),
(64, 1, 129, 130, 1, 'com_banner', 'com_banner', '{}'),
(65, 1, 131, 132, 1, 'com_wishlist', 'com_wishlist', '{}'),
(67, 1, 133, 134, 1, 'com_comprofiler', 'comprofiler', '{}'),
(68, 16, 40, 41, 2, 'com_menus.menu.3', 'Community Builder', '{}'),
(69, 18, 82, 83, 2, 'com_modules.module.90', 'SCLogin', '{}'),
(70, 24, 100, 101, 2, 'com_users.field.1', 'First Name', '{\"core.delete\":{\"9\":1,\"2\":1},\"core.edit\":{\"9\":1,\"2\":1},\"core.edit.state\":{\"9\":1,\"2\":1},\"core.edit.value\":{\"9\":1,\"2\":1}}'),
(71, 24, 102, 103, 2, 'com_users.field.2', 'Last Name', '{\"core.delete\":{\"9\":1,\"2\":1},\"core.edit\":{\"9\":1,\"2\":1},\"core.edit.state\":{\"9\":1,\"2\":1},\"core.edit.value\":{\"9\":1,\"2\":1}}'),
(72, 24, 104, 105, 2, 'com_users.field.3', 'Phone No', '{\"core.delete\":{\"9\":1,\"2\":1},\"core.edit\":{\"9\":1,\"2\":1},\"core.edit.state\":{\"9\":1,\"2\":1},\"core.edit.value\":{\"9\":1,\"2\":1}}');

-- --------------------------------------------------------

--
-- Table structure for table `kuwait_associations`
--

CREATE TABLE `kuwait_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kuwait_banners`
--

CREATE TABLE `kuwait_banners` (
  `id` int(11) NOT NULL,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custombannercode` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sticky` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kuwait_banner_clients`
--

CREATE TABLE `kuwait_banner_clients` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extrainfo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kuwait_banner_images`
--

CREATE TABLE `kuwait_banner_images` (
  `id` int(11) UNSIGNED NOT NULL,
  `ordering` int(11) NOT NULL,
  `state` tinyint(1) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `image_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text_banner` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kuwait_banner_tracks`
--

CREATE TABLE `kuwait_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) UNSIGNED NOT NULL,
  `banner_id` int(10) UNSIGNED NOT NULL,
  `count` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kuwait_categories`
--

CREATE TABLE `kuwait_categories` (
  `id` int(11) NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extension` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kuwait_categories`
--

INSERT INTO `kuwait_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`, `version`) VALUES
(1, 0, 0, 0, 15, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '{}', 27, '2017-07-15 09:33:38', 0, '0000-00-00 00:00:00', 0, '*', 1),
(2, 27, 1, 1, 2, 1, 'uncategorised', 'com_content', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 27, '2017-07-15 09:33:38', 0, '0000-00-00 00:00:00', 0, '*', 1),
(3, 28, 1, 3, 4, 1, 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 27, '2017-07-15 09:33:38', 0, '0000-00-00 00:00:00', 0, '*', 1),
(4, 29, 1, 5, 6, 1, 'uncategorised', 'com_contact', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 27, '2017-07-15 09:33:38', 0, '0000-00-00 00:00:00', 0, '*', 1),
(5, 30, 1, 7, 8, 1, 'uncategorised', 'com_newsfeeds', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 27, '2017-07-15 09:33:38', 0, '0000-00-00 00:00:00', 0, '*', 1),
(7, 32, 1, 9, 10, 1, 'uncategorised', 'com_users', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 27, '2017-07-15 09:33:38', 0, '0000-00-00 00:00:00', 0, '*', 1),
(8, 56, 1, 11, 12, 1, 'test1', 'com_gmapfp', 'Test1', 'test1', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 27, '2017-07-15 09:35:00', 27, '2017-07-16 00:40:43', 0, '*', 1),
(9, 58, 1, 13, 14, 1, 'test2', 'com_gmapfp', 'Test2', 'test2', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 27, '2017-07-16 00:41:02', 0, '2017-07-16 00:41:02', 0, '*', 1);

-- --------------------------------------------------------

--
-- Table structure for table `kuwait_comprofiler`
--

CREATE TABLE `kuwait_comprofiler` (
  `id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `alias` varchar(150) DEFAULT NULL,
  `firstname` varchar(100) DEFAULT NULL,
  `middlename` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `hits` int(11) NOT NULL DEFAULT '0',
  `message_last_sent` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `message_number_sent` int(11) NOT NULL DEFAULT '0',
  `avatar` text,
  `avatarapproved` tinyint(4) NOT NULL DEFAULT '1',
  `canvas` text,
  `canvasapproved` tinyint(4) NOT NULL DEFAULT '1',
  `canvasposition` tinyint(4) NOT NULL DEFAULT '50',
  `approved` tinyint(4) NOT NULL DEFAULT '1',
  `confirmed` tinyint(4) NOT NULL DEFAULT '1',
  `lastupdatedate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `registeripaddr` varchar(50) NOT NULL DEFAULT '',
  `cbactivation` varchar(50) NOT NULL DEFAULT '',
  `banned` tinyint(4) NOT NULL DEFAULT '0',
  `banneddate` datetime DEFAULT NULL,
  `unbanneddate` datetime DEFAULT NULL,
  `bannedby` int(11) DEFAULT NULL,
  `unbannedby` int(11) DEFAULT NULL,
  `bannedreason` mediumtext,
  `acceptedterms` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kuwait_comprofiler`
--

INSERT INTO `kuwait_comprofiler` (`id`, `user_id`, `alias`, `firstname`, `middlename`, `lastname`, `hits`, `message_last_sent`, `message_number_sent`, `avatar`, `avatarapproved`, `canvas`, `canvasapproved`, `canvasposition`, `approved`, `confirmed`, `lastupdatedate`, `registeripaddr`, `cbactivation`, `banned`, `banneddate`, `unbanneddate`, `bannedby`, `unbannedby`, `bannedreason`, `acceptedterms`) VALUES
(27, 27, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, NULL, 1, NULL, 1, 50, 1, 1, '0000-00-00 00:00:00', '', '', 0, NULL, NULL, NULL, NULL, NULL, 0),
(28, 28, NULL, NULL, NULL, NULL, 0, '0000-00-00 00:00:00', 0, NULL, 1, NULL, 1, 50, 1, 1, '0000-00-00 00:00:00', '', '', 0, NULL, NULL, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `kuwait_comprofiler_fields`
--

CREATE TABLE `kuwait_comprofiler_fields` (
  `fieldid` int(11) NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '',
  `tablecolumns` text NOT NULL,
  `table` varchar(50) NOT NULL DEFAULT '#__comprofiler',
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `type` varchar(50) NOT NULL DEFAULT '',
  `maxlength` int(11) DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `required` tinyint(4) DEFAULT '0',
  `tabid` int(11) DEFAULT NULL,
  `ordering` int(11) DEFAULT NULL,
  `cols` int(11) DEFAULT NULL,
  `rows` int(11) DEFAULT NULL,
  `value` varchar(50) DEFAULT NULL,
  `default` mediumtext,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `registration` tinyint(1) NOT NULL DEFAULT '0',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `profile` tinyint(1) NOT NULL DEFAULT '1',
  `readonly` tinyint(1) NOT NULL DEFAULT '0',
  `searchable` tinyint(1) NOT NULL DEFAULT '0',
  `calculated` tinyint(1) NOT NULL DEFAULT '0',
  `sys` tinyint(4) NOT NULL DEFAULT '0',
  `pluginid` int(11) NOT NULL DEFAULT '0',
  `cssclass` varchar(255) DEFAULT NULL,
  `params` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kuwait_comprofiler_fields`
--

INSERT INTO `kuwait_comprofiler_fields` (`fieldid`, `name`, `tablecolumns`, `table`, `title`, `description`, `type`, `maxlength`, `size`, `required`, `tabid`, `ordering`, `cols`, `rows`, `value`, `default`, `published`, `registration`, `edit`, `profile`, `readonly`, `searchable`, `calculated`, `sys`, `pluginid`, `cssclass`, `params`) VALUES
(17, 'canvas', 'canvas,canvasapproved,canvasposition', '#__comprofiler', 'USER_CANVAS_IMAGE_TITLE', '', 'image', NULL, NULL, 0, 7, 1, NULL, NULL, NULL, NULL, 1, 0, 1, 4, 0, 0, 1, 1, 1, NULL, NULL),
(24, 'connections', '', '#__comprofiler', '_UE_CONNECTION', '', 'connections', NULL, NULL, 0, 6, 1, NULL, NULL, NULL, NULL, 1, 0, 0, 2, 1, 0, 1, 1, 1, NULL, NULL),
(25, 'hits', 'hits', '#__comprofiler', '_UE_HITS', '_UE_HITS_DESC', 'counter', NULL, NULL, 0, 6, 2, NULL, NULL, NULL, NULL, 1, 0, 0, 2, 1, 0, 1, 1, 1, NULL, NULL),
(26, 'onlinestatus', '', '#__comprofiler', '_UE_ONLINESTATUS', '', 'status', NULL, NULL, 0, 20, 2, NULL, NULL, NULL, NULL, 1, 0, 0, 4, 0, 0, 1, 1, 1, NULL, NULL),
(27, 'lastvisitDate', 'lastvisitDate', '#__users', '_UE_LASTONLINE', '', 'datetime', NULL, NULL, 0, 21, 2, NULL, NULL, NULL, NULL, 1, 0, 0, 2, 1, 0, 1, 1, 1, NULL, 'field_display_by=2'),
(28, 'registerDate', 'registerDate', '#__users', '_UE_MEMBERSINCE', '', 'datetime', NULL, NULL, 0, 21, 1, NULL, NULL, NULL, NULL, 1, 0, 0, 2, 1, 0, 1, 1, 1, NULL, 'field_display_by=6'),
(29, 'avatar', 'avatar,avatarapproved', '#__comprofiler', '_UE_IMAGE', '', 'image', NULL, NULL, 0, 20, 1, NULL, NULL, NULL, NULL, 1, 0, 1, 4, 0, 0, 1, 1, 1, NULL, NULL),
(41, 'name', 'name', '#__users', '_UE_NAME', '_UE_REGWARN_NAME', 'predefined', NULL, NULL, 0, 11, 2, NULL, NULL, NULL, NULL, 1, 1, 1, 3, 0, 1, 1, 1, 1, NULL, NULL),
(42, 'username', 'username', '#__users', '_UE_UNAME', '_UE_VALID_UNAME', 'predefined', NULL, NULL, 1, 11, 6, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, 1, 1, 1, 1, NULL, NULL),
(44, 'acceptedterms', 'acceptedterms', '#__comprofiler', 'USER_TERMS_AND_CONDITIONS_TITLE', '', 'terms', NULL, NULL, 0, 11, 12, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 1, 1, 1, NULL, NULL),
(45, 'formatname', '', '#__comprofiler', '_UE_FORMATNAME', '', 'formatname', NULL, NULL, 0, 11, 1, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 1, 0, 1, 1, 1, NULL, NULL),
(46, 'firstname', 'firstname', '#__comprofiler', '_UE_YOUR_FNAME', '_UE_REGWARN_FNAME', 'predefined', NULL, NULL, 1, 11, 3, NULL, NULL, NULL, NULL, 0, 1, 1, 1, 0, 0, 1, 1, 1, NULL, NULL),
(47, 'middlename', 'middlename', '#__comprofiler', '_UE_YOUR_MNAME', '_UE_REGWARN_MNAME', 'predefined', NULL, NULL, 0, 11, 4, NULL, NULL, NULL, NULL, 0, 3, 1, 0, 0, 0, 1, 1, 1, NULL, NULL),
(48, 'lastname', 'lastname', '#__comprofiler', '_UE_YOUR_LNAME', '_UE_REGWARN_LNAME', 'predefined', NULL, NULL, 1, 11, 5, NULL, NULL, NULL, NULL, 0, 1, 1, 1, 0, 0, 1, 1, 1, NULL, NULL),
(49, 'lastupdatedate', 'lastupdatedate', '#__comprofiler', '_UE_LASTUPDATEDON', '', 'datetime', NULL, NULL, 0, 21, 3, NULL, NULL, NULL, NULL, 1, 0, 0, 2, 1, 0, 1, 1, 1, NULL, 'field_display_by=2'),
(50, 'email', 'email', '#__users', '_UE_EMAIL', '_UE_REGWARN_MAIL', 'primaryemailaddress', NULL, NULL, 1, 11, 8, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, 0, 1, 1, 1, NULL, NULL),
(51, 'password', 'password', '#__users', '_UE_PASS', '_UE_VALID_PASS', 'password', 50, NULL, 1, 11, 9, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, 0, 1, 1, 1, NULL, NULL),
(52, 'params', 'params', '#__users', '_UE_USERPARAMS', '', 'userparams', NULL, NULL, 0, 11, 10, NULL, NULL, NULL, NULL, 1, 0, 1, 0, 0, 0, 1, 1, 1, NULL, NULL),
(53, 'pm', '', '#__comprofiler', '_UE_PM', '', 'pm', NULL, NULL, 0, 11, 11, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 1, 1, 1, NULL, NULL),
(54, 'alias', 'alias', '#__comprofiler', 'YOUR_PROFILE_URL', 'YOUR_PROFILE_URL_DESC', 'predefined', NULL, NULL, 0, 11, 7, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, 0, 1, 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kuwait_comprofiler_field_values`
--

CREATE TABLE `kuwait_comprofiler_field_values` (
  `fieldvalueid` int(11) NOT NULL,
  `fieldid` int(11) NOT NULL DEFAULT '0',
  `fieldtitle` varchar(255) NOT NULL DEFAULT '',
  `fieldlabel` varchar(255) NOT NULL DEFAULT '',
  `fieldgroup` tinyint(1) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `sys` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kuwait_comprofiler_lists`
--

CREATE TABLE `kuwait_comprofiler_lists` (
  `listid` int(11) NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `default` tinyint(1) NOT NULL DEFAULT '0',
  `viewaccesslevel` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `usergroupids` text,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kuwait_comprofiler_members`
--

CREATE TABLE `kuwait_comprofiler_members` (
  `referenceid` int(11) NOT NULL DEFAULT '0',
  `memberid` int(11) NOT NULL DEFAULT '0',
  `accepted` tinyint(1) NOT NULL DEFAULT '1',
  `pending` tinyint(1) NOT NULL DEFAULT '0',
  `membersince` date NOT NULL DEFAULT '0000-00-00',
  `reason` mediumtext,
  `description` varchar(255) DEFAULT NULL,
  `type` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kuwait_comprofiler_plugin`
--

CREATE TABLE `kuwait_comprofiler_plugin` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL DEFAULT '',
  `element` varchar(100) NOT NULL DEFAULT '',
  `type` varchar(100) DEFAULT '',
  `folder` varchar(100) DEFAULT '',
  `viewaccesslevel` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `backend_menu` varchar(255) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `published` tinyint(3) NOT NULL DEFAULT '0',
  `iscore` tinyint(3) NOT NULL DEFAULT '0',
  `client_id` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `params` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kuwait_comprofiler_plugin`
--

INSERT INTO `kuwait_comprofiler_plugin` (`id`, `name`, `element`, `type`, `folder`, `viewaccesslevel`, `backend_menu`, `ordering`, `published`, `iscore`, `client_id`, `checked_out`, `checked_out_time`, `params`) VALUES
(1, 'CB Core', 'cb.core', 'user', 'plug_cbcore', 1, '', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', '{\"name_style\":\"1\",\"name_format\":\"3\",\"date_format\":\"m\\/d\\/Y\",\"time_format\":\"H:i:s\",\"calendar_type\":\"2\",\"allow_email_display\":\"3\",\"allow_email_public\":\"0\",\"allow_email_replyto\":\"1\",\"allow_email\":\"1\",\"allow_website\":\"1\",\"allow_onlinestatus\":\"1\",\"icons_display\":\"3\",\"login_type\":\"0\",\"reg_admin_allowcbregistration\":\"0\",\"emailpass\":\"0\",\"reg_admin_approval\":\"0\",\"reg_confirmation\":\"1\",\"reg_username_checker\":\"0\",\"reg_ipaddress\":\"0\",\"reg_show_login_on_page\":\"0\",\"reg_email_name\":\"REGISTRATION_EMAIL_FROM_NAME\",\"reg_email_from\":\"\",\"reg_email_replyto\":\"\",\"reg_email_html\":\"0\",\"reg_pend_appr_sub\":\"YOUR_REGISTRATION_IS_PENDING_APPROVAL_SUBJECT\",\"reg_pend_appr_msg\":\"YOUR_REGISTRATION_IS_PENDING_APPROVAL_MESSAGE\",\"reg_welcome_sub\":\"YOUR_REGISTRATION_IS_APPROVED_SUBJECT\",\"reg_welcome_msg\":\"YOUR_REGISTRATION_IS_APPROVED_MESSAGE\",\"reg_layout\":\"flat\",\"reg_show_icons_explain\":\"0\",\"reg_title_img\":\"general\",\"reg_intro_msg\":\"REGISTRATION_GREETING\",\"reg_conclusion_msg\":\"REGISTRATION_CONCLUSION\",\"reg_first_visit_url\":\"index.php?option=com_comprofiler&view=userprofile\",\"usernameedit\":\"1\",\"usernamefallback\":\"name\",\"adminrequiredfields\":\"1\",\"profile_viewaccesslevel\":\"2\",\"maxEmailsPerHr\":\"10\",\"profile_recordviews\":\"1\",\"minHitsInterval\":\"60\",\"templatedir\":\"default\",\"use_divs\":\"1\",\"left2colsWidth\":\"40\",\"left3colsWidth\":\"32\",\"right3colsWidth\":\"32\",\"showEmptyTabs\":\"1\",\"showEmptyFields\":\"1\",\"emptyFieldsText\":\"-\",\"frontend_userparams\":\"1\",\"profile_edit_layout\":\"tabbed\",\"profile_edit_show_icons_explain\":\"0\",\"html_filter_allowed_tags\":\"\",\"conversiontype\":\"0\",\"avatarResizeAlways\":\"1\",\"avatarHeight\":\"500\",\"avatarWidth\":\"200\",\"avatarSize\":\"2000\",\"thumbHeight\":\"86\",\"thumbWidth\":\"60\",\"avatarMaintainRatio\":\"1\",\"moderator_viewaccesslevel\":\"3\",\"allowModUserApproval\":\"1\",\"moderatorEmail\":\"1\",\"allowUserReports\":\"1\",\"avatarUploadApproval\":\"1\",\"allowModeratorsUserEdit\":\"0\",\"allowUserBanning\":\"1\",\"allowConnections\":\"1\",\"connectionDisplay\":\"0\",\"connectionPath\":\"1\",\"useMutualConnections\":\"1\",\"conNotifyType\":\"0\",\"autoAddConnections\":\"1\",\"connection_categories\":\"Friend\\r\\nCo Worker\\r\\nFamily\",\"translations_debug\":\"0\",\"enableSpoofCheck\":\"1\",\"noVersionCheck\":\"0\",\"pluginVersionCheck\":\"1\",\"installFromWeb\":\"1\",\"sendemails\":\"1\",\"templateBootstrap\":\"1\",\"templateFontawesme\":\"1\",\"jsJquery\":\"1\",\"jsJqueryMigrate\":\"1\"}'),
(2, 'CB Connections', 'cb.connections', 'user', 'plug_cbconnections', 1, '', 3, 1, 1, 0, 0, '0000-00-00 00:00:00', ''),
(7, 'Default', 'default', 'templates', 'default', 1, '', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', ''),
(13, 'Default language (English)', 'default_language', 'language', 'default_language', 1, '', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', ''),
(14, 'CB Menu', 'cb.menu', 'user', 'plug_cbmenu', 1, '', 2, 1, 1, 0, 0, '0000-00-00 00:00:00', ''),
(15, 'Private Message System', 'pms.mypmspro', 'user', 'plug_pms_mypmspro', 1, '', 8, 1, 1, 0, 0, '0000-00-00 00:00:00', ''),
(17, 'CB Articles', 'cbarticles', 'user', 'plug_cbarticles', 1, '', 8, 1, 1, 0, 0, '0000-00-00 00:00:00', ''),
(18, 'CB Forums', 'cbforums', 'user', 'plug_cbforums', 1, '', 9, 1, 1, 0, 0, '0000-00-00 00:00:00', ''),
(19, 'CB Blogs', 'cbblogs', 'user', 'plug_cbblogs', 1, '', 10, 0, 1, 0, 0, '0000-00-00 00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `kuwait_comprofiler_plugin_blogs`
--

CREATE TABLE `kuwait_comprofiler_plugin_blogs` (
  `id` int(11) UNSIGNED NOT NULL,
  `user` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `blog_intro` text,
  `blog_full` text,
  `category` varchar(255) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(11) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '99999'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kuwait_comprofiler_ratings`
--

CREATE TABLE `kuwait_comprofiler_ratings` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `type` varchar(255) NOT NULL DEFAULT 'field',
  `item` int(11) NOT NULL DEFAULT '0',
  `target` int(11) NOT NULL DEFAULT '0',
  `rating` float NOT NULL DEFAULT '0',
  `ip_address` varchar(255) DEFAULT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kuwait_comprofiler_sessions`
--

CREATE TABLE `kuwait_comprofiler_sessions` (
  `username` varchar(50) NOT NULL DEFAULT '',
  `userid` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `ui` tinyint(4) NOT NULL DEFAULT '0',
  `incoming_ip` varchar(39) NOT NULL DEFAULT '',
  `client_ip` varchar(39) NOT NULL DEFAULT '',
  `session_id` varchar(33) NOT NULL DEFAULT '',
  `session_data` mediumtext NOT NULL,
  `expiry_time` int(14) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kuwait_comprofiler_tabs`
--

CREATE TABLE `kuwait_comprofiler_tabs` (
  `tabid` int(11) NOT NULL,
  `title` varchar(50) NOT NULL DEFAULT '',
  `description` text,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `ordering_edit` int(11) NOT NULL DEFAULT '10',
  `ordering_register` int(11) NOT NULL DEFAULT '10',
  `width` varchar(10) NOT NULL DEFAULT '.5',
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `pluginclass` varchar(255) DEFAULT NULL,
  `pluginid` int(11) DEFAULT NULL,
  `fields` tinyint(1) NOT NULL DEFAULT '1',
  `params` mediumtext,
  `sys` tinyint(4) NOT NULL DEFAULT '0',
  `displaytype` varchar(255) NOT NULL DEFAULT '',
  `position` varchar(255) NOT NULL DEFAULT '',
  `viewaccesslevel` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cssclass` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kuwait_comprofiler_tabs`
--

INSERT INTO `kuwait_comprofiler_tabs` (`tabid`, `title`, `description`, `ordering`, `ordering_edit`, `ordering_register`, `width`, `enabled`, `pluginclass`, `pluginid`, `fields`, `params`, `sys`, `displaytype`, `position`, `viewaccesslevel`, `cssclass`) VALUES
(6, 'USER_STATISTICS_TITLE', '', 1, 10, 10, '.5', 1, 'getStatsTab', 1, 1, NULL, 1, 'html', 'canvas_stats', 1, NULL),
(7, 'USER_CANVAS_TITLE', '', 1, 11, 11, '1', 1, 'getCanvasTab', 1, 1, NULL, 1, 'html', 'canvas_background', 1, NULL),
(8, 'BLOGS_TITLE', '', 3, 10, 10, '1', 1, 'cbblogsTab', 19, 0, NULL, 1, 'menu', 'canvas_main_middle', 1, NULL),
(9, 'FORUMS_TITLE', '', 4, 10, 10, '1', 0, 'cbforumsTab', 18, 0, NULL, 1, 'menu', 'canvas_main_middle', 1, NULL),
(10, 'ARTICLES_TITLE', '', 2, 10, 10, '1', 1, 'cbarticlesTab', 17, 0, NULL, 1, 'menu', 'canvas_main_middle', 1, NULL),
(11, '_UE_CONTACT_INFO_HEADER', '', 1, 10, 10, '1', 1, 'getContactTab', 1, 1, NULL, 1, 'menu', 'canvas_main_middle', 1, NULL),
(15, '_UE_CONNECTION', '', 5, 10, 10, '1', 1, 'getConnectionTab', 2, 0, NULL, 1, 'menunested', 'canvas_main_middle', 1, NULL),
(17, '_UE_MENU', '', 1, 10, 10, '1', 1, 'getMenuTab', 14, 0, NULL, 1, 'html', 'canvas_menu', 1, NULL),
(18, '_UE_CONNECTIONPATHS', '', 1, 10, 10, '1', 1, 'getConnectionPathsTab', 2, 0, NULL, 1, 'html', 'cb_head', 1, NULL),
(19, '_UE_PROFILE_PAGE_TITLE', '', 1, 10, 10, '1', 1, 'getPageTitleTab', 1, 1, NULL, 1, 'html', 'canvas_title', 1, NULL),
(20, '_UE_PORTRAIT', '', 1, 11, 11, '1', 1, 'getPortraitTab', 1, 1, NULL, 1, 'html', 'canvas_photo', 1, NULL),
(21, '_UE_USER_STATUS', '', 1, 10, 10, '.5', 1, 'getStatusTab', 14, 1, NULL, 1, 'html', 'canvas_main_right', 1, NULL),
(22, '_UE_PMSTAB', '', 6, 10, 10, '.5', 0, 'getmypmsproTab', 15, 0, NULL, 1, 'menunested', 'canvas_main_middle', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kuwait_comprofiler_userreports`
--

CREATE TABLE `kuwait_comprofiler_userreports` (
  `reportid` int(11) NOT NULL,
  `reporteduser` int(11) NOT NULL DEFAULT '0',
  `reportedbyuser` int(11) NOT NULL DEFAULT '0',
  `reportedondate` date NOT NULL DEFAULT '0000-00-00',
  `reportexplaination` text NOT NULL,
  `reportedstatus` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kuwait_comprofiler_views`
--

CREATE TABLE `kuwait_comprofiler_views` (
  `viewer_id` int(11) NOT NULL DEFAULT '0',
  `profile_id` int(11) NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT '',
  `lastview` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `viewscount` int(11) NOT NULL DEFAULT '0',
  `vote` tinyint(3) DEFAULT NULL,
  `lastvote` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kuwait_contact_details`
--

CREATE TABLE `kuwait_contact_details` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `con_position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `suburb` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `misc` mediumtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_to` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_con` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `webpage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Set if contact is featured.',
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kuwait_content`
--

CREATE TABLE `kuwait_content` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `introtext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `fulltext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribs` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kuwait_contentitem_tag_map`
--

CREATE TABLE `kuwait_contentitem_tag_map` (
  `type_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_content_id` int(10) UNSIGNED NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) UNSIGNED NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(8) NOT NULL COMMENT 'PK from the content_type table'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Maps items from content tables to tags';

-- --------------------------------------------------------

--
-- Table structure for table `kuwait_content_frontpage`
--

CREATE TABLE `kuwait_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kuwait_content_rating`
--

CREATE TABLE `kuwait_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `rating_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lastip` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kuwait_content_types`
--

CREATE TABLE `kuwait_content_types` (
  `type_id` int(10) UNSIGNED NOT NULL,
  `type_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `table` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `rules` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_mappings` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `router` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'JSON string for com_contenthistory options'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kuwait_content_types`
--

INSERT INTO `kuwait_content_types` (`type_id`, `type_title`, `type_alias`, `table`, `rules`, `field_mappings`, `router`, `content_history_options`) VALUES
(1, 'Article', 'com_content.article', '{\"special\":{\"dbtable\":\"#__content\",\"key\":\"id\",\"type\":\"Content\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"state\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"introtext\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"attribs\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"asset_id\"}, \"special\":{\"fulltext\":\"fulltext\"}}', 'ContentHelperRoute::getArticleRoute', '{\"formFile\":\"administrator\\/components\\/com_content\\/models\\/forms\\/article.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),
(2, 'Contact', 'com_contact.contact', '{\"special\":{\"dbtable\":\"#__contact_details\",\"key\":\"id\",\"type\":\"Contact\",\"prefix\":\"ContactTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"address\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"image\", \"core_urls\":\"webpage\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\":{\"con_position\":\"con_position\",\"suburb\":\"suburb\",\"state\":\"state\",\"country\":\"country\",\"postcode\":\"postcode\",\"telephone\":\"telephone\",\"fax\":\"fax\",\"misc\":\"misc\",\"email_to\":\"email_to\",\"default_con\":\"default_con\",\"user_id\":\"user_id\",\"mobile\":\"mobile\",\"sortname1\":\"sortname1\",\"sortname2\":\"sortname2\",\"sortname3\":\"sortname3\"}}', 'ContactHelperRoute::getContactRoute', '{\"formFile\":\"administrator\\/components\\/com_contact\\/models\\/forms\\/contact.xml\",\"hideFields\":[\"default_con\",\"checked_out\",\"checked_out_time\",\"version\",\"xreference\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"], \"displayLookup\":[ {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ] }'),
(3, 'Newsfeed', 'com_newsfeeds.newsfeed', '{\"special\":{\"dbtable\":\"#__newsfeeds\",\"key\":\"id\",\"type\":\"Newsfeed\",\"prefix\":\"NewsfeedsTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\":{\"numarticles\":\"numarticles\",\"cache_time\":\"cache_time\",\"rtl\":\"rtl\"}}', 'NewsfeedsHelperRoute::getNewsfeedRoute', '{\"formFile\":\"administrator\\/components\\/com_newsfeeds\\/models\\/forms\\/newsfeed.xml\",\"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),
(4, 'User', 'com_users.user', '{\"special\":{\"dbtable\":\"#__users\",\"key\":\"id\",\"type\":\"User\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"null\",\"core_alias\":\"username\",\"core_created_time\":\"registerdate\",\"core_modified_time\":\"lastvisitDate\",\"core_body\":\"null\", \"core_hits\":\"null\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"access\":\"null\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"null\", \"core_language\":\"null\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"null\", \"core_ordering\":\"null\", \"core_metakey\":\"null\", \"core_metadesc\":\"null\", \"core_catid\":\"null\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{}}', 'UsersHelperRoute::getUserRoute', ''),
(5, 'Article Category', 'com_content.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', 'ContentHelperRoute::getCategoryRoute', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(6, 'Contact Category', 'com_contact.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', 'ContactHelperRoute::getCategoryRoute', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(7, 'Newsfeeds Category', 'com_newsfeeds.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', 'NewsfeedsHelperRoute::getCategoryRoute', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(8, 'Tag', 'com_tags.tag', '{\"special\":{\"dbtable\":\"#__tags\",\"key\":\"tag_id\",\"type\":\"Tag\",\"prefix\":\"TagsTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"null\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\"}}', 'TagsHelperRoute::getTagRoute', '{\"formFile\":\"administrator\\/components\\/com_tags\\/models\\/forms\\/tag.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"lft\", \"rgt\", \"level\", \"path\", \"urls\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),
(9, 'Banner', 'com_banners.banner', '{\"special\":{\"dbtable\":\"#__banners\",\"key\":\"id\",\"type\":\"Banner\",\"prefix\":\"BannersTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"null\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{\"imptotal\":\"imptotal\", \"impmade\":\"impmade\", \"clicks\":\"clicks\", \"clickurl\":\"clickurl\", \"custombannercode\":\"custombannercode\", \"cid\":\"cid\", \"purchase_type\":\"purchase_type\", \"track_impressions\":\"track_impressions\", \"track_clicks\":\"track_clicks\"}}', '', '{\"formFile\":\"administrator\\/components\\/com_banners\\/models\\/forms\\/banner.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"reset\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"imptotal\", \"impmade\", \"reset\"], \"convertToInt\":[\"publish_up\", \"publish_down\", \"ordering\"], \"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"cid\",\"targetTable\":\"#__banner_clients\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),
(10, 'Banners Category', 'com_banners.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\": {\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', '', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(11, 'Banner Client', 'com_banners.client', '{\"special\":{\"dbtable\":\"#__banner_clients\",\"key\":\"id\",\"type\":\"Client\",\"prefix\":\"BannersTable\"}}', '', '', '', '{\"formFile\":\"administrator\\/components\\/com_banners\\/models\\/forms\\/client.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\"], \"ignoreChanges\":[\"checked_out\", \"checked_out_time\"], \"convertToInt\":[], \"displayLookup\":[]}'),
(12, 'User Notes', 'com_users.note', '{\"special\":{\"dbtable\":\"#__user_notes\",\"key\":\"id\",\"type\":\"Note\",\"prefix\":\"UsersTable\"}}', '', '', '', '{\"formFile\":\"administrator\\/components\\/com_users\\/models\\/forms\\/note.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\"], \"convertToInt\":[\"publish_up\", \"publish_down\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),
(13, 'User Notes Category', 'com_users.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', '', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}');

-- --------------------------------------------------------

--
-- Table structure for table `kuwait_core_log_searches`
--

CREATE TABLE `kuwait_core_log_searches` (
  `search_term` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kuwait_extensions`
--

CREATE TABLE `kuwait_extensions` (
  `extension_id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Parent package ID for extensions installed as a package.',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '0',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `system_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kuwait_extensions`
--

INSERT INTO `kuwait_extensions` (`extension_id`, `package_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(1, 0, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '{\"name\":\"com_mailto\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MAILTO_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mailto\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(2, 0, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '{\"name\":\"com_wrapper\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_WRAPPER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"wrapper\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(3, 0, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 1, '{\"name\":\"com_admin\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_ADMIN_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(4, 0, 'com_banners', 'component', 'com_banners', '', 1, 1, 1, 0, '{\"name\":\"com_banners\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"banners\"}', '{\"purchase_type\":\"3\",\"track_impressions\":\"0\",\"track_clicks\":\"0\",\"metakey_prefix\":\"\",\"save_history\":\"1\",\"history_limit\":10}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(5, 0, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '{\"name\":\"com_cache\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CACHE_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(6, 0, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '{\"name\":\"com_categories\",\"type\":\"component\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(7, 0, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '{\"name\":\"com_checkin\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CHECKIN_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(8, 0, 'com_contact', 'component', 'com_contact', '', 1, 1, 1, 0, '{\"name\":\"com_contact\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}', '{\"contact_layout\":\"_:default\",\"show_contact_category\":\"hide\",\"save_history\":\"1\",\"history_limit\":10,\"show_contact_list\":\"0\",\"presentation_style\":\"sliders\",\"show_tags\":\"1\",\"show_info\":\"1\",\"show_name\":\"1\",\"show_position\":\"1\",\"show_email\":\"0\",\"show_street_address\":\"1\",\"show_suburb\":\"1\",\"show_state\":\"1\",\"show_postcode\":\"1\",\"show_country\":\"1\",\"show_telephone\":\"1\",\"show_mobile\":\"1\",\"show_fax\":\"1\",\"show_webpage\":\"1\",\"show_image\":\"1\",\"show_misc\":\"1\",\"image\":\"\",\"allow_vcard\":\"0\",\"show_articles\":\"0\",\"articles_display_num\":\"10\",\"show_profile\":\"0\",\"show_user_custom_fields\":[\"-1\"],\"show_links\":\"0\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"contact_icons\":\"0\",\"icon_address\":\"\",\"icon_email\":\"\",\"icon_telephone\":\"\",\"icon_mobile\":\"\",\"icon_fax\":\"\",\"icon_misc\":\"\",\"category_layout\":\"_:default\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"0\",\"maxLevel\":\"-1\",\"show_subcat_desc\":\"1\",\"show_empty_categories\":\"0\",\"show_cat_items\":\"1\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_subcat_desc_cat\":\"1\",\"show_empty_categories_cat\":\"0\",\"show_cat_items_cat\":\"1\",\"filter_field\":\"0\",\"show_pagination_limit\":\"0\",\"show_headings\":\"1\",\"show_image_heading\":\"0\",\"show_position_headings\":\"1\",\"show_email_headings\":\"0\",\"show_telephone_headings\":\"1\",\"show_mobile_headings\":\"0\",\"show_fax_headings\":\"0\",\"show_suburb_headings\":\"1\",\"show_state_headings\":\"1\",\"show_country_headings\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"initial_sort\":\"ordering\",\"captcha\":\"\",\"show_email_form\":\"1\",\"show_email_copy\":\"1\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"1\",\"custom_reply\":\"0\",\"redirect\":\"\",\"show_feed_link\":\"1\",\"sef_advanced\":0,\"sef_ids\":0,\"custom_fields_enable\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(9, 0, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '{\"name\":\"com_cpanel\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CPANEL_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10, 0, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '{\"name\":\"com_installer\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_INSTALLER_XML_DESCRIPTION\",\"group\":\"\"}', '{\"show_jed_info\":\"1\",\"cachetimeout\":\"6\",\"minimum_stability\":\"4\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(11, 0, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '{\"name\":\"com_languages\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\"}', '{\"administrator\":\"en-GB\",\"site\":\"en-GB\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(12, 0, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '{\"name\":\"com_login\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(13, 0, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '{\"name\":\"com_media\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MEDIA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"media\"}', '{\"upload_extensions\":\"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,TXT,XCF,XLS\",\"upload_maxsize\":\"10\",\"file_path\":\"images\",\"image_path\":\"images\",\"restrict_uploads\":\"1\",\"check_mime\":\"1\",\"image_extensions\":\"bmp,gif,jpg,png\",\"ignore_extensions\":\"\",\"upload_mime\":\"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip\",\"upload_mime_illegal\":\"text\\/html\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(14, 0, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '{\"name\":\"com_menus\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MENUS_XML_DESCRIPTION\",\"group\":\"\"}', '{\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(15, 0, 'com_messages', 'component', 'com_messages', '', 1, 1, 1, 1, '{\"name\":\"com_messages\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MESSAGES_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(16, 0, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '{\"name\":\"com_modules\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MODULES_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(17, 0, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 1, 1, 0, '{\"name\":\"com_newsfeeds\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}', '{\"newsfeed_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_feed_image\":\"1\",\"show_feed_description\":\"1\",\"show_item_description\":\"1\",\"feed_character_count\":\"0\",\"feed_display_order\":\"des\",\"float_first\":\"right\",\"float_second\":\"right\",\"show_tags\":\"1\",\"category_layout\":\"_:default\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"1\",\"maxLevel\":\"-1\",\"show_empty_categories\":\"0\",\"show_subcat_desc\":\"1\",\"show_cat_items\":\"1\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_items_cat\":\"1\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_headings\":\"1\",\"show_articles\":\"0\",\"show_link\":\"1\",\"show_pagination\":\"1\",\"show_pagination_results\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(18, 0, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '{\"name\":\"com_plugins\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_PLUGINS_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(19, 0, 'com_search', 'component', 'com_search', '', 1, 1, 1, 0, '{\"name\":\"com_search\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_SEARCH_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"search\"}', '{\"enabled\":\"0\",\"search_phrases\":\"1\",\"search_areas\":\"1\",\"show_date\":\"1\",\"opensearch_name\":\"\",\"opensearch_description\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(20, 0, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '{\"name\":\"com_templates\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_TEMPLATES_XML_DESCRIPTION\",\"group\":\"\"}', '{\"template_positions_display\":\"1\",\"upload_limit\":\"10\",\"image_formats\":\"gif,bmp,jpg,jpeg,png\",\"source_formats\":\"txt,less,ini,xml,js,php,css,scss,sass\",\"font_formats\":\"woff,ttf,otf\",\"compressed_formats\":\"zip\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(22, 0, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '{\"name\":\"com_content\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}', '{\"article_layout\":\"_:default\",\"show_title\":\"1\",\"link_titles\":\"1\",\"show_intro\":\"1\",\"show_category\":\"1\",\"link_category\":\"1\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"1\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"1\",\"show_item_navigation\":\"1\",\"show_vote\":\"0\",\"show_readmore\":\"1\",\"show_readmore_title\":\"1\",\"readmore_limit\":\"100\",\"show_icons\":\"1\",\"show_print_icon\":\"1\",\"show_email_icon\":\"1\",\"show_hits\":\"1\",\"show_noauth\":\"0\",\"show_publishing_options\":\"1\",\"show_article_options\":\"1\",\"save_history\":\"1\",\"history_limit\":10,\"show_urls_images_frontend\":\"0\",\"show_urls_images_backend\":\"1\",\"targeta\":0,\"targetb\":0,\"targetc\":0,\"float_intro\":\"left\",\"float_fulltext\":\"left\",\"category_layout\":\"_:blog\",\"show_category_title\":\"0\",\"show_description\":\"0\",\"show_description_image\":\"0\",\"maxLevel\":\"1\",\"show_empty_categories\":\"0\",\"show_no_articles\":\"1\",\"show_subcat_desc\":\"1\",\"show_cat_num_articles\":\"0\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_num_articles_cat\":\"1\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"4\",\"num_columns\":\"2\",\"num_links\":\"4\",\"multi_column_order\":\"0\",\"show_subcategory_content\":\"0\",\"show_pagination_limit\":\"1\",\"filter_field\":\"hide\",\"show_headings\":\"1\",\"list_show_date\":\"0\",\"date_format\":\"\",\"list_show_hits\":\"1\",\"list_show_author\":\"1\",\"orderby_pri\":\"order\",\"orderby_sec\":\"rdate\",\"order_date\":\"published\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_feed_link\":\"1\",\"feed_summary\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(23, 0, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '{\"name\":\"com_config\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONFIG_XML_DESCRIPTION\",\"group\":\"\"}', '{\"filters\":{\"1\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"6\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"7\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"2\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"3\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"4\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"5\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"10\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"12\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"8\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(24, 0, 'com_redirect', 'component', 'com_redirect', '', 1, 1, 0, 1, '{\"name\":\"com_redirect\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(25, 0, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '{\"name\":\"com_users\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_USERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"users\"}', '{\"allowUserRegistration\":\"1\",\"new_usertype\":\"2\",\"guest_usergroup\":\"9\",\"sendpassword\":\"1\",\"useractivation\":\"0\",\"mail_to_admin\":\"1\",\"captcha\":\"\",\"frontend_userparams\":\"1\",\"site_language\":\"0\",\"change_login_name\":\"0\",\"reset_count\":\"10\",\"reset_time\":\"1\",\"minimum_length\":\"4\",\"minimum_integers\":\"0\",\"minimum_symbols\":\"0\",\"minimum_uppercase\":\"0\",\"save_history\":\"1\",\"history_limit\":5,\"mailSubjectPrefix\":\"\",\"mailBodySuffix\":\"\",\"debugUsers\":\"1\",\"debugGroups\":\"1\",\"custom_fields_enable\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(27, 0, 'com_finder', 'component', 'com_finder', '', 1, 1, 0, 0, '{\"name\":\"com_finder\",\"type\":\"component\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"finder\"}', '{\"enabled\":\"0\",\"show_description\":\"1\",\"description_length\":255,\"allow_empty_query\":\"0\",\"show_url\":\"1\",\"show_autosuggest\":\"1\",\"show_suggested_query\":\"1\",\"show_explained_query\":\"1\",\"show_advanced\":\"1\",\"show_advanced_tips\":\"1\",\"expand_advanced\":\"0\",\"show_date_filters\":\"0\",\"sort_order\":\"relevance\",\"sort_direction\":\"desc\",\"highlight_terms\":\"1\",\"opensearch_name\":\"\",\"opensearch_description\":\"\",\"batch_size\":\"50\",\"memory_table_limit\":30000,\"title_multiplier\":\"1.7\",\"text_multiplier\":\"0.7\",\"meta_multiplier\":\"1.2\",\"path_multiplier\":\"2.0\",\"misc_multiplier\":\"0.3\",\"stem\":\"1\",\"stemmer\":\"snowball\",\"enable_logging\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(28, 0, 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', 1, 1, 0, 1, '{\"name\":\"com_joomlaupdate\",\"type\":\"component\",\"creationDate\":\"February 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.2\",\"description\":\"COM_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\"}', '{\"updatesource\":\"default\",\"customurl\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(29, 0, 'com_tags', 'component', 'com_tags', '', 1, 1, 1, 1, '{\"name\":\"com_tags\",\"type\":\"component\",\"creationDate\":\"December 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"COM_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}', '{\"tag_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_tag_title\":\"0\",\"tag_list_show_tag_image\":\"0\",\"tag_list_show_tag_description\":\"0\",\"tag_list_image\":\"\",\"tag_list_orderby\":\"title\",\"tag_list_orderby_direction\":\"ASC\",\"show_headings\":\"0\",\"tag_list_show_date\":\"0\",\"tag_list_show_item_image\":\"0\",\"tag_list_show_item_description\":\"0\",\"tag_list_item_maximum_characters\":0,\"return_any_or_all\":\"1\",\"include_children\":\"0\",\"maximum\":200,\"tag_list_language_filter\":\"all\",\"tags_layout\":\"_:default\",\"all_tags_orderby\":\"title\",\"all_tags_orderby_direction\":\"ASC\",\"all_tags_show_tag_image\":\"0\",\"all_tags_show_tag_descripion\":\"0\",\"all_tags_tag_maximum_characters\":20,\"all_tags_show_tag_hits\":\"0\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"tag_field_ajax_mode\":\"1\",\"show_feed_link\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(30, 0, 'com_contenthistory', 'component', 'com_contenthistory', '', 1, 1, 1, 0, '{\"name\":\"com_contenthistory\",\"type\":\"component\",\"creationDate\":\"May 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_CONTENTHISTORY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contenthistory\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(31, 0, 'com_ajax', 'component', 'com_ajax', '', 1, 1, 1, 1, '{\"name\":\"com_ajax\",\"type\":\"component\",\"creationDate\":\"August 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_AJAX_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"ajax\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(32, 0, 'com_postinstall', 'component', 'com_postinstall', '', 1, 1, 1, 1, '{\"name\":\"com_postinstall\",\"type\":\"component\",\"creationDate\":\"September 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_POSTINSTALL_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(33, 0, 'com_fields', 'component', 'com_fields', '', 1, 1, 1, 0, '{\"name\":\"com_fields\",\"type\":\"component\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"COM_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(34, 0, 'com_associations', 'component', 'com_associations', '', 1, 1, 1, 0, '{\"name\":\"com_associations\",\"type\":\"component\",\"creationDate\":\"Januar 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"COM_ASSOCIATIONS_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(102, 0, 'LIB_PHPUTF8', 'library', 'phputf8', '', 0, 1, 1, 1, '{\"name\":\"LIB_PHPUTF8\",\"type\":\"library\",\"creationDate\":\"2006\",\"author\":\"Harry Fuecks\",\"copyright\":\"Copyright various authors\",\"authorEmail\":\"hfuecks@gmail.com\",\"authorUrl\":\"http:\\/\\/sourceforge.net\\/projects\\/phputf8\",\"version\":\"0.5\",\"description\":\"LIB_PHPUTF8_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"phputf8\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(103, 0, 'LIB_JOOMLA', 'library', 'joomla', '', 0, 1, 1, 1, '{\"name\":\"LIB_JOOMLA\",\"type\":\"library\",\"creationDate\":\"2008\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"https:\\/\\/www.joomla.org\",\"version\":\"13.1\",\"description\":\"LIB_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '{\"mediaversion\":\"eec5bf94c8a1541d41664fe24d30602b\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(104, 0, 'LIB_IDNA', 'library', 'idna_convert', '', 0, 1, 1, 1, '{\"name\":\"LIB_IDNA\",\"type\":\"library\",\"creationDate\":\"2004\",\"author\":\"phlyLabs\",\"copyright\":\"2004-2011 phlyLabs Berlin, http:\\/\\/phlylabs.de\",\"authorEmail\":\"phlymail@phlylabs.de\",\"authorUrl\":\"http:\\/\\/phlylabs.de\",\"version\":\"0.8.0\",\"description\":\"LIB_IDNA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"idna_convert\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(105, 0, 'FOF', 'library', 'fof', '', 0, 1, 1, 1, '{\"name\":\"FOF\",\"type\":\"library\",\"creationDate\":\"2015-04-22 13:15:32\",\"author\":\"Nicholas K. Dionysopoulos \\/ Akeeba Ltd\",\"copyright\":\"(C)2011-2015 Nicholas K. Dionysopoulos\",\"authorEmail\":\"nicholas@akeebabackup.com\",\"authorUrl\":\"https:\\/\\/www.akeebabackup.com\",\"version\":\"2.4.3\",\"description\":\"LIB_FOF_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fof\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(106, 0, 'LIB_PHPASS', 'library', 'phpass', '', 0, 1, 1, 1, '{\"name\":\"LIB_PHPASS\",\"type\":\"library\",\"creationDate\":\"2004-2006\",\"author\":\"Solar Designer\",\"copyright\":\"\",\"authorEmail\":\"solar@openwall.com\",\"authorUrl\":\"http:\\/\\/www.openwall.com\\/phpass\\/\",\"version\":\"0.3\",\"description\":\"LIB_PHPASS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"phpass\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(200, 0, 'mod_articles_archive', 'module', 'mod_articles_archive', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_archive\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_archive\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(201, 0, 'mod_articles_latest', 'module', 'mod_articles_latest', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_NEWS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_latest\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(202, 0, 'mod_articles_popular', 'module', 'mod_articles_popular', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_popular\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_popular\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(203, 0, 'mod_banners', 'module', 'mod_banners', '', 0, 1, 1, 0, '{\"name\":\"mod_banners\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_banners\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(204, 0, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', 0, 1, 1, 1, '{\"name\":\"mod_breadcrumbs\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BREADCRUMBS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_breadcrumbs\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(205, 0, 'mod_custom', 'module', 'mod_custom', '', 0, 1, 1, 1, '{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_custom\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(206, 0, 'mod_feed', 'module', 'mod_feed', '', 0, 1, 1, 0, '{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_feed\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(207, 0, 'mod_footer', 'module', 'mod_footer', '', 0, 1, 1, 0, '{\"name\":\"mod_footer\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FOOTER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_footer\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(208, 0, 'mod_login', 'module', 'mod_login', '', 0, 1, 1, 1, '{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_login\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(209, 0, 'mod_menu', 'module', 'mod_menu', '', 0, 1, 1, 1, '{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_menu\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(210, 0, 'mod_articles_news', 'module', 'mod_articles_news', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_news\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_NEWS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_news\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(211, 0, 'mod_random_image', 'module', 'mod_random_image', '', 0, 1, 1, 0, '{\"name\":\"mod_random_image\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RANDOM_IMAGE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_random_image\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(212, 0, 'mod_related_items', 'module', 'mod_related_items', '', 0, 1, 1, 0, '{\"name\":\"mod_related_items\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RELATED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_related_items\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(213, 0, 'mod_search', 'module', 'mod_search', '', 0, 1, 1, 0, '{\"name\":\"mod_search\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SEARCH_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_search\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(214, 0, 'mod_stats', 'module', 'mod_stats', '', 0, 1, 1, 0, '{\"name\":\"mod_stats\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_stats\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(215, 0, 'mod_syndicate', 'module', 'mod_syndicate', '', 0, 1, 1, 1, '{\"name\":\"mod_syndicate\",\"type\":\"module\",\"creationDate\":\"May 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SYNDICATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_syndicate\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(216, 0, 'mod_users_latest', 'module', 'mod_users_latest', '', 0, 1, 1, 0, '{\"name\":\"mod_users_latest\",\"type\":\"module\",\"creationDate\":\"December 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_USERS_LATEST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_users_latest\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(218, 0, 'mod_whosonline', 'module', 'mod_whosonline', '', 0, 1, 1, 0, '{\"name\":\"mod_whosonline\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WHOSONLINE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_whosonline\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(219, 0, 'mod_wrapper', 'module', 'mod_wrapper', '', 0, 1, 1, 0, '{\"name\":\"mod_wrapper\",\"type\":\"module\",\"creationDate\":\"October 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WRAPPER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_wrapper\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(220, 0, 'mod_articles_category', 'module', 'mod_articles_category', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_category\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_category\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(221, 0, 'mod_articles_categories', 'module', 'mod_articles_categories', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_categories\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_categories\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(222, 0, 'mod_languages', 'module', 'mod_languages', '', 0, 1, 1, 1, '{\"name\":\"mod_languages\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"MOD_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_languages\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(223, 0, 'mod_finder', 'module', 'mod_finder', '', 0, 1, 0, 0, '{\"name\":\"mod_finder\",\"type\":\"module\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_finder\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(300, 0, 'mod_custom', 'module', 'mod_custom', '', 1, 1, 1, 1, '{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_custom\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(301, 0, 'mod_feed', 'module', 'mod_feed', '', 1, 1, 1, 0, '{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_feed\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(302, 0, 'mod_latest', 'module', 'mod_latest', '', 1, 1, 1, 0, '{\"name\":\"mod_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_latest\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(303, 0, 'mod_logged', 'module', 'mod_logged', '', 1, 1, 1, 0, '{\"name\":\"mod_logged\",\"type\":\"module\",\"creationDate\":\"January 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGGED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_logged\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(304, 0, 'mod_login', 'module', 'mod_login', '', 1, 1, 1, 1, '{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"March 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_login\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(305, 0, 'mod_menu', 'module', 'mod_menu', '', 1, 1, 1, 0, '{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_menu\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(307, 0, 'mod_popular', 'module', 'mod_popular', '', 1, 1, 1, 0, '{\"name\":\"mod_popular\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_popular\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(308, 0, 'mod_quickicon', 'module', 'mod_quickicon', '', 1, 1, 1, 1, '{\"name\":\"mod_quickicon\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_QUICKICON_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_quickicon\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(309, 0, 'mod_status', 'module', 'mod_status', '', 1, 1, 1, 0, '{\"name\":\"mod_status\",\"type\":\"module\",\"creationDate\":\"Feb 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATUS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_status\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(310, 0, 'mod_submenu', 'module', 'mod_submenu', '', 1, 1, 1, 0, '{\"name\":\"mod_submenu\",\"type\":\"module\",\"creationDate\":\"Feb 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SUBMENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_submenu\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(311, 0, 'mod_title', 'module', 'mod_title', '', 1, 1, 1, 0, '{\"name\":\"mod_title\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TITLE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_title\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(312, 0, 'mod_toolbar', 'module', 'mod_toolbar', '', 1, 1, 1, 1, '{\"name\":\"mod_toolbar\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TOOLBAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_toolbar\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(313, 0, 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', 1, 1, 1, 0, '{\"name\":\"mod_multilangstatus\",\"type\":\"module\",\"creationDate\":\"September 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MULTILANGSTATUS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_multilangstatus\"}', '{\"cache\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(314, 0, 'mod_version', 'module', 'mod_version', '', 1, 1, 1, 0, '{\"name\":\"mod_version\",\"type\":\"module\",\"creationDate\":\"January 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_VERSION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_version\"}', '{\"format\":\"short\",\"product\":\"1\",\"cache\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(315, 0, 'mod_stats_admin', 'module', 'mod_stats_admin', '', 1, 1, 1, 0, '{\"name\":\"mod_stats_admin\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_stats_admin\"}', '{\"serverinfo\":\"0\",\"siteinfo\":\"0\",\"counter\":\"0\",\"increase\":\"0\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(316, 0, 'mod_tags_popular', 'module', 'mod_tags_popular', '', 0, 1, 1, 0, '{\"name\":\"mod_tags_popular\",\"type\":\"module\",\"creationDate\":\"January 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_tags_popular\"}', '{\"maximum\":\"5\",\"timeframe\":\"alltime\",\"owncache\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(317, 0, 'mod_tags_similar', 'module', 'mod_tags_similar', '', 0, 1, 1, 0, '{\"name\":\"mod_tags_similar\",\"type\":\"module\",\"creationDate\":\"January 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_SIMILAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_tags_similar\"}', '{\"maximum\":\"5\",\"matchtype\":\"any\",\"owncache\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(400, 0, 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', 0, 0, 1, 0, '{\"name\":\"plg_authentication_gmail\",\"type\":\"plugin\",\"creationDate\":\"February 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_GMAIL_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"gmail\"}', '{\"applysuffix\":\"0\",\"suffix\":\"\",\"verifypeer\":\"1\",\"user_blacklist\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(401, 0, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 1, '{\"name\":\"plg_authentication_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTH_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(402, 0, 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', 0, 0, 1, 0, '{\"name\":\"plg_authentication_ldap\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LDAP_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"ldap\"}', '{\"host\":\"\",\"port\":\"389\",\"use_ldapV3\":\"0\",\"negotiate_tls\":\"0\",\"no_referrals\":\"0\",\"auth_method\":\"bind\",\"base_dn\":\"\",\"search_string\":\"\",\"users_dn\":\"\",\"username\":\"admin\",\"password\":\"bobby7\",\"ldap_fullname\":\"fullName\",\"ldap_email\":\"mail\",\"ldap_uid\":\"uid\"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(403, 0, 'plg_content_contact', 'plugin', 'contact', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_contact\",\"type\":\"plugin\",\"creationDate\":\"January 2014\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.2\",\"description\":\"PLG_CONTENT_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0);
INSERT INTO `kuwait_extensions` (`extension_id`, `package_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(404, 0, 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_emailcloak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"emailcloak\"}', '{\"mode\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(406, 0, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_loadmodule\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOADMODULE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"loadmodule\"}', '{\"style\":\"xhtml\"}', '', '', 0, '2011-09-18 15:22:50', 0, 0),
(407, 0, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagebreak\"}', '{\"title\":\"1\",\"multipage_toc\":\"1\",\"showall\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(408, 0, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_pagenavigation\",\"type\":\"plugin\",\"creationDate\":\"January 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_PAGENAVIGATION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagenavigation\"}', '{\"position\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(409, 0, 'plg_content_vote', 'plugin', 'vote', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_vote\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_VOTE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"vote\"}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(410, 0, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 1, 1, 1, '{\"name\":\"plg_editors_codemirror\",\"type\":\"plugin\",\"creationDate\":\"28 March 2011\",\"author\":\"Marijn Haverbeke\",\"copyright\":\"Copyright (C) 2014 - 2017 by Marijn Haverbeke <marijnh@gmail.com> and others\",\"authorEmail\":\"marijnh@gmail.com\",\"authorUrl\":\"http:\\/\\/codemirror.net\\/\",\"version\":\"5.25.2\",\"description\":\"PLG_CODEMIRROR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"codemirror\"}', '{\"lineNumbers\":\"1\",\"lineWrapping\":\"1\",\"matchTags\":\"1\",\"matchBrackets\":\"1\",\"marker-gutter\":\"1\",\"autoCloseTags\":\"1\",\"autoCloseBrackets\":\"1\",\"autoFocus\":\"1\",\"theme\":\"default\",\"tabmode\":\"indent\"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(411, 0, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '{\"name\":\"plg_editors_none\",\"type\":\"plugin\",\"creationDate\":\"September 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_NONE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"none\"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(412, 0, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 1, 1, 0, '{\"name\":\"plg_editors_tinymce\",\"type\":\"plugin\",\"creationDate\":\"2005-2017\",\"author\":\"Ephox Corporation\",\"copyright\":\"Ephox Corporation\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"http:\\/\\/www.tinymce.com\",\"version\":\"4.5.7\",\"description\":\"PLG_TINY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tinymce\"}', '{\"configuration\":{\"toolbars\":{\"2\":{\"toolbar1\":[\"bold\",\"underline\",\"strikethrough\",\"|\",\"undo\",\"redo\",\"|\",\"bullist\",\"numlist\",\"|\",\"pastetext\"]},\"1\":{\"menu\":[\"edit\",\"insert\",\"view\",\"format\",\"table\",\"tools\"],\"toolbar1\":[\"bold\",\"italic\",\"underline\",\"strikethrough\",\"|\",\"alignleft\",\"aligncenter\",\"alignright\",\"alignjustify\",\"|\",\"formatselect\",\"|\",\"bullist\",\"numlist\",\"|\",\"outdent\",\"indent\",\"|\",\"undo\",\"redo\",\"|\",\"link\",\"unlink\",\"anchor\",\"code\",\"|\",\"hr\",\"table\",\"|\",\"subscript\",\"superscript\",\"|\",\"charmap\",\"pastetext\",\"preview\"]},\"0\":{\"menu\":[\"edit\",\"insert\",\"view\",\"format\",\"table\",\"tools\"],\"toolbar1\":[\"bold\",\"italic\",\"underline\",\"strikethrough\",\"|\",\"alignleft\",\"aligncenter\",\"alignright\",\"alignjustify\",\"|\",\"styleselect\",\"|\",\"formatselect\",\"fontselect\",\"fontsizeselect\",\"|\",\"searchreplace\",\"|\",\"bullist\",\"numlist\",\"|\",\"outdent\",\"indent\",\"|\",\"undo\",\"redo\",\"|\",\"link\",\"unlink\",\"anchor\",\"image\",\"|\",\"code\",\"|\",\"forecolor\",\"backcolor\",\"|\",\"fullscreen\",\"|\",\"table\",\"|\",\"subscript\",\"superscript\",\"|\",\"charmap\",\"emoticons\",\"media\",\"hr\",\"ltr\",\"rtl\",\"|\",\"cut\",\"copy\",\"paste\",\"pastetext\",\"|\",\"visualchars\",\"visualblocks\",\"nonbreaking\",\"blockquote\",\"template\",\"|\",\"print\",\"preview\",\"codesample\",\"insertdatetime\",\"removeformat\"]}},\"setoptions\":{\"2\":{\"access\":[\"1\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"0\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"},\"1\":{\"access\":[\"6\",\"2\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"0\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"},\"0\":{\"access\":[\"7\",\"4\",\"8\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"1\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"}}},\"sets_amount\":3,\"html_height\":\"550\",\"html_width\":\"750\"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(413, 0, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_article\",\"type\":\"plugin\",\"creationDate\":\"October 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_ARTICLE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"article\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(414, 0, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_image\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_IMAGE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"image\"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(415, 0, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagebreak\"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(416, 0, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_readmore\",\"type\":\"plugin\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_READMORE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"readmore\"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(417, 0, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 1, 1, 0, '{\"name\":\"plg_search_categories\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"categories\"}', '{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(418, 0, 'plg_search_contacts', 'plugin', 'contacts', 'search', 0, 1, 1, 0, '{\"name\":\"plg_search_contacts\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CONTACTS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contacts\"}', '{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(419, 0, 'plg_search_content', 'plugin', 'content', 'search', 0, 1, 1, 0, '{\"name\":\"plg_search_content\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}', '{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(420, 0, 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', 0, 1, 1, 0, '{\"name\":\"plg_search_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}', '{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(422, 0, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 0, 1, 1, '{\"name\":\"plg_system_languagefilter\",\"type\":\"plugin\",\"creationDate\":\"July 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"languagefilter\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(423, 0, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 0, 1, 0, '{\"name\":\"plg_system_p3p\",\"type\":\"plugin\",\"creationDate\":\"September 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_P3P_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"p3p\"}', '{\"headers\":\"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM\"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(424, 0, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 1, '{\"name\":\"plg_system_cache\",\"type\":\"plugin\",\"creationDate\":\"February 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CACHE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"cache\"}', '{\"browsercache\":\"0\",\"cachetime\":\"15\"}', '', '', 0, '0000-00-00 00:00:00', 9, 0),
(425, 0, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_debug\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_DEBUG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"debug\"}', '{\"profile\":\"1\",\"queries\":\"1\",\"memory\":\"1\",\"language_files\":\"1\",\"language_strings\":\"1\",\"strip-first\":\"1\",\"strip-prefix\":\"\",\"strip-suffix\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(426, 0, 'plg_system_log', 'plugin', 'log', 'system', 0, 1, 1, 1, '{\"name\":\"plg_system_log\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"log\"}', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(427, 0, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 0, 1, 1, '{\"name\":\"plg_system_redirect\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"redirect\"}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(428, 0, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 1, '{\"name\":\"plg_system_remember\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_REMEMBER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"remember\"}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(429, 0, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_sef\",\"type\":\"plugin\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEF_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"sef\"}', '', '', '', 0, '0000-00-00 00:00:00', 8, 0),
(430, 0, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 1, '{\"name\":\"plg_system_logout\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"logout\"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(431, 0, 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', 0, 0, 1, 0, '{\"name\":\"plg_user_contactcreator\",\"type\":\"plugin\",\"creationDate\":\"August 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTACTCREATOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contactcreator\"}', '{\"autowebpage\":\"\",\"category\":\"34\",\"autopublish\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(432, 0, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '{\"name\":\"plg_user_joomla\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '{\"autoregister\":\"1\",\"mail_to_user\":\"1\",\"forceLogout\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(433, 0, 'plg_user_profile', 'plugin', 'profile', 'user', 0, 0, 1, 0, '{\"name\":\"plg_user_profile\",\"type\":\"plugin\",\"creationDate\":\"January 2008\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_PROFILE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"profile\"}', '{\"register-require_address1\":\"1\",\"register-require_address2\":\"1\",\"register-require_city\":\"1\",\"register-require_region\":\"1\",\"register-require_country\":\"1\",\"register-require_postal_code\":\"1\",\"register-require_phone\":\"1\",\"register-require_website\":\"1\",\"register-require_favoritebook\":\"1\",\"register-require_aboutme\":\"1\",\"register-require_tos\":\"1\",\"register-require_dob\":\"1\",\"profile-require_address1\":\"1\",\"profile-require_address2\":\"1\",\"profile-require_city\":\"1\",\"profile-require_region\":\"1\",\"profile-require_country\":\"1\",\"profile-require_postal_code\":\"1\",\"profile-require_phone\":\"1\",\"profile-require_website\":\"1\",\"profile-require_favoritebook\":\"1\",\"profile-require_aboutme\":\"1\",\"profile-require_tos\":\"1\",\"profile-require_dob\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(434, 0, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 1, '{\"name\":\"plg_extension_joomla\",\"type\":\"plugin\",\"creationDate\":\"May 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(435, 0, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(436, 0, 'plg_system_languagecode', 'plugin', 'languagecode', 'system', 0, 0, 1, 0, '{\"name\":\"plg_system_languagecode\",\"type\":\"plugin\",\"creationDate\":\"November 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"languagecode\"}', '', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(437, 0, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', 0, 1, 1, 1, '{\"name\":\"plg_quickicon_joomlaupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomlaupdate\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(438, 0, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', 'quickicon', 0, 1, 1, 1, '{\"name\":\"plg_quickicon_extensionupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"extensionupdate\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(439, 0, 'plg_captcha_recaptcha', 'plugin', 'recaptcha', 'captcha', 0, 1, 1, 0, '{\"name\":\"plg_captcha_recaptcha\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.4.0\",\"description\":\"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"recaptcha\"}', '{\"public_key\":\"\",\"private_key\":\"\",\"theme\":\"clean\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(440, 0, 'plg_system_highlight', 'plugin', 'highlight', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_highlight\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"highlight\"}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(441, 0, 'plg_content_finder', 'plugin', 'finder', 'content', 0, 0, 1, 0, '{\"name\":\"plg_content_finder\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"finder\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(442, 0, 'plg_finder_categories', 'plugin', 'categories', 'finder', 0, 1, 1, 0, '{\"name\":\"plg_finder_categories\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"categories\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(443, 0, 'plg_finder_contacts', 'plugin', 'contacts', 'finder', 0, 1, 1, 0, '{\"name\":\"plg_finder_contacts\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTACTS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contacts\"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(444, 0, 'plg_finder_content', 'plugin', 'content', 'finder', 0, 1, 1, 0, '{\"name\":\"plg_finder_content\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(445, 0, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', 'finder', 0, 1, 1, 0, '{\"name\":\"plg_finder_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(447, 0, 'plg_finder_tags', 'plugin', 'tags', 'finder', 0, 1, 1, 0, '{\"name\":\"plg_finder_tags\",\"type\":\"plugin\",\"creationDate\":\"February 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(448, 0, 'plg_twofactorauth_totp', 'plugin', 'totp', 'twofactorauth', 0, 0, 1, 0, '{\"name\":\"plg_twofactorauth_totp\",\"type\":\"plugin\",\"creationDate\":\"August 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_TWOFACTORAUTH_TOTP_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"totp\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(449, 0, 'plg_authentication_cookie', 'plugin', 'cookie', 'authentication', 0, 1, 1, 0, '{\"name\":\"plg_authentication_cookie\",\"type\":\"plugin\",\"creationDate\":\"July 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTH_COOKIE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"cookie\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(450, 0, 'plg_twofactorauth_yubikey', 'plugin', 'yubikey', 'twofactorauth', 0, 0, 1, 0, '{\"name\":\"plg_twofactorauth_yubikey\",\"type\":\"plugin\",\"creationDate\":\"September 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_TWOFACTORAUTH_YUBIKEY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"yubikey\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(451, 0, 'plg_search_tags', 'plugin', 'tags', 'search', 0, 1, 1, 0, '{\"name\":\"plg_search_tags\",\"type\":\"plugin\",\"creationDate\":\"March 2014\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}', '{\"search_limit\":\"50\",\"show_tagged_items\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(452, 0, 'plg_system_updatenotification', 'plugin', 'updatenotification', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_updatenotification\",\"type\":\"plugin\",\"creationDate\":\"May 2015\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_SYSTEM_UPDATENOTIFICATION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"updatenotification\"}', '{\"lastrun\":1501176343}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(453, 0, 'plg_editors-xtd_module', 'plugin', 'module', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_module\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_MODULE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"module\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(454, 0, 'plg_system_stats', 'plugin', 'stats', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_stats\",\"type\":\"plugin\",\"creationDate\":\"November 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_SYSTEM_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"stats\"}', '{\"mode\":3,\"lastrun\":1500218356,\"unique_id\":\"0f6958caf51abe2b9bd416a47b97574e64b3500e\",\"interval\":12}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(455, 0, 'plg_installer_packageinstaller', 'plugin', 'packageinstaller', 'installer', 0, 1, 1, 1, '{\"name\":\"plg_installer_packageinstaller\",\"type\":\"plugin\",\"creationDate\":\"May 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_PACKAGEINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"packageinstaller\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(456, 0, 'PLG_INSTALLER_FOLDERINSTALLER', 'plugin', 'folderinstaller', 'installer', 0, 1, 1, 1, '{\"name\":\"PLG_INSTALLER_FOLDERINSTALLER\",\"type\":\"plugin\",\"creationDate\":\"May 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_FOLDERINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"folderinstaller\"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(457, 0, 'PLG_INSTALLER_URLINSTALLER', 'plugin', 'urlinstaller', 'installer', 0, 1, 1, 1, '{\"name\":\"PLG_INSTALLER_URLINSTALLER\",\"type\":\"plugin\",\"creationDate\":\"May 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_URLINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"urlinstaller\"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(458, 0, 'plg_quickicon_phpversioncheck', 'plugin', 'phpversioncheck', 'quickicon', 0, 1, 1, 1, '{\"name\":\"plg_quickicon_phpversioncheck\",\"type\":\"plugin\",\"creationDate\":\"August 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_QUICKICON_PHPVERSIONCHECK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"phpversioncheck\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(459, 0, 'plg_editors-xtd_menu', 'plugin', 'menu', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_menu\",\"type\":\"plugin\",\"creationDate\":\"August 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"menu\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(460, 0, 'plg_editors-xtd_contact', 'plugin', 'contact', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_contact\",\"type\":\"plugin\",\"creationDate\":\"October 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(461, 0, 'plg_system_fields', 'plugin', 'fields', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_fields\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_SYSTEM_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(462, 0, 'plg_fields_calendar', 'plugin', 'calendar', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_calendar\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_CALENDAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"calendar\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(463, 0, 'plg_fields_checkboxes', 'plugin', 'checkboxes', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_checkboxes\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_CHECKBOXES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"checkboxes\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(464, 0, 'plg_fields_color', 'plugin', 'color', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_color\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_COLOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"color\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(465, 0, 'plg_fields_editor', 'plugin', 'editor', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_editor\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_EDITOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"editor\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(466, 0, 'plg_fields_imagelist', 'plugin', 'imagelist', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_imagelist\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_IMAGELIST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"imagelist\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(467, 0, 'plg_fields_integer', 'plugin', 'integer', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_integer\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_INTEGER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"integer\"}', '{\"multiple\":\"0\",\"first\":\"1\",\"last\":\"100\",\"step\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(468, 0, 'plg_fields_list', 'plugin', 'list', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_list\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_LIST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"list\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(469, 0, 'plg_fields_media', 'plugin', 'media', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_media\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_MEDIA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"media\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(470, 0, 'plg_fields_radio', 'plugin', 'radio', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_radio\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_RADIO_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"radio\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(471, 0, 'plg_fields_sql', 'plugin', 'sql', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_sql\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_SQL_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"sql\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(472, 0, 'plg_fields_text', 'plugin', 'text', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_text\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_TEXT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"text\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(473, 0, 'plg_fields_textarea', 'plugin', 'textarea', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_textarea\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_TEXTAREA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"textarea\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(474, 0, 'plg_fields_url', 'plugin', 'url', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_url\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_URL_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"url\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(475, 0, 'plg_fields_user', 'plugin', 'user', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_user\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_USER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"user\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(476, 0, 'plg_fields_usergrouplist', 'plugin', 'usergrouplist', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_usergrouplist\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_USERGROUPLIST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"usergrouplist\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(477, 0, 'plg_content_fields', 'plugin', 'fields', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_fields\",\"type\":\"plugin\",\"creationDate\":\"February 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_CONTENT_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(478, 0, 'plg_editors-xtd_fields', 'plugin', 'fields', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_fields\",\"type\":\"plugin\",\"creationDate\":\"February 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(503, 0, 'beez3', 'template', 'beez3', '', 0, 1, 1, 0, '{\"name\":\"beez3\",\"type\":\"template\",\"creationDate\":\"25 November 2009\",\"author\":\"Angie Radtke\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"a.radtke@derauftritt.de\",\"authorUrl\":\"http:\\/\\/www.der-auftritt.de\",\"version\":\"3.1.0\",\"description\":\"TPL_BEEZ3_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}', '{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"sitetitle\":\"\",\"sitedescription\":\"\",\"navposition\":\"center\",\"templatecolor\":\"nature\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(504, 0, 'hathor', 'template', 'hathor', '', 1, 1, 1, 0, '{\"name\":\"hathor\",\"type\":\"template\",\"creationDate\":\"May 2010\",\"author\":\"Andrea Tarr\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"3.0.0\",\"description\":\"TPL_HATHOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}', '{\"showSiteName\":\"0\",\"colourChoice\":\"0\",\"boldText\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(506, 0, 'protostar', 'template', 'protostar', '', 0, 1, 1, 0, '{\"name\":\"protostar\",\"type\":\"template\",\"creationDate\":\"4\\/30\\/2012\",\"author\":\"Kyle Ledbetter\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_PROTOSTAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}', '{\"templateColor\":\"\",\"logoFile\":\"\",\"googleFont\":\"1\",\"googleFontName\":\"Open+Sans\",\"fluidContainer\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(507, 0, 'isis', 'template', 'isis', '', 1, 1, 1, 0, '{\"name\":\"isis\",\"type\":\"template\",\"creationDate\":\"3\\/30\\/2012\",\"author\":\"Kyle Ledbetter\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_ISIS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}', '{\"templateColor\":\"\",\"logoFile\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(600, 802, 'English (en-GB)', 'language', 'en-GB', '', 0, 1, 1, 1, '{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"July 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.3\",\"description\":\"en-GB site language\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(601, 802, 'English (en-GB)', 'language', 'en-GB', '', 1, 1, 1, 1, '{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"July 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.3\",\"description\":\"en-GB administrator language\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(700, 0, 'files_joomla', 'file', 'joomla', '', 0, 1, 1, 1, '{\"name\":\"files_joomla\",\"type\":\"file\",\"creationDate\":\"July 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.3\",\"description\":\"FILES_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(802, 0, 'English (en-GB) Language Pack', 'package', 'pkg_en-GB', '', 0, 1, 1, 1, '{\"name\":\"English (en-GB) Language Pack\",\"type\":\"package\",\"creationDate\":\"July 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.3.1\",\"description\":\"en-GB language pack\",\"group\":\"\",\"filename\":\"pkg_en-GB\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(9999, 0, 'plg_system_gmapfp', 'plugin', 'cp', 'system', 0, 1, 1, 1, '{\"name\":\"plg_system_gmapfp\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Fabrice4821\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.\",\"authorEmail\":\"webmaster@gmapfp.org\",\"authorUrl\":\"www.gmapfp.org\",\"version\":\"3.0.0\",\"description\":\"PLG_GMAPFP_COPYRIGHT_DESCRIPTION\",\"group\":\"\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10000, 0, 'COM_GMAPFP', 'component', 'com_gmapfp', '', 1, 1, 0, 0, '{\"name\":\"COM_GMAPFP\",\"type\":\"component\",\"creationDate\":\"Mai 2017\",\"author\":\"Fabrice4821\",\"copyright\":\"All rights reserved\",\"authorEmail\":\"webmaster@gmapfp.org\",\"authorUrl\":\"http:\\/\\/www.gmapfp.org\",\"version\":\"J3.49F\",\"description\":\"\",\"group\":\"\",\"filename\":\"gmapfp\"}', '{\"gmapfp_google_key\":\" AIzaSyDVzGOJoZUtocZHF2rJYw-jnOVbhgbOH_0 \",\"gmapfp_height\":\"500\",\"gmapfp_width\":\"100%\",\"gmapfp_auto\":\"1\",\"gmapfp_centre_lat\":\"47.927644470\",\"gmapfp_centre_lng\":\"2.1391367912\",\"gmapfp_zoom_admin\":\"10\",\"gmapfp_type_admin\":\"roadmap\",\"gmapfp_zoom\":\"10\",\"gmapfp_zoom_lightbox_carte\":\"0\",\"gmapfp_zoom_lightbox_imprimer\":\"0\",\"gmapfp_normal\":\"1\",\"gmapfp_satellite\":\"0\",\"gmapfp_hybrid\":\"0\",\"gmapfp_physic\":\"0\",\"gmapfp_choix_affichage_carte\":\"1\",\"gmapfp_mapcontrol\":\"1\",\"gmapfp_scalecontrol\":\"0\",\"gmapfp_mousewheel\":\"1\",\"gmapfp_zzoom\":\"1\",\"gmapfp_plus_info\":\"0\",\"gmapfp_eventcontrol\":\"1\",\"gmapfp_width_bulle_GMapFP\":\"400\",\"gmapfp_min_height_bulle_GMapFP\":\"150\",\"gmapfp_max_height_bulle_GMapFP\":\"350\",\"affichage\":\"0\",\"gmapfp_taille_bulle_cesure\":\"200\",\"gmapfp_html_bubble\":\"1\",\"gmapfp_plus_detail\":\"1\",\"target\":\"0\",\"gmapfp_hauteur_lightbox\":\"400\",\"gmapfp_largeur_lightbox\":\"700\",\"gmapfp_itineraire\":\"0\",\"gmapfp_filtre\":\"1\",\"gmapfp_msg\":\"1\",\"gmapfp_afficher_horaires_prix\":\"0\",\"gmapfp_afficher_intro_italique\":\"1\",\"gmapfp_chemin_img\":\"\\/images\\/gmapfp\\/\",\"gmapfp_hauteur_img\":\"700\",\"gmapfp_jcomments\":\"0\",\"gmapfp_news\":\"1\",\"gmapfp_geoXML\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `kuwait_extensions` (`extension_id`, `package_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(10001, 0, 'FOF30', 'library', 'lib_fof30', '', 0, 1, 1, 0, '{\"name\":\"FOF30\",\"type\":\"library\",\"creationDate\":\"2017-05-11\",\"author\":\"Nicholas K. Dionysopoulos \\/ Akeeba Ltd\",\"copyright\":\"(C)2010-2017 Nicholas K. Dionysopoulos\",\"authorEmail\":\"nicholas@akeebabackup.com\",\"authorUrl\":\"https:\\/\\/www.akeebabackup.com\",\"version\":\"3.1.0\",\"description\":\"\\n\\t\\t\\n\\t\\tFramework-on-Framework (FOF) 3.x - The rapid application development framework for Joomla!.<br\\/>\\n\\t\\t<b>WARNING<\\/b>: This is NOT a duplicate of the FOF library already installed with Joomla!. It is a different version used by other extensions on your site. Do NOT uninstall either FOF package. If you do you will break your site.\\n\\t\\t\\n\\t\",\"group\":\"\",\"filename\":\"lib_fof30\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10002, 10006, 'Akeeba', 'component', 'com_akeeba', '', 1, 1, 0, 0, '{\"name\":\"Akeeba\",\"type\":\"component\",\"creationDate\":\"2017-05-18\",\"author\":\"Nicholas K. Dionysopoulos\",\"copyright\":\"Copyright (c)2006-2017 Akeeba Ltd \\/ Nicholas K. Dionysopoulos\",\"authorEmail\":\"nicholas@dionysopoulos.me\",\"authorUrl\":\"http:\\/\\/www.akeebabackup.com\",\"version\":\"5.4.0\",\"description\":\"Akeeba Backup Core - Full Joomla! site backup solution, Core Edition.\",\"group\":\"\",\"filename\":\"akeeba\"}', '{\"confwiz_upgrade\":1,\"updatedb\":null,\"siteurl\":\"http:\\/\\/localhost\\/kuwithome\\/\",\"jlibrariesdir\":\"C:\\/xampp\\/htdocs\\/kuwithome\\/libraries\",\"jversion\":\"1.6\",\"show_howtorestoremodal\":0}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10003, 10006, 'plg_quickicon_akeebabackup', 'plugin', 'akeebabackup', 'quickicon', 0, 1, 1, 0, '{\"name\":\"plg_quickicon_akeebabackup\",\"type\":\"plugin\",\"creationDate\":\"2012-09-26\",\"author\":\"Nicholas K. Dionysopoulos\",\"copyright\":\"Copyright (c)2006-2017 Nicholas K. Dionysopoulos\",\"authorEmail\":\"nicholas@akeebabackup.com\",\"authorUrl\":\"http:\\/\\/www.akeebabackup.com\",\"version\":\"1.0\",\"description\":\"PLG_QUICKICON_AKEEBABACKUP_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"akeebabackup\"}', '{\"context\":\"mod_quickicon\",\"enablewarning\":\"1\",\"warnfailed\":\"1\",\"maxbackupperiod\":\"24\",\"profileid\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10004, 10006, 'PLG_SYSTEM_AKEEBAUPDATECHECK_TITLE', 'plugin', 'akeebaupdatecheck', 'system', 0, 0, 1, 0, '{\"name\":\"PLG_SYSTEM_AKEEBAUPDATECHECK_TITLE\",\"type\":\"plugin\",\"creationDate\":\"2011-05-26\",\"author\":\"Nicholas K. Dionysopoulos\",\"copyright\":\"Copyright (c)2006-2017 Nicholas K. Dionysopoulos\",\"authorEmail\":\"nicholas@dionysopoulos.me\",\"authorUrl\":\"http:\\/\\/www.akeebabackup.com\",\"version\":\"1.1\",\"description\":\"PLG_AKEEBAUPDATECHECK_DESCRIPTION2\",\"group\":\"\",\"filename\":\"akeebaupdatecheck\"}', '{\"email\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10005, 10006, 'PLG_SYSTEM_BACKUPONUPDATE_TITLE', 'plugin', 'backuponupdate', 'system', 0, 0, 1, 0, '{\"name\":\"PLG_SYSTEM_BACKUPONUPDATE_TITLE\",\"type\":\"plugin\",\"creationDate\":\"2013-08-13\",\"author\":\"Nicholas K. Dionysopoulos\",\"copyright\":\"Copyright (c)2006-2017 Nicholas K. Dionysopoulos\",\"authorEmail\":\"nicholas@dionysopoulos.me\",\"authorUrl\":\"http:\\/\\/www.akeebabackup.com\",\"version\":\"3.7\",\"description\":\"PLG_SYSTEM_BACKUPONUPDATE_DESCRIPTION\",\"group\":\"\",\"filename\":\"backuponupdate\"}', '{\"profileid\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10006, 0, 'Akeeba Backup package', 'package', 'pkg_akeeba', '', 0, 1, 1, 0, '{\"name\":\"Akeeba Backup package\",\"type\":\"package\",\"creationDate\":\"2017-05-18\",\"author\":\"Nicholas K. Dionysopoulos\",\"copyright\":\"Copyright (c)2006-2017 Akeeba Ltd \\/ Nicholas K. Dionysopoulos\",\"authorEmail\":\"\",\"authorUrl\":\"\",\"version\":\"5.4.0\",\"description\":\"Akeeba Backup installation package v.5.4.0\",\"group\":\"\",\"filename\":\"pkg_akeeba\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10007, 0, 'plg_search_gmapfp', 'plugin', 'gmapfp', 'search', 0, 1, 1, 0, '{\"name\":\"plg_search_gmapfp\",\"type\":\"plugin\",\"creationDate\":\"Mai 2016\",\"author\":\"Fabrice4821\",\"copyright\":\"\",\"authorEmail\":\"webmaster@gmapfp.org\",\"authorUrl\":\"http:\\/\\/gmapfp.org\\/\",\"version\":\"J3_1P\",\"description\":\"PLG_SEARCH_GMAPFP_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"gmapfp\"}', '{\"search_limit\":\"50\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10008, 0, 'dream_house', 'template', 'dream_house', '', 0, 1, 1, 0, '{\"name\":\"dream_house\",\"type\":\"template\",\"creationDate\":\"Creation Date\",\"author\":\"Your name\",\"copyright\":\"Your copyrights\",\"authorEmail\":\"Your email\",\"authorUrl\":\"Link to Your website\",\"version\":\"3.5.1\",\"description\":\"\\n\\t\\n\\t      <link href=\'http:\\/\\/fonts.googleapis.com\\/css?family=Quicksand:400,700,300\' rel=\'stylesheet\' type=\'text\\/css\'>\\n\\t      <br>\\n\\t      <h1 class=\\\"temph1\\\">The OS Framework<\\/h1>\\n\\t      <h4 class=\\\"temph4\\\">Beautiful Fast & Light joomla framework<\\/h4>\\n\\t      <p class=\\\"text_propery\\\">Powerfull admin area allow easy control templeate elements like fonts, logo, colors etc. Fully responsive grid based on Twitter Bootstrap, looking great on all screen sizes and platforms.<\\/p>\\n\\t      <br>\\n\\t      <div id=\\\"down_pictures\\\">\\n\\t\\t    <a href=\\\"http:\\/\\/www.youtube.com\\/watch?v=KCfAXQ5S6iQ&feature=youtu.be\\\" onclick=\\\"window.open(\'http:\\/\\/www.youtube.com\\/watch?v=KCfAXQ5S6iQ&feature=youtu.be\',\'OrdaSoft Joomla Template Features\',\'width=635,height=610,left=\'+(screen.availWidth\\/2-317.5)+\',top=\'+(screen.availHeight\\/2-305)+\'\');return false;\\\" target=\\\"_blank\\\"><img style=\\\"width:400px; height:306px;\\\" src=\\\"..\\/templates\\/dream_house\\/joomla_template_features_video.jpg\\\"\\/><\\/a>\\n\\t\\t    <div style=\\\"clear:both;\\\"><\\/div>\\n\\t\\t    <div class=\\\"sepp_div\\\"><\\/div>\\n\\t\\t    <a href=\\\"http:\\/\\/ordasoft.com\\/membership-page.html\\\" target=\\\"_blank\\\"><img src=\\\"..\\/templates\\/dream_house\\/button_become_member.jpg\\\"\\/><\\/a>\\n\\t      <\\/div>\\n\\t\\n\\t\",\"group\":\"\",\"filename\":\"templateDetails\"}', '{\"body_color\":\"#f8f8f8\",\"logo_link\":\"index.php\",\"logo_width\":\"173\",\"logo_height\":\"26\",\"body_link_color\":\"#92999E\",\"body_link_hover_color\":\"#12ABFF\",\"body_underline\":\"none\",\"body_hover_underline\":\"underline\",\"top_menu_color\":\"#92999E\",\"top_menu_hover_color\":\"#000000\",\"top_menu_underline\":\"none\",\"top_menu_hover_underline\":\"none\",\"main_menu_color\":\"#92999E\",\"main_menu_hover_color\":\"#000000\",\"main_menu_underline\":\"none\",\"main_menu_hover_underline\":\"none\",\"menu_footer_color\":\"#92999E\",\"menu_footer_hover_color\":\"#000000\",\"menu_footer_underline\":\"none\",\"menu_footer_hover_underline\":\"none\",\"body_font\":\"PT Sans Narrow\",\"links_font\":\"PT Sans Narrow\",\"top_menu_font\":\"PT Sans Narrow\",\"main_menu_font\":\"PT Sans Narrow\",\"footer_menu_font\":\"PT Sans Narrow\",\"h1_font\":\"PT Sans Narrow\",\"h2_font\":\"PT Sans Narrow\",\"h3_font\":\"PT Sans Narrow\",\"h4_font\":\"PT Sans Narrow\",\"h5_font\":\"PT Sans Narrow\",\"h6_font\":\"PT Sans Narrow\",\"twitter\":\"\",\"facebook\":\"\",\"flickr\":\"\",\"linkedin\":\"\",\"youtube\":\"\",\"pinterest\":\"\",\"google\":\"\",\"dribbble\":\"\",\"vimeo\":\"\",\"instagram\":\"\",\"vk\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10009, 0, 'House Design', 'template', 'housedesign', '', 0, 1, 1, 0, '{\"name\":\"House Design\",\"type\":\"template\",\"creationDate\":\"October 2015\",\"author\":\"JoomlaSaver\",\"copyright\":\"JoomlaSaver 2015\",\"authorEmail\":\"mail@joomlasaver.com\",\"authorUrl\":\"http:\\/\\/www.joomlasaver.com\",\"version\":\"1.1\",\"description\":\"<div style=\\\"border:1px solid #c0c0c0; padding:15px; text-align:center;\\\">House Design<br \\/>Joomla 3x Templates<br \\/>Visit <a href=\\\"http:\\/\\/www.joomlasaver.com\\\">JoomlaSaver<\\/a><br \\/>Contact <a href=\\\"mailto:mail@joomlasaver.com\\\">JoomlaSaver<\\/a><\\/div>\",\"group\":\"\",\"filename\":\"templateDetails\"}', '{\"selectlogo\":\"templates\\/housedesign\\/images\\/logo.png\",\"fontfamily\":\"fontfamily1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10010, 0, 'homebanner homebanner', 'module', 'mod_homebanner', '', 0, 1, 0, 0, '{\"name\":\"homebanner homebanner\",\"type\":\"module\",\"creationDate\":\"July 2017\",\"author\":\"homebanner\",\"copyright\":\"Copyright (c) 2017 homebanner. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"\",\"version\":\"1.0.0\",\"description\":\"\\n\\t\\n\\t<p>homebanner<\\/p>\\n\\t\\n\\t\",\"group\":\"\",\"filename\":\"mod_homebanner\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10011, 0, 'GMapFP', 'module', 'mod_gmapfp', '', 0, 1, 0, 0, '{\"name\":\"GMapFP\",\"type\":\"module\",\"creationDate\":\"D\\u00e9cembre 2013\",\"author\":\"Fabrice4821\",\"copyright\":\"All rights reserved\",\"authorEmail\":\"webmaster@gmapfp.org\",\"authorUrl\":\"http:\\/\\/www.gmapfp.org\",\"version\":\"J3.3Pro\",\"description\":\"GMAPFP_COPYRIGHT\",\"group\":\"\",\"filename\":\"mod_gmapfp\"}', '{\"gmapfp_height_picture\":\"40\",\"gmapfp_nbre_article\":\"1\",\"gmapfp_action\":\"0\",\"gmapfp_sql\":\"\",\"target\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10012, 0, 'fullajax_tmpl', 'template', 'fullajax_tmpl', '', 0, 1, 1, 0, '{\"name\":\"fullajax_tmpl\",\"type\":\"template\",\"creationDate\":\"August 2011\",\"author\":\"Fedir Zinchuk\",\"copyright\":\"\",\"authorEmail\":\"getthesite@gmail.com\",\"authorUrl\":\"www.getsite.org.ua\",\"version\":\"2015.04.05\",\"description\":\"This template for \\\"Add FullAjax\\\" plugin. Do not use it for\\tsite decoration.\",\"group\":\"\",\"filename\":\"templateDetails\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10013, 0, 'plg_system_addfullajax', 'plugin', 'addfullajax', 'system', 0, 0, 1, 0, '{\"name\":\"plg_system_addfullajax\",\"type\":\"plugin\",\"creationDate\":\"July 2010\",\"author\":\"Fedir Zinchuk\",\"copyright\":\"\",\"authorEmail\":\"getthesite@gmail.com\",\"authorUrl\":\"www.getsite.org.ua\",\"version\":\"2016.03.25\",\"description\":\"PLG_ADDFULLAJAX_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"addfullajax\"}', '{\"positionupd\":\"3\",\"contid\":\"content\",\"posParams\":\"\",\"allowed_positions\":\"\",\"useDiffStyle\":\"1\",\"userCache\":\"1\",\"useHTML5\":\"1\",\"scrlUp\":\"1\",\"useGA\":\"0\",\"on_anim\":\"1\",\"checkmenuit\":\"1\",\"checkmenuit_active_for_a\":\"0\",\"menuClass\":\"*\",\"menu_items_ignor\":\"\",\"menu_items_no_ax_load\":\"\",\"cnfg_data\":\"FLAX.Filter.add({url:\'\\/\', id:fullAjaxId});\\r\\n FLAX.Filter.add({query:[\'task=weblink\',\'task=profile\',\'task=user.login\',\'task=user.logout\',\'task=article.edit\'],  type:\'nowrap\'});\\r\\n FLAX.Filter.on(\'beforewrap\', function(o) {\\r\\n var id = o.el.getAttribute(\'id\'), regExt = \\/.+\\\\.(jpg|jpeg|gif|png|mp3|mp4|ogg|ogv|webm|pdf|txt|odf|ods)$\\/i;\\r\\n if(id == (\'login-form\') || id == (\'form-login\') || (o.el.href && (regExt.test(o.el.href) || o.el.href.indexOf(\'#\') != -1))){return false;}\\r\\n });\\r\\n FLAX.Default.sprt_url = \'!\';FLAX.linkEqual[\'!ax!\'+fullAjaxId+\'!\'] = \'ajx\';\\r\\n FLAX.linkEqual[\'[~q~]\'] = \'?\';\\/\\/FLAX.directLink();\\r\\n \\/* call the code when new content loaded, can be used for initialise the broken scripts *\\/\\r\\n \\/* FLAX.Html.onall(\'load\', function(data){alert(\'New content loaded!\');}); *\\/ \",\"anim_data\":\"var fullAjaxGif = jQuery(\'<img\\/>\',{\\r\\n  \'id\':\'fullAjaxGif\',\'alt\':\'Loading...\',\\r\\n  \'src\':fullAjaxBase + \'\\/media\\/plg_system_addfullajax\\/images\\/ajax-loader.gif\',\\r\\n  \'style\': \'position:absolute;left:50%;top:40%;z-index:800;\'\\r\\n });\\r\\n FLAX.Effect.add({id:fullAjaxId, start: function(id, request){\\r\\n   var content = jQuery(\'#\'+fullAjaxId);\\r\\n   if (!jQuery(\'#fullAjaxGif\').length){fullAjaxGif.insertBefore(content);};\\r\\n   content.stop().animate({opacity:0},1000,request());\\r\\n  },end: function(id){\\r\\n   var i = jQuery(\'#fullAjaxGif\');\\r\\n   if (i.length){i.remove();};\\r\\n   jQuery(\'#\'+fullAjaxId).stop().animate({opacity: 1},800);\\r\\n  }\\r\\n });\\r\\n \",\"debug_ajax\":\"0\",\"debug_script\":\"0\",\"debug_link\":\"0\",\"debug_style\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10015, 0, 'com_banner', 'component', 'com_banner', '', 1, 1, 0, 0, '{\"name\":\"com_banner\",\"type\":\"component\",\"creationDate\":\"2017-07-25\",\"author\":\"azharuddin\",\"copyright\":\"2017 azharuddin\",\"authorEmail\":\"azharuddin.shaikh53@gmail.com\",\"authorUrl\":\"http:\\/\\/www.azharuddinshaikh.com\",\"version\":\"CVS: 1.0.0\",\"description\":\"banner\",\"group\":\"\",\"filename\":\"banner\"}', '{\"save_history\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10016, 0, 'com_wishlist', 'component', 'com_wishlist', '', 1, 1, 0, 0, '{\"name\":\"com_wishlist\",\"type\":\"component\",\"creationDate\":\"2017-07-25\",\"author\":\"azharuddin\",\"copyright\":\"2017 azharuddin\",\"authorEmail\":\"azharuddin.shaikh53@gmail.com\",\"authorUrl\":\"http:\\/\\/azharuddinshaikh.com\",\"version\":\"CVS: 1.0.0\",\"description\":\"Add\\/Delete\\/Edit Wishlist \",\"group\":\"\",\"filename\":\"wishlist\"}', '{\"save_history\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10018, 0, 'Community Builder Library', 'library', 'CBLib', '', 0, 0, 1, 0, '{\"name\":\"Community Builder Library\",\"type\":\"library\",\"creationDate\":\"2017-07-24\",\"author\":\"CB Team\",\"copyright\":\"(C) 2004-2017 www.joomlapolis.com \\/ Lightning MultiCom SA - and its licensors, all rights reserved\",\"authorEmail\":\"cbteam@joomlapolis.com\",\"authorUrl\":\"http:\\/\\/www.joomlapolis.com\\/\",\"version\":\"2.1.2+build.2017.07.24.16.34.38.9a00f4248\",\"description\":\"Community Builder Library\",\"group\":\"\",\"filename\":\"CBLib\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10019, 0, 'Community Builder System plugin', 'plugin', 'communitybuilder', 'system', 0, 0, 1, 0, '{\"name\":\"Community Builder System plugin\",\"type\":\"plugin\",\"creationDate\":\"2017-07-24\",\"author\":\"CB Team\",\"copyright\":\"Copyright (C) 2004-2017 www.joomlapolis.com \\/ Lightning MultiCom SA - and its licensors, all rights reserved\",\"authorEmail\":\"cbteam@joomlapolis.com\",\"authorUrl\":\"http:\\/\\/www.joomlapolis.com\\/\",\"version\":\"2.1.2+build.2017.07.24.16.34.38.9a00f4248\",\"description\":\"Community Builder System Plugin for Joomla!\",\"group\":\"\",\"filename\":\"communitybuilder\"}', '{\"redirect_urls\":\"1\",\"rewrite_urls\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10020, 0, 'comprofiler', 'component', 'com_comprofiler', '', 1, 0, 0, 0, '{\"name\":\"comprofiler\",\"type\":\"component\",\"creationDate\":\"2017-07-24\",\"author\":\"CB Team\",\"copyright\":\"Copyright (C) 2004-2017 www.joomlapolis.com \\/ Lightning MultiCom SA - and its licensors, all rights reserved\",\"authorEmail\":\"cbteam@joomlapolis.com\",\"authorUrl\":\"http:\\/\\/www.joomlapolis.com\\/\",\"version\":\"2.1.2+build.2017.07.24.16.34.38.9a00f4248\",\"description\":\"Community Builder for Joomla!\",\"group\":\"\",\"filename\":\"comprofiler\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10021, 0, 'SCLogin', 'module', 'mod_sclogin', '', 0, 1, 0, 0, '{\"name\":\"SCLogin\",\"type\":\"module\",\"creationDate\":\"2017\\/06\\/21\",\"author\":\"SourceCoast | www.sourcecoast.com\",\"copyright\":\"Copyright (C) 2009-2017 SourceCoast. All rights reserved.\",\"authorEmail\":\"support@sourcecoast.com\",\"authorUrl\":\"http:\\/\\/www.sourcecoast.com\",\"version\":\"7.2.1\",\"description\":\"\\n        Enhanced login module with flexible styles and customizations for Facebook, Google+, Twitter, LinkedIn, Amazon, Github, Instagram, Meetup, VK.com and Windows Live Authentication when combined with <a href=\'http:\\/\\/www.sourcecoast.com\\/joomla-facebook\\/\' target=\'_blank\'>JFBConnect<\\/a>.<br\\/><br\\/>Please visit <a href=\'http:\\/\\/www.sourcecoast.com\\/sclogin\\/features\\/\' target=\'_blank\'>SourceCoast<\\/a> for more information or <a href=\'http:\\/\\/www.sourcecoast.com\\/forums\' target=\'_blank\'>our forums<\\/a> for support.<br\\/><br\\/>If you use SCLogin, please post a rating and a review at the Joomla! Extensions Directory: <a href=\'http:\\/\\/extensions.joomla.org\\/extensions\\/access-a-security\\/site-access\\/authentication\\/24054\' target=\'_blank\'>SCLogin Enhanced Login<\\/a>\",\"group\":\"\",\"filename\":\"mod_sclogin\"}', '{\"displayType\":\"inline\",\"modalButtonStyle\":\"button\",\"modalCloseButton\":\"1\",\"socialButtonsLayout\":\"vertical\",\"showLoginForm\":\"1\",\"showForgotUsername\":\"none\",\"showForgotPassword\":\"none\",\"showRegisterLink\":\"1\",\"showRememberMe\":\"0\",\"autoFocusUsername\":\"0\",\"register_type\":\"joomla\",\"jlogin\":\"\",\"usesecure\":\"0\",\"enableProfilePic\":\"0\",\"profileWidth\":\"50\",\"profileHeight\":\"50\",\"linkProfile\":\"0\",\"greetingName\":\"1\",\"showUserMenu\":\"\",\"userMenuStyle\":\"0\",\"userMenuTitle\":\"1\",\"showLogoutButton\":\"1\",\"showConnectButton\":\"1\",\"jlogout\":\"\",\"showSociaLoginButton\":\"1\",\"user_intro\":\"\",\"loadJQuery\":\"0\",\"showPoweredByLink\":\"2\",\"moduleclass_sfx\":\"\",\"cache\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `kuwait_fields`
--

CREATE TABLE `kuwait_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `context` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `group_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `default_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'text',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `fieldparams` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kuwait_fields`
--

INSERT INTO `kuwait_fields` (`id`, `asset_id`, `context`, `group_id`, `title`, `name`, `label`, `default_value`, `type`, `note`, `description`, `state`, `required`, `checked_out`, `checked_out_time`, `ordering`, `params`, `fieldparams`, `language`, `created_time`, `created_user_id`, `modified_time`, `modified_by`, `access`) VALUES
(1, 70, 'com_users.user', 0, 'First Name', 'first-name', 'First Name', '', 'text', '', '', 1, 1, 0, '0000-00-00 00:00:00', 0, '{\"hint\":\"\",\"render_class\":\"\",\"class\":\"\",\"showlabel\":\"1\",\"show_on\":\"\",\"display\":\"2\"}', '{\"filter\":\"\",\"maxlength\":\"\"}', '*', '2017-07-27 17:54:13', 27, '2017-07-27 17:58:12', 27, 1),
(2, 71, 'com_users.user', 0, 'Last Name', 'last-name', 'Last Name', '', 'text', '', '', 1, 1, 0, '0000-00-00 00:00:00', 0, '{\"hint\":\"\",\"render_class\":\"\",\"class\":\"\",\"showlabel\":\"1\",\"show_on\":\"\",\"display\":\"2\"}', '{\"filter\":\"\",\"maxlength\":\"\"}', '*', '2017-07-27 17:55:09', 27, '2017-07-27 17:58:29', 27, 1),
(3, 72, 'com_users.user', 0, 'Phone No', 'phone-no', 'Phone No', '', 'text', '', '', 1, 1, 0, '0000-00-00 00:00:00', 0, '{\"hint\":\"\",\"render_class\":\"\",\"class\":\"\",\"showlabel\":\"1\",\"show_on\":\"\",\"display\":\"2\"}', '{\"filter\":\"\",\"maxlength\":\"\"}', '*', '2017-07-27 17:56:49', 27, '2017-07-27 17:57:00', 27, 1);

-- --------------------------------------------------------

--
-- Table structure for table `kuwait_fields_categories`
--

CREATE TABLE `kuwait_fields_categories` (
  `field_id` int(11) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kuwait_fields_groups`
--

CREATE TABLE `kuwait_fields_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `context` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kuwait_fields_values`
--

CREATE TABLE `kuwait_fields_values` (
  `field_id` int(10) UNSIGNED NOT NULL,
  `item_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Allow references to items which have strings as ids, eg. none db systems.',
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kuwait_finder_filters`
--

CREATE TABLE `kuwait_finder_filters` (
  `filter_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `kuwait_finder_links`
--

CREATE TABLE `kuwait_finder_links` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(400) DEFAULT NULL,
  `description` text,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double UNSIGNED NOT NULL DEFAULT '0',
  `sale_price` double UNSIGNED NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `kuwait_finder_links_terms0`
--

CREATE TABLE `kuwait_finder_links_terms0` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `kuwait_finder_links_terms1`
--

CREATE TABLE `kuwait_finder_links_terms1` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `kuwait_finder_links_terms2`
--

CREATE TABLE `kuwait_finder_links_terms2` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `kuwait_finder_links_terms3`
--

CREATE TABLE `kuwait_finder_links_terms3` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `kuwait_finder_links_terms4`
--

CREATE TABLE `kuwait_finder_links_terms4` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `kuwait_finder_links_terms5`
--

CREATE TABLE `kuwait_finder_links_terms5` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `kuwait_finder_links_terms6`
--

CREATE TABLE `kuwait_finder_links_terms6` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `kuwait_finder_links_terms7`
--

CREATE TABLE `kuwait_finder_links_terms7` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `kuwait_finder_links_terms8`
--

CREATE TABLE `kuwait_finder_links_terms8` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `kuwait_finder_links_terms9`
--

CREATE TABLE `kuwait_finder_links_terms9` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `kuwait_finder_links_termsa`
--

CREATE TABLE `kuwait_finder_links_termsa` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `kuwait_finder_links_termsb`
--

CREATE TABLE `kuwait_finder_links_termsb` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `kuwait_finder_links_termsc`
--

CREATE TABLE `kuwait_finder_links_termsc` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `kuwait_finder_links_termsd`
--

CREATE TABLE `kuwait_finder_links_termsd` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `kuwait_finder_links_termse`
--

CREATE TABLE `kuwait_finder_links_termse` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `kuwait_finder_links_termsf`
--

CREATE TABLE `kuwait_finder_links_termsf` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `kuwait_finder_taxonomy`
--

CREATE TABLE `kuwait_finder_taxonomy` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `access` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ordering` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kuwait_finder_taxonomy`
--

INSERT INTO `kuwait_finder_taxonomy` (`id`, `parent_id`, `title`, `state`, `access`, `ordering`) VALUES
(1, 0, 'ROOT', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `kuwait_finder_taxonomy_map`
--

CREATE TABLE `kuwait_finder_taxonomy_map` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `node_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `kuwait_finder_terms`
--

CREATE TABLE `kuwait_finder_terms` (
  `term_id` int(10) UNSIGNED NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `phrase` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `weight` float UNSIGNED NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `kuwait_finder_terms_common`
--

CREATE TABLE `kuwait_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kuwait_finder_terms_common`
--

INSERT INTO `kuwait_finder_terms_common` (`term`, `language`) VALUES
('a', 'en'),
('about', 'en'),
('after', 'en'),
('ago', 'en'),
('all', 'en'),
('am', 'en'),
('an', 'en'),
('and', 'en'),
('any', 'en'),
('are', 'en'),
('aren\'t', 'en'),
('as', 'en'),
('at', 'en'),
('be', 'en'),
('but', 'en'),
('by', 'en'),
('for', 'en'),
('from', 'en'),
('get', 'en'),
('go', 'en'),
('how', 'en'),
('if', 'en'),
('in', 'en'),
('into', 'en'),
('is', 'en'),
('isn\'t', 'en'),
('it', 'en'),
('its', 'en'),
('me', 'en'),
('more', 'en'),
('most', 'en'),
('must', 'en'),
('my', 'en'),
('new', 'en'),
('no', 'en'),
('none', 'en'),
('not', 'en'),
('nothing', 'en'),
('of', 'en'),
('off', 'en'),
('often', 'en'),
('old', 'en'),
('on', 'en'),
('onc', 'en'),
('once', 'en'),
('only', 'en'),
('or', 'en'),
('other', 'en'),
('our', 'en'),
('ours', 'en'),
('out', 'en'),
('over', 'en'),
('page', 'en'),
('she', 'en'),
('should', 'en'),
('small', 'en'),
('so', 'en'),
('some', 'en'),
('than', 'en'),
('thank', 'en'),
('that', 'en'),
('the', 'en'),
('their', 'en'),
('theirs', 'en'),
('them', 'en'),
('then', 'en'),
('there', 'en'),
('these', 'en'),
('they', 'en'),
('this', 'en'),
('those', 'en'),
('thus', 'en'),
('time', 'en'),
('times', 'en'),
('to', 'en'),
('too', 'en'),
('true', 'en'),
('under', 'en'),
('until', 'en'),
('up', 'en'),
('upon', 'en'),
('use', 'en'),
('user', 'en'),
('users', 'en'),
('version', 'en'),
('very', 'en'),
('via', 'en'),
('want', 'en'),
('was', 'en'),
('way', 'en'),
('were', 'en'),
('what', 'en'),
('when', 'en'),
('where', 'en'),
('which', 'en'),
('who', 'en'),
('whom', 'en'),
('whose', 'en'),
('why', 'en'),
('wide', 'en'),
('will', 'en'),
('with', 'en'),
('within', 'en'),
('without', 'en'),
('would', 'en'),
('yes', 'en'),
('yet', 'en'),
('you', 'en'),
('your', 'en'),
('yours', 'en');

-- --------------------------------------------------------

--
-- Table structure for table `kuwait_finder_tokens`
--

CREATE TABLE `kuwait_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `phrase` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `weight` float UNSIGNED NOT NULL DEFAULT '1',
  `context` tinyint(1) UNSIGNED NOT NULL DEFAULT '2',
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `kuwait_finder_tokens_aggregate`
--

CREATE TABLE `kuwait_finder_tokens_aggregate` (
  `term_id` int(10) UNSIGNED NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `phrase` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `term_weight` float UNSIGNED NOT NULL,
  `context` tinyint(1) UNSIGNED NOT NULL DEFAULT '2',
  `context_weight` float UNSIGNED NOT NULL,
  `total_weight` float UNSIGNED NOT NULL,
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `kuwait_finder_types`
--

CREATE TABLE `kuwait_finder_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `kuwait_gmapfp`
--

CREATE TABLE `kuwait_gmapfp` (
  `id` int(10) UNSIGNED NOT NULL,
  `nom` varchar(200) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `adresse` varchar(200) DEFAULT NULL,
  `adresse2` varchar(200) DEFAULT NULL,
  `ville` varchar(200) DEFAULT NULL,
  `departement` varchar(200) DEFAULT NULL,
  `codepostal` varchar(80) DEFAULT NULL,
  `pay` decimal(65,0) DEFAULT NULL,
  `tel` varchar(30) DEFAULT NULL,
  `tel2` varchar(30) DEFAULT NULL,
  `fax` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `web` varchar(200) DEFAULT NULL,
  `img` varchar(100) DEFAULT NULL,
  `album` tinyint(1) NOT NULL DEFAULT '0',
  `intro` mediumtext,
  `message` mediumtext,
  `horaires_prix` mediumtext,
  `link` varchar(200) DEFAULT NULL,
  `article_id` int(100) DEFAULT '0',
  `icon` varchar(100) DEFAULT NULL,
  `icon_label` varchar(100) DEFAULT NULL,
  `affichage` smallint(1) DEFAULT '0',
  `marqueur` varchar(200) DEFAULT NULL,
  `glng` varchar(12) DEFAULT NULL,
  `glat` varchar(12) DEFAULT NULL,
  `gzoom` varchar(2) DEFAULT NULL,
  `catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `userid` int(10) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` tinyint(1) NOT NULL DEFAULT '0',
  `metadesc` text,
  `metakey` text,
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kuwait_gmapfp`
--

INSERT INTO `kuwait_gmapfp` (`id`, `nom`, `alias`, `adresse`, `adresse2`, `ville`, `departement`, `codepostal`, `pay`, `tel`, `tel2`, `fax`, `email`, `web`, `img`, `album`, `intro`, `message`, `horaires_prix`, `link`, `article_id`, `icon`, `icon_label`, `affichage`, `marqueur`, `glng`, `glat`, `gzoom`, `catid`, `userid`, `published`, `checked_out`, `metadesc`, `metakey`, `ordering`) VALUES
(1, 'test map', 'developpement', '', '', 'baner pune', 'maharashtra', '411045', '50', '', '', '', '', 'http://test.com', 'gmapfp_logo.png', 0, '<p>GmapFP Développement :</p>\r\n<ul>\r\n<li>Création de site web dans la région d\'Orléans Est.</li>\r\n<li>Création d\'extensions Joomla.</li>\r\n</ul>', NULL, '', '', 0, '', '', 0, 'http://chart.apis.google.com/chart?chst=d_map_xpin_icon&chld=pin_star|info|FFFF00|FF0000', '73.7769432', '18.5642382', '11', 8, 531, 1, 0, 'GmapFP D?veloppement : Cr?ation de site web dans la r?gion d\'Orl?ans Est. Cr?ation d\'extensions Joomla.', '', 1),
(2, 'Test 2', 'test-2', 'Budhwar Peth', '', 'satara', 'maharashtra', '415002', '100', '2BHK', '1', '', '', '1', 'tulips20-20copy.jpg', 0, '', NULL, '', '', 0, '', '', 0, 'http://www.google.com/mapfiles/marker.png', '73.990543600', '17.6878749', '10', 9, 28, 1, 0, '', '', 2);

-- --------------------------------------------------------

--
-- Table structure for table `kuwait_gmapfp_marqueurs`
--

CREATE TABLE `kuwait_gmapfp_marqueurs` (
  `id` int(11) NOT NULL,
  `nom` text NOT NULL,
  `url` text NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kuwait_gmapfp_marqueurs`
--

INSERT INTO `kuwait_gmapfp_marqueurs` (`id`, `nom`, `url`, `published`) VALUES
(1, 'marqueur', 'http://www.google.com/mapfiles/marker.png', 1),
(2, 'marqueur home', 'http://chart.apis.google.com/chart?chst=d_map_xpin_icon&chld=pin_star|home|FFFF00|FF0000', 1),
(3, 'marqueur flag', 'http://chart.apis.google.com/chart?chst=d_map_xpin_icon&chld=pin_star|flag|FFFF00|FF0000', 1),
(4, 'marqueur info', 'http://chart.apis.google.com/chart?chst=d_map_xpin_icon&chld=pin_star|info|FFFF00|FF0000', 1),
(5, 'marqueur bar', 'http://chart.apis.google.com/chart?chst=d_map_xpin_icon&chld=pin_star|bar|FFFF00|FF0000', 1),
(6, 'marqueur cafe', 'http://chart.apis.google.com/chart?chst=d_map_xpin_icon&chld=pin_star|cafe|FFFF00|FF0000', 1),
(7, 'marqueur perso', 'http://chart.apis.google.com/chart?chst=d_map_spin&chld=1.2|0|FF0000|10|_|foo|bar', 1),
(8, 'marqueurA', 'http://www.google.com/mapfiles/markerA.png', 1),
(9, 'marqueurB', 'http://www.google.com/mapfiles/markerB.png', 1),
(10, 'marqueurC', 'http://www.google.com/mapfiles/markerC.png', 1),
(11, 'marqueurD', 'http://www.google.com/mapfiles/markerD.png', 1),
(12, 'marqueurE', 'http://www.google.com/mapfiles/markerE.png', 1),
(13, 'marqueurF', 'http://www.google.com/mapfiles/markerF.png', 1),
(14, 'marqueurG', 'http://www.google.com/mapfiles/markerG.png', 1),
(15, 'marqueurH', 'http://www.google.com/mapfiles/markerH.png', 1),
(16, 'marqueurI', 'http://www.google.com/mapfiles/markerI.png', 1),
(17, 'marqueurJ', 'http://www.google.com/mapfiles/markerJ.png', 1),
(18, 'marqueurK', 'http://www.google.com/mapfiles/markerK.png', 1),
(19, 'marqueurL', 'http://www.google.com/mapfiles/markerL.png', 1),
(20, 'marqueurM', 'http://www.google.com/mapfiles/markerM.png', 1),
(21, 'marqueurN', 'http://www.google.com/mapfiles/markerN.png', 1),
(22, 'marqueurO', 'http://www.google.com/mapfiles/markerO.png', 1),
(23, 'marqueurP', 'http://www.google.com/mapfiles/markerP.png', 1),
(24, 'marqueurQ', 'http://www.google.com/mapfiles/markerQ.png', 1),
(25, 'marqueurR', 'http://www.google.com/mapfiles/markerR.png', 1),
(26, 'marqueurS', 'http://www.google.com/mapfiles/markerS.png', 1),
(27, 'marqueurT', 'http://www.google.com/mapfiles/markerT.png', 1),
(28, 'marqueurU', 'http://www.google.com/mapfiles/markerU.png', 1),
(29, 'marqueurV', 'http://www.google.com/mapfiles/markerV.png', 1),
(30, 'marqueurW', 'http://www.google.com/mapfiles/markerW.png', 1),
(31, 'marqueurX', 'http://www.google.com/mapfiles/markerX.png', 1),
(32, 'marqueurY', 'http://www.google.com/mapfiles/markerY.png', 1),
(33, 'marqueurZ', 'http://www.google.com/mapfiles/markerZ.png', 1),
(34, 'marqueurBleu', 'http://maps.gstatic.com/intl/fr_ALL/mapfiles/ms/micons/blue-dot.png', 1),
(35, 'marqueurVert', 'http://maps.gstatic.com/intl/fr_ALL/mapfiles/ms/micons/green-dot.png', 1),
(36, 'marqueurOrange', 'http://maps.gstatic.com/intl/fr_ALL/mapfiles/ms/micons/orange-dot.png', 1),
(37, 'marqueurJaune', 'http://maps.gstatic.com/intl/fr_ALL/mapfiles/ms/micons/yellow-dot.png', 1),
(38, 'marqueurViolet', 'http://maps.gstatic.com/intl/fr_ALL/mapfiles/ms/micons/purple-dot.png', 1),
(39, 'marqueurRose', 'http://maps.gstatic.com/intl/fr_ALL/mapfiles/ms/micons/pink-dot.png', 1),
(40, 'purple', 'http://labs.google.com/ridefinder/images/mm_20_purple.png', 1),
(41, 'yellow', 'http://labs.google.com/ridefinder/images/mm_20_yellow.png', 1),
(42, 'blue', 'http://labs.google.com/ridefinder/images/mm_20_blue.png', 1),
(43, 'white', 'http://labs.google.com/ridefinder/images/mm_20_white.png', 1),
(44, 'green', 'http://labs.google.com/ridefinder/images/mm_20_green.png', 1),
(45, 'red', 'http://labs.google.com/ridefinder/images/mm_20_red.png', 1),
(46, 'black', 'http://labs.google.com/ridefinder/images/mm_20_black.png', 1),
(47, 'orange', 'http://labs.google.com/ridefinder/images/mm_20_orange.png', 1),
(48, 'gray', 'http://labs.google.com/ridefinder/images/mm_20_gray.png', 1),
(49, 'brown', 'http://labs.google.com/ridefinder/images/mm_20_brown.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `kuwait_gmapfp_personnalisation`
--

CREATE TABLE `kuwait_gmapfp_personnalisation` (
  `id` int(10) UNSIGNED NOT NULL,
  `nom` varchar(200) NOT NULL,
  `intro_carte` mediumtext,
  `conclusion_carte` mediumtext,
  `intro_detail` mediumtext,
  `conclusion_detail` mediumtext,
  `published` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `kuwait_gmap_wishlist`
--

CREATE TABLE `kuwait_gmap_wishlist` (
  `wid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `kuwait_languages`
--

CREATE TABLE `kuwait_languages` (
  `lang_id` int(11) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lang_code` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_native` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sef` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sitename` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kuwait_languages`
--

INSERT INTO `kuwait_languages` (`lang_id`, `asset_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
(1, 0, 'en-GB', 'English (en-GB)', 'English (United Kingdom)', 'en', 'en_gb', '', '', '', '', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `kuwait_menu`
--

CREATE TABLE `kuwait_menu` (
  `id` int(11) NOT NULL,
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kuwait_menu`
--

INSERT INTO `kuwait_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 99, 0, '*', 0),
(2, 'main', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 1, 1, 1, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 1, 10, 0, '*', 1),
(3, 'main', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', 1, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 2, 3, 0, '*', 1),
(4, 'main', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', 1, 2, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-cat', 0, '', 4, 5, 0, '*', 1),
(5, 'main', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 1, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-clients', 0, '', 6, 7, 0, '*', 1),
(6, 'main', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 1, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-tracks', 0, '', 8, 9, 0, '*', 1),
(7, 'main', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 1, 1, 1, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 11, 16, 0, '*', 1),
(8, 'main', 'com_contact_contacts', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', 1, 7, 2, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 12, 13, 0, '*', 1),
(9, 'main', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', 1, 7, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact-cat', 0, '', 14, 15, 0, '*', 1),
(10, 'main', 'com_messages', 'Messaging', '', 'Messaging', 'index.php?option=com_messages', 'component', 1, 1, 1, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages', 0, '', 17, 20, 0, '*', 1),
(11, 'main', 'com_messages_add', 'New Private Message', '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', 1, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-add', 0, '', 18, 19, 0, '*', 1),
(13, 'main', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 1, 1, 1, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 21, 26, 0, '*', 1),
(14, 'main', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', 1, 13, 2, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 22, 23, 0, '*', 1),
(15, 'main', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', 1, 13, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds-cat', 0, '', 24, 25, 0, '*', 1),
(16, 'main', 'com_redirect', 'Redirect', '', 'Redirect', 'index.php?option=com_redirect', 'component', 1, 1, 1, 24, 0, '0000-00-00 00:00:00', 0, 0, 'class:redirect', 0, '', 27, 28, 0, '*', 1),
(17, 'main', 'com_search', 'Basic Search', '', 'Basic Search', 'index.php?option=com_search', 'component', 1, 1, 1, 19, 0, '0000-00-00 00:00:00', 0, 0, 'class:search', 0, '', 29, 30, 0, '*', 1),
(18, 'main', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', 1, 1, 1, 27, 0, '0000-00-00 00:00:00', 0, 0, 'class:finder', 0, '', 31, 32, 0, '*', 1),
(19, 'main', 'com_joomlaupdate', 'Joomla! Update', '', 'Joomla! Update', 'index.php?option=com_joomlaupdate', 'component', 1, 1, 1, 28, 0, '0000-00-00 00:00:00', 0, 0, 'class:joomlaupdate', 0, '', 33, 34, 0, '*', 1),
(20, 'main', 'com_tags', 'Tags', '', 'Tags', 'index.php?option=com_tags', 'component', 1, 1, 1, 29, 0, '0000-00-00 00:00:00', 0, 1, 'class:tags', 0, '', 35, 36, 0, '', 1),
(21, 'main', 'com_postinstall', 'Post-installation messages', '', 'Post-installation messages', 'index.php?option=com_postinstall', 'component', 1, 1, 1, 32, 0, '0000-00-00 00:00:00', 0, 1, 'class:postinstall', 0, '', 37, 38, 0, '*', 1),
(22, 'main', 'com_associations', 'Multilingual Associations', '', 'Multilingual Associations', 'index.php?option=com_associations', 'component', 1, 1, 1, 34, 0, '0000-00-00 00:00:00', 0, 0, 'class:associations', 0, '', 39, 40, 0, '*', 1),
(101, 'mainmenu', 'Home', 'home', '', 'home', 'index.php?option=com_content&view=featured', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{\"featured_categories\":[\"\"],\"layout_type\":\"blog\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"3\",\"num_columns\":\"3\",\"num_links\":\"0\",\"multi_column_order\":\"1\",\"orderby_pri\":\"\",\"orderby_sec\":\"front\",\"order_date\":\"\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"1\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":1,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 41, 42, 1, '*', 0),
(102, 'main', 'GMapFP', 'gmapfp', '', 'gmapfp', 'index.php?option=com_gmapfp', 'component', 1, 1, 1, 10000, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_gmapfp/images/logo_gmapfp.png', 0, '{}', 43, 56, 0, '', 1),
(103, 'main', 'Com_GMapFP_Accueil', 'com-gmapfp-accueil', '', 'gmapfp/com-gmapfp-accueil', 'index.php?option=com_gmapfp', 'component', 1, 102, 2, 10000, 0, '0000-00-00 00:00:00', 0, 1, 'class:cpanel', 0, '{}', 44, 45, 0, '', 1),
(104, 'main', 'Com_GMapFP_Lieux', 'com-gmapfp-lieux', '', 'gmapfp/com-gmapfp-lieux', 'index.php?option=com_gmapfp&controller=gmapfp&task=view', 'component', 1, 102, 2, 10000, 0, '0000-00-00 00:00:00', 0, 1, 'class:language', 0, '{}', 46, 47, 0, '', 1),
(105, 'main', 'Com_GMapFP_Marqueurs', 'com-gmapfp-marqueurs', '', 'gmapfp/com-gmapfp-marqueurs', 'index.php?option=com_gmapfp&controller=marqueurs&task=view', 'component', 1, 102, 2, 10000, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_gmapfp/images/marqueur.png', 0, '{}', 48, 49, 0, '', 1),
(106, 'main', 'Com_GMapFP_Categories', 'com-gmapfp-categories', '', 'gmapfp/com-gmapfp-categories', 'index.php?option=com_categories&extension=com_gmapfp', 'component', 1, 102, 2, 10000, 0, '0000-00-00 00:00:00', 0, 1, 'class:category', 0, '{}', 50, 51, 0, '', 1),
(107, 'main', 'Com_GMapFP_Personnalisation', 'com-gmapfp-personnalisation', '', 'gmapfp/com-gmapfp-personnalisation', 'index.php?option=com_gmapfp&controller=personnalisations&task=view', 'component', 1, 102, 2, 10000, 0, '0000-00-00 00:00:00', 0, 1, 'class:info', 0, '{}', 52, 53, 0, '', 1),
(108, 'main', 'Com_GMapFP_CSS', 'com-gmapfp-css', '', 'gmapfp/com-gmapfp-css', 'index.php?option=com_gmapfp&controller=css&task=view', 'component', 1, 102, 2, 10000, 0, '0000-00-00 00:00:00', 0, 1, 'class:themes', 0, '{}', 54, 55, 0, '', 1),
(109, 'main', 'COM_AKEEBA', 'com-akeeba', '', 'com-akeeba', 'index.php?option=com_akeeba', 'component', 1, 1, 1, 10002, 0, '0000-00-00 00:00:00', 0, 1, '../media/com_akeeba/icons/akeeba-16.png', 0, '{}', 57, 58, 0, '', 1),
(110, 'mainmenu', 'Map', 'map', '', 'map', 'index.php?option=com_gmapfp&view=gmapfplist', 'component', 1, 1, 1, 10000, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"id_perso\":\"0\",\"gmapfp_position_liste\":\"0\",\"gmapfp_view_marqueur\":\"1\",\"gmapfp_view_ville\":\"1\",\"gmapfp_width_list\":\"150\",\"gmapfp_nombre_col\":\"1\",\"catid\":\"0\",\"recursive\":\"1\",\"orderby_pri\":\"\",\"gmapfp_filtre_sql\":\"\",\"gmapfp_geoXML\":\"\",\"gmapfp_itineraire\":\"\",\"gmapfp_filtre\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 59, 60, 0, '*', 0),
(111, 'mainmenu', 'Fill Form', 'fill-form', '', 'fill-form', 'index.php?option=com_gmapfp&view=editlieux&layout=soumission', 'component', 1, 1, 1, 10000, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"moderateur\":\"27\",\"gmapfp_submit_envoie_mail_admin\":\"0\",\"gmapfp_submit_validation_admin\":\"1\",\"choix_categorie\":\"1\",\"catid\":\"8\",\"choix_upload_image\":\"1\",\"choix_horaire\":\"1\",\"choix_marqueur\":\"1\",\"marqueur_def\":\"http:\\/\\/www.google.com\\/mapfiles\\/marker.png\",\"gmapfp_submit_adr1\":\"1\",\"gmapfp_submit_adr2\":\"1\",\"gmapfp_submit_cp\":\"1\",\"gmapfp_submit_ville\":\"1\",\"gmapfp_submit_departement\":\"1\",\"gmapfp_submit_pays\":\"1\",\"gmapfp_submit_phone1\":\"1\",\"gmapfp_submit_email\":\"1\",\"gmapfp_submit_web\":\"0\",\"gmapfp_submit_lat_lng\":\"0\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 61, 62, 0, '*', 0),
(112, 'mainmenu', 'form', 'form', '', 'form', 'index.php?option=com_gmapfp&view=gestionlieux', 'component', 1, 1, 1, 10000, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 63, 64, 0, '*', 0),
(113, 'top-menu', 'Login', 'login', '', 'login', 'index.php?option=com_users&view=login', 'component', 1, 1, 1, 25, 0, '0000-00-00 00:00:00', 0, 5, ' ', 0, '{\"loginredirectchoice\":\"1\",\"login_redirect_url\":\"\",\"login_redirect_menuitem\":\"\",\"logindescription_show\":\"1\",\"login_description\":\"\",\"login_image\":\"\",\"logoutredirectchoice\":\"1\",\"logout_redirect_url\":\"\",\"logout_redirect_menuitem\":\"\",\"logoutdescription_show\":\"1\",\"logout_description\":\"\",\"logout_image\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 65, 66, 0, '*', 0),
(114, 'top-menu', 'Logout', 'logout', '', 'logout', 'index.php?option=com_users&view=login&layout=logout&task=user.menulogout', 'component', 1, 1, 1, 25, 0, '0000-00-00 00:00:00', 0, 2, ' ', 0, '{\"logout\":\"113\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 67, 68, 0, '*', 0),
(115, 'top-menu', 'My Places', 'my-places', '', 'my-places', 'index.php?option=com_gmapfp&view=gestionlieux', 'component', 1, 1, 1, 10000, 0, '0000-00-00 00:00:00', 0, 2, ' ', 0, '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 69, 70, 0, '*', 0),
(118, 'main', 'COM_BANNER', 'com-banner', '', 'com-banner', 'index.php?option=com_banner', 'component', 1, 1, 1, 10015, 0, '0000-00-00 00:00:00', 0, 1, 'media/com_banner/images/s_com_banner.png', 0, '{}', 71, 74, 0, '', 1),
(119, 'main', 'COM_BANNER_TITLE_IMAGESS', 'com-banner-title-imagess', '', 'com-banner/com-banner-title-imagess', 'index.php?option=com_banner&view=imagess', 'component', 1, 118, 2, 10015, 0, '0000-00-00 00:00:00', 0, 1, 'media/com_banner/images/s_imagess.png', 0, '{}', 72, 73, 0, '', 1),
(120, 'main', 'COM_WISHLIST', 'com-wishlist', '', 'com-wishlist', 'index.php?option=com_wishlist', 'component', 1, 1, 1, 10016, 0, '0000-00-00 00:00:00', 0, 1, 'media/com_wishlist/images/s_com_wishlist.png', 0, '{}', 75, 78, 0, '', 1),
(121, 'main', 'COM_WISHLIST_TITLE_WISHLIST', 'com-wishlist-title-wishlist', '', 'com-wishlist/com-wishlist-title-wishlist', 'index.php?option=com_wishlist&view=wishlist', 'component', 1, 120, 2, 10016, 0, '0000-00-00 00:00:00', 0, 1, 'media/com_wishlist/images/s_wishlist.png', 0, '{}', 76, 77, 0, '', 1),
(122, 'main', 'COM_COMPROFILER', 'com-comprofiler', '', 'com-comprofiler', 'index.php?option=com_comprofiler', 'component', 1, 1, 1, 10020, 0, '0000-00-00 00:00:00', 0, 1, '../components/com_comprofiler/images/icon-16-cb.png', 0, '{}', 79, 96, 0, '', 1),
(123, 'main', 'COM_COMPROFILER_CONTROLPANEL', 'com-comprofiler-controlpanel', '', 'com-comprofiler/com-comprofiler-controlpanel', 'index.php?option=com_comprofiler', 'component', 1, 122, 2, 10020, 0, '0000-00-00 00:00:00', 0, 1, 'class:cpanel', 0, '{}', 80, 81, 0, '', 1),
(124, 'main', 'COM_COMPROFILER_SHOWUSERS', 'com-comprofiler-showusers', '', 'com-comprofiler/com-comprofiler-showusers', 'index.php?option=com_comprofiler&task=showusers&view=showusers', 'component', 1, 122, 2, 10020, 0, '0000-00-00 00:00:00', 0, 1, 'class:user', 0, '{}', 82, 83, 0, '', 1),
(125, 'main', 'COM_COMPROFILER_SHOWTAB', 'com-comprofiler-showtab', '', 'com-comprofiler/com-comprofiler-showtab', 'index.php?option=com_comprofiler&task=showTab&view=showTab', 'component', 1, 122, 2, 10020, 0, '0000-00-00 00:00:00', 0, 1, 'class:themes', 0, '{}', 84, 85, 0, '', 1),
(126, 'main', 'COM_COMPROFILER_SHOWFIELD', 'com-comprofiler-showfield', '', 'com-comprofiler/com-comprofiler-showfield', 'index.php?option=com_comprofiler&task=showField&view=showField', 'component', 1, 122, 2, 10020, 0, '0000-00-00 00:00:00', 0, 1, 'class:content', 0, '{}', 86, 87, 0, '', 1),
(127, 'main', 'COM_COMPROFILER_SHOWLISTS', 'com-comprofiler-showlists', '', 'com-comprofiler/com-comprofiler-showlists', 'index.php?option=com_comprofiler&task=showLists&view=showLists', 'component', 1, 122, 2, 10020, 0, '0000-00-00 00:00:00', 0, 1, 'class:search', 0, '{}', 88, 89, 0, '', 1),
(128, 'main', 'COM_COMPROFILER_SHOWPLUGINS', 'com-comprofiler-showplugins', '', 'com-comprofiler/com-comprofiler-showplugins', 'index.php?option=com_comprofiler&task=showPlugins&view=showPlugins', 'component', 1, 122, 2, 10020, 0, '0000-00-00 00:00:00', 0, 1, 'class:plugin', 0, '{}', 90, 91, 0, '', 1),
(129, 'main', 'COM_COMPROFILER_TOOLS', 'com-comprofiler-tools', '', 'com-comprofiler/com-comprofiler-tools', 'index.php?option=com_comprofiler&task=tools&view=tools', 'component', 1, 122, 2, 10020, 0, '0000-00-00 00:00:00', 0, 1, 'class:maintenance', 0, '{}', 92, 93, 0, '', 1),
(130, 'main', 'COM_COMPROFILER_SHOWCONFIG', 'com-comprofiler-showconfig', '', 'com-comprofiler/com-comprofiler-showconfig', 'index.php?option=com_comprofiler&task=showconfig&view=showconfig', 'component', 1, 122, 2, 10020, 0, '0000-00-00 00:00:00', 0, 1, 'class:config', 0, '{}', 94, 95, 0, '', 1),
(131, 'communitybuilder', 'CB Profile', 'cb-profile', '', 'cb-profile', 'index.php?option=com_comprofiler&view=userprofile', 'component', 1, 1, 1, 10020, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{}', 122, 123, 0, '*', 0),
(132, 'communitybuilder', 'CB Profile Edit', 'cb-profile-edit', '', 'cb-profile-edit', 'index.php?option=com_comprofiler&view=userdetails', 'component', 1, 1, 1, 10020, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{}', 120, 121, 0, '*', 0),
(133, 'communitybuilder', 'CB Registration', 'cb-registration', '', 'cb-registration', 'index.php?option=com_comprofiler&view=registers', 'component', 1, 1, 1, 10020, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{}', 118, 119, 0, '*', 0),
(134, 'communitybuilder', 'CB Login', 'cb-login', '', 'cb-login', 'index.php?option=com_comprofiler&view=login', 'component', 1, 1, 1, 10020, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{}', 116, 117, 0, '*', 0),
(135, 'communitybuilder', 'CB Logout', 'cb-logout', '', 'cb-logout', 'index.php?option=com_comprofiler&view=logout', 'component', 1, 1, 1, 10020, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{}', 114, 115, 0, '*', 0),
(136, 'communitybuilder', 'CB Forgot Login', 'cb-forgot-login', '', 'cb-forgot-login', 'index.php?option=com_comprofiler&view=lostpassword', 'component', 1, 1, 1, 10020, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{}', 112, 113, 0, '*', 0),
(137, 'communitybuilder', 'CB Userlist', 'cb-userlist', '', 'cb-userlist', 'index.php?option=com_comprofiler&view=userslist', 'component', 1, 1, 1, 10020, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{}', 110, 111, 0, '*', 0),
(138, 'communitybuilder', 'CB Manage Connections', 'cb-manage-connections', '', 'cb-manage-connections', 'index.php?option=com_comprofiler&view=manageconnections', 'component', 1, 1, 1, 10020, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{}', 108, 109, 0, '*', 0),
(139, 'communitybuilder', 'CB Moderate Bans', 'cb-moderate-bans', '', 'cb-moderate-bans', 'index.php?option=com_comprofiler&view=moderatebans', 'component', 1, 1, 1, 10020, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{}', 106, 107, 0, '*', 0),
(140, 'communitybuilder', 'CB Moderate Images', 'cb-moderate-images', '', 'cb-moderate-images', 'index.php?option=com_comprofiler&view=moderateimages', 'component', 1, 1, 1, 10020, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{}', 104, 105, 0, '*', 0),
(141, 'communitybuilder', 'CB Moderate Reports', 'cb-moderate-reports', '', 'cb-moderate-reports', 'index.php?option=com_comprofiler&view=moderatereports', 'component', 1, 1, 1, 10020, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{}', 102, 103, 0, '*', 0),
(142, 'communitybuilder', 'CB Moderate User Approvals', 'cb-moderate-user-approvals', '', 'cb-moderate-user-approvals', 'index.php?option=com_comprofiler&view=pendingapprovaluser', 'component', 1, 1, 1, 10020, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{}', 100, 101, 0, '*', 0),
(143, 'mainmenu', 'Registration', 'registration', '', 'registration', 'index.php?option=com_comprofiler&view=registers', 'component', 1, 1, 1, 10020, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 97, 98, 0, '*', 0);

-- --------------------------------------------------------

--
-- Table structure for table `kuwait_menu_types`
--

CREATE TABLE `kuwait_menu_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kuwait_menu_types`
--

INSERT INTO `kuwait_menu_types` (`id`, `asset_id`, `menutype`, `title`, `description`, `client_id`) VALUES
(1, 0, 'mainmenu', 'Main Menu', 'The main menu for the site', 0),
(2, 61, 'top-menu', 'Login', 'Top Menu', 0),
(3, 68, 'communitybuilder', 'Community Builder', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `kuwait_messages`
--

CREATE TABLE `kuwait_messages` (
  `message_id` int(10) UNSIGNED NOT NULL,
  `user_id_from` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_id_to` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kuwait_messages_cfg`
--

CREATE TABLE `kuwait_messages_cfg` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cfg_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kuwait_modules`
--

CREATE TABLE `kuwait_modules` (
  `id` int(11) NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kuwait_modules`
--

INSERT INTO `kuwait_modules` (`id`, `asset_id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(1, 39, 'Main Menu', '', '', 1, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{\"menutype\":\"mainmenu\",\"startLevel\":\"0\",\"endLevel\":\"0\",\"showAllChildren\":\"1\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"\",\"moduleclass_sfx\":\"_menu\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}', 0, '*'),
(2, 40, 'Login', '', '', 1, 'login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '', 1, '*'),
(3, 41, 'Popular Articles', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_popular', 3, 1, '{\"count\":\"5\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*'),
(4, 42, 'Recently Added Articles', '', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latest', 3, 1, '{\"count\":\"5\",\"ordering\":\"c_dsc\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*'),
(8, 43, 'Toolbar', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_toolbar', 3, 1, '', 1, '*'),
(9, 44, 'Quick Icons', '', '', 1, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_quickicon', 3, 1, '', 1, '*'),
(10, 45, 'Logged-in Users', '', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_logged', 3, 1, '{\"count\":\"5\",\"name\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*'),
(12, 46, 'Admin Menu', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 3, 1, '{\"layout\":\"\",\"moduleclass_sfx\":\"\",\"shownew\":\"1\",\"showhelp\":\"1\",\"cache\":\"0\"}', 1, '*'),
(13, 47, 'Admin Submenu', '', '', 1, 'submenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_submenu', 3, 1, '', 1, '*'),
(14, 48, 'User Status', '', '', 2, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_status', 3, 1, '', 1, '*'),
(15, 49, 'Title', '', '', 1, 'title', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_title', 3, 1, '', 1, '*'),
(16, 50, 'Login Form', '', '', 7, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '{\"greeting\":\"1\",\"name\":\"0\"}', 0, '*'),
(17, 51, 'Breadcrumbs', '', '', 1, 'position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_breadcrumbs', 1, 1, '{\"moduleclass_sfx\":\"\",\"showHome\":\"1\",\"homeText\":\"\",\"showComponent\":\"1\",\"separator\":\"\",\"cache\":\"0\",\"cache_time\":\"0\",\"cachemode\":\"itemid\"}', 0, '*'),
(79, 52, 'Multilanguage status', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_multilangstatus', 3, 1, '{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*'),
(86, 53, 'Joomla Version', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_version', 3, 1, '{\"format\":\"short\",\"product\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*'),
(87, 59, 'Homebanner', '', '', 1, 'banner', 27, '2017-07-16 09:54:47', '2017-07-16 09:53:34', '0000-00-00 00:00:00', 1, 'mod_homebanner', 1, 0, '{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*'),
(88, 60, 'GMapFP', '', '', 1, 'banner', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_gmapfp', 1, 1, '{\"gmapfp_height_picture\":\"40\",\"gmapfp_nbre_article\":\"1\",\"gmapfp_action\":\"0\",\"gmapfp_sql\":\"\",\"target\":\"\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*'),
(89, 62, 'My Account', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_menu', 1, 0, '{\"menutype\":\"top-menu\",\"base\":\"\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"showAllChildren\":\"0\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*'),
(90, 69, 'SCLogin', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_sclogin', 1, 1, '{\"theme\":\"default.css\",\"displayType\":\"modal\",\"modalButtonStyle\":\"text\",\"modalCloseButton\":\"1\",\"socialButtonsLayout\":\"vertical\",\"showLoginForm\":\"1\",\"showForgotUsername\":\"link\",\"showForgotPassword\":\"link\",\"showRegisterLink\":\"2\",\"showRememberMe\":\"0\",\"autoFocusUsername\":\"0\",\"register_type\":\"custom\",\"registrationlink\":\"143\",\"jlogin\":\"\",\"usesecure\":\"0\",\"enableProfilePic\":\"0\",\"profileWidth\":\"50\",\"profileHeight\":\"50\",\"linkProfile\":\"0\",\"greetingName\":\"1\",\"showUserMenu\":\"\",\"userMenuStyle\":\"0\",\"userMenuTitle\":\"1\",\"showLogoutButton\":\"1\",\"showConnectButton\":\"1\",\"jlogout\":\"\",\"showSociaLoginButton\":\"0\",\"user_intro\":\"\",\"loadJQuery\":\"0\",\"showPoweredByLink\":\"2\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*');

-- --------------------------------------------------------

--
-- Table structure for table `kuwait_modules_menu`
--

CREATE TABLE `kuwait_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kuwait_modules_menu`
--

INSERT INTO `kuwait_modules_menu` (`moduleid`, `menuid`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(16, 0),
(17, 0),
(79, 0),
(86, 0),
(87, 0),
(88, 0),
(89, 0),
(90, 0);

-- --------------------------------------------------------

--
-- Table structure for table `kuwait_newsfeeds`
--

CREATE TABLE `kuwait_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `link` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `cache_time` int(10) UNSIGNED NOT NULL DEFAULT '3600',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kuwait_overrider`
--

CREATE TABLE `kuwait_overrider` (
  `id` int(10) NOT NULL COMMENT 'Primary Key',
  `constant` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `string` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kuwait_postinstall_messages`
--

CREATE TABLE `kuwait_postinstall_messages` (
  `postinstall_message_id` bigint(20) UNSIGNED NOT NULL,
  `extension_id` bigint(20) NOT NULL DEFAULT '700' COMMENT 'FK to #__extensions',
  `title_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language_extension` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint(3) NOT NULL DEFAULT '1',
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint(3) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kuwait_postinstall_messages`
--

INSERT INTO `kuwait_postinstall_messages` (`postinstall_message_id`, `extension_id`, `title_key`, `description_key`, `action_key`, `language_extension`, `language_client_id`, `type`, `action_file`, `action`, `condition_file`, `condition_method`, `version_introduced`, `enabled`) VALUES
(1, 700, 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_TITLE', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_BODY', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_ACTION', 'plg_twofactorauth_totp', 1, 'action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_condition', '3.2.0', 1),
(2, 700, 'COM_CPANEL_WELCOME_BEGINNERS_TITLE', 'COM_CPANEL_WELCOME_BEGINNERS_MESSAGE', '', 'com_cpanel', 1, 'message', '', '', '', '', '3.2.0', 1),
(3, 700, 'COM_CPANEL_MSG_STATS_COLLECTION_TITLE', 'COM_CPANEL_MSG_STATS_COLLECTION_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/statscollection.php', 'admin_postinstall_statscollection_condition', '3.5.0', 1),
(4, 700, 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME', 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME_BODY', 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME_ACTION', 'plg_system_updatenotification', 1, 'action', 'site://plugins/system/updatenotification/postinstall/updatecachetime.php', 'updatecachetime_postinstall_action', 'site://plugins/system/updatenotification/postinstall/updatecachetime.php', 'updatecachetime_postinstall_condition', '3.6.3', 1),
(5, 700, 'COM_CPANEL_MSG_JOOMLA40_PRE_CHECKS_TITLE', 'COM_CPANEL_MSG_JOOMLA40_PRE_CHECKS_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/joomla40checks.php', 'admin_postinstall_joomla40checks_condition', '3.7.0', 1),
(6, 700, 'TPL_HATHOR_MESSAGE_POSTINSTALL_TITLE', 'TPL_HATHOR_MESSAGE_POSTINSTALL_BODY', 'TPL_HATHOR_MESSAGE_POSTINSTALL_ACTION', 'tpl_hathor', 1, 'action', 'admin://templates/hathor/postinstall/hathormessage.php', 'hathormessage_postinstall_action', 'admin://templates/hathor/postinstall/hathormessage.php', 'hathormessage_postinstall_condition', '3.7.0', 1);

-- --------------------------------------------------------

--
-- Table structure for table `kuwait_redirect_links`
--

CREATE TABLE `kuwait_redirect_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `old_url` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `new_url` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referer` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `header` smallint(3) NOT NULL DEFAULT '301'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kuwait_schemas`
--

CREATE TABLE `kuwait_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kuwait_schemas`
--

INSERT INTO `kuwait_schemas` (`extension_id`, `version_id`) VALUES
(700, '3.7.3-2017-06-03');

-- --------------------------------------------------------

--
-- Table structure for table `kuwait_session`
--

CREATE TABLE `kuwait_session` (
  `session_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(3) UNSIGNED DEFAULT NULL,
  `guest` tinyint(4) UNSIGNED DEFAULT '1',
  `time` varchar(14) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `data` mediumtext COLLATE utf8mb4_unicode_ci,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kuwait_session`
--

INSERT INTO `kuwait_session` (`session_id`, `client_id`, `guest`, `time`, `data`, `userid`, `username`) VALUES
('0m8ccaejqhpmmmntgfb0s79hs3', 1, 0, '1501179083', 'joomla|s:3264:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjo0OntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aToxMDk7czo1OiJ0aW1lciI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJzdGFydCI7aToxNTAxMTc2NDkzO3M6NDoibGFzdCI7aToxNTAxMTc5MDgxO3M6Mzoibm93IjtpOjE1MDExNzkwODI7fXM6NToidG9rZW4iO3M6MzI6Ijg3RDVDR0FuekxTOWN6NGUyUFhhZGQwR05NN0UwRUF0Ijt9czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjY6e3M6MTM6ImNvbV9pbnN0YWxsZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NzoibWVzc2FnZSI7czowOiIiO3M6MTc6ImV4dGVuc2lvbl9tZXNzYWdlIjtzOjA6IiI7czo2OiJtYW5hZ2UiO086ODoic3RkQ2xhc3MiOjM6e3M6NjoiZmlsdGVyIjthOjU6e3M6Njoic2VhcmNoIjtzOjA6IiI7czo2OiJzdGF0dXMiO3M6MDoiIjtzOjk6ImNsaWVudF9pZCI7czowOiIiO3M6NDoidHlwZSI7czowOiIiO3M6NjoiZm9sZGVyIjtzOjA6IiI7fXM6NDoibGlzdCI7YToyOntzOjEyOiJmdWxsb3JkZXJpbmciO3M6MTc6ImV4dGVuc2lvbl9pZCBERVNDIjtzOjU6ImxpbWl0IjtzOjI6IjIwIjt9czoxMDoibGltaXRzdGFydCI7aTowO319czo5OiJjb21fbWVudXMiO086ODoic3RkQ2xhc3MiOjI6e3M6NToiaXRlbXMiO086ODoic3RkQ2xhc3MiOjQ6e3M6ODoibWVudXR5cGUiO3M6ODoibWFpbm1lbnUiO3M6OToiY2xpZW50X2lkIjtpOjA7czoxMDoibGltaXRzdGFydCI7aTowO3M6NDoibGlzdCI7YTo0OntzOjk6ImRpcmVjdGlvbiI7czozOiJhc2MiO3M6NToibGltaXQiO3M6MjoiMjAiO3M6ODoib3JkZXJpbmciO3M6NToiYS5sZnQiO3M6NToic3RhcnQiO2Q6MDt9fXM6NDoiZWRpdCI7Tzo4OiJzdGRDbGFzcyI6MTp7czo0OiJpdGVtIjtPOjg6InN0ZENsYXNzIjo0OntzOjI6ImlkIjthOjA6e31zOjQ6ImRhdGEiO047czo0OiJ0eXBlIjtOO3M6NDoibGluayI7Tjt9fX1zOjEwOiJjb21fZmllbGRzIjtPOjg6InN0ZENsYXNzIjozOntzOjY6ImZpZWxkcyI7Tzo4OiJzdGRDbGFzcyI6Mjp7czo3OiJjb250ZXh0IjtzOjE0OiJjb21fdXNlcnMudXNlciI7czo0OiJsaXN0IjthOjQ6e3M6OToiZGlyZWN0aW9uIjtzOjM6ImFzYyI7czo1OiJsaW1pdCI7czoyOiIyMCI7czo4OiJvcmRlcmluZyI7czoxMDoiYS5vcmRlcmluZyI7czo1OiJzdGFydCI7ZDowO319czo2OiJncm91cHMiO086ODoic3RkQ2xhc3MiOjE6e3M6NzoiY29udGV4dCI7czoxNDoiY29tX3VzZXJzLnVzZXIiO31zOjQ6ImVkaXQiO086ODoic3RkQ2xhc3MiOjE6e3M6NToiZmllbGQiO086ODoic3RkQ2xhc3MiOjI6e3M6NDoiZGF0YSI7TjtzOjI6ImlkIjthOjA6e319fX1zOjEwOiJjb21fY29uZmlnIjtPOjg6InN0ZENsYXNzIjoxOntzOjY6ImNvbmZpZyI7Tzo4OiJzdGRDbGFzcyI6MTp7czo2OiJnbG9iYWwiO086ODoic3RkQ2xhc3MiOjE6e3M6NDoiZGF0YSI7Tjt9fX1zOjExOiJjb21fbW9kdWxlcyI7Tzo4OiJzdGRDbGFzcyI6Mjp7czo0OiJlZGl0IjtPOjg6InN0ZENsYXNzIjoxOntzOjY6Im1vZHVsZSI7Tzo4OiJzdGRDbGFzcyI6Mjp7czoyOiJpZCI7YTowOnt9czo0OiJkYXRhIjtOO319czozOiJhZGQiO086ODoic3RkQ2xhc3MiOjE6e3M6NjoibW9kdWxlIjtPOjg6InN0ZENsYXNzIjoyOntzOjEyOiJleHRlbnNpb25faWQiO047czo2OiJwYXJhbXMiO047fX19czoxMToiY29tX3BsdWdpbnMiO086ODoic3RkQ2xhc3MiOjI6e3M6NzoicGx1Z2lucyI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo2OiJmaWx0ZXIiO2E6NDp7czo2OiJzZWFyY2giO3M6OToicmVjYXB0Y2hhIjtzOjc6ImVuYWJsZWQiO3M6MDoiIjtzOjY6ImZvbGRlciI7czowOiIiO3M6NjoiYWNjZXNzIjtzOjA6IiI7fXM6NDoibGlzdCI7YTo0OntzOjEyOiJmdWxsb3JkZXJpbmciO3M6MTA6ImZvbGRlciBBU0MiO3M6NToibGltaXQiO3M6MjoiMjAiO3M6OToic29ydFRhYmxlIjtzOjY6ImZvbGRlciI7czoxNDoiZGlyZWN0aW9uVGFibGUiO3M6MzoiQVNDIjt9czoxMDoibGltaXRzdGFydCI7aTowO31zOjQ6ImVkaXQiO086ODoic3RkQ2xhc3MiOjE6e3M6NjoicGx1Z2luIjtPOjg6InN0ZENsYXNzIjoyOntzOjI6ImlkIjthOjA6e31zOjQ6ImRhdGEiO047fX19fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fXM6NDoidXNlciI7Tzo1OiJKVXNlciI6MTp7czoyOiJpZCI7czoyOiIyNyI7fXM6MTE6ImFwcGxpY2F0aW9uIjtPOjg6InN0ZENsYXNzIjoxOntzOjU6InF1ZXVlIjtOO319fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fQ==\";cb|a:1:{s:5:\"state\";a:1:{s:13:\"fieldsbrowser\";a:22:{s:6:\"search\";s:0:\"\";s:7:\"orderby\";s:12:\"ordering_asc\";s:11:\"filter_type\";s:0:\"\";s:12:\"filter_tabid\";s:0:\"\";s:15:\"filter_required\";s:0:\"\";s:14:\"filter_profile\";s:0:\"\";s:19:\"filter_registration\";s:0:\"\";s:11:\"filter_edit\";s:0:\"\";s:17:\"filter_searchable\";s:0:\"\";s:16:\"filter_published\";s:0:\"\";s:10:\"batch_type\";s:0:\"\";s:11:\"batch_tabid\";s:0:\"\";s:14:\"batch_required\";s:0:\"\";s:13:\"batch_profile\";s:0:\"\";s:18:\"batch_registration\";s:0:\"\";s:10:\"batch_edit\";s:0:\"\";s:16:\"batch_searchable\";s:0:\"\";s:8:\"ordering\";a:20:{i:0;s:1:\"1\";i:1;s:1:\"1\";i:2;s:1:\"2\";i:3;s:1:\"3\";i:4;s:1:\"4\";i:5;s:1:\"5\";i:6;s:1:\"6\";i:7;s:1:\"7\";i:8;s:1:\"8\";i:9;s:1:\"9\";i:10;s:2:\"10\";i:11;s:2:\"11\";i:12;s:2:\"12\";i:13;s:1:\"1\";i:14;s:1:\"2\";i:15;s:1:\"3\";i:16;s:1:\"1\";i:17;s:1:\"2\";i:18;s:1:\"1\";i:19;s:1:\"2\";}s:5:\"idcid\";a:1:{i:0;s:2:\"41\";}s:5:\"limit\";i:20;s:10:\"limitstart\";i:0;s:7:\"subtask\";s:19:\"setfield/required/0\";}}}', 27, 'admin'),
('2ak7a9gke5vnehq7j5kicrnhe0', 0, 0, '1501179257', 'joomla|s:1068:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aTozNjtzOjU6InRpbWVyIjtPOjg6InN0ZENsYXNzIjozOntzOjU6InN0YXJ0IjtpOjE1MDExNzYzMzc7czo0OiJsYXN0IjtpOjE1MDExNzkxNjA7czozOiJub3ciO2k6MTUwMTE3OTI1Njt9czo1OiJ0b2tlbiI7czozMjoiMUxMaHlWVm5tOFE0aWtSdmpLdVNJZ1dnU1Z5ZXlwOGYiO31zOjg6InJlZ2lzdHJ5IjtPOjI0OiJKb29tbGFcUmVnaXN0cnlcUmVnaXN0cnkiOjM6e3M6NzoiACoAZGF0YSI7Tzo4OiJzdGRDbGFzcyI6Mjp7czoxMzoiY29tX2luc3RhbGxlciI7Tzo4OiJzdGRDbGFzcyI6Mjp7czo3OiJtZXNzYWdlIjtzOjA6IiI7czoxNzoiZXh0ZW5zaW9uX21lc3NhZ2UiO3M6MDoiIjt9czo1OiJ1c2VycyI7Tzo4OiJzdGRDbGFzcyI6MTp7czo1OiJsb2dpbiI7Tzo4OiJzdGRDbGFzcyI6MTp7czo0OiJmb3JtIjtPOjg6InN0ZENsYXNzIjoyOntzOjY6InJldHVybiI7czozNjoiaHR0cDovL2xvY2FsaG9zdC9hemhhci9pbmRleC5waHAvbWFwIjtzOjQ6ImRhdGEiO2E6MDp7fX19fX1zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO31zOjQ6InVzZXIiO086NToiSlVzZXIiOjE6e3M6MjoiaWQiO3M6MjoiMjgiO319fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fQ==\";', 28, 'test');

-- --------------------------------------------------------

--
-- Table structure for table `kuwait_tags`
--

CREATE TABLE `kuwait_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kuwait_tags`
--

INSERT INTO `kuwait_tags` (`id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `created_by_alias`, `modified_user_id`, `modified_time`, `images`, `urls`, `hits`, `language`, `version`, `publish_up`, `publish_down`) VALUES
(1, 0, 0, 1, 0, '', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '', '', '', '', 27, '2017-07-15 09:33:38', '', 0, '0000-00-00 00:00:00', '', '', 0, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `kuwait_template_styles`
--

CREATE TABLE `kuwait_template_styles` (
  `id` int(10) UNSIGNED NOT NULL,
  `template` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `home` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kuwait_template_styles`
--

INSERT INTO `kuwait_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`) VALUES
(4, 'beez3', 0, '0', 'Beez3 - Default', '{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"logo\":\"images\\/joomla_black.png\",\"sitetitle\":\"Joomla!\",\"sitedescription\":\"Open Source Content Management\",\"navposition\":\"left\",\"templatecolor\":\"personal\",\"html5\":\"0\"}'),
(5, 'hathor', 1, '0', 'Hathor - Default', '{\"showSiteName\":\"0\",\"colourChoice\":\"\",\"boldText\":\"0\"}'),
(7, 'protostar', 0, '0', 'protostar - Default', '{\"templateColor\":\"\",\"logoFile\":\"\",\"googleFont\":\"1\",\"googleFontName\":\"Open+Sans\",\"fluidContainer\":\"0\"}'),
(8, 'isis', 1, '1', 'isis - Default', '{\"templateColor\":\"\",\"logoFile\":\"\"}'),
(9, 'dream_house', 0, '0', 'dream_house - Default', '{\"body_color\":\"#f8f8f8\",\"logo_link\":\"index.php\",\"logo_width\":\"173\",\"logo_height\":\"26\",\"body_link_color\":\"#92999E\",\"body_link_hover_color\":\"#12ABFF\",\"body_underline\":\"none\",\"body_hover_underline\":\"underline\",\"top_menu_color\":\"#92999E\",\"top_menu_hover_color\":\"#000000\",\"top_menu_underline\":\"none\",\"top_menu_hover_underline\":\"none\",\"main_menu_color\":\"#92999E\",\"main_menu_hover_color\":\"#000000\",\"main_menu_underline\":\"none\",\"main_menu_hover_underline\":\"none\",\"menu_footer_color\":\"#92999E\",\"menu_footer_hover_color\":\"#000000\",\"menu_footer_underline\":\"none\",\"menu_footer_hover_underline\":\"none\",\"body_font\":\"PT Sans Narrow\",\"links_font\":\"PT Sans Narrow\",\"top_menu_font\":\"PT Sans Narrow\",\"main_menu_font\":\"PT Sans Narrow\",\"footer_menu_font\":\"PT Sans Narrow\",\"h1_font\":\"PT Sans Narrow\",\"h2_font\":\"PT Sans Narrow\",\"h3_font\":\"PT Sans Narrow\",\"h4_font\":\"PT Sans Narrow\",\"h5_font\":\"PT Sans Narrow\",\"h6_font\":\"PT Sans Narrow\",\"twitter\":\"\",\"facebook\":\"\",\"flickr\":\"\",\"linkedin\":\"\",\"youtube\":\"\",\"pinterest\":\"\",\"google\":\"\",\"dribbble\":\"\",\"vimeo\":\"\",\"instagram\":\"\",\"vk\":\"\"}'),
(10, 'housedesign', 0, '1', 'House Design - Default', '{\"selectlogo\":\"templates\\/housedesign\\/images\\/logo.png\",\"fontfamily\":\"fontfamily1\"}'),
(11, 'fullajax_tmpl', 0, '0', 'fullajax_tmpl - Default', '{}');

-- --------------------------------------------------------

--
-- Table structure for table `kuwait_ucm_base`
--

CREATE TABLE `kuwait_ucm_base` (
  `ucm_id` int(10) UNSIGNED NOT NULL,
  `ucm_item_id` int(10) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kuwait_ucm_content`
--

CREATE TABLE `kuwait_ucm_content` (
  `core_content_id` int(10) UNSIGNED NOT NULL,
  `core_type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `core_body` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_state` tinyint(1) NOT NULL DEFAULT '0',
  `core_checked_out_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_checked_out_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_featured` tinyint(4) UNSIGNED NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_content_item_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'ID from the individual type table',
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `core_images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `core_ordering` int(11) NOT NULL DEFAULT '0',
  `core_metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Contains core content data in name spaced fields';

-- --------------------------------------------------------

--
-- Table structure for table `kuwait_ucm_history`
--

CREATE TABLE `kuwait_ucm_history` (
  `version_id` int(10) UNSIGNED NOT NULL,
  `ucm_item_id` int(10) UNSIGNED NOT NULL,
  `ucm_type_id` int(10) UNSIGNED NOT NULL,
  `version_note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `character_count` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=auto delete; 1=keep'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kuwait_updates`
--

CREATE TABLE `kuwait_updates` (
  `update_id` int(11) NOT NULL,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `folder` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `detailsurl` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `infourl` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Available Updates';

--
-- Dumping data for table `kuwait_updates`
--

INSERT INTO `kuwait_updates` (`update_id`, `update_site_id`, `extension_id`, `name`, `description`, `element`, `type`, `folder`, `client_id`, `version`, `data`, `detailsurl`, `infourl`, `extra_query`) VALUES
(1, 1, 700, 'Joomla', '', 'joomla', 'file', '', 0, '3.7.4', '', 'https://update.joomla.org/core/sts/extension_sts.xml', '', ''),
(2, 2, 0, 'Armenian', '', 'pkg_hy-AM', 'package', '', 0, '3.4.4.1', '', 'https://update.joomla.org/language/details3/hy-AM_details.xml', '', ''),
(3, 2, 0, 'Malay', '', 'pkg_ms-MY', 'package', '', 0, '3.4.1.2', '', 'https://update.joomla.org/language/details3/ms-MY_details.xml', '', ''),
(4, 2, 0, 'Romanian', '', 'pkg_ro-RO', 'package', '', 0, '3.7.3.1', '', 'https://update.joomla.org/language/details3/ro-RO_details.xml', '', ''),
(5, 2, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '3.7.4.1', '', 'https://update.joomla.org/language/details3/nl-BE_details.xml', '', ''),
(6, 2, 0, 'Chinese Traditional', '', 'pkg_zh-TW', 'package', '', 0, '3.7.0.2', '', 'https://update.joomla.org/language/details3/zh-TW_details.xml', '', ''),
(7, 2, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '3.7.4.1', '', 'https://update.joomla.org/language/details3/fr-FR_details.xml', '', ''),
(8, 2, 0, 'Galician', '', 'pkg_gl-ES', 'package', '', 0, '3.3.1.2', '', 'https://update.joomla.org/language/details3/gl-ES_details.xml', '', ''),
(9, 2, 0, 'Georgian', '', 'pkg_ka-GE', 'package', '', 0, '3.7.4.1', '', 'https://update.joomla.org/language/details3/ka-GE_details.xml', '', ''),
(10, 2, 0, 'Greek', '', 'pkg_el-GR', 'package', '', 0, '3.6.3.2', '', 'https://update.joomla.org/language/details3/el-GR_details.xml', '', ''),
(11, 2, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '3.7.4.1', '', 'https://update.joomla.org/language/details3/ja-JP_details.xml', '', ''),
(12, 2, 0, 'Hebrew', '', 'pkg_he-IL', 'package', '', 0, '3.1.1.1', '', 'https://update.joomla.org/language/details3/he-IL_details.xml', '', ''),
(13, 2, 0, 'Hungarian', '', 'pkg_hu-HU', 'package', '', 0, '3.7.3.1', '', 'https://update.joomla.org/language/details3/hu-HU_details.xml', '', ''),
(14, 2, 0, 'Afrikaans', '', 'pkg_af-ZA', 'package', '', 0, '3.7.3.1', '', 'https://update.joomla.org/language/details3/af-ZA_details.xml', '', ''),
(15, 2, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '3.7.2.1', '', 'https://update.joomla.org/language/details3/ar-AA_details.xml', '', ''),
(16, 2, 0, 'Belarusian', '', 'pkg_be-BY', 'package', '', 0, '3.2.1.2', '', 'https://update.joomla.org/language/details3/be-BY_details.xml', '', ''),
(17, 2, 0, 'Bulgarian', '', 'pkg_bg-BG', 'package', '', 0, '3.6.5.2', '', 'https://update.joomla.org/language/details3/bg-BG_details.xml', '', ''),
(18, 2, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '3.7.3.2', '', 'https://update.joomla.org/language/details3/ca-ES_details.xml', '', ''),
(19, 2, 0, 'Chinese Simplified', '', 'pkg_zh-CN', 'package', '', 0, '3.7.3.1', '', 'https://update.joomla.org/language/details3/zh-CN_details.xml', '', ''),
(20, 2, 0, 'Croatian', '', 'pkg_hr-HR', 'package', '', 0, '3.7.4.1', '', 'https://update.joomla.org/language/details3/hr-HR_details.xml', '', ''),
(21, 2, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '3.7.3.1', '', 'https://update.joomla.org/language/details3/cs-CZ_details.xml', '', ''),
(22, 2, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '3.7.4.1', '', 'https://update.joomla.org/language/details3/da-DK_details.xml', '', ''),
(23, 2, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '3.7.2.1', '', 'https://update.joomla.org/language/details3/nl-NL_details.xml', '', ''),
(24, 2, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '3.7.0.1', '', 'https://update.joomla.org/language/details3/et-EE_details.xml', '', ''),
(25, 2, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '3.7.4.1', '', 'https://update.joomla.org/language/details3/it-IT_details.xml', '', ''),
(26, 2, 0, 'Khmer', '', 'pkg_km-KH', 'package', '', 0, '3.4.5.1', '', 'https://update.joomla.org/language/details3/km-KH_details.xml', '', ''),
(27, 2, 0, 'Korean', '', 'pkg_ko-KR', 'package', '', 0, '3.7.2.3', '', 'https://update.joomla.org/language/details3/ko-KR_details.xml', '', ''),
(28, 2, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '3.7.3.1', '', 'https://update.joomla.org/language/details3/lv-LV_details.xml', '', ''),
(29, 2, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/mk-MK_details.xml', '', ''),
(30, 2, 0, 'Norwegian Bokmal', '', 'pkg_nb-NO', 'package', '', 0, '3.7.4.1', '', 'https://update.joomla.org/language/details3/nb-NO_details.xml', '', ''),
(31, 2, 0, 'Norwegian Nynorsk', '', 'pkg_nn-NO', 'package', '', 0, '3.4.2.1', '', 'https://update.joomla.org/language/details3/nn-NO_details.xml', '', ''),
(32, 2, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '3.7.4.1', '', 'https://update.joomla.org/language/details3/fa-IR_details.xml', '', ''),
(33, 2, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '3.7.4.1', '', 'https://update.joomla.org/language/details3/pl-PL_details.xml', '', ''),
(34, 2, 0, 'Portuguese', '', 'pkg_pt-PT', 'package', '', 0, '3.7.0.1', '', 'https://update.joomla.org/language/details3/pt-PT_details.xml', '', ''),
(35, 2, 0, 'Russian', '', 'pkg_ru-RU', 'package', '', 0, '3.7.0.1', '', 'https://update.joomla.org/language/details3/ru-RU_details.xml', '', ''),
(36, 2, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/en-AU_details.xml', '', ''),
(37, 2, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '3.7.4.1', '', 'https://update.joomla.org/language/details3/sk-SK_details.xml', '', ''),
(38, 2, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/en-US_details.xml', '', ''),
(39, 2, 0, 'Swedish', '', 'pkg_sv-SE', 'package', '', 0, '3.7.4.1', '', 'https://update.joomla.org/language/details3/sv-SE_details.xml', '', ''),
(40, 2, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '3.4.5.1', '', 'https://update.joomla.org/language/details3/sy-IQ_details.xml', '', ''),
(41, 2, 0, 'Tamil', '', 'pkg_ta-IN', 'package', '', 0, '3.7.4.1', '', 'https://update.joomla.org/language/details3/ta-IN_details.xml', '', ''),
(42, 2, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '3.7.4.1', '', 'https://update.joomla.org/language/details3/th-TH_details.xml', '', ''),
(43, 2, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '3.7.2.1', '', 'https://update.joomla.org/language/details3/tr-TR_details.xml', '', ''),
(44, 2, 0, 'Ukrainian', '', 'pkg_uk-UA', 'package', '', 0, '3.7.1.1', '', 'https://update.joomla.org/language/details3/uk-UA_details.xml', '', ''),
(45, 2, 0, 'Uyghur', '', 'pkg_ug-CN', 'package', '', 0, '3.3.0.2', '', 'https://update.joomla.org/language/details3/ug-CN_details.xml', '', ''),
(46, 2, 0, 'Albanian', '', 'pkg_sq-AL', 'package', '', 0, '3.1.1.2', '', 'https://update.joomla.org/language/details3/sq-AL_details.xml', '', ''),
(47, 2, 0, 'Basque', '', 'pkg_eu-ES', 'package', '', 0, '3.7.2.1', '', 'https://update.joomla.org/language/details3/eu-ES_details.xml', '', ''),
(48, 2, 0, 'Hindi', '', 'pkg_hi-IN', 'package', '', 0, '3.3.6.2', '', 'https://update.joomla.org/language/details3/hi-IN_details.xml', '', ''),
(49, 2, 0, 'German DE', '', 'pkg_de-DE', 'package', '', 0, '3.7.3.1', '', 'https://update.joomla.org/language/details3/de-DE_details.xml', '', ''),
(50, 2, 0, 'Portuguese Brazil', '', 'pkg_pt-BR', 'package', '', 0, '3.7.4.1', '', 'https://update.joomla.org/language/details3/pt-BR_details.xml', '', ''),
(51, 2, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '3.7.4.2', '', 'https://update.joomla.org/language/details3/sr-YU_details.xml', '', ''),
(52, 2, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '3.7.2.1', '', 'https://update.joomla.org/language/details3/es-ES_details.xml', '', ''),
(53, 2, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/bs-BA_details.xml', '', ''),
(54, 2, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '3.7.4.2', '', 'https://update.joomla.org/language/details3/sr-RS_details.xml', '', ''),
(55, 2, 0, 'Vietnamese', '', 'pkg_vi-VN', 'package', '', 0, '3.2.1.2', '', 'https://update.joomla.org/language/details3/vi-VN_details.xml', '', ''),
(56, 2, 0, 'Bahasa Indonesia', '', 'pkg_id-ID', 'package', '', 0, '3.6.2.1', '', 'https://update.joomla.org/language/details3/id-ID_details.xml', '', ''),
(57, 2, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '3.7.2.1', '', 'https://update.joomla.org/language/details3/fi-FI_details.xml', '', ''),
(58, 2, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/sw-KE_details.xml', '', ''),
(59, 2, 0, 'Montenegrin', '', 'pkg_srp-ME', 'package', '', 0, '3.3.1.2', '', 'https://update.joomla.org/language/details3/srp-ME_details.xml', '', ''),
(60, 2, 0, 'English CA', '', 'pkg_en-CA', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/en-CA_details.xml', '', ''),
(61, 2, 0, 'French CA', '', 'pkg_fr-CA', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/fr-CA_details.xml', '', ''),
(62, 2, 0, 'Welsh', '', 'pkg_cy-GB', 'package', '', 0, '3.7.0.1', '', 'https://update.joomla.org/language/details3/cy-GB_details.xml', '', ''),
(63, 2, 0, 'Sinhala', '', 'pkg_si-LK', 'package', '', 0, '3.3.1.2', '', 'https://update.joomla.org/language/details3/si-LK_details.xml', '', ''),
(64, 2, 0, 'Dari Persian', '', 'pkg_prs-AF', 'package', '', 0, '3.4.4.2', '', 'https://update.joomla.org/language/details3/prs-AF_details.xml', '', ''),
(65, 2, 0, 'Turkmen', '', 'pkg_tk-TM', 'package', '', 0, '3.5.0.2', '', 'https://update.joomla.org/language/details3/tk-TM_details.xml', '', ''),
(66, 2, 0, 'Irish', '', 'pkg_ga-IE', 'package', '', 0, '3.7.0.1', '', 'https://update.joomla.org/language/details3/ga-IE_details.xml', '', ''),
(67, 2, 0, 'Dzongkha', '', 'pkg_dz-BT', 'package', '', 0, '3.6.2.1', '', 'https://update.joomla.org/language/details3/dz-BT_details.xml', '', ''),
(68, 2, 0, 'Slovenian', '', 'pkg_sl-SI', 'package', '', 0, '3.7.3.1', '', 'https://update.joomla.org/language/details3/sl-SI_details.xml', '', ''),
(69, 2, 0, 'Spanish CO', '', 'pkg_es-CO', 'package', '', 0, '3.7.4.1', '', 'https://update.joomla.org/language/details3/es-CO_details.xml', '', ''),
(70, 2, 0, 'German CH', '', 'pkg_de-CH', 'package', '', 0, '3.7.3.1', '', 'https://update.joomla.org/language/details3/de-CH_details.xml', '', ''),
(71, 2, 0, 'German AT', '', 'pkg_de-AT', 'package', '', 0, '3.7.3.1', '', 'https://update.joomla.org/language/details3/de-AT_details.xml', '', ''),
(72, 2, 0, 'German LI', '', 'pkg_de-LI', 'package', '', 0, '3.7.3.1', '', 'https://update.joomla.org/language/details3/de-LI_details.xml', '', ''),
(73, 2, 0, 'German LU', '', 'pkg_de-LU', 'package', '', 0, '3.7.3.1', '', 'https://update.joomla.org/language/details3/de-LU_details.xml', '', ''),
(74, 2, 0, 'English NZ', '', 'pkg_en-NZ', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/en-NZ_details.xml', '', ''),
(75, 5, 0, 'FOF 3.x Stable', 'FOF 3.x Stable', 'lib_fof30', 'library', '', 1, '3.1.1', '', 'http://cdn.akeebabackup.com/updates/fof3.xml', 'https://www.akeebabackup.com/component/ars/?view=Items&release_id=2706', '');

-- --------------------------------------------------------

--
-- Table structure for table `kuwait_update_sites`
--

CREATE TABLE `kuwait_update_sites` (
  `update_site_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `location` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Update Sites';

--
-- Dumping data for table `kuwait_update_sites`
--

INSERT INTO `kuwait_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`, `extra_query`) VALUES
(1, 'Joomla! Core', 'collection', 'https://update.joomla.org/core/list.xml', 1, 1501176509, ''),
(2, 'Accredited Joomla! Translations', 'collection', 'https://update.joomla.org/language/translationlist_3.xml', 1, 1501176516, ''),
(3, 'Joomla! Update Component Update Site', 'extension', 'https://update.joomla.org/core/extensions/com_joomlaupdate.xml', 1, 1501176517, ''),
(4, 'GMapFP Free Update Server', 'extension', 'http://gmapfp.org/updates/gmapfp_updater.xml', 1, 1501176518, ''),
(5, 'FOF 3.x', 'extension', 'http://cdn.akeebabackup.com/updates/fof3.xml', 1, 1501176520, ''),
(6, 'Akeeba Backup Core', 'extension', 'http://cdn.akeebabackup.com/updates/pkgakeebacore.xml', 1, 1501176523, ''),
(7, 'SCLogin Updates', 'extension', 'http://www.sourcecoast.com/updates/sclogin.xml', 1, 1501176524, '');

-- --------------------------------------------------------

--
-- Table structure for table `kuwait_update_sites_extensions`
--

CREATE TABLE `kuwait_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Links extensions to update sites';

--
-- Dumping data for table `kuwait_update_sites_extensions`
--

INSERT INTO `kuwait_update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(1, 700),
(2, 802),
(3, 28),
(4, 10000),
(5, 10001),
(6, 10006),
(7, 10021);

-- --------------------------------------------------------

--
-- Table structure for table `kuwait_usergroups`
--

CREATE TABLE `kuwait_usergroups` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kuwait_usergroups`
--

INSERT INTO `kuwait_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
(1, 0, 1, 18, 'Public'),
(2, 1, 8, 15, 'Registered'),
(3, 2, 9, 14, 'Author'),
(4, 3, 10, 13, 'Editor'),
(5, 4, 11, 12, 'Publisher'),
(6, 1, 4, 7, 'Manager'),
(7, 6, 5, 6, 'Administrator'),
(8, 1, 16, 17, 'Super Users'),
(9, 1, 2, 3, 'Guest');

-- --------------------------------------------------------

--
-- Table structure for table `kuwait_users`
--

CREATE TABLE `kuwait_users` (
  `id` int(11) NOT NULL,
  `name` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'One time emergency passwords',
  `requireReset` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Require user to reset password on next login'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kuwait_users`
--

INSERT INTO `kuwait_users` (`id`, `name`, `username`, `email`, `password`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`, `lastResetTime`, `resetCount`, `otpKey`, `otep`, `requireReset`) VALUES
(27, 'Super User', 'admin', 'azharuddin.shaikh53@gmail.com', '$2y$10$0A3WGZiVZSiJPsiYKvJltOkoFrzm3NCgVh25KU/taaKfAq2KI7vGO', 0, 1, '2017-07-15 09:33:39', '2017-07-27 17:28:19', '0', '', '0000-00-00 00:00:00', 0, '', '', 0),
(28, 'test', 'test', 'azharuddin.shaikh532@gmail.com', '$2y$10$XRJGM/dzLVF4uUy2h5ZQMOtbdMv2o5EaTqRV3IidzudePFnbsQM2S', 0, 0, '2017-07-16 00:50:52', '2017-07-27 18:06:08', '', '{\"admin_style\":\"\",\"admin_language\":\"\",\"language\":\"\",\"editor\":\"\",\"helpsite\":\"\",\"timezone\":\"\"}', '0000-00-00 00:00:00', 0, '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `kuwait_user_keys`
--

CREATE TABLE `kuwait_user_keys` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `series` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invalid` tinyint(4) NOT NULL,
  `time` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uastring` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kuwait_user_notes`
--

CREATE TABLE `kuwait_user_notes` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `subject` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) UNSIGNED NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kuwait_user_profiles`
--

CREATE TABLE `kuwait_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Simple user profile storage table';

-- --------------------------------------------------------

--
-- Table structure for table `kuwait_user_usergroup_map`
--

CREATE TABLE `kuwait_user_usergroup_map` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kuwait_user_usergroup_map`
--

INSERT INTO `kuwait_user_usergroup_map` (`user_id`, `group_id`) VALUES
(27, 8),
(28, 2);

-- --------------------------------------------------------

--
-- Table structure for table `kuwait_utf8_conversion`
--

CREATE TABLE `kuwait_utf8_conversion` (
  `converted` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kuwait_utf8_conversion`
--

INSERT INTO `kuwait_utf8_conversion` (`converted`) VALUES
(2);

-- --------------------------------------------------------

--
-- Table structure for table `kuwait_viewlevels`
--

CREATE TABLE `kuwait_viewlevels` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kuwait_viewlevels`
--

INSERT INTO `kuwait_viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1, 'Public', 0, '[1]'),
(2, 'Registered', 2, '[6,2,8]'),
(3, 'Special', 3, '[6,3,8]'),
(5, 'Guest', 1, '[9]'),
(6, 'Super Users', 4, '[8]');

-- --------------------------------------------------------

--
-- Table structure for table `kuwait_wishlist`
--

CREATE TABLE `kuwait_wishlist` (
  `id` int(11) UNSIGNED NOT NULL,
  `ordering` int(11) NOT NULL,
  `state` tinyint(1) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `userid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `property_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kuwait_wishlist`
--

INSERT INTO `kuwait_wishlist` (`id`, `ordering`, `state`, `created_by`, `modified_by`, `userid`, `property_id`) VALUES
(1, 1, 1, 28, 28, '28', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kuwait_akeeba_common`
--
ALTER TABLE `kuwait_akeeba_common`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `kuwait_ak_profiles`
--
ALTER TABLE `kuwait_ak_profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kuwait_ak_stats`
--
ALTER TABLE `kuwait_ak_stats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_fullstatus` (`filesexist`,`status`),
  ADD KEY `idx_stale` (`status`,`origin`);

--
-- Indexes for table `kuwait_ak_storage`
--
ALTER TABLE `kuwait_ak_storage`
  ADD PRIMARY KEY (`tag`(100));

--
-- Indexes for table `kuwait_assets`
--
ALTER TABLE `kuwait_assets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_asset_name` (`name`),
  ADD KEY `idx_lft_rgt` (`lft`,`rgt`),
  ADD KEY `idx_parent_id` (`parent_id`);

--
-- Indexes for table `kuwait_associations`
--
ALTER TABLE `kuwait_associations`
  ADD PRIMARY KEY (`context`,`id`),
  ADD KEY `idx_key` (`key`);

--
-- Indexes for table `kuwait_banners`
--
ALTER TABLE `kuwait_banners`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_own_prefix` (`own_prefix`),
  ADD KEY `idx_metakey_prefix` (`metakey_prefix`(100)),
  ADD KEY `idx_banner_catid` (`catid`),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `kuwait_banner_clients`
--
ALTER TABLE `kuwait_banner_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_own_prefix` (`own_prefix`),
  ADD KEY `idx_metakey_prefix` (`metakey_prefix`(100));

--
-- Indexes for table `kuwait_banner_images`
--
ALTER TABLE `kuwait_banner_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kuwait_banner_tracks`
--
ALTER TABLE `kuwait_banner_tracks`
  ADD PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  ADD KEY `idx_track_date` (`track_date`),
  ADD KEY `idx_track_type` (`track_type`),
  ADD KEY `idx_banner_id` (`banner_id`);

--
-- Indexes for table `kuwait_categories`
--
ALTER TABLE `kuwait_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cat_idx` (`extension`,`published`,`access`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `kuwait_comprofiler`
--
ALTER TABLE `kuwait_comprofiler`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `alias` (`alias`),
  ADD KEY `apprconfbanid` (`approved`,`confirmed`,`banned`,`id`),
  ADD KEY `avatappr_apr_conf_ban_avatar` (`avatarapproved`,`approved`,`confirmed`,`banned`,`avatar`(48)),
  ADD KEY `lastupdatedate` (`lastupdatedate`);

--
-- Indexes for table `kuwait_comprofiler_fields`
--
ALTER TABLE `kuwait_comprofiler_fields`
  ADD PRIMARY KEY (`fieldid`),
  ADD KEY `tabid_pub_prof_order` (`tabid`,`published`,`profile`,`ordering`),
  ADD KEY `readonly_published_tabid` (`readonly`,`published`,`tabid`),
  ADD KEY `registration_published_order` (`registration`,`published`,`ordering`);

--
-- Indexes for table `kuwait_comprofiler_field_values`
--
ALTER TABLE `kuwait_comprofiler_field_values`
  ADD PRIMARY KEY (`fieldvalueid`),
  ADD KEY `fieldid_ordering` (`fieldid`,`ordering`),
  ADD KEY `fieldtitle_id` (`fieldtitle`,`fieldid`),
  ADD KEY `fieldlabel_id` (`fieldlabel`,`fieldid`);

--
-- Indexes for table `kuwait_comprofiler_lists`
--
ALTER TABLE `kuwait_comprofiler_lists`
  ADD PRIMARY KEY (`listid`),
  ADD KEY `pub_ordering` (`published`,`ordering`),
  ADD KEY `default_published` (`default`,`published`);

--
-- Indexes for table `kuwait_comprofiler_members`
--
ALTER TABLE `kuwait_comprofiler_members`
  ADD PRIMARY KEY (`referenceid`,`memberid`),
  ADD KEY `pamr` (`pending`,`accepted`,`memberid`,`referenceid`),
  ADD KEY `aprm` (`accepted`,`pending`,`referenceid`,`memberid`),
  ADD KEY `membrefid` (`memberid`,`referenceid`);

--
-- Indexes for table `kuwait_comprofiler_plugin`
--
ALTER TABLE `kuwait_comprofiler_plugin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `element` (`element`),
  ADD KEY `folder` (`folder`),
  ADD KEY `idx_folder` (`published`,`client_id`,`viewaccesslevel`,`folder`),
  ADD KEY `type_pub_order` (`type`,`published`,`ordering`);

--
-- Indexes for table `kuwait_comprofiler_plugin_blogs`
--
ALTER TABLE `kuwait_comprofiler_plugin_blogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `published` (`published`),
  ADD KEY `user` (`user`),
  ADD KEY `access` (`access`);

--
-- Indexes for table `kuwait_comprofiler_ratings`
--
ALTER TABLE `kuwait_comprofiler_ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kuwait_comprofiler_sessions`
--
ALTER TABLE `kuwait_comprofiler_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `expiry_time` (`expiry_time`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `kuwait_comprofiler_tabs`
--
ALTER TABLE `kuwait_comprofiler_tabs`
  ADD PRIMARY KEY (`tabid`),
  ADD KEY `pluginclass` (`pluginclass`),
  ADD KEY `enabled_position_ordering` (`enabled`,`position`,`ordering`),
  ADD KEY `orderedit_enabled_pos_order` (`enabled`,`ordering_edit`,`position`,`ordering`),
  ADD KEY `orderreg_enabled_pos_order` (`enabled`,`ordering_register`,`position`,`ordering`);

--
-- Indexes for table `kuwait_comprofiler_userreports`
--
ALTER TABLE `kuwait_comprofiler_userreports`
  ADD PRIMARY KEY (`reportid`),
  ADD KEY `status_user_date` (`reportedstatus`,`reporteduser`,`reportedondate`),
  ADD KEY `reportedbyuser_ondate` (`reportedbyuser`,`reportedondate`);

--
-- Indexes for table `kuwait_comprofiler_views`
--
ALTER TABLE `kuwait_comprofiler_views`
  ADD PRIMARY KEY (`viewer_id`,`profile_id`,`lastip`),
  ADD KEY `lastview` (`lastview`),
  ADD KEY `profile_id_lastview` (`profile_id`,`lastview`,`viewer_id`);

--
-- Indexes for table `kuwait_contact_details`
--
ALTER TABLE `kuwait_contact_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`published`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_featured_catid` (`featured`,`catid`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`);

--
-- Indexes for table `kuwait_content`
--
ALTER TABLE `kuwait_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_featured_catid` (`featured`,`catid`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`);

--
-- Indexes for table `kuwait_contentitem_tag_map`
--
ALTER TABLE `kuwait_contentitem_tag_map`
  ADD UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  ADD KEY `idx_tag_type` (`tag_id`,`type_id`),
  ADD KEY `idx_date_id` (`tag_date`,`tag_id`),
  ADD KEY `idx_core_content_id` (`core_content_id`);

--
-- Indexes for table `kuwait_content_frontpage`
--
ALTER TABLE `kuwait_content_frontpage`
  ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `kuwait_content_rating`
--
ALTER TABLE `kuwait_content_rating`
  ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `kuwait_content_types`
--
ALTER TABLE `kuwait_content_types`
  ADD PRIMARY KEY (`type_id`),
  ADD KEY `idx_alias` (`type_alias`(100));

--
-- Indexes for table `kuwait_extensions`
--
ALTER TABLE `kuwait_extensions`
  ADD PRIMARY KEY (`extension_id`),
  ADD KEY `element_clientid` (`element`,`client_id`),
  ADD KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  ADD KEY `extension` (`type`,`element`,`folder`,`client_id`);

--
-- Indexes for table `kuwait_fields`
--
ALTER TABLE `kuwait_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_created_user_id` (`created_user_id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_context` (`context`(191)),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `kuwait_fields_categories`
--
ALTER TABLE `kuwait_fields_categories`
  ADD PRIMARY KEY (`field_id`,`category_id`);

--
-- Indexes for table `kuwait_fields_groups`
--
ALTER TABLE `kuwait_fields_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_created_by` (`created_by`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_context` (`context`(191)),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `kuwait_fields_values`
--
ALTER TABLE `kuwait_fields_values`
  ADD KEY `idx_field_id` (`field_id`),
  ADD KEY `idx_item_id` (`item_id`(191));

--
-- Indexes for table `kuwait_finder_filters`
--
ALTER TABLE `kuwait_finder_filters`
  ADD PRIMARY KEY (`filter_id`);

--
-- Indexes for table `kuwait_finder_links`
--
ALTER TABLE `kuwait_finder_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `idx_type` (`type_id`),
  ADD KEY `idx_title` (`title`(100)),
  ADD KEY `idx_md5` (`md5sum`),
  ADD KEY `idx_url` (`url`(75)),
  ADD KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  ADD KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`);

--
-- Indexes for table `kuwait_finder_links_terms0`
--
ALTER TABLE `kuwait_finder_links_terms0`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `kuwait_finder_links_terms1`
--
ALTER TABLE `kuwait_finder_links_terms1`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `kuwait_finder_links_terms2`
--
ALTER TABLE `kuwait_finder_links_terms2`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `kuwait_finder_links_terms3`
--
ALTER TABLE `kuwait_finder_links_terms3`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `kuwait_finder_links_terms4`
--
ALTER TABLE `kuwait_finder_links_terms4`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `kuwait_finder_links_terms5`
--
ALTER TABLE `kuwait_finder_links_terms5`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `kuwait_finder_links_terms6`
--
ALTER TABLE `kuwait_finder_links_terms6`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `kuwait_finder_links_terms7`
--
ALTER TABLE `kuwait_finder_links_terms7`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `kuwait_finder_links_terms8`
--
ALTER TABLE `kuwait_finder_links_terms8`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `kuwait_finder_links_terms9`
--
ALTER TABLE `kuwait_finder_links_terms9`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `kuwait_finder_links_termsa`
--
ALTER TABLE `kuwait_finder_links_termsa`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `kuwait_finder_links_termsb`
--
ALTER TABLE `kuwait_finder_links_termsb`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `kuwait_finder_links_termsc`
--
ALTER TABLE `kuwait_finder_links_termsc`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `kuwait_finder_links_termsd`
--
ALTER TABLE `kuwait_finder_links_termsd`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `kuwait_finder_links_termse`
--
ALTER TABLE `kuwait_finder_links_termse`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `kuwait_finder_links_termsf`
--
ALTER TABLE `kuwait_finder_links_termsf`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `kuwait_finder_taxonomy`
--
ALTER TABLE `kuwait_finder_taxonomy`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `state` (`state`),
  ADD KEY `ordering` (`ordering`),
  ADD KEY `access` (`access`),
  ADD KEY `idx_parent_published` (`parent_id`,`state`,`access`);

--
-- Indexes for table `kuwait_finder_taxonomy_map`
--
ALTER TABLE `kuwait_finder_taxonomy_map`
  ADD PRIMARY KEY (`link_id`,`node_id`),
  ADD KEY `link_id` (`link_id`),
  ADD KEY `node_id` (`node_id`);

--
-- Indexes for table `kuwait_finder_terms`
--
ALTER TABLE `kuwait_finder_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD UNIQUE KEY `idx_term` (`term`),
  ADD KEY `idx_term_phrase` (`term`,`phrase`),
  ADD KEY `idx_stem_phrase` (`stem`,`phrase`),
  ADD KEY `idx_soundex_phrase` (`soundex`,`phrase`);

--
-- Indexes for table `kuwait_finder_terms_common`
--
ALTER TABLE `kuwait_finder_terms_common`
  ADD KEY `idx_word_lang` (`term`,`language`),
  ADD KEY `idx_lang` (`language`);

--
-- Indexes for table `kuwait_finder_tokens`
--
ALTER TABLE `kuwait_finder_tokens`
  ADD KEY `idx_word` (`term`),
  ADD KEY `idx_context` (`context`);

--
-- Indexes for table `kuwait_finder_tokens_aggregate`
--
ALTER TABLE `kuwait_finder_tokens_aggregate`
  ADD KEY `token` (`term`),
  ADD KEY `keyword_id` (`term_id`);

--
-- Indexes for table `kuwait_finder_types`
--
ALTER TABLE `kuwait_finder_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Indexes for table `kuwait_gmapfp`
--
ALTER TABLE `kuwait_gmapfp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kuwait_gmapfp_marqueurs`
--
ALTER TABLE `kuwait_gmapfp_marqueurs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kuwait_gmapfp_personnalisation`
--
ALTER TABLE `kuwait_gmapfp_personnalisation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kuwait_gmap_wishlist`
--
ALTER TABLE `kuwait_gmap_wishlist`
  ADD PRIMARY KEY (`wid`);

--
-- Indexes for table `kuwait_languages`
--
ALTER TABLE `kuwait_languages`
  ADD PRIMARY KEY (`lang_id`),
  ADD UNIQUE KEY `idx_sef` (`sef`),
  ADD UNIQUE KEY `idx_langcode` (`lang_code`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_ordering` (`ordering`);

--
-- Indexes for table `kuwait_menu`
--
ALTER TABLE `kuwait_menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`(100),`language`),
  ADD KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  ADD KEY `idx_menutype` (`menutype`),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `kuwait_menu_types`
--
ALTER TABLE `kuwait_menu_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_menutype` (`menutype`);

--
-- Indexes for table `kuwait_messages`
--
ALTER TABLE `kuwait_messages`
  ADD PRIMARY KEY (`message_id`),
  ADD KEY `useridto_state` (`user_id_to`,`state`);

--
-- Indexes for table `kuwait_messages_cfg`
--
ALTER TABLE `kuwait_messages_cfg`
  ADD UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`);

--
-- Indexes for table `kuwait_modules`
--
ALTER TABLE `kuwait_modules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `published` (`published`,`access`),
  ADD KEY `newsfeeds` (`module`,`published`),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `kuwait_modules_menu`
--
ALTER TABLE `kuwait_modules_menu`
  ADD PRIMARY KEY (`moduleid`,`menuid`);

--
-- Indexes for table `kuwait_newsfeeds`
--
ALTER TABLE `kuwait_newsfeeds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`published`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`);

--
-- Indexes for table `kuwait_overrider`
--
ALTER TABLE `kuwait_overrider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kuwait_postinstall_messages`
--
ALTER TABLE `kuwait_postinstall_messages`
  ADD PRIMARY KEY (`postinstall_message_id`);

--
-- Indexes for table `kuwait_redirect_links`
--
ALTER TABLE `kuwait_redirect_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_old_url` (`old_url`(100)),
  ADD KEY `idx_link_modifed` (`modified_date`);

--
-- Indexes for table `kuwait_schemas`
--
ALTER TABLE `kuwait_schemas`
  ADD PRIMARY KEY (`extension_id`,`version_id`);

--
-- Indexes for table `kuwait_session`
--
ALTER TABLE `kuwait_session`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `time` (`time`);

--
-- Indexes for table `kuwait_tags`
--
ALTER TABLE `kuwait_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tag_idx` (`published`,`access`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `kuwait_template_styles`
--
ALTER TABLE `kuwait_template_styles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_template` (`template`),
  ADD KEY `idx_home` (`home`);

--
-- Indexes for table `kuwait_ucm_base`
--
ALTER TABLE `kuwait_ucm_base`
  ADD PRIMARY KEY (`ucm_id`),
  ADD KEY `idx_ucm_item_id` (`ucm_item_id`),
  ADD KEY `idx_ucm_type_id` (`ucm_type_id`),
  ADD KEY `idx_ucm_language_id` (`ucm_language_id`);

--
-- Indexes for table `kuwait_ucm_content`
--
ALTER TABLE `kuwait_ucm_content`
  ADD PRIMARY KEY (`core_content_id`),
  ADD KEY `tag_idx` (`core_state`,`core_access`),
  ADD KEY `idx_access` (`core_access`),
  ADD KEY `idx_alias` (`core_alias`(100)),
  ADD KEY `idx_language` (`core_language`),
  ADD KEY `idx_title` (`core_title`(100)),
  ADD KEY `idx_modified_time` (`core_modified_time`),
  ADD KEY `idx_created_time` (`core_created_time`),
  ADD KEY `idx_content_type` (`core_type_alias`(100)),
  ADD KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  ADD KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  ADD KEY `idx_core_created_user_id` (`core_created_user_id`),
  ADD KEY `idx_core_type_id` (`core_type_id`);

--
-- Indexes for table `kuwait_ucm_history`
--
ALTER TABLE `kuwait_ucm_history`
  ADD PRIMARY KEY (`version_id`),
  ADD KEY `idx_ucm_item_id` (`ucm_type_id`,`ucm_item_id`),
  ADD KEY `idx_save_date` (`save_date`);

--
-- Indexes for table `kuwait_updates`
--
ALTER TABLE `kuwait_updates`
  ADD PRIMARY KEY (`update_id`);

--
-- Indexes for table `kuwait_update_sites`
--
ALTER TABLE `kuwait_update_sites`
  ADD PRIMARY KEY (`update_site_id`);

--
-- Indexes for table `kuwait_update_sites_extensions`
--
ALTER TABLE `kuwait_update_sites_extensions`
  ADD PRIMARY KEY (`update_site_id`,`extension_id`);

--
-- Indexes for table `kuwait_usergroups`
--
ALTER TABLE `kuwait_usergroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  ADD KEY `idx_usergroup_title_lookup` (`title`),
  ADD KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  ADD KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE;

--
-- Indexes for table `kuwait_users`
--
ALTER TABLE `kuwait_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_name` (`name`(100)),
  ADD KEY `idx_block` (`block`),
  ADD KEY `username` (`username`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `kuwait_user_keys`
--
ALTER TABLE `kuwait_user_keys`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `series` (`series`),
  ADD UNIQUE KEY `series_2` (`series`),
  ADD UNIQUE KEY `series_3` (`series`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `kuwait_user_notes`
--
ALTER TABLE `kuwait_user_notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`),
  ADD KEY `idx_category_id` (`catid`);

--
-- Indexes for table `kuwait_user_profiles`
--
ALTER TABLE `kuwait_user_profiles`
  ADD UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`);

--
-- Indexes for table `kuwait_user_usergroup_map`
--
ALTER TABLE `kuwait_user_usergroup_map`
  ADD PRIMARY KEY (`user_id`,`group_id`);

--
-- Indexes for table `kuwait_viewlevels`
--
ALTER TABLE `kuwait_viewlevels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_assetgroup_title_lookup` (`title`);

--
-- Indexes for table `kuwait_wishlist`
--
ALTER TABLE `kuwait_wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kuwait_ak_profiles`
--
ALTER TABLE `kuwait_ak_profiles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `kuwait_ak_stats`
--
ALTER TABLE `kuwait_ak_stats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `kuwait_assets`
--
ALTER TABLE `kuwait_assets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=73;
--
-- AUTO_INCREMENT for table `kuwait_banners`
--
ALTER TABLE `kuwait_banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `kuwait_banner_clients`
--
ALTER TABLE `kuwait_banner_clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `kuwait_banner_images`
--
ALTER TABLE `kuwait_banner_images`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `kuwait_categories`
--
ALTER TABLE `kuwait_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `kuwait_comprofiler_fields`
--
ALTER TABLE `kuwait_comprofiler_fields`
  MODIFY `fieldid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT for table `kuwait_comprofiler_field_values`
--
ALTER TABLE `kuwait_comprofiler_field_values`
  MODIFY `fieldvalueid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `kuwait_comprofiler_lists`
--
ALTER TABLE `kuwait_comprofiler_lists`
  MODIFY `listid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `kuwait_comprofiler_plugin`
--
ALTER TABLE `kuwait_comprofiler_plugin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `kuwait_comprofiler_plugin_blogs`
--
ALTER TABLE `kuwait_comprofiler_plugin_blogs`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `kuwait_comprofiler_ratings`
--
ALTER TABLE `kuwait_comprofiler_ratings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `kuwait_comprofiler_tabs`
--
ALTER TABLE `kuwait_comprofiler_tabs`
  MODIFY `tabid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `kuwait_comprofiler_userreports`
--
ALTER TABLE `kuwait_comprofiler_userreports`
  MODIFY `reportid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `kuwait_contact_details`
--
ALTER TABLE `kuwait_contact_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `kuwait_content`
--
ALTER TABLE `kuwait_content`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `kuwait_content_types`
--
ALTER TABLE `kuwait_content_types`
  MODIFY `type_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `kuwait_extensions`
--
ALTER TABLE `kuwait_extensions`
  MODIFY `extension_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10022;
--
-- AUTO_INCREMENT for table `kuwait_fields`
--
ALTER TABLE `kuwait_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `kuwait_fields_groups`
--
ALTER TABLE `kuwait_fields_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `kuwait_finder_filters`
--
ALTER TABLE `kuwait_finder_filters`
  MODIFY `filter_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `kuwait_finder_links`
--
ALTER TABLE `kuwait_finder_links`
  MODIFY `link_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `kuwait_finder_taxonomy`
--
ALTER TABLE `kuwait_finder_taxonomy`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `kuwait_finder_terms`
--
ALTER TABLE `kuwait_finder_terms`
  MODIFY `term_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `kuwait_finder_types`
--
ALTER TABLE `kuwait_finder_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `kuwait_gmapfp`
--
ALTER TABLE `kuwait_gmapfp`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `kuwait_gmapfp_marqueurs`
--
ALTER TABLE `kuwait_gmapfp_marqueurs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT for table `kuwait_gmapfp_personnalisation`
--
ALTER TABLE `kuwait_gmapfp_personnalisation`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `kuwait_gmap_wishlist`
--
ALTER TABLE `kuwait_gmap_wishlist`
  MODIFY `wid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `kuwait_languages`
--
ALTER TABLE `kuwait_languages`
  MODIFY `lang_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `kuwait_menu`
--
ALTER TABLE `kuwait_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;
--
-- AUTO_INCREMENT for table `kuwait_menu_types`
--
ALTER TABLE `kuwait_menu_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `kuwait_messages`
--
ALTER TABLE `kuwait_messages`
  MODIFY `message_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `kuwait_modules`
--
ALTER TABLE `kuwait_modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;
--
-- AUTO_INCREMENT for table `kuwait_newsfeeds`
--
ALTER TABLE `kuwait_newsfeeds`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `kuwait_overrider`
--
ALTER TABLE `kuwait_overrider`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key';
--
-- AUTO_INCREMENT for table `kuwait_postinstall_messages`
--
ALTER TABLE `kuwait_postinstall_messages`
  MODIFY `postinstall_message_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `kuwait_redirect_links`
--
ALTER TABLE `kuwait_redirect_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `kuwait_tags`
--
ALTER TABLE `kuwait_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `kuwait_template_styles`
--
ALTER TABLE `kuwait_template_styles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `kuwait_ucm_content`
--
ALTER TABLE `kuwait_ucm_content`
  MODIFY `core_content_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `kuwait_ucm_history`
--
ALTER TABLE `kuwait_ucm_history`
  MODIFY `version_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `kuwait_updates`
--
ALTER TABLE `kuwait_updates`
  MODIFY `update_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;
--
-- AUTO_INCREMENT for table `kuwait_update_sites`
--
ALTER TABLE `kuwait_update_sites`
  MODIFY `update_site_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `kuwait_usergroups`
--
ALTER TABLE `kuwait_usergroups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `kuwait_users`
--
ALTER TABLE `kuwait_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `kuwait_user_keys`
--
ALTER TABLE `kuwait_user_keys`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `kuwait_user_notes`
--
ALTER TABLE `kuwait_user_notes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `kuwait_viewlevels`
--
ALTER TABLE `kuwait_viewlevels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `kuwait_wishlist`
--
ALTER TABLE `kuwait_wishlist`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
