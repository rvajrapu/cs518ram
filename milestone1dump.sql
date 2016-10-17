-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 18, 2016 at 01:25 AM
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
(4, 'Hi, This is a test answer.', 1, 2, NULL, NULL, NULL, NULL, '2016-10-15', NULL, NULL),
(5, 'dfgfhjgjhgkjgk', 3, 2, NULL, NULL, NULL, NULL, '2016-10-15', NULL, NULL),
(6, '&lt;span class=&quot;hljs-tag&quot; style=&quot;color: rgb(0, 0, 128); font-family: Menlo, Monaco, Consolas, &amp;quot;Courier New&amp;quot;, monospace; font-size: 13px; white-space: pre-wrap; background-color: rgb(245, 245, 245);&quot;&gt;&amp;lt;&lt;span class=&quot;hljs-title&quot;&gt;nav&lt;/span&gt; &lt;span class=&quot;hljs-attribute&quot; style=&quot;color: rgb(0, 128, 128);&quot;&gt;class&lt;/span&gt;=&lt;span class=&quot;hljs-value&quot; style=&quot;color: rgb(221, 17, 68);&quot;&gt;&quot;navbar navbar-default&quot;&lt;/span&gt; &lt;span class=&quot;hljs-attribute&quot; style=&quot;color: rgb(0, 128, 128);&quot;&gt;role&lt;/span&gt;=&lt;span class=&quot;hljs-value&quot; style=&quot;color: rgb(221, 17, 68);&quot;&gt;&quot;navigation&quot;&lt;/span&gt;&amp;gt;&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: Menlo, Monaco, Consolas, &amp;quot;Courier New&amp;quot;, monospace; font-size: 13px; white-space: pre-wrap; background-color: rgb(245, 245, 245);&quot;&gt;\n    &lt;/span&gt;&lt;span class=&quot;hljs-tag&quot; style=&quot;color: rgb(0, 0, 128); font-family: Menlo, Monaco, Consolas, &amp;quot;Courier New&amp;quot;, monospace; font-size: 13px; white-space: pre-wrap; background-color: rgb(245, 245, 245);&quot;&gt;&amp;lt;&lt;span class=&quot;hljs-title&quot;&gt;div&lt;/span&gt; &lt;span class=&quot;hljs-attribute&quot; style=&quot;color: rgb(0, 128, 128);&quot;&gt;class&lt;/span&gt;=&lt;span class=&quot;hljs-value&quot; style=&quot;color: rgb(221, 17, 68);&quot;&gt;&quot;navbar-header&quot;&lt;/span&gt;&amp;gt;&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: Menlo, Monaco, Consolas, &amp;quot;Courier New&amp;quot;, monospace; font-size: 13px; white-space: pre-wrap; background-color: rgb(245, 245, 245);&quot;&gt;\n        &lt;/span&gt;&lt;span class=&quot;hljs-tag&quot; style=&quot;color: rgb(0, 0, 128); font-family: Menlo, Monaco, Consolas, &amp;quot;Courier New&amp;quot;, monospace; font-size: 13px; white-space: pre-wrap; background-color: rgb(245, 245, 245);&quot;&gt;&amp;lt;&lt;span class=&quot;hljs-title&quot;&gt;button&lt;/span&gt; &lt;span class=&quot;hljs-attribute&quot; style=&quot;color: rgb(0, 128, 128);&quot;&gt;type&lt;/span&gt;=&lt;span class=&quot;hljs-value&quot; style=&quot;color: rgb(221, 17, 68);&quot;&gt;&quot;button&quot;&lt;/span&gt; &lt;span class=&quot;hljs-attribute&quot; style=&quot;color: rgb(0, 128, 128);&quot;&gt;class&lt;/span&gt;=&lt;span class=&quot;hljs-value&quot; style=&quot;color: rgb(221, 17, 68);&quot;&gt;&quot;navbar-toggle&quot;&lt;/span&gt; &lt;span class=&quot;hljs-attribute&quot; style=&quot;color: rgb(0, 128, 128);&quot;&gt;data-toggle&lt;/span&gt;=&lt;span class=&quot;hljs-value&quot; style=&quot;color: rgb(221, 17, 68);&quot;&gt;&quot;collapse&quot;&lt;/span&gt; &lt;span class=&quot;hljs-attribute&quot; style=&quot;color: rgb(0, 128, 128);&quot;&gt;data-target&lt;/span&gt;=&lt;span class=&quot;hljs-value&quot; style=&quot;color: rgb(221, 17, 68);&quot;&gt;&quot;#bs-example-navbar-collapse-1&quot;&lt;/span&gt;&amp;gt;&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: Menlo, Monaco, Consolas, &amp;quot;Courier New&amp;quot;, monospace; font-size: 13px; white-space: pre-wrap; background-color: rgb(245, 245, 245);&quot;&gt;\n            &lt;/span&gt;&lt;span class=&quot;hljs-tag&quot; style=&quot;color: rgb(0, 0, 128); font-family: Menlo, Monaco, Consolas, &amp;quot;Courier New&amp;quot;, monospace; font-size: 13px; white-space: pre-wrap; background-color: rgb(245, 245, 245);&quot;&gt;&amp;lt;&lt;span class=&quot;hljs-title&quot;&gt;span&lt;/span&gt; &lt;span class=&quot;hljs-attribute&quot; style=&quot;color: rgb(0, 128, 128);&quot;&gt;class&lt;/span&gt;=&lt;span class=&quot;hljs-value&quot; style=&quot;color: rgb(221, 17, 68);&quot;&gt;&quot;sr-only&quot;&lt;/span&gt;&amp;gt;&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: Menlo, Monaco, Consolas, &amp;quot;Courier New&amp;quot;, monospace; font-size: 13px; white-space: pre-wrap; background-color: rgb(245, 245, 245);&quot;&gt;Toggle navigation&lt;/span&gt;&lt;span class=&quot;hljs-tag&quot; style=&quot;color: rgb(0, 0, 128); font-family: Menlo, Monaco, Consolas, &amp;quot;Courier New&amp;quot;, monospace; font-size: 13px; white-space: pre-wrap; background-color: rgb(245, 245, 245);&quot;&gt;&amp;lt;/&lt;span class=&quot;hljs-title&quot;&gt;span&lt;/span&gt;&amp;gt;&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: Menlo, Monaco, Consolas, &amp;quot;Courier New&amp;quot;, monospace; font-size: 13px; white-space: pre-wrap; background-color: rgb(245, 245, 245);&quot;&gt;\n            &lt;/span&gt;&lt;span class=&quot;hljs-tag&quot; style=&quot;color: rgb(0, 0, 128); font-family: Menlo, Monaco, Consolas, &amp;quot;Courier New&amp;quot;, monospace; font-size: 13px; white-space: pre-wrap; background-color: rgb(245, 245, 245);&quot;&gt;&amp;lt;&lt;span class=&quot;hljs-title&quot;&gt;span&lt;/span&gt; &lt;span cla', 2, 2, NULL, NULL, NULL, NULL, '2016-10-17', NULL, NULL),
(7, '&lt;nav class=&quot;navbar navbar-default&quot; role=&quot;navigation&quot;&gt;\n    &lt;div class=&quot;navbar-header&quot;&gt;\n        &lt;button type=&quot;button&quot; class=&quot;navbar-toggle&quot; data-toggle=&quot;collapse&quot; data-target=&quot;#bs-example-navbar-collapse-1&quot;&gt;\n            &lt;span class=&quot;sr-only&quot;&gt;Toggle navigation&lt;/span&gt;\n            &lt;span class=&quot;icon-bar&quot;&gt;&lt;/span&gt;\n            &lt;span class=&quot;icon-bar&quot;&gt;&lt;/span&gt;\n            &lt;span class=&quot;icon-bar&quot;&gt;&lt;/span&gt;\n        &lt;/button&gt;\n        &lt;a class=&quot;navbar-brand&quot; href=&quot;#&quot;&gt;Company Name&lt;/a&gt;\n    &lt;/div&gt;\n    &lt;div class=&quot;collapse navbar-collapse&quot; id=&quot;bs-example-navbar-collapse-1&quot;&gt;\n        &lt;ul class=&quot;nav navbar-nav&quot;&gt;\n            &lt;li class=&quot;active&quot;&gt;&lt;a href=&quot;#&quot;&gt;Link&lt;/a&gt;&lt;/li&gt;\n            &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Link&lt;/a&gt;&lt;/li&gt;\n            &lt;li class=&quot;dropdown&quot;&gt;\n                &lt;a href=&quot;#&quot; class=&quot;dropdown-toggle&quot; data-toggle=&quot;dropdown&quot;&gt;Dropdown &lt;b class=&quot;caret&quot;&gt;&lt;/b&gt;&lt;/a&gt;\n                &lt;ul class=&quot;dropdown-menu&quot;&gt;\n                    &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Action&lt;/a&gt;&lt;/li&gt;\n                    &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Another action&lt;/a&gt;&lt;/li&gt;\n                    &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Something else here&lt;/a&gt;&lt;/li&gt;\n                    &lt;li class=&quot;divider&quot;&gt;&lt;/li&gt;\n                    &lt;li&gt;&lt;a href=&quot;#&quot;&gt;Separated link&lt;/a&gt;&lt;/li&gt;\n                    &lt;li class=&quot;divider&quot;&gt;&lt;/li&gt;                    \n                &lt;/ul&gt;\n            &lt;/li&gt;\n        &lt;/ul&gt;\n        &lt;div class=&quot;col-sm-3 col-md-3 pull-right&quot;&gt;\n            &lt;form class=&quot;navbar-form&quot; role=&quot;search&quot;&gt;\n                &lt;div class=&quot;input-group&quot;&gt;\n                    &lt;input type=&quot;text&quot; class=&quot;form-control&quot; placeholder=&quot;Search&quot; name=&quot;q&quot;&gt;\n                    &lt;div class=&quot;input-group-btn&quot;&gt;\n                        &lt;button class=&quot;btn btn-default&quot; type=&quot;submit&quot;&gt;&lt;i class=&quot;glyphicon glyphicon-search&quot;&gt;&lt;/i&gt;&lt;/button&gt;\n                    &lt;/div&gt;\n                &lt;/div&gt;\n            &lt;/form&gt;\n        &lt;/div&gt;        \n    &lt;/div&gt;\n&lt;/nav&gt;', 2, 2, NULL, NULL, NULL, NULL, '2016-10-17', NULL, NULL),
(8, '&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Droid Sans&amp;quot;, Arial, Verdana, sans-serif;&quot;&gt;If youâ€™re programer then you may know that how itâ€™s difficult to make one professional and attractive bootstrap navbar search box because if you canâ€™t be able to make it professional then the whole design of your website or any webpage where you are going to use that search bar will look like ordinary, so thatâ€™s why we always want one professional bootstrap search box that&amp;nbsp;we can easily use In our&amp;nbsp;designs.&lt;/span&gt;', 2, 2, NULL, NULL, NULL, NULL, '2016-10-17', NULL, NULL);

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
(1, 'How to Auto-Increment PK in MYSQL', 'I am aware of Database Sequence and Trigger functionality to generate Auto Incemented Sequences in Primary Key Column. Is there any simple and similar funtionality in MySQL.\n\nCREATE OR REPLACE TRIGGER TEST_SEQ_TRIGGER\nBEFORE INSERT ON TESTUSER.EMPLOYEE\nFOR EACH ROW\nBEGIN\n	IF :new.SSN IS NULL THEN\n		SELECT TEST_SEQUENCE.nextval INTO :new.SSN FROM DUAL;\n	END IF;\nEND;\n\nAny suggestions are much appreciated.', 'MySQL', 2, 1, 'phpmyadmin', '2016-10-04', 'phpmyadmin', '0000-00-00', 2, 1, NULL),
(2, 'How to Create Navbar in BootStrap', 'How to Create Navbar in BootStrap with a dropdown and search bar.', 'BOOTSTRAP', 3, NULL, 'phpmyadmin', '0000-00-00', 'phpmyadmin', '0000-00-00', 0, 1, NULL),
(3, 'How to generate Emails using Shell Script.', 'I have a requirement to generate emails to 1000 users in a program. I tried this through Java but I am getting Heap Space issues. I am looking for an alternative scripting. Please suggest ! Have a nice day.', 'UNIX', 2, 5, 'phpmyadmin', '0000-00-00', 'phpmyadmin', '0000-00-00', 0, 2, NULL),
(4, 'C++ program compiles and runs in codeblocks, but can''t compile it in terminal', 'I created a C++ project that contains several source files and header files. The program compiles and runs well in codeblocks, but I can''t compile it in terminal.\n\nAll the files are in the same folder.\n\nHere are the command I enter:\n\nclang++ -std=c++11 main.cpp file1.cpp file1.h \nIt shows:\n\nclang: warning: treating ''c-header'' input as ''c++-header'' when in C++ mode, this behavior is deprecated', 'C++', 3, NULL, 'phpmyadmin', '0000-00-00', 'phpmyadmin', '0000-00-00', 1, 3, NULL),
(5, 'Fast algorithm to write data from a std::vector to a text file', 'I currently write a set of doubles from a vector to a text file like this:\n\nstd::ofstream fout;\nfout.open("vector.txt");\n\nfor (l = 0; l < vector.size(); l++)\n    fout << std::setprecision(10) << vector.at(l) << std::endl;\n\nfout.close();\nBut this is taking a lot of time to finish. Is there a faster or more efficient way to do this? I would love to see and learn it.', 'C++', 2, NULL, 'phpmyadmin', '0000-00-00', 'phpmyadmin', '0000-00-00', 1, 1, NULL),
(6, 'Sample test Question for verifying summernote.', '<p><br></p><table class="table table-bordered"><tbody><tr><td>1</td><td>1</td><td>1</td><td>1</td><td>1</td></tr><tr><td>1</td><td>1</td><td>1</td><td>1</td><td>1</td></tr><tr><td>1</td><td>1</td><td>1</td><td>1</td><td><br></td></tr><tr><td><br></td><td><br></td><td><br></td><td><br></td><td><br></td></tr><tr><td><br></td><td><br></td><td><br></td><td><br></td><td><br></td></tr><tr><td><br></td><td><br></td><td><br></td><td><br></td><td><br></td></tr><tr><td><br></td><td><br></td><td><br></td><td><br></td><td><br></td></tr><tr><td><br></td><td><br></td><td><br></td><td><br></td><td><br></td></tr></tbody></table><p>\n         \n        </p>', 'Science', 2, NULL, NULL, '2016-10-15', NULL, NULL, NULL, NULL, NULL),
(7, 'dasdsdasd', 'ddsadasds', 'Science', 2, NULL, NULL, '2016-10-16', NULL, NULL, NULL, NULL, NULL),
(8, 'ewarerferer', 'rearerearer', 'Science', 2, NULL, NULL, '2016-10-16', NULL, NULL, NULL, NULL, NULL),
(9, 'rearerererae', 'arerearserr', 'Science', 2, NULL, NULL, '2016-10-16', NULL, NULL, NULL, NULL, NULL),
(10, 'rearerere', 'raereareare', 'Science', 2, NULL, NULL, '2016-10-16', NULL, NULL, NULL, NULL, NULL),
(11, 'reraerere', 'arerearear', 'Science', 2, NULL, NULL, '2016-10-16', NULL, NULL, NULL, NULL, NULL),
(12, 'rearerare', 'rearaererser', 'Science', 2, NULL, NULL, '2016-10-16', NULL, NULL, NULL, NULL, NULL);

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
(3, 'Ram', 'Vajrapu', 'Y', NULL, NULL, NULL, NULL, NULL, 'User', 'Ram Manoj', 'Vajrapu'),
(4, 'admin', 'cs518pa$$', '', NULL, NULL, NULL, NULL, NULL, 'User', 'admin', ''),
(5, 'jbrunelle', 'M0n@rch$', '', NULL, NULL, NULL, NULL, NULL, 'User', 'jbrunelle', ''),
(6, 'pvenkman', 'imadoctor', '', NULL, NULL, NULL, NULL, NULL, 'User', 'pvenkman', ''),
(7, 'rstantz', '"; INSERT INTO Customers (CustomerName,Address,Cit', '', NULL, NULL, NULL, NULL, NULL, 'User', 'rstantz', ''),
(8, 'dbarrett', 'fr1ed3GGS', '', NULL, NULL, NULL, NULL, NULL, 'User', 'dbarrett', ''),
(9, 'ltully', '<!--<i>', '', NULL, NULL, NULL, NULL, NULL, 'User', 'ltully', ''),
(10, 'espengler', 'don''t cross the streams', '', NULL, NULL, NULL, NULL, NULL, 'User', 'espengler', ''),
(11, 'janine', '--!drop tables;', '', NULL, NULL, NULL, NULL, NULL, 'User', 'janine', ''),
(12, 'winston', 'zeddM0r3', '', NULL, NULL, NULL, NULL, NULL, 'User', 'winston', ''),
(13, 'gozer', 'd3$truct0R', '', NULL, NULL, NULL, NULL, NULL, 'User', 'gozer', ''),
(14, 'slimer', 'f33dM3', '', NULL, NULL, NULL, NULL, NULL, 'User', 'slimer', ''),
(15, 'zuul', '105"; DROP TABLE', '', NULL, NULL, NULL, NULL, NULL, 'User', 'zuul', ''),
(16, 'keymaster', 'n0D@na', '', NULL, NULL, NULL, NULL, NULL, 'User', 'keymaster', ''),
(17, 'gatekeeper', '$l0r', '', NULL, NULL, NULL, NULL, NULL, 'User', 'gatekeeper', ''),
(18, 'staypuft', 'm@r$hM@ll0w', '', NULL, NULL, NULL, NULL, NULL, 'User', 'staypuft', ''),
(19, 'SQL_Ingection', 'UPDATE PTL_USERS SET FIRST_NAME = USER_ID, USER_RO', '', NULL, NULL, NULL, NULL, NULL, '', '', '');

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
  MODIFY `A_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `ptl_questions`
--
ALTER TABLE `ptl_questions`
  MODIFY `Q_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `ptl_users`
--
ALTER TABLE `ptl_users`
  MODIFY `U_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
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
