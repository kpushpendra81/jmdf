-- phpMyAdmin SQL Dump
-- version 4.7.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 10, 2018 at 06:14 PM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jmdf`
--

-- --------------------------------------------------------

--
-- Table structure for table `access`
--

CREATE TABLE `access` (
  `id` int(11) NOT NULL,
  `roleID` int(11) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL COMMENT 'Branch Title',
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `pin` varchar(6) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `fax` varchar(10) DEFAULT NULL,
  `mobile` varchar(10) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `fsd` timestamp NULL DEFAULT NULL,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`id`, `title`, `address`, `city`, `state`, `pin`, `phone`, `fax`, `mobile`, `email`, `fsd`, `updated`, `created`) VALUES
(1, 'JAI MATA DI FINANCES LTD.', 'Dhituan Aakuspur Kusmi kalan', 'Ghazipur', 'Uttar Pradesh', '233302', '9455820110', '9616682120', '9616448916', 'info@jmd.co.in', '2018-03-31 18:30:00', '2018-07-07 10:52:34', '2017-12-20 18:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('2f9971b4aa8bd47153175403d9d71993b17758ce', '::1', 1528745650, 0x5f5f63695f6c6173745f726567656e65726174657c693a313532383734353635303b),
('3cc450cdc24f09a693e0bb630a543380956b5276', '::1', 1530476866, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303437363638353b),
('ef06b9980863ba9a34a5ed16e433e2e1da212192', '::1', 1530549606, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303534393630363b),
('dbc3b4c867d8e775df51a1007b46502a0307a0e8', '::1', 1530821081, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303832303939313b),
('625a9aa9c53858836c3665c8b6002aa7d23b359b', '::1', 1530953350, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303935333335303b),
('444ad001bf4515cc9bef4e2e69745f47f33b25ec', '::1', 1530961986, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303936313938363b),
('b2b39877cd17716c472f766034e840b5518bd42d', '::1', 1530962528, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303936323532383b6272616e636849447c4e3b726f6c657c4e3b757365726e616d657c4e3b),
('62c9a080854193e2cfe85d81c7d76bd7f3542f55', '::1', 1530962838, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303936323833383b6272616e636849447c4e3b726f6c657c4e3b757365726e616d657c4e3b),
('7645ddabfff4e8e092f0331273ec87472522666a', '::1', 1530964921, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303936343932313b6272616e636849447c4e3b726f6c657c4e3b757365726e616d657c4e3b),
('0efe294f11179c4997cccbc4c8ee31ab51deb837', '::1', 1530966553, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303936363535333b6272616e636849447c4e3b726f6c657c4e3b757365726e616d657c4e3b),
('2395768484ddbe0891c0700eb8b985d4f98faab5', '::1', 1530966944, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303936363934343b6272616e636849447c4e3b726f6c657c4e3b757365726e616d657c4e3b),
('529814ff5c543c05f9d7de9332140caeb8df1cc4', '::1', 1530967101, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533303936363934343b6272616e636849447c4e3b726f6c657c4e3b757365726e616d657c4e3b);

-- --------------------------------------------------------

--
-- Table structure for table `committee`
--

CREATE TABLE `committee` (
  `id` int(11) NOT NULL,
  `branchID` int(11) NOT NULL,
  `employeeID` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `loginID` int(11) NOT NULL,
  `branchID` int(11) NOT NULL,
  `committeeID` int(11) NOT NULL,
  `joinerID` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `fatherName` varchar(255) NOT NULL,
  `motherName` varchar(255) NOT NULL,
  `dob` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `gender` enum('MALE','FEMALE','OTHER') NOT NULL,
  `category` enum('GEN','OBC','SC','ST','OTHER') NOT NULL,
  `qualification` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) DEFAULT NULL,
  `pin` varchar(6) DEFAULT NULL,
  `country` varchar(20) DEFAULT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL COMMENT 'multiple contacts separated by comma.',
  `email` varchar(255) DEFAULT NULL,
  `adhaarNo` varchar(12) DEFAULT NULL,
  `occupation` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `idProof` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0: Deactivated, Activated',
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `loginID` int(11) NOT NULL,
  `branchID` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `fatherName` varchar(255) NOT NULL,
  `motherName` varchar(255) NOT NULL,
  `dob` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `gender` enum('M','F','O') NOT NULL,
  `category` enum('GEN','OBC','SC','ST','OTHER') NOT NULL,
  `qualification` varchar(255) NOT NULL COMMENT 'Highest Qualification',
  `activeStatus` tinyint(1) NOT NULL COMMENT '0: Deactivated, 1: Activated',
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `pin` varchar(6) NOT NULL,
  `country` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `aadharNo` varchar(12) NOT NULL,
  `image` varchar(255) NOT NULL,
  `signature` varchar(255) NOT NULL,
  `idProof` varchar(255) NOT NULL,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `investmentPlans`
--

CREATE TABLE `investmentPlans` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `duration` int(11) NOT NULL,
  `durationType` enum('YEAR','MONTH','HALFMONTH','WEEK') NOT NULL,
  `instalments` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `branchID` int(11) NOT NULL,
  `roleID` int(11) NOT NULL,
  `isAdmin` tinyint(1) NOT NULL COMMENT '0: not Admin, 1: Admin',
  `username` varchar(255) NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `branchID`, `roleID`, `isAdmin`, `username`, `password`, `modified`, `created`) VALUES
(1, 1, 1, 1, 'info@jmd.co.in', '0ce86dcf81359f9571dd5072db586a42', '2018-07-07 11:07:35', '2018-07-07 10:54:30');

-- --------------------------------------------------------

--
-- Table structure for table `policy`
--

CREATE TABLE `policy` (
  `id` int(11) NOT NULL,
  `investmentPlanID` int(11) NOT NULL,
  `customerID` int(11) NOT NULL,
  `principleAmount` decimal(12,2) NOT NULL,
  `meturityAmount` decimal(12,2) NOT NULL,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `branchID` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `branchID`, `title`) VALUES
(1, 1, 'Admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `access`
--
ALTER TABLE `access`
  ADD PRIMARY KEY (`id`),
  ADD KEY `roleID` (`roleID`);

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `committee`
--
ALTER TABLE `committee`
  ADD PRIMARY KEY (`id`),
  ADD KEY `branchID` (`branchID`),
  ADD KEY `employeeID` (`employeeID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `loginID` (`loginID`),
  ADD KEY `branchID` (`branchID`),
  ADD KEY `committeeID` (`committeeID`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`),
  ADD KEY `branchID` (`branchID`),
  ADD KEY `loginID` (`loginID`);

--
-- Indexes for table `investmentPlans`
--
ALTER TABLE `investmentPlans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`),
  ADD KEY `branchID` (`branchID`),
  ADD KEY `roleID` (`roleID`);

--
-- Indexes for table `policy`
--
ALTER TABLE `policy`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customerID` (`customerID`),
  ADD KEY `investmentPlanID` (`investmentPlanID`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `branchID` (`branchID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `access`
--
ALTER TABLE `access`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `committee`
--
ALTER TABLE `committee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `investmentPlans`
--
ALTER TABLE `investmentPlans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `policy`
--
ALTER TABLE `policy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `access`
--
ALTER TABLE `access`
  ADD CONSTRAINT `access_ibfk_1` FOREIGN KEY (`roleID`) REFERENCES `role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `committee`
--
ALTER TABLE `committee`
  ADD CONSTRAINT `committee_ibfk_1` FOREIGN KEY (`branchID`) REFERENCES `branch` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `committee_ibfk_2` FOREIGN KEY (`employeeID`) REFERENCES `employee` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`loginID`) REFERENCES `login` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `customer_ibfk_2` FOREIGN KEY (`branchID`) REFERENCES `branch` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `customer_ibfk_3` FOREIGN KEY (`committeeID`) REFERENCES `committee` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`loginID`) REFERENCES `login` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `employee_ibfk_2` FOREIGN KEY (`branchID`) REFERENCES `branch` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `login`
--
ALTER TABLE `login`
  ADD CONSTRAINT `login_ibfk_1` FOREIGN KEY (`branchID`) REFERENCES `branch` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `login_ibfk_2` FOREIGN KEY (`roleID`) REFERENCES `role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `policy`
--
ALTER TABLE `policy`
  ADD CONSTRAINT `policy_ibfk_1` FOREIGN KEY (`investmentPlanID`) REFERENCES `investmentPlans` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role`
--
ALTER TABLE `role`
  ADD CONSTRAINT `role_ibfk_1` FOREIGN KEY (`branchID`) REFERENCES `branch` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
