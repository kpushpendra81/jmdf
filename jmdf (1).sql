-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 25, 2018 at 05:45 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.1.19

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
  `fsdID` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL COMMENT 'Branch Title',
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `pin` varchar(6) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `fax` varchar(10) DEFAULT NULL,
  `mobile` varchar(10) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`id`, `fsdID`, `title`, `address`, `city`, `state`, `pin`, `phone`, `fax`, `mobile`, `email`, `updated`, `created`) VALUES
(1, 1, 'JAI MATA DI FINANCES LTD.', 'Dhituan Aakuspur Kusmi kalan', 'Ghazipur', 'Uttar Pradesh', '233302', '9455820110', '9616682120', '9616448916', 'info@jmd.co.in', '2018-07-16 18:05:51', '2017-12-20 18:30:00'),
(2, 1, 'JMD JAMANIYA BRANCH', 'F-51 Khanpur Extension ', 'Ghazipur', 'UP', '233309', '', '', '7668538172', 'pushpendra@shyplite.com', '2018-07-16 18:22:06', '2018-07-16 18:22:06'),
(3, 1, 'JMD KANPUE', '116/832 Rawatpur', 'Kanpur', 'UP', '208019', '', '', '9889909542', 'rahul@shyplite.com', '2018-07-16 18:27:38', '2018-07-16 18:27:38');

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
('67b6fc84e6d90786ca8345305643b445a1180007', '::1', 1534317182, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533343331373138323b),
('556600fbb76ca090d094228ba6cae3369693d9b3', '::1', 1534317884, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533343331373838343b),
('ac3b510d6b2a3f9464ecf6c3267ba2da7d960806', '::1', 1534318335, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533343331383333353b),
('4c9a8374e03c2451b71ab838419390b264fd00fe', '::1', 1534319055, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533343331393035353b),
('52c59931fe47166116f7f38c23831c214009ff2f', '::1', 1534319443, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533343331393434333b),
('caf28ccc26cf454e4c77f783d9896751d879867f', '::1', 1534319840, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533343331393834303b),
('5d7adf839cfec6a697ff1d5a306cae6f638ce6dd', '::1', 1534321592, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533343332313539323b),
('9b5c86c897f9d46a390203f1e96d185f96f4b7af', '::1', 1534322440, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533343332323434303b),
('f7483b9fee4b4d64563f57cfe2902e637424561d', '::1', 1534322873, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533343332323837333b),
('9ccb0dfa23d9ff3b852714421257fc838f272761', '::1', 1534323413, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533343332333431333b),
('a15960bfb38b8e7382b861c97dda4ae56e8a848d', '::1', 1534323715, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533343332333731353b),
('1155288fc19c6ce77e57453d0053954243675c76', '::1', 1534324298, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533343332343239383b),
('24870c9cbf3d13ccbf653e003c17140c72ba1761', '::1', 1534324620, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533343332343632303b),
('6c52f325f6cb2c6c9eebe507b8c7d374a0c96b88', '::1', 1534328069, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533343332383036393b),
('f58a37a49939a847f83a088f6785ce0ab804df1e', '::1', 1534328310, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533343332383036393b),
('26c5900e1b6a9684f9674a87afa012b821d7b702', '::1', 1534576186, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533343537353936353b),
('d6ec69b70f6d4107e82e52ee09daaff992eb546b', '::1', 1534598361, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533343539383336313b),
('0abfe83d066f42b02ffa1f4ed8f7d796c44f0a12', '::1', 1534598790, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533343539383739303b),
('9b66ccf3487f6a44aa056dd22486b224db28a95b', '::1', 1534599463, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533343539393436333b),
('3a7afcfd4539549344d24080bb79827322e51985', '::1', 1534601795, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533343630313739353b),
('565eecaa5b07f6f93480606e12e8692bb2291b8b', '::1', 1534602219, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533343630323231393b),
('e64cf857d08ac4f1595e0835d7c74f720e380e55', '::1', 1534604210, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533343630343231303b),
('7fc6ffa65672505e57e1e77eb3150cf00d40efe6', '::1', 1534604552, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533343630343535323b),
('3095a782a5f99bc5dad549dfb558495b40a664c2', '::1', 1534605416, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533343630353431363b),
('c1584b12f70381b9c1a23e2fa0425582d33152f4', '::1', 1534605723, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533343630353732333b),
('44d51897a294b015f3cd2f102fdc4b4c404af691', '::1', 1534608100, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533343630383130303b),
('a83b76ee4dcfb9d4500ed40d4a12f3b1265ac098', '::1', 1534609299, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533343630393239393b),
('7be11b895575e7293787c4de3861da5e34b16e57', '::1', 1534609396, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533343630393239393b),
('47e48c4006c289364a0851681e87561a5fb3b949', '::1', 1534620991, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533343632303934303b),
('e603267ee3e4fd230ae77db0096bc08ed5ec65c2', '::1', 1534662740, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533343636323631373b),
('17fb8e516fc09915314e0e3808b1f5adcc21f3de', '::1', 1534686599, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533343638363539393b),
('ae26819f1fe9f3fb84b27766f36f7c145308a4d5', '::1', 1534691256, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533343639313235363b),
('88e0ba1109e231057ff56de9603d8f00af44744c', '::1', 1534691963, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533343639313936333b),
('dfd2947bbac6726d30e2c2f813d049beabd0b7fc', '::1', 1534692115, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533343639313936333b),
('e17ede777ff21cd95ee21177a16c930567fcc564', '::1', 1534704930, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533343730343933303b),
('42b7b5a2d4a7f1203ff0fe0a9e38aab393a648b8', '::1', 1534706579, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533343730363537393b),
('8f5cb6ca9373d4e0b108eb16b33cc1cddb4fab53', '::1', 1534707817, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533343730373831373b),
('7009bbd4fe1c560eb673c08cae44ab048cb2e4a4', '::1', 1534707846, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533343730373831373b),
('40833565835f289bca0d5221dd0f759f168b2d63', '::1', 1535109926, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533353130393932363b),
('273500e519f8d65c05b2e600a12c42f1c194a821', '::1', 1535110290, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533353131303239303b),
('159085e4763cec35714c73c006fe3d35d68ed31f', '::1', 1535110604, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533353131303630343b),
('fff39545d312369e5da28d3feea8e6b7b3373920', '::1', 1535110971, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533353131303937313b),
('6fd93e2a2f81ab17cd51af694ba554eba715cc59', '::1', 1535112951, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533353131323935313b),
('ef7176d35de95db90eb3ea03e1c4726d9197ca86', '::1', 1535113332, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533353131333333323b),
('a98f0be5ce4c6df5a159cf5a64ffccf8d10893ac', '::1', 1535114205, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533353131343230353b),
('65c29a2fb34aa09a6897aeb53c348074656fefe4', '::1', 1535114717, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533353131343731373b),
('d7d7a273507dbcc4a678cb6a31591f36c7ac0640', '::1', 1535115246, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533353131353234363b),
('7081dff3848ec6d5577dc4cdde0eff019850faf5', '::1', 1535117124, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533353131373132343b),
('623db85ae059b23b7fdcb1554a9a8714b1c2057b', '::1', 1535118060, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533353131383036303b),
('75489799e3a88fb8ea511c126c7eb0afa4a8c682', '::1', 1535121489, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533353132313438393b),
('ba2b9ccc7402d596d5079789b69bd75800726f8d', '::1', 1535121916, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533353132313931363b),
('4c73dbec3546896bbb8fa6a95102490ae912e812', '::1', 1535123098, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533353132333039383b),
('a82839d3c45283c689b1d6ea69a90332c374b884', '::1', 1535124002, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533353132343030323b),
('26d53d1b8523315b5a3062818802b7db0b9b7dba', '::1', 1535124163, 0x5f5f63695f6c6173745f726567656e65726174657c693a313533353132343030323b);

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

--
-- Dumping data for table `committee`
--

INSERT INTO `committee` (`id`, `branchID`, `employeeID`, `title`, `updated`, `created`) VALUES
(1, 1, 1, 'Test COMMITEE', '2018-07-23 06:55:58', '2018-07-23 06:55:58'),
(2, 1, 1, 'New Committee', '2018-07-23 09:14:52', '2018-07-23 09:14:52');

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
  `activeStatus` tinyint(1) NOT NULL COMMENT 'Is customer active or not',
  `name` varchar(255) NOT NULL,
  `fatherName` varchar(255) NOT NULL,
  `motherName` varchar(255) NOT NULL,
  `dob` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
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
  `signature` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0: Deactivated, Activated',
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `loginID`, `branchID`, `committeeID`, `joinerID`, `activeStatus`, `name`, `fatherName`, `motherName`, `dob`, `gender`, `category`, `qualification`, `address`, `city`, `state`, `pin`, `country`, `phone`, `mobile`, `email`, `adhaarNo`, `occupation`, `image`, `idProof`, `signature`, `status`, `updated`, `created`) VALUES
(8, 18, 1, 1, NULL, 1, 'Pushpendra Kumar', 'Phekan Ram', 'Rambha Devi', '0000-00-00 00:00:00', 'MALE', 'OBC', 'MCA', '166/832 Rawatpur Gaon', 'Kanpur', 'UP', '208019', 'India', '3232423', '9894859687', 'pushpendra@shyplite.com', NULL, NULL, NULL, NULL, NULL, 1, '2018-08-24 12:54:06', '2018-08-24 12:54:06'),
(9, 19, 1, 1, NULL, 1, 'Pushpendra Kumar', 'Phekan Ram', 'Rambha Devi', '0000-00-00 00:00:00', 'MALE', 'OBC', 'MCA', '166/832 Rawatpur Gaon', 'Kanpur', 'UP', '208019', 'India', '3232423', '9894859687', 'pushpendra@shyplite.com', NULL, NULL, NULL, NULL, NULL, 1, '2018-08-24 12:55:31', '2018-08-24 12:55:31'),
(10, 20, 1, 1, NULL, 1, 'Neeraj Sharma', 'Jagat Pal Sharma', 'Rambha Devi', '0000-00-00 00:00:00', 'MALE', 'OBC', 'MCA', '116/832 Rawatpur Gaon', 'Kanpur', 'UP', '208019', 'India', '8273948723', '4823498234', 'neeraj@shyplite.com', NULL, NULL, 'IMG10png', 'PROOF10svg', 'SIG10png', 1, '2018-08-24 13:27:30', '2018-08-24 13:27:30'),
(11, 21, 1, 1, NULL, 1, 'Sonu Prajapati', 'Munsi Prajapati', 'Test Mother', '1992-02-19 18:30:00', 'MALE', 'OBC', 'Bsc.', '116/832 Rawatpur', 'Kanpur', 'UP', '208019', 'India', '2893742938', '9287345783', 'sonu@gmail.com', NULL, NULL, 'IMG11.png', 'PROOF11.png', 'SIG11.png', 1, '2018-08-24 13:43:05', '2018-08-24 13:43:05');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `isAdmin` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0: Not Admin, 1: Admin',
  `loginID` int(11) NOT NULL,
  `branchID` int(11) NOT NULL,
  `rank` int(2) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `fatherName` varchar(255) NOT NULL,
  `motherName` varchar(255) NOT NULL,
  `dob` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `gender` enum('MALE','FEMALE','OTHER') NOT NULL,
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

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `isAdmin`, `loginID`, `branchID`, `rank`, `name`, `fatherName`, `motherName`, `dob`, `gender`, `category`, `qualification`, `activeStatus`, `address`, `city`, `state`, `pin`, `country`, `phone`, `mobile`, `email`, `aadharNo`, `image`, `signature`, `idProof`, `updated`, `created`) VALUES
(1, 1, 3, 1, 16, 'Pushpendra Kumar', 'Phekan Ram', 'Rambha Devi', '2018-07-24 16:42:53', 'MALE', 'OBC', 'MAC', 1, '116/832 Rawatpur Gaon', 'Kanpur', 'Uttar Pradesh', '208019', 'India', '7668538172', '7668538172', 'pushpendra@shyplite.com', '123287384756', 'logo.png', 'logo.png', 'logo.png', '2018-07-24 16:42:53', '2018-07-21 20:05:36');

-- --------------------------------------------------------

--
-- Table structure for table `fdMaster`
--

CREATE TABLE `fdMaster` (
  `id` int(11) NOT NULL,
  `percentage` decimal(10,2) NOT NULL COMMENT 'return (%) percentage of total amount',
  `duration` decimal(10,2) NOT NULL COMMENT 'Years',
  `durationMonth` int(11) NOT NULL COMMENT 'months'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fdMaster`
--

INSERT INTO `fdMaster` (`id`, `percentage`, `duration`, `durationMonth`) VALUES
(1, '15.00', '1.00', 12),
(2, '50.00', '3.00', 36),
(3, '100.00', '5.00', 60),
(4, '200.00', '7.60', 90),
(5, '400.00', '11.60', 138),
(6, '900.00', '16.00', 192);

-- --------------------------------------------------------

--
-- Table structure for table `financialYear`
--

CREATE TABLE `financialYear` (
  `id` int(11) NOT NULL,
  `start` timestamp NULL DEFAULT NULL COMMENT 'financial start Year',
  `end` timestamp NULL DEFAULT NULL COMMENT 'financial end Year',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `financialYear`
--

INSERT INTO `financialYear` (`id`, `start`, `end`, `created`) VALUES
(1, '2018-03-31 18:30:00', '2019-03-30 18:30:00', '2018-07-16 17:40:49');

-- --------------------------------------------------------

--
-- Table structure for table `investmentDetail`
--

CREATE TABLE `investmentDetail` (
  `id` int(11) NOT NULL,
  `customerID` int(11) DEFAULT NULL COMMENT 'ID of customer table',
  `branchID` int(11) DEFAULT NULL,
  `committeeID` int(11) DEFAULT NULL,
  `planID` int(11) DEFAULT NULL,
  `durationYear` decimal(10,2) DEFAULT NULL COMMENT 'Total plan duration in years',
  `durationMonth` int(11) DEFAULT NULL COMMENT 'Total plan duration in month',
  `oneTimeInvestment` decimal(10,2) DEFAULT NULL COMMENT 'Customer invest one time total amout',
  `meturity` decimal(10,2) DEFAULT NULL COMMENT 'Amount return after complete plan duration',
  `appliedIntrest` decimal(10,2) DEFAULT NULL COMMENT 'interest applied on selected plan',
  `monthlyReturn` decimal(10,2) DEFAULT NULL COMMENT 'amount return on every month to customer',
  `monthlyInvestment` decimal(10,2) DEFAULT NULL COMMENT 'monthly amount invested by customer',
  `totalInvestment` decimal(10,2) DEFAULT NULL COMMENT 'total of all monthly invest amount',
  `investerAge` int(11) DEFAULT NULL COMMENT 'invester Age on date of plan taken',
  `pensionAmount` decimal(10,2) DEFAULT NULL COMMENT 'pension amount according to plan',
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `investmentDetail`
--

INSERT INTO `investmentDetail` (`id`, `customerID`, `branchID`, `committeeID`, `planID`, `durationYear`, `durationMonth`, `oneTimeInvestment`, `meturity`, `appliedIntrest`, `monthlyReturn`, `monthlyInvestment`, `totalInvestment`, `investerAge`, `pensionAmount`, `updated`, `created`) VALUES
(2, 9, 1, 1, 1, '1.00', 12, '1000.00', '1150.00', '15.00', NULL, NULL, NULL, NULL, NULL, '2018-08-24 12:55:31', '2018-08-24 12:55:31'),
(3, 10, 1, 1, 1, '1.00', 12, '9949.00', '11500.00', '15.00', NULL, NULL, NULL, NULL, NULL, '2018-08-24 13:27:30', '2018-08-24 13:27:30'),
(4, 11, 1, 1, 1, '1.00', 12, '10000.00', '11500.00', '15.00', NULL, NULL, NULL, NULL, NULL, '2018-08-24 13:43:05', '2018-08-24 13:43:05');

-- --------------------------------------------------------

--
-- Table structure for table `investmentPlans`
--

CREATE TABLE `investmentPlans` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `tableName` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `investmentPlans`
--

INSERT INTO `investmentPlans` (`id`, `title`, `tableName`) VALUES
(1, 'Fixed Deposit (FD)', 'fdMaster'),
(2, 'RD - Investment', 'rdMaster'),
(3, 'Adhaarshila National Pension Severs (NPS)', 'npsMaster'),
(4, 'Monthly Investment Plan (MIP)', 'misMaster');

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
(1, 1, 1, 1, 'info@jmd.co.in', '0a64a1a95546d7dbf71520b652e5558c', '2018-07-15 13:18:45', '2018-07-07 10:54:30'),
(3, 1, 1, 0, 'pushpendra88', 'c4919a160b7285102c5325588b3854ce684b0782', '2018-07-21 20:05:36', '2018-07-21 20:05:36'),
(18, 1, 1, 0, 'pushpendra@shyplite.com', 'c4919a160b7285102c5325588b3854ce684b0782', '2018-08-24 12:54:06', '2018-08-24 12:54:06'),
(19, 1, 1, 0, 'pushpendra@shyplite.com', 'c4919a160b7285102c5325588b3854ce684b0782', '2018-08-24 12:55:31', '2018-08-24 12:55:31'),
(20, 1, 1, 0, 'pushpendra@shyplite.com', 'c4919a160b7285102c5325588b3854ce684b0782', '2018-08-24 13:27:30', '2018-08-24 13:27:30'),
(21, 1, 1, 0, 'pushpendra@shyplite.com', 'c4919a160b7285102c5325588b3854ce684b0782', '2018-08-24 13:43:05', '2018-08-24 13:43:05');

-- --------------------------------------------------------

--
-- Table structure for table `misMaster`
--

CREATE TABLE `misMaster` (
  `id` int(11) NOT NULL,
  `monthInterest` decimal(10,2) NOT NULL COMMENT 'every month intrest given',
  `meturityInterest` decimal(10,2) NOT NULL COMMENT 'total interest',
  `duration` decimal(3,1) NOT NULL,
  `durationMonth` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `misMaster`
--

INSERT INTO `misMaster` (`id`, `monthInterest`, `meturityInterest`, `duration`, `durationMonth`) VALUES
(1, '2.00', '12.00', '7.5', 90),
(2, '3.00', '20.00', '11.5', 138),
(3, '4.00', '25.00', '16.0', 192);

-- --------------------------------------------------------

--
-- Table structure for table `npsMaster`
--

CREATE TABLE `npsMaster` (
  `id` int(2) NOT NULL,
  `minAge` int(2) NOT NULL COMMENT 'minimum age allowed of investor for plan',
  `maxAge` int(2) NOT NULL COMMENT 'maximum age allowed of investor for plan',
  `deposite` decimal(10,2) NOT NULL COMMENT 'Amount deposit every month',
  `duration` int(2) NOT NULL COMMENT 'Age till plan valid',
  `rateIntrest` int(2) NOT NULL COMMENT 'intrest (%) will paid to investor'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `npsMaster`
--

INSERT INTO `npsMaster` (`id`, `minAge`, `maxAge`, `deposite`, `duration`, `rateIntrest`) VALUES
(1, 18, 25, '100.00', 42, 38),
(2, 25, 30, '120.00', 35, 38),
(3, 30, 35, '140.00', 30, 38),
(4, 35, 40, '168.00', 25, 38),
(5, 40, 45, '210.00', 20, 38),
(6, 45, 50, '420.00', 10, 38);

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
-- Table structure for table `rank`
--

CREATE TABLE `rank` (
  `id` int(2) NOT NULL,
  `promotionAmt` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`id`, `promotionAmt`) VALUES
(1, '5000.00'),
(2, '10000.00'),
(3, '15000.00'),
(4, '20000.00'),
(5, '25000.00'),
(6, '30000.00'),
(7, '35000.00'),
(8, '45000.00'),
(9, '50000.00'),
(10, '60000.00'),
(11, '100000.00'),
(12, '200000.00'),
(13, '500000.00'),
(14, '800000.00'),
(15, '1500000.00'),
(16, '2000000.00'),
(17, '3000000.00');

-- --------------------------------------------------------

--
-- Table structure for table `rdMaster`
--

CREATE TABLE `rdMaster` (
  `id` int(2) NOT NULL,
  `duration` decimal(10,2) NOT NULL,
  `intrastRate` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rdMaster`
--

INSERT INTO `rdMaster` (`id`, `duration`, `intrastRate`) VALUES
(1, '1.00', '10.42'),
(2, '2.00', '16.66'),
(3, '3.00', '25.00'),
(4, '4.00', '41.68'),
(5, '5.00', '58.33');

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
(1, 1, 'Admin'),
(2, 1, 'Field Manager'),
(3, 2, 'Admin');

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `fsdID` (`fsdID`);

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
-- Indexes for table `financialYear`
--
ALTER TABLE `financialYear`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `investmentDetail`
--
ALTER TABLE `investmentDetail`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `misMaster`
--
ALTER TABLE `misMaster`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `npsMaster`
--
ALTER TABLE `npsMaster`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `policy`
--
ALTER TABLE `policy`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customerID` (`customerID`),
  ADD KEY `investmentPlanID` (`investmentPlanID`);

--
-- Indexes for table `rank`
--
ALTER TABLE `rank`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rdMaster`
--
ALTER TABLE `rdMaster`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `committee`
--
ALTER TABLE `committee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `financialYear`
--
ALTER TABLE `financialYear`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `investmentDetail`
--
ALTER TABLE `investmentDetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `investmentPlans`
--
ALTER TABLE `investmentPlans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `misMaster`
--
ALTER TABLE `misMaster`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `npsMaster`
--
ALTER TABLE `npsMaster`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `policy`
--
ALTER TABLE `policy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rank`
--
ALTER TABLE `rank`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `rdMaster`
--
ALTER TABLE `rdMaster`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
