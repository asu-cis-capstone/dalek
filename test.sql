-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 24, 2015 at 02:41 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `activetables`
--

CREATE TABLE IF NOT EXISTS `activetables` (
  `ActiveID` int(11) NOT NULL AUTO_INCREMENT,
  `RestaurantID` int(11) NOT NULL,
  `TableNo` int(11) NOT NULL,
  `SectionNo` int(11) DEFAULT NULL,
  `TableStatus` int(11) NOT NULL,
  `Date` date NOT NULL,
  `Time` time NOT NULL,
  PRIMARY KEY (`ActiveID`),
  KEY `FK_ActiveTables` (`RestaurantID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE IF NOT EXISTS `restaurant` (
  `RestaurantID` int(11) NOT NULL,
  `LocationName` varchar(50) CHARACTER SET utf8 NOT NULL,
  `StreetAddress` varchar(50) CHARACTER SET utf8 NOT NULL,
  `City` char(50) CHARACTER SET utf8 NOT NULL,
  `State` char(2) CHARACTER SET utf8 NOT NULL,
  `ZipCode` char(5) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`RestaurantID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`RestaurantID`, `LocationName`, `StreetAddress`, `City`, `State`, `ZipCode`) VALUES
(125, 'Gateway Pavilions', '10240 W McDowell Road', 'Avondale', 'AZ', '85323'),
(422, 'Surprise', '14015 W Bell Road', 'Surprise', 'AZ', '85374');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE IF NOT EXISTS `staff` (
  `StaffNo` int(11) NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(50) CHARACTER SET utf8 NOT NULL,
  `LastName` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `ServiceArea` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `RestaurantID` int(11) NOT NULL,
  PRIMARY KEY (`StaffNo`),
  KEY `FK_Staff` (`RestaurantID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tabledata`
--

CREATE TABLE IF NOT EXISTS `tabledata` (
  `TableID` int(11) NOT NULL AUTO_INCREMENT,
  `TableNo` int(11) NOT NULL,
  `SectionNo` int(11) DEFAULT NULL,
  `XCoord` int(11) DEFAULT NULL,
  `YCoord` int(11) DEFAULT NULL,
  `FloorPlan` int(11) DEFAULT NULL,
  PRIMARY KEY (`TableID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=73 ;

--
-- Dumping data for table `tabledata`
--

INSERT INTO `tabledata` (`TableID`, `TableNo`, `SectionNo`, `XCoord`, `YCoord`, `FloorPlan`) VALUES
(1, 71, 1, NULL, NULL, NULL),
(2, 72, 1, NULL, NULL, NULL),
(3, 73, 1, NULL, NULL, NULL),
(4, 74, 1, NULL, NULL, NULL),
(5, 61, 1, NULL, NULL, NULL),
(6, 62, 1, NULL, NULL, NULL),
(7, 63, 1, NULL, NULL, NULL),
(8, 64, 1, NULL, NULL, NULL),
(9, 71, 1, NULL, NULL, NULL),
(10, 72, 1, NULL, NULL, NULL),
(11, 73, 1, NULL, NULL, NULL),
(12, 74, 1, NULL, NULL, NULL),
(13, 55, 2, NULL, NULL, NULL),
(14, 56, 2, NULL, NULL, NULL),
(15, 57, 2, NULL, NULL, NULL),
(16, 65, 2, NULL, NULL, NULL),
(17, 66, 2, NULL, NULL, NULL),
(18, 67, 2, NULL, NULL, NULL),
(19, 68, 2, NULL, NULL, NULL),
(20, 75, 2, NULL, NULL, NULL),
(21, 76, 2, NULL, NULL, NULL),
(22, 77, 2, NULL, NULL, NULL),
(23, 84, 2, NULL, NULL, NULL),
(24, 85, 2, NULL, NULL, NULL),
(25, 11, 3, NULL, NULL, NULL),
(26, 12, 3, NULL, NULL, NULL),
(27, 13, 3, NULL, NULL, NULL),
(28, 14, 3, NULL, NULL, NULL),
(29, 15, 3, NULL, NULL, NULL),
(30, 21, 3, NULL, NULL, NULL),
(31, 22, 3, NULL, NULL, NULL),
(32, 31, 3, NULL, NULL, NULL),
(33, 32, 3, NULL, NULL, NULL),
(34, 33, 3, NULL, NULL, NULL),
(35, 41, 3, NULL, NULL, NULL),
(36, 42, 3, NULL, NULL, NULL),
(37, 23, 4, NULL, NULL, NULL),
(38, 24, 4, NULL, NULL, NULL),
(39, 25, 4, NULL, NULL, NULL),
(40, 34, 4, NULL, NULL, NULL),
(41, 35, 4, NULL, NULL, NULL),
(42, 36, 4, NULL, NULL, NULL),
(43, 43, 4, NULL, NULL, NULL),
(44, 44, 4, NULL, NULL, NULL),
(45, 45, 4, NULL, NULL, NULL),
(46, 81, 4, NULL, NULL, NULL),
(47, 82, 4, NULL, NULL, NULL),
(48, 83, 4, NULL, NULL, NULL),
(49, 90, 5, NULL, NULL, NULL),
(50, 91, 5, NULL, NULL, NULL),
(51, 92, 5, NULL, NULL, NULL),
(52, 93, 5, NULL, NULL, NULL),
(53, 94, 5, NULL, NULL, NULL),
(54, 95, 5, NULL, NULL, NULL),
(55, 96, 5, NULL, NULL, NULL),
(56, 97, 5, NULL, NULL, NULL),
(57, 98, 5, NULL, NULL, NULL),
(58, 99, 5, NULL, NULL, NULL),
(59, 101, 5, NULL, NULL, NULL),
(60, 102, 5, NULL, NULL, NULL),
(61, 103, 5, NULL, NULL, NULL),
(62, 104, 5, NULL, NULL, NULL),
(63, 105, 5, NULL, NULL, NULL),
(64, 106, 5, NULL, NULL, NULL),
(65, 301, 6, NULL, NULL, NULL),
(66, 302, 6, NULL, NULL, NULL),
(67, 303, 6, NULL, NULL, NULL),
(68, 304, 6, NULL, NULL, NULL),
(69, 305, 6, NULL, NULL, NULL),
(70, 306, 6, NULL, NULL, NULL),
(71, 307, 6, NULL, NULL, NULL),
(72, 308, 6, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tablehistorylog`
--

CREATE TABLE IF NOT EXISTS `tablehistorylog` (
  `LogID` int(11) NOT NULL AUTO_INCREMENT,
  `RestaurantID` int(11) NOT NULL,
  `TableNo` int(11) NOT NULL,
  `Date` date NOT NULL,
  `Available` time DEFAULT NULL,
  `Seated` time DEFAULT NULL,
  `Dirty` time DEFAULT NULL,
  `TotalTime` time DEFAULT NULL,
  PRIMARY KEY (`LogID`),
  KEY `FK_TableHistoryLog` (`RestaurantID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `activetables`
--
ALTER TABLE `activetables`
  ADD CONSTRAINT `FK_ActiveTables` FOREIGN KEY (`RestaurantID`) REFERENCES `restaurant` (`RestaurantID`);

--
-- Constraints for table `staff`
--
ALTER TABLE `staff`
  ADD CONSTRAINT `FK_Staff` FOREIGN KEY (`RestaurantID`) REFERENCES `restaurant` (`RestaurantID`);

--
-- Constraints for table `tablehistorylog`
--
ALTER TABLE `tablehistorylog`
  ADD CONSTRAINT `FK_TableHistoryLog` FOREIGN KEY (`RestaurantID`) REFERENCES `restaurant` (`RestaurantID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
