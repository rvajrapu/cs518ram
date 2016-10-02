-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 02, 2016 at 08:07 PM
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
-- Table structure for table `ptl_questions`
--

CREATE TABLE `ptl_questions` (
  `Q_ID` int(11) NOT NULL,
  `Q_TITLE` varchar(200) DEFAULT NULL,
  `Q_TEXT` varchar(5000) DEFAULT NULL,
  `Q_TAG` varchar(50) DEFAULT NULL,
  `U_ID` int(11) DEFAULT NULL,
  `CREATED_BY` varchar(50) DEFAULT NULL,
  `CREATION_DATE` date DEFAULT NULL,
  `LAST_UPDATED_BY` varchar(50) DEFAULT NULL,
  `LAST_UPDATION_DATE` date DEFAULT NULL,
  `VIEWS` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ptl_questions`
--

INSERT INTO `ptl_questions` (`Q_ID`, `Q_TITLE`, `Q_TEXT`, `Q_TAG`, `U_ID`, `CREATED_BY`, `CREATION_DATE`, `LAST_UPDATED_BY`, `LAST_UPDATION_DATE`, `VIEWS`) VALUES
(1, 'How to Auto-Increment PK in MYSQL', 'I am aware of Database Sequence and Trigger functionality to generate Auto Incemented Sequences in Primary Key Column. Is there any simple and similar funtionality in MySQL.\n\nCREATE OR REPLACE TRIGGER TEST_SEQ_TRIGGER\nBEFORE INSERT ON TESTUSER.EMPLOYEE\nFOR EACH ROW\nBEGIN\n	IF :new.SSN IS NULL THEN\n		SELECT TEST_SEQUENCE.nextval INTO :new.SSN FROM DUAL;\n	END IF;\nEND;\n\nAny suggestions are much appreciated.', 'MySQL', 2, 'phpmyadmin', '0000-00-00', 'phpmyadmin', '0000-00-00', 2),
(2, 'How to Create Navbar in BootStrap', 'How to Create Navbar in BootStrap with a dropdown and search bar.', 'BOOTSTRAP', 3, 'phpmyadmin', '0000-00-00', 'phpmyadmin', '0000-00-00', 0),
(3, 'How to generate Emails using Shell Script.', 'I have a requirement to generate emails to 1000 users in a program. I tried this through Java but I am getting Heap Space issues. I am looking for an alternative scripting. Please suggest ! Have a nice day.', 'UNIX', 2, 'phpmyadmin', '0000-00-00', 'phpmyadmin', '0000-00-00', 0),
(4, 'C++ program compiles and runs in codeblocks, but can''t compile it in terminal', 'I created a C++ project that contains several source files and header files. The program compiles and runs well in codeblocks, but I can''t compile it in terminal.\n\nAll the files are in the same folder.\n\nHere are the command I enter:\n\nclang++ -std=c++11 main.cpp file1.cpp file1.h \nIt shows:\n\nclang: warning: treating ''c-header'' input as ''c++-header'' when in C++ mode, this behavior is deprecated', 'C++', 3, 'phpmyadmin', '0000-00-00', 'phpmyadmin', '0000-00-00', 1),
(5, 'Fast algorithm to write data from a std::vector to a text file', 'I currently write a set of doubles from a vector to a text file like this:\n\nstd::ofstream fout;\nfout.open("vector.txt");\n\nfor (l = 0; l < vector.size(); l++)\n    fout << std::setprecision(10) << vector.at(l) << std::endl;\n\nfout.close();\nBut this is taking a lot of time to finish. Is there a faster or more efficient way to do this? I would love to see and learn it.', 'C++', 2, 'phpmyadmin', '0000-00-00', 'phpmyadmin', '0000-00-00', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ptl_questions`
--
ALTER TABLE `ptl_questions`
  ADD PRIMARY KEY (`Q_ID`),
  ADD KEY `FK2PTL_USERS` (`U_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ptl_questions`
--
ALTER TABLE `ptl_questions`
  MODIFY `Q_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `ptl_questions`
--
ALTER TABLE `ptl_questions`
  ADD CONSTRAINT `FK2PTL_USERS` FOREIGN KEY (`U_ID`) REFERENCES `ptl_users` (`U_ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
