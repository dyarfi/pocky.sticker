-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 12, 2015 at 08:59 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dentsu_pocky.sticker`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_captcha`
--

CREATE TABLE IF NOT EXISTS `tbl_captcha` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `time` int(11) DEFAULT NULL,
  `ip_address` varchar(16) DEFAULT NULL,
  `word` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=351 ;

--
-- Dumping data for table `tbl_captcha`
--

INSERT INTO `tbl_captcha` (`id`, `time`, `ip_address`, `word`) VALUES
(350, 1426071830, '::1', 'zXYrQ');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ci_sessions`
--

CREATE TABLE IF NOT EXISTS `tbl_ci_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text NOT NULL,
  PRIMARY KEY (`session_id`),
  KEY `last_activity_idx` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_ci_sessions`
--

INSERT INTO `tbl_ci_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
('2c8368cfacb29f8f922fe0a72355c078', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:36.0) Gecko/20100101 Firefox/36.0', 1426145970, 'a:6:{s:9:"user_data";s:0:"";s:8:"curr_url";s:8:"register";s:8:"prev_url";s:0:"";s:11:"module_list";s:463:"{"Admin":{"dashboard{{slash}}/index":"Dashboard Panel","user{{slash}}/index":"Users","usergroup{{slash}}/index":"User Groups","language{{slash}}/index":"Languages","setting{{slash}}/index":"Settings","serverlog{{slash}}/index":"Server Logs"},"Module":{"modulelist{{slash}}/index":"Modules"},"Page":{"page{{slash}}/index":"Pages","pagemenu{{slash}}/index":"Page Menus"},"Participant":{"participant{{slash}}/index":"Participant","gallery{{slash}}/index":"Gallery"}}";s:20:"module_function_list";s:3340:"{"Admin":{"dashboard{{slash}}/index":"Dashboard Panel","user{{slash}}/index":"Users","usergroup{{slash}}/index":"User Groups","language{{slash}}/index":"Languages","setting{{slash}}/index":"Settings","serverlog{{slash}}/index":"Server Logs","dashboard{{slash}}/add":"Add New Dashboard","dashboard{{slash}}/view":"View Dashboard","dashboard{{slash}}/edit":"Edit Dashboard","dashboard{{slash}}/delete":"Delete Dashboard","dashboard{{slash}}/change":"Change Dashboard Status","user{{slash}}/add":"Add User","user{{slash}}/view":"View User","user{{slash}}/edit":"Edit User","user{{slash}}/delete":"Delete User","user{{slash}}/change":"Change User Status","usergroup{{slash}}/add":"Add User Group","usergroup{{slash}}/view":"View User Group","usergroup{{slash}}/edit":"Edit User Group","usergroup{{slash}}/delete":"Delete User Group","usergroup{{slash}}/change":"Change User Group Status","language{{slash}}/add":"Add Language","language{{slash}}/view":"View Language","language{{slash}}/edit":"Edit Language","language{{slash}}/delete":"Delete Language","language{{slash}}/change":"Change Language Status","setting{{slash}}/add":"Add Setting","setting{{slash}}/view":"View Setting","setting{{slash}}/edit":"Edit Setting","setting{{slash}}/delete":"Delete Setting","setting{{slash}}/change":"Change Setting Status","serverlog{{slash}}/view":"View Server Log","serverlog{{slash}}/edit":"Edit Server Log","serverlog{{slash}}/delete":"Delete Server Log","serverlog{{slash}}/trash":"Trash Server Log"},"Module":{"modulelist{{slash}}/edit":"Edit Module"},"Page":{"page{{slash}}/index":"Pages","pagemenu{{slash}}/index":"Page Menus","page{{slash}}/index{{slash}}/add":"Add Page","page{{slash}}/index{{slash}}/view":"View Page","page{{slash}}/index{{slash}}/edit":"Edit Page","page{{slash}}/index{{slash}}/delete":"Delete Page","page{{slash}}/index{{slash}}/change":"Change Page Status","page{{slash}}/index{{slash}}/export":"Export Page","page{{slash}}/index{{slash}}/print":"Print Page","pagemenu{{slash}}/index{{slash}}/add":"Add Page Menu","pagemenu{{slash}}/index{{slash}}/view":"View Page Menu","pagemenu{{slash}}/index{{slash}}/edit":"Edit Page Menu","pagemenu{{slash}}/index{{slash}}/delete":"Delete Page Menu","pagemenu{{slash}}/index{{slash}}/change":"Change Page Menu Status","pagemenu{{slash}}/index{{slash}}/export":"Export Page Menu","pagemenu{{slash}}/index{{slash}}/print":"Print Page Menu"},"Participant":{"participant{{slash}}/index":"Participant","gallery{{slash}}/index":"Gallery","participant{{slash}}/index{{slash}}/add":"Add Participant","participant{{slash}}/index{{slash}}/view":"View Participant","participant{{slash}}/index{{slash}}/edit":"Edit Participant","participant{{slash}}/index{{slash}}/delete":"Delete Participant","participant{{slash}}/index{{slash}}/change":"Change Participant Status","participant{{slash}}/index{{slash}}/export":"Export Participant","participant{{slash}}/index{{slash}}/print":"Print Participant","gallery{{slash}}/index{{slash}}/add":"Add Gallery","gallery{{slash}}/index{{slash}}/view":"View Gallery","gallery{{slash}}/index{{slash}}/edit":"Edit Gallery","gallery{{slash}}/index{{slash}}/delete":"Delete Gallery","gallery{{slash}}/index{{slash}}/change":"Change Gallery Status","gallery{{slash}}/index{{slash}}/export":"Export Gallery","gallery{{slash}}/index{{slash}}/print":"Print Gallery"}}";s:12:"user_session";O:8:"stdClass":9:{s:2:"id";s:1:"1";s:8:"username";s:5:"admin";s:5:"email";s:15:"admin@admin.com";s:8:"password";s:8:"********";s:8:"group_id";s:1:"1";s:6:"status";s:1:"1";s:10:"last_login";s:10:"1426138569";s:9:"logged_in";b:1;s:4:"name";s:21:"Administrator Website";}}'),
('7a512ee4ea1be7adf120bbcfb6a71331', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', 1426141865, 'a:7:{s:9:"user_data";s:0:"";s:8:"curr_url";s:27:"admin-panel/dashboard/index";s:8:"prev_url";b:0;s:11:"module_list";s:463:"{"Admin":{"dashboard{{slash}}/index":"Dashboard Panel","user{{slash}}/index":"Users","usergroup{{slash}}/index":"User Groups","language{{slash}}/index":"Languages","setting{{slash}}/index":"Settings","serverlog{{slash}}/index":"Server Logs"},"Module":{"modulelist{{slash}}/index":"Modules"},"Page":{"page{{slash}}/index":"Pages","pagemenu{{slash}}/index":"Page Menus"},"Participant":{"participant{{slash}}/index":"Participant","gallery{{slash}}/index":"Gallery"}}";s:20:"module_function_list";s:3340:"{"Admin":{"dashboard{{slash}}/index":"Dashboard Panel","user{{slash}}/index":"Users","usergroup{{slash}}/index":"User Groups","language{{slash}}/index":"Languages","setting{{slash}}/index":"Settings","serverlog{{slash}}/index":"Server Logs","dashboard{{slash}}/add":"Add New Dashboard","dashboard{{slash}}/view":"View Dashboard","dashboard{{slash}}/edit":"Edit Dashboard","dashboard{{slash}}/delete":"Delete Dashboard","dashboard{{slash}}/change":"Change Dashboard Status","user{{slash}}/add":"Add User","user{{slash}}/view":"View User","user{{slash}}/edit":"Edit User","user{{slash}}/delete":"Delete User","user{{slash}}/change":"Change User Status","usergroup{{slash}}/add":"Add User Group","usergroup{{slash}}/view":"View User Group","usergroup{{slash}}/edit":"Edit User Group","usergroup{{slash}}/delete":"Delete User Group","usergroup{{slash}}/change":"Change User Group Status","language{{slash}}/add":"Add Language","language{{slash}}/view":"View Language","language{{slash}}/edit":"Edit Language","language{{slash}}/delete":"Delete Language","language{{slash}}/change":"Change Language Status","setting{{slash}}/add":"Add Setting","setting{{slash}}/view":"View Setting","setting{{slash}}/edit":"Edit Setting","setting{{slash}}/delete":"Delete Setting","setting{{slash}}/change":"Change Setting Status","serverlog{{slash}}/view":"View Server Log","serverlog{{slash}}/edit":"Edit Server Log","serverlog{{slash}}/delete":"Delete Server Log","serverlog{{slash}}/trash":"Trash Server Log"},"Module":{"modulelist{{slash}}/edit":"Edit Module"},"Page":{"page{{slash}}/index":"Pages","pagemenu{{slash}}/index":"Page Menus","page{{slash}}/index{{slash}}/add":"Add Page","page{{slash}}/index{{slash}}/view":"View Page","page{{slash}}/index{{slash}}/edit":"Edit Page","page{{slash}}/index{{slash}}/delete":"Delete Page","page{{slash}}/index{{slash}}/change":"Change Page Status","page{{slash}}/index{{slash}}/export":"Export Page","page{{slash}}/index{{slash}}/print":"Print Page","pagemenu{{slash}}/index{{slash}}/add":"Add Page Menu","pagemenu{{slash}}/index{{slash}}/view":"View Page Menu","pagemenu{{slash}}/index{{slash}}/edit":"Edit Page Menu","pagemenu{{slash}}/index{{slash}}/delete":"Delete Page Menu","pagemenu{{slash}}/index{{slash}}/change":"Change Page Menu Status","pagemenu{{slash}}/index{{slash}}/export":"Export Page Menu","pagemenu{{slash}}/index{{slash}}/print":"Print Page Menu"},"Participant":{"participant{{slash}}/index":"Participant","gallery{{slash}}/index":"Gallery","participant{{slash}}/index{{slash}}/add":"Add Participant","participant{{slash}}/index{{slash}}/view":"View Participant","participant{{slash}}/index{{slash}}/edit":"Edit Participant","participant{{slash}}/index{{slash}}/delete":"Delete Participant","participant{{slash}}/index{{slash}}/change":"Change Participant Status","participant{{slash}}/index{{slash}}/export":"Export Participant","participant{{slash}}/index{{slash}}/print":"Print Participant","gallery{{slash}}/index{{slash}}/add":"Add Gallery","gallery{{slash}}/index{{slash}}/view":"View Gallery","gallery{{slash}}/index{{slash}}/edit":"Edit Gallery","gallery{{slash}}/index{{slash}}/delete":"Delete Gallery","gallery{{slash}}/index{{slash}}/change":"Change Gallery Status","gallery{{slash}}/index{{slash}}/export":"Export Gallery","gallery{{slash}}/index{{slash}}/print":"Print Gallery"}}";s:12:"user_session";O:8:"stdClass":9:{s:2:"id";s:1:"1";s:8:"username";s:5:"admin";s:5:"email";s:15:"admin@admin.com";s:8:"password";s:8:"********";s:8:"group_id";s:1:"1";s:6:"status";s:1:"1";s:10:"last_login";s:10:"1426138569";s:9:"logged_in";b:1;s:4:"name";s:21:"Administrator Website";}s:17:"flash:old:message";s:42:"You do not have permission to favicon.ico!";}');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_configurations`
--

CREATE TABLE IF NOT EXISTS `tbl_configurations` (
  `parameter` varchar(150) NOT NULL DEFAULT '',
  `value` varchar(150) NOT NULL DEFAULT '',
  PRIMARY KEY (`parameter`,`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_configurations`
--

INSERT INTO `tbl_configurations` (`parameter`, `value`) VALUES
('environment', '0'),
('install', '0'),
('maintenance', '0'),
('theme', '0');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_fb_temp`
--

CREATE TABLE IF NOT EXISTS `tbl_fb_temp` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned DEFAULT NULL,
  `fb_id` varchar(255) DEFAULT NULL,
  `fb_name` varchar(255) DEFAULT NULL,
  `fb_email` varchar(255) DEFAULT NULL,
  `fb_pic` varchar(512) DEFAULT NULL,
  `added` int(11) DEFAULT NULL,
  `modified` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fb_id` (`fb_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_group_permissions`
--

CREATE TABLE IF NOT EXISTS `tbl_group_permissions` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `permission_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `value` smallint(1) NOT NULL,
  `added` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=537 ;

--
-- Dumping data for table `tbl_group_permissions`
--

INSERT INTO `tbl_group_permissions` (`id`, `permission_id`, `group_id`, `value`, `added`, `modified`) VALUES
(1, 1, 1, 1, 1425548367, 0),
(2, 2, 1, 1, 1425548367, 0),
(3, 3, 1, 1, 1425548367, 0),
(4, 4, 1, 1, 1425548367, 0),
(5, 5, 1, 1, 1425548367, 0),
(6, 6, 1, 1, 1425548367, 0),
(7, 36, 1, 1, 1425548367, 0),
(8, 37, 1, 1, 1425548367, 0),
(9, 52, 1, 1, 1425548367, 0),
(10, 53, 1, 1, 1425548367, 0),
(11, 7, 1, 1, 1425548367, 0),
(12, 8, 1, 1, 1425548367, 0),
(13, 9, 1, 1, 1425548367, 0),
(14, 10, 1, 1, 1425548367, 0),
(15, 11, 1, 1, 1425548367, 0),
(16, 12, 1, 1, 1425548367, 0),
(17, 13, 1, 1, 1425548367, 0),
(18, 14, 1, 1, 1425548367, 0),
(19, 15, 1, 1, 1425548367, 0),
(20, 16, 1, 1, 1425548367, 0),
(21, 17, 1, 1, 1425548367, 0),
(22, 18, 1, 1, 1425548367, 0),
(23, 19, 1, 1, 1425548367, 0),
(24, 20, 1, 1, 1425548367, 0),
(25, 21, 1, 1, 1425548367, 0),
(26, 22, 1, 1, 1425548367, 0),
(27, 23, 1, 1, 1425548367, 0),
(28, 24, 1, 1, 1425548367, 0),
(29, 25, 1, 1, 1425548367, 0),
(30, 26, 1, 1, 1425548367, 0),
(31, 27, 1, 1, 1425548367, 0),
(32, 28, 1, 1, 1425548367, 0),
(33, 29, 1, 1, 1425548367, 0),
(34, 30, 1, 1, 1425548367, 0),
(35, 31, 1, 1, 1425548367, 0),
(36, 32, 1, 1, 1425548367, 0),
(37, 33, 1, 1, 1425548367, 0),
(38, 34, 1, 1, 1425548367, 0),
(39, 35, 1, 1, 1425548367, 0),
(40, 38, 1, 1, 1425548367, 0),
(41, 39, 1, 1, 1425548367, 0),
(42, 40, 1, 1, 1425548367, 0),
(43, 41, 1, 1, 1425548367, 0),
(44, 42, 1, 1, 1425548367, 0),
(45, 43, 1, 1, 1425548367, 0),
(46, 44, 1, 1, 1425548367, 0),
(47, 45, 1, 1, 1425548367, 0),
(48, 46, 1, 1, 1425548367, 0),
(49, 47, 1, 1, 1425548367, 0),
(50, 48, 1, 1, 1425548367, 0),
(51, 49, 1, 1, 1425548367, 0),
(52, 50, 1, 1, 1425548367, 0),
(53, 51, 1, 1, 1425548367, 0),
(54, 54, 1, 1, 1425548367, 0),
(55, 55, 1, 1, 1425548367, 0),
(56, 56, 1, 1, 1425548367, 0),
(57, 57, 1, 1, 1425548367, 0),
(58, 58, 1, 1, 1425548367, 0),
(59, 59, 1, 1, 1425548367, 0),
(60, 60, 1, 1, 1425548367, 0),
(61, 61, 1, 1, 1425548367, 0),
(62, 62, 1, 1, 1425548367, 0),
(63, 63, 1, 1, 1425548367, 0),
(64, 64, 1, 1, 1425548367, 0),
(65, 65, 1, 1, 1425548367, 0),
(66, 66, 1, 1, 1425548367, 0),
(67, 67, 1, 1, 1425548367, 0),
(68, 1, 2, 1, 1425548367, 1425617142),
(69, 2, 2, 1, 1425548367, 1425617142),
(70, 3, 2, 1, 1425548367, 1425617142),
(71, 4, 2, 1, 1425548367, 1425617142),
(72, 5, 2, 1, 1425548367, 1425617142),
(73, 6, 2, 1, 1425548367, 1425617142),
(74, 36, 2, 1, 1425548367, 1425617142),
(75, 37, 2, 1, 1425548367, 1425617142),
(76, 52, 2, 1, 1425548367, 1425617142),
(77, 53, 2, 1, 1425548367, 1425617142),
(78, 7, 2, 1, 1425548367, 1425617142),
(79, 8, 2, 1, 1425548367, 1425617142),
(80, 9, 2, 1, 1425548367, 1425617142),
(81, 10, 2, 1, 1425548367, 1425617142),
(82, 11, 2, 1, 1425548367, 1425617142),
(83, 12, 2, 1, 1425548367, 1425617142),
(84, 13, 2, 1, 1425548367, 1425617142),
(85, 14, 2, 1, 1425548367, 1425617142),
(86, 15, 2, 1, 1425548367, 1425617142),
(87, 16, 2, 1, 1425548367, 1425617142),
(88, 17, 2, 1, 1425548367, 1425617142),
(89, 18, 2, 1, 1425548367, 1425617142),
(90, 19, 2, 1, 1425548367, 1425617142),
(91, 20, 2, 1, 1425548367, 1425617142),
(92, 21, 2, 1, 1425548367, 1425617142),
(93, 22, 2, 1, 1425548367, 1425617142),
(94, 23, 2, 1, 1425548367, 1425617142),
(95, 24, 2, 1, 1425548367, 1425617142),
(96, 25, 2, 1, 1425548367, 1425617142),
(97, 26, 2, 1, 1425548367, 1425617142),
(98, 27, 2, 1, 1425548367, 1425617142),
(99, 28, 2, 1, 1425548367, 1425617142),
(100, 29, 2, 1, 1425548367, 1425617142),
(101, 30, 2, 1, 1425548367, 1425617142),
(102, 31, 2, 1, 1425548367, 1425617142),
(103, 32, 2, 1, 1425548367, 1425617142),
(104, 33, 2, 1, 1425548367, 1425617142),
(105, 34, 2, 1, 1425548367, 1425617142),
(106, 35, 2, 1, 1425548367, 1425617142),
(107, 38, 2, 1, 1425548367, 1425617142),
(108, 39, 2, 1, 1425548367, 1425617142),
(109, 40, 2, 1, 1425548367, 1425617142),
(110, 41, 2, 1, 1425548367, 1425617142),
(111, 42, 2, 1, 1425548367, 1425617142),
(112, 43, 2, 1, 1425548367, 1425617142),
(113, 44, 2, 1, 1425548367, 1425617142),
(114, 45, 2, 1, 1425548367, 1425617142),
(115, 46, 2, 1, 1425548367, 1425617142),
(116, 47, 2, 1, 1425548367, 1425617142),
(117, 48, 2, 1, 1425548367, 1425617142),
(118, 49, 2, 1, 1425548367, 1425617142),
(119, 50, 2, 1, 1425548367, 1425617142),
(120, 51, 2, 1, 1425548367, 1425617142),
(121, 54, 2, 1, 1425548367, 1425617142),
(122, 55, 2, 1, 1425548367, 1425617142),
(123, 56, 2, 1, 1425548367, 1425617142),
(124, 57, 2, 1, 1425548367, 1425617142),
(125, 58, 2, 1, 1425548367, 1425617142),
(126, 59, 2, 1, 1425548367, 1425617142),
(127, 60, 2, 1, 1425548367, 1425617142),
(128, 61, 2, 1, 1425548367, 1425617142),
(129, 62, 2, 1, 1425548367, 1425617142),
(130, 63, 2, 1, 1425548367, 1425617142),
(131, 64, 2, 1, 1425548367, 1425617142),
(132, 65, 2, 1, 1425548367, 1425617142),
(133, 66, 2, 1, 1425548367, 1425617142),
(134, 67, 2, 1, 1425548367, 1425617142),
(135, 1, 99, 0, 1425548367, 0),
(136, 2, 99, 0, 1425548367, 0),
(137, 3, 99, 0, 1425548367, 0),
(138, 4, 99, 0, 1425548367, 0),
(139, 5, 99, 0, 1425548367, 0),
(140, 6, 99, 0, 1425548367, 0),
(141, 36, 99, 0, 1425548367, 0),
(142, 37, 99, 0, 1425548367, 0),
(143, 52, 99, 0, 1425548367, 0),
(144, 53, 99, 0, 1425548367, 0),
(145, 7, 99, 0, 1425548367, 0),
(146, 8, 99, 0, 1425548367, 0),
(147, 9, 99, 0, 1425548367, 0),
(148, 10, 99, 0, 1425548367, 0),
(149, 11, 99, 0, 1425548367, 0),
(150, 12, 99, 0, 1425548367, 0),
(151, 13, 99, 0, 1425548367, 0),
(152, 14, 99, 0, 1425548367, 0),
(153, 15, 99, 0, 1425548367, 0),
(154, 16, 99, 0, 1425548367, 0),
(155, 17, 99, 0, 1425548367, 0),
(156, 18, 99, 0, 1425548367, 0),
(157, 19, 99, 0, 1425548367, 0),
(158, 20, 99, 0, 1425548367, 0),
(159, 21, 99, 0, 1425548367, 0),
(160, 22, 99, 0, 1425548367, 0),
(161, 23, 99, 0, 1425548367, 0),
(162, 24, 99, 0, 1425548367, 0),
(163, 25, 99, 0, 1425548367, 0),
(164, 26, 99, 0, 1425548367, 0),
(165, 27, 99, 0, 1425548367, 0),
(166, 28, 99, 0, 1425548367, 0),
(167, 29, 99, 0, 1425548367, 0),
(168, 30, 99, 0, 1425548367, 0),
(169, 31, 99, 0, 1425548367, 0),
(170, 32, 99, 0, 1425548367, 0),
(171, 33, 99, 0, 1425548367, 0),
(172, 34, 99, 0, 1425548367, 0),
(173, 35, 99, 0, 1425548367, 0),
(174, 38, 99, 0, 1425548367, 0),
(175, 39, 99, 0, 1425548367, 0),
(176, 40, 99, 0, 1425548367, 0),
(177, 41, 99, 0, 1425548367, 0),
(178, 42, 99, 0, 1425548367, 0),
(179, 43, 99, 0, 1425548367, 0),
(180, 44, 99, 0, 1425548367, 0),
(181, 45, 99, 0, 1425548367, 0),
(182, 46, 99, 0, 1425548367, 0),
(183, 47, 99, 0, 1425548367, 0),
(184, 48, 99, 0, 1425548367, 0),
(185, 49, 99, 0, 1425548367, 0),
(186, 50, 99, 0, 1425548367, 0),
(187, 51, 99, 0, 1425548367, 0),
(188, 54, 99, 0, 1425548367, 0),
(189, 55, 99, 0, 1425548367, 0),
(190, 56, 99, 0, 1425548367, 0),
(191, 57, 99, 0, 1425548367, 0),
(192, 58, 99, 0, 1425548367, 0),
(193, 59, 99, 0, 1425548367, 0),
(194, 60, 99, 0, 1425548367, 0),
(195, 61, 99, 0, 1425548367, 0),
(196, 62, 99, 0, 1425548367, 0),
(197, 63, 99, 0, 1425548367, 0),
(198, 64, 99, 0, 1425548367, 0),
(199, 65, 99, 0, 1425548367, 0),
(200, 66, 99, 0, 1425548367, 0),
(201, 67, 99, 0, 1425548367, 0),
(202, 1, 112, 0, 1425548367, 1425617142),
(203, 2, 112, 0, 1425548367, 1425617142),
(204, 3, 112, 0, 1425548367, 1425617142),
(205, 4, 112, 0, 1425548367, 1425617142),
(206, 5, 112, 0, 1425548367, 1425617142),
(207, 6, 112, 0, 1425548367, 1425617142),
(208, 36, 112, 0, 1425548367, 1425617142),
(209, 37, 112, 0, 1425548367, 1425617142),
(210, 52, 112, 0, 1425548367, 1425617142),
(211, 53, 112, 0, 1425548367, 1425617142),
(212, 7, 112, 0, 1425548367, 1425617142),
(213, 8, 112, 0, 1425548367, 1425617142),
(214, 9, 112, 0, 1425548367, 1425617142),
(215, 10, 112, 0, 1425548367, 1425617142),
(216, 11, 112, 0, 1425548367, 1425617142),
(217, 12, 112, 0, 1425548367, 1425617142),
(218, 13, 112, 0, 1425548367, 1425617142),
(219, 14, 112, 0, 1425548367, 1425617142),
(220, 15, 112, 0, 1425548367, 1425617142),
(221, 16, 112, 0, 1425548367, 1425617142),
(222, 17, 112, 0, 1425548367, 1425617142),
(223, 18, 112, 0, 1425548367, 1425617142),
(224, 19, 112, 0, 1425548367, 1425617142),
(225, 20, 112, 0, 1425548367, 1425617142),
(226, 21, 112, 0, 1425548367, 1425617142),
(227, 22, 112, 0, 1425548367, 1425617142),
(228, 23, 112, 0, 1425548367, 1425617142),
(229, 24, 112, 0, 1425548367, 1425617142),
(230, 25, 112, 0, 1425548367, 1425617142),
(231, 26, 112, 0, 1425548367, 1425617142),
(232, 27, 112, 0, 1425548367, 1425617142),
(233, 28, 112, 0, 1425548367, 1425617142),
(234, 29, 112, 0, 1425548367, 1425617142),
(235, 30, 112, 0, 1425548367, 1425617142),
(236, 31, 112, 0, 1425548367, 1425617142),
(237, 32, 112, 0, 1425548367, 1425617142),
(238, 33, 112, 0, 1425548367, 1425617142),
(239, 34, 112, 0, 1425548367, 1425617142),
(240, 35, 112, 0, 1425548367, 1425617142),
(241, 38, 112, 0, 1425548367, 1425617142),
(242, 39, 112, 0, 1425548367, 1425617142),
(243, 40, 112, 0, 1425548367, 1425617142),
(244, 41, 112, 0, 1425548367, 1425617142),
(245, 42, 112, 0, 1425548367, 1425617142),
(246, 43, 112, 0, 1425548367, 1425617142),
(247, 44, 112, 0, 1425548367, 1425617142),
(248, 45, 112, 0, 1425548367, 1425617142),
(249, 46, 112, 0, 1425548367, 1425617142),
(250, 47, 112, 0, 1425548367, 1425617142),
(251, 48, 112, 0, 1425548367, 1425617142),
(252, 49, 112, 0, 1425548367, 1425617142),
(253, 50, 112, 0, 1425548367, 1425617142),
(254, 51, 112, 0, 1425548367, 1425617142),
(255, 54, 112, 0, 1425548367, 1425617142),
(256, 55, 112, 0, 1425548367, 1425617142),
(257, 56, 112, 0, 1425548367, 1425617142),
(258, 57, 112, 0, 1425548367, 1425617142),
(259, 58, 112, 0, 1425548367, 1425617142),
(260, 59, 112, 0, 1425548367, 1425617142),
(261, 60, 112, 0, 1425548367, 1425617142),
(262, 61, 112, 0, 1425548367, 1425617142),
(263, 62, 112, 0, 1425548367, 1425617142),
(264, 63, 112, 0, 1425548367, 1425617142),
(265, 64, 112, 0, 1425548367, 1425617142),
(266, 65, 112, 0, 1425548367, 1425617142),
(267, 66, 112, 0, 1425548367, 1425617142),
(268, 67, 112, 0, 1425548367, 1425617142),
(269, 1, 113, 0, 1425548367, 1425617142),
(270, 2, 113, 0, 1425548367, 1425617142),
(271, 3, 113, 0, 1425548367, 1425617142),
(272, 4, 113, 0, 1425548367, 1425617142),
(273, 5, 113, 0, 1425548367, 1425617142),
(274, 6, 113, 0, 1425548367, 1425617142),
(275, 36, 113, 0, 1425548367, 1425617142),
(276, 37, 113, 0, 1425548367, 1425617142),
(277, 52, 113, 0, 1425548367, 1425617142),
(278, 53, 113, 0, 1425548367, 1425617142),
(279, 7, 113, 0, 1425548367, 1425617142),
(280, 8, 113, 0, 1425548367, 1425617142),
(281, 9, 113, 0, 1425548367, 1425617142),
(282, 10, 113, 0, 1425548367, 1425617142),
(283, 11, 113, 0, 1425548367, 1425617142),
(284, 12, 113, 0, 1425548367, 1425617142),
(285, 13, 113, 0, 1425548367, 1425617142),
(286, 14, 113, 0, 1425548367, 1425617142),
(287, 15, 113, 0, 1425548367, 1425617142),
(288, 16, 113, 0, 1425548367, 1425617142),
(289, 17, 113, 0, 1425548367, 1425617142),
(290, 18, 113, 0, 1425548367, 1425617142),
(291, 19, 113, 0, 1425548367, 1425617142),
(292, 20, 113, 0, 1425548367, 1425617142),
(293, 21, 113, 0, 1425548367, 1425617142),
(294, 22, 113, 0, 1425548367, 1425617142),
(295, 23, 113, 0, 1425548367, 1425617142),
(296, 24, 113, 0, 1425548367, 1425617142),
(297, 25, 113, 0, 1425548367, 1425617142),
(298, 26, 113, 0, 1425548367, 1425617142),
(299, 27, 113, 0, 1425548367, 1425617142),
(300, 28, 113, 0, 1425548367, 1425617142),
(301, 29, 113, 0, 1425548367, 1425617142),
(302, 30, 113, 0, 1425548367, 1425617142),
(303, 31, 113, 0, 1425548367, 1425617142),
(304, 32, 113, 0, 1425548367, 1425617142),
(305, 33, 113, 0, 1425548367, 1425617142),
(306, 34, 113, 0, 1425548367, 1425617142),
(307, 35, 113, 0, 1425548367, 1425617142),
(308, 38, 113, 0, 1425548367, 1425617142),
(309, 39, 113, 0, 1425548367, 1425617142),
(310, 40, 113, 0, 1425548367, 1425617142),
(311, 41, 113, 0, 1425548367, 1425617142),
(312, 42, 113, 0, 1425548367, 1425617142),
(313, 43, 113, 0, 1425548367, 1425617142),
(314, 44, 113, 0, 1425548367, 1425617142),
(315, 45, 113, 0, 1425548367, 1425617142),
(316, 46, 113, 0, 1425548367, 1425617142),
(317, 47, 113, 0, 1425548367, 1425617142),
(318, 48, 113, 0, 1425548367, 1425617142),
(319, 49, 113, 0, 1425548367, 1425617142),
(320, 50, 113, 0, 1425548367, 1425617142),
(321, 51, 113, 0, 1425548367, 1425617142),
(322, 54, 113, 0, 1425548367, 1425617142),
(323, 55, 113, 0, 1425548367, 1425617142),
(324, 56, 113, 0, 1425548367, 1425617142),
(325, 57, 113, 0, 1425548367, 1425617142),
(326, 58, 113, 0, 1425548367, 1425617142),
(327, 59, 113, 0, 1425548367, 1425617142),
(328, 60, 113, 0, 1425548367, 1425617142),
(329, 61, 113, 0, 1425548367, 1425617142),
(330, 62, 113, 0, 1425548367, 1425617142),
(331, 63, 113, 0, 1425548367, 1425617142),
(332, 64, 113, 0, 1425548367, 1425617142),
(333, 65, 113, 0, 1425548367, 1425617142),
(334, 66, 113, 0, 1425548367, 1425617142),
(335, 67, 113, 0, 1425548367, 1425617142),
(336, 1, 114, 0, 1425548367, 1425617142),
(337, 2, 114, 0, 1425548367, 1425617142),
(338, 3, 114, 0, 1425548367, 1425617142),
(339, 4, 114, 0, 1425548367, 1425617142),
(340, 5, 114, 0, 1425548367, 1425617142),
(341, 6, 114, 0, 1425548367, 1425617142),
(342, 36, 114, 0, 1425548367, 1425617142),
(343, 37, 114, 0, 1425548367, 1425617142),
(344, 52, 114, 0, 1425548367, 1425617142),
(345, 53, 114, 0, 1425548367, 1425617142),
(346, 7, 114, 0, 1425548367, 1425617142),
(347, 8, 114, 0, 1425548367, 1425617142),
(348, 9, 114, 0, 1425548367, 1425617142),
(349, 10, 114, 0, 1425548367, 1425617142),
(350, 11, 114, 0, 1425548367, 1425617142),
(351, 12, 114, 0, 1425548367, 1425617142),
(352, 13, 114, 0, 1425548367, 1425617142),
(353, 14, 114, 0, 1425548367, 1425617142),
(354, 15, 114, 0, 1425548367, 1425617142),
(355, 16, 114, 0, 1425548367, 1425617142),
(356, 17, 114, 0, 1425548367, 1425617142),
(357, 18, 114, 0, 1425548367, 1425617142),
(358, 19, 114, 0, 1425548367, 1425617142),
(359, 20, 114, 0, 1425548367, 1425617142),
(360, 21, 114, 0, 1425548367, 1425617142),
(361, 22, 114, 0, 1425548367, 1425617142),
(362, 23, 114, 0, 1425548367, 1425617142),
(363, 24, 114, 0, 1425548367, 1425617142),
(364, 25, 114, 0, 1425548367, 1425617142),
(365, 26, 114, 0, 1425548367, 1425617142),
(366, 27, 114, 0, 1425548367, 1425617142),
(367, 28, 114, 0, 1425548367, 1425617142),
(368, 29, 114, 0, 1425548367, 1425617142),
(369, 30, 114, 0, 1425548367, 1425617142),
(370, 31, 114, 0, 1425548367, 1425617142),
(371, 32, 114, 0, 1425548367, 1425617142),
(372, 33, 114, 0, 1425548367, 1425617142),
(373, 34, 114, 0, 1425548367, 1425617142),
(374, 35, 114, 0, 1425548367, 1425617142),
(375, 38, 114, 0, 1425548367, 1425617142),
(376, 39, 114, 0, 1425548367, 1425617142),
(377, 40, 114, 0, 1425548367, 1425617142),
(378, 41, 114, 0, 1425548367, 1425617142),
(379, 42, 114, 0, 1425548367, 1425617142),
(380, 43, 114, 0, 1425548367, 1425617142),
(381, 44, 114, 0, 1425548367, 1425617142),
(382, 45, 114, 0, 1425548367, 1425617142),
(383, 46, 114, 0, 1425548367, 1425617142),
(384, 47, 114, 0, 1425548367, 1425617142),
(385, 48, 114, 0, 1425548367, 1425617142),
(386, 49, 114, 0, 1425548367, 1425617142),
(387, 50, 114, 0, 1425548367, 1425617142),
(388, 51, 114, 0, 1425548367, 1425617142),
(389, 54, 114, 0, 1425548367, 1425617142),
(390, 55, 114, 0, 1425548367, 1425617142),
(391, 56, 114, 0, 1425548367, 1425617142),
(392, 57, 114, 0, 1425548367, 1425617142),
(393, 58, 114, 0, 1425548367, 1425617142),
(394, 59, 114, 0, 1425548367, 1425617142),
(395, 60, 114, 0, 1425548367, 1425617142),
(396, 61, 114, 0, 1425548367, 1425617142),
(397, 62, 114, 0, 1425548367, 1425617142),
(398, 63, 114, 0, 1425548367, 1425617142),
(399, 64, 114, 0, 1425548367, 1425617142),
(400, 65, 114, 0, 1425548367, 1425617142),
(401, 66, 114, 0, 1425548367, 1425617142),
(402, 67, 114, 0, 1425548367, 1425617142),
(403, 1, 116, 0, 1425548367, 1425617142),
(404, 2, 116, 0, 1425548367, 1425617142),
(405, 3, 116, 0, 1425548367, 1425617142),
(406, 4, 116, 0, 1425548367, 1425617142),
(407, 5, 116, 0, 1425548367, 1425617142),
(408, 6, 116, 0, 1425548367, 1425617142),
(409, 36, 116, 1, 1425548367, 1425617142),
(410, 37, 116, 1, 1425548367, 1425617142),
(411, 52, 116, 1, 1425548367, 1425617142),
(412, 53, 116, 1, 1425548367, 1425617142),
(413, 7, 116, 0, 1425548367, 1425617142),
(414, 8, 116, 0, 1425548367, 1425617142),
(415, 9, 116, 0, 1425548367, 1425617142),
(416, 10, 116, 0, 1425548367, 1425617142),
(417, 11, 116, 0, 1425548367, 1425617142),
(418, 12, 116, 0, 1425548367, 1425617142),
(419, 13, 116, 0, 1425548367, 1425617142),
(420, 14, 116, 0, 1425548367, 1425617142),
(421, 15, 116, 0, 1425548367, 1425617142),
(422, 16, 116, 0, 1425548367, 1425617142),
(423, 17, 116, 0, 1425548367, 1425617142),
(424, 18, 116, 0, 1425548367, 1425617142),
(425, 19, 116, 0, 1425548367, 1425617142),
(426, 20, 116, 0, 1425548367, 1425617142),
(427, 21, 116, 0, 1425548367, 1425617142),
(428, 22, 116, 0, 1425548367, 1425617142),
(429, 23, 116, 0, 1425548367, 1425617142),
(430, 24, 116, 0, 1425548367, 1425617142),
(431, 25, 116, 0, 1425548367, 1425617142),
(432, 26, 116, 0, 1425548367, 1425617142),
(433, 27, 116, 0, 1425548367, 1425617142),
(434, 28, 116, 0, 1425548367, 1425617142),
(435, 29, 116, 0, 1425548367, 1425617142),
(436, 30, 116, 0, 1425548367, 1425617142),
(437, 31, 116, 0, 1425548367, 1425617142),
(438, 32, 116, 0, 1425548367, 1425617142),
(439, 33, 116, 0, 1425548367, 1425617142),
(440, 34, 116, 0, 1425548367, 1425617142),
(441, 35, 116, 0, 1425548367, 1425617142),
(442, 38, 116, 1, 1425548367, 1425617142),
(443, 39, 116, 1, 1425548367, 1425617142),
(444, 40, 116, 1, 1425548367, 1425617142),
(445, 41, 116, 1, 1425548367, 1425617142),
(446, 42, 116, 1, 1425548367, 1425617142),
(447, 43, 116, 1, 1425548367, 1425617142),
(448, 44, 116, 1, 1425548367, 1425617142),
(449, 45, 116, 1, 1425548367, 1425617142),
(450, 46, 116, 1, 1425548367, 1425617142),
(451, 47, 116, 1, 1425548367, 1425617142),
(452, 48, 116, 1, 1425548367, 1425617142),
(453, 49, 116, 1, 1425548367, 1425617142),
(454, 50, 116, 1, 1425548367, 1425617142),
(455, 51, 116, 1, 1425548367, 1425617142),
(456, 54, 116, 1, 1425548367, 1425617142),
(457, 55, 116, 1, 1425548367, 1425617142),
(458, 56, 116, 1, 1425548367, 1425617142),
(459, 57, 116, 1, 1425548367, 1425617142),
(460, 58, 116, 1, 1425548367, 1425617142),
(461, 59, 116, 1, 1425548367, 1425617142),
(462, 60, 116, 1, 1425548367, 1425617142),
(463, 61, 116, 1, 1425548367, 1425617142),
(464, 62, 116, 1, 1425548367, 1425617142),
(465, 63, 116, 1, 1425548367, 1425617142),
(466, 64, 116, 1, 1425548367, 1425617142),
(467, 65, 116, 1, 1425548367, 1425617142),
(468, 66, 116, 1, 1425548367, 1425617142),
(469, 67, 116, 1, 1425548367, 1425617142),
(470, 1, 100, 0, 1425548367, 1425617142),
(471, 2, 100, 0, 1425548367, 1425617142),
(472, 3, 100, 0, 1425548367, 1425617142),
(473, 4, 100, 0, 1425548367, 1425617142),
(474, 5, 100, 0, 1425548367, 1425617142),
(475, 6, 100, 0, 1425548367, 1425617142),
(476, 36, 100, 0, 1425548367, 1425617142),
(477, 37, 100, 0, 1425548367, 1425617142),
(478, 52, 100, 0, 1425548367, 1425617142),
(479, 53, 100, 0, 1425548367, 1425617142),
(480, 7, 100, 0, 1425548367, 1425617142),
(481, 8, 100, 0, 1425548367, 1425617142),
(482, 9, 100, 0, 1425548367, 1425617142),
(483, 10, 100, 0, 1425548367, 1425617142),
(484, 11, 100, 0, 1425548367, 1425617142),
(485, 12, 100, 0, 1425548367, 1425617142),
(486, 13, 100, 0, 1425548367, 1425617142),
(487, 14, 100, 0, 1425548367, 1425617142),
(488, 15, 100, 0, 1425548367, 1425617142),
(489, 16, 100, 0, 1425548367, 1425617142),
(490, 17, 100, 0, 1425548367, 1425617142),
(491, 18, 100, 0, 1425548367, 1425617142),
(492, 19, 100, 0, 1425548367, 1425617142),
(493, 20, 100, 0, 1425548367, 1425617142),
(494, 21, 100, 0, 1425548367, 1425617142),
(495, 22, 100, 0, 1425548367, 1425617142),
(496, 23, 100, 0, 1425548367, 1425617142),
(497, 24, 100, 0, 1425548367, 1425617142),
(498, 25, 100, 0, 1425548367, 1425617142),
(499, 26, 100, 0, 1425548367, 1425617142),
(500, 27, 100, 0, 1425548367, 1425617142),
(501, 28, 100, 0, 1425548367, 1425617142),
(502, 29, 100, 0, 1425548367, 1425617142),
(503, 30, 100, 0, 1425548367, 1425617142),
(504, 31, 100, 0, 1425548367, 1425617142),
(505, 32, 100, 0, 1425548367, 1425617142),
(506, 33, 100, 0, 1425548367, 1425617142),
(507, 34, 100, 0, 1425548367, 1425617142),
(508, 35, 100, 0, 1425548367, 1425617142),
(509, 38, 100, 0, 1425548367, 1425617142),
(510, 39, 100, 0, 1425548367, 1425617142),
(511, 40, 100, 0, 1425548367, 1425617142),
(512, 41, 100, 0, 1425548367, 1425617142),
(513, 42, 100, 0, 1425548367, 1425617142),
(514, 43, 100, 0, 1425548367, 1425617142),
(515, 44, 100, 0, 1425548367, 1425617142),
(516, 45, 100, 0, 1425548367, 1425617142),
(517, 46, 100, 0, 1425548367, 1425617142),
(518, 47, 100, 0, 1425548367, 1425617142),
(519, 48, 100, 0, 1425548367, 1425617142),
(520, 49, 100, 0, 1425548367, 1425617142),
(521, 50, 100, 0, 1425548367, 1425617142),
(522, 51, 100, 0, 1425548367, 1425617142),
(523, 54, 100, 0, 1425548367, 1425617142),
(524, 55, 100, 0, 1425548367, 1425617142),
(525, 56, 100, 0, 1425548367, 1425617142),
(526, 57, 100, 0, 1425548367, 1425617142),
(527, 58, 100, 0, 1425548367, 1425617142),
(528, 59, 100, 0, 1425548367, 1425617142),
(529, 60, 100, 0, 1425548367, 1425617142),
(530, 61, 100, 0, 1425548367, 1425617142),
(531, 62, 100, 0, 1425548367, 1425617142),
(532, 63, 100, 0, 1425548367, 1425617142),
(533, 64, 100, 0, 1425548367, 1425617142),
(534, 65, 100, 0, 1425548367, 1425617142),
(535, 66, 100, 0, 1425548367, 1425617142),
(536, 67, 100, 0, 1425548367, 1425617142);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_languages`
--

CREATE TABLE IF NOT EXISTS `tbl_languages` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `prefix` varchar(6) DEFAULT NULL,
  `default` tinyint(1) DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `is_system` tinyint(1) NOT NULL DEFAULT '0',
  `added` int(11) unsigned NOT NULL,
  `modified` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`,`status`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `tbl_languages`
--

INSERT INTO `tbl_languages` (`id`, `name`, `prefix`, `default`, `status`, `is_system`, `added`, `modified`) VALUES
(1, 'Indonesia', 'id', 0, 1, 0, 1425357221, 0),
(2, 'English', 'en', 1, 1, 0, 1425357221, 0),
(3, 'Arab', 'ar', 0, 0, 0, 1425357221, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_model_lists`
--

CREATE TABLE IF NOT EXISTS `tbl_model_lists` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `module_id` int(11) NOT NULL,
  `model` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `tbl_model_lists`
--

INSERT INTO `tbl_model_lists` (`id`, `module_id`, `model`) VALUES
(1, 1, 'admin/Users'),
(2, 1, 'admin/UserGroups'),
(3, 1, 'admin/UserProfiles'),
(4, 1, 'admin/UserHistories'),
(5, 1, 'admin/ModulePermissions'),
(6, 1, 'admin/Languages'),
(7, 1, 'admin/Settings'),
(8, 1, 'admin/ServerLogs'),
(9, 8, 'page/Pages'),
(10, 8, 'page/PageMenus'),
(11, 11, 'participant/Participants'),
(12, 11, 'participant/Gallery'),
(13, 11, 'participant/Fbtemp');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_module_lists`
--

CREATE TABLE IF NOT EXISTS `tbl_module_lists` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL,
  `module_name` varchar(255) NOT NULL,
  `module_link` varchar(255) DEFAULT NULL,
  `order` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `tbl_module_lists`
--

INSERT INTO `tbl_module_lists` (`id`, `parent_id`, `module_name`, `module_link`, `order`) VALUES
(1, 0, 'admin', '#', 0),
(2, 1, 'Dashboard Panel', 'dashboard/index', 0),
(3, 1, 'Users', 'user/index', 1),
(4, 1, 'User Groups', 'usergroup/index', 2),
(5, 1, 'Languages', 'language/index', 3),
(6, 1, 'Settings', 'setting/index', 4),
(7, 1, 'Server Logs', 'serverlog/index', 5),
(8, 0, 'page', '#', 1),
(9, 8, 'Pages', 'page/index', 0),
(10, 8, 'Page Menus', 'pagemenu/index', 1),
(11, 0, 'participant', '#', 2),
(12, 11, 'Participant', 'participant/index', 0),
(13, 11, 'Gallery', 'gallery/index', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_module_permissions`
--

CREATE TABLE IF NOT EXISTS `tbl_module_permissions` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `module_id` int(11) NOT NULL,
  `module_name` varchar(255) NOT NULL,
  `module_link` varchar(255) DEFAULT NULL,
  `order` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=68 ;

--
-- Dumping data for table `tbl_module_permissions`
--

INSERT INTO `tbl_module_permissions` (`id`, `module_id`, `module_name`, `module_link`, `order`) VALUES
(1, 1, 'Dashboard Panel', 'dashboard/index', 0),
(2, 1, 'Users', 'user/index', 1),
(3, 1, 'User Groups', 'usergroup/index', 2),
(4, 1, 'Languages', 'language/index', 3),
(5, 1, 'Settings', 'setting/index', 4),
(6, 1, 'Server Logs', 'serverlog/index', 5),
(7, 1, 'Add New Dashboard', 'dashboard/add', 6),
(8, 1, 'View Dashboard', 'dashboard/view', 7),
(9, 1, 'Edit Dashboard', 'dashboard/edit', 8),
(10, 1, 'Delete Dashboard', 'dashboard/delete', 9),
(11, 1, 'Change Dashboard Status', 'dashboard/change', 10),
(12, 1, 'Add User', 'user/add', 11),
(13, 1, 'View User', 'user/view', 12),
(14, 1, 'Edit User', 'user/edit', 13),
(15, 1, 'Delete User', 'user/delete', 14),
(16, 1, 'Change User Status', 'user/change', 15),
(17, 1, 'Add User Group', 'usergroup/add', 16),
(18, 1, 'View User Group', 'usergroup/view', 17),
(19, 1, 'Edit User Group', 'usergroup/edit', 18),
(20, 1, 'Delete User Group', 'usergroup/delete', 19),
(21, 1, 'Change User Group Status', 'usergroup/change', 20),
(22, 1, 'Add Language', 'language/add', 21),
(23, 1, 'View Language', 'language/view', 22),
(24, 1, 'Edit Language', 'language/edit', 23),
(25, 1, 'Delete Language', 'language/delete', 24),
(26, 1, 'Change Language Status', 'language/change', 25),
(27, 1, 'Add Setting', 'setting/add', 26),
(28, 1, 'View Setting', 'setting/view', 27),
(29, 1, 'Edit Setting', 'setting/edit', 28),
(30, 1, 'Delete Setting', 'setting/delete', 29),
(31, 1, 'Change Setting Status', 'setting/change', 30),
(32, 1, 'View Server Log', 'serverlog/view', 31),
(33, 1, 'Edit Server Log', 'serverlog/edit', 32),
(34, 1, 'Delete Server Log', 'serverlog/delete', 33),
(35, 1, 'Trash Server Log', 'serverlog/trash', 34),
(36, 8, 'Pages', 'page/index', 0),
(37, 8, 'Page Menus', 'pagemenu/index', 1),
(38, 8, 'Add Page', 'page/index/add', 2),
(39, 8, 'View Page', 'page/index/view', 3),
(40, 8, 'Edit Page', 'page/index/edit', 4),
(41, 8, 'Delete Page', 'page/index/delete', 5),
(42, 8, 'Change Page Status', 'page/index/change', 6),
(43, 8, 'Export Page', 'page/index/export', 7),
(44, 8, 'Print Page', 'page/index/print', 8),
(45, 8, 'Add Page Menu', 'pagemenu/index/add', 9),
(46, 8, 'View Page Menu', 'pagemenu/index/view', 10),
(47, 8, 'Edit Page Menu', 'pagemenu/index/edit', 11),
(48, 8, 'Delete Page Menu', 'pagemenu/index/delete', 12),
(49, 8, 'Change Page Menu Status', 'pagemenu/index/change', 13),
(50, 8, 'Export Page Menu', 'pagemenu/index/export', 14),
(51, 8, 'Print Page Menu', 'pagemenu/index/print', 15),
(52, 11, 'Participant', 'participant/index', 0),
(53, 11, 'Gallery', 'gallery/index', 1),
(54, 11, 'Add Participant', 'participant/index/add', 2),
(55, 11, 'View Participant', 'participant/index/view', 3),
(56, 11, 'Edit Participant', 'participant/index/edit', 4),
(57, 11, 'Delete Participant', 'participant/index/delete', 5),
(58, 11, 'Change Participant Status', 'participant/index/change', 6),
(59, 11, 'Export Participant', 'participant/index/export', 7),
(60, 11, 'Print Participant', 'participant/index/print', 8),
(61, 11, 'Add Gallery', 'gallery/index/add', 9),
(62, 11, 'View Gallery', 'gallery/index/view', 10),
(63, 11, 'Edit Gallery', 'gallery/index/edit', 11),
(64, 11, 'Delete Gallery', 'gallery/index/delete', 12),
(65, 11, 'Change Gallery Status', 'gallery/index/change', 13),
(66, 11, 'Export Gallery', 'gallery/index/export', 14),
(67, 11, 'Print Gallery', 'gallery/index/print', 15);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pages`
--

CREATE TABLE IF NOT EXISTS `tbl_pages` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int(11) unsigned DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `synopsis` text,
  `text` text,
  `attribute` text,
  `publish_date` date DEFAULT NULL,
  `unpublish_date` date DEFAULT NULL,
  `allow_comment` tinyint(1) DEFAULT NULL,
  `tags` text,
  `order` tinyint(3) DEFAULT NULL,
  `user_id` tinyint(3) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `status` enum('publish','unpublish','deleted') DEFAULT 'publish',
  `added` int(11) DEFAULT NULL,
  `modified` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id` (`menu_id`,`name`,`publish_date`,`unpublish_date`,`allow_comment`,`order`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `tbl_pages`
--

INSERT INTO `tbl_pages` (`id`, `menu_id`, `name`, `subject`, `synopsis`, `text`, `attribute`, `publish_date`, `unpublish_date`, `allow_comment`, `tags`, `order`, `user_id`, `count`, `status`, `added`, `modified`) VALUES
(1, 1, 'test-page-one', 'Test page one sdfsf', '<p>\r\n	Test page one Test page one Test page one Test page one Test page one Test page one sdfsdf asdasd</p>\r\n', '<p>\r\n	Test page one Test page one Test page one Test page one sdfsdfsf cbxfx</p>\r\n', NULL, '2015-02-13', '2015-02-28', 1, NULL, NULL, NULL, NULL, 'publish', NULL, 1424073158),
(2, 1, 'test-page-two', 'Test Page Two', '<p>\r\n	Test Page Two Synopsis</p>\r\n', '<p>\r\n	Test Page Two Text sefsfdfsdf</p>\r\n', NULL, '2015-02-28', '2015-02-28', 1, NULL, NULL, NULL, NULL, 'publish', NULL, NULL),
(3, 2, 'test-three-page', 'Test three', '<p>\r\n	Test three</p>\r\n', '<p>\r\n	Test three</p>\r\n', NULL, '2015-02-28', '2015-03-31', 1, NULL, NULL, NULL, NULL, 'publish', NULL, 1424087137),
(4, 2, 'test-four-test', 'Test Four TEst', '<p>\r\n	Test Four TEst</p>\r\n', '<p>\r\n	Test Four TEst</p>\r\n', NULL, '2015-02-01', '2015-03-28', NULL, NULL, NULL, NULL, NULL, 'publish', NULL, 1424087155),
(5, 2, 'test-five-page-miss', 'Test Five Page', '<p>\r\n	Test Five Page</p>\r\n', '<p>\r\n	Test Five</p>\r\n', NULL, '2015-02-16', '2015-02-28', NULL, NULL, NULL, NULL, NULL, 'publish', NULL, 1424087170),
(6, 1, 'test-one-two-three-four-five-six-seven', 'Test one two three four five six seven', '<p>\r\n	Test one two three four five six seven</p>\r\n', '<p>\r\n	Test one two three four five six seven</p>\r\n', NULL, '2015-02-28', '2015-02-28', NULL, NULL, NULL, NULL, NULL, 'publish', 1424071240, 1424087187),
(7, 2, 'Test Page with Added', 'Test Page with Added', '<p>\r\n	Test Page with Added</p>\r\n', '<p>\r\n	Test Page with Added</p>\r\n', NULL, '2015-02-16', '2015-02-28', NULL, NULL, NULL, NULL, NULL, 'publish', 1424087227, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_page_menus`
--

CREATE TABLE IF NOT EXISTS `tbl_page_menus` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) unsigned DEFAULT NULL,
  `name` varchar(128) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `url` varchar(255) DEFAULT NULL,
  `media` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `sub_level` tinyint(3) DEFAULT NULL,
  `order` tinyint(3) DEFAULT NULL,
  `is_system` tinyint(3) DEFAULT NULL,
  `has_child` tinyint(3) DEFAULT NULL,
  `user_id` tinyint(3) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `status` enum('publish','unpublish','deleted') DEFAULT 'publish',
  `added` int(11) DEFAULT NULL,
  `modified` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`,`name`,`sub_level`,`order`,`status`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tbl_page_menus`
--

INSERT INTO `tbl_page_menus` (`id`, `parent_id`, `name`, `title`, `description`, `url`, `media`, `position`, `sub_level`, `order`, `is_system`, `has_child`, `user_id`, `count`, `status`, `added`, `modified`) VALUES
(1, NULL, 'Term of service', 'toc', '<p>\r\n	Term of service</p>\r\n', 'term-of-service', NULL, 'top', NULL, NULL, NULL, NULL, NULL, NULL, 'publish', NULL, NULL),
(2, NULL, 'Menu Two', 'menu-two', '<p>\r\n	Menu Two Description</p>\r\n', 'menu-two', NULL, 'top', NULL, NULL, NULL, NULL, NULL, NULL, 'publish', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_participants`
--

CREATE TABLE IF NOT EXISTS `tbl_participants` (
  `part_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `address` text,
  `email` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `fb_id` varchar(512) DEFAULT NULL,
  `fb_pic_url` varchar(255) NOT NULL,
  `file_name` varchar(512) DEFAULT NULL,
  `join_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`part_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=50 ;

--
-- Dumping data for table `tbl_participants`
--

INSERT INTO `tbl_participants` (`part_id`, `name`, `address`, `email`, `phone_number`, `twitter`, `fb_id`, `fb_pic_url`, `file_name`, `join_date`) VALUES
(1, 'Abdullah Assajid', 'Dusun bakan tambun, RT 002 RW 008, Dese/kel pucung, kecamatan kota baru, kabupaten karawang', 'dizasjmc24@ymail.com', '089639949647', '@dizas_drj', '565131000290364', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xfa1/v/t1.0-1/p50x50/1975112_562496580553806_2210115884134723189_n.jpg?oh=c1ba1657fe1226f19a54a07eaec2989f&oe=552ABF17&__gda__=1428211269_546d8ea145109aeb8f63ea138c4a9b56', NULL, '2015-01-24 09:32:28'),
(2, 'Mandala Wisnu', 'jl kh syahdan', 'wsnukesumamandala@yahoo.com', '081288004472', '@mandalawisnu', '10203709687846191', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xpf1/v/t1.0-1/p50x50/1509074_10203444812824481_7099475292656601658_n.jpg?oh=10faf3cf79fd2833eae9d2340806a3b5&oe=555A4EC1&__gda__=1432817070_1f86ac7d36d08e91d4b0cb939caaf945', NULL, '2015-01-24 11:18:52'),
(3, 'Anwal Tasbiansyakh', 'Jln. Muara Bahari RT 05 RW 01 No. 36 Sunter Agung Jakarta Utara', 'bian.anwal@gmail.com', '089604381426', '@AnwalTasbiansah', '995564460471799', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xfp1/v/t1.0-1/c0.0.50.50/p50x50/10277753_831572666870980_5128532176410782642_n.jpg?oh=f9c156f12a2ab1a1b2c5e52361ac6983&oe=556DC8A3&__gda__=1431939975_fca8f7e5d0956463c2ebb85340e0a836', NULL, '2015-01-25 06:34:02'),
(4, 'Syahida Nur Salim', 'Kasihan II, RT.25/RW.08, Ngentakrejo, Lendah, Kulon Progo, Yogyakarta.', 'goregush@gmail.com', '08886843401', 'syahid_ns', '633944563418153', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xap1/v/t1.0-1/p50x50/10857810_627594064053203_2434679439480630975_n.jpg?oh=9abd586ebe9aaefe2c07c9dc77f718fa&oe=55292B49&__gda__=1428348031_2540878a568ea1846a573098511d6ab7', NULL, '2015-01-25 09:07:35'),
(5, 'Darus Firman', 'jl veteran III (tapos) gg kambangan 2 kp cigaok RT/RW 002/007 desa citapen kecamatan ciawi kabupaten bogor kode pos 16720', 'darusfirman_1985@yahoo.com', '081905580597', '@darusfirman', '398085310368396', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xap1/v/t1.0-1/p50x50/10906440_392442527599341_7844529448405053944_n.jpg?oh=b6dc47412a8d6804071f5dab798a431b&oe=5521A732&__gda__=1428863492_4ef8e28b9ec5fc335839ff125cc5887d', NULL, '2015-01-25 10:37:31'),
(6, 'Novalia Harti Diana', 'jl.garuda 5 dh 4 no 9 Depok, Indonesia 16517', 'novaliahd@yahoo.com', '081906233563', '@novaliahd', '1012515002097448', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xfp1/v/t1.0-1/c13.0.50.50/p50x50/1531538_896981066984176_7733335898950986645_n.jpg?oh=7007569abbb16c2ec5ea4842dc65046e&oe=556D5D11&__gda__=1431683637_c32a4de3a12b502c61887af9cd193c24', NULL, '2015-01-25 11:52:30'),
(7, 'Fahrul Pamungkas Rabbana', 'cilandak timur rt 008/01 no 59 jakarta selatan', 'fahrul_ghozali@yahoo.com', '081318844223', '@fahrulpamungkas', '10202724226061335', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xap1/v/t1.0-1/c11.0.50.50/p50x50/10478656_10201683129954583_6488820509369628824_n.jpg?oh=f8bf008fd1f8f7d81231cc389345c1ce&oe=5568EA34&__gda__=1433237367_bafe77b154629e582a01305ff655895e', NULL, '2015-01-25 12:18:19'),
(8, 'Novalia Harti Diana', 'jl.garuda 5 dh 4 no 9 Depok, Indonesia 16517', 'novaliahd@yahoo.com', '081906233563', '@Novaliahd', '', '', NULL, '2015-01-25 12:52:29'),
(9, 'Novalia Harti Diana', 'jl.garuda 5 dh 4 no 9 Depok, Indonesia 16517', 'novaliahd@yahoo.com', '081906233563', '@Novaliahd', '', '', NULL, '2015-01-25 13:22:33'),
(10, 'Nova Ryzal Wicaksono', 'jl.Trubus2 Rt004/04 No,25 Pondok Cabe Tangerang Selatan', 'nova.ryzalwicaksono@gmail.com', '08999443984', '@novaryzal', '806396942730612', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xpa1/v/t1.0-1/p50x50/1977003_792767124093594_6427620763644480569_n.jpg?oh=07536b7f18244911d1c4e767e4ef0de3&oe=552A3A65&__gda__=1432436406_aea80305ff2115a698c0503a1a01065e', NULL, '2015-01-25 13:31:16'),
(11, 'Syidik Sulis', 'Kp. Turi Rt 02/05 No. 57 Desa Sriamur, Kec. Tambun Utara, Kab. Bekasi', 'syidiksulis@gmail.com', '087883853170', '@syidik_sulis', '876771235678711', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xpa1/v/t1.0-1/p50x50/10940612_876546645701170_4261248192986568114_n.jpg?oh=02e0f2e3599cfdff67393c2374176796&oe=5527F459&__gda__=1432525125_30c26a4d8361aa828fa7c10d11b76944', NULL, '2015-01-26 03:10:58'),
(12, 'reza hayatul', 'Babakan gg rukun No. 33A Rt 005/01, Jagakarsa, Jakarta selatan', 'hayatulreza@yahoo.com', '085777978477', '@Edza_Official', '', '', NULL, '2015-01-26 08:27:59'),
(13, 'Muhammad Mukorrobin', 'Jl lodan raya no 27, rt004 rw002, kel ancol, kecamatan pademangan, jakarta utara', 'simonc676@gmail.com', '081319091504', '@robinsholic28', '1557421534504515', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xaf1/v/t1.0-1/c7.0.50.50/p50x50/1393723_1518946378352031_5317494266673641522_n.jpg?oh=2c418809c89d2163a10012964ac14858&oe=552936F9&__gda__=1432381866_c8e7e2a4447a21ec2e7b9a427c64e365', NULL, '2015-01-26 09:52:33'),
(14, 'Muhammad Munandar', 'Jl lodan raya no 27, rt004 rw002, kel ancol, kecamatan pademangan, jakarta utara', 'muhammadmunandar901@gmail.com', '081210396412', '@munandar1928', '980370118648230', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xfp1/v/t1.0-1/p50x50/1507102_967145816637327_4474674415425516538_n.jpg?oh=eeccadb807add76c41369758d9fe08eb&oe=552A3E2A&__gda__=1428215615_d36ccd4e08c55638d02fe4b6e0e5d4f3', NULL, '2015-01-26 12:14:19'),
(15, 'Abdullah Assajid', 'uo', 'pasundan.dizas@yahoo.com', '885587', '@uyfuiugggi', '883020668416210', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xfa1/v/t1.0-1/c50.50.621.621/s50x50/550877_491189447599336_306918125_n.jpg?oh=79d7d905e4178b77da12473d00064ee7&oe=5524D2FB&__gda__=1432318647_2ef9395aa10f62eba2c8a8ef0be3032c', NULL, '2015-01-26 12:27:26'),
(16, 'vvrt', 'erv', 'rvtre@gmail.com', '5474', '@reber', '', '', NULL, '2015-01-26 12:41:49'),
(17, 'Mohamad Nur Setiawan', 'Jl. Tipar Cakung Rt 003/08 Cakung Barat-Jakarta Timur 13910', 'mohammednoor915@gmail.com', '08385781456', 'gak punya', '876448745752861', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xpa1/v/t1.0-1/p50x50/10922434_865562363508166_1575438406201481170_n.jpg?oh=fe400aa6be4e7636af32402a5a390797&oe=556D5E81&__gda__=1431905693_505abc7fc94466ca47b56fdee6fffa8a', NULL, '2015-01-26 13:31:27'),
(18, 'Roni Nugraha', 'Gegulu RT.25/RW.12, Gulurejo, Lendah, Kulon Progo - Yogyakarta', 'moronvox@gmail.com', '085100226383', '@moronvox', '4786329753280', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xpa1/v/t1.0-1/p50x50/10933697_4780209320273_6093102247008830946_n.jpg?oh=8be2307c04782e6010069156bd28f778&oe=55236611&__gda__=1428705108_7cd238851304328946ccd5736f5940fe', NULL, '2015-01-26 15:49:20'),
(19, 'Ulul Abidin', 'rvt', 'indonesiar43@yahoo.co.id', '547', '@rtbr', '391508257685794', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-ash2/v/t1.0-1/c10.0.50.50/p50x50/375702_171695633000392_588224944_n.jpg?oh=2f9f5249c12f70d77b992bf635a86213&oe=55567D6A&__gda__=1428675219_2bf6962feba3872e48cf436b34bddbbe', NULL, '2015-01-26 16:11:03'),
(20, 'sule', 'dhd', 'rbr@gmail.com', '344634', '@tbytr', '1587891924780990', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xaf1/v/t1.0-1/c9.0.50.50/p50x50/10247296_1451107825126068_3201579673816199249_n.jpg?oh=efb98ee8d7039a618daa1b1723331f0f&oe=55258334&__gda__=1432955163_08e8bc7626e90f912f85d892da9a9ebd', NULL, '2015-01-26 16:21:20'),
(21, 'Syahida Nur Salim', 'Kasihan II, RT.25/ RW.08, Ngentakrejo, Lendah, Kulon Progo, Yogyakarta (55663)', 'goregush@gmail.com', '08886843401', 'Syahid_92', '943030819041084', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xpa1/v/t1.0-1/p50x50/10805639_900407819970051_7275148223358125668_n.jpg?oh=964c4af703cc9ff9360416fbf27df77a&oe=5563DC8A&__gda__=1431637142_945df868bfcfe9b5ed59873bff7fc956', NULL, '2015-01-26 16:43:16'),
(22, 'Suroso Sentosa', 'eryer', 'retbet@gmail.com', '55445', '@eby', '1380202812288861', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xpa1/v/t1.0-1/c15.0.50.50/p50x50/10801719_10150004552125137_5333852981190542657_n.jpg?oh=b438c26f9ecbcb1854010b32b80f8106&oe=555E63D3&__gda__=1432989558_589f46bb7f7f8ea0169d68fb82e1dc3c', NULL, '2015-01-26 17:08:27'),
(23, 'Suroso Latip', 'rheyyhty', 'surosolatip@gmail.com', '37447344', '@etr', '1379916052318111', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xfp1/v/t1.0-1/c15.0.50.50/p50x50/10354686_10150004552801856_220367501106153455_n.jpg?oh=d1b249dee67d136b8ffe3f1a8b006073&oe=555C1C2F&__gda__=1432407769_d1bdf1bd786151f62fbe372052d84a61', NULL, '2015-01-26 22:29:11'),
(24, 'Juki Hendra', 'Yogyakarta,Sindurejan WB3/152 RT 47 RW 10 Jogja', 'juki_hendra@yahoo.com', '089692252424', '@jukihendra2', '918225271535533', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xpa1/v/t1.0-1/c0.0.50.50/p50x50/1972343_752851694739559_768097121_n.jpg?oh=90623d2e3ffb3b9e691a6160ddd6cf62&oe=55585493&__gda__=1432105359_a83128997345ebb214eb5c87b3acaba4', NULL, '2015-01-27 03:31:26'),
(25, 'Siti Khodijah', 'jalan salo raya kembangan jakarta barat', 'dijeh12@gmail.com', '087776400067', '@diijeeh', '10203802402963322', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xfa1/v/t1.0-1/p50x50/10294385_10203672287030505_5035057118089423940_n.jpg?oh=24d8213832f6bf2d57e0ec6242cabf89&oe=555D150F&__gda__=1433330566_bc3f525a43568cded10eef495702a42d', NULL, '2015-01-27 08:23:40'),
(26, 'Loetphy Afandi', 'dusun pagerwojo rt/rw :04/03 desa pagerwojo kecamatan perak kabupaten jombang', 'fandyfansclub@gmail.com', '085733487333', '@loet_phy', '1041110462571004', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xap1/v/t1.0-1/p50x50/10885610_1015921548423229_7841963756651678175_n.jpg?oh=13d79c686c2b7b0c4789cdcd26d81fdb&oe=556696BD&__gda__=1433112956_dec6e70212064d52a596f2aa47437838', NULL, '2015-01-27 10:05:29'),
(27, 'Sutisna Lono', 'cilandak', 'gakada@gmail.com', '097789589900', '@gakada', '1380788925563827', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xfp1/v/t1.0-1/c15.0.50.50/p50x50/10354686_10150004552801856_220367501106153455_n.jpg?oh=d1b249dee67d136b8ffe3f1a8b006073&oe=555C1C2F&__gda__=1432407769_d1bdf1bd786151f62fbe372052d84a61', NULL, '2015-01-27 10:10:39'),
(28, 'Santi Cazor', 'ciamis', 'ssurno@yahoo.co.id', '84859800', '@ul', '1380787242230876', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xfa1/v/t1.0-1/c15.0.50.50/p50x50/1379841_10150004552801901_469209496895221757_n.jpg?oh=e7ef542c000c5eabeda4191250fd52f4&oe=55275933&__gda__=1432381980_cb4258f5472d2c6e8d2abf201cda2afa', NULL, '2015-01-27 10:55:41'),
(29, 'Santika Dewi', 'cileungsi', 'dewi6120@gmail.com', '90707066', '@dewi', '1382025858773582', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xfa1/v/t1.0-1/c15.0.50.50/p50x50/1379841_10150004552801901_469209496895221757_n.jpg?oh=e7ef542c000c5eabeda4191250fd52f4&oe=55275933&__gda__=1432381980_cb4258f5472d2c6e8d2abf201cda2afa', NULL, '2015-01-27 21:01:21'),
(30, 'Ranie', 'cikampek', 'cikampek@gmail.com', '08964646446', '@sop', '417738728391488', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-prn2/v/t1.0-1/c0.0.50.50/p50x50/563990_221204551378241_1940205734_n.jpg?oh=89586a916e616028370e506cfdc1af2d&oe=5554644E&__gda__=1432731893_3d6d06c5cb6c69ac68607e982e06d8b9', NULL, '2015-01-28 13:14:14'),
(31, 'Aris', 'Jl.kemanggisan pulo 1 Rt.015/008 No.35 palmerah jak-Bar 11480', 'yanto.kalem80@gmail.com', '087875027881', '@aris22511899', '', '', NULL, '2015-01-31 06:36:26'),
(32, 'Edza', 'Babakan gg rukun No. 33A Rt 005/01, Jagakarsa, Jakarta selatan', 'rezahayatul@gmail.com', '085777978477', '@Edza_Official', '803279009750751', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xap1/v/t1.0-1/p50x50/10868132_799819850096667_4221154147281394031_n.jpg?oh=9f3ae8500c45c5f6644da1041a143fa7&oe=554FCC92&__gda__=1432006564_8679b7bbf5061d67bf40edf1e7e9d8ee', NULL, '2015-02-02 03:30:12'),
(33, 'Ayu Rahayu C', 'jl cerry 2 no 9 sukatani permai', 'archyrahayu@yahoo.co.id', '085715925282', 'archyyy', '10203374643039020', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xfa1/v/t1.0-1/p50x50/269298_3226759840105_129833535_n.jpg?oh=b7dc1fe9b6d0f7cc52568d35b34c8fb5&oe=554B8E77&__gda__=1428263864_787d25dd8385c44c293c75dbd3cad0fc', NULL, '2015-02-02 06:21:30'),
(34, 'Sukur Lana', 'cikalong', 'cikalong@gmail.com', '089454646446', '@joko', '1379572005686382', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xfp1/v/t1.0-1/c15.0.50.50/p50x50/10354686_10150004552801856_220367501106153455_n.jpg?oh=d1b249dee67d136b8ffe3f1a8b006073&oe=555C1C2F&__gda__=1432407769_d1bdf1bd786151f62fbe372052d84a61', NULL, '2015-02-04 22:20:40'),
(35, 'Sukur Lana', 'cikalong', 'cikalong@gmail.com', '089454646446', '@joko', '1379572005686382', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xfp1/v/t1.0-1/c15.0.50.50/p50x50/10354686_10150004552801856_220367501106153455_n.jpg?oh=d1b249dee67d136b8ffe3f1a8b006073&oe=555C1C2F&__gda__=1432407769_d1bdf1bd786151f62fbe372052d84a61', NULL, '2015-02-04 22:26:33'),
(36, 'Sukur Lana', 'cikalong', 'cikalong@gmail.com', '089454646446', '@joko', '1379572005686382', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xfp1/v/t1.0-1/c15.0.50.50/p50x50/10354686_10150004552801856_220367501106153455_n.jpg?oh=d1b249dee67d136b8ffe3f1a8b006073&oe=555C1C2F&__gda__=1432407769_d1bdf1bd786151f62fbe372052d84a61', NULL, '2015-02-04 22:30:27'),
(37, 'Sukur Lana', 'cikalong', 'cikalong@gmail.com', '089454646446', '@joko', '1379572005686382', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xfp1/v/t1.0-1/c15.0.50.50/p50x50/10354686_10150004552801856_220367501106153455_n.jpg?oh=d1b249dee67d136b8ffe3f1a8b006073&oe=555C1C2F&__gda__=1432407769_d1bdf1bd786151f62fbe372052d84a61', NULL, '2015-02-04 22:36:32'),
(38, 'Sukur Lana', 'cikalong', 'cikalong@gmail.com', '089454646446', '@joko', '1379572005686382', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xfp1/v/t1.0-1/c15.0.50.50/p50x50/10354686_10150004552801856_220367501106153455_n.jpg?oh=d1b249dee67d136b8ffe3f1a8b006073&oe=555C1C2F&__gda__=1432407769_d1bdf1bd786151f62fbe372052d84a61', NULL, '2015-02-04 22:46:17'),
(39, 'Muhamad Shaleh', 'cikampek', 'cikampekms@gmail.com', '08964337463', '@dpsas', '1401307683504662', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xap1/v/t1.0-1/c0.0.50.50/p50x50/10896931_1377459372556160_5666073003513535544_n.jpg?oh=a5eb3035a96c9f91f8988f96ce41a1fc&oe=554DE0CA&__gda__=1431568891_e3f8d1b365557c7d291cbcb87e6f4fda', NULL, '2015-02-05 19:36:44'),
(40, 'Muhamad Shaleh', 'cikampek', 'cikampekms@gmail.com', '08964337463', '@dpsas', '1401307683504662', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xap1/v/t1.0-1/c0.0.50.50/p50x50/10896931_1377459372556160_5666073003513535544_n.jpg?oh=a5eb3035a96c9f91f8988f96ce41a1fc&oe=554DE0CA&__gda__=1431568891_e3f8d1b365557c7d291cbcb87e6f4fda', NULL, '2015-02-05 19:41:08'),
(41, 'Sri Darawi', 'cikalong', 'cikalon22g@gmail.com', '0894542242', '@kiloer', '1383554708621412', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xfa1/v/t1.0-1/c15.0.50.50/p50x50/1379841_10150004552801901_469209496895221757_n.jpg?oh=9736aade380d9f785e35bf18f5776470&oe=554EE633&__gda__=1432381980_c928195d67069eed18ffec8e07f9b513', NULL, '2015-02-05 20:15:19'),
(42, 'Sri Darawi Ningrum', 'cisadane', 'sri@yahoo.com', '0857857959', '@sri', '1383554708621412', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xfa1/v/t1.0-1/c15.0.50.50/p50x50/1379841_10150004552801901_469209496895221757_n.jpg?oh=9736aade380d9f785e35bf18f5776470&oe=554EE633&__gda__=1432381980_c928195d67069eed18ffec8e07f9b513', NULL, '2015-02-05 20:29:05'),
(43, 'Sri Darawi', 'cisadane', 'sri@yahoo.com', '0857857959', '@sri', '1383554708621412', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xfa1/v/t1.0-1/c15.0.50.50/p50x50/1379841_10150004552801901_469209496895221757_n.jpg?oh=9736aade380d9f785e35bf18f5776470&oe=554EE633&__gda__=1432381980_c928195d67069eed18ffec8e07f9b513', NULL, '2015-02-05 20:31:36'),
(44, 'Lulu Darrmza', 'demak', 'lulu232@yahoo.comm', '08974525245', '@lulu_45', '1382939568683239', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xfp1/v/t1.0-1/c15.0.50.50/p50x50/10354686_10150004552801856_220367501106153455_n.jpg?oh=d1b249dee67d136b8ffe3f1a8b006073&oe=555C1C2F&__gda__=1432407769_d1bdf1bd786151f62fbe372052d84a61', NULL, '2015-02-06 21:58:39'),
(45, 'Catim Setiawan', 'cibaduut', 'catim786099@yahoo.com', '09865587664', '@catim_468', '', '', NULL, '2015-02-06 22:08:28'),
(46, 'Catim Setiawan', 'cibaduyut', 'catim786099@yahoo.com', '089454646446', '@catim_468', '728013500653412', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xaf1/v/t1.0-1/p50x50/10421298_699179443536818_7497336559836872107_n.jpg?oh=bd740131f4d6d0ec2d36a626b1ad47da&oe=5550E1F4&__gda__=1432069699_1fb1309f8ce8481266ee76286adf0186', NULL, '2015-02-06 22:10:59'),
(47, 'lulu darma', 'pekalongan', 'darma224@gmail.com', '09868758785', '@darma__90', '', '', NULL, '2015-02-06 22:16:08'),
(48, 'lulu gaga', 'surabaya', 'gglluuu@yahoo.com', '089687596969', '@gaga11', '', '', NULL, '2015-02-06 22:20:12'),
(49, 'uybibt', 'ytbotb', 'tyrbl@gmail.com', '08754746974', '@ubyu', '', '', NULL, '2015-02-06 22:28:33');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_participant_images`
--

CREATE TABLE IF NOT EXISTS `tbl_participant_images` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `part_id` int(11) unsigned DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `file_name` text,
  `count` int(11) DEFAULT NULL,
  `status` enum('publish','unpublish','deleted') DEFAULT 'publish',
  `added` int(11) DEFAULT NULL,
  `modified` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `part_id` (`part_id`,`name`,`status`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `tbl_participant_images`
--

INSERT INTO `tbl_participant_images` (`id`, `part_id`, `name`, `title`, `file_name`, `count`, `status`, `added`, `modified`) VALUES
(1, 1, 'Abdullah Assajid', 'Kebayoran Lama-20150124-014672.jpg', '', 161, 'publish', 1422118377, 1423261386),
(2, 6, 'Novalia Harti Diana', 'IMG_20150125_183151.jpg', '', 0, 'publish', 1422187046, 0),
(3, 6, 'Novalia Harti Diana', 'IMG_20150125_100946.jpg', '', 0, 'publish', 1422188115, 0),
(4, 6, 'Novalia Harti Diana', 'IMG_20150125_102343.jpg', '', 0, 'publish', 1422188157, 0),
(5, 6, 'Novalia Harti Diana', 'IMG_20150125_102350.jpg', '', 0, 'publish', 1422188196, 0),
(6, 6, 'Novalia Harti Diana', 'IMG_20150125_102506.jpg', '', 0, 'publish', 1422188273, 0),
(7, 6, 'Novalia Harti Diana', 'IMG_20150125_102545.jpg', '', 0, 'publish', 1422188313, 0),
(8, 7, 'Fahrul Pamungkas Rabbana', '20150124_211726_LLS.jpg', '', 1, 'publish', 1422188348, 1422742085),
(9, 9, 'Novalia Harti Diana', 'IMG_20150125_183151.jpg', '', 1, 'publish', 1422192344, 1422323970),
(10, 10, 'Nova Ryzal Wicaksono', 'IMG_20150125_183151.jpg', '', 1, 'publish', 1422192734, 1422323980),
(11, 4, 'Syahida Nur Salim', 'proxy.jpg', '', 2, 'publish', 1422237225, 1422465022),
(12, 12, 'reza hayatul', 'usami.JPG', '', 2, 'publish', 1422261589, 1422858439),
(13, 12, 'reza hayatul', 'patric.JPG', '', 2, 'publish', 1422261895, 1422858431),
(14, 1, 'Abdullah Assajid', 'gamba v persija.jpg', '', 255, 'publish', 1422264788, 1423262555),
(15, 1, 'Abdullah Assajid', 'Kebayoran Lama-20150124-01471.jpg', '', 235, 'publish', 1422265231, 1423262643),
(16, 13, 'Muhammad Mukorrobin', 'Kebayoran Lama-20150124-01485.jpg', '', 104, 'publish', 1422266146, 1423262846),
(17, 13, 'Muhammad Mukorrobin', 'Kebayoran Lama-20150124-01473.jpg', '', 94, 'publish', 1422266370, 1423261336),
(18, 13, 'Muhammad Mukorrobin', 'Kebayoran Lama-20150124-01472.jpg', '', 165, 'publish', 1422266545, 1423262753),
(19, 13, 'Muhammad Mukorrobin', 'Kebayoran Lama-20150124-01470.jpg', '', 313, 'publish', 1422267341, 1423262263),
(20, 14, 'Muhammad Munandar', 'Angellina Anggraini.jpg', '', 138, 'publish', 1422274534, 1423262062),
(21, 14, 'Muhammad Munandar', 'nm.͡▹Tɐguh Triyanto                0888-1615-884.jpg', '', 248, 'publish', 1422274575, 1423261972),
(22, 18, 'Roni Nugraha', 'DSC09665c.jpg', '', 3, 'publish', 1422287437, 1423103633),
(23, 13, 'Muhammad Mukorrobin', 'obin.jpg', '', 209, 'publish', 1422288092, 1423261852),
(24, 13, 'Muhammad Mukorrobin', 'obin2.jpg', '', 160, 'publish', 1422288153, 1423261769),
(25, 13, 'Muhammad Mukorrobin', 'obin3.jpg', '', 216, 'publish', 1422288230, 1423261754),
(26, 24, 'Juki Hendra', '1972343_752851694739559_768097121_n.jpg', '', 2, 'publish', 1422329557, 1423193515),
(27, 25, 'Siti Khodijah', 'selfieteruss.jpg', '', 1, 'publish', 1422347130, 1422469336),
(28, 21, 'Syahida Nur Salim', 'DC1927.jpg', '', 1, 'publish', 1422468464, 1422469014),
(29, 32, 'Edza', '10906230_799829760095676_7039976314706591840_n.jpg', '', 3, 'publish', 1422848774, 1423103525),
(30, 33, 'Ayu Rahayu C', 'CAM00579.jpg', '', 1, 'publish', 1422858122, 1422858420);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_server_logs`
--

CREATE TABLE IF NOT EXISTS `tbl_server_logs` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `session_id` varchar(42) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `user_id` int(11) unsigned DEFAULT NULL,
  `status_code` varchar(160) DEFAULT NULL,
  `bytes_served` int(11) unsigned NOT NULL,
  `ip_address` varchar(45) DEFAULT '0',
  `http_code` int(11) unsigned NOT NULL,
  `referrer` varchar(255) DEFAULT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `status` int(1) unsigned NOT NULL,
  `added` int(11) unsigned NOT NULL,
  `modified` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `url` (`url`,`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `tbl_server_logs`
--

INSERT INTO `tbl_server_logs` (`id`, `session_id`, `url`, `user_id`, `status_code`, `bytes_served`, `ip_address`, `http_code`, `referrer`, `user_agent`, `status`, `added`, `modified`) VALUES
(1, '4d610bfe55750a9aefc2868352ae2464', 'http://localhost/dentsu.digital/', NULL, '200', 35, '::1', 200, 'http://localhost/dentsu.digital/', '	Mozilla/5.0 (Windows NT 6.1; WOW64; rv:35.0) Gecko/20100101 Firefox/35.0', 1, 1417065898, 1417065898),
(2, '8aab55187d9b7efd19b4da314a10570b', 'http://localhost/dentsu.digital/', NULL, '200', 35, '::1', 200, 'http://localhost/dentsu.digital/', '	Mozilla/5.0 (Windows NT 6.1; WOW64; rv:35.0) Gecko/20100101 Firefox/35.0', 1, 1417065898, 1417065898),
(3, '', 'http://localhost/dentsu.digital/', NULL, '200', 35, '::1', 200, 'http://localhost/dentsu.digital/', '	Mozilla/5.0 (Windows NT 6.1; WOW64; rv:35.0) Gecko/20100101 Firefox/35.0', 1, 1417065898, 1417065898),
(4, '', 'http://localhost/dentsu.digital/', NULL, '200', 35, '::1', 200, 'http://localhost/dentsu.digital/', '	Mozilla/5.0 (Windows NT 6.1; WOW64; rv:35.0) Gecko/20100101 Firefox/35.0', 1, 1417065898, 1417065898),
(5, '', 'http://localhost/dentsu.digital/', NULL, '200', 35, '::1', 200, 'http://localhost/dentsu.digital/', '	Mozilla/5.0 (Windows NT 6.1; WOW64; rv:35.0) Gecko/20100101 Firefox/35.0', 1, 1417065898, 1417065898);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_settings`
--

CREATE TABLE IF NOT EXISTS `tbl_settings` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `parameter` varchar(255) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `is_system` tinyint(1) DEFAULT '1',
  `status` tinyint(1) DEFAULT '1',
  `added` int(11) DEFAULT NULL,
  `modified` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`parameter`,`status`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=30 ;

--
-- Dumping data for table `tbl_settings`
--

INSERT INTO `tbl_settings` (`id`, `parameter`, `alias`, `value`, `is_system`, `status`, `added`, `modified`) VALUES
(1, 'email_marketing', 'Email Marketing', 'marketing@', 1, 1, 1334835773, NULL),
(2, 'email_administrator', 'Email Administrator', 'administrator@', 1, 1, 1334835773, 1336122482),
(3, 'email_hrd', 'Email HRD', 'hrd@', 1, 1, 1334835773, NULL),
(4, 'email_info', 'Email Info', 'info@d3.dentsu.co.id', 1, 1, 1334835773, NULL),
(5, 'email_template', 'Email Template', '&dash;', 1, 1, 1334835773, NULL),
(6, 'maintenance_template', 'Maintenance Mode Template', '<h2>The site is off for <span><h1>MAINTENANCE</h1></span></h2>', 1, 1, 1334835773, NULL),
(7, 'contactus_address', 'Contact Address', '22nd Floor, Mandiri Tower Plaza Bapindo <br/>\nJl. Jend. Sudirman Kav. 54-55 <br/>\nJakarta 12190, Indonesia', 1, 1, 1334835773, NULL),
(8, 'contactus_gmap', 'GMaps Location', 'http://maps.google.com/maps?q=-6.217668,106.812992&num=1&t=m&z=18', 1, 1, 1334835773, NULL),
(9, 'no_phone', 'Number Phone', '(021) 299-501-10 / (021) 526-0286', 1, 1, 1334835773, NULL),
(10, 'no_fax', 'Number Fax', '(021) 522.3718', 1, 1, 1334835773, NULL),
(11, 'title_default', 'Website Title Default', 'Connecting you to your consumer', 1, 1, NULL, NULL),
(12, 'title_name', 'Company Title Name', 'PT. Default (Web Agency in Jakarta)', 1, 1, NULL, 1336118568),
(13, 'language', 'Default Language', 'en', 1, 1, NULL, 1336118568),
(14, 'counter', 'Site Counter', '123', 1, 1, NULL, 1336118568),
(15, 'copyright', 'Copyright', '© 2012 COMPANY NAME COPYRIGHT. All Rights Reserved.', 1, 1, NULL, 1336118568),
(16, 'site_name', 'Site Name', ' Default <br/> PT. Default (Web Agency in Jakarta).', 1, 1, NULL, 1336118568),
(17, 'site_quote', 'Quote', 'We provide solution for your Websites', 1, 1, NULL, 1336118568),
(18, 'site_description', 'Website Description', 'We provide solution for your Company Website ', 1, 1, NULL, 1336118568),
(19, 'socmed_facebook', 'Facebook', 'http://facebook.com', 1, 1, NULL, 1336118568),
(20, 'socmed_twitter', 'Twitter', 'http://twitter.com', 1, 1, NULL, 1336118568),
(21, 'socmed_gplus', 'Google Plus', 'http://plus.google.com', 1, 1, NULL, 1336118568),
(22, 'socmed_linkedin', 'LinkedIn', 'http://linkedin.com', 1, 1, NULL, 1424754067),
(23, 'socmed_pinterest', 'Pinterest', 'http://pinterest.com', 1, 1, NULL, 1336118568),
(24, 'registered_mark', 'Registered', 'We provide solution for your Websites', 1, 1, NULL, 1336118568),
(25, 'google_analytics', 'Analytics', 'Code Snippet', 1, 1, NULL, 1336118568),
(26, 'ext_link', 'Ext Link', 'http://www.apb-career.net', 1, 1, NULL, 1423732944),
(29, 'site_logo', 'Site Logo', 'logo.png', 1, 1, NULL, 1336118568);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE IF NOT EXISTS `tbl_users` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `username` char(64) CHARACTER SET latin1 NOT NULL,
  `email` varchar(64) CHARACTER SET latin1 NOT NULL,
  `password` char(124) CHARACTER SET latin1 NOT NULL,
  `group_id` tinyint(1) unsigned NOT NULL,
  `last_login` int(11) NOT NULL,
  `logged_in` int(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `session_id` varchar(160) NOT NULL,
  `added` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=46 ;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `username`, `email`, `password`, `group_id`, `last_login`, `logged_in`, `status`, `session_id`, `added`, `modified`) VALUES
(1, 'admin', 'admin@admin.com', 'dd94709528bb1c83d08f3088d4043f4742891f4f', 1, 1426138569, 1, 1, '31eb72d99fa90a8e7c5dae4a5c218c14', 0, 0),
(2, 'joni', 'admin1@admin.com', '8b60e3e54b9f8fe6ec8a5c56c8ecb1595c948c92', 2, 1425630918, 0, 1, '', 0, 1424687676),
(3, 'qc9080', 'asdf@asdf.com', 'fb00378895cf135de3b135f385c0012f3823e4fb', 116, 1417001008, 0, 1, '', 1425031512, 1424689343),
(29, 'dyarfi', 'dyarfi20@gmail.com', '647dc5d75f6ce3c6a859eb3b91fa6ccaab05b245', 116, 0, 0, 1, '', 1417065898, 0),
(7, 'gmp1234', 'defrian.yarfi@gmail.com', '80066c4576c6c6a769599cd180379c8043a5e93d', 116, 1426138667, 0, 1, '715c625180227a4963139acd9351aeda', 1425031542, 0),
(42, 'dyarfi20@gmail.com', 'dyarfi20@gmail.com', '8f956a5c8346e1909dce9a2aea8839d6f05e8ce1', 100, 1425616890, 0, 1, '', 1425270772, 0),
(43, 'defrian.yarfi@gmail.com', 'defrian.yarfi@gmail.com', 'a49c1b8e9e2b8d49e78194b07fcaa045204647d3', 100, 0, 0, 1, '', 1425270783, 0),
(45, 'defrian.yarfi@gmail.com', 'defrian.yarfi@gmail.com', 'a49c1b8e9e2b8d49e78194b07fcaa045204647d3', 100, 0, 0, 1, '', 1425271011, 0),
(44, 'dyarfi20@gmail.com', 'dyarfi20@gmail.com', '8f956a5c8346e1909dce9a2aea8839d6f05e8ce1', 100, 0, 0, 1, '', 1425271008, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_groups`
--

CREATE TABLE IF NOT EXISTS `tbl_user_groups` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `backend_access` tinyint(1) DEFAULT NULL,
  `full_backend_access` tinyint(1) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `is_system` tinyint(1) NOT NULL DEFAULT '0',
  `added` int(11) unsigned NOT NULL,
  `modified` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_id` (`status`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=118 ;

--
-- Dumping data for table `tbl_user_groups`
--

INSERT INTO `tbl_user_groups` (`id`, `name`, `backend_access`, `full_backend_access`, `status`, `is_system`, `added`, `modified`) VALUES
(1, 'Super Administrator', 1, 1, 1, 1, 1416499923, 0),
(2, 'Administrator', 1, 1, 1, 1, 1416499923, 0),
(99, 'User', 0, 0, 1, 1, 1416499923, 0),
(111, 'Manager', 1, 1, 0, 0, 0, 1425371383),
(112, 'Executive', 0, 0, 1, 0, 0, 0),
(113, 'Director', 0, 0, 1, 0, 0, 0),
(114, 'General', 0, 0, 1, 0, 0, 1424689329),
(116, 'Publisher', 1, 0, 1, 0, 0, 0),
(100, 'Employee', 1, 0, 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_histories`
--

CREATE TABLE IF NOT EXISTS `tbl_user_histories` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `module` varchar(24) NOT NULL,
  `user_id` int(11) unsigned NOT NULL,
  `controller` varchar(160) NOT NULL,
  `action` char(20) DEFAULT NULL,
  `time` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`,`module`,`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tbl_user_histories`
--

INSERT INTO `tbl_user_histories` (`id`, `module`, `user_id`, `controller`, `action`, `time`) VALUES
(1, 'user', 1, 'history', 'index', 1416281220),
(2, 'user', 1, 'history', 'index', 1416281220);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_profiles`
--

CREATE TABLE IF NOT EXISTS `tbl_user_profiles` (
  `user_id` int(11) unsigned NOT NULL,
  `gender` tinyint(1) NOT NULL DEFAULT '1',
  `about` text,
  `first_name` varchar(64) DEFAULT NULL,
  `last_name` varchar(64) DEFAULT NULL,
  `division` varchar(64) DEFAULT NULL,
  `country` varchar(64) DEFAULT NULL,
  `state` varchar(64) DEFAULT NULL,
  `city` varchar(128) DEFAULT NULL,
  `address` text,
  `postal_code` varchar(8) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `phone` varchar(16) DEFAULT NULL,
  `mobile_phone` varchar(16) DEFAULT NULL,
  `fax` varchar(16) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `file_type` varchar(64) DEFAULT NULL,
  `file_name` varchar(48) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `added` int(11) unsigned NOT NULL,
  `modified` int(11) unsigned NOT NULL,
  KEY `user_id` (`user_id`,`phone`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_user_profiles`
--

INSERT INTO `tbl_user_profiles` (`user_id`, `gender`, `about`, `first_name`, `last_name`, `division`, `country`, `state`, `city`, `address`, `postal_code`, `birthday`, `phone`, `mobile_phone`, `fax`, `website`, `file_type`, `file_name`, `status`, `added`, `modified`) VALUES
(1, 1, 'Top Administrator of this website and portal', 'Administrator', 'Website', 'Web Programmer', 'DKI Jakarta', 'Jakarta', 'Jl. Gading Putih 1 F2 No. 4', '14240', '', '2010-09-06', '1234', '081807244697', '0', 'http://google.com', 'image/jpeg', 'users_default.png', 1, 1283760138, 1283831030),
(2, 1, 'Administrator of this Website', '', '', 'Web Designer', 'DKI Jakarta', 'Jakarta', 'Jl. Gading Putih 1 F2 No. 4', '14240', '', '2010-09-06', '1234', '081807244697', '0', '', 'image/jpeg', '78d57b4b5a0c6048b75bb0c9d91a8392.jpg', 1, 1283760138, 1424687676),
(3, 1, 'User of this Website', 'Administrator', 'Viewers', 'Jakarta', '', '', 'Jl. Pulomas Barat 1 No. 31', '', '', '2012-02-12', '1234', NULL, NULL, NULL, 'image/jpeg', 'a8a484572c007e1e17648ae2c7ad629c.jpg', 1, 1425031512, 1424689343),
(28, 1, 'Test', 'Public', 'Viewers', 'Web Programmer', NULL, NULL, NULL, NULL, NULL, '0000-00-00', '909090090', '909090090', NULL, NULL, NULL, NULL, 1, 1424854403, 1424689343),
(29, 1, 'Web Programmer not a full stack', 'Defrian', 'Yarfi', 'Web Programmer', NULL, NULL, NULL, NULL, NULL, '0000-00-00', '081807244697', '081807244697', NULL, NULL, NULL, NULL, 1, 1417065898, 0),
(44, 1, NULL, 'Dyarfi 20 Defrian Yarfi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '647474747', NULL, NULL, NULL, NULL, '20131013_142521a.jpg', 1, 1425271008, 0),
(45, 1, NULL, 'Defrian Yarfi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '647474747', NULL, NULL, NULL, NULL, '3b394-1513781_10205610488526266_3600135193534162', 1, 1425271011, 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
