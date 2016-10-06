-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 30, 2016 at 10:58 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phpmyadmin`
--

-- --------------------------------------------------------

--
-- Table structure for table `ptl_users`
--

CREATE TABLE `ptl_users` (
  `U_ID` int(11) NOT NULL,
  `USER_ID` varchar(50) NOT NULL,
  `PASS_CODE` varchar(50) NOT NULL,
  `ACTIVE` varchar(1) NOT NULL,
  `CREATED_BY` varchar(50) DEFAULT NULL,
  `CREATION_DATE` date DEFAULT NULL,
  `LAST_UPDATED_BY` varchar(50) DEFAULT NULL,
  `LAST_UPDATION_DATE` date DEFAULT NULL,
  `LAST_LOGIN_DATE` date DEFAULT NULL,
  `USER_ROLE` varchar(30) NOT NULL,
  `FIRST_NAME` varchar(50) NOT NULL,
  `LAST_NAME` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ptl_users`
--

INSERT INTO `ptl_users` (`U_ID`, `USER_ID`, `PASS_CODE`, `ACTIVE`, `CREATED_BY`, `CREATION_DATE`, `LAST_UPDATED_BY`, `LAST_UPDATION_DATE`, `LAST_LOGIN_DATE`, `USER_ROLE`, `FIRST_NAME`, `LAST_NAME`) VALUES
(1, 'Admin', 'Admin', 'Y', NULL, NULL, NULL, NULL, NULL, 'Admin', 'Admin', 'Admin'),
(2, 'Raja', 'Harsha', 'Y', NULL, NULL, NULL, NULL, NULL, 'User', 'Raja Harsha', 'Chinta'),
(3, 'Ram', 'Vajrapu', 'Y', NULL, NULL, NULL, NULL, NULL, 'User', 'Ram Manoj', 'Vajrapu');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ptl_users`
--
ALTER TABLE `ptl_users`
  ADD PRIMARY KEY (`U_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ptl_users`
--
ALTER TABLE `ptl_users`
  MODIFY `U_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
