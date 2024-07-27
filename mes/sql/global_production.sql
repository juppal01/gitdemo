
--
-- Database: `EMS`
--

--
-- Table structure for table `pcbatracker_empstage`
--

CREATE TABLE IF NOT EXISTS `pcbatracker_empstage` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `EmpID` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Stage` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Allowed stages: planning, smt, thruhole, quality, testing, store, production, admin',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=114 ;

--
-- Dumping data for table `pcbatracker_empstage`
--

INSERT INTO `pcbatracker_empstage` (`ID`, `EmpID`, `Name`, `Stage`) VALUES
(1, 'VNL-GGN-1081', 'Abhishek Yadav', NULL),
(2, 'VNL-GGN-0236', 'Ajay Kumar Tyagi', NULL),
(3, 'VNL-GGN-0993', 'Ajeet Singh', 'testing'),
(4, 'VNL-GGN-1147', 'Ajuvendra Singh', NULL),
(5, 'VNL-GGN-0837', 'Alok Sharma', NULL),
(6, 'VNL-GGN-0903', 'Amit Kumar Jain', NULL),
(7, 'VNL-GGN-1011', 'Amit Kumar Sharma', NULL),
(8, 'VNL-GGN-0920', 'Anil Kumar', NULL),
(9, 'VNL-GGN-0827', 'Anil Kumar Gulati', NULL),
(10, 'VNL-GGN-1125', 'Ankit Pant', NULL),
(11, 'VNL-GGN-1102', 'Arjun Singh', NULL),
(12, 'VNL-GGN-0268', 'Arun Kumar Shukla', NULL),
(13, 'VNL-GGN-0228', 'Ashish Kr. Verma', NULL),
(14, 'VNL-GGN-0965', 'Ashok Pal', NULL),
(15, 'VNL-GGN-1110', 'Ashutosh Kumar', 'admin'),
(16, 'VNL-GGN-1096', 'Basil Joy', NULL),
(17, 'VNL-GGN-0994', 'Bhupendra Kumar', NULL),
(18, 'VNL-GGN-0963', 'Brijpal Singh Rawat', NULL),
(19, 'VNL-GGN-1016', 'Cheol Hee Lee', NULL),
(20, 'VNL-GGN-1059', 'Deepak', NULL),
(21, 'VNL-GGN-1140', 'Deepak Kumar', NULL),
(22, 'VNL-GGN-0861', 'Dushyant Kumar', NULL),
(23, 'VNL-GGN-0961', 'Faijal Ali', NULL),
(24, 'VNL-GGN-1162', 'Gautam Kumar', NULL),
(25, 'VNL-GGN-0944', 'Gurdeep Singh Drall', NULL),
(26, 'VNL-GGN-0979', 'Harpal Yadav', NULL),
(27, 'VNL-GGN-0794', 'J. Kishore Babu', NULL),
(28, 'VNL-GGN-0915', 'Jagdish', NULL),
(29, 'VNL-GGN-1070', 'Jitender', NULL),
(30, 'VNL-GGN-0973', 'Jitender Uppal', 'admin'),
(31, 'VNL-GGN-0839', 'Kapil Kumar Tyagi', NULL),
(32, 'VNL-GGN-0981', 'Karan Singh', NULL),
(33, 'VNL-GGN-0962', 'Krishan Kumar', NULL),
(34, 'VNL-GGN-0894', 'Kuldeep Gupta', NULL),
(35, 'VNL-GGN-0900', 'Kunwar Singh Negi', NULL),
(36, 'VNL-GGN-0733', 'Lakhan Lal', NULL),
(37, 'VNL-GGN-0936', 'Lalit Mohan Sanwal', NULL),
(38, 'VNL-GGN-0907', 'Lalita Singh', NULL),
(39, 'VNL-GGN-0908', 'Laveesh Kumar Aggarwal', NULL),
(40, 'VNL-GGN-0905', 'Lokesh Saraswat', NULL),
(41, 'VNL-GGN-0381', 'Mahesh Chander', 'production'),
(42, 'VNL-GGN-0911', 'Mahesh Chandra', NULL),
(43, 'VNL-GGN-0887', 'Maheshwar Prasad Bhatt', NULL),
(44, 'VNL-GGN-1058', 'Manish Berwal', NULL),
(45, 'VNL-GGN-0901', 'Manish Kumar Goyal', NULL),
(46, 'VNL-GGN-0893', 'Manoj Kumar', NULL),
(47, 'VNL-GGN-0926', 'Manoj Kumar', NULL),
(48, 'VNL-GGN-1114', 'Mohit Gupta', NULL),
(49, 'VNL-GGN-0836', 'Naresh Kumar', NULL),
(50, 'VNL-GGN-0957', 'Naresh Kumar', NULL),
(51, 'VNL-GGN-0972', 'Narinder Singh', NULL),
(52, 'VNL-GGN-1100', 'Neeraj', NULL),
(53, 'VNL-GGN-0977', 'Neeraj Verma', NULL),
(54, 'VNL-GGN-0906', 'Neha Mehta', NULL),
(55, 'VNL-GGN-1104', 'Nitin Sehrawat', NULL),
(56, 'VNL-GGN-0921', 'Nityanand Mishra', NULL),
(57, 'VNL-GGN-1105', 'Pankaj Kumar', NULL),
(58, 'VNL-GGN-0930', 'Pankaj Oberoi', NULL),
(59, 'VNL-GGN-0838', 'Pankaj Upadhyay', NULL),
(60, 'VNL-GGN-0929', 'Parmod Kumar', NULL),
(61, 'VNL-GGN-0897', 'Partha Pratim Chattoraj', NULL),
(62, 'VNL-GGN-0870', 'Parveen Kumar', 'testing'),
(63, 'VNL-GGN-0964', 'Pawan Kumar', NULL),
(64, 'VNL-GGN-1101', 'Poonam Gupta', NULL),
(65, 'VNL-GGN-1107', 'Pradip Kumar', NULL),
(66, 'VNL-GGN-1080', 'Prashant Kumar Doove', NULL),
(67, 'VNL-GGN-1143', 'Prashant Kumar Jha', NULL),
(68, 'VNL-GGN-1103', 'Prateek Satija', NULL),
(69, 'VNL-GGN-0978', 'Praveen Kumar', 'production'),
(70, 'VNL-GGN-1111', 'Pravesh', NULL),
(71, 'VNL-GGN-0898', 'R. Vijaya Kumar', NULL),
(72, 'VNL-GGN-1141', 'Rahul Kumar', NULL),
(73, 'VNL-GGN-0912', 'Raj Karan', NULL),
(74, 'VNL-GGN-0832', 'Raj Kumar', NULL),
(75, 'VNL-GGN-0547', 'Rajender Singh', 'store'),
(76, 'VNL-GGN-1052', 'Rajendra Kumar Maurya', NULL),
(77, 'VNL-GGN-0793', 'Rajesh Kumar', NULL),
(78, 'VNL-GGN-0985', 'Raju Verma', NULL),
(79, 'VNL-GGN-0902', 'Rakesh Singh', NULL),
(80, 'VNL-GGN-1154', 'Ramanpreet Kaur', NULL),
(81, 'VNL-GGN-0361', 'Ramesh Chandra Saxena', 'planning'),
(82, 'VNL-GGN-0792', 'Ramvir Singh', NULL),
(83, 'VNL-GGN-1179', 'Ravi Kumar', NULL),
(84, 'VNL-GGN-0835', 'Ravinder Kumar', 'production'),
(85, 'VNL-GGN-1151', 'Sahil Verma', NULL),
(86, 'VNL-GGN-0999', 'Sameer Yadav', NULL),
(87, 'VNL-GGN-1106', 'Sandeep Dhama', NULL),
(88, 'VNL-GGN-1142', 'Satinder Kumar', NULL),
(89, 'VNL-GGN-0940', 'Satish Chandra Sati', NULL),
(90, 'VNL-GGN-0955', 'Saurabh Chauhan', 'thruhole'),
(91, 'VNL-GGN-1124', 'Seha', NULL),
(92, 'VNL-GGN-1012', 'Shiv Kumar', 'quality'),
(93, 'VNL-GGN-0896', 'Shiv Narain Singh', NULL),
(94, 'VNL-GGN-0917', 'Sharvan Kumar Maurya', NULL),
(95, 'VNL-GGN-0795', 'Shyam Prakash Sharma', NULL),
(96, 'VNL-GGN-1097', 'Sorabh', NULL),
(97, 'VNL-GGN-0494', 'Sunil Joshi', NULL),
(98, 'VNL-GGN-0925', 'Sunil Kumar', NULL),
(99, 'VNL-GGN-0622', 'Sunil Mittal', 'store'),
(100, 'VNL-GGN-0087', 'Surender Sharma', NULL),
(101, 'VNL-GGN-0904', 'Surender Singh', NULL),
(102, 'VNL-GGN-1069', 'Sushil Kumar', NULL),
(103, 'VNL-GGN-0829', 'T. Balasubramanian', 'production'),
(104, 'VNL-GGN-1169', 'Tanuj Saklani', NULL),
(105, 'VNL-GGN-1098', 'Upendra Chauhan', NULL),
(106, 'VNL-GGN-0937', 'Vinod', 'planning'),
(107, 'VNL-GGN-0877', 'Vinod Kumar', NULL),
(108, 'VNL-GGN-1051', 'Vipin Kumar', NULL),
(109, 'VNL-GGN-0899', 'Virendra Singh Rawat', NULL),
(110, 'VNL-GGN-1050', 'Vishesh Rai', NULL),
(111, 'VNL-GGN-0910', 'Yogesh Chand Sharma', 'smt'),
(112, 'VNL-GGN-1194', 'Komal Verma', NULL),
(113, 'VNL-GGN-1167', 'Priyanka Chaurasiya', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pcbatracker_pcba_records`
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
  `Stage` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Allowed stages: planning, smt, thruhole, quality, testing, store, production',
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
-- Table structure for table `pcbatracker_planning`
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
-- Table structure for table `pcbatracker_production_master`
--

CREATE TABLE IF NOT EXISTS `pcbatracker_production_master` (
  `BID` int(20) NOT NULL AUTO_INCREMENT,
  `BatchStatus` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'CardStatus / BatchStatus : delivered, returned, received',
  `ToEmpID` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ToEmail` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ToStage` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Allowed stages: planning, smt, thruhole, quality, testing, store, production',
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
-- Table structure for table `pcbatracker_production_transaction`
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
  `FromStage` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Allowed stages: planning, smt, thruhole, quality, testing, store, production',
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
-- Table structure for table `pcbatracker_quality_master`
--

CREATE TABLE IF NOT EXISTS `pcbatracker_quality_master` (
  `BID` int(20) NOT NULL AUTO_INCREMENT,
  `BatchStatus` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'CardStatus / BatchStatus : delivered, returned, received',
  `ToEmpID` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ToEmail` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ToStage` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Allowed stages: planning, smt, thruhole, quality, testing, store, production',
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
-- Table structure for table `pcbatracker_quality_transaction`
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
  `FromStage` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Allowed stages: planning, smt, thruhole, quality, testing, store, production',
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
-- Table structure for table `pcbatracker_smt_master`
--

CREATE TABLE IF NOT EXISTS `pcbatracker_smt_master` (
  `BID` int(20) NOT NULL AUTO_INCREMENT,
  `BatchStatus` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'CardStatus / BatchStatus : delivered, returned, received',
  `ToEmpID` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ToEmail` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ToStage` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Allowed stages: planning, smt, thruhole, quality, testing, store, production',
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
-- Table structure for table `pcbatracker_smt_transaction`
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
  `FromStage` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Allowed stages: planning, smt, thruhole, quality, testing, store, production',
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
-- Table structure for table `pcbatracker_stages`
--

CREATE TABLE IF NOT EXISTS `pcbatracker_stages` (
  `ID` int(20) NOT NULL AUTO_INCREMENT,
  `Stage` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Allowed stages: planning, smt, thruhole, quality, testing, store, production',
  PRIMARY KEY (`ID`),
  KEY `Stage` (`Stage`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `pcbatracker_stages`
--

INSERT INTO `pcbatracker_stages` (`ID`, `Stage`) VALUES
(1, 'planning'),
(7, 'production'),
(4, 'quality'),
(2, 'smt'),
(6, 'store'),
(5, 'testing'),
(3, 'thruhole');

-- --------------------------------------------------------

--
-- Table structure for table `pcbatracker_store_master`
--

CREATE TABLE IF NOT EXISTS `pcbatracker_store_master` (
  `BID` int(20) NOT NULL AUTO_INCREMENT,
  `BatchStatus` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'CardStatus / BatchStatus : delivered, returned, received',
  `ToEmpID` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ToEmail` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ToStage` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Allowed stages: planning, smt, thruhole, quality, testing, store, production',
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
-- Table structure for table `pcbatracker_store_transaction`
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
  `FromStage` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Allowed stages: planning, smt, thruhole, quality, testing, store, production',
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
-- Table structure for table `pcbatracker_testing_master`
--

CREATE TABLE IF NOT EXISTS `pcbatracker_testing_master` (
  `BID` int(20) NOT NULL AUTO_INCREMENT,
  `BatchStatus` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'CardStatus / BatchStatus : delivered, returned, received',
  `ToEmpID` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ToEmail` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ToStage` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Allowed stages: planning, smt, thruhole, quality, testing, store, production',
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
-- Table structure for table `pcbatracker_testing_transaction`
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
  `FromStage` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Allowed stages: planning, smt, thruhole, quality, testing, store, production',
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
-- Table structure for table `pcbatracker_thruhole_master`
--

CREATE TABLE IF NOT EXISTS `pcbatracker_thruhole_master` (
  `BID` int(20) NOT NULL AUTO_INCREMENT,
  `BatchStatus` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'CardStatus / BatchStatus : delivered, returned, received',
  `ToEmpID` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ToEmail` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ToStage` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Allowed stages: planning, smt, thruhole, quality, testing, store, production',
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
-- Table structure for table `pcbatracker_thruhole_transaction`
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
  `FromStage` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Allowed stages: planning, smt, thruhole, quality, testing, store, production',
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
