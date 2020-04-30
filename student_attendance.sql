-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 30, 2020 at 05:24 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `student_attendance`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance_records`
--

CREATE TABLE `attendance_records` (
  `A_Records_id` int(11) NOT NULL,
  `Date` date NOT NULL,
  `s_Name` varchar(50) NOT NULL,
  `STATUS` varchar(50) NOT NULL,
  `Subject` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `holidays_events`
--

CREATE TABLE `holidays_events` (
  `HolidaysE_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `others`
--

CREATE TABLE `others` (
  `Id` int(25) NOT NULL,
  `Year` varchar(25) NOT NULL,
  `Course` varchar(25) NOT NULL,
  `Section` varchar(50) NOT NULL,
  `Subject` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `others`
--

INSERT INTO `others` (`Id`, `Year`, `Course`, `Section`, `Subject`) VALUES
(1, 'First-Year', 'BS-IT', '', 'Science, Technology And Society'),
(3, 'First-Year', 'BS-IT', '', 'Introduction to Human Computer Interaction'),
(7, 'First-Year', 'BS-IT', '', 'Computer Programming 2'),
(8, 'First-Year', 'BS-IT', '', 'Discrete Mathematics'),
(9, 'First-Year', 'BS-IT', '', 'Living In The IT Era'),
(10, 'First-Year', 'BS-IT', '', 'The Contemporary World'),
(11, 'First-Year', 'BS-IT', '', 'Arts Appreciation'),
(12, 'First-Year', 'BS-IT', '', 'P.E 2'),
(13, 'First-Year', 'BS-IT', '', 'Physics 2'),
(22, 'First-Year', 'BE-ED', '', 'Living in the IT Era'),
(23, 'First-Year', 'BE-ED', '', 'Assessment of Learning 1'),
(24, 'First-Year', 'BE-ED', '', 'Foundation of Special Inclusive Education'),
(25, 'First-Year', 'BE-ED', '', 'Science Technology and Society'),
(26, 'First-Year', 'BE-ED', '', 'Contemporary World'),
(27, 'First-Year', 'BE-ED', '', 'Ethics'),
(28, 'First-Year', 'BE-ED', '', 'Arts Appreciation'),
(31, 'Second-Year', 'BE-ED', '', 'Pagtuturo sa Filipino sa Elementarya (Panitikan ng Pilipinas)'),
(32, 'Second-Year', 'BE-ED', '', 'The Teacher and Community School Culture and Organizational Leadership'),
(33, 'Second-Year', 'BE-ED', '', 'Teaching Math in the Intermediate Grades'),
(35, 'Second-Year', 'BE-ED', '', 'P.E 4'),
(36, 'Second-Year', 'BE-ED', '', 'Filipino sa Ibat-ibang Disiplina');

-- --------------------------------------------------------

--
-- Table structure for table `students_information`
--

CREATE TABLE `students_information` (
  `Id` int(11) NOT NULL,
  `s_schoolid` varchar(25) NOT NULL,
  `rfid_tag` int(10) NOT NULL,
  `FirstName` varchar(25) NOT NULL,
  `LastName` varchar(25) NOT NULL,
  `Year` varchar(25) NOT NULL,
  `Course` varchar(25) NOT NULL,
  `Section` varchar(25) NOT NULL,
  `Gender` varchar(25) NOT NULL,
  `s_birthdate` date NOT NULL,
  `ContactNo` varchar(25) NOT NULL,
  `nParents` varchar(25) NOT NULL,
  `pContact` varchar(25) NOT NULL,
  `Image_Path` varchar(70) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students_information`
--

INSERT INTO `students_information` (`Id`, `s_schoolid`, `rfid_tag`, `FirstName`, `LastName`, `Year`, `Course`, `Section`, `Gender`, `s_birthdate`, `ContactNo`, `nParents`, `pContact`, `Image_Path`) VALUES
(66, '5342229-1195', 0, 'Jerald', 'Jose', 'First-Year', 'BS-IT', '', 'Male', '2020-03-28', '(0910) 277-4270', 'Verbina Jose', '(0910) 191-9317', '259851_2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_records`
--

CREATE TABLE `teacher_records` (
  `Teacher_id` int(25) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Contact` varchar(25) NOT NULL,
  `Year` varchar(25) NOT NULL,
  `Course` varchar(25) NOT NULL,
  `Section` varchar(25) NOT NULL,
  `Subject` varchar(100) NOT NULL,
  `Time` varchar(40) NOT NULL,
  `Schedule` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teacher_records`
--

INSERT INTO `teacher_records` (`Teacher_id`, `Name`, `Contact`, `Year`, `Course`, `Section`, `Subject`, `Time`, `Schedule`) VALUES
(41, 'JERALD JOSE', '', 'First-Year', 'BS-IT', '', 'Introduction to Human Computer Interaction', '01:30 PM - 02:30 PM', 'SAT'),
(44, 'JERALD JOSE', '', 'First-Year', 'BE-ED', '', 'Living in the IT Era', '02:01 PM - 02:01 PM', ''),
(45, 'ROSELLO REDEM', '', 'First-Year', 'BS-IT', '', 'Arts Appreciation', '02:01 PM - 02:01 PM', ''),
(46, 'ROSELLO REDEM', '', 'First-Year', 'BS-IT', '', 'P.E 2', '02:01 PM - 02:01 PM', '');

-- --------------------------------------------------------

--
-- Table structure for table `userlogin`
--

CREATE TABLE `userlogin` (
  `user_id` int(11) NOT NULL,
  `Name` varchar(25) NOT NULL,
  `Username` varchar(25) NOT NULL,
  `Password` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userlogin`
--

INSERT INTO `userlogin` (`user_id`, `Name`, `Username`, `Password`) VALUES
(10, 'JERALD JOSE', '?', '?'),
(11, 'ROSELLO REDEM', '1', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance_records`
--
ALTER TABLE `attendance_records`
  ADD PRIMARY KEY (`A_Records_id`),
  ADD UNIQUE KEY `A_Records_id` (`A_Records_id`);

--
-- Indexes for table `holidays_events`
--
ALTER TABLE `holidays_events`
  ADD PRIMARY KEY (`HolidaysE_id`);

--
-- Indexes for table `others`
--
ALTER TABLE `others`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `students_information`
--
ALTER TABLE `students_information`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `s_schoolid` (`s_schoolid`);
ALTER TABLE `students_information` ADD FULLTEXT KEY `Image_Path` (`Image_Path`);

--
-- Indexes for table `teacher_records`
--
ALTER TABLE `teacher_records`
  ADD PRIMARY KEY (`Teacher_id`);

--
-- Indexes for table `userlogin`
--
ALTER TABLE `userlogin`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendance_records`
--
ALTER TABLE `attendance_records`
  MODIFY `A_Records_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `holidays_events`
--
ALTER TABLE `holidays_events`
  MODIFY `HolidaysE_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `others`
--
ALTER TABLE `others`
  MODIFY `Id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `students_information`
--
ALTER TABLE `students_information`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `teacher_records`
--
ALTER TABLE `teacher_records`
  MODIFY `Teacher_id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `userlogin`
--
ALTER TABLE `userlogin`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
