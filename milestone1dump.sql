-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 16, 2016 at 03:08 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `question_forum`
--
CREATE DATABASE IF NOT EXISTS `question_forum` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `question_forum`;

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
(1, 'You can use AUTO_INCREMENT function like below \r \r USER_ID INT NOT NULL AUTO_INCREMENT', 1, 2, 1, NULL, '1', NULL, '2016-04-04', NULL, NULL),
(2, 'Yes, we can use AUTO_INCREMENT function. This improves the performance and leverages the usage of additional database objects.', 1, 3, 1, NULL, NULL, NULL, '2016-04-04', NULL, NULL),
(3, 'Hi There, Test ''code'' snippet\r <br>\r \r <code><span class="pln">print_r</span><span class="pun">(</span><span class="pln">$questionnaire</span><span class="pun">);</span><span class="pln">\r \r array</span><span class="pun">(</span><span class="pln">\r       </span><span class="str">''question 1''</span><span class="pln"> </span><span class="pun">=&gt;</span><span class="pln"> array</span><span class="pun">(</span><span class="str">''yes''</span><span class="pun">,</span><span class="str">''no''</span><span class="pun">),</span><span class="pln">\r       </span><span class="str">''question 2''</span><span class="pln"> </span><span class="pun">=&gt;</span><span class="pln"> array</span><span class="pun">(</span><span class="str">''yes''</span><span class="pun">,</span><span class="str">''no''</span><span class="pun">),</span><span class="pln">\r       </span><span class="str">''question 3''</span><span class="pln"> </span><span class="pun">=&gt;</span><span class="pln"> array</span><span class="pun">(</span><span class="str">''yes''</span><span class="pun">,</span><span class="str">''no''</span><span class="pun">),</span><span class="pln">\r       </span><span class="pun">...</span><span class="pln">etc\r </span><span class="pun">)</span></code>', 1, 2, 2, NULL, NULL, NULL, '2016-04-04', NULL, NULL),
(4, 'New Answer', 1, 1, NULL, NULL, NULL, NULL, '2016-10-14', NULL, NULL),
(5, 'Next New Answer', 1, 1, NULL, NULL, NULL, NULL, '2016-10-14', NULL, NULL),
(6, '2nd Answer', 3, 3, NULL, NULL, NULL, NULL, '2016-10-15', NULL, NULL),
(7, '3rd Answer', 3, 3, NULL, NULL, NULL, NULL, '2016-10-15', NULL, NULL),
(8, '1st Answer', 2, 3, NULL, NULL, NULL, NULL, '2016-10-15', NULL, NULL),
(9, '<p>2nd Answer</p><p><br></p>', 2, 3, NULL, NULL, NULL, NULL, '2016-10-15', NULL, NULL),
(10, '<b>Best Answer</b>', 2, 3, NULL, NULL, NULL, NULL, '2016-10-15', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ptl_questions`
--

CREATE TABLE `ptl_questions` (
  `Q_ID` int(11) NOT NULL,
  `Q_TITLE` varchar(200) DEFAULT NULL,
  `Q_TEXT` varchar(5000) DEFAULT NULL,
  `Q_TAG` varchar(50) DEFAULT NULL,
  `U_ID` int(11) DEFAULT NULL,
  `BA_ID` int(10) DEFAULT NULL,
  `CREATED_BY` varchar(50) DEFAULT NULL,
  `CREATION_DATE` date DEFAULT NULL,
  `LAST_UPDATED_BY` varchar(50) DEFAULT NULL,
  `LAST_UPDATION_DATE` date DEFAULT NULL,
  `VIEWS` int(11) DEFAULT NULL,
  `UP_VOTE` int(11) DEFAULT NULL,
  `DOWN_VOTE` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ptl_questions`
--

INSERT INTO `ptl_questions` (`Q_ID`, `Q_TITLE`, `Q_TEXT`, `Q_TAG`, `U_ID`, `BA_ID`, `CREATED_BY`, `CREATION_DATE`, `LAST_UPDATED_BY`, `LAST_UPDATION_DATE`, `VIEWS`, `UP_VOTE`, `DOWN_VOTE`) VALUES
(1, 'How to Auto-Increment PK in MYSQL', 'I am aware of Database Sequence and Trigger functionality to generate Auto Incemented Sequences in Primary Key Column. Is there any simple and similar funtionality in MySQL.\n\nCREATE OR REPLACE TRIGGER TEST_SEQ_TRIGGER\nBEFORE INSERT ON TESTUSER.EMPLOYEE\nFOR EACH ROW\nBEGIN\n	IF :new.SSN IS NULL THEN\n		SELECT TEST_SEQUENCE.nextval INTO :new.SSN FROM DUAL;\n	END IF;\nEND;\n\nAny suggestions are much appreciated.', 'MySQL', 2, 3, 'phpmyadmin', '2016-10-04', 'phpmyadmin', '0000-00-00', 2, 1, NULL),
(2, 'How to Create Navbar in BootStrap', 'How to Create Navbar in BootStrap with a dropdown and search bar.', 'BOOTSTRAP', 3, 10, 'phpmyadmin', '0000-00-00', 'phpmyadmin', '0000-00-00', 0, 1, NULL),
(3, 'How to generate Emails using Shell Script.', 'I have a requirement to generate emails to 1000 users in a program. I tried this through Java but I am getting Heap Space issues. I am looking for an alternative scripting. Please suggest ! Have a nice day.', 'UNIX', 2, NULL, 'phpmyadmin', '0000-00-00', 'phpmyadmin', '0000-00-00', 0, 2, NULL),
(4, 'C++ program compiles and runs in codeblocks, but can''t compile it in terminal', 'I created a C++ project that contains several source files and header files. The program compiles and runs well in codeblocks, but I can''t compile it in terminal.\n\nAll the files are in the same folder.\n\nHere are the command I enter:\n\nclang++ -std=c++11 main.cpp file1.cpp file1.h \nIt shows:\n\nclang: warning: treating ''c-header'' input as ''c++-header'' when in C++ mode, this behavior is deprecated', 'C++', 3, NULL, 'phpmyadmin', '0000-00-00', 'phpmyadmin', '0000-00-00', 1, 3, NULL),
(5, 'Fast algorithm to write data from a std::vector to a text file', 'I currently write a set of doubles from a vector to a text file like this:\n\nstd::ofstream fout;\nfout.open("vector.txt");\n\nfor (l = 0; l < vector.size(); l++)\n    fout << std::setprecision(10) << vector.at(l) << std::endl;\n\nfout.close();\nBut this is taking a lot of time to finish. Is there a faster or more efficient way to do this? I would love to see and learn it.', 'C++', 2, NULL, 'phpmyadmin', '0000-00-00', 'phpmyadmin', '0000-00-00', 1, 1, NULL);

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

-- --------------------------------------------------------

--
-- Table structure for table `user_table`
--

CREATE TABLE `user_table` (
  `id` int(11) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_role` varchar(20) NOT NULL,
  `user_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_table`
--

INSERT INTO `user_table` (`id`, `password`, `user_role`, `user_id`) VALUES
(1, 'Admin', 'Admin', 'Admin');

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
-- Indexes for table `ptl_questions`
--
ALTER TABLE `ptl_questions`
  ADD PRIMARY KEY (`Q_ID`),
  ADD KEY `FK2PTL_USERS` (`U_ID`);

--
-- Indexes for table `ptl_users`
--
ALTER TABLE `ptl_users`
  ADD PRIMARY KEY (`U_ID`);

--
-- Indexes for table `user_table`
--
ALTER TABLE `user_table`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ptl_answers`
--
ALTER TABLE `ptl_answers`
  MODIFY `A_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `ptl_questions`
--
ALTER TABLE `ptl_questions`
  MODIFY `Q_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `ptl_users`
--
ALTER TABLE `ptl_users`
  MODIFY `U_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `user_table`
--
ALTER TABLE `user_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `ptl_answers`
--
ALTER TABLE `ptl_answers`
  ADD CONSTRAINT `FK2PTL_QUESTIONS` FOREIGN KEY (`Q_ID`) REFERENCES `ptl_questions` (`Q_ID`),
  ADD CONSTRAINT `FK2PTL_USERS_2` FOREIGN KEY (`U_ID`) REFERENCES `ptl_users` (`U_ID`);

--
-- Constraints for table `ptl_questions`
--
ALTER TABLE `ptl_questions`
  ADD CONSTRAINT `FK2PTL_USERS` FOREIGN KEY (`U_ID`) REFERENCES `ptl_users` (`U_ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
