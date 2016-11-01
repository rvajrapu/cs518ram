-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 31, 2016 at 05:52 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

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
-- Table structure for table `dummy`
--

CREATE TABLE `dummy` (
  `NAME` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dummy`
--

INSERT INTO `dummy` (`NAME`) VALUES
('Raja'),
('Raja'),
('Raja'),
(''),
(''),
('17'),
('17');

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
(8, '&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Droid Sans&amp;quot;, Arial, Verdana, sans-serif;&quot;&gt;If youâ€™re programer then you may know that how itâ€™s difficult to make one professional and attractive bootstrap navbar search box because if you canâ€™t be able to make it professional then the whole design of your website or any webpage where you are going to use that search bar will look like ordinary, so thatâ€™s why we always want one professional bootstrap search box that&amp;nbsp;we can easily use In our&amp;nbsp;designs.&lt;/span&gt;', 2, 2, NULL, NULL, NULL, NULL, '2016-10-17', NULL, NULL),
(9, '&lt;span style=&quot;color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 16px;&quot;&gt;A&amp;nbsp;&lt;/span&gt;&lt;b style=&quot;color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 16px;&quot;&gt;rainbow&lt;/b&gt;&lt;span style=&quot;color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 16px;&quot;&gt;&amp;nbsp;is a meteorological phenomenon that is&amp;nbsp;&lt;/span&gt;&lt;b style=&quot;color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 16px;&quot;&gt;caused&lt;/b&gt;&lt;span style=&quot;color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 16px;&quot;&gt;&amp;nbsp;by reflection, refraction and dispersion of light in water droplets resulting in a spectrum of light appearing in the sky. It takes the form of a multicoloured arc.&amp;nbsp;&lt;/span&gt;&lt;b style=&quot;color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 16px;&quot;&gt;Rainbows caused&lt;/b&gt;&lt;span style=&quot;color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 16px;&quot;&gt;&amp;nbsp;by sunlight always appear in the section of sky directly opposite the sun.&lt;/span&gt;\n\n                                            ', 13, 3, NULL, NULL, NULL, NULL, '2016-10-18', NULL, NULL),
(10, '&lt;p&gt;&lt;span style=&quot;color: rgb(102, 102, 102); font-family: Vollkorn, sans-serif; font-size: 21px;&quot;&gt;Itâ€™s a common question, and it comes down to the fact that LinkedIn is very different to other social networks such as Facebook and Twitter. LinkedIn is a professional network and aimed primarily at business connections. To connect with someone on LinkedIn, you both need to agree to this connection i.e. itâ€™s a&amp;nbsp;reciprocal&amp;nbsp;2-way connection â€“ just like Facebook friends.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: rgb(102, 102, 102); font-family: Vollkorn, sans-serif; font-size: 21px;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;color: rgb(102, 102, 102); font-family: Vollkorn, sans-serif; font-size: 21px;&quot;&gt;&lt;strong&gt;Related Articles:&lt;/strong&gt;&lt;/p&gt;&lt;p&gt;\n\n                                            &lt;/p&gt;&lt;ul style=&quot;color: rgb(102, 102, 102); font-family: Vollkorn, sans-serif; font-size: 21px;&quot;&gt;&lt;li&gt;&lt;a href=&quot;http://iag.me/socialmedia/how-to-become-a-social-media-guru-in-20-steps/&quot; title=&quot;How to become a Social Media Guru in 20 Steps&quot; target=&quot;_blank&quot; style=&quot;color: rgb(204, 0, 51);&quot;&gt;How to be a Social Media Guru in 20 Steps&lt;/a&gt;&lt;strong&gt;&amp;nbsp;(An IRONIC POST, Seriously Social)&lt;/strong&gt;&lt;/li&gt;&lt;li&gt;&lt;a href=&quot;http://petrafisher.com/3-ways-to-annoy-people-with-linkedin-invitation/&quot; title=&quot;3 Ways to Annoy People with LinkedIn Invitations&quot; target=&quot;_blank&quot; style=&quot;color: rgb(204, 0, 51);&quot;&gt;3 Ways to Annoy People with LinkedIn Invitations&lt;/a&gt;&amp;nbsp;&lt;strong&gt;(Petra Fisher)&lt;/strong&gt;&lt;/li&gt;&lt;/ul&gt;', 15, 7, NULL, NULL, NULL, NULL, '2016-10-18', NULL, NULL),
(11, '&lt;em style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(75, 75, 69);&quot;&gt;&lt;dd style=&quot;margin: 0px 0px 10px 30px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline;&quot;&gt;&lt;p style=&quot;margin-bottom: 15px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline;&quot;&gt;The scientific evidence on the role of diet in autoimmune diseases such as lupus is just becoming available. I am a believer that a plant-based diet is helpful in promoting overall health and decreasing the chemicals that cause inflammation. I advocate a plant-based diet along with a very low-fat diet. You have to recall that French fries are vegan but they are not exactly healthy. I think that exercise and healthy diet are extremely important for everyone, but more so for those with autoimmune diseases.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 15px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline;&quot;&gt;&lt;em style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-family: inherit; vertical-align: baseline;&quot;&gt;&lt;em style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; color: rgb(0, 120, 191);&quot;&gt;Original&amp;nbsp;&lt;a href=&quot;http://my.clevelandclinic.org/staff_directory/staff_display?DoctorID=16552&quot; data-full-url=&quot;http://my.clevelandclinic.org/staff_directory/staff_display?DoctorID=16552&quot; style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; color: rgb(0, 120, 191);&quot;&gt;Answer by Howard_Smith,_MD:&amp;nbsp;&lt;/a&gt;&lt;/em&gt;&lt;em style=&quot;margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-family: inherit; vertical-align: baseline;&quot;&gt;&amp;nbsp;Dr. Smith is a rheumatologist in the Department of Rheumatic and Immunological Diseases specializing in lupus, arthritis and general rheumatology.&lt;/em&gt;&lt;/em&gt;&lt;/p&gt;&lt;/dd&gt;&lt;/em&gt;\n\n                                            ', 16, 6, NULL, NULL, NULL, NULL, '2016-10-18', NULL, NULL),
(12, '&lt;span style=&quot;color: rgb(51, 51, 51); font-family: Georgia, Times, &amp;quot;Times New Roman&amp;quot;, serif; font-size: 15px;&quot;&gt;Try Googling now for the different names. A top hit for &quot;Janna&quot; is a reference to &quot;Janna of the Kalderash&quot;, a character from &quot;Buffy the Vampire Slayer.&quot;&lt;/span&gt;&lt;br style=&quot;color: rgb(51, 51, 51); font-family: Georgia, Times, &amp;quot;Times New Roman&amp;quot;, serif; font-size: 15px;&quot;&gt;&lt;br style=&quot;color: rgb(51, 51, 51); font-family: Georgia, Times, &amp;quot;Times New Roman&amp;quot;, serif; font-size: 15px;&quot;&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: Georgia, Times, &amp;quot;Times New Roman&amp;quot;, serif; font-size: 15px;&quot;&gt;This character, however, didn''t go by her really name, but used a psuedonym.&lt;/span&gt;&lt;br style=&quot;color: rgb(51, 51, 51); font-family: Georgia, Times, &amp;quot;Times New Roman&amp;quot;, serif; font-size: 15px;&quot;&gt;&lt;br style=&quot;color: rgb(51, 51, 51); font-family: Georgia, Times, &amp;quot;Times New Roman&amp;quot;, serif; font-size: 15px;&quot;&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: Georgia, Times, &amp;quot;Times New Roman&amp;quot;, serif; font-size: 15px;&quot;&gt;The psuedonum was &quot;Jenny Calendar.&quot;&lt;/span&gt;&lt;br style=&quot;color: rgb(51, 51, 51); font-family: Georgia, Times, &amp;quot;Times New Roman&amp;quot;, serif; font-size: 15px;&quot;&gt;&lt;br style=&quot;color: rgb(51, 51, 51); font-family: Georgia, Times, &amp;quot;Times New Roman&amp;quot;, serif; font-size: 15px;&quot;&gt;&lt;br style=&quot;margin-bottom: 0px; color: rgb(51, 51, 51); font-family: Georgia, Times, &amp;quot;Times New Roman&amp;quot;, serif; font-size: 15px;&quot;&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: Georgia, Times, &amp;quot;Times New Roman&amp;quot;, serif; font-size: 15px;&quot;&gt;The clue therefore, is not the numbers, but where they were written.&lt;/span&gt;\n\n                                            ', 17, 6, NULL, NULL, NULL, NULL, '2016-10-18', NULL, NULL),
(13, '&lt;p class=&quot;qtext_para&quot; style=&quot;margin-bottom: 1em; padding: 0px; color: rgb(51, 51, 51); font-family: Georgia, Times, &amp;quot;Times New Roman&amp;quot;, serif; font-size: 15px;&quot;&gt;By â€˜partyâ€™, it is meant a political party. A political party is an association of members who believe in a similar political ideology. Political parties have considerable influence over the population, within various sections of the nation. They use this influence to garner support, contest for elections, and in the event that they are voted into power, they have a set to follow agenda which differs from other parties.&lt;/p&gt;&lt;p class=&quot;qtext_para&quot; style=&quot;margin-bottom: 1em; padding: 0px; color: rgb(51, 51, 51); font-family: Georgia, Times, &amp;quot;Times New Roman&amp;quot;, serif; font-size: 15px;&quot;&gt;A Party System is the overall system in which political parties operate. It is the system that defines how the political power is distributed within a nation, and amongst parties.&lt;/p&gt;&lt;p class=&quot;qtext_para&quot; style=&quot;margin-bottom: 1em; padding: 0px; color: rgb(51, 51, 51); font-family: Georgia, Times, &amp;quot;Times New Roman&amp;quot;, serif; font-size: 15px;&quot;&gt;For example, in USA, the party system would be a Bi-party system because almost all the political power and influence is distributed between the two major partiesâ€”Republican Party and Democratic Party (although the Libertarian Party and other smaller parties are garnering more support and popularity of late, thanks to the clowns running for Presidency from the major two).&lt;/p&gt;&lt;p class=&quot;qtext_para&quot; style=&quot;margin-bottom: 1em; padding: 0px; color: rgb(51, 51, 51); font-family: Georgia, Times, &amp;quot;Times New Roman&amp;quot;, serif; font-size: 15px;&quot;&gt;India has a multi-party system as there are over 1800 political parties (registered with the Election Commission of India). Hence, the political power is distributed across groups.&lt;/p&gt;&lt;p class=&quot;qtext_para&quot; style=&quot;margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: Georgia, Times, &amp;quot;Times New Roman&amp;quot;, serif; font-size: 15px;&quot;&gt;Totalitarian nations have only one political party. Such parties have absolute power and do not permit democracy, hence any kind of opposition is punished and not encouraged. Here, the political power is consolidated into the hands of a single party.&lt;/p&gt;\n\n                                            ', 18, 2, NULL, NULL, NULL, NULL, '2016-10-18', NULL, NULL),
(14, '&lt;p class=&quot;qtext_para&quot; style=&quot;margin-bottom: 1em; padding: 0px; color: rgb(51, 51, 51); font-family: Georgia, Times, &amp;quot;Times New Roman&amp;quot;, serif; font-size: 15px;&quot;&gt;The first Hint Is the â€œCalenderâ€ , No . are written on the Calender now,so estimating the relationship between the Calender &amp;amp; the Noâ€™s :&lt;/p&gt;&lt;p class=&quot;qtext_para&quot; style=&quot;margin-bottom: 1em; padding: 0px; color: rgb(51, 51, 51); font-family: Georgia, Times, &amp;quot;Times New Roman&amp;quot;, serif; font-size: 15px;&quot;&gt;6- 6th month -&lt;b&gt;&amp;nbsp;J&amp;nbsp;&lt;/b&gt;une&lt;/p&gt;&lt;p class=&quot;qtext_para&quot; style=&quot;margin-bottom: 1em; padding: 0px; color: rgb(51, 51, 51); font-family: Georgia, Times, &amp;quot;Times New Roman&amp;quot;, serif; font-size: 15px;&quot;&gt;4â€“4th Month-&amp;nbsp;&lt;b&gt;A&amp;nbsp;&lt;/b&gt;pril&lt;/p&gt;&lt;p class=&quot;qtext_para&quot; style=&quot;margin-bottom: 1em; padding: 0px; color: rgb(51, 51, 51); font-family: Georgia, Times, &amp;quot;Times New Roman&amp;quot;, serif; font-size: 15px;&quot;&gt;9 -&lt;b&gt;&amp;nbsp;S&amp;nbsp;&lt;/b&gt;eptember&lt;/p&gt;&lt;p class=&quot;qtext_para&quot; style=&quot;margin-bottom: 1em; padding: 0px; color: rgb(51, 51, 51); font-family: Georgia, Times, &amp;quot;Times New Roman&amp;quot;, serif; font-size: 15px;&quot;&gt;10â€“&amp;nbsp;&lt;b&gt;O&lt;/b&gt;&amp;nbsp;ctober&lt;/p&gt;&lt;p class=&quot;qtext_para&quot; style=&quot;margin-bottom: 1em; padding: 0px; color: rgb(51, 51, 51); font-family: Georgia, Times, &amp;quot;Times New Roman&amp;quot;, serif; font-size: 15px;&quot;&gt;11 -&lt;b&gt;&amp;nbsp;N&lt;/b&gt;&amp;nbsp;ovember&lt;/p&gt;&lt;p class=&quot;qtext_para&quot; style=&quot;margin-bottom: 1em; padding: 0px; color: rgb(51, 51, 51); font-family: Georgia, Times, &amp;quot;Times New Roman&amp;quot;, serif; font-size: 15px;&quot;&gt;So the result â†’&amp;nbsp;&lt;b&gt;Jason&lt;/b&gt;&amp;nbsp;is the killer !&lt;/p&gt;&lt;p class=&quot;qtext_para&quot; style=&quot;margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); font-family: Georgia, Times, &amp;quot;Times New Roman&amp;quot;, serif; font-size: 15px;&quot;&gt;(Analysis â†’ The Man was Totally Smart , He could have Replied/ Given many Puzzles on Quora ,If he would not have been Killed :P )&lt;/p&gt;\n\n                                            ', 17, 18, NULL, NULL, NULL, NULL, '2016-10-18', NULL, NULL),
(15, '&lt;span style=&quot;color: rgb(30, 30, 30); font-family: Verdana, Geneva, sans-serif; font-size: 12.6px; text-align: justify; text-transform: capitalize; background-color: rgb(255, 252, 245);&quot;&gt;Let The 1st Paycheck Be X (Integer).&lt;/span&gt;&lt;br style=&quot;color: rgb(30, 30, 30); font-family: Verdana, Geneva, sans-serif; font-size: 12.6px; text-align: justify; text-transform: capitalize; background-color: rgb(255, 252, 245);&quot;&gt;&lt;br style=&quot;color: rgb(30, 30, 30); font-family: Verdana, Geneva, sans-serif; font-size: 12.6px; text-align: justify; text-transform: capitalize; background-color: rgb(255, 252, 245);&quot;&gt;&lt;span style=&quot;color: rgb(30, 30, 30); font-family: Verdana, Geneva, sans-serif; font-size: 12.6px; text-align: justify; text-transform: capitalize; background-color: rgb(255, 252, 245);&quot;&gt;Mrs. Rodger Got A Weekly Raise Of $ 145.&lt;/span&gt;&lt;br style=&quot;color: rgb(30, 30, 30); font-family: Verdana, Geneva, sans-serif; font-size: 12.6px; text-align: justify; text-transform: capitalize; background-color: rgb(255, 252, 245);&quot;&gt;&lt;br style=&quot;color: rgb(30, 30, 30); font-family: Verdana, Geneva, sans-serif; font-size: 12.6px; text-align: justify; text-transform: capitalize; background-color: rgb(255, 252, 245);&quot;&gt;&lt;span style=&quot;color: rgb(30, 30, 30); font-family: Verdana, Geneva, sans-serif; font-size: 12.6px; text-align: justify; text-transform: capitalize; background-color: rgb(255, 252, 245);&quot;&gt;So After Completing The 1st Week She Will Get $ (X+145).&lt;/span&gt;&lt;br style=&quot;color: rgb(30, 30, 30); font-family: Verdana, Geneva, sans-serif; font-size: 12.6px; text-align: justify; text-transform: capitalize; background-color: rgb(255, 252, 245);&quot;&gt;&lt;br style=&quot;color: rgb(30, 30, 30); font-family: Verdana, Geneva, sans-serif; font-size: 12.6px; text-align: justify; text-transform: capitalize; background-color: rgb(255, 252, 245);&quot;&gt;&lt;span style=&quot;color: rgb(30, 30, 30); font-family: Verdana, Geneva, sans-serif; font-size: 12.6px; text-align: justify; text-transform: capitalize; background-color: rgb(255, 252, 245);&quot;&gt;Similarly After Completing The 2nd Week She Will Get $ (X + 145) + $ 145.&lt;/span&gt;&lt;br style=&quot;color: rgb(30, 30, 30); font-family: Verdana, Geneva, sans-serif; font-size: 12.6px; text-align: justify; text-transform: capitalize; background-color: rgb(255, 252, 245);&quot;&gt;&lt;br style=&quot;color: rgb(30, 30, 30); font-family: Verdana, Geneva, sans-serif; font-size: 12.6px; text-align: justify; text-transform: capitalize; background-color: rgb(255, 252, 245);&quot;&gt;&lt;span style=&quot;color: rgb(30, 30, 30); font-family: Verdana, Geneva, sans-serif; font-size: 12.6px; text-align: justify; text-transform: capitalize; background-color: rgb(255, 252, 245);&quot;&gt;= $ (X + 145 + 145)&lt;/span&gt;&lt;br style=&quot;color: rgb(30, 30, 30); font-family: Verdana, Geneva, sans-serif; font-size: 12.6px; text-align: justify; text-transform: capitalize; background-color: rgb(255, 252, 245);&quot;&gt;&lt;br style=&quot;color: rgb(30, 30, 30); font-family: Verdana, Geneva, sans-serif; font-size: 12.6px; text-align: justify; text-transform: capitalize; background-color: rgb(255, 252, 245);&quot;&gt;&lt;span style=&quot;color: rgb(30, 30, 30); font-family: Verdana, Geneva, sans-serif; font-size: 12.6px; text-align: justify; text-transform: capitalize; background-color: rgb(255, 252, 245);&quot;&gt;= $ (X + 290)&lt;/span&gt;&lt;br style=&quot;color: rgb(30, 30, 30); font-family: Verdana, Geneva, sans-serif; font-size: 12.6px; text-align: justify; text-transform: capitalize; background-color: rgb(255, 252, 245);&quot;&gt;&lt;br style=&quot;color: rgb(30, 30, 30); font-family: Verdana, Geneva, sans-serif; font-size: 12.6px; text-align: justify; text-transform: capitalize; background-color: rgb(255, 252, 245);&quot;&gt;&lt;span style=&quot;color: rgb(30, 30, 30); font-family: Verdana, Geneva, sans-serif; font-size: 12.6px; text-align: justify; text-transform: capitalize; background-color: rgb(255, 252, 245);&quot;&gt;So In This Way End Of Every Week Her Salary Will Increase By $ 145.&lt;/span&gt;\n\n                                            ', 14, 3, NULL, NULL, NULL, NULL, '2016-10-18', NULL, NULL),
(16, '&lt;p&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: Georgia, Times, &amp;quot;Times New Roman&amp;quot;, serif; font-size: 15px;&quot;&gt;My guess. Count vowels&amp;nbsp; a and e in the name of a fruit give 20 cents in a price. Each other vowel gives 20 . apple 20, orange 20+20, grapefruit 20+20+20. So a pear costs 20 cents.&amp;nbsp;&lt;/span&gt;&lt;br style=&quot;margin-top: 0px; color: rgb(51, 51, 51); font-family: Georgia, Times, &amp;quot;Times New Roman&amp;quot;, serif; font-size: 15px;&quot;&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: Georgia, Times, &amp;quot;Times New Roman&amp;quot;, serif; font-size: 15px;&quot;&gt;---&lt;/span&gt;&lt;br style=&quot;color: rgb(51, 51, 51); font-family: Georgia, Times, &amp;quot;Times New Roman&amp;quot;, serif; font-size: 15px;&quot;&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: Georgia, Times, &amp;quot;Times New Roman&amp;quot;, serif; font-size: 15px;&quot;&gt;Well good example of my narrow thinking:-) As&amp;nbsp;&lt;/span&gt;&lt;span class=&quot;qlink_container&quot; style=&quot;margin-bottom: 0px; color: rgb(51, 51, 51); font-family: Georgia, Times, &amp;quot;Times New Roman&amp;quot;, serif; font-size: 15px;&quot;&gt;&lt;a href=&quot;https://www.quora.com/profile/Piotr-Kuczynski&quot; target=&quot;_blank&quot; style=&quot;background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(43, 109, 173);&quot;&gt;Piotr Kuczynski&lt;/a&gt;&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: Georgia, Times, &amp;quot;Times New Roman&amp;quot;, serif; font-size: 15px;&quot;&gt;&amp;nbsp;noted e a in pear directly gives 40 cents, that ruin whole attempt.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;b style=&quot;background-color: rgb(255, 255, 0);&quot;&gt;Cheers !&lt;/b&gt;&amp;nbsp;&lt;/p&gt;&lt;p&gt;\n\n                                            &lt;/p&gt;', 19, 11, NULL, NULL, NULL, NULL, '2016-10-18', NULL, NULL),
(17, 'Test Answer ! Test Answer', 16, 2, NULL, NULL, NULL, NULL, '2016-10-26', NULL, NULL),
(18, '&lt;span style=&quot;color: rgb(51, 51, 51); background-color: rgb(238, 238, 238);&quot;&gt;Test Answer ! Test Answer&amp;nbsp;&lt;/span&gt;\n\n                                            ', 16, 2, NULL, NULL, NULL, NULL, '2016-10-26', NULL, NULL);

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
(12, 'rearerare', 'rearaererser', 'Science', 2, NULL, NULL, '2016-10-16', NULL, NULL, NULL, NULL, NULL),
(13, 'What causes a rainbow?', '&lt;span style=&quot;color: rgb(95, 92, 92); font-family: Muli, helvetica, san-serif;&quot;&gt;Although light looks colorless, it is made up of many colors-red, orange, yellow, green, blue, indigo and violet. These colors are known as the spectrum. When light shines into water, the rays of light refract, or bend, at different angles. Different colors bend at different angles--red bends the least and violet the most. When light passes through a raindrop at a certain angle, the rays separate into the colors of the spectrum-and you see a beautiful rainbow.&lt;/span&gt;', 'Science', 2, 9, NULL, '2016-10-18', NULL, NULL, NULL, NULL, NULL),
(14, 'Mrs. Rodger got a weekly raise of $145. If she gets paid every other week, write an integer describing how the raise will affect her paycheck.', '&lt;p&gt;&lt;span style=&quot;font-family: Verdana, Geneva, sans-serif; font-size: 12.6px;&quot;&gt;Mrs. Rodger got a weekly raise of $145. If she gets paid every other week, write an integer describing how the raise will affect her paycheck.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;font-family: Verdana, Geneva, sans-serif; font-size: 12.6px;&quot;&gt;Please help me with an answer !&lt;/span&gt;&lt;/p&gt;&lt;p&gt;Raja Harsha.&lt;/p&gt;', 'Mathematics', 2, NULL, NULL, '2016-10-18', NULL, NULL, NULL, NULL, NULL),
(15, 'Should I send LinkedIn connection requests to people I donâ€™t know?', '&lt;ul style=&quot;color: rgb(102, 102, 102); font-family: Vollkorn, sans-serif; font-size: 21px;&quot;&gt;&lt;li&gt;&lt;strong&gt;My thoughts are below and my Quick Answer is:&lt;/strong&gt;&amp;nbsp;No&lt;/li&gt;&lt;li&gt;&lt;strong&gt;Slightly Longer Answer:&lt;/strong&gt;&amp;nbsp;Technically you shouldnâ€™t send connection requests to people you donâ€™t know, but there are exceptions to this rule. Itâ€™s up to you whether you want to accept connection requests from people you donâ€™t know- there are some advantages and disadvantages in this.&lt;/li&gt;&lt;/ul&gt;', 'Social', 6, 0, NULL, '2016-10-18', NULL, NULL, NULL, NULL, NULL),
(16, 'Can a vegan diet cause lupus patient to go into remission?', '&lt;p&gt;&lt;span style=&quot;background-color: rgb(255, 255, 0);&quot;&gt;Can a vegan diet cause lupus patient to go into remission?&lt;/span&gt;&lt;/p&gt;&lt;p&gt;- Rstantz&lt;/p&gt;&lt;p&gt;\n         \n        &lt;/p&gt;', 'Science', 7, NULL, NULL, '2016-10-18', NULL, NULL, NULL, NULL, NULL),
(17, 'Solve the case: Who is the killer?', '&lt;h1 style=&quot;font-size: 24px; margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); line-height: 1.25; font-weight: bold; letter-spacing: -1px; font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif;&quot;&gt;&lt;span class=&quot;rendered_qtext&quot; style=&quot;tab-size: 2em;&quot;&gt;Solve the case: A man got killed in his office. The suspects are Edison, Maxis, Jason, Janna, and Sofia. A calendar near the man has 6, 4, 9, 10, 11 written in blood. Who is the killer?&lt;/span&gt;&lt;/h1&gt;\n         \n        ', 'Other', 2, 0, NULL, '2016-10-18', NULL, NULL, NULL, NULL, NULL),
(18, 'How do I distinguish between party and party system?', '&lt;p&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: Georgia, Times, &amp;quot;Times New Roman&amp;quot;, serif; font-size: 15px;&quot;&gt;Party means the group of people with same ideology. Eg.Socialist party,communist party etc.These party take part in election and if they win election they form the government and run government.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: Georgia, Times, &amp;quot;Times New Roman&amp;quot;, serif; font-size: 15px;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: Georgia, Times, &amp;quot;Times New Roman&amp;quot;, serif; font-size: 15px;&quot;&gt;&amp;nbsp;Party system means rules and regulations regarding&amp;nbsp;&lt;/span&gt;&lt;span class=&quot;qlink_container&quot; style=&quot;color: rgb(51, 51, 51); font-family: Georgia, Times, &amp;quot;Times New Roman&amp;quot;, serif; font-size: 15px;&quot;&gt;&lt;a href=&quot;http://parties.eg/&quot; rel=&quot;noopener nofollow&quot; target=&quot;_blank&quot; class=&quot;external_link&quot; data-qt-tooltip=&quot;parties.eg&quot; style=&quot;background-image: url(&amp;quot;data:image/svg+xml,%3C%3Fxml%20version%3D%221.0%22%20encoding%3D%22UTF-8%22%20standalone%3D%22no%22%3F%3E%0A%3Csvg%20width%3D%2214px%22%20height%3D%2214px%22%20viewBox%3D%220%200%2014%2014%22%20version%3D%221.1%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20xmlns%3Axlink%3D%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxlink%22%20xmlns%3Asketch%3D%22http%3A%2F%2Fwww.bohemiancoding.com%2Fsketch%2Fns%22%3E%0A%20%20%20%20%3C!--%20Generator%3A%20Sketch%203.5.2%20(25235)%20-%20http%3A%2F%2Fwww.bohemiancoding.com%2Fsketch%20--%3E%0A%20%20%20%20%3Ctitle%3Eexternal_link%3C%2Ftitle%3E%0A%20%20%20%20%3Cdesc%3ECreated%20with%20Sketch.%3C%2Fdesc%3E%0A%20%20%20%20%3Cdefs%3E%3C%2Fdefs%3E%0A%20%20%20%20%3Cg%20id%3D%22Page-1%22%20stroke%3D%22none%22%20stroke-width%3D%221%22%20fill%3D%22none%22%20fill-rule%3D%22evenodd%22%20sketch%3Atype%3D%22MSPage%22%3E%0A%20%20%20%20%20%20%20%20%3Cg%20id%3D%22external_link%22%20sketch%3Atype%3D%22MSLayerGroup%22%20fill%3D%22%23ccc%22%3E%0A%20%20%20%20%20%20%20%20%20%20%20%20%3Cpath%20d%3D%22M10%2C8%20C9.447%2C8%209%2C8.448%209%2C9%20L9%2C12%20L2%2C12%20L2%2C5%20L5%2C5%20C5.553%2C5%206%2C4.552%206%2C4%20C6%2C3.448%205.553%2C3%205%2C3%20L1%2C3%20C0.447%2C3%200%2C3.448%200%2C4%20L0%2C13%20C0%2C13.552%200.447%2C14%201%2C14%20L10%2C14%20C10.553%2C14%2011%2C13.552%2011%2C13%20L11%2C9%20C11%2C8.448%2010.553%2C8%2010%2C8%20L10%2C8%20Z%22%20id%3D%22Shape%22%20sketch%3Atype%3D%22MSShapeGroup%22%3E%3C%2Fpath%3E%0A%20%20%20%20%20%20%20%20%20%20%20%20%3Cpath%20d%3D%22M13%2C0%20L8%2C0%20C7.447%2C0%207%2C0.448%207%2C1%20C7%2C1.552%207.447%2C2%208%2C2%20L10.586%2C2%20L4.293%2C8.293%20C3.902%2C8.684%203.902%2C9.316%204.293%2C9.707%20C4.488%2C9.902%204.744%2C10%205%2C10%20C5.256%2C10%205.512%2C9.902%205.707%2C9.707%20L12%2C3.414%20L12%2C6%20C12%2C6.552%2012.447%2C7%2013%2C7%20C13.553%2C7%2014%2C6.552%2014%2C6%20L14%2C1%20C14%2C0.448%2013.553%2C0%2013%2C0%20L13%2C0%20Z%22%20id%3D%22Shape%22%20sketch%3Atype%3D%22MSShapeGroup%22%3E%3C%2Fpath%3E%0A%20%20%20%20%20%20%20%20%3C%2Fg%3E%0A%20%20%20%20%3C%2Fg%3E%0A%3C%2Fsvg%3E&amp;quot;); background-position: right 0.3em; background-size: 10.5px; background-repeat: no-repeat; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(43, 109, 173); padding-right: 15px;&quot;&gt;parties.Eg&lt;/a&gt;&lt;/span&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: Georgia, Times, &amp;quot;Times New Roman&amp;quot;, serif; font-size: 15px;&quot;&gt;.single party system which exists in China where only one party is allowed to form government and run government or two party system where power keep on going between t two parties&amp;nbsp;&lt;/span&gt;&lt;span class=&quot;qlink_container&quot; style=&quot;color: rgb(51, 51, 51); font-family: Georgia, Times, &amp;quot;Times New Roman&amp;quot;, serif; font-size: 15px;&quot;&gt;&lt;a href=&quot;http://eg.in/&quot; rel=&quot;noopener nofollow&quot; target=&quot;_blank&quot; class=&quot;external_link&quot; data-qt-tooltip=&quot;eg.in&quot; style=&quot;background-image: url(&amp;quot;data:image/svg+xml,%3C%3Fxml%20version%3D%221.0%22%20encoding%3D%22UTF-8%22%20standalone%3D%22no%22%3F%3E%0A%3Csvg%20width%3D%2214px%22%20height%3D%2214px%22%20viewBox%3D%220%200%2014%2014%22%20version%3D%221.1%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20xmlns%3Axlink%3D%22http%3A%2F%2Fwww.w3.org%2F1999%2Fxlink%22%20xmlns%3Asketch%3D%22http%3A%2F%2Fwww.bohemiancoding.com%2Fsketch%2Fns%22%3E%0A%20%20%20%20%3C!--%20Generator%3A%20Sketch%203.5.2%20(25235)%20-%20http%3A%2F%2Fwww.bohemiancoding.com%2Fsketch%20--%3E%0A%20%20%20%20%3Ctitle%3Eexternal_link%3C%2Ftitle%3E%0A%20%20%20%20%3Cdesc%3ECreated%20with%20Sketch.%3C%2Fdesc%3E%0A%20%20%20%20%3Cdefs%3E%3C%2Fdefs%3E%0A%20%20%20%20%3Cg%20id%3D%22Page-1%22%20stroke%3D%22none%22%20stro', 'Politics', 6, 13, NULL, '2016-10-18', NULL, NULL, NULL, NULL, NULL),
(19, 'An apple costs 20 cents, an orange costs 40 cents, and a grapefruit costs 60 cents. How much is a pear?', '&lt;h1 style=&quot;font-size: 24px; margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(51, 51, 51); line-height: 1.25; font-weight: bold; letter-spacing: -1px; font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, Arial, sans-serif;&quot;&gt;&lt;span class=&quot;rendered_qtext&quot; style=&quot;tab-size: 2em;&quot;&gt;An apple costs 20 cents, an orange costs 40 cents, and a grapefruit costs 60 cents. How much is a pear?&lt;/span&gt;&lt;/h1&gt;\n         \n        ', 'Mathematics', 2, NULL, NULL, '2016-10-18', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ptl_users`
--

CREATE TABLE `ptl_users` (
  `U_ID` int(11) NOT NULL,
  `USER_ID` varchar(50) NOT NULL,
  `PASS_CODE` varchar(200) NOT NULL,
  `ACTIVE` varchar(1) NOT NULL,
  `CREATED_BY` varchar(50) DEFAULT NULL,
  `CREATION_DATE` date DEFAULT NULL,
  `LAST_UPDATED_BY` varchar(50) DEFAULT NULL,
  `LAST_UPDATION_DATE` date DEFAULT NULL,
  `LAST_LOGIN_DATE` date DEFAULT NULL,
  `USER_ROLE` varchar(30) NOT NULL,
  `FIRST_NAME` varchar(50) NOT NULL,
  `LAST_NAME` varchar(50) NOT NULL,
  `EMAIL` varchar(200) DEFAULT NULL,
  `USER_IMAGE` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ptl_users`
--

INSERT INTO `ptl_users` (`U_ID`, `USER_ID`, `PASS_CODE`, `ACTIVE`, `CREATED_BY`, `CREATION_DATE`, `LAST_UPDATED_BY`, `LAST_UPDATION_DATE`, `LAST_LOGIN_DATE`, `USER_ROLE`, `FIRST_NAME`, `LAST_NAME`, `EMAIL`, `USER_IMAGE`) VALUES
(1, 'Administrator', 'Administrator', 'Y', NULL, NULL, NULL, NULL, NULL, 'Admin', 'Admin', 'Admin', NULL, 'default.png'),
(2, 'Raja', 'Harsha', 'Y', NULL, NULL, NULL, NULL, NULL, 'User', 'Raja Harsha', 'Chinta', NULL, 'default.png'),
(3, 'Ram', 'Vajrapu', 'Y', NULL, NULL, NULL, NULL, NULL, 'User', 'Ram Manoj', 'Vajrapu', NULL, '544889.jpg'),
(4, 'admin', 'cs518pa$$', '', NULL, NULL, NULL, NULL, NULL, 'User', 'admin', '', NULL, 'default.png'),
(5, 'jbrunelle', 'M0n@rch$', '', NULL, NULL, NULL, NULL, NULL, 'User', 'jbrunelle', '', NULL, NULL),
(6, 'pvenkman', 'imadoctor', '', NULL, NULL, NULL, NULL, NULL, 'User', 'pvenkman', '', NULL, NULL),
(7, 'rstantz', '"; INSERT INTO Customers (CustomerName,Address,City) Values(@0,@1,@2); --', '', NULL, NULL, NULL, NULL, NULL, 'User', 'rstantz', '', NULL, 'default.png'),
(8, 'dbarrett', 'fr1ed3GGS', '', NULL, NULL, NULL, NULL, NULL, 'User', 'dbarrett', '', NULL, 'default.png'),
(9, 'ltully', '<!--<i>', '', NULL, NULL, NULL, NULL, NULL, 'User', 'ltully', '', NULL, 'default.png'),
(10, 'espengler', 'don''t cross the streams', '', NULL, NULL, NULL, NULL, NULL, 'User', 'espengler', '', NULL, 'default.png'),
(11, 'janine', '--!drop tables;', '', NULL, NULL, NULL, NULL, NULL, 'User', 'janine', '', NULL, 'default.png'),
(12, 'winston', 'zeddM0r3', '', NULL, NULL, NULL, NULL, NULL, 'User', 'winston', '', NULL, 'default.png'),
(13, 'gozer', 'd3$truct0R', '', NULL, NULL, NULL, NULL, NULL, 'User', 'gozer', '', NULL, 'default.png'),
(14, 'slimer', 'f33dM3', '', NULL, NULL, NULL, NULL, NULL, 'User', 'slimer', '', NULL, 'default.png'),
(15, 'zuul', '105"; DROP TABLE', '', NULL, NULL, NULL, NULL, NULL, 'User', 'zuul', '', NULL, 'default.png'),
(16, 'keymaster', 'n0D@na', '', NULL, NULL, NULL, NULL, NULL, 'User', 'keymaster', '', NULL, 'default.png'),
(17, 'gatekeeper', '$l0r', '', NULL, NULL, NULL, NULL, NULL, 'User', 'gatekeeper', '', NULL, 'default.png'),
(18, 'staypuft', 'm@r$hM@ll0w', '', NULL, NULL, NULL, NULL, NULL, 'User', 'staypuft', '', NULL, 'default.png'),
(19, 'SQL_Ingection', 'UPDATE PTL_USERS SET FIRST_NAME = USER_ID, USER_RO', '', NULL, NULL, NULL, NULL, NULL, '', '', '', NULL, 'default.png');

-- --------------------------------------------------------

--
-- Table structure for table `ptl_user_votes`
--

CREATE TABLE `ptl_user_votes` (
  `V_ID` int(11) NOT NULL,
  `V_TYPE` varchar(50) DEFAULT NULL,
  `Q_ID` int(11) NOT NULL,
  `A_ID` int(11) NOT NULL,
  `U_ID` int(11) NOT NULL,
  `VOTE` int(10) DEFAULT NULL,
  `CREATED_BY` varchar(50) DEFAULT NULL,
  `CREATION_DATE` date DEFAULT NULL,
  `LAST_UPDATED_BY` varchar(50) DEFAULT NULL,
  `LAST_UPDATION_DATE` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ptl_user_votes`
--

INSERT INTO `ptl_user_votes` (`V_ID`, `V_TYPE`, `Q_ID`, `A_ID`, `U_ID`, `VOTE`, `CREATED_BY`, `CREATION_DATE`, `LAST_UPDATED_BY`, `LAST_UPDATION_DATE`) VALUES
(1, 'Q', 1, 0, 1, 1, NULL, NULL, NULL, NULL),
(2, 'A', 0, 1, 1, 1, NULL, NULL, NULL, NULL),
(3, 'Q', 18, 0, 2, -1, NULL, NULL, NULL, '2016-10-31'),
(4, 'A', 0, 13, 2, -1, NULL, NULL, NULL, '2016-10-31'),
(5, 'Q', 0, 0, 2, 1, NULL, '2016-10-30', NULL, NULL),
(6, 'Q', 0, 0, 2, 1, NULL, '2016-10-30', NULL, NULL),
(7, 'Q', 0, 0, 2, 1, NULL, '2016-10-30', NULL, NULL),
(8, 'Q', 17, 0, 2, 1, NULL, '2016-10-30', NULL, '2016-10-30'),
(9, 'Q', 1, 0, 2, -1, NULL, '2016-10-30', NULL, NULL),
(10, 'Q', 3, 0, 2, -1, NULL, '2016-10-30', NULL, '2016-10-31'),
(11, 'Q', 13, 0, 2, -1, NULL, '2016-10-31', NULL, '2016-10-31'),
(12, 'A', 0, 9, 2, 1, NULL, '2016-10-31', NULL, '2016-10-31'),
(13, 'Q', 12, 0, 2, 1, NULL, '2016-10-31', NULL, '2016-10-31'),
(14, 'Q', 18, 0, 3, -1, NULL, '2016-10-31', NULL, '2016-10-31'),
(15, 'A', 0, 13, 3, -1, NULL, '2016-10-31', NULL, '2016-10-31'),
(16, 'Q', 12, 0, 3, -1, NULL, '2016-10-31', NULL, '2016-10-31'),
(17, 'Q', 4, 0, 3, -1, NULL, '2016-10-31', NULL, '2016-10-31'),
(18, 'A', 0, 1, 3, -1, NULL, '2016-10-31', NULL, '2016-10-31'),
(19, 'A', 0, 2, 3, -1, NULL, '2016-10-31', NULL, '2016-10-31'),
(20, 'A', 0, 4, 3, -1, NULL, '2016-10-31', NULL, '2016-10-31'),
(21, 'Q', 1, 0, 3, 1, NULL, '2016-10-31', NULL, '2016-10-31'),
(22, 'A', 0, 3, 3, -1, NULL, '2016-10-31', NULL, '2016-10-31'),
(23, 'A', 0, 5, 3, 0, NULL, '2016-10-31', NULL, '2016-10-31'),
(24, 'Q', 3, 0, 3, -1, NULL, '2016-10-31', NULL, '2016-10-31');

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
-- Indexes for table `ptl_user_votes`
--
ALTER TABLE `ptl_user_votes`
  ADD PRIMARY KEY (`V_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ptl_answers`
--
ALTER TABLE `ptl_answers`
  MODIFY `A_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `ptl_questions`
--
ALTER TABLE `ptl_questions`
  MODIFY `Q_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `ptl_users`
--
ALTER TABLE `ptl_users`
  MODIFY `U_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `ptl_user_votes`
--
ALTER TABLE `ptl_user_votes`
  MODIFY `V_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
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
