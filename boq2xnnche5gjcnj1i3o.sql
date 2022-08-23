-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: boq2xnnche5gjcnj1i3o-mysql.services.clever-cloud.com:3306
-- Generation Time: Aug 22, 2022 at 04:07 PM
-- Server version: 8.0.22-13
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `boq2xnnche5gjcnj1i3o`
--

-- --------------------------------------------------------

--
-- Table structure for table `examlog`
--

CREATE TABLE `examlog` (
  `examlog_id` int NOT NULL,
  `exam_id` int NOT NULL,
  `user_id` int NOT NULL,
  `num_qs` int DEFAULT NULL,
  `num_qs_attempted` int DEFAULT NULL,
  `num_qs_correct` int DEFAULT NULL,
  `num_qs_incorrect` int DEFAULT NULL,
  `marks` int DEFAULT NULL,
  `pass_status` int DEFAULT NULL,
  `date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `questions` json DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `examlog`
--

INSERT INTO `examlog` (`examlog_id`, `exam_id`, `user_id`, `num_qs`, `num_qs_attempted`, `num_qs_correct`, `num_qs_incorrect`, `marks`, `pass_status`, `questions`) VALUES
(1, 1, 1, 30, NULL, NULL, NULL, NULL, 0, '[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]');

-- --------------------------------------------------------

--
-- Table structure for table `examlog_details`
--

CREATE TABLE `examlog_details` (
  `examlog_id` int NOT NULL,
  `user_id` int NOT NULL,
  `exam_id` int NOT NULL,
  `qsid` int NOT NULL,
  `answer` int NOT NULL,
  `correctstatus` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `examlog_details`
--

INSERT INTO `examlog_details` (`examlog_id`, `user_id`, `exam_id`, `qsid`, `answer`, `correctstatus`) VALUES
(1, 2, 2, 5, 2, 0),
(1, 2, 2, 8, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `exams`
--

CREATE TABLE `exams` (
  `exam_id` bigint NOT NULL,
  `exam_name` varchar(200) NOT NULL,
  `subject_id` varchar(20) NOT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `duration` int NOT NULL,
  `total_questions` int NOT NULL,
  `negativemarking` int DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exams`
--

INSERT INTO `exams` (`exam_id`, `exam_name`, `subject_id`, `date`, `time`, `duration`, `total_questions`, `negativemarking`) VALUES
(1, 'Test Exam', '1', NULL, NULL, 30, 30, 0),
(2, 'test exam 2', '5', NULL, NULL, 15, 15, 0),
(3, 'test exam 3', '5', NULL, NULL, 30, 15, 0),
(4, 'test exam 4', '5', NULL, NULL, 30, 30, 0);

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `qs_id` bigint NOT NULL,
  `subject_id` varchar(20) NOT NULL,
  `question` varchar(500) NOT NULL,
  `answer1` varchar(200) NOT NULL,
  `answer2` varchar(200) NOT NULL,
  `answer3` varchar(200) DEFAULT NULL,
  `answer4` varchar(200) DEFAULT NULL,
  `answer5` varchar(200) DEFAULT NULL,
  `correctanswer` int NOT NULL,
  `maxmarks` int DEFAULT '4',
  `negativemark` int DEFAULT '1',
  `difficultylevel` int DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`qs_id`, `subject_id`, `question`, `answer1`, `answer2`, `answer3`, `answer4`, `answer5`, `correctanswer`, `maxmarks`, `negativemark`, `difficultylevel`) VALUES
(1, '1', ' What is the value of 16*5 ?', '45', '90', '60', '80', '40', 4, 4, 1, 1),
(2, '1', 'A line which cuts a pair of parallel lines is called', 'tangent', 'chord', 'transversal', 'intersector', NULL, 3, 4, 1, 1),
(3, '2', 'What is the capital of the newly formed Union Territory of Dadra and Nagar Haveli and Daman and Diu?', 'Daman', 'Nagar Haveli', 'Dadra', 'Silvassa', NULL, 1, 4, 1, 1),
(4, '2', 'Study of interaction between living organisms and environment is known as?', ' Pedology', 'Ecology', 'Biology', 'Zoology', NULL, 2, 4, 1, 1),
(5, '2', 'Defence Research and Development Organisation (DRDO), along with which private firm, has developed a face shield for doctors and medical staff treating COVID-19 patients?', 'Tata', 'Larsen &Toubro', 'Wipro', 'HCL', NULL, 3, 4, 1, 1),
(6, '2', 'What is the term of the 22nd Law Commission of India, recently approved by the Union Cabinet of India?', 'Two years', 'Three year', 'Five year', 'six year', NULL, 2, 4, 1, 1),
(7, '2', 'Jharkhcegrwgrfacture, sale and storage of 11 brands of pan masala for a year, to curb which harmful chemical present in them?', 'Magnesium carbonate', 'Magnesium chloride', 'Magnesium oxide', 'Sodium carbonate', NULL, 1, 4, 1, 1),
(8, '2', 'Test GK', ' one', 'two', 'three', 'four', 'five', 1, 4, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userid` varchar(20) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `mobile` bigint DEFAULT NULL,
  `password` varchar(25) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0',
  `usertype` int DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userid`, `username`, `name`, `email`, `mobile`, `password`, `status`, `usertype`) VALUES
('01', 'rohitbahuguna', 'Rohit Bahuguna', 'rohitbahuguna@gmail.com', 1025214524, 'df33fd3fd2f1d', 0, 1),
('id001', 'abhi123', 'Abhinaysharma', 'abhi@gmail.com', 9938595891, 'abhi@123', 0, 1),
('id045', 'usernamerahul', 'fullname', 'test@test.com', 7823242567, 'pass045pass', 0, 1),
('id051', 'mumtaj21', 'mumtaj', 'mumtaj@test.com', 8877564275, 'Mumtaj@pass', 1, 1),
('id0620', 'testusername', 'fullname', 'testtest@test.com', 1231231231, 'pass123pass', 0, 1),
('id0622', 'testusername', 'fullname', 'testtest@test.com', NULL, 'pass123pass', 0, 1),
('id0625', 'testusername', 'fullname', 'anurag2@test.com', 7889552252, 'pass123pass', 0, 1),
('id0626', 'testusername', 'fullname', 'anurag3@test.com', NULL, NULL, 0, 1),
('id0628', 'testusername', 'fullname', NULL, NULL, NULL, 0, 1),
('id099', 'anurag1', 'Anurag', 'testtest@test.com', 1231231231, 'pass123', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `userid` varchar(20) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `profilepic` varchar(200) DEFAULT NULL,
  `pincode` bigint DEFAULT NULL,
  `contact` bigint DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `college` varchar(50) DEFAULT NULL,
  `company` varchar(50) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `course` varchar(50) DEFAULT NULL,
  `gradyear` year DEFAULT NULL,
  `accountdate` date DEFAULT NULL,
  `lastlogin` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`userid`, `gender`, `address`, `profilepic`, `pincode`, `contact`, `city`, `country`, `college`, `company`, `age`, `course`, `gradyear`, `accountdate`, `lastlogin`) VALUES
('id012', 'Male', 'ludhiana,punjab', '------', 141013, 7584142965, 'Ludhiana', 'India', 'GNDEC', 'Newton School', 22, 'Fullstack Development', 2022, '0000-00-00', '0000-00-00 00:00:00'),
('id0622', 'male', 'city abcd, District zxy, State M.P.', 'https://freesvg.org/img/1555073263.png', 461111, 32446454, 'Bhopal', 'India', 'M.G.M. college', 'Newton School', 20, 'BA', NULL, NULL, NULL),
('01', 'male', 'bokaro steel city', NULL, 80001, 1025214524, 'bokaro', 'India', 'abcd', 'sff', 23, 'frontend dev', 2021, '2022-11-11', NULL),
('01', 'male', 'Haldwani', 'image url', 263139, 1245325415, 'Nainital', 'india', 'DSB campus nainital', NULL, 24, 'BVocAMA', 2022, '2021-11-11', '2022-07-29 22:36:17'),
('suvro96', 'male', 'naihati', 'https://cdn.pixabay.com/photo/2020/07/01/12/58/icon-5359553_1280.png', 7212136, 9852145454, 'Kolkata', 'India', 'RBC college', 'Life.Co', 20, 'BSC', 2023, '2022-07-29', '2022-07-29 22:36:17'),
('id012', 'Male', 'ludhiana,punjab', '------', 141013, 7584142965, 'Ludhiana', 'India', 'GNDEC', 'Newton School', 22, 'Fullstack Development', 2022, '0000-00-00', '0000-00-00 00:00:00'),
('id0622', 'male', 'city abcd, District zxy, State M.P.', 'https://freesvg.org/img/1555073263.png', 461111, 32446454, 'Bhopal', 'India', 'M.G.M. college', 'Newton School', 20, 'BA', NULL, NULL, NULL),
('01', 'male', 'bokaro steel city', NULL, 80001, 1025214524, 'bokaro', 'India', 'abcd', 'sff', 23, 'frontend dev', 2021, '2022-11-11', NULL),
('01', 'male', 'Haldwani', 'image url', 263139, 1245325415, 'Nainital', 'india', 'DSB campus nainital', NULL, 24, 'BVocAMA', 2022, '2021-11-11', '2022-07-29 22:36:17'),
('suvro96', 'male', 'naihati', 'https://cdn.pixabay.com/photo/2020/07/01/12/58/icon-5359553_1280.png', 7212136, 9852145454, 'Kolkata', 'India', 'RBC college', 'Life.Co', 20, 'BSC', 2023, '2022-07-29', '2022-07-29 22:36:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `examlog`
--
ALTER TABLE `examlog`
  ADD PRIMARY KEY (`examlog_id`);

--
-- Indexes for table `exams`
--
ALTER TABLE `exams`
  ADD PRIMARY KEY (`exam_id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`qs_id`),
  ADD UNIQUE KEY `question` (`question`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `examlog`
--
ALTER TABLE `examlog`
  MODIFY `examlog_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `exams`
--
ALTER TABLE `exams`
  MODIFY `exam_id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `qs_id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
