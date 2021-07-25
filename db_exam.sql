-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 04, 2021 at 06:38 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_exam`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `adminId` int(11) NOT NULL,
  `adminUser` varchar(50) NOT NULL,
  `adminPass` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`adminId`, `adminUser`, `adminPass`) VALUES
(1, 'ajit', '05b400fc1e382da10fe329c1271ac613');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ans`
--

CREATE TABLE `tbl_ans` (
  `id` int(11) NOT NULL,
  `quesNo` int(11) NOT NULL,
  `rightAns` int(11) NOT NULL DEFAULT 0,
  `ans` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_ans`
--

INSERT INTO `tbl_ans` (`id`, `quesNo`, `rightAns`, `ans`) VALUES
(25, 1, 1, 'Itanagar'),
(26, 1, 0, 'Dispur'),
(27, 1, 0, 'Imphal'),
(28, 1, 0, 'Panaji'),
(29, 2, 1, ' Jharkhand'),
(30, 2, 0, 'Jammu and Kashmir'),
(31, 2, 0, 'Himachal Pradesh'),
(32, 2, 0, 'Haryana'),
(33, 3, 0, ' Maharashtra'),
(34, 3, 0, 'Madhya Pradesh'),
(35, 3, 0, 'Uttar Pradesh'),
(36, 3, 1, 'Rajasthan'),
(37, 4, 0, 'Manipur'),
(38, 4, 1, 'Meghalaya'),
(39, 4, 0, 'Orissa'),
(40, 4, 0, 'Mizoram'),
(41, 5, 0, 'Kerala'),
(42, 5, 0, 'Tamil Nadu'),
(43, 5, 1, 'Karnataka'),
(44, 5, 0, 'Bihar');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ques`
--

CREATE TABLE `tbl_ques` (
  `id` int(11) NOT NULL,
  `quesNo` int(11) NOT NULL,
  `ques` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_ques`
--

INSERT INTO `tbl_ques` (`id`, `quesNo`, `ques`) VALUES
(7, 1, ' Which of the following is the capital of Arunachal Pradesh?'),
(8, 2, 'Which of the following states is not located in the North?'),
(9, 3, 'Which state has the largest area?'),
(10, 4, ' In what state is the Elephant Falls located?'),
(11, 5, 'Which is the largest coffee producing state of India?');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `userid` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(32) NOT NULL,
  `email` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`userid`, `name`, `username`, `password`, `email`, `status`) VALUES
(9, 'Ajit', 'ajit15', '202cb962ac59075b964b07152d234b70', 'ajitverma1503@gmail.com', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`adminId`);

--
-- Indexes for table `tbl_ans`
--
ALTER TABLE `tbl_ans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_ques`
--
ALTER TABLE `tbl_ques`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `adminId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_ans`
--
ALTER TABLE `tbl_ans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `tbl_ques`
--
ALTER TABLE `tbl_ques`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
