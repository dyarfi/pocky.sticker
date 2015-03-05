-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 05, 2015 at 12:08 PM
-- Server version: 5.1.41
-- PHP Version: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=331 ;

--
-- Dumping data for table `tbl_captcha`
--

INSERT INTO `tbl_captcha` (`id`, `time`, `ip_address`, `word`) VALUES
(330, 1425456740, '::1', 'yyzhG'),
(329, 1425456727, '::1', 'FDKXp'),
(328, 1425456724, '::1', 'vOmVo');

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
('2e4f4615e445557575fedcc46f35c30d', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:35.0) Gecko/20100101 Firefox/35.0', 1425456718, 'a:6:{s:9:"user_data";s:0:"";s:8:"curr_url";s:11:"admin-panel";s:8:"prev_url";s:23:"admin-panel/user/view/1";s:11:"module_list";s:530:"{"Admin":{"dashboard{{slash}}/index":"Dashboard Panel","user{{slash}}/index":"Users","usergroup{{slash}}/index":"User Groups","language{{slash}}/index":"Languages","setting{{slash}}/index":"Settings","serverlog{{slash}}/index":"Server Logs"},"Module":{"modulelist{{slash}}/index":"Modules"},"Career":{"career{{slash}}/index":"Careers","division{{slash}}/index":"Divisions","applicant{{slash}}/index":"Applicants","employee{{slash}}/index":"Employees"},"Page":{"page{{slash}}/index":"Pages","pagemenu{{slash}}/index":"Page Menus"}}";s:20:"module_function_list";s:4215:"{"Admin":{"dashboard{{slash}}/index":"Dashboard Panel","user{{slash}}/index":"Users","usergroup{{slash}}/index":"User Groups","language{{slash}}/index":"Languages","setting{{slash}}/index":"Settings","serverlog{{slash}}/index":"Server Logs","dashboard{{slash}}/add":"Add New Dashboard","dashboard{{slash}}/view":"View Dashboard","dashboard{{slash}}/edit":"Edit Dashboard","dashboard{{slash}}/delete":"Delete Dashboard","dashboard{{slash}}/change":"Change Dashboard Status","user{{slash}}/add":"Add User","user{{slash}}/view":"View User","user{{slash}}/edit":"Edit User","user{{slash}}/delete":"Delete User","user{{slash}}/change":"Change User Status","usergroup{{slash}}/add":"Add User Group","usergroup{{slash}}/view":"View User Group","usergroup{{slash}}/edit":"Edit User Group","usergroup{{slash}}/delete":"Delete User Group","usergroup{{slash}}/change":"Change User Group Status","language{{slash}}/add":"Add Language","language{{slash}}/view":"View Language","language{{slash}}/edit":"Edit Language","language{{slash}}/delete":"Delete Language","language{{slash}}/change":"Change Language Status","setting{{slash}}/add":"Add Setting","setting{{slash}}/view":"View Setting","setting{{slash}}/edit":"Edit Setting","setting{{slash}}/delete":"Delete Setting","setting{{slash}}/change":"Change Setting Status","serverlog{{slash}}/view":"View Server Log","serverlog{{slash}}/edit":"Edit Server Log","serverlog{{slash}}/delete":"Delete Server Log","serverlog{{slash}}/trash":"Trash Server Log"},"Module":{"modulelist{{slash}}/edit":"Edit Module"},"Career":{"career{{slash}}/index":"Careers","division{{slash}}/index":"Divisions","applicant{{slash}}/index":"Applicants","employee{{slash}}/index":"Employees","career{{slash}}/index{{slash}}/add":"Add Career","career{{slash}}/index{{slash}}/view":"View Career","career{{slash}}/index{{slash}}/edit":"Edit Career","career{{slash}}/index{{slash}}/delete":"Delete Career","career{{slash}}/index{{slash}}/change":"Change Career Status","career{{slash}}/index{{slash}}/export":"Export Career","career{{slash}}/index{{slash}}/print":"Print Career","division{{slash}}/index{{slash}}/add":"Add Division","division{{slash}}/index{{slash}}/view":"View Division","division{{slash}}/index{{slash}}/edit":"Edit Division","division{{slash}}/index{{slash}}/delete":"Delete Division","division{{slash}}/index{{slash}}/change":"Change Division Status","division{{slash}}/index{{slash}}/export":"Export Division","division{{slash}}/index{{slash}}/print":"Print Division","applicant{{slash}}/index{{slash}}/add":"Add Applicant","applicant{{slash}}/index{{slash}}/view":"View Applicant","applicant{{slash}}/index{{slash}}/edit":"Edit Applicant","applicant{{slash}}/index{{slash}}/delete":"Delete Applicant","applicant{{slash}}/index{{slash}}/change":"Change Applicant","applicant{{slash}}/index{{slash}}/export":"Export Applicant","applicant{{slash}}/index{{slash}}/print":"Print Applicant","employee{{slash}}/index{{slash}}/add":"Add Employee","employee{{slash}}/index{{slash}}/view":"View Employee","employee{{slash}}/index{{slash}}/edit":"Edit Employee","employee{{slash}}/index{{slash}}/delete":"Delete Employee","employee{{slash}}/set":"Set to Employee","employee{{slash}}/index{{slash}}/change":"Change Employee","employee{{slash}}/index{{slash}}/export":"Export Employee","employee{{slash}}/index{{slash}}/print":"Print Employee"},"Page":{"page{{slash}}/index":"Pages","pagemenu{{slash}}/index":"Page Menus","page{{slash}}/index{{slash}}/add":"Add Page","page{{slash}}/index{{slash}}/view":"View Page","page{{slash}}/index{{slash}}/edit":"Edit Page","page{{slash}}/index{{slash}}/delete":"Delete Page","page{{slash}}/index{{slash}}/change":"Change Page Status","page{{slash}}/index{{slash}}/export":"Export Page","page{{slash}}/index{{slash}}/print":"Print Page","pagemenu{{slash}}/index{{slash}}/add":"Add Page Menu","pagemenu{{slash}}/index{{slash}}/view":"View Page Menu","pagemenu{{slash}}/index{{slash}}/edit":"Edit Page Menu","pagemenu{{slash}}/index{{slash}}/delete":"Delete Page Menu","pagemenu{{slash}}/index{{slash}}/change":"Change Page Menu Status","pagemenu{{slash}}/index{{slash}}/export":"Export Page Menu","pagemenu{{slash}}/index{{slash}}/print":"Print Page Menu"}}";s:12:"user_session";O:8:"stdClass":9:{s:2:"id";s:1:"1";s:8:"username";s:5:"admin";s:5:"email";s:15:"admin@admin.com";s:8:"password";s:8:"********";s:8:"group_id";s:1:"1";s:6:"status";s:1:"1";s:10:"last_login";s:10:"1425377399";s:9:"logged_in";b:1;s:4:"name";s:21:"Administrator Website";}}'),
('3659e2662c2c163853564dbcd90166c8', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:35.0) Gecko/20100101 Firefox/35.0', 1425439463, ''),
('e05aa6b30e32b771bd31b21171740c2e', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', 1425439387, 'a:3:{s:9:"user_data";s:0:"";s:8:"curr_url";s:30:"admin-panel/authenticate/login";s:8:"prev_url";b:0;}');

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
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `fb_id` bigint(20) NOT NULL,
  `fb_name` varchar(255) NOT NULL,
  `fb_email` varchar(255) NOT NULL,
  `fb_pic` varchar(255) NOT NULL,
  `added` int(11) NOT NULL,
  `modified` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_fb_temp`
--

INSERT INTO `tbl_fb_temp` (`id`, `user_id`, `fb_id`, `fb_name`, `fb_email`, `fb_pic`, `added`, `modified`) VALUES
(0, 0, 10205891041175646, 'Defrian Yarfi', 'deffsidefry@ymail.com', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xpa1/v/t1.0-1/c102.20.462.462/s50x50/1916319_1530429981164_1977049_n.jpg?oh=fff2752b168dcee48e6c83eb67b6aafc&oe=55260E6F&__gda__=1428396112_59b1b321d1c8ab0ab539b95e729bfd37', 1422035428, 1422035428),
(0, 0, 10205982235425437, 'Tyas Ariani Malubay', '', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xpf1/v/t1.0-1/p50x50/10641099_10205166201905109_1576539635769175406_n.jpg?oh=fb71dca4d9bac81cd88004cdf7025be4&oe=552358E9&__gda__=1432937999_c4f3d2ec70b68529f0e00d115b9f66f0', 1422063950, 1422063950),
(0, 0, 730208583764874, 'Mulyanto Alejandro', 'mulyanto.mpa@hotmail.com', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-prn2/v/t1.0-1/c0.0.50.50/p50x50/10641083_658239417628458_1122539900946295516_n.jpg?oh=5687d6aa6f7aa4cf10ec16718ba688db&oe=5524B1A2&__gda__=1431971111_d5b81c602a98361eaac52fcbf496d77d', 1422065543, 1422065543),
(0, 0, 10203661075834117, 'Fadli Al Arif', 'fadli.al.arif@gmail.com', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xfp1/v/t1.0-1/p50x50/1468549_10201196223094339_415024070_n.jpg?oh=53129cf3dedf0441ecbb2ec32e5cbc4c&oe=5559FE9E&__gda__=1428650165_b5aea5bd2a505168830e74b113b86700', 1422067341, 1422067341),
(0, 0, 10204248426024999, 'Dennie Atika Heiwa KusumaHaryanti', 'jidepichi@gmail.com', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-prn1/v/t1.0-1/p50x50/10360913_10204021670476252_7502223272170034939_n.jpg?oh=a9e3f2c411768733c9449cc216da6a74&oe=556930CA&__gda__=1431799604_04be7b71ce4915057a2ee77d8f1c192f', 1422068584, 1422068584),
(0, 0, 10152822537993600, 'Jessy Christina', 'j3ssy_christina@yahoo.com', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xfa1/v/t1.0-1/p50x50/1959776_10152614582078600_2119106990581565662_n.jpg?oh=460e1b3f4a33b1e362c2a1b600119ed3&oe=55209610&__gda__=1431790486_e9cc4ea159980bd767e80b63a90c5b60', 1422071905, 1422071905),
(0, 0, 565131000290364, 'Abdullah Assajid', 'dizasjmc24@ymail.com', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xfa1/v/t1.0-1/p50x50/1975112_562496580553806_2210115884134723189_n.jpg?oh=c1ba1657fe1226f19a54a07eaec2989f&oe=552ABF17&__gda__=1428211269_546d8ea145109aeb8f63ea138c4a9b56', 1422091444, 1422091444),
(0, 0, 10203709687846191, 'Mandala Wisnu', 'wsnukesumamandala@yahoo.com', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xpf1/v/t1.0-1/p50x50/1509074_10203444812824481_7099475292656601658_n.jpg?oh=10faf3cf79fd2833eae9d2340806a3b5&oe=555A4EC1&__gda__=1432817070_1f86ac7d36d08e91d4b0cb939caaf945', 1422098293, 1422098293),
(0, 0, 10203135822146729, 'Moffy', 'moffey@ymail.com', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xpa1/v/t1.0-1/c0.0.50.50/p50x50/1915501_1126809180733_5337545_n.jpg?oh=a2ad5ca0fa6f65f5eda1a9150633ae40&oe=5522D8AD&__gda__=1432154234_9e5d524556f4f83f13022a2397f3423d', 1422121699, 1422121699),
(0, 0, 10202724226061335, 'Fahrul Pamungkas Rabbana', 'fahrul_ghozali@yahoo.com', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xap1/v/t1.0-1/c11.0.50.50/p50x50/10478656_10201683129954583_6488820509369628824_n.jpg?oh=f8bf008fd1f8f7d81231cc389345c1ce&oe=5568EA34&__gda__=1433237367_bafe77b154629e582a01305ff655895e', 1422122487, 1422122487),
(0, 0, 995564460471799, 'Anwal Tasbiansyakh', 'jak_sunter34@yahoo.co.id', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xfp1/v/t1.0-1/c0.0.50.50/p50x50/10277753_831572666870980_5128532176410782642_n.jpg?oh=f9c156f12a2ab1a1b2c5e52361ac6983&oe=556DC8A3&__gda__=1431939975_fca8f7e5d0956463c2ebb85340e0a836', 1422167602, 1422167602),
(0, 0, 633944563418153, 'Syahid N Salim', 'sintamaya8@gmail.com', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xap1/v/t1.0-1/p50x50/10857810_627594064053203_2434679439480630975_n.jpg?oh=9abd586ebe9aaefe2c07c9dc77f718fa&oe=55292B49&__gda__=1428348031_2540878a568ea1846a573098511d6ab7', 1422176721, 1422176721),
(0, 0, 589279354536492, 'Rahayy Eureka', 'rdamanik80@yahoo.com', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xap1/v/t1.0-1/p50x50/10422492_584190968378664_2503452725802046308_n.jpg?oh=7bab9e9c94056da5ca04fcb1dd8e3793&oe=55567A6B&__gda__=1432046685_d83e6eefe26585eb2baf878cb12cb50b', 1422180537, 1422180537),
(0, 0, 398085310368396, 'Darus Firman', 'darusfirman_1985@yahoo.com', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xap1/v/t1.0-1/p50x50/10906440_392442527599341_7844529448405053944_n.jpg?oh=b6dc47412a8d6804071f5dab798a431b&oe=5521A732&__gda__=1428863492_4ef8e28b9ec5fc335839ff125cc5887d', 1422182206, 1422182206),
(0, 0, 10203788327811188, 'Yanti Nda Nevan', 'chubby_sweetdevil@yahoo.com', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xap1/v/t1.0-1/p50x50/10675710_10203060118126401_666046144309017807_n.jpg?oh=5fe54fd60dafcf8b83c4fb0509fc537c&oe=556398AC&__gda__=1433133933_e41bdc6e803c907f638a09512b865b36', 1422182232, 1422182232),
(0, 0, 1012515002097448, 'Novalia Harti Diana', 'novaliahd@yahoo.com', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xfp1/v/t1.0-1/c13.0.50.50/p50x50/1531538_896981066984176_7733335898950986645_n.jpg?oh=7007569abbb16c2ec5ea4842dc65046e&oe=556D5D11&__gda__=1431683637_c32a4de3a12b502c61887af9cd193c24', 1422186660, 1422186660),
(0, 0, 806396942730612, 'Nova Ryzal Wicaksono', 'nova.ryzalwicaksono@gmail.com', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xpa1/v/t1.0-1/p50x50/1977003_792767124093594_6427620763644480569_n.jpg?oh=07536b7f18244911d1c4e767e4ef0de3&oe=552A3A65&__gda__=1432436406_aea80305ff2115a698c0503a1a01065e', 1422192649, 1422192649),
(0, 0, 994075547287364, 'Eka Dharma Putra', '', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xpa1/v/t1.0-1/c8.0.50.50/p50x50/10553635_877373395624247_5498627289562426085_n.jpg?oh=3054d3427c8688a542da769625a3f3bf&oe=5566E88F&__gda__=1428569521_19402634a0975877ba9564a0af5ef294', 1422194110, 1422194110),
(0, 0, 797691720303502, 'Yogi HarTono', 'gnetic8@yahoo.com', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xpf1/v/t1.0-1/c0.0.50.50/p50x50/10404334_691734097565932_6981467632961846910_n.jpg?oh=dc104ccb6565b3411d7dada77639b309&oe=555BD53B&__gda__=1432607854_a6515e233a976a046cded19914837d60', 1422200472, 1422200472),
(0, 0, 876771235678711, 'Syidik Sulis', '', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xpa1/v/t1.0-1/p50x50/10940612_876546645701170_4261248192986568114_n.jpg?oh=02e0f2e3599cfdff67393c2374176796&oe=5527F459&__gda__=1432525125_30c26a4d8361aa828fa7c10d11b76944', 1422241750, 1422241750),
(0, 0, 10152996438543684, 'Hil Man', 'yoi_ik41@yahoo.com', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xaf1/v/t1.0-1/c0.0.50.50/p50x50/30070_400150268683_8374667_n.jpg?oh=fb9001d12fcc914d84c4f435e4138f0c&oe=552B1236&__gda__=1431796091_26900ae00c2598a25d38843340470ecc', 1422242558, 1422242558),
(0, 0, 10152697099932582, 'Eik Zulfikar Fahmi', 'eik_zulfikar@yahoo.com', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-prn2/v/t1.0-1/c12.12.155.155/s50x50/556819_10151161401967582_332906879_n.jpg?oh=04192bfa647c404cc802e76dfa6e2427&oe=5569BF03&__gda__=1428803350_a3469b6776451aa364c5a8eb86bb7842', 1422243907, 1422243907),
(0, 0, 10205475763994784, 'Putty Nissa', 'putty.nissa@yahoo.com', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xaf1/v/t1.0-1/p50x50/10372513_10205079192360741_2964101016729078109_n.jpg?oh=9b54b3d5e7e92f79dda83ea631345095&oe=556ED482&__gda__=1432732990_ddc84dd6e78adba97c7c9b5b69d52502', 1422243913, 1422243913),
(0, 0, 10204765921899227, 'Dwi Nanda Primiadhini', 'nanda_bolo2@yahoo.com', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xpa1/v/t1.0-1/p50x50/10898145_10204531107749020_134964537490102435_n.jpg?oh=f8b822646290e3474396a013cbb7d06f&oe=556F9396&__gda__=1431861673_d6248636ab9e08a9252e8c5c71919576', 1422246242, 1422246242),
(0, 0, 942517695759901, 'Bo Ma', 'tyoboma@yahoo.co.id', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xfp1/v/t1.0-1/c9.0.50.50/p50x50/10414386_820798467931825_5498069678880396313_n.jpg?oh=71feb2733da66385d055723aae2e5cb5&oe=552B1223&__gda__=1432343047_01cb409956844daffea07dc64c27327c', 1422246572, 1422246572),
(0, 0, 1557421534504515, 'Muhammad Mukorrobin', '', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xaf1/v/t1.0-1/c7.0.50.50/p50x50/1393723_1518946378352031_5317494266673641522_n.jpg?oh=2c418809c89d2163a10012964ac14858&oe=552936F9&__gda__=1432381866_c8e7e2a4447a21ec2e7b9a427c64e365', 1422251117, 1422251117),
(0, 0, 530496820425724, 'Denis Gooners Harianto', '', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xap1/v/t1.0-1/p50x50/10410259_488912337917506_2987830442210185785_n.jpg?oh=c9193786d842643c5f844828fdbc1cd1&oe=5525AF87&__gda__=1428282801_a27aefed26bf4a4c2f108b12d62942cf', 1422254208, 1422254208),
(0, 0, 1551690151760498, 'Vio Daniswan', 'viodaniswan@yahoo.com', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xpa1/v/t1.0-1/p50x50/1480535_1547359678860212_4917830487854148565_n.jpg?oh=fd968e8b6545b12f43776cd47286f4b1&oe=556D3DE7&__gda__=1433296635_a2f831e7e1806f5d713e3d521790fa59', 1422256388, 1422256388),
(0, 0, 794998880571903, 'Rizal Al-Rasyid', 'reezal_if@yahoo.com', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xfa1/v/t1.0-1/p50x50/10933994_791090797629378_2164486768900606611_n.jpg?oh=4461f61c7dd0078de8d06cd0d33fab9a&oe=5526E979&__gda__=1428408873_ba0d0419001112c1a21be54a74c875d3', 1422263752, 1422263752),
(0, 0, 10205908343452653, 'Maynita Eva', 'rainonthesummerdance@hotmail.com', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xap1/v/t1.0-1/p50x50/1604692_10205531748518015_6902541228008626475_n.jpg?oh=7d8941d75986947487e20eca556e0d39&oe=555F5393&__gda__=1428453714_9b20e07ec910d310317fae0c8c853b28', 1422266545, 1422266545),
(0, 0, 980370118648230, 'Muhammad Munandar', '', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xfp1/v/t1.0-1/p50x50/1507102_967145816637327_4474674415425516538_n.jpg?oh=eeccadb807add76c41369758d9fe08eb&oe=552A3E2A&__gda__=1428215615_d36ccd4e08c55638d02fe4b6e0e5d4f3', 1422274222, 1422274222),
(0, 0, 883020668416210, 'Abdullah Assajid', 'pasundan.dizas@yahoo.com', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xfa1/v/t1.0-1/c50.50.621.621/s50x50/550877_491189447599336_306918125_n.jpg?oh=79d7d905e4178b77da12473d00064ee7&oe=5524D2FB&__gda__=1432318647_2ef9395aa10f62eba2c8a8ef0be3032c', 1422275229, 1422275229),
(0, 0, 1587891924780990, 'Abdullah Assajid', 'abdullahassajid@gmail.com', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xaf1/v/t1.0-1/c9.0.50.50/p50x50/10247296_1451107825126068_3201579673816199249_n.jpg?oh=efb98ee8d7039a618daa1b1723331f0f&oe=55258334&__gda__=1432955163_08e8bc7626e90f912f85d892da9a9ebd', 1422275930, 1422275930),
(0, 0, 876448745752861, 'Mohammed Noor UgaLanus Setiawan', 'mohammednoor915@gmail.com', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xpa1/v/t1.0-1/p50x50/10922434_865562363508166_1575438406201481170_n.jpg?oh=fe400aa6be4e7636af32402a5a390797&oe=556D5E81&__gda__=1431905693_505abc7fc94466ca47b56fdee6fffa8a', 1422278981, 1422278981),
(0, 0, 4786329753280, 'Roni Nugraha', 'moronvox@gmail.com', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xpa1/v/t1.0-1/p50x50/10933697_4780209320273_6093102247008830946_n.jpg?oh=8be2307c04782e6010069156bd28f778&oe=55236611&__gda__=1428705108_7cd238851304328946ccd5736f5940fe', 1422287311, 1422287311),
(0, 0, 391508257685794, 'Ulul Abidin', 'indonesiar43@yahoo.co.id', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-ash2/v/t1.0-1/c10.0.50.50/p50x50/375702_171695633000392_588224944_n.jpg?oh=2f9f5249c12f70d77b992bf635a86213&oe=55567D6A&__gda__=1428675219_2bf6962feba3872e48cf436b34bddbbe', 1422288634, 1422288634),
(0, 0, 943030819041084, 'Syahida Nursalim', 'syahidanursalim@gmail.com', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xpa1/v/t1.0-1/p50x50/10805639_900407819970051_7275148223358125668_n.jpg?oh=964c4af703cc9ff9360416fbf27df77a&oe=5563DC8A&__gda__=1431637142_945df868bfcfe9b5ed59873bff7fc956', 1422290526, 1422290526),
(0, 0, 1380202812288861, 'Suroso Sentosa', '', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xpa1/v/t1.0-1/c15.0.50.50/p50x50/10801719_10150004552125137_5333852981190542657_n.jpg?oh=b438c26f9ecbcb1854010b32b80f8106&oe=555E63D3&__gda__=1432989558_589f46bb7f7f8ea0169d68fb82e1dc3c', 1422292100, 1422292100),
(0, 0, 1379916052318111, 'Suroso Latip', 'surosolatip@gmail.com', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xfp1/v/t1.0-1/c15.0.50.50/p50x50/10354686_10150004552801856_220367501106153455_n.jpg?oh=d1b249dee67d136b8ffe3f1a8b006073&oe=555C1C2F&__gda__=1432407769_d1bdf1bd786151f62fbe372052d84a61', 1422311341, 1422311341),
(0, 0, 10203639428448661, 'Reza Maha Putra', 'reza_rocha@yahoo.co.id', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xpf1/v/t1.0-1/c0.4.50.50/p50x50/1904039_10201677730607441_46153326_n.jpg?oh=343ce5da5525dc2c6f2e3cc5755fe7f5&oe=5562AAF7&__gda__=1428337816_794aa9f867456d01076d23e921100c6e', 1422314810, 1422314810),
(0, 0, 10205894910160705, 'Ary Wicaksono', 'jak_cabecity@yahoo.com', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xpf1/v/t1.0-1/c0.13.50.50/p50x50/1924887_10203322730577823_594056842_n.jpg?oh=b2cb84b0ecf5cbf012ced430993c7859&oe=555A94B7&__gda__=1428299995_502aa37ef2363727dd7984d0982ce86b', 1422324272, 1422324272),
(0, 0, 918225271535533, 'Juki Hendra', 'withfrendom@yahoo.com', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xpa1/v/t1.0-1/c0.0.50.50/p50x50/1972343_752851694739559_768097121_n.jpg?oh=90623d2e3ffb3b9e691a6160ddd6cf62&oe=55585493&__gda__=1432105359_a83128997345ebb214eb5c87b3acaba4', 1422329430, 1422329430),
(0, 0, 10152752238678740, 'Ria Widiati', 'ria.widiati@yahoo.com', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xap1/v/t1.0-1/c1.0.50.50/p50x50/10339634_10152232974178740_4424245836480932774_n.jpg?oh=c5386ce00b033282718c6bcd76f8bf4d&oe=5564F57F&__gda__=1431592051_197c7aa147b621e65c4af9ef66c3ec0e', 1422336969, 1422336969),
(0, 0, 1558009707775817, 'Sukarni Smkmduta', 'sukarni.skom@gmail.com', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xpf1/v/t1.0-1/c8.0.50.50/p50x50/10464412_1518723831704405_412736302414766185_n.jpg?oh=54c607d9616e863acb9ed1c14a0170d3&oe=555AFFC5&__gda__=1428735120_f766ca14cb366bad3b9eadc17b8e82bc', 1422345868, 1422345868),
(0, 0, 10205045928843759, 'Anse Duka', 'anse_maniz@yahoo.co.id', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xpa1/v/t1.0-1/p50x50/10940633_10205038692382852_4766537390127319775_n.jpg?oh=2e300e325fdcb4e87c61bc15f1598a36&oe=5567E4DE&__gda__=1432909411_91e68808fe090094bda115887ec1b8d2', 1422346050, 1422346050),
(0, 0, 10203802402963322, 'Diije Khadijah Alislami', 'dije@photographer.net', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xfa1/v/t1.0-1/p50x50/10294385_10203672287030505_5035057118089423940_n.jpg?oh=24d8213832f6bf2d57e0ec6242cabf89&oe=555D150F&__gda__=1433330566_bc3f525a43568cded10eef495702a42d', 1422346949, 1422346949),
(0, 0, 1380788925563827, 'Sutisna Lono', '', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xfp1/v/t1.0-1/c15.0.50.50/p50x50/10354686_10150004552801856_220367501106153455_n.jpg?oh=d1b249dee67d136b8ffe3f1a8b006073&oe=555C1C2F&__gda__=1432407769_d1bdf1bd786151f62fbe372052d84a61', 1422353013, 1422353013),
(0, 0, 1041110462571004, 'Loetphy Afandi', 'fandyfansclub@gmail.com', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xap1/v/t1.0-1/p50x50/10885610_1015921548423229_7841963756651678175_n.jpg?oh=13d79c686c2b7b0c4789cdcd26d81fdb&oe=556696BD&__gda__=1433112956_dec6e70212064d52a596f2aa47437838', 1422353013, 1422353013),
(0, 0, 10203974528589154, 'Dwison Sinukaban', 'sinukabandwison@yahoo.com', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xfp1/v/t1.0-1/c0.9.50.50/p50x50/262110_1792061086903_1393458_n.jpg?oh=c6adde3a51b1242d311a6a15039c9c6b&oe=5552451E&__gda__=1432046364_2bf0b1e693da62569807f9487c9dd91a', 1422354790, 1422354790),
(0, 0, 10152895578022891, 'Ojiph Aliph', 'sweetskinnylady@hotmail.com', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xap1/v/t1.0-1/c81.36.446.446/s50x50/1173880_10151779125647891_1331264094_n.jpg?oh=3cda85fb79c5e6c18c9e7d68514233ac&oe=556894B6&__gda__=1428252606_5541a5753171a02bf602018a29f618e0', 1422355143, 1422355143),
(0, 0, 1380787242230876, 'Santi Cazor', 'ssurno@yahoo.co.id', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xfa1/v/t1.0-1/c15.0.50.50/p50x50/1379841_10150004552801901_469209496895221757_n.jpg?oh=e7ef542c000c5eabeda4191250fd52f4&oe=55275933&__gda__=1432381980_cb4258f5472d2c6e8d2abf201cda2afa', 1422356092, 1422356092),
(0, 0, 812733575464646, 'Datuk Juju', 'datukjuju@gmail.com', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xpa1/v/t1.0-1/c13.0.50.50/p50x50/10687028_776048692466468_2738646019620464460_n.jpg?oh=bcb89d8a4a8f0f08f265943f2fb91961&oe=5523517E&__gda__=1433048471_72fe45090a95c41b79c1e598641ab972', 1422364066, 1422364066),
(0, 0, 1579268218981536, 'Merywati Soesilo', 'merywatis@yahoo.com', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xfa1/v/t1.0-1/c15.0.50.50/p50x50/1379841_10150004552801901_469209496895221757_n.jpg?oh=e7ef542c000c5eabeda4191250fd52f4&oe=55275933&__gda__=1432381980_cb4258f5472d2c6e8d2abf201cda2afa', 1422368116, 1422368116),
(0, 0, 10204912941915880, 'Sanjaya Wijaya', 'blackvoda@gmail.com', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xap1/v/t1.0-1/p50x50/10423645_10204282252389036_7098616456657200970_n.jpg?oh=829a4c10b75ae404956f6305f18d2ebf&oe=556B9734&__gda__=1428680241_5f905ece6cee094a8a1e98b171993c22', 1422376151, 1422376151),
(0, 0, 1382025858773582, 'Santika Dewi', '', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xfa1/v/t1.0-1/c15.0.50.50/p50x50/1379841_10150004552801901_469209496895221757_n.jpg?oh=e7ef542c000c5eabeda4191250fd52f4&oe=55275933&__gda__=1432381980_cb4258f5472d2c6e8d2abf201cda2afa', 1422392455, 1422392455),
(0, 0, 1547909522115977, 'Nurain Maisya', 'nurha_rhain@yahoo.co.id', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xfa1/v/t1.0-1/p50x50/10403355_1542885155951747_5880283993101762537_n.jpg?oh=852a5b9ba7f5463ca6acf450595ce552&oe=5566DCED&__gda__=1432972139_becb77fc484330259a820105786d0627', 1422410407, 1422410407),
(0, 0, 10206059399827880, 'Ihsan Aguswinata', 'ihsanas_sajjad@yahoo.com', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xap1/v/t1.0-1/p50x50/10557263_10204569860510328_5816649948399319356_n.jpg?oh=188d6c483c8235fa4cba75ec40447cd3&oe=556180D3&__gda__=1431951318_03f1b315db576380b2b73d9b2d4ee89f', 1422420814, 1422420814),
(0, 0, 847125695310782, 'Kiki Wahyudin', 'bilal_kiki@yahoo.co.id', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-prn1/v/t1.0-1/p50x50/10915314_842347772455241_3797779463715576233_n.jpg?oh=db6572e807949a5b3485d0b50214d12c&oe=5566D09C&__gda__=1432858945_9aa9ae93a9918970d40ac4dd056effad', 1422434580, 1422434580),
(0, 0, 10205686763036660, 'Andy Prabowo', 'zxcbowiezxc@yahoo.com', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xaf1/v/t1.0-1/c22.22.272.272/s50x50/200509_10200233557349926_1966162245_n.jpg?oh=8b0b507d8fa2798673eda92f59230291&oe=556803E2&__gda__=1432319010_c41a70f3601ce5366a408db9e4094bc0', 1422435483, 1422435483),
(0, 0, 336474499874578, 'Alfaraby Deri', 'andrian_alviana@ymail.com', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xfa1/v/t1.0-1/p50x50/1625680_333029046885790_107813109295016665_n.jpg?oh=5c4032c9c969bdaafbad5e901469380c&oe=5559C071&__gda__=1433033692_2126a9539aa1db764cbcc0e49cb366da', 1422435970, 1422435970),
(0, 0, 417738728391488, 'Ranie', '', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-prn2/v/t1.0-1/c0.0.50.50/p50x50/563990_221204551378241_1940205734_n.jpg?oh=89586a916e616028370e506cfdc1af2d&oe=5554644E&__gda__=1432731893_3d6d06c5cb6c69ac68607e982e06d8b9', 1422450727, 1422450727),
(0, 0, 767369646685810, 'Ray Eksamaru', 'exkosabaku@gmail.com', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xpf1/v/t1.0-1/p50x50/10881692_751882621567846_6777130126317509940_n.jpg?oh=f016d1bf7ddbf6ec8413327a8ee8b459&oe=55559E2D&__gda__=1431534470_71dd6165b233d509ea9759af2ebbaf68', 1422451316, 1422451316),
(0, 0, 937311122946692, 'Dedi Purnomo', 'deddypiero@gmail.com', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xfa1/v/t1.0-1/c13.0.50.50/p50x50/313341_582499495094525_1647846068_n.jpg?oh=25cfc4f74b2977ad696723021a102a24&oe=556A7A06&__gda__=1432193152_9f8cacb1682c5c071c3b33874fc88b12', 1422468078, 1422468078),
(0, 0, 645582625588298, 'Mega Rahmawati', 'megarahma13@gmail.com', 'https://scontent-b.xx.fbcdn.net/hprofile-prn2/v/l/t1.0-1/c31.31.384.384/s50x50/602377_167857756694123_722684622_n.jpg?oh=6de91e60e2a703429d9407066d57fc5e&oe=55638D47', 1422469358, 1422469358),
(0, 0, 1526856040926706, 'Nairfed Ifray', 'dyarfi20@gmail.com', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xaf1/v/t1.0-1/p50x50/10258601_1527531144192529_2406647537038847347_n.jpg?oh=be6b81dde80dbdcca6bec128bff68147&oe=555530D4&__gda__=1431872857_f064833485b4edfed110f4d7fa070349', 1422509532, 1422509532),
(0, 0, 10203439099838540, 'Ferico Elmanus', 'fericoelmanus@yahoo.com', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xfa1/v/t1.0-1/p50x50/10383547_10202567411726882_7589077520275231730_n.jpg?oh=446a63ec876689149ac9d383d84cbad3&oe=5569705D&__gda__=1431575252_e76d68227536311e3d47e8145333a974', 1422529432, 1422529432),
(0, 0, 1592900487591776, 'Vicky Didonk', 'fiqih_aulia@yahoo.co.id', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xfp1/v/t1.0-1/p50x50/10302691_1592230104325481_6225000171554447308_n.jpg?oh=90da95ec07061471a99f0f51dad08747&oe=556199BF&__gda__=1428367909_ecd8a4ec0eef5e4fa418a3b29092c3d9', 1422538927, 1422538927),
(0, 0, 10203289110856480, 'Monang Sianipar', 'secret_enigm4@yahoo.com', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xaf1/v/t1.0-1/c8.0.50.50/p50x50/1780789_10201354661576457_853989984_n.jpg?oh=eb5f6e34c1f25d9c65287113677a3c4e&oe=55657638&__gda__=1431633796_abdc10e580747dc0f126f233cc11b9bb', 1422605330, 1422605330),
(0, 0, 325878040955994, 'M Sabar', '', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xpa1/v/t1.0-1/p50x50/10420405_291941621016303_3831959419133983051_n.jpg?oh=aaea3c83d21111895e49ae815653be57&oe=55681DC0&__gda__=1428253404_52a5e0ffe77cbd8aa17f7394f9af09cf', 1422657683, 1422657683),
(0, 0, 1539823286292955, 'Dewi Wi', 'gold92perak@gmail.com', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xpa1/v/t1.0-1/p50x50/10952346_1537130143228936_957001762142645124_n.jpg?oh=2094d32a2f74cf99af385fd117191d9c&oe=55241D52&__gda__=1433070414_57e7aafcba04f17c297975d576e65eb1', 1422712398, 1422712398),
(0, 0, 728013500653412, 'Catim Setiawan', '', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xaf1/v/t1.0-1/p50x50/10421298_699179443536818_7497336559836872107_n.jpg?oh=bd740131f4d6d0ec2d36a626b1ad47da&oe=5550E1F4&__gda__=1432069699_1fb1309f8ce8481266ee76286adf0186', 1422716616, 1422716616),
(0, 0, 1401307683504662, 'Muhamad Shaleh', '', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xap1/v/t1.0-1/c0.0.50.50/p50x50/10896931_1377459372556160_5666073003513535544_n.jpg?oh=a5eb3035a96c9f91f8988f96ce41a1fc&oe=554DE0CA&__gda__=1431568891_e3f8d1b365557c7d291cbcb87e6f4fda', 1422717931, 1422717931),
(0, 0, 714488175316987, 'Kurnaedi', '', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xaf1/v/t1.0-1/c52.16.196.196/s50x50/429124_222572061175270_2053758827_n.jpg?oh=815b297c8d562920d9e51f10ccd9dda3&oe=556E7BA5&__gda__=1431369022_a2d9cc5b41e6073ac29d60fa0ecd30b3', 1422742767, 1422742767),
(0, 0, 1379056799071602, 'Sulastri Santi', '', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xfa1/v/t1.0-1/c15.0.50.50/p50x50/1379841_10150004552801901_469209496895221757_n.jpg?oh=9736aade380d9f785e35bf18f5776470&oe=554EE633&__gda__=1432381980_c928195d67069eed18ffec8e07f9b513', 1422828654, 1422828654),
(0, 0, 803279009750751, 'Edza', 'rezahayatul@gmail.com', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xap1/v/t1.0-1/p50x50/10868132_799819850096667_4221154147281394031_n.jpg?oh=9f3ae8500c45c5f6644da1041a143fa7&oe=554FCC92&__gda__=1432006564_8679b7bbf5061d67bf40edf1e7e9d8ee', 1422847630, 1422847630),
(0, 0, 950886641603078, 'Gaston Briga', 'sambims@ymail.com', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xfa1/v/t1.0-1/c0.13.50.50/p50x50/1800241_749364001755344_249854598_n.jpg?oh=df9723929aeae38e702c6aadf687dbd8&oe=55543407&__gda__=1431403649_6b8b8761caee4dbfce810ca8418a005b', 1422850302, 1422850302),
(0, 0, 10203374643039020, 'Ayu Rahayu C', 'archyrahayu@yahoo.co.id', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xfa1/v/t1.0-1/p50x50/269298_3226759840105_129833535_n.jpg?oh=b7dc1fe9b6d0f7cc52568d35b34c8fb5&oe=554B8E77&__gda__=1428263864_787d25dd8385c44c293c75dbd3cad0fc', 1422857163, 1422857163),
(0, 0, 780091658740387, 'Yogi Ferdiana', '', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xpa1/v/t1.0-1/p50x50/10410718_754044458011774_4171559921217434762_n.jpg?oh=3c5b3d62a2a1a24619746fd1e85d65d6&oe=555D1944&__gda__=1433102424_d099d897032b176d4403f1fb5fc307ec', 1422858157, 1422858157),
(0, 0, 1379572005686382, 'Sukur Lana', '', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xfp1/v/t1.0-1/c15.0.50.50/p50x50/10354686_10150004552801856_220367501106153455_n.jpg?oh=d1b249dee67d136b8ffe3f1a8b006073&oe=555C1C2F&__gda__=1432407769_d1bdf1bd786151f62fbe372052d84a61', 1422861239, 1422861239),
(0, 0, 816991158372333, 'AmaNda Cheerz Cheerz', 'chersalma@ymail.com', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xap1/v/t1.0-1/p50x50/10891722_791254367612679_8728499021100833637_n.jpg?oh=a5bf1224e3a428029a365ef14d93aa21&oe=55208C51&__gda__=1431048039_95187610829981eccd816fb9401f050a', 1422938961, 1422938961),
(0, 0, 314492255427355, 'Ratih Svt', 'ratihsv@yahoo.com', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xfp1/v/t1.0-1/c65.14.177.177/s50x50/969210_106040959605820_1133458108_n.jpg?oh=c5c661201595e77e801421260477a209&oe=556993C6&__gda__=1433323857_a648f14cd21eccf608998fcff03ca208', 1422943104, 1422943104),
(0, 0, 10204469523276548, 'Angga Bhaskara', 'abhasbo19@gmail.com', 'https://scontent-b.xx.fbcdn.net/hprofile-xpf1/v/l/t1.0-1/p50x50/10410695_10203889105206459_6882601232687492531_n.jpg?oh=b7e2b2bba3439443b41ef54ccfa106a5&oe=556D172B', 1422944412, 1422944412),
(0, 0, 10203680263079270, 'Lazuandi Anwar', 'lazuandi.anwar@yahoo.com', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xfp1/v/t1.0-1/p50x50/10390141_10203356377142324_638238394877435837_n.jpg?oh=83f68983f0bd659ef490aa177212e4d1&oe=555EBDCC&__gda__=1431127894_b1e6e4156c6c305a63c174749d01197a', 1422946990, 1422946990),
(0, 0, 10204428903856821, 'Yuliansyah', 'ibu.yuliansyah@yahoo.co.id', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xfp1/v/t1.0-1/c1.0.50.50/p50x50/10402778_10203861779879076_400062549860757469_n.jpg?oh=ce8fa56bd7a4e23c3472215f630cd6b0&oe=554E0DDA&__gda__=1433131507_472cf182c32f0043753d88cac950116f', 1422960695, 1422960695),
(0, 0, 926324557401887, 'Rezza Ex', 'mysilverqween@gmail.com', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xfp1/v/t1.0-1/c15.0.50.50/p50x50/10354686_10150004552801856_220367501106153455_n.jpg?oh=d1b249dee67d136b8ffe3f1a8b006073&oe=555C1C2F&__gda__=1432407769_d1bdf1bd786151f62fbe372052d84a61', 1422962982, 1422962982),
(0, 0, 676784412430800, 'Yuko Yamada', 'yuko.kanai.0721@gmail.com', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xpa1/v/t1.0-1/p50x50/10387462_594768370632405_5680942915457256500_n.jpg?oh=cb82b3e108dba560af1189a3f9480aa3&oe=55524F87&__gda__=1431890587_75c30dd0ec7b61cb19a8f185407415fa', 1423049479, 1423049479),
(0, 0, 900141210017254, 'Aris Sugiono', 'asugiono95@yahoo.co.id', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-prn2/v/t1.0-1/p50x50/10387530_883680358330006_629715409007872518_n.jpg?oh=184377576dd893076360b026df5a62c3&oe=55543A73&__gda__=1432497942_e5755ed19bda9b6cde193b16cdae4967', 1423054198, 1423054198),
(0, 0, 978272248867782, 'Irma Yuanita', 'irmayuanita227@yahoo.co.id', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xap1/v/t1.0-1/p50x50/10154897_965356123492728_5628051708998150384_n.jpg?oh=8af27bd0b91140f0b87b9dc4fd0f4409&oe=554D2C06&__gda__=1431736880_83d98284060ac5463c65b8700d2f41af', 1423055758, 1423055758),
(0, 0, 10204057899067147, 'Aries Setiawan', 'ariesset2204@yahoo.com', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xap1/v/t1.0-1/p50x50/10676136_10203378405200225_4723391518086062411_n.jpg?oh=0848d78bc3d44f1da4c62977f11fad02&oe=555FF99E&__gda__=1432575131_7d570c951c75147b9abd5290afa6bb52', 1423056025, 1423056025),
(0, 0, 577292085741739, 'Aisha Jannatu Sauqiya', '', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xpa1/v/t1.0-1/c0.3.50.50/p50x50/1512280_394437327360550_1213942063_n.jpg?oh=95a164a16897cec11a4d03318376c171&oe=554BD135&__gda__=1433129226_9469b90da40f67814ef804de4e505f3a', 1423103800, 1423103800),
(0, 0, 375683285947260, 'Syarifati Akmalia', 'syarifatiakmalia@gmail.com', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xpf1/v/t1.0-1/p50x50/10885250_362465970602325_123511479269509547_n.jpg?oh=1ce0de26bddac10c84884a3e5384ea4e&oe=554A20A0&__gda__=1431619292_cf01280a034f39b060774fc16e75acff', 1423103834, 1423103834),
(0, 0, 588376214631809, 'Roni Nugraha', 'al9hifari@gmail.com', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xpa1/v/t1.0-1/p50x50/10906262_578388205630610_877814444693433672_n.jpg?oh=066317ced4c7b570c7c9496f0360a8a8&oe=554DFB2C&__gda__=1430963455_9fd45a967e86fe06021635141ba06c51', 1423103910, 1423103910),
(0, 0, 783304671747255, 'Slamet Aryadi', 'hotgila24@yahoo.com', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xpf1/v/t1.0-1/p50x50/10509522_781588048585584_4723914034832046603_n.jpg?oh=e54cdceb40d7e590464e909099fb7499&oe=554AA51F&__gda__=1431706804_f558b115f513eed1b5cb3320c5629c26', 1423121769, 1423121769),
(0, 0, 1546195342305493, 'Ryan Firmansyah', 'ryanfirmansyah22@gmail.com', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xap1/v/t1.0-1/p50x50/10846411_1522732797985081_4357327580281188330_n.jpg?oh=003abbb15f79db14e45b0006b478ea90&oe=555055E1&__gda__=1430923296_bddd6b5d138d07175a0f1e3c114916bc', 1423159020, 1423159020),
(0, 0, 1383554708621412, 'Sri Darawi', '', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xfa1/v/t1.0-1/c15.0.50.50/p50x50/1379841_10150004552801901_469209496895221757_n.jpg?oh=9736aade380d9f785e35bf18f5776470&oe=554EE633&__gda__=1432381980_c928195d67069eed18ffec8e07f9b513', 1423166586, 1423166586),
(0, 0, 1382939568683239, 'Lulu Darrmza', '', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xfp1/v/t1.0-1/c15.0.50.50/p50x50/10354686_10150004552801856_220367501106153455_n.jpg?oh=d1b249dee67d136b8ffe3f1a8b006073&oe=555C1C2F&__gda__=1432407769_d1bdf1bd786151f62fbe372052d84a61', 1423170170, 1423170170),
(0, 0, 1391144224528468, 'Dan Dan', 'danerdaner119@gmail.com', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xpf1/v/t1.0-1/p50x50/10420378_1378759979100226_1401028565988050142_n.jpg?oh=afc6d8e435c2a6b77439414c280747f5&oe=556451AE&__gda__=1431019969_2071a259acb87d842cb4068ee1b0694e', 1423187219, 1423187219),
(0, 0, 10200097713443395, 'Zulie Ahmad', 'yuliahmad17@yahoo.com', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xap1/v/t1.0-1/c0.0.50.50/p50x50/1544429_3963384500828_1432207809_n.jpg?oh=716c0732046b2d70f287dc0f69756503&oe=55494B40&__gda__=1432922850_4647a404d9eabcf9366139165bacedba', 1423209800, 1423209800),
(0, 0, 854471397942529, 'Atsushi Hasegawa', 'onefuji@hotmail.com', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xfp1/v/t1.0-1/p50x50/10294463_693031890753148_2787961917961487722_n.jpg?oh=9abf0a11c683e52ee2400d4168cf8203&oe=5595EA61&__gda__=1433097991_b27d613f8e4f01077b9e4167912f0fa0', 1423211781, 1423211781),
(0, 0, 10203978039791115, 'Bunda Luna', 'sarigetooo911@gmail.com', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xaf1/v/t1.0-1/p50x50/10556363_10203566571264659_5555415426148780856_n.jpg?oh=a621083a2d268c973f981bf93b3c735f&oe=5549AA06&__gda__=1430840250_5995610c97f82b25954a538cf80c8cb1', 1423298937, 1423298937),
(0, 0, 833113950056960, 'Muhammad Renaldi Irmawan', '', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xpf1/v/t1.0-1/c4.0.50.50/p50x50/10462915_736529313048758_8935333313439852088_n.jpg?oh=cbcb81d1309b41fd623c98dce4e42b1b&oe=5594ED39&__gda__=1432064108_9688ebad6bf578d9c3f99960fa60a253', 1423376519, 1423376519),
(0, 0, 1551807975093906, 'Angelia Angelis', 'loveis_one1@yahoo.co.id', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xfp1/v/t1.0-1/c2.0.50.50/p50x50/1959792_1488146328126738_7889536513974735379_n.jpg?oh=1721af27ffe080b0a1d51bba8eeafc80&oe=554E8819&__gda__=1431956797_05b1507b7d37a127726639c76e3bf6f9', 1423640221, 1423640221),
(0, 0, 431461377018492, 'Sandra Momy Lilova', 'nova.sandra.wulandari.aryadi@gmail.com', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xpa1/v/t1.0-1/p50x50/10931496_423741061123857_147755048563253483_n.jpg?oh=f4aead316d93d797200619557672c57f&oe=5551F44F&__gda__=1431772060_47deb79b6c1c3f38b960910c36f3e922', 1423641096, 1423641096),
(0, 0, 10202616589694260, 'Zr Nuy Simaremare', 'nuijer_love@yahoo.co.id', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xfp1/v/t1.0-1/c0.0.50.50/p50x50/10171194_10201744331768357_6395329591421381553_n.jpg?oh=5bfe9d780dce478ebd2ffb21cfc4a866&oe=554B6843&__gda__=1434425013_5971a99fb62b29b8bedede179609073a', 1424953849, 1424953849),
(0, 0, 616988128432263, 'Tata Ibba', 'aryapro2@gmail.com', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xap1/v/t1.0-1/p50x50/10525654_607077606089982_7847632004977400260_n.jpg?oh=b9d345643acaddfd278903770c3489a0&oe=55819750&__gda__=1435767142_0e9259a2714a014599381c4ea655dc97', 1425225091, 1425225091);

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `tbl_group_permissions`
--


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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `tbl_model_lists`
--


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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `tbl_module_lists`
--


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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `tbl_module_permissions`
--


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
(1, NULL, 'Menu One', 'menu-one', '<p>\r\n	Menu One Description</p>\r\n', 'menu-one', NULL, 'top', NULL, NULL, NULL, NULL, NULL, NULL, 'publish', NULL, NULL),
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
  `fb_id` varchar(255) DEFAULT NULL,
  `fb_pic_url` varchar(255) NOT NULL,
  `join_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`part_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=50 ;

--
-- Dumping data for table `tbl_participants`
--

INSERT INTO `tbl_participants` (`part_id`, `name`, `address`, `email`, `phone_number`, `twitter`, `fb_id`, `fb_pic_url`, `join_date`) VALUES
(1, 'Abdullah Assajid', 'Dusun bakan tambun, RT 002 RW 008, Dese/kel pucung, kecamatan kota baru, kabupaten karawang', 'dizasjmc24@ymail.com', '089639949647', '@dizas_drj', '565131000290364', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xfa1/v/t1.0-1/p50x50/1975112_562496580553806_2210115884134723189_n.jpg?oh=c1ba1657fe1226f19a54a07eaec2989f&oe=552ABF17&__gda__=1428211269_546d8ea145109aeb8f63ea138c4a9b56', '2015-01-24 16:32:28'),
(2, 'Mandala Wisnu', 'jl kh syahdan', 'wsnukesumamandala@yahoo.com', '081288004472', '@mandalawisnu', '10203709687846191', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xpf1/v/t1.0-1/p50x50/1509074_10203444812824481_7099475292656601658_n.jpg?oh=10faf3cf79fd2833eae9d2340806a3b5&oe=555A4EC1&__gda__=1432817070_1f86ac7d36d08e91d4b0cb939caaf945', '2015-01-24 18:18:52'),
(3, 'Anwal Tasbiansyakh', 'Jln. Muara Bahari RT 05 RW 01 No. 36 Sunter Agung Jakarta Utara', 'bian.anwal@gmail.com', '089604381426', '@AnwalTasbiansah', '995564460471799', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xfp1/v/t1.0-1/c0.0.50.50/p50x50/10277753_831572666870980_5128532176410782642_n.jpg?oh=f9c156f12a2ab1a1b2c5e52361ac6983&oe=556DC8A3&__gda__=1431939975_fca8f7e5d0956463c2ebb85340e0a836', '2015-01-25 13:34:02'),
(4, 'Syahida Nur Salim', 'Kasihan II, RT.25/RW.08, Ngentakrejo, Lendah, Kulon Progo, Yogyakarta.', 'goregush@gmail.com', '08886843401', 'syahid_ns', '633944563418153', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xap1/v/t1.0-1/p50x50/10857810_627594064053203_2434679439480630975_n.jpg?oh=9abd586ebe9aaefe2c07c9dc77f718fa&oe=55292B49&__gda__=1428348031_2540878a568ea1846a573098511d6ab7', '2015-01-25 16:07:35'),
(5, 'Darus Firman', 'jl veteran III (tapos) gg kambangan 2 kp cigaok RT/RW 002/007 desa citapen kecamatan ciawi kabupaten bogor kode pos 16720', 'darusfirman_1985@yahoo.com', '081905580597', '@darusfirman', '398085310368396', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xap1/v/t1.0-1/p50x50/10906440_392442527599341_7844529448405053944_n.jpg?oh=b6dc47412a8d6804071f5dab798a431b&oe=5521A732&__gda__=1428863492_4ef8e28b9ec5fc335839ff125cc5887d', '2015-01-25 17:37:31'),
(6, 'Novalia Harti Diana', 'jl.garuda 5 dh 4 no 9 Depok, Indonesia 16517', 'novaliahd@yahoo.com', '081906233563', '@novaliahd', '1012515002097448', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xfp1/v/t1.0-1/c13.0.50.50/p50x50/1531538_896981066984176_7733335898950986645_n.jpg?oh=7007569abbb16c2ec5ea4842dc65046e&oe=556D5D11&__gda__=1431683637_c32a4de3a12b502c61887af9cd193c24', '2015-01-25 18:52:30'),
(7, 'Fahrul Pamungkas Rabbana', 'cilandak timur rt 008/01 no 59 jakarta selatan', 'fahrul_ghozali@yahoo.com', '081318844223', '@fahrulpamungkas', '10202724226061335', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xap1/v/t1.0-1/c11.0.50.50/p50x50/10478656_10201683129954583_6488820509369628824_n.jpg?oh=f8bf008fd1f8f7d81231cc389345c1ce&oe=5568EA34&__gda__=1433237367_bafe77b154629e582a01305ff655895e', '2015-01-25 19:18:19'),
(8, 'Novalia Harti Diana', 'jl.garuda 5 dh 4 no 9 Depok, Indonesia 16517', 'novaliahd@yahoo.com', '081906233563', '@Novaliahd', '', '', '2015-01-25 19:52:29'),
(9, 'Novalia Harti Diana', 'jl.garuda 5 dh 4 no 9 Depok, Indonesia 16517', 'novaliahd@yahoo.com', '081906233563', '@Novaliahd', '', '', '2015-01-25 20:22:33'),
(10, 'Nova Ryzal Wicaksono', 'jl.Trubus2 Rt004/04 No,25 Pondok Cabe Tangerang Selatan', 'nova.ryzalwicaksono@gmail.com', '08999443984', '@novaryzal', '806396942730612', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xpa1/v/t1.0-1/p50x50/1977003_792767124093594_6427620763644480569_n.jpg?oh=07536b7f18244911d1c4e767e4ef0de3&oe=552A3A65&__gda__=1432436406_aea80305ff2115a698c0503a1a01065e', '2015-01-25 20:31:16'),
(11, 'Syidik Sulis', 'Kp. Turi Rt 02/05 No. 57 Desa Sriamur, Kec. Tambun Utara, Kab. Bekasi', 'syidiksulis@gmail.com', '087883853170', '@syidik_sulis', '876771235678711', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xpa1/v/t1.0-1/p50x50/10940612_876546645701170_4261248192986568114_n.jpg?oh=02e0f2e3599cfdff67393c2374176796&oe=5527F459&__gda__=1432525125_30c26a4d8361aa828fa7c10d11b76944', '2015-01-26 10:10:58'),
(12, 'reza hayatul', 'Babakan gg rukun No. 33A Rt 005/01, Jagakarsa, Jakarta selatan', 'hayatulreza@yahoo.com', '085777978477', '@Edza_Official', '', '', '2015-01-26 15:27:59'),
(13, 'Muhammad Mukorrobin', 'Jl lodan raya no 27, rt004 rw002, kel ancol, kecamatan pademangan, jakarta utara', 'simonc676@gmail.com', '081319091504', '@robinsholic28', '1557421534504515', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xaf1/v/t1.0-1/c7.0.50.50/p50x50/1393723_1518946378352031_5317494266673641522_n.jpg?oh=2c418809c89d2163a10012964ac14858&oe=552936F9&__gda__=1432381866_c8e7e2a4447a21ec2e7b9a427c64e365', '2015-01-26 16:52:33'),
(14, 'Muhammad Munandar', 'Jl lodan raya no 27, rt004 rw002, kel ancol, kecamatan pademangan, jakarta utara', 'muhammadmunandar901@gmail.com', '081210396412', '@munandar1928', '980370118648230', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xfp1/v/t1.0-1/p50x50/1507102_967145816637327_4474674415425516538_n.jpg?oh=eeccadb807add76c41369758d9fe08eb&oe=552A3E2A&__gda__=1428215615_d36ccd4e08c55638d02fe4b6e0e5d4f3', '2015-01-26 19:14:19'),
(15, 'Abdullah Assajid', 'uo', 'pasundan.dizas@yahoo.com', '885587', '@uyfuiugggi', '883020668416210', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xfa1/v/t1.0-1/c50.50.621.621/s50x50/550877_491189447599336_306918125_n.jpg?oh=79d7d905e4178b77da12473d00064ee7&oe=5524D2FB&__gda__=1432318647_2ef9395aa10f62eba2c8a8ef0be3032c', '2015-01-26 19:27:26'),
(16, 'vvrt', 'erv', 'rvtre@gmail.com', '5474', '@reber', '', '', '2015-01-26 19:41:49'),
(17, 'Mohamad Nur Setiawan', 'Jl. Tipar Cakung Rt 003/08 Cakung Barat-Jakarta Timur 13910', 'mohammednoor915@gmail.com', '08385781456', 'gak punya', '876448745752861', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xpa1/v/t1.0-1/p50x50/10922434_865562363508166_1575438406201481170_n.jpg?oh=fe400aa6be4e7636af32402a5a390797&oe=556D5E81&__gda__=1431905693_505abc7fc94466ca47b56fdee6fffa8a', '2015-01-26 20:31:27'),
(18, 'Roni Nugraha', 'Gegulu RT.25/RW.12, Gulurejo, Lendah, Kulon Progo - Yogyakarta', 'moronvox@gmail.com', '085100226383', '@moronvox', '4786329753280', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xpa1/v/t1.0-1/p50x50/10933697_4780209320273_6093102247008830946_n.jpg?oh=8be2307c04782e6010069156bd28f778&oe=55236611&__gda__=1428705108_7cd238851304328946ccd5736f5940fe', '2015-01-26 22:49:20'),
(19, 'Ulul Abidin', 'rvt', 'indonesiar43@yahoo.co.id', '547', '@rtbr', '391508257685794', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-ash2/v/t1.0-1/c10.0.50.50/p50x50/375702_171695633000392_588224944_n.jpg?oh=2f9f5249c12f70d77b992bf635a86213&oe=55567D6A&__gda__=1428675219_2bf6962feba3872e48cf436b34bddbbe', '2015-01-26 23:11:03'),
(20, 'sule', 'dhd', 'rbr@gmail.com', '344634', '@tbytr', '1587891924780990', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xaf1/v/t1.0-1/c9.0.50.50/p50x50/10247296_1451107825126068_3201579673816199249_n.jpg?oh=efb98ee8d7039a618daa1b1723331f0f&oe=55258334&__gda__=1432955163_08e8bc7626e90f912f85d892da9a9ebd', '2015-01-26 23:21:20'),
(21, 'Syahida Nur Salim', 'Kasihan II, RT.25/ RW.08, Ngentakrejo, Lendah, Kulon Progo, Yogyakarta (55663)', 'goregush@gmail.com', '08886843401', 'Syahid_92', '943030819041084', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xpa1/v/t1.0-1/p50x50/10805639_900407819970051_7275148223358125668_n.jpg?oh=964c4af703cc9ff9360416fbf27df77a&oe=5563DC8A&__gda__=1431637142_945df868bfcfe9b5ed59873bff7fc956', '2015-01-26 23:43:16'),
(22, 'Suroso Sentosa', 'eryer', 'retbet@gmail.com', '55445', '@eby', '1380202812288861', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xpa1/v/t1.0-1/c15.0.50.50/p50x50/10801719_10150004552125137_5333852981190542657_n.jpg?oh=b438c26f9ecbcb1854010b32b80f8106&oe=555E63D3&__gda__=1432989558_589f46bb7f7f8ea0169d68fb82e1dc3c', '2015-01-27 00:08:27'),
(23, 'Suroso Latip', 'rheyyhty', 'surosolatip@gmail.com', '37447344', '@etr', '1379916052318111', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xfp1/v/t1.0-1/c15.0.50.50/p50x50/10354686_10150004552801856_220367501106153455_n.jpg?oh=d1b249dee67d136b8ffe3f1a8b006073&oe=555C1C2F&__gda__=1432407769_d1bdf1bd786151f62fbe372052d84a61', '2015-01-27 05:29:11'),
(24, 'Juki Hendra', 'Yogyakarta,Sindurejan WB3/152 RT 47 RW 10 Jogja', 'juki_hendra@yahoo.com', '089692252424', '@jukihendra2', '918225271535533', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xpa1/v/t1.0-1/c0.0.50.50/p50x50/1972343_752851694739559_768097121_n.jpg?oh=90623d2e3ffb3b9e691a6160ddd6cf62&oe=55585493&__gda__=1432105359_a83128997345ebb214eb5c87b3acaba4', '2015-01-27 10:31:26'),
(25, 'Siti Khodijah', 'jalan salo raya kembangan jakarta barat', 'dijeh12@gmail.com', '087776400067', '@diijeeh', '10203802402963322', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xfa1/v/t1.0-1/p50x50/10294385_10203672287030505_5035057118089423940_n.jpg?oh=24d8213832f6bf2d57e0ec6242cabf89&oe=555D150F&__gda__=1433330566_bc3f525a43568cded10eef495702a42d', '2015-01-27 15:23:40'),
(26, 'Loetphy Afandi', 'dusun pagerwojo rt/rw :04/03 desa pagerwojo kecamatan perak kabupaten jombang', 'fandyfansclub@gmail.com', '085733487333', '@loet_phy', '1041110462571004', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xap1/v/t1.0-1/p50x50/10885610_1015921548423229_7841963756651678175_n.jpg?oh=13d79c686c2b7b0c4789cdcd26d81fdb&oe=556696BD&__gda__=1433112956_dec6e70212064d52a596f2aa47437838', '2015-01-27 17:05:29'),
(27, 'Sutisna Lono', 'cilandak', 'gakada@gmail.com', '097789589900', '@gakada', '1380788925563827', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xfp1/v/t1.0-1/c15.0.50.50/p50x50/10354686_10150004552801856_220367501106153455_n.jpg?oh=d1b249dee67d136b8ffe3f1a8b006073&oe=555C1C2F&__gda__=1432407769_d1bdf1bd786151f62fbe372052d84a61', '2015-01-27 17:10:39'),
(28, 'Santi Cazor', 'ciamis', 'ssurno@yahoo.co.id', '84859800', '@ul', '1380787242230876', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xfa1/v/t1.0-1/c15.0.50.50/p50x50/1379841_10150004552801901_469209496895221757_n.jpg?oh=e7ef542c000c5eabeda4191250fd52f4&oe=55275933&__gda__=1432381980_cb4258f5472d2c6e8d2abf201cda2afa', '2015-01-27 17:55:41'),
(29, 'Santika Dewi', 'cileungsi', 'dewi6120@gmail.com', '90707066', '@dewi', '1382025858773582', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xfa1/v/t1.0-1/c15.0.50.50/p50x50/1379841_10150004552801901_469209496895221757_n.jpg?oh=e7ef542c000c5eabeda4191250fd52f4&oe=55275933&__gda__=1432381980_cb4258f5472d2c6e8d2abf201cda2afa', '2015-01-28 04:01:21'),
(30, 'Ranie', 'cikampek', 'cikampek@gmail.com', '08964646446', '@sop', '417738728391488', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-prn2/v/t1.0-1/c0.0.50.50/p50x50/563990_221204551378241_1940205734_n.jpg?oh=89586a916e616028370e506cfdc1af2d&oe=5554644E&__gda__=1432731893_3d6d06c5cb6c69ac68607e982e06d8b9', '2015-01-28 20:14:14'),
(31, 'Aris', 'Jl.kemanggisan pulo 1 Rt.015/008 No.35 palmerah jak-Bar 11480', 'yanto.kalem80@gmail.com', '087875027881', '@aris22511899', '', '', '2015-01-31 13:36:26'),
(32, 'Edza', 'Babakan gg rukun No. 33A Rt 005/01, Jagakarsa, Jakarta selatan', 'rezahayatul@gmail.com', '085777978477', '@Edza_Official', '803279009750751', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xap1/v/t1.0-1/p50x50/10868132_799819850096667_4221154147281394031_n.jpg?oh=9f3ae8500c45c5f6644da1041a143fa7&oe=554FCC92&__gda__=1432006564_8679b7bbf5061d67bf40edf1e7e9d8ee', '2015-02-02 10:30:12'),
(33, 'Ayu Rahayu C', 'jl cerry 2 no 9 sukatani permai', 'archyrahayu@yahoo.co.id', '085715925282', 'archyyy', '10203374643039020', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xfa1/v/t1.0-1/p50x50/269298_3226759840105_129833535_n.jpg?oh=b7dc1fe9b6d0f7cc52568d35b34c8fb5&oe=554B8E77&__gda__=1428263864_787d25dd8385c44c293c75dbd3cad0fc', '2015-02-02 13:21:30'),
(34, 'Sukur Lana', 'cikalong', 'cikalong@gmail.com', '089454646446', '@joko', '1379572005686382', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xfp1/v/t1.0-1/c15.0.50.50/p50x50/10354686_10150004552801856_220367501106153455_n.jpg?oh=d1b249dee67d136b8ffe3f1a8b006073&oe=555C1C2F&__gda__=1432407769_d1bdf1bd786151f62fbe372052d84a61', '2015-02-05 05:20:40'),
(35, 'Sukur Lana', 'cikalong', 'cikalong@gmail.com', '089454646446', '@joko', '1379572005686382', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xfp1/v/t1.0-1/c15.0.50.50/p50x50/10354686_10150004552801856_220367501106153455_n.jpg?oh=d1b249dee67d136b8ffe3f1a8b006073&oe=555C1C2F&__gda__=1432407769_d1bdf1bd786151f62fbe372052d84a61', '2015-02-05 05:26:33'),
(36, 'Sukur Lana', 'cikalong', 'cikalong@gmail.com', '089454646446', '@joko', '1379572005686382', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xfp1/v/t1.0-1/c15.0.50.50/p50x50/10354686_10150004552801856_220367501106153455_n.jpg?oh=d1b249dee67d136b8ffe3f1a8b006073&oe=555C1C2F&__gda__=1432407769_d1bdf1bd786151f62fbe372052d84a61', '2015-02-05 05:30:27'),
(37, 'Sukur Lana', 'cikalong', 'cikalong@gmail.com', '089454646446', '@joko', '1379572005686382', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xfp1/v/t1.0-1/c15.0.50.50/p50x50/10354686_10150004552801856_220367501106153455_n.jpg?oh=d1b249dee67d136b8ffe3f1a8b006073&oe=555C1C2F&__gda__=1432407769_d1bdf1bd786151f62fbe372052d84a61', '2015-02-05 05:36:32'),
(38, 'Sukur Lana', 'cikalong', 'cikalong@gmail.com', '089454646446', '@joko', '1379572005686382', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xfp1/v/t1.0-1/c15.0.50.50/p50x50/10354686_10150004552801856_220367501106153455_n.jpg?oh=d1b249dee67d136b8ffe3f1a8b006073&oe=555C1C2F&__gda__=1432407769_d1bdf1bd786151f62fbe372052d84a61', '2015-02-05 05:46:17'),
(39, 'Muhamad Shaleh', 'cikampek', 'cikampekms@gmail.com', '08964337463', '@dpsas', '1401307683504662', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xap1/v/t1.0-1/c0.0.50.50/p50x50/10896931_1377459372556160_5666073003513535544_n.jpg?oh=a5eb3035a96c9f91f8988f96ce41a1fc&oe=554DE0CA&__gda__=1431568891_e3f8d1b365557c7d291cbcb87e6f4fda', '2015-02-06 02:36:44'),
(40, 'Muhamad Shaleh', 'cikampek', 'cikampekms@gmail.com', '08964337463', '@dpsas', '1401307683504662', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xap1/v/t1.0-1/c0.0.50.50/p50x50/10896931_1377459372556160_5666073003513535544_n.jpg?oh=a5eb3035a96c9f91f8988f96ce41a1fc&oe=554DE0CA&__gda__=1431568891_e3f8d1b365557c7d291cbcb87e6f4fda', '2015-02-06 02:41:08'),
(41, 'Sri Darawi', 'cikalong', 'cikalon22g@gmail.com', '0894542242', '@kiloer', '1383554708621412', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xfa1/v/t1.0-1/c15.0.50.50/p50x50/1379841_10150004552801901_469209496895221757_n.jpg?oh=9736aade380d9f785e35bf18f5776470&oe=554EE633&__gda__=1432381980_c928195d67069eed18ffec8e07f9b513', '2015-02-06 03:15:19'),
(42, 'Sri Darawi Ningrum', 'cisadane', 'sri@yahoo.com', '0857857959', '@sri', '1383554708621412', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xfa1/v/t1.0-1/c15.0.50.50/p50x50/1379841_10150004552801901_469209496895221757_n.jpg?oh=9736aade380d9f785e35bf18f5776470&oe=554EE633&__gda__=1432381980_c928195d67069eed18ffec8e07f9b513', '2015-02-06 03:29:05'),
(43, 'Sri Darawi', 'cisadane', 'sri@yahoo.com', '0857857959', '@sri', '1383554708621412', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xfa1/v/t1.0-1/c15.0.50.50/p50x50/1379841_10150004552801901_469209496895221757_n.jpg?oh=9736aade380d9f785e35bf18f5776470&oe=554EE633&__gda__=1432381980_c928195d67069eed18ffec8e07f9b513', '2015-02-06 03:31:36'),
(44, 'Lulu Darrmza', 'demak', 'lulu232@yahoo.comm', '08974525245', '@lulu_45', '1382939568683239', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xfp1/v/t1.0-1/c15.0.50.50/p50x50/10354686_10150004552801856_220367501106153455_n.jpg?oh=d1b249dee67d136b8ffe3f1a8b006073&oe=555C1C2F&__gda__=1432407769_d1bdf1bd786151f62fbe372052d84a61', '2015-02-07 04:58:39'),
(45, 'Catim Setiawan', 'cibaduut', 'catim786099@yahoo.com', '09865587664', '@catim_468', '', '', '2015-02-07 05:08:28'),
(46, 'Catim Setiawan', 'cibaduyut', 'catim786099@yahoo.com', '089454646446', '@catim_468', '728013500653412', 'https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xaf1/v/t1.0-1/p50x50/10421298_699179443536818_7497336559836872107_n.jpg?oh=bd740131f4d6d0ec2d36a626b1ad47da&oe=5550E1F4&__gda__=1432069699_1fb1309f8ce8481266ee76286adf0186', '2015-02-07 05:10:59'),
(47, 'lulu darma', 'pekalongan', 'darma224@gmail.com', '09868758785', '@darma__90', '', '', '2015-02-07 05:16:08'),
(48, 'lulu gaga', 'surabaya', 'gglluuu@yahoo.com', '089687596969', '@gaga11', '', '', '2015-02-07 05:20:12'),
(49, 'uybibt', 'ytbotb', 'tyrbl@gmail.com', '08754746974', '@ubyu', '', '', '2015-02-07 05:28:33');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_server_logs`
--

CREATE TABLE IF NOT EXISTS `tbl_server_logs` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
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

INSERT INTO `tbl_server_logs` (`id`, `url`, `user_id`, `status_code`, `bytes_served`, `ip_address`, `http_code`, `referrer`, `user_agent`, `status`, `added`, `modified`) VALUES
(1, 'http://localhost/dentsu.digital/', NULL, '200', 35, '::1', 200, 'http://localhost/dentsu.digital/', '	Mozilla/5.0 (Windows NT 6.1; WOW64; rv:35.0) Gecko/20100101 Firefox/35.0', 1, 1417065898, 1417065898),
(2, 'http://localhost/dentsu.digital/', NULL, '200', 35, '::1', 200, 'http://localhost/dentsu.digital/', '	Mozilla/5.0 (Windows NT 6.1; WOW64; rv:35.0) Gecko/20100101 Firefox/35.0', 1, 1417065898, 1417065898),
(3, 'http://localhost/dentsu.digital/', NULL, '200', 35, '::1', 200, 'http://localhost/dentsu.digital/', '	Mozilla/5.0 (Windows NT 6.1; WOW64; rv:35.0) Gecko/20100101 Firefox/35.0', 1, 1417065898, 1417065898),
(4, 'http://localhost/dentsu.digital/', NULL, '200', 35, '::1', 200, 'http://localhost/dentsu.digital/', '	Mozilla/5.0 (Windows NT 6.1; WOW64; rv:35.0) Gecko/20100101 Firefox/35.0', 1, 1417065898, 1417065898),
(5, 'http://localhost/dentsu.digital/', NULL, '200', 35, '::1', 200, 'http://localhost/dentsu.digital/', '	Mozilla/5.0 (Windows NT 6.1; WOW64; rv:35.0) Gecko/20100101 Firefox/35.0', 1, 1417065898, 1417065898);

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

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
(26, 'ext_link', 'Ext Link', 'http://www.apb-career.net', 1, 1, NULL, 1423732944);

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
  `session` varchar(160) NOT NULL,
  `added` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=46 ;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `username`, `email`, `password`, `group_id`, `last_login`, `logged_in`, `status`, `session`, `added`, `modified`) VALUES
(1, 'admin', 'admin@admin.com', 'dd94709528bb1c83d08f3088d4043f4742891f4f', 1, 1425377399, 1, 1, '', 0, 0),
(2, 'joni', 'admin1@admin.com', '9003d1df22eb4d3820015070385194c8', 2, 1417003004, 0, 1, '', 0, 1424687676),
(3, 'qc9080', 'asdf@asdf.com', 'fb00378895cf135de3b135f385c0012f3823e4fb', 116, 1417001008, 0, 1, '', 1425031512, 1424689343),
(29, 'dyarfi', 'dyarfi20@gmail.com', '647dc5d75f6ce3c6a859eb3b91fa6ccaab05b245', 116, 0, 0, 1, '', 1417065898, 0),
(7, 'gmp1234', 'defrian.yarfi@gmail.com', '4d60cf3ac1381a533090412a84466000437eee1f', 116, 1417003001, 0, 1, '', 1425031542, 0),
(42, 'dyarfi20@gmail.com', 'dyarfi20@gmail.com', '8f956a5c8346e1909dce9a2aea8839d6f05e8ce1', 100, 0, 0, 1, '', 1425270772, 0),
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
(116, 'Publisher', 1, 1, 1, 0, 0, 0),
(100, 'Employee', 1, NULL, 1, 0, 0, 0);

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
