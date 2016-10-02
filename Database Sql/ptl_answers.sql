-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 30, 2016 at 10:57 PM
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
-- Table structure for table `ptl_answers`
--

CREATE TABLE `ptl_answers` (
  `A_ID` int(11) NOT NULL,
  `A_TEXT` varchar(5000) DEFAULT NULL,
  `Q_ID` int(11) DEFAULT NULL,
  `U_ID` int(11) DEFAULT NULL,
  `UP_VOTE` int(11) DEFAULT NULL,
  `DOWN_VOTE` int(11) DEFAULT NULL,
  `BA_FLAG` varchar(1) DEFAULT NULL,
  `CREATED_BY` varchar(50) DEFAULT NULL,
  `CREATION_DATE` date DEFAULT NULL,
  `LAST_UPDATED_BY` varchar(50) DEFAULT NULL,
  `LAST_UPDATION_DATE` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ptl_answers`
--

INSERT INTO `ptl_answers` (`A_ID`, `A_TEXT`, `Q_ID`, `U_ID`, `UP_VOTE`, `DOWN_VOTE`, `BA_FLAG`, `CREATED_BY`, `CREATION_DATE`, `LAST_UPDATED_BY`, `LAST_UPDATION_DATE`) VALUES
(1, 'You can use AUTO_INCREMENT function like below \r \r USER_ID INT NOT NULL AUTO_INCREMENT', 1, 2, 1, NULL, '1', NULL, NULL, NULL, NULL),
(2, 'Yes, we can use AUTO_INCREMENT function. This improves the performance and leverages the usage of additional database objects.', 1, 3, 1, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'Hi There, Test ''code'' snippet\r <br>\r \r <code><span class="pln">print_r</span><span class="pun">(</span><span class="pln">$questionnaire</span><span class="pun">);</span><span class="pln">\r \r array</span><span class="pun">(</span><span class="pln">\r       </span><span class="str">''question 1''</span><span class="pln"> </span><span class="pun">=&gt;</span><span class="pln"> array</span><span class="pun">(</span><span class="str">''yes''</span><span class="pun">,</span><span class="str">''no''</span><span class="pun">),</span><span class="pln">\r       </span><span class="str">''question 2''</span><span class="pln"> </span><span class="pun">=&gt;</span><span class="pln"> array</span><span class="pun">(</span><span class="str">''yes''</span><span class="pun">,</span><span class="str">''no''</span><span class="pun">),</span><span class="pln">\r       </span><span class="str">''question 3''</span><span class="pln"> </span><span class="pun">=&gt;</span><span class="pln"> array</span><span class="pun">(</span><span class="str">''yes''</span><span class="pun">,</span><span class="str">''no''</span><span class="pun">),</span><span class="pln">\r       </span><span class="pun">...</span><span class="pln">etc\r </span><span class="pun">)</span></code>', 1, 2, 2, NULL, NULL, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ptl_answers`
--
ALTER TABLE `ptl_answers`
  ADD PRIMARY KEY (`A_ID`),
  ADD KEY `FK2PTL_USERS_2` (`U_ID`),
  ADD KEY `FK2PTL_QUESTIONS` (`Q_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ptl_answers`
--
ALTER TABLE `ptl_answers`
  MODIFY `A_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `ptl_answers`
--
ALTER TABLE `ptl_answers`
  ADD CONSTRAINT `FK2PTL_QUESTIONS` FOREIGN KEY (`Q_ID`) REFERENCES `ptl_questions` (`Q_ID`),
  ADD CONSTRAINT `FK2PTL_USERS_2` FOREIGN KEY (`U_ID`) REFERENCES `ptl_users` (`U_ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
