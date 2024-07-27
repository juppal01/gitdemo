-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 21, 2017 at 11:29 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+05:30";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `MES`
--

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE IF NOT EXISTS `registration` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `EmpID` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Designation` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Department` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MobNo` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Email` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Username` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Password` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ReportingManager` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ReportingHead` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ExtensionNo` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WorkFloor` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Location` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Role` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Rights` int(1) DEFAULT NULL COMMENT '''0=Admin; 1=Reporting Head; 2=Reporting Manager; 3=Employee''',
  `COD` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MODt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ModifiedBy` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EOD` datetime DEFAULT NULL,
  `Status` int(1) NOT NULL DEFAULT '1' COMMENT '0 - Inactive, 1 - Active',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `EmpID` (`EmpID`),
  UNIQUE KEY `Username` (`Username`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=114 ;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`ID`, `EmpID`, `Name`, `Designation`, `Department`, `MobNo`, `Email`, `Username`, `Password`, `ReportingManager`, `ReportingHead`, `ExtensionNo`, `WorkFloor`, `Location`, `Role`, `Rights`, `COD`, `CreatedBy`, `MODt`, `ModifiedBy`, `EOD`, `Status`) VALUES
(1, 'VNL-GGN-1081', 'Abhishek Yadav', NULL, 'Scm And Manufacturing', NULL, NULL, 'abhishek_yadav', 'user@123', 'VNL-GGN-0361', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-05-17 14:22:35', NULL, '2017-01-10 11:31:14', 0),
(2, 'VNL-GGN-0236', 'Ajay Kumar Tyagi', NULL, 'Scm And Manufacturing', NULL, 'ajay.tyagi@vnl.in', 'ajay_tyagi', 'user@123', 'VNL-GGN-0228', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 1, '2017-01-10 11:31:27', NULL, '2017-05-25 10:12:57', NULL, '2017-01-10 11:31:27', 1),
(3, 'VNL-GGN-0993', 'Ajeet Singh', NULL, 'Scm And Manufacturing', NULL, 'ajit2.singh@vnl.in', 'ajeet_singh', 'user@123', 'VNL-GGN-0870', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-05-24 15:13:06', NULL, '2017-01-10 11:31:14', 1),
(4, 'VNL-GGN-1147', 'Ajuvendra Singh', NULL, 'Quality', NULL, 'ajuvendra.singh@vnl.in', 'ajuvendra_singh', 'user@123', 'VNL-GGN-1011', 'VNL-GGN-0792', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-05-17 14:39:30', NULL, '2017-01-10 11:31:14', 1),
(5, 'VNL-GGN-0837', 'Alok Sharma', NULL, 'Radio And Repeater', NULL, 'alok.sharma@vnl.in', 'alok_sharma', 'user@123', 'VNL-GGN-0228', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 1, '2017-01-10 11:30:44', NULL, '2017-05-17 14:39:30', NULL, '2017-01-10 11:30:44', 1),
(6, 'VNL-GGN-0903', 'Amit Kumar Jain', NULL, 'Radio And Repeater', NULL, 'amit.jain@vnl.in', 'amit_jain', 'user@123', 'VNL-GGN-0901', 'VNL-GGN-0837', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-05-25 10:13:06', NULL, '2017-01-10 11:31:14', 1),
(7, 'VNL-GGN-1011', 'Amit Kumar Sharma', NULL, 'Quality', NULL, 'amit1.sharma@vnl.in', 'amit_sharma', 'user@123', 'VNL-GGN-0792', 'VNL-GGN-0792', NULL, NULL, NULL, NULL, 2, '2017-01-31 11:50:00', NULL, '2017-05-25 10:13:17', NULL, '2017-01-31 11:50:00', 1),
(8, 'VNL-GGN-0920', 'Anil Kumar', NULL, 'Radio And Repeater', NULL, 'anil.kumar@vnl.in', 'anil_kumar', 'user@123', 'VNL-GGN-0835', 'VNL-GGN-0837', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-05-17 14:39:30', NULL, '2017-01-10 11:31:14', 1),
(9, 'VNL-GGN-0827', 'Anil Kumar Gulati', NULL, 'Radio And Repeater', NULL, 'anil.gulati@vnl.in', 'anil_gulati', 'user@123', 'VNL-GGN-0901', 'VNL-GGN-0837', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-05-25 10:13:37', NULL, '2017-01-10 11:31:14', 1),
(10, 'VNL-GGN-1125', 'Ankit Pant', NULL, 'Scm And Manufacturing', NULL, NULL, 'ankit_pant', 'user@123', 'VNL-GGN-0236', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-05-17 14:23:02', NULL, '2017-01-10 11:31:14', 0),
(11, 'VNL-GGN-1102', 'Arjun Singh', NULL, 'Scm And Manufacturing', NULL, 'arjun.singh@vnl.in', 'arjun_singh', 'user@123', 'VNL-GGN-0870', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-05-24 15:13:32', NULL, '2017-01-10 11:31:14', 1),
(12, 'VNL-GGN-0268', 'Arun Kumar Shukla', NULL, 'Scm And Manufacturing', NULL, 'arun.shukla@vnl.in', 'arun_shukla', 'user@123', 'VNL-GGN-0622', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-05-25 10:47:30', NULL, '2017-01-10 11:31:14', 1),
(13, 'VNL-GGN-0228', 'Ashish Kr. Verma', NULL, 'Scm And Manufacturing', NULL, 'ashish.verma@vnl.in', 'ashish_verma', 'user@123', 'VNL-GGN-0228', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 1, '2017-01-24 10:31:43', NULL, '2017-05-25 10:14:36', NULL, '2017-01-24 10:31:43', 1),
(14, 'VNL-GGN-0965', 'Ashok Pal', NULL, 'Quality', NULL, 'ashok.pal@vnl.in', 'ashok_pal', 'user@123', 'VNL-GGN-0792', 'VNL-GGN-0792', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-05-17 14:39:30', NULL, '2017-01-10 11:31:14', 1),
(15, 'VNL-GGN-1110', 'Ashutosh Kumar', NULL, 'Scm And Manufacturing', NULL, 'ashutosh.kumar@vnl.in', 'ashutosh_kumar', 'user@123', 'VNL-GGN-0973', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 3, '2017-01-24 10:02:13', NULL, '2017-05-22 08:28:21', NULL, '2017-01-24 10:02:13', 1),
(16, 'VNL-GGN-1096', 'Basil Joy', NULL, 'Scm And Manufacturing', NULL, NULL, 'basil_joy', 'user@123', 'VNL-GGN-0494', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-05-17 14:23:49', NULL, '2017-01-10 11:31:14', 0),
(17, 'VNL-GGN-0994', 'Bhupendra Kumar', NULL, 'Scm And Manufacturing', NULL, 'bhupendra.kumar@vnl.in', 'bhupender_kumar', 'user@123', 'VNL-GGN-0087', 'VNL-GGN-0236', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-05-24 16:19:47', NULL, '2017-01-10 11:31:14', 1),
(18, 'VNL-GGN-0963', 'Brijpal Singh Rawat', NULL, 'Radio And Repeater', NULL, 'brijpal.rawat@vnl.in', 'brijpal_rawat', 'user@123', 'VNL-GGN-0835', 'VNL-GGN-0837', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-05-25 10:14:45', NULL, '2017-01-10 11:31:14', 1),
(19, 'VNL-GGN-1016', 'Cheol Hee Lee', NULL, 'Scm And Manufacturing', NULL, NULL, 'cheol_lee', 'user@123', 'VNL-GGN-0228', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-05-25 10:14:58', NULL, '2017-01-10 11:31:14', 0),
(20, 'VNL-GGN-1059', 'Deepak', NULL, 'Radio And Repeater', NULL, NULL, 'deepak', 'user@123', 'VNL-GGN-0835', 'VNL-GGN-0837', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-05-25 14:02:09', NULL, '2017-01-10 11:31:14', 0),
(21, 'VNL-GGN-1140', 'Deepak Kumar', NULL, 'Scm And Manufacturing', NULL, 'deepak.kumar@vnl.in', 'deepak_kumar', 'user@123', 'VNL-GGN-0870', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-05-24 15:14:14', NULL, '2017-01-10 11:31:14', 1),
(22, 'VNL-GGN-0861', 'Dushyant Kumar', NULL, 'Store', NULL, 'dushyant.kumar@vnl.in', 'dushyant_kumar', 'user@123', 'VNL-GGN-0622', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-05-17 14:39:30', NULL, '2017-01-10 11:31:14', 1),
(23, 'VNL-GGN-0961', 'Faijal Ali', NULL, 'Scm And Manufacturing', NULL, 'faijal.ali@vnl.in', 'faijal_ali', 'user@123', 'VNL-GGN-0361', 'VNL-GGN-0494', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-05-24 14:56:06', NULL, '2017-01-10 11:31:14', 1),
(24, 'VNL-GGN-1162', 'Gautam Kumar', NULL, 'Scm And Manufacturing', NULL, 'gautam.kumar@vnl.in', 'gautam_kumar', 'user@123', 'VNL-GGN-0622', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-05-25 10:49:10', NULL, '2017-01-10 11:31:14', 1),
(25, 'VNL-GGN-0944', 'Gurdeep Singh Drall', NULL, 'Scm And Manufacturing', NULL, 'gurdeep.drall@vnl.in', 'gurdeep_drall', 'user@123', 'VNL-GGN-0361', 'VNL-GGN-0494', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-05-25 10:15:08', NULL, '2017-01-10 11:31:14', 1),
(26, 'VNL-GGN-0979', 'Harpal Yadav', NULL, 'Store', NULL, 'harpal.yadav@vnl.in', 'harpal_yadav', 'user@123', 'VNL-GGN-0622', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-05-17 14:39:30', NULL, '2017-01-10 11:31:14', 1),
(27, 'VNL-GGN-0794', 'J. Kishore Babu', NULL, 'Quality', NULL, 'kishore.babu@vnl.in', 'kishore_babu', 'user@123', 'VNL-GGN-0792', 'VNL-GGN-0792', NULL, NULL, NULL, NULL, 2, '2017-01-10 11:31:27', NULL, '2017-05-25 10:15:33', NULL, '2017-01-10 11:31:27', 1),
(28, 'VNL-GGN-0915', 'Jagdish', NULL, 'Store', NULL, 'jagdish.kumar@vnl.in', 'jagdish', 'user@123', 'VNL-GGN-0622', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-05-17 14:39:30', NULL, '2017-01-10 11:31:14', 1),
(29, 'VNL-GGN-1070', 'Jitender', NULL, 'Radio And Repeater', NULL, 'jitender@vnl.in', 'jitender', 'user@123', 'VNL-GGN-0835', 'VNL-GGN-0837', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-05-17 14:39:30', NULL, '2017-01-10 11:31:14', 1),
(30, 'VNL-GGN-0973', 'Jitender Uppal', NULL, 'Scm And Manufacturing', NULL, 'jitender.uppal@vnl.in', 'jitender_uppal', 'user@123', 'VNL-GGN-0228', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 2, '2017-02-08 12:19:22', NULL, '2017-05-24 12:35:32', NULL, '2017-02-08 12:19:22', 1),
(31, 'VNL-GGN-0839', 'Kapil Kumar Tyagi', NULL, 'Radio And Repeater', NULL, 'kapil.tyagi@vnl.in', 'kapil_tyagi', 'user@123', 'VNL-GGN-0835', 'VNL-GGN-0837', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-05-25 10:15:41', NULL, '2017-01-10 11:31:14', 1),
(32, 'VNL-GGN-0981', 'Karan Singh', NULL, 'Store', NULL, 'karan.singh@vnl.in', 'karan_singh', 'user@123', 'VNL-GGN-0622', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-05-17 14:39:30', NULL, '2017-01-10 11:31:14', 1),
(33, 'VNL-GGN-0962', 'Krishan Kumar', NULL, 'Scm And Manufacturing', NULL, 'krishan1.kumar@vnl.in', 'krishan_kumar', 'user@123', NULL, NULL, NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-05-25 10:41:25', NULL, '2017-01-10 11:31:14', 1),
(34, 'VNL-GGN-0894', 'Kuldeep Gupta', NULL, 'Scm And Manufacturing', NULL, 'kuldeep.gupta@vnl.in', 'kuldeep_gupta', 'user@123', 'VNL-GGN-0494', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-05-17 14:39:30', NULL, '2017-01-10 11:31:14', 1),
(35, 'VNL-GGN-0900', 'Kunwar Singh Negi', NULL, 'Radio And Repeater', NULL, 'kunwar.negi@vnl.in', 'kunwar_negi', 'user@123', 'VNL-GGN-0835', 'VNL-GGN-0837', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-05-25 10:15:47', NULL, '2017-01-10 11:31:14', 1),
(36, 'VNL-GGN-0733', 'Lakhan Lal', NULL, 'Scm And Manufacturing', NULL, 'lakhan.lal@vnl.in', 'lakhan_lal', 'user@123', 'VNL-GGN-0381', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-05-17 14:39:30', NULL, '2017-01-10 11:31:14', 1),
(37, 'VNL-GGN-0936', 'Lalit Mohan Sanwal', NULL, 'Scm And Manufacturing', NULL, 'lalit.sanwal@vnl.in', 'lalit_sanwal', 'user@123', 'VNL-GGN-0381', 'VNL-GGN-0236', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-05-25 10:15:53', NULL, '2017-01-10 11:31:14', 1),
(38, 'VNL-GGN-0907', 'Lalita Singh', NULL, 'Radio And Repeater', NULL, 'lalita.singh@vnl.in', 'lalita_singh', 'user@123', 'VNL-GGN-0901', 'VNL-GGN-0837', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-05-17 14:39:30', NULL, '2017-01-10 11:31:14', 1),
(39, 'VNL-GGN-0908', 'Laveesh Kumar Aggarwal', NULL, 'Radio And Repeater', NULL, 'laveesh.kumar@vnl.in', 'laveesh_aggarwal', 'user@123', 'VNL-GGN-0901', 'VNL-GGN-0837', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-05-25 09:58:34', NULL, '2017-01-10 11:31:14', 1),
(40, 'VNL-GGN-0905', 'Lokesh Saraswat', NULL, 'Radio And Repeater', NULL, 'lokesh.saraswat@vnl.in', 'lokesh_saraswat', 'user@123', 'VNL-GGN-0901', 'VNL-GGN-0837', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-05-17 14:39:30', NULL, '2017-01-10 11:31:14', 1),
(41, 'VNL-GGN-0381', 'Mahesh Chander', NULL, 'Scm And Manufacturing', NULL, 'mahesh.chander@vnl.in', 'mahesh_chander', 'user@123', 'VNL-GGN-0236', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 2, '2017-01-10 11:31:27', NULL, '2017-05-17 14:39:30', NULL, '2017-01-10 11:31:27', 1),
(42, 'VNL-GGN-0911', 'Mahesh Chandra', NULL, 'Radio And Repeater', NULL, 'mahesh.chandra@vnl.in', 'mahesh_chandra', 'user@123', 'VNL-GGN-0837', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-05-17 14:39:30', NULL, '2017-01-10 11:31:14', 1),
(43, 'VNL-GGN-0887', 'Maheshwar Prasad Bhatt', NULL, 'Logistic', NULL, 'mp.bhatt@vnl.in', 'maheshwar_bhatt', 'user@123', 'Deepak Gupta', 'Deepak Gupta', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-05-25 10:00:06', NULL, '2017-01-10 11:31:14', 1),
(44, 'VNL-GGN-1058', 'Manish Berwal', NULL, 'Quality', NULL, 'manish.berwel@vnl.in', 'manish_berwal', 'user@123', 'VNL-GGN-1011', 'VNL-GGN-0792', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-05-17 14:17:29', NULL, '2017-01-10 11:31:14', 1),
(45, 'VNL-GGN-0901', 'Manish Kumar Goyal', NULL, 'Radio And Repeater', NULL, 'manish.goyal@vnl.in', 'manish_goyal', 'user@123', 'VNL-GGN-0837', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 2, '2017-01-10 11:31:27', NULL, '2017-05-25 10:16:19', NULL, '2017-01-10 11:31:27', 1),
(46, 'VNL-GGN-0893', 'Manoj Kumar', NULL, 'Scm And Manufacturing', NULL, 'manoj.roy@vnl.in', 'manoj_kumar', 'user@123', 'VNL-GGN-0870', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-05-24 15:17:13', NULL, '2017-01-10 11:31:14', 1),
(47, 'VNL-GGN-0926', 'Manoj Kumar', NULL, 'Quality', NULL, NULL, 'manoj_kumar_2', 'user@123', 'VNL-GGN-0792', 'VNL-GGN-0792', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-05-25 10:59:40', NULL, '2017-01-10 11:31:14', 0),
(48, 'VNL-GGN-1114', 'Mohit Gupta', NULL, 'Scm And Manufacturing', NULL, 'mohit.gupta@vnl.in', 'mohit_gupta', 'user@123', 'VNL-GGN-0870', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-05-24 15:17:32', NULL, '2017-01-10 11:31:14', 1),
(49, 'VNL-GGN-0836', 'Naresh Kumar', NULL, 'Radio And Repeater', NULL, 'naresh.kumar@vnl.in', 'naresh_kumar', 'user@123', 'VNL-GGN-0837', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-05-17 14:39:30', NULL, '2017-01-10 11:31:14', 1),
(50, 'VNL-GGN-0957', 'Naresh Kumar', NULL, 'Store', NULL, 'naresh2.kumar@vnl.in', 'naresh_kumar_2', 'user@123', 'VNL-GGN-0622', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-05-17 14:39:30', NULL, '2017-01-10 11:31:14', 1),
(51, 'VNL-GGN-0972', 'Narinder Singh', NULL, 'Scm And Manufacturing', NULL, 'narinder.singh@vnl.in', 'narinder_singh', 'user@123', NULL, NULL, NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-05-25 10:43:25', NULL, '2017-01-10 11:31:14', 1),
(52, 'VNL-GGN-1100', 'Neeraj', NULL, 'Scm And Manufacturing', NULL, NULL, 'neeraj', 'user@123', 'VNL-GGN-0494', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 3, '2017-01-13 14:00:54', NULL, '2017-05-17 14:24:06', NULL, '2017-01-13 14:00:54', 0),
(53, 'VNL-GGN-0977', 'Neeraj Verma', NULL, 'Scm And Manufacturing', NULL, 'neeraj.verma@vnl.in', 'neeraj_verma', 'user@123', 'VNL-GGN-0870', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-05-24 15:17:55', NULL, '2017-01-10 11:31:14', 1),
(54, 'VNL-GGN-0906', 'Neha Mehta', NULL, 'Radio And Repeater', NULL, 'neha.mehta@vnl.in', 'neha_mehta', 'user@123', 'VNL-GGN-0901', 'VNL-GGN-0837', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-05-17 14:39:30', NULL, '2017-01-10 11:31:14', 1),
(55, 'VNL-GGN-1104', 'Nitin Sehrawat', NULL, 'Scm And Manufacturing', NULL, 'nitin.sehrawat@vnl.in', 'nitin_sehrawat', 'user@123', 'VNL-GGN-0361', 'VNL-GGN-0494', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-05-24 14:57:34', NULL, '2017-01-10 11:31:14', 1),
(56, 'VNL-GGN-0921', 'Nityanand Mishra', NULL, 'Scm And Manufacturing', NULL, 'nityanand.mishra@vnl.in', 'nityanand_mishra', 'user@123', 'VNL-GGN-0870', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-05-24 15:18:08', NULL, '2017-01-10 11:31:14', 1),
(57, 'VNL-GGN-1105', 'Pankaj Kumar', NULL, 'Radio And Repeater', NULL, 'pankaj3.kumar@vnl.in', 'pankaj_kumar', 'user@123', 'VNL-GGN-0835', 'VNL-GGN-0837', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-05-17 14:39:30', NULL, '2017-01-10 11:31:14', 1),
(58, 'VNL-GGN-0930', 'Pankaj Oberoi', NULL, 'Scm And Manufacturing', NULL, NULL, 'pankaj_oberoi', 'user@123', 'VNL-GGN-0494', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-05-17 14:24:26', NULL, '2017-01-10 11:31:14', 0),
(59, 'VNL-GGN-0838', 'Pankaj Upadhyay', NULL, 'Radio And Repeater', NULL, 'pankaj.upadhyay@vnl.in', 'pankaj_upadhyay', 'user@123', 'VNL-GGN-0835', 'VNL-GGN-0837', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-05-17 14:39:30', NULL, '2017-01-10 11:31:14', 1),
(60, 'VNL-GGN-0929', 'Parmod Kumar', NULL, 'Radio And Repeater', NULL, 'parmod.kumar@vnl.in', 'parmod_kumar', 'user@123', 'VNL-GGN-0835', 'VNL-GGN-0837', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-05-17 14:39:30', NULL, '2017-01-10 11:31:14', 1),
(61, 'VNL-GGN-0897', 'Partha Pratim Chattoraj', NULL, 'Radio And Repeater', NULL, 'partha.chattoraj@vnl.in', 'partha_chattoraj', 'user@123', 'VNL-GGN-0901', 'VNL-GGN-0837', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-05-25 10:00:55', NULL, '2017-01-10 11:31:14', 1),
(62, 'VNL-GGN-0870', 'Parveen Kumar', NULL, 'Scm And Manufacturing', NULL, 'parveen.mangal@vnl.in', 'parveen_mangal', 'user@123', 'VNL-GGN-0228', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 2, '2017-01-10 11:31:14', NULL, '2017-05-25 10:03:27', NULL, '2017-01-10 11:31:14', 1),
(63, 'VNL-GGN-0964', 'Pawan Kumar', NULL, 'Store', NULL, 'pawan.kumar@vnl.in', 'pawan_kumar', 'user@123', 'VNL-GGN-0622', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-05-25 10:50:49', NULL, '2017-01-10 11:31:14', 1),
(64, 'VNL-GGN-1101', 'Poonam Gupta', NULL, 'Scm And Manufacturing', NULL, 'poonam.gupta@vnl.in', 'poonam_gupta', 'user@123', 'VNL-GGN-0870', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-05-24 15:19:16', NULL, '2017-01-10 11:31:14', 1),
(65, 'VNL-GGN-1107', 'Pradip Kumar', NULL, 'Scm And Manufacturing', NULL, 'pradip.kumar@vnl.in', 'pradip_kumar', 'user@123', 'VNL-GGN-0870', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-05-24 15:20:15', NULL, '2017-01-10 11:31:14', 1),
(66, 'VNL-GGN-1080', 'Prashant Kumar Doove', NULL, 'Scm And Manufacturing', NULL, 'prashant.doobe@vnl.in', 'prashant_doove', 'user@123', 'VNL-GGN-0494', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-05-25 10:04:03', NULL, '2017-01-10 11:31:14', 1),
(67, 'VNL-GGN-1143', 'Prashant Kumar Jha', NULL, 'Quality', NULL, 'prashant.jha@vnl.in', 'prashant_jha', 'user@123', 'VNL-GGN-1011', 'VNL-GGN-0792', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-05-25 10:04:10', NULL, '2017-01-10 11:31:14', 1),
(68, 'VNL-GGN-1103', 'Prateek Satija', NULL, 'Scm And Manufacturing', NULL, 'prateek.satija@vnl.in', 'prateek_satija', 'user@123', 'VNL-GGN-0361', 'VNL-GGN-0494', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-05-24 14:58:04', NULL, '2017-01-10 11:31:14', 1),
(69, 'VNL-GGN-0978', 'Praveen Kumar', NULL, 'Scm And Manufacturing', NULL, 'praveen1.kumar@vnl.in', 'praveen_kumar', 'user@123', 'VNL-GGN-0381', 'VNL-GGN-0236', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-05-24 16:06:03', NULL, '2017-01-10 11:31:14', 1),
(70, 'VNL-GGN-1111', 'Pravesh', NULL, 'Scm And Manufacturing', NULL, 'pravesh@vnl.in', 'pravesh', 'user@123', 'VNL-GGN-0087', 'VNL-GGN-0236', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-05-24 16:13:02', NULL, '2017-01-10 11:31:14', 1),
(71, 'VNL-GGN-0898', 'R. Vijaya Kumar', NULL, 'Quality', NULL, 'r.kumar@vnl.in', 'r_vijaya_kumar', 'user@123', 'VNL-GGN-0794', 'VNL-GGN-0792', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-05-17 14:39:30', NULL, '2017-01-10 11:31:14', 1),
(72, 'VNL-GGN-1141', 'Rahul Kumar', NULL, 'Scm And Manufacturing', NULL, 'rahul.kumar@vnl.in', 'rahul_kumar', 'user@123', 'VNL-GGN-0236', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-05-17 14:39:30', NULL, '2017-01-10 11:31:14', 1),
(73, 'VNL-GGN-0912', 'Raj Karan', NULL, 'Radio And Repeater', NULL, 'raj.karan@vnl.in', 'raj_karan', 'user@123', 'VNL-GGN-0837', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-05-17 14:39:30', NULL, '2017-01-10 11:31:14', 1),
(74, 'VNL-GGN-0832', 'Raj Kumar', NULL, 'Scm And Manufacturing', NULL, 'raj2.kumar@vnl.in', 'raj_kumar', 'user@123', 'VNL-GGN-0236', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-05-17 14:39:30', NULL, '2017-01-10 11:31:14', 1),
(75, 'VNL-GGN-0547', 'Rajender Singh', NULL, 'Store', NULL, 'rajender.singh@vnl.in', 'rajender_singh', 'user@123', 'VNL-GGN-0622', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-05-17 15:35:52', NULL, '2017-01-10 11:31:14', 1),
(76, 'VNL-GGN-1052', 'Rajendra Kumar Maurya', NULL, 'Scm And Manufacturing', NULL, 'rajendra.maurya@vnl.in', 'rajendra_maurya', 'user@123', 'VNL-GGN-0361', 'VNL-GGN-0494', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-05-25 10:04:31', NULL, '2017-01-10 11:31:14', 1),
(77, 'VNL-GGN-0793', 'Rajesh Kumar', NULL, 'Quality', NULL, 'rajesh.kumar@vnl.in', 'rajesh_kumar', 'user@123', 'VNL-GGN-0794', 'VNL-GGN-0792', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-05-25 11:17:01', NULL, '2017-01-10 11:31:14', 1),
(78, 'VNL-GGN-0985', 'Raju Verma', NULL, 'Radio And Repeater', NULL, 'raju.verma@vnl.in', 'raju_verma', 'user@123', 'VNL-GGN-0837', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-05-17 14:39:30', NULL, '2017-01-10 11:31:14', 1),
(79, 'VNL-GGN-0902', 'Rakesh Singh', NULL, 'Radio And Repeater', NULL, 'rakesh.singh@vnl.in', 'rakesh_singh', 'user@123', 'VNL-GGN-0901', 'VNL-GGN-0837', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-05-17 14:39:30', NULL, '2017-01-10 11:31:14', 1),
(80, 'VNL-GGN-1154', 'Ramanpreet Kaur', NULL, 'Scm And Manufacturing', NULL, 'ramanpret.kaur@vnl.in', 'ramanpreet_kaur', 'user@123', 'VNL-GGN-0361', 'VNL-GGN-0494', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-05-24 15:00:52', NULL, '2017-01-10 11:31:14', 1),
(81, 'VNL-GGN-0361', 'Ramesh Chandra Saxena', NULL, 'Scm And Manufacturing', NULL, 'ramesh.saxena@vnl.in', 'ramesh_saxena', 'user@123', 'VNL-GGN-0494', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 2, '2017-01-10 11:31:27', NULL, '2017-05-25 10:04:44', NULL, '2017-01-10 11:31:27', 1),
(82, 'VNL-GGN-0792', 'Ramvir Singh', NULL, 'Quality', NULL, 'ramvir.singh@vnl.in', 'ramvir_singh', 'user@123', 'VNL-GGN-0228', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 1, '2017-01-10 11:30:44', NULL, '2017-05-17 14:39:30', NULL, '2017-01-10 11:30:44', 1),
(83, 'VNL-GGN-1179', 'Ravi Kumar', NULL, 'Radio And Repeater', NULL, 'ravi.kumar@vnl.in', 'ravi_kumar', 'user@123', 'VNL-GGN-0835', 'VNL-GGN-0837', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-05-25 10:54:11', NULL, '2017-01-10 11:31:14', 1),
(84, 'VNL-GGN-0835', 'Ravinder Kumar', NULL, 'Radio And Repeater', NULL, 'ravinder.kumar@vnl.in', 'ravinder_kumar', 'user@123', 'VNL-GGN-0837', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 2, '2017-01-10 11:31:27', NULL, '2017-05-17 14:39:30', NULL, '2017-01-10 11:31:27', 1),
(85, 'VNL-GGN-1151', 'Sahil Verma', NULL, 'Scm And Manufacturing', NULL, 'sahil.verma@vnl.in', 'sahil_verma', 'user@123', 'VNL-GGN-0870', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-05-24 15:24:34', NULL, '2017-01-10 11:31:14', 1),
(86, 'VNL-GGN-0999', 'Sameer Yadav', NULL, 'Scm And Manufacturing', NULL, 'sameer.yadav@vnl.in', 'sameer_yadav', 'user@123', 'VNL-GGN-0973', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 3, '2017-02-08 12:24:01', NULL, '2017-05-17 14:17:29', NULL, '2017-02-08 12:24:01', 1),
(87, 'VNL-GGN-1106', 'Sandeep Dhama', NULL, 'Scm And Manufacturing', NULL, 'sandeep.dhama@vnl.in', 'sandeep_dhama', 'user@123', 'VNL-GGN-0361', 'VNL-GGN-0494', NULL, NULL, NULL, NULL, 3, '2017-02-08 12:20:19', NULL, '2017-05-24 15:03:50', NULL, '2017-02-08 12:20:19', 1),
(88, 'VNL-GGN-1142', 'Satinder Kumar', NULL, 'Scm And Manufacturing', NULL, 'satinder.kumar@vnl.in', 'satinder_kumar', 'user@123', 'VNL-GGN-0361', 'VNL-GGN-0494', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-05-24 15:03:54', NULL, '2017-01-10 11:31:14', 1),
(89, 'VNL-GGN-0940', 'Satish Chandra Sati', NULL, 'Radio And Repeater', NULL, 'satish.sati@vnl.in', 'satish_sati', 'user@123', 'VNL-GGN-0835', 'VNL-GGN-0837', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-05-25 10:07:11', NULL, '2017-01-10 11:31:14', 1),
(90, 'VNL-GGN-0955', 'Saurabh Chauhan', NULL, 'Scm And Manufacturing', NULL, 'saurabh.chauhan@vnl.in', 'saurabh_chauhan', 'user@123', 'VNL-GGN-0236', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-05-17 14:39:30', NULL, '2017-01-10 11:31:14', 1),
(91, 'VNL-GGN-1124', 'Seha', NULL, 'Scm And Manufacturing', NULL, 'seha@vnl.in', 'seha', 'user@123', 'VNL-GGN-0236', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-05-17 14:39:30', NULL, '2017-01-10 11:31:14', 1),
(92, 'VNL-GGN-1012', 'Shiv Kumar', NULL, 'Quality', NULL, 'shiv.kumar@vnl.in', 'shiv_kumar', 'user@123', 'VNL-GGN-1011', 'VNL-GGN-0792', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-05-17 14:39:30', NULL, '2017-01-10 11:31:14', 1),
(93, 'VNL-GGN-0896', 'Shiv Narain Singh', NULL, 'Radio And Repeater', NULL, 'shiv.singh@vnl.in', 'shiv_singh', 'user@123', 'VNL-GGN-0901', 'VNL-GGN-0837', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-05-25 10:07:52', NULL, '2017-01-10 11:31:14', 1),
(94, 'VNL-GGN-0917', 'Sharvan Kumar Maurya', NULL, 'Scm And Manufacturing', NULL, 'sharvan.maurya@vnl.in', 'sharvan_maurya', 'user@123', 'VNL-GGN-0361', 'VNL-GGN-0494', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-05-25 10:08:03', NULL, '2017-01-10 11:31:14', 1),
(95, 'VNL-GGN-0795', 'Shyam Prakash Sharma', NULL, 'Quality', NULL, 'shyam.sharma@vnl.in', 'shyam_sharma', 'user@123', 'VNL-GGN-0792', 'VNL-GGN-0792', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-05-25 10:08:22', NULL, '2017-01-10 11:31:14', 1),
(96, 'VNL-GGN-1097', 'Sorabh', NULL, 'Scm And Manufacturing', NULL, 'sorabh@vnl.in', 'sorabh', 'user@123', 'VNL-GGN-0870', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-05-24 15:20:54', NULL, '2017-01-10 11:31:14', 1),
(97, 'VNL-GGN-0494', 'Sunil Joshi', NULL, 'Scm And Manufacturing', NULL, 'sunil.joshi@vnl.in', 'sunil_joshi', 'user@123', 'VNL-GGN-0228', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 1, '2017-02-08 12:36:14', NULL, '2017-05-25 08:47:20', NULL, '2017-02-08 12:36:14', 1),
(98, 'VNL-GGN-0925', 'Sunil Kumar', NULL, 'Scm And Manufacturing', NULL, NULL, 'sunil_kumar', 'user@123', 'VNL-GGN-0494', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-05-17 14:24:52', NULL, '2017-01-10 11:31:14', 0),
(99, 'VNL-GGN-0622', 'Sunil Mittal', NULL, 'Store', NULL, 'sunil.mittal@vnl.in', 'sunil_mittal', 'user@123', 'VNL-GGN-0228', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 2, '2017-01-10 11:31:27', NULL, '2017-05-17 14:39:30', NULL, '2017-01-10 11:31:27', 1),
(100, 'VNL-GGN-0087', 'Surender Sharma', NULL, 'Scm And Manufacturing', NULL, 'surendra1.sharma@vnl.in', 'surender_sharma', 'user@123', 'VNL-GGN-0236', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 2, '2017-01-10 11:31:14', NULL, '2017-05-25 08:49:39', NULL, '2017-01-10 11:31:14', 1),
(101, 'VNL-GGN-0904', 'Surender Singh', NULL, 'Radio And Repeater', NULL, 'surender.singh@vnl.in', 'surender_singh', 'user@123', 'VNL-GGN-0901', 'VNL-GGN-0837', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-05-25 10:55:59', NULL, '2017-01-10 11:31:14', 1),
(102, 'VNL-GGN-1069', 'Sushil Kumar', NULL, 'Radio And Repeater', NULL, 'sushil.kumar@vnl.in', 'sushil_kumar', 'user@123', 'VNL-GGN-0835', 'VNL-GGN-0837', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-05-17 14:39:30', NULL, '2017-01-10 11:31:14', 1),
(103, 'VNL-GGN-0829', 'T. Balasubramanian', NULL, 'Scm And Manufacturing', NULL, 't.bala@vnl.in', 't_balasubramanian', 'user@123', 'VNL-GGN-0381', 'VNL-GGN-0236', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-05-24 16:05:26', NULL, '2017-01-10 11:31:14', 1),
(104, 'VNL-GGN-1169', 'Tanuj Saklani', NULL, 'Scm And Manufacturing', NULL, 'tanuj.saklani@shyamtelecom.com', 'tanuj_saklani', 'user@123', 'VNL-GGN-0870', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-05-24 15:21:46', NULL, '2017-01-10 11:31:14', 1),
(105, 'VNL-GGN-1098', 'Upendra Chauhan', NULL, 'Scm And Manufacturing', NULL, 'upendra.chauhan@vnl.in', 'upendra_chauhan', 'user@123', 'VNL-GGN-0361', 'VNL-GGN-0494', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-05-24 15:07:55', NULL, '2017-01-10 11:31:14', 1),
(106, 'VNL-GGN-0937', 'Vinod', NULL, 'Scm And Manufacturing', NULL, 'vinod.dagar@vnl.in', 'vinod', 'user@123', 'VNL-GGN-0236', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-05-24 14:46:50', NULL, '2017-01-10 11:31:14', 1),
(107, 'VNL-GGN-0877', 'Vinod Kumar', NULL, 'Quality', NULL, 'vinod1.kumar@vnl.in', 'vinod_kumar', 'user@123', 'VNL-GGN-0794', 'VNL-GGN-0792', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-05-17 14:39:30', NULL, '2017-01-10 11:31:14', 1),
(108, 'VNL-GGN-1051', 'Vipin Kumar', NULL, 'Scm And Manufacturing', NULL, 'vipin1.kumar@vnl.in', 'vipin_kumar', 'user@123', 'VNL-GGN-0870', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-05-24 15:22:28', NULL, '2017-01-10 11:31:14', 1),
(109, 'VNL-GGN-0899', 'Virendra Singh Rawat', NULL, 'Radio And Repeater', NULL, 'virendra.rawat@vnl.in', 'virendra_rawat', 'user@123', 'VNL-GGN-0837', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-05-25 10:08:56', NULL, '2017-01-10 11:31:14', 1),
(110, 'VNL-GGN-1050', 'Vishesh Rai', NULL, 'Scm And Manufacturing', NULL, 'vishesh.rai@vnl.in', 'vishesh_rai', 'user@123', 'VNL-GGN-0870', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-05-24 15:23:53', NULL, '2017-01-10 11:31:14', 1),
(111, 'VNL-GGN-0910', 'Yogesh Chand Sharma', NULL, 'Radio And Repeater', NULL, 'yogesh.sharma@vnl.in', 'yogesh_sharma', 'user@123', 'VNL-GGN-0837', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-05-25 10:09:06', NULL, '2017-01-10 11:31:14', 1),
(112, 'VNL-GGN-1194', 'Komal Verma', NULL, 'Quality', NULL, 'komal.verma@vnl.in', 'komal_verma', 'user@123', 'VNL-GGN-0794', 'VNL-GGN-0792', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-05-17 14:39:30', NULL, '2017-01-10 11:31:14', 1),
(113, 'VNL-GGN-1167', 'Priyanka Chaurasiya', NULL, 'Scm And Manufacturing', NULL, 'priyanka.chaurasiya@vnl.in', 'priyanka_chaurasiya', 'user@123', 'VNL-GGN-0236', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-05-17 14:39:30', NULL, '2017-01-10 11:31:14', 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
