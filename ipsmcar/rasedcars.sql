-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 12, 2020 at 10:15 AM
-- Server version: 10.4.10-MariaDB
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
-- Database: `rasedcars`
--

-- --------------------------------------------------------

--
-- Table structure for table `information`
--

CREATE TABLE `information` (
  `ID` int(11) NOT NULL,
  `YEAR` int(11) NOT NULL,
  `MONTH` int(2) NOT NULL,
  `WEEK` int(2) NOT NULL,
  `DAY` int(2) NOT NULL,
  `HOUR` int(2) NOT NULL,
  `count` bigint(20) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `information`
--

INSERT INTO `information` (`ID`, `YEAR`, `MONTH`, `WEEK`, `DAY`, `HOUR`, `count`, `created_at`) VALUES
(1, 2020, 6, 2, 11, 2, 30, '2020-06-11 11:56:23'),
(2, 2020, 6, 2, 11, 3, 20, '2020-06-11 11:56:09'),
(3, 2020, 6, 2, 10, 3, 500, '2020-06-11 11:58:33'),
(4, 2020, 6, 2, 10, 4, 300, '2020-06-11 12:00:20'),
(5, 2020, 6, 2, 13, 5, 600, '2020-06-11 12:00:20'),
(6, 2020, 6, 2, 9, 3, 700, '2020-06-11 12:01:15'),
(7, 2020, 6, 2, 12, 3, 400, '2020-06-11 12:01:15'),
(8, 2020, 6, 2, 11, 15, 681, '2020-06-11 13:40:48'),
(9, 2020, 6, 2, 11, 15, 766, '2020-06-11 13:40:53'),
(10, 2020, 6, 2, 11, 15, 1335, '2020-06-11 13:41:00'),
(11, 2020, 6, 2, 11, 15, 55, '2020-06-11 13:41:11'),
(12, 2020, 6, 2, 11, 15, 55, '2020-06-11 13:41:11'),
(13, 2020, 6, 2, 11, 15, 0, '2020-06-11 13:45:23'),
(14, 2020, 6, 2, 11, 15, 1, '2020-06-11 13:45:30'),
(15, 2020, 6, 2, 11, 15, 3, '2020-06-11 13:45:39'),
(16, 2020, 6, 2, 11, 15, 3, '2020-06-11 13:45:45'),
(17, 2020, 6, 2, 11, 15, 1, '2020-06-11 13:45:49'),
(18, 2020, 6, 2, 11, 15, 53, '2020-06-11 13:45:54'),
(19, 2020, 6, 2, 11, 15, 10, '2020-06-11 13:45:59'),
(20, 2020, 6, 2, 11, 15, 1, '2020-06-11 13:46:05'),
(21, 2020, 6, 2, 11, 15, 5, '2020-06-11 13:46:08'),
(22, 2020, 6, 2, 11, 15, 9, '2020-06-11 13:46:14'),
(23, 2020, 6, 2, 11, 15, 1, '2020-06-11 13:46:19'),
(24, 2020, 6, 2, 11, 15, 3, '2020-06-11 13:46:24'),
(25, 2020, 6, 2, 11, 15, 59, '2020-06-11 13:47:36'),
(26, 2020, 6, 2, 11, 15, 9, '2020-06-11 13:47:43'),
(27, 2020, 6, 2, 11, 15, 8, '2020-06-11 13:47:53'),
(28, 2020, 6, 2, 11, 15, 2, '2020-06-11 13:47:56'),
(29, 2020, 6, 2, 11, 15, 20, '2020-06-11 13:48:08'),
(30, 2020, 6, 2, 11, 15, 18, '2020-06-11 13:48:08'),
(31, 2020, 6, 2, 11, 15, 18, '2020-06-11 13:48:10'),
(32, 2020, 6, 2, 11, 15, 279, '2020-06-11 13:48:18'),
(33, 2020, 6, 2, 11, 15, 5, '2020-06-11 13:48:21'),
(34, 2020, 6, 2, 11, 15, 2, '2020-06-11 13:48:26'),
(35, 2020, 6, 2, 11, 15, 2, '2020-06-11 13:48:37'),
(36, 2020, 6, 2, 11, 15, 0, '2020-06-11 13:54:37'),
(37, 2020, 6, 2, 11, 15, 1, '2020-06-11 13:54:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `information`
--
ALTER TABLE `information`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `information`
--
ALTER TABLE `information`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
