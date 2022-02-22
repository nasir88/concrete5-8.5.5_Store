-- phpMyAdmin SQL Dump
-- version 4.5.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 22, 2022 at 05:33 AM
-- Server version: 5.7.11
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `store_855`
--

-- --------------------------------------------------------

--
-- Table structure for table `AreaLayoutColumns`
--

CREATE TABLE `AreaLayoutColumns` (
  `arLayoutColumnID` int(10) UNSIGNED NOT NULL,
  `arLayoutID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `arLayoutColumnIndex` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `arID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `arLayoutColumnDisplayID` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `AreaLayoutColumns`
--

INSERT INTO `AreaLayoutColumns` (`arLayoutColumnID`, `arLayoutID`, `arLayoutColumnIndex`, `arID`, `arLayoutColumnDisplayID`) VALUES
(1, 1, 0, 2, 1),
(2, 1, 1, 3, 2),
(3, 1, 2, 4, 3),
(4, 2, 0, 5, 4),
(5, 2, 1, 6, 5),
(6, 3, 0, 7, 6),
(7, 3, 1, 8, 7),
(8, 3, 2, 9, 8),
(9, 4, 0, 11, 9),
(10, 5, 0, 12, 10),
(11, 6, 0, 14, 11),
(12, 7, 0, 15, 12),
(13, 8, 0, 35, 13),
(14, 8, 1, 36, 14),
(15, 9, 0, 39, 15),
(16, 9, 1, 40, 16),
(17, 9, 2, 41, 17),
(18, 10, 0, 42, 18),
(19, 10, 1, 43, 19),
(20, 11, 0, 44, 20),
(21, 11, 1, 45, 21),
(22, 11, 2, 46, 22);

-- --------------------------------------------------------

--
-- Table structure for table `AreaLayoutCustomColumns`
--

CREATE TABLE `AreaLayoutCustomColumns` (
  `arLayoutColumnID` int(10) UNSIGNED NOT NULL,
  `arLayoutColumnWidth` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `AreaLayoutPresets`
--

CREATE TABLE `AreaLayoutPresets` (
  `arLayoutPresetID` int(10) UNSIGNED NOT NULL,
  `arLayoutID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `arLayoutPresetName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `AreaLayouts`
--

CREATE TABLE `AreaLayouts` (
  `arLayoutID` int(10) UNSIGNED NOT NULL,
  `arLayoutSpacing` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `arLayoutIsCustom` tinyint(1) NOT NULL DEFAULT '0',
  `arLayoutIsPreset` tinyint(1) NOT NULL DEFAULT '0',
  `arLayoutMaxColumns` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `arLayoutUsesThemeGridFramework` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `AreaLayouts`
--

INSERT INTO `AreaLayouts` (`arLayoutID`, `arLayoutSpacing`, `arLayoutIsCustom`, `arLayoutIsPreset`, `arLayoutMaxColumns`, `arLayoutUsesThemeGridFramework`) VALUES
(1, 0, 0, 0, 12, 1),
(2, 0, 0, 0, 12, 1),
(3, 0, 0, 0, 12, 1),
(4, 0, 0, 0, 12, 1),
(5, 0, 0, 0, 12, 1),
(6, 0, 0, 0, 12, 1),
(7, 0, 0, 0, 12, 1),
(8, 0, 0, 0, 12, 1),
(9, 0, 0, 0, 12, 1),
(10, 0, 0, 0, 12, 1),
(11, 0, 0, 0, 12, 1);

-- --------------------------------------------------------

--
-- Table structure for table `AreaLayoutsUsingPresets`
--

CREATE TABLE `AreaLayoutsUsingPresets` (
  `arLayoutID` int(10) UNSIGNED NOT NULL,
  `preset` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `AreaLayoutThemeGridColumns`
--

CREATE TABLE `AreaLayoutThemeGridColumns` (
  `arLayoutColumnID` int(10) UNSIGNED NOT NULL,
  `arLayoutColumnSpan` int(10) UNSIGNED DEFAULT '0',
  `arLayoutColumnOffset` int(10) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `AreaLayoutThemeGridColumns`
--

INSERT INTO `AreaLayoutThemeGridColumns` (`arLayoutColumnID`, `arLayoutColumnSpan`, `arLayoutColumnOffset`) VALUES
(1, 4, 0),
(2, 4, 0),
(3, 4, 0),
(4, 4, 0),
(5, 8, 0),
(6, 4, 0),
(7, 4, 0),
(8, 4, 0),
(9, 12, 0),
(10, 12, 0),
(11, 12, 0),
(12, 12, 0),
(13, 8, 0),
(14, 3, 1),
(15, 4, 0),
(16, 4, 0),
(17, 4, 0),
(18, 6, 0),
(19, 6, 0),
(20, 2, 0),
(21, 3, 0),
(22, 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `AreaPermissionAssignments`
--

CREATE TABLE `AreaPermissionAssignments` (
  `cID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pkID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `AreaPermissionAssignments`
--

INSERT INTO `AreaPermissionAssignments` (`cID`, `arHandle`, `pkID`, `paID`) VALUES
(1, 'Content', 21, 88),
(1, 'Content', 22, 93),
(1, 'Content', 25, 93),
(1, 'Content', 26, 93),
(1, 'Content', 28, 93),
(1, 'Content', 27, 360),
(1, 'Content', 29, 360),
(1, 'Content', 24, 364),
(1, 'Content', 23, 365);

-- --------------------------------------------------------

--
-- Table structure for table `AreaPermissionBlockTypeAccessList`
--

CREATE TABLE `AreaPermissionBlockTypeAccessList` (
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `peID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `permission` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `AreaPermissionBlockTypeAccessList`
--

INSERT INTO `AreaPermissionBlockTypeAccessList` (`paID`, `peID`, `permission`) VALUES
(365, 1, 'C'),
(380, 1, 'C'),
(385, 1, 'C'),
(388, 1, 'C');

-- --------------------------------------------------------

--
-- Table structure for table `AreaPermissionBlockTypeAccessListCustom`
--

CREATE TABLE `AreaPermissionBlockTypeAccessListCustom` (
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `peID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `btID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `AreaPermissionBlockTypeAccessListCustom`
--

INSERT INTO `AreaPermissionBlockTypeAccessListCustom` (`paID`, `peID`, `btID`) VALUES
(365, 1, 1),
(365, 1, 25),
(365, 1, 26),
(365, 1, 27),
(365, 1, 29),
(365, 1, 32),
(365, 1, 34),
(365, 1, 49),
(380, 1, 1),
(380, 1, 25),
(380, 1, 26),
(380, 1, 27),
(380, 1, 29),
(380, 1, 32),
(380, 1, 34),
(380, 1, 49),
(385, 1, 1),
(385, 1, 25),
(385, 1, 26),
(385, 1, 27),
(385, 1, 29),
(385, 1, 32),
(385, 1, 34),
(385, 1, 49),
(388, 1, 1),
(388, 1, 25),
(388, 1, 26),
(388, 1, 27),
(388, 1, 29),
(388, 1, 32),
(388, 1, 34),
(388, 1, 49);

-- --------------------------------------------------------

--
-- Table structure for table `Areas`
--

CREATE TABLE `Areas` (
  `arID` int(10) UNSIGNED NOT NULL,
  `cID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `arOverrideCollectionPermissions` tinyint(1) NOT NULL DEFAULT '0',
  `arInheritPermissionsFromAreaOnCID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `arIsGlobal` tinyint(1) NOT NULL DEFAULT '0',
  `arParentID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Areas`
--

INSERT INTO `Areas` (`arID`, `cID`, `arHandle`, `arOverrideCollectionPermissions`, `arInheritPermissionsFromAreaOnCID`, `arIsGlobal`, `arParentID`) VALUES
(1, 169, 'Main', 0, 0, 0, 0),
(2, 169, 'Main : 1', 0, 0, 0, 1),
(3, 169, 'Main : 2', 0, 0, 0, 1),
(4, 169, 'Main : 3', 0, 0, 0, 1),
(5, 169, 'Main : 4', 0, 0, 0, 1),
(6, 169, 'Main : 5', 0, 0, 0, 1),
(7, 169, 'Main : 6', 0, 0, 0, 1),
(8, 169, 'Main : 7', 0, 0, 0, 1),
(9, 169, 'Main : 8', 0, 0, 0, 1),
(10, 170, 'Main', 0, 0, 0, 0),
(11, 170, 'Main : 9', 0, 0, 0, 10),
(12, 170, 'Main : 10', 0, 0, 0, 10),
(13, 183, 'Main', 0, 0, 0, 0),
(14, 183, 'Main : 11', 0, 0, 0, 13),
(15, 183, 'Main : 12', 0, 0, 0, 13),
(16, 184, 'Main', 0, 0, 0, 0),
(17, 185, 'Main', 0, 0, 0, 0),
(18, 186, 'Main', 0, 0, 0, 0),
(19, 187, 'Main', 0, 0, 0, 0),
(20, 188, 'Main', 0, 0, 0, 0),
(21, 189, 'Main', 0, 0, 0, 0),
(22, 190, 'Main', 0, 0, 0, 0),
(23, 191, 'Main', 0, 0, 0, 0),
(24, 209, 'Main', 0, 0, 0, 0),
(25, 209, 'Sidebar', 0, 0, 0, 0),
(26, 209, 'Page Footer', 0, 0, 0, 0),
(27, 216, 'Page Header', 0, 0, 0, 0),
(28, 216, 'Sidebar', 0, 0, 0, 0),
(29, 216, 'Main', 0, 0, 0, 0),
(30, 202, 'Page Header', 0, 0, 0, 0),
(31, 202, 'Sidebar', 0, 0, 0, 0),
(32, 202, 'Main', 0, 0, 0, 0),
(33, 202, 'Page Footer', 0, 0, 0, 0),
(34, 197, 'Main', 0, 0, 0, 0),
(35, 197, 'Main : 13', 0, 0, 0, 34),
(36, 197, 'Main : 14', 0, 0, 0, 34),
(37, 194, 'Main', 0, 0, 0, 0),
(38, 1, 'Main', 0, 0, 0, 0),
(39, 1, 'Main : 15', 0, 0, 0, 38),
(40, 1, 'Main : 16', 0, 0, 0, 38),
(41, 1, 'Main : 17', 0, 0, 0, 38),
(42, 1, 'Main : 18', 0, 0, 0, 38),
(43, 1, 'Main : 19', 0, 0, 0, 38),
(44, 1, 'Main : 20', 0, 0, 0, 38),
(45, 1, 'Main : 21', 0, 0, 0, 38),
(46, 1, 'Main : 22', 0, 0, 0, 38),
(47, 1, 'Page Footer', 0, 0, 0, 0),
(131, 1, 'Header Site Title', 0, 0, 1, 0),
(132, 1, 'Header Navigation', 0, 0, 1, 0),
(133, 1, 'Header Search', 0, 0, 1, 0),
(134, 1, 'Footer Site Title', 0, 0, 1, 0),
(135, 1, 'Footer Social', 0, 0, 1, 0),
(136, 1, 'Footer Legal', 0, 0, 1, 0),
(137, 1, 'Footer Navigation', 0, 0, 1, 0),
(138, 1, 'Footer Contact', 0, 0, 1, 0),
(139, 174, 'Disclaimer', 0, 0, 0, 0),
(140, 225, 'Main', 0, 0, 0, 0),
(142, 226, 'Main', 0, 0, 0, 0),
(144, 227, 'Main', 0, 0, 0, 0),
(157, 180, 'Header Site Title', 0, 0, 1, 0),
(158, 180, 'Header Navigation', 0, 0, 1, 0),
(159, 180, 'Header Search', 0, 0, 1, 0),
(160, 180, 'Footer Site Title', 0, 0, 1, 0),
(161, 180, 'Footer Social', 0, 0, 1, 0),
(162, 180, 'Footer Legal', 0, 0, 1, 0),
(163, 180, 'Footer Navigation', 0, 0, 1, 0),
(164, 180, 'Footer Contact', 0, 0, 1, 0),
(165, 1, '1', 0, 0, 0, 0),
(166, 1, 'Content', 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `atAddress`
--

CREATE TABLE `atAddress` (
  `address1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state_province` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `atAddressSettings`
--

CREATE TABLE `atAddressSettings` (
  `akDefaultCountry` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `akHasCustomCountries` tinyint(1) NOT NULL,
  `customCountries` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)',
  `akGeolocateCountry` tinyint(1) NOT NULL,
  `akID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `atBoolean`
--

CREATE TABLE `atBoolean` (
  `value` tinyint(1) NOT NULL,
  `avID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `atBoolean`
--

INSERT INTO `atBoolean` (`value`, `avID`) VALUES
(1, 9),
(1, 17),
(1, 19),
(1, 25),
(1, 26),
(1, 32),
(1, 33),
(1, 34),
(1, 35),
(1, 36),
(1, 37),
(1, 38),
(1, 39),
(1, 43),
(1, 44),
(1, 45),
(1, 46),
(1, 49),
(1, 50),
(1, 57),
(1, 68),
(1, 71),
(1, 72),
(1, 74),
(1, 75),
(1, 76),
(1, 77),
(1, 78),
(1, 79),
(1, 80),
(1, 81),
(1, 82),
(1, 83),
(1, 93),
(1, 104),
(1, 105),
(1, 130),
(1, 140),
(1, 141),
(1, 143),
(0, 144),
(1, 150),
(1, 151),
(1, 184),
(1, 256),
(0, 257),
(1, 258),
(0, 259),
(0, 260),
(0, 262),
(0, 264),
(0, 265);

-- --------------------------------------------------------

--
-- Table structure for table `atBooleanSettings`
--

CREATE TABLE `atBooleanSettings` (
  `akCheckedByDefault` tinyint(1) NOT NULL,
  `checkboxLabel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `akID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `atBooleanSettings`
--

INSERT INTO `atBooleanSettings` (`akCheckedByDefault`, `checkboxLabel`, `akID`) VALUES
(0, NULL, 5),
(0, 'Exclude Page from Navigation', 7),
(0, 'Exclude Page from Page List Blocks', 8),
(0, 'Feature this Page', 11),
(0, NULL, 12),
(0, NULL, 13),
(1, NULL, 14),
(1, NULL, 15),
(1, NULL, 22);

-- --------------------------------------------------------

--
-- Table structure for table `atDateTime`
--

CREATE TABLE `atDateTime` (
  `value` datetime DEFAULT NULL,
  `avID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `atDateTimeSettings`
--

CREATE TABLE `atDateTimeSettings` (
  `akUseNowIfEmpty` tinyint(1) NOT NULL DEFAULT '0',
  `akDateDisplayMode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `akTextCustomFormat` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Custom format for text inputs',
  `akTimeResolution` int(10) UNSIGNED NOT NULL DEFAULT '60' COMMENT 'Time resolution (in seconds)',
  `akID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `atDefault`
--

CREATE TABLE `atDefault` (
  `value` longtext COLLATE utf8mb4_unicode_ci,
  `avID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `atDefault`
--

INSERT INTO `atDefault` (`value`, `avID`) VALUES
('fa fa-th-large', 1),
('pages, add page, delete page, copy, move, alias', 2),
('pages, add page, delete page, copy, move, alias', 3),
('pages, add page, delete page, copy, move, alias, bulk', 4),
('find page, search page, search, find, pages, sitemap', 5),
('add file, delete file, copy, move, alias, resize, crop, rename, images, title, attribute', 6),
('file, file attributes, title, attribute, description, rename', 7),
('files, category, categories', 8),
('new file set', 10),
('users, groups, people, find, delete user, remove user, change password, password', 11),
('find, search, people, delete user, remove user, change password, password', 12),
('user, group, people, permissions, expire, badges', 13),
('user, group, people, messages', 14),
('user attributes, user data, gather data, registration data', 15),
('new user, create', 16),
('new user group, new group, group, create', 18),
('group set', 20),
('community, points, karma', 21),
('action, community actions', 22),
('forms, log, error, email, mysql, exception, survey', 23),
('forms, questions, response, data', 24),
('questions, quiz, response', 27),
('forms, log, error, email, mysql, exception, survey, history', 28),
('changes, csv, report', 29),
('new theme, theme, active theme, change theme, template, css', 30),
('page types', 31),
('page attributes, custom', 40),
('single, page, custom, application', 41),
('atom, rss, feed, syndication', 42),
('icon-bullhorn', 47),
('stacks, global areas, reusable content, scrapbook, copy, paste, paste block, copy block, site name, logo', 48),
('edit stacks, view stacks, all stacks', 51),
('block, refresh, custom', 52),
('add-on, addon, add on, package, app, ecommerce, discussions, forums, themes, templates, blocks', 53),
('add-on, addon, ecommerce, install, discussions, forums, themes, templates, blocks', 54),
('update, upgrade', 55),
('concrete5.org, my account, marketplace', 56),
('buy theme, new theme, marketplace, template', 58),
('buy addon, buy add on, buy add-on, purchase addon, purchase add on, purchase add-on, find addon, new addon, marketplace', 59),
('dashboard, configuration', 60),
('website name, title', 61),
('accessibility, easy mode', 62),
('sharing, facebook, twitter', 63),
('logo, favicon, iphone, icon, bookmark', 64),
('tinymce, content block, fonts, editor, content, overlay', 65),
('translate, translation, internationalization, multilingual', 66),
('languages, update, gettext, translation, translate', 67),
('timezone, profile, locale', 69),
('site attributes', 70),
('checkin, check-in, check, force', 73),
('multilingual, localization, internationalization, i18n', 84),
('vanity, pretty url, redirection, hostname, canonical, seo, pageview, view', 85),
('bulk, seo, change keywords, engine, optimization, search', 86),
('traffic, statistics, google analytics, quant, pageviews, hits', 87),
('pretty, slug', 88),
('configure search, site search, search option', 89),
('security, files, media, extension, manager, upload', 90),
('file options, file manager, upload, modify', 91),
('images, picture, responsive, retina', 92),
('thumbnail, format, png, jpg, jpeg, quality, compression, gd, imagick, imagemagick, transparency', 94),
('uploading, upload, images, image, resizing, manager, exif, rotation, rotate, quality, compression, png, jpg, jpeg', 95),
('security, alternate storage, hide files', 96),
('files, export, csv, bom, encoding', 97),
('cache option, change cache, override, turn on cache, turn off cache, no cache, page cache, caching', 98),
('cache option, turn off cache, no cache, page cache, caching', 99),
('index search, reindex search, build sitemap, sitemap.xml, clear old versions, page versions, remove old', 100),
('editors, hide site, offline, private, public, access', 101),
('security, actions, administrator, admin, package, marketplace, search', 102),
('security, lock ip, lock out, block ip, address, restrict, access', 103),
('security, registration', 106),
('antispam, block spam, security', 107),
('lock site, under construction, hide, hidden', 108),
('trusted, proxy, proxies, ip, header, cloudflare', 109),
('signup, new user, community, public registration, public, registration', 110),
('profile, login, redirect, specific, dashboard, administrators', 111),
('member profile, member page, community, forums, social, avatar', 112),
('auth, authentication, types, oauth, facebook, login, registration', 113),
('global, password, reset, change password, force, sign out', 114),
('login, logout, user, agent, ip, change, security, session, invalidation, invalid', 115),
('password, requirements, code, key, login, registration, security, nist', 116),
('smtp, mail settings', 117),
('email server, mail settings, mail configuration, external, internal', 118),
('test smtp, test mail', 119),
('email server, mail settings, mail configuration, private message, message system, import, email, message', 120),
('mail settings, mail configuration, email, sender', 121),
('conversations', 122),
('conversations', 123),
('conversations ratings, ratings, community, community points', 124),
('conversations bad words, banned words, banned, bad words, bad, words, list', 125),
('attribute configuration', 126),
('attributes, types', 127),
('attributes, sets', 128),
('topics, tags, taxonomy', 129),
('overrides, system info, debug, support, help', 131),
('errors, exceptions, develop, support, help', 132),
('email, logging, logs, smtp, pop, errors, mysql, log', 133),
('network, proxy server', 134),
('database, entities, doctrine, orm', 135),
('database, character set, charset, collation, utf8', 136),
('geolocation, ip, address, country, nation, place, locate', 137),
('upgrade, new version, update', 138),
('API, programming, public, app', 139),
('fa fa-th', 145),
('fa fa-trash-o', 146),
('fa fa-briefcase', 147),
('fa fa-edit', 148),
('new user, create', 261),
('new user group, new group, group, create', 263),
('website name, title', 268);

-- --------------------------------------------------------

--
-- Table structure for table `atEmptySettings`
--

CREATE TABLE `atEmptySettings` (
  `akID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `atEmptySettings`
--

INSERT INTO `atEmptySettings` (`akID`) VALUES
(4),
(16),
(17),
(18),
(19),
(35);

-- --------------------------------------------------------

--
-- Table structure for table `atExpress`
--

CREATE TABLE `atExpress` (
  `avID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `atExpressSelectedEntries`
--

CREATE TABLE `atExpressSelectedEntries` (
  `avID` int(10) UNSIGNED NOT NULL,
  `exEntryID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `atExpressSettings`
--

CREATE TABLE `atExpressSettings` (
  `exEntityID` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT AS `(DC2Type:guid)`,
  `akID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `atFile`
--

CREATE TABLE `atFile` (
  `fID` int(10) UNSIGNED DEFAULT NULL,
  `avID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `atFileSettings`
--

CREATE TABLE `atFileSettings` (
  `akFileManagerMode` int(11) NOT NULL,
  `akID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `atFileSettings`
--

INSERT INTO `atFileSettings` (`akFileManagerMode`, `akID`) VALUES
(0, 23);

-- --------------------------------------------------------

--
-- Table structure for table `atNumber`
--

CREATE TABLE `atNumber` (
  `value` decimal(14,4) DEFAULT NULL,
  `avID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `atNumber`
--

INSERT INTO `atNumber` (`value`, `avID`) VALUES
('2.0000', 142),
('1.0000', 149),
('1600.0000', 152),
('1066.0000', 153),
('200.0000', 154),
('200.0000', 155),
('500.0000', 156),
('500.0000', 157),
('460.0000', 158),
('460.0000', 159),
('592.0000', 160),
('397.0000', 161),
('250.0000', 162),
('252.0000', 163),
('1600.0000', 164),
('1067.0000', 165),
('200.0000', 166),
('200.0000', 167),
('1499.0000', 168),
('1067.0000', 169),
('1100.0000', 170),
('263.0000', 171),
('1600.0000', 172),
('1067.0000', 173),
('1600.0000', 174),
('1067.0000', 175),
('1100.0000', 176),
('368.0000', 177),
('1100.0000', 178),
('368.0000', 179),
('1600.0000', 180),
('1067.0000', 181),
('1600.0000', 182),
('953.0000', 183),
('1200.0000', 266),
('789.0000', 267);

-- --------------------------------------------------------

--
-- Table structure for table `atSelect`
--

CREATE TABLE `atSelect` (
  `avID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `atSelectedSocialLinks`
--

CREATE TABLE `atSelectedSocialLinks` (
  `avsID` int(10) UNSIGNED NOT NULL,
  `service` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `serviceInfo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `atSelectedTopics`
--

CREATE TABLE `atSelectedTopics` (
  `avTreeTopicNodeID` int(10) UNSIGNED NOT NULL,
  `treeNodeID` int(10) UNSIGNED NOT NULL,
  `avID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `atSelectOptionLists`
--

CREATE TABLE `atSelectOptionLists` (
  `avSelectOptionListID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `atSelectOptionLists`
--

INSERT INTO `atSelectOptionLists` (`avSelectOptionListID`) VALUES
(1),
(2),
(3),
(4);

-- --------------------------------------------------------

--
-- Table structure for table `atSelectOptions`
--

CREATE TABLE `atSelectOptions` (
  `avSelectOptionID` int(10) UNSIGNED NOT NULL,
  `isEndUserAdded` tinyint(1) NOT NULL,
  `isDeleted` tinyint(1) NOT NULL DEFAULT '0',
  `displayOrder` int(11) NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avSelectOptionListID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `atSelectOptions`
--

INSERT INTO `atSelectOptions` (`avSelectOptionID`, `isEndUserAdded`, `isDeleted`, `displayOrder`, `value`, `avSelectOptionListID`) VALUES
(1, 1, 0, 0, 'Finance', 2),
(2, 1, 0, 1, 'Marketing and Sales', 2),
(3, 1, 0, 2, 'Human Resources', 2),
(4, 1, 0, 3, 'Technical and Operations', 2),
(5, 1, 0, 4, 'Management', 2),
(6, 1, 0, 0, 'Architecture', 3),
(7, 1, 0, 1, 'Multimedia', 3),
(8, 1, 0, 2, 'Design', 3),
(9, 1, 0, 3, 'Production', 3),
(10, 1, 0, 4, 'Development', 3),
(11, 1, 0, 5, 'Quality Assurance', 3),
(12, 1, 0, 0, 'HTML', 4),
(13, 1, 0, 1, 'JavaScript', 4),
(14, 1, 0, 2, 'PHP', 4),
(15, 1, 0, 3, 'Database', 4),
(16, 1, 0, 4, 'CSS', 4),
(17, 1, 0, 5, 'Ruby', 4),
(18, 1, 0, 6, 'Java', 4),
(19, 1, 0, 7, 'iOS/Android/App Development', 4),
(20, 1, 0, 8, 'Photoshop', 4),
(21, 1, 0, 9, 'Python', 4),
(22, 1, 0, 10, 'Writing', 4);

-- --------------------------------------------------------

--
-- Table structure for table `atSelectOptionsSelected`
--

CREATE TABLE `atSelectOptionsSelected` (
  `avID` int(10) UNSIGNED NOT NULL,
  `avSelectOptionID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `atSelectSettings`
--

CREATE TABLE `atSelectSettings` (
  `akSelectAllowMultipleValues` tinyint(1) NOT NULL,
  `akSelectAllowOtherValues` tinyint(1) NOT NULL,
  `akHideNoneOption` tinyint(1) NOT NULL,
  `akSelectOptionDisplayOrder` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `akDisplayMultipleValuesOnSelect` tinyint(1) NOT NULL,
  `avSelectOptionListID` int(10) UNSIGNED DEFAULT NULL,
  `akID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `atSelectSettings`
--

INSERT INTO `atSelectSettings` (`akSelectAllowMultipleValues`, `akSelectAllowOtherValues`, `akHideNoneOption`, `akSelectOptionDisplayOrder`, `akDisplayMultipleValuesOnSelect`, `avSelectOptionListID`, `akID`) VALUES
(1, 1, 0, 'display_asc', 0, 1, 10),
(0, 0, 0, 'display_asc', 0, 2, 20),
(1, 0, 0, 'display_asc', 0, 3, 28),
(1, 0, 0, 'display_asc', 0, 4, 29);

-- --------------------------------------------------------

--
-- Table structure for table `atSite`
--

CREATE TABLE `atSite` (
  `siteID` int(10) UNSIGNED DEFAULT NULL,
  `avID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `atSocialLinks`
--

CREATE TABLE `atSocialLinks` (
  `avID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `atTextareaSettings`
--

CREATE TABLE `atTextareaSettings` (
  `akTextareaDisplayMode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `akID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `atTextareaSettings`
--

INSERT INTO `atTextareaSettings` (`akTextareaDisplayMode`, `akID`) VALUES
('', 2),
('', 3),
('', 6),
('', 9),
('text', 21);

-- --------------------------------------------------------

--
-- Table structure for table `atTextSettings`
--

CREATE TABLE `atTextSettings` (
  `akTextPlaceholder` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `akID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `atTextSettings`
--

INSERT INTO `atTextSettings` (`akTextPlaceholder`, `akID`) VALUES
('', 1),
('', 27);

-- --------------------------------------------------------

--
-- Table structure for table `atTopic`
--

CREATE TABLE `atTopic` (
  `avID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `atTopicSettings`
--

CREATE TABLE `atTopicSettings` (
  `akTopicParentNodeID` int(11) NOT NULL,
  `akTopicTreeID` int(11) NOT NULL,
  `akTopicAllowMultipleValues` tinyint(1) NOT NULL DEFAULT '1',
  `akID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `atTopicSettings`
--

INSERT INTO `atTopicSettings` (`akTopicParentNodeID`, `akTopicTreeID`, `akTopicAllowMultipleValues`, `akID`) VALUES
(24, 4, 0, 24),
(33, 5, 0, 25),
(38, 6, 0, 26);

-- --------------------------------------------------------

--
-- Table structure for table `AttributeKeyCategories`
--

CREATE TABLE `AttributeKeyCategories` (
  `akCategoryID` int(10) UNSIGNED NOT NULL,
  `akCategoryHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `akCategoryAllowSets` int(11) NOT NULL,
  `pkgID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `AttributeKeyCategories`
--

INSERT INTO `AttributeKeyCategories` (`akCategoryID`, `akCategoryHandle`, `akCategoryAllowSets`, `pkgID`) VALUES
(1, 'collection', 1, NULL),
(2, 'user', 1, NULL),
(3, 'file', 1, NULL),
(4, 'site', 1, NULL),
(5, 'event', 1, NULL),
(6, 'site_type', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `AttributeKeys`
--

CREATE TABLE `AttributeKeys` (
  `akID` int(10) UNSIGNED NOT NULL,
  `akHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `akName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `akIsSearchable` tinyint(1) NOT NULL,
  `akIsInternal` tinyint(1) NOT NULL,
  `akIsSearchableIndexed` tinyint(1) NOT NULL,
  `atID` int(10) UNSIGNED DEFAULT NULL,
  `akCategoryID` int(10) UNSIGNED DEFAULT NULL,
  `pkgID` int(10) UNSIGNED DEFAULT NULL,
  `akCategory` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `AttributeKeys`
--

INSERT INTO `AttributeKeys` (`akID`, `akHandle`, `akName`, `akIsSearchable`, `akIsInternal`, `akIsSearchableIndexed`, `atID`, `akCategoryID`, `pkgID`, `akCategory`) VALUES
(1, 'meta_title', 'Meta Title', 1, 0, 0, 1, 1, NULL, 'pagekey'),
(2, 'meta_description', 'Meta Description', 1, 0, 0, 2, 1, NULL, 'pagekey'),
(3, 'meta_keywords', 'Meta Keywords', 1, 0, 0, 2, 1, NULL, 'pagekey'),
(4, 'desktop_priority', 'Desktop Priority', 1, 1, 0, 6, 1, NULL, 'pagekey'),
(5, 'is_desktop', 'Is Desktop', 1, 1, 0, 3, 1, NULL, 'pagekey'),
(6, 'icon_dashboard', 'Dashboard Icon', 1, 1, 0, 2, 1, NULL, 'pagekey'),
(7, 'exclude_nav', 'Exclude From Nav', 1, 0, 0, 3, 1, NULL, 'pagekey'),
(8, 'exclude_page_list', 'Exclude From Page List', 1, 0, 0, 3, 1, NULL, 'pagekey'),
(9, 'header_extra_content', 'Header Extra Content', 1, 0, 0, 2, 1, NULL, 'pagekey'),
(10, 'tags', 'Tags', 1, 0, 1, 7, 1, NULL, 'pagekey'),
(11, 'is_featured', 'Is Featured', 1, 0, 0, 3, 1, NULL, 'pagekey'),
(12, 'exclude_search_index', 'Exclude From Search Index', 1, 0, 0, 3, 1, NULL, 'pagekey'),
(13, 'exclude_sitemapxml', 'Exclude From sitemap.xml', 1, 0, 0, 3, 1, NULL, 'pagekey'),
(14, 'profile_private_messages_enabled', 'I would like to receive private messages.', 1, 0, 0, 3, 2, NULL, 'userkey'),
(15, 'profile_private_messages_notification_enabled', 'Send me email notifications when I receive a private message.', 1, 0, 0, 3, 2, NULL, 'userkey'),
(16, 'width', 'Width', 1, 0, 0, 6, 3, NULL, 'filekey'),
(17, 'height', 'Height', 1, 0, 0, 6, 3, NULL, 'filekey'),
(18, 'account_profile_links', 'Personal Links', 1, 0, 0, 14, 2, NULL, 'userkey'),
(19, 'duration', 'Duration', 1, 0, 0, 6, 3, NULL, 'filekey'),
(20, 'job_posting_department', 'Department', 1, 0, 1, 7, 1, NULL, 'pagekey'),
(21, 'job_location', 'Location', 1, 0, 1, 2, 1, NULL, 'pagekey'),
(22, 'exclude_subpages_from_nav', 'Exclude Sub-Pages From Nav', 1, 0, 1, 3, 1, NULL, 'pagekey'),
(23, 'thumbnail', 'Thumbnail', 1, 0, 1, 5, 1, NULL, 'pagekey'),
(24, 'blog_entry_topics', 'Blog Entry Topics', 1, 0, 1, 13, 1, NULL, 'pagekey'),
(25, 'project_topics', 'Project Topics', 1, 0, 1, 13, 1, NULL, 'pagekey'),
(26, 'event_categories', 'Event Categories', 1, 0, 1, 13, 5, NULL, 'eventkey'),
(27, 'project_client', 'Client', 1, 0, 1, 1, 1, NULL, 'pagekey'),
(28, 'project_tasks', 'Task', 1, 0, 1, 7, 1, NULL, 'pagekey'),
(29, 'project_skills', 'Skills', 1, 0, 1, 7, 1, NULL, 'pagekey'),
(35, 'page_selector_redirect', 'Page Redirect', 1, 0, 0, 18, 1, 3, 'pagekey');

-- --------------------------------------------------------

--
-- Table structure for table `AttributeSetKeys`
--

CREATE TABLE `AttributeSetKeys` (
  `asDisplayOrder` int(10) UNSIGNED NOT NULL,
  `akID` int(10) UNSIGNED NOT NULL,
  `asID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `AttributeSetKeys`
--

INSERT INTO `AttributeSetKeys` (`asDisplayOrder`, `akID`, `asID`) VALUES
(0, 1, 1),
(1, 2, 1),
(1, 7, 2),
(2, 8, 2),
(2, 9, 1),
(4, 10, 2),
(0, 11, 2),
(3, 12, 2),
(3, 13, 1),
(0, 20, 3),
(1, 21, 3),
(6, 22, 2),
(5, 23, 2),
(0, 24, 4),
(0, 25, 5),
(0, 26, 6),
(1, 27, 5),
(2, 28, 5),
(3, 29, 5);

-- --------------------------------------------------------

--
-- Table structure for table `AttributeSets`
--

CREATE TABLE `AttributeSets` (
  `asID` int(10) UNSIGNED NOT NULL,
  `asHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `asName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `asDisplayOrder` int(10) UNSIGNED NOT NULL,
  `asIsLocked` tinyint(1) NOT NULL,
  `akCategoryID` int(10) UNSIGNED DEFAULT NULL,
  `pkgID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `AttributeSets`
--

INSERT INTO `AttributeSets` (`asID`, `asHandle`, `asName`, `asDisplayOrder`, `asIsLocked`, `akCategoryID`, `pkgID`) VALUES
(1, 'seo', 'SEO', 0, 0, 1, NULL),
(2, 'navigation', 'Navigation and Indexing', 0, 0, 1, NULL),
(3, 'job_board', 'Jobs', 0, 0, 1, NULL),
(4, 'blog', 'Blog', 0, 0, 1, NULL),
(5, 'portfolio', 'Portfolio', 0, 0, 1, NULL),
(6, 'event_categories', 'Categories', 0, 0, 5, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `AttributeTypeCategories`
--

CREATE TABLE `AttributeTypeCategories` (
  `akCategoryID` int(10) UNSIGNED NOT NULL,
  `atID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `AttributeTypeCategories`
--

INSERT INTO `AttributeTypeCategories` (`akCategoryID`, `atID`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 13),
(1, 15),
(1, 16),
(1, 17),
(1, 18),
(1, 19),
(1, 20),
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(2, 6),
(2, 7),
(2, 8),
(2, 9),
(2, 10),
(2, 11),
(2, 13),
(2, 14),
(2, 17),
(2, 19),
(2, 20),
(3, 1),
(3, 2),
(3, 3),
(3, 4),
(3, 6),
(3, 7),
(3, 9),
(3, 10),
(3, 11),
(3, 12),
(3, 13),
(3, 17),
(3, 19),
(3, 20),
(4, 1),
(4, 2),
(4, 3),
(4, 4),
(4, 5),
(4, 6),
(4, 7),
(4, 8),
(4, 9),
(4, 10),
(4, 11),
(4, 13),
(4, 15),
(4, 17),
(4, 18),
(4, 19),
(4, 21),
(5, 1),
(5, 2),
(5, 3),
(5, 4),
(5, 5),
(5, 6),
(5, 7),
(5, 8),
(5, 9),
(5, 10),
(5, 11),
(5, 13),
(5, 19),
(6, 1),
(6, 2),
(6, 3),
(6, 4),
(6, 5),
(6, 6),
(6, 7),
(6, 8),
(6, 9),
(6, 10),
(6, 11),
(6, 13),
(6, 15),
(6, 17),
(6, 18),
(6, 19),
(6, 21);

-- --------------------------------------------------------

--
-- Table structure for table `AttributeTypes`
--

CREATE TABLE `AttributeTypes` (
  `atID` int(10) UNSIGNED NOT NULL,
  `atHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `atName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pkgID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `AttributeTypes`
--

INSERT INTO `AttributeTypes` (`atID`, `atHandle`, `atName`, `pkgID`) VALUES
(1, 'text', 'Text', NULL),
(2, 'textarea', 'Text Area', NULL),
(3, 'boolean', 'Checkbox', NULL),
(4, 'date_time', 'Date/Time', NULL),
(5, 'image_file', 'Image/File', NULL),
(6, 'number', 'Number', NULL),
(7, 'select', 'Option List', NULL),
(8, 'address', 'Address', NULL),
(9, 'telephone', 'Phone Number', NULL),
(10, 'url', 'URL', NULL),
(11, 'email', 'Email', NULL),
(12, 'rating', 'Rating', NULL),
(13, 'topics', 'Topics', NULL),
(14, 'social_links', 'Social Links', NULL),
(15, 'calendar', 'Calendar', NULL),
(16, 'calendar_event', 'Calendar Event', NULL),
(17, 'express', 'Express Entity', NULL),
(18, 'page_selector', 'Page Selector', NULL),
(19, 'user_selector', 'User Selector', NULL),
(20, 'site', 'Site', NULL),
(21, 'user_group', 'User Group', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `AttributeValues`
--

CREATE TABLE `AttributeValues` (
  `avID` int(10) UNSIGNED NOT NULL,
  `akID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `AttributeValues`
--

INSERT INTO `AttributeValues` (`avID`, `akID`) VALUES
(2, 3),
(3, 3),
(4, 3),
(5, 3),
(6, 3),
(7, 3),
(8, 3),
(10, 3),
(11, 3),
(12, 3),
(13, 3),
(14, 3),
(15, 3),
(16, 3),
(18, 3),
(20, 3),
(21, 3),
(22, 3),
(23, 3),
(24, 3),
(27, 3),
(28, 3),
(29, 3),
(30, 3),
(31, 3),
(40, 3),
(41, 3),
(42, 3),
(48, 3),
(51, 3),
(52, 3),
(53, 3),
(54, 3),
(55, 3),
(56, 3),
(58, 3),
(59, 3),
(60, 3),
(61, 3),
(62, 3),
(63, 3),
(64, 3),
(65, 3),
(66, 3),
(67, 3),
(69, 3),
(70, 3),
(73, 3),
(84, 3),
(85, 3),
(86, 3),
(87, 3),
(88, 3),
(89, 3),
(90, 3),
(91, 3),
(92, 3),
(94, 3),
(95, 3),
(96, 3),
(97, 3),
(98, 3),
(99, 3),
(100, 3),
(101, 3),
(102, 3),
(103, 3),
(106, 3),
(107, 3),
(108, 3),
(109, 3),
(110, 3),
(111, 3),
(112, 3),
(113, 3),
(114, 3),
(115, 3),
(116, 3),
(117, 3),
(118, 3),
(119, 3),
(120, 3),
(121, 3),
(122, 3),
(123, 3),
(124, 3),
(125, 3),
(126, 3),
(127, 3),
(128, 3),
(129, 3),
(131, 3),
(132, 3),
(133, 3),
(134, 3),
(135, 3),
(136, 3),
(137, 3),
(138, 3),
(139, 3),
(261, 3),
(263, 3),
(268, 3),
(142, 4),
(149, 4),
(143, 5),
(150, 5),
(1, 6),
(47, 6),
(145, 6),
(146, 6),
(147, 6),
(148, 6),
(9, 7),
(17, 7),
(19, 7),
(25, 7),
(32, 7),
(33, 7),
(34, 7),
(35, 7),
(36, 7),
(37, 7),
(38, 7),
(39, 7),
(43, 7),
(45, 7),
(49, 7),
(57, 7),
(68, 7),
(71, 7),
(74, 7),
(76, 7),
(78, 7),
(80, 7),
(82, 7),
(93, 7),
(104, 7),
(105, 7),
(140, 7),
(144, 7),
(151, 7),
(184, 7),
(256, 7),
(257, 7),
(258, 7),
(262, 7),
(264, 7),
(265, 7),
(26, 12),
(44, 12),
(46, 12),
(50, 12),
(72, 12),
(75, 12),
(77, 12),
(79, 12),
(81, 12),
(83, 12),
(130, 12),
(141, 12),
(259, 14),
(260, 15),
(152, 16),
(154, 16),
(156, 16),
(158, 16),
(160, 16),
(162, 16),
(164, 16),
(166, 16),
(168, 16),
(170, 16),
(172, 16),
(174, 16),
(176, 16),
(178, 16),
(180, 16),
(182, 16),
(266, 16),
(153, 17),
(155, 17),
(157, 17),
(159, 17),
(161, 17),
(163, 17),
(165, 17),
(167, 17),
(169, 17),
(171, 17),
(173, 17),
(175, 17),
(177, 17),
(179, 17),
(181, 17),
(183, 17),
(267, 17);

-- --------------------------------------------------------

--
-- Table structure for table `atUserGroupSettings`
--

CREATE TABLE `atUserGroupSettings` (
  `akDisplayGroupsBeneathSpecificParent` tinyint(1) NOT NULL,
  `akDisplayGroupsBeneathParentID` int(11) NOT NULL,
  `akGroupSelectionMethod` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `akID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `AuthenticationTypes`
--

CREATE TABLE `AuthenticationTypes` (
  `authTypeID` int(10) UNSIGNED NOT NULL,
  `authTypeHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `authTypeName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `authTypeIsEnabled` tinyint(1) NOT NULL,
  `authTypeDisplayOrder` int(10) UNSIGNED DEFAULT NULL,
  `pkgID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `AuthenticationTypes`
--

INSERT INTO `AuthenticationTypes` (`authTypeID`, `authTypeHandle`, `authTypeName`, `authTypeIsEnabled`, `authTypeDisplayOrder`, `pkgID`) VALUES
(1, 'concrete', 'Standard', 1, 0, 0),
(2, 'community', 'concrete5.org', 0, 0, 0),
(3, 'facebook', 'Facebook', 0, 0, 0),
(4, 'twitter', 'Twitter', 0, 0, 0),
(5, 'google', 'Google', 0, 0, 0),
(6, 'external_concrete5', 'External concrete5', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `authTypeConcreteCookieMap`
--

CREATE TABLE `authTypeConcreteCookieMap` (
  `ID` int(10) UNSIGNED NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uID` int(11) DEFAULT NULL,
  `validThrough` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `BannedWords`
--

CREATE TABLE `BannedWords` (
  `bwID` int(10) UNSIGNED NOT NULL,
  `bannedWord` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `BannedWords`
--

INSERT INTO `BannedWords` (`bwID`, `bannedWord`) VALUES
(1, 'fuck'),
(2, 'shit'),
(3, 'bitch'),
(4, 'ass');

-- --------------------------------------------------------

--
-- Table structure for table `BasicWorkflowPermissionAssignments`
--

CREATE TABLE `BasicWorkflowPermissionAssignments` (
  `wfID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pkID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `BasicWorkflowProgressData`
--

CREATE TABLE `BasicWorkflowProgressData` (
  `wpID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `uIDStarted` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `uIDCompleted` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `wpDateCompleted` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `BlockFeatureAssignments`
--

CREATE TABLE `BlockFeatureAssignments` (
  `cID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cvID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `bID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `faID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `BlockFeatureAssignments`
--

INSERT INTO `BlockFeatureAssignments` (`cID`, `cvID`, `bID`, `faID`) VALUES
(209, 1, 29, 1);

-- --------------------------------------------------------

--
-- Table structure for table `BlockPermissionAssignments`
--

CREATE TABLE `BlockPermissionAssignments` (
  `cID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cvID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `bID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pkID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `BlockPermissionAssignments`
--

INSERT INTO `BlockPermissionAssignments` (`cID`, `cvID`, `bID`, `pkID`, `paID`) VALUES
(1, 7, 64, 30, 88),
(1, 7, 64, 31, 93),
(1, 7, 64, 32, 360),
(1, 7, 64, 33, 360),
(1, 7, 64, 34, 360),
(1, 7, 64, 35, 93),
(1, 7, 64, 36, 93),
(1, 7, 64, 37, 360),
(1, 7, 64, 38, 360),
(1, 8, 64, 30, 88),
(1, 8, 64, 31, 93),
(1, 8, 64, 32, 360),
(1, 8, 64, 33, 360),
(1, 8, 64, 34, 360),
(1, 8, 64, 35, 93),
(1, 8, 64, 36, 93),
(1, 8, 64, 37, 360),
(1, 8, 64, 38, 360),
(1, 9, 64, 30, 88),
(1, 9, 64, 31, 93),
(1, 9, 64, 32, 360),
(1, 9, 64, 33, 360),
(1, 9, 64, 34, 360),
(1, 9, 64, 35, 93),
(1, 9, 64, 36, 93),
(1, 9, 64, 37, 360),
(1, 9, 64, 38, 360),
(1, 10, 64, 30, 88),
(1, 10, 64, 31, 93),
(1, 10, 64, 32, 360),
(1, 10, 64, 33, 360),
(1, 10, 64, 34, 360),
(1, 10, 64, 35, 93),
(1, 10, 64, 36, 93),
(1, 10, 64, 37, 360),
(1, 10, 64, 38, 360),
(1, 11, 64, 30, 88),
(1, 11, 64, 31, 93),
(1, 11, 64, 32, 360),
(1, 11, 64, 33, 360),
(1, 11, 64, 34, 360),
(1, 11, 64, 35, 93),
(1, 11, 64, 36, 93),
(1, 11, 64, 37, 360),
(1, 11, 64, 38, 360),
(1, 12, 64, 30, 88),
(1, 12, 64, 31, 93),
(1, 12, 64, 32, 360),
(1, 12, 64, 33, 360),
(1, 12, 64, 34, 360),
(1, 12, 64, 35, 93),
(1, 12, 64, 36, 93),
(1, 12, 64, 37, 360),
(1, 12, 64, 38, 360),
(1, 13, 64, 30, 88),
(1, 13, 64, 31, 93),
(1, 13, 64, 32, 360),
(1, 13, 64, 33, 360),
(1, 13, 64, 34, 360),
(1, 13, 64, 35, 93),
(1, 13, 64, 36, 93),
(1, 13, 64, 37, 360),
(1, 13, 64, 38, 360),
(1, 14, 64, 30, 88),
(1, 14, 64, 31, 93),
(1, 14, 64, 32, 360),
(1, 14, 64, 33, 360),
(1, 14, 64, 34, 360),
(1, 14, 64, 35, 93),
(1, 14, 64, 36, 93),
(1, 14, 64, 37, 360),
(1, 14, 64, 38, 360),
(1, 15, 64, 30, 88),
(1, 15, 64, 31, 93),
(1, 15, 64, 32, 360),
(1, 15, 64, 33, 360),
(1, 15, 64, 34, 360),
(1, 15, 64, 35, 93),
(1, 15, 64, 36, 93),
(1, 15, 64, 37, 360),
(1, 15, 64, 38, 360),
(1, 16, 64, 30, 88),
(1, 16, 64, 31, 93),
(1, 16, 64, 32, 360),
(1, 16, 64, 33, 360),
(1, 16, 64, 34, 360),
(1, 16, 64, 35, 93),
(1, 16, 64, 36, 93),
(1, 16, 64, 37, 360),
(1, 16, 64, 38, 360),
(1, 17, 64, 30, 88),
(1, 17, 64, 31, 93),
(1, 17, 64, 32, 360),
(1, 17, 64, 33, 360),
(1, 17, 64, 34, 360),
(1, 17, 64, 35, 93),
(1, 17, 64, 36, 93),
(1, 17, 64, 37, 360),
(1, 17, 64, 38, 360),
(1, 18, 64, 30, 88),
(1, 18, 64, 31, 93),
(1, 18, 64, 32, 360),
(1, 18, 64, 33, 360),
(1, 18, 64, 34, 360),
(1, 18, 64, 35, 93),
(1, 18, 64, 36, 93),
(1, 18, 64, 37, 360),
(1, 18, 64, 38, 360),
(1, 15, 193, 30, 88),
(1, 15, 193, 31, 360),
(1, 15, 193, 32, 360),
(1, 15, 193, 33, 360),
(1, 15, 193, 34, 360),
(1, 15, 193, 35, 360),
(1, 15, 193, 36, 360),
(1, 15, 193, 37, 360),
(1, 15, 193, 38, 360),
(1, 16, 193, 30, 88),
(1, 16, 193, 31, 360),
(1, 16, 193, 32, 360),
(1, 16, 193, 33, 360),
(1, 16, 193, 34, 360),
(1, 16, 193, 35, 360),
(1, 16, 193, 36, 360),
(1, 16, 193, 37, 360),
(1, 16, 193, 38, 360),
(1, 17, 193, 30, 88),
(1, 17, 193, 31, 360),
(1, 17, 193, 32, 360),
(1, 17, 193, 33, 360),
(1, 17, 193, 34, 360),
(1, 17, 193, 35, 360),
(1, 17, 193, 36, 360),
(1, 17, 193, 37, 360),
(1, 17, 193, 38, 360),
(1, 18, 193, 30, 88),
(1, 18, 193, 31, 360),
(1, 18, 193, 32, 360),
(1, 18, 193, 33, 360),
(1, 18, 193, 34, 360),
(1, 18, 193, 35, 360),
(1, 18, 193, 36, 360),
(1, 18, 193, 37, 360),
(1, 18, 193, 38, 360),
(1, 16, 195, 30, 88),
(1, 16, 195, 31, 93),
(1, 16, 195, 32, 360),
(1, 16, 195, 33, 360),
(1, 16, 195, 34, 360),
(1, 16, 195, 35, 360),
(1, 16, 195, 36, 360),
(1, 16, 195, 37, 360),
(1, 16, 195, 38, 360),
(1, 17, 198, 30, 88),
(1, 17, 198, 31, 93),
(1, 17, 198, 32, 360),
(1, 17, 198, 33, 360),
(1, 17, 198, 34, 360),
(1, 17, 198, 35, 360),
(1, 17, 198, 36, 360),
(1, 17, 198, 37, 360),
(1, 17, 198, 38, 360),
(1, 18, 198, 30, 88),
(1, 18, 198, 31, 360),
(1, 18, 198, 32, 360),
(1, 18, 198, 33, 360),
(1, 18, 198, 34, 360),
(1, 18, 198, 35, 360),
(1, 18, 198, 36, 360),
(1, 18, 198, 37, 360),
(1, 18, 198, 38, 360);

-- --------------------------------------------------------

--
-- Table structure for table `Blocks`
--

CREATE TABLE `Blocks` (
  `bID` int(10) UNSIGNED NOT NULL,
  `bName` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bDateAdded` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `bDateModified` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `bFilename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bIsActive` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `btID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `uID` int(10) UNSIGNED DEFAULT NULL,
  `btCachedBlockRecord` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Blocks`
--

INSERT INTO `Blocks` (`bID`, `bName`, `bDateAdded`, `bDateModified`, `bFilename`, `bIsActive`, `btID`, `uID`, `btCachedBlockRecord`) VALUES
(1, '', '2021-08-23 11:15:06', '2021-08-23 11:15:06', NULL, '0', 36, 1, NULL),
(2, '', '2021-08-23 11:15:06', '2021-08-23 11:15:06', NULL, '0', 44, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjE6IjIiO3M6OToiACoAX3RhYmxlIjtzOjE2OiJidENvcmVBcmVhTGF5b3V0IjtzOjEwOiJhckxheW91dElEIjtzOjE6IjEiO30='),
(3, '', '2021-08-23 11:15:06', '2021-08-23 11:15:06', NULL, '0', 40, 1, NULL),
(4, '', '2021-08-23 11:15:06', '2021-08-23 11:15:06', NULL, '0', 38, 1, NULL),
(5, '', '2021-08-23 11:15:06', '2021-08-23 11:15:06', NULL, '0', 37, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjE6IjUiO3M6OToiACoAX3RhYmxlIjtzOjIxOiJidERlc2t0b3BTaXRlQWN0aXZpdHkiO3M6NToidHlwZXMiO3M6ODI6IlsiZm9ybV9zdWJtaXNzaW9ucyIsInN1cnZleV9yZXN1bHRzIiwic2lnbnVwcyIsImNvbnZlcnNhdGlvbl9tZXNzYWdlcyIsIndvcmtmbG93Il0iO30='),
(6, '', '2021-08-23 11:15:06', '2021-08-23 11:15:06', NULL, '0', 44, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjE6IjYiO3M6OToiACoAX3RhYmxlIjtzOjE2OiJidENvcmVBcmVhTGF5b3V0IjtzOjEwOiJhckxheW91dElEIjtzOjE6IjIiO30='),
(7, '', '2021-08-23 11:15:07', '2021-08-23 11:15:07', NULL, '0', 15, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjg6e3M6MzoiYklEIjtzOjE6IjciO3M6OToiACoAX3RhYmxlIjtzOjEyOiJidFJzc0Rpc3BsYXkiO3M6NToidGl0bGUiO3M6OToiVHV0b3JpYWxzIjtzOjM6InVybCI7czo0ODoiaHR0cDovL2RvY3VtZW50YXRpb24uY29uY3JldGU1Lm9yZy9yc3MvdHV0b3JpYWxzIjtzOjEwOiJkYXRlRm9ybWF0IjtzOjA6IiI7czoxNDoiaXRlbXNUb0Rpc3BsYXkiO3M6MToiMSI7czoxMToic2hvd1N1bW1hcnkiO3M6MToiMSI7czoxNzoibGF1bmNoSW5OZXdXaW5kb3ciO3M6MToiMSI7fQ=='),
(8, '', '2021-08-23 11:15:07', '2021-08-23 11:15:07', NULL, '0', 39, 1, NULL),
(9, '', '2021-08-23 11:15:07', '2021-08-23 11:15:07', NULL, '0', 44, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjE6IjkiO3M6OToiACoAX3RhYmxlIjtzOjE2OiJidENvcmVBcmVhTGF5b3V0IjtzOjEwOiJhckxheW91dElEIjtzOjE6IjMiO30='),
(10, '', '2021-08-23 11:15:07', '2021-08-23 11:15:07', NULL, '0', 43, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6IjEwIjtzOjk6IgAqAF90YWJsZSI7czoyMzoiYnREZXNrdG9wTmV3c2Zsb3dMYXRlc3QiO3M6NDoic2xvdCI7czoxOiJBIjt9'),
(11, '', '2021-08-23 11:15:07', '2021-08-23 11:15:07', NULL, '0', 43, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6IjExIjtzOjk6IgAqAF90YWJsZSI7czoyMzoiYnREZXNrdG9wTmV3c2Zsb3dMYXRlc3QiO3M6NDoic2xvdCI7czoxOiJCIjt9'),
(12, '', '2021-08-23 11:15:07', '2021-08-23 11:15:07', NULL, '0', 43, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6IjEyIjtzOjk6IgAqAF90YWJsZSI7czoyMzoiYnREZXNrdG9wTmV3c2Zsb3dMYXRlc3QiO3M6NDoic2xvdCI7czoxOiJDIjt9'),
(13, '', '2021-08-23 11:15:08', '2021-08-23 11:15:08', NULL, '0', 15, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjg6e3M6MzoiYklEIjtzOjI6IjEzIjtzOjk6IgAqAF90YWJsZSI7czoxMjoiYnRSc3NEaXNwbGF5IjtzOjU6InRpdGxlIjtzOjIzOiJOZXdzIGZyb20gY29uY3JldGU1Lm9yZyI7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly93d3cuY29uY3JldGU1Lm9yZy9yc3MvYmxvZyI7czoxMDoiZGF0ZUZvcm1hdCI7czowOiIiO3M6MTQ6Iml0ZW1zVG9EaXNwbGF5IjtzOjE6IjMiO3M6MTE6InNob3dTdW1tYXJ5IjtzOjE6IjEiO3M6MTc6ImxhdW5jaEluTmV3V2luZG93IjtzOjE6IjEiO30='),
(14, '', '2021-08-23 11:15:10', '2021-08-23 11:15:10', NULL, '0', 44, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6IjE0IjtzOjk6IgAqAF90YWJsZSI7czoxNjoiYnRDb3JlQXJlYUxheW91dCI7czoxMDoiYXJMYXlvdXRJRCI7czoxOiI0Ijt9'),
(15, '', '2021-08-23 11:15:10', '2021-08-23 11:15:10', NULL, '0', 41, 1, NULL),
(16, '', '2021-08-23 11:15:10', '2021-08-23 11:15:10', NULL, '0', 44, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6IjE2IjtzOjk6IgAqAF90YWJsZSI7czoxNjoiYnRDb3JlQXJlYUxheW91dCI7czoxMDoiYXJMYXlvdXRJRCI7czoxOiI1Ijt9'),
(17, '', '2021-08-23 11:15:11', '2021-08-23 11:15:11', NULL, '0', 42, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6IjE3IjtzOjk6IgAqAF90YWJsZSI7czoxODoiYnREZXNrdG9wRHJhZnRMaXN0IjtzOjEzOiJkcmFmdHNQZXJQYWdlIjtzOjI6IjEwIjt9'),
(18, '', '2021-08-23 11:15:16', '2021-08-23 11:15:16', NULL, '0', 44, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6IjE4IjtzOjk6IgAqAF90YWJsZSI7czoxNjoiYnRDb3JlQXJlYUxheW91dCI7czoxMDoiYXJMYXlvdXRJRCI7czoxOiI2Ijt9'),
(19, '', '2021-08-23 11:15:16', '2021-08-23 11:15:16', NULL, '0', 41, 1, NULL),
(20, '', '2021-08-23 11:15:16', '2021-08-23 11:15:16', NULL, '0', 44, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6IjIwIjtzOjk6IgAqAF90YWJsZSI7czoxNjoiYnRDb3JlQXJlYUxheW91dCI7czoxMDoiYXJMYXlvdXRJRCI7czoxOiI3Ijt9'),
(21, '', '2021-08-23 11:15:17', '2021-08-23 11:15:17', NULL, '0', 42, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6IjIxIjtzOjk6IgAqAF90YWJsZSI7czoxODoiYnREZXNrdG9wRHJhZnRMaXN0IjtzOjEzOiJkcmFmdHNQZXJQYWdlIjtzOjI6IjEwIjt9'),
(22, '', '2021-08-23 11:16:03', '2021-08-23 11:16:03', 'byline.php', '0', 8, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjEzOntzOjM6ImJJRCI7czoyOiIyMiI7czo5OiIAKgBfdGFibGUiO3M6MTE6ImJ0UGFnZVRpdGxlIjtzOjE0OiJ1c2VDdXN0b21UaXRsZSI7czoxOiIwIjtzOjE0OiJ1c2VGaWx0ZXJUaXRsZSI7czoxOiIwIjtzOjE0OiJ1c2VGaWx0ZXJUb3BpYyI7czoxOiIwIjtzOjEyOiJ1c2VGaWx0ZXJUYWciO3M6MToiMCI7czoxMzoidXNlRmlsdGVyRGF0ZSI7czoxOiIwIjtzOjE1OiJ0b3BpY1RleHRGb3JtYXQiO047czoxMzoidGFnVGV4dEZvcm1hdCI7TjtzOjE0OiJkYXRlVGV4dEZvcm1hdCI7TjtzOjE2OiJmaWx0ZXJEYXRlRm9ybWF0IjtOO3M6OToidGl0bGVUZXh0IjtzOjEyOiJbUGFnZSBUaXRsZV0iO3M6MTA6ImZvcm1hdHRpbmciO047fQ=='),
(23, '', '2021-08-23 11:16:03', '2021-08-23 11:16:03', NULL, '0', 45, 1, NULL),
(24, '', '2021-08-23 11:16:03', '2021-08-23 11:16:03', NULL, '0', 11, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjc6e3M6MzoiYklEIjtzOjI6IjI0IjtzOjk6IgAqAF90YWJsZSI7czoxNDoiYnROZXh0UHJldmlvdXMiO3M6OToibmV4dExhYmVsIjtzOjk6Ik5leHQgUG9zdCI7czoxMzoicHJldmlvdXNMYWJlbCI7czo5OiJMYXN0IFBvc3QiO3M6MTE6InBhcmVudExhYmVsIjtzOjA6IiI7czoxMjoibG9vcFNlcXVlbmNlIjtzOjE6IjAiO3M6Nzoib3JkZXJCeSI7czoxMToiY2hyb25vX2Rlc2MiO30='),
(25, '', '2021-08-23 11:16:03', '2021-08-23 11:16:03', NULL, '0', 26, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjU6e3M6MzoiYklEIjtzOjI6IjI1IjtzOjk6IgAqAF90YWJsZSI7czoxNToiYnRTaGFyZVRoaXNQYWdlIjtzOjE3OiJidFNoYXJlVGhpc1BhZ2VJRCI7czoxOiIxIjtzOjc6InNlcnZpY2UiO3M6ODoiZmFjZWJvb2siO3M6MTI6ImRpc3BsYXlPcmRlciI7czoxOiIwIjt9'),
(26, '', '2021-08-23 11:16:04', '2021-08-23 11:16:04', NULL, '0', 14, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjc6e3M6MzoiYklEIjtzOjI6IjI2IjtzOjk6IgAqAF90YWJsZSI7czoxMToiYnRUb3BpY0xpc3QiO3M6NDoibW9kZSI7czoxOiJQIjtzOjIzOiJ0b3BpY0F0dHJpYnV0ZUtleUhhbmRsZSI7czoxNzoiYmxvZ19lbnRyeV90b3BpY3MiO3M6MTE6InRvcGljVHJlZUlEIjtzOjE6IjQiO3M6OToiY1BhcmVudElEIjtzOjM6IjE5OCI7czo1OiJ0aXRsZSI7czo2OiJUb3BpY3MiO30='),
(27, '', '2021-08-23 11:16:04', '2021-08-23 11:16:04', NULL, '0', 10, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM0OntzOjM6ImJJRCI7czoyOiIyNyI7czo5OiIAKgBfdGFibGUiO3M6MTA6ImJ0UGFnZUxpc3QiO3M6MzoibnVtIjtzOjE6IjMiO3M6Nzoib3JkZXJCeSI7czo2OiJyYW5kb20iO3M6OToiY1BhcmVudElEIjtzOjM6IjE5OCI7czo1OiJjVGhpcyI7czoxOiIwIjtzOjExOiJjVGhpc1BhcmVudCI7czoxOiIwIjtzOjE2OiJ1c2VCdXR0b25Gb3JMaW5rIjtzOjE6IjAiO3M6MTQ6ImJ1dHRvbkxpbmtUZXh0IjtOO3M6MTM6InBhZ2VMaXN0VGl0bGUiO3M6MTM6IlJlbGF0ZWQgUG9zdHMiO3M6MTU6ImZpbHRlckJ5UmVsYXRlZCI7czoxOiIwIjtzOjE5OiJmaWx0ZXJCeUN1c3RvbVRvcGljIjtzOjE6IjAiO3M6MTY6ImZpbHRlckRhdGVPcHRpb24iO3M6MDoiIjtzOjE0OiJmaWx0ZXJEYXRlRGF5cyI7czoxOiIwIjtzOjE1OiJmaWx0ZXJEYXRlU3RhcnQiO047czoxMzoiZmlsdGVyRGF0ZUVuZCI7TjtzOjMwOiJyZWxhdGVkVG9waWNBdHRyaWJ1dGVLZXlIYW5kbGUiO3M6MDoiIjtzOjI5OiJjdXN0b21Ub3BpY0F0dHJpYnV0ZUtleUhhbmRsZSI7czowOiIiO3M6MjE6ImN1c3RvbVRvcGljVHJlZU5vZGVJRCI7czoxOiIwIjtzOjExOiJpbmNsdWRlTmFtZSI7czoxOiIxIjtzOjE4OiJpbmNsdWRlRGVzY3JpcHRpb24iO3M6MToiMCI7czoxMToiaW5jbHVkZURhdGUiO3M6MToiMCI7czoyMToiaW5jbHVkZUFsbERlc2NlbmRlbnRzIjtzOjE6IjAiO3M6ODoicGFnaW5hdGUiO3M6MToiMCI7czoxNDoiZGlzcGxheUFsaWFzZXMiO3M6MToiMCI7czoxNzoiaWdub3JlUGVybWlzc2lvbnMiO3M6MToiMCI7czoyMzoiZW5hYmxlRXh0ZXJuYWxGaWx0ZXJpbmciO3M6MToiMCI7czo0OiJwdElEIjtzOjE6IjYiO3M6NDoicGZJRCI7czoxOiIwIjtzOjE3OiJ0cnVuY2F0ZVN1bW1hcmllcyI7czoxOiIwIjtzOjE5OiJkaXNwbGF5RmVhdHVyZWRPbmx5IjtzOjE6IjAiO3M6MTY6Im5vUmVzdWx0c01lc3NhZ2UiO047czoxNjoiZGlzcGxheVRodW1ibmFpbCI7czoxOiIwIjtzOjEzOiJ0cnVuY2F0ZUNoYXJzIjtzOjE6IjAiO30='),
(28, '', '2021-08-23 11:16:04', '2021-08-23 11:16:04', NULL, '0', 5, 1, NULL),
(29, '', '2021-08-23 11:16:04', '2021-08-23 11:16:04', NULL, '0', 23, 1, NULL),
(30, '', '2021-08-23 11:16:04', '2021-08-23 11:16:04', NULL, '0', 8, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjEzOntzOjM6ImJJRCI7czoyOiIzMCI7czo5OiIAKgBfdGFibGUiO3M6MTE6ImJ0UGFnZVRpdGxlIjtzOjE0OiJ1c2VDdXN0b21UaXRsZSI7czoxOiIwIjtzOjE0OiJ1c2VGaWx0ZXJUaXRsZSI7czoxOiIwIjtzOjE0OiJ1c2VGaWx0ZXJUb3BpYyI7czoxOiIwIjtzOjEyOiJ1c2VGaWx0ZXJUYWciO3M6MToiMCI7czoxMzoidXNlRmlsdGVyRGF0ZSI7czoxOiIwIjtzOjE1OiJ0b3BpY1RleHRGb3JtYXQiO047czoxMzoidGFnVGV4dEZvcm1hdCI7TjtzOjE0OiJkYXRlVGV4dEZvcm1hdCI7TjtzOjE2OiJmaWx0ZXJEYXRlRm9ybWF0IjtOO3M6OToidGl0bGVUZXh0IjtzOjEyOiJbUGFnZSBUaXRsZV0iO3M6MTA6ImZvcm1hdHRpbmciO047fQ=='),
(31, '', '2021-08-23 11:16:04', '2021-08-23 11:16:04', NULL, '0', 10, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM0OntzOjM6ImJJRCI7czoyOiIzMSI7czo5OiIAKgBfdGFibGUiO3M6MTA6ImJ0UGFnZUxpc3QiO3M6MzoibnVtIjtzOjE6IjAiO3M6Nzoib3JkZXJCeSI7czoxMToiY2hyb25vX2Rlc2MiO3M6OToiY1BhcmVudElEIjtzOjM6IjIxNCI7czo1OiJjVGhpcyI7czoxOiIwIjtzOjExOiJjVGhpc1BhcmVudCI7czoxOiIwIjtzOjE2OiJ1c2VCdXR0b25Gb3JMaW5rIjtzOjE6IjAiO3M6MTQ6ImJ1dHRvbkxpbmtUZXh0IjtOO3M6MTM6InBhZ2VMaXN0VGl0bGUiO3M6MTQ6Ik9wZW4gUG9zaXRpb25zIjtzOjE1OiJmaWx0ZXJCeVJlbGF0ZWQiO3M6MToiMCI7czoxOToiZmlsdGVyQnlDdXN0b21Ub3BpYyI7czoxOiIwIjtzOjE2OiJmaWx0ZXJEYXRlT3B0aW9uIjtzOjA6IiI7czoxNDoiZmlsdGVyRGF0ZURheXMiO3M6MToiMCI7czoxNToiZmlsdGVyRGF0ZVN0YXJ0IjtOO3M6MTM6ImZpbHRlckRhdGVFbmQiO047czozMDoicmVsYXRlZFRvcGljQXR0cmlidXRlS2V5SGFuZGxlIjtzOjA6IiI7czoyOToiY3VzdG9tVG9waWNBdHRyaWJ1dGVLZXlIYW5kbGUiO3M6MDoiIjtzOjIxOiJjdXN0b21Ub3BpY1RyZWVOb2RlSUQiO3M6MToiMCI7czoxMToiaW5jbHVkZU5hbWUiO3M6MToiMSI7czoxODoiaW5jbHVkZURlc2NyaXB0aW9uIjtzOjE6IjAiO3M6MTE6ImluY2x1ZGVEYXRlIjtzOjE6IjAiO3M6MjE6ImluY2x1ZGVBbGxEZXNjZW5kZW50cyI7czoxOiIwIjtzOjg6InBhZ2luYXRlIjtzOjE6IjAiO3M6MTQ6ImRpc3BsYXlBbGlhc2VzIjtzOjE6IjAiO3M6MTc6Imlnbm9yZVBlcm1pc3Npb25zIjtzOjE6IjAiO3M6MjM6ImVuYWJsZUV4dGVybmFsRmlsdGVyaW5nIjtzOjE6IjAiO3M6NDoicHRJRCI7czoxOiIwIjtzOjQ6InBmSUQiO3M6MToiMCI7czoxNzoidHJ1bmNhdGVTdW1tYXJpZXMiO3M6MToiMCI7czoxOToiZGlzcGxheUZlYXR1cmVkT25seSI7czoxOiIwIjtzOjE2OiJub1Jlc3VsdHNNZXNzYWdlIjtOO3M6MTY6ImRpc3BsYXlUaHVtYm5haWwiO3M6MToiMCI7czoxMzoidHJ1bmNhdGVDaGFycyI7czoxOiIwIjt9'),
(32, '', '2021-08-23 11:16:05', '2021-08-23 11:16:05', NULL, '0', 1, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6IjMyIjtzOjk6IgAqAF90YWJsZSI7czoxNDoiYnRDb250ZW50TG9jYWwiO3M6NzoiY29udGVudCI7czoxODI6IgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPHA+PGEgaHJlZj0ie0NDTTpDSURfMjE0fSIgc3R5bGU9ImJhY2tncm91bmQtY29sb3I6IHJnYigyNTUsIDI1NSwgMjU1KTsiPjxpIGNsYXNzPSJmYSBmYS1hcnJvdy1sZWZ0Ij48L2k+IEJhY2sgdG8gQ2FyZWVyczwvYT48L3A+Ijt9'),
(33, '', '2021-08-23 11:16:05', '2021-08-23 11:16:05', NULL, '0', 1, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6IjMzIjtzOjk6IgAqAF90YWJsZSI7czoxNDoiYnRDb250ZW50TG9jYWwiO3M6NzoiY29udGVudCI7czoxOToiPGgzPkRlcGFydG1lbnQ8L2gzPiI7fQ=='),
(34, '', '2021-08-23 11:16:05', '2021-08-23 11:16:05', NULL, '0', 30, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjk6e3M6MzoiYklEIjtzOjI6IjM0IjtzOjk6IgAqAF90YWJsZSI7czoyMjoiYnRQYWdlQXR0cmlidXRlRGlzcGxheSI7czoxNToiYXR0cmlidXRlSGFuZGxlIjtzOjIyOiJqb2JfcG9zdGluZ19kZXBhcnRtZW50IjtzOjE4OiJhdHRyaWJ1dGVUaXRsZVRleHQiO3M6MDoiIjtzOjEwOiJkaXNwbGF5VGFnIjtzOjE6InAiO3M6MTA6ImRhdGVGb3JtYXQiO3M6MTE6Im0vZC95IGg6aTphIjtzOjE1OiJ0aHVtYm5haWxIZWlnaHQiO3M6MzoiMjUwIjtzOjE0OiJ0aHVtYm5haWxXaWR0aCI7czozOiIyNTAiO3M6OToiZGVsaW1pdGVyIjtOO30='),
(35, '', '2021-08-23 11:16:05', '2021-08-23 11:16:05', NULL, '0', 1, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6IjM1IjtzOjk6IgAqAF90YWJsZSI7czoxNDoiYnRDb250ZW50TG9jYWwiO3M6NzoiY29udGVudCI7czoxNzoiPGgzPkxvY2F0aW9uPC9oMz4iO30='),
(36, '', '2021-08-23 11:16:05', '2021-08-23 11:16:05', NULL, '0', 30, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjk6e3M6MzoiYklEIjtzOjI6IjM2IjtzOjk6IgAqAF90YWJsZSI7czoyMjoiYnRQYWdlQXR0cmlidXRlRGlzcGxheSI7czoxNToiYXR0cmlidXRlSGFuZGxlIjtzOjEyOiJqb2JfbG9jYXRpb24iO3M6MTg6ImF0dHJpYnV0ZVRpdGxlVGV4dCI7czowOiIiO3M6MTA6ImRpc3BsYXlUYWciO3M6MToicCI7czoxMDoiZGF0ZUZvcm1hdCI7czoxMToibS9kL3kgaDppOmEiO3M6MTU6InRodW1ibmFpbEhlaWdodCI7czozOiIyNTAiO3M6MTQ6InRodW1ibmFpbFdpZHRoIjtzOjM6IjI1MCI7czo5OiJkZWxpbWl0ZXIiO047fQ=='),
(37, '', '2021-08-23 11:16:05', '2021-08-23 11:16:05', NULL, '0', 1, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6IjM3IjtzOjk6IgAqAF90YWJsZSI7czoxNDoiYnRDb250ZW50TG9jYWwiO3M6NzoiY29udGVudCI7czoyNDoiPGgzPkpvYiBJbmZvcm1hdGlvbjwvaDM+Ijt9'),
(38, '', '2021-08-23 11:16:05', '2021-08-23 11:16:05', NULL, '0', 45, 1, NULL),
(39, '', '2021-08-23 11:16:05', '2021-08-23 11:16:05', NULL, '0', 1, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6IjM5IjtzOjk6IgAqAF90YWJsZSI7czoxNDoiYnRDb250ZW50TG9jYWwiO3M6NzoiY29udGVudCI7czo2MzoiCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8YnIvPjxici8+Ijt9'),
(40, '', '2021-08-23 11:16:06', '2021-08-23 11:16:06', NULL, '0', 8, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjEzOntzOjM6ImJJRCI7czoyOiI0MCI7czo5OiIAKgBfdGFibGUiO3M6MTE6ImJ0UGFnZVRpdGxlIjtzOjE0OiJ1c2VDdXN0b21UaXRsZSI7czoxOiIwIjtzOjE0OiJ1c2VGaWx0ZXJUaXRsZSI7czoxOiIwIjtzOjE0OiJ1c2VGaWx0ZXJUb3BpYyI7czoxOiIwIjtzOjEyOiJ1c2VGaWx0ZXJUYWciO3M6MToiMCI7czoxMzoidXNlRmlsdGVyRGF0ZSI7czoxOiIwIjtzOjE1OiJ0b3BpY1RleHRGb3JtYXQiO047czoxMzoidGFnVGV4dEZvcm1hdCI7TjtzOjE0OiJkYXRlVGV4dEZvcm1hdCI7TjtzOjE2OiJmaWx0ZXJEYXRlRm9ybWF0IjtOO3M6OToidGl0bGVUZXh0IjtzOjEyOiJbUGFnZSBUaXRsZV0iO3M6MTA6ImZvcm1hdHRpbmciO047fQ=='),
(41, '', '2021-08-23 11:16:06', '2021-08-23 11:16:06', NULL, '0', 45, 1, NULL),
(42, '', '2021-08-23 11:16:06', '2021-08-23 11:16:06', NULL, '0', 30, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjk6e3M6MzoiYklEIjtzOjI6IjQyIjtzOjk6IgAqAF90YWJsZSI7czoyMjoiYnRQYWdlQXR0cmlidXRlRGlzcGxheSI7czoxNToiYXR0cmlidXRlSGFuZGxlIjtzOjE0OiJwcm9qZWN0X2NsaWVudCI7czoxODoiYXR0cmlidXRlVGl0bGVUZXh0IjtzOjc6IkNsaWVudDoiO3M6MTA6ImRpc3BsYXlUYWciO3M6MzoiZGl2IjtzOjEwOiJkYXRlRm9ybWF0IjtzOjExOiJtL2QveSBoOmk6YSI7czoxNToidGh1bWJuYWlsSGVpZ2h0IjtzOjM6IjI1MCI7czoxNDoidGh1bWJuYWlsV2lkdGgiO3M6MzoiMjUwIjtzOjk6ImRlbGltaXRlciI7Tjt9'),
(43, '', '2021-08-23 11:16:06', '2021-08-23 11:16:06', NULL, '0', 30, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjk6e3M6MzoiYklEIjtzOjI6IjQzIjtzOjk6IgAqAF90YWJsZSI7czoyMjoiYnRQYWdlQXR0cmlidXRlRGlzcGxheSI7czoxNToiYXR0cmlidXRlSGFuZGxlIjtzOjEzOiJwcm9qZWN0X3Rhc2tzIjtzOjE4OiJhdHRyaWJ1dGVUaXRsZVRleHQiO3M6NToiVGFzazoiO3M6MTA6ImRpc3BsYXlUYWciO3M6MzoiZGl2IjtzOjEwOiJkYXRlRm9ybWF0IjtzOjExOiJtL2QveSBoOmk6YSI7czoxNToidGh1bWJuYWlsSGVpZ2h0IjtzOjM6IjI1MCI7czoxNDoidGh1bWJuYWlsV2lkdGgiO3M6MzoiMjUwIjtzOjk6ImRlbGltaXRlciI7Tjt9'),
(44, '', '2021-08-23 11:16:06', '2021-08-23 11:16:06', NULL, '0', 30, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjk6e3M6MzoiYklEIjtzOjI6IjQ0IjtzOjk6IgAqAF90YWJsZSI7czoyMjoiYnRQYWdlQXR0cmlidXRlRGlzcGxheSI7czoxNToiYXR0cmlidXRlSGFuZGxlIjtzOjE0OiJwcm9qZWN0X3NraWxscyI7czoxODoiYXR0cmlidXRlVGl0bGVUZXh0IjtzOjc6IlNraWxsczoiO3M6MTA6ImRpc3BsYXlUYWciO3M6MzoiZGl2IjtzOjEwOiJkYXRlRm9ybWF0IjtzOjExOiJtL2QveSBoOmk6YSI7czoxNToidGh1bWJuYWlsSGVpZ2h0IjtzOjM6IjI1MCI7czoxNDoidGh1bWJuYWlsV2lkdGgiO3M6MzoiMjUwIjtzOjk6ImRlbGltaXRlciI7Tjt9'),
(45, '', '2021-08-23 11:16:06', '2021-08-23 11:16:06', NULL, '0', 45, 1, NULL),
(46, '', '2021-08-23 11:16:06', '2021-08-23 11:16:06', NULL, '0', 5, 1, NULL),
(47, '', '2021-08-23 11:16:06', '2021-08-23 11:16:06', 'thumbnail_grid', '0', 10, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM0OntzOjM6ImJJRCI7czoyOiI0NyI7czo5OiIAKgBfdGFibGUiO3M6MTA6ImJ0UGFnZUxpc3QiO3M6MzoibnVtIjtzOjE6IjMiO3M6Nzoib3JkZXJCeSI7czo2OiJyYW5kb20iO3M6OToiY1BhcmVudElEIjtzOjE6IjAiO3M6NToiY1RoaXMiO3M6MToiMCI7czoxMToiY1RoaXNQYXJlbnQiO3M6MToiMCI7czoxNjoidXNlQnV0dG9uRm9yTGluayI7czoxOiIwIjtzOjE0OiJidXR0b25MaW5rVGV4dCI7TjtzOjEzOiJwYWdlTGlzdFRpdGxlIjtzOjE2OiJSZWxhdGVkIFByb2plY3RzIjtzOjE1OiJmaWx0ZXJCeVJlbGF0ZWQiO3M6MToiMCI7czoxOToiZmlsdGVyQnlDdXN0b21Ub3BpYyI7czoxOiIwIjtzOjE2OiJmaWx0ZXJEYXRlT3B0aW9uIjtzOjA6IiI7czoxNDoiZmlsdGVyRGF0ZURheXMiO3M6MToiMCI7czoxNToiZmlsdGVyRGF0ZVN0YXJ0IjtOO3M6MTM6ImZpbHRlckRhdGVFbmQiO047czozMDoicmVsYXRlZFRvcGljQXR0cmlidXRlS2V5SGFuZGxlIjtzOjA6IiI7czoyOToiY3VzdG9tVG9waWNBdHRyaWJ1dGVLZXlIYW5kbGUiO3M6MDoiIjtzOjIxOiJjdXN0b21Ub3BpY1RyZWVOb2RlSUQiO3M6MToiMCI7czoxMToiaW5jbHVkZU5hbWUiO3M6MToiMSI7czoxODoiaW5jbHVkZURlc2NyaXB0aW9uIjtzOjE6IjAiO3M6MTE6ImluY2x1ZGVEYXRlIjtzOjE6IjAiO3M6MjE6ImluY2x1ZGVBbGxEZXNjZW5kZW50cyI7czoxOiIwIjtzOjg6InBhZ2luYXRlIjtzOjE6IjAiO3M6MTQ6ImRpc3BsYXlBbGlhc2VzIjtzOjE6IjAiO3M6MTc6Imlnbm9yZVBlcm1pc3Npb25zIjtzOjE6IjAiO3M6MjM6ImVuYWJsZUV4dGVybmFsRmlsdGVyaW5nIjtzOjE6IjAiO3M6NDoicHRJRCI7czoxOiI4IjtzOjQ6InBmSUQiO3M6MToiMCI7czoxNzoidHJ1bmNhdGVTdW1tYXJpZXMiO3M6MToiMCI7czoxOToiZGlzcGxheUZlYXR1cmVkT25seSI7czoxOiIwIjtzOjE2OiJub1Jlc3VsdHNNZXNzYWdlIjtzOjc5OiIKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIE5vIHJlbGF0ZWQgcHJvamVjdHMgZm91bmQuIjtzOjE2OiJkaXNwbGF5VGh1bWJuYWlsIjtzOjE6IjAiO3M6MTM6InRydW5jYXRlQ2hhcnMiO3M6MToiMCI7fQ=='),
(48, '', '2021-08-23 11:16:06', '2021-08-23 11:16:07', 'archive.php', '0', 8, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjEzOntzOjM6ImJJRCI7czoyOiI0OCI7czo5OiIAKgBfdGFibGUiO3M6MTE6ImJ0UGFnZVRpdGxlIjtzOjE0OiJ1c2VDdXN0b21UaXRsZSI7czoxOiIwIjtzOjE0OiJ1c2VGaWx0ZXJUaXRsZSI7czoxOiIwIjtzOjE0OiJ1c2VGaWx0ZXJUb3BpYyI7czoxOiIwIjtzOjEyOiJ1c2VGaWx0ZXJUYWciO3M6MToiMCI7czoxMzoidXNlRmlsdGVyRGF0ZSI7czoxOiIwIjtzOjE1OiJ0b3BpY1RleHRGb3JtYXQiO047czoxMzoidGFnVGV4dEZvcm1hdCI7TjtzOjE0OiJkYXRlVGV4dEZvcm1hdCI7TjtzOjE2OiJmaWx0ZXJEYXRlRm9ybWF0IjtOO3M6OToidGl0bGVUZXh0IjtzOjEyOiJbUGFnZSBUaXRsZV0iO3M6MTA6ImZvcm1hdHRpbmciO047fQ=='),
(49, '', '2021-08-23 11:16:07', '2021-08-23 11:16:07', NULL, '0', 44, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6IjQ5IjtzOjk6IgAqAF90YWJsZSI7czoxNjoiYnRDb3JlQXJlYUxheW91dCI7czoxMDoiYXJMYXlvdXRJRCI7czoxOiI4Ijt9'),
(50, '', '2021-08-23 11:16:07', '2021-08-23 11:16:07', NULL, '0', 10, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM0OntzOjM6ImJJRCI7czoyOiI1MCI7czo5OiIAKgBfdGFibGUiO3M6MTA6ImJ0UGFnZUxpc3QiO3M6MzoibnVtIjtzOjI6IjEwIjtzOjc6Im9yZGVyQnkiO3M6MTE6ImNocm9ub19kZXNjIjtzOjk6ImNQYXJlbnRJRCI7czoxOiIwIjtzOjU6ImNUaGlzIjtzOjE6IjAiO3M6MTE6ImNUaGlzUGFyZW50IjtzOjE6IjEiO3M6MTY6InVzZUJ1dHRvbkZvckxpbmsiO3M6MToiMCI7czoxNDoiYnV0dG9uTGlua1RleHQiO3M6MDoiIjtzOjEzOiJwYWdlTGlzdFRpdGxlIjtOO3M6MTU6ImZpbHRlckJ5UmVsYXRlZCI7czoxOiIwIjtzOjE5OiJmaWx0ZXJCeUN1c3RvbVRvcGljIjtzOjE6IjAiO3M6MTY6ImZpbHRlckRhdGVPcHRpb24iO3M6MDoiIjtzOjE0OiJmaWx0ZXJEYXRlRGF5cyI7czoxOiIwIjtzOjE1OiJmaWx0ZXJEYXRlU3RhcnQiO047czoxMzoiZmlsdGVyRGF0ZUVuZCI7TjtzOjMwOiJyZWxhdGVkVG9waWNBdHRyaWJ1dGVLZXlIYW5kbGUiO3M6MDoiIjtzOjI5OiJjdXN0b21Ub3BpY0F0dHJpYnV0ZUtleUhhbmRsZSI7czowOiIiO3M6MjE6ImN1c3RvbVRvcGljVHJlZU5vZGVJRCI7czoxOiIwIjtzOjExOiJpbmNsdWRlTmFtZSI7czoxOiIxIjtzOjE4OiJpbmNsdWRlRGVzY3JpcHRpb24iO3M6MToiMSI7czoxMToiaW5jbHVkZURhdGUiO3M6MToiMSI7czoyMToiaW5jbHVkZUFsbERlc2NlbmRlbnRzIjtzOjE6IjEiO3M6ODoicGFnaW5hdGUiO3M6MToiMSI7czoxNDoiZGlzcGxheUFsaWFzZXMiO3M6MToiMCI7czoxNzoiaWdub3JlUGVybWlzc2lvbnMiO3M6MToiMCI7czoyMzoiZW5hYmxlRXh0ZXJuYWxGaWx0ZXJpbmciO3M6MToiMSI7czo0OiJwdElEIjtzOjE6IjYiO3M6NDoicGZJRCI7czoxOiIxIjtzOjE3OiJ0cnVuY2F0ZVN1bW1hcmllcyI7czoxOiIwIjtzOjE5OiJkaXNwbGF5RmVhdHVyZWRPbmx5IjtzOjE6IjAiO3M6MTY6Im5vUmVzdWx0c01lc3NhZ2UiO3M6OTE6IgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIE5vIHBvc3RzIHRvIHRoaXMgYmxvZy4iO3M6MTY6ImRpc3BsYXlUaHVtYm5haWwiO3M6MToiMCI7czoxMzoidHJ1bmNhdGVDaGFycyI7czoxOiIwIjt9'),
(51, '', '2021-08-23 11:16:07', '2021-08-23 11:16:07', NULL, '0', 14, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjc6e3M6MzoiYklEIjtzOjI6IjUxIjtzOjk6IgAqAF90YWJsZSI7czoxMToiYnRUb3BpY0xpc3QiO3M6NDoibW9kZSI7czoxOiJTIjtzOjIzOiJ0b3BpY0F0dHJpYnV0ZUtleUhhbmRsZSI7czowOiIiO3M6MTE6InRvcGljVHJlZUlEIjtzOjE6IjQiO3M6OToiY1BhcmVudElEIjtzOjE6IjAiO3M6NToidGl0bGUiO3M6NjoiVG9waWNzIjt9'),
(52, '', '2021-08-23 11:16:07', '2021-08-23 11:16:07', NULL, '0', 12, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjg6e3M6MzoiYklEIjtzOjI6IjUyIjtzOjk6IgAqAF90YWJsZSI7czoxNjoiYnREYXRlTmF2aWdhdGlvbiI7czo1OiJ0aXRsZSI7czo4OiJBcmNoaXZlcyI7czoxNDoiZmlsdGVyQnlQYXJlbnQiO3M6MToiMSI7czoxNzoicmVkaXJlY3RUb1Jlc3VsdHMiO3M6MToiMCI7czo5OiJjUGFyZW50SUQiO3M6MzoiMTk4IjtzOjk6ImNUYXJnZXRJRCI7czoxOiIwIjtzOjQ6InB0SUQiO3M6MToiNiI7fQ=='),
(53, '', '2021-08-23 11:16:07', '2021-08-23 11:16:07', NULL, '0', 8, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjEzOntzOjM6ImJJRCI7czoyOiI1MyI7czo5OiIAKgBfdGFibGUiO3M6MTE6ImJ0UGFnZVRpdGxlIjtzOjE0OiJ1c2VDdXN0b21UaXRsZSI7czoxOiIwIjtzOjE0OiJ1c2VGaWx0ZXJUaXRsZSI7czoxOiIwIjtzOjE0OiJ1c2VGaWx0ZXJUb3BpYyI7czoxOiIwIjtzOjEyOiJ1c2VGaWx0ZXJUYWciO3M6MToiMCI7czoxMzoidXNlRmlsdGVyRGF0ZSI7czoxOiIwIjtzOjE1OiJ0b3BpY1RleHRGb3JtYXQiO047czoxMzoidGFnVGV4dEZvcm1hdCI7TjtzOjE0OiJkYXRlVGV4dEZvcm1hdCI7TjtzOjE2OiJmaWx0ZXJEYXRlRm9ybWF0IjtOO3M6OToidGl0bGVUZXh0IjtzOjEyOiJbUGFnZSBUaXRsZV0iO3M6MTA6ImZvcm1hdHRpbmciO047fQ=='),
(54, '', '2021-08-23 11:16:08', '2021-08-23 11:16:08', 'flat_filter.php', '0', 14, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjc6e3M6MzoiYklEIjtzOjI6IjU0IjtzOjk6IgAqAF90YWJsZSI7czoxMToiYnRUb3BpY0xpc3QiO3M6NDoibW9kZSI7czoxOiJTIjtzOjIzOiJ0b3BpY0F0dHJpYnV0ZUtleUhhbmRsZSI7czowOiIiO3M6MTE6InRvcGljVHJlZUlEIjtzOjE6IjUiO3M6OToiY1BhcmVudElEIjtzOjE6IjAiO3M6NToidGl0bGUiO3M6MDoiIjt9'),
(55, '', '2021-08-23 11:16:08', '2021-08-23 11:16:08', 'thumbnail_grid', '0', 10, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM0OntzOjM6ImJJRCI7czoyOiI1NSI7czo5OiIAKgBfdGFibGUiO3M6MTA6ImJ0UGFnZUxpc3QiO3M6MzoibnVtIjtzOjE6IjAiO3M6Nzoib3JkZXJCeSI7czoxMToiY2hyb25vX2Rlc2MiO3M6OToiY1BhcmVudElEIjtzOjE6IjAiO3M6NToiY1RoaXMiO3M6MToiMCI7czoxMToiY1RoaXNQYXJlbnQiO3M6MToiMCI7czoxNjoidXNlQnV0dG9uRm9yTGluayI7czoxOiIwIjtzOjE0OiJidXR0b25MaW5rVGV4dCI7czowOiIiO3M6MTM6InBhZ2VMaXN0VGl0bGUiO047czoxNToiZmlsdGVyQnlSZWxhdGVkIjtzOjE6IjAiO3M6MTk6ImZpbHRlckJ5Q3VzdG9tVG9waWMiO3M6MToiMCI7czoxNjoiZmlsdGVyRGF0ZU9wdGlvbiI7czowOiIiO3M6MTQ6ImZpbHRlckRhdGVEYXlzIjtzOjE6IjAiO3M6MTU6ImZpbHRlckRhdGVTdGFydCI7TjtzOjEzOiJmaWx0ZXJEYXRlRW5kIjtOO3M6MzA6InJlbGF0ZWRUb3BpY0F0dHJpYnV0ZUtleUhhbmRsZSI7czowOiIiO3M6Mjk6ImN1c3RvbVRvcGljQXR0cmlidXRlS2V5SGFuZGxlIjtzOjA6IiI7czoyMToiY3VzdG9tVG9waWNUcmVlTm9kZUlEIjtzOjE6IjAiO3M6MTE6ImluY2x1ZGVOYW1lIjtzOjE6IjEiO3M6MTg6ImluY2x1ZGVEZXNjcmlwdGlvbiI7czoxOiIwIjtzOjExOiJpbmNsdWRlRGF0ZSI7czoxOiIwIjtzOjIxOiJpbmNsdWRlQWxsRGVzY2VuZGVudHMiO3M6MToiMCI7czo4OiJwYWdpbmF0ZSI7czoxOiIxIjtzOjE0OiJkaXNwbGF5QWxpYXNlcyI7czoxOiIwIjtzOjE3OiJpZ25vcmVQZXJtaXNzaW9ucyI7czoxOiIwIjtzOjIzOiJlbmFibGVFeHRlcm5hbEZpbHRlcmluZyI7czoxOiIxIjtzOjQ6InB0SUQiO3M6MToiOCI7czo0OiJwZklEIjtzOjE6IjAiO3M6MTc6InRydW5jYXRlU3VtbWFyaWVzIjtzOjE6IjAiO3M6MTk6ImRpc3BsYXlGZWF0dXJlZE9ubHkiO3M6MToiMCI7czoxNjoibm9SZXN1bHRzTWVzc2FnZSI7czoxODoiTm8gcHJvamVjdHMgZm91bmQuIjtzOjE2OiJkaXNwbGF5VGh1bWJuYWlsIjtzOjE6IjEiO3M6MTM6InRydW5jYXRlQ2hhcnMiO3M6MToiMCI7fQ=='),
(56, '', '2021-08-23 11:16:08', '2021-08-23 11:16:08', NULL, '0', 1, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6IjU2IjtzOjk6IgAqAF90YWJsZSI7czoxNDoiYnRDb250ZW50TG9jYWwiO3M6NzoiY29udGVudCI7czoxNTc6IgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8cD4xMjM0IFNFIFN0cmVldFZpZXc8L3A+PHA+U3VpdGUgMzAxPC9wPjxwPlBvcnRsYW5kLCBPUiA5ODEwMTwvcD48cD48YSBocmVmPSJ7Q0NNOkNJRF8yMDB9Ij5WaWV3IG9uIEdvb2dsZSBNYXBzPC9hPjwvcD4iO30='),
(57, '', '2021-08-23 11:16:08', '2021-08-23 11:16:08', NULL, '0', 1, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6IjU3IjtzOjk6IgAqAF90YWJsZSI7czoxNDoiYnRDb250ZW50TG9jYWwiO3M6NzoiY29udGVudCI7czo2ODoiCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxwPsKpIDIwMTjCoEVsZW1lbnRhbCBUaGVtZTwvcD4iO30='),
(58, '', '2021-08-23 11:16:08', '2021-08-23 11:16:08', NULL, '0', 1, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6IjU4IjtzOjk6IgAqAF90YWJsZSI7czoxNDoiYnRDb250ZW50TG9jYWwiO3M6NzoiY29udGVudCI7czozOTg6IgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPHA+PGEgaHJlZj0ie0NDTTpDSURfMjE1fSI+RkFRIC8gSGVscDwvYT48L3A+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxwPjxhIGhyZWY9IntDQ006Q0lEXzE5NX0iPkNhc2UgU3R1ZGllczwvYT48L3A+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxwPjxhIGhyZWY9IntDQ006Q0lEXzE5OH0iPkJsb2c8L2E+PC9wPgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8cD48YSBocmVmPSJ7Q0NNOkNJRF8xfSI+QW5vdGhlciBMaW5rPC9hPjwvcD4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIjt9'),
(59, '', '2021-08-23 11:16:08', '2021-08-23 11:16:08', NULL, '0', 1, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6IjU5IjtzOjk6IgAqAF90YWJsZSI7czoxNDoiYnRDb250ZW50TG9jYWwiO3M6NzoiY29udGVudCI7czo5NToiCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxhIGhyZWY9IntDQ006Q0lEXzF9IiBpZD0iZm9vdGVyLXNpdGUtdGl0bGUiPkVsZW1lbnRhbDwvYT4iO30='),
(60, '', '2021-08-23 11:16:09', '2021-08-23 11:16:09', NULL, '0', 24, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjU6e3M6MzoiYklEIjtzOjI6IjYwIjtzOjk6IgAqAF90YWJsZSI7czoxMzoiYnRTb2NpYWxMaW5rcyI7czoxNDoiYnRTb2NpYWxMaW5rSUQiO3M6MToiMSI7czo0OiJzbElEIjtzOjE6IjMiO3M6MTI6ImRpc3BsYXlPcmRlciI7czoxOiIwIjt9'),
(61, '', '2021-08-23 11:16:09', '2021-08-23 11:16:09', 'responsive_header_navigation', '0', 7, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjEwOntzOjM6ImJJRCI7czoyOiI2MSI7czo5OiIAKgBfdGFibGUiO3M6MTI6ImJ0TmF2aWdhdGlvbiI7czo3OiJvcmRlckJ5IjtzOjExOiJkaXNwbGF5X2FzYyI7czoxMjoiZGlzcGxheVBhZ2VzIjtzOjM6InRvcCI7czoxNToiZGlzcGxheVBhZ2VzQ0lEIjtzOjE6IjAiO3M6MjM6ImRpc3BsYXlQYWdlc0luY2x1ZGVTZWxmIjtzOjE6IjAiO3M6MTU6ImRpc3BsYXlTdWJQYWdlcyI7czozOiJhbGwiO3M6MjA6ImRpc3BsYXlTdWJQYWdlTGV2ZWxzIjtzOjY6ImN1c3RvbSI7czoyMzoiZGlzcGxheVN1YlBhZ2VMZXZlbHNOdW0iO3M6MToiMSI7czoyMzoiZGlzcGxheVVuYXZhaWxhYmxlUGFnZXMiO3M6MToiMCI7fQ=='),
(62, '', '2021-08-23 11:16:09', '2021-08-23 11:16:09', NULL, '0', 18, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjk6e3M6MzoiYklEIjtzOjI6IjYyIjtzOjk6IgAqAF90YWJsZSI7czo4OiJidFNlYXJjaCI7czo1OiJ0aXRsZSI7czowOiIiO3M6MTA6ImJ1dHRvblRleHQiO3M6MDoiIjtzOjE0OiJiYXNlU2VhcmNoUGF0aCI7czowOiIiO3M6MTA6InNlYXJjaF9hbGwiO3M6MToiMCI7czoxODoiYWxsb3dfdXNlcl9vcHRpb25zIjtzOjE6IjAiO3M6MTA6InBvc3RUb19jSUQiO3M6MzoiMTk5IjtzOjEwOiJyZXN1bHRzVVJMIjtzOjA6IiI7fQ=='),
(63, '', '2021-08-23 11:16:09', '2021-08-23 11:16:09', NULL, '0', 1, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6IjYzIjtzOjk6IgAqAF90YWJsZSI7czoxNDoiYnRDb250ZW50TG9jYWwiO3M6NzoiY29udGVudCI7czo5NToiCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxhIGhyZWY9IntDQ006Q0lEXzF9IiBpZD0iaGVhZGVyLXNpdGUtdGl0bGUiPkVsZW1lbnRhbDwvYT4iO30='),
(64, '', '2021-08-23 11:16:09', '2021-08-23 11:16:09', NULL, '0', 31, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjg6e3M6MzoiYklEIjtzOjI6IjY0IjtzOjk6IgAqAF90YWJsZSI7czoxMzoiYnRJbWFnZVNsaWRlciI7czoxNDoibmF2aWdhdGlvblR5cGUiO3M6MToiMSI7czo3OiJ0aW1lb3V0IjtzOjQ6IjQwMDAiO3M6NToic3BlZWQiO3M6MzoiNTAwIjtzOjk6Im5vQW5pbWF0ZSI7czoxOiIwIjtzOjU6InBhdXNlIjtzOjE6IjAiO3M6ODoibWF4V2lkdGgiO3M6MToiMCI7fQ=='),
(65, '', '2021-08-23 11:16:09', '2021-08-23 11:16:09', NULL, '0', 44, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6IjY1IjtzOjk6IgAqAF90YWJsZSI7czoxNjoiYnRDb3JlQXJlYUxheW91dCI7czoxMDoiYXJMYXlvdXRJRCI7czoxOiI5Ijt9'),
(66, '', '2021-08-23 11:16:10', '2021-08-23 11:16:10', NULL, '0', 6, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjc6e3M6MzoiYklEIjtzOjI6IjY2IjtzOjk6IgAqAF90YWJsZSI7czo5OiJidEZlYXR1cmUiO3M6NDoiaWNvbiI7czo2OiJwZW5jaWwiO3M6NToidGl0bGUiO3M6MTI6IkVhc3kgdG8gRWRpdCI7czo5OiJwYXJhZ3JhcGgiO3M6MjM0OiIKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIFBlbGxlbnRlc3F1ZSB1bHRyaWNpZXMgbGlndWxhIHZlbCBuZXF1ZSBkaWN0dW0sIGV1IG1vbGxpcyB0b3J0b3IgYWRpcGlzY2luZy4gRXRpYW0gY29uZ3VlLCBlc3QgdmVsIHRpbmNpZHVudCB2ZXN0aWJ1bHVtLCBudW5jIG51bmMgcG9ydGEgbnVsbGEsIGF0IGFkaXBpc2NpbmcgbmVxdWUgdGVsbHVzIHF1aXMgdXJuYS4iO3M6MTI6ImV4dGVybmFsTGluayI7czowOiIiO3M6MTU6ImludGVybmFsTGlua0NJRCI7czoxOiIwIjt9'),
(67, '', '2021-08-23 11:16:10', '2021-08-23 11:16:10', NULL, '0', 6, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjc6e3M6MzoiYklEIjtzOjI6IjY3IjtzOjk6IgAqAF90YWJsZSI7czo5OiJidEZlYXR1cmUiO3M6NDoiaWNvbiI7czozOiJleWUiO3M6NToidGl0bGUiO3M6MTM6IlBpeGVsIFBlcmZlY3QiO3M6OToicGFyYWdyYXBoIjtzOjIzNDoiCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBQZWxsZW50ZXNxdWUgdWx0cmljaWVzIGxpZ3VsYSB2ZWwgbmVxdWUgZGljdHVtLCBldSBtb2xsaXMgdG9ydG9yIGFkaXBpc2NpbmcuIEV0aWFtIGNvbmd1ZSwgZXN0IHZlbCB0aW5jaWR1bnQgdmVzdGlidWx1bSwgbnVuYyBudW5jIHBvcnRhIG51bGxhLCBhdCBhZGlwaXNjaW5nIG5lcXVlIHRlbGx1cyBxdWlzIHVybmEuIjtzOjEyOiJleHRlcm5hbExpbmsiO3M6MDoiIjtzOjE1OiJpbnRlcm5hbExpbmtDSUQiO3M6MToiMCI7fQ=='),
(68, '', '2021-08-23 11:16:10', '2021-08-23 11:16:10', NULL, '0', 6, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjc6e3M6MzoiYklEIjtzOjI6IjY4IjtzOjk6IgAqAF90YWJsZSI7czo5OiJidEZlYXR1cmUiO3M6NDoiaWNvbiI7czoxMjoieW91dHViZS1wbGF5IjtzOjU6InRpdGxlIjtzOjEwOiJNZWRpYSBSaWNoIjtzOjk6InBhcmFncmFwaCI7czoyMzQ6IgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgUGVsbGVudGVzcXVlIHVsdHJpY2llcyBsaWd1bGEgdmVsIG5lcXVlIGRpY3R1bSwgZXUgbW9sbGlzIHRvcnRvciBhZGlwaXNjaW5nLiBFdGlhbSBjb25ndWUsIGVzdCB2ZWwgdGluY2lkdW50IHZlc3RpYnVsdW0sIG51bmMgbnVuYyBwb3J0YSBudWxsYSwgYXQgYWRpcGlzY2luZyBuZXF1ZSB0ZWxsdXMgcXVpcyB1cm5hLiI7czoxMjoiZXh0ZXJuYWxMaW5rIjtzOjA6IiI7czoxNToiaW50ZXJuYWxMaW5rQ0lEIjtzOjE6IjAiO30='),
(69, '', '2021-08-23 11:16:10', '2021-08-23 11:16:10', NULL, '0', 5, 1, NULL),
(70, '', '2021-08-23 11:16:10', '2021-08-23 11:16:10', NULL, '0', 1, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6IjcwIjtzOjk6IgAqAF90YWJsZSI7czoxNDoiYnRDb250ZW50TG9jYWwiO3M6NzoiY29udGVudCI7czo0MDc6IgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8cCBzdHlsZT0idGV4dC1hbGlnbjogY2VudGVyIj48c3BhbiBjbGFzcz0idGl0bGUtY2Fwcy1ib2xkIj5QcmVzZW50aW5nIHlvdXIgQnVzaW5lc3MgaGFzIG5ldmVyIGJlZW4gc28gZWFzeTwvc3Bhbj48L3A+PHAgc3R5bGU9InRleHQtYWxpZ246IGNlbnRlcjsiPlBlbGxlbnRlc3F1ZSB1bHRyaWNpZXMgbGlndWxhIHZlbCBuZXF1ZSBkaWN0dW0sIGV1IG1vbGxpcyB0b3J0b3IgYWRpcGlzY2luZy48L3A+PHAgc3R5bGU9InRleHQtYWxpZ246IGNlbnRlcjsiPkV0aWFtIGNvbmd1ZSwgZXN0IHZlbCB0aW5jaWR1bnQgdmVzdGlidWx1bSwgbnVuYyBudW5jIHBvcnRhIG51bGxhLCBhdCBhZGlwaXNjaW5nIG5lcXVlIHRlbGx1cyBxdWlzIHVybmEuwqA8L3A+Ijt9'),
(71, '', '2021-08-23 11:16:11', '2021-08-23 11:16:11', 'thumbnail_grid', '0', 10, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM0OntzOjM6ImJJRCI7czoyOiI3MSI7czo5OiIAKgBfdGFibGUiO3M6MTA6ImJ0UGFnZUxpc3QiO3M6MzoibnVtIjtzOjE6IjMiO3M6Nzoib3JkZXJCeSI7czoxMToiY2hyb25vX2Rlc2MiO3M6OToiY1BhcmVudElEIjtzOjE6IjAiO3M6NToiY1RoaXMiO3M6MToiMCI7czoxMToiY1RoaXNQYXJlbnQiO3M6MToiMCI7czoxNjoidXNlQnV0dG9uRm9yTGluayI7czoxOiIxIjtzOjE0OiJidXR0b25MaW5rVGV4dCI7czoxMjoiVmlldyBQcm9qZWN0IjtzOjEzOiJwYWdlTGlzdFRpdGxlIjtOO3M6MTU6ImZpbHRlckJ5UmVsYXRlZCI7czoxOiIwIjtzOjE5OiJmaWx0ZXJCeUN1c3RvbVRvcGljIjtzOjE6IjAiO3M6MTY6ImZpbHRlckRhdGVPcHRpb24iO3M6MDoiIjtzOjE0OiJmaWx0ZXJEYXRlRGF5cyI7czoxOiIwIjtzOjE1OiJmaWx0ZXJEYXRlU3RhcnQiO047czoxMzoiZmlsdGVyRGF0ZUVuZCI7TjtzOjMwOiJyZWxhdGVkVG9waWNBdHRyaWJ1dGVLZXlIYW5kbGUiO3M6MDoiIjtzOjI5OiJjdXN0b21Ub3BpY0F0dHJpYnV0ZUtleUhhbmRsZSI7czowOiIiO3M6MjE6ImN1c3RvbVRvcGljVHJlZU5vZGVJRCI7czoxOiIwIjtzOjExOiJpbmNsdWRlTmFtZSI7czoxOiIxIjtzOjE4OiJpbmNsdWRlRGVzY3JpcHRpb24iO3M6MToiMSI7czoxMToiaW5jbHVkZURhdGUiO3M6MToiMCI7czoyMToiaW5jbHVkZUFsbERlc2NlbmRlbnRzIjtzOjE6IjAiO3M6ODoicGFnaW5hdGUiO3M6MToiMCI7czoxNDoiZGlzcGxheUFsaWFzZXMiO3M6MToiMCI7czoxNzoiaWdub3JlUGVybWlzc2lvbnMiO3M6MToiMCI7czoyMzoiZW5hYmxlRXh0ZXJuYWxGaWx0ZXJpbmciO3M6MToiMCI7czo0OiJwdElEIjtzOjE6IjgiO3M6NDoicGZJRCI7czoxOiIwIjtzOjE3OiJ0cnVuY2F0ZVN1bW1hcmllcyI7czoxOiIwIjtzOjE5OiJkaXNwbGF5RmVhdHVyZWRPbmx5IjtzOjE6IjEiO3M6MTY6Im5vUmVzdWx0c01lc3NhZ2UiO3M6MDoiIjtzOjE2OiJkaXNwbGF5VGh1bWJuYWlsIjtzOjE6IjEiO3M6MTM6InRydW5jYXRlQ2hhcnMiO3M6MToiMCI7fQ=='),
(72, '', '2021-08-23 11:16:11', '2021-08-23 11:16:11', NULL, '0', 5, 1, NULL),
(73, '', '2021-08-23 11:16:11', '2021-08-23 11:16:11', NULL, '0', 44, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6IjczIjtzOjk6IgAqAF90YWJsZSI7czoxNjoiYnRDb3JlQXJlYUxheW91dCI7czoxMDoiYXJMYXlvdXRJRCI7czoyOiIxMCI7fQ=='),
(74, '', '2021-08-23 11:16:11', '2021-08-23 11:16:11', NULL, '0', 1, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6Ijc0IjtzOjk6IgAqAF90YWJsZSI7czoxNDoiYnRDb250ZW50TG9jYWwiO3M6NzoiY29udGVudCI7czoyNToiPGg1PkxhdGVzdCBCbG9nIFBvc3Q8L2g1PiI7fQ=='),
(75, '', '2021-08-23 11:16:11', '2021-08-23 11:16:11', NULL, '0', 1, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6Ijc1IjtzOjk6IgAqAF90YWJsZSI7czoxNDoiYnRDb250ZW50TG9jYWwiO3M6NzoiY29udGVudCI7czozMDoiPGg1Pk5vdyBPcGVuIEZvciBCdXNpbmVzczwvaDU+Ijt9'),
(76, '', '2021-08-23 11:16:11', '2021-08-23 11:16:11', NULL, '0', 44, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6Ijc2IjtzOjk6IgAqAF90YWJsZSI7czoxNjoiYnRDb3JlQXJlYUxheW91dCI7czoxMDoiYXJMYXlvdXRJRCI7czoyOiIxMSI7fQ=='),
(77, '', '2021-08-23 11:16:11', '2021-08-23 11:16:11', NULL, '0', 10, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM0OntzOjM6ImJJRCI7czoyOiI3NyI7czo5OiIAKgBfdGFibGUiO3M6MTA6ImJ0UGFnZUxpc3QiO3M6MzoibnVtIjtzOjE6IjEiO3M6Nzoib3JkZXJCeSI7czoxMToiY2hyb25vX2Rlc2MiO3M6OToiY1BhcmVudElEIjtzOjE6IjAiO3M6NToiY1RoaXMiO3M6MToiMCI7czoxMToiY1RoaXNQYXJlbnQiO3M6MToiMCI7czoxNjoidXNlQnV0dG9uRm9yTGluayI7czoxOiIwIjtzOjE0OiJidXR0b25MaW5rVGV4dCI7czowOiIiO3M6MTM6InBhZ2VMaXN0VGl0bGUiO047czoxNToiZmlsdGVyQnlSZWxhdGVkIjtzOjE6IjAiO3M6MTk6ImZpbHRlckJ5Q3VzdG9tVG9waWMiO3M6MToiMCI7czoxNjoiZmlsdGVyRGF0ZU9wdGlvbiI7czowOiIiO3M6MTQ6ImZpbHRlckRhdGVEYXlzIjtzOjE6IjAiO3M6MTU6ImZpbHRlckRhdGVTdGFydCI7TjtzOjEzOiJmaWx0ZXJEYXRlRW5kIjtOO3M6MzA6InJlbGF0ZWRUb3BpY0F0dHJpYnV0ZUtleUhhbmRsZSI7czowOiIiO3M6Mjk6ImN1c3RvbVRvcGljQXR0cmlidXRlS2V5SGFuZGxlIjtzOjA6IiI7czoyMToiY3VzdG9tVG9waWNUcmVlTm9kZUlEIjtzOjE6IjAiO3M6MTE6ImluY2x1ZGVOYW1lIjtzOjE6IjAiO3M6MTg6ImluY2x1ZGVEZXNjcmlwdGlvbiI7czoxOiIwIjtzOjExOiJpbmNsdWRlRGF0ZSI7czoxOiIwIjtzOjIxOiJpbmNsdWRlQWxsRGVzY2VuZGVudHMiO3M6MToiMCI7czo4OiJwYWdpbmF0ZSI7czoxOiIwIjtzOjE0OiJkaXNwbGF5QWxpYXNlcyI7czoxOiIwIjtzOjE3OiJpZ25vcmVQZXJtaXNzaW9ucyI7czoxOiIwIjtzOjIzOiJlbmFibGVFeHRlcm5hbEZpbHRlcmluZyI7czoxOiIwIjtzOjQ6InB0SUQiO3M6MToiNiI7czo0OiJwZklEIjtzOjE6IjAiO3M6MTc6InRydW5jYXRlU3VtbWFyaWVzIjtzOjE6IjAiO3M6MTk6ImRpc3BsYXlGZWF0dXJlZE9ubHkiO3M6MToiMCI7czoxNjoibm9SZXN1bHRzTWVzc2FnZSI7czowOiIiO3M6MTY6ImRpc3BsYXlUaHVtYm5haWwiO3M6MToiMSI7czoxMzoidHJ1bmNhdGVDaGFycyI7czoxOiIwIjt9'),
(78, '', '2021-08-23 11:16:12', '2021-08-23 11:16:12', NULL, '0', 10, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM0OntzOjM6ImJJRCI7czoyOiI3OCI7czo5OiIAKgBfdGFibGUiO3M6MTA6ImJ0UGFnZUxpc3QiO3M6MzoibnVtIjtzOjE6IjEiO3M6Nzoib3JkZXJCeSI7czoxMToiY2hyb25vX2Rlc2MiO3M6OToiY1BhcmVudElEIjtzOjE6IjAiO3M6NToiY1RoaXMiO3M6MToiMCI7czoxMToiY1RoaXNQYXJlbnQiO3M6MToiMCI7czoxNjoidXNlQnV0dG9uRm9yTGluayI7czoxOiIwIjtzOjE0OiJidXR0b25MaW5rVGV4dCI7czowOiIiO3M6MTM6InBhZ2VMaXN0VGl0bGUiO047czoxNToiZmlsdGVyQnlSZWxhdGVkIjtzOjE6IjAiO3M6MTk6ImZpbHRlckJ5Q3VzdG9tVG9waWMiO3M6MToiMCI7czoxNjoiZmlsdGVyRGF0ZU9wdGlvbiI7czowOiIiO3M6MTQ6ImZpbHRlckRhdGVEYXlzIjtzOjE6IjAiO3M6MTU6ImZpbHRlckRhdGVTdGFydCI7TjtzOjEzOiJmaWx0ZXJEYXRlRW5kIjtOO3M6MzA6InJlbGF0ZWRUb3BpY0F0dHJpYnV0ZUtleUhhbmRsZSI7czowOiIiO3M6Mjk6ImN1c3RvbVRvcGljQXR0cmlidXRlS2V5SGFuZGxlIjtzOjA6IiI7czoyMToiY3VzdG9tVG9waWNUcmVlTm9kZUlEIjtzOjE6IjAiO3M6MTE6ImluY2x1ZGVOYW1lIjtzOjE6IjEiO3M6MTg6ImluY2x1ZGVEZXNjcmlwdGlvbiI7czoxOiIxIjtzOjExOiJpbmNsdWRlRGF0ZSI7czoxOiIwIjtzOjIxOiJpbmNsdWRlQWxsRGVzY2VuZGVudHMiO3M6MToiMCI7czo4OiJwYWdpbmF0ZSI7czoxOiIwIjtzOjE0OiJkaXNwbGF5QWxpYXNlcyI7czoxOiIwIjtzOjE3OiJpZ25vcmVQZXJtaXNzaW9ucyI7czoxOiIwIjtzOjIzOiJlbmFibGVFeHRlcm5hbEZpbHRlcmluZyI7czoxOiIwIjtzOjQ6InB0SUQiO3M6MToiNiI7czo0OiJwZklEIjtzOjE6IjAiO3M6MTc6InRydW5jYXRlU3VtbWFyaWVzIjtzOjE6IjAiO3M6MTk6ImRpc3BsYXlGZWF0dXJlZE9ubHkiO3M6MToiMCI7czoxNjoibm9SZXN1bHRzTWVzc2FnZSI7czowOiIiO3M6MTY6ImRpc3BsYXlUaHVtYm5haWwiO3M6MToiMCI7czoxMzoidHJ1bmNhdGVDaGFycyI7czoxOiIwIjt9'),
(79, '', '2021-08-23 11:16:12', '2021-08-23 11:16:12', NULL, '0', 1, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6Ijc5IjtzOjk6IgAqAF90YWJsZSI7czoxNDoiYnRDb250ZW50TG9jYWwiO3M6NzoiY29udGVudCI7czo2Njk6IgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPHA+ICA8c3BhbiBjbGFzcz0idGl0bGUtdGhpbiI+V2Ugc3BlY2lhbGl6ZSBpbiBtYWtpbmcgeW91ciBjb25jZXB0cyBhIHJlYWxpdHkuPC9zcGFuPiAgPC9wPiAgPHA+ICAgIFNlZCBjdXJzdXMgZmFjaWxpc2lzIGRpZ25pc3NpbS4gQWxpcXVhbSByaG9uY3VzIGVuaW0gZXQgcGVsbGVudGVzcXVlIHZhcml1cy4gTnVsbGEgc29kYWxlcyBuaWJoIGxvcmVtLCBzaXQgYW1ldCBpbXBlcmRpZXQgYXJjdSBjb21tb2RvIHNpdCBhbWV0LiBNYXVyaXMgc2VkIHNjZWxlcmlzcXVlIG5pc2wuIFV0IGF1Y3RvciBpcHN1bSB0ZWxsdXMsIHZlbCB2aXZlcnJhIG1hc3NhIGVsZW1lbnR1bSBzaXQgYW1ldC4gIDwvcD4gIDxwPiAgICBTZWQgYWRpcGlzY2luZyB0ZW1wdXMgc2VtIGV1IG1vbGVzdGllLiBBZW5lYW4gbGFvcmVldCBwcmV0aXVtIGFudGUgdml0YWUgdWx0cmljZXMuIEFlbmVhbiBldSBncmF2aWRhIG1hZ25hLCB2ZWwgYWxpcXVldCBtYWduYS4gSW4gYXVjdG9yIGNvbnZhbGxpcyBncmF2aWRhLjxicj4gIDwvcD4gIDxici8+ICA8cD4gIDxhIGhyZWY9IntDQ006Q0lEXzIwMH0iPjxzcGFuIGNsYXNzPSJidG4gYnRuLXN1Y2Nlc3MiPkNvbnRhY3QgVXMgVG9kYXk8L3NwYW4+PC9hPiAgPC9wPiI7fQ=='),
(80, '', '2021-08-23 11:16:12', '2021-08-23 11:16:12', NULL, '0', 1, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjI6IjgwIjtzOjk6IgAqAF90YWJsZSI7czoxNDoiYnRDb250ZW50TG9jYWwiO3M6NzoiY29udGVudCI7czoxNDY6IgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8cCBzdHlsZT0idGV4dC1hbGlnbjogY2VudGVyIj48c3BhbiBjbGFzcz0idGl0bGUtY2FwcyI+Q3VzdG9taXphYmxlIGZvb3RlciBhcmVhIHdpdGggYWNjZW50IGNsYXNzLjwvc3Bhbj48L3A+Ijt9'),
(176, '', '2021-08-23 22:44:57', '2021-08-23 22:44:57', NULL, '0', 1, 2, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtpOjE3NjtzOjk6IgAqAF90YWJsZSI7czoxNDoiYnRDb250ZW50TG9jYWwiO3M6NzoiY29udGVudCI7czozMzU6IjxwIHN0eWxlPSJwYWRkaW5nOiAxMDBweCAwIDI1MHB4IDA7IHRleHQtYWxpZ246Y2VudGVyOyI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTo2NHB4OyBmb250LXdlaWdodDpib2xkOyBjb2xvcjojZmZmOyI+VEhFIFdBWSBPRiA8c3BhbiBzdHlsZT0iY29sb3I6IzI4QUJFMyI+U1VDQ0VTUzwvc3Bhbj48L3NwYW4+PGJyIC8+DQo8c3BhbiBzdHlsZT0iZm9udC1zaXplOjI0cHg7IGNvbG9yOiNmZmY7IHRleHQtYWxpZ246Y2VudGVyOyI+QXBhYmlsYSBhbmRhIGRpIGxhbmRhIG1hc2FsYWgsIGFuZ2dhcGxhaCBpYW55YSBzYXR1IGNhYmFyYW4ga2VwYWRhIGRpcmkgYW5kYS48L3NwYW4+PC9wPg0KIjt9'),
(178, '', '2021-08-23 23:05:47', '2021-08-23 23:05:47', NULL, '0', 49, 2, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjI6e3M6MzoiYklEIjtpOjE3ODtzOjk6IgAqAF90YWJsZSI7czoyMzoibnNyX3NlY3Rpb25sYW5kaW5ncGFnZXMiO30='),
(179, '', '2021-08-23 23:07:00', '2021-08-23 23:11:04', '', '0', 1, 2, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtpOjE3OTtzOjk6IgAqAF90YWJsZSI7czoxNDoiYnRDb250ZW50TG9jYWwiO3M6NzoiY29udGVudCI7czozMzU6IjxwIHN0eWxlPSJwYWRkaW5nOiAxMDBweCAwIDI1MHB4IDA7IHRleHQtYWxpZ246Y2VudGVyOyI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTo2NHB4OyBmb250LXdlaWdodDpib2xkOyBjb2xvcjojZmZmOyI+VEhFIFdBWSBPRiA8c3BhbiBzdHlsZT0iY29sb3I6IzI4QUJFMyI+U1VDQ0VTUzwvc3Bhbj48L3NwYW4+PGJyIC8+DQo8c3BhbiBzdHlsZT0iZm9udC1zaXplOjI0cHg7IGNvbG9yOiNmZmY7IHRleHQtYWxpZ246Y2VudGVyOyI+QXBhYmlsYSBhbmRhIGRpIGxhbmRhIG1hc2FsYWgsIGFuZ2dhcGxhaCBpYW55YSBzYXR1IGNhYmFyYW4ga2VwYWRhIGRpcmkgYW5kYS48L3NwYW4+PC9wPg0KIjt9'),
(184, '', '2021-08-23 23:28:54', '2021-08-23 23:28:54', NULL, '1', 6, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjc6e3M6MzoiYklEIjtzOjM6IjE4NCI7czo5OiIAKgBfdGFibGUiO3M6OToiYnRGZWF0dXJlIjtzOjQ6Imljb24iO3M6MzoiZXllIjtzOjU6InRpdGxlIjtzOjEzOiJQaXhlbCBQZXJmZWN0IjtzOjk6InBhcmFncmFwaCI7czoxOTM6IjxwPlBlbGxlbnRlc3F1ZSB1bHRyaWNpZXMgbGlndWxhIHZlbCBuZXF1ZSBkaWN0dW0sIGV1IG1vbGxpcyB0b3J0b3IgYWRpcGlzY2luZy4gRXRpYW0gY29uZ3VlLCBlc3QgdmVsIHRpbmNpZHVudCB2ZXN0aWJ1bHVtLCBudW5jIG51bmMgcG9ydGEgbnVsbGEsIGF0IGFkaXBpc2NpbmcgbmVxdWUgdGVsbHVzIHF1aXMgdXJuYS4uLi48L3A+DQoiO3M6MTI6ImV4dGVybmFsTGluayI7czowOiIiO3M6MTU6ImludGVybmFsTGlua0NJRCI7aTowO30='),
(185, '', '2021-08-24 18:13:53', '2021-08-24 18:13:53', NULL, '1', 6, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjc6e3M6MzoiYklEIjtzOjM6IjE4NSI7czo5OiIAKgBfdGFibGUiO3M6OToiYnRGZWF0dXJlIjtzOjQ6Imljb24iO3M6MzoiZXllIjtzOjU6InRpdGxlIjtzOjEzOiJQaXhlbCBQZXJmZWN0IjtzOjk6InBhcmFncmFwaCI7czoyMTA6IjxwPjxzdHJvbmc+UGVsbGVudGVzcXVlIHVsdHJpY2llcyBsaWd1bGEgdmVsIG5lcXVlIGRpY3R1bSwgZXUgbW9sbGlzIHRvcnRvciBhZGlwaXNjaW5nLiBFdGlhbSBjb25ndWUsIGVzdCB2ZWwgdGluY2lkdW50IHZlc3RpYnVsdW0sIG51bmMgbnVuYyBwb3J0YSBudWxsYSwgYXQgYWRpcGlzY2luZyBuZXF1ZSB0ZWxsdXMgcXVpcyB1cm5hLi4uLjwvc3Ryb25nPjwvcD4NCiI7czoxMjoiZXh0ZXJuYWxMaW5rIjtzOjA6IiI7czoxNToiaW50ZXJuYWxMaW5rQ0lEIjtpOjA7fQ=='),
(186, '', '2021-08-24 19:03:22', '2021-08-24 19:03:22', NULL, '0', 1, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtpOjE4NjtzOjk6IgAqAF90YWJsZSI7czoxNDoiYnRDb250ZW50TG9jYWwiO3M6NzoiY29udGVudCI7czozMzU6IjxwIHN0eWxlPSJwYWRkaW5nOiAxMDBweCAwIDI1MHB4IDA7IHRleHQtYWxpZ246Y2VudGVyOyI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTo2NHB4OyBmb250LXdlaWdodDpib2xkOyBjb2xvcjojZmZmOyI+VEhFIFdBWSBPRiA8c3BhbiBzdHlsZT0iY29sb3I6IzI4QUJFMyI+U1VDQ0VTUzwvc3Bhbj48L3NwYW4+PGJyIC8+DQo8c3BhbiBzdHlsZT0iZm9udC1zaXplOjI0cHg7IGNvbG9yOiNmZmY7IHRleHQtYWxpZ246Y2VudGVyOyI+QXBhYmlsYSBhbmRhIGRpIGxhbmRhIG1hc2FsYWgsIGFuZ2dhcGxhaCBpYW55YSBzYXR1IGNhYmFyYW4ga2VwYWRhIGRpcmkgYW5kYS48L3NwYW4+PC9wPg0KIjt9'),
(187, '', '2021-08-24 19:04:02', '2021-08-24 19:04:02', NULL, '0', 49, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjI6e3M6MzoiYklEIjtpOjE4NztzOjk6IgAqAF90YWJsZSI7czoyMzoibnNyX3NlY3Rpb25sYW5kaW5ncGFnZXMiO30='),
(188, '', '2021-08-24 20:00:56', '2021-08-24 20:00:56', NULL, '0', 49, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjI6e3M6MzoiYklEIjtpOjE4ODtzOjk6IgAqAF90YWJsZSI7czoyMzoibnNyX3NlY3Rpb25sYW5kaW5ncGFnZXMiO30='),
(192, '', '2021-08-24 20:23:24', '2021-08-24 20:24:19', '', '0', 1, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtpOjE5MjtzOjk6IgAqAF90YWJsZSI7czoxNDoiYnRDb250ZW50TG9jYWwiO3M6NzoiY29udGVudCI7czozMzU6IjxwIHN0eWxlPSJwYWRkaW5nOiAxMDBweCAwIDI1MHB4IDA7IHRleHQtYWxpZ246Y2VudGVyOyI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZTo2NHB4OyBmb250LXdlaWdodDpib2xkOyBjb2xvcjojZmZmOyI+VEhFIFdBWSBPRiA8c3BhbiBzdHlsZT0iY29sb3I6IzI4QUJFMyI+U1VDQ0VTUzwvc3Bhbj48L3NwYW4+PGJyIC8+DQo8c3BhbiBzdHlsZT0iZm9udC1zaXplOjI0cHg7IGNvbG9yOiNmZmY7IHRleHQtYWxpZ246Y2VudGVyOyI+QXBhYmlsYSBhbmRhIGRpIGxhbmRhIG1hc2FsYWgsIGFuZ2dhcGxhaCBpYW55YSBzYXR1IGNhYmFyYW4ga2VwYWRhIGRpcmkgYW5kYS48L3NwYW4+PC9wPg0KIjt9'),
(193, '', '2021-08-24 20:48:10', '2021-08-24 20:48:10', NULL, '0', 49, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjI6e3M6MzoiYklEIjtpOjE5MztzOjk6IgAqAF90YWJsZSI7czoyMzoibnNyX3NlY3Rpb25sYW5kaW5ncGFnZXMiO30='),
(194, '', '2021-08-24 20:53:28', '2021-08-24 20:53:28', NULL, '0', 49, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjI6e3M6MzoiYklEIjtpOjE5NDtzOjk6IgAqAF90YWJsZSI7czoyMzoibnNyX3NlY3Rpb25sYW5kaW5ncGFnZXMiO30='),
(195, '', '2021-08-24 21:56:10', '2021-08-24 21:56:10', NULL, '0', 50, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjI6e3M6MzoiYklEIjtpOjE5NTtzOjk6IgAqAF90YWJsZSI7czoyMzoibnNyX3NlY3Rpb25sYW5kaW5ncGFnZXMiO30='),
(196, '', '2021-08-24 21:58:06', '2021-08-24 21:58:06', NULL, '0', 50, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjI6e3M6MzoiYklEIjtpOjE5NjtzOjk6IgAqAF90YWJsZSI7czoyMzoibnNyX3NlY3Rpb25sYW5kaW5ncGFnZXMiO30='),
(197, '', '2021-08-24 22:20:54', '2021-08-24 22:20:55', NULL, '1', 50, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjM6IjE5NyI7czo5OiIAKgBfdGFibGUiO3M6MjM6Im5zcl9zZWN0aW9ubGFuZGluZ3BhZ2VzIjtzOjE1OiJjU2VjdGlvbkxhbmRpbmciO3M6ODoiUHJvZHVjdHMiO30='),
(198, '', '2021-08-24 22:21:18', '2021-08-24 22:21:18', NULL, '1', 50, 1, 'TzozMjoiQ29uY3JldGVcQ29yZVxMZWdhY3lcQmxvY2tSZWNvcmQiOjM6e3M6MzoiYklEIjtzOjM6IjE5OCI7czo5OiIAKgBfdGFibGUiO3M6MjM6Im5zcl9zZWN0aW9ubGFuZGluZ3BhZ2VzIjtzOjE1OiJjU2VjdGlvbkxhbmRpbmciO3M6NDoiSG9tZSI7fQ==');

-- --------------------------------------------------------

--
-- Table structure for table `BlockTypePermissionBlockTypeAccessList`
--

CREATE TABLE `BlockTypePermissionBlockTypeAccessList` (
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `peID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `permission` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `BlockTypePermissionBlockTypeAccessList`
--

INSERT INTO `BlockTypePermissionBlockTypeAccessList` (`paID`, `peID`, `permission`) VALUES
(363, 1, 'C'),
(365, 1, 'C'),
(370, 1, 'C'),
(382, 1, 'C'),
(383, 1, 'C');

-- --------------------------------------------------------

--
-- Table structure for table `BlockTypePermissionBlockTypeAccessListCustom`
--

CREATE TABLE `BlockTypePermissionBlockTypeAccessListCustom` (
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `peID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `btID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `BlockTypePermissionBlockTypeAccessListCustom`
--

INSERT INTO `BlockTypePermissionBlockTypeAccessListCustom` (`paID`, `peID`, `btID`) VALUES
(363, 1, 1),
(363, 1, 9),
(363, 1, 24),
(363, 1, 25),
(363, 1, 32),
(363, 1, 34),
(363, 1, 49),
(365, 1, 1),
(365, 1, 25),
(365, 1, 26),
(365, 1, 27),
(365, 1, 29),
(365, 1, 32),
(365, 1, 34),
(365, 1, 49),
(370, 1, 1),
(370, 1, 25),
(370, 1, 26),
(370, 1, 27),
(370, 1, 29),
(370, 1, 32),
(370, 1, 34),
(370, 1, 49),
(382, 1, 1),
(382, 1, 25),
(382, 1, 26),
(382, 1, 27),
(382, 1, 29),
(382, 1, 32),
(382, 1, 34),
(382, 1, 49),
(383, 1, 1),
(383, 1, 24),
(383, 1, 25),
(383, 1, 26),
(383, 1, 27),
(383, 1, 29),
(383, 1, 32),
(383, 1, 34),
(383, 1, 35),
(383, 1, 50);

-- --------------------------------------------------------

--
-- Table structure for table `BlockTypes`
--

CREATE TABLE `BlockTypes` (
  `btIgnorePageThemeGridFrameworkContainer` tinyint(1) NOT NULL,
  `btID` int(11) NOT NULL,
  `btHandle` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `btName` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `btDescription` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `btCopyWhenPropagate` tinyint(1) NOT NULL,
  `btIncludeAll` tinyint(1) NOT NULL,
  `btIsInternal` tinyint(1) NOT NULL,
  `btSupportsInlineEdit` tinyint(1) NOT NULL,
  `btSupportsInlineAdd` tinyint(1) NOT NULL,
  `btDisplayOrder` int(11) NOT NULL,
  `btInterfaceHeight` int(11) NOT NULL,
  `btInterfaceWidth` int(11) NOT NULL,
  `pkgID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `BlockTypes`
--

INSERT INTO `BlockTypes` (`btIgnorePageThemeGridFrameworkContainer`, `btID`, `btHandle`, `btName`, `btDescription`, `btCopyWhenPropagate`, `btIncludeAll`, `btIsInternal`, `btSupportsInlineEdit`, `btSupportsInlineAdd`, `btDisplayOrder`, `btInterfaceHeight`, `btInterfaceWidth`, `pkgID`) VALUES
(0, 1, 'content', 'Content', 'HTML/WYSIWYG Editor Content.', 0, 0, 0, 1, 1, 1, 465, 600, 0),
(1, 2, 'html', 'HTML', 'For adding HTML by hand.', 0, 0, 0, 0, 0, 2, 500, 600, 0),
(0, 3, 'image', 'Image', 'Adds images and onstates from the library to pages.', 0, 0, 0, 0, 0, 3, 550, 400, 0),
(0, 4, 'file', 'File', 'Link to files stored in the asset library.', 0, 0, 0, 0, 0, 4, 320, 300, 0),
(1, 5, 'horizontal_rule', 'Horizontal Rule', 'Adds a thin hairline horizontal divider to the page.', 0, 0, 0, 0, 0, 5, 400, 400, 0),
(0, 6, 'feature', 'Feature', 'Displays an icon, a title, and a short paragraph description.', 0, 0, 0, 0, 0, 6, 520, 400, 0),
(0, 7, 'autonav', 'Auto-Nav', 'Creates navigation trees and sitemaps.', 0, 0, 0, 0, 0, 7, 525, 700, 0),
(0, 8, 'page_title', 'Page Title', 'Displays a Page\'s Title', 0, 0, 0, 0, 0, 8, 500, 470, 0),
(0, 9, 'faq', 'FAQ', 'Frequently Asked Questions Block', 0, 0, 0, 0, 0, 9, 465, 600, 0),
(0, 10, 'page_list', 'Page List', 'List pages based on type, area.', 0, 0, 0, 0, 0, 10, 525, 700, 0),
(0, 11, 'next_previous', 'Next & Previous Nav', 'Navigate through sibling pages.', 0, 0, 0, 0, 0, 11, 400, 430, 0),
(0, 12, 'date_navigation', 'Date Navigation', 'Displays a list of months to filter a page list by.', 0, 0, 0, 0, 0, 12, 450, 400, 0),
(0, 13, 'tags', 'Tags', 'List pages based on type, area.', 0, 0, 0, 0, 0, 13, 439, 450, 0),
(0, 14, 'topic_list', 'Topic List', 'Displays a list of your site\'s topics, allowing you to click on them to filter a page list.', 0, 0, 0, 0, 0, 14, 400, 400, 0),
(0, 15, 'rss_displayer', 'RSS Displayer', 'Fetch, parse and display the contents of an RSS or Atom feed.', 0, 0, 0, 0, 0, 15, 550, 400, 0),
(0, 16, 'switch_language', 'Switch Language', 'Adds a front-end language switcher to your website.', 0, 0, 0, 0, 0, 16, 150, 500, 0),
(0, 17, 'express_form', 'Form', 'Build simple forms and surveys.', 0, 0, 0, 0, 0, 17, 700, 640, 0),
(0, 18, 'search', 'Search', 'Add a search box to your site.', 0, 0, 0, 0, 0, 18, 420, 400, 0),
(0, 19, 'external_form', 'External Form', 'Include external forms in the filesystem and place them on pages.', 0, 0, 0, 0, 0, 19, 175, 420, 0),
(0, 20, 'express_entry_list', 'Express Entry List', 'Add a searchable Express entry list to a page.', 0, 0, 0, 0, 0, 20, 400, 640, 0),
(0, 21, 'express_entry_detail', 'Express Entry Detail', 'Add an Express entry detail display to a page.', 0, 0, 0, 0, 0, 21, 400, 640, 0),
(0, 22, 'survey', 'Survey', 'Provide a simple survey, along with results in a pie chart format.', 0, 0, 0, 0, 0, 22, 500, 500, 0),
(0, 23, 'core_conversation', 'Conversation', 'Displays conversations on a page.', 1, 0, 0, 0, 0, 23, 400, 450, 0),
(0, 24, 'social_links', 'Social Links', 'Allows users to add social icons to their website', 0, 0, 0, 0, 0, 24, 400, 400, 0),
(0, 25, 'testimonial', 'Testimonial', 'Displays a quote or paragraph next to biographical information and a person\'s picture.', 0, 0, 0, 0, 0, 25, 560, 450, 0),
(0, 26, 'share_this_page', 'Share This Page', 'Allows users to share this page with social networks.', 0, 0, 0, 0, 0, 26, 400, 400, 0),
(0, 27, 'calendar', 'Calendar', 'Displays a month view calendar on a page.', 0, 0, 0, 0, 0, 27, 475, 500, 0),
(0, 28, 'event_list', 'Event List', 'Displays a list of events from a calendar.', 0, 0, 0, 0, 0, 28, 340, 500, 0),
(0, 29, 'calendar_event', 'Calendar Event', 'Displays a calendar event on a page.', 0, 0, 0, 0, 0, 29, 400, 550, 0),
(0, 30, 'page_attribute_display', 'Page Attribute Display', 'Displays the value of a page attribute for the current page.', 0, 0, 0, 0, 0, 30, 365, 500, 0),
(1, 31, 'image_slider', 'Image Slider', 'Display your images and captions in an attractive slideshow format.', 0, 0, 0, 0, 0, 31, 550, 600, 0),
(0, 32, 'video', 'Video Player', 'Embeds uploaded video into a web page. Supports WebM, Ogg, and Quicktime/MPEG4 formats.', 0, 0, 0, 0, 0, 32, 440, 450, 0),
(0, 33, 'document_library', 'Document Library', 'Add a searchable document library to a page.', 0, 0, 0, 0, 0, 33, 400, 640, 0),
(0, 34, 'youtube', 'YouTube Video', 'Embeds a YouTube Video in your web page.', 0, 0, 0, 0, 0, 34, 490, 400, 0),
(0, 35, 'google_map', 'Google Map', 'Enter an address and a Google Map of that location will be placed in your page.', 0, 0, 0, 0, 0, 35, 550, 525, 0),
(0, 36, 'desktop_app_status', 'concrete5 Status Messages', 'Displays alerts about your concrete5 site and package updates.', 0, 0, 0, 0, 0, 36, 400, 400, 0),
(0, 37, 'desktop_site_activity', 'Site Activity', 'Displays a graph of recent activity on your site.', 0, 0, 0, 0, 0, 37, 560, 450, 0),
(0, 38, 'desktop_featured_addon', 'Dashboard Featured Add-On', 'Features an add-on from concrete5.org.', 0, 0, 0, 0, 0, 38, 100, 300, 0),
(0, 39, 'desktop_featured_theme', 'Dashboard Featured Theme', 'Features a theme from concrete5.org.', 0, 0, 0, 0, 0, 39, 100, 300, 0),
(0, 40, 'desktop_latest_form', 'Latest Form', 'Shows the latest form submission.', 0, 0, 0, 0, 0, 40, 400, 400, 0),
(0, 41, 'desktop_waiting_for_me', 'Waiting for Me', 'Displays workflow actions waiting for you.', 0, 0, 0, 0, 0, 41, 560, 450, 0),
(0, 42, 'desktop_draft_list', 'Draft List', 'Displays a list of all drafts.', 0, 0, 0, 0, 0, 42, 400, 400, 0),
(0, 43, 'desktop_newsflow_latest', 'Dashboard Newsflow Latest', 'Grabs the latest newsflow data from concrete5.org.', 0, 0, 0, 0, 0, 43, 400, 400, 0),
(0, 44, 'core_area_layout', 'Area Layout', 'Proxy block for area layouts.', 0, 0, 1, 1, 1, 0, 400, 400, 0),
(0, 45, 'core_page_type_composer_control_output', 'Composer Control', 'Proxy block for blocks that need to be output through composer.', 0, 0, 1, 0, 0, 0, 400, 400, 0),
(0, 46, 'core_scrapbook_display', 'Scrapbook Display', 'Proxy block for blocks pasted through the scrapbook.', 0, 0, 1, 0, 0, 0, 400, 400, 0),
(0, 47, 'core_stack_display', 'Stack Display', 'Proxy block for stacks added through the UI.', 0, 0, 1, 0, 0, 0, 400, 400, 0),
(0, 48, 'form', 'Legacy Form', 'Build simple forms and surveys.', 1, 0, 0, 0, 0, 44, 430, 420, 0),
(0, 50, 'landing_pages', 'Landing Pages', 'Add Landing Pages.', 0, 0, 0, 0, 0, 0, 100, 300, 5);

-- --------------------------------------------------------

--
-- Table structure for table `BlockTypeSetBlockTypes`
--

CREATE TABLE `BlockTypeSetBlockTypes` (
  `btID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `btsID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `displayOrder` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `BlockTypeSetBlockTypes`
--

INSERT INTO `BlockTypeSetBlockTypes` (`btID`, `btsID`, `displayOrder`) VALUES
(1, 1, 0),
(2, 1, 1),
(3, 1, 2),
(4, 1, 3),
(5, 1, 4),
(6, 1, 5),
(7, 2, 0),
(8, 2, 1),
(9, 2, 2),
(10, 2, 3),
(11, 2, 4),
(12, 2, 5),
(13, 2, 6),
(14, 2, 7),
(15, 2, 8),
(16, 2, 9),
(49, 2, 10),
(50, 2, 11),
(17, 3, 0),
(18, 3, 1),
(19, 3, 2),
(20, 4, 0),
(21, 4, 1),
(22, 5, 0),
(23, 5, 1),
(24, 5, 2),
(25, 5, 3),
(26, 5, 4),
(27, 6, 0),
(28, 6, 1),
(29, 6, 2),
(30, 7, 0),
(31, 7, 1),
(32, 7, 2),
(33, 7, 3),
(34, 7, 4),
(35, 7, 5),
(36, 8, 0),
(37, 8, 1),
(38, 8, 2),
(39, 8, 3),
(40, 8, 4),
(41, 8, 5),
(42, 8, 6),
(43, 8, 7);

-- --------------------------------------------------------

--
-- Table structure for table `BlockTypeSets`
--

CREATE TABLE `BlockTypeSets` (
  `btsID` int(10) UNSIGNED NOT NULL,
  `btsName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btsHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pkgID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `btsDisplayOrder` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `BlockTypeSets`
--

INSERT INTO `BlockTypeSets` (`btsID`, `btsName`, `btsHandle`, `pkgID`, `btsDisplayOrder`) VALUES
(1, 'Basic', 'basic', 0, 0),
(2, 'Navigation', 'navigation', 0, 0),
(3, 'Forms', 'form', 0, 0),
(4, 'Express', 'express', 0, 0),
(5, 'Social Networking', 'social', 0, 0),
(6, 'Calendar & Events', 'calendar', 0, 0),
(7, 'Multimedia', 'multimedia', 0, 0),
(8, 'Desktop', 'core_desktop', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `btCalendar`
--

CREATE TABLE `btCalendar` (
  `bID` int(10) UNSIGNED NOT NULL,
  `caID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `calendarAttributeKeyHandle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filterByTopicAttributeKeyID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `filterByTopicID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `viewTypes` longtext COLLATE utf8mb4_unicode_ci,
  `viewTypesOrder` longtext COLLATE utf8mb4_unicode_ci,
  `defaultView` longtext COLLATE utf8mb4_unicode_ci,
  `navLinks` int(11) DEFAULT NULL,
  `eventLimit` int(11) DEFAULT NULL,
  `lightboxProperties` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btCalendarEvent`
--

CREATE TABLE `btCalendarEvent` (
  `bID` int(10) UNSIGNED NOT NULL,
  `mode` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'S' COMMENT 'S = Specify, P = Page, R = Request',
  `calendarEventAttributeKeyHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `calendarID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `eventID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `displayEventAttributes` longtext COLLATE utf8mb4_unicode_ci,
  `enableLinkToPage` tinyint(1) DEFAULT '0',
  `displayEventName` tinyint(1) DEFAULT '0',
  `displayEventDate` tinyint(1) DEFAULT '0',
  `displayEventDescription` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btContentFile`
--

CREATE TABLE `btContentFile` (
  `bID` int(10) UNSIGNED NOT NULL,
  `fID` int(10) UNSIGNED DEFAULT NULL,
  `fileLinkText` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filePassword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `forceDownload` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btContentImage`
--

CREATE TABLE `btContentImage` (
  `bID` int(10) UNSIGNED NOT NULL,
  `fID` int(10) UNSIGNED DEFAULT '0',
  `fOnstateID` int(10) UNSIGNED DEFAULT '0',
  `cropImage` int(10) UNSIGNED DEFAULT '0',
  `maxWidth` int(10) UNSIGNED DEFAULT '0',
  `maxHeight` int(10) UNSIGNED DEFAULT '0',
  `externalLink` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `internalLinkCID` int(10) UNSIGNED DEFAULT '0',
  `fileLinkID` int(10) UNSIGNED DEFAULT '0',
  `openLinkInNewWindow` tinyint(1) NOT NULL DEFAULT '0',
  `altText` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btContentLocal`
--

CREATE TABLE `btContentLocal` (
  `bID` int(10) UNSIGNED NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `btContentLocal`
--

INSERT INTO `btContentLocal` (`bID`, `content`) VALUES
(32, '\n                                                    <p><a href="{CCM:CID_214}" style="background-color: rgb(255, 255, 255);"><i class="fa fa-arrow-left"></i> Back to Careers</a></p>'),
(33, '<h3>Department</h3>'),
(35, '<h3>Location</h3>'),
(37, '<h3>Job Information</h3>'),
(39, '\n                                                    <br/><br/>'),
(56, '\n                                    <p>1234 SE StreetView</p><p>Suite 301</p><p>Portland, OR 98101</p><p><a href="{CCM:CID_200}">View on Google Maps</a></p>'),
(57, '\n                                    <p>© 2018 Elemental Theme</p>'),
(58, '\n                                    \n                                    <p><a href="{CCM:CID_215}">FAQ / Help</a></p>\n                                    <p><a href="{CCM:CID_195}">Case Studies</a></p>\n                                    <p><a href="{CCM:CID_198}">Blog</a></p>\n                                    <p><a href="{CCM:CID_1}">Another Link</a></p>\n                                    '),
(59, '\n                                    <a href="{CCM:CID_1}" id="footer-site-title">Elemental</a>'),
(63, '\n                                    <a href="{CCM:CID_1}" id="header-site-title">Elemental</a>'),
(70, '\n                                    <p style="text-align: center"><span class="title-caps-bold">Presenting your Business has never been so easy</span></p><p style="text-align: center;">Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing.</p><p style="text-align: center;">Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna. </p>'),
(74, '<h5>Latest Blog Post</h5>'),
(75, '<h5>Now Open For Business</h5>'),
(79, '\n                                                    <p>  <span class="title-thin">We specialize in making your concepts a reality.</span>  </p>  <p>    Sed cursus facilisis dignissim. Aliquam rhoncus enim et pellentesque varius. Nulla sodales nibh lorem, sit amet imperdiet arcu commodo sit amet. Mauris sed scelerisque nisl. Ut auctor ipsum tellus, vel viverra massa elementum sit amet.  </p>  <p>    Sed adipiscing tempus sem eu molestie. Aenean laoreet pretium ante vitae ultrices. Aenean eu gravida magna, vel aliquet magna. In auctor convallis gravida.<br>  </p>  <br/>  <p>  <a href="{CCM:CID_200}"><span class="btn btn-success">Contact Us Today</span></a>  </p>'),
(80, '\n                                    <p style="text-align: center"><span class="title-caps">Customizable footer area with accent class.</span></p>'),
(176, '<p style="padding: 100px 0 250px 0; text-align:center;"><span style="font-size:64px; font-weight:bold; color:#fff;">THE WAY OF <span style="color:#28ABE3">SUCCESS</span></span><br />\r\n<span style="font-size:24px; color:#fff; text-align:center;">Apabila anda di landa masalah, anggaplah ianya satu cabaran kepada diri anda.</span></p>\r\n'),
(179, '<p style="padding: 100px 0 250px 0; text-align:center;"><span style="font-size:64px; font-weight:bold; color:#fff;">THE WAY OF <span style="color:#28ABE3">SUCCESS</span></span><br />\r\n<span style="font-size:24px; color:#fff; text-align:center;">Apabila anda di landa masalah, anggaplah ianya satu cabaran kepada diri anda.</span></p>\r\n'),
(186, '<p style="padding: 100px 0 250px 0; text-align:center;"><span style="font-size:64px; font-weight:bold; color:#fff;">THE WAY OF <span style="color:#28ABE3">SUCCESS</span></span><br />\r\n<span style="font-size:24px; color:#fff; text-align:center;">Apabila anda di landa masalah, anggaplah ianya satu cabaran kepada diri anda.</span></p>\r\n'),
(192, '<p style="padding: 100px 0 250px 0; text-align:center;"><span style="font-size:64px; font-weight:bold; color:#fff;">THE WAY OF <span style="color:#28ABE3">SUCCESS</span></span><br />\r\n<span style="font-size:24px; color:#fff; text-align:center;">Apabila anda di landa masalah, anggaplah ianya satu cabaran kepada diri anda.</span></p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `btCoreAreaLayout`
--

CREATE TABLE `btCoreAreaLayout` (
  `bID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `arLayoutID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `btCoreAreaLayout`
--

INSERT INTO `btCoreAreaLayout` (`bID`, `arLayoutID`) VALUES
(2, 1),
(6, 2),
(9, 3),
(14, 4),
(16, 5),
(18, 6),
(20, 7),
(49, 8),
(65, 9),
(73, 10),
(76, 11);

-- --------------------------------------------------------

--
-- Table structure for table `btCoreConversation`
--

CREATE TABLE `btCoreConversation` (
  `bID` int(10) UNSIGNED NOT NULL,
  `cnvID` int(11) DEFAULT NULL,
  `enablePosting` int(11) DEFAULT '1',
  `paginate` tinyint(1) NOT NULL DEFAULT '1',
  `itemsPerPage` smallint(5) UNSIGNED NOT NULL DEFAULT '50',
  `displayMode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'threaded',
  `orderBy` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'date_desc',
  `enableOrdering` tinyint(1) NOT NULL DEFAULT '1',
  `enableCommentRating` tinyint(1) NOT NULL DEFAULT '1',
  `enableTopCommentReviews` tinyint(1) NOT NULL DEFAULT '0',
  `displaySocialLinks` tinyint(1) NOT NULL DEFAULT '1',
  `reviewAggregateAttributeKey` int(11) DEFAULT NULL,
  `displayPostingForm` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'top',
  `addMessageLabel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `dateFormat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'default',
  `customDateFormat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `btCoreConversation`
--

INSERT INTO `btCoreConversation` (`bID`, `cnvID`, `enablePosting`, `paginate`, `itemsPerPage`, `displayMode`, `orderBy`, `enableOrdering`, `enableCommentRating`, `enableTopCommentReviews`, `displaySocialLinks`, `reviewAggregateAttributeKey`, `displayPostingForm`, `addMessageLabel`, `dateFormat`, `customDateFormat`) VALUES
(29, 1, 1, 1, 50, 'threaded', 'date_asc', 0, 1, 0, 0, NULL, 'top', 'Add Message', 'default', '');

-- --------------------------------------------------------

--
-- Table structure for table `btCorePageTypeComposerControlOutput`
--

CREATE TABLE `btCorePageTypeComposerControlOutput` (
  `bID` int(10) UNSIGNED NOT NULL,
  `ptComposerOutputControlID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `btCorePageTypeComposerControlOutput`
--

INSERT INTO `btCorePageTypeComposerControlOutput` (`bID`, `ptComposerOutputControlID`) VALUES
(23, 1),
(38, 2),
(41, 3),
(45, 4);

-- --------------------------------------------------------

--
-- Table structure for table `btCoreScrapbookDisplay`
--

CREATE TABLE `btCoreScrapbookDisplay` (
  `bID` int(10) UNSIGNED NOT NULL,
  `bOriginalID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btCoreStackDisplay`
--

CREATE TABLE `btCoreStackDisplay` (
  `bID` int(10) UNSIGNED NOT NULL,
  `stID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btDateNavigation`
--

CREATE TABLE `btDateNavigation` (
  `bID` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `filterByParent` tinyint(1) DEFAULT '0',
  `redirectToResults` tinyint(1) DEFAULT '0',
  `cParentID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cTargetID` int(10) UNSIGNED NOT NULL DEFAULT '0'COMMENT
) ;

--
-- Dumping data for table `btDateNavigation`
--

INSERT INTO `btDateNavigation` (`bID`, `title`, `filterByParent`, `redirectToResults`, `cParentID`, `cTargetID`, `ptID`) VALUES
(52, 'Archives', 1, 0, 198, 0, 6);

-- --------------------------------------------------------

--
-- Table structure for table `btDesktopDraftList`
--

CREATE TABLE `btDesktopDraftList` (
  `bID` int(10) UNSIGNED NOT NULL,
  `draftsPerPage` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `btDesktopDraftList`
--

INSERT INTO `btDesktopDraftList` (`bID`, `draftsPerPage`) VALUES
(17, 10),
(21, 10);

-- --------------------------------------------------------

--
-- Table structure for table `btDesktopNewsflowLatest`
--

CREATE TABLE `btDesktopNewsflowLatest` (
  `bID` int(10) UNSIGNED NOT NULL,
  `slot` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `btDesktopNewsflowLatest`
--

INSERT INTO `btDesktopNewsflowLatest` (`bID`, `slot`) VALUES
(10, 'A'),
(11, 'B'),
(12, 'C');

-- --------------------------------------------------------

--
-- Table structure for table `btDesktopSiteActivity`
--

CREATE TABLE `btDesktopSiteActivity` (
  `bID` int(10) UNSIGNED NOT NULL,
  `types` longtext COLLATE utf8mb4_unicode_ci COMMENT '(DC2Type:json_array)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `btDesktopSiteActivity`
--

INSERT INTO `btDesktopSiteActivity` (`bID`, `types`) VALUES
(5, '["form_submissions","survey_results","signups","conversation_messages","workflow"]');

-- --------------------------------------------------------

--
-- Table structure for table `btDocumentLibrary`
--

CREATE TABLE `btDocumentLibrary` (
  `bID` int(10) UNSIGNED NOT NULL,
  `setIds` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folderID` int(11) NOT NULL DEFAULT '0',
  `setMode` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `onlyCurrentUser` int(11) DEFAULT '0',
  `tags` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `viewProperties` longtext COLLATE utf8mb4_unicode_ci,
  `expandableProperties` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `searchProperties` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orderBy` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT 'title',
  `displayLimit` int(11) DEFAULT '20',
  `displayOrderDesc` tinyint(1) NOT NULL DEFAULT '0',
  `addFilesToSetID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `maxThumbWidth` int(11) DEFAULT '100',
  `maxThumbHeight` int(11) DEFAULT '150',
  `enableSearch` int(11) DEFAULT '0',
  `heightMode` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT 'auto',
  `downloadFileMethod` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT 'force',
  `fixedHeightSize` int(11) DEFAULT '0',
  `headerBackgroundColor` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `headerBackgroundColorActiveSort` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `headerTextColor` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowFileUploading` int(11) DEFAULT '0',
  `allowInPageFileManagement` int(11) DEFAULT '0',
  `tableName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `tableDescription` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `tableStriped` tinyint(1) DEFAULT '0',
  `rowBackgroundColorAlternate` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btEventList`
--

CREATE TABLE `btEventList` (
  `bID` int(10) UNSIGNED NOT NULL,
  `caID` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `calendarAttributeKeyHandle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `totalToRetrieve` smallint(5) UNSIGNED NOT NULL DEFAULT '10',
  `totalPerPage` smallint(5) UNSIGNED NOT NULL DEFAULT '10',
  `filterByTopicAttributeKeyID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `filterByTopicID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `filterByPageTopicAttributeKeyHandle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filterByFeatured` tinyint(1) NOT NULL DEFAULT '0',
  `eventListTitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkToPage` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btExpressEntryDetail`
--

CREATE TABLE `btExpressEntryDetail` (
  `bID` int(10) UNSIGNED NOT NULL,
  `exEntityID` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT AS `(DC2Type:guid)`,
  `exSpecificEntryID` int(10) UNSIGNED DEFAULT NULL,
  `exEntryAttributeKeyHandle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exFormID` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT AS `(DC2Type:guid)`,
  `entryMode` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT 'S'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btExpressEntryList`
--

CREATE TABLE `btExpressEntryList` (
  `bID` int(10) UNSIGNED NOT NULL,
  `exEntityID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detailPage` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `linkedProperties` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `searchProperties` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `searchAssociations` longtext COLLATE utf8mb4_unicode_ci,
  `columns` longtext COLLATE utf8mb4_unicode_ci,
  `filterFields` longtext COLLATE utf8mb4_unicode_ci,
  `displayLimit` int(11) DEFAULT '20',
  `enableSearch` int(11) DEFAULT '0',
  `enableKeywordSearch` int(11) DEFAULT '0',
  `headerBackgroundColor` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `headerBackgroundColorActiveSort` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `headerTextColor` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `tableName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `tableDescription` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `tableStriped` tinyint(1) DEFAULT '0',
  `rowBackgroundColorAlternate` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btExpressForm`
--

CREATE TABLE `btExpressForm` (
  `bID` int(10) UNSIGNED NOT NULL,
  `exFormID` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT AS `(DC2Type:guid)`,
  `submitLabel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'Submit',
  `thankyouMsg` text COLLATE utf8mb4_unicode_ci,
  `notifyMeOnSubmission` tinyint(1) NOT NULL DEFAULT '0',
  `recipientEmail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `displayCaptcha` int(11) DEFAULT '1',
  `storeFormSubmission` tinyint(1) DEFAULT '1',
  `redirectCID` int(11) DEFAULT '0',
  `replyToEmailControlID` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `addFilesToSet` int(11) DEFAULT '0',
  `addFilesToFolder` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btExternalForm`
--

CREATE TABLE `btExternalForm` (
  `bID` int(10) UNSIGNED NOT NULL,
  `filename` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btFaq`
--

CREATE TABLE `btFaq` (
  `bID` int(10) UNSIGNED NOT NULL,
  `blockTitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btFaqEntries`
--

CREATE TABLE `btFaqEntries` (
  `id` int(10) UNSIGNED NOT NULL,
  `bID` int(10) UNSIGNED DEFAULT NULL,
  `linkTitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sortOrder` int(11) DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btFeature`
--

CREATE TABLE `btFeature` (
  `bID` int(10) UNSIGNED NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paragraph` text COLLATE utf8mb4_unicode_ci,
  `externalLink` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `internalLinkCID` int(10) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `btFeature`
--

INSERT INTO `btFeature` (`bID`, `icon`, `title`, `paragraph`, `externalLink`, `internalLinkCID`) VALUES
(66, 'pencil', 'Easy to Edit', '\n                                                    Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna.', '', 0),
(67, 'eye', 'Pixel Perfect', '\n                                                    Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna.', '', 0),
(68, 'youtube-play', 'Media Rich', '\n                                                    Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna.', '', 0),
(184, 'eye', 'Pixel Perfect', '<p>Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna....</p>\r\n', '', 0),
(185, 'eye', 'Pixel Perfect', '<p><strong>Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna....</strong></p>\r\n', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `btForm`
--

CREATE TABLE `btForm` (
  `bID` int(10) UNSIGNED NOT NULL,
  `questionSetId` int(10) UNSIGNED DEFAULT '0',
  `surveyName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `submitText` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'Submit',
  `thankyouMsg` text COLLATE utf8mb4_unicode_ci,
  `notifyMeOnSubmission` tinyint(1) NOT NULL DEFAULT '0',
  `recipientEmail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `displayCaptcha` int(11) DEFAULT '1',
  `redirectCID` int(11) DEFAULT '0',
  `addFilesToSet` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btFormAnswers`
--

CREATE TABLE `btFormAnswers` (
  `aID` int(10) UNSIGNED NOT NULL,
  `asID` int(10) UNSIGNED DEFAULT '0',
  `msqID` int(10) UNSIGNED DEFAULT '0',
  `answer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `answerLong` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btFormAnswerSet`
--

CREATE TABLE `btFormAnswerSet` (
  `asID` int(10) UNSIGNED NOT NULL,
  `questionSetId` int(10) UNSIGNED DEFAULT '0',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `uID` int(10) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btFormQuestions`
--

CREATE TABLE `btFormQuestions` (
  `qID` int(10) UNSIGNED NOT NULL,
  `msqID` int(10) UNSIGNED DEFAULT '0',
  `bID` int(10) UNSIGNED DEFAULT '0',
  `questionSetId` int(10) UNSIGNED DEFAULT '0',
  `question` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `inputType` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `position` int(10) UNSIGNED DEFAULT '1000',
  `width` int(10) UNSIGNED DEFAULT '50',
  `height` int(10) UNSIGNED DEFAULT '3',
  `defaultDate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `required` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btGoogleMap`
--

CREATE TABLE `btGoogleMap` (
  `bID` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `zoom` smallint(6) DEFAULT NULL,
  `width` varchar(8) COLLATE utf8mb4_unicode_ci DEFAULT '100%',
  `height` varchar(8) COLLATE utf8mb4_unicode_ci DEFAULT '400px',
  `scrollwheel` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btImageSlider`
--

CREATE TABLE `btImageSlider` (
  `bID` int(10) UNSIGNED NOT NULL,
  `navigationType` int(10) UNSIGNED DEFAULT '0',
  `timeout` int(10) UNSIGNED DEFAULT NULL,
  `speed` int(10) UNSIGNED DEFAULT NULL,
  `noAnimate` int(10) UNSIGNED DEFAULT NULL,
  `pause` int(10) UNSIGNED DEFAULT NULL,
  `maxWidth` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `btImageSlider`
--

INSERT INTO `btImageSlider` (`bID`, `navigationType`, `timeout`, `speed`, `noAnimate`, `pause`, `maxWidth`) VALUES
(64, 1, 4000, 500, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `btImageSliderEntries`
--

CREATE TABLE `btImageSliderEntries` (
  `id` int(10) UNSIGNED NOT NULL,
  `bID` int(10) UNSIGNED DEFAULT NULL,
  `cID` int(10) UNSIGNED DEFAULT '0',
  `fID` int(10) UNSIGNED DEFAULT '0',
  `linkURL` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `internalLinkCID` int(10) UNSIGNED DEFAULT '0',
  `title` longtext COLLATE utf8mb4_unicode_ci,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `sortOrder` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `btImageSliderEntries`
--

INSERT INTO `btImageSliderEntries` (`id`, `bID`, `cID`, `fID`, `linkURL`, `internalLinkCID`, `title`, `description`, `sortOrder`) VALUES
(1, 64, 0, 13, '', 0, 'Stand Out on the Web', '\n                                    <p>Share your business with an impressive, yet minimal presentation. Let your customers understand your web presence through elegance and clarity.</p>', 0),
(2, 64, 0, 14, '', 0, 'A Simple Image Slider', '\n                                    <p>This image slider can have any content that you want in it.</p>', 1);

-- --------------------------------------------------------

--
-- Table structure for table `btNavigation`
--

CREATE TABLE `btNavigation` (
  `bID` int(10) UNSIGNED NOT NULL,
  `orderBy` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'alpha_asc',
  `displayPages` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'top' COMMENT 'was enum(''top'',''current'',''above'',''below'',''custom'')',
  `displayPagesCID` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `displayPagesIncludeSelf` tinyint(1) NOT NULL DEFAULT '0',
  `displaySubPages` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'none' COMMENT 'was enum(''none'',''all'',''relevant'',''relevant_breadcrumb'')',
  `displaySubPageLevels` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'none' COMMENT 'was enum(''all'',''none'',''enough'',''enough_plus1'',''custom'')',
  `displaySubPageLevelsNum` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `displayUnavailablePages` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `btNavigation`
--

INSERT INTO `btNavigation` (`bID`, `orderBy`, `displayPages`, `displayPagesCID`, `displayPagesIncludeSelf`, `displaySubPages`, `displaySubPageLevels`, `displaySubPageLevelsNum`, `displayUnavailablePages`) VALUES
(61, 'display_asc', 'top', 0, 0, 'all', 'custom', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `btNextPrevious`
--

CREATE TABLE `btNextPrevious` (
  `bID` int(10) UNSIGNED NOT NULL,
  `nextLabel` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `previousLabel` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parentLabel` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `loopSequence` int(11) DEFAULT '1',
  `orderBy` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT 'display_asc'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `btNextPrevious`
--

INSERT INTO `btNextPrevious` (`bID`, `nextLabel`, `previousLabel`, `parentLabel`, `loopSequence`, `orderBy`) VALUES
(24, 'Next Post', 'Last Post', '', 0, 'chrono_desc');

-- --------------------------------------------------------

--
-- Table structure for table `btPageAttributeDisplay`
--

CREATE TABLE `btPageAttributeDisplay` (
  `bID` int(10) UNSIGNED NOT NULL,
  `attributeHandle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attributeTitleText` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `displayTag` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dateFormat` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT 'div',
  `thumbnailHeight` int(10) UNSIGNED DEFAULT NULL,
  `thumbnailWidth` int(10) UNSIGNED DEFAULT NULL,
  `delimiter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `btPageAttributeDisplay`
--

INSERT INTO `btPageAttributeDisplay` (`bID`, `attributeHandle`, `attributeTitleText`, `displayTag`, `dateFormat`, `thumbnailHeight`, `thumbnailWidth`, `delimiter`) VALUES
(34, 'job_posting_department', '', 'p', 'm/d/y h:i:a', 250, 250, NULL),
(36, 'job_location', '', 'p', 'm/d/y h:i:a', 250, 250, NULL),
(42, 'project_client', 'Client:', 'div', 'm/d/y h:i:a', 250, 250, NULL),
(43, 'project_tasks', 'Task:', 'div', 'm/d/y h:i:a', 250, 250, NULL),
(44, 'project_skills', 'Skills:', 'div', 'm/d/y h:i:a', 250, 250, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `btPageList`
--

CREATE TABLE `btPageList` (
  `bID` int(10) UNSIGNED NOT NULL,
  `num` smallint(5) UNSIGNED NOT NULL,
  `orderBy` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT AS `Was enum, display_asc','display_desc','chrono_asc','chrono_desc','alpha_asc','alpha_desc','score_asc','score_desc'`,
  `cParentID` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `cThis` tinyint(1) NOT NULL DEFAULT '0',
  `cThisParent` tinyint(1) NOT NULL DEFAULT '0',
  `useButtonForLink` tinyint(1) NOT NULL DEFAULT '0',
  `buttonLinkText` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pageListTitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filterByRelated` tinyint(1) NOT NULL DEFAULT '0',
  `filterByCustomTopic` tinyint(1) NOT NULL DEFAULT '0',
  `filterDateOption` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT 'all' COMMENT '(''all'',''today'',''past'',''future'',''between'')',
  `filterDateDays` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `filterDateStart` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filterDateEnd` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `relatedTopicAttributeKeyHandle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customTopicAttributeKeyHandle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customTopicTreeNodeID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `includeName` tinyint(1) NOT NULL DEFAULT '1',
  `includeDescription` tinyint(1) NOT NULL DEFAULT '1',
  `includeDate` tinyint(1) NOT NULL DEFAULT '0',
  `includeAllDescendents` tinyint(1) NOT NULL DEFAULT '0',
  `paginate` tinyint(1) NOT NULL DEFAULT '0',
  `displayAliases` tinyint(1) NOT NULL DEFAULT '1',
  `ignorePermissions` tinyint(1) NOT NULL DEFAULT '0',
  `enableExternalFiltering` tinyint(1) NOT NULL DEFAULT '0',
  `ptID` smallint(5) UNSIGNED DEFAULT NULL,
  `pfID` int(11) DEFAULT '0',
  `truncateSummaries` int(11) DEFAULT '0',
  `displayFeaturedOnly` tinyint(1) DEFAULT '0',
  `noResultsMessage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `displayThumbnail` tinyint(1) DEFAULT '0',
  `truncateChars` int(11) DEFAULT '128'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `btPageList`
--

INSERT INTO `btPageList` (`bID`, `num`, `orderBy`, `cParentID`, `cThis`, `cThisParent`, `useButtonForLink`, `buttonLinkText`, `pageListTitle`, `filterByRelated`, `filterByCustomTopic`, `filterDateOption`, `filterDateDays`, `filterDateStart`, `filterDateEnd`, `relatedTopicAttributeKeyHandle`, `customTopicAttributeKeyHandle`, `customTopicTreeNodeID`, `includeName`, `includeDescription`, `includeDate`, `includeAllDescendents`, `paginate`, `displayAliases`, `ignorePermissions`, `enableExternalFiltering`, `ptID`, `pfID`, `truncateSummaries`, `displayFeaturedOnly`, `noResultsMessage`, `displayThumbnail`, `truncateChars`) VALUES
(27, 3, 'random', 198, 0, 0, 0, NULL, 'Related Posts', 0, 0, '', 0, NULL, NULL, '', '', 0, 1, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, NULL, 0, 0),
(31, 0, 'chrono_desc', 214, 0, 0, 0, NULL, 'Open Positions', 0, 0, '', 0, NULL, NULL, '', '', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0),
(47, 3, 'random', 0, 0, 0, 0, NULL, 'Related Projects', 0, 0, '', 0, NULL, NULL, '', '', 0, 1, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, '\n                                                    No related projects found.', 0, 0),
(50, 10, 'chrono_desc', 0, 0, 1, 0, '', NULL, 0, 0, '', 0, NULL, NULL, '', '', 0, 1, 1, 1, 1, 1, 0, 0, 1, 6, 1, 0, 0, '\n                                                                    No posts to this blog.', 0, 0),
(55, 0, 'chrono_desc', 0, 0, 0, 0, '', NULL, 0, 0, '', 0, NULL, NULL, '', '', 0, 1, 0, 0, 0, 1, 0, 0, 1, 8, 0, 0, 0, 'No projects found.', 1, 0),
(71, 3, 'chrono_desc', 0, 0, 0, 1, 'View Project', NULL, 0, 0, '', 0, NULL, NULL, '', '', 0, 1, 1, 0, 0, 0, 0, 0, 0, 8, 0, 0, 1, '', 1, 0),
(77, 1, 'chrono_desc', 0, 0, 0, 0, '', NULL, 0, 0, '', 0, NULL, NULL, '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, '', 1, 0),
(78, 1, 'chrono_desc', 0, 0, 0, 0, '', NULL, 0, 0, '', 0, NULL, NULL, '', '', 0, 1, 1, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `btPageTitle`
--

CREATE TABLE `btPageTitle` (
  `bID` int(10) UNSIGNED NOT NULL,
  `useCustomTitle` int(10) UNSIGNED DEFAULT '0',
  `useFilterTitle` int(10) UNSIGNED DEFAULT '0',
  `useFilterTopic` int(10) UNSIGNED DEFAULT '0',
  `useFilterTag` int(10) UNSIGNED DEFAULT '0',
  `useFilterDate` int(10) UNSIGNED DEFAULT '0',
  `topicTextFormat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tagTextFormat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dateTextFormat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filterDateFormat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `titleText` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `formatting` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `btPageTitle`
--

INSERT INTO `btPageTitle` (`bID`, `useCustomTitle`, `useFilterTitle`, `useFilterTopic`, `useFilterTag`, `useFilterDate`, `topicTextFormat`, `tagTextFormat`, `dateTextFormat`, `filterDateFormat`, `titleText`, `formatting`) VALUES
(22, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, '[Page Title]', NULL),
(30, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, '[Page Title]', NULL),
(40, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, '[Page Title]', NULL),
(48, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, '[Page Title]', NULL),
(53, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, '[Page Title]', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `btRssDisplay`
--

CREATE TABLE `btRssDisplay` (
  `bID` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dateFormat` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `itemsToDisplay` int(10) UNSIGNED DEFAULT '5',
  `showSummary` tinyint(1) NOT NULL DEFAULT '1',
  `launchInNewWindow` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `btRssDisplay`
--

INSERT INTO `btRssDisplay` (`bID`, `title`, `url`, `dateFormat`, `itemsToDisplay`, `showSummary`, `launchInNewWindow`) VALUES
(7, 'Tutorials', 'http://documentation.concrete5.org/rss/tutorials', '', 1, 1, 1),
(13, 'News from concrete5.org', 'http://www.concrete5.org/rss/blog', '', 3, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `btSearch`
--

CREATE TABLE `btSearch` (
  `bID` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `buttonText` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `baseSearchPath` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `search_all` tinyint(1) DEFAULT NULL,
  `allow_user_options` tinyint(1) DEFAULT NULL,
  `postTo_cID` int(10) UNSIGNED DEFAULT NULL,
  `resultsURL` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `btSearch`
--

INSERT INTO `btSearch` (`bID`, `title`, `buttonText`, `baseSearchPath`, `search_all`, `allow_user_options`, `postTo_cID`, `resultsURL`) VALUES
(62, '', '', '', 0, 0, 199, '');

-- --------------------------------------------------------

--
-- Table structure for table `btShareThisPage`
--

CREATE TABLE `btShareThisPage` (
  `btShareThisPageID` int(10) UNSIGNED NOT NULL,
  `bID` int(10) UNSIGNED DEFAULT '0',
  `service` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `displayOrder` int(10) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `btShareThisPage`
--

INSERT INTO `btShareThisPage` (`btShareThisPageID`, `bID`, `service`, `displayOrder`) VALUES
(1, 25, 'facebook', 0),
(2, 25, 'twitter', 1),
(3, 25, 'linkedin', 2),
(4, 25, 'email', 3);

-- --------------------------------------------------------

--
-- Table structure for table `btSocialLinks`
--

CREATE TABLE `btSocialLinks` (
  `btSocialLinkID` int(10) UNSIGNED NOT NULL,
  `bID` int(10) UNSIGNED DEFAULT '0',
  `slID` int(10) UNSIGNED DEFAULT '0',
  `displayOrder` int(10) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `btSocialLinks`
--

INSERT INTO `btSocialLinks` (`btSocialLinkID`, `bID`, `slID`, `displayOrder`) VALUES
(1, 60, 3, 0),
(2, 60, 2, 1),
(3, 60, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `btSurvey`
--

CREATE TABLE `btSurvey` (
  `bID` int(10) UNSIGNED NOT NULL,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `requiresRegistration` int(11) DEFAULT '0',
  `showResults` int(11) DEFAULT '0',
  `customMessage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btSurveyOptions`
--

CREATE TABLE `btSurveyOptions` (
  `optionID` int(10) UNSIGNED NOT NULL,
  `bID` int(11) DEFAULT NULL,
  `optionName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `displayOrder` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btSurveyResults`
--

CREATE TABLE `btSurveyResults` (
  `resultID` int(10) UNSIGNED NOT NULL,
  `optionID` int(10) UNSIGNED DEFAULT '0',
  `uID` int(10) UNSIGNED DEFAULT '0',
  `bID` int(11) DEFAULT NULL,
  `cID` int(11) DEFAULT NULL,
  `ipAddress` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btSwitchLanguage`
--

CREATE TABLE `btSwitchLanguage` (
  `bID` int(10) UNSIGNED NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btTags`
--

CREATE TABLE `btTags` (
  `bID` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `targetCID` int(11) DEFAULT NULL,
  `displayMode` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT 'page',
  `cloudCount` int(11) DEFAULT '10'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btTestimonial`
--

CREATE TABLE `btTestimonial` (
  `bID` int(10) UNSIGNED NOT NULL,
  `fID` int(10) UNSIGNED DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `companyURL` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paragraph` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btTopicList`
--

CREATE TABLE `btTopicList` (
  `bID` int(10) UNSIGNED NOT NULL,
  `mode` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'S' COMMENT 'S = Search, P = Page',
  `topicAttributeKeyHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicTreeID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cParentID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `btTopicList`
--

INSERT INTO `btTopicList` (`bID`, `mode`, `topicAttributeKeyHandle`, `topicTreeID`, `cParentID`, `title`) VALUES
(26, 'P', 'blog_entry_topics', 4, 198, 'Topics'),
(51, 'S', '', 4, 0, 'Topics'),
(54, 'S', '', 5, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `btVideo`
--

CREATE TABLE `btVideo` (
  `bID` int(10) UNSIGNED NOT NULL,
  `webmfID` int(10) UNSIGNED DEFAULT '0',
  `oggfID` int(10) UNSIGNED DEFAULT '0',
  `posterfID` int(10) UNSIGNED DEFAULT '0',
  `mp4fID` int(10) UNSIGNED DEFAULT '0',
  `videoSize` int(10) UNSIGNED DEFAULT '0',
  `width` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `btYouTube`
--

CREATE TABLE `btYouTube` (
  `bID` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `videoURL` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vHeight` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vWidth` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sizing` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `startTimeEnabled` tinyint(1) DEFAULT NULL,
  `startTime` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `noCookie` tinyint(1) DEFAULT NULL,
  `autoplay` tinyint(1) NOT NULL DEFAULT '0',
  `color` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controls` int(10) UNSIGNED DEFAULT NULL,
  `iv_load_policy` int(10) UNSIGNED DEFAULT NULL,
  `loopEnd` tinyint(1) NOT NULL DEFAULT '0',
  `modestbranding` tinyint(1) NOT NULL DEFAULT '0',
  `lazyLoad` tinyint(1) NOT NULL DEFAULT '0',
  `rel` tinyint(1) NOT NULL DEFAULT '0',
  `showCaptions` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `CalendarEventAttributeKeys`
--

CREATE TABLE `CalendarEventAttributeKeys` (
  `akID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `CalendarEventAttributeKeys`
--

INSERT INTO `CalendarEventAttributeKeys` (`akID`) VALUES
(26);

-- --------------------------------------------------------

--
-- Table structure for table `CalendarEventOccurrences`
--

CREATE TABLE `CalendarEventOccurrences` (
  `occurrenceID` int(10) UNSIGNED NOT NULL,
  `startTime` int(11) NOT NULL,
  `endTime` int(11) NOT NULL,
  `cancelled` tinyint(1) NOT NULL,
  `repetitionID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `CalendarEventRepetitions`
--

CREATE TABLE `CalendarEventRepetitions` (
  `repetitionID` int(10) UNSIGNED NOT NULL,
  `repetitionObject` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:object)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `CalendarEvents`
--

CREATE TABLE `CalendarEvents` (
  `eventID` int(10) UNSIGNED NOT NULL,
  `caID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `CalendarEventSearchIndexAttributes`
--

CREATE TABLE `CalendarEventSearchIndexAttributes` (
  `eventID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ak_event_categories` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `CalendarEventVersionAttributeValues`
--

CREATE TABLE `CalendarEventVersionAttributeValues` (
  `eventVersionID` int(10) UNSIGNED NOT NULL,
  `akID` int(10) UNSIGNED NOT NULL,
  `avID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `CalendarEventVersionOccurrences`
--

CREATE TABLE `CalendarEventVersionOccurrences` (
  `versionOccurrenceID` int(10) UNSIGNED NOT NULL,
  `eventVersionID` int(10) UNSIGNED DEFAULT NULL,
  `occurrenceID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `CalendarEventVersionRepetitions`
--

CREATE TABLE `CalendarEventVersionRepetitions` (
  `versionRepetitionID` int(10) UNSIGNED NOT NULL,
  `eventVersionID` int(10) UNSIGNED DEFAULT NULL,
  `repetitionID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `CalendarEventVersions`
--

CREATE TABLE `CalendarEventVersions` (
  `eventVersionID` int(10) UNSIGNED NOT NULL,
  `evDateAdded` datetime NOT NULL,
  `evActivateDateTime` datetime DEFAULT NULL,
  `evIsApproved` tinyint(1) NOT NULL,
  `evDescription` longtext COLLATE utf8mb4_unicode_ci,
  `evName` longtext COLLATE utf8mb4_unicode_ci,
  `evRelatedPageRelationType` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `eventID` int(10) UNSIGNED DEFAULT NULL,
  `uID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `CalendarEventWorkflowProgress`
--

CREATE TABLE `CalendarEventWorkflowProgress` (
  `wpID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `eventID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `CalendarPermissionAssignments`
--

CREATE TABLE `CalendarPermissionAssignments` (
  `pkID` int(10) UNSIGNED NOT NULL,
  `paID` int(10) UNSIGNED NOT NULL,
  `caID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `CalendarRelatedEvents`
--

CREATE TABLE `CalendarRelatedEvents` (
  `relatedEventID` int(10) UNSIGNED NOT NULL,
  `relationID` int(10) UNSIGNED NOT NULL,
  `relationType` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `eventID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Calendars`
--

CREATE TABLE `Calendars` (
  `caID` int(10) UNSIGNED NOT NULL,
  `caName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `caOverridePermissions` tinyint(1) NOT NULL DEFAULT '0',
  `eventPageAttributeKeyHandle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enableMoreDetails` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `eventPageParentID` int(10) UNSIGNED DEFAULT '0',
  `eventPageTypeID` int(10) UNSIGNED DEFAULT '0',
  `eventPageAssociatedID` int(10) UNSIGNED DEFAULT '0',
  `siteID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `CollectionAttributeKeys`
--

CREATE TABLE `CollectionAttributeKeys` (
  `akID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `CollectionAttributeKeys`
--

INSERT INTO `CollectionAttributeKeys` (`akID`) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12),
(13),
(20),
(21),
(22),
(23),
(24),
(25),
(27),
(28),
(29),
(35);

-- --------------------------------------------------------

--
-- Table structure for table `CollectionAttributeValues`
--

CREATE TABLE `CollectionAttributeValues` (
  `cID` int(10) UNSIGNED NOT NULL,
  `cvID` int(10) UNSIGNED NOT NULL,
  `akID` int(10) UNSIGNED NOT NULL,
  `avID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `CollectionAttributeValues`
--

INSERT INTO `CollectionAttributeValues` (`cID`, `cvID`, `akID`, `avID`) VALUES
(2, 1, 6, 1),
(3, 1, 3, 2),
(4, 1, 3, 3),
(5, 1, 3, 4),
(6, 1, 3, 5),
(8, 1, 3, 6),
(9, 1, 3, 7),
(10, 1, 3, 8),
(11, 1, 7, 9),
(11, 1, 3, 10),
(12, 1, 3, 11),
(13, 1, 3, 12),
(14, 1, 3, 13),
(15, 1, 3, 14),
(16, 1, 3, 15),
(17, 1, 3, 16),
(17, 1, 7, 17),
(18, 1, 3, 18),
(18, 1, 7, 19),
(20, 1, 3, 20),
(21, 1, 3, 21),
(23, 1, 3, 22),
(26, 1, 3, 23),
(27, 1, 3, 24),
(28, 1, 7, 25),
(28, 1, 12, 26),
(29, 1, 3, 27),
(30, 1, 3, 28),
(31, 1, 3, 29),
(33, 1, 3, 30),
(34, 1, 3, 31),
(34, 1, 7, 32),
(36, 1, 7, 33),
(37, 1, 7, 34),
(38, 1, 7, 35),
(39, 1, 7, 36),
(40, 1, 7, 37),
(41, 1, 7, 38),
(43, 1, 7, 39),
(44, 1, 3, 40),
(45, 1, 3, 41),
(46, 1, 3, 42),
(49, 1, 7, 43),
(49, 1, 12, 44),
(51, 1, 7, 45),
(51, 1, 12, 46),
(54, 1, 6, 47),
(56, 1, 3, 48),
(58, 1, 7, 49),
(58, 1, 12, 50),
(58, 1, 3, 51),
(59, 1, 3, 52),
(60, 1, 3, 53),
(61, 1, 3, 54),
(62, 1, 3, 55),
(63, 1, 3, 56),
(63, 1, 7, 57),
(64, 1, 3, 58),
(65, 1, 3, 59),
(66, 1, 3, 60),
(68, 1, 3, 61),
(253, 1, 3, 61),
(69, 1, 3, 62),
(70, 1, 3, 63),
(71, 1, 3, 64),
(72, 1, 3, 65),
(73, 1, 3, 66),
(74, 1, 3, 67),
(74, 1, 7, 68),
(75, 1, 3, 69),
(76, 1, 3, 70),
(76, 1, 7, 71),
(76, 1, 12, 72),
(77, 1, 3, 73),
(80, 1, 7, 74),
(80, 1, 12, 75),
(81, 1, 7, 76),
(81, 1, 12, 77),
(82, 1, 7, 78),
(82, 1, 12, 79),
(83, 1, 7, 80),
(83, 1, 12, 81),
(84, 1, 7, 82),
(84, 1, 12, 83),
(90, 1, 3, 84),
(96, 1, 3, 85),
(97, 1, 3, 86),
(98, 1, 3, 87),
(99, 1, 3, 88),
(100, 1, 3, 89),
(102, 1, 3, 90),
(103, 1, 3, 91),
(104, 1, 3, 92),
(105, 1, 7, 93),
(105, 1, 3, 94),
(106, 1, 3, 95),
(107, 1, 3, 96),
(108, 1, 3, 97),
(110, 1, 3, 98),
(111, 1, 3, 99),
(112, 1, 3, 100),
(114, 1, 3, 101),
(115, 1, 3, 102),
(119, 1, 3, 103),
(120, 1, 7, 104),
(121, 1, 7, 105),
(122, 1, 3, 106),
(123, 1, 3, 107),
(124, 1, 3, 108),
(125, 1, 3, 109),
(127, 1, 3, 110),
(128, 1, 3, 111),
(129, 1, 3, 112),
(130, 1, 3, 113),
(131, 1, 3, 114),
(134, 1, 3, 115),
(135, 1, 3, 116),
(136, 1, 3, 117),
(137, 1, 3, 118),
(138, 1, 3, 119),
(139, 1, 3, 120),
(140, 1, 3, 121),
(146, 1, 3, 122),
(147, 1, 3, 123),
(148, 1, 3, 124),
(149, 1, 3, 125),
(151, 1, 3, 126),
(152, 1, 3, 127),
(153, 1, 3, 128),
(154, 1, 3, 129),
(156, 1, 12, 130),
(157, 1, 3, 131),
(158, 1, 3, 132),
(159, 1, 3, 133),
(160, 1, 3, 134),
(161, 1, 3, 135),
(162, 1, 3, 136),
(163, 1, 3, 137),
(165, 1, 3, 138),
(167, 1, 3, 139),
(168, 1, 7, 140),
(168, 1, 12, 141),
(169, 1, 4, 142),
(169, 1, 5, 143),
(169, 1, 7, 144),
(171, 1, 6, 145),
(173, 1, 6, 146),
(176, 1, 6, 147),
(182, 1, 6, 148),
(183, 1, 4, 149),
(183, 1, 5, 150),
(183, 1, 7, 151),
(1, 1, 7, 184),
(1, 2, 7, 184),
(183, 2, 7, 256),
(169, 2, 7, 257),
(169, 3, 7, 258),
(17, 2, 3, 261),
(17, 2, 7, 262),
(18, 2, 3, 263),
(18, 2, 7, 264),
(169, 4, 7, 265),
(253, 2, 3, 268);

-- --------------------------------------------------------

--
-- Table structure for table `Collections`
--

CREATE TABLE `Collections` (
  `cID` int(10) UNSIGNED NOT NULL,
  `cDateAdded` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `cDateModified` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `cHandle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Collections`
--

INSERT INTO `Collections` (`cID`, `cDateAdded`, `cDateModified`, `cHandle`) VALUES
(1, '2021-08-23 11:10:17', '2021-08-24 22:46:43', NULL),
(2, '2021-08-23 11:13:24', '2021-08-23 11:13:24', 'dashboard'),
(3, '2021-08-23 11:13:24', '2021-08-23 11:13:24', 'sitemap'),
(4, '2021-08-23 11:13:25', '2021-08-23 11:13:25', 'full'),
(5, '2021-08-23 11:13:25', '2021-08-23 11:13:25', 'explore'),
(6, '2021-08-23 11:13:25', '2021-08-23 11:13:25', 'search'),
(7, '2021-08-23 11:13:25', '2021-08-23 11:13:25', 'files'),
(8, '2021-08-23 11:13:25', '2021-08-23 11:13:25', 'search'),
(9, '2021-08-23 11:13:25', '2021-08-23 11:13:25', 'attributes'),
(10, '2021-08-23 11:13:25', '2021-08-23 11:13:25', 'sets'),
(11, '2021-08-23 11:13:25', '2021-08-23 11:13:25', 'add_set'),
(12, '2021-08-23 11:13:25', '2021-08-23 11:13:26', 'users'),
(13, '2021-08-23 11:13:26', '2021-08-23 11:13:26', 'search'),
(14, '2021-08-23 11:13:26', '2021-08-23 11:13:26', 'groups'),
(15, '2021-08-23 11:13:26', '2021-08-23 11:13:26', 'message'),
(16, '2021-08-23 11:13:26', '2021-08-23 11:13:26', 'attributes'),
(17, '2021-08-23 11:13:26', '2021-08-23 17:56:22', 'add'),
(18, '2021-08-23 11:13:26', '2021-08-23 17:56:59', 'add_group'),
(19, '2021-08-23 11:13:26', '2021-08-23 11:13:26', 'bulkupdate'),
(20, '2021-08-23 11:13:26', '2021-08-23 11:13:26', 'group_sets'),
(21, '2021-08-23 11:13:27', '2021-08-23 11:13:27', 'points'),
(22, '2021-08-23 11:13:27', '2021-08-23 11:13:27', 'assign'),
(23, '2021-08-23 11:13:27', '2021-08-23 11:13:27', 'actions'),
(24, '2021-08-23 11:13:27', '2021-08-23 11:13:27', 'express'),
(25, '2021-08-23 11:13:27', '2021-08-23 11:13:27', 'entries'),
(26, '2021-08-23 11:13:27', '2021-08-23 11:13:27', 'reports'),
(27, '2021-08-23 11:13:27', '2021-08-23 11:13:27', 'forms'),
(28, '2021-08-23 11:13:27', '2021-08-23 11:13:27', 'legacy'),
(29, '2021-08-23 11:13:27', '2021-08-23 11:13:28', 'surveys'),
(30, '2021-08-23 11:13:28', '2021-08-23 11:13:28', 'logs'),
(31, '2021-08-23 11:13:28', '2021-08-23 11:13:28', 'page_changes'),
(32, '2021-08-23 11:13:28', '2021-08-23 11:13:28', 'pages'),
(33, '2021-08-23 11:13:28', '2021-08-23 11:13:28', 'themes'),
(34, '2021-08-23 11:13:28', '2021-08-23 11:13:28', 'inspect'),
(35, '2021-08-23 11:13:28', '2021-08-23 11:13:28', 'types'),
(36, '2021-08-23 11:13:28', '2021-08-23 11:13:28', 'organize'),
(37, '2021-08-23 11:13:28', '2021-08-23 11:13:28', 'add'),
(38, '2021-08-23 11:13:29', '2021-08-23 11:13:29', 'form'),
(39, '2021-08-23 11:13:29', '2021-08-23 11:13:29', 'output'),
(40, '2021-08-23 11:13:29', '2021-08-23 11:13:29', 'attributes'),
(41, '2021-08-23 11:13:29', '2021-08-23 11:13:29', 'permissions'),
(42, '2021-08-23 11:13:29', '2021-08-23 11:13:29', 'templates'),
(43, '2021-08-23 11:13:29', '2021-08-23 11:13:29', 'add'),
(44, '2021-08-23 11:13:29', '2021-08-23 11:13:29', 'attributes'),
(45, '2021-08-23 11:13:29', '2021-08-23 11:13:30', 'single'),
(46, '2021-08-23 11:13:30', '2021-08-23 11:13:30', 'feeds'),
(47, '2021-08-23 11:13:30', '2021-08-23 11:13:30', 'calendar'),
(48, '2021-08-23 11:13:30', '2021-08-23 11:13:30', 'events'),
(49, '2021-08-23 11:13:30', '2021-08-23 11:13:30', 'event_list'),
(50, '2021-08-23 11:13:30', '2021-08-23 11:13:30', 'add'),
(51, '2021-08-23 11:13:30', '2021-08-23 11:13:30', 'permissions'),
(52, '2021-08-23 11:13:30', '2021-08-23 11:13:30', 'attributes'),
(53, '2021-08-23 11:13:31', '2021-08-23 11:13:31', 'conversations'),
(54, '2021-08-23 11:13:31', '2021-08-23 11:13:31', 'messages'),
(55, '2021-08-23 11:13:31', '2021-08-23 11:13:31', 'blocks'),
(56, '2021-08-23 11:13:31', '2021-08-23 11:13:31', 'stacks'),
(57, '2021-08-23 11:13:31', '2021-08-23 11:13:31', 'permissions'),
(58, '2021-08-23 11:13:31', '2021-08-23 11:13:31', 'list'),
(59, '2021-08-23 11:13:31', '2021-08-23 11:13:31', 'types'),
(60, '2021-08-23 11:13:31', '2021-08-23 11:13:31', 'extend'),
(61, '2021-08-23 11:13:32', '2021-08-23 11:13:32', 'install'),
(62, '2021-08-23 11:13:32', '2021-08-23 11:13:32', 'update'),
(63, '2021-08-23 11:13:32', '2021-08-23 11:13:32', 'connect'),
(64, '2021-08-23 11:13:32', '2021-08-23 11:13:32', 'themes'),
(65, '2021-08-23 11:13:32', '2021-08-23 11:13:32', 'addons'),
(66, '2021-08-23 11:13:32', '2021-08-23 11:13:32', 'system'),
(67, '2021-08-23 11:13:32', '2021-08-23 11:13:32', 'basics'),
(68, '2021-08-23 11:13:32', '2021-08-23 11:13:32', 'name'),
(69, '2021-08-23 11:13:33', '2021-08-23 11:13:33', 'accessibility'),
(70, '2021-08-23 11:13:33', '2021-08-23 11:13:33', 'social'),
(71, '2021-08-23 11:13:33', '2021-08-23 11:13:33', 'icons'),
(72, '2021-08-23 11:13:33', '2021-08-23 11:13:33', 'editor'),
(73, '2021-08-23 11:13:33', '2021-08-23 11:13:33', 'multilingual'),
(74, '2021-08-23 11:13:33', '2021-08-23 11:13:33', 'update'),
(75, '2021-08-23 11:13:33', '2021-08-23 11:13:33', 'timezone'),
(76, '2021-08-23 11:13:33', '2021-08-23 11:13:34', 'attributes'),
(77, '2021-08-23 11:13:34', '2021-08-23 11:13:34', 'reset_edit_mode'),
(78, '2021-08-23 11:13:34', '2021-08-23 11:13:34', 'express'),
(79, '2021-08-23 11:13:34', '2021-08-23 11:13:34', 'entities'),
(80, '2021-08-23 11:13:34', '2021-08-23 11:13:34', 'attributes'),
(81, '2021-08-23 11:13:34', '2021-08-23 11:13:34', 'associations'),
(82, '2021-08-23 11:13:34', '2021-08-23 11:13:34', 'forms'),
(83, '2021-08-23 11:13:34', '2021-08-23 11:13:35', 'customize_search'),
(84, '2021-08-23 11:13:35', '2021-08-23 11:13:35', 'order_entries'),
(85, '2021-08-23 11:13:35', '2021-08-23 11:13:35', 'entries'),
(86, '2021-08-23 11:13:35', '2021-08-23 11:13:35', 'multisite'),
(87, '2021-08-23 11:13:35', '2021-08-23 11:13:35', 'sites'),
(88, '2021-08-23 11:13:35', '2021-08-23 11:13:35', 'types'),
(89, '2021-08-23 11:13:35', '2021-08-23 11:13:35', 'settings'),
(90, '2021-08-23 11:13:36', '2021-08-23 11:13:36', 'multilingual'),
(91, '2021-08-23 11:13:36', '2021-08-23 11:13:36', 'setup'),
(92, '2021-08-23 11:13:36', '2021-08-23 11:13:36', 'copy'),
(93, '2021-08-23 11:13:36', '2021-08-23 11:13:36', 'page_report'),
(94, '2021-08-23 11:13:36', '2021-08-23 11:13:36', 'translate_interface'),
(95, '2021-08-23 11:13:36', '2021-08-23 11:13:36', 'seo'),
(96, '2021-08-23 11:13:36', '2021-08-23 11:13:36', 'urls'),
(97, '2021-08-23 11:13:37', '2021-08-23 11:13:37', 'bulk'),
(98, '2021-08-23 11:13:37', '2021-08-23 11:13:37', 'codes'),
(99, '2021-08-23 11:13:37', '2021-08-23 11:13:37', 'excluded'),
(100, '2021-08-23 11:13:37', '2021-08-23 11:13:37', 'searchindex'),
(101, '2021-08-23 11:13:37', '2021-08-23 11:13:37', 'files'),
(102, '2021-08-23 11:13:37', '2021-08-23 11:13:37', 'filetypes'),
(103, '2021-08-23 11:13:37', '2021-08-23 11:13:37', 'permissions'),
(104, '2021-08-23 11:13:37', '2021-08-23 11:13:38', 'thumbnails'),
(105, '2021-08-23 11:13:38', '2021-08-23 11:13:38', 'options'),
(106, '2021-08-23 11:13:38', '2021-08-23 11:13:38', 'image_uploading'),
(107, '2021-08-23 11:13:38', '2021-08-23 11:13:38', 'storage'),
(108, '2021-08-23 11:13:38', '2021-08-23 11:13:38', 'export_options'),
(109, '2021-08-23 11:13:38', '2021-08-23 11:13:38', 'optimization'),
(110, '2021-08-23 11:13:38', '2021-08-23 11:13:38', 'cache'),
(111, '2021-08-23 11:13:39', '2021-08-23 11:13:39', 'clearcache'),
(112, '2021-08-23 11:13:39', '2021-08-23 11:13:39', 'jobs'),
(113, '2021-08-23 11:13:39', '2021-08-23 11:13:39', 'permissions'),
(114, '2021-08-23 11:13:39', '2021-08-23 11:13:39', 'site'),
(115, '2021-08-23 11:13:39', '2021-08-23 11:13:39', 'tasks'),
(116, '2021-08-23 11:13:39', '2021-08-23 11:13:39', 'users'),
(117, '2021-08-23 11:13:39', '2021-08-23 11:13:39', 'advanced'),
(118, '2021-08-23 11:13:40', '2021-08-23 11:13:40', 'workflows'),
(119, '2021-08-23 11:13:40', '2021-08-23 11:13:40', 'blacklist'),
(120, '2021-08-23 11:13:40', '2021-08-23 11:13:40', 'configure'),
(121, '2021-08-23 11:13:40', '2021-08-23 11:13:40', 'range'),
(122, '2021-08-23 11:13:40', '2021-08-23 11:13:40', 'captcha'),
(123, '2021-08-23 11:13:40', '2021-08-23 11:13:40', 'antispam'),
(124, '2021-08-23 11:13:40', '2021-08-23 11:13:41', 'maintenance'),
(125, '2021-08-23 11:13:41', '2021-08-23 11:13:41', 'trusted_proxies'),
(126, '2021-08-23 11:13:41', '2021-08-23 11:13:41', 'registration'),
(127, '2021-08-23 11:13:41', '2021-08-23 11:13:41', 'open'),
(128, '2021-08-23 11:13:41', '2021-08-23 11:13:41', 'postlogin'),
(129, '2021-08-23 11:13:41', '2021-08-23 11:13:41', 'profiles'),
(130, '2021-08-23 11:13:41', '2021-08-23 11:13:41', 'authentication'),
(131, '2021-08-23 11:13:42', '2021-08-23 11:13:42', 'global_password_reset'),
(132, '2021-08-23 11:13:42', '2021-08-23 11:13:42', 'notification'),
(133, '2021-08-23 11:13:42', '2021-08-23 11:13:42', 'deactivation'),
(134, '2021-08-23 11:13:42', '2021-08-23 11:13:42', 'automated_logout'),
(135, '2021-08-23 11:13:42', '2021-08-23 11:13:42', 'password_requirements'),
(136, '2021-08-23 11:13:42', '2021-08-23 11:13:42', 'mail'),
(137, '2021-08-23 11:13:42', '2021-08-23 11:13:43', 'method'),
(138, '2021-08-23 11:13:43', '2021-08-23 11:13:43', 'test'),
(139, '2021-08-23 11:13:43', '2021-08-23 11:13:43', 'importers'),
(140, '2021-08-23 11:13:43', '2021-08-23 11:13:43', 'addresses'),
(141, '2021-08-23 11:13:43', '2021-08-23 11:13:43', 'calendar'),
(142, '2021-08-23 11:13:43', '2021-08-23 11:13:43', 'settings'),
(143, '2021-08-23 11:13:43', '2021-08-23 11:13:44', 'colors'),
(144, '2021-08-23 11:13:44', '2021-08-23 11:13:44', 'permissions'),
(145, '2021-08-23 11:13:44', '2021-08-23 11:13:44', 'import'),
(146, '2021-08-23 11:13:44', '2021-08-23 11:13:44', 'conversations'),
(147, '2021-08-23 11:13:44', '2021-08-23 11:13:44', 'settings'),
(148, '2021-08-23 11:13:44', '2021-08-23 11:13:44', 'points'),
(149, '2021-08-23 11:13:44', '2021-08-23 11:13:45', 'bannedwords'),
(150, '2021-08-23 11:13:45', '2021-08-23 11:13:45', 'permissions'),
(151, '2021-08-23 11:13:45', '2021-08-23 11:13:45', 'attributes'),
(152, '2021-08-23 11:13:45', '2021-08-23 11:13:45', 'types'),
(153, '2021-08-23 11:13:45', '2021-08-23 11:13:45', 'sets'),
(154, '2021-08-23 11:13:45', '2021-08-23 11:13:45', 'topics'),
(155, '2021-08-23 11:13:45', '2021-08-23 11:13:46', 'add'),
(156, '2021-08-23 11:13:46', '2021-08-23 11:13:46', 'environment'),
(157, '2021-08-23 11:13:46', '2021-08-23 11:13:46', 'info'),
(158, '2021-08-23 11:13:46', '2021-08-23 11:13:46', 'debug'),
(159, '2021-08-23 11:13:46', '2021-08-23 11:13:46', 'logging'),
(160, '2021-08-23 11:13:46', '2021-08-23 11:13:46', 'proxy'),
(161, '2021-08-23 11:13:46', '2021-08-23 11:13:46', 'entities'),
(162, '2021-08-23 11:13:47', '2021-08-23 11:13:47', 'database_charset'),
(163, '2021-08-23 11:13:47', '2021-08-23 11:13:47', 'geolocation'),
(164, '2021-08-23 11:13:47', '2021-08-23 11:13:47', 'update'),
(165, '2021-08-23 11:13:47', '2021-08-23 11:13:47', 'update'),
(166, '2021-08-23 11:13:47', '2021-08-23 11:13:47', 'api'),
(167, '2021-08-23 11:13:47', '2021-08-23 11:13:48', 'settings'),
(168, '2021-08-23 11:13:48', '2021-08-23 11:13:48', 'integrations'),
(169, '2021-08-23 11:13:48', '2021-08-23 21:50:20', 'welcome'),
(170, '2021-08-23 11:13:50', '2021-08-23 11:13:50', 'me'),
(171, '2021-08-23 11:15:14', '2021-08-23 11:15:14', '!stacks'),
(172, '2021-08-23 11:15:14', '2021-08-23 11:15:14', 'page_not_found'),
(173, '2021-08-23 11:15:14', '2021-08-23 11:15:14', '!trash'),
(174, '2021-08-23 11:15:14', '2021-08-23 11:15:14', 'login'),
(175, '2021-08-23 11:15:14', '2021-08-23 11:15:14', 'register'),
(176, '2021-08-23 11:15:14', '2021-08-23 11:15:14', 'account'),
(177, '2021-08-23 11:15:14', '2021-08-23 11:15:14', 'edit_profile'),
(178, '2021-08-23 11:15:14', '2021-08-23 11:15:14', 'avatar'),
(179, '2021-08-23 11:15:15', '2021-08-23 11:15:15', 'messages'),
(180, '2021-08-23 11:15:15', '2021-08-23 11:15:15', 'page_forbidden'),
(181, '2021-08-23 11:15:15', '2021-08-23 11:15:15', 'download_file'),
(182, '2021-08-23 11:15:16', '2021-08-23 11:15:16', '!drafts'),
(183, '2021-08-23 11:15:16', '2021-08-23 16:36:13', 'desktop'),
(184, '2021-08-23 11:15:46', '2021-08-23 11:15:46', 'footer-contact'),
(185, '2021-08-23 11:15:47', '2021-08-23 11:15:47', 'footer-legal'),
(186, '2021-08-23 11:15:47', '2021-08-23 11:15:47', 'footer-navigation'),
(187, '2021-08-23 11:15:47', '2021-08-23 11:15:47', 'footer-site-title'),
(188, '2021-08-23 11:15:47', '2021-08-23 11:15:47', 'footer-social'),
(189, '2021-08-23 11:15:48', '2021-08-23 23:26:18', 'header-navigation'),
(190, '2021-08-23 11:15:48', '2021-08-23 23:26:18', 'header-search'),
(191, '2021-08-23 11:15:48', '2021-08-23 23:26:18', 'header-site-title'),
(192, '2021-08-23 11:15:58', '2021-08-23 11:15:58', NULL),
(194, '2021-08-23 11:15:58', '2021-08-23 11:15:58', NULL),
(197, '2021-08-23 11:15:59', '2021-08-23 11:15:59', NULL),
(202, '2021-08-23 11:15:59', '2021-08-23 11:15:59', NULL),
(209, '2021-08-23 11:16:01', '2021-08-23 11:16:01', NULL),
(216, '2021-08-23 11:16:02', '2021-08-23 11:16:02', NULL),
(219, '2021-08-23 11:16:03', '2021-08-23 11:16:03', NULL),
(220, '2021-08-23 11:16:03', '2021-08-23 11:16:03', NULL),
(221, '2021-08-23 11:16:03', '2021-08-23 11:16:03', NULL),
(225, '2021-08-23 15:24:32', '2021-08-23 15:24:32', 'adminlte-search'),
(226, '2021-08-23 15:24:33', '2021-08-23 15:24:33', 'adminlte-navigation'),
(227, '2021-08-23 15:24:33', '2021-08-23 15:24:33', 'title-header'),
(249, '2021-08-24 19:11:07', '2021-08-24 19:11:07', NULL),
(250, '2021-08-24 19:17:03', '2021-08-24 19:17:03', NULL),
(251, '2021-08-24 21:22:01', '2021-08-24 21:22:01', 'landing_pages'),
(252, '2021-08-24 21:25:50', '2021-08-24 21:25:50', NULL),
(253, '2021-08-24 23:21:08', '2021-08-24 23:21:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `CollectionSearchIndexAttributes`
--

CREATE TABLE `CollectionSearchIndexAttributes` (
  `cID` int(10) UNSIGNED NOT NULL,
  `ak_meta_title` longtext COLLATE utf8mb4_unicode_ci,
  `ak_meta_description` longtext COLLATE utf8mb4_unicode_ci,
  `ak_meta_keywords` longtext COLLATE utf8mb4_unicode_ci,
  `ak_desktop_priority` decimal(14,4) DEFAULT '0.0000',
  `ak_is_desktop` tinyint(1) DEFAULT '0',
  `ak_icon_dashboard` longtext COLLATE utf8mb4_unicode_ci,
  `ak_exclude_nav` tinyint(1) DEFAULT '0',
  `ak_exclude_page_list` tinyint(1) DEFAULT '0',
  `ak_header_extra_content` longtext COLLATE utf8mb4_unicode_ci,
  `ak_tags` longtext COLLATE utf8mb4_unicode_ci,
  `ak_is_featured` tinyint(1) DEFAULT '0',
  `ak_exclude_search_index` tinyint(1) DEFAULT '0',
  `ak_exclude_sitemapxml` tinyint(1) DEFAULT '0',
  `ak_job_posting_department` longtext COLLATE utf8mb4_unicode_ci,
  `ak_job_location` longtext COLLATE utf8mb4_unicode_ci,
  `ak_exclude_subpages_from_nav` tinyint(1) DEFAULT '0',
  `ak_thumbnail` int(11) DEFAULT '0',
  `ak_blog_entry_topics` longtext COLLATE utf8mb4_unicode_ci,
  `ak_project_topics` longtext COLLATE utf8mb4_unicode_ci,
  `ak_project_client` longtext COLLATE utf8mb4_unicode_ci,
  `ak_project_tasks` longtext COLLATE utf8mb4_unicode_ci,
  `ak_project_skills` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `CollectionSearchIndexAttributes`
--

INSERT INTO `CollectionSearchIndexAttributes` (`cID`, `ak_meta_title`, `ak_meta_description`, `ak_meta_keywords`, `ak_desktop_priority`, `ak_is_desktop`, `ak_icon_dashboard`, `ak_exclude_nav`, `ak_exclude_page_list`, `ak_header_extra_content`, `ak_tags`, `ak_is_featured`, `ak_exclude_search_index`, `ak_exclude_sitemapxml`, `ak_job_posting_department`, `ak_job_location`, `ak_exclude_subpages_from_nav`, `ak_thumbnail`, `ak_blog_entry_topics`, `ak_project_topics`, `ak_project_client`, `ak_project_tasks`, `ak_project_skills`) VALUES
(1, NULL, NULL, NULL, '0.0000', 0, NULL, NULL, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(2, NULL, NULL, NULL, '0.0000', 0, 'fa fa-th-large', 0, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(3, NULL, NULL, 'pages, add page, delete page, copy, move, alias', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(4, NULL, NULL, 'pages, add page, delete page, copy, move, alias', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(5, NULL, NULL, 'pages, add page, delete page, copy, move, alias, bulk', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(6, NULL, NULL, 'find page, search page, search, find, pages, sitemap', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(8, NULL, NULL, 'add file, delete file, copy, move, alias, resize, crop, rename, images, title, attribute', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(9, NULL, NULL, 'file, file attributes, title, attribute, description, rename', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(10, NULL, NULL, 'files, category, categories', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(11, NULL, NULL, 'new file set', '0.0000', 0, NULL, 1, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(12, NULL, NULL, 'users, groups, people, find, delete user, remove user, change password, password', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(13, NULL, NULL, 'find, search, people, delete user, remove user, change password, password', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(14, NULL, NULL, 'user, group, people, permissions, expire, badges', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(15, NULL, NULL, 'user, group, people, messages', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(16, NULL, NULL, 'user attributes, user data, gather data, registration data', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(17, NULL, NULL, 'new user, create', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(18, NULL, NULL, 'new user group, new group, group, create', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(20, NULL, NULL, 'group set', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(21, NULL, NULL, 'community, points, karma', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(23, NULL, NULL, 'action, community actions', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(26, NULL, NULL, 'forms, log, error, email, mysql, exception, survey', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(27, NULL, NULL, 'forms, questions, response, data', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(28, NULL, NULL, NULL, '0.0000', 0, NULL, 1, 0, NULL, NULL, 0, 1, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(29, NULL, NULL, 'questions, quiz, response', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(30, NULL, NULL, 'forms, log, error, email, mysql, exception, survey, history', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(31, NULL, NULL, 'changes, csv, report', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(33, NULL, NULL, 'new theme, theme, active theme, change theme, template, css', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(34, NULL, NULL, 'page types', '0.0000', 0, NULL, 1, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(36, NULL, NULL, NULL, '0.0000', 0, NULL, 1, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(37, NULL, NULL, NULL, '0.0000', 0, NULL, 1, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(38, NULL, NULL, NULL, '0.0000', 0, NULL, 1, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(39, NULL, NULL, NULL, '0.0000', 0, NULL, 1, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(40, NULL, NULL, NULL, '0.0000', 0, NULL, 1, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(41, NULL, NULL, NULL, '0.0000', 0, NULL, 1, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(43, NULL, NULL, NULL, '0.0000', 0, NULL, 1, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(44, NULL, NULL, 'page attributes, custom', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(45, NULL, NULL, 'single, page, custom, application', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(46, NULL, NULL, 'atom, rss, feed, syndication', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(49, NULL, NULL, NULL, '0.0000', 0, NULL, 1, 0, NULL, NULL, 0, 1, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(51, NULL, NULL, NULL, '0.0000', 0, NULL, 1, 0, NULL, NULL, 0, 1, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(54, NULL, NULL, NULL, '0.0000', 0, 'icon-bullhorn', 0, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(56, NULL, NULL, 'stacks, global areas, reusable content, scrapbook, copy, paste, paste block, copy block, site name, logo', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(58, NULL, NULL, 'edit stacks, view stacks, all stacks', '0.0000', 0, NULL, 1, 0, NULL, NULL, 0, 1, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(59, NULL, NULL, 'block, refresh, custom', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(60, NULL, NULL, 'add-on, addon, add on, package, app, ecommerce, discussions, forums, themes, templates, blocks', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(61, NULL, NULL, 'add-on, addon, ecommerce, install, discussions, forums, themes, templates, blocks', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(62, NULL, NULL, 'update, upgrade', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(63, NULL, NULL, 'concrete5.org, my account, marketplace', '0.0000', 0, NULL, 1, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(64, NULL, NULL, 'buy theme, new theme, marketplace, template', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(65, NULL, NULL, 'buy addon, buy add on, buy add-on, purchase addon, purchase add on, purchase add-on, find addon, new addon, marketplace', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(66, NULL, NULL, 'dashboard, configuration', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(68, NULL, NULL, 'website name, title', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(69, NULL, NULL, 'accessibility, easy mode', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(70, NULL, NULL, 'sharing, facebook, twitter', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(71, NULL, NULL, 'logo, favicon, iphone, icon, bookmark', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(72, NULL, NULL, 'tinymce, content block, fonts, editor, content, overlay', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(73, NULL, NULL, 'translate, translation, internationalization, multilingual', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(74, NULL, NULL, 'languages, update, gettext, translation, translate', '0.0000', 0, NULL, 1, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(75, NULL, NULL, 'timezone, profile, locale', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(76, NULL, NULL, 'site attributes', '0.0000', 0, NULL, 1, 0, NULL, NULL, 0, 1, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(77, NULL, NULL, 'checkin, check-in, check, force', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(80, NULL, NULL, NULL, '0.0000', 0, NULL, 1, 0, NULL, NULL, 0, 1, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(81, NULL, NULL, NULL, '0.0000', 0, NULL, 1, 0, NULL, NULL, 0, 1, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(82, NULL, NULL, NULL, '0.0000', 0, NULL, 1, 0, NULL, NULL, 0, 1, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(83, NULL, NULL, NULL, '0.0000', 0, NULL, 1, 0, NULL, NULL, 0, 1, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(84, NULL, NULL, NULL, '0.0000', 0, NULL, 1, 0, NULL, NULL, 0, 1, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(90, NULL, NULL, 'multilingual, localization, internationalization, i18n', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(96, NULL, NULL, 'vanity, pretty url, redirection, hostname, canonical, seo, pageview, view', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(97, NULL, NULL, 'bulk, seo, change keywords, engine, optimization, search', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(98, NULL, NULL, 'traffic, statistics, google analytics, quant, pageviews, hits', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(99, NULL, NULL, 'pretty, slug', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(100, NULL, NULL, 'configure search, site search, search option', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(102, NULL, NULL, 'security, files, media, extension, manager, upload', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(103, NULL, NULL, 'file options, file manager, upload, modify', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(104, NULL, NULL, 'images, picture, responsive, retina', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(105, NULL, NULL, 'thumbnail, format, png, jpg, jpeg, quality, compression, gd, imagick, imagemagick, transparency', '0.0000', 0, NULL, 1, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(106, NULL, NULL, 'uploading, upload, images, image, resizing, manager, exif, rotation, rotate, quality, compression, png, jpg, jpeg', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(107, NULL, NULL, 'security, alternate storage, hide files', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(108, NULL, NULL, 'files, export, csv, bom, encoding', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(110, NULL, NULL, 'cache option, change cache, override, turn on cache, turn off cache, no cache, page cache, caching', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(111, NULL, NULL, 'cache option, turn off cache, no cache, page cache, caching', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(112, NULL, NULL, 'index search, reindex search, build sitemap, sitemap.xml, clear old versions, page versions, remove old', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(114, NULL, NULL, 'editors, hide site, offline, private, public, access', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(115, NULL, NULL, 'security, actions, administrator, admin, package, marketplace, search', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(119, NULL, NULL, 'security, lock ip, lock out, block ip, address, restrict, access', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(120, NULL, NULL, NULL, '0.0000', 0, NULL, 1, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(121, NULL, NULL, NULL, '0.0000', 0, NULL, 1, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(122, NULL, NULL, 'security, registration', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(123, NULL, NULL, 'antispam, block spam, security', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(124, NULL, NULL, 'lock site, under construction, hide, hidden', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(125, NULL, NULL, 'trusted, proxy, proxies, ip, header, cloudflare', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(127, NULL, NULL, 'signup, new user, community, public registration, public, registration', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(128, NULL, NULL, 'profile, login, redirect, specific, dashboard, administrators', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(129, NULL, NULL, 'member profile, member page, community, forums, social, avatar', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(130, NULL, NULL, 'auth, authentication, types, oauth, facebook, login, registration', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(131, NULL, NULL, 'global, password, reset, change password, force, sign out', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(134, NULL, NULL, 'login, logout, user, agent, ip, change, security, session, invalidation, invalid', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(135, NULL, NULL, 'password, requirements, code, key, login, registration, security, nist', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(136, NULL, NULL, 'smtp, mail settings', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(137, NULL, NULL, 'email server, mail settings, mail configuration, external, internal', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(138, NULL, NULL, 'test smtp, test mail', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(139, NULL, NULL, 'email server, mail settings, mail configuration, private message, message system, import, email, message', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(140, NULL, NULL, 'mail settings, mail configuration, email, sender', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(146, NULL, NULL, 'conversations', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(147, NULL, NULL, 'conversations', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(148, NULL, NULL, 'conversations ratings, ratings, community, community points', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(149, NULL, NULL, 'conversations bad words, banned words, banned, bad words, bad, words, list', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(151, NULL, NULL, 'attribute configuration', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(152, NULL, NULL, 'attributes, types', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(153, NULL, NULL, 'attributes, sets', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(154, NULL, NULL, 'topics, tags, taxonomy', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(156, NULL, NULL, NULL, '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 1, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(157, NULL, NULL, 'overrides, system info, debug, support, help', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(158, NULL, NULL, 'errors, exceptions, develop, support, help', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(159, NULL, NULL, 'email, logging, logs, smtp, pop, errors, mysql, log', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(160, NULL, NULL, 'network, proxy server', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(161, NULL, NULL, 'database, entities, doctrine, orm', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(162, NULL, NULL, 'database, character set, charset, collation, utf8', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(163, NULL, NULL, 'geolocation, ip, address, country, nation, place, locate', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(165, NULL, NULL, 'upgrade, new version, update', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(167, NULL, NULL, 'API, programming, public, app', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(168, NULL, NULL, NULL, '0.0000', 0, NULL, 1, 0, NULL, NULL, 0, 1, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(169, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(171, NULL, NULL, NULL, '0.0000', 0, 'fa fa-th', 0, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(173, NULL, NULL, NULL, '0.0000', 0, 'fa fa-trash-o', 0, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(176, NULL, NULL, NULL, '0.0000', 0, 'fa fa-briefcase', 0, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(182, NULL, NULL, NULL, '0.0000', 0, 'fa fa-edit', 0, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(183, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL),
(253, NULL, NULL, 'website name, title', '0.0000', 0, NULL, 0, 0, NULL, NULL, 0, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `CollectionVersionAreaStyles`
--

CREATE TABLE `CollectionVersionAreaStyles` (
  `cID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cvID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `issID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `CollectionVersionAreaStyles`
--

INSERT INTO `CollectionVersionAreaStyles` (`cID`, `cvID`, `arHandle`, `issID`) VALUES
(1, 1, 'Page Footer', 15),
(1, 2, 'Page Footer', 15),
(1, 3, 'Page Footer', 15),
(1, 4, 'Page Footer', 15),
(1, 5, 'Page Footer', 15),
(1, 6, 'Page Footer', 15),
(1, 7, 'Page Footer', 15),
(1, 8, 'Page Footer', 15),
(1, 9, 'Page Footer', 15),
(1, 10, 'Page Footer', 15),
(1, 11, 'Page Footer', 15),
(1, 12, 'Page Footer', 15),
(1, 13, 'Page Footer', 15),
(1, 14, 'Page Footer', 15),
(1, 15, 'Page Footer', 15),
(1, 16, 'Page Footer', 15),
(1, 17, 'Page Footer', 15),
(1, 18, 'Page Footer', 15),
(1, 11, '1', 30),
(1, 12, '1', 30),
(1, 13, '1', 30);

-- --------------------------------------------------------

--
-- Table structure for table `CollectionVersionBlocks`
--

CREATE TABLE `CollectionVersionBlocks` (
  `cID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cvID` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `bID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cbRelationID` int(10) UNSIGNED DEFAULT '0',
  `cbDisplayOrder` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `isOriginal` tinyint(1) NOT NULL DEFAULT '0',
  `cbOverrideAreaPermissions` tinyint(1) NOT NULL DEFAULT '0',
  `cbIncludeAll` tinyint(1) NOT NULL DEFAULT '0',
  `cbOverrideBlockTypeCacheSettings` tinyint(1) NOT NULL DEFAULT '0',
  `cbOverrideBlockTypeContainerSettings` tinyint(1) NOT NULL DEFAULT '0',
  `cbEnableBlockContainer` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `CollectionVersionBlocks`
--

INSERT INTO `CollectionVersionBlocks` (`cID`, `cvID`, `bID`, `arHandle`, `cbRelationID`, `cbDisplayOrder`, `isOriginal`, `cbOverrideAreaPermissions`, `cbIncludeAll`, `cbOverrideBlockTypeCacheSettings`, `cbOverrideBlockTypeContainerSettings`, `cbEnableBlockContainer`) VALUES
(1, 1, 64, 'Main', 64, 0, 1, 0, 0, 0, 0, 0),
(1, 1, 65, 'Main', 65, 1, 1, 0, 0, 0, 0, 0),
(1, 1, 66, 'Main : 15', 66, 0, 1, 0, 0, 0, 0, 0),
(1, 1, 67, 'Main : 16', 67, 0, 1, 0, 0, 0, 0, 0),
(1, 1, 68, 'Main : 17', 68, 0, 1, 0, 0, 0, 0, 0),
(1, 1, 69, 'Main', 69, 2, 1, 0, 0, 0, 0, 0),
(1, 1, 70, 'Main', 70, 3, 1, 0, 0, 0, 0, 0),
(1, 1, 71, 'Main', 71, 4, 1, 0, 0, 0, 0, 0),
(1, 1, 72, 'Main', 72, 5, 1, 0, 0, 0, 0, 0),
(1, 1, 73, 'Main', 73, 6, 1, 0, 0, 0, 0, 0),
(1, 1, 74, 'Main : 18', 74, 0, 1, 0, 0, 0, 0, 0),
(1, 1, 75, 'Main : 19', 75, 0, 1, 0, 0, 0, 0, 0),
(1, 1, 76, 'Main', 76, 7, 1, 0, 0, 0, 0, 0),
(1, 1, 77, 'Main : 20', 77, 0, 1, 0, 0, 0, 0, 0),
(1, 1, 78, 'Main : 21', 78, 0, 1, 0, 0, 0, 0, 0),
(1, 1, 79, 'Main : 22', 79, 0, 1, 0, 0, 0, 0, 0),
(1, 1, 80, 'Page Footer', 80, 0, 1, 0, 0, 0, 0, 0),
(1, 2, 64, 'Main', 64, 0, 0, 0, 0, 0, 0, 0),
(1, 2, 65, 'Main', 65, 1, 0, 0, 0, 0, 0, 0),
(1, 2, 66, 'Main : 15', 66, 0, 0, 0, 0, 0, 0, 0),
(1, 2, 67, 'Main : 16', 67, 0, 0, 0, 0, 0, 0, 0),
(1, 2, 68, 'Main : 17', 68, 0, 0, 0, 0, 0, 0, 0),
(1, 2, 69, 'Main', 69, 2, 0, 0, 0, 0, 0, 0),
(1, 2, 70, 'Main', 70, 3, 0, 0, 0, 0, 0, 0),
(1, 2, 71, 'Main', 71, 4, 0, 0, 0, 0, 0, 0),
(1, 2, 72, 'Main', 72, 5, 0, 0, 0, 0, 0, 0),
(1, 2, 73, 'Main', 73, 6, 0, 0, 0, 0, 0, 0),
(1, 2, 74, 'Main : 18', 74, 0, 0, 0, 0, 0, 0, 0),
(1, 2, 75, 'Main : 19', 75, 0, 0, 0, 0, 0, 0, 0),
(1, 2, 76, 'Main', 76, 7, 0, 0, 0, 0, 0, 0),
(1, 2, 77, 'Main : 20', 77, 0, 0, 0, 0, 0, 0, 0),
(1, 2, 78, 'Main : 21', 78, 0, 0, 0, 0, 0, 0, 0),
(1, 2, 79, 'Main : 22', 79, 0, 0, 0, 0, 0, 0, 0),
(1, 2, 80, 'Page Footer', 80, 0, 0, 0, 0, 0, 0, 0),
(1, 3, 64, 'Main', 64, 0, 0, 0, 0, 0, 0, 0),
(1, 3, 65, 'Main', 65, 1, 0, 0, 0, 0, 0, 0),
(1, 3, 66, 'Main : 15', 66, 0, 0, 0, 0, 0, 0, 0),
(1, 3, 67, 'Main : 16', 67, 0, 0, 0, 0, 0, 0, 0),
(1, 3, 68, 'Main : 17', 68, 0, 0, 0, 0, 0, 0, 0),
(1, 3, 69, 'Main', 69, 2, 0, 0, 0, 0, 0, 0),
(1, 3, 70, 'Main', 70, 3, 0, 0, 0, 0, 0, 0),
(1, 3, 71, 'Main', 71, 4, 0, 0, 0, 0, 0, 0),
(1, 3, 72, 'Main', 72, 5, 0, 0, 0, 0, 0, 0),
(1, 3, 73, 'Main', 73, 6, 0, 0, 0, 0, 0, 0),
(1, 3, 74, 'Main : 18', 74, 0, 0, 0, 0, 0, 0, 0),
(1, 3, 75, 'Main : 19', 75, 0, 0, 0, 0, 0, 0, 0),
(1, 3, 76, 'Main', 76, 7, 0, 0, 0, 0, 0, 0),
(1, 3, 77, 'Main : 20', 77, 0, 0, 0, 0, 0, 0, 0),
(1, 3, 78, 'Main : 21', 78, 0, 0, 0, 0, 0, 0, 0),
(1, 3, 79, 'Main : 22', 79, 0, 0, 0, 0, 0, 0, 0),
(1, 3, 80, 'Page Footer', 80, 0, 0, 0, 0, 0, 0, 0),
(1, 4, 64, 'Main', 64, 0, 0, 0, 0, 0, 0, 0),
(1, 4, 65, 'Main', 65, 1, 0, 0, 0, 0, 0, 0),
(1, 4, 66, 'Main : 15', 66, 0, 0, 0, 0, 0, 0, 0),
(1, 4, 67, 'Main : 16', 67, 0, 0, 0, 0, 0, 0, 0),
(1, 4, 68, 'Main : 17', 68, 0, 0, 0, 0, 0, 0, 0),
(1, 4, 69, 'Main', 69, 2, 0, 0, 0, 0, 0, 0),
(1, 4, 70, 'Main', 70, 3, 0, 0, 0, 0, 0, 0),
(1, 4, 71, 'Main', 71, 4, 0, 0, 0, 0, 0, 0),
(1, 4, 72, 'Main', 72, 5, 0, 0, 0, 0, 0, 0),
(1, 4, 73, 'Main', 73, 6, 0, 0, 0, 0, 0, 0),
(1, 4, 74, 'Main : 18', 74, 0, 0, 0, 0, 0, 0, 0),
(1, 4, 75, 'Main : 19', 75, 0, 0, 0, 0, 0, 0, 0),
(1, 4, 76, 'Main', 76, 7, 0, 0, 0, 0, 0, 0),
(1, 4, 77, 'Main : 20', 77, 0, 0, 0, 0, 0, 0, 0),
(1, 4, 78, 'Main : 21', 78, 0, 0, 0, 0, 0, 0, 0),
(1, 4, 79, 'Main : 22', 79, 0, 0, 0, 0, 0, 0, 0),
(1, 4, 80, 'Page Footer', 80, 0, 0, 0, 0, 0, 0, 0),
(1, 5, 64, 'Main', 64, 2, 0, 0, 0, 0, 0, 0),
(1, 5, 65, 'Main', 65, 3, 0, 0, 0, 0, 0, 0),
(1, 5, 66, 'Main : 15', 66, 0, 0, 0, 0, 0, 0, 0),
(1, 5, 67, 'Main : 16', 67, 0, 0, 0, 0, 0, 0, 0),
(1, 5, 68, 'Main : 17', 68, 0, 0, 0, 0, 0, 0, 0),
(1, 5, 69, 'Main', 69, 4, 0, 0, 0, 0, 0, 0),
(1, 5, 70, 'Main', 70, 5, 0, 0, 0, 0, 0, 0),
(1, 5, 71, 'Main', 71, 6, 0, 0, 0, 0, 0, 0),
(1, 5, 72, 'Main', 72, 7, 0, 0, 0, 0, 0, 0),
(1, 5, 73, 'Main', 73, 8, 0, 0, 0, 0, 0, 0),
(1, 5, 74, 'Main : 18', 74, 0, 0, 0, 0, 0, 0, 0),
(1, 5, 75, 'Main : 19', 75, 0, 0, 0, 0, 0, 0, 0),
(1, 5, 76, 'Main', 76, 9, 0, 0, 0, 0, 0, 0),
(1, 5, 77, 'Main : 20', 77, 0, 0, 0, 0, 0, 0, 0),
(1, 5, 78, 'Main : 21', 78, 0, 0, 0, 0, 0, 0, 0),
(1, 5, 79, 'Main : 22', 79, 0, 0, 0, 0, 0, 0, 0),
(1, 5, 80, 'Page Footer', 80, 0, 0, 0, 0, 0, 0, 0),
(1, 5, 178, 'Main', 81, 0, 1, 0, 0, 0, 0, 0),
(1, 5, 179, 'Main', 82, 1, 1, 0, 0, 0, 0, 0),
(1, 6, 64, 'Main', 64, 1, 0, 0, 0, 0, 0, 0),
(1, 6, 65, 'Main', 65, 2, 0, 0, 0, 0, 0, 0),
(1, 6, 66, 'Main : 15', 66, 0, 0, 0, 0, 0, 0, 0),
(1, 6, 67, 'Main : 16', 67, 0, 0, 0, 0, 0, 0, 0),
(1, 6, 68, 'Main : 17', 68, 0, 0, 0, 0, 0, 0, 0),
(1, 6, 69, 'Main', 69, 3, 0, 0, 0, 0, 0, 0),
(1, 6, 70, 'Main', 70, 4, 0, 0, 0, 0, 0, 0),
(1, 6, 71, 'Main', 71, 5, 0, 0, 0, 0, 0, 0),
(1, 6, 72, 'Main', 72, 6, 0, 0, 0, 0, 0, 0),
(1, 6, 73, 'Main', 73, 7, 0, 0, 0, 0, 0, 0),
(1, 6, 74, 'Main : 18', 74, 0, 0, 0, 0, 0, 0, 0),
(1, 6, 75, 'Main : 19', 75, 0, 0, 0, 0, 0, 0, 0),
(1, 6, 76, 'Main', 76, 8, 0, 0, 0, 0, 0, 0),
(1, 6, 77, 'Main : 20', 77, 0, 0, 0, 0, 0, 0, 0),
(1, 6, 78, 'Main : 21', 78, 0, 0, 0, 0, 0, 0, 0),
(1, 6, 79, 'Main : 22', 79, 0, 0, 0, 0, 0, 0, 0),
(1, 6, 80, 'Page Footer', 80, 0, 0, 0, 0, 0, 0, 0),
(1, 6, 179, 'Main', 82, 0, 0, 0, 0, 0, 0, 0),
(1, 7, 64, 'Main', 64, 1, 0, 1, 0, 0, 0, 0),
(1, 7, 65, 'Main', 65, 2, 0, 0, 0, 0, 0, 0),
(1, 7, 66, 'Main : 15', 66, 0, 0, 0, 0, 0, 0, 0),
(1, 7, 67, 'Main : 16', 67, 0, 0, 0, 0, 0, 0, 0),
(1, 7, 68, 'Main : 17', 68, 0, 0, 0, 0, 0, 0, 0),
(1, 7, 69, 'Main', 69, 3, 0, 0, 0, 0, 0, 0),
(1, 7, 70, 'Main', 70, 4, 0, 0, 0, 0, 0, 0),
(1, 7, 71, 'Main', 71, 5, 0, 0, 0, 0, 0, 0),
(1, 7, 72, 'Main', 72, 6, 0, 0, 0, 0, 0, 0),
(1, 7, 73, 'Main', 73, 7, 0, 0, 0, 0, 0, 0),
(1, 7, 74, 'Main : 18', 74, 0, 0, 0, 0, 0, 0, 0),
(1, 7, 75, 'Main : 19', 75, 0, 0, 0, 0, 0, 0, 0),
(1, 7, 76, 'Main', 76, 8, 0, 0, 0, 0, 0, 0),
(1, 7, 77, 'Main : 20', 77, 0, 0, 0, 0, 0, 0, 0),
(1, 7, 78, 'Main : 21', 78, 0, 0, 0, 0, 0, 0, 0),
(1, 7, 79, 'Main : 22', 79, 0, 0, 0, 0, 0, 0, 0),
(1, 7, 80, 'Page Footer', 80, 0, 0, 0, 0, 0, 0, 0),
(1, 7, 179, 'Main', 82, 0, 0, 0, 0, 0, 0, 0),
(1, 8, 64, 'Main', 64, 1, 0, 1, 0, 0, 0, 0),
(1, 8, 65, 'Main', 65, 2, 0, 0, 0, 0, 0, 0),
(1, 8, 66, 'Main : 15', 66, 0, 0, 0, 0, 0, 0, 0),
(1, 8, 67, 'Main : 16', 67, 0, 0, 0, 0, 0, 0, 0),
(1, 8, 68, 'Main : 17', 68, 0, 0, 0, 0, 0, 0, 0),
(1, 8, 69, 'Main', 69, 3, 0, 0, 0, 0, 0, 0),
(1, 8, 70, 'Main', 70, 4, 0, 0, 0, 0, 0, 0),
(1, 8, 71, 'Main', 71, 5, 0, 0, 0, 0, 0, 0),
(1, 8, 72, 'Main', 72, 6, 0, 0, 0, 0, 0, 0),
(1, 8, 73, 'Main', 73, 7, 0, 0, 0, 0, 0, 0),
(1, 8, 74, 'Main : 18', 74, 0, 0, 0, 0, 0, 0, 0),
(1, 8, 75, 'Main : 19', 75, 0, 0, 0, 0, 0, 0, 0),
(1, 8, 76, 'Main', 76, 8, 0, 0, 0, 0, 0, 0),
(1, 8, 77, 'Main : 20', 77, 0, 0, 0, 0, 0, 0, 0),
(1, 8, 78, 'Main : 21', 78, 0, 0, 0, 0, 0, 0, 0),
(1, 8, 79, 'Main : 22', 79, 0, 0, 0, 0, 0, 0, 0),
(1, 8, 80, 'Page Footer', 80, 0, 0, 0, 0, 0, 0, 0),
(1, 8, 179, 'Main', 82, 0, 0, 0, 0, 0, 0, 0),
(1, 9, 64, 'Main', 64, 1, 0, 1, 0, 0, 0, 0),
(1, 9, 65, 'Main', 65, 2, 0, 0, 0, 0, 0, 0),
(1, 9, 66, 'Main : 15', 66, 0, 0, 0, 0, 0, 0, 0),
(1, 9, 68, 'Main : 17', 68, 0, 0, 0, 0, 0, 0, 0),
(1, 9, 69, 'Main', 69, 3, 0, 0, 0, 0, 0, 0),
(1, 9, 70, 'Main', 70, 4, 0, 0, 0, 0, 0, 0),
(1, 9, 71, 'Main', 71, 5, 0, 0, 0, 0, 0, 0),
(1, 9, 72, 'Main', 72, 6, 0, 0, 0, 0, 0, 0),
(1, 9, 73, 'Main', 73, 7, 0, 0, 0, 0, 0, 0),
(1, 9, 74, 'Main : 18', 74, 0, 0, 0, 0, 0, 0, 0),
(1, 9, 75, 'Main : 19', 75, 0, 0, 0, 0, 0, 0, 0),
(1, 9, 76, 'Main', 76, 8, 0, 0, 0, 0, 0, 0),
(1, 9, 77, 'Main : 20', 77, 0, 0, 0, 0, 0, 0, 0),
(1, 9, 78, 'Main : 21', 78, 0, 0, 0, 0, 0, 0, 0),
(1, 9, 79, 'Main : 22', 79, 0, 0, 0, 0, 0, 0, 0),
(1, 9, 80, 'Page Footer', 80, 0, 0, 0, 0, 0, 0, 0),
(1, 9, 179, 'Main', 82, 0, 0, 0, 0, 0, 0, 0),
(1, 9, 184, 'Main : 16', 67, 0, 1, 0, 0, 0, 0, 0),
(1, 10, 64, 'Main', 64, 1, 0, 1, 0, 0, 0, 0),
(1, 10, 65, 'Main', 65, 2, 0, 0, 0, 0, 0, 0),
(1, 10, 66, 'Main : 15', 66, 0, 0, 0, 0, 0, 0, 0),
(1, 10, 68, 'Main : 17', 68, 0, 0, 0, 0, 0, 0, 0),
(1, 10, 69, 'Main', 69, 3, 0, 0, 0, 0, 0, 0),
(1, 10, 70, 'Main', 70, 4, 0, 0, 0, 0, 0, 0),
(1, 10, 71, 'Main', 71, 5, 0, 0, 0, 0, 0, 0),
(1, 10, 72, 'Main', 72, 6, 0, 0, 0, 0, 0, 0),
(1, 10, 73, 'Main', 73, 7, 0, 0, 0, 0, 0, 0),
(1, 10, 74, 'Main : 18', 74, 0, 0, 0, 0, 0, 0, 0),
(1, 10, 75, 'Main : 19', 75, 0, 0, 0, 0, 0, 0, 0),
(1, 10, 76, 'Main', 76, 8, 0, 0, 0, 0, 0, 0),
(1, 10, 77, 'Main : 20', 77, 0, 0, 0, 0, 0, 0, 0),
(1, 10, 78, 'Main : 21', 78, 0, 0, 0, 0, 0, 0, 0),
(1, 10, 79, 'Main : 22', 79, 0, 0, 0, 0, 0, 0, 0),
(1, 10, 80, 'Page Footer', 80, 0, 0, 0, 0, 0, 0, 0),
(1, 10, 179, 'Main', 82, 0, 0, 0, 0, 0, 0, 0),
(1, 10, 185, 'Main : 16', 67, 0, 1, 0, 0, 0, 0, 0),
(1, 11, 64, 'Main', 64, 1, 0, 1, 0, 0, 0, 0),
(1, 11, 65, 'Main', 65, 2, 0, 0, 0, 0, 0, 0),
(1, 11, 66, 'Main : 15', 66, 0, 0, 0, 0, 0, 0, 0),
(1, 11, 68, 'Main : 17', 68, 0, 0, 0, 0, 0, 0, 0),
(1, 11, 69, 'Main', 69, 3, 0, 0, 0, 0, 0, 0),
(1, 11, 70, 'Main', 70, 4, 0, 0, 0, 0, 0, 0),
(1, 11, 71, 'Main', 71, 5, 0, 0, 0, 0, 0, 0),
(1, 11, 72, 'Main', 72, 6, 0, 0, 0, 0, 0, 0),
(1, 11, 73, 'Main', 73, 7, 0, 0, 0, 0, 0, 0),
(1, 11, 74, 'Main : 18', 74, 0, 0, 0, 0, 0, 0, 0),
(1, 11, 75, 'Main : 19', 75, 0, 0, 0, 0, 0, 0, 0),
(1, 11, 76, 'Main', 76, 8, 0, 0, 0, 0, 0, 0),
(1, 11, 77, 'Main : 20', 77, 0, 0, 0, 0, 0, 0, 0),
(1, 11, 78, 'Main : 21', 78, 0, 0, 0, 0, 0, 0, 0),
(1, 11, 79, 'Main : 22', 79, 0, 0, 0, 0, 0, 0, 0),
(1, 11, 80, 'Page Footer', 80, 0, 0, 0, 0, 0, 0, 0),
(1, 11, 179, 'Main', 82, 0, 0, 0, 0, 0, 0, 0),
(1, 11, 185, 'Main : 16', 67, 0, 0, 0, 0, 0, 0, 0),
(1, 11, 186, '1', 83, 1, 1, 0, 0, 0, 0, 0),
(1, 11, 187, '1', 84, 0, 1, 0, 0, 0, 0, 0),
(1, 12, 64, 'Main', 64, 1, 0, 1, 0, 0, 0, 0),
(1, 12, 65, 'Main', 65, 2, 0, 0, 0, 0, 0, 0),
(1, 12, 66, 'Main : 15', 66, 0, 0, 0, 0, 0, 0, 0),
(1, 12, 68, 'Main : 17', 68, 0, 0, 0, 0, 0, 0, 0),
(1, 12, 69, 'Main', 69, 3, 0, 0, 0, 0, 0, 0),
(1, 12, 70, 'Main', 70, 4, 0, 0, 0, 0, 0, 0),
(1, 12, 71, 'Main', 71, 5, 0, 0, 0, 0, 0, 0),
(1, 12, 72, 'Main', 72, 6, 0, 0, 0, 0, 0, 0),
(1, 12, 73, 'Main', 73, 7, 0, 0, 0, 0, 0, 0),
(1, 12, 74, 'Main : 18', 74, 0, 0, 0, 0, 0, 0, 0),
(1, 12, 75, 'Main : 19', 75, 0, 0, 0, 0, 0, 0, 0),
(1, 12, 76, 'Main', 76, 8, 0, 0, 0, 0, 0, 0),
(1, 12, 77, 'Main : 20', 77, 0, 0, 0, 0, 0, 0, 0),
(1, 12, 78, 'Main : 21', 78, 0, 0, 0, 0, 0, 0, 0),
(1, 12, 79, 'Main : 22', 79, 0, 0, 0, 0, 0, 0, 0),
(1, 12, 80, 'Page Footer', 80, 0, 0, 0, 0, 0, 0, 0),
(1, 12, 179, 'Main', 82, 0, 0, 0, 0, 0, 0, 0),
(1, 12, 185, 'Main : 16', 67, 0, 0, 0, 0, 0, 0, 0),
(1, 12, 186, '1', 83, 1, 0, 0, 0, 0, 0, 0),
(1, 12, 187, '1', 84, 0, 0, 0, 0, 0, 0, 0),
(1, 13, 64, 'Main', 64, 1, 0, 1, 0, 0, 0, 0),
(1, 13, 65, 'Main', 65, 2, 0, 0, 0, 0, 0, 0),
(1, 13, 66, 'Main : 15', 66, 0, 0, 0, 0, 0, 0, 0),
(1, 13, 68, 'Main : 17', 68, 0, 0, 0, 0, 0, 0, 0),
(1, 13, 69, 'Main', 69, 3, 0, 0, 0, 0, 0, 0),
(1, 13, 70, 'Main', 70, 4, 0, 0, 0, 0, 0, 0),
(1, 13, 71, 'Main', 71, 5, 0, 0, 0, 0, 0, 0),
(1, 13, 72, 'Main', 72, 6, 0, 0, 0, 0, 0, 0),
(1, 13, 73, 'Main', 73, 7, 0, 0, 0, 0, 0, 0),
(1, 13, 74, 'Main : 18', 74, 0, 0, 0, 0, 0, 0, 0),
(1, 13, 75, 'Main : 19', 75, 0, 0, 0, 0, 0, 0, 0),
(1, 13, 76, 'Main', 76, 8, 0, 0, 0, 0, 0, 0),
(1, 13, 77, 'Main : 20', 77, 0, 0, 0, 0, 0, 0, 0),
(1, 13, 78, 'Main : 21', 78, 0, 0, 0, 0, 0, 0, 0),
(1, 13, 79, 'Main : 22', 79, 0, 0, 0, 0, 0, 0, 0),
(1, 13, 80, 'Page Footer', 80, 0, 0, 0, 0, 0, 0, 0),
(1, 13, 179, 'Main', 82, 0, 0, 0, 0, 0, 0, 0),
(1, 13, 185, 'Main : 16', 67, 0, 0, 0, 0, 0, 0, 0),
(1, 13, 186, '1', 83, 1, 0, 0, 0, 0, 0, 0),
(1, 13, 187, '1', 84, 0, 0, 0, 0, 0, 0, 0),
(1, 13, 188, '1', 85, 2, 1, 0, 0, 0, 0, 0),
(1, 14, 64, 'Main', 64, 1, 0, 1, 0, 0, 0, 0),
(1, 14, 65, 'Main', 65, 2, 0, 0, 0, 0, 0, 0),
(1, 14, 66, 'Main : 15', 66, 0, 0, 0, 0, 0, 0, 0),
(1, 14, 68, 'Main : 17', 68, 0, 0, 0, 0, 0, 0, 0),
(1, 14, 69, 'Main', 69, 3, 0, 0, 0, 0, 0, 0),
(1, 14, 70, 'Main', 70, 4, 0, 0, 0, 0, 0, 0),
(1, 14, 71, 'Main', 71, 5, 0, 0, 0, 0, 0, 0),
(1, 14, 72, 'Main', 72, 6, 0, 0, 0, 0, 0, 0),
(1, 14, 73, 'Main', 73, 7, 0, 0, 0, 0, 0, 0),
(1, 14, 74, 'Main : 18', 74, 0, 0, 0, 0, 0, 0, 0),
(1, 14, 75, 'Main : 19', 75, 0, 0, 0, 0, 0, 0, 0),
(1, 14, 76, 'Main', 76, 8, 0, 0, 0, 0, 0, 0),
(1, 14, 77, 'Main : 20', 77, 0, 0, 0, 0, 0, 0, 0),
(1, 14, 78, 'Main : 21', 78, 0, 0, 0, 0, 0, 0, 0),
(1, 14, 79, 'Main : 22', 79, 0, 0, 0, 0, 0, 0, 0),
(1, 14, 80, 'Page Footer', 80, 0, 0, 0, 0, 0, 0, 0),
(1, 14, 179, 'Main', 82, 0, 0, 0, 0, 0, 0, 0),
(1, 14, 185, 'Main : 16', 67, 0, 0, 0, 0, 0, 0, 0),
(1, 14, 192, 'Content', 86, 0, 1, 0, 0, 0, 0, 0),
(1, 15, 64, 'Main', 64, 1, 0, 1, 0, 0, 0, 0),
(1, 15, 65, 'Main', 65, 2, 0, 0, 0, 0, 0, 0),
(1, 15, 66, 'Main : 15', 66, 0, 0, 0, 0, 0, 0, 0),
(1, 15, 68, 'Main : 17', 68, 0, 0, 0, 0, 0, 0, 0),
(1, 15, 69, 'Main', 69, 3, 0, 0, 0, 0, 0, 0),
(1, 15, 70, 'Main', 70, 4, 0, 0, 0, 0, 0, 0),
(1, 15, 71, 'Main', 71, 5, 0, 0, 0, 0, 0, 0),
(1, 15, 72, 'Main', 72, 6, 0, 0, 0, 0, 0, 0),
(1, 15, 73, 'Main', 73, 7, 0, 0, 0, 0, 0, 0),
(1, 15, 74, 'Main : 18', 74, 0, 0, 0, 0, 0, 0, 0),
(1, 15, 75, 'Main : 19', 75, 0, 0, 0, 0, 0, 0, 0),
(1, 15, 76, 'Main', 76, 8, 0, 0, 0, 0, 0, 0),
(1, 15, 77, 'Main : 20', 77, 0, 0, 0, 0, 0, 0, 0),
(1, 15, 78, 'Main : 21', 78, 0, 0, 0, 0, 0, 0, 0),
(1, 15, 79, 'Main : 22', 79, 0, 0, 0, 0, 0, 0, 0),
(1, 15, 80, 'Page Footer', 80, 0, 0, 0, 0, 0, 0, 0),
(1, 15, 179, 'Main', 82, 0, 0, 0, 0, 0, 0, 0),
(1, 15, 185, 'Main : 16', 67, 0, 0, 0, 0, 0, 0, 0),
(1, 15, 192, 'Content', 86, 1, 0, 0, 0, 0, 0, 0),
(1, 15, 193, 'Content', 87, 0, 1, 1, 0, 0, 0, 0),
(1, 15, 194, 'Content', 88, 2, 1, 0, 0, 0, 0, 0),
(1, 16, 64, 'Main', 64, 1, 0, 1, 0, 0, 0, 0),
(1, 16, 65, 'Main', 65, 2, 0, 0, 0, 0, 0, 0),
(1, 16, 66, 'Main : 15', 66, 0, 0, 0, 0, 0, 0, 0),
(1, 16, 68, 'Main : 17', 68, 0, 0, 0, 0, 0, 0, 0),
(1, 16, 69, 'Main', 69, 3, 0, 0, 0, 0, 0, 0),
(1, 16, 70, 'Main', 70, 4, 0, 0, 0, 0, 0, 0),
(1, 16, 71, 'Main', 71, 5, 0, 0, 0, 0, 0, 0),
(1, 16, 72, 'Main', 72, 6, 0, 0, 0, 0, 0, 0),
(1, 16, 73, 'Main', 73, 7, 0, 0, 0, 0, 0, 0),
(1, 16, 74, 'Main : 18', 74, 0, 0, 0, 0, 0, 0, 0),
(1, 16, 75, 'Main : 19', 75, 0, 0, 0, 0, 0, 0, 0),
(1, 16, 76, 'Main', 76, 8, 0, 0, 0, 0, 0, 0),
(1, 16, 77, 'Main : 20', 77, 0, 0, 0, 0, 0, 0, 0),
(1, 16, 78, 'Main : 21', 78, 0, 0, 0, 0, 0, 0, 0),
(1, 16, 79, 'Main : 22', 79, 0, 0, 0, 0, 0, 0, 0),
(1, 16, 80, 'Page Footer', 80, 0, 0, 0, 0, 0, 0, 0),
(1, 16, 179, 'Main', 82, 0, 0, 0, 0, 0, 0, 0),
(1, 16, 185, 'Main : 16', 67, 0, 0, 0, 0, 0, 0, 0),
(1, 16, 192, 'Content', 86, 1, 0, 0, 0, 0, 0, 0),
(1, 16, 193, 'Content', 87, 0, 0, 1, 0, 0, 0, 0),
(1, 16, 194, 'Content', 88, 4, 0, 0, 0, 0, 0, 0),
(1, 16, 195, 'Content', 89, 0, 1, 1, 0, 0, 0, 0),
(1, 16, 196, 'Content', 90, 2, 1, 0, 0, 0, 0, 0),
(1, 17, 64, 'Main', 64, 1, 0, 1, 0, 0, 0, 0),
(1, 17, 65, 'Main', 65, 2, 0, 0, 0, 0, 0, 0),
(1, 17, 66, 'Main : 15', 66, 0, 0, 0, 0, 0, 0, 0),
(1, 17, 68, 'Main : 17', 68, 0, 0, 0, 0, 0, 0, 0),
(1, 17, 69, 'Main', 69, 3, 0, 0, 0, 0, 0, 0),
(1, 17, 70, 'Main', 70, 4, 0, 0, 0, 0, 0, 0),
(1, 17, 71, 'Main', 71, 5, 0, 0, 0, 0, 0, 0),
(1, 17, 72, 'Main', 72, 6, 0, 0, 0, 0, 0, 0),
(1, 17, 73, 'Main', 73, 7, 0, 0, 0, 0, 0, 0),
(1, 17, 74, 'Main : 18', 74, 0, 0, 0, 0, 0, 0, 0),
(1, 17, 75, 'Main : 19', 75, 0, 0, 0, 0, 0, 0, 0),
(1, 17, 76, 'Main', 76, 8, 0, 0, 0, 0, 0, 0),
(1, 17, 77, 'Main : 20', 77, 0, 0, 0, 0, 0, 0, 0),
(1, 17, 78, 'Main : 21', 78, 0, 0, 0, 0, 0, 0, 0),
(1, 17, 79, 'Main : 22', 79, 0, 0, 0, 0, 0, 0, 0),
(1, 17, 80, 'Page Footer', 80, 0, 0, 0, 0, 0, 0, 0),
(1, 17, 179, 'Main', 82, 0, 0, 0, 0, 0, 0, 0),
(1, 17, 185, 'Main : 16', 67, 0, 0, 0, 0, 0, 0, 0),
(1, 17, 192, 'Content', 86, 1, 0, 0, 0, 0, 0, 0),
(1, 17, 193, 'Content', 87, 0, 0, 1, 0, 0, 0, 0),
(1, 17, 194, 'Content', 88, 4, 0, 0, 0, 0, 0, 0),
(1, 17, 197, 'Content', 90, 2, 1, 0, 0, 0, 0, 0),
(1, 17, 198, 'Content', 89, 0, 1, 1, 0, 0, 0, 0),
(1, 18, 64, 'Main', 64, 1, 0, 1, 0, 0, 0, 0),
(1, 18, 65, 'Main', 65, 2, 0, 0, 0, 0, 0, 0),
(1, 18, 66, 'Main : 15', 66, 0, 0, 0, 0, 0, 0, 0),
(1, 18, 68, 'Main : 17', 68, 0, 0, 0, 0, 0, 0, 0),
(1, 18, 69, 'Main', 69, 3, 0, 0, 0, 0, 0, 0),
(1, 18, 70, 'Main', 70, 4, 0, 0, 0, 0, 0, 0),
(1, 18, 71, 'Main', 71, 5, 0, 0, 0, 0, 0, 0),
(1, 18, 72, 'Main', 72, 6, 0, 0, 0, 0, 0, 0),
(1, 18, 73, 'Main', 73, 7, 0, 0, 0, 0, 0, 0),
(1, 18, 74, 'Main : 18', 74, 0, 0, 0, 0, 0, 0, 0),
(1, 18, 75, 'Main : 19', 75, 0, 0, 0, 0, 0, 0, 0),
(1, 18, 76, 'Main', 76, 8, 0, 0, 0, 0, 0, 0),
(1, 18, 77, 'Main : 20', 77, 0, 0, 0, 0, 0, 0, 0),
(1, 18, 78, 'Main : 21', 78, 0, 0, 0, 0, 0, 0, 0),
(1, 18, 79, 'Main : 22', 79, 0, 0, 0, 0, 0, 0, 0),
(1, 18, 80, 'Page Footer', 80, 0, 0, 0, 0, 0, 0, 0),
(1, 18, 179, 'Main', 82, 0, 0, 0, 0, 0, 0, 0),
(1, 18, 185, 'Main : 16', 67, 0, 0, 0, 0, 0, 0, 0),
(1, 18, 192, 'Content', 86, 1, 0, 0, 0, 0, 0, 0),
(1, 18, 193, 'Content', 87, 0, 0, 1, 0, 0, 0, 0),
(1, 18, 194, 'Content', 88, 4, 0, 0, 0, 0, 0, 0),
(1, 18, 197, 'Content', 90, 2, 0, 0, 0, 0, 0, 0),
(1, 18, 198, 'Content', 89, 0, 0, 1, 0, 0, 0, 0),
(169, 1, 1, 'Main', 1, 0, 1, 0, 0, 0, 0, 0),
(169, 1, 2, 'Main', 2, 1, 1, 0, 0, 0, 0, 0),
(169, 1, 3, 'Main : 1', 3, 0, 1, 0, 0, 0, 0, 0),
(169, 1, 4, 'Main : 2', 4, 0, 1, 0, 0, 0, 0, 0),
(169, 1, 5, 'Main : 3', 5, 0, 1, 0, 0, 0, 0, 0),
(169, 1, 6, 'Main', 6, 2, 1, 0, 0, 0, 0, 0),
(169, 1, 7, 'Main : 4', 7, 0, 1, 0, 0, 0, 0, 0),
(169, 1, 8, 'Main : 5', 8, 0, 1, 0, 0, 0, 0, 0),
(169, 1, 9, 'Main', 9, 3, 1, 0, 0, 0, 0, 0),
(169, 1, 10, 'Main : 6', 10, 0, 1, 0, 0, 0, 0, 0),
(169, 1, 11, 'Main : 7', 11, 0, 1, 0, 0, 0, 0, 0),
(169, 1, 12, 'Main : 8', 12, 0, 1, 0, 0, 0, 0, 0),
(169, 1, 13, 'Main', 13, 4, 1, 0, 0, 0, 0, 0),
(169, 2, 1, 'Main', 1, 0, 0, 0, 0, 0, 0, 0),
(169, 2, 2, 'Main', 2, 1, 0, 0, 0, 0, 0, 0),
(169, 2, 3, 'Main : 1', 3, 0, 0, 0, 0, 0, 0, 0),
(169, 2, 4, 'Main : 2', 4, 0, 0, 0, 0, 0, 0, 0),
(169, 2, 5, 'Main : 3', 5, 0, 0, 0, 0, 0, 0, 0),
(169, 2, 6, 'Main', 6, 2, 0, 0, 0, 0, 0, 0),
(169, 2, 7, 'Main : 4', 7, 0, 0, 0, 0, 0, 0, 0),
(169, 2, 8, 'Main : 5', 8, 0, 0, 0, 0, 0, 0, 0),
(169, 2, 9, 'Main', 9, 3, 0, 0, 0, 0, 0, 0),
(169, 2, 10, 'Main : 6', 10, 0, 0, 0, 0, 0, 0, 0),
(169, 2, 11, 'Main : 7', 11, 0, 0, 0, 0, 0, 0, 0),
(169, 2, 12, 'Main : 8', 12, 0, 0, 0, 0, 0, 0, 0),
(169, 2, 13, 'Main', 13, 4, 0, 0, 0, 0, 0, 0),
(169, 3, 1, 'Main', 1, 0, 0, 0, 0, 0, 0, 0),
(169, 3, 2, 'Main', 2, 1, 0, 0, 0, 0, 0, 0),
(169, 3, 3, 'Main : 1', 3, 0, 0, 0, 0, 0, 0, 0),
(169, 3, 4, 'Main : 2', 4, 0, 0, 0, 0, 0, 0, 0),
(169, 3, 5, 'Main : 3', 5, 0, 0, 0, 0, 0, 0, 0),
(169, 3, 6, 'Main', 6, 2, 0, 0, 0, 0, 0, 0),
(169, 3, 7, 'Main : 4', 7, 0, 0, 0, 0, 0, 0, 0),
(169, 3, 8, 'Main : 5', 8, 0, 0, 0, 0, 0, 0, 0),
(169, 3, 9, 'Main', 9, 3, 0, 0, 0, 0, 0, 0),
(169, 3, 10, 'Main : 6', 10, 0, 0, 0, 0, 0, 0, 0),
(169, 3, 11, 'Main : 7', 11, 0, 0, 0, 0, 0, 0, 0),
(169, 3, 12, 'Main : 8', 12, 0, 0, 0, 0, 0, 0, 0),
(169, 3, 13, 'Main', 13, 4, 0, 0, 0, 0, 0, 0),
(169, 4, 1, 'Main', 1, 0, 0, 0, 0, 0, 0, 0),
(169, 4, 2, 'Main', 2, 1, 0, 0, 0, 0, 0, 0),
(169, 4, 3, 'Main : 1', 3, 0, 0, 0, 0, 0, 0, 0),
(169, 4, 4, 'Main : 2', 4, 0, 0, 0, 0, 0, 0, 0),
(169, 4, 5, 'Main : 3', 5, 0, 0, 0, 0, 0, 0, 0),
(169, 4, 6, 'Main', 6, 2, 0, 0, 0, 0, 0, 0),
(169, 4, 7, 'Main : 4', 7, 0, 0, 0, 0, 0, 0, 0),
(169, 4, 8, 'Main : 5', 8, 0, 0, 0, 0, 0, 0, 0),
(169, 4, 9, 'Main', 9, 3, 0, 0, 0, 0, 0, 0),
(169, 4, 10, 'Main : 6', 10, 0, 0, 0, 0, 0, 0, 0),
(169, 4, 11, 'Main : 7', 11, 0, 0, 0, 0, 0, 0, 0),
(169, 4, 12, 'Main : 8', 12, 0, 0, 0, 0, 0, 0, 0),
(169, 4, 13, 'Main', 13, 4, 0, 0, 0, 0, 0, 0),
(170, 1, 14, 'Main', 14, 0, 1, 0, 0, 0, 0, 0),
(170, 1, 15, 'Main : 9', 15, 0, 1, 0, 0, 0, 0, 0),
(170, 1, 16, 'Main', 16, 1, 1, 0, 0, 0, 0, 0),
(170, 1, 17, 'Main : 10', 17, 0, 1, 0, 0, 0, 0, 0),
(183, 1, 18, 'Main', 18, 0, 1, 0, 0, 0, 0, 0),
(183, 1, 19, 'Main : 11', 19, 0, 1, 0, 0, 0, 0, 0),
(183, 1, 20, 'Main', 20, 1, 1, 0, 0, 0, 0, 0),
(183, 1, 21, 'Main : 12', 21, 0, 1, 0, 0, 0, 0, 0),
(183, 2, 18, 'Main', 18, 0, 0, 0, 0, 0, 0, 0),
(183, 2, 19, 'Main : 11', 19, 0, 0, 0, 0, 0, 0, 0),
(183, 2, 20, 'Main', 20, 1, 0, 0, 0, 0, 0, 0),
(183, 2, 21, 'Main : 12', 21, 0, 0, 0, 0, 0, 0, 0),
(184, 1, 56, 'Main', 56, 0, 1, 0, 0, 0, 0, 0),
(185, 1, 57, 'Main', 57, 0, 1, 0, 0, 0, 0, 0),
(186, 1, 58, 'Main', 58, 0, 1, 0, 0, 0, 0, 0),
(187, 1, 59, 'Main', 59, 0, 1, 0, 0, 0, 0, 0),
(188, 1, 60, 'Main', 60, 0, 1, 0, 0, 0, 0, 0),
(189, 1, 61, 'Main', 61, 0, 1, 0, 0, 1, 0, 0),
(190, 1, 62, 'Main', 62, 0, 1, 0, 0, 0, 0, 0),
(191, 1, 63, 'Main', 63, 0, 1, 0, 0, 0, 0, 0),
(194, 1, 53, 'Main', 53, 0, 1, 0, 0, 0, 0, 0),
(194, 1, 54, 'Main', 54, 1, 1, 0, 0, 0, 0, 0),
(194, 1, 55, 'Main', 55, 2, 1, 0, 0, 0, 0, 0),
(197, 1, 48, 'Main', 48, 0, 1, 0, 0, 0, 0, 0),
(197, 1, 49, 'Main', 49, 1, 1, 0, 0, 0, 0, 0),
(197, 1, 50, 'Main : 13', 50, 0, 1, 0, 0, 0, 0, 0),
(197, 1, 51, 'Main : 14', 51, 0, 1, 0, 0, 0, 0, 0),
(197, 1, 52, 'Main : 14', 52, 1, 1, 0, 0, 0, 0, 0),
(202, 1, 40, 'Page Header', 40, 0, 1, 0, 0, 0, 0, 0),
(202, 1, 41, 'Page Header', 41, 1, 1, 0, 0, 0, 0, 0),
(202, 1, 42, 'Sidebar', 42, 0, 1, 0, 0, 0, 0, 0),
(202, 1, 43, 'Sidebar', 43, 1, 1, 0, 0, 0, 0, 0),
(202, 1, 44, 'Sidebar', 44, 2, 1, 0, 0, 0, 0, 0),
(202, 1, 45, 'Main', 45, 0, 1, 0, 0, 0, 0, 0),
(202, 1, 46, 'Page Footer', 46, 0, 1, 0, 0, 0, 0, 0),
(202, 1, 47, 'Page Footer', 47, 1, 1, 0, 0, 0, 0, 0),
(209, 1, 22, 'Main', 22, 0, 1, 0, 0, 0, 0, 0),
(209, 1, 23, 'Main', 23, 1, 1, 0, 0, 0, 0, 0),
(209, 1, 24, 'Sidebar', 24, 0, 1, 0, 0, 0, 0, 0),
(209, 1, 25, 'Sidebar', 25, 1, 1, 0, 0, 0, 0, 0),
(209, 1, 26, 'Sidebar', 26, 2, 1, 0, 0, 0, 0, 0),
(209, 1, 27, 'Sidebar', 27, 3, 1, 0, 0, 0, 0, 0),
(209, 1, 28, 'Page Footer', 28, 0, 1, 0, 0, 0, 0, 0),
(209, 1, 29, 'Page Footer', 29, 1, 1, 0, 0, 0, 0, 0),
(216, 1, 30, 'Page Header', 30, 0, 1, 0, 0, 0, 0, 0),
(216, 1, 31, 'Sidebar', 31, 0, 1, 0, 0, 0, 0, 0),
(216, 1, 32, 'Main', 32, 0, 1, 0, 0, 0, 0, 0),
(216, 1, 33, 'Main', 33, 1, 1, 0, 0, 0, 0, 0),
(216, 1, 34, 'Main', 34, 2, 1, 0, 0, 0, 0, 0),
(216, 1, 35, 'Main', 35, 3, 1, 0, 0, 0, 0, 0),
(216, 1, 36, 'Main', 36, 4, 1, 0, 0, 0, 0, 0),
(216, 1, 37, 'Main', 37, 5, 1, 0, 0, 0, 0, 0),
(216, 1, 38, 'Main', 38, 6, 1, 0, 0, 0, 0, 0),
(216, 1, 39, 'Main', 39, 7, 1, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `CollectionVersionBlocksCacheSettings`
--

CREATE TABLE `CollectionVersionBlocksCacheSettings` (
  `cID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cvID` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `bID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `btCacheBlockOutput` tinyint(1) NOT NULL DEFAULT '0',
  `btCacheBlockOutputOnPost` tinyint(1) NOT NULL DEFAULT '0',
  `btCacheBlockOutputForRegisteredUsers` tinyint(1) NOT NULL DEFAULT '0',
  `btCacheBlockOutputLifetime` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `CollectionVersionBlocksCacheSettings`
--

INSERT INTO `CollectionVersionBlocksCacheSettings` (`cID`, `cvID`, `bID`, `arHandle`, `btCacheBlockOutput`, `btCacheBlockOutputOnPost`, `btCacheBlockOutputForRegisteredUsers`, `btCacheBlockOutputLifetime`) VALUES
(189, 1, 61, 'Main', 1, 1, 1, 3600);

-- --------------------------------------------------------

--
-- Table structure for table `CollectionVersionBlocksOutputCache`
--

CREATE TABLE `CollectionVersionBlocksOutputCache` (
  `cID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cvID` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `bID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `btCachedBlockOutput` longtext COLLATE utf8mb4_unicode_ci,
  `btCachedBlockOutputExpires` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `CollectionVersionBlocksOutputCache`
--

INSERT INTO `CollectionVersionBlocksOutputCache` (`cID`, `cvID`, `bID`, `arHandle`, `btCachedBlockOutput`, `btCachedBlockOutputExpires`) VALUES
(1, 1, 56, 'Footer Contact', '\n                                    <p>1234 SE StreetView</p><p>Suite 301</p><p>Portland, OR 98101</p><p><a href="http://localhost:8181/concrete5-8.5.5_Store/index.php/contact">View on Google Maps</a></p>', 1787456928),
(1, 1, 57, 'Footer Legal', '\n                                    <p>© 2018 Elemental Theme</p>', 1787456927),
(1, 1, 58, 'Footer Navigation', '\n                                    \n                                    <p><a href="http://localhost:8181/concrete5-8.5.5_Store/index.php/team/faq">FAQ / Help</a></p>\n                                    <p><a href="http://localhost:8181/concrete5-8.5.5_Store/index.php/portfolio">Case Studies</a></p>\n                                    <p><a href="http://localhost:8181/concrete5-8.5.5_Store/index.php/blog">Blog</a></p>\n                                    <p><a href="http://localhost:8181/concrete5-8.5.5_Store/index.php">Another Link</a></p>\n                                    ', 1787456927),
(1, 1, 59, 'Footer Site Title', '\n                                    <a href="http://localhost:8181/concrete5-8.5.5_Store/index.php" id="footer-site-title">Elemental</a>', 1787456927),
(1, 1, 60, 'Footer Social', '\n<div id="ccm-block-social-links60" class="ccm-block-social-links">\n    <ul class="list-inline">\n                <li>\n                <a target="_blank" rel="noopener noreferrer" href="http://twitter.com/concrete5"\n                    aria-label="Twitter"><i class="fa fa-twitter" aria-hidden="true" title="Twitter"></i></a>\n            </li>\n                    <li>\n                <a target="_blank" rel="noopener noreferrer" href="http://github.com/concrete5"\n                    aria-label="Github"><i class="fa fa-github-square" aria-hidden="true" title="Github"></i></a>\n            </li>\n                    <li>\n                <a target="_blank" rel="noopener noreferrer" href="http://facebook.com/concrete5"\n                    aria-label="Facebook"><i class="fa fa-facebook" aria-hidden="true" title="Facebook"></i></a>\n            </li>\n            </ul>\n</div>\n', 1787455258),
(1, 1, 61, 'Header Navigation', '\n<nav class="ccm-responsive-navigation original"><ul></ul></nav><div class="ccm-responsive-menu-launch"><i></i></div>', 1629728704),
(1, 1, 62, 'Header Search', '    <form action="http://localhost:8181/concrete5-8.5.5_Store/index.php/search" method="get" class="ccm-search-block-form"><input name="search_paths[]" type="hidden"\n             value="" /><input name="query" type="text" value=""\n         class="ccm-search-block-text" />\n\n</form>', 1787456922),
(1, 1, 63, 'Header Site Title', '\n                                    <a href="http://localhost:8181/concrete5-8.5.5_Store/index.php" id="header-site-title">Elemental</a>', 1787456922),
(1, 1, 64, 'Main', '<script>\n$(document).ready(function(){\n    $(function () {\n        $("#ccm-image-slider-64").responsiveSlides({\n            prevText: "",   // String: Text for the "previous" button\n            nextText: "",\n		 \n		pager: true,\n		            timeout: 4000,            speed: 500,                                            });\n    });\n});\n</script>\n\n<div class="ccm-image-slider-container ccm-block-image-slider-pages" >\n    <div class="ccm-image-slider">\n        <div class="ccm-image-slider-inner">\n\n                <ul class="rslides" id="ccm-image-slider-64">\n                            <li>\n                                                <img src="/concrete5-8.5.5_Store/application/files/1816/2968/8538/slider1.png" alt="Stand Out on the Web" width="1100" height="368">                                <div class="ccm-image-slider-text">\n                                        	<h2 class="ccm-image-slider-title">Stand Out on the Web</h2>\n                                        \n                                    <p>Share your business with an impressive, yet minimal presentation. Let your customers understand your web presence through elegance and clarity.</p>                </div>\n                </li>\n                            <li>\n                                                <img src="/concrete5-8.5.5_Store/application/files/7316/2968/8539/slider2.png" alt="A Simple Image Slider" width="1100" height="368">                                <div class="ccm-image-slider-text">\n                                        	<h2 class="ccm-image-slider-title">A Simple Image Slider</h2>\n                                        \n                                    <p>This image slider can have any content that you want in it.</p>                </div>\n                </li>\n                    </ul>\n                </div>\n\n    </div>\n</div>\n', 1787456923),
(1, 1, 65, 'Main', '<div class="row"><div class="col-sm-4">\n\n        <div class="ccm-custom-style-container ccm-custom-style-main15-66 feature-home-page"\n            >\n    <div class="ccm-block-feature-item">\n            <h4><i class="fa fa-pencil"></i> Easy to Edit</h4>\n        \n                                                    Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna.</div>\n    </div>\n</div><div class="col-sm-4">\n\n        <div class="ccm-custom-style-container ccm-custom-style-main16-67 feature-home-page"\n            >\n    <div class="ccm-block-feature-item">\n            <h4><i class="fa fa-eye"></i> Pixel Perfect</h4>\n        \n                                                    Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna.</div>\n    </div>\n</div><div class="col-sm-4">\n\n        <div class="ccm-custom-style-container ccm-custom-style-main17-68 feature-home-page"\n            >\n    <div class="ccm-block-feature-item">\n            <h4><i class="fa fa-youtube-play"></i> Media Rich</h4>\n        \n                                                    Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna.</div>\n    </div>\n</div></div>', 1787456924),
(1, 1, 66, 'Main : 15', '<div class="ccm-block-feature-item">\n            <h4><i class="fa fa-pencil"></i> Easy to Edit</h4>\n        \n                                                    Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna.</div>', 1787455255),
(1, 1, 67, 'Main : 16', '<div class="ccm-block-feature-item">\n            <h4><i class="fa fa-eye"></i> Pixel Perfect</h4>\n        \n                                                    Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna.</div>', 1787455255),
(1, 1, 68, 'Main : 17', '<div class="ccm-block-feature-item">\n            <h4><i class="fa fa-youtube-play"></i> Media Rich</h4>\n        \n                                                    Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna.</div>', 1787455256),
(1, 1, 69, 'Main', '<hr/>', 1787455256),
(1, 1, 70, 'Main', '\n                                    <p style="text-align: center"><span class="title-caps-bold">Presenting your Business has never been so easy</span></p><p style="text-align: center;">Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing.</p><p style="text-align: center;">Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna. </p>', 1787456924),
(1, 1, 71, 'Main', '\n<div class="ccm-block-page-list-thumbnail-grid-wrapper">\n\n    \n    \n            <div class="ccm-block-page-list-no-pages"></div>\n    \n</div>\n\n\n', 1629720572),
(1, 1, 72, 'Main', '<hr/>', 1787455257),
(1, 1, 73, 'Main', '<div class="row"><div class="col-sm-6">\n\n    <h5>Latest Blog Post</h5>\n</div><div class="col-sm-6">\n\n    <h5>Now Open For Business</h5>\n</div></div>', 1787456925),
(1, 1, 74, 'Main : 18', '<h5>Latest Blog Post</h5>', 1787456925),
(1, 1, 75, 'Main : 19', '<h5>Now Open For Business</h5>', 1787456925),
(1, 1, 76, 'Main', '<div class="row"><div class="col-sm-2">\n\n        <div class="ccm-custom-style-container ccm-custom-style-main20-77 recent-blog-entry"\n            >\n    \n    <div class="ccm-block-page-list-wrapper">\n\n        \n        \n        <div class="ccm-block-page-list-pages">\n\n                    </div><!-- end .ccm-block-page-list-pages -->\n\n                    <div class="ccm-block-page-list-no-pages"></div>\n        \n    </div><!-- end .ccm-block-page-list-wrapper -->\n\n\n    \n    \n    </div>\n</div><div class="col-sm-3">\n\n        <div class="ccm-custom-style-container ccm-custom-style-main21-78 recent-blog-entry"\n            >\n    \n    <div class="ccm-block-page-list-wrapper">\n\n        \n        \n        <div class="ccm-block-page-list-pages">\n\n                    </div><!-- end .ccm-block-page-list-pages -->\n\n                    <div class="ccm-block-page-list-no-pages"></div>\n        \n    </div><!-- end .ccm-block-page-list-wrapper -->\n\n\n    \n    \n    </div>\n</div><div class="col-sm-6 col-sm-offset-1">\n\n    \n                                                    <p>  <span class="title-thin">We specialize in making your concepts a reality.</span>  </p>  <p>    Sed cursus facilisis dignissim. Aliquam rhoncus enim et pellentesque varius. Nulla sodales nibh lorem, sit amet imperdiet arcu commodo sit amet. Mauris sed scelerisque nisl. Ut auctor ipsum tellus, vel viverra massa elementum sit amet.  </p>  <p>    Sed adipiscing tempus sem eu molestie. Aenean laoreet pretium ante vitae ultrices. Aenean eu gravida magna, vel aliquet magna. In auctor convallis gravida.<br>  </p>  <br/>  <p>  <a href="http://localhost:8181/concrete5-8.5.5_Store/index.php/contact"><span class="btn btn-success">Contact Us Today</span></a>  </p>\n</div></div>', 1629720573),
(1, 1, 77, 'Main : 20', '\n    <div class="ccm-block-page-list-wrapper">\n\n        \n        \n        <div class="ccm-block-page-list-pages">\n\n                    </div><!-- end .ccm-block-page-list-pages -->\n\n                    <div class="ccm-block-page-list-no-pages"></div>\n        \n    </div><!-- end .ccm-block-page-list-wrapper -->\n\n\n    \n    ', 1629720573),
(1, 1, 78, 'Main : 21', '\n    <div class="ccm-block-page-list-wrapper">\n\n        \n        \n        <div class="ccm-block-page-list-pages">\n\n                    </div><!-- end .ccm-block-page-list-pages -->\n\n                    <div class="ccm-block-page-list-no-pages"></div>\n        \n    </div><!-- end .ccm-block-page-list-wrapper -->\n\n\n    \n    ', 1629720573),
(1, 1, 79, 'Main : 22', '\n                                                    <p>  <span class="title-thin">We specialize in making your concepts a reality.</span>  </p>  <p>    Sed cursus facilisis dignissim. Aliquam rhoncus enim et pellentesque varius. Nulla sodales nibh lorem, sit amet imperdiet arcu commodo sit amet. Mauris sed scelerisque nisl. Ut auctor ipsum tellus, vel viverra massa elementum sit amet.  </p>  <p>    Sed adipiscing tempus sem eu molestie. Aenean laoreet pretium ante vitae ultrices. Aenean eu gravida magna, vel aliquet magna. In auctor convallis gravida.<br>  </p>  <br/>  <p>  <a href="http://localhost:8181/concrete5-8.5.5_Store/index.php/contact"><span class="btn btn-success">Contact Us Today</span></a>  </p>', 1787456926),
(1, 1, 80, 'Page Footer', '\n                                    <p style="text-align: center"><span class="title-caps">Customizable footer area with accent class.</span></p>', 1787456927),
(1, 4, 60, 'Footer Social', '\n<div id="ccm-block-social-links60" class="ccm-block-social-links">\n    <ul class="list-inline">\n                <li>\n                <a target="_blank" rel="noopener noreferrer" href="http://twitter.com/concrete5"\n                    aria-label="Twitter"><i class="fa fa-twitter" aria-hidden="true" title="Twitter"></i></a>\n            </li>\n                    <li>\n                <a target="_blank" rel="noopener noreferrer" href="http://github.com/concrete5"\n                    aria-label="Github"><i class="fa fa-github-square" aria-hidden="true" title="Github"></i></a>\n            </li>\n                    <li>\n                <a target="_blank" rel="noopener noreferrer" href="http://facebook.com/concrete5"\n                    aria-label="Facebook"><i class="fa fa-facebook" aria-hidden="true" title="Facebook"></i></a>\n            </li>\n            </ul>\n</div>\n', 1787496787),
(1, 4, 61, 'Header Navigation', '\n<nav class="ccm-responsive-navigation original"><ul><li class="nav-selected nav-path-selected"><a href="http://localhost:8181/concrete5-8.5.5_Store/index.php" target="_self" class="nav-selected nav-path-selected">Home</a></li></ul></nav><div class="ccm-responsive-menu-launch"><i></i></div>', 1629733984),
(1, 4, 66, 'Main : 15', '<div class="ccm-block-feature-item">\n            <h4><i class="fa fa-pencil"></i> Easy to Edit</h4>\n        \n                                                    Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna.</div>', 1787493816),
(1, 4, 67, 'Main : 16', '<div class="ccm-block-feature-item">\n            <h4><i class="fa fa-eye"></i> Pixel Perfect</h4>\n        \n                                                    Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna.</div>', 1787493816),
(1, 4, 68, 'Main : 17', '<div class="ccm-block-feature-item">\n            <h4><i class="fa fa-youtube-play"></i> Media Rich</h4>\n        \n                                                    Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna.</div>', 1787493816),
(1, 4, 69, 'Main', '<hr/>', 1787493816),
(1, 4, 72, 'Main', '<hr/>', 1787493816),
(1, 5, 66, 'Main : 15', '<div class="ccm-block-feature-item">\n            <h4><i class="fa fa-pencil"></i> Easy to Edit</h4>\n        \n                                                    Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna.</div>', 1787497969),
(1, 5, 67, 'Main : 16', '<div class="ccm-block-feature-item">\n            <h4><i class="fa fa-eye"></i> Pixel Perfect</h4>\n        \n                                                    Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna.</div>', 1787497969),
(1, 5, 68, 'Main : 17', '<div class="ccm-block-feature-item">\n            <h4><i class="fa fa-youtube-play"></i> Media Rich</h4>\n        \n                                                    Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna.</div>', 1787497969),
(1, 5, 69, 'Main', '<hr/>', 1787497969),
(1, 5, 72, 'Main', '<hr/>', 1787497969),
(1, 6, 60, 'Footer Social', '\n<div id="ccm-block-social-links60" class="ccm-block-social-links">\n    <ul class="list-inline">\n                <li>\n                <a target="_blank" rel="noopener noreferrer" href="http://twitter.com/concrete5"\n                    aria-label="Twitter"><i class="fa fa-twitter" aria-hidden="true" title="Twitter"></i></a>\n            </li>\n                    <li>\n                <a target="_blank" rel="noopener noreferrer" href="http://github.com/concrete5"\n                    aria-label="Github"><i class="fa fa-github-square" aria-hidden="true" title="Github"></i></a>\n            </li>\n                    <li>\n                <a target="_blank" rel="noopener noreferrer" href="http://facebook.com/concrete5"\n                    aria-label="Facebook"><i class="fa fa-facebook" aria-hidden="true" title="Facebook"></i></a>\n            </li>\n            </ul>\n</div>\n', 1787498146),
(1, 6, 61, 'Header Navigation', '\n<nav class="ccm-responsive-navigation original"><ul><li class="nav-selected nav-path-selected"><a href="http://localhost:8181/concrete5-8.5.5_Store/index.php" target="_self" class="nav-selected nav-path-selected">Home</a></li></ul></nav><div class="ccm-responsive-menu-launch"><i></i></div>', 1629735343),
(1, 6, 66, 'Main : 15', '<div class="ccm-block-feature-item">\n            <h4><i class="fa fa-pencil"></i> Easy to Edit</h4>\n        \n                                                    Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna.</div>', 1787498111),
(1, 6, 67, 'Main : 16', '<div class="ccm-block-feature-item">\n            <h4><i class="fa fa-eye"></i> Pixel Perfect</h4>\n        \n                                                    Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna.</div>', 1787498111),
(1, 6, 68, 'Main : 17', '<div class="ccm-block-feature-item">\n            <h4><i class="fa fa-youtube-play"></i> Media Rich</h4>\n        \n                                                    Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna.</div>', 1787498111),
(1, 6, 69, 'Main', '<hr/>', 1787498111),
(1, 6, 72, 'Main', '<hr/>', 1787498111),
(1, 7, 60, 'Footer Social', '\n<div id="ccm-block-social-links60" class="ccm-block-social-links">\n    <ul class="list-inline">\n                <li>\n                <a target="_blank" rel="noopener noreferrer" href="http://twitter.com/concrete5"\n                    aria-label="Twitter"><i class="fa fa-twitter" aria-hidden="true" title="Twitter"></i></a>\n            </li>\n                    <li>\n                <a target="_blank" rel="noopener noreferrer" href="http://github.com/concrete5"\n                    aria-label="Github"><i class="fa fa-github-square" aria-hidden="true" title="Github"></i></a>\n            </li>\n                    <li>\n                <a target="_blank" rel="noopener noreferrer" href="http://facebook.com/concrete5"\n                    aria-label="Facebook"><i class="fa fa-facebook" aria-hidden="true" title="Facebook"></i></a>\n            </li>\n            </ul>\n</div>\n', 1787498334),
(1, 7, 61, 'Header Navigation', '\n<nav class="ccm-responsive-navigation original"><ul><li class="nav-selected nav-path-selected"><a href="http://localhost:8181/concrete5-8.5.5_Store/index.php" target="_self" class="nav-selected nav-path-selected">Home</a></li></ul></nav><div class="ccm-responsive-menu-launch"><i></i></div>', 1629735532),
(1, 7, 64, 'Main', '<script>\n$(document).ready(function(){\n    $(function () {\n        $("#ccm-image-slider-64").responsiveSlides({\n            prevText: "",   // String: Text for the "previous" button\n            nextText: "",\n		 \n		pager: true,\n		            timeout: 4000,            speed: 500,                                            });\n    });\n});\n</script>\n\n<div class="ccm-image-slider-container ccm-block-image-slider-pages" >\n    <div class="ccm-image-slider">\n        <div class="ccm-image-slider-inner">\n\n                <ul class="rslides" id="ccm-image-slider-64">\n                            <li>\n                                                <img src="/concrete5-8.5.5_Store/application/files/1816/2968/8538/slider1.png" alt="Stand Out on the Web" width="1100" height="368">                                <div class="ccm-image-slider-text">\n                                        	<h2 class="ccm-image-slider-title">Stand Out on the Web</h2>\n                                        \n                                    <p>Share your business with an impressive, yet minimal presentation. Let your customers understand your web presence through elegance and clarity.</p>                </div>\n                </li>\n                            <li>\n                                                <img src="/concrete5-8.5.5_Store/application/files/7316/2968/8539/slider2.png" alt="A Simple Image Slider" width="1100" height="368">                                <div class="ccm-image-slider-text">\n                                        	<h2 class="ccm-image-slider-title">A Simple Image Slider</h2>\n                                        \n                                    <p>This image slider can have any content that you want in it.</p>                </div>\n                </li>\n                    </ul>\n                </div>\n\n    </div>\n</div>\n', 1787498563),
(1, 7, 65, 'Main', '<div class="row"><div class="col-sm-4">\n\n        <div class="ccm-custom-style-container ccm-custom-style-main15-66 feature-home-page"\n            >\n    <div class="ccm-block-feature-item">\n            <h4><i class="fa fa-pencil"></i> Easy to Edit</h4>\n        \n                                                    Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna.</div>\n    </div>\n</div><div class="col-sm-4">\n\n        <div class="ccm-custom-style-container ccm-custom-style-main16-67 feature-home-page"\n            >\n    <div class="ccm-block-feature-item">\n            <h4><i class="fa fa-eye"></i> Pixel Perfect</h4>\n        \n                                                    Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna.</div>\n    </div>\n</div><div class="col-sm-4">\n\n        <div class="ccm-custom-style-container ccm-custom-style-main17-68 feature-home-page"\n            >\n    <div class="ccm-block-feature-item">\n            <h4><i class="fa fa-youtube-play"></i> Media Rich</h4>\n        \n                                                    Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna.</div>\n    </div>\n</div></div>', 1787498564),
(1, 7, 66, 'Main : 15', '<div class="ccm-block-feature-item">\n            <h4><i class="fa fa-pencil"></i> Easy to Edit</h4>\n        \n                                                    Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna.</div>', 1787498333),
(1, 7, 67, 'Main : 16', '<div class="ccm-block-feature-item">\n            <h4><i class="fa fa-eye"></i> Pixel Perfect</h4>\n        \n                                                    Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna.</div>', 1787498333),
(1, 7, 68, 'Main : 17', '<div class="ccm-block-feature-item">\n            <h4><i class="fa fa-youtube-play"></i> Media Rich</h4>\n        \n                                                    Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna.</div>', 1787498333),
(1, 7, 69, 'Main', '<hr/>', 1787498333),
(1, 7, 70, 'Main', '\n                                    <p style="text-align: center"><span class="title-caps-bold">Presenting your Business has never been so easy</span></p><p style="text-align: center;">Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing.</p><p style="text-align: center;">Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna. </p>', 1787498564),
(1, 7, 71, 'Main', '\n<div class="ccm-block-page-list-thumbnail-grid-wrapper">\n\n    \n    \n            <div class="ccm-block-page-list-no-pages"></div>\n    \n</div>\n\n\n', 1629732464),
(1, 7, 72, 'Main', '<hr/>', 1787498333),
(1, 7, 73, 'Main', '<div class="row"><div class="col-sm-6">\n\n    <h5>Latest Blog Post</h5>\n</div><div class="col-sm-6">\n\n    <h5>Now Open For Business</h5>\n</div></div>', 1787498565),
(1, 7, 74, 'Main : 18', '<h5>Latest Blog Post</h5>', 1787498564),
(1, 7, 75, 'Main : 19', '<h5>Now Open For Business</h5>', 1787498564),
(1, 7, 76, 'Main', '<div class="row"><div class="col-sm-2">\n\n        <div class="ccm-custom-style-container ccm-custom-style-main20-77 recent-blog-entry"\n            >\n    \n    <div class="ccm-block-page-list-wrapper">\n\n        \n        \n        <div class="ccm-block-page-list-pages">\n\n                    </div><!-- end .ccm-block-page-list-pages -->\n\n                    <div class="ccm-block-page-list-no-pages"></div>\n        \n    </div><!-- end .ccm-block-page-list-wrapper -->\n\n\n    \n    \n    </div>\n</div><div class="col-sm-3">\n\n        <div class="ccm-custom-style-container ccm-custom-style-main21-78 recent-blog-entry"\n            >\n    \n    <div class="ccm-block-page-list-wrapper">\n\n        \n        \n        <div class="ccm-block-page-list-pages">\n\n                    </div><!-- end .ccm-block-page-list-pages -->\n\n                    <div class="ccm-block-page-list-no-pages"></div>\n        \n    </div><!-- end .ccm-block-page-list-wrapper -->\n\n\n    \n    \n    </div>\n</div><div class="col-sm-6 col-sm-offset-1">\n\n    \n                                                    <p>  <span class="title-thin">We specialize in making your concepts a reality.</span>  </p>  <p>    Sed cursus facilisis dignissim. Aliquam rhoncus enim et pellentesque varius. Nulla sodales nibh lorem, sit amet imperdiet arcu commodo sit amet. Mauris sed scelerisque nisl. Ut auctor ipsum tellus, vel viverra massa elementum sit amet.  </p>  <p>    Sed adipiscing tempus sem eu molestie. Aenean laoreet pretium ante vitae ultrices. Aenean eu gravida magna, vel aliquet magna. In auctor convallis gravida.<br>  </p>  <br/>  <p>  <a href=""><span class="btn btn-success">Contact Us Today</span></a>  </p>\n</div></div>', 1629732465),
(1, 7, 77, 'Main : 20', '\n    <div class="ccm-block-page-list-wrapper">\n\n        \n        \n        <div class="ccm-block-page-list-pages">\n\n                    </div><!-- end .ccm-block-page-list-pages -->\n\n                    <div class="ccm-block-page-list-no-pages"></div>\n        \n    </div><!-- end .ccm-block-page-list-wrapper -->\n\n\n    \n    ', 1629732465),
(1, 7, 78, 'Main : 21', '\n    <div class="ccm-block-page-list-wrapper">\n\n        \n        \n        <div class="ccm-block-page-list-pages">\n\n                    </div><!-- end .ccm-block-page-list-pages -->\n\n                    <div class="ccm-block-page-list-no-pages"></div>\n        \n    </div><!-- end .ccm-block-page-list-wrapper -->\n\n\n    \n    ', 1629732465),
(1, 7, 79, 'Main : 22', '\n                                                    <p>  <span class="title-thin">We specialize in making your concepts a reality.</span>  </p>  <p>    Sed cursus facilisis dignissim. Aliquam rhoncus enim et pellentesque varius. Nulla sodales nibh lorem, sit amet imperdiet arcu commodo sit amet. Mauris sed scelerisque nisl. Ut auctor ipsum tellus, vel viverra massa elementum sit amet.  </p>  <p>    Sed adipiscing tempus sem eu molestie. Aenean laoreet pretium ante vitae ultrices. Aenean eu gravida magna, vel aliquet magna. In auctor convallis gravida.<br>  </p>  <br/>  <p>  <a href=""><span class="btn btn-success">Contact Us Today</span></a>  </p>', 1787498565),
(1, 7, 80, 'Page Footer', '\n                                    <p style="text-align: center"><span class="title-caps">Customizable footer area with accent class.</span></p>', 1787498565),
(1, 7, 179, 'Main', '<p style="padding: 100px 0 250px 0; text-align:center;"><span style="font-size:64px; font-weight:bold; color:#fff;">THE WAY OF <span style="color:#28ABE3">SUCCESS</span></span><br />\r\n<span style="font-size:24px; color:#fff; text-align:center;">Apabila anda di landa masalah, anggaplah ianya satu cabaran kepada diri anda.</span></p>\r\n', 1787498563),
(1, 8, 60, 'Footer Social', '\n<div id="ccm-block-social-links60" class="ccm-block-social-links">\n    <ul class="list-inline">\n                <li>\n                <a target="_blank" rel="noopener noreferrer" href="http://twitter.com/concrete5"\n                    aria-label="Twitter"><i class="fa fa-twitter" aria-hidden="true" title="Twitter"></i></a>\n            </li>\n                    <li>\n                <a target="_blank" rel="noopener noreferrer" href="http://github.com/concrete5"\n                    aria-label="Github"><i class="fa fa-github-square" aria-hidden="true" title="Github"></i></a>\n            </li>\n                    <li>\n                <a target="_blank" rel="noopener noreferrer" href="http://facebook.com/concrete5"\n                    aria-label="Facebook"><i class="fa fa-facebook" aria-hidden="true" title="Facebook"></i></a>\n            </li>\n            </ul>\n</div>\n', 1787498784),
(1, 8, 64, 'Main', '<script>\n$(document).ready(function(){\n    $(function () {\n        $("#ccm-image-slider-64").responsiveSlides({\n            prevText: "",   // String: Text for the "previous" button\n            nextText: "",\n		 \n		pager: true,\n		            timeout: 4000,            speed: 500,                                            });\n    });\n});\n</script>\n\n<div class="ccm-image-slider-container ccm-block-image-slider-pages" >\n    <div class="ccm-image-slider">\n        <div class="ccm-image-slider-inner">\n\n                <ul class="rslides" id="ccm-image-slider-64">\n                            <li>\n                                                <img src="/concrete5-8.5.5_Store/application/files/1816/2968/8538/slider1.png" alt="Stand Out on the Web" width="1100" height="368">                                <div class="ccm-image-slider-text">\n                                        	<h2 class="ccm-image-slider-title">Stand Out on the Web</h2>\n                                        \n                                    <p>Share your business with an impressive, yet minimal presentation. Let your customers understand your web presence through elegance and clarity.</p>                </div>\n                </li>\n                            <li>\n                                                <img src="/concrete5-8.5.5_Store/application/files/7316/2968/8539/slider2.png" alt="A Simple Image Slider" width="1100" height="368">                                <div class="ccm-image-slider-text">\n                                        	<h2 class="ccm-image-slider-title">A Simple Image Slider</h2>\n                                        \n                                    <p>This image slider can have any content that you want in it.</p>                </div>\n                </li>\n                    </ul>\n                </div>\n\n    </div>\n</div>\n', 1787498802),
(1, 8, 65, 'Main', '<div class="row"><div class="col-sm-4">\n\n        <div class="ccm-custom-style-container ccm-custom-style-main15-66 feature-home-page"\n            >\n    <div class="ccm-block-feature-item">\n            <h4><i class="fa fa-pencil"></i> Easy to Edit</h4>\n        \n                                                    Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna.</div>\n    </div>\n</div><div class="col-sm-4">\n\n        <div class="ccm-custom-style-container ccm-custom-style-main16-67 feature-home-page"\n            >\n    <div class="ccm-block-feature-item">\n            <h4><i class="fa fa-eye"></i> Pixel Perfect</h4>\n        \n                                                    Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna.</div>\n    </div>\n</div><div class="col-sm-4">\n\n        <div class="ccm-custom-style-container ccm-custom-style-main17-68 feature-home-page"\n            >\n    <div class="ccm-block-feature-item">\n            <h4><i class="fa fa-youtube-play"></i> Media Rich</h4>\n        \n                                                    Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna.</div>\n    </div>\n</div></div>', 1787498803),
(1, 8, 66, 'Main : 15', '<div class="ccm-block-feature-item">\n            <h4><i class="fa fa-pencil"></i> Easy to Edit</h4>\n        \n                                                    Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna.</div>', 1787498782),
(1, 8, 67, 'Main : 16', '<div class="ccm-block-feature-item">\n            <h4><i class="fa fa-eye"></i> Pixel Perfect</h4>\n        \n                                                    Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna.</div>', 1787498782),
(1, 8, 68, 'Main : 17', '<div class="ccm-block-feature-item">\n            <h4><i class="fa fa-youtube-play"></i> Media Rich</h4>\n        \n                                                    Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna.</div>', 1787498782),
(1, 8, 69, 'Main', '<hr/>', 1787498783),
(1, 8, 70, 'Main', '\n                                    <p style="text-align: center"><span class="title-caps-bold">Presenting your Business has never been so easy</span></p><p style="text-align: center;">Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing.</p><p style="text-align: center;">Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna. </p>', 1787498803),
(1, 8, 71, 'Main', '\n<div class="ccm-block-page-list-thumbnail-grid-wrapper">\n\n    \n    \n            <div class="ccm-block-page-list-no-pages"></div>\n    \n</div>\n\n\n', 1629799819),
(1, 8, 72, 'Main', '<hr/>', 1787498783),
(1, 8, 73, 'Main', '<div class="row"><div class="col-sm-6">\n\n    <h5>Latest Blog Post</h5>\n</div><div class="col-sm-6">\n\n    <h5>Now Open For Business</h5>\n</div></div>', 1787498804),
(1, 8, 74, 'Main : 18', '<h5>Latest Blog Post</h5>', 1787498804),
(1, 8, 75, 'Main : 19', '<h5>Now Open For Business</h5>', 1787498804),
(1, 8, 76, 'Main', '<div class="row"><div class="col-sm-2">\n\n        <div class="ccm-custom-style-container ccm-custom-style-main20-77 recent-blog-entry"\n            >\n    \n    <div class="ccm-block-page-list-wrapper">\n\n        \n        \n        <div class="ccm-block-page-list-pages">\n\n                    </div><!-- end .ccm-block-page-list-pages -->\n\n                    <div class="ccm-block-page-list-no-pages"></div>\n        \n    </div><!-- end .ccm-block-page-list-wrapper -->\n\n\n    \n    \n    </div>\n</div><div class="col-sm-3">\n\n        <div class="ccm-custom-style-container ccm-custom-style-main21-78 recent-blog-entry"\n            >\n    \n    <div class="ccm-block-page-list-wrapper">\n\n        \n        \n        <div class="ccm-block-page-list-pages">\n\n                    </div><!-- end .ccm-block-page-list-pages -->\n\n                    <div class="ccm-block-page-list-no-pages"></div>\n        \n    </div><!-- end .ccm-block-page-list-wrapper -->\n\n\n    \n    \n    </div>\n</div><div class="col-sm-6 col-sm-offset-1">\n\n    \n                                                    <p>  <span class="title-thin">We specialize in making your concepts a reality.</span>  </p>  <p>    Sed cursus facilisis dignissim. Aliquam rhoncus enim et pellentesque varius. Nulla sodales nibh lorem, sit amet imperdiet arcu commodo sit amet. Mauris sed scelerisque nisl. Ut auctor ipsum tellus, vel viverra massa elementum sit amet.  </p>  <p>    Sed adipiscing tempus sem eu molestie. Aenean laoreet pretium ante vitae ultrices. Aenean eu gravida magna, vel aliquet magna. In auctor convallis gravida.<br>  </p>  <br/>  <p>  <a href=""><span class="btn btn-success">Contact Us Today</span></a>  </p>\n</div></div>', 1629799820),
(1, 8, 77, 'Main : 20', '\n    <div class="ccm-block-page-list-wrapper">\n\n        \n        \n        <div class="ccm-block-page-list-pages">\n\n                    </div><!-- end .ccm-block-page-list-pages -->\n\n                    <div class="ccm-block-page-list-no-pages"></div>\n        \n    </div><!-- end .ccm-block-page-list-wrapper -->\n\n\n    \n    ', 1629799819),
(1, 8, 78, 'Main : 21', '\n    <div class="ccm-block-page-list-wrapper">\n\n        \n        \n        <div class="ccm-block-page-list-pages">\n\n                    </div><!-- end .ccm-block-page-list-pages -->\n\n                    <div class="ccm-block-page-list-no-pages"></div>\n        \n    </div><!-- end .ccm-block-page-list-wrapper -->\n\n\n    \n    ', 1629799819),
(1, 8, 79, 'Main : 22', '\n                                                    <p>  <span class="title-thin">We specialize in making your concepts a reality.</span>  </p>  <p>    Sed cursus facilisis dignissim. Aliquam rhoncus enim et pellentesque varius. Nulla sodales nibh lorem, sit amet imperdiet arcu commodo sit amet. Mauris sed scelerisque nisl. Ut auctor ipsum tellus, vel viverra massa elementum sit amet.  </p>  <p>    Sed adipiscing tempus sem eu molestie. Aenean laoreet pretium ante vitae ultrices. Aenean eu gravida magna, vel aliquet magna. In auctor convallis gravida.<br>  </p>  <br/>  <p>  <a href=""><span class="btn btn-success">Contact Us Today</span></a>  </p>', 1787498805),
(1, 8, 80, 'Page Footer', '\n                                    <p style="text-align: center"><span class="title-caps">Customizable footer area with accent class.</span></p>', 1787498805),
(1, 8, 179, 'Main', '<p style="padding: 100px 0 250px 0; text-align:center;"><span style="font-size:64px; font-weight:bold; color:#fff;">THE WAY OF <span style="color:#28ABE3">SUCCESS</span></span><br />\r\n<span style="font-size:24px; color:#fff; text-align:center;">Apabila anda di landa masalah, anggaplah ianya satu cabaran kepada diri anda.</span></p>\r\n', 1787498802),
(1, 9, 60, 'Footer Social', '\n<div id="ccm-block-social-links60" class="ccm-block-social-links">\n    <ul class="list-inline">\n                <li>\n                <a target="_blank" rel="noopener noreferrer" href="http://twitter.com/concrete5"\n                    aria-label="Twitter"><i class="fa fa-twitter" aria-hidden="true" title="Twitter"></i></a>\n            </li>\n                    <li>\n                <a target="_blank" rel="noopener noreferrer" href="http://github.com/concrete5"\n                    aria-label="Github"><i class="fa fa-github-square" aria-hidden="true" title="Github"></i></a>\n            </li>\n                    <li>\n                <a target="_blank" rel="noopener noreferrer" href="http://facebook.com/concrete5"\n                    aria-label="Facebook"><i class="fa fa-facebook" aria-hidden="true" title="Facebook"></i></a>\n            </li>\n            </ul>\n</div>\n', 1787565964),
(1, 9, 66, 'Main : 15', '<div class="ccm-block-feature-item">\n            <h4><i class="fa fa-pencil"></i> Easy to Edit</h4>\n        \n                                                    Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna.</div>', 1787498953),
(1, 9, 68, 'Main : 17', '<div class="ccm-block-feature-item">\n            <h4><i class="fa fa-youtube-play"></i> Media Rich</h4>\n        \n                                                    Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna.</div>', 1787498954),
(1, 9, 69, 'Main', '<hr/>', 1787498954),
(1, 9, 72, 'Main', '<hr/>', 1787498954),
(1, 9, 184, 'Main : 16', '<div class="ccm-block-feature-item">\n            <h4><i class="fa fa-eye"></i> Pixel Perfect</h4>\n        <p>Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna....</p>\r\n</div>', 1787498937),
(1, 10, 60, 'Footer Social', '\n<div id="ccm-block-social-links60" class="ccm-block-social-links">\n    <ul class="list-inline">\n                <li>\n                <a target="_blank" rel="noopener noreferrer" href="http://twitter.com/concrete5"\n                    aria-label="Twitter"><i class="fa fa-twitter" aria-hidden="true" title="Twitter"></i></a>\n            </li>\n                    <li>\n                <a target="_blank" rel="noopener noreferrer" href="http://github.com/concrete5"\n                    aria-label="Github"><i class="fa fa-github-square" aria-hidden="true" title="Github"></i></a>\n            </li>\n                    <li>\n                <a target="_blank" rel="noopener noreferrer" href="http://facebook.com/concrete5"\n                    aria-label="Facebook"><i class="fa fa-facebook" aria-hidden="true" title="Facebook"></i></a>\n            </li>\n            </ul>\n</div>\n', 1787567218),
(1, 10, 64, 'Main', '<script>\n$(document).ready(function(){\n    $(function () {\n        $("#ccm-image-slider-64").responsiveSlides({\n            prevText: "",   // String: Text for the "previous" button\n            nextText: "",\n		 \n		pager: true,\n		            timeout: 4000,            speed: 500,                                            });\n    });\n});\n</script>\n\n<div class="ccm-image-slider-container ccm-block-image-slider-pages" >\n    <div class="ccm-image-slider">\n        <div class="ccm-image-slider-inner">\n\n                <ul class="rslides" id="ccm-image-slider-64">\n                            <li>\n                                                <img src="/concrete5-8.5.5_Store/application/files/1816/2968/8538/slider1.png" alt="Stand Out on the Web" width="1100" height="368">                                <div class="ccm-image-slider-text">\n                                        	<h2 class="ccm-image-slider-title">Stand Out on the Web</h2>\n                                        \n                                    <p>Share your business with an impressive, yet minimal presentation. Let your customers understand your web presence through elegance and clarity.</p>                </div>\n                </li>\n                            <li>\n                                                <img src="/concrete5-8.5.5_Store/application/files/7316/2968/8539/slider2.png" alt="A Simple Image Slider" width="1100" height="368">                                <div class="ccm-image-slider-text">\n                                        	<h2 class="ccm-image-slider-title">A Simple Image Slider</h2>\n                                        \n                                    <p>This image slider can have any content that you want in it.</p>                </div>\n                </li>\n                    </ul>\n                </div>\n\n    </div>\n</div>\n', 1787567153),
(1, 10, 65, 'Main', '<div class="row"><div class="col-sm-4">\n\n        <div class="ccm-custom-style-container ccm-custom-style-main15-66 feature-home-page"\n            >\n    <div class="ccm-block-feature-item">\n            <h4><i class="fa fa-pencil"></i> Easy to Edit</h4>\n        \n                                                    Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna.</div>\n    </div>\n</div><div class="col-sm-4">\n\n        <div class="ccm-custom-style-container ccm-custom-style-main16-185 feature-home-page"\n            >\n    <div class="ccm-block-feature-item">\n            <h4><i class="fa fa-eye"></i> Pixel Perfect</h4>\n        <p><strong>Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna....</strong></p>\r\n</div>\n    </div>\n</div><div class="col-sm-4">\n\n        <div class="ccm-custom-style-container ccm-custom-style-main17-68 feature-home-page"\n            >\n    <div class="ccm-block-feature-item">\n            <h4><i class="fa fa-youtube-play"></i> Media Rich</h4>\n        \n                                                    Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna.</div>\n    </div>\n</div></div>', 1787567154),
(1, 10, 66, 'Main : 15', '<div class="ccm-block-feature-item">\n            <h4><i class="fa fa-pencil"></i> Easy to Edit</h4>\n        \n                                                    Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna.</div>', 1787566461),
(1, 10, 68, 'Main : 17', '<div class="ccm-block-feature-item">\n            <h4><i class="fa fa-youtube-play"></i> Media Rich</h4>\n        \n                                                    Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna.</div>', 1787566461),
(1, 10, 69, 'Main', '<hr/>', 1787566461),
(1, 10, 70, 'Main', '\n                                    <p style="text-align: center"><span class="title-caps-bold">Presenting your Business has never been so easy</span></p><p style="text-align: center;">Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing.</p><p style="text-align: center;">Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna. </p>', 1787567154),
(1, 10, 71, 'Main', '\n<div class="ccm-block-page-list-thumbnail-grid-wrapper">\n\n    \n    \n            <div class="ccm-block-page-list-no-pages"></div>\n    \n</div>\n\n\n', 1629801054),
(1, 10, 72, 'Main', '<hr/>', 1787566462),
(1, 10, 73, 'Main', '<div class="row"><div class="col-sm-6">\n\n    <h5>Latest Blog Post</h5>\n</div><div class="col-sm-6">\n\n    <h5>Now Open For Business</h5>\n</div></div>', 1787567155),
(1, 10, 74, 'Main : 18', '<h5>Latest Blog Post</h5>', 1787567155),
(1, 10, 75, 'Main : 19', '<h5>Now Open For Business</h5>', 1787567155),
(1, 10, 76, 'Main', '<div class="row"><div class="col-sm-2">\n\n        <div class="ccm-custom-style-container ccm-custom-style-main20-77 recent-blog-entry"\n            >\n    \n    <div class="ccm-block-page-list-wrapper">\n\n        \n        \n        <div class="ccm-block-page-list-pages">\n\n                    </div><!-- end .ccm-block-page-list-pages -->\n\n                    <div class="ccm-block-page-list-no-pages"></div>\n        \n    </div><!-- end .ccm-block-page-list-wrapper -->\n\n\n    \n    \n    </div>\n</div><div class="col-sm-3">\n\n        <div class="ccm-custom-style-container ccm-custom-style-main21-78 recent-blog-entry"\n            >\n    \n    <div class="ccm-block-page-list-wrapper">\n\n        \n        \n        <div class="ccm-block-page-list-pages">\n\n                    </div><!-- end .ccm-block-page-list-pages -->\n\n                    <div class="ccm-block-page-list-no-pages"></div>\n        \n    </div><!-- end .ccm-block-page-list-wrapper -->\n\n\n    \n    \n    </div>\n</div><div class="col-sm-6 col-sm-offset-1">\n\n    \n                                                    <p>  <span class="title-thin">We specialize in making your concepts a reality.</span>  </p>  <p>    Sed cursus facilisis dignissim. Aliquam rhoncus enim et pellentesque varius. Nulla sodales nibh lorem, sit amet imperdiet arcu commodo sit amet. Mauris sed scelerisque nisl. Ut auctor ipsum tellus, vel viverra massa elementum sit amet.  </p>  <p>    Sed adipiscing tempus sem eu molestie. Aenean laoreet pretium ante vitae ultrices. Aenean eu gravida magna, vel aliquet magna. In auctor convallis gravida.<br>  </p>  <br/>  <p>  <a href=""><span class="btn btn-success">Contact Us Today</span></a>  </p>\n</div></div>', 1629801055);
INSERT INTO `CollectionVersionBlocksOutputCache` (`cID`, `cvID`, `bID`, `arHandle`, `btCachedBlockOutput`, `btCachedBlockOutputExpires`) VALUES
(1, 10, 77, 'Main : 20', '\n    <div class="ccm-block-page-list-wrapper">\n\n        \n        \n        <div class="ccm-block-page-list-pages">\n\n                    </div><!-- end .ccm-block-page-list-pages -->\n\n                    <div class="ccm-block-page-list-no-pages"></div>\n        \n    </div><!-- end .ccm-block-page-list-wrapper -->\n\n\n    \n    ', 1629801055),
(1, 10, 78, 'Main : 21', '\n    <div class="ccm-block-page-list-wrapper">\n\n        \n        \n        <div class="ccm-block-page-list-pages">\n\n                    </div><!-- end .ccm-block-page-list-pages -->\n\n                    <div class="ccm-block-page-list-no-pages"></div>\n        \n    </div><!-- end .ccm-block-page-list-wrapper -->\n\n\n    \n    ', 1629801055),
(1, 10, 79, 'Main : 22', '\n                                                    <p>  <span class="title-thin">We specialize in making your concepts a reality.</span>  </p>  <p>    Sed cursus facilisis dignissim. Aliquam rhoncus enim et pellentesque varius. Nulla sodales nibh lorem, sit amet imperdiet arcu commodo sit amet. Mauris sed scelerisque nisl. Ut auctor ipsum tellus, vel viverra massa elementum sit amet.  </p>  <p>    Sed adipiscing tempus sem eu molestie. Aenean laoreet pretium ante vitae ultrices. Aenean eu gravida magna, vel aliquet magna. In auctor convallis gravida.<br>  </p>  <br/>  <p>  <a href=""><span class="btn btn-success">Contact Us Today</span></a>  </p>', 1787567155),
(1, 10, 80, 'Page Footer', '\n                                    <p style="text-align: center"><span class="title-caps">Customizable footer area with accent class.</span></p>', 1787567155),
(1, 10, 179, 'Main', '<p style="padding: 100px 0 250px 0; text-align:center;"><span style="font-size:64px; font-weight:bold; color:#fff;">THE WAY OF <span style="color:#28ABE3">SUCCESS</span></span><br />\r\n<span style="font-size:24px; color:#fff; text-align:center;">Apabila anda di landa masalah, anggaplah ianya satu cabaran kepada diri anda.</span></p>\r\n', 1787567153),
(1, 10, 185, 'Main : 16', '<div class="ccm-block-feature-item">\n            <h4><i class="fa fa-eye"></i> Pixel Perfect</h4>\n        <p><strong>Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna....</strong></p>\r\n</div>', 1787566436),
(1, 12, 186, '1', '<p style="padding: 100px 0 250px 0; text-align:center;"><span style="font-size:64px; font-weight:bold; color:#fff;">THE WAY OF <span style="color:#28ABE3">SUCCESS</span></span><br />\r\n<span style="font-size:24px; color:#fff; text-align:center;">Apabila anda di landa masalah, anggaplah ianya satu cabaran kepada diri anda.</span></p>\r\n', 1787572752),
(1, 15, 192, 'Content', '<p style="padding: 100px 0 250px 0; text-align:center;"><span style="font-size:64px; font-weight:bold; color:#fff;">THE WAY OF <span style="color:#28ABE3">SUCCESS</span></span><br />\r\n<span style="font-size:24px; color:#fff; text-align:center;">Apabila anda di landa masalah, anggaplah ianya satu cabaran kepada diri anda.</span></p>\r\n', 1787576048),
(1, 16, 192, 'Content', '<p style="padding: 100px 0 250px 0; text-align:center;"><span style="font-size:64px; font-weight:bold; color:#fff;">THE WAY OF <span style="color:#28ABE3">SUCCESS</span></span><br />\r\n<span style="font-size:24px; color:#fff; text-align:center;">Apabila anda di landa masalah, anggaplah ianya satu cabaran kepada diri anda.</span></p>\r\n', 1787580182),
(1, 17, 192, 'Content', '<p style="padding: 100px 0 250px 0; text-align:center;"><span style="font-size:64px; font-weight:bold; color:#fff;">THE WAY OF <span style="color:#28ABE3">SUCCESS</span></span><br />\r\n<span style="font-size:24px; color:#fff; text-align:center;">Apabila anda di landa masalah, anggaplah ianya satu cabaran kepada diri anda.</span></p>\r\n', 1787582320),
(1, 18, 192, 'Content', '<p style="padding: 100px 0 250px 0; text-align:center;"><span style="font-size:64px; font-weight:bold; color:#fff;">THE WAY OF <span style="color:#28ABE3">SUCCESS</span></span><br />\r\n<span style="font-size:24px; color:#fff; text-align:center;">Apabila anda di landa masalah, anggaplah ianya satu cabaran kepada diri anda.</span></p>\r\n', 1787583927),
(169, 1, 1, 'Main', '', 1629794031),
(169, 1, 4, 'Main : 2', '', 1629714833),
(169, 1, 7, 'Main : 4', '\n<div class="ccm-block-rss-displayer-wrapper">\n    <div class="ccm-block-rss-displayer">\n\n\n    <div class="ccm-block-rss-displayer-header">\n    	<h5>Tutorials</h5>\n    </div>\n\n		\n		<div class="ccm-block-rss-displayer-item">\n			<div class="ccm-block-rss-displayer-item-title">\n				<a href="https://documentation.concretecms.org/tutorials/add-developers-get-your-add-ons-ready-concrete-cms-90" target="_blank" >\n					Add-On Developers: Get Your Add-Ons Ready for Concrete CMS 9.0				</a>\n			</div>\n			<div class="ccm-block-rss-displayer-item-date">Aug 7, 2021</div>\n			<div class="ccm-block-rss-displayer-item-summary">\n				Concrete CMS 9.0 is coming! But there are some changes in version 9 that might affected your add-ons and themes. This document aims to answer questions about the most common ways that your add-ons might need to be changed, and common problems you\'ll run i…			</div>\n		</div>\n	\n    </div>\n\n</div>', 1629711189),
(169, 1, 8, 'Main : 5', '', 1629714836),
(169, 1, 10, 'Main : 6', '<div class="ccm-block-dashboard-newsflow-latest-wrapper">\n    <div class="ccm-block-dashboard-newsflow-latest">\n        <h3>Spread the word!</h3>\r\n<p>G2 is doing their 2021 product market review and we<a href="https://www.g2.com/products/concrete-cms/take_survey"> could use some fresh reviews.</a><br /><br /></p>    </div>\n</div>\n', 1629714791),
(169, 1, 11, 'Main : 7', '<div class="ccm-block-dashboard-newsflow-latest-wrapper">\n    <div class="ccm-block-dashboard-newsflow-latest">\n            </div>\n</div>\n', 1629714792),
(169, 1, 12, 'Main : 8', '<div class="ccm-block-dashboard-newsflow-latest-wrapper">\n    <div class="ccm-block-dashboard-newsflow-latest">\n        \n<div id="deal-of-day-0" class="deal-of-day">\n	<h6>Marketplace Deal of the Day</h6>\n</div>    </div>\n</div>\n', 1629714793),
(169, 1, 13, 'Main', '\n<div class="ccm-block-rss-displayer-wrapper">\n    <div class="ccm-block-rss-displayer">\n\n\n    <div class="ccm-block-rss-displayer-header">\n    	<h5>News from concrete5.org</h5>\n    </div>\n\n		\n		<div class="ccm-block-rss-displayer-item">\n			<div class="ccm-block-rss-displayer-item-title">\n				<a href="https://www.concretecms.com/about/blog/philosophy-culture/see-one-do-one-teach-one-best-way-train" target="_blank" >\n					See One, Do One, Teach One = The best way to train				</a>\n			</div>\n			<div class="ccm-block-rss-displayer-item-date">Aug 15, 2021</div>\n			<div class="ccm-block-rss-displayer-item-summary">\n				Training made easy with SO-DO-TO			</div>\n		</div>\n	\n		\n		<div class="ccm-block-rss-displayer-item">\n			<div class="ccm-block-rss-displayer-item-title">\n				<a href="https://www.concretecms.com/about/blog/core-releases/concrete-cms-900rc2-now-available" target="_blank" >\n					Concrete CMS 9.0.0RC2 is Now Available!				</a>\n			</div>\n			<div class="ccm-block-rss-displayer-item-date">Aug 7, 2021</div>\n			<div class="ccm-block-rss-displayer-item-summary">\n				The second release candidate for Concrete CMS 9.0 is now available. 			</div>\n		</div>\n	\n		\n		<div class="ccm-block-rss-displayer-item">\n			<div class="ccm-block-rss-displayer-item-title">\n				<a href="https://www.concretecms.com/about/blog/community-blog/why-devops-matters" target="_blank" >\n					Why DevOps Matters?				</a>\n			</div>\n			<div class="ccm-block-rss-displayer-item-date">Aug 6, 2021</div>\n			<div class="ccm-block-rss-displayer-item-summary">\n				We used to write software without all this "DevOps" talk, what does it even mean and why bother?			</div>\n		</div>\n	\n    </div>\n\n</div>', 1629711196),
(169, 3, 1, 'Main', '', 1629794702),
(169, 3, 4, 'Main : 2', '', 1629715504),
(169, 3, 7, 'Main : 4', '\n<div class="ccm-block-rss-displayer-wrapper">\n    <div class="ccm-block-rss-displayer">\n\n\n    <div class="ccm-block-rss-displayer-header">\n    	<h5>Tutorials</h5>\n    </div>\n\n		\n		<div class="ccm-block-rss-displayer-item">\n			<div class="ccm-block-rss-displayer-item-title">\n				<a href="https://documentation.concretecms.org/tutorials/add-developers-get-your-add-ons-ready-concrete-cms-90" target="_blank" >\n					Add-On Developers: Get Your Add-Ons Ready for Concrete CMS 9.0				</a>\n			</div>\n			<div class="ccm-block-rss-displayer-item-date">Aug 7, 2021</div>\n			<div class="ccm-block-rss-displayer-item-summary">\n				Concrete CMS 9.0 is coming! But there are some changes in version 9 that might affected your add-ons and themes. This document aims to answer questions about the most common ways that your add-ons might need to be changed, and common problems you\'ll run i…			</div>\n		</div>\n	\n    </div>\n\n</div>', 1629711870),
(169, 3, 8, 'Main : 5', '', 1629715506),
(169, 3, 10, 'Main : 6', '<div class="ccm-block-dashboard-newsflow-latest-wrapper">\n    <div class="ccm-block-dashboard-newsflow-latest">\n        <h3>Spread the word!</h3>\r\n<p>G2 is doing their 2021 product market review and we<a href="https://www.g2.com/products/concrete-cms/take_survey"> could use some fresh reviews.</a><br /><br /></p>    </div>\n</div>\n', 1629715473),
(169, 3, 11, 'Main : 7', '<div class="ccm-block-dashboard-newsflow-latest-wrapper">\n    <div class="ccm-block-dashboard-newsflow-latest">\n            </div>\n</div>\n', 1629715474),
(169, 3, 12, 'Main : 8', '<div class="ccm-block-dashboard-newsflow-latest-wrapper">\n    <div class="ccm-block-dashboard-newsflow-latest">\n        \n<div id="deal-of-day-0" class="deal-of-day">\n	<h6>Marketplace Deal of the Day</h6>\n</div>    </div>\n</div>\n', 1629715475),
(169, 3, 13, 'Main', '\n<div class="ccm-block-rss-displayer-wrapper">\n    <div class="ccm-block-rss-displayer">\n\n\n    <div class="ccm-block-rss-displayer-header">\n    	<h5>News from concrete5.org</h5>\n    </div>\n\n		\n		<div class="ccm-block-rss-displayer-item">\n			<div class="ccm-block-rss-displayer-item-title">\n				<a href="https://www.concretecms.com/about/blog/philosophy-culture/see-one-do-one-teach-one-best-way-train" target="_blank" >\n					See One, Do One, Teach One = The best way to train				</a>\n			</div>\n			<div class="ccm-block-rss-displayer-item-date">Aug 15, 2021</div>\n			<div class="ccm-block-rss-displayer-item-summary">\n				Training made easy with SO-DO-TO			</div>\n		</div>\n	\n		\n		<div class="ccm-block-rss-displayer-item">\n			<div class="ccm-block-rss-displayer-item-title">\n				<a href="https://www.concretecms.com/about/blog/core-releases/concrete-cms-900rc2-now-available" target="_blank" >\n					Concrete CMS 9.0.0RC2 is Now Available!				</a>\n			</div>\n			<div class="ccm-block-rss-displayer-item-date">Aug 7, 2021</div>\n			<div class="ccm-block-rss-displayer-item-summary">\n				The second release candidate for Concrete CMS 9.0 is now available. 			</div>\n		</div>\n	\n		\n		<div class="ccm-block-rss-displayer-item">\n			<div class="ccm-block-rss-displayer-item-title">\n				<a href="https://www.concretecms.com/about/blog/community-blog/why-devops-matters" target="_blank" >\n					Why DevOps Matters?				</a>\n			</div>\n			<div class="ccm-block-rss-displayer-item-date">Aug 6, 2021</div>\n			<div class="ccm-block-rss-displayer-item-summary">\n				We used to write software without all this "DevOps" talk, what does it even mean and why bother?			</div>\n		</div>\n	\n    </div>\n\n</div>', 1629711875),
(180, 1, 60, 'Footer Social', '\n<div id="ccm-block-social-links60" class="ccm-block-social-links">\n    <ul class="list-inline">\n                <li>\n                <a target="_blank" rel="noopener noreferrer" href="http://twitter.com/concrete5"\n                    aria-label="Twitter"><i class="fa fa-twitter" aria-hidden="true" title="Twitter"></i></a>\n            </li>\n                    <li>\n                <a target="_blank" rel="noopener noreferrer" href="http://github.com/concrete5"\n                    aria-label="Github"><i class="fa fa-github-square" aria-hidden="true" title="Github"></i></a>\n            </li>\n                    <li>\n                <a target="_blank" rel="noopener noreferrer" href="http://facebook.com/concrete5"\n                    aria-label="Facebook"><i class="fa fa-facebook" aria-hidden="true" title="Facebook"></i></a>\n            </li>\n            </ul>\n</div>\n', 1787475280),
(180, 1, 61, 'Header Navigation', '\n<nav class="ccm-responsive-navigation original"><ul><li class=""><a href="http://localhost:8181/concrete5-8.5.5_Store/index.php/my-dashboard" target="_self" class="">My Dashboard</a><ul><li class=""><a href="http://localhost:8181/concrete5-8.5.5_Store/index.php/my-dashboard/landing-pages" target="_self" class="">Add Landing Pages</a></li><li class=""><a href="http://localhost:8181/concrete5-8.5.5_Store/index.php/my-dashboard/users" target="_self" class="">Users</a></li></ul></li></ul></nav><div class="ccm-responsive-menu-launch"><i></i></div>', 1629712480),
(238, 1, 60, 'Footer Social', '\n<div id="ccm-block-social-links60" class="ccm-block-social-links">\n    <ul class="list-inline">\n                <li>\n                <a target="_blank" rel="noopener noreferrer" href="http://twitter.com/concrete5"\n                    aria-label="Twitter"><i class="fa fa-twitter" aria-hidden="true" title="Twitter"></i></a>\n            </li>\n                    <li>\n                <a target="_blank" rel="noopener noreferrer" href="http://github.com/concrete5"\n                    aria-label="Github"><i class="fa fa-github-square" aria-hidden="true" title="Github"></i></a>\n            </li>\n                    <li>\n                <a target="_blank" rel="noopener noreferrer" href="http://facebook.com/concrete5"\n                    aria-label="Facebook"><i class="fa fa-facebook" aria-hidden="true" title="Facebook"></i></a>\n            </li>\n            </ul>\n</div>\n', 1787471831),
(238, 1, 61, 'Header Navigation', '\n<nav class="ccm-responsive-navigation original"><ul><li class=""><a href="http://localhost:8181/concrete5-8.5.5_Store/index.php/services" target="_self" class="">Services</a></li><li class=""><a href="http://localhost:8181/concrete5-8.5.5_Store/index.php/portfolio" target="_self" class="">Portfolio</a></li><li class=""><a href="http://localhost:8181/concrete5-8.5.5_Store/index.php/team" target="_self" class="">Team</a><ul><li class=""><a href="http://localhost:8181/concrete5-8.5.5_Store/index.php/team/about" target="_self" class="">About</a></li><li class=""><a href="http://localhost:8181/concrete5-8.5.5_Store/index.php/team/careers" target="_self" class="">Careers</a></li><li class=""><a href="http://localhost:8181/concrete5-8.5.5_Store/index.php/team/faq" target="_self" class="">Frequently Asked Questions</a></li></ul></li><li class=""><a href="http://localhost:8181/concrete5-8.5.5_Store/index.php/blog" target="_self" class="">Blog</a></li><li class=""><a href="http://localhost:8181/concrete5-8.5.5_Store/index.php/contact" target="_self" class="">Contact</a></li><li class="nav-path-selected"><a href="http://localhost:8181/concrete5-8.5.5_Store/index.php/my-dashboard" target="_self" class="nav-path-selected">My Dashboard</a><ul><li class=""><a href="http://localhost:8181/concrete5-8.5.5_Store/index.php/my-dashboard/landing-pages" target="_self" class="">Add Landing Pages</a></li><li class="nav-path-selected"><a href="http://localhost:8181/concrete5-8.5.5_Store/index.php/my-dashboard/users" target="_self" class="nav-path-selected">Users</a></li></ul></li></ul></nav><div class="ccm-responsive-menu-launch"><i></i></div>', 1629709030);

-- --------------------------------------------------------

--
-- Table structure for table `CollectionVersionBlockStyles`
--

CREATE TABLE `CollectionVersionBlockStyles` (
  `cID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cvID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `bID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `issID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `CollectionVersionBlockStyles`
--

INSERT INTO `CollectionVersionBlockStyles` (`cID`, `cvID`, `bID`, `arHandle`, `issID`) VALUES
(169, 1, 13, 'Main', 1),
(169, 2, 13, 'Main', 1),
(169, 3, 13, 'Main', 1),
(169, 4, 13, 'Main', 1),
(209, 1, 24, 'Sidebar', 2),
(209, 1, 25, 'Sidebar', 3),
(216, 1, 31, 'Sidebar', 4),
(197, 1, 50, 'Main : 13', 5),
(197, 1, 51, 'Main : 14', 6),
(197, 1, 52, 'Main : 14', 7),
(194, 1, 54, 'Main', 8),
(1, 1, 66, 'Main : 15', 9),
(1, 2, 66, 'Main : 15', 9),
(1, 3, 66, 'Main : 15', 9),
(1, 4, 66, 'Main : 15', 9),
(1, 5, 66, 'Main : 15', 9),
(1, 6, 66, 'Main : 15', 9),
(1, 7, 66, 'Main : 15', 9),
(1, 8, 66, 'Main : 15', 9),
(1, 9, 66, 'Main : 15', 9),
(1, 10, 66, 'Main : 15', 9),
(1, 11, 66, 'Main : 15', 9),
(1, 12, 66, 'Main : 15', 9),
(1, 13, 66, 'Main : 15', 9),
(1, 14, 66, 'Main : 15', 9),
(1, 15, 66, 'Main : 15', 9),
(1, 16, 66, 'Main : 15', 9),
(1, 17, 66, 'Main : 15', 9),
(1, 18, 66, 'Main : 15', 9),
(1, 1, 67, 'Main : 16', 10),
(1, 2, 67, 'Main : 16', 10),
(1, 3, 67, 'Main : 16', 10),
(1, 4, 67, 'Main : 16', 10),
(1, 5, 67, 'Main : 16', 10),
(1, 6, 67, 'Main : 16', 10),
(1, 7, 67, 'Main : 16', 10),
(1, 8, 67, 'Main : 16', 10),
(1, 9, 184, 'Main : 16', 10),
(1, 10, 185, 'Main : 16', 10),
(1, 11, 185, 'Main : 16', 10),
(1, 12, 185, 'Main : 16', 10),
(1, 13, 185, 'Main : 16', 10),
(1, 14, 185, 'Main : 16', 10),
(1, 15, 185, 'Main : 16', 10),
(1, 16, 185, 'Main : 16', 10),
(1, 17, 185, 'Main : 16', 10),
(1, 18, 185, 'Main : 16', 10),
(1, 1, 68, 'Main : 17', 11),
(1, 2, 68, 'Main : 17', 11),
(1, 3, 68, 'Main : 17', 11),
(1, 4, 68, 'Main : 17', 11),
(1, 5, 68, 'Main : 17', 11),
(1, 6, 68, 'Main : 17', 11),
(1, 7, 68, 'Main : 17', 11),
(1, 8, 68, 'Main : 17', 11),
(1, 9, 68, 'Main : 17', 11),
(1, 10, 68, 'Main : 17', 11),
(1, 11, 68, 'Main : 17', 11),
(1, 12, 68, 'Main : 17', 11),
(1, 13, 68, 'Main : 17', 11),
(1, 14, 68, 'Main : 17', 11),
(1, 15, 68, 'Main : 17', 11),
(1, 16, 68, 'Main : 17', 11),
(1, 17, 68, 'Main : 17', 11),
(1, 18, 68, 'Main : 17', 11),
(1, 1, 70, 'Main', 12),
(1, 2, 70, 'Main', 12),
(1, 3, 70, 'Main', 12),
(1, 4, 70, 'Main', 12),
(1, 5, 70, 'Main', 12),
(1, 6, 70, 'Main', 12),
(1, 7, 70, 'Main', 12),
(1, 8, 70, 'Main', 12),
(1, 9, 70, 'Main', 12),
(1, 10, 70, 'Main', 12),
(1, 11, 70, 'Main', 12),
(1, 12, 70, 'Main', 12),
(1, 13, 70, 'Main', 12),
(1, 14, 70, 'Main', 12),
(1, 15, 70, 'Main', 12),
(1, 16, 70, 'Main', 12),
(1, 17, 70, 'Main', 12),
(1, 18, 70, 'Main', 12),
(1, 1, 77, 'Main : 20', 13),
(1, 2, 77, 'Main : 20', 13),
(1, 3, 77, 'Main : 20', 13),
(1, 4, 77, 'Main : 20', 13),
(1, 5, 77, 'Main : 20', 13),
(1, 6, 77, 'Main : 20', 13),
(1, 7, 77, 'Main : 20', 13),
(1, 8, 77, 'Main : 20', 13),
(1, 9, 77, 'Main : 20', 13),
(1, 10, 77, 'Main : 20', 13),
(1, 11, 77, 'Main : 20', 13),
(1, 12, 77, 'Main : 20', 13),
(1, 13, 77, 'Main : 20', 13),
(1, 14, 77, 'Main : 20', 13),
(1, 15, 77, 'Main : 20', 13),
(1, 16, 77, 'Main : 20', 13),
(1, 17, 77, 'Main : 20', 13),
(1, 18, 77, 'Main : 20', 13),
(1, 1, 78, 'Main : 21', 14),
(1, 2, 78, 'Main : 21', 14),
(1, 3, 78, 'Main : 21', 14),
(1, 4, 78, 'Main : 21', 14),
(1, 5, 78, 'Main : 21', 14),
(1, 6, 78, 'Main : 21', 14),
(1, 7, 78, 'Main : 21', 14),
(1, 8, 78, 'Main : 21', 14),
(1, 9, 78, 'Main : 21', 14),
(1, 10, 78, 'Main : 21', 14),
(1, 11, 78, 'Main : 21', 14),
(1, 12, 78, 'Main : 21', 14),
(1, 13, 78, 'Main : 21', 14),
(1, 14, 78, 'Main : 21', 14),
(1, 15, 78, 'Main : 21', 14),
(1, 16, 78, 'Main : 21', 14),
(1, 17, 78, 'Main : 21', 14),
(1, 18, 78, 'Main : 21', 14),
(1, 5, 179, 'Main', 29),
(1, 6, 179, 'Main', 29),
(1, 7, 179, 'Main', 29),
(1, 8, 179, 'Main', 29),
(1, 9, 179, 'Main', 29),
(1, 10, 179, 'Main', 29),
(1, 11, 179, 'Main', 29),
(1, 12, 179, 'Main', 29),
(1, 13, 179, 'Main', 29),
(1, 14, 179, 'Main', 29),
(1, 15, 179, 'Main', 29),
(1, 16, 179, 'Main', 29),
(1, 17, 179, 'Main', 29),
(1, 18, 179, 'Main', 29),
(1, 14, 192, 'Content', 32),
(1, 15, 192, 'Content', 32),
(1, 16, 192, 'Content', 32),
(1, 17, 192, 'Content', 32),
(1, 18, 192, 'Content', 32);

-- --------------------------------------------------------

--
-- Table structure for table `CollectionVersionFeatureAssignments`
--

CREATE TABLE `CollectionVersionFeatureAssignments` (
  `cID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cvID` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `faID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `CollectionVersionFeatureAssignments`
--

INSERT INTO `CollectionVersionFeatureAssignments` (`cID`, `cvID`, `faID`) VALUES
(209, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `CollectionVersionRelatedEdits`
--

CREATE TABLE `CollectionVersionRelatedEdits` (
  `cID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cvID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cRelationID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cvRelationID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `CollectionVersions`
--

CREATE TABLE `CollectionVersions` (
  `cID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cvID` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `cvName` text COLLATE utf8mb4_unicode_ci,
  `cvHandle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cvDescription` text COLLATE utf8mb4_unicode_ci,
  `cvDatePublic` datetime DEFAULT NULL,
  `cvDateCreated` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `cvComments` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cvIsApproved` tinyint(1) NOT NULL DEFAULT '0',
  `cvIsNew` tinyint(1) NOT NULL DEFAULT '0',
  `cvAuthorUID` int(10) UNSIGNED DEFAULT NULL,
  `cvApproverUID` int(10) UNSIGNED DEFAULT NULL,
  `pThemeID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pTemplateID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cvActivateDatetime` datetime DEFAULT NULL,
  `cvPublishDate` datetime DEFAULT NULL,
  `cvPublishEndDate` datetime DEFAULT NULL,
  `cvDateApproved` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `CollectionVersions`
--

INSERT INTO `CollectionVersions` (`cID`, `cvID`, `cvName`, `cvHandle`, `cvDescription`, `cvDatePublic`, `cvDateCreated`, `cvComments`, `cvIsApproved`, `cvIsNew`, `cvAuthorUID`, `cvApproverUID`, `pThemeID`, `pTemplateID`, `cvActivateDatetime`, `cvPublishDate`, `cvPublishEndDate`, `cvDateApproved`) VALUES
(1, 1, 'Home', '', NULL, '2021-08-23 11:10:17', '2021-08-23 11:10:17', 'Initial Version', 0, 0, 1, NULL, 3, 5, NULL, NULL, NULL, NULL),
(1, 2, 'Home', '', NULL, '2021-08-23 11:10:17', '2021-08-23 21:54:01', 'New Version 2', 0, 0, 1, 1, 3, 5, NULL, NULL, NULL, '2021-08-23 21:54:01'),
(1, 3, 'Home', '', '', '2021-08-23 11:10:00', '2021-08-23 22:02:22', 'New Version 3', 0, 0, 1, 1, 3, 5, NULL, NULL, NULL, '2021-08-23 22:02:23'),
(1, 4, 'Home', '', '', '2021-08-23 11:10:00', '2021-08-23 22:03:25', 'New Version 4', 0, 0, 1, 1, 3, 5, NULL, NULL, NULL, '2021-08-23 22:03:26'),
(1, 5, 'Home', '', '', '2021-08-23 11:10:00', '2021-08-23 23:05:47', 'Version 5', 0, 0, 2, NULL, 3, 5, NULL, NULL, NULL, NULL),
(1, 6, 'Home', '', '', '2021-08-23 11:10:00', '2021-08-23 23:14:51', 'Version 6', 0, 0, 2, 1, 3, 5, NULL, NULL, NULL, '2021-08-23 23:16:07'),
(1, 7, 'Home', '', '', '2021-08-23 11:10:00', '2021-08-23 23:17:38', 'Version 7', 0, 0, 1, 1, 3, 5, NULL, NULL, NULL, '2021-08-23 23:18:48'),
(1, 8, 'Home', '', '', '2021-08-23 11:10:00', '2021-08-23 23:25:23', 'Version 8', 0, 0, 1, 1, 3, 5, NULL, NULL, NULL, '2021-08-23 23:26:18'),
(1, 9, 'Home', '', '', '2021-08-23 11:10:00', '2021-08-23 23:28:54', 'Version 9', 0, 0, 2, 1, 3, 5, NULL, NULL, NULL, '2021-08-24 18:09:27'),
(1, 10, 'Home', '', '', '2021-08-23 11:10:00', '2021-08-24 18:13:52', 'Version 10', 0, 0, 2, 2, 3, 5, NULL, NULL, NULL, '2021-08-24 18:14:16'),
(1, 11, 'Home', '', '', '2021-08-23 11:10:00', '2021-08-24 18:59:05', 'Version 11', 0, 0, 1, 1, 3, 5, NULL, NULL, NULL, '2021-08-24 19:04:33'),
(1, 12, 'Home', '', '', '2021-08-23 11:10:00', '2021-08-24 19:07:04', 'New Version 12', 0, 0, 1, 1, 3, 5, NULL, NULL, NULL, '2021-08-24 19:16:52'),
(1, 13, 'Home', '', '', '2021-08-23 11:10:00', '2021-08-24 20:00:56', 'Version 13', 0, 0, 1, 1, 3, 5, NULL, NULL, NULL, '2021-08-24 20:01:17'),
(1, 14, 'Home', '', '', '2021-08-23 11:10:00', '2021-08-24 20:07:59', 'Version 14', 0, 0, 1, 1, 3, 5, NULL, NULL, NULL, '2021-08-24 20:24:39'),
(1, 15, 'Home', '', '', '2021-08-23 11:10:00', '2021-08-24 20:48:10', 'Version 15', 0, 0, 1, 1, 3, 5, NULL, NULL, NULL, '2021-08-24 20:53:47'),
(1, 16, 'Home', '', '', '2021-08-23 11:10:00', '2021-08-24 21:56:10', 'Version 16', 0, 0, 1, 1, 3, 5, NULL, NULL, NULL, '2021-08-24 21:58:54'),
(1, 17, 'Home', '', '', '2021-08-23 11:10:00', '2021-08-24 22:20:54', 'Version 17', 0, 0, 1, 1, 3, 5, NULL, NULL, NULL, '2021-08-24 22:22:51'),
(1, 18, 'Home', '', '', '2021-08-23 11:10:00', '2021-08-24 22:43:22', 'Version 18', 1, 0, 1, 1, 3, 5, NULL, NULL, NULL, '2021-08-24 22:46:43'),
(2, 1, 'Dashboard', 'dashboard', '', '2021-08-23 11:13:24', '2021-08-23 11:13:24', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(3, 1, 'Sitemap', 'sitemap', 'Whole world at a glance.', '2021-08-23 11:13:24', '2021-08-23 11:13:24', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(4, 1, 'Full Sitemap', 'full', '', '2021-08-23 11:13:25', '2021-08-23 11:13:25', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(5, 1, 'Flat View', 'explore', '', '2021-08-23 11:13:25', '2021-08-23 11:13:25', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(6, 1, 'Page Search', 'search', '', '2021-08-23 11:13:25', '2021-08-23 11:13:25', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(7, 1, 'Files', 'files', 'All documents and images.', '2021-08-23 11:13:25', '2021-08-23 11:13:25', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(8, 1, 'File Manager', 'search', '', '2021-08-23 11:13:25', '2021-08-23 11:13:25', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(9, 1, 'Attributes', 'attributes', '', '2021-08-23 11:13:25', '2021-08-23 11:13:25', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(10, 1, 'File Sets', 'sets', '', '2021-08-23 11:13:25', '2021-08-23 11:13:25', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(11, 1, 'Add File Set', 'add_set', '', '2021-08-23 11:13:25', '2021-08-23 11:13:25', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(12, 1, 'Members', 'users', 'Add and manage the user accounts and groups on your website.', '2021-08-23 11:13:25', '2021-08-23 11:13:25', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(13, 1, 'Search Users', 'search', '', '2021-08-23 11:13:26', '2021-08-23 11:13:26', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(14, 1, 'User Groups', 'groups', '', '2021-08-23 11:13:26', '2021-08-23 11:13:26', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(15, 1, 'Send Message to Group', 'message', '', '2021-08-23 11:13:26', '2021-08-23 11:13:26', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(16, 1, 'Attributes', 'attributes', '', '2021-08-23 11:13:26', '2021-08-23 11:13:26', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(17, 1, 'Add User', 'add', '', '2021-08-23 11:13:26', '2021-08-23 11:13:26', 'Initial Version', 0, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(17, 2, 'Add User', 'add', '', '2021-08-23 11:13:00', '2021-08-23 17:56:21', 'New Version 2', 1, 0, 1, 1, 0, 0, NULL, NULL, NULL, '2021-08-23 17:56:22'),
(18, 1, 'Add Group', 'add_group', '', '2021-08-23 11:13:26', '2021-08-23 11:13:26', 'Initial Version', 0, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(18, 2, 'Add Group', 'add_group', '', '2021-08-23 11:13:00', '2021-08-23 17:56:58', 'New Version 2', 1, 0, 1, 1, 0, 0, NULL, NULL, NULL, '2021-08-23 17:56:59'),
(19, 1, 'Move Multiple Groups', 'bulkupdate', '', '2021-08-23 11:13:26', '2021-08-23 11:13:26', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(20, 1, 'Group Sets', 'group_sets', '', '2021-08-23 11:13:26', '2021-08-23 11:13:26', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(21, 1, 'Community Points', 'points', NULL, '2021-08-23 11:13:27', '2021-08-23 11:13:27', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(22, 1, 'Assign Points', 'assign', NULL, '2021-08-23 11:13:27', '2021-08-23 11:13:27', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(23, 1, 'Actions', 'actions', NULL, '2021-08-23 11:13:27', '2021-08-23 11:13:27', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(24, 1, 'Express', 'express', 'Express Data Objects', '2021-08-23 11:13:27', '2021-08-23 11:13:27', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(25, 1, 'View Entries', 'entries', '', '2021-08-23 11:13:27', '2021-08-23 11:13:27', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(26, 1, 'Reports', 'reports', 'Get data from forms and logs.', '2021-08-23 11:13:27', '2021-08-23 11:13:27', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(27, 1, 'Form Results', 'forms', 'Get submission data.', '2021-08-23 11:13:27', '2021-08-23 11:13:27', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(28, 1, 'Form Results', 'legacy', 'Get submission data.', '2021-08-23 11:13:27', '2021-08-23 11:13:27', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(29, 1, 'Surveys', 'surveys', '', '2021-08-23 11:13:27', '2021-08-23 11:13:27', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(30, 1, 'Logs', 'logs', '', '2021-08-23 11:13:28', '2021-08-23 11:13:28', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(31, 1, 'Page Changes', 'page_changes', '', '2021-08-23 11:13:28', '2021-08-23 11:13:28', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(32, 1, 'Pages & Themes', 'pages', 'Reskin your site.', '2021-08-23 11:13:28', '2021-08-23 11:13:28', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(33, 1, 'Themes', 'themes', 'Reskin your site.', '2021-08-23 11:13:28', '2021-08-23 11:13:28', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(34, 1, 'Inspect', 'inspect', '', '2021-08-23 11:13:28', '2021-08-23 11:13:28', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(35, 1, 'Page Types', 'types', '', '2021-08-23 11:13:28', '2021-08-23 11:13:28', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(36, 1, 'Organize Page Type Order', 'organize', '', '2021-08-23 11:13:28', '2021-08-23 11:13:28', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(37, 1, 'Add Page Type', 'add', '', '2021-08-23 11:13:28', '2021-08-23 11:13:28', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(38, 1, 'Compose Form', 'form', '', '2021-08-23 11:13:29', '2021-08-23 11:13:29', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(39, 1, 'Defaults and Output', 'output', '', '2021-08-23 11:13:29', '2021-08-23 11:13:29', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(40, 1, 'Page Type Attributes', 'attributes', '', '2021-08-23 11:13:29', '2021-08-23 11:13:29', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(41, 1, 'Page Type Permissions', 'permissions', '', '2021-08-23 11:13:29', '2021-08-23 11:13:29', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(42, 1, 'Page Templates', 'templates', 'Form factors for pages in your site.', '2021-08-23 11:13:29', '2021-08-23 11:13:29', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(43, 1, 'Add Page Template', 'add', 'Add page templates to your site.', '2021-08-23 11:13:29', '2021-08-23 11:13:29', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(44, 1, 'Attributes', 'attributes', '', '2021-08-23 11:13:29', '2021-08-23 11:13:29', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(45, 1, 'Single Pages', 'single', '', '2021-08-23 11:13:29', '2021-08-23 11:13:29', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(46, 1, 'RSS Feeds', 'feeds', '', '2021-08-23 11:13:30', '2021-08-23 11:13:30', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(47, 1, 'Calendar & Events', 'calendar', '', '2021-08-23 11:13:30', '2021-08-23 11:13:30', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(48, 1, 'View Calendar', 'events', '', '2021-08-23 11:13:30', '2021-08-23 11:13:30', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(49, 1, 'Event List', 'event_list', '', '2021-08-23 11:13:30', '2021-08-23 11:13:30', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(50, 1, 'Add Calendar', 'add', '', '2021-08-23 11:13:30', '2021-08-23 11:13:30', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(51, 1, 'Permissions', 'permissions', '', '2021-08-23 11:13:30', '2021-08-23 11:13:30', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(52, 1, 'Attributes', 'attributes', '', '2021-08-23 11:13:30', '2021-08-23 11:13:30', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(53, 1, 'Conversations', 'conversations', '', '2021-08-23 11:13:31', '2021-08-23 11:13:31', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(54, 1, 'Messages', 'messages', '', '2021-08-23 11:13:31', '2021-08-23 11:13:31', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(55, 1, 'Stacks & Blocks', 'blocks', 'Manage sitewide content and administer block types.', '2021-08-23 11:13:31', '2021-08-23 11:13:31', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(56, 1, 'Stacks & Global Areas', 'stacks', 'Share content across your site.', '2021-08-23 11:13:31', '2021-08-23 11:13:31', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(57, 1, 'Block & Stack Permissions', 'permissions', 'Control who can add blocks and stacks on your site.', '2021-08-23 11:13:31', '2021-08-23 11:13:31', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(58, 1, 'Stack List', 'list', '', '2021-08-23 11:13:31', '2021-08-23 11:13:31', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(59, 1, 'Block Types', 'types', 'Manage the installed block types in your site.', '2021-08-23 11:13:31', '2021-08-23 11:13:31', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(60, 1, 'Extend concrete5', 'extend', '', '2021-08-23 11:13:31', '2021-08-23 11:13:31', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(61, 1, 'Add Functionality', 'install', 'Install add-ons & themes.', '2021-08-23 11:13:32', '2021-08-23 11:13:32', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(62, 1, 'Update Add-Ons', 'update', 'Update your installed packages.', '2021-08-23 11:13:32', '2021-08-23 11:13:32', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(63, 1, 'Connect to the Community', 'connect', 'Connect to the concrete5 community.', '2021-08-23 11:13:32', '2021-08-23 11:13:32', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(64, 1, 'Get More Themes', 'themes', 'Download themes from concrete5.org.', '2021-08-23 11:13:32', '2021-08-23 11:13:32', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(65, 1, 'Get More Add-Ons', 'addons', 'Download add-ons from concrete5.org.', '2021-08-23 11:13:32', '2021-08-23 11:13:32', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(66, 1, 'System & Settings', 'system', 'Secure and setup your site.', '2021-08-23 11:13:32', '2021-08-23 11:13:32', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(67, 1, 'Basics', 'basics', 'Basic information about your website.', '2021-08-23 11:13:32', '2021-08-23 11:13:32', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(68, 1, 'Name & Attributes', 'name', '', '2021-08-23 11:13:32', '2021-08-23 11:13:32', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(69, 1, 'Accessibility', 'accessibility', '', '2021-08-23 11:13:33', '2021-08-23 11:13:33', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(70, 1, 'Social Links', 'social', '', '2021-08-23 11:13:33', '2021-08-23 11:13:33', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(71, 1, 'Bookmark Icons', 'icons', 'Bookmark icon and mobile home screen icon setup.', '2021-08-23 11:13:33', '2021-08-23 11:13:33', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(72, 1, 'Rich Text Editor', 'editor', '', '2021-08-23 11:13:33', '2021-08-23 11:13:33', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(73, 1, 'Languages', 'multilingual', '', '2021-08-23 11:13:33', '2021-08-23 11:13:33', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(74, 1, 'Update Languages', 'update', '', '2021-08-23 11:13:33', '2021-08-23 11:13:33', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(75, 1, 'Time Zone', 'timezone', '', '2021-08-23 11:13:33', '2021-08-23 11:13:33', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(76, 1, 'Custom Attributes', 'attributes', '', '2021-08-23 11:13:33', '2021-08-23 11:13:33', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(77, 1, 'Reset Edit Mode', 'reset_edit_mode', '', '2021-08-23 11:13:34', '2021-08-23 11:13:34', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(78, 1, 'Express', 'express', 'Express', '2021-08-23 11:13:34', '2021-08-23 11:13:34', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(79, 1, 'Data Objects', 'entities', '', '2021-08-23 11:13:34', '2021-08-23 11:13:34', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(80, 1, 'Attributes', 'attributes', '', '2021-08-23 11:13:34', '2021-08-23 11:13:34', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(81, 1, 'Associations', 'associations', '', '2021-08-23 11:13:34', '2021-08-23 11:13:34', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(82, 1, 'Forms', 'forms', '', '2021-08-23 11:13:34', '2021-08-23 11:13:34', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(83, 1, 'Customize Search', 'customize_search', '', '2021-08-23 11:13:34', '2021-08-23 11:13:34', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(84, 1, 'Update Entry Display Order', 'order_entries', '', '2021-08-23 11:13:35', '2021-08-23 11:13:35', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(85, 1, 'Custom Entry Locations', 'entries', '', '2021-08-23 11:13:35', '2021-08-23 11:13:35', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(86, 1, 'Multiple Site Hosting', 'multisite', '', '2021-08-23 11:13:35', '2021-08-23 11:13:35', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(87, 1, 'Sites & Domains', 'sites', '', '2021-08-23 11:13:35', '2021-08-23 11:13:35', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(88, 1, 'Site Types', 'types', '', '2021-08-23 11:13:35', '2021-08-23 11:13:35', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(89, 1, 'Multisite Settings', 'settings', '', '2021-08-23 11:13:35', '2021-08-23 11:13:35', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(90, 1, 'Multilingual', 'multilingual', 'Run your site in multiple languages.', '2021-08-23 11:13:36', '2021-08-23 11:13:36', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(91, 1, 'Multilingual Setup', 'setup', '', '2021-08-23 11:13:36', '2021-08-23 11:13:36', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(92, 1, 'Copy Languages', 'copy', '', '2021-08-23 11:13:36', '2021-08-23 11:13:36', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(93, 1, 'Page Report', 'page_report', '', '2021-08-23 11:13:36', '2021-08-23 11:13:36', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(94, 1, 'Translate Site Interface', 'translate_interface', '', '2021-08-23 11:13:36', '2021-08-23 11:13:36', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(95, 1, 'SEO & Statistics', 'seo', 'Enable pretty URLs and tracking codes.', '2021-08-23 11:13:36', '2021-08-23 11:13:36', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(96, 1, 'URLs and Redirection', 'urls', '', '2021-08-23 11:13:36', '2021-08-23 11:13:36', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(97, 1, 'Bulk SEO Updater', 'bulk', '', '2021-08-23 11:13:37', '2021-08-23 11:13:37', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(98, 1, 'Tracking Codes', 'codes', '', '2021-08-23 11:13:37', '2021-08-23 11:13:37', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(99, 1, 'Excluded URL Word List', 'excluded', '', '2021-08-23 11:13:37', '2021-08-23 11:13:37', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(100, 1, 'Search Index', 'searchindex', '', '2021-08-23 11:13:37', '2021-08-23 11:13:37', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(101, 1, 'Files', 'files', '', '2021-08-23 11:13:37', '2021-08-23 11:13:37', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(102, 1, 'Allowed File Types', 'filetypes', '', '2021-08-23 11:13:37', '2021-08-23 11:13:37', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(103, 1, 'File Manager Permissions', 'permissions', '', '2021-08-23 11:13:37', '2021-08-23 11:13:37', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(104, 1, 'Thumbnails', 'thumbnails', '', '2021-08-23 11:13:37', '2021-08-23 11:13:37', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(105, 1, 'Thumbnail Options', 'options', '', '2021-08-23 11:13:38', '2021-08-23 11:13:38', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(106, 1, 'Image Options', 'image_uploading', '', '2021-08-23 11:13:38', '2021-08-23 11:13:38', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(107, 1, 'File Storage Locations', 'storage', '', '2021-08-23 11:13:38', '2021-08-23 11:13:38', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(108, 1, 'Export Options', 'export_options', '', '2021-08-23 11:13:38', '2021-08-23 11:13:38', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(109, 1, 'Optimization', 'optimization', 'Keep your site running well.', '2021-08-23 11:13:38', '2021-08-23 11:13:38', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(110, 1, 'Cache & Speed Settings', 'cache', '', '2021-08-23 11:13:38', '2021-08-23 11:13:38', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(111, 1, 'Clear Cache', 'clearcache', '', '2021-08-23 11:13:39', '2021-08-23 11:13:39', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(112, 1, 'Automated Jobs', 'jobs', '', '2021-08-23 11:13:39', '2021-08-23 11:13:39', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(113, 1, 'Permissions & Access', 'permissions', 'Control who sees and edits your site.', '2021-08-23 11:13:39', '2021-08-23 11:13:39', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(114, 1, 'Site Access', 'site', '', '2021-08-23 11:13:39', '2021-08-23 11:13:39', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(115, 1, 'Task Permissions', 'tasks', '', '2021-08-23 11:13:39', '2021-08-23 11:13:39', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(116, 1, 'User Permissions', 'users', '', '2021-08-23 11:13:39', '2021-08-23 11:13:39', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(117, 1, 'Advanced Permissions', 'advanced', '', '2021-08-23 11:13:39', '2021-08-23 11:13:39', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(118, 1, 'Workflows', 'workflows', '', '2021-08-23 11:13:40', '2021-08-23 11:13:40', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(119, 1, 'IP Blacklist', 'blacklist', '', '2021-08-23 11:13:40', '2021-08-23 11:13:40', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(120, 1, 'Configure IP Blocking', 'configure', '', '2021-08-23 11:13:40', '2021-08-23 11:13:40', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(121, 1, 'IP Range', 'range', '', '2021-08-23 11:13:40', '2021-08-23 11:13:40', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(122, 1, 'Captcha Setup', 'captcha', '', '2021-08-23 11:13:40', '2021-08-23 11:13:40', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(123, 1, 'Spam Control', 'antispam', '', '2021-08-23 11:13:40', '2021-08-23 11:13:40', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(124, 1, 'Maintenance Mode', 'maintenance', '', '2021-08-23 11:13:40', '2021-08-23 11:13:40', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(125, 1, 'Trusted Proxies', 'trusted_proxies', '', '2021-08-23 11:13:41', '2021-08-23 11:13:41', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(126, 1, 'Login & Registration', 'registration', 'Change login behaviors and setup public profiles.', '2021-08-23 11:13:41', '2021-08-23 11:13:41', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(127, 1, 'Account Options', 'open', '', '2021-08-23 11:13:41', '2021-08-23 11:13:41', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(128, 1, 'Login Destination', 'postlogin', '', '2021-08-23 11:13:41', '2021-08-23 11:13:41', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(129, 1, 'Public Profiles', 'profiles', '', '2021-08-23 11:13:41', '2021-08-23 11:13:41', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(130, 1, 'Authentication Types', 'authentication', '', '2021-08-23 11:13:41', '2021-08-23 11:13:41', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(131, 1, 'Global Password Reset', 'global_password_reset', 'Signs out all users, resets all passwords and forces users to choose a new one', '2021-08-23 11:13:42', '2021-08-23 11:13:42', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(132, 1, 'Notification Settings', 'notification', '', '2021-08-23 11:13:42', '2021-08-23 11:13:42', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(133, 1, 'User Deactivation Settings', 'deactivation', '', '2021-08-23 11:13:42', '2021-08-23 11:13:42', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(134, 1, 'Automated Logout', 'automated_logout', 'Automate when users are logged out, or do it manually', '2021-08-23 11:13:42', '2021-08-23 11:13:42', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(135, 1, 'Password Requirements', 'password_requirements', 'Set password rule and regulations.', '2021-08-23 11:13:42', '2021-08-23 11:13:42', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(136, 1, 'Email', 'mail', 'Control how your site send and processes mail.', '2021-08-23 11:13:42', '2021-08-23 11:13:42', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(137, 1, 'SMTP Method', 'method', '', '2021-08-23 11:13:42', '2021-08-23 11:13:42', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(138, 1, 'Test Mail Settings', 'test', '', '2021-08-23 11:13:43', '2021-08-23 11:13:43', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(139, 1, 'Email Importers', 'importers', '', '2021-08-23 11:13:43', '2021-08-23 11:13:43', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(140, 1, 'System Email Addresses', 'addresses', '', '2021-08-23 11:13:43', '2021-08-23 11:13:43', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(141, 1, 'Calendar', 'calendar', 'Manage your calendar settings', '2021-08-23 11:13:43', '2021-08-23 11:13:43', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(142, 1, 'General Settings', 'settings', '', '2021-08-23 11:13:43', '2021-08-23 11:13:43', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(143, 1, 'Color Settings', 'colors', '', '2021-08-23 11:13:43', '2021-08-23 11:13:43', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(144, 1, 'Permissions', 'permissions', '', '2021-08-23 11:13:44', '2021-08-23 11:13:44', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(145, 1, 'Import Calendar Data', 'import', '', '2021-08-23 11:13:44', '2021-08-23 11:13:44', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(146, 1, 'Conversations', 'conversations', 'Manage your conversations settings', '2021-08-23 11:13:44', '2021-08-23 11:13:44', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(147, 1, 'Settings', 'settings', '', '2021-08-23 11:13:44', '2021-08-23 11:13:44', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(148, 1, 'Community Points', 'points', '', '2021-08-23 11:13:44', '2021-08-23 11:13:44', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(149, 1, 'Banned Words', 'bannedwords', '', '2021-08-23 11:13:44', '2021-08-23 11:13:44', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(150, 1, 'Conversation Permissions', 'permissions', '', '2021-08-23 11:13:45', '2021-08-23 11:13:45', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(151, 1, 'Attributes', 'attributes', 'Setup attributes for pages, users, files and more.', '2021-08-23 11:13:45', '2021-08-23 11:13:45', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(152, 1, 'Types', 'types', 'Choose which attribute types are available for different items.', '2021-08-23 11:13:45', '2021-08-23 11:13:45', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(153, 1, 'Sets', 'sets', 'Group attributes into sets for easier organization', '2021-08-23 11:13:45', '2021-08-23 11:13:45', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(154, 1, 'Topics', 'topics', '', '2021-08-23 11:13:45', '2021-08-23 11:13:45', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(155, 1, 'Add Topic Tree', 'add', '', '2021-08-23 11:13:45', '2021-08-23 11:13:45', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(156, 1, 'Environment', 'environment', 'Advanced settings for web developers.', '2021-08-23 11:13:46', '2021-08-23 11:13:46', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(157, 1, 'Environment Information', 'info', '', '2021-08-23 11:13:46', '2021-08-23 11:13:46', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(158, 1, 'Debug Settings', 'debug', '', '2021-08-23 11:13:46', '2021-08-23 11:13:46', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(159, 1, 'Logging Settings', 'logging', '', '2021-08-23 11:13:46', '2021-08-23 11:13:46', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(160, 1, 'Proxy Server', 'proxy', '', '2021-08-23 11:13:46', '2021-08-23 11:13:46', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(161, 1, 'Database Entities', 'entities', '', '2021-08-23 11:13:46', '2021-08-23 11:13:46', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(162, 1, 'Database Character Set', 'database_charset', '', '2021-08-23 11:13:47', '2021-08-23 11:13:47', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(163, 1, 'Geolocation', 'geolocation', '', '2021-08-23 11:13:47', '2021-08-23 11:13:47', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(164, 1, 'Update concrete5', 'update', '', '2021-08-23 11:13:47', '2021-08-23 11:13:47', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(165, 1, 'Apply Update', 'update', '', '2021-08-23 11:13:47', '2021-08-23 11:13:47', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(166, 1, 'API', 'api', '', '2021-08-23 11:13:47', '2021-08-23 11:13:47', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(167, 1, 'API Settings', 'settings', '', '2021-08-23 11:13:47', '2021-08-23 11:13:47', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(168, 1, 'API Integrations', 'integrations', '', '2021-08-23 11:13:48', '2021-08-23 11:13:48', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(169, 1, 'Welcome', 'welcome', '', '2021-08-23 11:13:48', '2021-08-23 11:13:48', 'Initial Version', 0, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(169, 2, 'Welcome', 'welcome', '', '2021-08-23 11:13:00', '2021-08-23 16:37:33', 'New Version 2', 0, 0, 1, 1, 0, 0, NULL, NULL, NULL, '2021-08-23 16:37:34'),
(169, 3, 'Welcome', 'welcome', '', '2021-08-23 11:13:00', '2021-08-23 16:40:21', 'New Version 3', 0, 0, 1, 1, 0, 0, NULL, NULL, NULL, '2021-08-23 16:40:21'),
(169, 4, 'Welcome', 'welcome', '', '2021-08-23 11:13:00', '2021-08-23 21:50:19', 'New Version 4', 1, 0, 1, 1, 0, 0, NULL, NULL, NULL, '2021-08-23 21:50:20'),
(170, 1, 'Waiting for Me', 'me', NULL, '2021-08-23 11:13:50', '2021-08-23 11:13:50', 'Initial Version', 1, 0, 1, NULL, 3, 2, NULL, NULL, NULL, NULL),
(171, 1, 'Stacks', '!stacks', '', '2021-08-23 11:15:14', '2021-08-23 11:15:14', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(172, 1, 'Page Not Found', 'page_not_found', '', '2021-08-23 11:15:14', '2021-08-23 11:15:14', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(173, 1, 'Trash', '!trash', '', '2021-08-23 11:15:14', '2021-08-23 11:15:14', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(174, 1, 'Login', 'login', '', '2021-08-23 11:15:14', '2021-08-23 11:15:14', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(175, 1, 'Register', 'register', '', '2021-08-23 11:15:14', '2021-08-23 11:15:14', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(176, 1, 'My Account', 'account', '', '2021-08-23 11:15:14', '2021-08-23 11:15:14', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(177, 1, 'Edit Profile', 'edit_profile', 'Edit your user profile and change password.', '2021-08-23 11:15:14', '2021-08-23 11:15:14', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(178, 1, 'Profile Picture', 'avatar', 'Specify a new image attached to posts or edits.', '2021-08-23 11:15:14', '2021-08-23 11:15:14', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(179, 1, 'Private Messages', 'messages', 'Inbox for site-specific messages.', '2021-08-23 11:15:15', '2021-08-23 11:15:15', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(180, 1, 'Page Forbidden', 'page_forbidden', '', '2021-08-23 11:15:15', '2021-08-23 11:15:15', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(181, 1, 'Download File', 'download_file', '', '2021-08-23 11:15:15', '2021-08-23 11:15:15', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(182, 1, 'Drafts', '!drafts', '', '2021-08-23 11:15:16', '2021-08-23 11:15:16', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(183, 1, 'Welcome Back', 'desktop', '', '2021-08-23 11:15:16', '2021-08-23 11:15:16', 'Initial Version', 0, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(183, 2, 'Welcome Back', 'desktop', '', '2021-08-23 11:15:00', '2021-08-23 16:36:12', 'New Version 2', 1, 0, 1, 1, 0, 0, NULL, NULL, NULL, '2021-08-23 16:36:13'),
(184, 1, 'Footer Contact', 'footer-contact', NULL, '2021-08-23 11:15:46', '2021-08-23 11:15:46', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL, NULL, NULL, NULL),
(185, 1, 'Footer Legal', 'footer-legal', NULL, '2021-08-23 11:15:47', '2021-08-23 11:15:47', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL, NULL, NULL, NULL),
(186, 1, 'Footer Navigation', 'footer-navigation', NULL, '2021-08-23 11:15:47', '2021-08-23 11:15:47', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL, NULL, NULL, NULL),
(187, 1, 'Footer Site Title', 'footer-site-title', NULL, '2021-08-23 11:15:47', '2021-08-23 11:15:47', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL, NULL, NULL, NULL),
(188, 1, 'Footer Social', 'footer-social', NULL, '2021-08-23 11:15:47', '2021-08-23 11:15:47', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL, NULL, NULL, NULL),
(189, 1, 'Header Navigation', 'header-navigation', NULL, '2021-08-23 11:15:48', '2021-08-23 11:15:48', 'Initial Version', 0, 0, 1, NULL, 3, 0, NULL, NULL, NULL, NULL),
(189, 2, 'Header Navigation', 'header-navigation', NULL, '2021-08-23 11:15:48', '2021-08-23 23:25:50', 'New Version 2', 1, 0, 1, 1, 3, 0, NULL, NULL, NULL, '2021-08-23 23:26:18'),
(190, 1, 'Header Search', 'header-search', NULL, '2021-08-23 11:15:48', '2021-08-23 11:15:48', 'Initial Version', 0, 0, 1, NULL, 3, 0, NULL, NULL, NULL, NULL),
(190, 2, 'Header Search', 'header-search', NULL, '2021-08-23 11:15:48', '2021-08-23 23:26:04', 'New Version 2', 1, 0, 1, 1, 3, 0, NULL, NULL, NULL, '2021-08-23 23:26:18'),
(191, 1, 'Header Site Title', 'header-site-title', NULL, '2021-08-23 11:15:48', '2021-08-23 11:15:48', 'Initial Version', 0, 0, 1, NULL, 3, 0, NULL, NULL, NULL, NULL),
(191, 2, 'Header Site Title', 'header-site-title', NULL, '2021-08-23 11:15:48', '2021-08-23 23:25:23', 'New Version 2', 1, 0, 1, 1, 3, 0, NULL, NULL, NULL, '2021-08-23 23:26:18'),
(192, 1, '', NULL, NULL, '2021-08-23 11:15:58', '2021-08-23 11:15:58', 'Initial Version', 1, 0, NULL, NULL, 0, 5, NULL, NULL, NULL, NULL),
(194, 1, '', NULL, NULL, '2021-08-23 11:15:58', '2021-08-23 11:15:58', 'Initial Version', 1, 0, NULL, NULL, 0, 5, NULL, NULL, NULL, NULL),
(197, 1, '', NULL, NULL, '2021-08-23 11:15:59', '2021-08-23 11:15:59', 'Initial Version', 1, 0, NULL, NULL, 0, 5, NULL, NULL, NULL, NULL),
(202, 1, '', NULL, NULL, '2021-08-23 11:15:59', '2021-08-23 11:15:59', 'Initial Version', 1, 0, NULL, NULL, 0, 6, NULL, NULL, NULL, NULL),
(209, 1, '', NULL, NULL, '2021-08-23 11:16:01', '2021-08-23 11:16:01', 'Initial Version', 1, 0, NULL, NULL, 0, 7, NULL, NULL, NULL, NULL),
(216, 1, '', NULL, NULL, '2021-08-23 11:16:02', '2021-08-23 11:16:02', 'Initial Version', 1, 0, NULL, NULL, 0, 6, NULL, NULL, NULL, NULL),
(219, 1, '', NULL, NULL, '2021-08-23 11:16:03', '2021-08-23 11:16:03', 'Initial Version', 1, 0, NULL, NULL, 0, 4, NULL, NULL, NULL, NULL),
(220, 1, '', NULL, NULL, '2021-08-23 11:16:03', '2021-08-23 11:16:03', 'Initial Version', 1, 0, NULL, NULL, 0, 6, NULL, NULL, NULL, NULL),
(221, 1, '', NULL, NULL, '2021-08-23 11:16:03', '2021-08-23 11:16:03', 'Initial Version', 1, 0, NULL, NULL, 0, 7, NULL, NULL, NULL, NULL),
(225, 1, 'AdminLTE Search', 'adminlte-search', NULL, '2021-08-23 15:24:32', '2021-08-23 15:24:32', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL, NULL, NULL, NULL),
(226, 1, 'AdminLTE Navigation', 'adminlte-navigation', NULL, '2021-08-23 15:24:33', '2021-08-23 15:24:33', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL, NULL, NULL, NULL),
(227, 1, 'Title Header', 'title-header', NULL, '2021-08-23 15:24:33', '2021-08-23 15:24:33', 'Initial Version', 1, 0, 1, NULL, 3, 0, NULL, NULL, NULL, NULL),
(249, 1, '', NULL, NULL, '2021-08-24 19:11:07', '2021-08-24 19:11:07', 'Initial Version', 1, 0, NULL, NULL, 0, 4, NULL, NULL, NULL, NULL),
(250, 1, '', NULL, NULL, '2021-08-24 19:17:03', '2021-08-24 19:17:03', 'Initial Version', 1, 0, NULL, NULL, 0, 5, NULL, NULL, NULL, NULL),
(251, 1, 'Landing Pages', 'landing-pages', NULL, '2021-08-24 21:22:01', '2021-08-24 21:22:01', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(252, 1, 'Landing Pages', 'landing-pages', NULL, '2021-08-24 21:22:01', '2021-08-24 21:25:51', 'Initial Version', 1, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(253, 1, 'Name & Attributes', 'name', '', '2021-08-23 11:13:32', '2021-08-24 23:21:09', 'Initial Version', 0, 0, 1, NULL, 0, 0, NULL, NULL, NULL, NULL),
(253, 2, 'Website Name', 'name', '', '2021-08-23 11:13:00', '2021-08-24 23:21:52', 'New Version 2', 1, 0, 1, 1, 0, 0, NULL, NULL, NULL, '2021-08-24 23:21:53');

-- --------------------------------------------------------

--
-- Table structure for table `CollectionVersionThemeCustomStyles`
--

CREATE TABLE `CollectionVersionThemeCustomStyles` (
  `cID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cvID` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `pThemeID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `scvlID` int(10) UNSIGNED DEFAULT '0',
  `preset` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sccRecordID` int(10) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Config`
--

CREATE TABLE `Config` (
  `configNamespace` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `configGroup` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `configItem` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `configValue` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Config`
--

INSERT INTO `Config` (`configNamespace`, `configGroup`, `configItem`, `configValue`) VALUES
('', 'app', 'privacy_policy_accepted', '1'),
('', 'concrete', 'security.token.encryption', '632637a014f886d71c9f0c24a9e129fedb92b2309806ec00fa2f5012b8469b01'),
('', 'concrete', 'security.token.jobs', 'd0271ba0e66d37ac19ef464f5f0941bfc2baabc59f847e51af2ca00d81562e5c'),
('', 'concrete', 'security.token.validation', 'a8e70da1ce89d604c4ad3388831ad3d9b712a9a6655b9b3a46601c4f27263237');

-- --------------------------------------------------------

--
-- Table structure for table `ConfigStore`
--

CREATE TABLE `ConfigStore` (
  `cfKey` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `cfValue` longtext COLLATE utf8mb4_unicode_ci,
  `uID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pkgID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ConfigStore`
--

INSERT INTO `ConfigStore` (`cfKey`, `timestamp`, `cfValue`, `uID`, `pkgID`) VALUES
('file_manager.sort.7', '2021-08-24 10:58:40', '["folderItemType","asc"]', 1, 0),
('file_manager.sort.7', '2021-08-23 15:10:36', '["folderItemType","asc"]', 2, 0),
('MAIN_HELP_LAST_VIEWED', '2021-08-23 03:20:59', '1629688859', 1, 0),
('MAIN_HELP_LAST_VIEWED', '2021-08-23 08:52:45', '1629708765', 2, 0),
('QUICK_NAV_BOOKMARKS', '2021-08-23 08:44:08', 'O:47:"Concrete\\Core\\Application\\Service\\DashboardMenu":1:{s:8:"\0*\0items";a:7:{i:0;s:18:"/dashboard/welcome";i:1;s:25:"/dashboard/composer/write";i:2;s:26:"/dashboard/composer/drafts";i:3;s:23:"/dashboard/sitemap/full";i:5;s:23:"/dashboard/files/search";i:6;s:21:"/dashboard/files/sets";i:7;s:24:"/dashboard/reports/forms";}}', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ConversationDiscussions`
--

CREATE TABLE `ConversationDiscussions` (
  `cnvDiscussionID` int(10) UNSIGNED NOT NULL,
  `cnvDiscussionDateCreated` datetime NOT NULL,
  `cID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ConversationEditors`
--

CREATE TABLE `ConversationEditors` (
  `cnvEditorID` int(10) UNSIGNED NOT NULL,
  `cnvEditorHandle` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cnvEditorName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cnvEditorIsActive` tinyint(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ConversationEditors`
--

INSERT INTO `ConversationEditors` (`cnvEditorID`, `cnvEditorHandle`, `cnvEditorName`, `cnvEditorIsActive`, `pkgID`) VALUES
(1, 'plain_text', 'Plain Text', 1, 0),
(2, 'markdown', 'Markdown', 0, 0),
(3, 'rich_text', 'Rich Text', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ConversationFeatureDetailAssignments`
--

CREATE TABLE `ConversationFeatureDetailAssignments` (
  `faID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cnvID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ConversationFeatureDetailAssignments`
--

INSERT INTO `ConversationFeatureDetailAssignments` (`faID`, `cnvID`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ConversationFlaggedMessages`
--

CREATE TABLE `ConversationFlaggedMessages` (
  `cnvMessageID` int(10) UNSIGNED NOT NULL,
  `cnvMessageFlagTypeID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ConversationFlaggedMessageTypes`
--

CREATE TABLE `ConversationFlaggedMessageTypes` (
  `cnvMessageFlagTypeID` int(10) UNSIGNED NOT NULL,
  `cnvMessageFlagTypeHandle` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ConversationFlaggedMessageTypes`
--

INSERT INTO `ConversationFlaggedMessageTypes` (`cnvMessageFlagTypeID`, `cnvMessageFlagTypeHandle`) VALUES
(1, 'spam');

-- --------------------------------------------------------

--
-- Table structure for table `ConversationMessageAttachments`
--

CREATE TABLE `ConversationMessageAttachments` (
  `cnvMessageAttachmentID` int(10) UNSIGNED NOT NULL,
  `cnvMessageID` int(11) DEFAULT NULL,
  `fID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ConversationMessageNotifications`
--

CREATE TABLE `ConversationMessageNotifications` (
  `cnvMessageID` int(10) UNSIGNED NOT NULL,
  `nID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ConversationMessageRatings`
--

CREATE TABLE `ConversationMessageRatings` (
  `cnvMessageRatingID` int(10) UNSIGNED NOT NULL,
  `cnvMessageID` int(10) UNSIGNED DEFAULT NULL,
  `cnvRatingTypeID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cnvMessageRatingIP` tinyblob,
  `timestamp` datetime DEFAULT NULL,
  `uID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ConversationMessages`
--

CREATE TABLE `ConversationMessages` (
  `cnvMessageID` int(10) UNSIGNED NOT NULL,
  `cnvID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cnvMessageReview` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `uID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cnvEditorID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cnvMessageAuthorName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cnvMessageAuthorEmail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cnvMessageAuthorWebsite` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cnvMessageSubmitIP` tinyblob,
  `cnvMessageSubmitUserAgent` longtext COLLATE utf8mb4_unicode_ci,
  `cnvMessageLevel` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cnvMessageParentID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cnvMessageDateCreated` datetime DEFAULT NULL,
  `cnvMessageSubject` text COLLATE utf8mb4_unicode_ci,
  `cnvMessageBody` text COLLATE utf8mb4_unicode_ci,
  `cnvIsMessageDeleted` tinyint(1) NOT NULL DEFAULT '0',
  `cnvIsMessageApproved` tinyint(1) NOT NULL DEFAULT '0',
  `cnvMessageTotalRatingScore` bigint(20) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ConversationPermissionAddMessageAccessList`
--

CREATE TABLE `ConversationPermissionAddMessageAccessList` (
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `peID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `permission` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'A'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ConversationPermissionAssignments`
--

CREATE TABLE `ConversationPermissionAssignments` (
  `cnvID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pkID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ConversationPermissionAssignments`
--

INSERT INTO `ConversationPermissionAssignments` (`cnvID`, `pkID`, `paID`) VALUES
(0, 67, 111),
(0, 68, 112),
(0, 71, 113),
(0, 70, 114),
(0, 72, 115),
(0, 69, 116),
(0, 73, 117),
(0, 74, 118);

-- --------------------------------------------------------

--
-- Table structure for table `ConversationRatingTypes`
--

CREATE TABLE `ConversationRatingTypes` (
  `cnvRatingTypeID` int(10) UNSIGNED NOT NULL,
  `cnvRatingTypeHandle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cnvRatingTypeName` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cnvRatingTypeCommunityPoints` int(11) DEFAULT NULL,
  `pkgID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ConversationRatingTypes`
--

INSERT INTO `ConversationRatingTypes` (`cnvRatingTypeID`, `cnvRatingTypeHandle`, `cnvRatingTypeName`, `cnvRatingTypeCommunityPoints`, `pkgID`) VALUES
(1, 'up_vote', 'Up Vote', 1, 0),
(2, 'down_vote', 'Down Vote', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `Conversations`
--

CREATE TABLE `Conversations` (
  `cnvID` int(10) UNSIGNED NOT NULL,
  `cID` int(10) UNSIGNED DEFAULT '0',
  `cnvDateCreated` datetime NOT NULL,
  `cnvDateLastMessage` datetime DEFAULT NULL,
  `cnvParentMessageID` int(10) UNSIGNED DEFAULT '0',
  `cnvAttachmentsEnabled` tinyint(1) NOT NULL DEFAULT '1',
  `cnvMessagesTotal` int(10) UNSIGNED DEFAULT '0',
  `cnvOverrideGlobalPermissions` tinyint(1) DEFAULT '0',
  `cnvAttachmentOverridesEnabled` tinyint(1) NOT NULL DEFAULT '0',
  `cnvMaxFilesGuest` int(11) DEFAULT '0',
  `cnvMaxFilesRegistered` int(11) DEFAULT '0',
  `cnvMaxFileSizeGuest` int(11) DEFAULT '0',
  `cnvMaxFileSizeRegistered` int(11) DEFAULT '0',
  `cnvFileExtensions` text COLLATE utf8mb4_unicode_ci,
  `cnvNotificationOverridesEnabled` tinyint(1) NOT NULL DEFAULT '0',
  `cnvEnableSubscription` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Conversations`
--

INSERT INTO `Conversations` (`cnvID`, `cID`, `cnvDateCreated`, `cnvDateLastMessage`, `cnvParentMessageID`, `cnvAttachmentsEnabled`, `cnvMessagesTotal`, `cnvOverrideGlobalPermissions`, `cnvAttachmentOverridesEnabled`, `cnvMaxFilesGuest`, `cnvMaxFilesRegistered`, `cnvMaxFileSizeGuest`, `cnvMaxFileSizeRegistered`, `cnvFileExtensions`, `cnvNotificationOverridesEnabled`, `cnvEnableSubscription`) VALUES
(1, 209, '2021-08-23 11:16:04', '2021-08-23 11:16:04', 0, 1, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0),
(2, 210, '2021-08-23 11:16:46', '2021-08-23 11:16:46', 0, 1, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0),
(3, 211, '2021-08-23 11:16:53', '2021-08-23 11:16:53', 0, 1, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0),
(4, 212, '2021-08-23 11:16:55', '2021-08-23 11:16:55', 0, 1, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ConversationSubscriptions`
--

CREATE TABLE `ConversationSubscriptions` (
  `cnvID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `uID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT 'S'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ConversationSubscriptions`
--

INSERT INTO `ConversationSubscriptions` (`cnvID`, `uID`, `type`) VALUES
(0, 1, 'S');

-- --------------------------------------------------------

--
-- Table structure for table `DownloadStatistics`
--

CREATE TABLE `DownloadStatistics` (
  `dsID` int(10) UNSIGNED NOT NULL,
  `fID` int(10) UNSIGNED NOT NULL,
  `fvID` int(10) UNSIGNED NOT NULL,
  `uID` int(10) UNSIGNED NOT NULL,
  `rcID` int(10) UNSIGNED NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ExpressAttributeKeys`
--

CREATE TABLE `ExpressAttributeKeys` (
  `entity_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT AS `(DC2Type:guid)`,
  `akID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ExpressEntities`
--

CREATE TABLE `ExpressEntities` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:guid)',
  `default_view_form_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT AS `(DC2Type:guid)`,
  `default_edit_form_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT AS `(DC2Type:guid)`,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plural_handle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label_mask` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `supports_custom_display_order` tinyint(1) NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `result_column_set` longtext COLLATE utf8mb4_unicode_ci COMMENT '(DC2Type:object)',
  `include_in_public_list` tinyint(1) NOT NULL,
  `entity_results_node_id` int(11) NOT NULL,
  `items_per_page` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `pkgID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ExpressEntityAssociationEntries`
--

CREATE TABLE `ExpressEntityAssociationEntries` (
  `id` int(11) NOT NULL,
  `association_id` int(11) DEFAULT NULL,
  `displayOrder` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `exEntryID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ExpressEntityAssociations`
--

CREATE TABLE `ExpressEntityAssociations` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:guid)',
  `source_entity_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT AS `(DC2Type:guid)`,
  `target_entity_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT AS `(DC2Type:guid)`,
  `is_owned_by_association` tinyint(1) NOT NULL,
  `is_owning_association` tinyint(1) NOT NULL,
  `target_property_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `inversed_by_property_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `association_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ExpressEntityEntries`
--

CREATE TABLE `ExpressEntityEntries` (
  `exEntryID` int(11) NOT NULL,
  `exEntryDisplayOrder` int(11) NOT NULL,
  `exEntryDateCreated` datetime NOT NULL,
  `exEntryDateModified` datetime DEFAULT NULL,
  `publicIdentifier` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uID` int(10) UNSIGNED DEFAULT NULL,
  `exEntryEntityID` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT AS `(DC2Type:guid)`
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ExpressEntityEntryAssociations`
--

CREATE TABLE `ExpressEntityEntryAssociations` (
  `id` int(11) NOT NULL,
  `association_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT AS `(DC2Type:guid)`,
  `exEntryID` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ExpressEntityEntryAttributeValues`
--

CREATE TABLE `ExpressEntityEntryAttributeValues` (
  `exEntryID` int(11) NOT NULL,
  `akID` int(10) UNSIGNED NOT NULL,
  `avID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ExpressFormFieldSetAssociationControls`
--

CREATE TABLE `ExpressFormFieldSetAssociationControls` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:guid)',
  `association_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT AS `(DC2Type:guid)`,
  `association_entity_label_mask` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entry_selector_mode` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `enable_entry_reordering` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ExpressFormFieldSetAttributeKeyControls`
--

CREATE TABLE `ExpressFormFieldSetAttributeKeyControls` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:guid)',
  `akID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ExpressFormFieldSetAuthorControls`
--

CREATE TABLE `ExpressFormFieldSetAuthorControls` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:guid)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ExpressFormFieldSetControls`
--

CREATE TABLE `ExpressFormFieldSetControls` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:guid)',
  `field_set_id` int(11) DEFAULT NULL,
  `is_required` tinyint(1) NOT NULL,
  `position` int(11) NOT NULL,
  `custom_label` longtext COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ExpressFormFieldSetPublicIdentifierControls`
--

CREATE TABLE `ExpressFormFieldSetPublicIdentifierControls` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:guid)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ExpressFormFieldSets`
--

CREATE TABLE `ExpressFormFieldSets` (
  `id` int(11) NOT NULL,
  `form_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT AS `(DC2Type:guid)`,
  `position` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ExpressFormFieldSetTextControls`
--

CREATE TABLE `ExpressFormFieldSetTextControls` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:guid)',
  `headline` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ExpressForms`
--

CREATE TABLE `ExpressForms` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:guid)',
  `entity_id` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT AS `(DC2Type:guid)`,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `FeatureAssignments`
--

CREATE TABLE `FeatureAssignments` (
  `faID` int(10) UNSIGNED NOT NULL,
  `feID` int(10) UNSIGNED DEFAULT NULL,
  `fcID` int(10) UNSIGNED DEFAULT NULL,
  `fdObject` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `FeatureAssignments`
--

INSERT INTO `FeatureAssignments` (`faID`, `feID`, `fcID`, `fdObject`) VALUES
(1, 6, 1, 'O:47:"Concrete\\Core\\Feature\\Detail\\ConversationDetail":3:{s:8:"\0*\0cnvID";s:1:"1";s:7:"\0*\0item";N;s:5:"error";s:0:"";}');

-- --------------------------------------------------------

--
-- Table structure for table `FeatureCategories`
--

CREATE TABLE `FeatureCategories` (
  `fcID` int(10) UNSIGNED NOT NULL,
  `fcHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pkgID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `FeatureCategories`
--

INSERT INTO `FeatureCategories` (`fcID`, `fcHandle`, `pkgID`) VALUES
(1, 'collection_version', 0),
(2, 'gathering_item', 0);

-- --------------------------------------------------------

--
-- Table structure for table `Features`
--

CREATE TABLE `Features` (
  `feID` int(10) UNSIGNED NOT NULL,
  `feHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `feScore` int(11) NOT NULL DEFAULT '1',
  `feHasCustomClass` tinyint(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Features`
--

INSERT INTO `Features` (`feID`, `feHandle`, `feScore`, `feHasCustomClass`, `pkgID`) VALUES
(1, 'title', 1, 0, 0),
(2, 'link', 1, 0, 0),
(3, 'author', 1, 0, 0),
(4, 'date_time', 1, 0, 0),
(5, 'image', 500, 1, 0),
(6, 'conversation', 10, 1, 0),
(7, 'description', 1, 0, 0),
(8, 'featured', 1000, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `FileAttributeKeys`
--

CREATE TABLE `FileAttributeKeys` (
  `akID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `FileAttributeKeys`
--

INSERT INTO `FileAttributeKeys` (`akID`) VALUES
(16),
(17),
(19);

-- --------------------------------------------------------

--
-- Table structure for table `FileAttributeValues`
--

CREATE TABLE `FileAttributeValues` (
  `fID` int(10) UNSIGNED NOT NULL,
  `fvID` int(10) UNSIGNED NOT NULL,
  `akID` int(10) UNSIGNED NOT NULL,
  `avID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `FileAttributeValues`
--

INSERT INTO `FileAttributeValues` (`fID`, `fvID`, `akID`, `avID`) VALUES
(1, 1, 16, 152),
(1, 1, 17, 153),
(2, 1, 16, 154),
(2, 1, 17, 155),
(3, 1, 16, 156),
(3, 1, 17, 157),
(4, 1, 16, 158),
(4, 1, 17, 159),
(5, 1, 16, 160),
(5, 1, 17, 161),
(6, 1, 16, 162),
(6, 1, 17, 163),
(7, 1, 16, 164),
(7, 1, 17, 165),
(8, 1, 16, 166),
(8, 1, 17, 167),
(9, 1, 16, 168),
(9, 1, 17, 169),
(10, 1, 16, 170),
(10, 1, 17, 171),
(11, 1, 16, 172),
(11, 1, 17, 173),
(12, 1, 16, 174),
(12, 1, 17, 175),
(13, 1, 16, 176),
(13, 1, 17, 177),
(14, 1, 16, 178),
(14, 1, 17, 179),
(15, 1, 16, 180),
(15, 1, 17, 181),
(16, 1, 16, 182),
(16, 1, 17, 183),
(17, 1, 16, 266),
(17, 1, 17, 267);

-- --------------------------------------------------------

--
-- Table structure for table `FileImageThumbnailPaths`
--

CREATE TABLE `FileImageThumbnailPaths` (
  `fileID` int(10) UNSIGNED NOT NULL,
  `fileVersionID` int(10) UNSIGNED NOT NULL,
  `thumbnailTypeHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `storageLocationID` int(10) UNSIGNED NOT NULL,
  `thumbnailFormat` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `isBuilt` tinyint(1) NOT NULL,
  `lockID` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lockExpires` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `FileImageThumbnailPaths`
--

INSERT INTO `FileImageThumbnailPaths` (`fileID`, `fileVersionID`, `thumbnailTypeHandle`, `storageLocationID`, `thumbnailFormat`, `path`, `isBuilt`, `lockID`, `lockExpires`) VALUES
(1, 1, 'file_manager_detail', 1, 'jpeg', '/thumbnails/file_manager_detail/1234/1234/5678/plants.jpg', 1, NULL, NULL),
(1, 1, 'file_manager_listing', 1, 'jpeg', '/thumbnails/file_manager_listing/1234/1234/5678/plants.jpg', 1, NULL, NULL),
(1, 1, 'file_manager_listing_2x', 1, 'jpeg', '/thumbnails/file_manager_listing_2x/1234/1234/5678/plants.jpg', 1, NULL, NULL),
(1, 1, 'large', 1, 'jpeg', '/thumbnails/large/1234/1234/5678/plants.jpg', 1, NULL, NULL),
(1, 1, 'medium', 1, 'jpeg', '/thumbnails/medium/1234/1234/5678/plants.jpg', 1, NULL, NULL),
(1, 1, 'small', 1, 'jpeg', '/thumbnails/small/1234/1234/5678/plants.jpg', 1, NULL, NULL),
(2, 1, 'file_manager_listing', 1, 'png', '/thumbnails/file_manager_listing/4216/2968/8528/avatar_none.png', 1, NULL, NULL),
(2, 1, 'file_manager_listing_2x', 1, 'png', '/thumbnails/file_manager_listing_2x/4216/2968/8528/avatar_none.png', 1, NULL, NULL),
(3, 1, 'file_manager_detail', 1, 'jpeg', '/thumbnails/file_manager_detail/4716/2968/8528/balloon.jpg', 1, NULL, NULL),
(3, 1, 'file_manager_listing', 1, 'jpeg', '/thumbnails/file_manager_listing/4716/2968/8528/balloon.jpg', 1, NULL, NULL),
(3, 1, 'file_manager_listing_2x', 1, 'jpeg', '/thumbnails/file_manager_listing_2x/4716/2968/8528/balloon.jpg', 1, NULL, NULL),
(4, 1, 'file_manager_detail', 1, 'png', '/thumbnails/file_manager_detail/8516/2968/8529/bio.png', 1, NULL, NULL),
(4, 1, 'file_manager_listing', 1, 'png', '/thumbnails/file_manager_listing/8516/2968/8529/bio.png', 1, NULL, NULL),
(4, 1, 'file_manager_listing_2x', 1, 'png', '/thumbnails/file_manager_listing_2x/8516/2968/8529/bio.png', 1, NULL, NULL),
(5, 1, 'file_manager_listing', 1, 'png', '/thumbnails/file_manager_listing/5416/2968/8530/blank.png', 1, NULL, NULL),
(5, 1, 'file_manager_listing_2x', 1, 'png', '/thumbnails/file_manager_listing_2x/5416/2968/8530/blank.png', 1, NULL, NULL),
(6, 1, 'file_manager_listing', 1, 'png', '/thumbnails/file_manager_listing/5516/2968/8530/blank2.png', 1, NULL, NULL),
(6, 1, 'file_manager_listing_2x', 1, 'png', '/thumbnails/file_manager_listing_2x/5516/2968/8530/blank2.png', 1, NULL, NULL),
(7, 1, 'file_manager_detail', 1, 'jpeg', '/thumbnails/file_manager_detail/1716/2968/8531/bridge.jpg', 1, NULL, NULL),
(7, 1, 'file_manager_listing', 1, 'jpeg', '/thumbnails/file_manager_listing/1716/2968/8531/bridge.jpg', 1, NULL, NULL),
(7, 1, 'file_manager_listing_2x', 1, 'jpeg', '/thumbnails/file_manager_listing_2x/1716/2968/8531/bridge.jpg', 1, NULL, NULL),
(7, 1, 'large', 1, 'jpeg', '/thumbnails/large/1716/2968/8531/bridge.jpg', 1, NULL, NULL),
(7, 1, 'medium', 1, 'jpeg', '/thumbnails/medium/1716/2968/8531/bridge.jpg', 1, NULL, NULL),
(7, 1, 'small', 1, 'jpeg', '/thumbnails/small/1716/2968/8531/bridge.jpg', 1, NULL, NULL),
(8, 1, 'file_manager_listing', 1, 'jpeg', '/thumbnails/file_manager_listing/6316/2968/8532/chinese_house2.jpg', 1, NULL, NULL),
(8, 1, 'file_manager_listing_2x', 1, 'jpeg', '/thumbnails/file_manager_listing_2x/6316/2968/8532/chinese_house2.jpg', 1, NULL, NULL),
(9, 1, 'file_manager_detail', 1, 'jpeg', '/thumbnails/file_manager_detail/8516/2968/8533/houses.jpg', 1, NULL, NULL),
(9, 1, 'file_manager_listing', 1, 'jpeg', '/thumbnails/file_manager_listing/8516/2968/8533/houses.jpg', 1, NULL, NULL),
(9, 1, 'file_manager_listing_2x', 1, 'jpeg', '/thumbnails/file_manager_listing_2x/8516/2968/8533/houses.jpg', 1, NULL, NULL),
(10, 1, 'file_manager_listing', 1, 'png', '/thumbnails/file_manager_listing/1716/2968/8534/masthead.png', 1, NULL, NULL),
(10, 1, 'file_manager_listing_2x', 1, 'png', '/thumbnails/file_manager_listing_2x/1716/2968/8534/masthead.png', 1, NULL, NULL),
(11, 1, 'file_manager_detail', 1, 'jpeg', '/thumbnails/file_manager_detail/2816/2968/8535/mountains.jpg', 1, NULL, NULL),
(11, 1, 'file_manager_listing', 1, 'jpeg', '/thumbnails/file_manager_listing/2816/2968/8535/mountains.jpg', 1, NULL, NULL),
(11, 1, 'file_manager_listing_2x', 1, 'jpeg', '/thumbnails/file_manager_listing_2x/2816/2968/8535/mountains.jpg', 1, NULL, NULL),
(12, 1, 'file_manager_detail', 1, 'jpeg', '/thumbnails/file_manager_detail/2516/2968/8536/shoes.jpg', 1, NULL, NULL),
(12, 1, 'file_manager_listing', 1, 'jpeg', '/thumbnails/file_manager_listing/2516/2968/8536/shoes.jpg', 1, NULL, NULL),
(12, 1, 'file_manager_listing_2x', 1, 'jpeg', '/thumbnails/file_manager_listing_2x/2516/2968/8536/shoes.jpg', 1, NULL, NULL),
(13, 1, 'file_manager_listing', 1, 'png', '/thumbnails/file_manager_listing/1816/2968/8538/slider1.png', 1, NULL, NULL),
(13, 1, 'file_manager_listing_2x', 1, 'png', '/thumbnails/file_manager_listing_2x/1816/2968/8538/slider1.png', 1, NULL, NULL),
(14, 1, 'file_manager_listing', 1, 'png', '/thumbnails/file_manager_listing/7316/2968/8539/slider2.png', 1, NULL, NULL),
(14, 1, 'file_manager_listing_2x', 1, 'png', '/thumbnails/file_manager_listing_2x/7316/2968/8539/slider2.png', 1, NULL, NULL),
(15, 1, 'file_manager_detail', 1, 'jpeg', '/thumbnails/file_manager_detail/4816/2968/8540/subway.jpg', 1, NULL, NULL),
(15, 1, 'file_manager_listing', 1, 'jpeg', '/thumbnails/file_manager_listing/4816/2968/8540/subway.jpg', 1, NULL, NULL),
(15, 1, 'file_manager_listing_2x', 1, 'jpeg', '/thumbnails/file_manager_listing_2x/4816/2968/8540/subway.jpg', 1, NULL, NULL),
(15, 1, 'large', 1, 'jpeg', '/thumbnails/large/4816/2968/8540/subway.jpg', 1, NULL, NULL),
(15, 1, 'medium', 1, 'jpeg', '/thumbnails/medium/4816/2968/8540/subway.jpg', 1, NULL, NULL),
(15, 1, 'small', 1, 'jpeg', '/thumbnails/small/4816/2968/8540/subway.jpg', 1, NULL, NULL),
(16, 1, 'file_manager_detail', 1, 'jpeg', '/thumbnails/file_manager_detail/5616/2968/8542/sunset.jpg', 1, NULL, NULL),
(16, 1, 'file_manager_listing', 1, 'jpeg', '/thumbnails/file_manager_listing/5616/2968/8542/sunset.jpg', 1, NULL, NULL),
(16, 1, 'file_manager_listing_2x', 1, 'jpeg', '/thumbnails/file_manager_listing_2x/5616/2968/8542/sunset.jpg', 1, NULL, NULL),
(16, 1, 'large', 1, 'jpeg', '/thumbnails/large/5616/2968/8542/sunset.jpg', 1, NULL, NULL),
(16, 1, 'medium', 1, 'jpeg', '/thumbnails/medium/5616/2968/8542/sunset.jpg', 1, NULL, NULL),
(16, 1, 'small', 1, 'jpeg', '/thumbnails/small/5616/2968/8542/sunset.jpg', 1, NULL, NULL),
(17, 1, 'file_manager_detail', 1, 'jpeg', '/thumbnails/file_manager_detail/6016/2973/1344/header-bg-1.jpg', 1, NULL, NULL),
(17, 1, 'file_manager_listing', 1, 'jpeg', '/thumbnails/file_manager_listing/6016/2973/1344/header-bg-1.jpg', 1, NULL, NULL),
(17, 1, 'file_manager_listing_2x', 1, 'jpeg', '/thumbnails/file_manager_listing_2x/6016/2973/1344/header-bg-1.jpg', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `FileImageThumbnailTypeFileSets`
--

CREATE TABLE `FileImageThumbnailTypeFileSets` (
  `ftfsFileSetID` int(10) UNSIGNED NOT NULL,
  `ftfsThumbnailType` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `FileImageThumbnailTypes`
--

CREATE TABLE `FileImageThumbnailTypes` (
  `ftTypeID` int(11) NOT NULL,
  `ftTypeHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ftTypeName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ftTypeWidth` int(11) DEFAULT NULL,
  `ftTypeHeight` int(11) DEFAULT NULL,
  `ftTypeIsRequired` tinyint(1) NOT NULL,
  `ftTypeSizingMode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ftUpscalingEnabled` tinyint(1) NOT NULL,
  `ftLimitedToFileSets` tinyint(1) NOT NULL,
  `ftKeepAnimations` tinyint(1) NOT NULL,
  `ftSaveAreaBackgroundColor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `FileImageThumbnailTypes`
--

INSERT INTO `FileImageThumbnailTypes` (`ftTypeID`, `ftTypeHandle`, `ftTypeName`, `ftTypeWidth`, `ftTypeHeight`, `ftTypeIsRequired`, `ftTypeSizingMode`, `ftUpscalingEnabled`, `ftLimitedToFileSets`, `ftKeepAnimations`, `ftSaveAreaBackgroundColor`) VALUES
(1, 'small', 'Small Image', 740, NULL, 0, 'proportional', 0, 0, 0, ''),
(2, 'medium', 'Medium Image', 940, NULL, 0, 'proportional', 0, 0, 0, ''),
(3, 'large', 'Large Image', 1140, NULL, 0, 'proportional', 0, 0, 0, ''),
(4, 'file_manager_listing', 'File Manager Thumbnails', 60, 60, 1, 'exact', 1, 0, 0, ''),
(5, 'file_manager_detail', 'File Manager Detail Thumbnails', 400, 400, 1, 'exact', 0, 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `FilePermissionAssignments`
--

CREATE TABLE `FilePermissionAssignments` (
  `fID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pkID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `FilePermissionFileTypeAccessList`
--

CREATE TABLE `FilePermissionFileTypeAccessList` (
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `peID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `permission` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `FilePermissionFileTypeAccessListCustom`
--

CREATE TABLE `FilePermissionFileTypeAccessListCustom` (
  `extension` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `peID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `FilePermissionFileTypes`
--

CREATE TABLE `FilePermissionFileTypes` (
  `extension` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fsID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `gID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `uID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Files`
--

CREATE TABLE `Files` (
  `fID` int(10) UNSIGNED NOT NULL,
  `fDateAdded` datetime NOT NULL,
  `fPassword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fOverrideSetPermissions` tinyint(1) NOT NULL,
  `ocID` int(10) UNSIGNED NOT NULL,
  `folderTreeNodeID` int(10) UNSIGNED NOT NULL,
  `uID` int(10) UNSIGNED DEFAULT NULL,
  `fslID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Files`
--

INSERT INTO `Files` (`fID`, `fDateAdded`, `fPassword`, `fOverrideSetPermissions`, `ocID`, `folderTreeNodeID`, `uID`, `fslID`) VALUES
(1, '2021-08-23 11:15:25', NULL, 0, 0, 7, 1, 1),
(2, '2021-08-23 11:15:28', NULL, 0, 0, 7, 1, 1),
(3, '2021-08-23 11:15:28', NULL, 0, 0, 7, 1, 1),
(4, '2021-08-23 11:15:29', NULL, 0, 0, 7, 1, 1),
(5, '2021-08-23 11:15:30', NULL, 0, 0, 7, 1, 1),
(6, '2021-08-23 11:15:30', NULL, 0, 0, 7, 1, 1),
(7, '2021-08-23 11:15:31', NULL, 0, 0, 7, 1, 1),
(8, '2021-08-23 11:15:32', NULL, 0, 0, 7, 1, 1),
(9, '2021-08-23 11:15:33', NULL, 0, 0, 7, 1, 1),
(10, '2021-08-23 11:15:34', NULL, 0, 0, 7, 1, 1),
(11, '2021-08-23 11:15:35', NULL, 0, 0, 7, 1, 1),
(12, '2021-08-23 11:15:36', NULL, 0, 0, 7, 1, 1),
(13, '2021-08-23 11:15:38', NULL, 0, 0, 7, 1, 1),
(14, '2021-08-23 11:15:39', NULL, 0, 0, 7, 1, 1),
(15, '2021-08-23 11:15:40', NULL, 0, 0, 7, 1, 1),
(16, '2021-08-23 11:15:42', NULL, 0, 0, 7, 1, 1),
(17, '2021-08-23 23:09:04', NULL, 0, 0, 7, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `FileSearchIndexAttributes`
--

CREATE TABLE `FileSearchIndexAttributes` (
  `fID` int(10) UNSIGNED NOT NULL,
  `ak_width` decimal(14,4) DEFAULT '0.0000',
  `ak_height` decimal(14,4) DEFAULT '0.0000',
  `ak_duration` decimal(14,4) DEFAULT '0.0000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `FileSearchIndexAttributes`
--

INSERT INTO `FileSearchIndexAttributes` (`fID`, `ak_width`, `ak_height`, `ak_duration`) VALUES
(1, '1600.0000', '1066.0000', '0.0000'),
(2, '200.0000', '200.0000', '0.0000'),
(3, '500.0000', '500.0000', '0.0000'),
(4, '460.0000', '460.0000', '0.0000'),
(5, '592.0000', '397.0000', '0.0000'),
(6, '250.0000', '252.0000', '0.0000'),
(7, '1600.0000', '1067.0000', '0.0000'),
(8, '200.0000', '200.0000', '0.0000'),
(9, '1499.0000', '1067.0000', '0.0000'),
(10, '1100.0000', '263.0000', '0.0000'),
(11, '1600.0000', '1067.0000', '0.0000'),
(12, '1600.0000', '1067.0000', '0.0000'),
(13, '1100.0000', '368.0000', '0.0000'),
(14, '1100.0000', '368.0000', '0.0000'),
(15, '1600.0000', '1067.0000', '0.0000'),
(16, '1600.0000', '953.0000', '0.0000'),
(17, '1200.0000', '789.0000', '0.0000');

-- --------------------------------------------------------

--
-- Table structure for table `FileSetFiles`
--

CREATE TABLE `FileSetFiles` (
  `fsfID` int(10) UNSIGNED NOT NULL,
  `fID` int(10) UNSIGNED NOT NULL,
  `fsID` int(10) UNSIGNED NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fsDisplayOrder` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `FileSets`
--

CREATE TABLE `FileSets` (
  `fsID` int(10) UNSIGNED NOT NULL,
  `fsName` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `fsType` smallint(6) NOT NULL,
  `fsOverrideGlobalPermissions` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `FileSetSavedSearches`
--

CREATE TABLE `FileSetSavedSearches` (
  `fsID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `fsSearchRequest` text COLLATE utf8mb4_unicode_ci,
  `fsResultColumns` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `FileStorageLocations`
--

CREATE TABLE `FileStorageLocations` (
  `fslName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fslConfiguration` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:object)',
  `fslID` int(10) UNSIGNED NOT NULL,
  `fslIsDefault` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `FileStorageLocations`
--

INSERT INTO `FileStorageLocations` (`fslName`, `fslConfiguration`, `fslID`, `fslIsDefault`) VALUES
('Default', 'O:69:"Concrete\\Core\\File\\StorageLocation\\Configuration\\DefaultConfiguration":1:{s:10:"\0*\0default";b:1;}', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `FileStorageLocationTypes`
--

CREATE TABLE `FileStorageLocationTypes` (
  `fslTypeHandle` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `fslTypeName` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `fslTypeID` int(11) NOT NULL,
  `pkgID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `FileStorageLocationTypes`
--

INSERT INTO `FileStorageLocationTypes` (`fslTypeHandle`, `fslTypeName`, `fslTypeID`, `pkgID`) VALUES
('default', 'Default', 1, 0),
('local', 'Local', 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `FileUsageRecord`
--

CREATE TABLE `FileUsageRecord` (
  `file_id` int(11) NOT NULL,
  `block_id` int(11) NOT NULL,
  `collection_id` int(11) NOT NULL,
  `collection_version_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `FileVersionLog`
--

CREATE TABLE `FileVersionLog` (
  `fvlID` int(10) UNSIGNED NOT NULL,
  `fID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `fvID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `fvUpdateTypeID` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `fvUpdateTypeAttributeID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `FileVersions`
--

CREATE TABLE `FileVersions` (
  `fvID` int(11) NOT NULL,
  `fvFilename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fvPrefix` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fvDateAdded` datetime NOT NULL,
  `fvActivateDateTime` datetime NOT NULL,
  `fvIsApproved` tinyint(1) NOT NULL,
  `fvAuthorUID` int(11) NOT NULL,
  `fvApproverUID` int(11) NOT NULL,
  `fvSize` bigint(20) NOT NULL,
  `fvTitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fvDescription` longtext COLLATE utf8mb4_unicode_ci,
  `fvExtension` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fvTags` longtext COLLATE utf8mb4_unicode_ci,
  `fvType` int(11) NOT NULL,
  `fvHasListingThumbnail` tinyint(1) NOT NULL,
  `fvHasDetailThumbnail` tinyint(1) NOT NULL,
  `fID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `FileVersions`
--

INSERT INTO `FileVersions` (`fvID`, `fvFilename`, `fvPrefix`, `fvDateAdded`, `fvActivateDateTime`, `fvIsApproved`, `fvAuthorUID`, `fvApproverUID`, `fvSize`, `fvTitle`, `fvDescription`, `fvExtension`, `fvTags`, `fvType`, `fvHasListingThumbnail`, `fvHasDetailThumbnail`, `fID`) VALUES
(1, 'plants.jpg', '123412345678', '2021-08-23 11:15:25', '2021-08-23 11:15:25', 1, 1, 1, 373839, 'plants.jpg', '', 'jpg', '', 1, 1, 1, 1),
(1, 'avatar_none.png', '421629688528', '2021-08-23 11:15:28', '2021-08-23 11:15:28', 1, 1, 1, 12769, 'avatar_none.png', '', 'png', '', 1, 1, 0, 2),
(1, 'balloon.jpg', '471629688528', '2021-08-23 11:15:28', '2021-08-23 11:15:28', 1, 1, 1, 49708, 'balloon.jpg', '', 'jpg', '', 1, 1, 1, 3),
(1, 'bio.png', '851629688529', '2021-08-23 11:15:29', '2021-08-23 11:15:29', 1, 1, 1, 1353, 'bio.png', '', 'png', '', 1, 1, 1, 4),
(1, 'blank.png', '541629688530', '2021-08-23 11:15:30', '2021-08-23 11:15:30', 1, 1, 1, 1837, 'blank.png', '', 'png', '', 1, 1, 1, 5),
(1, 'blank2.png', '551629688530', '2021-08-23 11:15:30', '2021-08-23 11:15:30', 1, 1, 1, 1210, 'blank2.png', '', 'png', '', 1, 1, 0, 6),
(1, 'bridge.jpg', '171629688531', '2021-08-23 11:15:31', '2021-08-23 11:15:31', 1, 1, 1, 211901, 'bridge.jpg', '', 'jpg', '', 1, 1, 1, 7),
(1, 'chinese_house2.jpg', '631629688532', '2021-08-23 11:15:32', '2021-08-23 11:15:32', 1, 1, 1, 84383, 'chinese_house2.jpg', '', 'jpg', '', 1, 1, 0, 8),
(1, 'houses.jpg', '851629688533', '2021-08-23 11:15:33', '2021-08-23 11:15:33', 1, 1, 1, 293154, 'houses.jpg', '', 'jpg', '', 1, 1, 1, 9),
(1, 'masthead.png', '171629688534', '2021-08-23 11:15:34', '2021-08-23 11:15:34', 1, 1, 1, 1429, 'masthead.png', '', 'png', '', 1, 1, 1, 10),
(1, 'mountains.jpg', '281629688535', '2021-08-23 11:15:35', '2021-08-23 11:15:35', 1, 1, 1, 330436, 'mountains.jpg', '', 'jpg', '', 1, 1, 1, 11),
(1, 'shoes.jpg', '251629688536', '2021-08-23 11:15:36', '2021-08-23 11:15:36', 1, 1, 1, 170179, 'shoes.jpg', '', 'jpg', '', 1, 1, 1, 12),
(1, 'slider1.png', '181629688538', '2021-08-23 11:15:38', '2021-08-23 11:15:38', 1, 1, 1, 78494, 'slider1.png', '', 'png', '', 1, 1, 1, 13),
(1, 'slider2.png', '731629688539', '2021-08-23 11:15:39', '2021-08-23 11:15:39', 1, 1, 1, 111308, 'slider2.png', '', 'png', '', 1, 1, 1, 14),
(1, 'subway.jpg', '481629688540', '2021-08-23 11:15:40', '2021-08-23 11:15:40', 1, 1, 1, 305595, 'subway.jpg', '', 'jpg', '', 1, 1, 1, 15),
(1, 'sunset.jpg', '561629688542', '2021-08-23 11:15:42', '2021-08-23 11:15:42', 1, 1, 1, 458047, 'sunset.jpg', '', 'jpg', '', 1, 1, 1, 16),
(1, 'header-bg-1.jpg', '601629731344', '2021-08-23 23:09:04', '2021-08-23 23:09:04', 1, 2, 2, 203274, 'header-bg-1.jpg', '', 'jpg', '', 1, 1, 1, 17);

-- --------------------------------------------------------

--
-- Table structure for table `FormSubmissionNotifications`
--

CREATE TABLE `FormSubmissionNotifications` (
  `exEntryID` int(11) DEFAULT NULL,
  `nID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gaPage`
--

CREATE TABLE `gaPage` (
  `gaiID` int(10) UNSIGNED NOT NULL,
  `cID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `GatheringConfiguredDataSources`
--

CREATE TABLE `GatheringConfiguredDataSources` (
  `gcsID` int(10) UNSIGNED NOT NULL,
  `gaID` int(10) UNSIGNED DEFAULT NULL,
  `gasID` int(10) UNSIGNED DEFAULT NULL,
  `gcdObject` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `GatheringDataSources`
--

CREATE TABLE `GatheringDataSources` (
  `gasID` int(10) UNSIGNED NOT NULL,
  `gasName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gasHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pkgID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `gasDisplayOrder` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `GatheringDataSources`
--

INSERT INTO `GatheringDataSources` (`gasID`, `gasName`, `gasHandle`, `pkgID`, `gasDisplayOrder`) VALUES
(1, 'Site Page', 'page', 0, 0),
(2, 'RSS Feed', 'rss_feed', 0, 1),
(3, 'Flickr Feed', 'flickr_feed', 0, 2),
(4, 'Twitter', 'twitter', 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `GatheringItemFeatureAssignments`
--

CREATE TABLE `GatheringItemFeatureAssignments` (
  `gafaID` int(10) UNSIGNED NOT NULL,
  `gaiID` int(10) UNSIGNED DEFAULT NULL,
  `faID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `GatheringItems`
--

CREATE TABLE `GatheringItems` (
  `gaiID` int(10) UNSIGNED NOT NULL,
  `gaID` int(10) UNSIGNED DEFAULT NULL,
  `gasID` int(10) UNSIGNED DEFAULT NULL,
  `gaiDateTimeCreated` datetime NOT NULL,
  `gaiPublicDateTime` datetime NOT NULL,
  `gaiTitle` text COLLATE utf8mb4_unicode_ci,
  `gaiSlotWidth` int(10) UNSIGNED DEFAULT '1',
  `gaiSlotHeight` int(10) UNSIGNED DEFAULT '1',
  `gaiKey` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gaiBatchDisplayOrder` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `gaiBatchTimestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `gaiIsDeleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `GatheringItemSelectedTemplates`
--

CREATE TABLE `GatheringItemSelectedTemplates` (
  `gaiID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `gatID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `gatTypeID` int(10) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `GatheringItemTemplateFeatures`
--

CREATE TABLE `GatheringItemTemplateFeatures` (
  `gfeID` int(10) UNSIGNED NOT NULL,
  `gatID` int(10) UNSIGNED DEFAULT NULL,
  `feID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `GatheringItemTemplateFeatures`
--

INSERT INTO `GatheringItemTemplateFeatures` (`gfeID`, `gatID`, `feID`) VALUES
(4, 1, 1),
(10, 2, 1),
(13, 3, 1),
(16, 4, 1),
(19, 5, 1),
(23, 7, 1),
(29, 11, 1),
(33, 12, 1),
(37, 13, 1),
(42, 14, 1),
(47, 15, 1),
(53, 17, 1),
(56, 18, 1),
(63, 21, 1),
(64, 22, 1),
(3, 1, 2),
(9, 2, 2),
(12, 3, 2),
(15, 4, 2),
(18, 5, 2),
(21, 6, 2),
(25, 8, 2),
(27, 9, 2),
(41, 13, 3),
(46, 14, 3),
(51, 16, 3),
(55, 17, 3),
(62, 20, 3),
(66, 22, 3),
(2, 1, 4),
(8, 2, 4),
(14, 4, 4),
(17, 5, 4),
(31, 11, 4),
(35, 12, 4),
(39, 13, 4),
(44, 14, 4),
(61, 20, 4),
(5, 1, 5),
(22, 6, 5),
(24, 8, 5),
(26, 9, 5),
(28, 10, 5),
(32, 11, 5),
(36, 12, 5),
(40, 13, 5),
(45, 14, 5),
(49, 15, 5),
(50, 16, 5),
(59, 19, 5),
(65, 22, 5),
(20, 5, 6),
(1, 1, 7),
(7, 2, 7),
(11, 3, 7),
(30, 11, 7),
(34, 12, 7),
(38, 13, 7),
(43, 14, 7),
(48, 15, 7),
(52, 16, 7),
(54, 17, 7),
(57, 18, 7),
(58, 19, 7),
(60, 20, 7),
(6, 1, 8);

-- --------------------------------------------------------

--
-- Table structure for table `GatheringItemTemplates`
--

CREATE TABLE `GatheringItemTemplates` (
  `gatID` int(10) UNSIGNED NOT NULL,
  `gatHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gatName` text COLLATE utf8mb4_unicode_ci,
  `gatHasCustomClass` tinyint(1) NOT NULL DEFAULT '0',
  `gatFixedSlotWidth` int(10) UNSIGNED DEFAULT '0',
  `gatFixedSlotHeight` int(10) UNSIGNED DEFAULT '0',
  `gatForceDefault` int(10) UNSIGNED DEFAULT '0',
  `pkgID` int(10) UNSIGNED DEFAULT NULL,
  `gatTypeID` int(10) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `GatheringItemTemplates`
--

INSERT INTO `GatheringItemTemplates` (`gatID`, `gatHandle`, `gatName`, `gatHasCustomClass`, `gatFixedSlotWidth`, `gatFixedSlotHeight`, `gatForceDefault`, `pkgID`, `gatTypeID`) VALUES
(1, 'featured', 'Featured Item', 0, 6, 2, 1, 0, 1),
(2, 'title_date_description', 'Title Date & Description', 0, 0, 0, 0, 0, 1),
(3, 'title_description', 'Title & Description', 0, 0, 0, 0, 0, 1),
(4, 'title_date', 'Title & Date', 0, 0, 0, 0, 0, 1),
(5, 'title_date_comments', 'Title, Date & Comments', 1, 0, 0, 0, 0, 1),
(6, 'thumbnail', 'Thumbnail', 0, 0, 0, 0, 0, 1),
(7, 'basic', 'Basic', 0, 0, 0, 0, 0, 2),
(8, 'image_sharing_link', 'Image Sharing Link', 0, 0, 0, 0, 0, 2),
(9, 'image_conversation', 'Image Conversation', 0, 0, 0, 0, 0, 2),
(10, 'image', 'Large Image', 0, 0, 0, 0, 0, 2),
(11, 'masthead_image_left', 'Masthead Image Left', 0, 0, 0, 0, 0, 1),
(12, 'masthead_image_right', 'Masthead Image Right', 0, 0, 0, 0, 0, 1),
(13, 'masthead_image_byline_right', 'Masthead Image Byline Right', 0, 0, 0, 0, 0, 1),
(14, 'masthead_image_byline_left', 'Masthead Image Byline Left', 0, 0, 0, 0, 0, 1),
(15, 'image_masthead_description_center', 'Image Masthead Description Center', 0, 0, 0, 0, 0, 1),
(16, 'image_byline_description_center', 'Image Byline Description Center', 0, 0, 0, 0, 0, 1),
(17, 'masthead_byline_description', 'Masthead Byline Description', 0, 0, 0, 0, 0, 1),
(18, 'masthead_description', 'Masthead Description', 0, 0, 0, 0, 0, 1),
(19, 'thumbnail_description_center', 'Thumbnail & Description Center', 0, 0, 0, 0, 0, 1),
(20, 'tweet', 'Tweet', 0, 0, 0, 0, 0, 1),
(21, 'vimeo', 'Vimeo', 0, 0, 0, 0, 0, 1),
(22, 'image_overlay_headline', 'Image Overlay Headline', 0, 0, 0, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `GatheringItemTemplateTypes`
--

CREATE TABLE `GatheringItemTemplateTypes` (
  `gatTypeID` int(10) UNSIGNED NOT NULL,
  `gatTypeHandle` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pkgID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `GatheringItemTemplateTypes`
--

INSERT INTO `GatheringItemTemplateTypes` (`gatTypeID`, `gatTypeHandle`, `pkgID`) VALUES
(1, 'tile', 0),
(2, 'detail', 0);

-- --------------------------------------------------------

--
-- Table structure for table `GatheringPermissionAssignments`
--

CREATE TABLE `GatheringPermissionAssignments` (
  `gaID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pkID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Gatherings`
--

CREATE TABLE `Gatherings` (
  `gaID` int(10) UNSIGNED NOT NULL,
  `gaDateCreated` datetime NOT NULL,
  `gaDateLastUpdated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Geolocators`
--

CREATE TABLE `Geolocators` (
  `glID` int(10) UNSIGNED NOT NULL COMMENT 'Geolocator ID',
  `glHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Geolocator handle',
  `glName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Geolocator name',
  `glDescription` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Geolocator description',
  `glConfiguration` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Geolocator configuration options(DC2Type:json_array)',
  `glActive` tinyint(1) NOT NULL COMMENT 'Is this Geolocator the active one?',
  `glPackage` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='List of all the installed Geolocator services';

--
-- Dumping data for table `Geolocators`
--

INSERT INTO `Geolocators` (`glID`, `glHandle`, `glName`, `glDescription`, `glConfiguration`, `glActive`, `glPackage`) VALUES
(1, 'geoplugin', 'geoPlugin', '', '{"url":"http:\\/\\/www.geoplugin.net\\/json.gp?ip=[[IP]]"}', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Groups`
--

CREATE TABLE `Groups` (
  `gID` int(10) UNSIGNED NOT NULL,
  `gName` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gDescription` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gUserExpirationIsEnabled` tinyint(1) NOT NULL DEFAULT '0',
  `gUserExpirationMethod` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gUserExpirationSetDateTime` datetime DEFAULT NULL,
  `gUserExpirationInterval` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `gUserExpirationAction` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gIsBadge` tinyint(1) NOT NULL DEFAULT '0',
  `gBadgeFID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `gBadgeDescription` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gBadgeCommunityPointValue` int(11) NOT NULL DEFAULT '0',
  `gIsAutomated` tinyint(1) NOT NULL DEFAULT '0',
  `gCheckAutomationOnRegister` tinyint(1) NOT NULL DEFAULT '0',
  `gCheckAutomationOnLogin` tinyint(1) NOT NULL DEFAULT '0',
  `gCheckAutomationOnJobRun` tinyint(1) NOT NULL DEFAULT '0',
  `gPath` text COLLATE utf8mb4_unicode_ci,
  `pkgID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Groups`
--

INSERT INTO `Groups` (`gID`, `gName`, `gDescription`, `gUserExpirationIsEnabled`, `gUserExpirationMethod`, `gUserExpirationSetDateTime`, `gUserExpirationInterval`, `gUserExpirationAction`, `gIsBadge`, `gBadgeFID`, `gBadgeDescription`, `gBadgeCommunityPointValue`, `gIsAutomated`, `gCheckAutomationOnRegister`, `gCheckAutomationOnLogin`, `gCheckAutomationOnJobRun`, `gPath`, `pkgID`) VALUES
(1, 'Guest', 'The guest group represents unregistered visitors to your site.', 0, NULL, NULL, 0, NULL, 0, 0, NULL, 0, 0, 0, 0, 0, '/Guest', 0),
(2, 'Registered Users', 'The registered users group represents all user accounts.', 0, NULL, NULL, 0, NULL, 0, 0, NULL, 0, 0, 0, 0, 0, '/Registered Users', 0),
(3, 'Administrators', '', 0, NULL, NULL, 0, NULL, 0, 0, NULL, 0, 0, 0, 0, 0, '/Administrators', 0);

-- --------------------------------------------------------

--
-- Table structure for table `GroupSetGroups`
--

CREATE TABLE `GroupSetGroups` (
  `gID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `gsID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `GroupSets`
--

CREATE TABLE `GroupSets` (
  `gsID` int(10) UNSIGNED NOT NULL,
  `gsName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pkgID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `IpAccessControlCategories`
--

CREATE TABLE `IpAccessControlCategories` (
  `iaccID` int(10) UNSIGNED NOT NULL COMMENT 'The IP Access Control Category identifier',
  `iaccHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The IP Access Control handle',
  `iaccName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The IP Access Control name',
  `iaccEnabled` tinyint(1) NOT NULL COMMENT 'Is this IP Access Control enabled?',
  `iaccMaxEvents` int(10) UNSIGNED NOT NULL COMMENT 'The maximum allowed events in the time window',
  `iaccTimeWindow` int(10) UNSIGNED DEFAULT NULL COMMENT AS `The time window (in seconds) where the events should be counted (NULL means no limits)`,
  `iaccBanDuration` int(10) UNSIGNED DEFAULT NULL COMMENT AS `The duration (in seconds) of the ban when the maximum number of events occur in the time window (NULL means forever)`,
  `iaccSiteSpecific` tinyint(1) NOT NULL COMMENT 'Is this IP Access Control Category site-specific?',
  `iaccLogChannel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The log channel handle',
  `iaccPackage` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='List of IP Access Control Categories';

--
-- Dumping data for table `IpAccessControlCategories`
--

INSERT INTO `IpAccessControlCategories` (`iaccID`, `iaccHandle`, `iaccName`, `iaccEnabled`, `iaccMaxEvents`, `iaccTimeWindow`, `iaccBanDuration`, `iaccSiteSpecific`, `iaccLogChannel`, `iaccPackage`) VALUES
(1, 'failed_login', 'Failed Login Attempts', 1, 5, 300, 600, 1, 'security', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `IpAccessControlEvents`
--

CREATE TABLE `IpAccessControlEvents` (
  `iaceID` int(10) UNSIGNED NOT NULL COMMENT 'The IP Access Control Event identifier',
  `iaceIp` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The IP address associated to this event',
  `iaceDateTime` datetime NOT NULL COMMENT 'The date/time when this event occurred',
  `iaceCategory` int(10) UNSIGNED NOT NULL COMMENT 'The IP Access Control Category identifier',
  `iaceSite` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='List of IP Access Control Events';

--
-- Dumping data for table `IpAccessControlEvents`
--

INSERT INTO `IpAccessControlEvents` (`iaceID`, `iaceIp`, `iaceDateTime`, `iaceCategory`, `iaceSite`) VALUES
(1, '0000:0000:0000:0000:0000:0000:0000:0001', '2022-02-22 12:28:39', 1, 1),
(2, '0000:0000:0000:0000:0000:0000:0000:0001', '2022-02-22 12:28:50', 1, 1),
(3, '0000:0000:0000:0000:0000:0000:0000:0001', '2022-02-22 13:06:00', 1, 1),
(4, '0000:0000:0000:0000:0000:0000:0000:0001', '2022-02-22 13:07:12', 1, 1),
(5, '0000:0000:0000:0000:0000:0000:0000:0001', '2022-02-22 13:07:48', 1, 1),
(6, '0000:0000:0000:0000:0000:0000:0000:0001', '2022-02-22 13:08:01', 1, 1),
(7, '0000:0000:0000:0000:0000:0000:0000:0001', '2022-02-22 13:08:12', 1, 1),
(8, '0000:0000:0000:0000:0000:0000:0000:0001', '2022-02-22 13:24:09', 1, 1),
(9, '0000:0000:0000:0000:0000:0000:0000:0001', '2022-02-22 13:24:25', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `IpAccessControlRanges`
--

CREATE TABLE `IpAccessControlRanges` (
  `iacrID` int(10) UNSIGNED NOT NULL COMMENT 'The IP Access Control Range identifier',
  `iacrIpFrom` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The initial IP address of the range',
  `iacrIpTo` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The final IP address of the range',
  `iacrType` int(10) UNSIGNED NOT NULL COMMENT 'The type of this range',
  `iacrExpiration` datetime DEFAULT NULL COMMENT AS `The date/time when this range expires (NULL means no expiration)`,
  `iacrCategory` int(10) UNSIGNED NOT NULL COMMENT 'The IP Access Control Category identifier',
  `iacrSite` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='List of IP Access Control Ranges';

--
-- Dumping data for table `IpAccessControlRanges`
--

INSERT INTO `IpAccessControlRanges` (`iacrID`, `iacrIpFrom`, `iacrIpTo`, `iacrType`, `iacrExpiration`, `iacrCategory`, `iacrSite`) VALUES
(1, '0000:0000:0000:0000:0000:0000:0000:0001', '0000:0000:0000:0000:0000:0000:0000:0001', 33, '2022-02-22 13:18:12', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `Jobs`
--

CREATE TABLE `Jobs` (
  `jID` int(10) UNSIGNED NOT NULL,
  `jName` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jDescription` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jDateInstalled` datetime DEFAULT NULL,
  `jDateLastRun` datetime DEFAULT NULL,
  `pkgID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `jLastStatusText` longtext COLLATE utf8mb4_unicode_ci,
  `jLastStatusCode` smallint(6) NOT NULL DEFAULT '0',
  `jStatus` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ENABLED',
  `jHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jNotUninstallable` smallint(6) NOT NULL DEFAULT '0',
  `isScheduled` smallint(6) NOT NULL DEFAULT '0',
  `scheduledInterval` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'days',
  `scheduledValue` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Jobs`
--

INSERT INTO `Jobs` (`jID`, `jName`, `jDescription`, `jDateInstalled`, `jDateLastRun`, `pkgID`, `jLastStatusText`, `jLastStatusCode`, `jStatus`, `jHandle`, `jNotUninstallable`, `isScheduled`, `scheduledInterval`, `scheduledValue`) VALUES
(1, 'Index Search Engine - Updates', 'Index the site to allow searching to work quickly and accurately', '2021-08-23 11:13:21', NULL, 0, NULL, 0, 'ENABLED', 'index_search', 1, 0, 'days', 0),
(2, 'Index Search Engine - All', 'Empties the page search index and reindexes all pages.', '2021-08-23 11:13:21', NULL, 0, NULL, 0, 'ENABLED', 'index_search_all', 1, 0, 'days', 0),
(3, 'Check Automated Groups', 'Automatically add users to groups and assign badges.', '2021-08-23 11:13:21', NULL, 0, NULL, 0, 'ENABLED', 'check_automated_groups', 0, 0, 'days', 0),
(4, 'Generate the sitemap.xml file', 'Generate the sitemap.xml file that search engines use to crawl your site.', '2021-08-23 11:13:21', NULL, 0, NULL, 0, 'ENABLED', 'generate_sitemap', 0, 0, 'days', 0),
(5, 'Process Email Posts', 'Polls an email account and grabs private messages/postings that are sent there..', '2021-08-23 11:13:21', NULL, 0, NULL, 0, 'ENABLED', 'process_email', 0, 0, 'days', 0),
(6, 'Remove Old Page Versions', 'Removes all except the 10 most recent page versions for each page.', '2021-08-23 11:13:21', NULL, 0, NULL, 0, 'ENABLED', 'remove_old_page_versions', 0, 0, 'days', 0),
(7, 'Update Gatherings', 'Loads new items into gatherings.', '2021-08-23 11:13:21', NULL, 0, NULL, 0, 'ENABLED', 'update_gatherings', 0, 0, 'days', 0),
(8, 'Update Statistics Trackers', 'Scan the sitemap for file usage and stack usage to update statistics trackers', '2021-08-23 11:13:21', NULL, 0, NULL, 0, 'ENABLED', 'update_statistics', 0, 0, 'days', 0),
(9, 'Fill thumbnail database table', 'Re-populate the thumbnail path database table.', '2021-08-23 11:13:21', NULL, 0, NULL, 0, 'ENABLED', 'fill_thumbnails_table', 0, 0, 'days', 0),
(10, 'Deactivate Users', 'Deactivates users who haven\'t logged in recently, if automatic user deactivation is active.', '2021-08-23 11:13:21', NULL, 0, NULL, 0, 'ENABLED', 'deactivate_users', 0, 0, 'days', 0);

-- --------------------------------------------------------

--
-- Table structure for table `JobSetJobs`
--

CREATE TABLE `JobSetJobs` (
  `jsID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `jID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `jRunOrder` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `JobSetJobs`
--

INSERT INTO `JobSetJobs` (`jsID`, `jID`, `jRunOrder`) VALUES
(1, 1, 0),
(1, 4, 0),
(1, 5, 0),
(1, 6, 0),
(1, 7, 0),
(1, 9, 0),
(1, 10, 0);

-- --------------------------------------------------------

--
-- Table structure for table `JobSets`
--

CREATE TABLE `JobSets` (
  `jsID` int(10) UNSIGNED NOT NULL,
  `jsName` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pkgID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `jDateLastRun` datetime DEFAULT NULL,
  `isScheduled` smallint(6) NOT NULL DEFAULT '0',
  `scheduledInterval` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'days',
  `scheduledValue` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `JobSets`
--

INSERT INTO `JobSets` (`jsID`, `jsName`, `pkgID`, `jDateLastRun`, `isScheduled`, `scheduledInterval`, `scheduledValue`) VALUES
(1, 'Default', 0, NULL, 0, 'days', 0);

-- --------------------------------------------------------

--
-- Table structure for table `JobsLog`
--

CREATE TABLE `JobsLog` (
  `jlID` int(10) UNSIGNED NOT NULL,
  `jID` int(10) UNSIGNED NOT NULL,
  `jlMessage` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `jlTimestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `jlError` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `LegacyAttributeKeys`
--

CREATE TABLE `LegacyAttributeKeys` (
  `akID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Logs`
--

CREATE TABLE `Logs` (
  `logID` int(10) UNSIGNED NOT NULL,
  `channel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` int(10) UNSIGNED NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci,
  `uID` int(10) UNSIGNED DEFAULT NULL,
  `level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Logs`
--

INSERT INTO `Logs` (`logID`, `channel`, `time`, `message`, `uID`, `level`) VALUES
(1, 'operations', 1629688824, 'Clearing cache with CacheClearer::flush().', 1, 250),
(2, 'exceptions', 1629688872, 'Exception Occurred: C:\\wamp64\\www\\concrete5-8.5.5_Store\\concrete\\vendor\\tedivm\\stash\\src\\Stash\\Driver\\FileSystem.php:326 unlink(C:/wamp64/www/concrete5-8.5.5_Store/application/files/cache/overrides\\1952a01898073d1e\\561b9b4f2e42cbd7\\38a865804f8fdcb6\\57cd99682e939275\\a2a046689ee1cd94\\2cbdb2fc5d20459c.php): Permission denied (2)\n', 1, 600),
(3, 'exceptions', 1629703223, 'Exception Occurred: C:\\wamp64\\www\\concrete5-8.5.5_Store\\packages\\my_theme\\themes\\theme_admin_lte\\elements\\header.php:21 Class \'Concrete\\Package\\NsrSiteLogo\\Src\\SiteLogoSrc\' not found (1)\n', 1, 600),
(4, 'exceptions', 1629703314, 'Exception Occurred: C:\\wamp64\\www\\concrete5-8.5.5_Store\\packages\\my_theme\\themes\\theme_admin_lte\\elements\\header.php:29 Class \'Application\\Controller\\MyControllers\\MyTheme\' not found (1)\n', 1, 600),
(5, 'site_organization', 1629705389, 'Page "Community Points" at path "/my-dashboard/users/points" Moved to trash', 1, 250),
(6, 'site_organization', 1629705531, 'Page "User Groups" at path "/my-dashboard/users/groups" Moved to trash', 1, 250),
(7, 'site_organization', 1629705551, 'Page "Attributes" at path "/my-dashboard/users/attributes" Moved to trash', 1, 250),
(8, 'site_organization', 1629705949, 'Page "Blank Page" at path "/blank-page" Moved to trash', 1, 250),
(9, 'site_organization', 1629705963, 'Page "Contact" at path "/contact" Moved to trash', 1, 250),
(10, 'site_organization', 1629705977, 'Page "Search" at path "/search" Moved to trash', 1, 250),
(11, 'site_organization', 1629705992, 'Page "Blog" at path "/blog" Moved to trash', 1, 250),
(12, 'site_organization', 1629706006, 'Page "Team" at path "/team" Moved to trash', 1, 250),
(13, 'site_organization', 1629706018, 'Page "Team" at path "/!trash/team" Moved to trash', 1, 250),
(14, 'site_organization', 1629706077, 'Page "Portfolio" at path "/portfolio" Moved to trash', 1, 250),
(15, 'site_organization', 1629706118, 'Page "Services" at path "/services" Moved to trash', 1, 250),
(16, 'exceptions', 1629707220, 'Exception Occurred: C:\\wamp64\\www\\concrete5-8.5.5_Store\\application\\controllers\\my_controllers\\my_theme.php:31 Call to a member function getThemeHandle() on null (1)\n', 1, 600),
(17, 'exceptions', 1629707416, 'Exception Occurred: C:\\wamp64\\www\\concrete5-8.5.5_Store\\concrete\\elements\\group\\search.php:13 Call to a member function getSearchResultObject() on null (1)\n', 1, 600),
(18, 'site_organization', 1629709053, 'Page "My Dashboard" at path "/my-dashboard" Moved to trash', 1, 250),
(19, 'site_organization', 1629709905, 'Page "Web Developer" at path "/!trash/team/careers/web-developer" deleted', 1, 250),
(20, 'site_organization', 1629709906, 'Page "Sales Associate" at path "/!trash/team/careers/sales-associate" deleted', 1, 250),
(21, 'site_organization', 1629709907, 'Page "Group Sets" at path "/!trash/my-dashboard/users/group_sets" deleted', 1, 250),
(22, 'site_organization', 1629709907, 'Page "Search Users" at path "/!trash/my-dashboard/users/search" deleted', 1, 250),
(23, 'site_organization', 1629709907, 'Page "Add User" at path "/!trash/my-dashboard/users/add" deleted', 1, 250),
(24, 'site_organization', 1629709907, 'Page "Add Group" at path "/!trash/my-dashboard/users/add_group" deleted', 1, 250),
(25, 'site_organization', 1629709908, 'Page "Project Title" at path "/!trash/portfolio/project-title" deleted', 1, 250),
(26, 'site_organization', 1629709909, 'Page "Frequently Asked Questions" at path "/!trash/team/faq" deleted', 1, 250),
(27, 'site_organization', 1629709909, 'Page "Project Title 2" at path "/!trash/portfolio/project-title-2" deleted', 1, 250),
(28, 'site_organization', 1629709910, 'Page "Project Title 5" at path "/!trash/portfolio/project-title-5" deleted', 1, 250),
(29, 'site_organization', 1629709910, 'Page "Users" at path "/!trash/my-dashboard/users" deleted', 1, 250),
(30, 'site_organization', 1629709911, 'Page "Project Title 6" at path "/!trash/portfolio/project-title-6" deleted', 1, 250),
(31, 'site_organization', 1629709911, 'Page "About" at path "/!trash/team/about" deleted', 1, 250),
(32, 'site_organization', 1629709913, 'Page "Project Title 4" at path "/!trash/portfolio/project-title-4" deleted', 1, 250),
(33, 'site_organization', 1629709913, 'Page "Project Title 3" at path "/!trash/portfolio/project-title-3" deleted', 1, 250),
(34, 'site_organization', 1629709914, 'Page "Careers" at path "/!trash/team/careers" deleted', 1, 250),
(35, 'site_organization', 1629709915, 'Page "Send Message to Group" at path "/!trash/groups/message" deleted', 1, 250),
(36, 'site_organization', 1629709916, 'Page "Move Multiple Groups" at path "/!trash/groups/bulkupdate" deleted', 1, 250),
(37, 'site_organization', 1629709916, 'Page "Hello World!" at path "/!trash/blog/hello-world" deleted', 1, 250),
(38, 'site_organization', 1629709917, 'Page "Actions" at path "/!trash/points/actions" deleted', 1, 250),
(39, 'site_organization', 1629709917, 'Page "A Beautiful Site Deserves a Beautiful Blog" at path "/!trash/blog/a-beautiful-blog" deleted', 1, 250),
(40, 'site_organization', 1629709917, 'Page "Another Blog Post" at path "/!trash/blog/another-blog-post" deleted', 1, 250),
(41, 'site_organization', 1629709918, 'Page "Assign Points" at path "/!trash/points/assign" deleted', 1, 250),
(42, 'site_organization', 1629709918, 'Page "My Dashboard" at path "/!trash/my-dashboard" deleted', 1, 250),
(43, 'site_organization', 1629709918, 'Page "User Groups" at path "/!trash/groups" deleted', 1, 250),
(44, 'site_organization', 1629709918, 'Page "Services" at path "/!trash/services" deleted', 1, 250),
(45, 'site_organization', 1629709920, 'Page "Contact" at path "/!trash/contact" deleted', 1, 250),
(46, 'site_organization', 1629709925, 'Page "Portfolio" at path "/!trash/portfolio" deleted', 1, 250),
(47, 'site_organization', 1629709925, 'Page "Team" at path "/!trash/team" deleted', 1, 250),
(48, 'site_organization', 1629709927, 'Page "Blog" at path "/!trash/blog" deleted', 1, 250),
(49, 'site_organization', 1629709927, 'Page "Search" at path "/!trash/search" deleted', 1, 250),
(50, 'site_organization', 1629709928, 'Page "Blank Page" at path "/!trash/blank-page" deleted', 1, 250),
(51, 'site_organization', 1629709928, 'Page "Community Points" at path "/!trash/points" deleted', 1, 250),
(52, 'site_organization', 1629709928, 'Page "Attributes" at path "/!trash/attributes" deleted', 1, 250),
(53, 'exceptions', 1629711550, 'Exception Occurred: C:\\wamp64\\www\\concrete5-8.5.5_Store\\concrete\\elements\\group\\search.php:13 Call to a member function getSearchResultObject() on null (1)\n', 2, 600),
(54, 'exceptions', 1629711581, 'Exception Occurred: C:\\wamp64\\www\\concrete5-8.5.5_Store\\concrete\\elements\\group\\search.php:13 Call to a member function getSearchResultObject() on null (1)\n', 1, 600),
(55, 'exceptions', 1629711753, 'Exception Occurred: C:\\wamp64\\www\\concrete5-8.5.5_Store\\concrete\\elements\\group\\search.php:13 Call to a member function getSearchResultObject() on null (1)\n', 2, 600),
(56, 'exceptions', 1629711783, 'Exception Occurred: C:\\wamp64\\www\\concrete5-8.5.5_Store\\concrete\\elements\\group\\search.php:13 Call to a member function getSearchResultObject() on null (1)\n', 1, 600),
(57, 'exceptions', 1629712034, 'Exception Occurred: C:\\wamp64\\www\\concrete5-8.5.5_Store\\concrete\\elements\\group\\search.php:13 Call to a member function getSearchResultObject() on null (1)\n', 1, 600),
(58, 'exceptions', 1629712144, 'Exception Occurred: C:\\wamp64\\www\\concrete5-8.5.5_Store\\concrete\\elements\\group\\search.php:13 Call to a member function getSearchResultObject() on null (1)\n', 1, 600),
(59, 'exceptions', 1629723682, 'Exception Occurred: C:\\wamp64\\www\\concrete5-8.5.5_Store\\concrete\\themes\\dashboard\\elements\\header.php:116 syntax error, unexpected \'toolbar\' (T_STRING) (4)\n', 1, 600),
(60, 'exceptions', 1629729596, 'Exception Occurred: C:\\wamp64\\www\\concrete5-8.5.5_Store\\concrete\\src\\Cache\\Driver\\FileSystemStashDriver.php:46 file_put_contents(C:/wamp64/www/concrete5-8.5.5_Store/application/files/cache/overrides\\1952a01898073d1e\\561b9b4f2e42cbd7\\38a865804f8fdcb6\\57cd99682e939275\\9e0e2b0cae19629d\\3a8989e09048c00c.php): failed to open stream: Permission denied (2)\n', 1, 600),
(61, 'site_organization', 1629802234, 'Page "" at path "" deleted', 1, 250),
(62, 'site_organization', 1629802251, 'Page "" at path "" deleted', 1, 250),
(63, 'site_organization', 1629802275, 'Page "" at path "" deleted', 1, 250),
(64, 'site_organization', 1629802291, 'Page "" at path "" deleted', 1, 250),
(65, 'site_organization', 1629802310, 'Page "" at path "" deleted', 1, 250),
(66, 'site_organization', 1629803412, 'Page "" at path "" deleted', 1, 250),
(67, 'site_organization', 1629803412, 'Page "" at path "" deleted', 1, 250),
(68, 'site_organization', 1629803412, 'Page "" at path "" deleted', 1, 250),
(69, 'site_organization', 1629803412, 'Page "" at path "" deleted', 1, 250),
(70, 'site_organization', 1629810550, 'Page "Landing Pages" at path "/dashboard/pages/landing_pages" deleted', 1, 250),
(71, 'site_organization', 1629810550, 'Page "Add Landing Pages" at path "/dashboard/landing-pages" deleted', 1, 250),
(72, 'exceptions', 1629810659, 'Exception Occurred: C:\\wamp64\\www\\concrete5-8.5.5_Store\\concrete\\vendor\\illuminate\\container\\Container.php:734 Class  does not exist (-1)\n', 1, 600),
(73, 'exceptions', 1629859573, 'Exception Occurred: C:\\wamp64\\www\\concrete5-8.5.5_Store\\concrete\\vendor\\tedivm\\stash\\src\\Stash\\Driver\\FileSystem.php:326 unlink(C:/wamp64/www/concrete5-8.5.5_Store/application/files/cache/overrides\\1952a01898073d1e\\561b9b4f2e42cbd7\\38a865804f8fdcb6\\57cd99682e939275\\cf4f14d2a074dbb6\\0fb8ee9a8d65f973.php): Permission denied (2)\n', 1, 600),
(74, 'security', 1645506492, 'IP address ::1 added to blacklist for the category Failed Login Attempts.', 0, 300),
(75, 'exceptions', 1645506612, 'Mail Exception Occurred. Unable to send mail: Unable to send mail: mail(): Failed to connect to mailserver at &quot;localhost&quot; port 25, verify your &quot;SMTP&quot; and &quot;smtp_port&quot; setting in php.ini or use ini_set()\n#0 [internal function]: Zend\\Mail\\Transport\\Sendmail->mailHandler(\'nasir_roney@yah...\', \'Forgot Password\', \'=0A=0ADear Admi...\', \'Date: Tue, 22 F...\', NULL)\n#1 C:\\wamp64\\www\\concrete5-8.5.5_Store\\concrete\\vendor\\zendframework\\zend-mail\\src\\Transport\\Sendmail.php(138): call_user_func(Array, \'nasir_roney@yah...\', \'Forgot Password\', \'=0A=0ADear Admi...\', \'Date: Tue, 22 F...\', NULL)\n#2 C:\\wamp64\\www\\concrete5-8.5.5_Store\\concrete\\src\\Mail\\Service.php(637): Zend\\Mail\\Transport\\Sendmail->send(Object(Zend\\Mail\\Message))\n#3 C:\\wamp64\\www\\concrete5-8.5.5_Store\\concrete\\authentication\\concrete\\controller.php(263): Concrete\\Core\\Mail\\Service->sendMail()\n#4 [internal function]: Concrete\\Authentication\\Concrete\\Controller->forgot_password()\n#5 C:\\wamp64\\www\\concrete5-8.5.5_Store\\concrete\\src\\Authentication\\AuthenticationType.php(434): call_user_func_array(Array, Array)\n#6 C:\\wamp64\\www\\concrete5-8.5.5_Store\\concrete\\single_pages\\login.php(161): Concrete\\Core\\Authentication\\AuthenticationType->renderForm(\'forgot_password\', Array)\n#7 C:\\wamp64\\www\\concrete5-8.5.5_Store\\concrete\\src\\View\\View.php(267): include(\'C:\\\\wamp64\\\\www\\\\c...\')\n#8 C:\\wamp64\\www\\concrete5-8.5.5_Store\\concrete\\src\\View\\View.php(245): Concrete\\Core\\View\\View->renderInnerContents(Array)\n#9 C:\\wamp64\\www\\concrete5-8.5.5_Store\\concrete\\src\\View\\AbstractView.php(164): Concrete\\Core\\View\\View->renderViewContents(Array)\n#10 C:\\wamp64\\www\\concrete5-8.5.5_Store\\concrete\\src\\Http\\ResponseFactory.php(149): Concrete\\Core\\View\\AbstractView->render()\n#11 C:\\wamp64\\www\\concrete5-8.5.5_Store\\concrete\\src\\Http\\ResponseFactory.php(216): Concrete\\Core\\Http\\ResponseFactory->view(Object(Concrete\\Core\\Page\\View\\PageView), 200, Array)\n#12 C:\\wamp64\\www\\concrete5-8.5.5_Store\\concrete\\src\\Http\\ResponseFactory.php(367): Concrete\\Core\\Http\\ResponseFactory->controller(Object(Concrete\\Controller\\SinglePage\\Login))\n#13 C:\\wamp64\\www\\concrete5-8.5.5_Store\\concrete\\src\\Http\\DefaultDispatcher.php(131): Concrete\\Core\\Http\\ResponseFactory->collection(Object(Concrete\\Core\\Page\\Page))\n#14 C:\\wamp64\\www\\concrete5-8.5.5_Store\\concrete\\src\\Http\\DefaultDispatcher.php(59): Concrete\\Core\\Http\\DefaultDispatcher->handleDispatch(Object(Concrete\\Core\\Http\\Request))\n#15 C:\\wamp64\\www\\concrete5-8.5.5_Store\\concrete\\src\\Http\\Middleware\\DispatcherDelegate.php(39): Concrete\\Core\\Http\\DefaultDispatcher->dispatch(Object(Concrete\\Core\\Http\\Request))\n#16 C:\\wamp64\\www\\concrete5-8.5.5_Store\\concrete\\src\\Http\\Middleware\\ThumbnailMiddleware.php(76): Concrete\\Core\\Http\\Middleware\\DispatcherDelegate->next(Object(Concrete\\Core\\Http\\Request))\n#17 C:\\wamp64\\www\\concrete5-8.5.5_Store\\concrete\\src\\Http\\Middleware\\MiddlewareDelegate.php(50): Concrete\\Core\\Http\\Middleware\\ThumbnailMiddleware->process(Object(Concrete\\Core\\Http\\Request), Object(Concrete\\Core\\Http\\Middleware\\DispatcherDelegate))\n#18 C:\\wamp64\\www\\concrete5-8.5.5_Store\\concrete\\src\\Http\\Middleware\\FrameOptionsMiddleware.php(39): Concrete\\Core\\Http\\Middleware\\MiddlewareDelegate->next(Object(Concrete\\Core\\Http\\Request))\n#19 C:\\wamp64\\www\\concrete5-8.5.5_Store\\concrete\\src\\Http\\Middleware\\MiddlewareDelegate.php(50): Concrete\\Core\\Http\\Middleware\\FrameOptionsMiddleware->process(Object(Concrete\\Core\\Http\\Request), Object(Concrete\\Core\\Http\\Middleware\\MiddlewareDelegate))\n#20 C:\\wamp64\\www\\concrete5-8.5.5_Store\\concrete\\src\\Http\\Middleware\\CookieMiddleware.php(35): Concrete\\Core\\Http\\Middleware\\MiddlewareDelegate->next(Object(Concrete\\Core\\Http\\Request))\n#21 C:\\wamp64\\www\\concrete5-8.5.5_Store\\concrete\\src\\Http\\Middleware\\MiddlewareDelegate.php(50): Concrete\\Core\\Http\\Middleware\\CookieMiddleware->process(Object(Concrete\\Core\\Http\\Request), Object(Concrete\\Core\\Http\\Middleware\\MiddlewareDelegate))\n#22 C:\\wamp64\\www\\concrete5-8.5.5_Store\\concrete\\src\\Http\\Middleware\\ApplicationMiddleware.php(29): Concrete\\Core\\Http\\Middleware\\MiddlewareDelegate->next(Object(Concrete\\Core\\Http\\Request))\n#23 C:\\wamp64\\www\\concrete5-8.5.5_Store\\concrete\\src\\Http\\Middleware\\MiddlewareDelegate.php(50): Concrete\\Core\\Http\\Middleware\\ApplicationMiddleware->process(Object(Concrete\\Core\\Http\\Request), Object(Concrete\\Core\\Http\\Middleware\\MiddlewareDelegate))\n#24 C:\\wamp64\\www\\concrete5-8.5.5_Store\\concrete\\src\\Http\\Middleware\\MiddlewareStack.php(86): Concrete\\Core\\Http\\Middleware\\MiddlewareDelegate->next(Object(Concrete\\Core\\Http\\Request))\n#25 C:\\wamp64\\www\\concrete5-8.5.5_Store\\concrete\\src\\Http\\DefaultServer.php(85): Concrete\\Core\\Http\\Middleware\\MiddlewareStack->process(Object(Concrete\\Core\\Http\\Request))\n#26 C:\\wamp64\\www\\concrete5-8.5.5_Store\\concrete\\src\\Foundation\\Runtime\\Run\\DefaultRunner.php(128): Concrete\\Core\\Http\\DefaultServer->handleRequest(Object(Concrete\\Core\\Http\\Request))\n#27 C:\\wamp64\\www\\concrete5-8.5.5_Store\\concrete\\src\\Foundation\\Runtime\\DefaultRuntime.php(102): Concrete\\Core\\Foundation\\Runtime\\Run\\DefaultRunner->run()\n#28 C:\\wamp64\\www\\concrete5-8.5.5_Store\\concrete\\dispatcher.php(45): Concrete\\Core\\Foundation\\Runtime\\DefaultRuntime->run()\n#29 C:\\wamp64\\www\\concrete5-8.5.5_Store\\index.php(3): require(\'C:\\\\wamp64\\\\www\\\\c...\')\n#30 {main}\nTemplate Used: forgot_password\nTo: nasir_roney@yahoo.com\nFrom: "Forgot Password" <nasir_roney@yahoo.com>\nReply-To: \nSubject: Forgot Password\nBody: \n\nDear Admin,\n\nYou have requested a new password for the site My Store Yaw \n\nYour username is: Admin\n\nYou may change your password at the following address:\n\nhttp://localhost:8181/concrete5-8.5.5_Store/index.php/login/callback/concrete/change_password/e1584a2ed3687a4a9bfbef0980b5024c3aef2b6fa7926935d893c1e912ce2e24\n\nThanks for browsing the site!\n\n', 0, 500),
(76, 'sent_emails', 1645506612, '**EMAILS ARE ENABLED. THIS EMAIL HAS NOT BEEN SENT**\nTemplate Used: forgot_password\nMail Details: Date: Tue, 22 Feb 2022 13:10:09 +0800\r\nFrom: =?UTF-8?Q?Forgot Password?= <nasir_roney@yahoo.com>\r\nSubject: Forgot Password\r\nTo: nasir_roney@yahoo.com\r\nMessage-ID: <b1843a4a880fa39a2652e402271c18df2ab00ccc@localhost>\r\nMIME-Version: 1.0\r\nContent-Type: text/plain;\r\n charset="UTF-8"\r\nContent-Transfer-Encoding: quoted-printable\r\n\r\n\n\nDear Admin,\n\nYou have requested a new password for the site My Store Yaw \n\nYour username is: Admin\n\nYou may change your password at the following address:\n\nhttp://localhost:8181/concrete5-8.5.5_Store/index.php/login/callback/concrete/change_password/e1584a2ed3687a4a9bfbef0980b5024c3aef2b6fa7926935d893c1e912ce2e24\n\nThanks for browsing the site!\n\n', 0, 250);

-- --------------------------------------------------------

--
-- Table structure for table `MailImporters`
--

CREATE TABLE `MailImporters` (
  `miID` int(10) UNSIGNED NOT NULL,
  `miHandle` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `miServer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `miUsername` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `miPassword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `miEncryption` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `miIsEnabled` tinyint(1) NOT NULL DEFAULT '0',
  `miEmail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `miPort` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pkgID` int(10) UNSIGNED DEFAULT NULL,
  `miConnectionMethod` varchar(8) COLLATE utf8mb4_unicode_ci DEFAULT 'POP'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `MailImporters`
--

INSERT INTO `MailImporters` (`miID`, `miHandle`, `miServer`, `miUsername`, `miPassword`, `miEncryption`, `miIsEnabled`, `miEmail`, `miPort`, `pkgID`, `miConnectionMethod`) VALUES
(1, 'private_message', '', NULL, NULL, NULL, 0, '', 0, 0, 'POP');

-- --------------------------------------------------------

--
-- Table structure for table `MailValidationHashes`
--

CREATE TABLE `MailValidationHashes` (
  `mvhID` int(10) UNSIGNED NOT NULL,
  `miID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `email` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mHash` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mDateGenerated` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `mDateRedeemed` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `MultilingualPageRelations`
--

CREATE TABLE `MultilingualPageRelations` (
  `mpLocale` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mpLanguage` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mpRelationID` int(10) UNSIGNED NOT NULL,
  `cID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `MultilingualTranslations`
--

CREATE TABLE `MultilingualTranslations` (
  `mtID` int(10) UNSIGNED NOT NULL,
  `mtSectionID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `msgid` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `msgidPlural` text COLLATE utf8mb4_unicode_ci,
  `msgstr` text COLLATE utf8mb4_unicode_ci,
  `msgstrPlurals` text COLLATE utf8mb4_unicode_ci,
  `context` text COLLATE utf8mb4_unicode_ci,
  `comments` text COLLATE utf8mb4_unicode_ci,
  `reference` text COLLATE utf8mb4_unicode_ci,
  `flags` text COLLATE utf8mb4_unicode_ci,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `NotificationAlerts`
--

CREATE TABLE `NotificationAlerts` (
  `naID` int(10) UNSIGNED NOT NULL,
  `naIsArchived` tinyint(1) NOT NULL,
  `uID` int(10) UNSIGNED DEFAULT NULL,
  `nID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `NotificationPermissionSubscriptionList`
--

CREATE TABLE `NotificationPermissionSubscriptionList` (
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `peID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `permission` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `NotificationPermissionSubscriptionListCustom`
--

CREATE TABLE `NotificationPermissionSubscriptionListCustom` (
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `peID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `nSubscriptionIdentifier` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Notifications`
--

CREATE TABLE `Notifications` (
  `nID` int(10) UNSIGNED NOT NULL,
  `nDate` datetime NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nsr_landingpages`
--

CREATE TABLE `nsr_landingpages` (
  `iPK_LandingPages` int(10) UNSIGNED NOT NULL,
  `cName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iSort` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nsr_landingpages`
--

INSERT INTO `nsr_landingpages` (`iPK_LandingPages`, `cName`, `iSort`) VALUES
(1, 'Home', 0),
(2, 'Products', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nsr_sectionlandingpages`
--

CREATE TABLE `nsr_sectionlandingpages` (
  `bID` int(10) UNSIGNED NOT NULL,
  `cSectionLanding` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nsr_sectionlandingpages`
--

INSERT INTO `nsr_sectionlandingpages` (`bID`, `cSectionLanding`) VALUES
(178, 'Home'),
(187, 'Home'),
(188, 'Product'),
(193, 'Home'),
(194, 'Product'),
(195, 'Home'),
(196, 'Products'),
(197, 'Products'),
(198, 'Home');

-- --------------------------------------------------------

--
-- Table structure for table `OAuth2AccessToken`
--

CREATE TABLE `OAuth2AccessToken` (
  `identifier` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:guid)',
  `client` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT AS `(DC2Type:guid)`,
  `expiryDateTime` datetime NOT NULL,
  `userIdentifier` int(10) UNSIGNED DEFAULT NULL,
  `scopes` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `OAuth2AuthCode`
--

CREATE TABLE `OAuth2AuthCode` (
  `identifier` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:guid)',
  `client` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT AS `(DC2Type:guid)`,
  `scopes` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)',
  `expiryDateTime` datetime NOT NULL,
  `userIdentifier` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `OAuth2Client`
--

CREATE TABLE `OAuth2Client` (
  `identifier` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:guid)',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirectUri` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `clientKey` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `clientSecret` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consentType` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `OAuth2RefreshToken`
--

CREATE TABLE `OAuth2RefreshToken` (
  `identifier` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:guid)',
  `expiryDateTime` datetime NOT NULL,
  `accessToken` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT AS `(DC2Type:guid)`
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `OAuth2Scope`
--

CREATE TABLE `OAuth2Scope` (
  `identifier` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `OAuth2Scope`
--

INSERT INTO `OAuth2Scope` (`identifier`, `description`) VALUES
('account:read', 'Read information about the remotely authenticated user.'),
('files:read', 'Read detailed information about uploaded files.'),
('openid', 'Remotely authenticate into concrete5.'),
('site:trees:read', 'Read information about system site trees.'),
('system:info:read', 'Read detailed information about the system.');

-- --------------------------------------------------------

--
-- Table structure for table `OauthUserMap`
--

CREATE TABLE `OauthUserMap` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `namespace` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `binding` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Packages`
--

CREATE TABLE `Packages` (
  `pkgID` int(10) UNSIGNED NOT NULL,
  `pkgHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pkgVersion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pkgIsInstalled` tinyint(1) NOT NULL,
  `pkgAvailableVersion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pkgDescription` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `pkgDateInstalled` datetime NOT NULL,
  `pkgName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Packages`
--

INSERT INTO `Packages` (`pkgID`, `pkgHandle`, `pkgVersion`, `pkgIsInstalled`, `pkgAvailableVersion`, `pkgDescription`, `pkgDateInstalled`, `pkgName`) VALUES
(1, 'my_theme', '2.3.0.1', 1, NULL, 'Simplicity. Designed.', '2021-08-23 15:00:31', 'My Theme LTE'),
(3, 'page_redirect', '2.0', 1, NULL, 'Adds a page attribute that allows you to specify a page to redirect to.', '2021-08-23 16:03:47', 'Page Redirect'),
(5, 'landing_pages', '1.0', 1, NULL, 'Create Landing Pages.', '2021-08-24 21:21:48', 'Landing Pages');

-- --------------------------------------------------------

--
-- Table structure for table `PageFeeds`
--

CREATE TABLE `PageFeeds` (
  `checkPagePermissions` tinyint(1) NOT NULL,
  `customTopicAttributeKeyHandle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customTopicTreeNodeID` int(10) UNSIGNED NOT NULL,
  `iconFID` int(10) UNSIGNED NOT NULL,
  `pfDescription` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pfHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pfTitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pfID` int(10) UNSIGNED NOT NULL,
  `cParentID` int(10) UNSIGNED NOT NULL,
  `ptID` int(10) UNSIGNED NOT NULL,
  `pfIncludeAllDescendents` tinyint(1) NOT NULL,
  `pfDisplayAliases` tinyint(1) NOT NULL,
  `pfContentToDisplay` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pfAreaHandleToDisplay` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pfDisplayFeaturedOnly` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `PageFeeds`
--

INSERT INTO `PageFeeds` (`checkPagePermissions`, `customTopicAttributeKeyHandle`, `customTopicTreeNodeID`, `iconFID`, `pfDescription`, `pfHandle`, `pfTitle`, `pfID`, `cParentID`, `ptID`, `pfIncludeAllDescendents`, `pfDisplayAliases`, `pfContentToDisplay`, `pfAreaHandleToDisplay`, `pfDisplayFeaturedOnly`) VALUES
(1, NULL, 0, 0, 'concrete5 Blog', 'blog', 'Blog', 1, 198, 6, 0, 0, 'S', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `PagePaths`
--

CREATE TABLE `PagePaths` (
  `cPath` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `ppID` int(11) NOT NULL,
  `cID` int(10) UNSIGNED NOT NULL,
  `ppIsCanonical` tinyint(1) NOT NULL,
  `ppGeneratedFromURLSlugs` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `PagePaths`
--

INSERT INTO `PagePaths` (`cPath`, `ppID`, `cID`, `ppIsCanonical`, `ppGeneratedFromURLSlugs`) VALUES
('/dashboard', 1, 2, 1, 1),
('/dashboard/sitemap', 2, 3, 1, 1),
('/dashboard/sitemap/full', 3, 4, 1, 1),
('/dashboard/sitemap/explore', 4, 5, 1, 1),
('/dashboard/sitemap/search', 5, 6, 1, 1),
('/dashboard/files', 6, 7, 1, 1),
('/dashboard/files/search', 7, 8, 1, 1),
('/dashboard/files/attributes', 8, 9, 1, 1),
('/dashboard/files/sets', 9, 10, 1, 1),
('/dashboard/files/add_set', 10, 11, 1, 1),
('/dashboard/users', 11, 12, 1, 1),
('/dashboard/users/search', 12, 13, 1, 1),
('/dashboard/users/groups', 13, 14, 1, 1),
('/dashboard/users/groups/message', 14, 15, 1, 1),
('/dashboard/users/attributes', 15, 16, 1, 1),
('/dashboard/users/add', 16, 17, 1, 1),
('/dashboard/users/add_group', 17, 18, 1, 1),
('/dashboard/users/groups/bulkupdate', 18, 19, 1, 1),
('/dashboard/users/group_sets', 19, 20, 1, 1),
('/dashboard/users/points', 20, 21, 1, 1),
('/dashboard/users/points/assign', 21, 22, 1, 1),
('/dashboard/users/points/actions', 22, 23, 1, 1),
('/dashboard/express', 23, 24, 1, 1),
('/dashboard/express/entries', 24, 25, 1, 1),
('/dashboard/reports', 25, 26, 1, 1),
('/dashboard/reports/forms', 26, 27, 1, 1),
('/dashboard/reports/forms/legacy', 27, 28, 1, 1),
('/dashboard/reports/surveys', 28, 29, 1, 1),
('/dashboard/reports/logs', 29, 30, 1, 1),
('/dashboard/reports/page_changes', 30, 31, 1, 1),
('/dashboard/pages', 31, 32, 1, 1),
('/dashboard/pages/themes', 32, 33, 1, 1),
('/dashboard/pages/themes/inspect', 33, 34, 1, 1),
('/dashboard/pages/types', 34, 35, 1, 1),
('/dashboard/pages/types/organize', 35, 36, 1, 1),
('/dashboard/pages/types/add', 36, 37, 1, 1),
('/dashboard/pages/types/form', 37, 38, 1, 1),
('/dashboard/pages/types/output', 38, 39, 1, 1),
('/dashboard/pages/types/attributes', 39, 40, 1, 1),
('/dashboard/pages/types/permissions', 40, 41, 1, 1),
('/dashboard/pages/templates', 41, 42, 1, 1),
('/dashboard/pages/templates/add', 42, 43, 1, 1),
('/dashboard/pages/attributes', 43, 44, 1, 1),
('/dashboard/pages/single', 44, 45, 1, 1),
('/dashboard/pages/feeds', 45, 46, 1, 1),
('/dashboard/calendar', 46, 47, 1, 1),
('/dashboard/calendar/events', 47, 48, 1, 1),
('/dashboard/calendar/event_list', 48, 49, 1, 1),
('/dashboard/calendar/add', 49, 50, 1, 1),
('/dashboard/calendar/permissions', 50, 51, 1, 1),
('/dashboard/calendar/attributes', 51, 52, 1, 1),
('/dashboard/conversations', 52, 53, 1, 1),
('/dashboard/conversations/messages', 53, 54, 1, 1),
('/dashboard/blocks', 54, 55, 1, 1),
('/dashboard/blocks/stacks', 55, 56, 1, 1),
('/dashboard/blocks/permissions', 56, 57, 1, 1),
('/dashboard/blocks/stacks/list', 57, 58, 1, 1),
('/dashboard/blocks/types', 58, 59, 1, 1),
('/dashboard/extend', 59, 60, 1, 1),
('/dashboard/extend/install', 60, 61, 1, 1),
('/dashboard/extend/update', 61, 62, 1, 1),
('/dashboard/extend/connect', 62, 63, 1, 1),
('/dashboard/extend/themes', 63, 64, 1, 1),
('/dashboard/extend/addons', 64, 65, 1, 1),
('/dashboard/system', 65, 66, 1, 1),
('/dashboard/system/basics', 66, 67, 1, 1),
('/dashboard/system/basics/name', 67, 68, 1, 1),
('/dashboard/system/basics/accessibility', 68, 69, 1, 1),
('/dashboard/system/basics/social', 69, 70, 1, 1),
('/dashboard/system/basics/icons', 70, 71, 1, 1),
('/dashboard/system/basics/editor', 71, 72, 1, 1),
('/dashboard/system/basics/multilingual', 72, 73, 1, 1),
('/dashboard/system/basics/multilingual/update', 73, 74, 1, 1),
('/dashboard/system/basics/timezone', 74, 75, 1, 1),
('/dashboard/system/basics/attributes', 75, 76, 1, 1),
('/dashboard/system/basics/reset_edit_mode', 76, 77, 1, 1),
('/dashboard/system/express', 77, 78, 1, 1),
('/dashboard/system/express/entities', 78, 79, 1, 1),
('/dashboard/system/express/entities/attributes', 79, 80, 1, 1),
('/dashboard/system/express/entities/associations', 80, 81, 1, 1),
('/dashboard/system/express/entities/forms', 81, 82, 1, 1),
('/dashboard/system/express/entities/customize_search', 82, 83, 1, 1),
('/dashboard/system/express/entities/order_entries', 83, 84, 1, 1),
('/dashboard/system/express/entries', 84, 85, 1, 1),
('/dashboard/system/multisite', 85, 86, 1, 1),
('/dashboard/system/multisite/sites', 86, 87, 1, 1),
('/dashboard/system/multisite/types', 87, 88, 1, 1),
('/dashboard/system/multisite/settings', 88, 89, 1, 1),
('/dashboard/system/multilingual', 89, 90, 1, 1),
('/dashboard/system/multilingual/setup', 90, 91, 1, 1),
('/dashboard/system/multilingual/copy', 91, 92, 1, 1),
('/dashboard/system/multilingual/page_report', 92, 93, 1, 1),
('/dashboard/system/multilingual/translate_interface', 93, 94, 1, 1),
('/dashboard/system/seo', 94, 95, 1, 1),
('/dashboard/system/seo/urls', 95, 96, 1, 1),
('/dashboard/system/seo/bulk', 96, 97, 1, 1),
('/dashboard/system/seo/codes', 97, 98, 1, 1),
('/dashboard/system/seo/excluded', 98, 99, 1, 1),
('/dashboard/system/seo/searchindex', 99, 100, 1, 1),
('/dashboard/system/files', 100, 101, 1, 1),
('/dashboard/system/files/filetypes', 101, 102, 1, 1),
('/dashboard/system/files/permissions', 102, 103, 1, 1),
('/dashboard/system/files/thumbnails', 103, 104, 1, 1),
('/dashboard/system/files/thumbnails/options', 104, 105, 1, 1),
('/dashboard/system/files/image_uploading', 105, 106, 1, 1),
('/dashboard/system/files/storage', 106, 107, 1, 1),
('/dashboard/system/files/export_options', 107, 108, 1, 1),
('/dashboard/system/optimization', 108, 109, 1, 1),
('/dashboard/system/optimization/cache', 109, 110, 1, 1),
('/dashboard/system/optimization/clearcache', 110, 111, 1, 1),
('/dashboard/system/optimization/jobs', 111, 112, 1, 1),
('/dashboard/system/permissions', 112, 113, 1, 1),
('/dashboard/system/permissions/site', 113, 114, 1, 1),
('/dashboard/system/permissions/tasks', 114, 115, 1, 1),
('/dashboard/system/permissions/users', 115, 116, 1, 1),
('/dashboard/system/permissions/advanced', 116, 117, 1, 1),
('/dashboard/system/permissions/workflows', 117, 118, 1, 1),
('/dashboard/system/permissions/blacklist', 118, 119, 1, 1),
('/dashboard/system/permissions/blacklist/configure', 119, 120, 1, 1),
('/dashboard/system/permissions/blacklist/range', 120, 121, 1, 1),
('/dashboard/system/permissions/captcha', 121, 122, 1, 1),
('/dashboard/system/permissions/antispam', 122, 123, 1, 1),
('/dashboard/system/permissions/maintenance', 123, 124, 1, 1),
('/dashboard/system/permissions/trusted_proxies', 124, 125, 1, 1),
('/dashboard/system/registration', 125, 126, 1, 1),
('/dashboard/system/registration/open', 126, 127, 1, 1),
('/dashboard/system/registration/postlogin', 127, 128, 1, 1),
('/dashboard/system/registration/profiles', 128, 129, 1, 1),
('/dashboard/system/registration/authentication', 129, 130, 1, 1),
('/dashboard/system/registration/global_password_reset', 130, 131, 1, 1),
('/dashboard/system/registration/notification', 131, 132, 1, 1),
('/dashboard/system/registration/deactivation', 132, 133, 1, 1),
('/dashboard/system/registration/automated_logout', 133, 134, 1, 1),
('/dashboard/system/registration/password_requirements', 134, 135, 1, 1),
('/dashboard/system/mail', 135, 136, 1, 1),
('/dashboard/system/mail/method', 136, 137, 1, 1),
('/dashboard/system/mail/method/test', 137, 138, 1, 1),
('/dashboard/system/mail/importers', 138, 139, 1, 1),
('/dashboard/system/mail/addresses', 139, 140, 1, 1),
('/dashboard/system/calendar', 140, 141, 1, 1),
('/dashboard/system/calendar/settings', 141, 142, 1, 1),
('/dashboard/system/calendar/colors', 142, 143, 1, 1),
('/dashboard/system/calendar/permissions', 143, 144, 1, 1),
('/dashboard/system/calendar/import', 144, 145, 1, 1),
('/dashboard/system/conversations', 145, 146, 1, 1),
('/dashboard/system/conversations/settings', 146, 147, 1, 1),
('/dashboard/system/conversations/points', 147, 148, 1, 1),
('/dashboard/system/conversations/bannedwords', 148, 149, 1, 1),
('/dashboard/system/conversations/permissions', 149, 150, 1, 1),
('/dashboard/system/attributes', 150, 151, 1, 1),
('/dashboard/system/attributes/types', 151, 152, 1, 1),
('/dashboard/system/attributes/sets', 152, 153, 1, 1),
('/dashboard/system/attributes/topics', 153, 154, 1, 1),
('/dashboard/system/attributes/topics/add', 154, 155, 1, 1),
('/dashboard/system/environment', 155, 156, 1, 1),
('/dashboard/system/environment/info', 156, 157, 1, 1),
('/dashboard/system/environment/debug', 157, 158, 1, 1),
('/dashboard/system/environment/logging', 158, 159, 1, 1),
('/dashboard/system/environment/proxy', 159, 160, 1, 1),
('/dashboard/system/environment/entities', 160, 161, 1, 1),
('/dashboard/system/environment/database_charset', 161, 162, 1, 1),
('/dashboard/system/environment/geolocation', 162, 163, 1, 1),
('/dashboard/system/update', 163, 164, 1, 1),
('/dashboard/system/update/update', 164, 165, 1, 1),
('/dashboard/system/api', 165, 166, 1, 1),
('/dashboard/system/api/settings', 166, 167, 1, 1),
('/dashboard/system/api/integrations', 167, 168, 1, 1),
('/dashboard/welcome', 168, 169, 1, 1),
('/dashboard/welcome/me', 169, 170, 1, 1),
('/!stacks', 170, 171, 1, 1),
('/page_not_found', 171, 172, 1, 1),
('/!trash', 172, 173, 1, 1),
('/login', 173, 174, 1, 1),
('/register', 174, 175, 1, 1),
('/account', 175, 176, 1, 1),
('/account/edit_profile', 176, 177, 1, 1),
('/account/avatar', 177, 178, 1, 1),
('/account/messages', 178, 179, 1, 1),
('/page_forbidden', 179, 180, 1, 1),
('/download_file', 180, 181, 1, 1),
('/!drafts', 181, 182, 1, 1),
('/account/welcome', 182, 183, 1, 0),
('/!stacks/footer-contact', 183, 184, 1, 1),
('/!stacks/footer-legal', 184, 185, 1, 1),
('/!stacks/footer-navigation', 185, 186, 1, 1),
('/!stacks/footer-site-title', 186, 187, 1, 1),
('/!stacks/footer-social', 187, 188, 1, 1),
('/!stacks/header-navigation', 188, 189, 1, 1),
('/!stacks/header-search', 189, 190, 1, 1),
('/!stacks/header-site-title', 190, 191, 1, 1),
('/!stacks/adminlte-search', 215, 225, 1, 1),
('/!stacks/adminlte-navigation', 216, 226, 1, 1),
('/!stacks/title-header', 217, 227, 1, 1),
('/dashboard/pages/landing_pages', 230, 251, 1, 1),
('/dashboard/landing-pages', 231, 252, 1, 1),
('/dashboard/name', 232, 253, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `PagePermissionAssignments`
--

CREATE TABLE `PagePermissionAssignments` (
  `cID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pkID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `PagePermissionAssignments`
--

INSERT INTO `PagePermissionAssignments` (`cID`, `pkID`, `paID`) VALUES
(1, 1, 88),
(2, 1, 309),
(3, 1, 207),
(4, 1, 157),
(5, 1, 122),
(9, 1, 310),
(14, 1, 326),
(16, 1, 326),
(17, 1, 309),
(20, 1, 326),
(21, 1, 326),
(24, 1, 343),
(26, 1, 310),
(32, 1, 310),
(47, 1, 310),
(53, 1, 310),
(55, 1, 310),
(60, 1, 310),
(66, 1, 310),
(67, 1, 310),
(68, 1, 389),
(169, 1, 310),
(171, 1, 241),
(172, 1, 258),
(174, 1, 65),
(175, 1, 66),
(179, 1, 275),
(180, 1, 67),
(182, 1, 310),
(183, 1, 310),
(1, 2, 360),
(2, 2, 310),
(3, 2, 208),
(4, 2, 157),
(5, 2, 123),
(9, 2, 310),
(14, 2, 327),
(16, 2, 327),
(17, 2, 310),
(20, 2, 327),
(21, 2, 327),
(24, 2, 344),
(26, 2, 310),
(32, 2, 310),
(47, 2, 310),
(53, 2, 310),
(55, 2, 310),
(60, 2, 310),
(66, 2, 310),
(67, 2, 310),
(68, 2, 310),
(169, 2, 310),
(171, 2, 242),
(172, 2, 259),
(179, 2, 276),
(182, 2, 310),
(183, 2, 310),
(1, 3, 360),
(2, 3, 309),
(9, 3, 319),
(14, 3, 0),
(16, 3, 0),
(17, 3, 309),
(20, 3, 0),
(26, 3, 319),
(32, 3, 319),
(47, 3, 319),
(53, 3, 319),
(55, 3, 319),
(60, 3, 319),
(66, 3, 319),
(67, 3, 319),
(68, 3, 319),
(171, 3, 251),
(179, 3, 90),
(182, 3, 319),
(183, 3, 319),
(1, 4, 360),
(2, 4, 319),
(3, 4, 217),
(4, 4, 166),
(5, 4, 132),
(9, 4, 319),
(14, 4, 336),
(16, 4, 336),
(17, 4, 319),
(20, 4, 336),
(21, 4, 336),
(24, 4, 353),
(26, 4, 319),
(32, 4, 319),
(47, 4, 319),
(53, 4, 319),
(55, 4, 319),
(60, 4, 319),
(66, 4, 319),
(67, 4, 319),
(68, 4, 319),
(169, 4, 319),
(171, 4, 251),
(172, 4, 268),
(179, 4, 285),
(182, 4, 319),
(183, 4, 319),
(1, 5, 360),
(2, 5, 311),
(3, 5, 209),
(4, 5, 158),
(5, 5, 124),
(9, 5, 311),
(14, 5, 328),
(16, 5, 328),
(17, 5, 311),
(20, 5, 328),
(21, 5, 328),
(24, 5, 345),
(26, 5, 311),
(32, 5, 311),
(47, 5, 311),
(53, 5, 311),
(55, 5, 311),
(60, 5, 311),
(66, 5, 311),
(67, 5, 311),
(68, 5, 311),
(169, 5, 311),
(171, 5, 243),
(172, 5, 260),
(179, 5, 277),
(182, 5, 311),
(183, 5, 311),
(1, 6, 93),
(2, 6, 312),
(3, 6, 210),
(4, 6, 159),
(5, 6, 125),
(9, 6, 312),
(14, 6, 329),
(16, 6, 329),
(17, 6, 313),
(20, 6, 329),
(21, 6, 329),
(24, 6, 346),
(26, 6, 312),
(32, 6, 312),
(47, 6, 312),
(53, 6, 312),
(55, 6, 312),
(60, 6, 312),
(66, 6, 312),
(67, 6, 312),
(68, 6, 312),
(169, 6, 312),
(171, 6, 244),
(172, 6, 261),
(179, 6, 278),
(182, 6, 312),
(183, 6, 312),
(1, 7, 360),
(2, 7, 313),
(3, 7, 211),
(4, 7, 160),
(5, 7, 126),
(9, 7, 313),
(14, 7, 330),
(16, 7, 330),
(17, 7, 313),
(20, 7, 330),
(21, 7, 330),
(24, 7, 347),
(26, 7, 313),
(32, 7, 313),
(47, 7, 313),
(53, 7, 313),
(55, 7, 313),
(60, 7, 313),
(66, 7, 313),
(67, 7, 313),
(68, 7, 313),
(169, 7, 313),
(171, 7, 245),
(172, 7, 262),
(179, 7, 279),
(182, 7, 313),
(183, 7, 313),
(1, 8, 360),
(2, 8, 315),
(3, 8, 213),
(4, 8, 162),
(5, 8, 128),
(9, 8, 315),
(14, 8, 332),
(16, 8, 332),
(17, 8, 315),
(20, 8, 332),
(21, 8, 332),
(24, 8, 349),
(26, 8, 315),
(32, 8, 315),
(47, 8, 315),
(53, 8, 315),
(55, 8, 315),
(60, 8, 315),
(66, 8, 315),
(67, 8, 315),
(68, 8, 315),
(169, 8, 315),
(171, 8, 247),
(172, 8, 264),
(179, 8, 281),
(182, 8, 315),
(183, 8, 315),
(1, 9, 360),
(2, 9, 317),
(3, 9, 215),
(4, 9, 164),
(5, 9, 130),
(9, 9, 317),
(14, 9, 334),
(16, 9, 334),
(17, 9, 317),
(20, 9, 334),
(21, 9, 334),
(24, 9, 351),
(26, 9, 317),
(32, 9, 317),
(47, 9, 317),
(53, 9, 317),
(55, 9, 317),
(60, 9, 317),
(66, 9, 317),
(67, 9, 317),
(68, 9, 317),
(169, 9, 317),
(171, 9, 249),
(172, 9, 266),
(179, 9, 283),
(182, 9, 317),
(183, 9, 317),
(1, 10, 360),
(2, 10, 316),
(3, 10, 214),
(4, 10, 163),
(5, 10, 129),
(9, 10, 316),
(14, 10, 333),
(16, 10, 333),
(17, 10, 316),
(20, 10, 333),
(21, 10, 333),
(24, 10, 350),
(26, 10, 316),
(32, 10, 316),
(47, 10, 316),
(53, 10, 316),
(55, 10, 316),
(60, 10, 316),
(66, 10, 316),
(67, 10, 316),
(68, 10, 316),
(169, 10, 316),
(171, 10, 248),
(172, 10, 265),
(179, 10, 282),
(182, 10, 316),
(183, 10, 316),
(1, 11, 360),
(2, 11, 318),
(3, 11, 216),
(4, 11, 165),
(5, 11, 131),
(9, 11, 318),
(14, 11, 335),
(16, 11, 335),
(17, 11, 318),
(20, 11, 335),
(21, 11, 335),
(24, 11, 352),
(26, 11, 318),
(32, 11, 318),
(47, 11, 318),
(53, 11, 318),
(55, 11, 318),
(60, 11, 318),
(66, 11, 318),
(67, 11, 318),
(68, 11, 318),
(169, 11, 318),
(171, 11, 250),
(172, 11, 267),
(179, 11, 284),
(182, 11, 318),
(183, 11, 318),
(1, 12, 360),
(2, 12, 321),
(3, 12, 219),
(4, 12, 168),
(5, 12, 134),
(9, 12, 321),
(14, 12, 338),
(16, 12, 338),
(17, 12, 321),
(20, 12, 338),
(21, 12, 338),
(24, 12, 355),
(26, 12, 321),
(32, 12, 321),
(47, 12, 321),
(53, 12, 321),
(55, 12, 321),
(60, 12, 321),
(66, 12, 321),
(67, 12, 321),
(68, 12, 321),
(169, 12, 321),
(171, 12, 253),
(172, 12, 270),
(179, 12, 287),
(182, 12, 321),
(183, 12, 321),
(1, 13, 360),
(2, 13, 322),
(3, 13, 220),
(4, 13, 169),
(5, 13, 135),
(9, 13, 322),
(14, 13, 339),
(16, 13, 339),
(17, 13, 322),
(20, 13, 339),
(21, 13, 339),
(24, 13, 356),
(26, 13, 322),
(32, 13, 322),
(47, 13, 322),
(53, 13, 322),
(55, 13, 322),
(60, 13, 322),
(66, 13, 322),
(67, 13, 322),
(68, 13, 322),
(169, 13, 322),
(171, 13, 254),
(172, 13, 271),
(179, 13, 288),
(182, 13, 322),
(183, 13, 322),
(1, 14, 93),
(2, 14, 323),
(3, 14, 221),
(4, 14, 170),
(5, 14, 136),
(9, 14, 323),
(14, 14, 340),
(16, 14, 340),
(17, 14, 323),
(20, 14, 340),
(21, 14, 340),
(24, 14, 357),
(26, 14, 323),
(32, 14, 323),
(47, 14, 323),
(53, 14, 323),
(55, 14, 323),
(60, 14, 323),
(66, 14, 323),
(67, 14, 323),
(68, 14, 323),
(169, 14, 323),
(171, 14, 255),
(172, 14, 272),
(179, 14, 289),
(182, 14, 323),
(183, 14, 323),
(1, 15, 360),
(2, 15, 324),
(3, 15, 222),
(4, 15, 171),
(5, 15, 137),
(9, 15, 324),
(14, 15, 341),
(16, 15, 341),
(17, 15, 324),
(20, 15, 341),
(21, 15, 341),
(24, 15, 358),
(26, 15, 324),
(32, 15, 324),
(47, 15, 324),
(53, 15, 324),
(55, 15, 324),
(60, 15, 324),
(66, 15, 324),
(67, 15, 324),
(68, 15, 324),
(169, 15, 324),
(171, 15, 256),
(172, 15, 273),
(179, 15, 290),
(182, 15, 324),
(183, 15, 324),
(1, 16, 360),
(2, 16, 325),
(3, 16, 223),
(4, 16, 172),
(5, 16, 138),
(9, 16, 325),
(14, 16, 342),
(16, 16, 342),
(17, 16, 325),
(20, 16, 342),
(21, 16, 342),
(24, 16, 359),
(26, 16, 325),
(32, 16, 325),
(47, 16, 325),
(53, 16, 325),
(55, 16, 325),
(60, 16, 325),
(66, 16, 325),
(67, 16, 325),
(68, 16, 325),
(169, 16, 325),
(171, 16, 257),
(172, 16, 274),
(179, 16, 291),
(182, 16, 325),
(183, 16, 325),
(1, 17, 360),
(2, 17, 320),
(3, 17, 218),
(4, 17, 167),
(5, 17, 133),
(9, 17, 320),
(14, 17, 337),
(16, 17, 337),
(17, 17, 320),
(20, 17, 337),
(21, 17, 337),
(24, 17, 354),
(26, 17, 320),
(32, 17, 320),
(47, 17, 320),
(53, 17, 320),
(55, 17, 320),
(60, 17, 320),
(66, 17, 320),
(67, 17, 320),
(68, 17, 320),
(169, 17, 320),
(171, 17, 252),
(172, 17, 269),
(179, 17, 286),
(182, 17, 320),
(183, 17, 320),
(1, 18, 360),
(2, 18, 314),
(3, 18, 212),
(4, 18, 161),
(5, 18, 127),
(9, 18, 314),
(14, 18, 331),
(16, 18, 331),
(17, 18, 314),
(20, 18, 331),
(21, 18, 331),
(24, 18, 348),
(26, 18, 314),
(32, 18, 314),
(47, 18, 314),
(53, 18, 314),
(55, 18, 314),
(60, 18, 314),
(66, 18, 314),
(67, 18, 314),
(68, 18, 314),
(169, 18, 314),
(171, 18, 246),
(172, 18, 263),
(179, 18, 280),
(182, 18, 314),
(183, 18, 314);

-- --------------------------------------------------------

--
-- Table structure for table `PagePermissionPageTypeAccessList`
--

CREATE TABLE `PagePermissionPageTypeAccessList` (
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `peID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `permission` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `externalLink` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `PagePermissionPageTypeAccessListCustom`
--

CREATE TABLE `PagePermissionPageTypeAccessListCustom` (
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `peID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ptID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `PagePermissionPropertyAccessList`
--

CREATE TABLE `PagePermissionPropertyAccessList` (
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `peID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `name` tinyint(1) DEFAULT '0',
  `publicDateTime` tinyint(1) DEFAULT '0',
  `uID` tinyint(1) DEFAULT '0',
  `description` tinyint(1) DEFAULT '0',
  `paths` tinyint(1) DEFAULT '0',
  `attributePermission` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `PagePermissionPropertyAccessList`
--

INSERT INTO `PagePermissionPropertyAccessList` (`paID`, `peID`, `name`, `publicDateTime`, `uID`, `description`, `paths`, `attributePermission`) VALUES
(361, 1, 1, 0, 0, 1, 0, 'A');

-- --------------------------------------------------------

--
-- Table structure for table `PagePermissionPropertyAttributeAccessListCustom`
--

CREATE TABLE `PagePermissionPropertyAttributeAccessListCustom` (
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `peID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `akID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `PagePermissionThemeAccessList`
--

CREATE TABLE `PagePermissionThemeAccessList` (
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `peID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `permission` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `PagePermissionThemeAccessListCustom`
--

CREATE TABLE `PagePermissionThemeAccessListCustom` (
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `peID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pThemeID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Pages`
--

CREATE TABLE `Pages` (
  `cID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `siteTreeID` int(10) UNSIGNED DEFAULT '0',
  `ptID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cIsTemplate` tinyint(1) NOT NULL DEFAULT '0',
  `uID` int(10) UNSIGNED DEFAULT NULL,
  `cIsCheckedOut` tinyint(1) NOT NULL DEFAULT '0',
  `cCheckedOutUID` int(10) UNSIGNED DEFAULT NULL,
  `cCheckedOutDatetime` datetime DEFAULT NULL,
  `cCheckedOutDatetimeLastEdit` datetime DEFAULT NULL,
  `cOverrideTemplatePermissions` tinyint(1) NOT NULL DEFAULT '1',
  `cInheritPermissionsFromCID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cInheritPermissionsFrom` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'PARENT',
  `cFilename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cPointerID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cPointerExternalLink` longtext COLLATE utf8mb4_unicode_ci,
  `cPointerExternalLinkNewWindow` tinyint(1) NOT NULL DEFAULT '0',
  `cIsActive` tinyint(1) NOT NULL DEFAULT '1',
  `cChildren` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cDisplayOrder` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cParentID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pkgID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cDraftTargetParentPageID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cIsDraft` tinyint(1) NOT NULL DEFAULT '0',
  `cCacheFullPageContent` smallint(6) NOT NULL DEFAULT '-1',
  `cCacheFullPageContentOverrideLifetime` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `cCacheFullPageContentLifetimeCustom` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cIsSystemPage` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Pages`
--

INSERT INTO `Pages` (`cID`, `siteTreeID`, `ptID`, `cIsTemplate`, `uID`, `cIsCheckedOut`, `cCheckedOutUID`, `cCheckedOutDatetime`, `cCheckedOutDatetimeLastEdit`, `cOverrideTemplatePermissions`, `cInheritPermissionsFromCID`, `cInheritPermissionsFrom`, `cFilename`, `cPointerID`, `cPointerExternalLink`, `cPointerExternalLinkNewWindow`, `cIsActive`, `cChildren`, `cDisplayOrder`, `cParentID`, `pkgID`, `cDraftTargetParentPageID`, `cIsDraft`, `cCacheFullPageContent`, `cCacheFullPageContentOverrideLifetime`, `cCacheFullPageContentLifetimeCustom`, `cIsSystemPage`) VALUES
(1, 1, 11, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'OVERRIDE', NULL, 0, NULL, 0, 1, 11, 0, 0, 0, 0, 0, -1, '0', 0, 0),
(2, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'OVERRIDE', '/dashboard/view.php', 0, NULL, 0, 1, 14, 0, 0, 0, 0, 0, -1, '0', 0, 1),
(3, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 3, 'OVERRIDE', '/dashboard/sitemap/view.php', 0, NULL, 0, 1, 3, 3, 2, 0, 0, 0, -1, '0', 0, 1),
(4, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 4, 'OVERRIDE', '/dashboard/sitemap/full.php', 0, NULL, 0, 1, 0, 0, 3, 0, 0, 0, -1, '0', 0, 1),
(5, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 5, 'OVERRIDE', '/dashboard/sitemap/explore.php', 0, NULL, 0, 1, 0, 1, 3, 0, 0, 0, -1, '0', 0, 1),
(6, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 3, 'PARENT', '/dashboard/sitemap/search.php', 0, NULL, 0, 1, 0, 2, 3, 0, 0, 0, -1, '0', 0, 1),
(7, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/files/view.php', 0, NULL, 0, 1, 4, 5, 2, 0, 0, 0, -1, '0', 0, 1),
(8, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/files/search.php', 0, NULL, 0, 1, 0, 0, 7, 0, 0, 0, -1, '0', 0, 1),
(9, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 9, 'OVERRIDE', '/dashboard/files/attributes.php', 0, NULL, 0, 1, 0, 1, 7, 0, 0, 0, -1, '0', 0, 1),
(10, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/files/sets.php', 0, NULL, 0, 1, 0, 2, 7, 0, 0, 0, -1, '0', 0, 1),
(11, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/files/add_set.php', 0, NULL, 0, 1, 0, 3, 7, 0, 0, 0, -1, '0', 0, 1),
(12, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/users/view.php', 0, NULL, 0, 1, 7, 4, 2, 0, 0, 0, -1, '0', 0, 1),
(13, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/users/search.php', 0, NULL, 0, 1, 0, 0, 12, 0, 0, 0, -1, '0', 0, 1),
(14, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 14, 'OVERRIDE', '/dashboard/users/groups.php', 0, NULL, 0, 1, 2, 1, 12, 0, 0, 0, -1, '0', 0, 1),
(15, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 14, 'PARENT', '/dashboard/users/groups/message.php', 0, NULL, 0, 1, 0, 0, 14, 0, 0, 0, -1, '0', 0, 1),
(16, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 16, 'OVERRIDE', '/dashboard/users/attributes.php', 0, NULL, 0, 1, 0, 2, 12, 0, 0, 0, -1, '0', 0, 1),
(17, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 17, 'OVERRIDE', '/dashboard/users/add.php', 0, NULL, 0, 1, 0, 3, 12, 0, 0, 0, -1, '0', 0, 1),
(18, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/users/add_group.php', 0, NULL, 0, 1, 0, 4, 12, 0, 0, 0, -1, '0', 0, 1),
(19, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 14, 'PARENT', '/dashboard/users/groups/bulkupdate.php', 0, NULL, 0, 1, 0, 1, 14, 0, 0, 0, -1, '0', 0, 1),
(20, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 20, 'OVERRIDE', '/dashboard/users/group_sets.php', 0, NULL, 0, 1, 0, 5, 12, 0, 0, 0, -1, '0', 0, 1),
(21, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 21, 'OVERRIDE', '/dashboard/users/points/view.php', 0, NULL, 0, 1, 2, 6, 12, 0, 0, 0, -1, '0', 0, 1),
(22, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 21, 'PARENT', '/dashboard/users/points/assign.php', 0, NULL, 0, 1, 0, 0, 21, 0, 0, 0, -1, '0', 0, 1),
(23, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 21, 'PARENT', '/dashboard/users/points/actions.php', 0, NULL, 0, 1, 0, 1, 21, 0, 0, 0, -1, '0', 0, 1),
(24, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 24, 'OVERRIDE', '/dashboard/express/view.php', 0, NULL, 0, 1, 1, 6, 2, 0, 0, 0, -1, '0', 0, 1),
(25, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 24, 'PARENT', '/dashboard/express/entries.php', 0, NULL, 0, 1, 0, 0, 24, 0, 0, 0, -1, '0', 0, 1),
(26, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 26, 'OVERRIDE', '/dashboard/reports.php', 0, NULL, 0, 1, 4, 7, 2, 0, 0, 0, -1, '0', 0, 1),
(27, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 26, 'PARENT', '/dashboard/reports/forms.php', 0, NULL, 0, 1, 1, 0, 26, 0, 0, 0, -1, '0', 0, 1),
(28, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 26, 'PARENT', '/dashboard/reports/forms/legacy.php', 0, NULL, 0, 1, 0, 0, 27, 0, 0, 0, -1, '0', 0, 1),
(29, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 26, 'PARENT', '/dashboard/reports/surveys.php', 0, NULL, 0, 1, 0, 1, 26, 0, 0, 0, -1, '0', 0, 1),
(30, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 26, 'PARENT', '/dashboard/reports/logs.php', 0, NULL, 0, 1, 0, 2, 26, 0, 0, 0, -1, '0', 0, 1),
(31, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 26, 'PARENT', '/dashboard/reports/page_changes.php', 0, NULL, 0, 1, 0, 3, 26, 0, 0, 0, -1, '0', 0, 1),
(32, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 32, 'OVERRIDE', '/dashboard/pages/view.php', 0, NULL, 0, 1, 7, 8, 2, 0, 0, 0, -1, '0', 0, 1),
(33, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 32, 'PARENT', '/dashboard/pages/themes/view.php', 0, NULL, 0, 1, 1, 0, 32, 0, 0, 0, -1, '0', 0, 1),
(34, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 32, 'PARENT', '/dashboard/pages/themes/inspect.php', 0, NULL, 0, 1, 0, 0, 33, 0, 0, 0, -1, '0', 0, 1),
(35, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 32, 'PARENT', '/dashboard/pages/types/view.php', 0, NULL, 0, 1, 6, 1, 32, 0, 0, 0, -1, '0', 0, 1),
(36, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 32, 'PARENT', '/dashboard/pages/types/organize.php', 0, NULL, 0, 1, 0, 0, 35, 0, 0, 0, -1, '0', 0, 1),
(37, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 32, 'PARENT', '/dashboard/pages/types/add.php', 0, NULL, 0, 1, 0, 1, 35, 0, 0, 0, -1, '0', 0, 1),
(38, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 32, 'PARENT', '/dashboard/pages/types/form.php', 0, NULL, 0, 1, 0, 2, 35, 0, 0, 0, -1, '0', 0, 1),
(39, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 32, 'PARENT', '/dashboard/pages/types/output.php', 0, NULL, 0, 1, 0, 3, 35, 0, 0, 0, -1, '0', 0, 1),
(40, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 32, 'PARENT', '/dashboard/pages/types/attributes.php', 0, NULL, 0, 1, 0, 4, 35, 0, 0, 0, -1, '0', 0, 1),
(41, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 32, 'PARENT', '/dashboard/pages/types/permissions.php', 0, NULL, 0, 1, 0, 5, 35, 0, 0, 0, -1, '0', 0, 1),
(42, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 32, 'PARENT', '/dashboard/pages/templates/view.php', 0, NULL, 0, 1, 1, 2, 32, 0, 0, 0, -1, '0', 0, 1),
(43, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 32, 'PARENT', '/dashboard/pages/templates/add.php', 0, NULL, 0, 1, 0, 0, 42, 0, 0, 0, -1, '0', 0, 1),
(44, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 32, 'PARENT', '/dashboard/pages/attributes.php', 0, NULL, 0, 1, 0, 3, 32, 0, 0, 0, -1, '0', 0, 1),
(45, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 32, 'PARENT', '/dashboard/pages/single.php', 0, NULL, 0, 1, 0, 4, 32, 0, 0, 0, -1, '0', 0, 1),
(46, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 32, 'PARENT', '/dashboard/pages/feeds.php', 0, NULL, 0, 1, 0, 5, 32, 0, 0, 0, -1, '0', 0, 1),
(47, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 47, 'OVERRIDE', '/dashboard/calendar/view.php', 0, NULL, 0, 1, 5, 9, 2, 0, 0, 0, -1, '0', 0, 1),
(48, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 47, 'PARENT', '/dashboard/calendar/events.php', 0, NULL, 0, 1, 0, 0, 47, 0, 0, 0, -1, '0', 0, 1),
(49, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 47, 'PARENT', '/dashboard/calendar/event_list.php', 0, NULL, 0, 1, 0, 1, 47, 0, 0, 0, -1, '0', 0, 1),
(50, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 47, 'PARENT', '/dashboard/calendar/add.php', 0, NULL, 0, 1, 0, 2, 47, 0, 0, 0, -1, '0', 0, 1),
(51, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 47, 'PARENT', '/dashboard/calendar/permissions.php', 0, NULL, 0, 1, 0, 3, 47, 0, 0, 0, -1, '0', 0, 1),
(52, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 47, 'PARENT', '/dashboard/calendar/attributes.php', 0, NULL, 0, 1, 0, 4, 47, 0, 0, 0, -1, '0', 0, 1),
(53, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 53, 'OVERRIDE', '/dashboard/conversations/view.php', 0, NULL, 0, 1, 1, 10, 2, 0, 0, 0, -1, '0', 0, 1),
(54, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 53, 'PARENT', '/dashboard/conversations/messages.php', 0, NULL, 0, 1, 0, 0, 53, 0, 0, 0, -1, '0', 0, 1),
(55, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 55, 'OVERRIDE', '/dashboard/blocks/view.php', 0, NULL, 0, 1, 3, 11, 2, 0, 0, 0, -1, '0', 0, 1),
(56, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 55, 'PARENT', '/dashboard/blocks/stacks/view.php', 0, NULL, 0, 1, 1, 0, 55, 0, 0, 0, -1, '0', 0, 1),
(57, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 55, 'PARENT', '/dashboard/blocks/permissions.php', 0, NULL, 0, 1, 0, 1, 55, 0, 0, 0, -1, '0', 0, 1),
(58, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 55, 'PARENT', '/dashboard/blocks/stacks/list/view.php', 0, NULL, 0, 1, 0, 0, 56, 0, 0, 0, -1, '0', 0, 1),
(59, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 55, 'PARENT', '/dashboard/blocks/types/view.php', 0, NULL, 0, 1, 0, 2, 55, 0, 0, 0, -1, '0', 0, 1),
(60, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 60, 'OVERRIDE', '/dashboard/extend/view.php', 0, NULL, 0, 1, 5, 12, 2, 0, 0, 0, -1, '0', 0, 1),
(61, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 60, 'PARENT', '/dashboard/extend/install.php', 0, NULL, 0, 1, 0, 0, 60, 0, 0, 0, -1, '0', 0, 1),
(62, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 60, 'PARENT', '/dashboard/extend/update.php', 0, NULL, 0, 1, 0, 1, 60, 0, 0, 0, -1, '0', 0, 1),
(63, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 60, 'PARENT', '/dashboard/extend/connect.php', 0, NULL, 0, 1, 0, 2, 60, 0, 0, 0, -1, '0', 0, 1),
(64, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 60, 'PARENT', '/dashboard/extend/themes.php', 0, NULL, 0, 1, 0, 3, 60, 0, 0, 0, -1, '0', 0, 1),
(65, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 60, 'PARENT', '/dashboard/extend/addons.php', 0, NULL, 0, 1, 0, 4, 60, 0, 0, 0, -1, '0', 0, 1),
(66, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 66, 'OVERRIDE', '/dashboard/system/view.php', 0, NULL, 0, 1, 16, 13, 2, 0, 0, 0, -1, '0', 0, 1),
(67, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 67, 'OVERRIDE', '/dashboard/system/basics/view.php', 0, NULL, 0, 1, 9, 0, 66, 0, 0, 0, -1, '0', 0, 1),
(68, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 68, 'OVERRIDE', '/dashboard/system/basics/name.php', 0, NULL, 0, 1, 0, 0, 67, 0, 0, 0, -1, '0', 0, 1),
(69, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 67, 'PARENT', '/dashboard/system/basics/accessibility.php', 0, NULL, 0, 1, 0, 1, 67, 0, 0, 0, -1, '0', 0, 1),
(70, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 67, 'PARENT', '/dashboard/system/basics/social.php', 0, NULL, 0, 1, 0, 2, 67, 0, 0, 0, -1, '0', 0, 1),
(71, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 67, 'PARENT', '/dashboard/system/basics/icons.php', 0, NULL, 0, 1, 0, 3, 67, 0, 0, 0, -1, '0', 0, 1),
(72, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 67, 'PARENT', '/dashboard/system/basics/editor.php', 0, NULL, 0, 1, 0, 4, 67, 0, 0, 0, -1, '0', 0, 1),
(73, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 67, 'PARENT', '/dashboard/system/basics/multilingual/view.php', 0, NULL, 0, 1, 1, 5, 67, 0, 0, 0, -1, '0', 0, 1),
(74, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 67, 'PARENT', '/dashboard/system/basics/multilingual/update.php', 0, NULL, 0, 1, 0, 0, 73, 0, 0, 0, -1, '0', 0, 1),
(75, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 67, 'PARENT', '/dashboard/system/basics/timezone.php', 0, NULL, 0, 1, 0, 6, 67, 0, 0, 0, -1, '0', 0, 1),
(76, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 67, 'PARENT', '/dashboard/system/basics/attributes.php', 0, NULL, 0, 1, 0, 7, 67, 0, 0, 0, -1, '0', 0, 1),
(77, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 67, 'PARENT', '/dashboard/system/basics/reset_edit_mode.php', 0, NULL, 0, 1, 0, 8, 67, 0, 0, 0, -1, '0', 0, 1),
(78, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 66, 'PARENT', '/dashboard/system/express/view.php', 0, NULL, 0, 1, 2, 1, 66, 0, 0, 0, -1, '0', 0, 1),
(79, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 66, 'PARENT', '/dashboard/system/express/entities.php', 0, NULL, 0, 1, 5, 0, 78, 0, 0, 0, -1, '0', 0, 1),
(80, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 66, 'PARENT', '/dashboard/system/express/entities/attributes.php', 0, NULL, 0, 1, 0, 0, 79, 0, 0, 0, -1, '0', 0, 1),
(81, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 66, 'PARENT', '/dashboard/system/express/entities/associations.php', 0, NULL, 0, 1, 0, 1, 79, 0, 0, 0, -1, '0', 0, 1),
(82, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 66, 'PARENT', '/dashboard/system/express/entities/forms.php', 0, NULL, 0, 1, 0, 2, 79, 0, 0, 0, -1, '0', 0, 1),
(83, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 66, 'PARENT', '/dashboard/system/express/entities/customize_search.php', 0, NULL, 0, 1, 0, 3, 79, 0, 0, 0, -1, '0', 0, 1),
(84, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 66, 'PARENT', '/dashboard/system/express/entities/order_entries.php', 0, NULL, 0, 1, 0, 4, 79, 0, 0, 0, -1, '0', 0, 1),
(85, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 66, 'PARENT', '/dashboard/system/express/entries.php', 0, NULL, 0, 1, 0, 1, 78, 0, 0, 0, -1, '0', 0, 1),
(86, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 66, 'PARENT', '/dashboard/system/multisite/view.php', 0, NULL, 0, 1, 3, 2, 66, 0, 0, 0, -1, '0', 0, 1),
(87, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 66, 'PARENT', '/dashboard/system/multisite/sites/view.php', 0, NULL, 0, 1, 0, 0, 86, 0, 0, 0, -1, '0', 0, 1),
(88, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 66, 'PARENT', '/dashboard/system/multisite/types/view.php', 0, NULL, 0, 1, 0, 1, 86, 0, 0, 0, -1, '0', 0, 1),
(89, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 66, 'PARENT', '/dashboard/system/multisite/settings.php', 0, NULL, 0, 1, 0, 2, 86, 0, 0, 0, -1, '0', 0, 1),
(90, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 66, 'PARENT', '/dashboard/system/multilingual/view.php', 0, NULL, 0, 1, 4, 3, 66, 0, 0, 0, -1, '0', 0, 1),
(91, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 66, 'PARENT', '/dashboard/system/multilingual/setup.php', 0, NULL, 0, 1, 0, 0, 90, 0, 0, 0, -1, '0', 0, 1),
(92, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 66, 'PARENT', '/dashboard/system/multilingual/copy.php', 0, NULL, 0, 1, 0, 1, 90, 0, 0, 0, -1, '0', 0, 1),
(93, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 66, 'PARENT', '/dashboard/system/multilingual/page_report.php', 0, NULL, 0, 1, 0, 2, 90, 0, 0, 0, -1, '0', 0, 1),
(94, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 66, 'PARENT', '/dashboard/system/multilingual/translate_interface.php', 0, NULL, 0, 1, 0, 3, 90, 0, 0, 0, -1, '0', 0, 1),
(95, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 66, 'PARENT', '/dashboard/system/seo/view.php', 0, NULL, 0, 1, 5, 4, 66, 0, 0, 0, -1, '0', 0, 1),
(96, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 66, 'PARENT', '/dashboard/system/seo/urls.php', 0, NULL, 0, 1, 0, 0, 95, 0, 0, 0, -1, '0', 0, 1),
(97, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 66, 'PARENT', '/dashboard/system/seo/bulk.php', 0, NULL, 0, 1, 0, 1, 95, 0, 0, 0, -1, '0', 0, 1),
(98, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 66, 'PARENT', '/dashboard/system/seo/codes.php', 0, NULL, 0, 1, 0, 2, 95, 0, 0, 0, -1, '0', 0, 1),
(99, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 66, 'PARENT', '/dashboard/system/seo/excluded.php', 0, NULL, 0, 1, 0, 3, 95, 0, 0, 0, -1, '0', 0, 1),
(100, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 66, 'PARENT', '/dashboard/system/seo/searchindex.php', 0, NULL, 0, 1, 0, 4, 95, 0, 0, 0, -1, '0', 0, 1),
(101, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 66, 'PARENT', '/dashboard/system/files/view.php', 0, NULL, 0, 1, 6, 5, 66, 0, 0, 0, -1, '0', 0, 1),
(102, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 66, 'PARENT', '/dashboard/system/files/filetypes.php', 0, NULL, 0, 1, 0, 0, 101, 0, 0, 0, -1, '0', 0, 1),
(103, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 66, 'PARENT', '/dashboard/system/files/permissions.php', 0, NULL, 0, 1, 0, 1, 101, 0, 0, 0, -1, '0', 0, 1),
(104, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 66, 'PARENT', '/dashboard/system/files/thumbnails.php', 0, NULL, 0, 1, 1, 2, 101, 0, 0, 0, -1, '0', 0, 1),
(105, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 66, 'PARENT', '/dashboard/system/files/thumbnails/options.php', 0, NULL, 0, 1, 0, 0, 104, 0, 0, 0, -1, '0', 0, 1),
(106, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 66, 'PARENT', '/dashboard/system/files/image_uploading.php', 0, NULL, 0, 1, 0, 3, 101, 0, 0, 0, -1, '0', 0, 1),
(107, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 66, 'PARENT', '/dashboard/system/files/storage.php', 0, NULL, 0, 1, 0, 4, 101, 0, 0, 0, -1, '0', 0, 1),
(108, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 66, 'PARENT', '/dashboard/system/files/export_options.php', 0, NULL, 0, 1, 0, 5, 101, 0, 0, 0, -1, '0', 0, 1),
(109, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 66, 'PARENT', '/dashboard/system/optimization/view.php', 0, NULL, 0, 1, 3, 6, 66, 0, 0, 0, -1, '0', 0, 1),
(110, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 66, 'PARENT', '/dashboard/system/optimization/cache.php', 0, NULL, 0, 1, 0, 0, 109, 0, 0, 0, -1, '0', 0, 1),
(111, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 66, 'PARENT', '/dashboard/system/optimization/clearcache.php', 0, NULL, 0, 1, 0, 1, 109, 0, 0, 0, -1, '0', 0, 1),
(112, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 66, 'PARENT', '/dashboard/system/optimization/jobs.php', 0, NULL, 0, 1, 0, 2, 109, 0, 0, 0, -1, '0', 0, 1),
(113, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 66, 'PARENT', '/dashboard/system/permissions/view.php', 0, NULL, 0, 1, 10, 7, 66, 0, 0, 0, -1, '0', 0, 1),
(114, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 66, 'PARENT', '/dashboard/system/permissions/site.php', 0, NULL, 0, 1, 0, 0, 113, 0, 0, 0, -1, '0', 0, 1),
(115, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 66, 'PARENT', '/dashboard/system/permissions/tasks.php', 0, NULL, 0, 1, 0, 1, 113, 0, 0, 0, -1, '0', 0, 1),
(116, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 66, 'PARENT', '/dashboard/system/permissions/users.php', 0, NULL, 0, 1, 0, 2, 113, 0, 0, 0, -1, '0', 0, 1),
(117, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 66, 'PARENT', '/dashboard/system/permissions/advanced.php', 0, NULL, 0, 1, 0, 3, 113, 0, 0, 0, -1, '0', 0, 1),
(118, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 66, 'PARENT', '/dashboard/system/permissions/workflows.php', 0, NULL, 0, 1, 0, 4, 113, 0, 0, 0, -1, '0', 0, 1),
(119, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 66, 'PARENT', '/dashboard/system/permissions/blacklist.php', 0, NULL, 0, 1, 2, 5, 113, 0, 0, 0, -1, '0', 0, 1),
(120, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 66, 'PARENT', '/dashboard/system/permissions/blacklist/configure.php', 0, NULL, 0, 1, 0, 0, 119, 0, 0, 0, -1, '0', 0, 1),
(121, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 66, 'PARENT', '/dashboard/system/permissions/blacklist/range.php', 0, NULL, 0, 1, 0, 1, 119, 0, 0, 0, -1, '0', 0, 1),
(122, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 66, 'PARENT', '/dashboard/system/permissions/captcha.php', 0, NULL, 0, 1, 0, 6, 113, 0, 0, 0, -1, '0', 0, 1),
(123, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 66, 'PARENT', '/dashboard/system/permissions/antispam.php', 0, NULL, 0, 1, 0, 7, 113, 0, 0, 0, -1, '0', 0, 1),
(124, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 66, 'PARENT', '/dashboard/system/permissions/maintenance.php', 0, NULL, 0, 1, 0, 8, 113, 0, 0, 0, -1, '0', 0, 1),
(125, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 66, 'PARENT', '/dashboard/system/permissions/trusted_proxies.php', 0, NULL, 0, 1, 0, 9, 113, 0, 0, 0, -1, '0', 0, 1),
(126, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 66, 'PARENT', '/dashboard/system/registration/view.php', 0, NULL, 0, 1, 9, 8, 66, 0, 0, 0, -1, '0', 0, 1),
(127, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 66, 'PARENT', '/dashboard/system/registration/open.php', 0, NULL, 0, 1, 0, 0, 126, 0, 0, 0, -1, '0', 0, 1),
(128, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 66, 'PARENT', '/dashboard/system/registration/postlogin.php', 0, NULL, 0, 1, 0, 1, 126, 0, 0, 0, -1, '0', 0, 1),
(129, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 66, 'PARENT', '/dashboard/system/registration/profiles.php', 0, NULL, 0, 1, 0, 2, 126, 0, 0, 0, -1, '0', 0, 1),
(130, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 66, 'PARENT', '/dashboard/system/registration/authentication.php', 0, NULL, 0, 1, 0, 3, 126, 0, 0, 0, -1, '0', 0, 1),
(131, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 66, 'PARENT', '/dashboard/system/registration/global_password_reset.php', 0, NULL, 0, 1, 0, 4, 126, 0, 0, 0, -1, '0', 0, 1),
(132, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 66, 'PARENT', '/dashboard/system/registration/notification.php', 0, NULL, 0, 1, 0, 5, 126, 0, 0, 0, -1, '0', 0, 1),
(133, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 66, 'PARENT', '/dashboard/system/registration/deactivation.php', 0, NULL, 0, 1, 0, 6, 126, 0, 0, 0, -1, '0', 0, 1),
(134, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 66, 'PARENT', '/dashboard/system/registration/automated_logout.php', 0, NULL, 0, 1, 0, 7, 126, 0, 0, 0, -1, '0', 0, 1),
(135, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 66, 'PARENT', '/dashboard/system/registration/password_requirements.php', 0, NULL, 0, 1, 0, 8, 126, 0, 0, 0, -1, '0', 0, 1),
(136, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 66, 'PARENT', '/dashboard/system/mail/view.php', 0, NULL, 0, 1, 3, 9, 66, 0, 0, 0, -1, '0', 0, 1),
(137, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 66, 'PARENT', '/dashboard/system/mail/method.php', 0, NULL, 0, 1, 1, 0, 136, 0, 0, 0, -1, '0', 0, 1),
(138, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 66, 'PARENT', '/dashboard/system/mail/method/test.php', 0, NULL, 0, 1, 0, 0, 137, 0, 0, 0, -1, '0', 0, 1),
(139, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 66, 'PARENT', '/dashboard/system/mail/importers.php', 0, NULL, 0, 1, 0, 1, 136, 0, 0, 0, -1, '0', 0, 1),
(140, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 66, 'PARENT', '/dashboard/system/mail/addresses.php', 0, NULL, 0, 1, 0, 2, 136, 0, 0, 0, -1, '0', 0, 1),
(141, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 66, 'PARENT', '/dashboard/system/calendar/view.php', 0, NULL, 0, 1, 4, 10, 66, 0, 0, 0, -1, '0', 0, 1),
(142, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 66, 'PARENT', '/dashboard/system/calendar/settings.php', 0, NULL, 0, 1, 0, 0, 141, 0, 0, 0, -1, '0', 0, 1),
(143, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 66, 'PARENT', '/dashboard/system/calendar/colors.php', 0, NULL, 0, 1, 0, 1, 141, 0, 0, 0, -1, '0', 0, 1),
(144, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 66, 'PARENT', '/dashboard/system/calendar/permissions.php', 0, NULL, 0, 1, 0, 2, 141, 0, 0, 0, -1, '0', 0, 1),
(145, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 66, 'PARENT', '/dashboard/system/calendar/import.php', 0, NULL, 0, 1, 0, 3, 141, 0, 0, 0, -1, '0', 0, 1),
(146, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 66, 'PARENT', '/dashboard/system/conversations/view.php', 0, NULL, 0, 1, 4, 11, 66, 0, 0, 0, -1, '0', 0, 1),
(147, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 66, 'PARENT', '/dashboard/system/conversations/settings.php', 0, NULL, 0, 1, 0, 0, 146, 0, 0, 0, -1, '0', 0, 1),
(148, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 66, 'PARENT', '/dashboard/system/conversations/points.php', 0, NULL, 0, 1, 0, 1, 146, 0, 0, 0, -1, '0', 0, 1),
(149, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 66, 'PARENT', '/dashboard/system/conversations/bannedwords.php', 0, NULL, 0, 1, 0, 2, 146, 0, 0, 0, -1, '0', 0, 1),
(150, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 66, 'PARENT', '/dashboard/system/conversations/permissions.php', 0, NULL, 0, 1, 0, 3, 146, 0, 0, 0, -1, '0', 0, 1),
(151, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 66, 'PARENT', '/dashboard/system/attributes/view.php', 0, NULL, 0, 1, 3, 12, 66, 0, 0, 0, -1, '0', 0, 1),
(152, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 66, 'PARENT', '/dashboard/system/attributes/types.php', 0, NULL, 0, 1, 0, 0, 151, 0, 0, 0, -1, '0', 0, 1),
(153, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 66, 'PARENT', '/dashboard/system/attributes/sets.php', 0, NULL, 0, 1, 0, 1, 151, 0, 0, 0, -1, '0', 0, 1),
(154, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 66, 'PARENT', '/dashboard/system/attributes/topics/view.php', 0, NULL, 0, 1, 1, 2, 151, 0, 0, 0, -1, '0', 0, 1),
(155, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 66, 'PARENT', '/dashboard/system/attributes/topics/add.php', 0, NULL, 0, 1, 0, 0, 154, 0, 0, 0, -1, '0', 0, 1),
(156, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 66, 'PARENT', '/dashboard/system/environment/view.php', 0, NULL, 0, 1, 7, 13, 66, 0, 0, 0, -1, '0', 0, 1),
(157, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 66, 'PARENT', '/dashboard/system/environment/info.php', 0, NULL, 0, 1, 0, 0, 156, 0, 0, 0, -1, '0', 0, 1),
(158, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 66, 'PARENT', '/dashboard/system/environment/debug.php', 0, NULL, 0, 1, 0, 1, 156, 0, 0, 0, -1, '0', 0, 1),
(159, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 66, 'PARENT', '/dashboard/system/environment/logging.php', 0, NULL, 0, 1, 0, 2, 156, 0, 0, 0, -1, '0', 0, 1),
(160, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 66, 'PARENT', '/dashboard/system/environment/proxy.php', 0, NULL, 0, 1, 0, 3, 156, 0, 0, 0, -1, '0', 0, 1),
(161, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 66, 'PARENT', '/dashboard/system/environment/entities.php', 0, NULL, 0, 1, 0, 4, 156, 0, 0, 0, -1, '0', 0, 1),
(162, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 66, 'PARENT', '/dashboard/system/environment/database_charset.php', 0, NULL, 0, 1, 0, 5, 156, 0, 0, 0, -1, '0', 0, 1),
(163, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 66, 'PARENT', '/dashboard/system/environment/geolocation.php', 0, NULL, 0, 1, 0, 6, 156, 0, 0, 0, -1, '0', 0, 1),
(164, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 66, 'PARENT', '/dashboard/system/update/view.php', 0, NULL, 0, 1, 1, 14, 66, 0, 0, 0, -1, '0', 0, 1),
(165, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 66, 'PARENT', '/dashboard/system/update/update.php', 0, NULL, 0, 1, 0, 0, 164, 0, 0, 0, -1, '0', 0, 1),
(166, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 66, 'PARENT', '/dashboard/system/api/view.php', 0, NULL, 0, 1, 2, 15, 66, 0, 0, 0, -1, '0', 0, 1),
(167, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 66, 'PARENT', '/dashboard/system/api/settings.php', 0, NULL, 0, 1, 0, 0, 166, 0, 0, 0, -1, '0', 0, 1),
(168, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 66, 'PARENT', '/dashboard/system/api/integrations.php', 0, NULL, 0, 1, 0, 1, 166, 0, 0, 0, -1, '0', 0, 1),
(169, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 169, 'OVERRIDE', '/dashboard/welcome.php', 0, NULL, 0, 1, 1, 0, 2, 0, 0, 0, -1, '0', 0, 1),
(170, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 169, 'PARENT', NULL, 0, NULL, 0, 1, 0, 0, 169, 0, 0, 0, -1, '0', 0, 1),
(171, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 171, 'OVERRIDE', '/!stacks/view.php', 0, NULL, 0, 1, 11, 0, 0, 0, 0, 0, -1, '0', 0, 1),
(172, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 172, 'OVERRIDE', '/page_not_found.php', 0, NULL, 0, 1, 0, 0, 0, 0, 0, 0, -1, '0', 0, 1),
(173, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/!trash/view.php', 0, NULL, 0, 1, 0, 0, 0, 0, 0, 0, -1, '0', 0, 1),
(174, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 174, 'OVERRIDE', '/login.php', 0, NULL, 0, 1, 0, 0, 0, 0, 0, 0, -1, '0', 0, 1),
(175, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 175, 'OVERRIDE', '/register.php', 0, NULL, 0, 1, 0, 0, 0, 0, 0, 0, -1, '0', 0, 1),
(176, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/account/view.php', 0, NULL, 0, 1, 3, 0, 0, 0, 0, 0, -1, '0', 0, 1),
(177, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/account/edit_profile.php', 0, NULL, 0, 1, 0, 0, 176, 0, 0, 0, -1, '0', 0, 1),
(178, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/account/avatar.php', 0, NULL, 0, 1, 0, 1, 176, 0, 0, 0, -1, '0', 0, 1),
(179, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 179, 'OVERRIDE', '/account/messages.php', 0, NULL, 0, 1, 0, 2, 176, 0, 0, 0, -1, '0', 0, 1),
(180, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 180, 'OVERRIDE', '/page_forbidden.php', 0, NULL, 0, 1, 0, 0, 0, 0, 0, 0, -1, '0', 0, 1),
(181, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 1, 'PARENT', '/download_file.php', 0, NULL, 0, 1, 0, 0, 0, 0, 0, 0, -1, '0', 0, 1),
(182, 1, 0, 0, 1, 0, NULL, NULL, NULL, 1, 182, 'OVERRIDE', '/!drafts/view.php', 0, NULL, 0, 1, 0, 0, 0, 0, 0, 0, -1, '0', 0, 1),
(183, 1, 0, 0, 1, 0, NULL, NULL, NULL, 1, 183, 'OVERRIDE', '/desktop.php', 0, NULL, 0, 1, 0, 0, 0, 0, 0, 0, -1, '0', 0, 1),
(184, 0, 1, 0, 1, 0, NULL, NULL, NULL, 1, 171, 'PARENT', NULL, 0, NULL, 0, 1, 0, 0, 171, 0, 0, 0, -1, '0', 0, 1),
(185, 0, 1, 0, 1, 0, NULL, NULL, NULL, 1, 171, 'PARENT', NULL, 0, NULL, 0, 1, 0, 1, 171, 0, 0, 0, -1, '0', 0, 1),
(186, 0, 1, 0, 1, 0, NULL, NULL, NULL, 1, 171, 'PARENT', NULL, 0, NULL, 0, 1, 0, 2, 171, 0, 0, 0, -1, '0', 0, 1),
(187, 0, 1, 0, 1, 0, NULL, NULL, NULL, 1, 171, 'PARENT', NULL, 0, NULL, 0, 1, 0, 3, 171, 0, 0, 0, -1, '0', 0, 1),
(188, 0, 1, 0, 1, 0, NULL, NULL, NULL, 1, 171, 'PARENT', NULL, 0, NULL, 0, 1, 0, 4, 171, 0, 0, 0, -1, '0', 0, 1),
(189, 0, 1, 0, 1, 0, NULL, NULL, NULL, 1, 171, 'PARENT', NULL, 0, NULL, 0, 1, 0, 5, 171, 0, 0, 0, -1, '0', 0, 1),
(190, 0, 1, 0, 1, 0, NULL, NULL, NULL, 1, 171, 'PARENT', NULL, 0, NULL, 0, 1, 0, 6, 171, 0, 0, 0, -1, '0', 0, 1),
(191, 0, 1, 0, 1, 0, NULL, NULL, NULL, 1, 171, 'PARENT', NULL, 0, NULL, 0, 1, 0, 7, 171, 0, 0, 0, -1, '0', 0, 1),
(192, 1, 5, 1, NULL, 0, NULL, NULL, NULL, 1, 192, 'OVERRIDE', NULL, 0, NULL, 0, 1, 0, 0, 0, 0, 0, 0, -1, '0', 0, 0),
(194, 1, 10, 1, NULL, 0, NULL, NULL, NULL, 1, 194, 'OVERRIDE', NULL, 0, NULL, 0, 1, 0, 0, 0, 0, 0, 0, -1, '0', 0, 0),
(197, 1, 9, 1, NULL, 0, NULL, NULL, NULL, 1, 197, 'OVERRIDE', NULL, 0, NULL, 0, 1, 0, 0, 0, 0, 0, 0, -1, '0', 0, 0),
(202, 1, 8, 1, NULL, 0, NULL, NULL, NULL, 1, 202, 'OVERRIDE', NULL, 0, NULL, 0, 1, 0, 0, 0, 0, 0, 0, -1, '0', 0, 0),
(209, 1, 6, 1, NULL, 0, NULL, NULL, NULL, 1, 209, 'OVERRIDE', NULL, 0, NULL, 0, 1, 0, 0, 0, 0, 0, 0, -1, '0', 0, 0),
(216, 1, 7, 1, NULL, 0, NULL, NULL, NULL, 1, 216, 'OVERRIDE', NULL, 0, NULL, 0, 1, 0, 0, 0, 0, 0, 0, -1, '0', 0, 0),
(219, 1, 5, 1, NULL, 0, NULL, NULL, NULL, 1, 219, 'OVERRIDE', NULL, 0, NULL, 0, 1, 0, 0, 0, 0, 0, 0, -1, '0', 0, 0),
(220, 1, 5, 1, NULL, 0, NULL, NULL, NULL, 1, 220, 'OVERRIDE', NULL, 0, NULL, 0, 1, 0, 0, 0, 0, 0, 0, -1, '0', 0, 0),
(221, 1, 5, 1, NULL, 0, NULL, NULL, NULL, 1, 221, 'OVERRIDE', NULL, 0, NULL, 0, 1, 0, 0, 0, 0, 0, 0, -1, '0', 0, 0),
(225, 0, 1, 0, 1, 0, NULL, NULL, NULL, 1, 171, 'PARENT', NULL, 0, NULL, 0, 1, 0, 8, 171, 0, 0, 0, -1, '0', 0, 1),
(226, 0, 1, 0, 1, 0, NULL, NULL, NULL, 1, 171, 'PARENT', NULL, 0, NULL, 0, 1, 0, 9, 171, 0, 0, 0, -1, '0', 0, 1),
(227, 0, 1, 0, 1, 0, NULL, NULL, NULL, 1, 171, 'PARENT', NULL, 0, NULL, 0, 1, 0, 10, 171, 0, 0, 0, -1, '0', 0, 1),
(249, 1, 11, 1, NULL, 0, NULL, NULL, NULL, 1, 249, 'OVERRIDE', NULL, 0, NULL, 0, 1, 0, 0, 0, 0, 0, 0, -1, '0', 0, 0),
(250, 1, 11, 1, NULL, 0, NULL, NULL, NULL, 1, 250, 'OVERRIDE', NULL, 0, NULL, 0, 1, 0, 0, 0, 0, 0, 0, -1, '0', 0, 0),
(251, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 32, 'PARENT', '/dashboard/pages/landing_pages.php', 0, NULL, 0, 1, 0, 6, 32, 5, 0, 0, -1, '0', 0, 1),
(252, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/pages/landing_pages.php', 0, NULL, 0, 1, 0, 2, 2, 5, 0, 0, -1, '0', 0, 1),
(253, 0, 0, 0, 1, 0, NULL, NULL, NULL, 1, 2, 'PARENT', '/dashboard/system/basics/name.php', 0, NULL, 0, 1, 0, 1, 2, 0, 0, 0, -1, '0', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `PageSearchIndex`
--

CREATE TABLE `PageSearchIndex` (
  `cID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `cName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cDescription` text COLLATE utf8mb4_unicode_ci,
  `cPath` text COLLATE utf8mb4_unicode_ci,
  `cDatePublic` datetime DEFAULT NULL,
  `cDateLastIndexed` datetime DEFAULT NULL,
  `cDateLastSitemapped` datetime DEFAULT NULL,
  `cRequiresReindex` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `PageSearchIndex`
--

INSERT INTO `PageSearchIndex` (`cID`, `content`, `cName`, `cDescription`, `cPath`, `cDatePublic`, `cDateLastIndexed`, `cDateLastSitemapped`, `cRequiresReindex`) VALUES
(1, 'Stand Out on the Web \n                                     Share your business with an impressive, yet minimal presentation. Let your customers understand your web presence through elegance and clarity.  A Simple Image Slider \n                                     This image slider can have any content that you want in it.   Easy to Edit \n                                                    Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna. Media Rich \n                                                    Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna. \n                                    Presenting your Business has never been so easy Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna.   Latest Blog Post Now Open For Business \n                                                       We specialize in making your concepts a reality.          Sed cursus facilisis dignissim. Aliquam rhoncus enim et pellentesque varius. Nulla sodales nibh lorem, sit amet imperdiet arcu commodo sit amet. Mauris sed scelerisque nisl. Ut auctor ipsum tellus, vel viverra massa elementum sit amet.          Sed adipiscing tempus sem eu molestie. Aenean laoreet pretium ante vitae ultrices. Aenean eu gravida magna, vel aliquet magna. In auctor convallis gravida.            Contact Us Today    \n                                    Customizable footer area with accent class.  THE WAY OF SUCCESS \r\nApabila anda di landa masalah, anggaplah ianya satu cabaran kepada diri anda. \r\n Pixel Perfect  Pellentesque ultricies ligula vel neque dictum, eu mollis tortor adipiscing. Etiam congue, est vel tincidunt vestibulum, nunc nunc porta nulla, at adipiscing neque tellus quis urna.... \r\n THE WAY OF SUCCESS \r\nApabila anda di landa masalah, anggaplah ianya satu cabaran kepada diri anda. \r\n ', 'Home', '', NULL, '2021-08-23 11:10:00', '2021-08-24 22:46:58', NULL, 0),
(17, '', 'Add User', '', '/dashboard/users/add', '2021-08-23 11:13:00', '2021-08-23 17:57:29', NULL, 0),
(18, '', 'Add Group', '', '/dashboard/users/add_group', '2021-08-23 11:13:00', '2021-08-23 17:57:29', NULL, 0),
(169, 'Add-On Developers: Get Your Add-Ons Ready for Concrete CMS 9.0 Concrete CMS 9.0 is coming! But there are some changes in version 9 that might affected your add-ons and themes. This document aims to answer questions about the most common ways that your add-ons might need to be changed, and common problems you\'ll run into.  See One, Do One, Teach One = The best way to train Training made easy with SO-DO-TO Concrete CMS 9.0.0RC2 is Now Available! The second release candidate for Concrete CMS 9.0 is now available.  Why DevOps Matters? We used to write software without all this "DevOps" talk, what does it even mean and why bother?  ', 'Welcome', '', '/dashboard/welcome', '2021-08-23 11:13:00', '2021-08-23 21:50:49', NULL, 0),
(170, '', 'Waiting for Me', NULL, '/dashboard/welcome/me', '2021-08-23 11:13:50', '2021-08-23 11:15:11', NULL, 0),
(183, '', 'Welcome Back', '', '/account/welcome', '2021-08-23 11:15:00', '2021-08-23 16:37:57', NULL, 0),
(189, '', 'Header Navigation', NULL, '/!stacks/header-navigation', '2021-08-23 11:15:48', '2021-08-23 23:26:18', NULL, 0),
(190, '', 'Header Search', NULL, '/!stacks/header-search', '2021-08-23 11:15:48', '2021-08-23 23:26:18', NULL, 0),
(191, '', 'Header Site Title', NULL, '/!stacks/header-site-title', '2021-08-23 11:15:48', '2021-08-23 23:26:18', NULL, 0),
(253, '', 'Website Name', '', '/dashboard/name', '2021-08-23 11:13:00', '2021-08-24 23:23:16', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `PageTemplates`
--

CREATE TABLE `PageTemplates` (
  `pTemplateID` int(11) NOT NULL,
  `pTemplateHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pTemplateIcon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pTemplateName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pTemplateIsInternal` tinyint(1) NOT NULL,
  `pkgID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `PageTemplates`
--

INSERT INTO `PageTemplates` (`pTemplateID`, `pTemplateHandle`, `pTemplateIcon`, `pTemplateName`, `pTemplateIsInternal`, `pkgID`) VALUES
(1, 'core_stack', '', 'Stack', 1, 0),
(2, 'desktop', '', 'Desktop', 1, 0),
(3, 'dashboard_full', '', 'Dashboard Full', 1, 0),
(4, 'blank', 'blank.png', 'Blank', 0, 0),
(5, 'full', 'full.png', 'Full', 0, 0),
(6, 'left_sidebar', 'left_sidebar.png', 'Left Sidebar', 0, 0),
(7, 'right_sidebar', 'right_sidebar.png', 'Right Sidebar', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `PageThemeCustomStyles`
--

CREATE TABLE `PageThemeCustomStyles` (
  `pThemeID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `scvlID` int(10) UNSIGNED DEFAULT '0',
  `preset` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sccRecordID` int(10) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `PageThemes`
--

CREATE TABLE `PageThemes` (
  `pThemeID` int(10) UNSIGNED NOT NULL,
  `pThemeHandle` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pThemeName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pThemeDescription` text COLLATE utf8mb4_unicode_ci,
  `pkgID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pThemeHasCustomClass` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `PageThemes`
--

INSERT INTO `PageThemes` (`pThemeID`, `pThemeHandle`, `pThemeName`, `pThemeDescription`, `pkgID`, `pThemeHasCustomClass`) VALUES
(1, 'elemental', 'Elemental', 'Elegant, spacious theme with support for blogs, portfolios, layouts and more.', 0, 1),
(2, 'theme_admin_lte', 'Theme Admin LTE', 'Simplicity. Designed.', 1, 1),
(3, 'theme_nsr', 'Theme NSR', 'For Simple eCommerce', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `PageTypeComposerControlTypes`
--

CREATE TABLE `PageTypeComposerControlTypes` (
  `ptComposerControlTypeID` int(10) UNSIGNED NOT NULL,
  `ptComposerControlTypeHandle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ptComposerControlTypeName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pkgID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `PageTypeComposerControlTypes`
--

INSERT INTO `PageTypeComposerControlTypes` (`ptComposerControlTypeID`, `ptComposerControlTypeHandle`, `ptComposerControlTypeName`, `pkgID`) VALUES
(1, 'core_page_property', 'Built-In Property', 0),
(2, 'collection_attribute', 'Custom Attribute', 0),
(3, 'block', 'Block', 0);

-- --------------------------------------------------------

--
-- Table structure for table `PageTypeComposerFormLayoutSetControls`
--

CREATE TABLE `PageTypeComposerFormLayoutSetControls` (
  `ptComposerFormLayoutSetControlID` int(10) UNSIGNED NOT NULL,
  `ptComposerFormLayoutSetID` int(10) UNSIGNED DEFAULT '0',
  `ptComposerControlTypeID` int(10) UNSIGNED DEFAULT '0',
  `ptComposerControlObject` longtext COLLATE utf8mb4_unicode_ci,
  `ptComposerFormLayoutSetControlDisplayOrder` int(10) UNSIGNED DEFAULT '0',
  `ptComposerFormLayoutSetControlCustomLabel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ptComposerFormLayoutSetControlCustomTemplate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ptComposerFormLayoutSetControlDescription` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ptComposerFormLayoutSetControlRequired` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `PageTypeComposerFormLayoutSets`
--

CREATE TABLE `PageTypeComposerFormLayoutSets` (
  `ptComposerFormLayoutSetID` int(10) UNSIGNED NOT NULL,
  `ptID` int(10) UNSIGNED DEFAULT '0',
  `ptComposerFormLayoutSetName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ptComposerFormLayoutSetDescription` text COLLATE utf8mb4_unicode_ci,
  `ptComposerFormLayoutSetDisplayOrder` int(10) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `PageTypeComposerOutputBlocks`
--

CREATE TABLE `PageTypeComposerOutputBlocks` (
  `ptComposerOutputBlockID` int(10) UNSIGNED NOT NULL,
  `cID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cvID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `arHandle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cbDisplayOrder` int(10) UNSIGNED DEFAULT '0',
  `ptComposerFormLayoutSetControlID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `bID` int(10) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `PageTypeComposerOutputControls`
--

CREATE TABLE `PageTypeComposerOutputControls` (
  `ptComposerOutputControlID` int(10) UNSIGNED NOT NULL,
  `pTemplateID` int(10) UNSIGNED DEFAULT '0',
  `ptID` int(10) UNSIGNED DEFAULT '0',
  `ptComposerFormLayoutSetControlID` int(10) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `PageTypePageTemplateDefaultPages`
--

CREATE TABLE `PageTypePageTemplateDefaultPages` (
  `pTemplateID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ptID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cID` int(10) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `PageTypePageTemplateDefaultPages`
--

INSERT INTO `PageTypePageTemplateDefaultPages` (`pTemplateID`, `ptID`, `cID`) VALUES
(7, 6, 240),
(6, 7, 241),
(6, 8, 242),
(5, 9, 243),
(5, 10, 244),
(4, 5, 245),
(5, 5, 246),
(6, 5, 247),
(7, 5, 248),
(4, 11, 249),
(5, 11, 250);

-- --------------------------------------------------------

--
-- Table structure for table `PageTypePageTemplates`
--

CREATE TABLE `PageTypePageTemplates` (
  `ptID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pTemplateID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `PageTypePermissionAssignments`
--

CREATE TABLE `PageTypePermissionAssignments` (
  `ptID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pkID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `PageTypePermissionAssignments`
--

INSERT INTO `PageTypePermissionAssignments` (`ptID`, `pkID`, `paID`) VALUES
(1, 60, 17),
(2, 60, 17),
(3, 60, 17),
(4, 60, 17),
(5, 60, 17),
(6, 60, 17),
(7, 60, 17),
(8, 60, 17),
(9, 60, 17),
(10, 60, 17),
(1, 61, 17),
(2, 61, 17),
(3, 61, 17),
(4, 61, 17),
(5, 61, 17),
(6, 61, 17),
(7, 61, 17),
(8, 61, 17),
(9, 61, 17),
(10, 61, 17),
(1, 62, 17),
(2, 62, 17),
(3, 62, 17),
(4, 62, 17),
(5, 62, 17),
(6, 62, 17),
(7, 62, 17),
(8, 62, 17),
(9, 62, 17),
(10, 62, 17),
(1, 63, 17),
(2, 63, 17),
(3, 63, 17),
(4, 63, 17),
(5, 63, 17),
(6, 63, 17),
(7, 63, 17),
(8, 63, 17),
(9, 63, 17),
(10, 63, 17),
(1, 64, 40),
(2, 64, 41),
(3, 64, 42),
(4, 64, 43),
(5, 64, 48),
(6, 64, 49),
(7, 64, 50),
(8, 64, 51),
(9, 64, 52),
(10, 64, 53),
(11, 64, 377);

-- --------------------------------------------------------

--
-- Table structure for table `PageTypePublishTargetTypes`
--

CREATE TABLE `PageTypePublishTargetTypes` (
  `ptPublishTargetTypeID` int(10) UNSIGNED NOT NULL,
  `ptPublishTargetTypeHandle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ptPublishTargetTypeName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pkgID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `PageTypePublishTargetTypes`
--

INSERT INTO `PageTypePublishTargetTypes` (`ptPublishTargetTypeID`, `ptPublishTargetTypeHandle`, `ptPublishTargetTypeName`, `pkgID`) VALUES
(1, 'parent_page', 'Always publish below a certain page', 0),
(2, 'page_type', 'Choose from pages of a certain type', 0),
(3, 'all', 'Choose from all pages when publishing', 0);

-- --------------------------------------------------------

--
-- Table structure for table `PageTypes`
--

CREATE TABLE `PageTypes` (
  `ptID` int(10) UNSIGNED NOT NULL,
  `ptName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ptHandle` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ptPublishTargetTypeID` int(10) UNSIGNED DEFAULT NULL,
  `ptDefaultPageTemplateID` int(10) UNSIGNED DEFAULT NULL,
  `ptAllowedPageTemplates` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT 'A',
  `ptIsInternal` tinyint(1) NOT NULL DEFAULT '0',
  `ptIsFrequentlyAdded` tinyint(1) NOT NULL DEFAULT '1',
  `ptDisplayOrder` int(10) UNSIGNED DEFAULT NULL,
  `ptLaunchInComposer` tinyint(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ptPublishTargetObject` longtext COLLATE utf8mb4_unicode_ci,
  `siteTypeID` int(10) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `PageTypes`
--

INSERT INTO `PageTypes` (`ptID`, `ptName`, `ptHandle`, `ptPublishTargetTypeID`, `ptDefaultPageTemplateID`, `ptAllowedPageTemplates`, `ptIsInternal`, `ptIsFrequentlyAdded`, `ptDisplayOrder`, `ptLaunchInComposer`, `pkgID`, `ptPublishTargetObject`, `siteTypeID`) VALUES
(1, 'Stack', 'core_stack', 3, 0, 'A', 1, 0, 0, 0, 0, 'O:68:"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\AllConfiguration":7:{s:21:"\0*\0selectorFormFactor";N;s:22:"\0*\0startingPointPageID";N;s:5:"error";s:0:"";s:21:"ptPublishTargetTypeID";s:1:"3";s:25:"ptPublishTargetTypeHandle";s:3:"all";s:9:"pkgHandle";b:0;s:17:"startingPointPage";N;}', 1),
(2, 'Stack Category', 'core_stack_category', 3, 0, 'A', 1, 0, 1, 0, 0, 'O:68:"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\AllConfiguration":7:{s:21:"\0*\0selectorFormFactor";N;s:22:"\0*\0startingPointPageID";N;s:5:"error";s:0:"";s:21:"ptPublishTargetTypeID";s:1:"3";s:25:"ptPublishTargetTypeHandle";s:3:"all";s:9:"pkgHandle";b:0;s:17:"startingPointPage";N;}', 1),
(3, 'Desktop', 'core_desktop', 3, 0, 'A', 1, 0, 2, 0, 0, 'O:68:"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\AllConfiguration":7:{s:21:"\0*\0selectorFormFactor";N;s:22:"\0*\0startingPointPageID";N;s:5:"error";s:0:"";s:21:"ptPublishTargetTypeID";s:1:"3";s:25:"ptPublishTargetTypeHandle";s:3:"all";s:9:"pkgHandle";b:0;s:17:"startingPointPage";N;}', 1),
(4, 'Dashboard Full', 'dashboard_full', 3, 0, 'A', 1, 0, 3, 0, 0, 'O:68:"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\AllConfiguration":7:{s:21:"\0*\0selectorFormFactor";N;s:22:"\0*\0startingPointPageID";N;s:5:"error";s:0:"";s:21:"ptPublishTargetTypeID";s:1:"3";s:25:"ptPublishTargetTypeHandle";s:3:"all";s:9:"pkgHandle";b:0;s:17:"startingPointPage";N;}', 1),
(11, 'Full', 'full', 3, 4, 'A', 0, 1, 1, 0, 0, 'O:68:"Concrete\\Core\\Page\\Type\\PublishTarget\\Configuration\\AllConfiguration":7:{s:21:"\0*\0selectorFormFactor";s:0:"";s:22:"\0*\0startingPointPageID";N;s:5:"error";s:0:"";s:21:"ptPublishTargetTypeID";s:1:"3";s:25:"ptPublishTargetTypeHandle";s:3:"all";s:9:"pkgHandle";b:0;s:17:"startingPointPage";s:1:"0";}', 1);

-- --------------------------------------------------------

--
-- Table structure for table `PageWorkflowProgress`
--

CREATE TABLE `PageWorkflowProgress` (
  `cID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `wpID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `PermissionAccess`
--

CREATE TABLE `PermissionAccess` (
  `paID` int(10) UNSIGNED NOT NULL,
  `paIsInUse` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `PermissionAccess`
--

INSERT INTO `PermissionAccess` (`paID`, `paIsInUse`) VALUES
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
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(91, 1),
(92, 1),
(93, 1),
(94, 1),
(95, 1),
(96, 1),
(97, 1),
(98, 1),
(99, 1),
(100, 1),
(101, 1),
(102, 1),
(103, 1),
(104, 1),
(105, 1),
(106, 1),
(107, 1),
(108, 1),
(109, 1),
(110, 1),
(111, 1),
(112, 1),
(113, 1),
(114, 1),
(115, 1),
(116, 1),
(117, 1),
(118, 1),
(119, 1),
(120, 0),
(121, 0),
(122, 1),
(123, 1),
(124, 1),
(125, 1),
(126, 1),
(127, 1),
(128, 1),
(129, 1),
(130, 1),
(131, 1),
(132, 1),
(133, 1),
(134, 1),
(135, 1),
(136, 1),
(137, 1),
(138, 1),
(139, 1),
(140, 1),
(141, 1),
(142, 1),
(143, 1),
(144, 1),
(145, 1),
(146, 1),
(147, 1),
(148, 1),
(149, 1),
(150, 1),
(151, 1),
(152, 1),
(153, 1),
(154, 1),
(155, 1),
(156, 1),
(157, 1),
(158, 1),
(159, 1),
(160, 1),
(161, 1),
(162, 1),
(163, 1),
(164, 1),
(165, 1),
(166, 1),
(167, 1),
(168, 1),
(169, 1),
(170, 1),
(171, 1),
(172, 1),
(173, 1),
(174, 1),
(175, 1),
(176, 1),
(177, 1),
(178, 1),
(179, 1),
(180, 1),
(181, 1),
(182, 1),
(183, 1),
(184, 1),
(185, 1),
(186, 1),
(187, 1),
(188, 1),
(189, 1),
(190, 1),
(191, 1),
(192, 1),
(193, 1),
(194, 1),
(195, 1),
(196, 1),
(197, 1),
(198, 1),
(199, 1),
(200, 1),
(201, 1),
(202, 1),
(203, 1),
(204, 1),
(205, 1),
(206, 1),
(207, 1),
(208, 1),
(209, 1),
(210, 1),
(211, 1),
(212, 1),
(213, 1),
(214, 1),
(215, 1),
(216, 1),
(217, 1),
(218, 1),
(219, 1),
(220, 1),
(221, 1),
(222, 1),
(223, 1),
(224, 1),
(225, 1),
(226, 1),
(227, 1),
(228, 1),
(229, 1),
(230, 1),
(231, 1),
(232, 1),
(233, 1),
(234, 1),
(235, 1),
(236, 1),
(237, 1),
(238, 1),
(239, 1),
(240, 1),
(241, 1),
(242, 1),
(243, 1),
(244, 1),
(245, 1),
(246, 1),
(247, 1),
(248, 1),
(249, 1),
(250, 1),
(251, 1),
(252, 1),
(253, 1),
(254, 1),
(255, 1),
(256, 1),
(257, 1),
(258, 1),
(259, 1),
(260, 1),
(261, 1),
(262, 1),
(263, 1),
(264, 1),
(265, 1),
(266, 1),
(267, 1),
(268, 1),
(269, 1),
(270, 1),
(271, 1),
(272, 1),
(273, 1),
(274, 1),
(275, 1),
(276, 1),
(277, 1),
(278, 1),
(279, 1),
(280, 1),
(281, 1),
(282, 1),
(283, 1),
(284, 1),
(285, 1),
(286, 1),
(287, 1),
(288, 1),
(289, 1),
(290, 1),
(291, 1),
(292, 1),
(293, 1),
(294, 1),
(295, 1),
(296, 1),
(297, 1),
(298, 1),
(299, 1),
(300, 1),
(301, 1),
(302, 1),
(303, 1),
(304, 1),
(305, 1),
(306, 1),
(307, 1),
(308, 1),
(309, 1),
(310, 1),
(311, 1),
(312, 1),
(313, 1),
(314, 1),
(315, 1),
(316, 1),
(317, 1),
(318, 1),
(319, 1),
(320, 1),
(321, 1),
(322, 1),
(323, 1),
(324, 1),
(325, 1),
(326, 1),
(327, 1),
(328, 1),
(329, 1),
(330, 1),
(331, 1),
(332, 1),
(333, 1),
(334, 1),
(335, 1),
(336, 1),
(337, 1),
(338, 1),
(339, 1),
(340, 1),
(341, 1),
(342, 1),
(343, 1),
(344, 1),
(345, 1),
(346, 1),
(347, 1),
(348, 1),
(349, 1),
(350, 1),
(351, 1),
(352, 1),
(353, 1),
(354, 1),
(355, 1),
(356, 1),
(357, 1),
(358, 1),
(359, 1),
(360, 1),
(361, 1),
(362, 0),
(363, 0),
(364, 1),
(365, 1),
(366, 0),
(367, 0),
(368, 0),
(369, 0),
(370, 0),
(371, 0),
(372, 0),
(373, 0),
(374, 0),
(375, 0),
(376, 0),
(377, 1),
(378, 0),
(379, 0),
(380, 0),
(381, 0),
(382, 0),
(383, 1),
(384, 0),
(385, 0),
(386, 0),
(387, 0),
(388, 0),
(389, 1);

-- --------------------------------------------------------

--
-- Table structure for table `PermissionAccessEntities`
--

CREATE TABLE `PermissionAccessEntities` (
  `peID` int(10) UNSIGNED NOT NULL,
  `petID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `PermissionAccessEntities`
--

INSERT INTO `PermissionAccessEntities` (`peID`, `petID`) VALUES
(1, 1),
(2, 1),
(6, 1),
(7, 2),
(3, 5),
(4, 6),
(5, 7);

-- --------------------------------------------------------

--
-- Table structure for table `PermissionAccessEntityGroups`
--

CREATE TABLE `PermissionAccessEntityGroups` (
  `pegID` int(10) UNSIGNED NOT NULL,
  `peID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `gID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `PermissionAccessEntityGroups`
--

INSERT INTO `PermissionAccessEntityGroups` (`pegID`, `peID`, `gID`) VALUES
(1, 1, 3),
(2, 2, 1),
(3, 6, 2);

-- --------------------------------------------------------

--
-- Table structure for table `PermissionAccessEntityGroupSets`
--

CREATE TABLE `PermissionAccessEntityGroupSets` (
  `peID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `gsID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `PermissionAccessEntitySiteGroups`
--

CREATE TABLE `PermissionAccessEntitySiteGroups` (
  `pegID` int(10) UNSIGNED NOT NULL,
  `peID` int(10) UNSIGNED NOT NULL,
  `siteGID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `PermissionAccessEntityTypeCategories`
--

CREATE TABLE `PermissionAccessEntityTypeCategories` (
  `petID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pkCategoryID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `PermissionAccessEntityTypeCategories`
--

INSERT INTO `PermissionAccessEntityTypeCategories` (`petID`, `pkCategoryID`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(8, 1),
(1, 4),
(2, 4),
(3, 4),
(4, 4),
(1, 5),
(2, 5),
(3, 5),
(4, 5),
(6, 5),
(1, 6),
(2, 6),
(3, 6),
(4, 6),
(6, 6),
(1, 7),
(2, 7),
(3, 7),
(4, 7),
(1, 8),
(2, 8),
(3, 8),
(4, 8),
(1, 9),
(2, 9),
(3, 9),
(4, 9),
(1, 10),
(2, 10),
(3, 10),
(4, 10),
(1, 11),
(2, 11),
(3, 11),
(4, 11),
(1, 12),
(2, 12),
(3, 12),
(4, 12),
(1, 13),
(2, 13),
(3, 13),
(4, 13),
(1, 14),
(2, 14),
(3, 14),
(4, 14),
(8, 14),
(1, 15),
(2, 15),
(3, 15),
(4, 15),
(5, 15),
(8, 15),
(1, 16),
(2, 16),
(3, 16),
(4, 16),
(1, 17),
(2, 17),
(3, 17),
(4, 17),
(1, 18),
(2, 18),
(3, 18),
(4, 18),
(1, 19),
(2, 19),
(3, 19),
(4, 19),
(1, 20),
(2, 20),
(3, 20),
(4, 20),
(1, 21),
(2, 21),
(3, 21),
(4, 21),
(7, 21),
(1, 22),
(2, 22),
(3, 22),
(4, 22),
(7, 22),
(1, 23),
(2, 23),
(4, 23),
(1, 24),
(2, 24),
(3, 24),
(4, 24),
(1, 25),
(2, 25),
(3, 25),
(4, 25),
(1, 26),
(2, 26),
(3, 26),
(4, 26);

-- --------------------------------------------------------

--
-- Table structure for table `PermissionAccessEntityTypes`
--

CREATE TABLE `PermissionAccessEntityTypes` (
  `petID` int(10) UNSIGNED NOT NULL,
  `petHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `petName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pkgID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `PermissionAccessEntityTypes`
--

INSERT INTO `PermissionAccessEntityTypes` (`petID`, `petHandle`, `petName`, `pkgID`) VALUES
(1, 'group', 'Group', 0),
(2, 'user', 'User', 0),
(3, 'group_set', 'Group Set', 0),
(4, 'group_combination', 'Group Combination', 0),
(5, 'page_owner', 'Page Owner', 0),
(6, 'file_uploader', 'File Uploader', 0),
(7, 'conversation_message_author', 'Message Author', 0),
(8, 'site_group', 'Site Group', 0);

-- --------------------------------------------------------

--
-- Table structure for table `PermissionAccessEntityUsers`
--

CREATE TABLE `PermissionAccessEntityUsers` (
  `peID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `uID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `PermissionAccessEntityUsers`
--

INSERT INTO `PermissionAccessEntityUsers` (`peID`, `uID`) VALUES
(7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `PermissionAccessList`
--

CREATE TABLE `PermissionAccessList` (
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `peID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pdID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `accessType` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `PermissionAccessList`
--

INSERT INTO `PermissionAccessList` (`paID`, `peID`, `pdID`, `accessType`) VALUES
(1, 1, 0, 10),
(2, 1, 0, 10),
(3, 1, 0, 10),
(4, 1, 0, 10),
(5, 1, 0, 10),
(6, 1, 0, 10),
(7, 1, 0, 10),
(8, 1, 0, 10),
(9, 1, 0, 10),
(10, 2, 0, 10),
(11, 1, 0, 10),
(12, 1, 0, 10),
(13, 1, 0, 10),
(14, 1, 0, 10),
(15, 1, 0, 10),
(16, 2, 0, 10),
(17, 1, 0, 10),
(18, 1, 0, 10),
(19, 1, 0, 10),
(20, 1, 0, 10),
(21, 1, 0, 10),
(22, 1, 0, 10),
(23, 1, 0, 10),
(24, 1, 0, 10),
(25, 1, 0, 10),
(26, 1, 0, 10),
(27, 1, 0, 10),
(28, 1, 0, 10),
(29, 1, 0, 10),
(30, 1, 0, 10),
(31, 1, 0, 10),
(32, 1, 0, 10),
(33, 1, 0, 10),
(34, 1, 0, 10),
(35, 1, 0, 10),
(36, 1, 0, 10),
(36, 2, 0, 10),
(37, 1, 0, 10),
(37, 2, 0, 10),
(38, 1, 0, 10),
(39, 1, 0, 10),
(40, 3, 0, 10),
(41, 3, 0, 10),
(42, 3, 0, 10),
(43, 3, 0, 10),
(44, 1, 0, 10),
(45, 2, 0, 10),
(46, 2, 0, 10),
(47, 2, 0, 10),
(48, 3, 0, 10),
(49, 3, 0, 10),
(50, 3, 0, 10),
(51, 3, 0, 10),
(52, 3, 0, 10),
(53, 3, 0, 10),
(54, 2, 0, 10),
(55, 1, 0, 10),
(55, 2, 0, 10),
(56, 1, 0, 10),
(57, 1, 0, 10),
(58, 1, 0, 10),
(59, 1, 0, 10),
(60, 1, 0, 10),
(61, 1, 0, 10),
(62, 1, 0, 10),
(63, 1, 0, 10),
(64, 1, 0, 10),
(65, 2, 0, 10),
(66, 2, 0, 10),
(67, 2, 0, 10),
(68, 2, 0, 10),
(69, 1, 0, 10),
(70, 1, 0, 10),
(71, 1, 0, 10),
(72, 1, 0, 10),
(73, 1, 0, 10),
(74, 1, 0, 10),
(75, 1, 0, 10),
(76, 1, 0, 10),
(77, 1, 0, 10),
(78, 1, 0, 10),
(79, 1, 0, 10),
(80, 1, 0, 10),
(81, 1, 0, 10),
(82, 1, 0, 10),
(83, 1, 0, 10),
(84, 1, 0, 10),
(85, 1, 0, 10),
(86, 1, 0, 10),
(87, 1, 0, 10),
(88, 2, 0, 10),
(89, 1, 0, 10),
(90, 1, 0, 10),
(91, 1, 0, 10),
(92, 1, 0, 10),
(93, 1, 0, 10),
(94, 1, 0, 10),
(95, 1, 0, 10),
(96, 1, 0, 10),
(97, 1, 0, 10),
(98, 1, 0, 10),
(99, 1, 0, 10),
(100, 1, 0, 10),
(101, 1, 0, 10),
(102, 1, 0, 10),
(103, 1, 0, 10),
(104, 1, 0, 10),
(105, 1, 0, 10),
(106, 1, 0, 10),
(107, 1, 0, 10),
(108, 1, 0, 10),
(109, 1, 0, 10),
(110, 1, 0, 10),
(111, 2, 0, 10),
(112, 2, 0, 10),
(113, 1, 0, 10),
(113, 5, 0, 10),
(114, 1, 0, 10),
(114, 5, 0, 10),
(115, 1, 0, 10),
(115, 6, 0, 10),
(116, 1, 0, 10),
(117, 1, 0, 10),
(118, 1, 0, 10),
(120, 1, 0, 10),
(156, 1, 0, 10),
(173, 1, 0, 10),
(190, 1, 0, 10),
(224, 2, 0, 10),
(292, 1, 0, 10),
(309, 1, 0, 10),
(361, 1, 0, 10),
(362, 1, 0, 10),
(363, 1, 0, 10),
(365, 1, 0, 10),
(367, 1, 0, 10),
(370, 1, 0, 10),
(371, 1, 0, 10),
(372, 1, 0, 10),
(373, 1, 0, 10),
(374, 1, 0, 10),
(375, 1, 0, 10),
(377, 3, 0, 10),
(378, 1, 0, 10),
(379, 1, 0, 10),
(380, 1, 0, 10),
(381, 1, 0, 10),
(382, 1, 0, 10),
(383, 1, 0, 10),
(384, 1, 0, 10),
(385, 1, 0, 10),
(386, 1, 0, 10),
(388, 1, 0, 10),
(389, 1, 0, 10);

-- --------------------------------------------------------

--
-- Table structure for table `PermissionAccessWorkflows`
--

CREATE TABLE `PermissionAccessWorkflows` (
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `wfID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `PermissionAssignments`
--

CREATE TABLE `PermissionAssignments` (
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pkID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `PermissionAssignments`
--

INSERT INTO `PermissionAssignments` (`paID`, `pkID`) VALUES
(383, 19),
(364, 20),
(3, 75),
(4, 76),
(5, 77),
(0, 79),
(7, 80),
(8, 81),
(119, 82),
(9, 83),
(10, 84),
(11, 85),
(12, 86),
(13, 87),
(14, 88),
(15, 89),
(16, 90),
(0, 113),
(0, 115),
(0, 116),
(0, 117),
(0, 118),
(0, 119),
(0, 120),
(0, 121),
(0, 122),
(0, 123),
(0, 124),
(0, 125),
(29, 126),
(30, 127),
(0, 128),
(0, 129),
(39, 130);

-- --------------------------------------------------------

--
-- Table structure for table `PermissionDurationObjects`
--

CREATE TABLE `PermissionDurationObjects` (
  `pdID` int(10) UNSIGNED NOT NULL,
  `pdObject` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `PermissionKeyCategories`
--

CREATE TABLE `PermissionKeyCategories` (
  `pkCategoryID` int(10) UNSIGNED NOT NULL,
  `pkCategoryHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pkgID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `PermissionKeyCategories`
--

INSERT INTO `PermissionKeyCategories` (`pkCategoryID`, `pkCategoryHandle`, `pkgID`) VALUES
(1, 'page', NULL),
(2, 'single_page', NULL),
(3, 'stack', NULL),
(4, 'user', NULL),
(5, 'file_folder', NULL),
(6, 'file', NULL),
(7, 'area', NULL),
(8, 'block_type', NULL),
(9, 'block', NULL),
(10, 'admin', NULL),
(11, 'notification', NULL),
(12, 'sitemap', NULL),
(13, 'marketplace_newsflow', NULL),
(14, 'basic_workflow', NULL),
(15, 'page_type', NULL),
(16, 'gathering', NULL),
(17, 'group_tree_node', NULL),
(18, 'express_tree_node', NULL),
(19, 'category_tree_node', NULL),
(20, 'topic_tree_node', NULL),
(21, 'conversation', NULL),
(22, 'conversation_message', NULL),
(23, 'multilingual_section', NULL),
(24, 'calendar_admin', NULL),
(25, 'calendar', NULL),
(26, 'express_entry', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `PermissionKeys`
--

CREATE TABLE `PermissionKeys` (
  `pkID` int(10) UNSIGNED NOT NULL,
  `pkHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pkName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pkCanTriggerWorkflow` tinyint(1) NOT NULL DEFAULT '0',
  `pkHasCustomClass` tinyint(1) NOT NULL DEFAULT '0',
  `pkDescription` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pkCategoryID` int(10) UNSIGNED DEFAULT NULL,
  `pkgID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `PermissionKeys`
--

INSERT INTO `PermissionKeys` (`pkID`, `pkHandle`, `pkName`, `pkCanTriggerWorkflow`, `pkHasCustomClass`, `pkDescription`, `pkCategoryID`, `pkgID`) VALUES
(1, 'view_page', 'View', 0, 0, 'Can see a page exists and read its content.', 1, 0),
(2, 'view_page_versions', 'View Versions', 0, 0, 'Can view the page versions dialog and read past versions of a page.', 1, 0),
(3, 'view_page_in_sitemap', 'View Page in Sitemap', 0, 0, 'Controls whether a user can see a page in the sitemap or intelligent search.', 1, 0),
(4, 'preview_page_as_user', 'Preview Page As User', 0, 0, 'Ability to see what this page will look like at a specific time in the future as a specific user.', 1, 0),
(5, 'edit_page_properties', 'Edit Properties', 0, 1, 'Ability to change anything in the Page Properties menu.', 1, 0),
(6, 'edit_page_contents', 'Edit Contents', 0, 0, 'Ability to make edits to at least some of the content in the page. You can lock down different block areas and specific blocks by clicking Permissions on them as well. ', 1, 0),
(7, 'edit_page_speed_settings', 'Edit Speed Settings', 0, 0, 'Ability to change caching settings.', 1, 0),
(8, 'edit_page_theme', 'Change Theme', 0, 1, 'Ability to change just the theme for this page.', 1, 0),
(9, 'edit_page_template', 'Change Page Template', 0, 0, 'Ability to change just the page template for this page.', 1, 0),
(10, 'edit_page_page_type', 'Edit Page Type', 0, 0, 'Change the type of an existing page.', 1, 0),
(11, 'edit_page_permissions', 'Edit Permissions', 1, 0, 'Ability to change permissions for this page. Warning: by granting this a user could give themselves more access.', 1, 0),
(12, 'delete_page', 'Delete', 1, 0, 'Ability to move this page to the site\'s Trash.', 1, 0),
(13, 'delete_page_versions', 'Delete Versions', 1, 0, 'Ability to remove old versions of this page.', 1, 0),
(14, 'approve_page_versions', 'Approve Changes', 1, 0, 'Can publish an unapproved version of the page.', 1, 0),
(15, 'add_subpage', 'Add Sub-Page', 0, 1, 'Can add a page beneath the current page.', 1, 0),
(16, 'move_or_copy_page', 'Move or Copy Page', 1, 0, 'Can move or copy this page to another location.', 1, 0),
(17, 'schedule_page_contents_guest_access', 'Schedule Guest Access', 0, 0, 'Can control scheduled guest access to this page.', 1, 0),
(18, 'edit_page_multilingual_settings', 'Edit Multilingual Settings', 0, 0, 'Controls whether a user can see the multilingual settings menu, re-map a page or set a page as ignored in multilingual settings.', 1, 0),
(19, 'add_block', 'Add Block', 0, 1, 'Can add a block to any area on the site. If someone is added here they can add blocks to any area (unless that area has permissions that override these global permissions.)', 8, 0),
(20, 'add_stack', 'Add Stack', 0, 0, 'Can add a stack or block from a stack to any area on the site. If someone is added here they can add stacks to any area (unless that area has permissions that override these global permissions.)', 8, 0),
(21, 'view_area', 'View Area', 0, 0, 'Can view the area and its contents.', 7, 0),
(22, 'edit_area_contents', 'Edit Area Contents', 0, 0, 'Can edit blocks within this area.', 7, 0),
(23, 'add_block_to_area', 'Add Block to Area', 0, 1, 'Can add blocks to this area. This setting overrides the global Add Block permission for this area.', 7, 0),
(24, 'add_stack_to_area', 'Add Stack to Area', 0, 0, 'Can add stacks to this area. This setting overrides the global Add Stack permission for this area.', 7, 0),
(25, 'add_layout_to_area', 'Add Layouts to Area', 0, 0, 'Controls whether users get the ability to add layouts to a particular area.', 7, 0),
(26, 'edit_area_design', 'Edit Area Design', 0, 0, 'Controls whether users see design controls and can modify an area\'s custom CSS.', 7, 0),
(27, 'edit_area_permissions', 'Edit Area Permissions', 0, 0, 'Controls whether users can access the permissions on an area. Custom area permissions could override those of the page.', 7, 0),
(28, 'delete_area_contents', 'Delete Area Contents', 0, 0, 'Controls whether users can delete blocks from this area.', 7, 0),
(29, 'schedule_area_contents_guest_access', 'Schedule Guest Access', 0, 0, 'Controls whether users can schedule guest access permissions on blocks in this area. Guest Access is a shortcut for granting permissions just to the Guest Group.', 7, 0),
(30, 'view_block', 'View Block', 0, 0, 'Controls whether users can view this block in the page.', 9, 0),
(31, 'edit_block', 'Edit Block', 0, 0, 'Controls whether users can edit this block. This overrides any area or page permissions.', 9, 0),
(32, 'edit_block_custom_template', 'Change Block Template', 0, 0, 'Controls whether users can change the block template on this block. This overrides any area or page permissions.', 9, 0),
(33, 'edit_block_cache_settings', 'Edit Cache Settings', 0, 0, 'Controls whether users can change the block cache settings for this block instance.', 9, 0),
(34, 'edit_block_name', 'Edit Name', 0, 0, 'Controls whether users can change the block\'s name (rarely used.)', 9, 0),
(35, 'delete_block', 'Delete Block', 0, 0, 'Controls whether users can delete this block. This overrides any area or page permissions.', 9, 0),
(36, 'edit_block_design', 'Edit Design', 0, 0, 'Controls whether users can set custom design properties or CSS on this block.', 9, 0),
(37, 'edit_block_permissions', 'Edit Permissions', 0, 0, 'Controls whether users can change permissions on this block, potentially granting themselves or others greater access.', 9, 0),
(38, 'schedule_guest_access', 'Schedule Guest Access', 0, 0, 'Controls whether users can schedule guest access permissions on this block. Guest Access is a shortcut for granting permissions just to the Guest Group.', 9, 0),
(39, 'view_file_folder_file', 'View Files', 0, 0, 'View files within folder in the site.', 5, 0),
(40, 'search_file_folder', 'Search File Folder', 0, 0, 'See this file folder in the file manager', 5, 0),
(41, 'edit_file_folder', 'Edit File Folder', 0, 0, 'Edit a file folder.', 5, 0),
(42, 'edit_file_folder_file_properties', 'Edit File Properties', 0, 0, 'Can edit a file\'s properties.', 5, 0),
(43, 'edit_file_folder_file_contents', 'Edit File Contents', 0, 0, 'Can edit or replace files in folder.', 5, 0),
(44, 'copy_file_folder_files', 'Copy File', 0, 0, 'Can copy files in file folder.', 5, 0),
(45, 'edit_file_folder_permissions', 'Edit File Access', 0, 0, 'Can edit access to file folder.', 5, 0),
(46, 'delete_file_folder', 'Delete File Set', 0, 0, 'Can delete file folder.', 5, 0),
(47, 'delete_file_folder_files', 'Delete File', 0, 0, 'Can delete files in folder.', 5, 0),
(48, 'add_file', 'Add File', 0, 1, 'Can add files to folder.', 5, 0),
(49, 'view_file', 'View Files', 0, 0, 'Can view and download files.', 6, 0),
(50, 'view_file_in_file_manager', 'View File in File Manager', 0, 0, 'Can access the File Manager.', 6, 0),
(51, 'edit_file_properties', 'Edit File Properties', 0, 0, 'Can edit a file\'s properties.', 6, 0),
(52, 'edit_file_contents', 'Edit File Contents', 0, 0, 'Can edit or replace files.', 6, 0),
(53, 'copy_file', 'Copy File', 0, 0, 'Can copy file.', 6, 0),
(54, 'edit_file_permissions', 'Edit File Access', 0, 0, 'Can edit access to file.', 6, 0),
(55, 'delete_file', 'Delete File', 0, 0, 'Can delete file.', 6, 0),
(56, 'approve_basic_workflow_action', 'Approve or Deny', 0, 0, 'Grant ability to approve workflow.', 14, 0),
(57, 'notify_on_basic_workflow_entry', 'Notify on Entry', 0, 0, 'Notify approvers that a change has entered the workflow.', 14, 0),
(58, 'notify_on_basic_workflow_approve', 'Notify on Approve', 0, 0, 'Notify approvers that a change has been approved.', 14, 0),
(59, 'notify_on_basic_workflow_deny', 'Notify on Deny', 0, 0, 'Notify approvers that a change has been denied.', 14, 0),
(60, 'add_page_type', 'Add Pages of This Type', 0, 0, '', 15, 0),
(61, 'edit_page_type', 'Edit Page Type', 0, 0, '', 15, 0),
(62, 'delete_page_type', 'Delete Page Type', 0, 0, '', 15, 0),
(63, 'edit_page_type_permissions', 'Edit Page Type Permissions', 0, 0, '', 15, 0),
(64, 'edit_page_type_drafts', 'Edit Page Type Drafts', 0, 0, '', 15, 0),
(65, 'view_topic_tree_node', 'View Topic Tree Node', 0, 0, '', 20, 0),
(66, 'view_category_tree_node', 'View Category Tree Node', 0, 0, '', 19, 0),
(67, 'add_conversation_message', 'Add Message to Conversation', 0, 1, '', 21, 0),
(68, 'add_conversation_message_attachments', 'Add Message Attachments', 0, 0, '', 21, 0),
(69, 'edit_conversation_permissions', 'Edit Conversation Permissions', 0, 0, '', 21, 0),
(70, 'delete_conversation_message', 'Delete Message', 0, 0, '', 21, 0),
(71, 'edit_conversation_message', 'Edit Message', 0, 0, '', 21, 0),
(72, 'rate_conversation_message', 'Rate Message', 0, 0, '', 21, 0),
(73, 'flag_conversation_message', 'Flag Message', 0, 0, '', 21, 0),
(74, 'approve_conversation_message', 'Approve Message', 0, 0, '', 21, 0),
(75, 'edit_user_properties', 'Edit User Details', 0, 1, NULL, 4, 0),
(76, 'view_user_attributes', 'View User Attributes', 0, 1, NULL, 4, 0),
(77, 'activate_user', 'Activate/Deactivate User', 1, 0, NULL, 4, 0),
(78, 'sudo', 'Sign in as User', 0, 0, NULL, 4, 0),
(79, 'upgrade', 'Upgrade concrete5', 0, 0, NULL, 10, 0),
(80, 'access_group_search', 'Access Group Search', 0, 0, NULL, 4, 0),
(81, 'delete_user', 'Delete User', 1, 0, NULL, 4, 0),
(82, 'notify_in_notification_center', 'Notify in Notification Center', 0, 1, 'Controls who receives updates in the notification center.', 11, 0),
(83, 'add_calendar', 'Add Calendar', 0, 0, '', 24, 0),
(84, 'view_calendars', 'View Calendars', 0, 0, '', 24, 0),
(85, 'edit_calendars', 'Edit Calendars', 0, 0, '', 24, 0),
(86, 'edit_calendars_permissions', 'Edit Permissions', 0, 0, '', 24, 0),
(87, 'add_calendar_events', 'Add Calendar Events', 0, 0, '', 24, 0),
(88, 'approve_calendar_events', 'Approve Calendar Events', 1, 0, '', 24, 0),
(89, 'delete_calendars', 'Delete Calendars', 0, 0, '', 24, 0),
(90, 'access_calendar_rss_feeds', 'Access RSS Feeds', 0, 0, '', 24, 0),
(91, 'view_calendar', 'View Calendar', 0, 0, '', 25, 0),
(92, 'view_calendar_in_edit_interface', 'View in Edit Interface', 0, 0, '', 25, 0),
(93, 'edit_calendar_permissions', 'Edit Permissions', 0, 0, '', 25, 0),
(94, 'edit_calendar', 'Edit Calendar', 0, 0, '', 25, 0),
(95, 'add_calendar_event', 'Add Calendar Event', 0, 0, '', 25, 0),
(96, 'approve_calendar_event', 'Approve Calendar Event', 1, 0, '', 25, 0),
(97, 'edit_calendar_event_more_details_location', 'Modify More Details Location', 0, 0, '', 25, 0),
(98, 'edit_calendar_events', 'Edit Calendar Events', 0, 0, '', 25, 0),
(99, 'access_calendar_rss_feed', 'Access RSS Feed', 0, 0, '', 25, 0),
(100, 'delete_calendar', 'Delete Calendar', 0, 0, '', 25, 0),
(101, 'view_express_entries', 'View Entries', 0, 0, NULL, 18, 0),
(102, 'add_express_entries', 'Add Entry', 0, 0, NULL, 18, 0),
(103, 'edit_express_entries', 'Edit Entry', 0, 0, NULL, 18, 0),
(104, 'delete_express_entries', 'Delete Entry', 0, 0, NULL, 18, 0),
(105, 'view_express_entry', 'View Entries', 0, 0, NULL, 26, 0),
(106, 'edit_express_entry', 'Edit Entry', 0, 0, NULL, 26, 0),
(107, 'delete_express_entry', 'Delete Entry', 0, 0, NULL, 26, 0),
(108, 'search_users_in_group', 'Search User Group', 0, 0, NULL, 17, 0),
(109, 'edit_group', 'Edit Group', 0, 0, NULL, 17, 0),
(110, 'assign_group', 'Assign Group', 0, 0, NULL, 17, 0),
(111, 'add_sub_group', 'Add Child Group', 0, 0, NULL, 17, 0),
(112, 'edit_group_permissions', 'Edit Group Permissions', 0, 0, NULL, 17, 0),
(113, 'access_page_type_permissions', 'Access Page Type Permissions', 0, 0, NULL, 10, 0),
(114, 'access_task_permissions', 'Access Task Permissions', 0, 0, NULL, 10, 0),
(115, 'access_sitemap', 'Access Sitemap', 0, 0, NULL, 12, 0),
(116, 'access_page_defaults', 'Access Page Type Defaults', 0, 0, NULL, 10, 0),
(117, 'customize_themes', 'Customize Themes', 0, 0, NULL, 10, 0),
(118, 'manage_layout_presets', 'Manage Layout Presets', 0, 0, NULL, 10, 0),
(119, 'empty_trash', 'Empty Trash', 0, 0, NULL, 10, 0),
(120, 'add_topic_tree', 'Add Topic Tree', 0, 0, NULL, 10, 0),
(121, 'remove_topic_tree', 'Remove Topic Tree', 0, 0, NULL, 10, 0),
(122, 'view_in_maintenance_mode', 'View Site in Maintenance Mode', 0, 0, 'Ability to see and use the website when concrete5 is in maintenance mode.', 10, 0),
(123, 'uninstall_packages', 'Uninstall Packages', 0, 0, NULL, 13, 0),
(124, 'install_packages', 'Install Packages', 0, 0, NULL, 13, 0),
(125, 'view_newsflow', 'View Newsflow', 0, 0, NULL, 13, 0),
(126, 'access_user_search_export', 'Export Site Users', 0, 0, 'Controls whether a user can export site users or not', 4, 0),
(127, 'access_user_search', 'Access User Search', 0, 0, 'Controls whether a user can view the search user interface.', 4, 0),
(128, 'edit_topic_tree', 'Edit Topic Tree', 0, 0, NULL, 10, 0),
(129, 'edit_gatherings', 'Edit Gatherings', 0, 0, 'Can edit the footprint and items in all gatherings.', 10, 0),
(130, 'edit_gathering_items', 'Edit Gathering Items', 0, 0, '', 16, 0);

-- --------------------------------------------------------

--
-- Table structure for table `PileContents`
--

CREATE TABLE `PileContents` (
  `pcID` int(10) UNSIGNED NOT NULL,
  `pID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `itemID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `itemType` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `displayOrder` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Piles`
--

CREATE TABLE `Piles` (
  `pID` int(10) UNSIGNED NOT NULL,
  `uID` int(10) UNSIGNED DEFAULT NULL,
  `isDefault` tinyint(1) NOT NULL DEFAULT '0',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Piles`
--

INSERT INTO `Piles` (`pID`, `uID`, `isDefault`, `timestamp`, `name`, `state`) VALUES
(1, 2, 1, '2021-08-23 14:37:21', NULL, 'READY');

-- --------------------------------------------------------

--
-- Table structure for table `PrivateMessageNotifications`
--

CREATE TABLE `PrivateMessageNotifications` (
  `msgID` int(10) UNSIGNED NOT NULL,
  `nID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `QueueMessages`
--

CREATE TABLE `QueueMessages` (
  `message_id` int(10) UNSIGNED NOT NULL,
  `queue_id` int(10) UNSIGNED NOT NULL,
  `handle` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `md5` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `timeout` decimal(14,0) DEFAULT NULL,
  `created` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `QueuePageDuplicationRelations`
--

CREATE TABLE `QueuePageDuplicationRelations` (
  `queue_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `originalCID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Queues`
--

CREATE TABLE `Queues` (
  `queue_id` int(10) UNSIGNED NOT NULL,
  `queue_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `timeout` int(10) UNSIGNED NOT NULL DEFAULT '30'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `SavedExpressSearchQueries`
--

CREATE TABLE `SavedExpressSearchQueries` (
  `id` int(11) NOT NULL,
  `presetName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `query_fields` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:object)',
  `query_columns` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:object)',
  `query_itemsPerPage` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `SavedFileSearchQueries`
--

CREATE TABLE `SavedFileSearchQueries` (
  `id` int(11) NOT NULL,
  `presetName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `query_fields` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:object)',
  `query_columns` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:object)',
  `query_itemsPerPage` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `SavedPageSearchQueries`
--

CREATE TABLE `SavedPageSearchQueries` (
  `id` int(11) NOT NULL,
  `presetName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `query_fields` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:object)',
  `query_columns` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:object)',
  `query_itemsPerPage` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `SavedUserSearchQueries`
--

CREATE TABLE `SavedUserSearchQueries` (
  `id` int(11) NOT NULL,
  `presetName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `query_fields` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:object)',
  `query_columns` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:object)',
  `query_itemsPerPage` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Sessions`
--

CREATE TABLE `Sessions` (
  `sessionID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sessionValue` longtext COLLATE utf8mb4_unicode_ci,
  `sessionTime` int(10) UNSIGNED NOT NULL,
  `sessionLifeTime` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `SiblingPageRelations`
--

CREATE TABLE `SiblingPageRelations` (
  `mpRelationID` int(10) UNSIGNED NOT NULL,
  `cID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `SiteAttributeKeys`
--

CREATE TABLE `SiteAttributeKeys` (
  `akID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `SiteAttributeValues`
--

CREATE TABLE `SiteAttributeValues` (
  `siteID` int(10) UNSIGNED NOT NULL,
  `akID` int(10) UNSIGNED NOT NULL,
  `avID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `SiteDomains`
--

CREATE TABLE `SiteDomains` (
  `domainID` int(10) UNSIGNED NOT NULL,
  `domain` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `siteID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `SiteGroupRelations`
--

CREATE TABLE `SiteGroupRelations` (
  `groupRelationID` int(10) UNSIGNED NOT NULL,
  `gID` int(10) UNSIGNED NOT NULL,
  `siteGID` int(10) UNSIGNED DEFAULT NULL,
  `siteID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `SiteGroups`
--

CREATE TABLE `SiteGroups` (
  `siteGID` int(10) UNSIGNED NOT NULL,
  `groupName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `siteTypeID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `SiteLocales`
--

CREATE TABLE `SiteLocales` (
  `siteLocaleID` int(10) UNSIGNED NOT NULL,
  `msIsDefault` tinyint(1) NOT NULL,
  `msLanguage` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `msCountry` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `msNumPlurals` int(11) NOT NULL,
  `msPluralRule` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL,
  `msPluralCases` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `siteID` int(10) UNSIGNED DEFAULT NULL,
  `siteTreeID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `SiteLocales`
--

INSERT INTO `SiteLocales` (`siteLocaleID`, `msIsDefault`, `msLanguage`, `msCountry`, `msNumPlurals`, `msPluralRule`, `msPluralCases`, `siteID`, `siteTreeID`) VALUES
(1, 1, 'en', 'MY', 2, 'n != 1', 'one@1\nother@0, 2~16, 100, 1000, 10000, 100000, 1000000, …', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `Sites`
--

CREATE TABLE `Sites` (
  `siteID` int(10) UNSIGNED NOT NULL,
  `pThemeID` int(10) UNSIGNED NOT NULL,
  `siteIsDefault` tinyint(1) NOT NULL,
  `siteHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `siteTypeID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Sites`
--

INSERT INTO `Sites` (`siteID`, `pThemeID`, `siteIsDefault`, `siteHandle`, `siteTypeID`) VALUES
(1, 3, 1, 'default', 1);

-- --------------------------------------------------------

--
-- Table structure for table `SiteSearchIndexAttributes`
--

CREATE TABLE `SiteSearchIndexAttributes` (
  `siteID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `SiteSkeletonLocales`
--

CREATE TABLE `SiteSkeletonLocales` (
  `skeletonLocaleID` int(10) UNSIGNED NOT NULL,
  `msLanguage` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `msCountry` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `msNumPlurals` int(11) NOT NULL,
  `msPluralRule` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL,
  `msPluralCases` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `siteSkeletonID` int(10) UNSIGNED DEFAULT NULL,
  `siteTreeID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `SiteSkeletons`
--

CREATE TABLE `SiteSkeletons` (
  `siteSkeletonID` int(10) UNSIGNED NOT NULL,
  `siteTypeID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `SiteSkeletonTrees`
--

CREATE TABLE `SiteSkeletonTrees` (
  `skeletonLocaleID` int(10) UNSIGNED DEFAULT NULL,
  `siteTypeID` int(10) UNSIGNED DEFAULT NULL,
  `siteTreeID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `SiteTrees`
--

CREATE TABLE `SiteTrees` (
  `siteTreeID` int(10) UNSIGNED NOT NULL,
  `siteHomePageID` int(10) UNSIGNED NOT NULL,
  `treeType` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `SiteTrees`
--

INSERT INTO `SiteTrees` (`siteTreeID`, `siteHomePageID`, `treeType`) VALUES
(1, 1, 'sitetree');

-- --------------------------------------------------------

--
-- Table structure for table `SiteTreeTrees`
--

CREATE TABLE `SiteTreeTrees` (
  `siteLocaleID` int(10) UNSIGNED DEFAULT NULL,
  `siteTreeID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `SiteTreeTrees`
--

INSERT INTO `SiteTreeTrees` (`siteLocaleID`, `siteTreeID`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `SiteTypeAttributeKeys`
--

CREATE TABLE `SiteTypeAttributeKeys` (
  `akID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `SiteTypeAttributeValues`
--

CREATE TABLE `SiteTypeAttributeValues` (
  `siteSkeletonID` int(10) UNSIGNED DEFAULT NULL,
  `akID` int(10) UNSIGNED NOT NULL,
  `avID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `SiteTypes`
--

CREATE TABLE `SiteTypes` (
  `siteTypeID` int(10) UNSIGNED NOT NULL,
  `siteTypeHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `siteTypeName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `siteTypeThemeID` int(11) NOT NULL,
  `siteTypeHomePageTemplateID` int(11) NOT NULL,
  `pkgID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `SiteTypes`
--

INSERT INTO `SiteTypes` (`siteTypeID`, `siteTypeHandle`, `siteTypeName`, `siteTypeThemeID`, `siteTypeHomePageTemplateID`, `pkgID`) VALUES
(1, 'default', 'Default Site Type', 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `SocialLinks`
--

CREATE TABLE `SocialLinks` (
  `ssHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slID` int(11) NOT NULL,
  `siteID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `SocialLinks`
--

INSERT INTO `SocialLinks` (`ssHandle`, `url`, `slID`, `siteID`) VALUES
('facebook', 'http://facebook.com/concrete5', 1, 1),
('github', 'http://github.com/concrete5', 2, 1),
('twitter', 'http://twitter.com/concrete5', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `Stacks`
--

CREATE TABLE `Stacks` (
  `stID` int(10) UNSIGNED NOT NULL,
  `stName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stType` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `stMultilingualSection` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Stacks`
--

INSERT INTO `Stacks` (`stID`, `stName`, `stType`, `cID`, `stMultilingualSection`) VALUES
(1, 'Footer Contact', 20, 184, 0),
(2, 'Footer Legal', 20, 185, 0),
(3, 'Footer Navigation', 20, 186, 0),
(4, 'Footer Site Title', 20, 187, 0),
(5, 'Footer Social', 20, 188, 0),
(6, 'Header Navigation', 20, 189, 0),
(7, 'Header Search', 20, 190, 0),
(8, 'Header Site Title', 20, 191, 0),
(9, 'AdminLTE Search', 20, 225, 0),
(10, 'AdminLTE Navigation', 20, 226, 0),
(11, 'Title Header', 20, 227, 0);

-- --------------------------------------------------------

--
-- Table structure for table `StackUsageRecord`
--

CREATE TABLE `StackUsageRecord` (
  `stack_id` int(11) NOT NULL,
  `block_id` int(11) NOT NULL,
  `collection_id` int(11) NOT NULL,
  `collection_version_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `StyleCustomizerCustomCssRecords`
--

CREATE TABLE `StyleCustomizerCustomCssRecords` (
  `value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `sccRecordID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `StyleCustomizerInlineStylePresets`
--

CREATE TABLE `StyleCustomizerInlineStylePresets` (
  `pssPresetID` int(10) UNSIGNED NOT NULL,
  `pssPresetName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `issID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `StyleCustomizerInlineStyleSets`
--

CREATE TABLE `StyleCustomizerInlineStyleSets` (
  `issID` int(11) NOT NULL,
  `customClass` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customID` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customElementAttribute` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `backgroundColor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `backgroundImageFileID` int(11) NOT NULL,
  `backgroundRepeat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `backgroundSize` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `backgroundPosition` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `borderColor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `borderStyle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `borderWidth` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `borderRadius` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `baseFontSize` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alignment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `textColor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkColor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `marginTop` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `marginBottom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `marginLeft` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `marginRight` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paddingTop` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paddingBottom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paddingLeft` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paddingRight` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rotate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `boxShadowHorizontal` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `boxShadowVertical` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `boxShadowBlur` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `boxShadowSpread` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `boxShadowColor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hideOnExtraSmallDevice` tinyint(1) DEFAULT NULL,
  `hideOnSmallDevice` tinyint(1) DEFAULT NULL,
  `hideOnMediumDevice` tinyint(1) DEFAULT NULL,
  `hideOnLargeDevice` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `StyleCustomizerInlineStyleSets`
--

INSERT INTO `StyleCustomizerInlineStyleSets` (`issID`, `customClass`, `customID`, `customElementAttribute`, `backgroundColor`, `backgroundImageFileID`, `backgroundRepeat`, `backgroundSize`, `backgroundPosition`, `borderColor`, `borderStyle`, `borderWidth`, `borderRadius`, `baseFontSize`, `alignment`, `textColor`, `linkColor`, `marginTop`, `marginBottom`, `marginLeft`, `marginRight`, `paddingTop`, `paddingBottom`, `paddingLeft`, `paddingRight`, `rotate`, `boxShadowHorizontal`, `boxShadowVertical`, `boxShadowBlur`, `boxShadowSpread`, `boxShadowColor`, `hideOnExtraSmallDevice`, `hideOnSmallDevice`, `hideOnMediumDevice`, `hideOnLargeDevice`) VALUES
(1, 'concrete5-org-stories', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
(2, 'block-sidebar-wrapped', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
(3, 'block-sidebar-wrapped', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
(4, 'block-sidebar-wrapped', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
(5, 'blog-entry-list', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
(6, 'block-sidebar-wrapped', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
(7, 'block-sidebar-padded', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
(8, '', '', '', '', 0, 'no-repeat', '', '', '', 'none', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
(9, 'feature-home-page', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
(10, 'feature-home-page', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
(11, 'feature-home-page', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
(12, '', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '80px', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
(13, 'recent-blog-entry', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
(14, 'recent-blog-entry', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
(15, 'area-content-accent', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
(16, 'area-content-accent', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
(17, 'testimonial-bio', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
(18, 'testimonial-bio', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
(19, 'testimonial-bio', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
(20, 'testimonial-bio', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
(21, 'testimonial-bio', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
(22, 'testimonial-bio', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
(23, 'testimonial-bio', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
(24, 'testimonial-bio', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
(25, 'image-right-tilt', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
(26, 'image-circle', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
(27, 'image-right-tilt', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
(28, 'page-list-with-buttons', '', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0),
(29, NULL, NULL, NULL, NULL, 17, 'no-repeat', 'auto', 'center top', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0),
(30, NULL, NULL, NULL, NULL, 17, 'no-repeat', 'auto', 'center top', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0),
(31, NULL, NULL, NULL, NULL, 17, 'no-repeat', 'cover', 'center top', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0),
(32, NULL, NULL, NULL, NULL, 17, 'no-repeat', 'cover', 'center top', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `StyleCustomizerValueLists`
--

CREATE TABLE `StyleCustomizerValueLists` (
  `scvlID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `StyleCustomizerValues`
--

CREATE TABLE `StyleCustomizerValues` (
  `scvID` int(10) UNSIGNED NOT NULL,
  `scvlID` int(10) UNSIGNED DEFAULT NULL,
  `value` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `SystemAntispamLibraries`
--

CREATE TABLE `SystemAntispamLibraries` (
  `saslHandle` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `saslName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `saslIsActive` tinyint(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `SystemCaptchaLibraries`
--

CREATE TABLE `SystemCaptchaLibraries` (
  `sclHandle` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sclName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sclIsActive` tinyint(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `SystemCaptchaLibraries`
--

INSERT INTO `SystemCaptchaLibraries` (`sclHandle`, `sclName`, `sclIsActive`, `pkgID`) VALUES
('recaptchaV3', 'reCAPTCHA v3', 0, 0),
('securimage', 'SecurImage (Default)', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `SystemContentEditorSnippets`
--

CREATE TABLE `SystemContentEditorSnippets` (
  `scsHandle` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scsName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scsIsActive` tinyint(1) NOT NULL DEFAULT '0',
  `pkgID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `SystemContentEditorSnippets`
--

INSERT INTO `SystemContentEditorSnippets` (`scsHandle`, `scsName`, `scsIsActive`, `pkgID`) VALUES
('page_name', 'Page Name', 1, 0),
('user_name', 'User Name', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `SystemDatabaseMigrations`
--

CREATE TABLE `SystemDatabaseMigrations` (
  `version` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `SystemDatabaseMigrations`
--

INSERT INTO `SystemDatabaseMigrations` (`version`) VALUES
('20140919000000'),
('20140930000000'),
('20141017000000'),
('20141024000000'),
('20141113000000'),
('20141219000000'),
('20150109000000'),
('20150504000000'),
('20150515000000'),
('20150610000000'),
('20150612000000'),
('20150615000000'),
('20150616000000'),
('20150619000000'),
('20150622000000'),
('20150623000000'),
('20150713000000'),
('20150731000000'),
('20151221000000'),
('20160107000000'),
('20160213000000'),
('20160314000000'),
('20160412000000'),
('20160615000000'),
('20160725000000'),
('20161109000000'),
('20161203000000'),
('20161208000000'),
('20161216000000'),
('20161216100000'),
('20170118000000'),
('20170123000000'),
('20170201000000'),
('20170202000000'),
('20170227063249'),
('20170313000000'),
('20170316000000'),
('20170404000000'),
('20170406000000'),
('20170407000001'),
('20170412000000'),
('20170418000000'),
('20170420000000'),
('20170421000000'),
('20170424000000'),
('20170505000000'),
('20170512000000'),
('20170519000000'),
('20170608000000'),
('20170608100000'),
('20170609000000'),
('20170609100000'),
('20170610000000'),
('20170611000000'),
('20170613000000'),
('20170614000000'),
('20170626000000'),
('20170711151953'),
('20170731021618'),
('20170802000000'),
('20170804000000'),
('20170810000000'),
('20170818000000'),
('20170824000000'),
('20170905000000'),
('20170915000000'),
('20170926000000'),
('20171012000000'),
('20171025000000'),
('20171109000000'),
('20171109065758'),
('20171110032423'),
('20171121000000'),
('20171129190607'),
('20171218000000'),
('20171221194440'),
('20180119000000'),
('20180122213656'),
('20180122220813'),
('20180123000000'),
('20180126000000'),
('20180130000000'),
('20180212000000'),
('20180213000000'),
('20180227035239'),
('20180308043255'),
('20180328215345'),
('20180329183749'),
('20180330080830'),
('20180403143200'),
('20180518153531'),
('20180524000000'),
('20180531000000'),
('20180604000000'),
('20180609000000'),
('20180615000000'),
('20180617000000'),
('20180621222449'),
('20180622192332'),
('20180627000000'),
('20180709175202'),
('20180710203437'),
('20180716000000'),
('20180717000000'),
('20180813220933'),
('20180816210727'),
('20180820205800'),
('20180831213421'),
('20180904165911'),
('20180907091500'),
('20180910000000'),
('20180912113737'),
('20180920000000'),
('20180926000000'),
('20180926070200'),
('20180926070300'),
('20181006212300'),
('20181006212400'),
('20181019010145'),
('20181029223809'),
('20181105102800'),
('20181112211702'),
('20181116072400'),
('20181211000000'),
('20181211100000'),
('20181212000000'),
('20181212221911'),
('20181222183445'),
('20190106000000'),
('20190110194848'),
('20190110231015'),
('20190111181236'),
('20190112000000'),
('20190129000000'),
('20190225000000'),
('20190225184524'),
('20190301133300'),
('20190309000000'),
('20190310000000'),
('20190416224702'),
('20190417180607'),
('20190422235040'),
('20190504005632'),
('20190508232235'),
('20190509000000'),
('20190509205043'),
('20190513164028'),
('20190516204806'),
('20190520171430'),
('20190522202749'),
('20190619141521'),
('20190625177700'),
('20190625177710'),
('20190708000000'),
('20190717090600'),
('20190817000000'),
('20190822160700'),
('20190826000000'),
('20190925072210'),
('20191002000000'),
('20200118043285'),
('20200203000000'),
('20200501000000'),
('20200609145307'),
('20201116182100');

-- --------------------------------------------------------

--
-- Table structure for table `SystemDatabaseQueryLog`
--

CREATE TABLE `SystemDatabaseQueryLog` (
  `ID` int(10) UNSIGNED NOT NULL,
  `query` text COLLATE utf8mb4_unicode_ci,
  `params` text COLLATE utf8mb4_unicode_ci,
  `executionMS` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `TopicTrees`
--

CREATE TABLE `TopicTrees` (
  `treeID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `topicTreeName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `TopicTrees`
--

INSERT INTO `TopicTrees` (`treeID`, `topicTreeName`) VALUES
(4, 'Blog Entries'),
(5, 'Projects'),
(6, 'Event Categories');

-- --------------------------------------------------------

--
-- Table structure for table `TreeFileFolderNodes`
--

CREATE TABLE `TreeFileFolderNodes` (
  `treeNodeID` int(10) UNSIGNED NOT NULL,
  `fslID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `TreeFileNodes`
--

CREATE TABLE `TreeFileNodes` (
  `treeNodeID` int(10) UNSIGNED NOT NULL,
  `fID` int(10) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `TreeFileNodes`
--

INSERT INTO `TreeFileNodes` (`treeNodeID`, `fID`) VALUES
(8, 1),
(9, 2),
(10, 3),
(11, 4),
(12, 5),
(13, 6),
(14, 7),
(15, 8),
(16, 9),
(17, 10),
(18, 11),
(19, 12),
(20, 13),
(21, 14),
(22, 15),
(23, 16),
(44, 17);

-- --------------------------------------------------------

--
-- Table structure for table `TreeGroupNodes`
--

CREATE TABLE `TreeGroupNodes` (
  `treeNodeID` int(10) UNSIGNED NOT NULL,
  `gID` int(10) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `TreeGroupNodes`
--

INSERT INTO `TreeGroupNodes` (`treeNodeID`, `gID`) VALUES
(2, 1),
(3, 2),
(4, 3);

-- --------------------------------------------------------

--
-- Table structure for table `TreeNodePermissionAssignments`
--

CREATE TABLE `TreeNodePermissionAssignments` (
  `treeNodeID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pkID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `TreeNodePermissionAssignments`
--

INSERT INTO `TreeNodePermissionAssignments` (`treeNodeID`, `pkID`, `paID`) VALUES
(7, 39, 55),
(7, 40, 56),
(7, 41, 57),
(7, 42, 58),
(7, 43, 59),
(7, 44, 60),
(7, 45, 61),
(7, 46, 63),
(7, 47, 62),
(7, 48, 64),
(7, 66, 44),
(24, 66, 45),
(33, 66, 46),
(38, 66, 47),
(5, 101, 37),
(6, 101, 32),
(5, 102, 33),
(6, 102, 36),
(5, 103, 34),
(6, 103, 34),
(5, 104, 35),
(6, 104, 35),
(1, 108, 106),
(1, 109, 107),
(1, 110, 108),
(1, 111, 109),
(1, 112, 110);

-- --------------------------------------------------------

--
-- Table structure for table `TreeNodes`
--

CREATE TABLE `TreeNodes` (
  `treeNodeID` int(10) UNSIGNED NOT NULL,
  `treeNodeTypeID` int(10) UNSIGNED DEFAULT '0',
  `treeID` int(10) UNSIGNED DEFAULT '0',
  `treeNodeParentID` int(10) UNSIGNED DEFAULT '0',
  `treeNodeDisplayOrder` int(10) UNSIGNED DEFAULT '0',
  `treeNodeName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `dateModified` datetime DEFAULT NULL,
  `dateCreated` datetime DEFAULT NULL,
  `treeNodeOverridePermissions` tinyint(1) DEFAULT '0',
  `inheritPermissionsFromTreeNodeID` int(10) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `TreeNodes`
--

INSERT INTO `TreeNodes` (`treeNodeID`, `treeNodeTypeID`, `treeID`, `treeNodeParentID`, `treeNodeDisplayOrder`, `treeNodeName`, `dateModified`, `dateCreated`, `treeNodeOverridePermissions`, `inheritPermissionsFromTreeNodeID`) VALUES
(1, 1, 1, 0, 0, '', '2021-08-23 11:09:57', '2021-08-23 11:09:57', 1, 1),
(2, 1, 1, 1, 0, '', '2021-08-23 11:09:57', '2021-08-23 11:09:57', 0, 1),
(3, 1, 1, 1, 1, '', '2021-08-23 11:09:57', '2021-08-23 11:09:57', 0, 1),
(4, 1, 1, 1, 2, '', '2021-08-23 11:09:57', '2021-08-23 11:09:57', 0, 1),
(5, 3, 2, 0, 0, '', '2021-08-23 11:10:15', '2021-08-23 11:10:15', 1, 5),
(6, 3, 2, 5, 0, 'Forms', '2021-08-23 17:12:05', '2021-08-23 11:10:15', 1, 6),
(7, 7, 3, 0, 0, '', '2021-08-23 23:09:04', '2021-08-23 11:15:24', 1, 7),
(8, 6, 3, 7, 0, '', '2021-08-23 11:15:25', '2021-08-23 11:15:25', 0, 7),
(9, 6, 3, 7, 1, '', '2021-08-23 11:15:28', '2021-08-23 11:15:28', 0, 7),
(10, 6, 3, 7, 2, '', '2021-08-23 11:15:28', '2021-08-23 11:15:28', 0, 7),
(11, 6, 3, 7, 3, '', '2021-08-23 11:15:29', '2021-08-23 11:15:29', 0, 7),
(12, 6, 3, 7, 4, '', '2021-08-23 11:15:30', '2021-08-23 11:15:30', 0, 7),
(13, 6, 3, 7, 5, '', '2021-08-23 11:15:30', '2021-08-23 11:15:30', 0, 7),
(14, 6, 3, 7, 6, '', '2021-08-23 11:15:31', '2021-08-23 11:15:31', 0, 7),
(15, 6, 3, 7, 7, '', '2021-08-23 11:15:32', '2021-08-23 11:15:32', 0, 7),
(16, 6, 3, 7, 8, '', '2021-08-23 11:15:33', '2021-08-23 11:15:33', 0, 7),
(17, 6, 3, 7, 9, '', '2021-08-23 11:15:34', '2021-08-23 11:15:34', 0, 7),
(18, 6, 3, 7, 10, '', '2021-08-23 11:15:35', '2021-08-23 11:15:35', 0, 7),
(19, 6, 3, 7, 11, '', '2021-08-23 11:15:36', '2021-08-23 11:15:36', 0, 7),
(20, 6, 3, 7, 12, '', '2021-08-23 11:15:38', '2021-08-23 11:15:38', 0, 7),
(21, 6, 3, 7, 13, '', '2021-08-23 11:15:39', '2021-08-23 11:15:39', 0, 7),
(22, 6, 3, 7, 14, '', '2021-08-23 11:15:40', '2021-08-23 11:15:40', 0, 7),
(23, 6, 3, 7, 15, '', '2021-08-23 11:15:42', '2021-08-23 11:15:42', 0, 7),
(24, 2, 4, 0, 0, '', '2021-08-23 11:15:48', '2021-08-23 11:15:48', 1, 24),
(25, 2, 4, 24, 0, 'Reviews', '2021-08-23 11:15:48', '2021-08-23 11:15:48', 0, 24),
(26, 5, 4, 25, 0, 'Gadgets', '2021-08-23 11:15:48', '2021-08-23 11:15:48', 0, 24),
(27, 5, 4, 25, 1, 'Movies', '2021-08-23 11:15:48', '2021-08-23 11:15:48', 0, 24),
(28, 5, 4, 25, 2, 'Books', '2021-08-23 11:15:48', '2021-08-23 11:15:48', 0, 24),
(29, 5, 4, 25, 3, 'Music', '2021-08-23 11:15:48', '2021-08-23 11:15:48', 0, 24),
(30, 5, 4, 24, 1, 'Projects', '2021-08-23 11:15:48', '2021-08-23 11:15:48', 0, 24),
(31, 5, 4, 24, 2, 'Sports', '2021-08-23 11:15:48', '2021-08-23 11:15:48', 0, 24),
(32, 5, 4, 24, 3, 'Humor', '2021-08-23 11:15:48', '2021-08-23 11:15:48', 0, 24),
(33, 2, 5, 0, 0, '', '2021-08-23 11:15:48', '2021-08-23 11:15:48', 1, 33),
(34, 5, 5, 33, 0, 'Crafts', '2021-08-23 11:15:48', '2021-08-23 11:15:48', 0, 33),
(35, 5, 5, 33, 1, 'Homework', '2021-08-23 11:15:48', '2021-08-23 11:15:48', 0, 33),
(36, 5, 5, 33, 2, 'Supplies', '2021-08-23 11:15:48', '2021-08-23 11:15:48', 0, 33),
(37, 5, 5, 33, 3, 'Activities', '2021-08-23 11:15:48', '2021-08-23 11:15:48', 0, 33),
(38, 2, 6, 0, 0, '', '2021-08-23 11:15:49', '2021-08-23 11:15:49', 1, 38),
(39, 5, 6, 38, 0, 'Meetings', '2021-08-23 11:15:49', '2021-08-23 11:15:49', 0, 38),
(40, 5, 6, 38, 1, 'Activities', '2021-08-23 11:15:49', '2021-08-23 11:15:49', 0, 38),
(41, 5, 6, 38, 2, 'Sports', '2021-08-23 11:15:49', '2021-08-23 11:15:49', 0, 38),
(42, 5, 6, 38, 3, 'Holidays', '2021-08-23 11:15:49', '2021-08-23 11:15:49', 0, 38),
(44, 6, 3, 7, 16, '', '2021-08-23 23:09:04', '2021-08-23 23:09:04', 0, 7);

-- --------------------------------------------------------

--
-- Table structure for table `TreeNodeTypes`
--

CREATE TABLE `TreeNodeTypes` (
  `treeNodeTypeID` int(10) UNSIGNED NOT NULL,
  `treeNodeTypeHandle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `pkgID` int(10) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `TreeNodeTypes`
--

INSERT INTO `TreeNodeTypes` (`treeNodeTypeID`, `treeNodeTypeHandle`, `pkgID`) VALUES
(1, 'group', 0),
(2, 'category', 0),
(3, 'express_entry_category', 0),
(4, 'express_entry_results', 0),
(5, 'topic', 0),
(6, 'file', 0),
(7, 'file_folder', 0),
(8, 'search_preset', 0);

-- --------------------------------------------------------

--
-- Table structure for table `Trees`
--

CREATE TABLE `Trees` (
  `treeID` int(10) UNSIGNED NOT NULL,
  `treeTypeID` int(10) UNSIGNED DEFAULT '0',
  `treeDateAdded` datetime DEFAULT NULL,
  `rootTreeNodeID` int(10) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Trees`
--

INSERT INTO `Trees` (`treeID`, `treeTypeID`, `treeDateAdded`, `rootTreeNodeID`) VALUES
(1, 1, '2021-08-23 11:09:57', 1),
(2, 2, '2021-08-23 11:10:15', 5),
(3, 4, '2021-08-23 11:15:24', 7),
(4, 3, '2021-08-23 11:15:48', 24),
(5, 3, '2021-08-23 11:15:48', 33),
(6, 3, '2021-08-23 11:15:49', 38);

-- --------------------------------------------------------

--
-- Table structure for table `TreeSearchQueryNodes`
--

CREATE TABLE `TreeSearchQueryNodes` (
  `treeNodeID` int(10) UNSIGNED NOT NULL,
  `savedSearchID` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `TreeTypes`
--

CREATE TABLE `TreeTypes` (
  `treeTypeID` int(10) UNSIGNED NOT NULL,
  `treeTypeHandle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `pkgID` int(10) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `TreeTypes`
--

INSERT INTO `TreeTypes` (`treeTypeID`, `treeTypeHandle`, `pkgID`) VALUES
(1, 'group', 0),
(2, 'express_entry_results', 0),
(3, 'topic', 0),
(4, 'file_manager', 0);

-- --------------------------------------------------------

--
-- Table structure for table `UsedStringLog`
--

CREATE TABLE `UsedStringLog` (
  `id` int(10) UNSIGNED NOT NULL,
  `usedString` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `UsedStringLog`
--

INSERT INTO `UsedStringLog` (`id`, `usedString`, `subject`, `date`) VALUES
(1, '$2y$10$y8iQ7435Mj/6PBuT8BouwOMN3nWnquH88wFn6vsb1Muq7jagFCOhu', 2, '2022-02-22 13:27:28');

-- --------------------------------------------------------

--
-- Table structure for table `UserAttributeKeys`
--

CREATE TABLE `UserAttributeKeys` (
  `uakProfileDisplay` tinyint(1) NOT NULL,
  `uakProfileEdit` tinyint(1) NOT NULL,
  `uakProfileEditRequired` tinyint(1) NOT NULL,
  `uakRegisterEdit` tinyint(1) NOT NULL,
  `uakRegisterEditRequired` tinyint(1) NOT NULL,
  `uakMemberListDisplay` tinyint(1) NOT NULL,
  `akID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `UserAttributeKeys`
--

INSERT INTO `UserAttributeKeys` (`uakProfileDisplay`, `uakProfileEdit`, `uakProfileEditRequired`, `uakRegisterEdit`, `uakRegisterEditRequired`, `uakMemberListDisplay`, `akID`) VALUES
(0, 1, 0, 1, 0, 0, 14),
(0, 1, 0, 1, 0, 0, 15),
(0, 0, 0, 0, 0, 0, 18);

-- --------------------------------------------------------

--
-- Table structure for table `UserAttributeValues`
--

CREATE TABLE `UserAttributeValues` (
  `uID` int(10) UNSIGNED NOT NULL,
  `akID` int(10) UNSIGNED NOT NULL,
  `avID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `UserAttributeValues`
--

INSERT INTO `UserAttributeValues` (`uID`, `akID`, `avID`) VALUES
(2, 14, 259),
(2, 15, 260);

-- --------------------------------------------------------

--
-- Table structure for table `UserDeactivatedNotifications`
--

CREATE TABLE `UserDeactivatedNotifications` (
  `userID` int(10) UNSIGNED NOT NULL,
  `actorID` int(10) UNSIGNED DEFAULT NULL,
  `nID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `UserGroups`
--

CREATE TABLE `UserGroups` (
  `uID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `gID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ugEntered` datetime NOT NULL DEFAULT '1000-01-01 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `UserGroups`
--

INSERT INTO `UserGroups` (`uID`, `gID`, `ugEntered`) VALUES
(2, 3, '2021-08-23 16:48:52');

-- --------------------------------------------------------

--
-- Table structure for table `UserLoginAttempts`
--

CREATE TABLE `UserLoginAttempts` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:guid)',
  `userId` int(10) UNSIGNED NOT NULL,
  `utcDate` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `UserPermissionEditPropertyAccessList`
--

CREATE TABLE `UserPermissionEditPropertyAccessList` (
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `peID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `uName` tinyint(1) DEFAULT '0',
  `uEmail` tinyint(1) DEFAULT '0',
  `uPassword` tinyint(1) DEFAULT '0',
  `uAvatar` tinyint(1) DEFAULT '0',
  `uTimezone` tinyint(1) DEFAULT '0',
  `uDefaultLanguage` tinyint(1) DEFAULT '0',
  `attributePermission` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `UserPermissionEditPropertyAttributeAccessListCustom`
--

CREATE TABLE `UserPermissionEditPropertyAttributeAccessListCustom` (
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `peID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `akID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `UserPermissionViewAttributeAccessList`
--

CREATE TABLE `UserPermissionViewAttributeAccessList` (
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `peID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `permission` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `UserPermissionViewAttributeAccessListCustom`
--

CREATE TABLE `UserPermissionViewAttributeAccessListCustom` (
  `paID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `peID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `akID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `UserPointActions`
--

CREATE TABLE `UserPointActions` (
  `upaID` int(11) NOT NULL,
  `upaHandle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upaName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upaDefaultPoints` int(11) NOT NULL DEFAULT '0',
  `pkgID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `upaHasCustomClass` tinyint(1) NOT NULL DEFAULT '0',
  `upaIsActive` tinyint(1) NOT NULL DEFAULT '1',
  `gBadgeID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `UserPointActions`
--

INSERT INTO `UserPointActions` (`upaID`, `upaHandle`, `upaName`, `upaDefaultPoints`, `pkgID`, `upaHasCustomClass`, `upaIsActive`, `gBadgeID`) VALUES
(1, 'won_badge', 'Won a Badge', 5, 0, 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `UserPointHistory`
--

CREATE TABLE `UserPointHistory` (
  `upID` int(11) NOT NULL,
  `upuID` int(11) NOT NULL DEFAULT '0',
  `upaID` int(11) DEFAULT '0',
  `upPoints` int(11) DEFAULT '0',
  `object` longtext COLLATE utf8mb4_unicode_ci,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `UserPrivateMessages`
--

CREATE TABLE `UserPrivateMessages` (
  `msgID` int(10) UNSIGNED NOT NULL,
  `uAuthorID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `msgDateCreated` datetime NOT NULL,
  `msgSubject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `msgBody` text COLLATE utf8mb4_unicode_ci,
  `uToID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `UserPrivateMessagesTo`
--

CREATE TABLE `UserPrivateMessagesTo` (
  `msgID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `uID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `uAuthorID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `msgMailboxID` int(11) NOT NULL,
  `msgIsNew` tinyint(1) NOT NULL DEFAULT '0',
  `msgIsUnread` tinyint(1) NOT NULL DEFAULT '0',
  `msgIsReplied` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Users`
--

CREATE TABLE `Users` (
  `uID` int(10) UNSIGNED NOT NULL,
  `uName` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uEmail` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uPassword` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uIsActive` tinyint(1) NOT NULL,
  `uIsFullRecord` tinyint(1) NOT NULL,
  `uIsValidated` tinyint(1) NOT NULL DEFAULT '-1',
  `uDateAdded` datetime NOT NULL,
  `uLastPasswordChange` datetime NOT NULL,
  `uHasAvatar` tinyint(1) NOT NULL,
  `uLastOnline` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `uLastLogin` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `uPreviousLogin` int(10) UNSIGNED DEFAULT '0',
  `uNumLogins` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `uLastAuthTypeID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `uLastIP` longtext COLLATE utf8mb4_unicode_ci,
  `uTimezone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uDefaultLanguage` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uIsPasswordReset` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Users`
--

INSERT INTO `Users` (`uID`, `uName`, `uEmail`, `uPassword`, `uIsActive`, `uIsFullRecord`, `uIsValidated`, `uDateAdded`, `uLastPasswordChange`, `uHasAvatar`, `uLastOnline`, `uLastLogin`, `uPreviousLogin`, `uNumLogins`, `uLastAuthTypeID`, `uLastIP`, `uTimezone`, `uDefaultLanguage`, `uIsPasswordReset`) VALUES
(1, 'Admin', 'nasir_roney@yahoo.com', '$2a$12$U0IT7gLrabMzaqt5qmEDkeyXqiaQYMEMPkl48MnlGe/LqjZwwrA.W', 1, 1, 1, '2021-08-23 11:09:58', '2021-08-23 11:09:58', 0, 1645507647, 1645507480, 1630034573, 12, 1, '00000000000000000000000000000001', NULL, NULL, 0),
(2, 'Nasir', 'nasir.roney88@gmail.com', '$2a$12$Or7KZNxxoRqzhRobMTRzw.gKIGQy9xZHaxKUU.n1edRykkdXBlZ2.', 1, 1, 1, '2021-08-23 16:48:51', '2022-02-22 13:27:28', 0, 1645507702, 1645507696, 1629859388, 9, 1, '00000000000000000000000000000001', NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `UserSearchIndexAttributes`
--

CREATE TABLE `UserSearchIndexAttributes` (
  `uID` int(10) UNSIGNED NOT NULL,
  `ak_profile_private_messages_enabled` tinyint(1) DEFAULT '0',
  `ak_profile_private_messages_notification_enabled` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `UserSearchIndexAttributes`
--

INSERT INTO `UserSearchIndexAttributes` (`uID`, `ak_profile_private_messages_enabled`, `ak_profile_private_messages_notification_enabled`) VALUES
(2, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `UserSignupNotifications`
--

CREATE TABLE `UserSignupNotifications` (
  `usID` int(10) UNSIGNED DEFAULT NULL,
  `nID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `UserSignups`
--

CREATE TABLE `UserSignups` (
  `usID` int(10) UNSIGNED NOT NULL,
  `uID` int(10) UNSIGNED DEFAULT NULL,
  `createdBy` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `UserValidationHashes`
--

CREATE TABLE `UserValidationHashes` (
  `uvhID` int(10) UNSIGNED NOT NULL,
  `uID` int(10) UNSIGNED DEFAULT NULL,
  `uHash` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `uDateGenerated` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `uDateRedeemed` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `UserValidationHashes`
--

INSERT INTO `UserValidationHashes` (`uvhID`, `uID`, `uHash`, `type`, `uDateGenerated`, `uDateRedeemed`) VALUES
(1, 1, 'e1584a2ed3687a4a9bfbef0980b5024c3aef2b6fa7926935d893c1e912ce2e24', 1, 1645506609, 0);

-- --------------------------------------------------------

--
-- Table structure for table `UserWorkflowProgress`
--

CREATE TABLE `UserWorkflowProgress` (
  `uID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `wpID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `WorkflowProgress`
--

CREATE TABLE `WorkflowProgress` (
  `wpID` int(10) UNSIGNED NOT NULL,
  `wpCategoryID` int(10) UNSIGNED DEFAULT NULL,
  `wfID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `wpApproved` tinyint(1) NOT NULL DEFAULT '0',
  `wpDateAdded` datetime DEFAULT NULL,
  `wpDateLastAction` datetime DEFAULT NULL,
  `wpCurrentStatus` int(11) NOT NULL DEFAULT '0',
  `wrID` int(11) NOT NULL DEFAULT '0',
  `wpIsCompleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `WorkflowProgressCategories`
--

CREATE TABLE `WorkflowProgressCategories` (
  `wpCategoryID` int(10) UNSIGNED NOT NULL,
  `wpCategoryHandle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pkgID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `WorkflowProgressCategories`
--

INSERT INTO `WorkflowProgressCategories` (`wpCategoryID`, `wpCategoryHandle`, `pkgID`) VALUES
(1, 'page', NULL),
(2, 'file', NULL),
(3, 'user', NULL),
(4, 'calendar_event', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `WorkflowProgressHistory`
--

CREATE TABLE `WorkflowProgressHistory` (
  `wphID` int(10) UNSIGNED NOT NULL,
  `wpID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `object` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `WorkflowProgressHistory`
--

INSERT INTO `WorkflowProgressHistory` (`wphID`, `wpID`, `timestamp`, `object`) VALUES
(1, 1, '2021-08-23 07:05:30', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":11:{s:14:"\0*\0wrStatusNum";i:30;s:62:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled";b:0;s:64:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate";N;s:67:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate";N;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";i:14;s:3:"cID";i:222;s:4:"cvID";s:1:"1";}'),
(2, 2, '2021-08-23 07:16:18', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":11:{s:14:"\0*\0wrStatusNum";i:30;s:62:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled";b:0;s:64:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate";N;s:67:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate";N;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:1:"2";s:5:"error";s:0:"";s:4:"pkID";i:14;s:3:"cID";i:224;s:4:"cvID";s:1:"2";}'),
(3, 3, '2021-08-23 07:17:18', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":11:{s:14:"\0*\0wrStatusNum";i:30;s:62:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled";b:0;s:64:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate";N;s:67:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate";N;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:1:"3";s:5:"error";s:0:"";s:4:"pkID";i:14;s:3:"cID";i:222;s:4:"cvID";s:1:"2";}'),
(4, 4, '2021-08-23 07:20:12', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":11:{s:14:"\0*\0wrStatusNum";i:30;s:62:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled";b:0;s:64:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate";N;s:67:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate";N;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:1:"4";s:5:"error";s:0:"";s:4:"pkID";i:14;s:3:"cID";i:224;s:4:"cvID";s:1:"3";}'),
(5, 5, '2021-08-23 07:56:02', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":11:{s:14:"\0*\0wrStatusNum";i:30;s:62:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled";b:0;s:64:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate";N;s:67:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate";N;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:1:"5";s:5:"error";s:0:"";s:4:"pkID";i:14;s:3:"cID";i:228;s:4:"cvID";s:1:"2";}'),
(6, 6, '2021-08-23 07:56:29', 'O:48:"Concrete\\Core\\Workflow\\Request\\DeletePageRequest":7:{s:14:"\0*\0wrStatusNum";i:100;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:1:"6";s:5:"error";s:0:"";s:4:"pkID";i:12;s:3:"cID";i:235;}'),
(7, 7, '2021-08-23 07:58:51', 'O:48:"Concrete\\Core\\Workflow\\Request\\DeletePageRequest":7:{s:14:"\0*\0wrStatusNum";i:100;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:1:"7";s:5:"error";s:0:"";s:4:"pkID";i:12;s:3:"cID";i:230;}'),
(8, 8, '2021-08-23 07:59:11', 'O:48:"Concrete\\Core\\Workflow\\Request\\DeletePageRequest":7:{s:14:"\0*\0wrStatusNum";i:100;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:1:"8";s:5:"error";s:0:"";s:4:"pkID";i:12;s:3:"cID";i:231;}'),
(9, 9, '2021-08-23 08:00:00', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":11:{s:14:"\0*\0wrStatusNum";i:30;s:62:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled";b:0;s:64:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate";N;s:67:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate";N;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:1:"9";s:5:"error";s:0:"";s:4:"pkID";i:14;s:3:"cID";i:228;s:4:"cvID";s:1:"3";}'),
(10, 10, '2021-08-23 08:00:12', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":11:{s:14:"\0*\0wrStatusNum";i:30;s:62:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled";b:0;s:64:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate";N;s:67:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate";N;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"10";s:5:"error";s:0:"";s:4:"pkID";i:14;s:3:"cID";i:229;s:4:"cvID";s:1:"2";}'),
(11, 11, '2021-08-23 08:00:26', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":11:{s:14:"\0*\0wrStatusNum";i:30;s:62:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled";b:0;s:64:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate";N;s:67:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate";N;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"11";s:5:"error";s:0:"";s:4:"pkID";i:14;s:3:"cID";i:234;s:4:"cvID";s:1:"2";}'),
(12, 12, '2021-08-23 08:00:43', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":11:{s:14:"\0*\0wrStatusNum";i:30;s:62:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled";b:0;s:64:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate";N;s:67:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate";N;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"12";s:5:"error";s:0:"";s:4:"pkID";i:14;s:3:"cID";i:232;s:4:"cvID";s:1:"2";}'),
(13, 13, '2021-08-23 08:00:56', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":11:{s:14:"\0*\0wrStatusNum";i:30;s:62:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled";b:0;s:64:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate";N;s:67:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate";N;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"13";s:5:"error";s:0:"";s:4:"pkID";i:14;s:3:"cID";i:233;s:4:"cvID";s:1:"2";}'),
(14, 14, '2021-08-23 08:05:33', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":11:{s:14:"\0*\0wrStatusNum";i:30;s:62:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled";b:0;s:64:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate";N;s:67:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate";N;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"14";s:5:"error";s:0:"";s:4:"pkID";i:14;s:3:"cID";i:222;s:4:"cvID";s:1:"3";}'),
(15, 15, '2021-08-23 08:05:49', 'O:48:"Concrete\\Core\\Workflow\\Request\\DeletePageRequest":7:{s:14:"\0*\0wrStatusNum";i:100;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"15";s:5:"error";s:0:"";s:4:"pkID";i:12;s:3:"cID";i:201;}'),
(16, 16, '2021-08-23 08:06:03', 'O:48:"Concrete\\Core\\Workflow\\Request\\DeletePageRequest":7:{s:14:"\0*\0wrStatusNum";i:100;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"16";s:5:"error";s:0:"";s:4:"pkID";i:12;s:3:"cID";i:200;}'),
(17, 17, '2021-08-23 08:06:17', 'O:48:"Concrete\\Core\\Workflow\\Request\\DeletePageRequest":7:{s:14:"\0*\0wrStatusNum";i:100;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"17";s:5:"error";s:0:"";s:4:"pkID";i:12;s:3:"cID";i:199;}'),
(18, 18, '2021-08-23 08:06:32', 'O:48:"Concrete\\Core\\Workflow\\Request\\DeletePageRequest":7:{s:14:"\0*\0wrStatusNum";i:100;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"18";s:5:"error";s:0:"";s:4:"pkID";i:12;s:3:"cID";i:198;}'),
(19, 19, '2021-08-23 08:06:46', 'O:48:"Concrete\\Core\\Workflow\\Request\\DeletePageRequest":7:{s:14:"\0*\0wrStatusNum";i:100;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"19";s:5:"error";s:0:"";s:4:"pkID";i:12;s:3:"cID";i:196;}'),
(20, 20, '2021-08-23 08:06:58', 'O:48:"Concrete\\Core\\Workflow\\Request\\DeletePageRequest":7:{s:14:"\0*\0wrStatusNum";i:100;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"20";s:5:"error";s:0:"";s:4:"pkID";i:12;s:3:"cID";i:196;}'),
(21, 21, '2021-08-23 08:07:57', 'O:48:"Concrete\\Core\\Workflow\\Request\\DeletePageRequest":7:{s:14:"\0*\0wrStatusNum";i:100;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"21";s:5:"error";s:0:"";s:4:"pkID";i:12;s:3:"cID";i:195;}'),
(22, 22, '2021-08-23 08:08:38', 'O:48:"Concrete\\Core\\Workflow\\Request\\DeletePageRequest":7:{s:14:"\0*\0wrStatusNum";i:100;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"22";s:5:"error";s:0:"";s:4:"pkID";i:12;s:3:"cID";i:193;}'),
(23, 23, '2021-08-23 08:09:51', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":11:{s:14:"\0*\0wrStatusNum";i:30;s:62:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled";b:0;s:64:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate";N;s:67:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate";N;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"23";s:5:"error";s:0:"";s:4:"pkID";i:14;s:3:"cID";i:228;s:4:"cvID";s:1:"4";}'),
(24, 24, '2021-08-23 08:36:13', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":11:{s:14:"\0*\0wrStatusNum";i:30;s:62:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled";b:0;s:64:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate";N;s:67:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate";N;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"24";s:5:"error";s:0:"";s:4:"pkID";i:14;s:3:"cID";i:183;s:4:"cvID";s:1:"2";}'),
(25, 25, '2021-08-23 08:37:34', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":11:{s:14:"\0*\0wrStatusNum";i:30;s:62:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled";b:0;s:64:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate";N;s:67:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate";N;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"25";s:5:"error";s:0:"";s:4:"pkID";i:14;s:3:"cID";i:169;s:4:"cvID";s:1:"2";}'),
(26, 26, '2021-08-23 08:40:21', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":11:{s:14:"\0*\0wrStatusNum";i:30;s:62:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled";b:0;s:64:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate";N;s:67:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate";N;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"26";s:5:"error";s:0:"";s:4:"pkID";i:14;s:3:"cID";i:169;s:4:"cvID";s:1:"3";}'),
(27, 27, '2021-08-23 08:57:07', 'O:46:"Concrete\\Core\\Workflow\\Request\\MovePageRequest":9:{s:12:"\0*\0targetCID";i:2;s:14:"\0*\0wrStatusNum";i:50;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"27";s:5:"error";s:0:"";s:4:"pkID";i:16;s:3:"cID";i:224;s:15:"saveOldPagePath";b:0;}'),
(28, 28, '2021-08-23 08:57:33', 'O:48:"Concrete\\Core\\Workflow\\Request\\DeletePageRequest":7:{s:14:"\0*\0wrStatusNum";i:100;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"28";s:5:"error";s:0:"";s:4:"pkID";i:12;s:3:"cID";i:222;}'),
(29, 29, '2021-08-23 09:22:29', 'O:70:"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsInheritanceRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"29";s:5:"error";s:0:"";s:4:"pkID";i:11;s:3:"cID";i:169;s:11:"inheritance";s:8:"OVERRIDE";}'),
(30, 30, '2021-08-23 09:22:47', 'O:59:"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"30";s:5:"error";s:0:"";s:4:"pkID";i:11;s:3:"cID";i:169;s:13:"permissionSet";O:28:"Concrete\\Core\\Permission\\Set":2:{s:14:"\0*\0permissions";a:18:{i:1;s:3:"310";i:2;s:3:"310";i:3;s:1:"0";i:4;s:3:"319";i:5;s:3:"311";i:6;s:3:"312";i:7;s:3:"313";i:8;s:3:"315";i:9;s:3:"317";i:10;s:3:"316";i:11;s:3:"318";i:12;s:3:"321";i:13;s:3:"322";i:14;s:3:"323";i:15;s:3:"324";i:16;s:3:"325";i:17;s:3:"320";i:18;s:3:"314";}s:19:"\0*\0pkCategoryHandle";s:4:"page";}}'),
(31, 31, '2021-08-23 09:23:52', 'O:59:"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"31";s:5:"error";s:0:"";s:4:"pkID";i:11;s:3:"cID";i:2;s:13:"permissionSet";O:28:"Concrete\\Core\\Permission\\Set":2:{s:14:"\0*\0permissions";a:18:{i:1;s:3:"309";i:2;s:3:"310";i:3;s:3:"309";i:4;s:3:"319";i:5;s:3:"311";i:6;s:3:"312";i:7;s:3:"313";i:8;s:3:"315";i:9;s:3:"317";i:10;s:3:"316";i:11;s:3:"318";i:12;s:3:"321";i:13;s:3:"322";i:14;s:3:"323";i:15;s:3:"324";i:16;s:3:"325";i:17;s:3:"320";i:18;s:3:"314";}s:19:"\0*\0pkCategoryHandle";s:4:"page";}}'),
(32, 32, '2021-08-23 09:25:01', 'O:70:"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsInheritanceRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"32";s:5:"error";s:0:"";s:4:"pkID";i:11;s:3:"cID";i:26;s:11:"inheritance";s:8:"OVERRIDE";}'),
(33, 33, '2021-08-23 09:25:14', 'O:59:"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"33";s:5:"error";s:0:"";s:4:"pkID";i:11;s:3:"cID";i:26;s:13:"permissionSet";O:28:"Concrete\\Core\\Permission\\Set":2:{s:14:"\0*\0permissions";a:18:{i:1;s:3:"310";i:2;s:3:"310";i:3;s:3:"319";i:4;s:3:"319";i:5;s:3:"311";i:6;s:3:"312";i:7;s:3:"313";i:8;s:3:"315";i:9;s:3:"317";i:10;s:3:"316";i:11;s:3:"318";i:12;s:3:"321";i:13;s:3:"322";i:14;s:3:"323";i:15;s:3:"324";i:16;s:3:"325";i:17;s:3:"320";i:18;s:3:"314";}s:19:"\0*\0pkCategoryHandle";s:4:"page";}}'),
(34, 34, '2021-08-23 09:25:45', 'O:70:"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsInheritanceRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"34";s:5:"error";s:0:"";s:4:"pkID";i:11;s:3:"cID";i:32;s:11:"inheritance";s:8:"OVERRIDE";}'),
(35, 35, '2021-08-23 09:25:57', 'O:59:"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"35";s:5:"error";s:0:"";s:4:"pkID";i:11;s:3:"cID";i:32;s:13:"permissionSet";O:28:"Concrete\\Core\\Permission\\Set":2:{s:14:"\0*\0permissions";a:18:{i:1;s:3:"310";i:2;s:3:"310";i:3;s:3:"319";i:4;s:3:"319";i:5;s:3:"311";i:6;s:3:"312";i:7;s:3:"313";i:8;s:3:"315";i:9;s:3:"317";i:10;s:3:"316";i:11;s:3:"318";i:12;s:3:"321";i:13;s:3:"322";i:14;s:3:"323";i:15;s:3:"324";i:16;s:3:"325";i:17;s:3:"320";i:18;s:3:"314";}s:19:"\0*\0pkCategoryHandle";s:4:"page";}}'),
(36, 36, '2021-08-23 09:26:22', 'O:70:"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsInheritanceRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"36";s:5:"error";s:0:"";s:4:"pkID";i:11;s:3:"cID";i:47;s:11:"inheritance";s:8:"OVERRIDE";}'),
(37, 37, '2021-08-23 09:26:32', 'O:59:"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"37";s:5:"error";s:0:"";s:4:"pkID";i:11;s:3:"cID";i:47;s:13:"permissionSet";O:28:"Concrete\\Core\\Permission\\Set":2:{s:14:"\0*\0permissions";a:18:{i:1;s:3:"310";i:2;s:3:"310";i:3;s:3:"319";i:4;s:3:"319";i:5;s:3:"311";i:6;s:3:"312";i:7;s:3:"313";i:8;s:3:"315";i:9;s:3:"317";i:10;s:3:"316";i:11;s:3:"318";i:12;s:3:"321";i:13;s:3:"322";i:14;s:3:"323";i:15;s:3:"324";i:16;s:3:"325";i:17;s:3:"320";i:18;s:3:"314";}s:19:"\0*\0pkCategoryHandle";s:4:"page";}}'),
(38, 38, '2021-08-23 09:26:58', 'O:70:"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsInheritanceRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"38";s:5:"error";s:0:"";s:4:"pkID";i:11;s:3:"cID";i:53;s:11:"inheritance";s:8:"OVERRIDE";}'),
(39, 39, '2021-08-23 09:27:08', 'O:59:"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"39";s:5:"error";s:0:"";s:4:"pkID";i:11;s:3:"cID";i:53;s:13:"permissionSet";O:28:"Concrete\\Core\\Permission\\Set":2:{s:14:"\0*\0permissions";a:18:{i:1;s:3:"310";i:2;s:3:"310";i:3;s:3:"319";i:4;s:3:"319";i:5;s:3:"311";i:6;s:3:"312";i:7;s:3:"313";i:8;s:3:"315";i:9;s:3:"317";i:10;s:3:"316";i:11;s:3:"318";i:12;s:3:"321";i:13;s:3:"322";i:14;s:3:"323";i:15;s:3:"324";i:16;s:3:"325";i:17;s:3:"320";i:18;s:3:"314";}s:19:"\0*\0pkCategoryHandle";s:4:"page";}}'),
(40, 40, '2021-08-23 09:27:30', 'O:70:"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsInheritanceRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"40";s:5:"error";s:0:"";s:4:"pkID";i:11;s:3:"cID";i:55;s:11:"inheritance";s:8:"OVERRIDE";}'),
(41, 41, '2021-08-23 09:27:41', 'O:59:"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"41";s:5:"error";s:0:"";s:4:"pkID";i:11;s:3:"cID";i:55;s:13:"permissionSet";O:28:"Concrete\\Core\\Permission\\Set":2:{s:14:"\0*\0permissions";a:18:{i:1;s:3:"310";i:2;s:3:"310";i:3;s:3:"319";i:4;s:3:"319";i:5;s:3:"311";i:6;s:3:"312";i:7;s:3:"313";i:8;s:3:"315";i:9;s:3:"317";i:10;s:3:"316";i:11;s:3:"318";i:12;s:3:"321";i:13;s:3:"322";i:14;s:3:"323";i:15;s:3:"324";i:16;s:3:"325";i:17;s:3:"320";i:18;s:3:"314";}s:19:"\0*\0pkCategoryHandle";s:4:"page";}}'),
(42, 42, '2021-08-23 09:28:01', 'O:70:"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsInheritanceRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"42";s:5:"error";s:0:"";s:4:"pkID";i:11;s:3:"cID";i:60;s:11:"inheritance";s:8:"OVERRIDE";}'),
(43, 43, '2021-08-23 09:28:11', 'O:59:"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"43";s:5:"error";s:0:"";s:4:"pkID";i:11;s:3:"cID";i:60;s:13:"permissionSet";O:28:"Concrete\\Core\\Permission\\Set":2:{s:14:"\0*\0permissions";a:18:{i:1;s:3:"310";i:2;s:3:"310";i:3;s:3:"319";i:4;s:3:"319";i:5;s:3:"311";i:6;s:3:"312";i:7;s:3:"313";i:8;s:3:"315";i:9;s:3:"317";i:10;s:3:"316";i:11;s:3:"318";i:12;s:3:"321";i:13;s:3:"322";i:14;s:3:"323";i:15;s:3:"324";i:16;s:3:"325";i:17;s:3:"320";i:18;s:3:"314";}s:19:"\0*\0pkCategoryHandle";s:4:"page";}}'),
(44, 44, '2021-08-23 09:28:30', 'O:70:"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsInheritanceRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"44";s:5:"error";s:0:"";s:4:"pkID";i:11;s:3:"cID";i:66;s:11:"inheritance";s:8:"OVERRIDE";}'),
(45, 45, '2021-08-23 09:28:41', 'O:59:"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"45";s:5:"error";s:0:"";s:4:"pkID";i:11;s:3:"cID";i:66;s:13:"permissionSet";O:28:"Concrete\\Core\\Permission\\Set":2:{s:14:"\0*\0permissions";a:18:{i:1;s:3:"310";i:2;s:3:"310";i:3;s:3:"319";i:4;s:3:"319";i:5;s:3:"311";i:6;s:3:"312";i:7;s:3:"313";i:8;s:3:"315";i:9;s:3:"317";i:10;s:3:"316";i:11;s:3:"318";i:12;s:3:"321";i:13;s:3:"322";i:14;s:3:"323";i:15;s:3:"324";i:16;s:3:"325";i:17;s:3:"320";i:18;s:3:"314";}s:19:"\0*\0pkCategoryHandle";s:4:"page";}}'),
(46, 46, '2021-08-23 09:29:03', 'O:59:"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"46";s:5:"error";s:0:"";s:4:"pkID";i:11;s:3:"cID";i:171;s:13:"permissionSet";O:28:"Concrete\\Core\\Permission\\Set":2:{s:14:"\0*\0permissions";a:18:{i:1;s:3:"241";i:2;s:3:"242";i:3;s:3:"251";i:4;s:3:"251";i:5;s:3:"243";i:6;s:3:"244";i:7;s:3:"245";i:8;s:3:"247";i:9;s:3:"249";i:10;s:3:"248";i:11;s:3:"250";i:12;s:3:"253";i:13;s:3:"254";i:14;s:3:"255";i:15;s:3:"256";i:16;s:3:"257";i:17;s:3:"252";i:18;s:3:"246";}s:19:"\0*\0pkCategoryHandle";s:4:"page";}}'),
(47, 47, '2021-08-23 09:31:28', 'O:59:"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"47";s:5:"error";s:0:"";s:4:"pkID";i:11;s:3:"cID";i:182;s:13:"permissionSet";O:28:"Concrete\\Core\\Permission\\Set":2:{s:14:"\0*\0permissions";a:18:{i:1;s:3:"309";i:2;s:3:"310";i:3;s:3:"319";i:4;s:3:"319";i:5;s:3:"311";i:6;s:3:"312";i:7;s:3:"313";i:8;s:3:"315";i:9;s:3:"317";i:10;s:3:"316";i:11;s:3:"318";i:12;s:3:"321";i:13;s:3:"322";i:14;s:3:"323";i:15;s:3:"324";i:16;s:3:"325";i:17;s:3:"320";i:18;s:3:"314";}s:19:"\0*\0pkCategoryHandle";s:4:"page";}}'),
(48, 48, '2021-08-23 09:32:02', 'O:59:"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"48";s:5:"error";s:0:"";s:4:"pkID";i:11;s:3:"cID";i:182;s:13:"permissionSet";O:28:"Concrete\\Core\\Permission\\Set":2:{s:14:"\0*\0permissions";a:18:{i:1;s:3:"310";i:2;s:3:"310";i:3;s:3:"319";i:4;s:3:"319";i:5;s:3:"311";i:6;s:3:"312";i:7;s:3:"313";i:8;s:3:"315";i:9;s:3:"317";i:10;s:3:"316";i:11;s:3:"318";i:12;s:3:"321";i:13;s:3:"322";i:14;s:3:"323";i:15;s:3:"324";i:16;s:3:"325";i:17;s:3:"320";i:18;s:3:"314";}s:19:"\0*\0pkCategoryHandle";s:4:"page";}}'),
(49, 49, '2021-08-23 09:32:20', 'O:70:"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsInheritanceRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"49";s:5:"error";s:0:"";s:4:"pkID";i:11;s:3:"cID";i:183;s:11:"inheritance";s:8:"OVERRIDE";}'),
(50, 50, '2021-08-23 09:32:35', 'O:59:"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"50";s:5:"error";s:0:"";s:4:"pkID";i:11;s:3:"cID";i:183;s:13:"permissionSet";O:28:"Concrete\\Core\\Permission\\Set":2:{s:14:"\0*\0permissions";a:18:{i:1;s:3:"310";i:2;s:3:"310";i:3;s:3:"319";i:4;s:3:"319";i:5;s:3:"311";i:6;s:3:"312";i:7;s:3:"313";i:8;s:3:"315";i:9;s:3:"317";i:10;s:3:"316";i:11;s:3:"318";i:12;s:3:"321";i:13;s:3:"322";i:14;s:3:"323";i:15;s:3:"324";i:16;s:3:"325";i:17;s:3:"320";i:18;s:3:"314";}s:19:"\0*\0pkCategoryHandle";s:4:"page";}}'),
(51, 51, '2021-08-23 09:33:37', 'O:59:"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"51";s:5:"error";s:0:"";s:4:"pkID";i:11;s:3:"cID";i:4;s:13:"permissionSet";O:28:"Concrete\\Core\\Permission\\Set":2:{s:14:"\0*\0permissions";a:18:{i:1;s:3:"157";i:2;s:3:"157";i:3;s:1:"0";i:4;s:3:"166";i:5;s:3:"158";i:6;s:3:"159";i:7;s:3:"160";i:8;s:3:"162";i:9;s:3:"164";i:10;s:3:"163";i:11;s:3:"165";i:12;s:3:"168";i:13;s:3:"169";i:14;s:3:"170";i:15;s:3:"171";i:16;s:3:"172";i:17;s:3:"167";i:18;s:3:"161";}s:19:"\0*\0pkCategoryHandle";s:4:"page";}}'),
(52, 52, '2021-08-23 09:51:43', 'O:70:"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsInheritanceRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"52";s:5:"error";s:0:"";s:4:"pkID";i:11;s:3:"cID";i:20;s:11:"inheritance";s:8:"OVERRIDE";}'),
(53, 53, '2021-08-23 09:51:55', 'O:59:"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"53";s:5:"error";s:0:"";s:4:"pkID";i:11;s:3:"cID";i:20;s:13:"permissionSet";O:28:"Concrete\\Core\\Permission\\Set":2:{s:14:"\0*\0permissions";a:18:{i:1;s:3:"326";i:2;s:3:"327";i:3;s:1:"0";i:4;s:3:"336";i:5;s:3:"328";i:6;s:3:"329";i:7;s:3:"330";i:8;s:3:"332";i:9;s:3:"334";i:10;s:3:"333";i:11;s:3:"335";i:12;s:3:"338";i:13;s:3:"339";i:14;s:3:"340";i:15;s:3:"341";i:16;s:3:"342";i:17;s:3:"337";i:18;s:3:"331";}s:19:"\0*\0pkCategoryHandle";s:4:"page";}}'),
(54, 54, '2021-08-23 09:52:14', 'O:70:"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsInheritanceRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"54";s:5:"error";s:0:"";s:4:"pkID";i:11;s:3:"cID";i:14;s:11:"inheritance";s:8:"OVERRIDE";}'),
(55, 55, '2021-08-23 09:52:28', 'O:59:"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"55";s:5:"error";s:0:"";s:4:"pkID";i:11;s:3:"cID";i:14;s:13:"permissionSet";O:28:"Concrete\\Core\\Permission\\Set":2:{s:14:"\0*\0permissions";a:18:{i:1;s:3:"326";i:2;s:3:"327";i:3;s:1:"0";i:4;s:3:"336";i:5;s:3:"328";i:6;s:3:"329";i:7;s:3:"330";i:8;s:3:"332";i:9;s:3:"334";i:10;s:3:"333";i:11;s:3:"335";i:12;s:3:"338";i:13;s:3:"339";i:14;s:3:"340";i:15;s:3:"341";i:16;s:3:"342";i:17;s:3:"337";i:18;s:3:"331";}s:19:"\0*\0pkCategoryHandle";s:4:"page";}}'),
(56, 56, '2021-08-23 09:52:43', 'O:70:"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsInheritanceRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"56";s:5:"error";s:0:"";s:4:"pkID";i:11;s:3:"cID";i:16;s:11:"inheritance";s:8:"OVERRIDE";}'),
(57, 57, '2021-08-23 09:52:59', 'O:59:"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"57";s:5:"error";s:0:"";s:4:"pkID";i:11;s:3:"cID";i:16;s:13:"permissionSet";O:28:"Concrete\\Core\\Permission\\Set":2:{s:14:"\0*\0permissions";a:18:{i:1;s:3:"326";i:2;s:3:"327";i:3;s:1:"0";i:4;s:3:"336";i:5;s:3:"328";i:6;s:3:"329";i:7;s:3:"330";i:8;s:3:"332";i:9;s:3:"334";i:10;s:3:"333";i:11;s:3:"335";i:12;s:3:"338";i:13;s:3:"339";i:14;s:3:"340";i:15;s:3:"341";i:16;s:3:"342";i:17;s:3:"337";i:18;s:3:"331";}s:19:"\0*\0pkCategoryHandle";s:4:"page";}}'),
(58, 58, '2021-08-23 09:55:15', 'O:70:"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsInheritanceRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"58";s:5:"error";s:0:"";s:4:"pkID";i:11;s:3:"cID";i:17;s:11:"inheritance";s:8:"OVERRIDE";}'),
(59, 59, '2021-08-23 09:55:35', 'O:59:"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"59";s:5:"error";s:0:"";s:4:"pkID";i:11;s:3:"cID";i:17;s:13:"permissionSet";O:28:"Concrete\\Core\\Permission\\Set":2:{s:14:"\0*\0permissions";a:18:{i:1;s:3:"309";i:2;s:3:"310";i:3;s:3:"309";i:4;s:3:"319";i:5;s:3:"311";i:6;s:3:"309";i:7;s:3:"313";i:8;s:3:"315";i:9;s:3:"317";i:10;s:3:"316";i:11;s:3:"318";i:12;s:3:"321";i:13;s:3:"322";i:14;s:3:"323";i:15;s:3:"324";i:16;s:3:"325";i:17;s:3:"320";i:18;s:3:"314";}s:19:"\0*\0pkCategoryHandle";s:4:"page";}}'),
(60, 60, '2021-08-23 09:56:22', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":11:{s:14:"\0*\0wrStatusNum";i:30;s:62:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled";b:0;s:64:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate";N;s:67:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate";N;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"60";s:5:"error";s:0:"";s:4:"pkID";i:14;s:3:"cID";i:17;s:4:"cvID";s:1:"2";}'),
(61, 61, '2021-08-23 09:56:36', 'O:59:"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"61";s:5:"error";s:0:"";s:4:"pkID";i:11;s:3:"cID";i:17;s:13:"permissionSet";O:28:"Concrete\\Core\\Permission\\Set":2:{s:14:"\0*\0permissions";a:18:{i:1;s:3:"309";i:2;s:3:"310";i:3;s:3:"309";i:4;s:3:"319";i:5;s:3:"311";i:6;s:3:"313";i:7;s:3:"313";i:8;s:3:"315";i:9;s:3:"317";i:10;s:3:"316";i:11;s:3:"318";i:12;s:3:"321";i:13;s:3:"322";i:14;s:3:"323";i:15;s:3:"324";i:16;s:3:"325";i:17;s:3:"320";i:18;s:3:"314";}s:19:"\0*\0pkCategoryHandle";s:4:"page";}}'),
(62, 62, '2021-08-23 09:56:59', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":11:{s:14:"\0*\0wrStatusNum";i:30;s:62:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled";b:0;s:64:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate";N;s:67:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate";N;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"62";s:5:"error";s:0:"";s:4:"pkID";i:14;s:3:"cID";i:18;s:4:"cvID";s:1:"2";}'),
(63, 63, '2021-08-23 10:12:14', 'O:70:"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsInheritanceRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"63";s:5:"error";s:0:"";s:4:"pkID";i:11;s:3:"cID";i:9;s:11:"inheritance";s:8:"OVERRIDE";}'),
(64, 64, '2021-08-23 10:12:25', 'O:59:"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"64";s:5:"error";s:0:"";s:4:"pkID";i:11;s:3:"cID";i:9;s:13:"permissionSet";O:28:"Concrete\\Core\\Permission\\Set":2:{s:14:"\0*\0permissions";a:18:{i:1;s:3:"310";i:2;s:3:"310";i:3;s:3:"319";i:4;s:3:"319";i:5;s:3:"311";i:6;s:3:"312";i:7;s:3:"313";i:8;s:3:"315";i:9;s:3:"317";i:10;s:3:"316";i:11;s:3:"318";i:12;s:3:"321";i:13;s:3:"322";i:14;s:3:"323";i:15;s:3:"324";i:16;s:3:"325";i:17;s:3:"320";i:18;s:3:"314";}s:19:"\0*\0pkCategoryHandle";s:4:"page";}}'),
(65, 65, '2021-08-23 13:50:20', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":11:{s:14:"\0*\0wrStatusNum";i:30;s:62:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled";b:0;s:64:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate";N;s:67:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate";N;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"65";s:5:"error";s:0:"";s:4:"pkID";i:14;s:3:"cID";i:169;s:4:"cvID";s:1:"4";}'),
(66, 66, '2021-08-23 13:54:01', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":11:{s:14:"\0*\0wrStatusNum";i:30;s:62:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled";b:0;s:64:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate";N;s:67:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate";N;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"66";s:5:"error";s:0:"";s:4:"pkID";i:14;s:3:"cID";i:1;s:4:"cvID";s:1:"2";}'),
(67, 67, '2021-08-23 13:55:48', 'O:59:"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"67";s:5:"error";s:0:"";s:4:"pkID";i:11;s:3:"cID";i:1;s:13:"permissionSet";O:28:"Concrete\\Core\\Permission\\Set":2:{s:14:"\0*\0permissions";a:18:{i:1;s:2:"88";i:2;s:3:"360";i:3;s:2:"90";i:4;s:3:"360";i:5;s:2:"93";i:6;s:2:"93";i:7;s:3:"360";i:8;s:3:"360";i:9;s:3:"360";i:10;s:3:"360";i:11;s:3:"360";i:12;s:3:"360";i:13;s:3:"360";i:14;s:3:"360";i:15;s:3:"360";i:16;s:3:"360";i:17;s:3:"360";i:18;s:3:"360";}s:19:"\0*\0pkCategoryHandle";s:4:"page";}}'),
(68, 68, '2021-08-23 13:59:36', 'O:59:"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"68";s:5:"error";s:0:"";s:4:"pkID";i:11;s:3:"cID";i:1;s:13:"permissionSet";O:28:"Concrete\\Core\\Permission\\Set":2:{s:14:"\0*\0permissions";a:18:{i:1;s:2:"88";i:2;s:3:"360";i:3;s:3:"360";i:4;s:3:"360";i:5;s:3:"361";i:6;s:2:"93";i:7;s:3:"360";i:8;s:3:"360";i:9;s:3:"360";i:10;s:3:"360";i:11;s:3:"360";i:12;s:3:"360";i:13;s:3:"360";i:14;s:3:"360";i:15;s:3:"360";i:16;s:3:"360";i:17;s:3:"360";i:18;s:3:"360";}s:19:"\0*\0pkCategoryHandle";s:4:"page";}}'),
(69, 69, '2021-08-23 14:02:23', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":11:{s:14:"\0*\0wrStatusNum";i:30;s:62:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled";b:0;s:64:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate";N;s:67:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate";N;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"69";s:5:"error";s:0:"";s:4:"pkID";i:14;s:3:"cID";i:1;s:4:"cvID";s:1:"3";}'),
(70, 70, '2021-08-23 14:03:26', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":11:{s:14:"\0*\0wrStatusNum";i:30;s:62:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled";b:0;s:64:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate";N;s:67:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate";N;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"70";s:5:"error";s:0:"";s:4:"pkID";i:14;s:3:"cID";i:1;s:4:"cvID";s:1:"4";}'),
(71, 71, '2021-08-23 14:27:40', 'O:59:"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"71";s:5:"error";s:0:"";s:4:"pkID";i:11;s:3:"cID";i:1;s:13:"permissionSet";O:28:"Concrete\\Core\\Permission\\Set":2:{s:14:"\0*\0permissions";a:18:{i:1;s:2:"88";i:2;s:3:"360";i:3;s:3:"360";i:4;s:3:"360";i:5;s:3:"360";i:6;s:2:"93";i:7;s:3:"360";i:8;s:3:"360";i:9;s:3:"360";i:10;s:3:"360";i:11;s:3:"360";i:12;s:3:"360";i:13;s:3:"360";i:14;s:3:"360";i:15;s:3:"360";i:16;s:3:"360";i:17;s:3:"360";i:18;s:3:"360";}s:19:"\0*\0pkCategoryHandle";s:4:"page";}}'),
(72, 72, '2021-08-23 15:16:07', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":11:{s:14:"\0*\0wrStatusNum";i:30;s:62:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled";b:0;s:64:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate";N;s:67:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate";N;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"72";s:5:"error";s:0:"";s:4:"pkID";i:14;s:3:"cID";i:1;s:4:"cvID";s:1:"6";}'),
(73, 73, '2021-08-23 15:18:48', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":11:{s:14:"\0*\0wrStatusNum";i:30;s:62:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled";b:0;s:64:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate";N;s:67:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate";N;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"73";s:5:"error";s:0:"";s:4:"pkID";i:14;s:3:"cID";i:1;s:4:"cvID";s:1:"7";}'),
(74, 74, '2021-08-23 15:26:18', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":11:{s:14:"\0*\0wrStatusNum";i:30;s:62:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled";b:0;s:64:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate";N;s:67:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate";N;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"74";s:5:"error";s:0:"";s:4:"pkID";i:14;s:3:"cID";i:1;s:4:"cvID";s:1:"8";}'),
(75, 75, '2021-08-24 10:09:27', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":11:{s:14:"\0*\0wrStatusNum";i:30;s:62:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled";b:0;s:64:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate";N;s:67:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate";N;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"75";s:5:"error";s:0:"";s:4:"pkID";i:14;s:3:"cID";i:1;s:4:"cvID";s:1:"9";}'),
(76, 76, '2021-08-24 10:12:16', 'O:59:"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"76";s:5:"error";s:0:"";s:4:"pkID";i:11;s:3:"cID";i:1;s:13:"permissionSet";O:28:"Concrete\\Core\\Permission\\Set":2:{s:14:"\0*\0permissions";a:18:{i:1;s:2:"88";i:2;s:2:"93";i:3;s:3:"360";i:4;s:3:"360";i:5;s:3:"360";i:6;s:2:"93";i:7;s:3:"360";i:8;s:3:"360";i:9;s:3:"360";i:10;s:3:"360";i:11;s:3:"360";i:12;s:3:"360";i:13;s:2:"93";i:14;s:2:"93";i:15;s:3:"360";i:16;s:3:"360";i:17;s:3:"360";i:18;s:3:"360";}s:19:"\0*\0pkCategoryHandle";s:4:"page";}}'),
(77, 77, '2021-08-24 10:14:16', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":11:{s:14:"\0*\0wrStatusNum";i:30;s:62:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled";b:0;s:64:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate";N;s:67:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate";N;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"2";s:7:"\0*\0wrID";s:2:"77";s:5:"error";s:0:"";s:4:"pkID";i:14;s:3:"cID";i:1;s:4:"cvID";s:2:"10";}'),
(78, 78, '2021-08-24 10:20:48', 'O:59:"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"78";s:5:"error";s:0:"";s:4:"pkID";i:11;s:3:"cID";i:1;s:13:"permissionSet";O:28:"Concrete\\Core\\Permission\\Set":2:{s:14:"\0*\0permissions";a:18:{i:1;s:2:"88";i:2;s:3:"360";i:3;s:3:"360";i:4;s:3:"360";i:5;s:3:"360";i:6;s:2:"93";i:7;s:3:"360";i:8;s:3:"360";i:9;s:3:"360";i:10;s:3:"360";i:11;s:3:"360";i:12;s:3:"360";i:13;s:3:"360";i:14;s:2:"93";i:15;s:3:"360";i:16;s:3:"360";i:17;s:3:"360";i:18;s:3:"360";}s:19:"\0*\0pkCategoryHandle";s:4:"page";}}'),
(79, 79, '2021-08-24 11:04:33', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":11:{s:14:"\0*\0wrStatusNum";i:30;s:62:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled";b:0;s:64:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate";N;s:67:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate";N;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"79";s:5:"error";s:0:"";s:4:"pkID";i:14;s:3:"cID";i:1;s:4:"cvID";s:2:"11";}'),
(80, 80, '2021-08-24 11:16:52', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":11:{s:14:"\0*\0wrStatusNum";i:30;s:62:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled";b:0;s:64:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate";N;s:67:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate";N;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"80";s:5:"error";s:0:"";s:4:"pkID";i:14;s:3:"cID";i:1;s:4:"cvID";s:2:"12";}'),
(81, 81, '2021-08-24 12:01:17', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":11:{s:14:"\0*\0wrStatusNum";i:30;s:62:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled";b:0;s:64:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate";N;s:67:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate";N;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"81";s:5:"error";s:0:"";s:4:"pkID";i:14;s:3:"cID";i:1;s:4:"cvID";s:2:"13";}'),
(82, 82, '2021-08-24 12:24:39', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":11:{s:14:"\0*\0wrStatusNum";i:30;s:62:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled";b:0;s:64:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate";N;s:67:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate";N;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"82";s:5:"error";s:0:"";s:4:"pkID";i:14;s:3:"cID";i:1;s:4:"cvID";s:2:"14";}'),
(83, 83, '2021-08-24 12:53:47', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":11:{s:14:"\0*\0wrStatusNum";i:30;s:62:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled";b:0;s:64:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate";N;s:67:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate";N;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"83";s:5:"error";s:0:"";s:4:"pkID";i:14;s:3:"cID";i:1;s:4:"cvID";s:2:"15";}'),
(84, 84, '2021-08-24 13:58:54', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":11:{s:14:"\0*\0wrStatusNum";i:30;s:62:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled";b:0;s:64:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate";N;s:67:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate";N;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"84";s:5:"error";s:0:"";s:4:"pkID";i:14;s:3:"cID";i:1;s:4:"cvID";s:2:"16";}'),
(85, 85, '2021-08-24 14:22:51', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":11:{s:14:"\0*\0wrStatusNum";i:30;s:62:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled";b:0;s:64:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate";N;s:67:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate";N;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"85";s:5:"error";s:0:"";s:4:"pkID";i:14;s:3:"cID";i:1;s:4:"cvID";s:2:"17";}'),
(86, 86, '2021-08-24 14:46:43', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":11:{s:14:"\0*\0wrStatusNum";i:30;s:62:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled";b:0;s:64:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate";N;s:67:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate";N;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"86";s:5:"error";s:0:"";s:4:"pkID";i:14;s:3:"cID";i:1;s:4:"cvID";s:2:"18";}'),
(87, 87, '2021-08-24 15:21:53', 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":11:{s:14:"\0*\0wrStatusNum";i:30;s:62:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled";b:0;s:64:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate";N;s:67:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate";N;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"87";s:5:"error";s:0:"";s:4:"pkID";i:14;s:3:"cID";i:253;s:4:"cvID";s:1:"2";}'),
(88, 88, '2021-08-24 15:33:55', 'O:70:"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsInheritanceRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"88";s:5:"error";s:0:"";s:4:"pkID";i:11;s:3:"cID";i:67;s:11:"inheritance";s:8:"OVERRIDE";}'),
(89, 89, '2021-08-24 15:34:31', 'O:70:"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsInheritanceRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"89";s:5:"error";s:0:"";s:4:"pkID";i:11;s:3:"cID";i:68;s:11:"inheritance";s:8:"OVERRIDE";}'),
(90, 90, '2021-08-24 15:36:08', 'O:59:"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"90";s:5:"error";s:0:"";s:4:"pkID";i:11;s:3:"cID";i:68;s:13:"permissionSet";O:28:"Concrete\\Core\\Permission\\Set":2:{s:14:"\0*\0permissions";a:18:{i:1;s:3:"389";i:2;s:3:"310";i:3;s:3:"319";i:4;s:3:"319";i:5;s:3:"311";i:6;s:3:"312";i:7;s:3:"313";i:8;s:3:"315";i:9;s:3:"317";i:10;s:3:"316";i:11;s:3:"318";i:12;s:3:"321";i:13;s:3:"322";i:14;s:3:"323";i:15;s:3:"324";i:16;s:3:"325";i:17;s:3:"320";i:18;s:3:"314";}s:19:"\0*\0pkCategoryHandle";s:4:"page";}}');

-- --------------------------------------------------------

--
-- Table structure for table `WorkflowProgressNotifications`
--

CREATE TABLE `WorkflowProgressNotifications` (
  `wpID` int(10) UNSIGNED NOT NULL,
  `nID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `WorkflowRequestObjects`
--

CREATE TABLE `WorkflowRequestObjects` (
  `wrID` int(10) UNSIGNED NOT NULL,
  `wrObject` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `WorkflowRequestObjects`
--

INSERT INTO `WorkflowRequestObjects` (`wrID`, `wrObject`) VALUES
(1, 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":11:{s:14:"\0*\0wrStatusNum";i:30;s:62:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled";b:0;s:64:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate";N;s:67:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate";N;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:1:"1";s:5:"error";s:0:"";s:4:"pkID";i:14;s:3:"cID";i:222;s:4:"cvID";s:1:"1";}'),
(2, 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":11:{s:14:"\0*\0wrStatusNum";i:30;s:62:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled";b:0;s:64:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate";N;s:67:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate";N;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:1:"2";s:5:"error";s:0:"";s:4:"pkID";i:14;s:3:"cID";i:224;s:4:"cvID";s:1:"2";}'),
(3, 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":11:{s:14:"\0*\0wrStatusNum";i:30;s:62:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled";b:0;s:64:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate";N;s:67:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate";N;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:1:"3";s:5:"error";s:0:"";s:4:"pkID";i:14;s:3:"cID";i:222;s:4:"cvID";s:1:"2";}'),
(4, 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":11:{s:14:"\0*\0wrStatusNum";i:30;s:62:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled";b:0;s:64:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate";N;s:67:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate";N;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:1:"4";s:5:"error";s:0:"";s:4:"pkID";i:14;s:3:"cID";i:224;s:4:"cvID";s:1:"3";}'),
(5, 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":11:{s:14:"\0*\0wrStatusNum";i:30;s:62:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled";b:0;s:64:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate";N;s:67:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate";N;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:1:"5";s:5:"error";s:0:"";s:4:"pkID";i:14;s:3:"cID";i:228;s:4:"cvID";s:1:"2";}'),
(6, 'O:48:"Concrete\\Core\\Workflow\\Request\\DeletePageRequest":7:{s:14:"\0*\0wrStatusNum";i:100;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:1:"6";s:5:"error";s:0:"";s:4:"pkID";i:12;s:3:"cID";i:235;}'),
(7, 'O:48:"Concrete\\Core\\Workflow\\Request\\DeletePageRequest":7:{s:14:"\0*\0wrStatusNum";i:100;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:1:"7";s:5:"error";s:0:"";s:4:"pkID";i:12;s:3:"cID";i:230;}'),
(8, 'O:48:"Concrete\\Core\\Workflow\\Request\\DeletePageRequest":7:{s:14:"\0*\0wrStatusNum";i:100;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:1:"8";s:5:"error";s:0:"";s:4:"pkID";i:12;s:3:"cID";i:231;}'),
(9, 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":11:{s:14:"\0*\0wrStatusNum";i:30;s:62:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled";b:0;s:64:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate";N;s:67:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate";N;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:1:"9";s:5:"error";s:0:"";s:4:"pkID";i:14;s:3:"cID";i:228;s:4:"cvID";s:1:"3";}'),
(10, 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":11:{s:14:"\0*\0wrStatusNum";i:30;s:62:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled";b:0;s:64:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate";N;s:67:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate";N;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"10";s:5:"error";s:0:"";s:4:"pkID";i:14;s:3:"cID";i:229;s:4:"cvID";s:1:"2";}'),
(11, 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":11:{s:14:"\0*\0wrStatusNum";i:30;s:62:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled";b:0;s:64:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate";N;s:67:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate";N;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"11";s:5:"error";s:0:"";s:4:"pkID";i:14;s:3:"cID";i:234;s:4:"cvID";s:1:"2";}'),
(12, 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":11:{s:14:"\0*\0wrStatusNum";i:30;s:62:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled";b:0;s:64:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate";N;s:67:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate";N;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"12";s:5:"error";s:0:"";s:4:"pkID";i:14;s:3:"cID";i:232;s:4:"cvID";s:1:"2";}'),
(13, 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":11:{s:14:"\0*\0wrStatusNum";i:30;s:62:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled";b:0;s:64:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate";N;s:67:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate";N;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"13";s:5:"error";s:0:"";s:4:"pkID";i:14;s:3:"cID";i:233;s:4:"cvID";s:1:"2";}'),
(14, 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":11:{s:14:"\0*\0wrStatusNum";i:30;s:62:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled";b:0;s:64:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate";N;s:67:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate";N;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"14";s:5:"error";s:0:"";s:4:"pkID";i:14;s:3:"cID";i:222;s:4:"cvID";s:1:"3";}'),
(15, 'O:48:"Concrete\\Core\\Workflow\\Request\\DeletePageRequest":7:{s:14:"\0*\0wrStatusNum";i:100;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"15";s:5:"error";s:0:"";s:4:"pkID";i:12;s:3:"cID";i:201;}'),
(16, 'O:48:"Concrete\\Core\\Workflow\\Request\\DeletePageRequest":7:{s:14:"\0*\0wrStatusNum";i:100;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"16";s:5:"error";s:0:"";s:4:"pkID";i:12;s:3:"cID";i:200;}'),
(17, 'O:48:"Concrete\\Core\\Workflow\\Request\\DeletePageRequest":7:{s:14:"\0*\0wrStatusNum";i:100;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"17";s:5:"error";s:0:"";s:4:"pkID";i:12;s:3:"cID";i:199;}'),
(18, 'O:48:"Concrete\\Core\\Workflow\\Request\\DeletePageRequest":7:{s:14:"\0*\0wrStatusNum";i:100;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"18";s:5:"error";s:0:"";s:4:"pkID";i:12;s:3:"cID";i:198;}'),
(19, 'O:48:"Concrete\\Core\\Workflow\\Request\\DeletePageRequest":7:{s:14:"\0*\0wrStatusNum";i:100;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"19";s:5:"error";s:0:"";s:4:"pkID";i:12;s:3:"cID";i:196;}'),
(20, 'O:48:"Concrete\\Core\\Workflow\\Request\\DeletePageRequest":7:{s:14:"\0*\0wrStatusNum";i:100;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"20";s:5:"error";s:0:"";s:4:"pkID";i:12;s:3:"cID";i:196;}'),
(21, 'O:48:"Concrete\\Core\\Workflow\\Request\\DeletePageRequest":7:{s:14:"\0*\0wrStatusNum";i:100;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"21";s:5:"error";s:0:"";s:4:"pkID";i:12;s:3:"cID";i:195;}'),
(22, 'O:48:"Concrete\\Core\\Workflow\\Request\\DeletePageRequest":7:{s:14:"\0*\0wrStatusNum";i:100;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"22";s:5:"error";s:0:"";s:4:"pkID";i:12;s:3:"cID";i:193;}'),
(23, 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":11:{s:14:"\0*\0wrStatusNum";i:30;s:62:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled";b:0;s:64:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate";N;s:67:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate";N;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"23";s:5:"error";s:0:"";s:4:"pkID";i:14;s:3:"cID";i:228;s:4:"cvID";s:1:"4";}'),
(24, 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":11:{s:14:"\0*\0wrStatusNum";i:30;s:62:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled";b:0;s:64:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate";N;s:67:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate";N;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"24";s:5:"error";s:0:"";s:4:"pkID";i:14;s:3:"cID";i:183;s:4:"cvID";s:1:"2";}'),
(25, 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":11:{s:14:"\0*\0wrStatusNum";i:30;s:62:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled";b:0;s:64:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate";N;s:67:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate";N;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"25";s:5:"error";s:0:"";s:4:"pkID";i:14;s:3:"cID";i:169;s:4:"cvID";s:1:"2";}'),
(26, 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":11:{s:14:"\0*\0wrStatusNum";i:30;s:62:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled";b:0;s:64:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate";N;s:67:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate";N;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"26";s:5:"error";s:0:"";s:4:"pkID";i:14;s:3:"cID";i:169;s:4:"cvID";s:1:"3";}'),
(27, 'O:46:"Concrete\\Core\\Workflow\\Request\\MovePageRequest":9:{s:12:"\0*\0targetCID";i:2;s:14:"\0*\0wrStatusNum";i:50;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"27";s:5:"error";s:0:"";s:4:"pkID";i:16;s:3:"cID";i:224;s:15:"saveOldPagePath";b:0;}'),
(28, 'O:48:"Concrete\\Core\\Workflow\\Request\\DeletePageRequest":7:{s:14:"\0*\0wrStatusNum";i:100;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"28";s:5:"error";s:0:"";s:4:"pkID";i:12;s:3:"cID";i:222;}'),
(29, 'O:70:"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsInheritanceRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"29";s:5:"error";s:0:"";s:4:"pkID";i:11;s:3:"cID";i:169;s:11:"inheritance";s:8:"OVERRIDE";}'),
(30, 'O:59:"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"30";s:5:"error";s:0:"";s:4:"pkID";i:11;s:3:"cID";i:169;s:13:"permissionSet";O:28:"Concrete\\Core\\Permission\\Set":2:{s:14:"\0*\0permissions";a:18:{i:1;s:3:"310";i:2;s:3:"310";i:3;s:1:"0";i:4;s:3:"319";i:5;s:3:"311";i:6;s:3:"312";i:7;s:3:"313";i:8;s:3:"315";i:9;s:3:"317";i:10;s:3:"316";i:11;s:3:"318";i:12;s:3:"321";i:13;s:3:"322";i:14;s:3:"323";i:15;s:3:"324";i:16;s:3:"325";i:17;s:3:"320";i:18;s:3:"314";}s:19:"\0*\0pkCategoryHandle";s:4:"page";}}'),
(31, 'O:59:"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"31";s:5:"error";s:0:"";s:4:"pkID";i:11;s:3:"cID";i:2;s:13:"permissionSet";O:28:"Concrete\\Core\\Permission\\Set":2:{s:14:"\0*\0permissions";a:18:{i:1;s:3:"309";i:2;s:3:"310";i:3;s:3:"309";i:4;s:3:"319";i:5;s:3:"311";i:6;s:3:"312";i:7;s:3:"313";i:8;s:3:"315";i:9;s:3:"317";i:10;s:3:"316";i:11;s:3:"318";i:12;s:3:"321";i:13;s:3:"322";i:14;s:3:"323";i:15;s:3:"324";i:16;s:3:"325";i:17;s:3:"320";i:18;s:3:"314";}s:19:"\0*\0pkCategoryHandle";s:4:"page";}}'),
(32, 'O:70:"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsInheritanceRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"32";s:5:"error";s:0:"";s:4:"pkID";i:11;s:3:"cID";i:26;s:11:"inheritance";s:8:"OVERRIDE";}'),
(33, 'O:59:"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"33";s:5:"error";s:0:"";s:4:"pkID";i:11;s:3:"cID";i:26;s:13:"permissionSet";O:28:"Concrete\\Core\\Permission\\Set":2:{s:14:"\0*\0permissions";a:18:{i:1;s:3:"310";i:2;s:3:"310";i:3;s:3:"319";i:4;s:3:"319";i:5;s:3:"311";i:6;s:3:"312";i:7;s:3:"313";i:8;s:3:"315";i:9;s:3:"317";i:10;s:3:"316";i:11;s:3:"318";i:12;s:3:"321";i:13;s:3:"322";i:14;s:3:"323";i:15;s:3:"324";i:16;s:3:"325";i:17;s:3:"320";i:18;s:3:"314";}s:19:"\0*\0pkCategoryHandle";s:4:"page";}}'),
(34, 'O:70:"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsInheritanceRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"34";s:5:"error";s:0:"";s:4:"pkID";i:11;s:3:"cID";i:32;s:11:"inheritance";s:8:"OVERRIDE";}'),
(35, 'O:59:"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"35";s:5:"error";s:0:"";s:4:"pkID";i:11;s:3:"cID";i:32;s:13:"permissionSet";O:28:"Concrete\\Core\\Permission\\Set":2:{s:14:"\0*\0permissions";a:18:{i:1;s:3:"310";i:2;s:3:"310";i:3;s:3:"319";i:4;s:3:"319";i:5;s:3:"311";i:6;s:3:"312";i:7;s:3:"313";i:8;s:3:"315";i:9;s:3:"317";i:10;s:3:"316";i:11;s:3:"318";i:12;s:3:"321";i:13;s:3:"322";i:14;s:3:"323";i:15;s:3:"324";i:16;s:3:"325";i:17;s:3:"320";i:18;s:3:"314";}s:19:"\0*\0pkCategoryHandle";s:4:"page";}}'),
(36, 'O:70:"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsInheritanceRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"36";s:5:"error";s:0:"";s:4:"pkID";i:11;s:3:"cID";i:47;s:11:"inheritance";s:8:"OVERRIDE";}'),
(37, 'O:59:"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"37";s:5:"error";s:0:"";s:4:"pkID";i:11;s:3:"cID";i:47;s:13:"permissionSet";O:28:"Concrete\\Core\\Permission\\Set":2:{s:14:"\0*\0permissions";a:18:{i:1;s:3:"310";i:2;s:3:"310";i:3;s:3:"319";i:4;s:3:"319";i:5;s:3:"311";i:6;s:3:"312";i:7;s:3:"313";i:8;s:3:"315";i:9;s:3:"317";i:10;s:3:"316";i:11;s:3:"318";i:12;s:3:"321";i:13;s:3:"322";i:14;s:3:"323";i:15;s:3:"324";i:16;s:3:"325";i:17;s:3:"320";i:18;s:3:"314";}s:19:"\0*\0pkCategoryHandle";s:4:"page";}}'),
(38, 'O:70:"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsInheritanceRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"38";s:5:"error";s:0:"";s:4:"pkID";i:11;s:3:"cID";i:53;s:11:"inheritance";s:8:"OVERRIDE";}'),
(39, 'O:59:"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"39";s:5:"error";s:0:"";s:4:"pkID";i:11;s:3:"cID";i:53;s:13:"permissionSet";O:28:"Concrete\\Core\\Permission\\Set":2:{s:14:"\0*\0permissions";a:18:{i:1;s:3:"310";i:2;s:3:"310";i:3;s:3:"319";i:4;s:3:"319";i:5;s:3:"311";i:6;s:3:"312";i:7;s:3:"313";i:8;s:3:"315";i:9;s:3:"317";i:10;s:3:"316";i:11;s:3:"318";i:12;s:3:"321";i:13;s:3:"322";i:14;s:3:"323";i:15;s:3:"324";i:16;s:3:"325";i:17;s:3:"320";i:18;s:3:"314";}s:19:"\0*\0pkCategoryHandle";s:4:"page";}}'),
(40, 'O:70:"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsInheritanceRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"40";s:5:"error";s:0:"";s:4:"pkID";i:11;s:3:"cID";i:55;s:11:"inheritance";s:8:"OVERRIDE";}'),
(41, 'O:59:"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"41";s:5:"error";s:0:"";s:4:"pkID";i:11;s:3:"cID";i:55;s:13:"permissionSet";O:28:"Concrete\\Core\\Permission\\Set":2:{s:14:"\0*\0permissions";a:18:{i:1;s:3:"310";i:2;s:3:"310";i:3;s:3:"319";i:4;s:3:"319";i:5;s:3:"311";i:6;s:3:"312";i:7;s:3:"313";i:8;s:3:"315";i:9;s:3:"317";i:10;s:3:"316";i:11;s:3:"318";i:12;s:3:"321";i:13;s:3:"322";i:14;s:3:"323";i:15;s:3:"324";i:16;s:3:"325";i:17;s:3:"320";i:18;s:3:"314";}s:19:"\0*\0pkCategoryHandle";s:4:"page";}}'),
(42, 'O:70:"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsInheritanceRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"42";s:5:"error";s:0:"";s:4:"pkID";i:11;s:3:"cID";i:60;s:11:"inheritance";s:8:"OVERRIDE";}'),
(43, 'O:59:"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"43";s:5:"error";s:0:"";s:4:"pkID";i:11;s:3:"cID";i:60;s:13:"permissionSet";O:28:"Concrete\\Core\\Permission\\Set":2:{s:14:"\0*\0permissions";a:18:{i:1;s:3:"310";i:2;s:3:"310";i:3;s:3:"319";i:4;s:3:"319";i:5;s:3:"311";i:6;s:3:"312";i:7;s:3:"313";i:8;s:3:"315";i:9;s:3:"317";i:10;s:3:"316";i:11;s:3:"318";i:12;s:3:"321";i:13;s:3:"322";i:14;s:3:"323";i:15;s:3:"324";i:16;s:3:"325";i:17;s:3:"320";i:18;s:3:"314";}s:19:"\0*\0pkCategoryHandle";s:4:"page";}}'),
(44, 'O:70:"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsInheritanceRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"44";s:5:"error";s:0:"";s:4:"pkID";i:11;s:3:"cID";i:66;s:11:"inheritance";s:8:"OVERRIDE";}'),
(45, 'O:59:"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"45";s:5:"error";s:0:"";s:4:"pkID";i:11;s:3:"cID";i:66;s:13:"permissionSet";O:28:"Concrete\\Core\\Permission\\Set":2:{s:14:"\0*\0permissions";a:18:{i:1;s:3:"310";i:2;s:3:"310";i:3;s:3:"319";i:4;s:3:"319";i:5;s:3:"311";i:6;s:3:"312";i:7;s:3:"313";i:8;s:3:"315";i:9;s:3:"317";i:10;s:3:"316";i:11;s:3:"318";i:12;s:3:"321";i:13;s:3:"322";i:14;s:3:"323";i:15;s:3:"324";i:16;s:3:"325";i:17;s:3:"320";i:18;s:3:"314";}s:19:"\0*\0pkCategoryHandle";s:4:"page";}}'),
(46, 'O:59:"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"46";s:5:"error";s:0:"";s:4:"pkID";i:11;s:3:"cID";i:171;s:13:"permissionSet";O:28:"Concrete\\Core\\Permission\\Set":2:{s:14:"\0*\0permissions";a:18:{i:1;s:3:"241";i:2;s:3:"242";i:3;s:3:"251";i:4;s:3:"251";i:5;s:3:"243";i:6;s:3:"244";i:7;s:3:"245";i:8;s:3:"247";i:9;s:3:"249";i:10;s:3:"248";i:11;s:3:"250";i:12;s:3:"253";i:13;s:3:"254";i:14;s:3:"255";i:15;s:3:"256";i:16;s:3:"257";i:17;s:3:"252";i:18;s:3:"246";}s:19:"\0*\0pkCategoryHandle";s:4:"page";}}'),
(47, 'O:59:"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"47";s:5:"error";s:0:"";s:4:"pkID";i:11;s:3:"cID";i:182;s:13:"permissionSet";O:28:"Concrete\\Core\\Permission\\Set":2:{s:14:"\0*\0permissions";a:18:{i:1;s:3:"309";i:2;s:3:"310";i:3;s:3:"319";i:4;s:3:"319";i:5;s:3:"311";i:6;s:3:"312";i:7;s:3:"313";i:8;s:3:"315";i:9;s:3:"317";i:10;s:3:"316";i:11;s:3:"318";i:12;s:3:"321";i:13;s:3:"322";i:14;s:3:"323";i:15;s:3:"324";i:16;s:3:"325";i:17;s:3:"320";i:18;s:3:"314";}s:19:"\0*\0pkCategoryHandle";s:4:"page";}}'),
(48, 'O:59:"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"48";s:5:"error";s:0:"";s:4:"pkID";i:11;s:3:"cID";i:182;s:13:"permissionSet";O:28:"Concrete\\Core\\Permission\\Set":2:{s:14:"\0*\0permissions";a:18:{i:1;s:3:"310";i:2;s:3:"310";i:3;s:3:"319";i:4;s:3:"319";i:5;s:3:"311";i:6;s:3:"312";i:7;s:3:"313";i:8;s:3:"315";i:9;s:3:"317";i:10;s:3:"316";i:11;s:3:"318";i:12;s:3:"321";i:13;s:3:"322";i:14;s:3:"323";i:15;s:3:"324";i:16;s:3:"325";i:17;s:3:"320";i:18;s:3:"314";}s:19:"\0*\0pkCategoryHandle";s:4:"page";}}'),
(49, 'O:70:"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsInheritanceRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"49";s:5:"error";s:0:"";s:4:"pkID";i:11;s:3:"cID";i:183;s:11:"inheritance";s:8:"OVERRIDE";}'),
(50, 'O:59:"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"50";s:5:"error";s:0:"";s:4:"pkID";i:11;s:3:"cID";i:183;s:13:"permissionSet";O:28:"Concrete\\Core\\Permission\\Set":2:{s:14:"\0*\0permissions";a:18:{i:1;s:3:"310";i:2;s:3:"310";i:3;s:3:"319";i:4;s:3:"319";i:5;s:3:"311";i:6;s:3:"312";i:7;s:3:"313";i:8;s:3:"315";i:9;s:3:"317";i:10;s:3:"316";i:11;s:3:"318";i:12;s:3:"321";i:13;s:3:"322";i:14;s:3:"323";i:15;s:3:"324";i:16;s:3:"325";i:17;s:3:"320";i:18;s:3:"314";}s:19:"\0*\0pkCategoryHandle";s:4:"page";}}'),
(51, 'O:59:"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"51";s:5:"error";s:0:"";s:4:"pkID";i:11;s:3:"cID";i:4;s:13:"permissionSet";O:28:"Concrete\\Core\\Permission\\Set":2:{s:14:"\0*\0permissions";a:18:{i:1;s:3:"157";i:2;s:3:"157";i:3;s:1:"0";i:4;s:3:"166";i:5;s:3:"158";i:6;s:3:"159";i:7;s:3:"160";i:8;s:3:"162";i:9;s:3:"164";i:10;s:3:"163";i:11;s:3:"165";i:12;s:3:"168";i:13;s:3:"169";i:14;s:3:"170";i:15;s:3:"171";i:16;s:3:"172";i:17;s:3:"167";i:18;s:3:"161";}s:19:"\0*\0pkCategoryHandle";s:4:"page";}}'),
(52, 'O:70:"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsInheritanceRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"52";s:5:"error";s:0:"";s:4:"pkID";i:11;s:3:"cID";i:20;s:11:"inheritance";s:8:"OVERRIDE";}'),
(53, 'O:59:"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"53";s:5:"error";s:0:"";s:4:"pkID";i:11;s:3:"cID";i:20;s:13:"permissionSet";O:28:"Concrete\\Core\\Permission\\Set":2:{s:14:"\0*\0permissions";a:18:{i:1;s:3:"326";i:2;s:3:"327";i:3;s:1:"0";i:4;s:3:"336";i:5;s:3:"328";i:6;s:3:"329";i:7;s:3:"330";i:8;s:3:"332";i:9;s:3:"334";i:10;s:3:"333";i:11;s:3:"335";i:12;s:3:"338";i:13;s:3:"339";i:14;s:3:"340";i:15;s:3:"341";i:16;s:3:"342";i:17;s:3:"337";i:18;s:3:"331";}s:19:"\0*\0pkCategoryHandle";s:4:"page";}}'),
(54, 'O:70:"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsInheritanceRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"54";s:5:"error";s:0:"";s:4:"pkID";i:11;s:3:"cID";i:14;s:11:"inheritance";s:8:"OVERRIDE";}'),
(55, 'O:59:"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"55";s:5:"error";s:0:"";s:4:"pkID";i:11;s:3:"cID";i:14;s:13:"permissionSet";O:28:"Concrete\\Core\\Permission\\Set":2:{s:14:"\0*\0permissions";a:18:{i:1;s:3:"326";i:2;s:3:"327";i:3;s:1:"0";i:4;s:3:"336";i:5;s:3:"328";i:6;s:3:"329";i:7;s:3:"330";i:8;s:3:"332";i:9;s:3:"334";i:10;s:3:"333";i:11;s:3:"335";i:12;s:3:"338";i:13;s:3:"339";i:14;s:3:"340";i:15;s:3:"341";i:16;s:3:"342";i:17;s:3:"337";i:18;s:3:"331";}s:19:"\0*\0pkCategoryHandle";s:4:"page";}}'),
(56, 'O:70:"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsInheritanceRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"56";s:5:"error";s:0:"";s:4:"pkID";i:11;s:3:"cID";i:16;s:11:"inheritance";s:8:"OVERRIDE";}'),
(57, 'O:59:"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"57";s:5:"error";s:0:"";s:4:"pkID";i:11;s:3:"cID";i:16;s:13:"permissionSet";O:28:"Concrete\\Core\\Permission\\Set":2:{s:14:"\0*\0permissions";a:18:{i:1;s:3:"326";i:2;s:3:"327";i:3;s:1:"0";i:4;s:3:"336";i:5;s:3:"328";i:6;s:3:"329";i:7;s:3:"330";i:8;s:3:"332";i:9;s:3:"334";i:10;s:3:"333";i:11;s:3:"335";i:12;s:3:"338";i:13;s:3:"339";i:14;s:3:"340";i:15;s:3:"341";i:16;s:3:"342";i:17;s:3:"337";i:18;s:3:"331";}s:19:"\0*\0pkCategoryHandle";s:4:"page";}}'),
(58, 'O:70:"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsInheritanceRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"58";s:5:"error";s:0:"";s:4:"pkID";i:11;s:3:"cID";i:17;s:11:"inheritance";s:8:"OVERRIDE";}'),
(59, 'O:59:"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"59";s:5:"error";s:0:"";s:4:"pkID";i:11;s:3:"cID";i:17;s:13:"permissionSet";O:28:"Concrete\\Core\\Permission\\Set":2:{s:14:"\0*\0permissions";a:18:{i:1;s:3:"309";i:2;s:3:"310";i:3;s:3:"309";i:4;s:3:"319";i:5;s:3:"311";i:6;s:3:"309";i:7;s:3:"313";i:8;s:3:"315";i:9;s:3:"317";i:10;s:3:"316";i:11;s:3:"318";i:12;s:3:"321";i:13;s:3:"322";i:14;s:3:"323";i:15;s:3:"324";i:16;s:3:"325";i:17;s:3:"320";i:18;s:3:"314";}s:19:"\0*\0pkCategoryHandle";s:4:"page";}}'),
(60, 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":11:{s:14:"\0*\0wrStatusNum";i:30;s:62:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled";b:0;s:64:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate";N;s:67:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate";N;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"60";s:5:"error";s:0:"";s:4:"pkID";i:14;s:3:"cID";i:17;s:4:"cvID";s:1:"2";}'),
(61, 'O:59:"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"61";s:5:"error";s:0:"";s:4:"pkID";i:11;s:3:"cID";i:17;s:13:"permissionSet";O:28:"Concrete\\Core\\Permission\\Set":2:{s:14:"\0*\0permissions";a:18:{i:1;s:3:"309";i:2;s:3:"310";i:3;s:3:"309";i:4;s:3:"319";i:5;s:3:"311";i:6;s:3:"313";i:7;s:3:"313";i:8;s:3:"315";i:9;s:3:"317";i:10;s:3:"316";i:11;s:3:"318";i:12;s:3:"321";i:13;s:3:"322";i:14;s:3:"323";i:15;s:3:"324";i:16;s:3:"325";i:17;s:3:"320";i:18;s:3:"314";}s:19:"\0*\0pkCategoryHandle";s:4:"page";}}'),
(62, 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":11:{s:14:"\0*\0wrStatusNum";i:30;s:62:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled";b:0;s:64:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate";N;s:67:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate";N;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"62";s:5:"error";s:0:"";s:4:"pkID";i:14;s:3:"cID";i:18;s:4:"cvID";s:1:"2";}'),
(63, 'O:70:"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsInheritanceRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"63";s:5:"error";s:0:"";s:4:"pkID";i:11;s:3:"cID";i:9;s:11:"inheritance";s:8:"OVERRIDE";}'),
(64, 'O:59:"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"64";s:5:"error";s:0:"";s:4:"pkID";i:11;s:3:"cID";i:9;s:13:"permissionSet";O:28:"Concrete\\Core\\Permission\\Set":2:{s:14:"\0*\0permissions";a:18:{i:1;s:3:"310";i:2;s:3:"310";i:3;s:3:"319";i:4;s:3:"319";i:5;s:3:"311";i:6;s:3:"312";i:7;s:3:"313";i:8;s:3:"315";i:9;s:3:"317";i:10;s:3:"316";i:11;s:3:"318";i:12;s:3:"321";i:13;s:3:"322";i:14;s:3:"323";i:15;s:3:"324";i:16;s:3:"325";i:17;s:3:"320";i:18;s:3:"314";}s:19:"\0*\0pkCategoryHandle";s:4:"page";}}'),
(65, 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":11:{s:14:"\0*\0wrStatusNum";i:30;s:62:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled";b:0;s:64:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate";N;s:67:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate";N;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"65";s:5:"error";s:0:"";s:4:"pkID";i:14;s:3:"cID";i:169;s:4:"cvID";s:1:"4";}'),
(66, 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":11:{s:14:"\0*\0wrStatusNum";i:30;s:62:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled";b:0;s:64:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate";N;s:67:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate";N;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"66";s:5:"error";s:0:"";s:4:"pkID";i:14;s:3:"cID";i:1;s:4:"cvID";s:1:"2";}'),
(67, 'O:59:"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"67";s:5:"error";s:0:"";s:4:"pkID";i:11;s:3:"cID";i:1;s:13:"permissionSet";O:28:"Concrete\\Core\\Permission\\Set":2:{s:14:"\0*\0permissions";a:18:{i:1;s:2:"88";i:2;s:3:"360";i:3;s:2:"90";i:4;s:3:"360";i:5;s:2:"93";i:6;s:2:"93";i:7;s:3:"360";i:8;s:3:"360";i:9;s:3:"360";i:10;s:3:"360";i:11;s:3:"360";i:12;s:3:"360";i:13;s:3:"360";i:14;s:3:"360";i:15;s:3:"360";i:16;s:3:"360";i:17;s:3:"360";i:18;s:3:"360";}s:19:"\0*\0pkCategoryHandle";s:4:"page";}}'),
(68, 'O:59:"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"68";s:5:"error";s:0:"";s:4:"pkID";i:11;s:3:"cID";i:1;s:13:"permissionSet";O:28:"Concrete\\Core\\Permission\\Set":2:{s:14:"\0*\0permissions";a:18:{i:1;s:2:"88";i:2;s:3:"360";i:3;s:3:"360";i:4;s:3:"360";i:5;s:3:"361";i:6;s:2:"93";i:7;s:3:"360";i:8;s:3:"360";i:9;s:3:"360";i:10;s:3:"360";i:11;s:3:"360";i:12;s:3:"360";i:13;s:3:"360";i:14;s:3:"360";i:15;s:3:"360";i:16;s:3:"360";i:17;s:3:"360";i:18;s:3:"360";}s:19:"\0*\0pkCategoryHandle";s:4:"page";}}'),
(69, 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":11:{s:14:"\0*\0wrStatusNum";i:30;s:62:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled";b:0;s:64:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate";N;s:67:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate";N;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"69";s:5:"error";s:0:"";s:4:"pkID";i:14;s:3:"cID";i:1;s:4:"cvID";s:1:"3";}'),
(70, 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":11:{s:14:"\0*\0wrStatusNum";i:30;s:62:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled";b:0;s:64:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate";N;s:67:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate";N;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"70";s:5:"error";s:0:"";s:4:"pkID";i:14;s:3:"cID";i:1;s:4:"cvID";s:1:"4";}'),
(71, 'O:59:"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"71";s:5:"error";s:0:"";s:4:"pkID";i:11;s:3:"cID";i:1;s:13:"permissionSet";O:28:"Concrete\\Core\\Permission\\Set":2:{s:14:"\0*\0permissions";a:18:{i:1;s:2:"88";i:2;s:3:"360";i:3;s:3:"360";i:4;s:3:"360";i:5;s:3:"360";i:6;s:2:"93";i:7;s:3:"360";i:8;s:3:"360";i:9;s:3:"360";i:10;s:3:"360";i:11;s:3:"360";i:12;s:3:"360";i:13;s:3:"360";i:14;s:3:"360";i:15;s:3:"360";i:16;s:3:"360";i:17;s:3:"360";i:18;s:3:"360";}s:19:"\0*\0pkCategoryHandle";s:4:"page";}}'),
(72, 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":11:{s:14:"\0*\0wrStatusNum";i:30;s:62:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled";b:0;s:64:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate";N;s:67:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate";N;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"72";s:5:"error";s:0:"";s:4:"pkID";i:14;s:3:"cID";i:1;s:4:"cvID";s:1:"6";}'),
(73, 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":11:{s:14:"\0*\0wrStatusNum";i:30;s:62:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled";b:0;s:64:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate";N;s:67:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate";N;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"73";s:5:"error";s:0:"";s:4:"pkID";i:14;s:3:"cID";i:1;s:4:"cvID";s:1:"7";}'),
(74, 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":11:{s:14:"\0*\0wrStatusNum";i:30;s:62:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled";b:0;s:64:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate";N;s:67:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate";N;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"74";s:5:"error";s:0:"";s:4:"pkID";i:14;s:3:"cID";i:1;s:4:"cvID";s:1:"8";}'),
(75, 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":11:{s:14:"\0*\0wrStatusNum";i:30;s:62:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled";b:0;s:64:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate";N;s:67:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate";N;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"75";s:5:"error";s:0:"";s:4:"pkID";i:14;s:3:"cID";i:1;s:4:"cvID";s:1:"9";}'),
(76, 'O:59:"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"76";s:5:"error";s:0:"";s:4:"pkID";i:11;s:3:"cID";i:1;s:13:"permissionSet";O:28:"Concrete\\Core\\Permission\\Set":2:{s:14:"\0*\0permissions";a:18:{i:1;s:2:"88";i:2;s:2:"93";i:3;s:3:"360";i:4;s:3:"360";i:5;s:3:"360";i:6;s:2:"93";i:7;s:3:"360";i:8;s:3:"360";i:9;s:3:"360";i:10;s:3:"360";i:11;s:3:"360";i:12;s:3:"360";i:13;s:2:"93";i:14;s:2:"93";i:15;s:3:"360";i:16;s:3:"360";i:17;s:3:"360";i:18;s:3:"360";}s:19:"\0*\0pkCategoryHandle";s:4:"page";}}'),
(77, 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":11:{s:14:"\0*\0wrStatusNum";i:30;s:62:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled";b:0;s:64:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate";N;s:67:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate";N;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"2";s:7:"\0*\0wrID";s:2:"77";s:5:"error";s:0:"";s:4:"pkID";i:14;s:3:"cID";i:1;s:4:"cvID";s:2:"10";}'),
(78, 'O:59:"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"78";s:5:"error";s:0:"";s:4:"pkID";i:11;s:3:"cID";i:1;s:13:"permissionSet";O:28:"Concrete\\Core\\Permission\\Set":2:{s:14:"\0*\0permissions";a:18:{i:1;s:2:"88";i:2;s:3:"360";i:3;s:3:"360";i:4;s:3:"360";i:5;s:3:"360";i:6;s:2:"93";i:7;s:3:"360";i:8;s:3:"360";i:9;s:3:"360";i:10;s:3:"360";i:11;s:3:"360";i:12;s:3:"360";i:13;s:3:"360";i:14;s:2:"93";i:15;s:3:"360";i:16;s:3:"360";i:17;s:3:"360";i:18;s:3:"360";}s:19:"\0*\0pkCategoryHandle";s:4:"page";}}'),
(79, 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":11:{s:14:"\0*\0wrStatusNum";i:30;s:62:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled";b:0;s:64:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate";N;s:67:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate";N;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"79";s:5:"error";s:0:"";s:4:"pkID";i:14;s:3:"cID";i:1;s:4:"cvID";s:2:"11";}'),
(80, 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":11:{s:14:"\0*\0wrStatusNum";i:30;s:62:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled";b:0;s:64:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate";N;s:67:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate";N;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"80";s:5:"error";s:0:"";s:4:"pkID";i:14;s:3:"cID";i:1;s:4:"cvID";s:2:"12";}'),
(81, 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":11:{s:14:"\0*\0wrStatusNum";i:30;s:62:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled";b:0;s:64:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate";N;s:67:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate";N;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"81";s:5:"error";s:0:"";s:4:"pkID";i:14;s:3:"cID";i:1;s:4:"cvID";s:2:"13";}'),
(82, 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":11:{s:14:"\0*\0wrStatusNum";i:30;s:62:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled";b:0;s:64:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate";N;s:67:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate";N;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"82";s:5:"error";s:0:"";s:4:"pkID";i:14;s:3:"cID";i:1;s:4:"cvID";s:2:"14";}'),
(83, 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":11:{s:14:"\0*\0wrStatusNum";i:30;s:62:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled";b:0;s:64:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate";N;s:67:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate";N;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"83";s:5:"error";s:0:"";s:4:"pkID";i:14;s:3:"cID";i:1;s:4:"cvID";s:2:"15";}'),
(84, 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":11:{s:14:"\0*\0wrStatusNum";i:30;s:62:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled";b:0;s:64:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate";N;s:67:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate";N;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"84";s:5:"error";s:0:"";s:4:"pkID";i:14;s:3:"cID";i:1;s:4:"cvID";s:2:"16";}'),
(85, 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":11:{s:14:"\0*\0wrStatusNum";i:30;s:62:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled";b:0;s:64:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate";N;s:67:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate";N;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"85";s:5:"error";s:0:"";s:4:"pkID";i:14;s:3:"cID";i:1;s:4:"cvID";s:2:"17";}'),
(86, 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":11:{s:14:"\0*\0wrStatusNum";i:30;s:62:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled";b:0;s:64:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate";N;s:67:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate";N;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"86";s:5:"error";s:0:"";s:4:"pkID";i:14;s:3:"cID";i:1;s:4:"cvID";s:2:"18";}'),
(87, 'O:49:"Concrete\\Core\\Workflow\\Request\\ApprovePageRequest":11:{s:14:"\0*\0wrStatusNum";i:30;s:62:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0isScheduled";b:0;s:64:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishDate";N;s:67:"\0Concrete\\Core\\Workflow\\Request\\ApprovePageRequest\0cvPublishEndDate";N;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"87";s:5:"error";s:0:"";s:4:"pkID";i:14;s:3:"cID";i:253;s:4:"cvID";s:1:"2";}'),
(88, 'O:70:"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsInheritanceRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"88";s:5:"error";s:0:"";s:4:"pkID";i:11;s:3:"cID";i:67;s:11:"inheritance";s:8:"OVERRIDE";}'),
(89, 'O:70:"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsInheritanceRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"89";s:5:"error";s:0:"";s:4:"pkID";i:11;s:3:"cID";i:68;s:11:"inheritance";s:8:"OVERRIDE";}'),
(90, 'O:59:"Concrete\\Core\\Workflow\\Request\\ChangePagePermissionsRequest":8:{s:14:"\0*\0wrStatusNum";i:30;s:12:"\0*\0currentWP";N;s:6:"\0*\0uID";s:1:"1";s:7:"\0*\0wrID";s:2:"90";s:5:"error";s:0:"";s:4:"pkID";i:11;s:3:"cID";i:68;s:13:"permissionSet";O:28:"Concrete\\Core\\Permission\\Set":2:{s:14:"\0*\0permissions";a:18:{i:1;s:3:"389";i:2;s:3:"310";i:3;s:3:"319";i:4;s:3:"319";i:5;s:3:"311";i:6;s:3:"312";i:7;s:3:"313";i:8;s:3:"315";i:9;s:3:"317";i:10;s:3:"316";i:11;s:3:"318";i:12;s:3:"321";i:13;s:3:"322";i:14;s:3:"323";i:15;s:3:"324";i:16;s:3:"325";i:17;s:3:"320";i:18;s:3:"314";}s:19:"\0*\0pkCategoryHandle";s:4:"page";}}');

-- --------------------------------------------------------

--
-- Table structure for table `Workflows`
--

CREATE TABLE `Workflows` (
  `wfID` int(10) UNSIGNED NOT NULL,
  `wfName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wftID` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `pkgID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `WorkflowTypes`
--

CREATE TABLE `WorkflowTypes` (
  `wftID` int(10) UNSIGNED NOT NULL,
  `wftHandle` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `wftName` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pkgID` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `WorkflowTypes`
--

INSERT INTO `WorkflowTypes` (`wftID`, `wftHandle`, `wftName`, `pkgID`) VALUES
(1, 'basic', 'Basic Workflow', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `AreaLayoutColumns`
--
ALTER TABLE `AreaLayoutColumns`
  ADD PRIMARY KEY (`arLayoutColumnID`),
  ADD KEY `arLayoutID` (`arLayoutID`,`arLayoutColumnIndex`),
  ADD KEY `arID` (`arID`),
  ADD KEY `arLayoutColumnDisplayID` (`arLayoutColumnDisplayID`);

--
-- Indexes for table `AreaLayoutCustomColumns`
--
ALTER TABLE `AreaLayoutCustomColumns`
  ADD PRIMARY KEY (`arLayoutColumnID`);

--
-- Indexes for table `AreaLayoutPresets`
--
ALTER TABLE `AreaLayoutPresets`
  ADD PRIMARY KEY (`arLayoutPresetID`),
  ADD KEY `arLayoutID` (`arLayoutID`),
  ADD KEY `arLayoutPresetName` (`arLayoutPresetName`);

--
-- Indexes for table `AreaLayouts`
--
ALTER TABLE `AreaLayouts`
  ADD PRIMARY KEY (`arLayoutID`);

--
-- Indexes for table `AreaLayoutsUsingPresets`
--
ALTER TABLE `AreaLayoutsUsingPresets`
  ADD PRIMARY KEY (`arLayoutID`);

--
-- Indexes for table `AreaLayoutThemeGridColumns`
--
ALTER TABLE `AreaLayoutThemeGridColumns`
  ADD PRIMARY KEY (`arLayoutColumnID`);

--
-- Indexes for table `AreaPermissionAssignments`
--
ALTER TABLE `AreaPermissionAssignments`
  ADD PRIMARY KEY (`cID`,`arHandle`,`pkID`,`paID`),
  ADD KEY `paID` (`paID`),
  ADD KEY `pkID` (`pkID`);

--
-- Indexes for table `AreaPermissionBlockTypeAccessList`
--
ALTER TABLE `AreaPermissionBlockTypeAccessList`
  ADD PRIMARY KEY (`paID`,`peID`),
  ADD KEY `peID` (`peID`);

--
-- Indexes for table `AreaPermissionBlockTypeAccessListCustom`
--
ALTER TABLE `AreaPermissionBlockTypeAccessListCustom`
  ADD PRIMARY KEY (`paID`,`peID`,`btID`),
  ADD KEY `peID` (`peID`),
  ADD KEY `btID` (`btID`);

--
-- Indexes for table `Areas`
--
ALTER TABLE `Areas`
  ADD PRIMARY KEY (`arID`),
  ADD KEY `arIsGlobal` (`arIsGlobal`),
  ADD KEY `cID` (`cID`),
  ADD KEY `arHandle` (`arHandle`),
  ADD KEY `arParentID` (`arParentID`);

--
-- Indexes for table `atAddress`
--
ALTER TABLE `atAddress`
  ADD PRIMARY KEY (`avID`);

--
-- Indexes for table `atAddressSettings`
--
ALTER TABLE `atAddressSettings`
  ADD PRIMARY KEY (`akID`);

--
-- Indexes for table `atBoolean`
--
ALTER TABLE `atBoolean`
  ADD PRIMARY KEY (`avID`);

--
-- Indexes for table `atBooleanSettings`
--
ALTER TABLE `atBooleanSettings`
  ADD PRIMARY KEY (`akID`);

--
-- Indexes for table `atDateTime`
--
ALTER TABLE `atDateTime`
  ADD PRIMARY KEY (`avID`);

--
-- Indexes for table `atDateTimeSettings`
--
ALTER TABLE `atDateTimeSettings`
  ADD PRIMARY KEY (`akID`);

--
-- Indexes for table `atDefault`
--
ALTER TABLE `atDefault`
  ADD PRIMARY KEY (`avID`);

--
-- Indexes for table `atEmptySettings`
--
ALTER TABLE `atEmptySettings`
  ADD PRIMARY KEY (`akID`);

--
-- Indexes for table `atExpress`
--
ALTER TABLE `atExpress`
  ADD PRIMARY KEY (`avID`);

--
-- Indexes for table `atExpressSelectedEntries`
--
ALTER TABLE `atExpressSelectedEntries`
  ADD PRIMARY KEY (`avID`,`exEntryID`),
  ADD KEY `IDX_C9D404BBA2A82A5D` (`avID`),
  ADD KEY `IDX_C9D404BB6DCB6296` (`exEntryID`);

--
-- Indexes for table `atExpressSettings`
--
ALTER TABLE `atExpressSettings`
  ADD PRIMARY KEY (`akID`),
  ADD KEY `IDX_E8F67F0FCE2D7284` (`exEntityID`);

--
-- Indexes for table `atFile`
--
ALTER TABLE `atFile`
  ADD PRIMARY KEY (`avID`),
  ADD KEY `IDX_73D17D61E3111F45` (`fID`);

--
-- Indexes for table `atFileSettings`
--
ALTER TABLE `atFileSettings`
  ADD PRIMARY KEY (`akID`);

--
-- Indexes for table `atNumber`
--
ALTER TABLE `atNumber`
  ADD PRIMARY KEY (`avID`);

--
-- Indexes for table `atSelect`
--
ALTER TABLE `atSelect`
  ADD PRIMARY KEY (`avID`);

--
-- Indexes for table `atSelectedSocialLinks`
--
ALTER TABLE `atSelectedSocialLinks`
  ADD PRIMARY KEY (`avsID`),
  ADD KEY `IDX_10743709A2A82A5D` (`avID`);

--
-- Indexes for table `atSelectedTopics`
--
ALTER TABLE `atSelectedTopics`
  ADD PRIMARY KEY (`avTreeTopicNodeID`),
  ADD KEY `IDX_E42A7D5BA2A82A5D` (`avID`);

--
-- Indexes for table `atSelectOptionLists`
--
ALTER TABLE `atSelectOptionLists`
  ADD PRIMARY KEY (`avSelectOptionListID`);

--
-- Indexes for table `atSelectOptions`
--
ALTER TABLE `atSelectOptions`
  ADD PRIMARY KEY (`avSelectOptionID`),
  ADD KEY `IDX_797414B0CB59257C` (`avSelectOptionListID`);

--
-- Indexes for table `atSelectOptionsSelected`
--
ALTER TABLE `atSelectOptionsSelected`
  ADD PRIMARY KEY (`avID`,`avSelectOptionID`),
  ADD KEY `IDX_40C97EC3A2A82A5D` (`avID`),
  ADD KEY `IDX_40C97EC3E584C274` (`avSelectOptionID`);

--
-- Indexes for table `atSelectSettings`
--
ALTER TABLE `atSelectSettings`
  ADD PRIMARY KEY (`akID`),
  ADD UNIQUE KEY `UNIQ_5D514424CB59257C` (`avSelectOptionListID`);

--
-- Indexes for table `atSite`
--
ALTER TABLE `atSite`
  ADD PRIMARY KEY (`avID`),
  ADD KEY `IDX_960D4295521D8435` (`siteID`);

--
-- Indexes for table `atSocialLinks`
--
ALTER TABLE `atSocialLinks`
  ADD PRIMARY KEY (`avID`);

--
-- Indexes for table `atTextareaSettings`
--
ALTER TABLE `atTextareaSettings`
  ADD PRIMARY KEY (`akID`);

--
-- Indexes for table `atTextSettings`
--
ALTER TABLE `atTextSettings`
  ADD PRIMARY KEY (`akID`);

--
-- Indexes for table `atTopic`
--
ALTER TABLE `atTopic`
  ADD PRIMARY KEY (`avID`);

--
-- Indexes for table `atTopicSettings`
--
ALTER TABLE `atTopicSettings`
  ADD PRIMARY KEY (`akID`);

--
-- Indexes for table `AttributeKeyCategories`
--
ALTER TABLE `AttributeKeyCategories`
  ADD PRIMARY KEY (`akCategoryID`),
  ADD UNIQUE KEY `UNIQ_A2A0CC67FA0337B` (`akCategoryHandle`),
  ADD KEY `IDX_A2A0CC67CE45CBB0` (`pkgID`),
  ADD KEY `pkgID` (`pkgID`,`akCategoryID`),
  ADD KEY `akCategoryHandle` (`akCategoryHandle`);

--
-- Indexes for table `AttributeKeys`
--
ALTER TABLE `AttributeKeys`
  ADD PRIMARY KEY (`akID`),
  ADD KEY `IDX_DCA32C62A12CFE33` (`atID`),
  ADD KEY `IDX_DCA32C62B059B76B` (`akCategoryID`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Indexes for table `AttributeSetKeys`
--
ALTER TABLE `AttributeSetKeys`
  ADD PRIMARY KEY (`akID`,`asID`),
  ADD KEY `IDX_222F72D8B6561A7E` (`akID`),
  ADD KEY `IDX_222F72D8A463E8B6` (`asID`);

--
-- Indexes for table `AttributeSets`
--
ALTER TABLE `AttributeSets`
  ADD PRIMARY KEY (`asID`),
  ADD KEY `IDX_FCA02D5FB059B76B` (`akCategoryID`),
  ADD KEY `asHandle` (`asHandle`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Indexes for table `AttributeTypeCategories`
--
ALTER TABLE `AttributeTypeCategories`
  ADD PRIMARY KEY (`akCategoryID`,`atID`),
  ADD KEY `IDX_49A9CABEB059B76B` (`akCategoryID`),
  ADD KEY `IDX_49A9CABEA12CFE33` (`atID`);

--
-- Indexes for table `AttributeTypes`
--
ALTER TABLE `AttributeTypes`
  ADD PRIMARY KEY (`atID`),
  ADD UNIQUE KEY `UNIQ_53580A7F46AA0F38` (`atHandle`),
  ADD KEY `IDX_53580A7FCE45CBB0` (`pkgID`),
  ADD KEY `pkgID` (`pkgID`,`atID`);

--
-- Indexes for table `AttributeValues`
--
ALTER TABLE `AttributeValues`
  ADD PRIMARY KEY (`avID`),
  ADD KEY `IDX_DCCE7864B6561A7E` (`akID`);

--
-- Indexes for table `atUserGroupSettings`
--
ALTER TABLE `atUserGroupSettings`
  ADD PRIMARY KEY (`akID`);

--
-- Indexes for table `AuthenticationTypes`
--
ALTER TABLE `AuthenticationTypes`
  ADD PRIMARY KEY (`authTypeID`),
  ADD UNIQUE KEY `authTypeHandle` (`authTypeHandle`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Indexes for table `authTypeConcreteCookieMap`
--
ALTER TABLE `authTypeConcreteCookieMap`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `token` (`token`),
  ADD KEY `uID` (`uID`);

--
-- Indexes for table `BannedWords`
--
ALTER TABLE `BannedWords`
  ADD PRIMARY KEY (`bwID`);

--
-- Indexes for table `BasicWorkflowPermissionAssignments`
--
ALTER TABLE `BasicWorkflowPermissionAssignments`
  ADD PRIMARY KEY (`wfID`,`pkID`,`paID`),
  ADD KEY `pkID` (`pkID`),
  ADD KEY `paID` (`paID`);

--
-- Indexes for table `BasicWorkflowProgressData`
--
ALTER TABLE `BasicWorkflowProgressData`
  ADD PRIMARY KEY (`wpID`),
  ADD KEY `uIDStarted` (`uIDStarted`),
  ADD KEY `uIDCompleted` (`uIDCompleted`);

--
-- Indexes for table `BlockFeatureAssignments`
--
ALTER TABLE `BlockFeatureAssignments`
  ADD PRIMARY KEY (`cID`,`cvID`,`bID`,`faID`),
  ADD KEY `faID` (`faID`,`cID`,`cvID`),
  ADD KEY `bID` (`bID`);

--
-- Indexes for table `BlockPermissionAssignments`
--
ALTER TABLE `BlockPermissionAssignments`
  ADD PRIMARY KEY (`cID`,`cvID`,`bID`,`pkID`,`paID`),
  ADD KEY `bID` (`bID`),
  ADD KEY `pkID` (`pkID`),
  ADD KEY `paID` (`paID`);

--
-- Indexes for table `Blocks`
--
ALTER TABLE `Blocks`
  ADD PRIMARY KEY (`bID`),
  ADD KEY `btID` (`btID`),
  ADD KEY `uID` (`uID`);

--
-- Indexes for table `BlockTypePermissionBlockTypeAccessList`
--
ALTER TABLE `BlockTypePermissionBlockTypeAccessList`
  ADD PRIMARY KEY (`paID`,`peID`),
  ADD KEY `peID` (`peID`);

--
-- Indexes for table `BlockTypePermissionBlockTypeAccessListCustom`
--
ALTER TABLE `BlockTypePermissionBlockTypeAccessListCustom`
  ADD PRIMARY KEY (`paID`,`peID`,`btID`),
  ADD KEY `peID` (`peID`),
  ADD KEY `btID` (`btID`);

--
-- Indexes for table `BlockTypes`
--
ALTER TABLE `BlockTypes`
  ADD PRIMARY KEY (`btID`);

--
-- Indexes for table `BlockTypeSetBlockTypes`
--
ALTER TABLE `BlockTypeSetBlockTypes`
  ADD PRIMARY KEY (`btID`,`btsID`),
  ADD KEY `btsID` (`btsID`,`displayOrder`);

--
-- Indexes for table `BlockTypeSets`
--
ALTER TABLE `BlockTypeSets`
  ADD PRIMARY KEY (`btsID`),
  ADD UNIQUE KEY `btsHandle` (`btsHandle`),
  ADD KEY `btsDisplayOrder` (`btsDisplayOrder`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Indexes for table `btCalendar`
--
ALTER TABLE `btCalendar`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btCalendarEvent`
--
ALTER TABLE `btCalendarEvent`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btContentFile`
--
ALTER TABLE `btContentFile`
  ADD PRIMARY KEY (`bID`),
  ADD KEY `fID` (`fID`);

--
-- Indexes for table `btContentImage`
--
ALTER TABLE `btContentImage`
  ADD PRIMARY KEY (`bID`),
  ADD KEY `fID` (`fID`);

--
-- Indexes for table `btContentLocal`
--
ALTER TABLE `btContentLocal`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btCoreAreaLayout`
--
ALTER TABLE `btCoreAreaLayout`
  ADD PRIMARY KEY (`bID`),
  ADD KEY `arLayoutID` (`arLayoutID`);

--
-- Indexes for table `btCoreConversation`
--
ALTER TABLE `btCoreConversation`
  ADD PRIMARY KEY (`bID`),
  ADD KEY `cnvID` (`cnvID`);

--
-- Indexes for table `btCorePageTypeComposerControlOutput`
--
ALTER TABLE `btCorePageTypeComposerControlOutput`
  ADD PRIMARY KEY (`bID`),
  ADD KEY `ptComposerOutputControlID` (`ptComposerOutputControlID`);

--
-- Indexes for table `btCoreScrapbookDisplay`
--
ALTER TABLE `btCoreScrapbookDisplay`
  ADD PRIMARY KEY (`bID`),
  ADD KEY `bOriginalID` (`bOriginalID`);

--
-- Indexes for table `btCoreStackDisplay`
--
ALTER TABLE `btCoreStackDisplay`
  ADD PRIMARY KEY (`bID`),
  ADD KEY `stID` (`stID`);

--
-- Indexes for table `btDesktopDraftList`
--
ALTER TABLE `btDesktopDraftList`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btDesktopNewsflowLatest`
--
ALTER TABLE `btDesktopNewsflowLatest`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btDesktopSiteActivity`
--
ALTER TABLE `btDesktopSiteActivity`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btDocumentLibrary`
--
ALTER TABLE `btDocumentLibrary`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btEventList`
--
ALTER TABLE `btEventList`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btExpressEntryDetail`
--
ALTER TABLE `btExpressEntryDetail`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btExpressEntryList`
--
ALTER TABLE `btExpressEntryList`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btExpressForm`
--
ALTER TABLE `btExpressForm`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btExternalForm`
--
ALTER TABLE `btExternalForm`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btFaq`
--
ALTER TABLE `btFaq`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btFaqEntries`
--
ALTER TABLE `btFaqEntries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bID` (`bID`,`sortOrder`);

--
-- Indexes for table `btFeature`
--
ALTER TABLE `btFeature`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btForm`
--
ALTER TABLE `btForm`
  ADD PRIMARY KEY (`bID`),
  ADD KEY `questionSetIdForeign` (`questionSetId`);

--
-- Indexes for table `btFormAnswers`
--
ALTER TABLE `btFormAnswers`
  ADD PRIMARY KEY (`aID`),
  ADD KEY `asID` (`asID`),
  ADD KEY `msqID` (`msqID`);

--
-- Indexes for table `btFormAnswerSet`
--
ALTER TABLE `btFormAnswerSet`
  ADD PRIMARY KEY (`asID`),
  ADD KEY `questionSetId` (`questionSetId`),
  ADD KEY `uID` (`uID`);

--
-- Indexes for table `btFormQuestions`
--
ALTER TABLE `btFormQuestions`
  ADD PRIMARY KEY (`qID`),
  ADD KEY `questionSetId` (`questionSetId`),
  ADD KEY `msqID` (`msqID`),
  ADD KEY `bID` (`bID`,`questionSetId`);

--
-- Indexes for table `btGoogleMap`
--
ALTER TABLE `btGoogleMap`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btImageSlider`
--
ALTER TABLE `btImageSlider`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btImageSliderEntries`
--
ALTER TABLE `btImageSliderEntries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `btNavigation`
--
ALTER TABLE `btNavigation`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btNextPrevious`
--
ALTER TABLE `btNextPrevious`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btPageAttributeDisplay`
--
ALTER TABLE `btPageAttributeDisplay`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btPageList`
--
ALTER TABLE `btPageList`
  ADD PRIMARY KEY (`bID`),
  ADD KEY `ptID` (`ptID`);

--
-- Indexes for table `btPageTitle`
--
ALTER TABLE `btPageTitle`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btRssDisplay`
--
ALTER TABLE `btRssDisplay`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btSearch`
--
ALTER TABLE `btSearch`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btShareThisPage`
--
ALTER TABLE `btShareThisPage`
  ADD PRIMARY KEY (`btShareThisPageID`);

--
-- Indexes for table `btSocialLinks`
--
ALTER TABLE `btSocialLinks`
  ADD PRIMARY KEY (`btSocialLinkID`),
  ADD KEY `bID` (`bID`,`displayOrder`),
  ADD KEY `slID` (`slID`);

--
-- Indexes for table `btSurvey`
--
ALTER TABLE `btSurvey`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btSurveyOptions`
--
ALTER TABLE `btSurveyOptions`
  ADD PRIMARY KEY (`optionID`),
  ADD KEY `bID` (`bID`,`displayOrder`);

--
-- Indexes for table `btSurveyResults`
--
ALTER TABLE `btSurveyResults`
  ADD PRIMARY KEY (`resultID`),
  ADD KEY `optionID` (`optionID`),
  ADD KEY `cID` (`cID`,`optionID`,`bID`),
  ADD KEY `bID` (`bID`,`cID`,`uID`),
  ADD KEY `uID` (`uID`);

--
-- Indexes for table `btSwitchLanguage`
--
ALTER TABLE `btSwitchLanguage`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btTags`
--
ALTER TABLE `btTags`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btTestimonial`
--
ALTER TABLE `btTestimonial`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btTopicList`
--
ALTER TABLE `btTopicList`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btVideo`
--
ALTER TABLE `btVideo`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `btYouTube`
--
ALTER TABLE `btYouTube`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `CalendarEventAttributeKeys`
--
ALTER TABLE `CalendarEventAttributeKeys`
  ADD PRIMARY KEY (`akID`);

--
-- Indexes for table `CalendarEventOccurrences`
--
ALTER TABLE `CalendarEventOccurrences`
  ADD PRIMARY KEY (`occurrenceID`),
  ADD KEY `IDX_7DD686EC31391E00` (`repetitionID`),
  ADD KEY `eventdates` (`occurrenceID`,`startTime`,`endTime`);

--
-- Indexes for table `CalendarEventRepetitions`
--
ALTER TABLE `CalendarEventRepetitions`
  ADD PRIMARY KEY (`repetitionID`);

--
-- Indexes for table `CalendarEvents`
--
ALTER TABLE `CalendarEvents`
  ADD PRIMARY KEY (`eventID`),
  ADD KEY `IDX_7F23C55611C85723` (`caID`);

--
-- Indexes for table `CalendarEventSearchIndexAttributes`
--
ALTER TABLE `CalendarEventSearchIndexAttributes`
  ADD PRIMARY KEY (`eventID`);

--
-- Indexes for table `CalendarEventVersionAttributeValues`
--
ALTER TABLE `CalendarEventVersionAttributeValues`
  ADD PRIMARY KEY (`eventVersionID`,`akID`),
  ADD KEY `IDX_8C835B05403F5D6` (`eventVersionID`),
  ADD KEY `IDX_8C835B05B6561A7E` (`akID`),
  ADD KEY `IDX_8C835B05A2A82A5D` (`avID`);

--
-- Indexes for table `CalendarEventVersionOccurrences`
--
ALTER TABLE `CalendarEventVersionOccurrences`
  ADD PRIMARY KEY (`versionOccurrenceID`),
  ADD KEY `IDX_60310489403F5D6` (`eventVersionID`),
  ADD KEY `IDX_60310489B4FDDC0F` (`occurrenceID`);

--
-- Indexes for table `CalendarEventVersionRepetitions`
--
ALTER TABLE `CalendarEventVersionRepetitions`
  ADD PRIMARY KEY (`versionRepetitionID`),
  ADD KEY `IDX_C1C3D3DB403F5D6` (`eventVersionID`),
  ADD KEY `IDX_C1C3D3DB31391E00` (`repetitionID`);

--
-- Indexes for table `CalendarEventVersions`
--
ALTER TABLE `CalendarEventVersions`
  ADD PRIMARY KEY (`eventVersionID`),
  ADD KEY `IDX_8E26027410409BA4` (`eventID`),
  ADD KEY `IDX_8E260274FD71026C` (`uID`);

--
-- Indexes for table `CalendarEventWorkflowProgress`
--
ALTER TABLE `CalendarEventWorkflowProgress`
  ADD PRIMARY KEY (`eventID`,`wpID`),
  ADD KEY `IDX_C5EAACF910409BA4` (`eventID`),
  ADD KEY `wpID` (`wpID`);

--
-- Indexes for table `CalendarPermissionAssignments`
--
ALTER TABLE `CalendarPermissionAssignments`
  ADD PRIMARY KEY (`caID`,`pkID`,`paID`),
  ADD KEY `IDX_5AD546AA11C85723` (`caID`),
  ADD KEY `paID` (`paID`),
  ADD KEY `pkID` (`pkID`);

--
-- Indexes for table `CalendarRelatedEvents`
--
ALTER TABLE `CalendarRelatedEvents`
  ADD PRIMARY KEY (`relatedEventID`),
  ADD KEY `IDX_310130E910409BA4` (`eventID`);

--
-- Indexes for table `Calendars`
--
ALTER TABLE `Calendars`
  ADD PRIMARY KEY (`caID`),
  ADD KEY `IDX_62E00AC521D8435` (`siteID`);

--
-- Indexes for table `CollectionAttributeKeys`
--
ALTER TABLE `CollectionAttributeKeys`
  ADD PRIMARY KEY (`akID`);

--
-- Indexes for table `CollectionAttributeValues`
--
ALTER TABLE `CollectionAttributeValues`
  ADD PRIMARY KEY (`cID`,`cvID`,`akID`),
  ADD KEY `IDX_BB9995FCB6561A7E` (`akID`),
  ADD KEY `IDX_BB9995FCA2A82A5D` (`avID`);

--
-- Indexes for table `Collections`
--
ALTER TABLE `Collections`
  ADD PRIMARY KEY (`cID`),
  ADD KEY `cIDDateModified` (`cID`,`cDateModified`),
  ADD KEY `cDateModified` (`cDateModified`),
  ADD KEY `cDateAdded` (`cDateAdded`);

--
-- Indexes for table `CollectionSearchIndexAttributes`
--
ALTER TABLE `CollectionSearchIndexAttributes`
  ADD PRIMARY KEY (`cID`);

--
-- Indexes for table `CollectionVersionAreaStyles`
--
ALTER TABLE `CollectionVersionAreaStyles`
  ADD PRIMARY KEY (`cID`,`cvID`,`arHandle`),
  ADD KEY `issID` (`issID`);

--
-- Indexes for table `CollectionVersionBlocks`
--
ALTER TABLE `CollectionVersionBlocks`
  ADD PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`),
  ADD KEY `bID` (`bID`,`cID`),
  ADD KEY `cbRelationID` (`cbRelationID`);

--
-- Indexes for table `CollectionVersionBlocksCacheSettings`
--
ALTER TABLE `CollectionVersionBlocksCacheSettings`
  ADD PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`),
  ADD KEY `bID` (`bID`,`cID`,`cvID`,`arHandle`);

--
-- Indexes for table `CollectionVersionBlocksOutputCache`
--
ALTER TABLE `CollectionVersionBlocksOutputCache`
  ADD PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`),
  ADD KEY `bID` (`bID`,`cID`,`cvID`,`arHandle`);

--
-- Indexes for table `CollectionVersionBlockStyles`
--
ALTER TABLE `CollectionVersionBlockStyles`
  ADD PRIMARY KEY (`cID`,`cvID`,`bID`,`arHandle`),
  ADD KEY `bID` (`bID`,`issID`),
  ADD KEY `issID` (`issID`);

--
-- Indexes for table `CollectionVersionFeatureAssignments`
--
ALTER TABLE `CollectionVersionFeatureAssignments`
  ADD PRIMARY KEY (`cID`,`cvID`,`faID`),
  ADD KEY `faID` (`faID`);

--
-- Indexes for table `CollectionVersionRelatedEdits`
--
ALTER TABLE `CollectionVersionRelatedEdits`
  ADD PRIMARY KEY (`cID`,`cvID`,`cRelationID`,`cvRelationID`);

--
-- Indexes for table `CollectionVersions`
--
ALTER TABLE `CollectionVersions`
  ADD PRIMARY KEY (`cID`,`cvID`),
  ADD KEY `cvIsApproved` (`cvIsApproved`),
  ADD KEY `cvAuthorUID` (`cvAuthorUID`),
  ADD KEY `cvApproverUID` (`cvApproverUID`),
  ADD KEY `pThemeID` (`pThemeID`),
  ADD KEY `pTemplateID` (`pTemplateID`);

--
-- Indexes for table `CollectionVersionThemeCustomStyles`
--
ALTER TABLE `CollectionVersionThemeCustomStyles`
  ADD PRIMARY KEY (`cID`,`cvID`,`pThemeID`),
  ADD KEY `pThemeID` (`pThemeID`),
  ADD KEY `scvlID` (`scvlID`),
  ADD KEY `sccRecordID` (`sccRecordID`);

--
-- Indexes for table `Config`
--
ALTER TABLE `Config`
  ADD PRIMARY KEY (`configNamespace`,`configGroup`,`configItem`),
  ADD KEY `configGroup` (`configGroup`);

--
-- Indexes for table `ConfigStore`
--
ALTER TABLE `ConfigStore`
  ADD PRIMARY KEY (`cfKey`,`uID`),
  ADD KEY `uID` (`uID`,`cfKey`),
  ADD KEY `pkgID` (`pkgID`,`cfKey`);

--
-- Indexes for table `ConversationDiscussions`
--
ALTER TABLE `ConversationDiscussions`
  ADD PRIMARY KEY (`cnvDiscussionID`),
  ADD KEY `cID` (`cID`);

--
-- Indexes for table `ConversationEditors`
--
ALTER TABLE `ConversationEditors`
  ADD PRIMARY KEY (`cnvEditorID`),
  ADD KEY `pkgID` (`pkgID`,`cnvEditorHandle`);

--
-- Indexes for table `ConversationFeatureDetailAssignments`
--
ALTER TABLE `ConversationFeatureDetailAssignments`
  ADD PRIMARY KEY (`faID`),
  ADD KEY `cnvID` (`cnvID`);

--
-- Indexes for table `ConversationFlaggedMessages`
--
ALTER TABLE `ConversationFlaggedMessages`
  ADD PRIMARY KEY (`cnvMessageID`),
  ADD KEY `cnvMessageFlagTypeID` (`cnvMessageFlagTypeID`);

--
-- Indexes for table `ConversationFlaggedMessageTypes`
--
ALTER TABLE `ConversationFlaggedMessageTypes`
  ADD PRIMARY KEY (`cnvMessageFlagTypeID`),
  ADD UNIQUE KEY `cnvMessageFlagTypeHandle` (`cnvMessageFlagTypeHandle`);

--
-- Indexes for table `ConversationMessageAttachments`
--
ALTER TABLE `ConversationMessageAttachments`
  ADD PRIMARY KEY (`cnvMessageAttachmentID`),
  ADD KEY `cnvMessageID` (`cnvMessageID`),
  ADD KEY `fID` (`fID`);

--
-- Indexes for table `ConversationMessageNotifications`
--
ALTER TABLE `ConversationMessageNotifications`
  ADD PRIMARY KEY (`nID`);

--
-- Indexes for table `ConversationMessageRatings`
--
ALTER TABLE `ConversationMessageRatings`
  ADD PRIMARY KEY (`cnvMessageRatingID`),
  ADD KEY `cnvMessageID` (`cnvMessageID`,`cnvRatingTypeID`),
  ADD KEY `cnvRatingTypeID` (`cnvRatingTypeID`),
  ADD KEY `uID` (`uID`);

--
-- Indexes for table `ConversationMessages`
--
ALTER TABLE `ConversationMessages`
  ADD PRIMARY KEY (`cnvMessageID`),
  ADD KEY `cnvID` (`cnvID`),
  ADD KEY `cnvMessageParentID` (`cnvMessageParentID`),
  ADD KEY `uID` (`uID`);

--
-- Indexes for table `ConversationPermissionAddMessageAccessList`
--
ALTER TABLE `ConversationPermissionAddMessageAccessList`
  ADD PRIMARY KEY (`paID`,`peID`),
  ADD KEY `peID` (`peID`);

--
-- Indexes for table `ConversationPermissionAssignments`
--
ALTER TABLE `ConversationPermissionAssignments`
  ADD PRIMARY KEY (`cnvID`,`pkID`,`paID`),
  ADD KEY `paID` (`paID`),
  ADD KEY `pkID` (`pkID`);

--
-- Indexes for table `ConversationRatingTypes`
--
ALTER TABLE `ConversationRatingTypes`
  ADD PRIMARY KEY (`cnvRatingTypeID`),
  ADD UNIQUE KEY `cnvRatingTypeHandle` (`cnvRatingTypeHandle`),
  ADD KEY `pkgID` (`pkgID`,`cnvRatingTypeHandle`);

--
-- Indexes for table `Conversations`
--
ALTER TABLE `Conversations`
  ADD PRIMARY KEY (`cnvID`),
  ADD KEY `cID` (`cID`),
  ADD KEY `cnvParentMessageID` (`cnvParentMessageID`);

--
-- Indexes for table `ConversationSubscriptions`
--
ALTER TABLE `ConversationSubscriptions`
  ADD PRIMARY KEY (`cnvID`,`uID`),
  ADD KEY `cnvID` (`cnvID`),
  ADD KEY `uID` (`uID`);

--
-- Indexes for table `DownloadStatistics`
--
ALTER TABLE `DownloadStatistics`
  ADD PRIMARY KEY (`dsID`),
  ADD KEY `fID` (`fID`,`timestamp`),
  ADD KEY `fvID` (`fID`,`fvID`),
  ADD KEY `uID` (`uID`),
  ADD KEY `rcID` (`rcID`),
  ADD KEY `timestamp` (`timestamp`);

--
-- Indexes for table `ExpressAttributeKeys`
--
ALTER TABLE `ExpressAttributeKeys`
  ADD PRIMARY KEY (`akID`),
  ADD KEY `IDX_8C881F181257D5D` (`entity_id`);

--
-- Indexes for table `ExpressEntities`
--
ALTER TABLE `ExpressEntities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_BC772AA6918020D9` (`handle`),
  ADD UNIQUE KEY `UNIQ_BC772AA6547D6B2D` (`default_view_form_id`),
  ADD UNIQUE KEY `UNIQ_BC772AA6C7DEC56D` (`default_edit_form_id`),
  ADD KEY `IDX_BC772AA6CE45CBB0` (`pkgID`);

--
-- Indexes for table `ExpressEntityAssociationEntries`
--
ALTER TABLE `ExpressEntityAssociationEntries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_9C2BB76C6DCB6296` (`exEntryID`),
  ADD KEY `IDX_9C2BB76CEFB9C8A5` (`association_id`);

--
-- Indexes for table `ExpressEntityAssociations`
--
ALTER TABLE `ExpressEntityAssociations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_98A0F796E9BBEE93` (`source_entity_id`),
  ADD KEY `IDX_98A0F796B5910F71` (`target_entity_id`);

--
-- Indexes for table `ExpressEntityEntries`
--
ALTER TABLE `ExpressEntityEntries`
  ADD PRIMARY KEY (`exEntryID`),
  ADD KEY `IDX_B8AE3531FD71026C` (`uID`),
  ADD KEY `IDX_B8AE3531AFC87D03` (`exEntryEntityID`);

--
-- Indexes for table `ExpressEntityEntryAssociations`
--
ALTER TABLE `ExpressEntityEntryAssociations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_25B3A0826DCB6296` (`exEntryID`),
  ADD KEY `IDX_25B3A082EFB9C8A5` (`association_id`);

--
-- Indexes for table `ExpressEntityEntryAttributeValues`
--
ALTER TABLE `ExpressEntityEntryAttributeValues`
  ADD PRIMARY KEY (`exEntryID`,`akID`),
  ADD KEY `IDX_6DB641546DCB6296` (`exEntryID`),
  ADD KEY `IDX_6DB64154B6561A7E` (`akID`),
  ADD KEY `IDX_6DB64154A2A82A5D` (`avID`);

--
-- Indexes for table `ExpressFormFieldSetAssociationControls`
--
ALTER TABLE `ExpressFormFieldSetAssociationControls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_E6DF21BBEFB9C8A5` (`association_id`);

--
-- Indexes for table `ExpressFormFieldSetAttributeKeyControls`
--
ALTER TABLE `ExpressFormFieldSetAttributeKeyControls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_8481F9D1B6561A7E` (`akID`);

--
-- Indexes for table `ExpressFormFieldSetAuthorControls`
--
ALTER TABLE `ExpressFormFieldSetAuthorControls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ExpressFormFieldSetControls`
--
ALTER TABLE `ExpressFormFieldSetControls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_E42868A43ABF811A` (`field_set_id`);

--
-- Indexes for table `ExpressFormFieldSetPublicIdentifierControls`
--
ALTER TABLE `ExpressFormFieldSetPublicIdentifierControls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ExpressFormFieldSets`
--
ALTER TABLE `ExpressFormFieldSets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_A33BBBEC5FF69B7D` (`form_id`);

--
-- Indexes for table `ExpressFormFieldSetTextControls`
--
ALTER TABLE `ExpressFormFieldSetTextControls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ExpressForms`
--
ALTER TABLE `ExpressForms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_8D09031A81257D5D` (`entity_id`);

--
-- Indexes for table `FeatureAssignments`
--
ALTER TABLE `FeatureAssignments`
  ADD PRIMARY KEY (`faID`),
  ADD KEY `feID` (`feID`),
  ADD KEY `fcID` (`fcID`);

--
-- Indexes for table `FeatureCategories`
--
ALTER TABLE `FeatureCategories`
  ADD PRIMARY KEY (`fcID`),
  ADD UNIQUE KEY `fcHandle` (`fcHandle`),
  ADD KEY `pkgID` (`pkgID`,`fcID`);

--
-- Indexes for table `Features`
--
ALTER TABLE `Features`
  ADD PRIMARY KEY (`feID`),
  ADD UNIQUE KEY `feHandle` (`feHandle`),
  ADD KEY `pkgID` (`pkgID`,`feID`);

--
-- Indexes for table `FileAttributeKeys`
--
ALTER TABLE `FileAttributeKeys`
  ADD PRIMARY KEY (`akID`);

--
-- Indexes for table `FileAttributeValues`
--
ALTER TABLE `FileAttributeValues`
  ADD PRIMARY KEY (`fID`,`fvID`,`akID`),
  ADD KEY `IDX_BBECEAA4B6561A7E` (`akID`),
  ADD KEY `IDX_BBECEAA4A2A82A5D` (`avID`);

--
-- Indexes for table `FileImageThumbnailPaths`
--
ALTER TABLE `FileImageThumbnailPaths`
  ADD PRIMARY KEY (`fileID`,`fileVersionID`,`thumbnailTypeHandle`,`storageLocationID`,`thumbnailFormat`),
  ADD KEY `thumbnailPathIsBuilt` (`isBuilt`);

--
-- Indexes for table `FileImageThumbnailTypeFileSets`
--
ALTER TABLE `FileImageThumbnailTypeFileSets`
  ADD PRIMARY KEY (`ftfsThumbnailType`,`ftfsFileSetID`),
  ADD KEY `IDX_BD75F88D480660E5` (`ftfsThumbnailType`);

--
-- Indexes for table `FileImageThumbnailTypes`
--
ALTER TABLE `FileImageThumbnailTypes`
  ADD PRIMARY KEY (`ftTypeID`);

--
-- Indexes for table `FilePermissionAssignments`
--
ALTER TABLE `FilePermissionAssignments`
  ADD PRIMARY KEY (`fID`,`pkID`,`paID`),
  ADD KEY `pkID` (`pkID`),
  ADD KEY `paID` (`paID`);

--
-- Indexes for table `FilePermissionFileTypeAccessList`
--
ALTER TABLE `FilePermissionFileTypeAccessList`
  ADD PRIMARY KEY (`paID`,`peID`),
  ADD KEY `peID` (`peID`);

--
-- Indexes for table `FilePermissionFileTypeAccessListCustom`
--
ALTER TABLE `FilePermissionFileTypeAccessListCustom`
  ADD PRIMARY KEY (`paID`,`peID`,`extension`),
  ADD KEY `peID` (`peID`);

--
-- Indexes for table `FilePermissionFileTypes`
--
ALTER TABLE `FilePermissionFileTypes`
  ADD PRIMARY KEY (`fsID`,`gID`,`uID`,`extension`),
  ADD KEY `gID` (`gID`),
  ADD KEY `uID` (`uID`);

--
-- Indexes for table `Files`
--
ALTER TABLE `Files`
  ADD PRIMARY KEY (`fID`),
  ADD KEY `uID` (`uID`),
  ADD KEY `fslID` (`fslID`),
  ADD KEY `ocID` (`ocID`),
  ADD KEY `fOverrideSetPermissions` (`fOverrideSetPermissions`);

--
-- Indexes for table `FileSearchIndexAttributes`
--
ALTER TABLE `FileSearchIndexAttributes`
  ADD PRIMARY KEY (`fID`);

--
-- Indexes for table `FileSetFiles`
--
ALTER TABLE `FileSetFiles`
  ADD PRIMARY KEY (`fsfID`),
  ADD KEY `fID` (`fID`),
  ADD KEY `fsID` (`fsID`);

--
-- Indexes for table `FileSets`
--
ALTER TABLE `FileSets`
  ADD PRIMARY KEY (`fsID`),
  ADD KEY `uID` (`uID`,`fsType`,`fsName`),
  ADD KEY `fsName` (`fsName`),
  ADD KEY `fsType` (`fsType`);

--
-- Indexes for table `FileSetSavedSearches`
--
ALTER TABLE `FileSetSavedSearches`
  ADD PRIMARY KEY (`fsID`);

--
-- Indexes for table `FileStorageLocations`
--
ALTER TABLE `FileStorageLocations`
  ADD PRIMARY KEY (`fslID`);

--
-- Indexes for table `FileStorageLocationTypes`
--
ALTER TABLE `FileStorageLocationTypes`
  ADD PRIMARY KEY (`fslTypeID`);

--
-- Indexes for table `FileUsageRecord`
--
ALTER TABLE `FileUsageRecord`
  ADD PRIMARY KEY (`file_id`,`block_id`,`collection_id`,`collection_version_id`),
  ADD KEY `block` (`block_id`),
  ADD KEY `collection_version` (`collection_id`,`collection_version_id`);

--
-- Indexes for table `FileVersionLog`
--
ALTER TABLE `FileVersionLog`
  ADD PRIMARY KEY (`fvlID`),
  ADD KEY `fvID` (`fID`,`fvID`,`fvlID`);

--
-- Indexes for table `FileVersions`
--
ALTER TABLE `FileVersions`
  ADD PRIMARY KEY (`fID`,`fvID`),
  ADD KEY `IDX_D7B5A13AE3111F45` (`fID`),
  ADD KEY `fvFilename` (`fvFilename`),
  ADD KEY `fvExtension` (`fvExtension`),
  ADD KEY `fvType` (`fvType`);

--
-- Indexes for table `FormSubmissionNotifications`
--
ALTER TABLE `FormSubmissionNotifications`
  ADD PRIMARY KEY (`nID`),
  ADD KEY `IDX_E7B6BE406DCB6296` (`exEntryID`);

--
-- Indexes for table `gaPage`
--
ALTER TABLE `gaPage`
  ADD PRIMARY KEY (`gaiID`),
  ADD KEY `cID` (`cID`);

--
-- Indexes for table `GatheringConfiguredDataSources`
--
ALTER TABLE `GatheringConfiguredDataSources`
  ADD PRIMARY KEY (`gcsID`),
  ADD KEY `gaID` (`gaID`),
  ADD KEY `gasID` (`gasID`);

--
-- Indexes for table `GatheringDataSources`
--
ALTER TABLE `GatheringDataSources`
  ADD PRIMARY KEY (`gasID`),
  ADD UNIQUE KEY `gasHandle` (`gasHandle`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Indexes for table `GatheringItemFeatureAssignments`
--
ALTER TABLE `GatheringItemFeatureAssignments`
  ADD PRIMARY KEY (`gafaID`),
  ADD KEY `gaiID` (`gaiID`,`faID`),
  ADD KEY `faID` (`faID`);

--
-- Indexes for table `GatheringItems`
--
ALTER TABLE `GatheringItems`
  ADD PRIMARY KEY (`gaiID`),
  ADD UNIQUE KEY `gaiUniqueKey` (`gaiKey`,`gasID`,`gaID`),
  ADD KEY `gaID` (`gaID`,`gaiBatchTimestamp`),
  ADD KEY `gasID` (`gasID`);

--
-- Indexes for table `GatheringItemSelectedTemplates`
--
ALTER TABLE `GatheringItemSelectedTemplates`
  ADD PRIMARY KEY (`gaiID`,`gatID`),
  ADD UNIQUE KEY `gatUniqueKey` (`gaiID`,`gatTypeID`),
  ADD KEY `gatTypeID` (`gatTypeID`),
  ADD KEY `gatID` (`gatID`);

--
-- Indexes for table `GatheringItemTemplateFeatures`
--
ALTER TABLE `GatheringItemTemplateFeatures`
  ADD PRIMARY KEY (`gfeID`),
  ADD KEY `gatID` (`gatID`),
  ADD KEY `feID` (`feID`,`gatID`);

--
-- Indexes for table `GatheringItemTemplates`
--
ALTER TABLE `GatheringItemTemplates`
  ADD PRIMARY KEY (`gatID`),
  ADD UNIQUE KEY `gatHandle` (`gatHandle`,`gatTypeID`),
  ADD KEY `gatTypeID` (`gatTypeID`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Indexes for table `GatheringItemTemplateTypes`
--
ALTER TABLE `GatheringItemTemplateTypes`
  ADD PRIMARY KEY (`gatTypeID`),
  ADD UNIQUE KEY `gatTypeHandle` (`gatTypeHandle`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Indexes for table `GatheringPermissionAssignments`
--
ALTER TABLE `GatheringPermissionAssignments`
  ADD PRIMARY KEY (`gaID`,`pkID`,`paID`),
  ADD KEY `pkID` (`pkID`),
  ADD KEY `paID` (`paID`);

--
-- Indexes for table `Gatherings`
--
ALTER TABLE `Gatherings`
  ADD PRIMARY KEY (`gaID`),
  ADD KEY `gaDateLastUpdated` (`gaDateLastUpdated`);

--
-- Indexes for table `Geolocators`
--
ALTER TABLE `Geolocators`
  ADD PRIMARY KEY (`glID`),
  ADD UNIQUE KEY `UNIQ_83BB1614D4F4D416` (`glHandle`),
  ADD KEY `IDX_83BB1614D5F6CC40` (`glPackage`);

--
-- Indexes for table `Groups`
--
ALTER TABLE `Groups`
  ADD PRIMARY KEY (`gID`),
  ADD KEY `gName` (`gName`),
  ADD KEY `gBadgeFID` (`gBadgeFID`),
  ADD KEY `pkgID` (`pkgID`),
  ADD KEY `gPath` (`gPath`(255));

--
-- Indexes for table `GroupSetGroups`
--
ALTER TABLE `GroupSetGroups`
  ADD PRIMARY KEY (`gID`,`gsID`),
  ADD KEY `gsID` (`gsID`);

--
-- Indexes for table `GroupSets`
--
ALTER TABLE `GroupSets`
  ADD PRIMARY KEY (`gsID`),
  ADD KEY `gsName` (`gsName`),
  ADD KEY `pkgID` (`pkgID`,`gsID`);

--
-- Indexes for table `IpAccessControlCategories`
--
ALTER TABLE `IpAccessControlCategories`
  ADD PRIMARY KEY (`iaccID`),
  ADD UNIQUE KEY `UNIQ_D4A1006246B4A747` (`iaccHandle`),
  ADD KEY `IDX_D4A10062C908ED51` (`iaccPackage`);

--
-- Indexes for table `IpAccessControlEvents`
--
ALTER TABLE `IpAccessControlEvents`
  ADD PRIMARY KEY (`iaceID`),
  ADD KEY `IDX_6C004072E9480668` (`iaceCategory`),
  ADD KEY `IDX_6C004072B0C0DFA7` (`iaceSite`);

--
-- Indexes for table `IpAccessControlRanges`
--
ALTER TABLE `IpAccessControlRanges`
  ADD PRIMARY KEY (`iacrID`),
  ADD KEY `IDX_2B1AA65D21E929D0` (`iacrCategory`),
  ADD KEY `IDX_2B1AA65D62009435` (`iacrSite`),
  ADD KEY `IPIntervalExpiration` (`iacrIpFrom`,`iacrIpTo`,`iacrExpiration`);

--
-- Indexes for table `Jobs`
--
ALTER TABLE `Jobs`
  ADD PRIMARY KEY (`jID`),
  ADD UNIQUE KEY `jHandle` (`jHandle`),
  ADD KEY `pkgID` (`pkgID`),
  ADD KEY `isScheduled` (`isScheduled`,`jDateLastRun`,`jID`),
  ADD KEY `jDateLastRun` (`jDateLastRun`,`jID`);

--
-- Indexes for table `JobSetJobs`
--
ALTER TABLE `JobSetJobs`
  ADD PRIMARY KEY (`jsID`,`jID`),
  ADD KEY `jID` (`jID`);

--
-- Indexes for table `JobSets`
--
ALTER TABLE `JobSets`
  ADD PRIMARY KEY (`jsID`),
  ADD KEY `pkgID` (`pkgID`),
  ADD KEY `jsName` (`jsName`);

--
-- Indexes for table `JobsLog`
--
ALTER TABLE `JobsLog`
  ADD PRIMARY KEY (`jlID`),
  ADD KEY `jID` (`jID`);

--
-- Indexes for table `LegacyAttributeKeys`
--
ALTER TABLE `LegacyAttributeKeys`
  ADD PRIMARY KEY (`akID`);

--
-- Indexes for table `Logs`
--
ALTER TABLE `Logs`
  ADD PRIMARY KEY (`logID`),
  ADD KEY `channel` (`channel`),
  ADD KEY `uID` (`uID`);

--
-- Indexes for table `MailImporters`
--
ALTER TABLE `MailImporters`
  ADD PRIMARY KEY (`miID`),
  ADD UNIQUE KEY `miHandle` (`miHandle`),
  ADD KEY `pkgID` (`pkgID`,`miID`);

--
-- Indexes for table `MailValidationHashes`
--
ALTER TABLE `MailValidationHashes`
  ADD PRIMARY KEY (`mvhID`),
  ADD UNIQUE KEY `mHash` (`mHash`),
  ADD KEY `miID` (`miID`);

--
-- Indexes for table `MultilingualPageRelations`
--
ALTER TABLE `MultilingualPageRelations`
  ADD PRIMARY KEY (`mpRelationID`,`cID`);

--
-- Indexes for table `MultilingualTranslations`
--
ALTER TABLE `MultilingualTranslations`
  ADD PRIMARY KEY (`mtID`);

--
-- Indexes for table `NotificationAlerts`
--
ALTER TABLE `NotificationAlerts`
  ADD PRIMARY KEY (`naID`),
  ADD KEY `IDX_E11C7408FD71026C` (`uID`),
  ADD KEY `IDX_E11C7408ED024EFD` (`nID`);

--
-- Indexes for table `NotificationPermissionSubscriptionList`
--
ALTER TABLE `NotificationPermissionSubscriptionList`
  ADD PRIMARY KEY (`paID`,`peID`),
  ADD KEY `peID` (`peID`);

--
-- Indexes for table `NotificationPermissionSubscriptionListCustom`
--
ALTER TABLE `NotificationPermissionSubscriptionListCustom`
  ADD PRIMARY KEY (`paID`,`peID`,`nSubscriptionIdentifier`),
  ADD KEY `peID` (`peID`),
  ADD KEY `nSubscriptionIdentifier` (`nSubscriptionIdentifier`);

--
-- Indexes for table `Notifications`
--
ALTER TABLE `Notifications`
  ADD PRIMARY KEY (`nID`);

--
-- Indexes for table `nsr_landingpages`
--
ALTER TABLE `nsr_landingpages`
  ADD PRIMARY KEY (`iPK_LandingPages`);

--
-- Indexes for table `nsr_sectionlandingpages`
--
ALTER TABLE `nsr_sectionlandingpages`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `OAuth2AccessToken`
--
ALTER TABLE `OAuth2AccessToken`
  ADD PRIMARY KEY (`identifier`),
  ADD KEY `IDX_60D69F3FC7440455` (`client`);

--
-- Indexes for table `OAuth2AuthCode`
--
ALTER TABLE `OAuth2AuthCode`
  ADD PRIMARY KEY (`identifier`),
  ADD KEY `IDX_29D07B5C7440455` (`client`);

--
-- Indexes for table `OAuth2Client`
--
ALTER TABLE `OAuth2Client`
  ADD PRIMARY KEY (`identifier`),
  ADD UNIQUE KEY `client_idx` (`clientKey`,`clientSecret`);

--
-- Indexes for table `OAuth2RefreshToken`
--
ALTER TABLE `OAuth2RefreshToken`
  ADD PRIMARY KEY (`identifier`),
  ADD UNIQUE KEY `UNIQ_A205CB8350A9822` (`accessToken`);

--
-- Indexes for table `OAuth2Scope`
--
ALTER TABLE `OAuth2Scope`
  ADD PRIMARY KEY (`identifier`);

--
-- Indexes for table `OauthUserMap`
--
ALTER TABLE `OauthUserMap`
  ADD PRIMARY KEY (`user_id`,`namespace`),
  ADD UNIQUE KEY `oauth_binding` (`binding`,`namespace`);

--
-- Indexes for table `Packages`
--
ALTER TABLE `Packages`
  ADD PRIMARY KEY (`pkgID`),
  ADD UNIQUE KEY `UNIQ_62C3A2F1F2D49DB1` (`pkgHandle`);

--
-- Indexes for table `PageFeeds`
--
ALTER TABLE `PageFeeds`
  ADD PRIMARY KEY (`pfID`);

--
-- Indexes for table `PagePaths`
--
ALTER TABLE `PagePaths`
  ADD PRIMARY KEY (`ppID`),
  ADD KEY `ppIsCanonical` (`ppIsCanonical`),
  ADD KEY `cID` (`cID`);

--
-- Indexes for table `PagePermissionAssignments`
--
ALTER TABLE `PagePermissionAssignments`
  ADD PRIMARY KEY (`cID`,`pkID`,`paID`),
  ADD KEY `paID` (`paID`,`pkID`),
  ADD KEY `pkID` (`pkID`);

--
-- Indexes for table `PagePermissionPageTypeAccessList`
--
ALTER TABLE `PagePermissionPageTypeAccessList`
  ADD PRIMARY KEY (`paID`,`peID`),
  ADD KEY `peID` (`peID`);

--
-- Indexes for table `PagePermissionPageTypeAccessListCustom`
--
ALTER TABLE `PagePermissionPageTypeAccessListCustom`
  ADD PRIMARY KEY (`paID`,`peID`,`ptID`),
  ADD KEY `peID` (`peID`),
  ADD KEY `ptID` (`ptID`);

--
-- Indexes for table `PagePermissionPropertyAccessList`
--
ALTER TABLE `PagePermissionPropertyAccessList`
  ADD PRIMARY KEY (`paID`,`peID`),
  ADD KEY `peID` (`peID`),
  ADD KEY `uID` (`uID`);

--
-- Indexes for table `PagePermissionPropertyAttributeAccessListCustom`
--
ALTER TABLE `PagePermissionPropertyAttributeAccessListCustom`
  ADD PRIMARY KEY (`paID`,`peID`,`akID`),
  ADD KEY `peID` (`peID`),
  ADD KEY `akID` (`akID`);

--
-- Indexes for table `PagePermissionThemeAccessList`
--
ALTER TABLE `PagePermissionThemeAccessList`
  ADD PRIMARY KEY (`paID`,`peID`),
  ADD KEY `peID` (`peID`);

--
-- Indexes for table `PagePermissionThemeAccessListCustom`
--
ALTER TABLE `PagePermissionThemeAccessListCustom`
  ADD PRIMARY KEY (`paID`,`peID`,`pThemeID`),
  ADD KEY `peID` (`peID`),
  ADD KEY `pThemeID` (`pThemeID`);

--
-- Indexes for table `Pages`
--
ALTER TABLE `Pages`
  ADD PRIMARY KEY (`cID`,`ptID`),
  ADD KEY `cParentID` (`cParentID`),
  ADD KEY `siteTreeID` (`siteTreeID`),
  ADD KEY `cIsActive` (`cID`,`cIsActive`),
  ADD KEY `cCheckedOutUID` (`cCheckedOutUID`),
  ADD KEY `uID` (`uID`,`cPointerID`),
  ADD KEY `cPointerID` (`cPointerID`,`cDisplayOrder`),
  ADD KEY `cIsTemplate` (`cID`,`cIsTemplate`),
  ADD KEY `cIsSystemPage` (`cID`,`cIsSystemPage`),
  ADD KEY `pkgID` (`pkgID`),
  ADD KEY `cParentMaxDisplay` (`cParentID`,`cDisplayOrder`);

--
-- Indexes for table `PageSearchIndex`
--
ALTER TABLE `PageSearchIndex`
  ADD PRIMARY KEY (`cID`),
  ADD KEY `cDateLastIndexed` (`cDateLastIndexed`),
  ADD KEY `cDateLastSitemapped` (`cDateLastSitemapped`),
  ADD KEY `cRequiresReindex` (`cRequiresReindex`);
ALTER TABLE `PageSearchIndex` ADD FULLTEXT KEY `cName` (`cName`);
ALTER TABLE `PageSearchIndex` ADD FULLTEXT KEY `cDescription` (`cDescription`);
ALTER TABLE `PageSearchIndex` ADD FULLTEXT KEY `content` (`content`);
ALTER TABLE `PageSearchIndex` ADD FULLTEXT KEY `content2` (`cName`,`cDescription`,`content`);

--
-- Indexes for table `PageTemplates`
--
ALTER TABLE `PageTemplates`
  ADD PRIMARY KEY (`pTemplateID`);

--
-- Indexes for table `PageThemeCustomStyles`
--
ALTER TABLE `PageThemeCustomStyles`
  ADD PRIMARY KEY (`pThemeID`),
  ADD KEY `scvlID` (`scvlID`),
  ADD KEY `sccRecordID` (`sccRecordID`);

--
-- Indexes for table `PageThemes`
--
ALTER TABLE `PageThemes`
  ADD PRIMARY KEY (`pThemeID`),
  ADD UNIQUE KEY `ptHandle` (`pThemeHandle`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Indexes for table `PageTypeComposerControlTypes`
--
ALTER TABLE `PageTypeComposerControlTypes`
  ADD PRIMARY KEY (`ptComposerControlTypeID`),
  ADD UNIQUE KEY `ptComposerControlTypeHandle` (`ptComposerControlTypeHandle`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Indexes for table `PageTypeComposerFormLayoutSetControls`
--
ALTER TABLE `PageTypeComposerFormLayoutSetControls`
  ADD PRIMARY KEY (`ptComposerFormLayoutSetControlID`),
  ADD KEY `ptComposerControlTypeID` (`ptComposerControlTypeID`);

--
-- Indexes for table `PageTypeComposerFormLayoutSets`
--
ALTER TABLE `PageTypeComposerFormLayoutSets`
  ADD PRIMARY KEY (`ptComposerFormLayoutSetID`),
  ADD KEY `ptID` (`ptID`);

--
-- Indexes for table `PageTypeComposerOutputBlocks`
--
ALTER TABLE `PageTypeComposerOutputBlocks`
  ADD PRIMARY KEY (`ptComposerOutputBlockID`),
  ADD KEY `cID` (`cID`),
  ADD KEY `bID` (`bID`,`cID`),
  ADD KEY `ptComposerFormLayoutSetControlID` (`ptComposerFormLayoutSetControlID`);

--
-- Indexes for table `PageTypeComposerOutputControls`
--
ALTER TABLE `PageTypeComposerOutputControls`
  ADD PRIMARY KEY (`ptComposerOutputControlID`),
  ADD KEY `pTemplateID` (`pTemplateID`,`ptComposerFormLayoutSetControlID`),
  ADD KEY `ptID` (`ptID`),
  ADD KEY `ptComposerFormLayoutSetControlID` (`ptComposerFormLayoutSetControlID`);

--
-- Indexes for table `PageTypePageTemplateDefaultPages`
--
ALTER TABLE `PageTypePageTemplateDefaultPages`
  ADD PRIMARY KEY (`pTemplateID`,`ptID`),
  ADD KEY `ptID` (`ptID`),
  ADD KEY `cID` (`cID`);

--
-- Indexes for table `PageTypePageTemplates`
--
ALTER TABLE `PageTypePageTemplates`
  ADD PRIMARY KEY (`ptID`,`pTemplateID`),
  ADD KEY `pTemplateID` (`pTemplateID`);

--
-- Indexes for table `PageTypePermissionAssignments`
--
ALTER TABLE `PageTypePermissionAssignments`
  ADD PRIMARY KEY (`ptID`,`pkID`,`paID`),
  ADD KEY `pkID` (`pkID`),
  ADD KEY `ptID` (`ptID`);

--
-- Indexes for table `PageTypePublishTargetTypes`
--
ALTER TABLE `PageTypePublishTargetTypes`
  ADD PRIMARY KEY (`ptPublishTargetTypeID`),
  ADD KEY `ptPublishTargetTypeHandle` (`ptPublishTargetTypeHandle`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Indexes for table `PageTypes`
--
ALTER TABLE `PageTypes`
  ADD PRIMARY KEY (`ptID`),
  ADD UNIQUE KEY `ptHandle` (`ptHandle`),
  ADD KEY `siteTypeID` (`siteTypeID`),
  ADD KEY `pkgID` (`pkgID`,`ptID`);

--
-- Indexes for table `PageWorkflowProgress`
--
ALTER TABLE `PageWorkflowProgress`
  ADD PRIMARY KEY (`cID`,`wpID`),
  ADD KEY `wpID` (`wpID`);

--
-- Indexes for table `PermissionAccess`
--
ALTER TABLE `PermissionAccess`
  ADD PRIMARY KEY (`paID`);

--
-- Indexes for table `PermissionAccessEntities`
--
ALTER TABLE `PermissionAccessEntities`
  ADD PRIMARY KEY (`peID`),
  ADD KEY `petID` (`petID`);

--
-- Indexes for table `PermissionAccessEntityGroups`
--
ALTER TABLE `PermissionAccessEntityGroups`
  ADD PRIMARY KEY (`pegID`),
  ADD KEY `peID` (`peID`),
  ADD KEY `gID` (`gID`);

--
-- Indexes for table `PermissionAccessEntityGroupSets`
--
ALTER TABLE `PermissionAccessEntityGroupSets`
  ADD PRIMARY KEY (`peID`,`gsID`),
  ADD KEY `gsID` (`gsID`);

--
-- Indexes for table `PermissionAccessEntitySiteGroups`
--
ALTER TABLE `PermissionAccessEntitySiteGroups`
  ADD PRIMARY KEY (`pegID`),
  ADD KEY `peID` (`peID`),
  ADD KEY `siteGID` (`siteGID`);

--
-- Indexes for table `PermissionAccessEntityTypeCategories`
--
ALTER TABLE `PermissionAccessEntityTypeCategories`
  ADD PRIMARY KEY (`petID`,`pkCategoryID`),
  ADD KEY `pkCategoryID` (`pkCategoryID`);

--
-- Indexes for table `PermissionAccessEntityTypes`
--
ALTER TABLE `PermissionAccessEntityTypes`
  ADD PRIMARY KEY (`petID`),
  ADD UNIQUE KEY `petHandle` (`petHandle`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Indexes for table `PermissionAccessEntityUsers`
--
ALTER TABLE `PermissionAccessEntityUsers`
  ADD PRIMARY KEY (`peID`,`uID`),
  ADD KEY `uID` (`uID`);

--
-- Indexes for table `PermissionAccessList`
--
ALTER TABLE `PermissionAccessList`
  ADD PRIMARY KEY (`paID`,`peID`),
  ADD KEY `accessType` (`accessType`),
  ADD KEY `peID` (`peID`),
  ADD KEY `peID_accessType` (`peID`,`accessType`),
  ADD KEY `pdID` (`pdID`),
  ADD KEY `permissionAccessDuration` (`paID`,`pdID`);

--
-- Indexes for table `PermissionAccessWorkflows`
--
ALTER TABLE `PermissionAccessWorkflows`
  ADD PRIMARY KEY (`paID`,`wfID`),
  ADD KEY `wfID` (`wfID`);

--
-- Indexes for table `PermissionAssignments`
--
ALTER TABLE `PermissionAssignments`
  ADD PRIMARY KEY (`paID`,`pkID`),
  ADD KEY `pkID` (`pkID`);

--
-- Indexes for table `PermissionDurationObjects`
--
ALTER TABLE `PermissionDurationObjects`
  ADD PRIMARY KEY (`pdID`);

--
-- Indexes for table `PermissionKeyCategories`
--
ALTER TABLE `PermissionKeyCategories`
  ADD PRIMARY KEY (`pkCategoryID`),
  ADD UNIQUE KEY `pkCategoryHandle` (`pkCategoryHandle`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Indexes for table `PermissionKeys`
--
ALTER TABLE `PermissionKeys`
  ADD PRIMARY KEY (`pkID`),
  ADD UNIQUE KEY `akHandle` (`pkHandle`),
  ADD KEY `pkCategoryID` (`pkCategoryID`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Indexes for table `PileContents`
--
ALTER TABLE `PileContents`
  ADD PRIMARY KEY (`pcID`),
  ADD KEY `pID` (`pID`,`displayOrder`),
  ADD KEY `itemID` (`itemID`),
  ADD KEY `itemType` (`itemType`,`itemID`,`pID`);

--
-- Indexes for table `Piles`
--
ALTER TABLE `Piles`
  ADD PRIMARY KEY (`pID`),
  ADD KEY `uID` (`uID`,`name`);

--
-- Indexes for table `PrivateMessageNotifications`
--
ALTER TABLE `PrivateMessageNotifications`
  ADD PRIMARY KEY (`nID`);

--
-- Indexes for table `QueueMessages`
--
ALTER TABLE `QueueMessages`
  ADD PRIMARY KEY (`message_id`),
  ADD UNIQUE KEY `message_handle` (`handle`),
  ADD KEY `message_queueid` (`queue_id`);

--
-- Indexes for table `QueuePageDuplicationRelations`
--
ALTER TABLE `QueuePageDuplicationRelations`
  ADD PRIMARY KEY (`cID`,`originalCID`),
  ADD KEY `originalCID` (`originalCID`,`queue_name`);

--
-- Indexes for table `Queues`
--
ALTER TABLE `Queues`
  ADD PRIMARY KEY (`queue_id`),
  ADD KEY `queue_name` (`queue_name`);

--
-- Indexes for table `SavedExpressSearchQueries`
--
ALTER TABLE `SavedExpressSearchQueries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `SavedFileSearchQueries`
--
ALTER TABLE `SavedFileSearchQueries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `SavedPageSearchQueries`
--
ALTER TABLE `SavedPageSearchQueries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `SavedUserSearchQueries`
--
ALTER TABLE `SavedUserSearchQueries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Sessions`
--
ALTER TABLE `Sessions`
  ADD PRIMARY KEY (`sessionID`);

--
-- Indexes for table `SiblingPageRelations`
--
ALTER TABLE `SiblingPageRelations`
  ADD PRIMARY KEY (`mpRelationID`,`cID`);

--
-- Indexes for table `SiteAttributeKeys`
--
ALTER TABLE `SiteAttributeKeys`
  ADD PRIMARY KEY (`akID`);

--
-- Indexes for table `SiteAttributeValues`
--
ALTER TABLE `SiteAttributeValues`
  ADD PRIMARY KEY (`siteID`,`akID`),
  ADD KEY `IDX_67658AF7521D8435` (`siteID`),
  ADD KEY `IDX_67658AF7B6561A7E` (`akID`),
  ADD KEY `IDX_67658AF7A2A82A5D` (`avID`);

--
-- Indexes for table `SiteDomains`
--
ALTER TABLE `SiteDomains`
  ADD PRIMARY KEY (`domainID`),
  ADD KEY `IDX_4CC7400A521D8435` (`siteID`);

--
-- Indexes for table `SiteGroupRelations`
--
ALTER TABLE `SiteGroupRelations`
  ADD PRIMARY KEY (`groupRelationID`),
  ADD KEY `IDX_DCBCDCA94A62E0E4` (`siteGID`),
  ADD KEY `IDX_DCBCDCA9521D8435` (`siteID`);

--
-- Indexes for table `SiteGroups`
--
ALTER TABLE `SiteGroups`
  ADD PRIMARY KEY (`siteGID`),
  ADD KEY `IDX_F6FE030FE9548DF7` (`siteTypeID`);

--
-- Indexes for table `SiteLocales`
--
ALTER TABLE `SiteLocales`
  ADD PRIMARY KEY (`siteLocaleID`),
  ADD UNIQUE KEY `UNIQ_2527AB2CF9431B4B` (`siteTreeID`),
  ADD KEY `IDX_2527AB2C521D8435` (`siteID`);

--
-- Indexes for table `Sites`
--
ALTER TABLE `Sites`
  ADD PRIMARY KEY (`siteID`),
  ADD UNIQUE KEY `UNIQ_7DC18567D84E1976` (`siteHandle`),
  ADD KEY `IDX_7DC18567E9548DF7` (`siteTypeID`);

--
-- Indexes for table `SiteSearchIndexAttributes`
--
ALTER TABLE `SiteSearchIndexAttributes`
  ADD PRIMARY KEY (`siteID`);

--
-- Indexes for table `SiteSkeletonLocales`
--
ALTER TABLE `SiteSkeletonLocales`
  ADD PRIMARY KEY (`skeletonLocaleID`),
  ADD UNIQUE KEY `UNIQ_212DD202F9431B4B` (`siteTreeID`),
  ADD KEY `IDX_212DD202B579BD3E` (`siteSkeletonID`);

--
-- Indexes for table `SiteSkeletons`
--
ALTER TABLE `SiteSkeletons`
  ADD PRIMARY KEY (`siteSkeletonID`),
  ADD UNIQUE KEY `UNIQ_D36AED98E9548DF7` (`siteTypeID`);

--
-- Indexes for table `SiteSkeletonTrees`
--
ALTER TABLE `SiteSkeletonTrees`
  ADD PRIMARY KEY (`siteTreeID`),
  ADD UNIQUE KEY `UNIQ_550F784B16B7EAF2` (`skeletonLocaleID`),
  ADD UNIQUE KEY `UNIQ_550F784BE9548DF7` (`siteTypeID`);

--
-- Indexes for table `SiteTrees`
--
ALTER TABLE `SiteTrees`
  ADD PRIMARY KEY (`siteTreeID`);

--
-- Indexes for table `SiteTreeTrees`
--
ALTER TABLE `SiteTreeTrees`
  ADD PRIMARY KEY (`siteTreeID`),
  ADD UNIQUE KEY `UNIQ_A4B9696EACD624CD` (`siteLocaleID`);

--
-- Indexes for table `SiteTypeAttributeKeys`
--
ALTER TABLE `SiteTypeAttributeKeys`
  ADD PRIMARY KEY (`akID`);

--
-- Indexes for table `SiteTypeAttributeValues`
--
ALTER TABLE `SiteTypeAttributeValues`
  ADD PRIMARY KEY (`akID`),
  ADD KEY `IDX_78059CB9B579BD3E` (`siteSkeletonID`),
  ADD KEY `IDX_78059CB9A2A82A5D` (`avID`);

--
-- Indexes for table `SiteTypes`
--
ALTER TABLE `SiteTypes`
  ADD PRIMARY KEY (`siteTypeID`),
  ADD UNIQUE KEY `UNIQ_7CBFE97576D39A3C` (`siteTypeHandle`),
  ADD UNIQUE KEY `UNIQ_7CBFE975C7F74FC3` (`siteTypeName`),
  ADD KEY `IDX_7CBFE975CE45CBB0` (`pkgID`);

--
-- Indexes for table `SocialLinks`
--
ALTER TABLE `SocialLinks`
  ADD PRIMARY KEY (`slID`),
  ADD KEY `IDX_84EBA2B4521D8435` (`siteID`);

--
-- Indexes for table `Stacks`
--
ALTER TABLE `Stacks`
  ADD PRIMARY KEY (`stID`),
  ADD KEY `stType` (`stType`),
  ADD KEY `stName` (`stName`),
  ADD KEY `cID` (`cID`);

--
-- Indexes for table `StackUsageRecord`
--
ALTER TABLE `StackUsageRecord`
  ADD PRIMARY KEY (`stack_id`,`block_id`,`collection_id`,`collection_version_id`),
  ADD KEY `block` (`block_id`),
  ADD KEY `collection_version` (`collection_id`,`collection_version_id`);

--
-- Indexes for table `StyleCustomizerCustomCssRecords`
--
ALTER TABLE `StyleCustomizerCustomCssRecords`
  ADD PRIMARY KEY (`sccRecordID`);

--
-- Indexes for table `StyleCustomizerInlineStylePresets`
--
ALTER TABLE `StyleCustomizerInlineStylePresets`
  ADD PRIMARY KEY (`pssPresetID`),
  ADD KEY `issID` (`issID`);

--
-- Indexes for table `StyleCustomizerInlineStyleSets`
--
ALTER TABLE `StyleCustomizerInlineStyleSets`
  ADD PRIMARY KEY (`issID`);

--
-- Indexes for table `StyleCustomizerValueLists`
--
ALTER TABLE `StyleCustomizerValueLists`
  ADD PRIMARY KEY (`scvlID`);

--
-- Indexes for table `StyleCustomizerValues`
--
ALTER TABLE `StyleCustomizerValues`
  ADD PRIMARY KEY (`scvID`),
  ADD KEY `scvlID` (`scvlID`);

--
-- Indexes for table `SystemAntispamLibraries`
--
ALTER TABLE `SystemAntispamLibraries`
  ADD PRIMARY KEY (`saslHandle`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Indexes for table `SystemCaptchaLibraries`
--
ALTER TABLE `SystemCaptchaLibraries`
  ADD PRIMARY KEY (`sclHandle`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Indexes for table `SystemContentEditorSnippets`
--
ALTER TABLE `SystemContentEditorSnippets`
  ADD PRIMARY KEY (`scsHandle`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Indexes for table `SystemDatabaseMigrations`
--
ALTER TABLE `SystemDatabaseMigrations`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `SystemDatabaseQueryLog`
--
ALTER TABLE `SystemDatabaseQueryLog`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `TopicTrees`
--
ALTER TABLE `TopicTrees`
  ADD PRIMARY KEY (`treeID`);

--
-- Indexes for table `TreeFileFolderNodes`
--
ALTER TABLE `TreeFileFolderNodes`
  ADD PRIMARY KEY (`treeNodeID`),
  ADD KEY `fslID` (`fslID`);

--
-- Indexes for table `TreeFileNodes`
--
ALTER TABLE `TreeFileNodes`
  ADD PRIMARY KEY (`treeNodeID`),
  ADD KEY `fID` (`fID`);

--
-- Indexes for table `TreeGroupNodes`
--
ALTER TABLE `TreeGroupNodes`
  ADD PRIMARY KEY (`treeNodeID`),
  ADD KEY `gID` (`gID`);

--
-- Indexes for table `TreeNodePermissionAssignments`
--
ALTER TABLE `TreeNodePermissionAssignments`
  ADD PRIMARY KEY (`treeNodeID`,`pkID`,`paID`),
  ADD KEY `pkID` (`pkID`),
  ADD KEY `paID` (`paID`);

--
-- Indexes for table `TreeNodes`
--
ALTER TABLE `TreeNodes`
  ADD PRIMARY KEY (`treeNodeID`),
  ADD KEY `treeNodeParentID` (`treeNodeParentID`),
  ADD KEY `treeNodeTypeID` (`treeNodeTypeID`),
  ADD KEY `treeID` (`treeID`),
  ADD KEY `inheritPermissionsFromTreeNodeID` (`inheritPermissionsFromTreeNodeID`,`treeNodeID`);

--
-- Indexes for table `TreeNodeTypes`
--
ALTER TABLE `TreeNodeTypes`
  ADD PRIMARY KEY (`treeNodeTypeID`),
  ADD UNIQUE KEY `treeNodeTypeHandle` (`treeNodeTypeHandle`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Indexes for table `Trees`
--
ALTER TABLE `Trees`
  ADD PRIMARY KEY (`treeID`),
  ADD KEY `treeTypeID` (`treeTypeID`);

--
-- Indexes for table `TreeSearchQueryNodes`
--
ALTER TABLE `TreeSearchQueryNodes`
  ADD PRIMARY KEY (`treeNodeID`),
  ADD KEY `savedSearchID` (`savedSearchID`);

--
-- Indexes for table `TreeTypes`
--
ALTER TABLE `TreeTypes`
  ADD PRIMARY KEY (`treeTypeID`),
  ADD UNIQUE KEY `treeTypeHandle` (`treeTypeHandle`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Indexes for table `UsedStringLog`
--
ALTER TABLE `UsedStringLog`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_4E83837CF5E609AF` (`usedString`);

--
-- Indexes for table `UserAttributeKeys`
--
ALTER TABLE `UserAttributeKeys`
  ADD PRIMARY KEY (`akID`);

--
-- Indexes for table `UserAttributeValues`
--
ALTER TABLE `UserAttributeValues`
  ADD PRIMARY KEY (`uID`,`akID`),
  ADD KEY `IDX_4DB68CA6FD71026C` (`uID`),
  ADD KEY `IDX_4DB68CA6B6561A7E` (`akID`),
  ADD KEY `IDX_4DB68CA6A2A82A5D` (`avID`);

--
-- Indexes for table `UserDeactivatedNotifications`
--
ALTER TABLE `UserDeactivatedNotifications`
  ADD PRIMARY KEY (`nID`);

--
-- Indexes for table `UserGroups`
--
ALTER TABLE `UserGroups`
  ADD PRIMARY KEY (`uID`,`gID`),
  ADD KEY `uID` (`uID`),
  ADD KEY `gID` (`gID`);

--
-- Indexes for table `UserLoginAttempts`
--
ALTER TABLE `UserLoginAttempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `UserPermissionEditPropertyAccessList`
--
ALTER TABLE `UserPermissionEditPropertyAccessList`
  ADD PRIMARY KEY (`paID`,`peID`);

--
-- Indexes for table `UserPermissionEditPropertyAttributeAccessListCustom`
--
ALTER TABLE `UserPermissionEditPropertyAttributeAccessListCustom`
  ADD PRIMARY KEY (`paID`,`peID`,`akID`),
  ADD KEY `peID` (`peID`),
  ADD KEY `akID` (`akID`);

--
-- Indexes for table `UserPermissionViewAttributeAccessList`
--
ALTER TABLE `UserPermissionViewAttributeAccessList`
  ADD PRIMARY KEY (`paID`,`peID`),
  ADD KEY `peID` (`peID`);

--
-- Indexes for table `UserPermissionViewAttributeAccessListCustom`
--
ALTER TABLE `UserPermissionViewAttributeAccessListCustom`
  ADD PRIMARY KEY (`paID`,`peID`,`akID`),
  ADD KEY `peID` (`peID`),
  ADD KEY `akID` (`akID`);

--
-- Indexes for table `UserPointActions`
--
ALTER TABLE `UserPointActions`
  ADD PRIMARY KEY (`upaID`),
  ADD UNIQUE KEY `upaHandle` (`upaHandle`),
  ADD KEY `pkgID` (`pkgID`),
  ADD KEY `gBBadgeID` (`gBadgeID`);

--
-- Indexes for table `UserPointHistory`
--
ALTER TABLE `UserPointHistory`
  ADD PRIMARY KEY (`upID`),
  ADD KEY `upuID` (`upuID`),
  ADD KEY `upaID` (`upaID`);

--
-- Indexes for table `UserPrivateMessages`
--
ALTER TABLE `UserPrivateMessages`
  ADD PRIMARY KEY (`msgID`),
  ADD KEY `uAuthorID` (`uAuthorID`,`msgDateCreated`);

--
-- Indexes for table `UserPrivateMessagesTo`
--
ALTER TABLE `UserPrivateMessagesTo`
  ADD PRIMARY KEY (`msgID`,`uID`,`uAuthorID`,`msgMailboxID`),
  ADD KEY `uID` (`uID`),
  ADD KEY `uAuthorID` (`uAuthorID`),
  ADD KEY `msgFolderID` (`msgMailboxID`),
  ADD KEY `msgIsNew` (`msgIsNew`);

--
-- Indexes for table `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`uID`),
  ADD UNIQUE KEY `UNIQ_D5428AED28459686` (`uName`),
  ADD KEY `uEmail` (`uEmail`);

--
-- Indexes for table `UserSearchIndexAttributes`
--
ALTER TABLE `UserSearchIndexAttributes`
  ADD PRIMARY KEY (`uID`);

--
-- Indexes for table `UserSignupNotifications`
--
ALTER TABLE `UserSignupNotifications`
  ADD PRIMARY KEY (`nID`),
  ADD KEY `IDX_7FB1DF5B7B18287E` (`usID`);

--
-- Indexes for table `UserSignups`
--
ALTER TABLE `UserSignups`
  ADD PRIMARY KEY (`usID`),
  ADD UNIQUE KEY `UNIQ_FEB5D909FD71026C` (`uID`),
  ADD KEY `IDX_FEB5D909D3564642` (`createdBy`);

--
-- Indexes for table `UserValidationHashes`
--
ALTER TABLE `UserValidationHashes`
  ADD PRIMARY KEY (`uvhID`),
  ADD KEY `uID` (`uID`,`type`),
  ADD KEY `uHash` (`uHash`,`type`),
  ADD KEY `uDateGenerated` (`uDateGenerated`,`type`);

--
-- Indexes for table `UserWorkflowProgress`
--
ALTER TABLE `UserWorkflowProgress`
  ADD PRIMARY KEY (`uID`,`wpID`);

--
-- Indexes for table `WorkflowProgress`
--
ALTER TABLE `WorkflowProgress`
  ADD PRIMARY KEY (`wpID`),
  ADD KEY `wpCategoryID` (`wpCategoryID`),
  ADD KEY `wfID` (`wfID`),
  ADD KEY `wrID` (`wrID`,`wpID`,`wpIsCompleted`);

--
-- Indexes for table `WorkflowProgressCategories`
--
ALTER TABLE `WorkflowProgressCategories`
  ADD PRIMARY KEY (`wpCategoryID`),
  ADD UNIQUE KEY `wpCategoryHandle` (`wpCategoryHandle`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Indexes for table `WorkflowProgressHistory`
--
ALTER TABLE `WorkflowProgressHistory`
  ADD PRIMARY KEY (`wphID`),
  ADD KEY `wpID` (`wpID`,`timestamp`);

--
-- Indexes for table `WorkflowProgressNotifications`
--
ALTER TABLE `WorkflowProgressNotifications`
  ADD PRIMARY KEY (`nID`);

--
-- Indexes for table `WorkflowRequestObjects`
--
ALTER TABLE `WorkflowRequestObjects`
  ADD PRIMARY KEY (`wrID`);

--
-- Indexes for table `Workflows`
--
ALTER TABLE `Workflows`
  ADD PRIMARY KEY (`wfID`),
  ADD UNIQUE KEY `wfName` (`wfName`),
  ADD KEY `wftID` (`wftID`,`wfID`),
  ADD KEY `pkgID` (`pkgID`);

--
-- Indexes for table `WorkflowTypes`
--
ALTER TABLE `WorkflowTypes`
  ADD PRIMARY KEY (`wftID`),
  ADD UNIQUE KEY `wftHandle` (`wftHandle`),
  ADD KEY `pkgID` (`pkgID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `AreaLayoutColumns`
--
ALTER TABLE `AreaLayoutColumns`
  MODIFY `arLayoutColumnID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `AreaLayoutCustomColumns`
--
ALTER TABLE `AreaLayoutCustomColumns`
  MODIFY `arLayoutColumnID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `AreaLayoutPresets`
--
ALTER TABLE `AreaLayoutPresets`
  MODIFY `arLayoutPresetID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `AreaLayouts`
--
ALTER TABLE `AreaLayouts`
  MODIFY `arLayoutID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `AreaLayoutThemeGridColumns`
--
ALTER TABLE `AreaLayoutThemeGridColumns`
  MODIFY `arLayoutColumnID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `Areas`
--
ALTER TABLE `Areas`
  MODIFY `arID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;
--
-- AUTO_INCREMENT for table `atSelectedSocialLinks`
--
ALTER TABLE `atSelectedSocialLinks`
  MODIFY `avsID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `atSelectedTopics`
--
ALTER TABLE `atSelectedTopics`
  MODIFY `avTreeTopicNodeID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `atSelectOptionLists`
--
ALTER TABLE `atSelectOptionLists`
  MODIFY `avSelectOptionListID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `atSelectOptions`
--
ALTER TABLE `atSelectOptions`
  MODIFY `avSelectOptionID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `AttributeKeyCategories`
--
ALTER TABLE `AttributeKeyCategories`
  MODIFY `akCategoryID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `AttributeKeys`
--
ALTER TABLE `AttributeKeys`
  MODIFY `akID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `AttributeSets`
--
ALTER TABLE `AttributeSets`
  MODIFY `asID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `AttributeTypes`
--
ALTER TABLE `AttributeTypes`
  MODIFY `atID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `AttributeValues`
--
ALTER TABLE `AttributeValues`
  MODIFY `avID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=269;
--
-- AUTO_INCREMENT for table `AuthenticationTypes`
--
ALTER TABLE `AuthenticationTypes`
  MODIFY `authTypeID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `authTypeConcreteCookieMap`
--
ALTER TABLE `authTypeConcreteCookieMap`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `BannedWords`
--
ALTER TABLE `BannedWords`
  MODIFY `bwID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `Blocks`
--
ALTER TABLE `Blocks`
  MODIFY `bID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=199;
--
-- AUTO_INCREMENT for table `BlockTypes`
--
ALTER TABLE `BlockTypes`
  MODIFY `btID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `BlockTypeSets`
--
ALTER TABLE `BlockTypeSets`
  MODIFY `btsID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `btFaqEntries`
--
ALTER TABLE `btFaqEntries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `btFormAnswers`
--
ALTER TABLE `btFormAnswers`
  MODIFY `aID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `btFormAnswerSet`
--
ALTER TABLE `btFormAnswerSet`
  MODIFY `asID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `btFormQuestions`
--
ALTER TABLE `btFormQuestions`
  MODIFY `qID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `btImageSliderEntries`
--
ALTER TABLE `btImageSliderEntries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `btShareThisPage`
--
ALTER TABLE `btShareThisPage`
  MODIFY `btShareThisPageID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `btSocialLinks`
--
ALTER TABLE `btSocialLinks`
  MODIFY `btSocialLinkID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `btSurveyOptions`
--
ALTER TABLE `btSurveyOptions`
  MODIFY `optionID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `btSurveyResults`
--
ALTER TABLE `btSurveyResults`
  MODIFY `resultID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `CalendarEventOccurrences`
--
ALTER TABLE `CalendarEventOccurrences`
  MODIFY `occurrenceID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `CalendarEventRepetitions`
--
ALTER TABLE `CalendarEventRepetitions`
  MODIFY `repetitionID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `CalendarEvents`
--
ALTER TABLE `CalendarEvents`
  MODIFY `eventID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `CalendarEventVersionOccurrences`
--
ALTER TABLE `CalendarEventVersionOccurrences`
  MODIFY `versionOccurrenceID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `CalendarEventVersionRepetitions`
--
ALTER TABLE `CalendarEventVersionRepetitions`
  MODIFY `versionRepetitionID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `CalendarEventVersions`
--
ALTER TABLE `CalendarEventVersions`
  MODIFY `eventVersionID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `CalendarRelatedEvents`
--
ALTER TABLE `CalendarRelatedEvents`
  MODIFY `relatedEventID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Calendars`
--
ALTER TABLE `Calendars`
  MODIFY `caID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Collections`
--
ALTER TABLE `Collections`
  MODIFY `cID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=254;
--
-- AUTO_INCREMENT for table `ConversationDiscussions`
--
ALTER TABLE `ConversationDiscussions`
  MODIFY `cnvDiscussionID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ConversationEditors`
--
ALTER TABLE `ConversationEditors`
  MODIFY `cnvEditorID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `ConversationFlaggedMessageTypes`
--
ALTER TABLE `ConversationFlaggedMessageTypes`
  MODIFY `cnvMessageFlagTypeID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ConversationMessageAttachments`
--
ALTER TABLE `ConversationMessageAttachments`
  MODIFY `cnvMessageAttachmentID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ConversationMessageRatings`
--
ALTER TABLE `ConversationMessageRatings`
  MODIFY `cnvMessageRatingID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ConversationMessages`
--
ALTER TABLE `ConversationMessages`
  MODIFY `cnvMessageID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ConversationRatingTypes`
--
ALTER TABLE `ConversationRatingTypes`
  MODIFY `cnvRatingTypeID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `Conversations`
--
ALTER TABLE `Conversations`
  MODIFY `cnvID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `DownloadStatistics`
--
ALTER TABLE `DownloadStatistics`
  MODIFY `dsID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ExpressEntityAssociationEntries`
--
ALTER TABLE `ExpressEntityAssociationEntries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ExpressEntityEntries`
--
ALTER TABLE `ExpressEntityEntries`
  MODIFY `exEntryID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ExpressEntityEntryAssociations`
--
ALTER TABLE `ExpressEntityEntryAssociations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ExpressFormFieldSets`
--
ALTER TABLE `ExpressFormFieldSets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `FeatureAssignments`
--
ALTER TABLE `FeatureAssignments`
  MODIFY `faID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `FeatureCategories`
--
ALTER TABLE `FeatureCategories`
  MODIFY `fcID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `Features`
--
ALTER TABLE `Features`
  MODIFY `feID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `FileImageThumbnailTypes`
--
ALTER TABLE `FileImageThumbnailTypes`
  MODIFY `ftTypeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `Files`
--
ALTER TABLE `Files`
  MODIFY `fID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `FileSetFiles`
--
ALTER TABLE `FileSetFiles`
  MODIFY `fsfID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `FileSets`
--
ALTER TABLE `FileSets`
  MODIFY `fsID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `FileStorageLocations`
--
ALTER TABLE `FileStorageLocations`
  MODIFY `fslID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `FileStorageLocationTypes`
--
ALTER TABLE `FileStorageLocationTypes`
  MODIFY `fslTypeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `FileVersionLog`
--
ALTER TABLE `FileVersionLog`
  MODIFY `fvlID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `GatheringConfiguredDataSources`
--
ALTER TABLE `GatheringConfiguredDataSources`
  MODIFY `gcsID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `GatheringDataSources`
--
ALTER TABLE `GatheringDataSources`
  MODIFY `gasID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `GatheringItemFeatureAssignments`
--
ALTER TABLE `GatheringItemFeatureAssignments`
  MODIFY `gafaID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `GatheringItems`
--
ALTER TABLE `GatheringItems`
  MODIFY `gaiID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `GatheringItemTemplateFeatures`
--
ALTER TABLE `GatheringItemTemplateFeatures`
  MODIFY `gfeID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
--
-- AUTO_INCREMENT for table `GatheringItemTemplates`
--
ALTER TABLE `GatheringItemTemplates`
  MODIFY `gatID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `GatheringItemTemplateTypes`
--
ALTER TABLE `GatheringItemTemplateTypes`
  MODIFY `gatTypeID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `Gatherings`
--
ALTER TABLE `Gatherings`
  MODIFY `gaID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Geolocators`
--
ALTER TABLE `Geolocators`
  MODIFY `glID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Geolocator ID', AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `Groups`
--
ALTER TABLE `Groups`
  MODIFY `gID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `GroupSets`
--
ALTER TABLE `GroupSets`
  MODIFY `gsID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `IpAccessControlCategories`
--
ALTER TABLE `IpAccessControlCategories`
  MODIFY `iaccID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'The IP Access Control Category identifier', AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `IpAccessControlEvents`
--
ALTER TABLE `IpAccessControlEvents`
  MODIFY `iaceID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'The IP Access Control Event identifier', AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `IpAccessControlRanges`
--
ALTER TABLE `IpAccessControlRanges`
  MODIFY `iacrID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'The IP Access Control Range identifier', AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `Jobs`
--
ALTER TABLE `Jobs`
  MODIFY `jID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `JobSets`
--
ALTER TABLE `JobSets`
  MODIFY `jsID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `JobsLog`
--
ALTER TABLE `JobsLog`
  MODIFY `jlID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Logs`
--
ALTER TABLE `Logs`
  MODIFY `logID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;
--
-- AUTO_INCREMENT for table `MailImporters`
--
ALTER TABLE `MailImporters`
  MODIFY `miID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `MailValidationHashes`
--
ALTER TABLE `MailValidationHashes`
  MODIFY `mvhID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `MultilingualTranslations`
--
ALTER TABLE `MultilingualTranslations`
  MODIFY `mtID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `NotificationAlerts`
--
ALTER TABLE `NotificationAlerts`
  MODIFY `naID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Notifications`
--
ALTER TABLE `Notifications`
  MODIFY `nID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nsr_landingpages`
--
ALTER TABLE `nsr_landingpages`
  MODIFY `iPK_LandingPages` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `Packages`
--
ALTER TABLE `Packages`
  MODIFY `pkgID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `PageFeeds`
--
ALTER TABLE `PageFeeds`
  MODIFY `pfID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `PagePaths`
--
ALTER TABLE `PagePaths`
  MODIFY `ppID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=233;
--
-- AUTO_INCREMENT for table `PageTemplates`
--
ALTER TABLE `PageTemplates`
  MODIFY `pTemplateID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `PageThemes`
--
ALTER TABLE `PageThemes`
  MODIFY `pThemeID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `PageTypeComposerControlTypes`
--
ALTER TABLE `PageTypeComposerControlTypes`
  MODIFY `ptComposerControlTypeID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `PageTypeComposerFormLayoutSetControls`
--
ALTER TABLE `PageTypeComposerFormLayoutSetControls`
  MODIFY `ptComposerFormLayoutSetControlID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `PageTypeComposerFormLayoutSets`
--
ALTER TABLE `PageTypeComposerFormLayoutSets`
  MODIFY `ptComposerFormLayoutSetID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `PageTypeComposerOutputBlocks`
--
ALTER TABLE `PageTypeComposerOutputBlocks`
  MODIFY `ptComposerOutputBlockID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `PageTypeComposerOutputControls`
--
ALTER TABLE `PageTypeComposerOutputControls`
  MODIFY `ptComposerOutputControlID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `PageTypePublishTargetTypes`
--
ALTER TABLE `PageTypePublishTargetTypes`
  MODIFY `ptPublishTargetTypeID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `PageTypes`
--
ALTER TABLE `PageTypes`
  MODIFY `ptID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `PermissionAccess`
--
ALTER TABLE `PermissionAccess`
  MODIFY `paID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=390;
--
-- AUTO_INCREMENT for table `PermissionAccessEntities`
--
ALTER TABLE `PermissionAccessEntities`
  MODIFY `peID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `PermissionAccessEntityGroups`
--
ALTER TABLE `PermissionAccessEntityGroups`
  MODIFY `pegID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `PermissionAccessEntitySiteGroups`
--
ALTER TABLE `PermissionAccessEntitySiteGroups`
  MODIFY `pegID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `PermissionAccessEntityTypes`
--
ALTER TABLE `PermissionAccessEntityTypes`
  MODIFY `petID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `PermissionDurationObjects`
--
ALTER TABLE `PermissionDurationObjects`
  MODIFY `pdID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `PermissionKeyCategories`
--
ALTER TABLE `PermissionKeyCategories`
  MODIFY `pkCategoryID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `PermissionKeys`
--
ALTER TABLE `PermissionKeys`
  MODIFY `pkID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;
--
-- AUTO_INCREMENT for table `PileContents`
--
ALTER TABLE `PileContents`
  MODIFY `pcID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Piles`
--
ALTER TABLE `Piles`
  MODIFY `pID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `QueueMessages`
--
ALTER TABLE `QueueMessages`
  MODIFY `message_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Queues`
--
ALTER TABLE `Queues`
  MODIFY `queue_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `SavedExpressSearchQueries`
--
ALTER TABLE `SavedExpressSearchQueries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `SavedFileSearchQueries`
--
ALTER TABLE `SavedFileSearchQueries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `SavedPageSearchQueries`
--
ALTER TABLE `SavedPageSearchQueries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `SavedUserSearchQueries`
--
ALTER TABLE `SavedUserSearchQueries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `SiteDomains`
--
ALTER TABLE `SiteDomains`
  MODIFY `domainID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `SiteGroupRelations`
--
ALTER TABLE `SiteGroupRelations`
  MODIFY `groupRelationID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `SiteGroups`
--
ALTER TABLE `SiteGroups`
  MODIFY `siteGID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `SiteLocales`
--
ALTER TABLE `SiteLocales`
  MODIFY `siteLocaleID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `Sites`
--
ALTER TABLE `Sites`
  MODIFY `siteID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `SiteSkeletonLocales`
--
ALTER TABLE `SiteSkeletonLocales`
  MODIFY `skeletonLocaleID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `SiteSkeletons`
--
ALTER TABLE `SiteSkeletons`
  MODIFY `siteSkeletonID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `SiteTrees`
--
ALTER TABLE `SiteTrees`
  MODIFY `siteTreeID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `SiteTypes`
--
ALTER TABLE `SiteTypes`
  MODIFY `siteTypeID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `SocialLinks`
--
ALTER TABLE `SocialLinks`
  MODIFY `slID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `Stacks`
--
ALTER TABLE `Stacks`
  MODIFY `stID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `StyleCustomizerCustomCssRecords`
--
ALTER TABLE `StyleCustomizerCustomCssRecords`
  MODIFY `sccRecordID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `StyleCustomizerInlineStylePresets`
--
ALTER TABLE `StyleCustomizerInlineStylePresets`
  MODIFY `pssPresetID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `StyleCustomizerInlineStyleSets`
--
ALTER TABLE `StyleCustomizerInlineStyleSets`
  MODIFY `issID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `StyleCustomizerValueLists`
--
ALTER TABLE `StyleCustomizerValueLists`
  MODIFY `scvlID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `StyleCustomizerValues`
--
ALTER TABLE `StyleCustomizerValues`
  MODIFY `scvID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `SystemDatabaseQueryLog`
--
ALTER TABLE `SystemDatabaseQueryLog`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `TreeFileFolderNodes`
--
ALTER TABLE `TreeFileFolderNodes`
  MODIFY `treeNodeID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `TreeFileNodes`
--
ALTER TABLE `TreeFileNodes`
  MODIFY `treeNodeID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT for table `TreeGroupNodes`
--
ALTER TABLE `TreeGroupNodes`
  MODIFY `treeNodeID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `TreeNodes`
--
ALTER TABLE `TreeNodes`
  MODIFY `treeNodeID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT for table `TreeNodeTypes`
--
ALTER TABLE `TreeNodeTypes`
  MODIFY `treeNodeTypeID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `Trees`
--
ALTER TABLE `Trees`
  MODIFY `treeID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `TreeSearchQueryNodes`
--
ALTER TABLE `TreeSearchQueryNodes`
  MODIFY `treeNodeID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `TreeTypes`
--
ALTER TABLE `TreeTypes`
  MODIFY `treeTypeID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `UsedStringLog`
--
ALTER TABLE `UsedStringLog`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `UserPointActions`
--
ALTER TABLE `UserPointActions`
  MODIFY `upaID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `UserPointHistory`
--
ALTER TABLE `UserPointHistory`
  MODIFY `upID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `UserPrivateMessages`
--
ALTER TABLE `UserPrivateMessages`
  MODIFY `msgID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Users`
--
ALTER TABLE `Users`
  MODIFY `uID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `UserSignups`
--
ALTER TABLE `UserSignups`
  MODIFY `usID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `UserValidationHashes`
--
ALTER TABLE `UserValidationHashes`
  MODIFY `uvhID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `WorkflowProgress`
--
ALTER TABLE `WorkflowProgress`
  MODIFY `wpID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `WorkflowProgressCategories`
--
ALTER TABLE `WorkflowProgressCategories`
  MODIFY `wpCategoryID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `WorkflowProgressHistory`
--
ALTER TABLE `WorkflowProgressHistory`
  MODIFY `wphID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;
--
-- AUTO_INCREMENT for table `WorkflowRequestObjects`
--
ALTER TABLE `WorkflowRequestObjects`
  MODIFY `wrID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;
--
-- AUTO_INCREMENT for table `Workflows`
--
ALTER TABLE `Workflows`
  MODIFY `wfID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `WorkflowTypes`
--
ALTER TABLE `WorkflowTypes`
  MODIFY `wftID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `AreaLayoutsUsingPresets`
--
ALTER TABLE `AreaLayoutsUsingPresets`
  ADD CONSTRAINT `FK_7A9049A1385521EA` FOREIGN KEY (`arLayoutID`) REFERENCES `AreaLayouts` (`arLayoutID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `atAddress`
--
ALTER TABLE `atAddress`
  ADD CONSTRAINT `FK_DA949740A2A82A5D` FOREIGN KEY (`avID`) REFERENCES `AttributeValues` (`avID`) ON DELETE CASCADE;

--
-- Constraints for table `atAddressSettings`
--
ALTER TABLE `atAddressSettings`
  ADD CONSTRAINT `FK_5A737B61B6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`);

--
-- Constraints for table `atBoolean`
--
ALTER TABLE `atBoolean`
  ADD CONSTRAINT `FK_5D5F70A9A2A82A5D` FOREIGN KEY (`avID`) REFERENCES `AttributeValues` (`avID`) ON DELETE CASCADE;

--
-- Constraints for table `atBooleanSettings`
--
ALTER TABLE `atBooleanSettings`
  ADD CONSTRAINT `FK_78025F47B6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`);

--
-- Constraints for table `atDateTime`
--
ALTER TABLE `atDateTime`
  ADD CONSTRAINT `FK_DF75412AA2A82A5D` FOREIGN KEY (`avID`) REFERENCES `AttributeValues` (`avID`) ON DELETE CASCADE;

--
-- Constraints for table `atDateTimeSettings`
--
ALTER TABLE `atDateTimeSettings`
  ADD CONSTRAINT `FK_C6B3B63AB6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`);

--
-- Constraints for table `atDefault`
--
ALTER TABLE `atDefault`
  ADD CONSTRAINT `FK_3484F81EA2A82A5D` FOREIGN KEY (`avID`) REFERENCES `AttributeValues` (`avID`) ON DELETE CASCADE;

--
-- Constraints for table `atEmptySettings`
--
ALTER TABLE `atEmptySettings`
  ADD CONSTRAINT `FK_ED1BF189B6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`);

--
-- Constraints for table `atExpress`
--
ALTER TABLE `atExpress`
  ADD CONSTRAINT `FK_CFAF40F1A2A82A5D` FOREIGN KEY (`avID`) REFERENCES `AttributeValues` (`avID`) ON DELETE CASCADE;

--
-- Constraints for table `atExpressSelectedEntries`
--
ALTER TABLE `atExpressSelectedEntries`
  ADD CONSTRAINT `FK_C9D404BB6DCB6296` FOREIGN KEY (`exEntryID`) REFERENCES `ExpressEntityEntries` (`exEntryID`),
  ADD CONSTRAINT `FK_C9D404BBA2A82A5D` FOREIGN KEY (`avID`) REFERENCES `atExpress` (`avID`);

--
-- Constraints for table `atExpressSettings`
--
ALTER TABLE `atExpressSettings`
  ADD CONSTRAINT `FK_E8F67F0FB6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`),
  ADD CONSTRAINT `FK_E8F67F0FCE2D7284` FOREIGN KEY (`exEntityID`) REFERENCES `ExpressEntities` (`id`);

--
-- Constraints for table `atFile`
--
ALTER TABLE `atFile`
  ADD CONSTRAINT `FK_73D17D61A2A82A5D` FOREIGN KEY (`avID`) REFERENCES `AttributeValues` (`avID`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_73D17D61E3111F45` FOREIGN KEY (`fID`) REFERENCES `Files` (`fID`) ON DELETE CASCADE;

--
-- Constraints for table `atFileSettings`
--
ALTER TABLE `atFileSettings`
  ADD CONSTRAINT `FK_EADD86C8B6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`);

--
-- Constraints for table `atNumber`
--
ALTER TABLE `atNumber`
  ADD CONSTRAINT `FK_41BA30B5A2A82A5D` FOREIGN KEY (`avID`) REFERENCES `AttributeValues` (`avID`) ON DELETE CASCADE;

--
-- Constraints for table `atSelect`
--
ALTER TABLE `atSelect`
  ADD CONSTRAINT `FK_9CD8C521A2A82A5D` FOREIGN KEY (`avID`) REFERENCES `AttributeValues` (`avID`) ON DELETE CASCADE;

--
-- Constraints for table `atSelectedSocialLinks`
--
ALTER TABLE `atSelectedSocialLinks`
  ADD CONSTRAINT `FK_10743709A2A82A5D` FOREIGN KEY (`avID`) REFERENCES `atSocialLinks` (`avID`);

--
-- Constraints for table `atSelectedTopics`
--
ALTER TABLE `atSelectedTopics`
  ADD CONSTRAINT `FK_E42A7D5BA2A82A5D` FOREIGN KEY (`avID`) REFERENCES `atTopic` (`avID`);

--
-- Constraints for table `atSelectOptions`
--
ALTER TABLE `atSelectOptions`
  ADD CONSTRAINT `FK_797414B0CB59257C` FOREIGN KEY (`avSelectOptionListID`) REFERENCES `atSelectOptionLists` (`avSelectOptionListID`);

--
-- Constraints for table `atSelectOptionsSelected`
--
ALTER TABLE `atSelectOptionsSelected`
  ADD CONSTRAINT `FK_40C97EC3A2A82A5D` FOREIGN KEY (`avID`) REFERENCES `atSelect` (`avID`),
  ADD CONSTRAINT `FK_40C97EC3E584C274` FOREIGN KEY (`avSelectOptionID`) REFERENCES `atSelectOptions` (`avSelectOptionID`);

--
-- Constraints for table `atSelectSettings`
--
ALTER TABLE `atSelectSettings`
  ADD CONSTRAINT `FK_5D514424B6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`),
  ADD CONSTRAINT `FK_5D514424CB59257C` FOREIGN KEY (`avSelectOptionListID`) REFERENCES `atSelectOptionLists` (`avSelectOptionListID`);

--
-- Constraints for table `atSite`
--
ALTER TABLE `atSite`
  ADD CONSTRAINT `FK_960D4295521D8435` FOREIGN KEY (`siteID`) REFERENCES `Sites` (`siteID`),
  ADD CONSTRAINT `FK_960D4295A2A82A5D` FOREIGN KEY (`avID`) REFERENCES `AttributeValues` (`avID`) ON DELETE CASCADE;

--
-- Constraints for table `atSocialLinks`
--
ALTER TABLE `atSocialLinks`
  ADD CONSTRAINT `FK_1431EC8AA2A82A5D` FOREIGN KEY (`avID`) REFERENCES `AttributeValues` (`avID`) ON DELETE CASCADE;

--
-- Constraints for table `atTextareaSettings`
--
ALTER TABLE `atTextareaSettings`
  ADD CONSTRAINT `FK_A6EA10D6B6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`);

--
-- Constraints for table `atTextSettings`
--
ALTER TABLE `atTextSettings`
  ADD CONSTRAINT `FK_951A10CCB6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`);

--
-- Constraints for table `atTopic`
--
ALTER TABLE `atTopic`
  ADD CONSTRAINT `FK_BABDD1FAA2A82A5D` FOREIGN KEY (`avID`) REFERENCES `AttributeValues` (`avID`) ON DELETE CASCADE;

--
-- Constraints for table `atTopicSettings`
--
ALTER TABLE `atTopicSettings`
  ADD CONSTRAINT `FK_830FD2FEB6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`);

--
-- Constraints for table `AttributeKeyCategories`
--
ALTER TABLE `AttributeKeyCategories`
  ADD CONSTRAINT `FK_A2A0CC67CE45CBB0` FOREIGN KEY (`pkgID`) REFERENCES `Packages` (`pkgID`);

--
-- Constraints for table `AttributeKeys`
--
ALTER TABLE `AttributeKeys`
  ADD CONSTRAINT `FK_DCA32C62A12CFE33` FOREIGN KEY (`atID`) REFERENCES `AttributeTypes` (`atID`),
  ADD CONSTRAINT `FK_DCA32C62B059B76B` FOREIGN KEY (`akCategoryID`) REFERENCES `AttributeKeyCategories` (`akCategoryID`),
  ADD CONSTRAINT `FK_DCA32C62CE45CBB0` FOREIGN KEY (`pkgID`) REFERENCES `Packages` (`pkgID`);

--
-- Constraints for table `AttributeSetKeys`
--
ALTER TABLE `AttributeSetKeys`
  ADD CONSTRAINT `FK_222F72D8A463E8B6` FOREIGN KEY (`asID`) REFERENCES `AttributeSets` (`asID`),
  ADD CONSTRAINT `FK_222F72D8B6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`);

--
-- Constraints for table `AttributeSets`
--
ALTER TABLE `AttributeSets`
  ADD CONSTRAINT `FK_FCA02D5FB059B76B` FOREIGN KEY (`akCategoryID`) REFERENCES `AttributeKeyCategories` (`akCategoryID`),
  ADD CONSTRAINT `FK_FCA02D5FCE45CBB0` FOREIGN KEY (`pkgID`) REFERENCES `Packages` (`pkgID`);

--
-- Constraints for table `AttributeTypeCategories`
--
ALTER TABLE `AttributeTypeCategories`
  ADD CONSTRAINT `FK_49A9CABEA12CFE33` FOREIGN KEY (`atID`) REFERENCES `AttributeTypes` (`atID`),
  ADD CONSTRAINT `FK_49A9CABEB059B76B` FOREIGN KEY (`akCategoryID`) REFERENCES `AttributeKeyCategories` (`akCategoryID`);

--
-- Constraints for table `AttributeTypes`
--
ALTER TABLE `AttributeTypes`
  ADD CONSTRAINT `FK_53580A7FCE45CBB0` FOREIGN KEY (`pkgID`) REFERENCES `Packages` (`pkgID`);

--
-- Constraints for table `AttributeValues`
--
ALTER TABLE `AttributeValues`
  ADD CONSTRAINT `FK_DCCE7864B6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`) ON DELETE CASCADE;

--
-- Constraints for table `atUserGroupSettings`
--
ALTER TABLE `atUserGroupSettings`
  ADD CONSTRAINT `FK_C47871BEB6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`);

--
-- Constraints for table `CalendarEventAttributeKeys`
--
ALTER TABLE `CalendarEventAttributeKeys`
  ADD CONSTRAINT `FK_27F477CCB6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`) ON DELETE CASCADE;

--
-- Constraints for table `CalendarEventOccurrences`
--
ALTER TABLE `CalendarEventOccurrences`
  ADD CONSTRAINT `FK_7DD686EC31391E00` FOREIGN KEY (`repetitionID`) REFERENCES `CalendarEventRepetitions` (`repetitionID`);

--
-- Constraints for table `CalendarEvents`
--
ALTER TABLE `CalendarEvents`
  ADD CONSTRAINT `FK_7F23C55611C85723` FOREIGN KEY (`caID`) REFERENCES `Calendars` (`caID`);

--
-- Constraints for table `CalendarEventVersionAttributeValues`
--
ALTER TABLE `CalendarEventVersionAttributeValues`
  ADD CONSTRAINT `FK_8C835B05403F5D6` FOREIGN KEY (`eventVersionID`) REFERENCES `CalendarEventVersions` (`eventVersionID`),
  ADD CONSTRAINT `FK_8C835B05A2A82A5D` FOREIGN KEY (`avID`) REFERENCES `AttributeValues` (`avID`),
  ADD CONSTRAINT `FK_8C835B05B6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`);

--
-- Constraints for table `CalendarEventVersionOccurrences`
--
ALTER TABLE `CalendarEventVersionOccurrences`
  ADD CONSTRAINT `FK_60310489403F5D6` FOREIGN KEY (`eventVersionID`) REFERENCES `CalendarEventVersions` (`eventVersionID`),
  ADD CONSTRAINT `FK_60310489B4FDDC0F` FOREIGN KEY (`occurrenceID`) REFERENCES `CalendarEventOccurrences` (`occurrenceID`);

--
-- Constraints for table `CalendarEventVersionRepetitions`
--
ALTER TABLE `CalendarEventVersionRepetitions`
  ADD CONSTRAINT `FK_C1C3D3DB31391E00` FOREIGN KEY (`repetitionID`) REFERENCES `CalendarEventRepetitions` (`repetitionID`),
  ADD CONSTRAINT `FK_C1C3D3DB403F5D6` FOREIGN KEY (`eventVersionID`) REFERENCES `CalendarEventVersions` (`eventVersionID`);

--
-- Constraints for table `CalendarEventVersions`
--
ALTER TABLE `CalendarEventVersions`
  ADD CONSTRAINT `FK_8E26027410409BA4` FOREIGN KEY (`eventID`) REFERENCES `CalendarEvents` (`eventID`),
  ADD CONSTRAINT `FK_8E260274FD71026C` FOREIGN KEY (`uID`) REFERENCES `Users` (`uID`);

--
-- Constraints for table `CalendarEventWorkflowProgress`
--
ALTER TABLE `CalendarEventWorkflowProgress`
  ADD CONSTRAINT `FK_C5EAACF910409BA4` FOREIGN KEY (`eventID`) REFERENCES `CalendarEvents` (`eventID`);

--
-- Constraints for table `CalendarPermissionAssignments`
--
ALTER TABLE `CalendarPermissionAssignments`
  ADD CONSTRAINT `FK_5AD546AA11C85723` FOREIGN KEY (`caID`) REFERENCES `Calendars` (`caID`);

--
-- Constraints for table `CalendarRelatedEvents`
--
ALTER TABLE `CalendarRelatedEvents`
  ADD CONSTRAINT `FK_310130E910409BA4` FOREIGN KEY (`eventID`) REFERENCES `CalendarEvents` (`eventID`);

--
-- Constraints for table `Calendars`
--
ALTER TABLE `Calendars`
  ADD CONSTRAINT `FK_62E00AC521D8435` FOREIGN KEY (`siteID`) REFERENCES `Sites` (`siteID`);

--
-- Constraints for table `CollectionAttributeKeys`
--
ALTER TABLE `CollectionAttributeKeys`
  ADD CONSTRAINT `FK_1E3E5B79B6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`) ON DELETE CASCADE;

--
-- Constraints for table `CollectionAttributeValues`
--
ALTER TABLE `CollectionAttributeValues`
  ADD CONSTRAINT `FK_BB9995FCA2A82A5D` FOREIGN KEY (`avID`) REFERENCES `AttributeValues` (`avID`),
  ADD CONSTRAINT `FK_BB9995FCB6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`);

--
-- Constraints for table `CollectionSearchIndexAttributes`
--
ALTER TABLE `CollectionSearchIndexAttributes`
  ADD CONSTRAINT `FK_FD84E56FE5DADDAE` FOREIGN KEY (`cID`) REFERENCES `Collections` (`cID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ConversationMessageNotifications`
--
ALTER TABLE `ConversationMessageNotifications`
  ADD CONSTRAINT `FK_559DE1CBED024EFD` FOREIGN KEY (`nID`) REFERENCES `Notifications` (`nID`) ON DELETE CASCADE;

--
-- Constraints for table `ExpressAttributeKeys`
--
ALTER TABLE `ExpressAttributeKeys`
  ADD CONSTRAINT `FK_8C881F181257D5D` FOREIGN KEY (`entity_id`) REFERENCES `ExpressEntities` (`id`),
  ADD CONSTRAINT `FK_8C881F1B6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`) ON DELETE CASCADE;

--
-- Constraints for table `ExpressEntities`
--
ALTER TABLE `ExpressEntities`
  ADD CONSTRAINT `FK_BC772AA6547D6B2D` FOREIGN KEY (`default_view_form_id`) REFERENCES `ExpressForms` (`id`),
  ADD CONSTRAINT `FK_BC772AA6C7DEC56D` FOREIGN KEY (`default_edit_form_id`) REFERENCES `ExpressForms` (`id`),
  ADD CONSTRAINT `FK_BC772AA6CE45CBB0` FOREIGN KEY (`pkgID`) REFERENCES `Packages` (`pkgID`);

--
-- Constraints for table `ExpressEntityAssociationEntries`
--
ALTER TABLE `ExpressEntityAssociationEntries`
  ADD CONSTRAINT `FK_9C2BB76C6DCB6296` FOREIGN KEY (`exEntryID`) REFERENCES `ExpressEntityEntries` (`exEntryID`),
  ADD CONSTRAINT `FK_9C2BB76CEFB9C8A5` FOREIGN KEY (`association_id`) REFERENCES `ExpressEntityEntryAssociations` (`id`);

--
-- Constraints for table `ExpressEntityAssociations`
--
ALTER TABLE `ExpressEntityAssociations`
  ADD CONSTRAINT `FK_98A0F796B5910F71` FOREIGN KEY (`target_entity_id`) REFERENCES `ExpressEntities` (`id`),
  ADD CONSTRAINT `FK_98A0F796E9BBEE93` FOREIGN KEY (`source_entity_id`) REFERENCES `ExpressEntities` (`id`);

--
-- Constraints for table `ExpressEntityEntries`
--
ALTER TABLE `ExpressEntityEntries`
  ADD CONSTRAINT `FK_B8AE3531AFC87D03` FOREIGN KEY (`exEntryEntityID`) REFERENCES `ExpressEntities` (`id`),
  ADD CONSTRAINT `FK_B8AE3531FD71026C` FOREIGN KEY (`uID`) REFERENCES `Users` (`uID`);

--
-- Constraints for table `ExpressEntityEntryAssociations`
--
ALTER TABLE `ExpressEntityEntryAssociations`
  ADD CONSTRAINT `FK_25B3A0826DCB6296` FOREIGN KEY (`exEntryID`) REFERENCES `ExpressEntityEntries` (`exEntryID`),
  ADD CONSTRAINT `FK_25B3A082EFB9C8A5` FOREIGN KEY (`association_id`) REFERENCES `ExpressEntityAssociations` (`id`);

--
-- Constraints for table `ExpressEntityEntryAttributeValues`
--
ALTER TABLE `ExpressEntityEntryAttributeValues`
  ADD CONSTRAINT `FK_6DB641546DCB6296` FOREIGN KEY (`exEntryID`) REFERENCES `ExpressEntityEntries` (`exEntryID`),
  ADD CONSTRAINT `FK_6DB64154A2A82A5D` FOREIGN KEY (`avID`) REFERENCES `AttributeValues` (`avID`),
  ADD CONSTRAINT `FK_6DB64154B6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`);

--
-- Constraints for table `ExpressFormFieldSetAssociationControls`
--
ALTER TABLE `ExpressFormFieldSetAssociationControls`
  ADD CONSTRAINT `FK_E6DF21BBBF396750` FOREIGN KEY (`id`) REFERENCES `ExpressFormFieldSetControls` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_E6DF21BBEFB9C8A5` FOREIGN KEY (`association_id`) REFERENCES `ExpressEntityAssociations` (`id`);

--
-- Constraints for table `ExpressFormFieldSetAttributeKeyControls`
--
ALTER TABLE `ExpressFormFieldSetAttributeKeyControls`
  ADD CONSTRAINT `FK_8481F9D1B6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`),
  ADD CONSTRAINT `FK_8481F9D1BF396750` FOREIGN KEY (`id`) REFERENCES `ExpressFormFieldSetControls` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ExpressFormFieldSetAuthorControls`
--
ALTER TABLE `ExpressFormFieldSetAuthorControls`
  ADD CONSTRAINT `FK_CF378786BF396750` FOREIGN KEY (`id`) REFERENCES `ExpressFormFieldSetControls` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ExpressFormFieldSetControls`
--
ALTER TABLE `ExpressFormFieldSetControls`
  ADD CONSTRAINT `FK_E42868A43ABF811A` FOREIGN KEY (`field_set_id`) REFERENCES `ExpressFormFieldSets` (`id`);

--
-- Constraints for table `ExpressFormFieldSetPublicIdentifierControls`
--
ALTER TABLE `ExpressFormFieldSetPublicIdentifierControls`
  ADD CONSTRAINT `FK_67180C04BF396750` FOREIGN KEY (`id`) REFERENCES `ExpressFormFieldSetControls` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ExpressFormFieldSets`
--
ALTER TABLE `ExpressFormFieldSets`
  ADD CONSTRAINT `FK_A33BBBEC5FF69B7D` FOREIGN KEY (`form_id`) REFERENCES `ExpressForms` (`id`);

--
-- Constraints for table `ExpressFormFieldSetTextControls`
--
ALTER TABLE `ExpressFormFieldSetTextControls`
  ADD CONSTRAINT `FK_DB5A209ABF396750` FOREIGN KEY (`id`) REFERENCES `ExpressFormFieldSetControls` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ExpressForms`
--
ALTER TABLE `ExpressForms`
  ADD CONSTRAINT `FK_8D09031A81257D5D` FOREIGN KEY (`entity_id`) REFERENCES `ExpressEntities` (`id`);

--
-- Constraints for table `FileAttributeKeys`
--
ALTER TABLE `FileAttributeKeys`
  ADD CONSTRAINT `FK_BC5C7BBB6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`) ON DELETE CASCADE;

--
-- Constraints for table `FileAttributeValues`
--
ALTER TABLE `FileAttributeValues`
  ADD CONSTRAINT `FK_BBECEAA4A2A82A5D` FOREIGN KEY (`avID`) REFERENCES `AttributeValues` (`avID`),
  ADD CONSTRAINT `FK_BBECEAA4B6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`);

--
-- Constraints for table `FileImageThumbnailTypeFileSets`
--
ALTER TABLE `FileImageThumbnailTypeFileSets`
  ADD CONSTRAINT `FK_BD75F88D480660E5` FOREIGN KEY (`ftfsThumbnailType`) REFERENCES `FileImageThumbnailTypes` (`ftTypeID`) ON DELETE CASCADE;

--
-- Constraints for table `Files`
--
ALTER TABLE `Files`
  ADD CONSTRAINT `FK_C7F46F5DB81D3903` FOREIGN KEY (`fslID`) REFERENCES `FileStorageLocations` (`fslID`),
  ADD CONSTRAINT `FK_C7F46F5DFD71026C` FOREIGN KEY (`uID`) REFERENCES `Users` (`uID`) ON DELETE SET NULL;

--
-- Constraints for table `FileSearchIndexAttributes`
--
ALTER TABLE `FileSearchIndexAttributes`
  ADD CONSTRAINT `FK_3A3A4845E3111F45` FOREIGN KEY (`fID`) REFERENCES `Files` (`fID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `FileVersions`
--
ALTER TABLE `FileVersions`
  ADD CONSTRAINT `FK_D7B5A13AE3111F45` FOREIGN KEY (`fID`) REFERENCES `Files` (`fID`);

--
-- Constraints for table `FormSubmissionNotifications`
--
ALTER TABLE `FormSubmissionNotifications`
  ADD CONSTRAINT `FK_E7B6BE406DCB6296` FOREIGN KEY (`exEntryID`) REFERENCES `ExpressEntityEntries` (`exEntryID`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_E7B6BE40ED024EFD` FOREIGN KEY (`nID`) REFERENCES `Notifications` (`nID`) ON DELETE CASCADE;

--
-- Constraints for table `Geolocators`
--
ALTER TABLE `Geolocators`
  ADD CONSTRAINT `FK_83BB1614D5F6CC40` FOREIGN KEY (`glPackage`) REFERENCES `Packages` (`pkgID`) ON DELETE CASCADE;

--
-- Constraints for table `IpAccessControlCategories`
--
ALTER TABLE `IpAccessControlCategories`
  ADD CONSTRAINT `FK_D4A10062C908ED51` FOREIGN KEY (`iaccPackage`) REFERENCES `Packages` (`pkgID`) ON DELETE CASCADE;

--
-- Constraints for table `IpAccessControlEvents`
--
ALTER TABLE `IpAccessControlEvents`
  ADD CONSTRAINT `FK_6C004072B0C0DFA7` FOREIGN KEY (`iaceSite`) REFERENCES `Sites` (`siteID`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_6C004072E9480668` FOREIGN KEY (`iaceCategory`) REFERENCES `IpAccessControlCategories` (`iaccID`) ON DELETE CASCADE;

--
-- Constraints for table `IpAccessControlRanges`
--
ALTER TABLE `IpAccessControlRanges`
  ADD CONSTRAINT `FK_2B1AA65D21E929D0` FOREIGN KEY (`iacrCategory`) REFERENCES `IpAccessControlCategories` (`iaccID`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_2B1AA65D62009435` FOREIGN KEY (`iacrSite`) REFERENCES `Sites` (`siteID`) ON DELETE CASCADE;

--
-- Constraints for table `LegacyAttributeKeys`
--
ALTER TABLE `LegacyAttributeKeys`
  ADD CONSTRAINT `FK_740BA2BBB6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`) ON DELETE CASCADE;

--
-- Constraints for table `NotificationAlerts`
--
ALTER TABLE `NotificationAlerts`
  ADD CONSTRAINT `FK_E11C7408ED024EFD` FOREIGN KEY (`nID`) REFERENCES `Notifications` (`nID`),
  ADD CONSTRAINT `FK_E11C7408FD71026C` FOREIGN KEY (`uID`) REFERENCES `Users` (`uID`);

--
-- Constraints for table `OAuth2AccessToken`
--
ALTER TABLE `OAuth2AccessToken`
  ADD CONSTRAINT `FK_60D69F3FC7440455` FOREIGN KEY (`client`) REFERENCES `OAuth2Client` (`identifier`);

--
-- Constraints for table `OAuth2AuthCode`
--
ALTER TABLE `OAuth2AuthCode`
  ADD CONSTRAINT `FK_29D07B5C7440455` FOREIGN KEY (`client`) REFERENCES `OAuth2Client` (`identifier`);

--
-- Constraints for table `OAuth2RefreshToken`
--
ALTER TABLE `OAuth2RefreshToken`
  ADD CONSTRAINT `FK_A205CB8350A9822` FOREIGN KEY (`accessToken`) REFERENCES `OAuth2AccessToken` (`identifier`) ON DELETE SET NULL;

--
-- Constraints for table `PermissionAccessEntitySiteGroups`
--
ALTER TABLE `PermissionAccessEntitySiteGroups`
  ADD CONSTRAINT `FK_51122D554A62E0E4` FOREIGN KEY (`siteGID`) REFERENCES `SiteGroups` (`siteGID`);

--
-- Constraints for table `PrivateMessageNotifications`
--
ALTER TABLE `PrivateMessageNotifications`
  ADD CONSTRAINT `FK_1AB97592ED024EFD` FOREIGN KEY (`nID`) REFERENCES `Notifications` (`nID`) ON DELETE CASCADE;

--
-- Constraints for table `QueueMessages`
--
ALTER TABLE `QueueMessages`
  ADD CONSTRAINT `FK_7C04D76477B5BAE` FOREIGN KEY (`queue_id`) REFERENCES `Queues` (`queue_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `SiteAttributeKeys`
--
ALTER TABLE `SiteAttributeKeys`
  ADD CONSTRAINT `FK_63D1E182B6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`) ON DELETE CASCADE;

--
-- Constraints for table `SiteAttributeValues`
--
ALTER TABLE `SiteAttributeValues`
  ADD CONSTRAINT `FK_67658AF7521D8435` FOREIGN KEY (`siteID`) REFERENCES `Sites` (`siteID`),
  ADD CONSTRAINT `FK_67658AF7A2A82A5D` FOREIGN KEY (`avID`) REFERENCES `AttributeValues` (`avID`),
  ADD CONSTRAINT `FK_67658AF7B6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`);

--
-- Constraints for table `SiteDomains`
--
ALTER TABLE `SiteDomains`
  ADD CONSTRAINT `FK_4CC7400A521D8435` FOREIGN KEY (`siteID`) REFERENCES `Sites` (`siteID`);

--
-- Constraints for table `SiteGroupRelations`
--
ALTER TABLE `SiteGroupRelations`
  ADD CONSTRAINT `FK_DCBCDCA94A62E0E4` FOREIGN KEY (`siteGID`) REFERENCES `SiteGroups` (`siteGID`),
  ADD CONSTRAINT `FK_DCBCDCA9521D8435` FOREIGN KEY (`siteID`) REFERENCES `Sites` (`siteID`);

--
-- Constraints for table `SiteGroups`
--
ALTER TABLE `SiteGroups`
  ADD CONSTRAINT `FK_F6FE030FE9548DF7` FOREIGN KEY (`siteTypeID`) REFERENCES `SiteTypes` (`siteTypeID`);

--
-- Constraints for table `SiteLocales`
--
ALTER TABLE `SiteLocales`
  ADD CONSTRAINT `FK_2527AB2C521D8435` FOREIGN KEY (`siteID`) REFERENCES `Sites` (`siteID`),
  ADD CONSTRAINT `FK_2527AB2CF9431B4B` FOREIGN KEY (`siteTreeID`) REFERENCES `SiteTreeTrees` (`siteTreeID`);

--
-- Constraints for table `Sites`
--
ALTER TABLE `Sites`
  ADD CONSTRAINT `FK_7DC18567E9548DF7` FOREIGN KEY (`siteTypeID`) REFERENCES `SiteTypes` (`siteTypeID`);

--
-- Constraints for table `SiteSearchIndexAttributes`
--
ALTER TABLE `SiteSearchIndexAttributes`
  ADD CONSTRAINT `FK_3DD070B4521D8435` FOREIGN KEY (`siteID`) REFERENCES `Sites` (`siteID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `SiteSkeletonLocales`
--
ALTER TABLE `SiteSkeletonLocales`
  ADD CONSTRAINT `FK_212DD202B579BD3E` FOREIGN KEY (`siteSkeletonID`) REFERENCES `SiteSkeletons` (`siteSkeletonID`),
  ADD CONSTRAINT `FK_212DD202F9431B4B` FOREIGN KEY (`siteTreeID`) REFERENCES `SiteSkeletonTrees` (`siteTreeID`);

--
-- Constraints for table `SiteSkeletons`
--
ALTER TABLE `SiteSkeletons`
  ADD CONSTRAINT `FK_D36AED98E9548DF7` FOREIGN KEY (`siteTypeID`) REFERENCES `SiteTypes` (`siteTypeID`);

--
-- Constraints for table `SiteSkeletonTrees`
--
ALTER TABLE `SiteSkeletonTrees`
  ADD CONSTRAINT `FK_550F784B16B7EAF2` FOREIGN KEY (`skeletonLocaleID`) REFERENCES `SiteSkeletonLocales` (`skeletonLocaleID`),
  ADD CONSTRAINT `FK_550F784BE9548DF7` FOREIGN KEY (`siteTypeID`) REFERENCES `SiteTypes` (`siteTypeID`),
  ADD CONSTRAINT `FK_550F784BF9431B4B` FOREIGN KEY (`siteTreeID`) REFERENCES `SiteTrees` (`siteTreeID`) ON DELETE CASCADE;

--
-- Constraints for table `SiteTreeTrees`
--
ALTER TABLE `SiteTreeTrees`
  ADD CONSTRAINT `FK_A4B9696EACD624CD` FOREIGN KEY (`siteLocaleID`) REFERENCES `SiteLocales` (`siteLocaleID`),
  ADD CONSTRAINT `FK_A4B9696EF9431B4B` FOREIGN KEY (`siteTreeID`) REFERENCES `SiteTrees` (`siteTreeID`) ON DELETE CASCADE;

--
-- Constraints for table `SiteTypeAttributeKeys`
--
ALTER TABLE `SiteTypeAttributeKeys`
  ADD CONSTRAINT `FK_26C73776B6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`) ON DELETE CASCADE;

--
-- Constraints for table `SiteTypeAttributeValues`
--
ALTER TABLE `SiteTypeAttributeValues`
  ADD CONSTRAINT `FK_78059CB9A2A82A5D` FOREIGN KEY (`avID`) REFERENCES `AttributeValues` (`avID`),
  ADD CONSTRAINT `FK_78059CB9B579BD3E` FOREIGN KEY (`siteSkeletonID`) REFERENCES `SiteSkeletons` (`siteSkeletonID`),
  ADD CONSTRAINT `FK_78059CB9B6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`);

--
-- Constraints for table `SiteTypes`
--
ALTER TABLE `SiteTypes`
  ADD CONSTRAINT `FK_7CBFE975CE45CBB0` FOREIGN KEY (`pkgID`) REFERENCES `Packages` (`pkgID`);

--
-- Constraints for table `SocialLinks`
--
ALTER TABLE `SocialLinks`
  ADD CONSTRAINT `FK_84EBA2B4521D8435` FOREIGN KEY (`siteID`) REFERENCES `Sites` (`siteID`);

--
-- Constraints for table `UserAttributeKeys`
--
ALTER TABLE `UserAttributeKeys`
  ADD CONSTRAINT `FK_28970033B6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`) ON DELETE CASCADE;

--
-- Constraints for table `UserAttributeValues`
--
ALTER TABLE `UserAttributeValues`
  ADD CONSTRAINT `FK_4DB68CA6A2A82A5D` FOREIGN KEY (`avID`) REFERENCES `AttributeValues` (`avID`),
  ADD CONSTRAINT `FK_4DB68CA6B6561A7E` FOREIGN KEY (`akID`) REFERENCES `AttributeKeys` (`akID`),
  ADD CONSTRAINT `FK_4DB68CA6FD71026C` FOREIGN KEY (`uID`) REFERENCES `Users` (`uID`);

--
-- Constraints for table `UserDeactivatedNotifications`
--
ALTER TABLE `UserDeactivatedNotifications`
  ADD CONSTRAINT `FK_ED5A1F9FED024EFD` FOREIGN KEY (`nID`) REFERENCES `Notifications` (`nID`) ON DELETE CASCADE;

--
-- Constraints for table `UserSearchIndexAttributes`
--
ALTER TABLE `UserSearchIndexAttributes`
  ADD CONSTRAINT `FK_74798B07FD71026C` FOREIGN KEY (`uID`) REFERENCES `Users` (`uID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `UserSignupNotifications`
--
ALTER TABLE `UserSignupNotifications`
  ADD CONSTRAINT `FK_7FB1DF5B7B18287E` FOREIGN KEY (`usID`) REFERENCES `UserSignups` (`usID`),
  ADD CONSTRAINT `FK_7FB1DF5BED024EFD` FOREIGN KEY (`nID`) REFERENCES `Notifications` (`nID`) ON DELETE CASCADE;

--
-- Constraints for table `UserSignups`
--
ALTER TABLE `UserSignups`
  ADD CONSTRAINT `FK_FEB5D909D3564642` FOREIGN KEY (`createdBy`) REFERENCES `Users` (`uID`),
  ADD CONSTRAINT `FK_FEB5D909FD71026C` FOREIGN KEY (`uID`) REFERENCES `Users` (`uID`);

--
-- Constraints for table `WorkflowProgressNotifications`
--
ALTER TABLE `WorkflowProgressNotifications`
  ADD CONSTRAINT `FK_EC39CA81ED024EFD` FOREIGN KEY (`nID`) REFERENCES `Notifications` (`nID`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
