-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 21, 2019 at 05:12 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `atp_final_01`
--

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `course_id` int(15) NOT NULL,
  `course_name` varchar(200) NOT NULL,
  `credit` varchar(10) NOT NULL,
  `course_teacher` varchar(200) DEFAULT NULL,
  `tchr_username` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`course_id`, `course_name`, `credit`, `course_teacher`, `tchr_username`) VALUES
(4, 'Math-2', '3', 'Shafiul Meznebin', 'shafiul'),
(7, 'Webtech', '3', 'Ehtesham Chowdhury', 'ehtesham'),
(8, 'DLD', '3', 'Al Jami', 'jami'),
(9, 'Device', '3', 'Al Jami', 'jami'),
(10, 'OOAD', '3', 'Asif Rahman', 'asif12'),
(11, 'Device Lab', '1', 'Al Jami', 'jami');

-- --------------------------------------------------------

--
-- Table structure for table `profileimagestore`
--

CREATE TABLE `profileimagestore` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `profileimagestore`
--

INSERT INTO `profileimagestore` (`id`, `username`, `image`) VALUES
(1, 'polin', 'profile_images.jpg'),
(2, 'jami', 'Admin_profile.jpg'),
(3, 'habib', 'profile_images.jpg'),
(4, 'asif12', 'profile_images.jpg'),
(5, 'tutul', 'profile_images.jpg'),
(6, 'sarah', 'profile_images.jpg'),
(7, 'shafiul', 'profile_images.jpg'),
(8, 'aninda', 'profile_images.jpg'),
(9, 'juthi', 'profile_images.jpg'),
(10, 'ehtesham', 'profile_images.jpg'),
(11, 'maisha', 'profile_images.jpg'),
(12, 'aslam', 'profile_images.jpg'),
(13, 'turas', 'profile_images.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `std_courses`
--

CREATE TABLE `std_courses` (
  `id` int(11) NOT NULL,
  `course_name` varchar(100) NOT NULL,
  `std_username` varchar(100) NOT NULL,
  `teacher_name` varchar(100) NOT NULL,
  `teacher_username` varchar(100) NOT NULL,
  `credit` varchar(11) NOT NULL,
  `semester` varchar(20) NOT NULL,
  `gpa` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `std_courses`
--

INSERT INTO `std_courses` (`id`, `course_name`, `std_username`, `teacher_name`, `teacher_username`, `credit`, `semester`, `gpa`) VALUES
(1, 'DLD', 'habib', 'Al Jami', 'jami', '3', 'fall', 'A'),
(2, 'DLD', 'tutul', 'Al Jami', 'jami', '3', 'fall', 'A'),
(3, 'Device', 'habib', 'Al Jami', 'jami', '3', 'fall', 'A'),
(4, 'OOAD', 'habib', 'Asif Rahman', 'asif12', '3', 'fall', 'A'),
(6, 'OOAD', 'sarah', 'Asif Rahman', 'asif12', '3', 'fall', 'C'),
(7, 'DLD', 'sarah', 'Al Jami', 'jami', '3', 'fall', 'C'),
(8, 'Device', 'sarah', 'Al Jami', 'jami', '3', 'fall', 'C'),
(9, 'DLD', 'turas', 'Al Jami', 'jami', '3', 'fall', NULL),
(10, 'Device', 'turas', 'Al Jami', 'jami', '3', 'fall', NULL),
(11, 'Device Lab', 'turas', 'Al Jami', 'jami', '1', 'fall', NULL),
(12, 'DLD', 'aslam', 'Al Jami', 'jami', '3', 'fall', NULL),
(13, 'Device', 'aslam', 'Al Jami', 'jami', '3', 'fall', NULL),
(14, 'Device Lab', 'aslam', 'Al Jami', 'jami', '1', 'fall', NULL),
(15, 'DLD', 'aninda', 'Al Jami', 'jami', '3', 'fall', NULL),
(16, 'Device', 'aninda', 'Al Jami', 'jami', '3', 'fall', NULL),
(17, 'Device Lab', 'aninda', 'Al Jami', 'jami', '1', 'fall', NULL),
(18, 'DLD', 'juthi', 'Al Jami', 'jami', '3', 'fall', NULL),
(19, 'Device', 'juthi', 'Al Jami', 'jami', '3', 'fall', NULL),
(20, 'Device Lab', 'juthi', 'Al Jami', 'jami', '1', 'fall', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(15) NOT NULL,
  `username` varchar(100) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `job` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `email`, `password`, `job`, `phone`, `address`) VALUES
(1, 'polin', 'Abu Fuzail', 'Polin', 'fuzail@gmail.com', '1234', 'admin', '01711223344', 'Bogra, Rajshahi.'),
(2, 'jami', 'Al', 'Jami', 'jami@gmail.com', '123', 'Teacher', '+8801712334455', 'Bogra, Rajshahi'),
(4, 'habib', 'Ashik al', 'Habib', 'habib@gmail.com', '123', 'Student', '+880015558888', 'Bhoirob, Kishorgonj.'),
(5, 'asif12', 'Asif', 'Rahman', 'asif@gmail.com', '123', 'Teacher', '+8801544455522', 'Kochukhet, Mirpur 14, Dhaka'),
(7, 'sarah', 'Sarah', 'Khanom', 'sarah@gmail.com', '123', 'Student', '+8801366665555', 'Kochukhet, Mirpur 14, Dhaka'),
(8, 'shafiul', 'Shafiul', 'Muznebin', 'shafiul@gmail.com', '123', 'Teacher', '+880012225554444', 'Dinajpur'),
(9, 'aninda', 'Zunayed', 'Aninda', 'aninda@gmail.com', '123', 'Student', '+88013666655444', 'Bogra, Rajshahi'),
(10, 'juthi', 'Sharmin', 'Juthi', 'juthi@gmail.com', '123', 'Student', '+8801544455533', 'Kochukhet, Mirpur 14, Dhaka'),
(11, 'ehtesham', 'Ehtesham', 'Chowdhury', 'ehtesham@gmail.com', '123', 'Teacher', '+8801711334455', 'Bashundhara R/A, Dhaka'),
(12, 'maisha', 'Maisha', 'Atin', 'maisha@gmail.com', '123', 'Student', '+880154445532', 'Bogra, Rajshahi'),
(13, 'aslam', 'Aslam', 'Habib', 'aslam@gmail.com', '123', 'Student', '+8801366665555323', 'Bogra, Rajshahi'),
(14, 'turas', 'Mohaimanul', 'Haque', 'turas@gmail.com', '123', 'Student', '+880171233445521', 'Bogra, Rajshahi');

-- --------------------------------------------------------

--
-- Table structure for table `user_notice`
--

CREATE TABLE `user_notice` (
  `id` int(15) NOT NULL,
  `username` varchar(100) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `notice` varchar(500) NOT NULL,
  `sent_to` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_notice`
--

INSERT INTO `user_notice` (`id`, `username`, `subject`, `notice`, `sent_to`) VALUES
(1, 'polin', '', 'this is admin notice', 'tutul'),
(2, 'polin', '', 'This is self notice', 'polin'),
(3, 'polin', 'Late Night Notice', 'This is a notice.', 'polin'),
(4, 'polin', 'Late Night Notice', 'This is a notice.', 'jami'),
(5, 'polin', 'Late Night Notice', 'This is a notice.', 'tutul'),
(6, 'polin', 'Late Night Notice', 'This is a notice.', 'habib'),
(7, 'polin', 'Holiday', 'Holiday will start from 22th December', 'polin'),
(8, 'polin', 'Holiday', 'Holiday will start from 22th December', 'jami'),
(9, 'polin', 'Holiday', 'Holiday will start from 22th December', 'tutul'),
(10, 'polin', 'Holiday', 'Holiday will start from 22th December', 'habib'),
(11, 'polin', 'Holiday', 'Holiday will start from 22th December', 'asif12'),
(12, 'jami', 'Dld class Cancellation', 'Your class tomorrow will be cancelled.', 'habib'),
(13, 'jami', 'Dld class Cancellation', 'Your class tomorrow will be cancelled.', 'tutul'),
(14, 'jami', 'Grade lock', 'Your Grade will be locked in 7 days.', 'tutul'),
(15, 'habib', 'Grade update', 'Sir my grade should be updated.', 'jami');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `profileimagestore`
--
ALTER TABLE `profileimagestore`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `std_courses`
--
ALTER TABLE `std_courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_notice`
--
ALTER TABLE `user_notice`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `course_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `profileimagestore`
--
ALTER TABLE `profileimagestore`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `std_courses`
--
ALTER TABLE `std_courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `user_notice`
--
ALTER TABLE `user_notice`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
