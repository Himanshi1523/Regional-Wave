-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 07, 2025 at 01:25 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mychat_db`
--
CREATE DATABASE IF NOT EXISTS `mychat_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `mychat_db`;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL,
  `msgid` varchar(60) NOT NULL,
  `sender` bigint(20) NOT NULL,
  `receiver` bigint(20) NOT NULL,
  `message` text NOT NULL,
  `files` text DEFAULT NULL,
  `date` datetime NOT NULL,
  `seen` int(11) NOT NULL DEFAULT 0,
  `received` int(11) NOT NULL DEFAULT 0,
  `deleted_sender` tinyint(4) NOT NULL DEFAULT 0,
  `deleted_receiver` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `msgid`, `sender`, `receiver`, `message`, `files`, `date`, `seen`, `received`, `deleted_sender`, `deleted_receiver`) VALUES
(1, 'rTRYUJvd9H9pdxQ8jXyWfBSq4y6tDAKmTB7fy3X0Dk4gnYIzfyJ', 2366508039431436065, 670082664413480, 'hy jia\\', NULL, '2025-04-11 10:28:29', 1, 1, 0, 0),
(2, 'rTRYUJvd9H9pdxQ8jXyWfBSq4y6tDAKmTB7fy3X0Dk4gnYIzfyJ', 2366508039431436065, 670082664413480, 'hy', NULL, '2025-04-11 11:17:41', 1, 1, 0, 0),
(3, 'rTRYUJvd9H9pdxQ8jXyWfBSq4y6tDAKmTB7fy3X0Dk4gnYIzfyJ', 670082664413480, 2366508039431436065, 'hy', NULL, '2025-04-11 11:54:04', 1, 1, 0, 0),
(4, 'rTRYUJvd9H9pdxQ8jXyWfBSq4y6tDAKmTB7fy3X0Dk4gnYIzfyJ', 670082664413480, 2366508039431436065, '', 'uploads/67f8e6d200178_message_sent.mp3', '2025-04-11 11:54:26', 1, 1, 1, 0),
(5, 'rTRYUJvd9H9pdxQ8jXyWfBSq4y6tDAKmTB7fy3X0Dk4gnYIzfyJ', 670082664413480, 2366508039431436065, 'hy there', NULL, '2025-04-11 11:54:53', 1, 1, 0, 0),
(6, 'rtmawVNNw9ay', 39239316, 670082664413480, 'hy jia', NULL, '2025-04-12 13:53:35', 0, 0, 1, 0),
(7, 'rtmawVNNw9ay', 39239316, 670082664413480, '', 'uploads/67fa5442aaab2_user3.jpg', '2025-04-12 13:53:38', 0, 0, 1, 0),
(8, 'rtmawVNNw9ay', 39239316, 670082664413480, '', 'uploads/67fa5459405d2_message_sent.mp3', '2025-04-12 13:54:01', 0, 0, 1, 0),
(9, 'rtmawVNNw9ay', 39239316, 670082664413480, '', 'uploads/67fa574d52a85_message_sent.mp3', '2025-04-12 14:06:37', 0, 0, 1, 0),
(10, 'mzRQRfr7uXf0KefXelGwz2eH', 39239316, 2366508039431436065, '', 'uploads/67fa599f606ec_message_received.mp3', '2025-04-12 14:16:31', 1, 1, 1, 1),
(11, 'rtmawVNNw9ay', 39239316, 670082664413480, 'hy', NULL, '2025-04-14 12:19:46', 0, 0, 1, 0),
(12, 'mzRQRfr7uXf0KefXelGwz2eH', 39239316, 2366508039431436065, 'hy', NULL, '2025-04-14 12:20:26', 1, 1, 1, 1),
(13, 'mzRQRfr7uXf0KefXelGwz2eH', 2366508039431436065, 39239316, 'hfdtdjy', NULL, '2025-04-14 12:20:39', 1, 1, 1, 1),
(14, 'rtmawVNNw9ay', 39239316, 670082664413480, 'bby', NULL, '2025-04-14 14:01:04', 0, 0, 1, 0),
(15, 'rtmawVNNw9ay', 39239316, 670082664413480, '', 'uploads/67fd2e29307ee_logo.png', '2025-04-14 17:47:53', 0, 0, 1, 0),
(16, 'rtmawVNNw9ay', 39239316, 670082664413480, '', 'uploads/67fd307e869c4_message_sent.mp3', '2025-04-14 17:57:50', 0, 0, 1, 0),
(17, 'rtmawVNNw9ay', 39239316, 670082664413480, '', 'uploads/67fd316ad33db_message_sent.mp3', '2025-04-14 18:01:46', 0, 0, 1, 0),
(18, 'rtmawVNNw9ay', 39239316, 670082664413480, '', 'uploads/67fd32060d011_message_sent.mp3', '2025-04-14 18:04:22', 0, 0, 1, 0),
(19, 'rtmawVNNw9ay', 39239316, 670082664413480, '', 'uploads/67fd3306e3fe1_message_received.mp3', '2025-04-14 18:08:38', 0, 0, 1, 0),
(20, 'rtmawVNNw9ay', 39239316, 670082664413480, '', 'uploads/680f965fe826d_Screenshot 2025-04-08 210557.png', '2025-04-28 16:53:19', 0, 0, 1, 0),
(21, 'rtmawVNNw9ay', 39239316, 670082664413480, '', 'uploads/680f966b4aa39_Screenshot 2025-04-13 232424.png', '2025-04-28 16:53:31', 0, 0, 1, 0),
(22, 'rtmawVNNw9ay', 39239316, 670082664413480, '', 'uploads/680f9688e3aba_message_received.mp3', '2025-04-28 16:54:00', 0, 0, 1, 0),
(23, 'rtmawVNNw9ay', 39239316, 670082664413480, '', 'uploads/680f9955dc03b_message_received.mp3', '2025-04-28 17:05:57', 0, 0, 1, 0),
(24, 'rtmawVNNw9ay', 39239316, 670082664413480, '', 'uploads/680f9976772ae_message_received.mp3', '2025-04-28 17:06:30', 0, 0, 1, 0),
(25, 'rtmawVNNw9ay', 39239316, 670082664413480, '', 'uploads/680f9a057d4a2_message_received.mp3', '2025-04-28 17:08:53', 0, 0, 1, 0),
(26, 'rtmawVNNw9ay', 39239316, 670082664413480, '', 'uploads/680f9cad46561_message_received.mp3', '2025-04-28 17:20:13', 0, 0, 1, 0),
(27, 'mzRQRfr7uXf0KefXelGwz2eH', 39239316, 2366508039431436065, '', 'uploads/screen image.jpg', '2025-04-29 10:49:19', 0, 1, 1, 1),
(28, 'rtmawVNNw9ay', 39239316, 670082664413480, '', 'uploads/screen image.jpg', '2025-04-29 11:01:50', 0, 0, 0, 0),
(29, 'rtmawVNNw9ay', 39239316, 670082664413480, '', 'uploads/logo.png', '2025-04-29 11:02:41', 0, 0, 0, 0),
(30, 'rtmawVNNw9ay', 39239316, 670082664413480, '', 'uploads/1745918062_user5.jpeg', '2025-04-29 11:14:22', 0, 0, 0, 0),
(31, 'mzRQRfr7uXf0KefXelGwz2eH', 39239316, 2366508039431436065, 'hy', NULL, '2025-04-30 06:58:52', 1, 1, 1, 1),
(32, 'mzRQRfr7uXf0KefXelGwz2eH', 2366508039431436065, 39239316, '', 'uploads/1745989154_tick.png', '2025-04-30 06:59:14', 0, 1, 1, 1),
(33, 'rTRYUJvd9H9pdxQ8jXyWfBSq4y6tDAKmTB7fy3X0Dk4gnYIzfyJ', 2366508039431436065, 670082664413480, '', 'uploads/1746003501_tick.png', '2025-04-30 10:58:21', 0, 0, 0, 0),
(34, 'mzRQRfr7uXf0KefXelGwz2eH', 2366508039431436065, 39239316, 'Hi', NULL, '2025-05-02 12:55:40', 1, 1, 1, 0),
(35, 'mzRQRfr7uXf0KefXelGwz2eH', 39239316, 2366508039431436065, 'kaise ho', NULL, '2025-05-02 12:55:58', 1, 1, 0, 1),
(36, 'mzRQRfr7uXf0KefXelGwz2eH', 2366508039431436065, 39239316, 'Thik', NULL, '2025-05-02 12:56:06', 1, 1, 1, 0),
(37, 'mzRQRfr7uXf0KefXelGwz2eH', 2366508039431436065, 39239316, 'Tum btao', NULL, '2025-05-02 12:56:10', 0, 1, 1, 0),
(38, 'mzRQRfr7uXf0KefXelGwz2eH', 39239316, 2366508039431436065, 'ok rkho phnnone anb', NULL, '2025-05-02 12:56:14', 1, 1, 0, 1),
(39, 'mzRQRfr7uXf0KefXelGwz2eH', 2366508039431436065, 39239316, 'Kahe', NULL, '2025-05-02 12:56:21', 0, 1, 1, 1),
(40, 'rtmawVNNw9ay', 39239316, 670082664413480, 'fyj8util', NULL, '2025-05-03 14:37:21', 0, 0, 0, 0),
(41, 'VXwM5JRbGON65jPSb8tJLmOhG6cIEHIvTkdDTbwo3nS', 1896099028090549458, 39239316, 'Hello', NULL, '2025-05-03 14:51:46', 0, 1, 0, 0),
(42, 'VXwM5JRbGON65jPSb8tJLmOhG6cIEHIvTkdDTbwo3nS', 39239316, 1896099028090549458, 'hy', NULL, '2025-05-03 14:51:54', 0, 1, 0, 0),
(43, 'mzRQRfr7uXf0KefXelGwz2eH', 39239316, 2366508039431436065, 'by', NULL, '2025-05-05 19:35:42', 0, 1, 0, 1),
(44, 'mzRQRfr7uXf0KefXelGwz2eH', 39239316, 2366508039431436065, '', 'uploads/1746466569_Screenshot 2025-04-06 164910.png', '2025-05-05 19:36:09', 0, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `userid` bigint(20) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `password` varchar(64) NOT NULL,
  `image` varchar(500) NOT NULL,
  `date` datetime NOT NULL,
  `online` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `userid`, `username`, `email`, `gender`, `password`, `image`, `date`, `online`) VALUES
(1, 670082664413480, 'Jia', 'jia@gmail.com', 'Female', 'jia@12345', 'uploads/user3.jpg', '2025-04-10 21:30:44', 0),
(3, 2366508039431436065, 'Mary', 'mary@gmail.com', 'Female', 'Mary@123', 'uploads/user4.jpg', '2025-04-11 09:46:18', 0),
(8, 39239316, 'John', 'john@gmail.com', 'Male', 'John@123', 'uploads/67fa5435b8807_user6.jpg', '2025-04-12 13:52:11', 0),
(10, 1896099028090549458, 'Bhavana', 'bhavna@gmail.com', 'Female', 'himanshi@1S', '', '2025-05-03 14:50:25', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `msgid` (`msgid`,`sender`,`receiver`,`date`,`seen`,`deleted_sender`,`deleted_receiver`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `email_2` (`email`),
  ADD KEY `userid` (`userid`,`username`,`email`,`gender`,`date`,`online`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Database: `mydatabase`
--
CREATE DATABASE IF NOT EXISTS `mydatabase` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `mydatabase`;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(1, 'Himanshi', 'him@gmail.com', '12345'),
(4, 'jack', 'jack@gmail.com', 'Jack@123'),
(3, 'jack', 'jack@hhh', '12r3'),
(5, 'John', 'John@gmail.com', '123435667'),
(6, 'mary', 'mary@gmail.com', 'mary12345'),
(9, 'roy', 'roy@gmail.com', 'roy123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `name` (`name`,`email`,`password`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- Database: `myhmsdb`
--
CREATE DATABASE IF NOT EXISTS `myhmsdb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `myhmsdb`;

-- --------------------------------------------------------

--
-- Table structure for table `admintb`
--

CREATE TABLE `admintb` (
  `username` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admintb`
--

INSERT INTO `admintb` (`username`, `password`) VALUES
('admin', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `appointmenttb`
--

CREATE TABLE `appointmenttb` (
  `pid` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `doctor` varchar(30) NOT NULL,
  `docFees` int(5) NOT NULL,
  `appdate` date NOT NULL,
  `apptime` time NOT NULL,
  `userStatus` int(5) NOT NULL,
  `doctorStatus` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `appointmenttb`
--

INSERT INTO `appointmenttb` (`pid`, `ID`, `fname`, `lname`, `gender`, `email`, `contact`, `doctor`, `docFees`, `appdate`, `apptime`, `userStatus`, `doctorStatus`) VALUES
(4, 1, 'Kishan', 'Lal', 'Male', 'kishansmart0@gmail.com', '8838489464', 'Ganesh', 550, '2020-02-14', '10:00:00', 1, 0),
(4, 2, 'Kishan', 'Lal', 'Male', 'kishansmart0@gmail.com', '8838489464', 'Dinesh', 700, '2020-02-28', '10:00:00', 0, 1),
(4, 3, 'Kishan', 'Lal', 'Male', 'kishansmart0@gmail.com', '8838489464', 'Amit', 1000, '2020-02-19', '03:00:00', 0, 1),
(11, 4, 'Shraddha', 'Kapoor', 'Female', 'shraddha@gmail.com', '9768946252', 'ashok', 500, '2020-02-29', '20:00:00', 1, 1),
(4, 5, 'Kishan', 'Lal', 'Male', 'kishansmart0@gmail.com', '8838489464', 'Dinesh', 700, '2020-02-28', '12:00:00', 1, 1),
(4, 6, 'Kishan', 'Lal', 'Male', 'kishansmart0@gmail.com', '8838489464', 'Ganesh', 550, '2020-02-26', '15:00:00', 0, 1),
(2, 8, 'Alia', 'Bhatt', 'Female', 'alia@gmail.com', '8976897689', 'Ganesh', 550, '2020-03-21', '10:00:00', 1, 1),
(5, 9, 'Gautam', 'Shankararam', 'Male', 'gautam@gmail.com', '9070897653', 'Ganesh', 550, '2020-03-19', '20:00:00', 1, 0),
(4, 10, 'Kishan', 'Lal', 'Male', 'kishansmart0@gmail.com', '8838489464', 'Ganesh', 550, '0000-00-00', '14:00:00', 1, 0),
(4, 11, 'Kishan', 'Lal', 'Male', 'kishansmart0@gmail.com', '8838489464', 'Dinesh', 700, '2020-03-27', '15:00:00', 1, 1),
(9, 12, 'William', 'Blake', 'Male', 'william@gmail.com', '8683619153', 'Kumar', 800, '2020-03-26', '12:00:00', 1, 1),
(9, 13, 'William', 'Blake', 'Male', 'william@gmail.com', '8683619153', 'Tiwary', 450, '2020-03-26', '14:00:00', 1, 1),
(0, 14, 'HIMANSHI', 'SINGH', 'Female', 'john@gmail.com', '8756758970', 'Dinesh', 700, '2025-04-15', '16:00:00', 1, 1),
(13, 15, 'HIMANSHI', 'SINGH', 'Female', 'john@gmail.com', '8756758970', 'Ganesh', 550, '2025-04-30', '16:00:00', 1, 1),
(13, 16, 'HIMANSHI', 'SINGH', 'Female', 'john@gmail.com', '8756758970', 'Dinesh', 700, '2025-05-09', '14:00:00', 1, 1),
(0, 17, 'HIMANSHI', 'SINGH', 'Male', 'him@gmail.com', '1234567890', 'Dinesh', 700, '2025-04-25', '16:00:00', 1, 1),
(0, 18, 'john', 'john', 'Male', 'j@gmail.com', '1234567890', 'ashok', 500, '2025-04-15', '16:00:00', 0, 1),
(17, 19, 'john', 'john', 'Male', 'j@gmail.com', '1234567890', 'arun', 600, '2025-04-15', '16:00:00', 1, 1),
(1, 20, 'Ram', 'Kumar', 'Male', 'ram@gmail.com', '9876543210', 'ashok', 500, '2025-04-30', '10:00:00', 1, 1),
(0, 21, 'amrita', 'singh', 'Female', 'amrita@gmail.com', '1234567890', 'ashok', 500, '2025-04-30', '16:00:00', 1, 1),
(0, 22, 'mary', 'mary', 'Male', 'mary@gmail.com', '8756758970', 'arun', 600, '2025-04-30', '16:00:00', 1, 1),
(0, 23, 'fuff', 'djx', 'Male', 'fuff@gmail.com', '8756758970', 'Amit', 1000, '2025-04-30', '14:00:00', 1, 1),
(0, 24, 'Jia', 'Jia', 'Male', 'jia@gmail.com', '8756758970', 'arun', 600, '2025-04-30', '12:00:00', 1, 1),
(21, 25, 'Jia', 'Jia', 'Male', 'jia@gmail.com', '8756758970', 'Kumar', 800, '2025-05-01', '12:00:00', 1, 1),
(21, 26, 'Jia', 'Jia', 'Male', 'jia@gmail.com', '8756758970', 'ashok', 500, '2025-04-30', '12:00:00', 1, 1),
(0, 27, 'abc', 'dtud', 'Male', 'abc@gmail.com', '8756758970', 'Kumar', 800, '2025-04-30', '12:00:00', 1, 1),
(0, 28, 'fuffj', 'fuffj', 'Male', 'fuffj@gmail.com', '8756758970', 'arun', 600, '2025-05-03', '12:00:00', 1, 1),
(0, 29, 'fuffj', 'fuffj', 'Male', 'fuffj@gmail.com', '8756758970', 'Kumar', 800, '2025-05-01', '10:00:00', 1, 1),
(0, 30, 'jack', 'jack', 'Male', 'jack@gmail.com', '8756758970', 'arun', 600, '2025-05-09', '10:00:00', 1, 1),
(0, 31, 'ria', 'ria', 'Male', 'ria@gmail.com', '0123456789', 'Ganesh', 550, '2025-05-02', '12:00:00', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `name` varchar(30) NOT NULL,
  `email` text NOT NULL,
  `contact` varchar(10) NOT NULL,
  `message` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`name`, `email`, `contact`, `message`) VALUES
('Anu', 'anu@gmail.com', '7896677554', 'Hey Admin'),
(' Viki', 'viki@gmail.com', '9899778865', 'Good Job, Pal'),
('Ananya', 'ananya@gmail.com', '9997888879', 'How can I reach you?'),
('Aakash', 'aakash@gmail.com', '8788979967', 'Love your site'),
('Mani', 'mani@gmail.com', '8977768978', 'Want some coffee?'),
('Karthick', 'karthi@gmail.com', '9898989898', 'Good service'),
('Abbis', 'abbis@gmail.com', '8979776868', 'Love your service'),
('Asiq', 'asiq@gmail.com', '9087897564', 'Love your service. Thank you!'),
('Jane', 'jane@gmail.com', '7869869757', 'I love your service!');

-- --------------------------------------------------------

--
-- Table structure for table `doctb`
--

CREATE TABLE `doctb` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `spec` varchar(50) NOT NULL,
  `docFees` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `doctb`
--

INSERT INTO `doctb` (`username`, `password`, `email`, `spec`, `docFees`) VALUES
('ashok', 'ashok123', 'ashok@gmail.com', 'General', 500),
('arun', 'arun123', 'arun@gmail.com', 'Cardiologist', 600),
('Dinesh', 'dinesh123', 'dinesh@gmail.com', 'General', 700),
('Ganesh', 'ganesh123', 'ganesh@gmail.com', 'Pediatrician', 550),
('Kumar', 'kumar123', 'kumar@gmail.com', 'Pediatrician', 800),
('Amit', 'amit123', 'amit@gmail.com', 'Cardiologist', 1000),
('Abbis', 'abbis123', 'abbis@gmail.com', 'Neurologist', 1500),
('Tiwary', 'tiwary123', 'tiwary@gmail.com', 'Pediatrician', 450);

-- --------------------------------------------------------

--
-- Table structure for table `patreg`
--

CREATE TABLE `patreg` (
  `pid` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `password` varchar(30) NOT NULL,
  `cpassword` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `patreg`
--

INSERT INTO `patreg` (`pid`, `fname`, `lname`, `gender`, `email`, `contact`, `password`, `cpassword`) VALUES
(1, 'Ram', 'Kumar', 'Male', 'ram@gmail.com', '9876543210', 'ram123', 'ram123'),
(2, 'Alia', 'Bhatt', 'Female', 'alia@gmail.com', '8976897689', 'alia123', 'alia123'),
(3, 'Shahrukh', 'khan', 'Male', 'shahrukh@gmail.com', '8976898463', 'shahrukh123', 'shahrukh123'),
(4, 'Kishan', 'Lal', 'Male', 'kishansmart0@gmail.com', '8838489464', 'kishan123', 'kishan123'),
(5, 'Gautam', 'Shankararam', 'Male', 'gautam@gmail.com', '9070897653', 'gautam123', 'gautam123'),
(6, 'Sushant', 'Singh', 'Male', 'sushant@gmail.com', '9059986865', 'sushant123', 'sushant123'),
(7, 'Nancy', 'Deborah', 'Female', 'nancy@gmail.com', '9128972454', 'nancy123', 'nancy123'),
(8, 'Kenny', 'Sebastian', 'Male', 'kenny@gmail.com', '9809879868', 'kenny123', 'kenny123'),
(9, 'William', 'Blake', 'Male', 'william@gmail.com', '8683619153', 'william123', 'william123'),
(10, 'Peter', 'Norvig', 'Male', 'peter@gmail.com', '9609362815', 'peter123', 'peter123'),
(11, 'Shraddha', 'Kapoor', 'Female', 'shraddha@gmail.com', '9768946252', 'shraddha123', 'shraddha123'),
(13, 'HIMANSHI', 'SINGH', 'Female', 'john@gmail.com', '8756758970', 'John@123', 'John@123'),
(14, 'cydy', 'yddyjdc', 'Male', '', '', '1234567', '1234567'),
(21, 'Jia', 'Jia', 'Male', 'jia@gmail.com', '8756758970', 'Jia@123', 'Jia@123'),
(22, 'abc', 'dtud', 'Male', 'abc@gmail.com', '8756758970', 'Abc@123', 'Abc@123'),
(23, 'fuffj', 'fuffj', 'Male', 'fuffj@gmail.com', '8756758970', 'Fuff@1234', 'Fuff@1234'),
(24, 'jack', 'jack', 'Male', 'jack@gmail.com', '8756758970', 'Jack@123', 'Jack@123'),
(25, 'ria', 'ria', 'Male', 'ria@gmail.com', '0123456789', 'Ria@123', 'Ria@123');

-- --------------------------------------------------------

--
-- Table structure for table `prestb`
--

CREATE TABLE `prestb` (
  `doctor` varchar(50) NOT NULL,
  `pid` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `appdate` date NOT NULL,
  `apptime` time NOT NULL,
  `disease` varchar(250) NOT NULL,
  `allergy` varchar(250) NOT NULL,
  `prescription` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `prestb`
--

INSERT INTO `prestb` (`doctor`, `pid`, `ID`, `fname`, `lname`, `appdate`, `apptime`, `disease`, `allergy`, `prescription`) VALUES
('Dinesh', 4, 11, 'Kishan', 'Lal', '2020-03-27', '15:00:00', 'Cough', 'Nothing', 'Just take a teaspoon of Benadryl every night'),
('Ganesh', 2, 8, 'Alia', 'Bhatt', '2020-03-21', '10:00:00', 'Severe Fever', 'Nothing', 'Take bed rest'),
('Kumar', 9, 12, 'William', 'Blake', '2020-03-26', '12:00:00', 'Sever fever', 'nothing', 'Paracetamol -> 1 every morning and night'),
('Tiwary', 9, 13, 'William', 'Blake', '2020-03-26', '14:00:00', 'Cough', 'Skin dryness', 'Intake fruits with more water content'),
('Dinesh', 0, 14, 'HIMANSHI', 'SINGH', '2025-04-15', '16:00:00', 'allergy', '8yrf78ub', 'vrx7civ'),
('Dinesh', 0, 14, 'HIMANSHI', 'SINGH', '2025-04-15', '16:00:00', 'allergy', 'uccyviuvuo', ' ucc8 jl lk'),
('Ganesh', 13, 15, 'HIMANSHI', 'SINGH', '2025-04-30', '16:00:00', 'avi', 'avi', 'ave'),
('Dinesh', 13, 16, 'HIMANSHI', 'SINGH', '2025-05-09', '14:00:00', 'a', 'az', 'as'),
('Dinesh', 0, 17, 'HIMANSHI', 'SINGH', '2025-04-25', '16:00:00', 'allergy', 'allergy', 'alllhictcyi'),
('ashok', 0, 18, 'john', 'john', '2025-04-15', '16:00:00', 'vgucyuvuobipb', 'uoyvibinopnop', 'hhgvyubiphib'),
('arun', 17, 19, 'john', 'john', '2025-04-15', '16:00:00', 'eringrxy', 'rzxvjb', 'rsd68g'),
('ashok', 1, 20, 'Ram', 'Kumar', '2025-04-30', '10:00:00', 'abcdefghij', 'abcdefghij', 'abcdefghij'),
('ashok', 0, 21, 'amrita', 'singh', '2025-04-30', '16:00:00', 'abcd', 'abcd', 'abcd'),
('arun', 0, 22, 'mary', 'mary', '2025-04-30', '16:00:00', 'affxycuvob', 'affxycuvob', 'affxycuvob'),
('Tiwary', 9, 13, 'William', 'Blake', '2020-03-26', '14:00:00', 'ivcrixcbkn[on', 'ivcrixcbkn[on', 'ivcrixcbkn[on'),
('Amit', 0, 23, 'fuff', 'djx', '2025-04-30', '14:00:00', 'ccuobknolpkpn', 'ccuobknolpkpn', 'ccuobknolpkpn'),
('arun', 0, 22, 'mary', 'mary', '2025-04-30', '16:00:00', 'bycutvuov', 'bycutvuov', 'bycutvuov'),
('arun', 0, 24, 'Jia', 'Jia', '2025-04-30', '12:00:00', 'yf6 f8', 'yf6 f8', 'yf6 f8'),
('Kumar', 21, 25, 'Jia', 'Jia', '2025-05-01', '12:00:00', 'nycvv', 'nycvv', 'nycvv'),
('Kumar', 0, 27, 'abc', 'dtud', '2025-04-30', '12:00:00', 'jbyvvu', 'byvyvub', ' buyuvvy'),
('Kumar', 0, 27, 'abc', 'dtud', '2025-04-30', '12:00:00', ' hbbub', 'jby8b8', 'bbyuy'),
('Kumar', 0, 27, 'abc', 'dtud', '2025-04-30', '12:00:00', 'hj 6 gy', 'hj 6 gy', 'hj 6 gy'),
('Kumar', 0, 29, 'fuffj', 'fuffj', '2025-05-01', '10:00:00', 'v332v4', 'v332v4', 'v332v4'),
('Kumar', 0, 29, 'fuffj', 'fuffj', '2025-05-01', '10:00:00', ' r  r', ' r  r', ' r  r'),
('Kumar', 0, 29, 'fuffj', 'fuffj', '2025-05-01', '10:00:00', 'rhrherrrrr', 'rhrherrrrr', 'rhrherrrrr'),
('Ganesh', 0, 31, 'ria', 'ria', '2025-05-02', '12:00:00', 'r vv334', 'r vv334', 'r vv334'),
('Ganesh', 0, 31, 'ria', 'ria', '2025-05-02', '12:00:00', ' gtcyb', ' gtcyb', ' gtcyb');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointmenttb`
--
ALTER TABLE `appointmenttb`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `patreg`
--
ALTER TABLE `patreg`
  ADD PRIMARY KEY (`pid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointmenttb`
--
ALTER TABLE `appointmenttb`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `patreg`
--
ALTER TABLE `patreg`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';
<div class="alert alert-danger" role="alert"><h1>Error</h1><p><strong>SQL query:</strong>  <a href="#" class="copyQueryBtn" data-text="SET SQL_QUOTE_SHOW_CREATE = 1">Copy</a>
<a href="index.php?route=/server/sql&sql_query=SET+SQL_QUOTE_SHOW_CREATE+%3D+1&show_query=1"><span class="text-nowrap"><img src="themes/dot.gif" title="Edit" alt="Edit" class="icon ic_b_edit">&nbsp;Edit</span></a>    </p>
<p>
<code class="sql"><pre>
SET SQL_QUOTE_SHOW_CREATE = 1
</pre></code>
</p>
<p>
    <strong>MySQL said: </strong><a href="./url.php?url=https%3A%2F%2Fdev.mysql.com%2Fdoc%2Frefman%2F8.0%2Fen%2Fserver-error-reference.html" target="mysql_doc"><img src="themes/dot.gif" title="Documentation" alt="Documentation" class="icon ic_b_help"></a>
</p>
<code>#2006 - MySQL server has gone away</code><br></div>