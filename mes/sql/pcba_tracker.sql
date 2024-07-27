-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 21, 2017 at 07:05 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `EMS`
--

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE IF NOT EXISTS `pcbatracker_employee` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `EmpID` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ReportingManager` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ReportingHead` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Department` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=112 ;

--
-- Dumping data for table `employee`
--

INSERT INTO `pcbatracker_employee` (`ID`, `EmpID`, `Name`, `ReportingManager`, `ReportingHead`, `Department`) VALUES
(1, 'VNL-GGN-1081', 'Abhishek Yadav', 'VNL-GGN-0361', 'VNL-GGN-0228', 'SCM & Manufacturing'),
(2, 'VNL-GGN-0236', 'Ajay Kumar Tyagi', 'VNL-GGN-0228', 'VNL-GGN-0228', 'SCM & Manufacturing'),
(3, 'VNL-GGN-0993', 'Ajeet Singh', 'VNL-GGN-0494', 'VNL-GGN-0228', 'SCM & Manufacturing'),
(4, 'VNL-GGN-1147', 'Ajuvendra Singh', 'VNL-GGN-1011', 'VNL-GGN-0792', 'Quality'),
(5, 'VNL-GGN-0837', 'Alok Sharma', 'VNL-GGN-0228', 'VNL-GGN-0228', 'Radio & Reapeter'),
(6, 'VNL-GGN-0903', 'Amit Kumar Jain', 'VNL-GGN-0901', 'VNL-GGN-0837', 'Radio & Reapeter'),
(7, 'VNL-GGN-1011', 'Amit Kumar Sharma', 'VNL-GGN-0792', 'VNL-GGN-0792', 'Quality'),
(8, 'VNL-GGN-0920', 'Anil Kumar', 'VNL-GGN-0835', 'VNL-GGN-0837', 'Radio & Reapeter'),
(9, 'VNL-GGN-0827', 'Anil Kumar Gulati', 'VNL-GGN-0901', 'VNL-GGN-0837', 'Radio & Reapeter'),
(10, 'VNL-GGN-1125', 'Ankit Pant', 'VNL-GGN-0236', 'VNL-GGN-0228', 'SCM & Manufacturing'),
(11, 'VNL-GGN-1102', 'Arjun Singh', 'VNL-GGN-0494', 'VNL-GGN-0228', 'SCM & Manufacturing'),
(12, 'VNL-GGN-0268', 'Arun Kumar Shukla', 'VNL-GGN-0622', 'VNL-GGN-0228', 'SCM & Manufacturing'),
(13, 'VNL-GGN-0228', 'Ashish Kr. Verma', 'VNL-GGN-0228', 'VNL-GGN-0228', 'SCM & Manufacturing'),
(14, 'VNL-GGN-0965', 'Ashok Pal', 'VNL-GGN-0792', 'VNL-GGN-0792', 'Quality'),
(15, 'VNL-GGN-1110', 'Ashutosh Kumar', 'VNL-GGN-0494', 'VNL-GGN-0228', 'SCM & Manufacturing'),
(16, 'VNL-GGN-1096', 'Basil Joy', 'VNL-GGN-0494', 'VNL-GGN-0228', 'SCM & Manufacturing'),
(17, 'VNL-GGN-0994', 'Bhupender Kumar', 'VNL-GGN-0494', 'VNL-GGN-0228', 'SCM & Manufacturing'),
(18, 'VNL-GGN-0963', 'Brijpal Singh Rawat', 'VNL-GGN-0835', 'VNL-GGN-0837', 'Radio & Reapeter'),
(19, 'VNL-GGN-1016', 'Cheol Hee Lee', 'VNL-GGN-0228', 'VNL-GGN-0228', 'SCM & Manufacturing'),
(20, 'VNL-GGN-1059', 'Deepak ', 'VNL-GGN-0835', 'VNL-GGN-0837', 'Radio & Reapeter'),
(21, 'VNL-GGN-1140', 'Deepak Kumar', 'VNL-GGN-0494', 'VNL-GGN-0228', 'SCM & Manufacturing'),
(22, 'VNL-GGN-0861', 'Dushyant Kumar', 'VNL-GGN-0622', 'VNL-GGN-0228', 'Store'),
(23, 'VNL-GGN-0961', 'Faijal Ali', 'VNL-GGN-0381', 'VNL-GGN-0228', 'SCM & Manufacturing'),
(24, 'VNL-GGN-1162', 'Gautam Kumar', 'VNL-GGN-0622', 'VNL-GGN-0228', 'SCM & Manufacturing'),
(25, 'VNL-GGN-0944', 'Gurdeep Singh Drall', 'VNL-GGN-0361', 'VNL-GGN-0228', 'SCM & Manufacturing'),
(26, 'VNL-GGN-0979', 'Harpal Yadav', 'VNL-GGN-0622', 'VNL-GGN-0228', 'Store'),
(27, 'VNL-GGN-0794', 'J. Kishore Babu', 'VNL-GGN-0792', 'VNL-GGN-0792', 'Quality'),
(28, 'VNL-GGN-0915', 'Jagdish ', 'VNL-GGN-0622', 'VNL-GGN-0228', 'Store'),
(29, 'VNL-GGN-1070', 'Jitender ', 'VNL-GGN-0835', 'VNL-GGN-0837', 'Radio & Reapeter'),
(30, 'VNL-GGN-0973', 'Jitender Uppal', 'VNL-GGN-0228', 'VNL-GGN-0228', 'SCM & Manufacturing'),
(31, 'VNL-GGN-0839', 'Kapil Kumar Tyagi', 'VNL-GGN-0835', 'VNL-GGN-0837', 'Radio & Reapeter'),
(32, 'VNL-GGN-0981', 'Karan Singh', 'VNL-GGN-0622', 'VNL-GGN-0228', 'Store'),
(33, 'VNL-GGN-0962', 'Krishan Kumar', 'VNL-GGN-0381', 'VNL-GGN-0228', 'SCM & Manufacturing'),
(34, 'VNL-GGN-0894', 'Kuldeep Gupta', 'VNL-GGN-0494', 'VNL-GGN-0228', 'SCM & Manufacturing'),
(35, 'VNL-GGN-0900', 'Kunwar Singh Negi', 'VNL-GGN-0835', 'VNL-GGN-0837', 'Radio & Reapeter'),
(36, 'VNL-GGN-0733', 'Lakhan Lal', 'VNL-GGN-0381', 'VNL-GGN-0228', 'SCM & Manufacturing'),
(37, 'VNL-GGN-0936', 'Lalit Mohan Sanwal', 'VNL-GGN-0381', 'VNL-GGN-0228', 'SCM & Manufacturing'),
(38, 'VNL-GGN-0907', 'Lalita Singh', 'VNL-GGN-0901', 'VNL-GGN-0837', 'Radio & Reapeter'),
(39, 'VNL-GGN-0908', 'Laveesh Kumar Aggarwal', 'VNL-GGN-0901', 'VNL-GGN-0837', 'Radio & Reapeter'),
(40, 'VNL-GGN-0905', 'Lokesh Saraswat', 'VNL-GGN-0901', 'VNL-GGN-0837', 'Radio & Reapeter'),
(41, 'VNL-GGN-0381', 'Mahesh Chander', 'VNL-GGN-0236', 'VNL-GGN-0228', 'SCM & Manufacturing'),
(42, 'VNL-GGN-0911', 'Mahesh Chandra', 'VNL-GGN-0837', 'VNL-GGN-0228', 'Radio & Reapeter'),
(43, 'VNL-GGN-0887', 'Maheshwar Prasad Bhatt', 'Deepak Gupta', 'Deepak Gupta', 'Logistic'),
(44, 'VNL-GGN-1058', 'Manish Berwal', 'VNL-GGN-1011', 'VNL-GGN-0792', 'Quality'),
(45, 'VNL-GGN-0901', 'Manish Kumar Goyal', 'VNL-GGN-0837', 'VNL-GGN-0228', 'Radio & Reapeter'),
(46, 'VNL-GGN-0893', 'Manoj Kumar', 'VNL-GGN-0494', 'VNL-GGN-0228', 'SCM & Manufacturing'),
(47, 'VNL-GGN-0926', 'Manoj Kumar', 'VNL-GGN-0792', 'VNL-GGN-0792', 'Quality'),
(48, 'VNL-GGN-1114', 'Mohit Gupta', 'VNL-GGN-0494', 'VNL-GGN-0228', 'SCM & Manufacturing'),
(49, 'VNL-GGN-0836', 'Naresh Kumar', 'VNL-GGN-0837', 'VNL-GGN-0228', 'Radio & Reapeter'),
(50, 'VNL-GGN-0957', 'Naresh Kumar', 'VNL-GGN-0622', 'VNL-GGN-0228', 'Store'),
(51, 'VNL-GGN-0972', 'Narinder Singh', 'VNL-GGN-0381', 'VNL-GGN-0228', 'SCM & Manufacturing'),
(52, 'VNL-GGN-1100', 'Neeraj', 'VNL-GGN-0494', 'VNL-GGN-0228', 'SCM & Manufacturing'),
(53, 'VNL-GGN-0977', 'Neeraj Verma', 'VNL-GGN-0494', 'VNL-GGN-0228', 'SCM & Manufacturing'),
(54, 'VNL-GGN-0906', 'Neha Mehta', 'VNL-GGN-0901', 'VNL-GGN-0837', 'Radio & Reapeter'),
(55, 'VNL-GGN-1104', 'Nitin Sehrawat', 'VNL-GGN-0361', 'VNL-GGN-0228', 'SCM & Manufacturing'),
(56, 'VNL-GGN-0921', 'Nityanand Mishra', 'VNL-GGN-0494', 'VNL-GGN-0228', 'SCM & Manufacturing'),
(57, 'VNL-GGN-1105', 'Pankaj Kumar', 'VNL-GGN-0835', 'VNL-GGN-0837', 'Radio & Reapeter'),
(58, 'VNL-GGN-0930', 'Pankaj Oberoi', 'VNL-GGN-0494', 'VNL-GGN-0228', 'SCM & Manufacturing'),
(59, 'VNL-GGN-0838', 'Pankaj Upadhyay', 'VNL-GGN-0835', 'VNL-GGN-0837', 'Radio & Reapeter'),
(60, 'VNL-GGN-0929', 'Parmod Kumar', 'VNL-GGN-0835', 'VNL-GGN-0837', 'Radio & Reapeter'),
(61, 'VNL-GGN-0897', 'Partha Pratim Chattoraj', 'VNL-GGN-0901', 'VNL-GGN-0837', 'Radio & Reapeter'),
(62, 'VNL-GGN-0870', 'Parveen Kumar', 'VNL-GGN-0494', 'VNL-GGN-0228', 'SCM & Manufacturing'),
(63, 'VNL-GGN-0964', 'Pawan Kumar', 'VNL-GGN-0622', 'VNL-GGN-0228', 'Store'),
(64, 'VNL-GGN-1101', 'Poonam Gupta', 'VNL-GGN-0494', 'VNL-GGN-0228', 'SCM & Manufacturing'),
(65, 'VNL-GGN-1107', 'Pradip Kumar', 'VNL-GGN-0494', 'VNL-GGN-0228', 'SCM & Manufacturing'),
(66, 'VNL-GGN-1080', 'Prashant Kumar Doove', 'VNL-GGN-0494', 'VNL-GGN-0228', 'SCM & Manufacturing'),
(67, 'VNL-GGN-1143', 'Prashant Kumar Jha', 'VNL-GGN-1011', 'VNL-GGN-0792', 'Quality'),
(68, 'VNL-GGN-1103', 'Prateek Satija', 'VNL-GGN-0361', 'VNL-GGN-0228', 'SCM & Manufacturing'),
(69, 'VNL-GGN-0978', 'Praveen Kumar', 'VNL-GGN-0381', 'VNL-GGN-0228', 'SCM & Manufacturing'),
(70, 'VNL-GGN-1111', 'Pravesh', 'VNL-GGN-0494', 'VNL-GGN-0228', 'SCM & Manufacturing'),
(71, 'VNL-GGN-0898', 'R. Vijaya Kumar', 'VNL-GGN-0794', 'VNL-GGN-0792', 'Quality'),
(72, 'VNL-GGN-1141', 'Rahul Kumar', 'VNL-GGN-0236', 'VNL-GGN-0228', 'SCM & Manufacturing'),
(73, 'VNL-GGN-0912', 'Raj Karan', 'VNL-GGN-0837', 'VNL-GGN-0228', 'Radio & Reapeter'),
(74, 'VNL-GGN-0832', 'Raj Kumar', 'VNL-GGN-0236', 'VNL-GGN-0228', 'SCM & Manufacturing'),
(75, 'VNL-GGN-0547', 'Rajender Singh', 'VNL-GGN-0622', 'VNL-GGN-0228', 'Store'),
(76, 'VNL-GGN-1052', 'Rajendra Kumar Maurya ', 'VNL-GGN-0494', 'VNL-GGN-0228', 'SCM & Manufacturing'),
(77, 'VNL-GGN-0793', 'Rajesh Kumar', 'VNL-GGN-0794', 'VNL-GGN-0792', 'Quality'),
(78, 'VNL-GGN-0985', 'Raju Verma', 'VNL-GGN-0837', 'VNL-GGN-0228', 'Radio & Reapeter'),
(79, 'VNL-GGN-0902', 'Rakesh Singh', 'VNL-GGN-0901', 'VNL-GGN-0837', 'Radio & Reapeter'),
(80, 'VNL-GGN-1154', 'Ramanpreet Kaur', 'VNL-GGN-0494', 'VNL-GGN-0228', 'SCM & Manufacturing'),
(81, 'VNL-GGN-0361', 'Ramesh Chandra Saxena', 'VNL-GGN-0494', 'VNL-GGN-0228', 'SCM & Manufacturing'),
(82, 'VNL-GGN-0792', 'Ramvir Singh', 'VNL-GGN-0228', 'VNL-GGN-0228', 'Quality'),
(83, 'VNL-GGN-1179', 'Ravi Kumar', 'VNL-GGN-0835', 'VNL-GGN-0837', 'Radio & Reapeter'),
(84, 'VNL-GGN-0835', 'Ravinder Kumar', 'VNL-GGN-0837', 'VNL-GGN-0228', 'Radio & Reapeter'),
(85, 'VNL-GGN-1151', 'Sahil Verma', 'VNL-GGN-0494', 'VNL-GGN-0228', 'SCM & Manufacturing'),
(86, 'VNL-GGN-0999', 'Sameer Yadav', 'VNL-GGN-0973', 'VNL-GGN-0228', 'SCM & Manufacturing'),
(87, 'VNL-GGN-1106', 'Sandeep Dhama', 'VNL-GGN-0494', 'VNL-GGN-0228', 'SCM & Manufacturing'),
(88, 'VNL-GGN-1142', 'Satinder Kumar', 'VNL-GGN-0361', 'VNL-GGN-0228', 'SCM & Manufacturing'),
(89, 'VNL-GGN-0940', 'Satish Chandra Sati', 'VNL-GGN-0835', 'VNL-GGN-0837', 'Radio & Reapeter'),
(90, 'VNL-GGN-0955', 'Saurabh Chauhan', 'VNL-GGN-0236', 'VNL-GGN-0228', 'SCM & Manufacturing'),
(91, 'VNL-GGN-1124', 'Seha', 'VNL-GGN-0236', 'VNL-GGN-0228', 'SCM & Manufacturing'),
(92, 'VNL-GGN-1012', 'Shiv Kumar', 'VNL-GGN-1011', 'VNL-GGN-0792', 'Quality'),
(93, 'VNL-GGN-0896', 'Shiv Narain Singh', 'VNL-GGN-0901', 'VNL-GGN-0837', 'Radio & Reapeter'),
(94, 'VNL-GGN-0917', 'Shravan Kumar Maurya', 'VNL-GGN-0494', 'VNL-GGN-0228', 'SCM & Manufacturing'),
(95, 'VNL-GGN-0795', 'Shyam Prakash Sharma', 'VNL-GGN-0792', 'VNL-GGN-0792', 'Quality'),
(96, 'VNL-GGN-1097', 'Sorabh', 'VNL-GGN-0494', 'VNL-GGN-0228', 'SCM & Manufacturing'),
(97, 'VNL-GGN-0494', 'Sunil Joshi', 'VNL-GGN-0228', 'VNL-GGN-0228', 'SCM & Manufacturing'),
(98, 'VNL-GGN-0925', 'Sunil Kumar', 'VNL-GGN-0494', 'VNL-GGN-0228', 'SCM & Manufacturing'),
(99, 'VNL-GGN-0622', 'Sunil Mittal', 'VNL-GGN-0228', 'VNL-GGN-0228', 'Store'),
(100, 'VNL-GGN-0087', 'Surender Sharma', 'VNL-GGN-0236', 'VNL-GGN-0228', 'SCM & Manufacturing'),
(101, 'VNL-GGN-0904', 'Surender Singh', 'VNL-GGN-0901', 'VNL-GGN-0837', 'Radio & Reapeter'),
(102, 'VNL-GGN-1069', 'Sushil Kumar', 'VNL-GGN-0835', 'VNL-GGN-0837', 'Radio & Reapeter'),
(103, 'VNL-GGN-0829', 'T. Balasubramanian', 'VNL-GGN-0381', 'VNL-GGN-0228', 'SCM & Manufacturing'),
(104, 'VNL-GGN-1169', 'Tanuj Saklani', 'VNL-GGN-0236', 'VNL-GGN-0228', 'SCM & Manufacturing'),
(105, 'VNL-GGN-1098', 'Upendra Chauhan', 'VNL-GGN-0361', 'VNL-GGN-0228', 'SCM & Manufacturing'),
(106, 'VNL-GGN-0937', 'Vinod', 'VNL-GGN-0236', 'VNL-GGN-0228', 'SCM & Manufacturing'),
(107, 'VNL-GGN-0877', 'Vinod Kumar', 'VNL-GGN-0794', 'VNL-GGN-0792', 'Quality'),
(108, 'VNL-GGN-1051', 'Vipin Kumar', 'VNL-GGN-0494', 'VNL-GGN-0228', 'SCM & Manufacturing'),
(109, 'VNL-GGN-0899', 'Virendra Singh Rawat', 'VNL-GGN-0837', 'VNL-GGN-0228', 'Radio & Reapeter'),
(110, 'VNL-GGN-1050', 'Vishesh Rai', 'VNL-GGN-0494', 'VNL-GGN-0228', 'SCM & Manufacturing'),
(111, 'VNL-GGN-0910', 'Yogesh Chand Sharma', 'VNL-GGN-0837', 'VNL-GGN-0228', 'Radio & Reapeter');

-- --------------------------------------------------------

--
-- Table structure for table `employee_sheet`
--

CREATE TABLE IF NOT EXISTS `pcbatracker_employee_sheet` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `EmpID` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ReportingManager` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ReportingHead` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Department` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=144 ;

--
-- Dumping data for table `employee_sheet`
--

INSERT INTO `pcbatracker_employee_sheet` (`ID`, `EmpID`, `Name`, `ReportingManager`, `ReportingHead`, `Department`) VALUES
(1, 'VNL-GGN-0087', 'Surender Sharma', 'Ajay Kumar Tyagi', 'Ashish Kr. Verma', 'SCM & Manufacturing'),
(2, 'VNL-GGN-0228', 'Ashish Kr. Verma', 'B. S. Yadav', 'B. S. Yadav', 'SCM & Manufacturing'),
(3, 'VNL-GGN-0236', 'Ajay Kumar Tyagi', 'Ashish Kr. Verma', 'Ashish Kr. Verma', 'SCM & Manufacturing'),
(4, 'VNL-GGN-0268', 'Arun Kumar Shukla', 'Sunil Mittal', 'Ashish Kr. Verma', 'SCM & Manufacturing'),
(5, 'VNL-GGN-0291', 'Narender Singh Chhikara', 'B. S. Yadav', 'B. S. Yadav', 'HR & Admin.'),
(6, 'VNL-GGN-0361', 'Ramesh Chandra Saxena', 'Sunil Joshi', 'Ashish Kr. Verma', 'SCM & Manufacturing'),
(7, 'VNL-GGN-0381', 'Mahesh Chander', 'Ajay Kumar Tyagi', 'Ashish Kr. Verma', 'SCM & Manufacturing'),
(8, 'VNL-GGN-0494', 'Sunil Joshi', 'Ashish Kr. Verma', 'Ashish Kr. Verma', 'SCM & Manufacturing'),
(9, 'VNL-GGN-0547', 'Rajender Singh', 'Sunil Mittal', 'Ashish Kr. Verma', 'Store'),
(10, 'VNL-GGN-0560', 'Neeraj Singh', 'Maheshwar Prasad Bha', 'Deepak Gupta', 'Logistic'),
(11, 'VNL-GGN-0561', 'Yogender Singh Khatana', 'Narender Singh Chhik', 'Narender Singh Chhik', 'HR & Admin.'),
(12, 'VNL-GGN-0622', 'Sunil Mittal', 'Ashish Kr. Verma', 'Ashish Kr. Verma', 'Store'),
(13, 'VNL-GGN-0733', 'Lakhan Lal', 'Mahesh Chander', 'Ashish Kr. Verma', 'SCM & Manufacturing'),
(14, 'VNL-GGN-0792', 'Ramvir Singh', 'B. S. Yadav', 'B. S. Yadav', 'Quality'),
(15, 'VNL-GGN-0793', 'Rajesh Kumar', 'J. Kishore Babu', 'Ramvir Singh', 'Quality'),
(16, 'VNL-GGN-0794', 'J. Kishore Babu', 'Ramvir Singh', 'Ramvir Singh', 'Quality'),
(17, 'VNL-GGN-0795', 'Shyam Prakash Sharma', 'Ramvir Singh', 'Ramvir Singh', 'Quality'),
(18, 'VNL-GGN-0800', 'Manjeet', 'Maheshwar Prasad Bha', 'Deepak Gupta', 'Logistic'),
(19, 'VNL-GGN-0802', 'Priyabrata Mishra', 'K. L. Sharma', 'Prakash Bhandari', 'NIP & Planning'),
(20, 'VNL-GGN-0808', 'Heera Lal', 'A. Biswas', 'A. Biswas', 'SCM & Manufacturing'),
(21, 'VNL-GGN-0810', 'Mathew Philip', 'Deepak Gupta', 'Deepak Gupta', 'Finance'),
(22, 'VNL-GGN-0816', 'Ashok Tyagi', 'V.C. Sukumaran', 'Narender Singh Chhik', 'HR & Admin.'),
(23, 'VNL-GGN-0827', 'Anil Kumar Gulati', 'Manish Kumar Goyal', 'Alok Sharma', 'Radio & Reapeter'),
(24, 'VNL-GGN-0829', 'T. Balasubramanian', 'Mahesh Chander', 'Ashish Kr. Verma', 'SCM & Manufacturing'),
(25, 'VNL-GGN-0832', 'Raj Kumar', 'Ajay Kumar Tyagi', 'Ashish Kr. Verma', 'SCM & Manufacturing'),
(26, 'VNL-GGN-0835', 'Ravinder Kumar', 'Alok Sharma', 'Ashish Kr. Verma', 'Radio & Reapeter'),
(27, 'VNL-GGN-0836', 'Naresh Kumar', 'Alok Sharma', 'Ashish Kr. Verma', 'Radio & Reapeter'),
(28, 'VNL-GGN-0837', 'Alok Sharma', 'Ashish Kr. Verma', 'B. S. Yadav', 'Radio & Reapeter'),
(29, 'VNL-GGN-0838', 'Pankaj Upadhyay', 'Ravinder Kumar', 'Alok Sharma', 'Radio & Reapeter'),
(30, 'VNL-GGN-0839', 'Kapil Kumar Tyagi', 'Ravinder Kumar', 'Alok Sharma', 'Radio & Reapeter'),
(31, 'VNL-GGN-0861', 'Dushyant Kumar', 'Sunil Mittal', 'Ashish Kr. Verma', 'Store'),
(32, 'VNL-GGN-0865', 'Hanuman Gupta', 'Deepak Gupta', 'Deepak Gupta', 'Finance'),
(33, 'VNL-GGN-0870', 'Parveen Kumar', 'Sunil Joshi', 'Ashish Kr. Verma', 'SCM & Manufacturing'),
(34, 'VNL-GGN-0872', 'Deepak Verma', 'Ajit Singh', 'Ajit Singh', 'IT'),
(35, 'VNL-GGN-0877', 'Vinod Kumar', 'J. Kishore Babu', 'Ramvir Singh', 'Quality'),
(36, 'VNL-GGN-0882', 'Dinesh Singh Patwal', 'Maheshwar Prasad Bha', 'Deepak Gupta', 'Logistic'),
(37, 'VNL-GGN-0883', 'Rajender Kumar Tapaswi', 'Maheshwar Prasad Bha', 'Deepak Gupta', 'Logistic'),
(38, 'VNL-GGN-0884', 'Sandeep Razdan', 'Maheshwar Prasad Bha', 'Deepak Gupta', 'Logistic'),
(39, 'VNL-GGN-0885', 'Vanaja Haridas', 'Deepak Gupta', 'Deepak Gupta', 'Finance'),
(40, 'VNL-GGN-0887', 'Maheshwar Prasad Bhatt', 'Deepak Gupta', 'Deepak Gupta', 'Logistic'),
(41, 'VNL-GGN-0888', 'Rajesh Goel', 'Maheshwar Prasad Bha', 'Deepak Gupta', 'Logistic'),
(42, 'VNL-GGN-0889', 'Rijesh T.P.', 'Deepak Gupta', 'Deepak Gupta', 'Finance'),
(43, 'VNL-GGN-0890', 'Nitin Sharma', 'Deepak Gupta', 'Deepak Gupta', 'Finance'),
(44, 'VNL-GGN-0893', 'Manoj Kumar', 'Sunil Joshi', 'Ashish Kr. Verma', 'SCM & Manufacturing'),
(45, 'VNL-GGN-0894', 'Kuldeep Gupta', 'Sunil Joshi', 'Ashish Kr. Verma', 'SCM & Manufacturing'),
(46, 'VNL-GGN-0896', 'Shiv Narain Singh', 'Manish Kumar Goyal', 'Alok Sharma', 'Radio & Reapeter'),
(47, 'VNL-GGN-0897', 'Partha Pratim Chattoraj', 'Manish Kumar Goyal', 'Alok Sharma', 'Radio & Reapeter'),
(48, 'VNL-GGN-0898', 'R. Vijaya Kumar', 'J. Kishore Babu', 'Ramvir Singh', 'Quality'),
(49, 'VNL-GGN-0899', 'Virendra Singh Rawat', 'Alok Sharma', 'Ashish Kr. Verma', 'Radio & Reapeter'),
(50, 'VNL-GGN-0900', 'Kunwar Singh Negi', 'Ravinder Kumar', 'Alok Sharma', 'Radio & Reapeter'),
(51, 'VNL-GGN-0901', 'Manish Kumar Goyal', 'Alok Sharma', 'Ashish Kr. Verma', 'Radio & Reapeter'),
(52, 'VNL-GGN-0902', 'Rakesh Singh', 'Manish Kumar Goyal', 'Alok Sharma', 'Radio & Reapeter'),
(53, 'VNL-GGN-0903', 'Amit Kumar Jain', 'Manish Kumar Goyal', 'Alok Sharma', 'Radio & Reapeter'),
(54, 'VNL-GGN-0904', 'Surender Singh', 'Manish Kumar Goyal', 'Alok Sharma', 'Radio & Reapeter'),
(55, 'VNL-GGN-0905', 'Lokesh Saraswat', 'Manish Kumar Goyal', 'Alok Sharma', 'Radio & Reapeter'),
(56, 'VNL-GGN-0906', 'Neha Mehta', 'Manish Kumar Goyal', 'Alok Sharma', 'Radio & Reapeter'),
(57, 'VNL-GGN-0907', 'Lalita Singh', 'Manish Kumar Goyal', 'Alok Sharma', 'Radio & Reapeter'),
(58, 'VNL-GGN-0908', 'Laveesh Kumar Aggarwal', 'Manish Kumar Goyal', 'Alok Sharma', 'Radio & Reapeter'),
(59, 'VNL-GGN-0910', 'Yogesh Chand Sharma', 'Alok Sharma', 'Ashish Kr. Verma', 'Radio & Reapeter'),
(60, 'VNL-GGN-0911', 'Mahesh Chandra', 'Alok Sharma', 'Ashish Kr. Verma', 'Radio & Reapeter'),
(61, 'VNL-GGN-0912', 'Raj Karan', 'Alok Sharma', 'Ashish Kr. Verma', 'Radio & Reapeter'),
(62, 'VNL-GGN-0915', 'Jagdish ', 'Sunil Mittal', 'Ashish Kr. Verma', 'Store'),
(63, 'VNL-GGN-0917', 'Shravan Kumar Maurya', 'Sunil Joshi', 'Ashish Kr. Verma', 'SCM & Manufacturing'),
(64, 'VNL-GGN-0920', 'Anil Kumar', 'Ravinder Kumar', 'Alok Sharma', 'Radio & Reapeter'),
(65, 'VNL-GGN-0921', 'Nityanand Mishra', 'Sunil Joshi', 'Ashish Kr. Verma', 'SCM & Manufacturing'),
(66, 'VNL-GGN-0925', 'Sunil Kumar', 'Sunil Joshi', 'Ashish Kr. Verma', 'SCM & Manufacturing'),
(67, 'VNL-GGN-0926', 'Manoj Kumar', 'Ramvir Singh', 'Ramvir Singh', 'Quality'),
(68, 'VNL-GGN-0929', 'Parmod Kumar', 'Ravinder Kumar', 'Alok Sharma', 'Radio & Reapeter'),
(69, 'VNL-GGN-0930', 'Pankaj Oberoi', 'Sunil Joshi', 'Ashish Kr. Verma', 'SCM & Manufacturing'),
(70, 'VNL-GGN-0936', 'Lalit Mohan Sanwal', 'Mahesh Chander', 'Ashish Kr. Verma', 'SCM & Manufacturing'),
(71, 'VNL-GGN-0937', 'Vinod', 'Ajay Kumar Tyagi', 'Ashish Kr. Verma', 'SCM & Manufacturing'),
(72, 'VNL-GGN-0939', 'Rajesh Raghav', 'Maheshwar Prasad Bha', 'Deepak Gupta', 'Logistic'),
(73, 'VNL-GGN-0940', 'Satish Chandra Sati', 'Ravinder Kumar', 'Alok Sharma', 'Radio & Reapeter'),
(74, 'VNL-GGN-0944', 'Gurdeep Singh Drall', 'Ramesh Chandra Saxen', 'Ashish Kr. Verma', 'SCM & Manufacturing'),
(75, 'VNL-GGN-0949', 'Vijay Shrestha', 'Maheshwar Prasad Bha', 'Deepak Gupta', 'Logistic'),
(76, 'VNL-GGN-0955', 'Saurabh Chauhan', 'Ajay Kumar Tyagi', 'Ashish Kr. Verma', 'SCM & Manufacturing'),
(77, 'VNL-GGN-0957', 'Naresh Kumar', 'Sunil Mittal', 'Ashish Kr. Verma', 'Store'),
(78, 'VNL-GGN-0961', 'Faijal Ali', 'Mahesh Chander', 'Ashish Kr. Verma', 'SCM & Manufacturing'),
(79, 'VNL-GGN-0962', 'Krishan Kumar', 'Mahesh Chander', 'Ashish Kr. Verma', 'SCM & Manufacturing'),
(80, 'VNL-GGN-0963', 'Brijpal Singh Rawat', 'Ravinder Kumar', 'Alok Sharma', 'Radio & Reapeter'),
(81, 'VNL-GGN-0964', 'Pawan Kumar', 'Sunil Mittal', 'Ashish Kr. Verma', 'Store'),
(82, 'VNL-GGN-0965', 'Ashok Pal', 'Ramvir Singh', 'Ramvir Singh', 'Quality'),
(83, 'VNL-GGN-0972', 'Narinder Singh', 'Mahesh Chander', 'Ashish Kr. Verma', 'SCM & Manufacturing'),
(84, 'VNL-GGN-0973', 'Jitender Uppal', 'Ashish Kr. Verma', 'Ashish Kr. Verma', 'SCM & Manufacturing'),
(85, 'VNL-GGN-0977', 'Neeraj Verma', 'Sunil Joshi', 'Ashish Kr. Verma', 'SCM & Manufacturing'),
(86, 'VNL-GGN-0978', 'Praveen Kumar', 'Mahesh Chander', 'Ashish Kr. Verma', 'SCM & Manufacturing'),
(87, 'VNL-GGN-0979', 'Harpal Yadav', 'Sunil Mittal', 'Ashish Kr. Verma', 'Store'),
(88, 'VNL-GGN-0981', 'Karan Singh', 'Sunil Mittal', 'Ashish Kr. Verma', 'Store'),
(89, 'VNL-GGN-0984', 'Yogesh Bhandari', 'K. L. Sharma', 'Prakash Bhandari', 'NIP & Planning'),
(90, 'VNL-GGN-0985', 'Raju Verma', 'Alok Sharma', 'Ashish Kr. Verma', 'Radio & Reapeter'),
(91, 'VNL-GGN-0986', 'Sushil Chandra', 'Vishwas Tyagi', 'Narender Singh Chhik', 'HR & Admin.'),
(92, 'VNL-GGN-0987', 'Vishwas Tyagi', 'Narender Singh Chhik', 'Narender Singh Chhik', 'HR & Admin.'),
(93, 'VNL-GGN-0989', 'Jagbir Singh ', 'V.C. Sukumaran', 'Narender Singh Chhik', 'HR & Admin.'),
(94, 'VNL-GGN-0993', 'Ajeet Singh', 'Sunil Joshi', 'Ashish Kr. Verma', 'SCM & Manufacturing'),
(95, 'VNL-GGN-0994', 'Bhupender Kumar', 'Sunil Joshi', 'Ashish Kr. Verma', 'SCM & Manufacturing'),
(96, 'VNL-GGN-0999', 'Sameer Yadav', 'Sunil Joshi', 'Ashish Kr. Verma', 'SCM & Manufacturing'),
(97, 'VNL-GGN-1011', 'Amit Kumar Sharma', 'Ramvir Singh', 'Ramvir Singh', 'Quality'),
(98, 'VNL-GGN-1012', 'Shiv Kumar', 'Amit Kumar Sharma', 'Ramvir Singh', 'Quality'),
(99, 'VNL-GGN-1016', 'Cheol Hee Lee', 'Ashish Kr. Verma', 'Ashish Kr. Verma', 'SCM & Manufacturing'),
(100, 'VNL-GGN-1020', 'Desai Jay Mayankbhai', 'Hanuman Gupta', 'Deepak Gupta', 'Finance'),
(101, 'VNL-GGN-1045', 'Kumar Pritesh', 'Pankaj Bhatnagar', 'Deepak Gupta', 'Logistic'),
(102, 'VNL-GGN-1050', 'Vishesh Rai', 'Sunil Joshi', 'Ashish Kr. Verma', 'SCM & Manufacturing'),
(103, 'VNL-GGN-1051', 'Vipin Kumar', 'Sunil Joshi', 'Ashish Kr. Verma', 'SCM & Manufacturing'),
(104, 'VNL-GGN-1052', 'Rajendra Kumar Maurya ', 'Sunil Joshi', 'Ashish Kr. Verma', 'SCM & Manufacturing'),
(105, 'VNL-GGN-1058', 'Manish Berwal', 'Amit Kumar Sharma', 'Ramvir Singh', 'Quality'),
(106, 'VNL-GGN-1059', 'Deepak ', 'Ravinder Kumar', 'Alok Sharma', 'Radio & Reapeter'),
(107, 'VNL-GGN-1069', 'Sushil Kumar', 'Ravinder Kumar', 'Alok Sharma', 'Radio & Reapeter'),
(108, 'VNL-GGN-1070', 'Jitender ', 'Ravinder Kumar', 'Alok Sharma', 'Radio & Reapeter'),
(109, 'VNL-GGN-1073', 'Duli Chand Gupta', 'Hanuman Gupta', 'Deepak Gupta', 'Finance'),
(110, 'VNL-GGN-1074', 'Sukhvir Singh', 'Deepak Verma', 'Ajit Singh', 'IT'),
(111, 'VNL-GGN-1075', 'Amit Kumar', 'Deepak Verma', 'Ajit Singh', 'IT'),
(112, 'VNL-GGN-1076', 'Vipin Kumar', 'Deepak Verma', 'Ajit Singh', 'IT'),
(113, 'VNL-GGN-1080', 'Prashant Kumar Doove', 'Sunil Joshi', 'Ashish Kr. Verma', 'SCM & Manufacturing'),
(114, 'VNL-GGN-1081', 'Abhishek Yadav', 'Ramesh Chandra Saxen', 'Ashish Kr. Verma', 'SCM & Manufacturing'),
(115, 'VNL-GGN-1096', 'Basil Joy', 'Sunil Joshi', 'Ashish Kr. Verma', 'SCM & Manufacturing'),
(116, 'VNL-GGN-1097', 'Sorabh', 'Sunil Joshi', 'Ashish Kr. Verma', 'SCM & Manufacturing'),
(117, 'VNL-GGN-1098', 'Upendra Chauhan', 'Ramesh Chandra Saxen', 'Ashish Kr. Verma', 'SCM & Manufacturing'),
(118, 'VNL-GGN-1100', 'Neeraj', 'Sunil Joshi', 'Ashish Kr. Verma', 'SCM & Manufacturing'),
(119, 'VNL-GGN-1101', 'Poonam Gupta', 'Sunil Joshi', 'Ashish Kr. Verma', 'SCM & Manufacturing'),
(120, 'VNL-GGN-1102', 'Arjun Singh', 'Sunil Joshi', 'Ashish Kr. Verma', 'SCM & Manufacturing'),
(121, 'VNL-GGN-1103', 'Prateek Satija', 'Ramesh Chandra Saxen', 'Ashish Kr. Verma', 'SCM & Manufacturing'),
(122, 'VNL-GGN-1104', 'Nitin Sehrawat', 'Ramesh Chandra Saxen', 'Ashish Kr. Verma', 'SCM & Manufacturing'),
(123, 'VNL-GGN-1105', 'Pankaj Kumar', 'Ravinder Kumar', 'Alok Sharma', 'Radio & Reapeter'),
(124, 'VNL-GGN-1106', 'Sandeep Dhama', 'Sunil Joshi', 'Ashish Kr. Verma', 'SCM & Manufacturing'),
(125, 'VNL-GGN-1107', 'Pradip Kumar', 'Sunil Joshi', 'Ashish Kr. Verma', 'SCM & Manufacturing'),
(126, 'VNL-GGN-1110', 'Ashutosh Kumar', 'Sunil Joshi', 'Ashish Kr. Verma', 'SCM & Manufacturing'),
(127, 'VNL-GGN-1111', 'Pravesh', 'Sunil Joshi', 'Ashish Kr. Verma', 'SCM & Manufacturing'),
(128, 'VNL-GGN-1114', 'Mohit Gupta', 'Sunil Joshi', 'Ashish Kr. Verma', 'SCM & Manufacturing'),
(129, 'VNL-GGN-1115', 'Lalita', 'Vishwas Tyagi', 'Narender Singh Chhik', 'HR & Admin.'),
(130, 'VNL-GGN-1124', 'Seha', 'Ajay Kumar Tyagi', 'Ashish Kr. Verma', 'SCM & Manufacturing'),
(131, 'VNL-GGN-1125', 'Ankit Pant', 'Ajay Kumar Tyagi', 'Ashish Kr. Verma', 'SCM & Manufacturing'),
(132, 'VNL-GGN-1139', 'Rahul Yadav', 'Naresh Kumar', 'Alok Sharma', 'Radio & Reapeter'),
(133, 'VNL-GGN-1140', 'Deepak Kumar', 'Sunil Joshi', 'Ashish Kr. Verma', 'SCM & Manufacturing'),
(134, 'VNL-GGN-1141', 'Rahul Kumar', 'Ajay Kumar Tyagi', 'Ashish Kr. Verma', 'SCM & Manufacturing'),
(135, 'VNL-GGN-1142', 'Satinder Kumar', 'Ramesh Chandra Saxen', 'Ashish Kr. Verma', 'SCM & Manufacturing'),
(136, 'VNL-GGN-1143', 'Prashant Kumar Jha', 'Amit Kumar Sharma', 'Ramvir Singh', 'Quality'),
(137, 'VNL-GGN-1147', 'Ajuvendra Singh', 'Amit Kumar Sharma', 'Ramvir Singh', 'Quality'),
(138, 'VNL-GGN-1151', 'Sahil Verma', 'Sunil Joshi', 'Ashish Kr. Verma', 'SCM & Manufacturing'),
(139, 'VNL-GGN-1154', 'Ramanpreet Kaur', 'Sunil Joshi', 'Ashish Kr. Verma', 'SCM & Manufacturing'),
(140, 'VNL-GGN-1162', 'Gautam Kumar', 'Sunil Mittal', 'Ashish Kr. Verma', 'SCM & Manufacturing'),
(141, 'VNL-GGN-1167', 'Priyanka Chaurasiya', 'LEE', 'Ashish Kr. Verma', 'SCM & Manufacturing'),
(142, 'VNL-GGN-1169', 'Tanuj Saklani', 'Ajay Kumar Tyagi', 'Ashish Kr. Verma', 'SCM & Manufacturing'),
(143, 'VNL-GGN-1179', 'Ravi Kumar', 'Ravinder Kumar', 'Alok Sharma', 'Radio & Reapeter');

-- --------------------------------------------------------

--
-- Table structure for table `pcba_list`
--

CREATE TABLE IF NOT EXISTS `pcbatracker_pcba_list` (
  `ID` int(20) NOT NULL AUTO_INCREMENT,
  `PartNo` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CardName` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CardType` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Status` int(2) DEFAULT '1' COMMENT '1 is active, 0 is inactive and -1 is deleted',
  PRIMARY KEY (`ID`),
  KEY `PartNo` (`PartNo`),
  KEY `Status` (`Status`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=203 ;

--
-- Dumping data for table `pcba_list`
--

INSERT INTO `pcbatracker_pcba_list` (`ID`, `PartNo`, `CardName`, `CardType`, `Status`) VALUES
(1, '203.00651.03', 'PCBA,DS,Alarm Display Panel,Ver 3.0', 'GSM-PCBA', 1),
(2, '203.20017.02', 'PCBA,Universal Control Card', 'GSM-PCBA', 1),
(3, '203.00134.26', 'PCBA,DS,PSU, R2-2TRX, 48V,6.2', 'GSM-PCBA', 1),
(4, '203.20037.03', 'PCBA,PFC Controller Board', 'GSM-PCBA', 1),
(5, '203.20038.03', 'PCBA,Convertor Control Board', 'GSM-PCBA', 1),
(6, '203.20039.03', 'PCBA,LED Display Board', 'GSM-PCBA', 1),
(7, '203.20040.03', 'PCBA,DSP Board', 'GSM-PCBA', 1),
(8, '203.20034.03', 'PCBA,Solar Control Card', 'GSM-PCBA', 1),
(9, '203.20035.03', 'PCBA,ADC CMU Card', 'GSM-PCBA', 1),
(10, '203.00121.17', 'PCBA,DS,TDN7 Switch Card,48V I/P', 'GSM-PCBA', 1),
(11, '203.00121.07', 'PCBA,DS,TDN7 Switch Card,24V I/P', 'GSM-PCBA', 1),
(12, '203.00522.00', 'PCBA, LED 4, Tri-Level LED', 'GSM-PCBA', 1),
(13, '203.20022.03', 'PCBA,R3 indoor CMU500 Power card,Rev01', 'GSM-PCBA', 1),
(14, '203.20023.03', 'PCBA,R3 ECU 1.5Kw, R3.0', 'GSM-PCBA', 1),
(15, '203.20043.03', 'PCBA,AC High Low Cut Board', 'GSM-PCBA', 1),
(16, '203.20036.03', 'PCBA, Viper Board', 'GSM-PCBA', 1),
(17, '203.20024.03', 'PCBA,RMPS Backplane Power Cube-500', 'GSM-PCBA', 1),
(18, '203.20031.01', 'PCBC,ADP Power Board', 'GSM-PCBA', 1),
(19, '203.20044.01', 'PCBA,Battery Reverse Protection,1.1', 'GSM-PCBA', 1),
(20, '203.20030.03', 'PCBA.Power Ejector', 'GSM-PCBA', 1),
(21, '203.20033.03', 'PCBA,Back-Haul Control Card', 'GSM-PCBA', 1),
(22, '203.20018.03', 'PCBA,SPD Module,Rev 3.0', 'GSM-PCBA', 1),
(23, '203.00085.00 ', 'PCBA CONSOLE CARDS, M4', 'GSM-PCBA', 1),
(24, '203.10027.00', 'PCBA,UART CARDS', 'GSM-PCBA', 1),
(25, '203.10032.00', 'TDM FEED CARD, R2.1', 'GSM-PCBA', 1),
(26, '203.10025.00', 'BACK PLANE_M4, R1.4', 'GSM-PCBA', 1),
(27, '203.10033.03', 'ETHERNET FEED CARD, R3.1', 'GSM-PCBA', 1),
(28, '203.10035.03', 'PCBA,POWER FEED CARD -48V,Rev 3,M4', 'GSM-PCBA', 1),
(29, '203.10042.01', 'PCBA,South Fan Control Unit, M4 ', 'GSM-PCBA', 1),
(30, '203.10042.11', 'PCBA,North Fan Control Unit, M4 ', 'GSM-PCBA', 1),
(31, '203.10079.02', 'PCBA,PWR SUPPLY 3U -48V', 'GSM-PCBA', 1),
(32, '203.10072.05 ', 'PCBA,DS,ICC-8122 CARD,Rev 5.0', 'GSM-PCBA', 1),
(33, '203.10072.04', 'PCBA,DS,ICC-8122 CARD,Rev 4.4', 'GSM-PCBA', 1),
(34, '203.10072.05', 'PCBA,DS,ICC-8122 CARD,Rev 4.4', 'GSM-PCBA', 1),
(35, '203.10076.02', 'PCBA, DS, EIC DSP, M4', 'GSM-PCBA', 1),
(36, '203.10081.08', 'PCBA,Digital Mother Board,V08', 'GSM-PCBA', 1),
(38, '203.00083.02', 'PCBA,DLNA 900 MHz 2 Way Rev 4.0,Rev 4', 'GSM-PCBA', 1),
(39, '203.00172.15', 'PCBA,DS,EMI Surge Filter,R2,48V', 'GSM-PCBA', 1),
(40, '203.00387.00', 'PCBA,DS,GPS Holder,V00', 'GSM-PCBA', 1),
(41, '203.10009.01', 'PCBA,RPA 900,2.0', 'GSM-PCBA', 1),
(42, '203.10003.05', 'PCBA,RTM 900 MHz,Rev 5.0', 'GSM-PCBA', 1),
(43, '203.10003.04', 'PCBA,RTM 900 MHz,Rev 4.0', 'GSM-PCBA', 1),
(44, '203.10026.00', 'PCBA,EEPROM Cards', 'GSM-PCBA', 1),
(45, '203.00659.03', 'PCBA,Power Control Card ', 'GSM-PCBA', 1),
(46, '203.00172.04', 'PCBA ,EMI Surge Filter ,R2, 24V', 'GSM-PCBA', 1),
(47, '203.10037.07', 'PCBA,CCU CONTROL CARD,R7,7.2', 'GSM-PCBA', 1),
(48, '203.00134.06', 'PCBA,DS,PSU,R2-2TRX,24V', 'GSM-PCBA', 1),
(49, '203.10010.01', 'PCBA,SS,VPA 900', 'GSM-PCBA', 1),
(50, '203.00386.10', 'PCBA,SDMB, Rev 1.0, Micro1 Variant', 'GSM-PCBA', 1),
(51, '203.00405.00', 'PCBA,47U FAN Power ORing PCB,1.0', 'GSM-PCBA', 1),
(52, '203.00690.00', 'PCBA,Hybrid BTS Adaptor', 'GSM-PCBA', 1),
(53, '203.00199.08', 'PCBA, Power Card CCU250, R8.0', 'GSM-PCBA', 1),
(54, '203.00480.00', 'PCBA, DS,Generic PTS adaptor', 'GSM-PCBA', 1),
(55, '203.00689.00', 'Back Plane PowerCube 300, Rev 0  ', 'GSM-PCBA', 1),
(56, '203.00637.31', 'PCBA,SS,BTS R3 Micro-1 RTM 850,2.0', 'GSM-PCBA', 1),
(57, '203.00637.01', 'PCBA,BTS R3 Micro-1 RTM 1800,2.0', 'GSM-PCBA', 1),
(58, '203.00402.00', 'PCBA,DS,PSU_Micro,1.0', 'GSM-PCBA', 1),
(59, '203.00178.01', 'PCBA, SS, EMI Filter, 48V', 'GSM-PCBA', 1),
(60, '203.00523.00', 'PCBA, SS, Adaptor, RTM to PA', 'GSM-PCBA', 1),
(61, '203.00401.10', 'PCBA,DS,FE Surge Protector,RJ EXT,HDR INT,1.0', 'GSM-PCBA', 1),
(62, '203.00678.00', 'PCBA,BTS R3 Micro-2 RTM 1800,1.0', 'GSM-PCBA', 1),
(63, '203.00678.10', 'PCBA,BTS R3 Micro-2 RTM 900,1.0', 'GSM-PCBA', 1),
(64, '203.00678.30', 'PCBA,BTS R3 Micro-2 RTM 850,1.0', 'GSM-PCBA', 1),
(65, '203.00144.00', 'PCBA,EIC DSP PTS Daughter Card,2.0', 'GSM-PCBA', 1),
(66, '203.00186.00', 'PCBA,EIC DSP PTS Adaptor Card,2.0', 'GSM-PCBA', 1),
(67, '203.00512.13', 'PCBA,DS,RRU100,25dBm,1 Eth,1 Sync', 'Non GSM', 1),
(68, '203.00521.12', 'PCBA, 3-Port PoE (ext), 1-port Eth (ext), 48V Isolated', 'Non GSM', 1),
(69, '203.00521.22', 'PCBA, 3-Port PoE (ext), 2-Port Eth (int), 24/48V Non-Isolated', 'Non GSM', 1),
(70, '203.00521.32', 'PCBA, 5-Port PoE (ext), 48V Isolated', 'Non GSM', 1),
(71, '203.00521.42', 'PCBA, 3-Port PoE (ext), 1-port Eth (ext), 24/48V Non-Isolated', 'Non GSM', 1),
(72, '203.00521.52', 'PCBA, 3-Port PoE (ext), 1-Port Eth (int), 24/48V Non-Isolated', 'Non GSM', 1),
(73, '203.00608.00  ', 'PCBA,Hub Side Sync,1.0', 'Non GSM', 1),
(74, '203.10163.03', 'AR7161,RAM64MB, ROHS COMP  ', 'Non GSM', 1),
(75, '203.10163.03', 'PCBA,DS,AR7161,RAM64MB, ROHS COMP', 'Non GSM', 1),
(76, '203.10163.53', 'PCBA,DS,AR7161,RAM64MB, ROHS COMP,470uFCap', 'Non GSM', 1),
(77, '203.00507.32', 'DS, RMC5800, 1ETH', 'Non GSM', 1),
(78, '203.00511.03', 'PCBA,DS,RMC-3600,1ETH,V03', 'Non GSM', 1),
(79, '203.00653.02', 'PCBA,RAN-3600,V02,RO4350+FR4,4L', 'Non GSM', 1),
(80, '203.00473.31', 'PCBA,DS,AR7161,1 POE IN,1 SYNC,ISOLATED,ROHS,48V', 'Non GSM', 1),
(81, '203.10163.23', 'PCBA,DS,AR7161,RAM128MB, ROHS COMP', 'Non GSM', 1),
(82, '203.00522.00', 'PCBA, LED 4, Tri-Level LED', 'Non GSM', 1),
(83, '203.00302.22', 'PCBA,DS,EIDU,2E1,3FE,1POE,V2', 'Non GSM', 1),
(84, '203.00662.00', 'PCBA, DS,RRU-100-2.4 GHz, 25dBm, V00, 2 Eth', 'Non GSM', 1),
(85, '203.10405.01', 'PCBA,SS,MPPT-1800', 'GSM-PCBA', 1),
(86, '203.00400.42', 'PCBA,DS,NIB Processing Card,1U without DSP Variant', 'GSM-PCBA', 1),
(87, '203.00390.00', 'PCBA,DS,eNodeB Base Card (EBC),1W LTE System', 'GSM-PCBA', 1),
(88, '203.00390.10', 'PCBA,DS,eNodeB Base Card (EBC),5W LTE System', 'GSM-PCBA', 1),
(89, '203.00521.22', 'PCBA,3-Port PoE(ext),2-Port Eth(int),24/48V Nn Isl', 'Non GSM', 1),
(90, '203.00521.52', 'PCBA, 3-Port PoE (ext), 1-Port Eth (int), 24/48V N', 'Non GSM', 1),
(91, '203.00653.12', 'PCBA,RAN-3900 (3800 -4000) ,V02,RO4350+FR4,4L', 'Non GSM', 1),
(92, '203.00662.02', 'PCBA, DS,RRU-100-2.4 GHz, 25dBm, V02', 'Non GSM', 1),
(93, '203.00662.12', 'PCBA, DS,RRU-100-2.4 GHz, 25dBm Sync, V02', 'Non GSM', 1),
(94, '203.00728.00', 'PCBA,SS,MCPA,5Watt,947MHz,TQP7M9104', 'Non GSM', 1),
(95, '203.00713.00', 'PCBA,SS,MCPA,2W,1842MHz,TQP7M9104', 'Non GSM', 1),
(96, '1114040015', 'PCBA,GPS Holder', NULL, 1),
(97, '1115040005', 'PCBA,DLNA-900MHz,2Way', NULL, 1),
(98, '1114040024', 'SUBA,DLNA900 MHz', NULL, 1),
(99, '1114040020', 'PCBA, FRC ADAPTOR,V00,FR4,2L', NULL, 1),
(100, '1114040022', 'PCBA,HPA900', NULL, 1),
(101, '1114040003', 'PCBA, UART CARD, M4', NULL, 1),
(102, '1115040003', 'PCBA, DS SOUTH FAN CONTROLLER CARD,M4', NULL, 1),
(103, '1115040006', 'PCBA, DS NORTH FAN CONTROLLER CARD,M4', NULL, 1),
(104, '1114040017', 'PCBA,EMI Surge Filter', NULL, 1),
(105, '1114040019', 'PCBA,EMI Surge Filter_Ethernet', NULL, 1),
(106, '1115040005', 'PCBA,PSU,R2-2TRX 48v', NULL, 1),
(107, '1114040001', 'PCBA, Back Plane, M4', NULL, 1),
(108, '1114040004', 'PCBA, POWER FEED CARD, M4', NULL, 1),
(109, '1114040005', 'PCBA,SS,ETHERNET FEED CARD,BSC VARIANT,M4', NULL, 1),
(110, '1114040006', 'PCBA, TDM FEED CARD,M4', NULL, 1),
(111, '1115040002', 'PCBA, DS, EIC DSP INA, M4', NULL, 1),
(112, '1115040004', 'PCBA,PWR SUPPLY 3U -48V', NULL, 1),
(113, '1114040026', 'PCBA, LPA 900', NULL, 1),
(114, '203.10400.21', 'PCBA,DS,USM,SHPS-200E', 'GSM-PCBA', 1),
(115, '203.10401.00', 'DC Management Unit', 'GSM-PCBA', 1),
(116, '203.10401.01', 'PCBA,SS,DMU-500', 'GSM-PCBA', 1),
(117, '203.10401.11', 'PCBA,SS,DMU-200', 'GSM-PCBA', 1),
(118, '203.10402.01', 'PCBA,SS,LPM-500', 'GSM-PCBA', 1),
(119, '203.10402.11', 'PCBA,SS,LPM-200', 'GSM-PCBA', 1),
(120, '203.10403.00', 'PCBA,DS,ECU-50A', 'GSM-PCBA', 1),
(121, '203.10404.00', 'PCBA,SS,ESM,SMPS50A(5+1) Exchange Supervisory Module', 'GSM-PCBA', 1),
(122, '203.10405.00', 'Maximum Power Point Tracking (MPPT)', 'GSM-PCBA', 1),
(123, '203.10405.01', 'Maximum Power Point Tracking (MPPT)', 'GSM-PCBA', 1),
(124, '203.10405.11', 'PCBA,SS,Micro Power', 'GSM-PCBA', 1),
(125, '203.10405.21', 'PCBA,SS,MPPT (2 Channel)', 'GSM-PCBA', 1),
(126, '203.10406.00', 'PCBA,Backplane,SHPS 300/500/600,R4', 'GSM-PCBA', 1),
(127, '203.10406.01', 'PCBA,DS,R4,Backplane,SHPS-300/500/600', 'GSM-PCBA', 1),
(128, '203.10406.11', 'PCBA,Backplane,SHPS-200E,R4', 'GSM-PCBA', 1),
(129, '203.10407.00', 'VSAT Power Supply', 'GSM-PCBA', 1),
(130, '203.10407.01', 'PCBA,SS,VSAT Power (24V,8.5V)', 'GSM-PCBA', 1),
(131, '203.10407.11', 'PCBA,SS,VSAT Power (24V)', 'GSM-PCBA', 1),
(132, '203.10408.00', 'Backplane, SMPS 50A (5+1)', 'GSM-PCBA', 1),
(133, '203.10409.00', 'Frontplane, SMPS 50A (5+1)', 'GSM-PCBA', 1),
(134, '203.10410.00', 'PCBA,SS,DC Breaker Circuit,SMPS-50A(5+1)', 'GSM-PCBA', 1),
(135, '203.00766.00', 'PCBA,DS,TDN7 Switch Card, Without Optical Port, 48V', 'GSM-PCBA', 1),
(136, '203.00766.10', 'PCBA,DS,TDN7 Switch Card, With Optical Port, 48V', 'GSM-PCBA', 1),
(137, '203.00387.20', 'PCBA,GPS Holder PCB with Antenna,Micro1,V00', 'GSM-PCBA', 1),
(138, '203.00387.10', 'PCBA,GPS Holder PCB with Antenna, Hybrid BTS', 'GSM-PCBA', 1),
(139, '203.00206.01', 'PCBA,DLNA 850 MHz 2 Way,Rev 2.0', 'GSM-PCBA', 1),
(140, '203.10072.15', 'PCBA,DS,ICC,Without DSP', 'GSM-PCBA', 1),
(141, '203.00651.03', 'PCBA,DS,Alarm Display Panel,Ver 1.0', 'GSM-PCBA', 1),
(142, '203.20033.03', 'PCBA,Back-Haul PWR Control Card,Rev 3.0', 'GSM-PCBA', 1),
(143, '203.00401.12', 'PCBA,DS,FE Surge Protector,RJ EXT,HDR INT', 'GSM-PCBA', 1),
(144, '203.00401.22', 'PCBA,DS,FE Surge Protector,RJ EXT,RJ INT', 'GSM-PCBA', 1),
(145, '203.00651.03', 'PCBA,DS,Alarm Display Panel for power cube', 'GSM-PCBA', 1),
(146, '203.10042.04', 'PCBA, DS, South Fan Controller Card, BSC-500i', 'GSM-PCBA', 1),
(147, '203.10042.14', 'PCBA, North Fan Controller Card, BSC-500i', 'GSM-PCBA', 1),
(148, '203.00400.00', 'PCBA,NIB Processing Card,1.0,Micro-2', 'GSM-PCBA', 1),
(149, '203.00716.00', 'PCBA,SS,Ethernet Surge Protection,Rev 1.0', 'GSM-PCBA', 1),
(150, '203.00718.00', 'PCBA,Surge Protector,DS,Power,48VDC', 'GSM-PCBA', 1),
(151, '203.00400.12', 'PCBA,DS,NIB Processing Card,Micro-1 Variant', 'GSM-PCBA', 1),
(152, '203.00400.22', 'PCBA,DS,NIB Processing Card,1U Variant', 'GSM-PCBA', 1),
(153, '203.00400.32', 'PCBA,DS,NIB Processing Card,Pico-1 Variant', 'GSM-PCBA', 1),
(154, '203.00400.02', 'PCBA,DS,NIB Processing Card,Micro-2 Variant', 'GSM-PCBA', 1),
(155, '203.00391.00', '1U BSC Feed Card (OBF)', 'GSM-PCBA', 1),
(156, '203.00392.00', '1U BSC Backplane (OBP)', 'GSM-PCBA', 1),
(157, '203.00411.00', '1U BSC Main Card (OBM)', 'GSM-PCBA', 1),
(158, '203.00411.00', 'PCBA,DS,OBM Card', 'GSM-PCBA', 1),
(159, '203.00386.10', 'PCBA,DS,OBM Card', 'GSM-PCBA', 1),
(160, '203.00386.20', 'PCBA,DS,SDMB,Hybrid Variant', 'GSM-PCBA', 1),
(161, '203.00386.30', 'PCBA,DS,SDMB,Micro-2 Variant ', 'GSM-PCBA', 1),
(162, '203.00386.40', 'PCBA,DS,SDMB,Micro-2 Variant ', 'GSM-PCBA', 1),
(163, '203.00768.00', 'PCBA,DS,Ethernet Switch,6 Port,Gigabit,1000Base-LX10', 'GSM-PCBA', 1),
(164, '203.00768.02', 'PCBA,DS,Ethernet Switch,6 Port,Gigabit,1000Base-LX10', 'GSM-PCBA', 1),
(165, '203.00690.02', 'PCBA,DS,Hybrid BTS Adaptor Card,BTS Variant', 'GSM-PCBA', 1),
(166, '203.00540.00', 'PCBA, MSM, GFS-LTE', 'GSM-PCBA', 1),
(167, '203.00408.00', 'PCBA,DS,Micro-1 USB Daughter Card', 'GSM-PCBA', 1),
(168, '203.00770.00', 'PCBA,DS,uPTS Daughter Card,For NIB', 'GSM-PCBA', 1),
(169, '203.00480.00', 'PCBA,DS,Generic PTS Adapter Card,ROHS COMP', 'GSM-PCBA', 1),
(170, '203.00770.02', 'PCBA,DS,uPTS Daughter Card,For NIB', 'GSM-PCBA', 1),
(171, '203.00773.00', 'PCBA,SS,uPTS Child Card,For NIB', 'GSM-PCBA', 1),
(172, '203.00406.00', 'PCBA,DS,Dual USB to RS485 Converter', 'GSM-PCBA', 1),
(173, '203.00692.00', 'PCBA,SS,BTS R3 Pico-1 RTM 1800,Rev 1.0', 'GSM-PCBA', 1),
(174, '203.00692.02', 'PCBA,SS,BTS R3 Pico-1 RTM 1800, Rev 2.0', 'GSM-PCBA', 1),
(175, '203.00692.12', 'PCBA,SS,BTS R3 Pico-1 RTM 900,Rev 2.0', 'GSM-PCBA', 1),
(176, '203.00692.32', 'PCBA,SS,BTS R3 Pico-1 RTM 850,Rev 2.0', 'GSM-PCBA', 1),
(177, '203.00753.00', 'PCBA,DS,uPTS ADAPTER,For Micro1 PSU, Micro2 PSU and NIB Card', 'GSM-PCBA', 1),
(178, '203.00156.03', 'PCBA,RTM 850 MHz,Rev 5.0', 'GSM-PCBA', 1),
(179, '203.00541.01', 'PCBA,SS,93dB Attenuator,GFS-R2', 'GSM-PCBA', 1),
(180, '203.00543.00', 'PCBA, 4 WAY RF Pwr Splitter,R00, 0.8-6.0GHz, GFS-R2', 'GSM-PCBA', 1),
(181, '203.00802.00', 'PCBA,DS,Ethernet & Power Surge Protector', 'GSM-PCBA', 1),
(182, '203.00780.00', 'PCBA,DS,Micro-1 PSU Daughter', 'GSM-PCBA', 1),
(183, '203.10175.01', 'PCBA,RPA 850,Rev2', 'GSM-PCBA', 1),
(184, '203.00771.00', 'PCBA,DS,SGN', 'GSM-PCBA', 1),
(185, '203.00816.00', 'PCBA,DS,SGN-Pico', 'GSM-PCBA', 1),
(186, '203.10148.02', 'PCBA,SS,VPA850', 'GSM-PCBA', 1),
(187, '203.00178.01 ', 'PCBA, SS, EMI Filter, ROHS Comp, 48V', 'GSM-PCBA', 1),
(188, '203.00809.00', 'PCBA,DS,SUGS-RF,Circular', 'GSM-PCBA', 1),
(189, '203.00808.00', 'PCBA,DS,Small Unattended Ground Sensor (SUGS),Circular', 'GSM-PCBA', 1),
(190, '203.00779.00', 'PCBA,SS,R4 RFM 1W B3', 'GSM-PCBA', 1),
(191, '203.00704.03', 'PCBA,DS,Public adressing system(PAS)', 'GSM-PCBA', 1),
(192, '203.00813.00', 'PCBA,DS,IDC-Repeater Card', 'GSM-PCBA', 1),
(193, '203.00807.00', 'PCBA,DS,Intrusion Detection Cable (IDC)', 'GSM-PCBA', 1),
(194, '203.00814.00', 'PCBA,DS,Sensor Interface Board (SIB)', 'GSM-PCBA', 1),
(195, '203.00812.00', 'PCBA,DS, Micro Power Daughter Card, For PTS', 'GSM-PCBA', 1),
(196, '203.00788.00', 'PCBA,DS,R4 USM Daughter Card', 'GSM-PCBA', 1),
(197, '203.10418.00', 'PCBA,DS,FCBC-250', 'GSM-PCBA', 1),
(198, '203.00678.32', 'PCBA,BTS R3 Micro-2 RTM 850,R2.0', 'GSM-PCBA', 1),
(199, '203.00678.12', 'PCBA,BTS R3 Micro-2 RTM 900,R2.0', 'GSM-PCBA', 1),
(200, '203.00678.02', 'PCBA,BTS R3 Micro-2 RTM 1800,R2.0', 'GSM-PCBA', 1),
(201, '203.00801.10', 'PCBA,DS,SSU-Enhanced,w/o host processor', 'GSM-PCBA', 1),
(202, '203.10425.00', 'PCBA,DS,UART to USB,RS485 & RS232 Converter', 'GSM-PCBA', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pcba_records`
--

CREATE TABLE IF NOT EXISTS `pcbatracker_pcba_records` (
  `ID` int(20) NOT NULL AUTO_INCREMENT,
  `MasterID` int(20) DEFAULT NULL,
  `Sno` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PartNo` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RevNo` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ProdNo` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CardName` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CardStatus` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'CardStatus / BatchStatus : delivered, returned, received',
  `Stage` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `COD` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MODt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ModifiedBy` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EOD` datetime DEFAULT NULL,
  `Status` int(2) DEFAULT NULL COMMENT '1 is active, 0 is inactive and -1 is deleted',
  PRIMARY KEY (`ID`),
  KEY `Sno` (`Sno`),
  KEY `ProdNo` (`ProdNo`),
  KEY `Status` (`Status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `planning`
--

CREATE TABLE IF NOT EXISTS `pcbatracker_planning` (
  `MasterID` int(20) NOT NULL AUTO_INCREMENT,
  `SnoFrom` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SnoTo` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CardName` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `COD` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MODt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ModifiedBy` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EOD` datetime DEFAULT NULL,
  `Status` int(2) DEFAULT NULL COMMENT '1 is active, 0 is inactive and -1 is deleted',
  PRIMARY KEY (`MasterID`),
  KEY `Status` (`Status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `production_master`
--

CREATE TABLE IF NOT EXISTS `pcbatracker_production_master` (
  `BID` int(20) NOT NULL AUTO_INCREMENT,
  `BatchStatus` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'CardStatus / BatchStatus : delivered, returned, received',
  `ToEmpID` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ToEmail` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ToStage` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BatchQuantity` int(10) DEFAULT NULL,
  `COD` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MODt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ModifiedBy` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EOD` datetime DEFAULT NULL,
  `Status` int(2) DEFAULT NULL COMMENT '1 is active, 0 is inactive and -1 is deleted',
  PRIMARY KEY (`BID`),
  KEY `Status` (`Status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `production_transaction`
--

CREATE TABLE IF NOT EXISTS `pcbatracker_production_transaction` (
  `ID` int(20) NOT NULL AUTO_INCREMENT,
  `MasterID` int(20) DEFAULT NULL,
  `BID` int(20) DEFAULT NULL,
  `Sno` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PartNo` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RevNo` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ProdNo` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CardName` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BatchStatus` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'CardStatus / BatchStatus : delivered, returned, received',
  `FromStage` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `COD` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MODt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ModifiedBy` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EOD` datetime DEFAULT NULL,
  `Status` int(2) DEFAULT NULL COMMENT '1 is active, 0 is inactive and -1 is deleted',
  PRIMARY KEY (`ID`),
  KEY `ProdNo` (`ProdNo`),
  KEY `Status` (`Status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `quality_master`
--

CREATE TABLE IF NOT EXISTS `pcbatracker_quality_master` (
  `BID` int(20) NOT NULL AUTO_INCREMENT,
  `BatchStatus` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'CardStatus / BatchStatus : delivered, returned, received',
  `ToEmpID` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ToEmail` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ToStage` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BatchQuantity` int(10) DEFAULT NULL,
  `COD` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MODt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ModifiedBy` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EOD` datetime DEFAULT NULL,
  `Status` int(2) DEFAULT NULL COMMENT '1 is active, 0 is inactive and -1 is deleted',
  PRIMARY KEY (`BID`),
  KEY `Status` (`Status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `quality_transaction`
--

CREATE TABLE IF NOT EXISTS `pcbatracker_quality_transaction` (
  `ID` int(20) NOT NULL AUTO_INCREMENT,
  `MasterID` int(20) DEFAULT NULL,
  `BID` int(20) DEFAULT NULL,
  `Sno` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PartNo` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RevNo` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ProdNo` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CardName` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BatchStatus` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'CardStatus / BatchStatus : delivered, returned, received',
  `FromStage` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `COD` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MODt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ModifiedBy` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EOD` datetime DEFAULT NULL,
  `Status` int(2) DEFAULT NULL COMMENT '1 is active, 0 is inactive and -1 is deleted',
  PRIMARY KEY (`ID`),
  KEY `ProdNo` (`ProdNo`),
  KEY `Status` (`Status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE IF NOT EXISTS `pcbatracker_registration` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `EmpID` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Designation` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Stage` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
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
  `Status` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `EmpID` (`EmpID`),
  UNIQUE KEY `Username` (`Username`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=113 ;

--
-- Dumping data for table `registration`
--

INSERT INTO `pcbatracker_registration` (`ID`, `EmpID`, `Name`, `Designation`, `Stage`, `MobNo`, `Email`, `Username`, `Password`, `ReportingManager`, `ReportingHead`, `ExtensionNo`, `WorkFloor`, `Location`, `Role`, `Rights`, `COD`, `CreatedBy`, `MODt`, `ModifiedBy`, `EOD`, `Status`) VALUES
(1, 'VNL-GGN-1081', 'Abhishek Yadav', NULL, NULL, NULL, NULL, 'abhishek_yadav', 'user@123', 'VNL-GGN-0361', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-03-08 11:30:12', NULL, '2017-01-10 11:31:14', NULL),
(2, 'VNL-GGN-0236', 'Ajay Kumar Tyagi', NULL, NULL, NULL, NULL, 'ajay_kumar_tyagi', 'user@123', 'VNL-GGN-0228', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 2, '2017-02-16 11:30:44', NULL, '2017-03-08 11:30:12', NULL, '2017-02-16 11:30:44', NULL),
(3, 'VNL-GGN-0993', 'Ajeet Singh', NULL, NULL, NULL, NULL, 'ajeet_singh', 'user@123', 'VNL-GGN-0494', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-03-08 11:30:12', NULL, '2017-01-10 11:31:14', NULL),
(4, 'VNL-GGN-1147', 'Ajuvendra Singh', NULL, NULL, NULL, NULL, 'ajuvendra_singh', 'user@123', 'VNL-GGN-1011', 'VNL-GGN-0792', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-03-08 11:30:12', NULL, '2017-01-10 11:31:14', NULL),
(5, 'VNL-GGN-0837', 'Alok Sharma', NULL, NULL, NULL, NULL, 'alok_sharma', 'user@123', 'VNL-GGN-0228', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 1, '2017-01-10 11:30:44', NULL, '2017-03-08 11:30:12', NULL, '2017-01-10 11:30:44', NULL),
(6, 'VNL-GGN-0903', 'Amit Kumar Jain', NULL, NULL, NULL, NULL, 'amit_kumar_jain', 'user@123', 'VNL-GGN-0901', 'VNL-GGN-0837', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-03-08 11:30:12', NULL, '2017-01-10 11:31:14', NULL),
(7, 'VNL-GGN-1011', 'Amit Kumar Sharma', NULL, NULL, NULL, NULL, 'amit_kumar_sharma', 'user@123', 'VNL-GGN-0792', 'VNL-GGN-0792', NULL, NULL, NULL, NULL, 2, '2017-02-16 11:33:36', NULL, '2017-03-21 11:34:31', NULL, '2017-02-16 11:33:36', NULL),
(8, 'VNL-GGN-0920', 'Anil Kumar', NULL, NULL, NULL, NULL, 'anil_kumar', 'user@123', 'VNL-GGN-0835', 'VNL-GGN-0837', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-03-08 11:30:12', NULL, '2017-01-10 11:31:14', NULL),
(9, 'VNL-GGN-0827', 'Anil Kumar Gulati', NULL, NULL, NULL, NULL, 'anil_kumar_gulati', 'user@123', 'VNL-GGN-0901', 'VNL-GGN-0837', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-03-08 11:30:12', NULL, '2017-01-10 11:31:14', NULL),
(10, 'VNL-GGN-1125', 'Ankit Pant', NULL, NULL, NULL, NULL, 'ankit_pant', 'user@123', 'VNL-GGN-0236', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-03-08 11:30:12', NULL, '2017-01-10 11:31:14', NULL),
(11, 'VNL-GGN-1102', 'Arjun Singh', NULL, NULL, NULL, NULL, 'arjun_singh', 'user@123', 'VNL-GGN-0494', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-03-08 11:30:12', NULL, '2017-01-10 11:31:14', NULL),
(12, 'VNL-GGN-0268', 'Arun Kumar Shukla', NULL, NULL, NULL, NULL, 'arun_kumar_shukla', 'user@123', 'VNL-GGN-0622', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-03-08 11:30:12', NULL, '2017-01-10 11:31:14', NULL),
(13, 'VNL-GGN-0228', 'Ashish Kr. Verma', NULL, NULL, NULL, NULL, 'ashish_kr_verma', 'user@123', 'VNL-GGN-0228', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 1, '2017-02-16 11:31:02', NULL, '2017-03-08 11:32:28', NULL, '2017-02-16 11:31:02', NULL),
(14, 'VNL-GGN-0965', 'Ashok Pal', NULL, NULL, NULL, NULL, 'ashok_pal', 'user@123', 'VNL-GGN-0792', 'VNL-GGN-0792', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-03-08 11:30:12', NULL, '2017-01-10 11:31:14', NULL),
(15, 'VNL-GGN-1110', 'Ashutosh Kumar', NULL, NULL, NULL, NULL, 'ashutosh_kumar', 'user@123', 'VNL-GGN-0494', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 3, '2017-02-16 11:29:13', NULL, '2017-03-21 11:34:27', NULL, '2017-02-16 11:29:13', NULL),
(16, 'VNL-GGN-1096', 'Basil Joy', NULL, NULL, NULL, NULL, 'basil_joy', 'user@123', 'VNL-GGN-0494', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-03-08 11:30:12', NULL, '2017-01-10 11:31:14', NULL),
(17, 'VNL-GGN-0994', 'Bhupender Kumar', NULL, NULL, NULL, NULL, 'bhupender_kumar', 'user@123', 'VNL-GGN-0494', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-03-08 11:30:12', NULL, '2017-01-10 11:31:14', NULL),
(18, 'VNL-GGN-0963', 'Brijpal Singh Rawat', NULL, NULL, NULL, NULL, 'brijpal_singh_rawat', 'user@123', 'VNL-GGN-0835', 'VNL-GGN-0837', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-03-08 11:30:12', NULL, '2017-01-10 11:31:14', NULL),
(19, 'VNL-GGN-1016', 'Cheol Hee Lee', NULL, NULL, NULL, NULL, 'cheol_hee_lee', 'user@123', 'VNL-GGN-0228', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-03-08 11:30:12', NULL, '2017-01-10 11:31:14', NULL),
(20, 'VNL-GGN-1059', 'Deepak ', NULL, NULL, NULL, NULL, 'deepak', 'user@123', 'VNL-GGN-0835', 'VNL-GGN-0837', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-03-08 11:30:12', NULL, '2017-01-10 11:31:14', NULL),
(21, 'VNL-GGN-1140', 'Deepak Kumar', NULL, NULL, NULL, NULL, 'deepak_kumar', 'user@123', 'VNL-GGN-0494', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-03-08 11:30:12', NULL, '2017-01-10 11:31:14', NULL),
(22, 'VNL-GGN-0861', 'Dushyant Kumar', NULL, NULL, NULL, NULL, 'dushyant_kumar', 'user@123', 'VNL-GGN-0622', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-03-08 11:30:12', NULL, '2017-01-10 11:31:14', NULL),
(23, 'VNL-GGN-0961', 'Faijal Ali', NULL, NULL, NULL, NULL, 'faijal_ali', 'user@123', 'VNL-GGN-0381', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-03-08 11:30:12', NULL, '2017-01-10 11:31:14', NULL),
(24, 'VNL-GGN-1162', 'Gautam Kumar', NULL, NULL, NULL, NULL, 'gautam_kumar', 'user@123', 'VNL-GGN-0622', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-03-08 11:30:12', NULL, '2017-01-10 11:31:14', NULL),
(25, 'VNL-GGN-0944', 'Gurdeep Singh Drall', NULL, NULL, NULL, NULL, 'gurdeep_singh_drall', 'user@123', 'VNL-GGN-0361', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-03-08 11:30:12', NULL, '2017-01-10 11:31:14', NULL),
(26, 'VNL-GGN-0979', 'Harpal Yadav', NULL, NULL, NULL, NULL, 'harpal_yadav', 'user@123', 'VNL-GGN-0622', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-03-08 11:30:12', NULL, '2017-01-10 11:31:14', NULL),
(27, 'VNL-GGN-0794', 'J. Kishore Babu', NULL, NULL, NULL, NULL, 'j_kishore_babu', 'user@123', 'VNL-GGN-0792', 'VNL-GGN-0792', NULL, NULL, NULL, NULL, 2, '2017-01-10 11:31:27', NULL, '2017-03-08 11:30:12', NULL, '2017-01-10 11:31:27', NULL),
(28, 'VNL-GGN-0915', 'Jagdish ', NULL, NULL, NULL, NULL, 'jagdish', 'user@123', 'VNL-GGN-0622', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 3, '2017-02-16 11:35:54', NULL, '2017-03-08 11:30:12', NULL, '2017-02-16 11:35:54', NULL),
(29, 'VNL-GGN-1070', 'Jitender ', NULL, NULL, NULL, NULL, 'jitender', 'user@123', 'VNL-GGN-0835', 'VNL-GGN-0837', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-03-08 11:30:12', NULL, '2017-01-10 11:31:14', NULL),
(30, 'VNL-GGN-0973', 'Jitender Uppal', NULL, NULL, NULL, NULL, 'jitender_uppal', 'user@123', 'VNL-GGN-0228', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 1, '2017-02-08 12:19:22', NULL, '2017-03-21 11:34:29', NULL, '2017-02-08 12:19:22', NULL),
(31, 'VNL-GGN-0839', 'Kapil Kumar Tyagi', NULL, NULL, NULL, NULL, 'kapil_kumar_tyagi', 'user@123', 'VNL-GGN-0835', 'VNL-GGN-0837', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-03-08 11:30:12', NULL, '2017-01-10 11:31:14', NULL),
(32, 'VNL-GGN-0981', 'Karan Singh', NULL, NULL, NULL, NULL, 'karan_singh', 'user@123', 'VNL-GGN-0622', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-03-08 11:30:12', NULL, '2017-01-10 11:31:14', NULL),
(33, 'VNL-GGN-0962', 'Krishan Kumar', NULL, NULL, NULL, NULL, 'krishan_kumar', 'user@123', 'VNL-GGN-0381', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-03-08 11:30:12', NULL, '2017-01-10 11:31:14', NULL),
(34, 'VNL-GGN-0894', 'Kuldeep Gupta', NULL, NULL, NULL, NULL, 'kuldeep_gupta', 'user@123', 'VNL-GGN-0494', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-03-08 11:30:12', NULL, '2017-01-10 11:31:14', NULL),
(35, 'VNL-GGN-0900', 'Kunwar Singh Negi', NULL, NULL, NULL, NULL, 'kunwar_singh_negi', 'user@123', 'VNL-GGN-0835', 'VNL-GGN-0837', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-03-08 11:30:12', NULL, '2017-01-10 11:31:14', NULL),
(36, 'VNL-GGN-0733', 'Lakhan Lal', NULL, NULL, NULL, NULL, 'lakhan_lal', 'user@123', 'VNL-GGN-0381', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 3, '2017-02-16 11:37:20', NULL, '2017-03-21 11:34:25', NULL, '2017-02-16 11:37:20', NULL),
(37, 'VNL-GGN-0936', 'Lalit Mohan Sanwal', NULL, NULL, NULL, NULL, 'lalit_mohan_sanwal', 'user@123', 'VNL-GGN-0381', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-03-08 11:30:12', NULL, '2017-01-10 11:31:14', NULL),
(38, 'VNL-GGN-0907', 'Lalita Singh', NULL, NULL, NULL, NULL, 'lalita_singh', 'user@123', 'VNL-GGN-0901', 'VNL-GGN-0837', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-03-08 11:30:12', NULL, '2017-01-10 11:31:14', NULL),
(39, 'VNL-GGN-0908', 'Laveesh Kumar Aggarwal', NULL, NULL, NULL, NULL, 'laveesh_kumar_aggarw', 'user@123', 'VNL-GGN-0901', 'VNL-GGN-0837', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-03-08 11:30:12', NULL, '2017-01-10 11:31:14', NULL),
(40, 'VNL-GGN-0905', 'Lokesh Saraswat', NULL, NULL, NULL, NULL, 'lokesh_saraswat', 'user@123', 'VNL-GGN-0901', 'VNL-GGN-0837', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-03-08 11:30:12', NULL, '2017-01-10 11:31:14', NULL),
(41, 'VNL-GGN-0381', 'Mahesh Chander', NULL, NULL, NULL, NULL, 'mahesh_chander', 'user@123', 'VNL-GGN-0236', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 2, '2017-01-10 11:31:27', NULL, '2017-03-08 11:30:12', NULL, '2017-01-10 11:31:27', NULL),
(42, 'VNL-GGN-0911', 'Mahesh Chandra', NULL, NULL, NULL, NULL, 'mahesh_chandra', 'user@123', 'VNL-GGN-0837', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-03-08 11:30:12', NULL, '2017-01-10 11:31:14', NULL),
(43, 'VNL-GGN-0887', 'Maheshwar Prasad Bhatt', NULL, NULL, NULL, NULL, 'maheshwar_prasad_bha', 'user@123', 'Deepak Gupta', 'Deepak Gupta', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-03-08 11:30:12', NULL, '2017-01-10 11:31:14', NULL),
(44, 'VNL-GGN-1058', 'Manish Berwal', NULL, NULL, NULL, NULL, 'manish_berwal', 'user@123', 'VNL-GGN-1011', 'VNL-GGN-0792', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-03-08 11:30:12', NULL, '2017-01-10 11:31:14', NULL),
(45, 'VNL-GGN-0901', 'Manish Kumar Goyal', NULL, NULL, NULL, NULL, 'manish_kumar_goyal', 'user@123', 'VNL-GGN-0837', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 2, '2017-01-10 11:31:27', NULL, '2017-03-08 11:30:12', NULL, '2017-01-10 11:31:27', NULL),
(46, 'VNL-GGN-0893', 'Manoj Kumar', NULL, NULL, NULL, NULL, 'manoj_kumar', 'user@123', 'VNL-GGN-0494', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-03-08 11:30:12', NULL, '2017-01-10 11:31:14', NULL),
(47, 'VNL-GGN-0926', 'Manoj Kumar', NULL, NULL, NULL, NULL, 'manoj_kumar_2', 'user@123', 'VNL-GGN-0792', 'VNL-GGN-0792', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-03-08 11:30:12', NULL, '2017-01-10 11:31:14', NULL),
(48, 'VNL-GGN-1114', 'Mohit Gupta', NULL, NULL, NULL, NULL, 'mohit_gupta', 'user@123', 'VNL-GGN-0494', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 3, '2017-02-16 11:34:53', NULL, '2017-03-21 11:34:21', NULL, '2017-02-16 11:34:53', NULL),
(49, 'VNL-GGN-0836', 'Naresh Kumar', NULL, NULL, NULL, NULL, 'naresh_kumar', 'user@123', 'VNL-GGN-0837', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-03-08 11:30:12', NULL, '2017-01-10 11:31:14', NULL),
(50, 'VNL-GGN-0957', 'Naresh Kumar', NULL, NULL, NULL, NULL, 'naresh_kumar_2', 'user@123', 'VNL-GGN-0622', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-03-08 11:30:12', NULL, '2017-01-10 11:31:14', NULL),
(51, 'VNL-GGN-0972', 'Narinder Singh', NULL, NULL, NULL, NULL, 'narinder_singh', 'user@123', 'VNL-GGN-0381', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-03-08 11:30:12', NULL, '2017-01-10 11:31:14', NULL),
(52, 'VNL-GGN-1100', 'Neeraj', NULL, NULL, NULL, NULL, 'neeraj', 'user@123', 'VNL-GGN-0494', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 3, '2017-01-13 14:00:54', NULL, '2017-03-08 11:30:12', NULL, '2017-01-13 14:00:54', NULL),
(53, 'VNL-GGN-0977', 'Neeraj Verma', NULL, NULL, NULL, NULL, 'neeraj_verma', 'user@123', 'VNL-GGN-0494', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-03-08 11:30:12', NULL, '2017-01-10 11:31:14', NULL),
(54, 'VNL-GGN-0906', 'Neha Mehta', NULL, NULL, NULL, NULL, 'neha_mehta', 'user@123', 'VNL-GGN-0901', 'VNL-GGN-0837', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-03-08 11:30:12', NULL, '2017-01-10 11:31:14', NULL),
(55, 'VNL-GGN-1104', 'Nitin Sehrawat', NULL, NULL, NULL, NULL, 'nitin_sehrawat', 'user@123', 'VNL-GGN-0361', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-03-08 11:30:12', NULL, '2017-01-10 11:31:14', NULL),
(56, 'VNL-GGN-0921', 'Nityanand Mishra', NULL, NULL, NULL, NULL, 'nityanand_mishra', 'user@123', 'VNL-GGN-0494', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-03-08 11:30:12', NULL, '2017-01-10 11:31:14', NULL),
(57, 'VNL-GGN-1105', 'Pankaj Kumar', NULL, NULL, NULL, NULL, 'pankaj_kumar', 'user@123', 'VNL-GGN-0835', 'VNL-GGN-0837', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-03-08 11:30:12', NULL, '2017-01-10 11:31:14', NULL),
(58, 'VNL-GGN-0930', 'Pankaj Oberoi', NULL, NULL, NULL, NULL, 'pankaj_oberoi', 'user@123', 'VNL-GGN-0494', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-03-08 11:30:12', NULL, '2017-01-10 11:31:14', NULL),
(59, 'VNL-GGN-0838', 'Pankaj Upadhyay', NULL, NULL, NULL, NULL, 'pankaj_upadhyay', 'user@123', 'VNL-GGN-0835', 'VNL-GGN-0837', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-03-08 11:30:12', NULL, '2017-01-10 11:31:14', NULL),
(60, 'VNL-GGN-0929', 'Parmod Kumar', NULL, NULL, NULL, NULL, 'parmod_kumar', 'user@123', 'VNL-GGN-0835', 'VNL-GGN-0837', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-03-08 11:30:12', NULL, '2017-01-10 11:31:14', NULL),
(61, 'VNL-GGN-0897', 'Partha Pratim Chattoraj', NULL, NULL, NULL, NULL, 'partha_pratim_chatto', 'user@123', 'VNL-GGN-0901', 'VNL-GGN-0837', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-03-08 11:30:12', NULL, '2017-01-10 11:31:14', NULL),
(62, 'VNL-GGN-0870', 'Parveen Kumar', NULL, NULL, NULL, NULL, 'parveen_kumar', 'user@123', 'VNL-GGN-0494', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-03-08 11:30:12', NULL, '2017-01-10 11:31:14', NULL),
(63, 'VNL-GGN-0964', 'Pawan Kumar', NULL, NULL, NULL, NULL, 'pawan_kumar', 'user@123', 'VNL-GGN-0622', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-03-08 11:30:12', NULL, '2017-01-10 11:31:14', NULL),
(64, 'VNL-GGN-1101', 'Poonam Gupta', NULL, NULL, NULL, NULL, 'poonam_gupta', 'user@123', 'VNL-GGN-0494', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-03-08 11:30:12', NULL, '2017-01-10 11:31:14', NULL),
(65, 'VNL-GGN-1107', 'Pradip Kumar', NULL, NULL, NULL, NULL, 'pradip_kumar', 'user@123', 'VNL-GGN-0494', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-03-08 11:30:12', NULL, '2017-01-10 11:31:14', NULL),
(66, 'VNL-GGN-1080', 'Prashant Kumar Doove', NULL, NULL, NULL, NULL, 'prashant_kumar_doove', 'user@123', 'VNL-GGN-0494', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-03-08 11:30:12', NULL, '2017-01-10 11:31:14', NULL),
(67, 'VNL-GGN-1143', 'Prashant Kumar Jha', NULL, NULL, NULL, NULL, 'prashant_kumar_jha', 'user@123', 'VNL-GGN-1011', 'VNL-GGN-0792', NULL, NULL, NULL, NULL, 3, '2017-02-16 11:33:14', NULL, '2017-03-08 11:30:12', NULL, '2017-02-16 11:33:14', NULL),
(68, 'VNL-GGN-1103', 'Prateek Satija', NULL, NULL, NULL, NULL, 'prateek_satija', 'user@123', 'VNL-GGN-0361', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-03-08 11:30:12', NULL, '2017-01-10 11:31:14', NULL),
(69, 'VNL-GGN-0978', 'Praveen Kumar', NULL, NULL, NULL, NULL, 'praveen_kumar', 'user@123', 'VNL-GGN-0381', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-03-08 11:30:12', NULL, '2017-01-10 11:31:14', NULL),
(70, 'VNL-GGN-1111', 'Pravesh', NULL, NULL, NULL, NULL, 'pravesh', 'user@123', 'VNL-GGN-0494', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-03-08 11:30:12', NULL, '2017-01-10 11:31:14', NULL),
(71, 'VNL-GGN-0898', 'R. Vijaya Kumar', NULL, NULL, NULL, NULL, 'r_vijaya_kumar', 'user@123', 'VNL-GGN-0794', 'VNL-GGN-0792', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-03-08 11:30:12', NULL, '2017-01-10 11:31:14', NULL),
(72, 'VNL-GGN-1141', 'Rahul Kumar', NULL, NULL, NULL, NULL, 'rahul_kumar', 'user@123', 'VNL-GGN-0236', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-03-08 11:30:12', NULL, '2017-01-10 11:31:14', NULL),
(73, 'VNL-GGN-0912', 'Raj Karan', NULL, NULL, NULL, NULL, 'raj_karan', 'user@123', 'VNL-GGN-0837', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-03-08 11:30:12', NULL, '2017-01-10 11:31:14', NULL),
(74, 'VNL-GGN-0832', 'Raj Kumar', NULL, NULL, NULL, NULL, 'raj_kumar', 'user@123', 'VNL-GGN-0236', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-03-08 11:30:12', NULL, '2017-01-10 11:31:14', NULL),
(75, 'VNL-GGN-0547', 'Rajender Singh', NULL, NULL, NULL, NULL, 'rajender_singh', 'user@123', 'VNL-GGN-0622', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 3, '2017-02-16 11:35:31', NULL, '2017-03-21 11:34:19', NULL, '2017-02-16 11:35:31', NULL),
(76, 'VNL-GGN-1052', 'Rajendra Kumar Maurya ', NULL, NULL, NULL, NULL, 'rajendra_kumar_maury', 'user@123', 'VNL-GGN-0494', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-03-08 11:30:12', NULL, '2017-01-10 11:31:14', NULL),
(77, 'VNL-GGN-0793', 'Rajesh Kumar', NULL, NULL, NULL, NULL, 'rajesh_kumar', 'user@123', 'VNL-GGN-0794', 'VNL-GGN-0792', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-03-08 11:30:12', NULL, '2017-01-10 11:31:14', NULL),
(78, 'VNL-GGN-0985', 'Raju Verma', NULL, NULL, NULL, NULL, 'raju_verma', 'user@123', 'VNL-GGN-0837', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-03-08 11:30:12', NULL, '2017-01-10 11:31:14', NULL),
(79, 'VNL-GGN-0902', 'Rakesh Singh', NULL, NULL, NULL, NULL, 'rakesh_singh', 'user@123', 'VNL-GGN-0901', 'VNL-GGN-0837', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-03-08 11:30:12', NULL, '2017-01-10 11:31:14', NULL),
(80, 'VNL-GGN-1154', 'Ramanpreet Kaur', NULL, NULL, NULL, NULL, 'ramanpreet_kaur', 'user@123', 'VNL-GGN-0494', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-03-08 11:30:12', NULL, '2017-01-10 11:31:14', NULL),
(81, 'VNL-GGN-0361', 'Ramesh Chandra Saxena', NULL, NULL, NULL, NULL, 'ramesh_chandra_saxen', 'user@123', 'VNL-GGN-0494', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 2, '2017-01-10 11:31:27', NULL, '2017-03-08 11:30:12', NULL, '2017-01-10 11:31:27', NULL),
(82, 'VNL-GGN-0792', 'Ramvir Singh', NULL, NULL, NULL, NULL, 'ramvir_singh', 'user@123', 'VNL-GGN-0228', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 1, '2017-01-10 11:30:44', NULL, '2017-03-08 11:30:12', NULL, '2017-01-10 11:30:44', NULL),
(83, 'VNL-GGN-1179', 'Ravi Kumar', NULL, NULL, NULL, NULL, 'ravi_kumar', 'user@123', 'VNL-GGN-0835', 'VNL-GGN-0837', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-03-08 11:30:12', NULL, '2017-01-10 11:31:14', NULL),
(84, 'VNL-GGN-0835', 'Ravinder Kumar', NULL, NULL, NULL, NULL, 'ravinder_kumar', 'user@123', 'VNL-GGN-0837', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 2, '2017-01-10 11:31:27', NULL, '2017-03-08 11:30:12', NULL, '2017-01-10 11:31:27', NULL),
(85, 'VNL-GGN-1151', 'Sahil Verma', NULL, NULL, NULL, NULL, 'sahil_verma', 'user@123', 'VNL-GGN-0494', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-03-08 11:30:12', NULL, '2017-01-10 11:31:14', NULL),
(86, 'VNL-GGN-0999', 'Sameer Yadav', NULL, NULL, NULL, NULL, 'sameer_yadav', 'user@123', 'VNL-GGN-0973', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 3, '2017-02-16 11:29:48', NULL, '2017-03-21 11:34:17', NULL, '2017-02-16 11:29:48', NULL),
(87, 'VNL-GGN-1106', 'Sandeep Dhama', NULL, NULL, NULL, NULL, 'sandeep_dhama', 'user@123', 'VNL-GGN-0973', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 3, '2017-02-08 12:20:19', NULL, '2017-03-08 11:30:12', NULL, '2017-02-08 12:20:19', NULL),
(88, 'VNL-GGN-1142', 'Satinder Kumar', NULL, NULL, NULL, NULL, 'satinder_kumar', 'user@123', 'VNL-GGN-0361', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-03-08 11:30:12', NULL, '2017-01-10 11:31:14', NULL),
(89, 'VNL-GGN-0940', 'Satish Chandra Sati', NULL, NULL, NULL, NULL, 'satish_chandra_sati', 'user@123', 'VNL-GGN-0835', 'VNL-GGN-0837', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-03-08 11:30:12', NULL, '2017-01-10 11:31:14', NULL),
(90, 'VNL-GGN-0955', 'Saurabh Chauhan', NULL, NULL, NULL, NULL, 'saurabh_chauhan', 'user@123', 'VNL-GGN-0236', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 3, '2017-02-16 11:32:36', NULL, '2017-03-08 11:30:12', NULL, '2017-02-16 11:32:36', NULL),
(91, 'VNL-GGN-1124', 'Seha', NULL, NULL, NULL, NULL, 'seha', 'user@123', 'VNL-GGN-0236', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-03-08 11:30:12', NULL, '2017-01-10 11:31:14', NULL),
(92, 'VNL-GGN-1012', 'Shiv Kumar', NULL, NULL, NULL, NULL, 'shiv_kumar', 'user@123', 'VNL-GGN-1011', 'VNL-GGN-0792', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-03-08 11:30:12', NULL, '2017-01-10 11:31:14', NULL),
(93, 'VNL-GGN-0896', 'Shiv Narain Singh', NULL, NULL, NULL, NULL, 'shiv_narain_singh', 'user@123', 'VNL-GGN-0901', 'VNL-GGN-0837', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-03-08 11:30:12', NULL, '2017-01-10 11:31:14', NULL),
(94, 'VNL-GGN-0917', 'Shravan Kumar Maurya', NULL, NULL, NULL, NULL, 'shravan_kumar_maurya', 'user@123', 'VNL-GGN-0494', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-03-08 11:30:12', NULL, '2017-01-10 11:31:14', NULL),
(95, 'VNL-GGN-0795', 'Shyam Prakash Sharma', NULL, NULL, NULL, NULL, 'shyam_prakash_sharma', 'user@123', 'VNL-GGN-0792', 'VNL-GGN-0792', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-03-08 11:30:12', NULL, '2017-01-10 11:31:14', NULL),
(96, 'VNL-GGN-1097', 'Sorabh', NULL, NULL, NULL, NULL, 'sorabh', 'user@123', 'VNL-GGN-0494', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-03-08 11:30:12', NULL, '2017-01-10 11:31:14', NULL),
(97, 'VNL-GGN-0494', 'Sunil Joshi', NULL, NULL, NULL, NULL, 'sunil_joshi', 'test123', 'VNL-GGN-0228', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 2, '2017-02-08 12:36:14', NULL, '2017-03-08 11:30:12', NULL, '2017-02-08 12:36:14', NULL),
(98, 'VNL-GGN-0925', 'Sunil Kumar', NULL, NULL, NULL, NULL, 'sunil_kumar', 'user@123', 'VNL-GGN-0494', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-03-08 11:30:12', NULL, '2017-01-10 11:31:14', NULL),
(99, 'VNL-GGN-0622', 'Sunil Mittal', NULL, NULL, NULL, NULL, 'sunil_mittal', 'user@123', 'VNL-GGN-0228', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 2, '2017-01-10 11:31:27', NULL, '2017-03-08 11:30:12', NULL, '2017-01-10 11:31:27', NULL),
(100, 'VNL-GGN-0087', 'Surender Sharma', NULL, NULL, NULL, NULL, 'surender_sharma', 'user@123', 'VNL-GGN-0236', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-03-08 11:30:12', NULL, '2017-01-10 11:31:14', NULL),
(101, 'VNL-GGN-0904', 'Surender Singh', NULL, NULL, NULL, NULL, 'surender_singh', 'user@123', 'VNL-GGN-0901', 'VNL-GGN-0837', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-03-08 11:30:12', NULL, '2017-01-10 11:31:14', NULL),
(102, 'VNL-GGN-1069', 'Sushil Kumar', NULL, NULL, NULL, NULL, 'sushil_kumar', 'user@123', 'VNL-GGN-0835', 'VNL-GGN-0837', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-03-08 11:30:12', NULL, '2017-01-10 11:31:14', NULL),
(103, 'VNL-GGN-0829', 'T. Balasubramanian', NULL, NULL, NULL, NULL, 't_balasubramanian', 'user@123', 'VNL-GGN-0381', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 3, '2017-02-16 11:36:31', NULL, '2017-03-08 11:30:12', NULL, '2017-02-16 11:36:31', NULL),
(104, 'VNL-GGN-1169', 'Tanuj Saklani', NULL, NULL, NULL, NULL, 'tanuj_saklani', 'user@123', 'VNL-GGN-0236', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 3, '2017-02-16 11:34:33', NULL, '2017-03-08 11:30:12', NULL, '2017-02-16 11:34:33', NULL),
(105, 'VNL-GGN-1098', 'Upendra Chauhan', NULL, NULL, NULL, NULL, 'upendra_chauhan', 'user@123', 'VNL-GGN-0361', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-03-08 11:30:12', NULL, '2017-01-10 11:31:14', NULL),
(106, 'VNL-GGN-0937', 'Vinod', NULL, NULL, NULL, NULL, 'vinod', 'user@123', 'VNL-GGN-0236', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-03-08 11:30:12', NULL, '2017-01-10 11:31:14', NULL),
(107, 'VNL-GGN-0877', 'Vinod Kumar', NULL, NULL, NULL, NULL, 'vinod_kumar', 'user@123', 'VNL-GGN-0794', 'VNL-GGN-0792', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-03-08 11:30:12', NULL, '2017-01-10 11:31:14', NULL),
(108, 'VNL-GGN-1051', 'Vipin Kumar', NULL, NULL, NULL, NULL, 'vipin_kumar', 'user@123', 'VNL-GGN-0494', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-03-08 11:30:12', NULL, '2017-01-10 11:31:14', NULL),
(109, 'VNL-GGN-0899', 'Virendra Singh Rawat', NULL, NULL, NULL, NULL, 'virendra_singh_rawat', 'user@123', 'VNL-GGN-0837', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-03-08 11:30:12', NULL, '2017-01-10 11:31:14', NULL),
(110, 'VNL-GGN-1050', 'Vishesh Rai', NULL, NULL, NULL, NULL, 'vishesh_rai', 'user@123', 'VNL-GGN-0494', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 3, '2017-01-10 11:31:14', NULL, '2017-03-08 11:30:12', NULL, '2017-01-10 11:31:14', NULL),
(111, 'VNL-GGN-0910', 'Yogesh Chand Sharma', NULL, NULL, NULL, NULL, 'yogesh_chand_sharma', 'user@123', 'VNL-GGN-0837', 'VNL-GGN-0228', NULL, NULL, NULL, NULL, 3, '2017-02-16 11:31:53', NULL, '2017-03-08 11:30:12', NULL, '2017-02-16 11:31:53', NULL),
(112, 'VNL-GGN-2000', 'test', 'test', NULL, '', NULL, 'test', 'user@123', 'VNL-GGN-0494', 'VNL-GGN-0228', '', '0', '31/5, Sector 5, IMT-Manesar, Gurgaon', NULL, NULL, '2017-02-13 14:46:14', NULL, '2017-03-21 11:34:13', NULL, '2017-02-13 14:46:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `smt_master`
--

CREATE TABLE IF NOT EXISTS `pcbatracker_smt_master` (
  `BID` int(20) NOT NULL AUTO_INCREMENT,
  `BatchStatus` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'CardStatus / BatchStatus : delivered, returned, received',
  `ToEmpID` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ToEmail` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ToStage` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BatchQuantity` int(10) DEFAULT NULL,
  `COD` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MODt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ModifiedBy` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EOD` datetime DEFAULT NULL,
  `Status` int(2) DEFAULT NULL COMMENT '1 is active, 0 is inactive and -1 is deleted',
  PRIMARY KEY (`BID`),
  KEY `Status` (`Status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `smt_transaction`
--

CREATE TABLE IF NOT EXISTS `pcbatracker_smt_transaction` (
  `ID` int(20) NOT NULL AUTO_INCREMENT,
  `MasterID` int(20) DEFAULT NULL,
  `BID` int(20) DEFAULT NULL,
  `Sno` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PartNo` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RevNo` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ProdNo` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CardName` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BatchStatus` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'CardStatus / BatchStatus : delivered, returned, received',
  `FromStage` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `COD` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MODt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ModifiedBy` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EOD` datetime DEFAULT NULL,
  `Status` int(2) DEFAULT NULL COMMENT '1 is active, 0 is inactive and -1 is deleted',
  PRIMARY KEY (`ID`),
  KEY `ProdNo` (`ProdNo`),
  KEY `Status` (`Status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `store_master`
--

CREATE TABLE IF NOT EXISTS `pcbatracker_store_master` (
  `BID` int(20) NOT NULL AUTO_INCREMENT,
  `BatchStatus` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'CardStatus / BatchStatus : delivered, returned, received',
  `ToEmpID` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ToEmail` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ToStage` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BatchQuantity` int(10) DEFAULT NULL,
  `COD` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MODt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ModifiedBy` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EOD` datetime DEFAULT NULL,
  `Status` int(2) DEFAULT NULL COMMENT '1 is active, 0 is inactive and -1 is deleted',
  PRIMARY KEY (`BID`),
  KEY `Status` (`Status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `store_transaction`
--

CREATE TABLE IF NOT EXISTS `pcbatracker_store_transaction` (
  `ID` int(20) NOT NULL AUTO_INCREMENT,
  `MasterID` int(20) DEFAULT NULL,
  `BID` int(20) DEFAULT NULL,
  `Sno` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PartNo` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RevNo` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ProdNo` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CardName` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BatchStatus` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'CardStatus / BatchStatus : delivered, returned, received',
  `FromStage` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `COD` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MODt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ModifiedBy` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EOD` datetime DEFAULT NULL,
  `Status` int(2) DEFAULT NULL COMMENT '1 is active, 0 is inactive and -1 is deleted',
  PRIMARY KEY (`ID`),
  KEY `ProdNo` (`ProdNo`),
  KEY `Status` (`Status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `testing_master`
--

CREATE TABLE IF NOT EXISTS `pcbatracker_testing_master` (
  `BID` int(20) NOT NULL AUTO_INCREMENT,
  `BatchStatus` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'CardStatus / BatchStatus : delivered, returned, received',
  `ToEmpID` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ToEmail` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ToStage` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BatchQuantity` int(10) DEFAULT NULL,
  `COD` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MODt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ModifiedBy` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EOD` datetime DEFAULT NULL,
  `Status` int(2) DEFAULT NULL COMMENT '1 is active, 0 is inactive and -1 is deleted',
  PRIMARY KEY (`BID`),
  KEY `Status` (`Status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `testing_transaction`
--

CREATE TABLE IF NOT EXISTS `pcbatracker_testing_transaction` (
  `ID` int(20) NOT NULL AUTO_INCREMENT,
  `MasterID` int(20) DEFAULT NULL,
  `BID` int(20) DEFAULT NULL,
  `Sno` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PartNo` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RevNo` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ProdNo` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CardName` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BatchStatus` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'CardStatus / BatchStatus : delivered, returned, received',
  `FromStage` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `COD` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MODt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ModifiedBy` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EOD` datetime DEFAULT NULL,
  `Status` int(2) DEFAULT NULL COMMENT '1 is active, 0 is inactive and -1 is deleted',
  PRIMARY KEY (`ID`),
  KEY `ProdNo` (`ProdNo`),
  KEY `Status` (`Status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `thruhole_master`
--

CREATE TABLE IF NOT EXISTS `pcbatracker_thruhole_master` (
  `BID` int(20) NOT NULL AUTO_INCREMENT,
  `BatchStatus` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'CardStatus / BatchStatus : delivered, returned, received',
  `ToEmpID` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ToEmail` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ToStage` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BatchQuantity` int(10) DEFAULT NULL,
  `COD` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MODt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ModifiedBy` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EOD` datetime DEFAULT NULL,
  `Status` int(2) DEFAULT NULL COMMENT '1 is active, 0 is inactive and -1 is deleted',
  PRIMARY KEY (`BID`),
  KEY `Status` (`Status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `thruhole_transaction`
--

CREATE TABLE IF NOT EXISTS `pcbatracker_thruhole_transaction` (
  `ID` int(20) NOT NULL AUTO_INCREMENT,
  `MasterID` int(20) DEFAULT NULL,
  `BID` int(20) DEFAULT NULL,
  `Sno` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PartNo` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RevNo` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ProdNo` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CardName` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BatchStatus` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'CardStatus / BatchStatus : delivered, returned, received',
  `FromStage` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `COD` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MODt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ModifiedBy` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EOD` datetime DEFAULT NULL,
  `Status` int(2) DEFAULT NULL COMMENT '1 is active, 0 is inactive and -1 is deleted',
  PRIMARY KEY (`ID`),
  KEY `ProdNo` (`ProdNo`),
  KEY `Status` (`Status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
