-- phpMyAdmin SQL Dump
-- version 4.2.5
-- http://www.phpmyadmin.net
--
-- Host: 198.71.225.50:3306
-- Generation Time: Mar 17, 2015 at 12:01 AM
-- Server version: 5.5.40-36.1-log
-- PHP Version: 5.5.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `projectdalek`
--

-- --------------------------------------------------------

--
-- Table structure for table `tabledata`
--

CREATE TABLE IF NOT EXISTS tabledata (
`id` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `tablename` char(4) DEFAULT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=82 ;

--
-- Dumping data for table `tabledata`
--

INSERT INTO `tabledata` (`id`, `number`, `status`, `tablename`) VALUES
(1, 11, 0, 'B11'),
(2, 12, 0, 'B12'),
(3, 13, 0, 'B13'),
(4, 14, 0, 'B14'),
(5, 15, 0, 'B15'),
(6, 21, 0, 'B21'),
(7, 22, 0, 'B22'),
(8, 23, 0, 'B23'),
(9, 24, 0, 'B24'),
(10, 25, 0, 'B25'),
(11, 31, 0, 'B31'),
(12, 32, 0, 'B32'),
(13, 33, 0, 'B33'),
(14, 34, 0, 'B34'),
(15, 35, 0, 'B35'),
(16, 36, 0, 'B36'),
(17, 41, 0, 'B41'),
(18, 42, 0, 'B42'),
(19, 43, 0, 'B43'),
(20, 44, 0, 'B44'),
(21, 45, 0, 'B45'),
(22, 51, 0, 'B51'),
(23, 52, 0, 'B52'),
(24, 53, 0, 'B53'),
(25, 54, 0, 'B54'),
(26, 55, 0, 'B55'),
(27, 56, 0, 'B56'),
(28, 57, 0, 'B57'),
(29, 61, 0, 'B61'),
(30, 62, 0, 'B62'),
(31, 63, 0, 'B63'),
(32, 64, 0, 'B64'),
(33, 65, 0, 'B65'),
(34, 66, 0, 'B66'),
(35, 67, 0, 'B67'),
(36, 68, 0, 'B68'),
(37, 71, 0, 'B71'),
(38, 72, 0, 'B72'),
(39, 73, 0, 'B73'),
(40, 74, 0, 'B74'),
(41, 75, 0, 'B75'),
(42, 76, 0, 'B76'),
(43, 77, 0, 'B77'),
(44, 81, 0, 'B81'),
(45, 82, 0, 'B82'),
(46, 83, 0, 'B83'),
(47, 84, 0, 'B84'),
(48, 85, 0, 'B85'),
(49, 90, 0, 'B90'),
(50, 91, 0, 'B91'),
(51, 92, 0, 'B92'),
(52, 93, 0, 'B93'),
(53, 94, 0, 'B94'),
(54, 95, 0, 'B95'),
(55, 96, 0, 'B96'),
(56, 97, 0, 'B97'),
(57, 98, 0, 'B98'),
(58, 99, 0, 'B99'),
(59, 101, 0, 'B101'),
(60, 102, 0, 'B102'),
(61, 103, 0, 'B103'),
(62, 104, 0, 'B104'),
(63, 105, 0, 'B105'),
(64, 106, 0, 'B106'),
(65, 201, 0, 'B201'),
(66, 202, 0, 'B202'),
(67, 203, 0, 'B203'),
(68, 204, 0, 'B204'),
(69, 205, 0, 'B205'),
(70, 206, 0, 'B206'),
(71, 207, 0, 'B207'),
(72, 208, 0, 'B208'),
(73, 209, 0, 'B209'),
(74, 301, 0, 'B301'),
(75, 302, 0, 'B302'),
(76, 303, 0, 'B303'),
(77, 304, 0, 'B304'),
(78, 305, 0, 'B305'),
(79, 306, 0, 'B306'),
(80, 307, 0, 'B307'),
(81, 308, 0, 'B308');

-- --------------------------------------------------------

--
-- Table structure for table `tablehistorylog`
--

CREATE TABLE IF NOT EXISTS `tablehistorylog` (
`logid` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  `date` date NOT NULL,
  `available` time DEFAULT NULL,
  `seated` time DEFAULT NULL,
  `dirty` time DEFAULT NULL,
  `totaltime` time DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `timestamped`
--

CREATE TABLE IF NOT EXISTS `timestamped` (
`id` int(11) NOT NULL,
  `tableno` int(11) NOT NULL,
  `status` varchar(10) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`user_id` int(11) NOT NULL COMMENT 'auto incrementing user_id of each user, unique index',
  `user_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT 'user''s name, unique',
  `user_password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'user''s password in salted and hashed format',
  `user_email` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT 'user''s email, unique',
  `user_active` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'user''s activation status',
  `user_activation_hash` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'user''s email verification hash string',
  `user_password_reset_hash` char(40) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'user''s password reset code',
  `user_password_reset_timestamp` bigint(20) DEFAULT NULL COMMENT 'timestamp of the password reset request',
  `user_rememberme_token` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'user''s remember-me cookie token',
  `user_failed_logins` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'user''s failed login attemps',
  `user_last_failed_login` int(10) DEFAULT NULL COMMENT 'unix timestamp of last failed login attempt',
  `user_registration_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_registration_ip` varchar(39) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0.0.0.0'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='user data' AUTO_INCREMENT=3 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_password_hash`, `user_email`, `user_active`, `user_activation_hash`, `user_password_reset_hash`, `user_password_reset_timestamp`, `user_rememberme_token`, `user_failed_logins`, `user_last_failed_login`, `user_registration_datetime`, `user_registration_ip`) VALUES
(1, 'sopheasoeun', '$2y$10$VDTRjHbENikEVisZUmvym.VpG0ksfwCGTJCFLgosac8iV9XLTZu9u', 'sopheasoeun@gmail.com', 1, NULL, NULL, NULL, NULL, 0, NULL, '2015-03-12 17:57:17', '::1'),
(2, 'Surprise', '$2y$10$nfz/ID8F/g/nz2IqXNVyiOibVAgE65WvOSQLjCOvI.6nCxH.3myNC', 'projectdalekrr@gmail.com', 1, NULL, NULL, NULL, NULL, 0, NULL, '2015-03-13 01:38:15', '::1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tabledata`
--
ALTER TABLE `tabledata`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tablehistorylog`
--
ALTER TABLE `tablehistorylog`
 ADD PRIMARY KEY (`logid`);

--
-- Indexes for table `timestamped`
--
ALTER TABLE `timestamped`
 ADD PRIMARY KEY (`id`), ADD KEY `FK_timestamped` (`status`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`user_id`), ADD UNIQUE KEY `user_name` (`user_name`), ADD UNIQUE KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tabledata`
--
ALTER TABLE `tabledata`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=82;
--
-- AUTO_INCREMENT for table `tablehistorylog`
--
ALTER TABLE `tablehistorylog`
MODIFY `logid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `timestamped`
--
ALTER TABLE `timestamped`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'auto incrementing user_id of each user, unique index',AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
