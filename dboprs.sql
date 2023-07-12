-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 04, 2023 at 10:34 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dboprs`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `ACCOUNG_ID` int(11) NOT NULL,
  `FULLNAME` varchar(50) NOT NULL,
  `USERNAME` varchar(50) NOT NULL,
  `PASSWORD` varchar(50) NOT NULL,
  `EMAIL` varchar(50) NOT NULL,
  `TYPE` varchar(50) NOT NULL,
  `DEPARTMENT` varchar(50) NOT NULL,
  `DATE` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`ACCOUNG_ID`, `FULLNAME`, `USERNAME`, `PASSWORD`, `EMAIL`, `TYPE`, `DEPARTMENT`, `DATE`) VALUES
(13, 'User E. Testing', 'userE', '123', 'useretesting@gmail.com', 'USER', 'Sale and Account', ''),
(33, 'Name', 'user1', 'MTIz', 'user1@gmail.com', 'USER', 'Payroll', '04-24-2023 08:25:50'),
(35, 'Department Head', 'dept', 'MTIz', 'mmpdept@gmail.com', 'DeptHead', 'Human Resources', '04-24-2023 08:37:26'),
(36, 'reynaldo', 'user22', 'MTIz', 'reynaldo@gmail.com', 'USER', 'MIS', '05-02-2023 16:21:31');

-- --------------------------------------------------------

--
-- Table structure for table `concern`
--

CREATE TABLE `concern` (
  `CONCERN_ID` int(11) NOT NULL,
  `TYPE` varchar(50) NOT NULL,
  `CONCERN` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `concern`
--

INSERT INTO `concern` (`CONCERN_ID`, `TYPE`, `CONCERN`) VALUES
(22, 'Cashier', 'Wrong Input'),
(23, 'Record', 'Missing Data.'),
(24, 'Payroll', 'Late output'),
(25, 'Marketing', 'LotArea'),
(26, 'MIS', 'lose Data'),
(27, 'Cashier', 'hakdog'),
(37, 'MIS', 'lose Data'),
(38, 'MIS', 'lose sa universe'),
(39, 'Payroll', 'Late outputs'),
(40, 'Testing1', 'testingError'),
(41, 'collection', 'sadfds');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `DEPARTMENTID` int(11) NOT NULL,
  `TYPE` varchar(50) NOT NULL,
  `STATUS` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`DEPARTMENTID`, `TYPE`, `STATUS`) VALUES
(17, 'Cashier', 'Correct'),
(18, 'Payroll', 'Correct'),
(19, 'Record', 'Correct'),
(30, 'Marketing', 'Correct'),
(31, 'MIS', 'Finish'),
(32, 'testing1', 'Correct'),
(33, 'HR', 'Deleted'),
(34, 'testing', 'Remove'),
(37, 'Testing1', 'Correct'),
(38, 'collection', 'Correct');

-- --------------------------------------------------------

--
-- Table structure for table `problem`
--

CREATE TABLE `problem` (
  `PROBLEM_ID` int(11) NOT NULL,
  `ACCOUNG_ID` int(250) NOT NULL,
  `NAME` varchar(50) NOT NULL,
  `DEPARTMENT` varchar(50) NOT NULL,
  `SEND_TO` varchar(50) NOT NULL,
  `PROBLEM` varchar(50) NOT NULL,
  `DESCRIPTION` varchar(50) NOT NULL,
  `AGENT` varchar(50) NOT NULL,
  `STATUS` varchar(50) NOT NULL,
  `DATE` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `problem`
--

INSERT INTO `problem` (`PROBLEM_ID`, `ACCOUNG_ID`, `NAME`, `DEPARTMENT`, `SEND_TO`, `PROBLEM`, `DESCRIPTION`, `AGENT`, `STATUS`, `DATE`) VALUES
(59, 0, 'User E. Testing', 'Sale and Account', 'Record', 'Missing Data.', 'Paki hanap naman ng mabilis', '', 'Progress', ''),
(60, 0, 'User E. Testing', 'Sale and Account', 'Record', 'Missing Data.', '', '', 'Remove', ''),
(83, 36, 'reynaldo', 'MIS', 'MIS', 'lose Data', 'Please check my ticket.', 'Unassigned', 'Progress', '06-06-2023 13:13:17'),
(85, 36, 'reynaldo', 'MIS', 'MIS', 'lose Data', 'testing', 'Unassigned', 'Progress', '06-06-2023 15:10:33'),
(88, 36, 'reynaldo', 'MIS', 'Cashier', 'Wrong Input', 'aadfasaasdf', 'Unassigned', 'Progress', '06-08-2023 13:43:38'),
(91, 4, 'Renato B. Simangan', 'MIS', 'MIS', 'lose Data', '2222222', 'Unassigned', 'Remove', '06-13-2023 09:23:25'),
(92, 4, 'Renato B. Simangan', 'MIS', 'Record', 'Missing Data.', 'fsfsafd', 'Unassigned', 'Reject2', '06-13-2023 10:32:43'),
(93, 4, 'Renato B. Simangan', 'MIS', 'Testing1', 'testingError', 'fdsafsd', 'Unassigned', 'Progress', '06-16-2023 08:24:49'),
(94, 4, 'Renato B. SImangan', 'MIS', 'Cashier', 'hakdog', 'Naubos', 'unassinged', 'Entry2', '00/00/0001'),
(95, 4, 'Renato B. Simangan', 'MIS', 'MIS', 'lose Data', '11111111', 'Unassigned', 'Finish', '06-23-2023 08:44:45'),
(96, 4, 'Renato B. Simangan', 'MIS', 'Cashier', 'Wrong Input', '2222222', 'Unassigned', 'Entry2', '06-23-2023 08:45:14'),
(97, 4, 'Renato B. Simangan', 'MIS', 'MIS', 'lose Data', 'fsdfdsafsdafds', 'Unassigned', 'Remove', '06-26-2023 16:31:26'),
(98, 4, 'Renato B. Simangan', 'MIS', 'Cashier', 'hakdog', 'sdfsdafds', 'Unassigned', 'Entry2', '06-26-2023 16:34:10'),
(99, 4, 'Renato B. Simangan', 'MIS', 'MIS', 'lose Data', 'fdsafdsfds', 'Unassigned', 'Entry2', '06-26-2023 16:36:56'),
(100, 4, 'Renato B. Simangan', 'MIS', 'MIS', 'lose Data', 'wala', 'Unassigned', 'Remove', '06-26-2023 16:37:43');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `USER_ID` int(11) NOT NULL,
  `FULLNAME` varchar(50) NOT NULL,
  `DEPARTMENT` varchar(50) NOT NULL,
  `EMAIL` varchar(50) NOT NULL,
  `DATE` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`USER_ID`, `FULLNAME`, `DEPARTMENT`, `EMAIL`, `DATE`) VALUES
(1, 'Reynaldo B. Simangan Jr.', '', 'reynaldosimangan@gmail.com', ''),
(2, 'Joherisa C. Epia', '', 'joherisaepia@gmail.com', '05-02-2023 14:13:29'),
(3, 'Vanilla B. Simangan', '', 'vanillasimangan@gmail.com', '05-02-2023 14:14:50'),
(4, 'Renato B. Simangan', 'MIS', 'renatosimangan@gmail.com', '06-08-2023 13:35:42'),
(5, 'Risa Epia Simangan', '', 'epia@gmail.com', '06-08-2023 14:05:05'),
(6, 'Naruto', 'MIS', 'Uzumaki', '06-26-2023 09:07:40'),
(7, 'Sasuke Intachi', 'MIS', 'intachi@gmail.com', '06-26-2023 09:11:18'),
(8, 'Hinata joga', 'MIS', 'hinata@gmail.com', '06-26-2023 10:23:21'),
(9, 'boruto uzumaki', 'MIS', 'boruto@gmail.com', '06-26-2023 13:54:24'),
(10, 'FirstAccount', 'Cashier', 'FirstAccount@gmail.com', '07-04-2023 14:23:06');

-- --------------------------------------------------------

--
-- Table structure for table `userrole`
--

CREATE TABLE `userrole` (
  `UROLE_ID` int(11) NOT NULL,
  `FULLNAME` varchar(50) NOT NULL,
  `DEPARTMENT` varchar(50) NOT NULL,
  `USERNAME` varchar(50) NOT NULL,
  `PASSWORD` varchar(50) NOT NULL,
  `DATE` varchar(50) NOT NULL,
  `TYPE` varchar(50) NOT NULL,
  `LEVEL` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userrole`
--

INSERT INTO `userrole` (`UROLE_ID`, `FULLNAME`, `DEPARTMENT`, `USERNAME`, `PASSWORD`, `DATE`, `TYPE`, `LEVEL`) VALUES
(1, 'superadmin', 'Admin', 'admin', 'MTIz', '00/00/0000', 'ADMIN', 'Level-2'),
(4, 'Renato B. Simangan', 'MIS', 'testing', 'MTIz', '06-08-2023 13:36:29', 'Regular', 'Level-0'),
(6, 'Department Testing', 'Cashier', 'dept', 'MTIz', '01/01/0001', 'DeptHead', 'Level-1'),
(7, 'Risa Epia Simangan', 'Record', 'risa', 'MTIz', '06-08-2023 14:05:58', 'Regular', 'Level-0'),
(8, 'Naruto', 'MIS', 'testing1', 'MTIz', '06-26-2023 09:08:57', 'DeptHead', 'Level-1'),
(9, 'Sasuke Intachi', 'MIS', 'testing2', 'MTIz', '06-26-2023 09:12:19', 'Regular', 'Level-0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`ACCOUNG_ID`);

--
-- Indexes for table `concern`
--
ALTER TABLE `concern`
  ADD PRIMARY KEY (`CONCERN_ID`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`DEPARTMENTID`);

--
-- Indexes for table `problem`
--
ALTER TABLE `problem`
  ADD PRIMARY KEY (`PROBLEM_ID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`USER_ID`);

--
-- Indexes for table `userrole`
--
ALTER TABLE `userrole`
  ADD PRIMARY KEY (`UROLE_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `ACCOUNG_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `concern`
--
ALTER TABLE `concern`
  MODIFY `CONCERN_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `DEPARTMENTID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `problem`
--
ALTER TABLE `problem`
  MODIFY `PROBLEM_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `USER_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `userrole`
--
ALTER TABLE `userrole`
  MODIFY `UROLE_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
