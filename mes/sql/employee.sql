-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 21, 2017 at 11:28 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `MES`
--

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE IF NOT EXISTS `employee` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `EmpID` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Email` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ReportingManager` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ReportingHead` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Department` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Status` int(1) NOT NULL DEFAULT '1' COMMENT '0 - Inactive, 1 - Active',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=114 ;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`ID`, `EmpID`, `Name`, `Email`, `ReportingManager`, `ReportingHead`, `Department`, `Status`) VALUES
(1, 'VNL-GGN-1081', 'Abhishek Yadav', NULL, 'VNL-GGN-0361', 'VNL-GGN-0228', 'Scm And Manufacturing', 0),
(2, 'VNL-GGN-0236', 'Ajay Kumar Tyagi', 'ajay.tyagi@vnl.in', 'VNL-GGN-0228', 'VNL-GGN-0228', 'Scm And Manufacturing', 1),
(3, 'VNL-GGN-0993', 'Ajeet Singh', 'ajit2.singh@vnl.in', 'VNL-GGN-0870', 'VNL-GGN-0228', 'Scm And Manufacturing', 1),
(4, 'VNL-GGN-1147', 'Ajuvendra Singh', 'ajuvendra.singh@vnl.in', 'VNL-GGN-1011', 'VNL-GGN-0792', 'Quality', 1),
(5, 'VNL-GGN-0837', 'Alok Sharma', 'alok.sharma@vnl.in', 'VNL-GGN-0228', 'VNL-GGN-0228', 'Radio And Repeater', 1),
(6, 'VNL-GGN-0903', 'Amit Kumar Jain', 'amit.jain@vnl.in', 'VNL-GGN-0901', 'VNL-GGN-0837', 'Radio And Repeater', 1),
(7, 'VNL-GGN-1011', 'Amit Kumar Sharma', 'amit1.sharma@vnl.in', 'VNL-GGN-0792', 'VNL-GGN-0792', 'Quality', 1),
(8, 'VNL-GGN-0920', 'Anil Kumar', 'anil.kumar@vnl.in', 'VNL-GGN-0835', 'VNL-GGN-0837', 'Radio And Repeater', 1),
(9, 'VNL-GGN-0827', 'Anil Kumar Gulati', 'anil.gulati@vnl.in', 'VNL-GGN-0901', 'VNL-GGN-0837', 'Radio And Repeater', 1),
(10, 'VNL-GGN-1125', 'Ankit Pant', NULL, 'VNL-GGN-0236', 'VNL-GGN-0228', 'Scm And Manufacturing', 0),
(11, 'VNL-GGN-1102', 'Arjun Singh', 'arjun.singh@vnl.in', 'VNL-GGN-0870', 'VNL-GGN-0228', 'Scm And Manufacturing', 1),
(12, 'VNL-GGN-0268', 'Arun Kumar Shukla', 'arun.shukla@vnl.in', 'VNL-GGN-0622', 'VNL-GGN-0228', 'Scm And Manufacturing', 1),
(13, 'VNL-GGN-0228', 'Ashish Kr. Verma', 'ashish.verma@vnl.in', 'VNL-GGN-0228', 'VNL-GGN-0228', 'Scm And Manufacturing', 1),
(14, 'VNL-GGN-0965', 'Ashok Pal', 'ashok.pal@vnl.in', 'VNL-GGN-0792', 'VNL-GGN-0792', 'Quality', 1),
(15, 'VNL-GGN-1110', 'Ashutosh Kumar', 'ashutosh.kumar@vnl.in', 'VNL-GGN-0973', 'VNL-GGN-0228', 'Scm And Manufacturing', 1),
(16, 'VNL-GGN-1096', 'Basil Joy', NULL, 'VNL-GGN-0494', 'VNL-GGN-0228', 'Scm And Manufacturing', 0),
(17, 'VNL-GGN-0994', 'Bhupendra Kumar', 'bhupendra.kumar@vnl.in', 'VNL-GGN-0087', 'VNL-GGN-0236', 'Scm And Manufacturing', 1),
(18, 'VNL-GGN-0963', 'Brijpal Singh Rawat', 'brijpal.rawat@vnl.in', 'VNL-GGN-0835', 'VNL-GGN-0837', 'Radio And Repeater', 1),
(19, 'VNL-GGN-1016', 'Cheol Hee Lee', NULL, 'VNL-GGN-0228', 'VNL-GGN-0228', 'Scm And Manufacturing', 0),
(20, 'VNL-GGN-1059', 'Deepak', NULL, 'VNL-GGN-0835', 'VNL-GGN-0837', 'Radio And Repeater', 0),
(21, 'VNL-GGN-1140', 'Deepak Kumar', 'deepak.kumar@vnl.in', 'VNL-GGN-0870', 'VNL-GGN-0228', 'Scm And Manufacturing', 1),
(22, 'VNL-GGN-0861', 'Dushyant Kumar', 'dushyant.kumar@vnl.in', 'VNL-GGN-0622', 'VNL-GGN-0228', 'Store', 1),
(23, 'VNL-GGN-0961', 'Faijal Ali', 'faijal.ali@vnl.in', 'VNL-GGN-0361', 'VNL-GGN-0494', 'Scm And Manufacturing', 1),
(24, 'VNL-GGN-1162', 'Gautam Kumar', 'gautam.kumar@vnl.in', 'VNL-GGN-0622', 'VNL-GGN-0228', 'Scm And Manufacturing', 1),
(25, 'VNL-GGN-0944', 'Gurdeep Singh Drall', 'gurdeep.drall@vnl.in', 'VNL-GGN-0361', 'VNL-GGN-0494', 'Scm And Manufacturing', 1),
(26, 'VNL-GGN-0979', 'Harpal Yadav', 'harpal.yadav@vnl.in', 'VNL-GGN-0622', 'VNL-GGN-0228', 'Store', 1),
(27, 'VNL-GGN-0794', 'J. Kishore Babu', 'kishore.babu@vnl.in', 'VNL-GGN-0792', 'VNL-GGN-0792', 'Quality', 1),
(28, 'VNL-GGN-0915', 'Jagdish', 'jagdish.kumar@vnl.in', 'VNL-GGN-0622', 'VNL-GGN-0228', 'Store', 1),
(29, 'VNL-GGN-1070', 'Jitender', 'jitender@vnl.in', 'VNL-GGN-0835', 'VNL-GGN-0837', 'Radio And Repeater', 1),
(30, 'VNL-GGN-0973', 'Jitender Uppal', 'jitender.uppal@vnl.in', 'VNL-GGN-0228', 'VNL-GGN-0228', 'Scm And Manufacturing', 1),
(31, 'VNL-GGN-0839', 'Kapil Kumar Tyagi', 'kapil.tyagi@vnl.in', 'VNL-GGN-0835', 'VNL-GGN-0837', 'Radio And Repeater', 1),
(32, 'VNL-GGN-0981', 'Karan Singh', 'karan.singh@vnl.in', 'VNL-GGN-0622', 'VNL-GGN-0228', 'Store', 1),
(33, 'VNL-GGN-0962', 'Krishan Kumar', 'krishan1.kumar@vnl.in', NULL, NULL, 'Scm And Manufacturing', 1),
(34, 'VNL-GGN-0894', 'Kuldeep Gupta', 'kuldeep.gupta@vnl.in', 'VNL-GGN-0494', 'VNL-GGN-0228', 'Scm And Manufacturing', 1),
(35, 'VNL-GGN-0900', 'Kunwar Singh Negi', 'kunwar.negi@vnl.in', 'VNL-GGN-0835', 'VNL-GGN-0837', 'Radio And Repeater', 1),
(36, 'VNL-GGN-0733', 'Lakhan Lal', 'lakhan.lal@vnl.in', 'VNL-GGN-0381', 'VNL-GGN-0228', 'Scm And Manufacturing', 1),
(37, 'VNL-GGN-0936', 'Lalit Mohan Sanwal', 'lalit.sanwal@vnl.in', 'VNL-GGN-0381', 'VNL-GGN-0236', 'Scm And Manufacturing', 1),
(38, 'VNL-GGN-0907', 'Lalita Singh', 'lalita.singh@vnl.in', 'VNL-GGN-0901', 'VNL-GGN-0837', 'Radio And Repeater', 1),
(39, 'VNL-GGN-0908', 'Laveesh Kumar Aggarwal', 'laveesh.kumar@vnl.in', 'VNL-GGN-0901', 'VNL-GGN-0837', 'Radio And Repeater', 1),
(40, 'VNL-GGN-0905', 'Lokesh Saraswat', 'lokesh.saraswat@vnl.in', 'VNL-GGN-0901', 'VNL-GGN-0837', 'Radio And Repeater', 1),
(41, 'VNL-GGN-0381', 'Mahesh Chander', 'mahesh.chander@vnl.in', 'VNL-GGN-0236', 'VNL-GGN-0228', 'Scm And Manufacturing', 1),
(42, 'VNL-GGN-0911', 'Mahesh Chandra', 'mahesh.chandra@vnl.in', 'VNL-GGN-0837', 'VNL-GGN-0228', 'Radio And Repeater', 1),
(43, 'VNL-GGN-0887', 'Maheshwar Prasad Bhatt', 'mp.bhatt@vnl.in', 'Deepak Gupta', 'Deepak Gupta', 'Logistic', 1),
(44, 'VNL-GGN-1058', 'Manish Berwal', 'manish.berwel@vnl.in', 'VNL-GGN-1011', 'VNL-GGN-0792', 'Quality', 1),
(45, 'VNL-GGN-0901', 'Manish Kumar Goyal', 'manish.goyal@vnl.in', 'VNL-GGN-0837', 'VNL-GGN-0228', 'Radio And Repeater', 1),
(46, 'VNL-GGN-0893', 'Manoj Kumar', 'manoj.roy@vnl.in', 'VNL-GGN-0870', 'VNL-GGN-0228', 'Scm And Manufacturing', 1),
(47, 'VNL-GGN-0926', 'Manoj Kumar', NULL, 'VNL-GGN-0792', 'VNL-GGN-0792', 'Quality', 0),
(48, 'VNL-GGN-1114', 'Mohit Gupta', 'mohit.gupta@vnl.in', 'VNL-GGN-0870', 'VNL-GGN-0228', 'Scm And Manufacturing', 1),
(49, 'VNL-GGN-0836', 'Naresh Kumar', 'naresh.kumar@vnl.in', 'VNL-GGN-0837', 'VNL-GGN-0228', 'Radio And Repeater', 1),
(50, 'VNL-GGN-0957', 'Naresh Kumar', 'naresh2.kumar@vnl.in', 'VNL-GGN-0622', 'VNL-GGN-0228', 'Store', 1),
(51, 'VNL-GGN-0972', 'Narinder Singh', 'narinder.singh@vnl.in', NULL, NULL, 'Scm And Manufacturing', 1),
(52, 'VNL-GGN-1100', 'Neeraj', NULL, 'VNL-GGN-0494', 'VNL-GGN-0228', 'Scm And Manufacturing', 0),
(53, 'VNL-GGN-0977', 'Neeraj Verma', 'neeraj.verma@vnl.in', 'VNL-GGN-0870', 'VNL-GGN-0228', 'Scm And Manufacturing', 1),
(54, 'VNL-GGN-0906', 'Neha Mehta', 'neha.mehta@vnl.in', 'VNL-GGN-0901', 'VNL-GGN-0837', 'Radio And Repeater', 1),
(55, 'VNL-GGN-1104', 'Nitin Sehrawat', 'nitin.sehrawat@vnl.in', 'VNL-GGN-0361', 'VNL-GGN-0494', 'Scm And Manufacturing', 1),
(56, 'VNL-GGN-0921', 'Nityanand Mishra', 'nityanand.mishra@vnl.in', 'VNL-GGN-0870', 'VNL-GGN-0228', 'Scm And Manufacturing', 1),
(57, 'VNL-GGN-1105', 'Pankaj Kumar', 'pankaj3.kumar@vnl.in', 'VNL-GGN-0835', 'VNL-GGN-0837', 'Radio And Repeater', 1),
(58, 'VNL-GGN-0930', 'Pankaj Oberoi', NULL, 'VNL-GGN-0494', 'VNL-GGN-0228', 'Scm And Manufacturing', 0),
(59, 'VNL-GGN-0838', 'Pankaj Upadhyay', 'pankaj.upadhyay@vnl.in', 'VNL-GGN-0835', 'VNL-GGN-0837', 'Radio And Repeater', 1),
(60, 'VNL-GGN-0929', 'Parmod Kumar', 'parmod.kumar@vnl.in', 'VNL-GGN-0835', 'VNL-GGN-0837', 'Radio And Repeater', 1),
(61, 'VNL-GGN-0897', 'Partha Pratim Chattoraj', 'partha.chattoraj@vnl.in', 'VNL-GGN-0901', 'VNL-GGN-0837', 'Radio And Repeater', 1),
(62, 'VNL-GGN-0870', 'Parveen Kumar', 'parveen.mangal@vnl.in', 'VNL-GGN-0228', 'VNL-GGN-0228', 'Scm And Manufacturing', 1),
(63, 'VNL-GGN-0964', 'Pawan Kumar', 'pawan.kumar@vnl.in', 'VNL-GGN-0622', 'VNL-GGN-0228', 'Store', 1),
(64, 'VNL-GGN-1101', 'Poonam Gupta', 'poonam.gupta@vnl.in', 'VNL-GGN-0870', 'VNL-GGN-0228', 'Scm And Manufacturing', 1),
(65, 'VNL-GGN-1107', 'Pradip Kumar', 'pradip.kumar@vnl.in', 'VNL-GGN-0870', 'VNL-GGN-0228', 'Scm And Manufacturing', 1),
(66, 'VNL-GGN-1080', 'Prashant Kumar Doove', 'prashant.doobe@vnl.in', 'VNL-GGN-0494', 'VNL-GGN-0228', 'Scm And Manufacturing', 1),
(67, 'VNL-GGN-1143', 'Prashant Kumar Jha', 'prashant.jha@vnl.in', 'VNL-GGN-1011', 'VNL-GGN-0792', 'Quality', 1),
(68, 'VNL-GGN-1103', 'Prateek Satija', 'prateek.satija@vnl.in', 'VNL-GGN-0361', 'VNL-GGN-0494', 'Scm And Manufacturing', 1),
(69, 'VNL-GGN-0978', 'Praveen Kumar', 'praveen1.kumar@vnl.in', 'VNL-GGN-0381', 'VNL-GGN-0236', 'Scm And Manufacturing', 1),
(70, 'VNL-GGN-1111', 'Pravesh', 'pravesh@vnl.in', 'VNL-GGN-0087', 'VNL-GGN-0236', 'Scm And Manufacturing', 1),
(71, 'VNL-GGN-0898', 'R. Vijaya Kumar', 'r.kumar@vnl.in', 'VNL-GGN-0794', 'VNL-GGN-0792', 'Quality', 1),
(72, 'VNL-GGN-1141', 'Rahul Kumar', 'rahul.kumar@vnl.in', 'VNL-GGN-0236', 'VNL-GGN-0228', 'Scm And Manufacturing', 1),
(73, 'VNL-GGN-0912', 'Raj Karan', 'raj.karan@vnl.in', 'VNL-GGN-0837', 'VNL-GGN-0228', 'Radio And Repeater', 1),
(74, 'VNL-GGN-0832', 'Raj Kumar', 'raj2.kumar@vnl.in', 'VNL-GGN-0236', 'VNL-GGN-0228', 'Scm And Manufacturing', 1),
(75, 'VNL-GGN-0547', 'Rajender Singh', 'rajender.singh@vnl.in', 'VNL-GGN-0622', 'VNL-GGN-0228', 'Store', 1),
(76, 'VNL-GGN-1052', 'Rajendra Kumar Maurya', 'rajendra.maurya@vnl.in', 'VNL-GGN-0361', 'VNL-GGN-0494', 'Scm And Manufacturing', 1),
(77, 'VNL-GGN-0793', 'Rajesh Kumar', 'rajesh.kumar@vnl.in', 'VNL-GGN-0794', 'VNL-GGN-0792', 'Quality', 1),
(78, 'VNL-GGN-0985', 'Raju Verma', 'raju.verma@vnl.in', 'VNL-GGN-0837', 'VNL-GGN-0228', 'Radio And Repeater', 1),
(79, 'VNL-GGN-0902', 'Rakesh Singh', 'rakesh.singh@vnl.in', 'VNL-GGN-0901', 'VNL-GGN-0837', 'Radio And Repeater', 1),
(80, 'VNL-GGN-1154', 'Ramanpreet Kaur', 'ramanpret.kaur@vnl.in', 'VNL-GGN-0361', 'VNL-GGN-0494', 'Scm And Manufacturing', 1),
(81, 'VNL-GGN-0361', 'Ramesh Chandra Saxena', 'ramesh.saxena@vnl.in', 'VNL-GGN-0494', 'VNL-GGN-0228', 'Scm And Manufacturing', 1),
(82, 'VNL-GGN-0792', 'Ramvir Singh', 'ramvir.singh@vnl.in', 'VNL-GGN-0228', 'VNL-GGN-0228', 'Quality', 1),
(83, 'VNL-GGN-1179', 'Ravi Kumar', 'ravi.kumar@vnl.in', 'VNL-GGN-0835', 'VNL-GGN-0837', 'Radio And Repeater', 1),
(84, 'VNL-GGN-0835', 'Ravinder Kumar', 'ravinder.kumar@vnl.in', 'VNL-GGN-0837', 'VNL-GGN-0228', 'Radio And Repeater', 1),
(85, 'VNL-GGN-1151', 'Sahil Verma', 'sahil.verma@vnl.in', 'VNL-GGN-0870', 'VNL-GGN-0228', 'Scm And Manufacturing', 1),
(86, 'VNL-GGN-0999', 'Sameer Yadav', 'sameer.yadav@vnl.in', 'VNL-GGN-0973', 'VNL-GGN-0228', 'Scm And Manufacturing', 1),
(87, 'VNL-GGN-1106', 'Sandeep Dhama', 'sandeep.dhama@vnl.in', 'VNL-GGN-0361', 'VNL-GGN-0494', 'Scm And Manufacturing', 1),
(88, 'VNL-GGN-1142', 'Satinder Kumar', 'satinder.kumar@vnl.in', 'VNL-GGN-0361', 'VNL-GGN-0494', 'Scm And Manufacturing', 1),
(89, 'VNL-GGN-0940', 'Satish Chandra Sati', 'satish.sati@vnl.in', 'VNL-GGN-0835', 'VNL-GGN-0837', 'Radio And Repeater', 1),
(90, 'VNL-GGN-0955', 'Saurabh Chauhan', 'saurabh.chauhan@vnl.in', 'VNL-GGN-0236', 'VNL-GGN-0228', 'Scm And Manufacturing', 1),
(91, 'VNL-GGN-1124', 'Seha', 'seha@vnl.in', 'VNL-GGN-0236', 'VNL-GGN-0228', 'Scm And Manufacturing', 1),
(92, 'VNL-GGN-1012', 'Shiv Kumar', 'shiv.kumar@vnl.in', 'VNL-GGN-1011', 'VNL-GGN-0792', 'Quality', 1),
(93, 'VNL-GGN-0896', 'Shiv Narain Singh', 'shiv.singh@vnl.in', 'VNL-GGN-0901', 'VNL-GGN-0837', 'Radio And Repeater', 1),
(94, 'VNL-GGN-0917', 'Sharvan Kumar Maurya', 'sharvan.maurya@vnl.in', 'VNL-GGN-0361', 'VNL-GGN-0494', 'Scm And Manufacturing', 1),
(95, 'VNL-GGN-0795', 'Shyam Prakash Sharma', 'shyam.sharma@vnl.in', 'VNL-GGN-0792', 'VNL-GGN-0792', 'Quality', 1),
(96, 'VNL-GGN-1097', 'Sorabh', 'sorabh@vnl.in', 'VNL-GGN-0870', 'VNL-GGN-0228', 'Scm And Manufacturing', 1),
(97, 'VNL-GGN-0494', 'Sunil Joshi', 'sunil.joshi@vnl.in', 'VNL-GGN-0228', 'VNL-GGN-0228', 'Scm And Manufacturing', 1),
(98, 'VNL-GGN-0925', 'Sunil Kumar', NULL, 'VNL-GGN-0494', 'VNL-GGN-0228', 'Scm And Manufacturing', 0),
(99, 'VNL-GGN-0622', 'Sunil Mittal', 'sunil.mittal@vnl.in', 'VNL-GGN-0228', 'VNL-GGN-0228', 'Store', 1),
(100, 'VNL-GGN-0087', 'Surender Sharma', 'surendra1.sharma@vnl.in', 'VNL-GGN-0236', 'VNL-GGN-0228', 'Scm And Manufacturing', 1),
(101, 'VNL-GGN-0904', 'Surender Singh', 'surender.singh@vnl.in', 'VNL-GGN-0901', 'VNL-GGN-0837', 'Radio And Repeater', 1),
(102, 'VNL-GGN-1069', 'Sushil Kumar', 'sushil.kumar@vnl.in', 'VNL-GGN-0835', 'VNL-GGN-0837', 'Radio And Repeater', 1),
(103, 'VNL-GGN-0829', 'T. Balasubramanian', 't.bala@vnl.in', 'VNL-GGN-0381', 'VNL-GGN-0236', 'Scm And Manufacturing', 1),
(104, 'VNL-GGN-1169', 'Tanuj Saklani', 'tanuj.saklani@shyamtelecom.com', 'VNL-GGN-0870', 'VNL-GGN-0228', 'Scm And Manufacturing', 1),
(105, 'VNL-GGN-1098', 'Upendra Chauhan', 'upendra.chauhan@vnl.in', 'VNL-GGN-0361', 'VNL-GGN-0494', 'Scm And Manufacturing', 1),
(106, 'VNL-GGN-0937', 'Vinod', 'vinod.dagar@vnl.in', 'VNL-GGN-0236', 'VNL-GGN-0228', 'Scm And Manufacturing', 1),
(107, 'VNL-GGN-0877', 'Vinod Kumar', 'vinod1.kumar@vnl.in', 'VNL-GGN-0794', 'VNL-GGN-0792', 'Quality', 1),
(108, 'VNL-GGN-1051', 'Vipin Kumar', 'vipin1.kumar@vnl.in', 'VNL-GGN-0870', 'VNL-GGN-0228', 'Scm And Manufacturing', 1),
(109, 'VNL-GGN-0899', 'Virendra Singh Rawat', 'virendra.rawat@vnl.in', 'VNL-GGN-0837', 'VNL-GGN-0228', 'Radio And Repeater', 1),
(110, 'VNL-GGN-1050', 'Vishesh Rai', 'vishesh.rai@vnl.in', 'VNL-GGN-0870', 'VNL-GGN-0228', 'Scm And Manufacturing', 1),
(111, 'VNL-GGN-0910', 'Yogesh Chand Sharma', 'yogesh.sharma@vnl.in', 'VNL-GGN-0837', 'VNL-GGN-0228', 'Radio And Repeater', 1),
(112, 'VNL-GGN-1194', 'Komal Verma', 'komal.verma@vnl.in', 'VNL-GGN-0794', 'VNL-GGN-0792', 'Quality', 1),
(113, 'VNL-GGN-1167', 'Priyanka Chaurasiya', 'priyanka.chaurasiya@vnl.in', 'VNL-GGN-0236', 'VNL-GGN-0228', 'Scm And Manufacturing', 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
