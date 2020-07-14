-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 17, 2019 at 02:06 PM
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
-- Database: `ipsm`
--

-- --------------------------------------------------------

--
-- Table structure for table `information`
--

CREATE TABLE `information` (
  `ID` int(11) NOT NULL,
  `MONTH` int(2) NOT NULL,
  `DAY` int(2) NOT NULL,
  `HOUR` int(2) NOT NULL,
  `ANGRY` int(11) NOT NULL,
  `DISGUST` int(11) NOT NULL,
  `HAPPY` int(11) NOT NULL,
  `NEUTRAL` int(11) NOT NULL,
  `SAD` int(11) NOT NULL,
  `SURPRISE` int(11) NOT NULL,
  `FEAR` int(11) NOT NULL,
  `PEOPLE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `information`
--

INSERT INTO `information` (`ID`, `MONTH`, `DAY`, `HOUR`, `ANGRY`, `DISGUST`, `HAPPY`, `NEUTRAL`, `SAD`, `SURPRISE`, `FEAR`, `PEOPLE`) VALUES
(6, 7, 19, 22, 6, 12, 8, 8, 3, 1, 10, 68),
(7, 4, 16, 22, 4, 3, 2, 14, 11, 0, 7, 67),
(8, 6, 28, 7, 13, 14, 1, 2, 11, 7, 2, 56),
(9, 2, 10, 4, 3, 6, 13, 15, 5, 15, 5, 58),
(10, 9, 19, 21, 16, 8, 8, 0, 11, 7, 3, 66),
(11, 9, 17, 4, 13, 0, 14, 9, 9, 14, 14, 46),
(12, 1, 6, 4, 2, 10, 3, 14, 4, 14, 9, 41),
(13, 9, 20, 16, 14, 12, 9, 13, 11, 14, 6, 44),
(14, 9, 16, 21, 1, 4, 14, 7, 13, 10, 10, 63),
(15, 3, 9, 4, 14, 13, 7, 4, 11, 9, 8, 73),
(16, 11, 19, 9, 3, 9, 9, 10, 6, 3, 5, 55),
(17, 3, 30, 17, 1, 15, 15, 1, 5, 3, 14, 45),
(18, 12, 13, 8, 16, 15, 8, 11, 12, 0, 10, 75),
(19, 3, 3, 10, 16, 9, 2, 6, 15, 0, 12, 44),
(20, 1, 30, 16, 11, 11, 4, 15, 15, 4, 6, 78),
(21, 4, 9, 8, 4, 12, 15, 0, 12, 1, 9, 49),
(22, 8, 16, 4, 12, 7, 8, 2, 15, 9, 11, 40),
(23, 5, 2, 3, 14, 3, 8, 6, 10, 7, 13, 71),
(24, 12, 4, 0, 16, 11, 12, 13, 2, 0, 6, 47),
(25, 9, 24, 7, 5, 16, 12, 4, 7, 14, 15, 46),
(26, 4, 28, 12, 7, 7, 1, 6, 2, 9, 13, 49),
(27, 11, 27, 10, 16, 8, 1, 8, 14, 10, 7, 79),
(28, 5, 2, 17, 6, 7, 14, 12, 16, 0, 8, 55),
(29, 9, 21, 1, 10, 5, 14, 4, 3, 13, 10, 54),
(30, 4, 25, 11, 12, 14, 6, 15, 5, 14, 2, 43),
(31, 5, 11, 2, 3, 11, 8, 2, 12, 4, 6, 62),
(32, 8, 17, 0, 7, 3, 13, 15, 11, 12, 9, 62),
(33, 5, 22, 12, 8, 4, 8, 2, 6, 14, 6, 44),
(34, 4, 30, 9, 13, 12, 14, 16, 8, 0, 15, 52),
(35, 3, 13, 7, 5, 10, 10, 5, 0, 0, 12, 71),
(36, 2, 13, 21, 14, 11, 11, 11, 2, 7, 12, 67),
(37, 1, 1, 0, 0, 11, 12, 15, 9, 8, 10, 44),
(38, 8, 24, 3, 7, 7, 15, 12, 10, 12, 4, 72),
(39, 1, 18, 18, 3, 2, 12, 10, 16, 11, 13, 58),
(40, 12, 8, 16, 4, 4, 7, 11, 15, 2, 13, 60),
(41, 1, 14, 9, 13, 14, 2, 12, 4, 6, 2, 70),
(42, 9, 16, 17, 6, 14, 10, 13, 14, 2, 10, 78),
(43, 6, 9, 15, 11, 4, 14, 5, 5, 0, 13, 62),
(44, 1, 7, 10, 3, 1, 16, 2, 9, 9, 11, 74),
(45, 3, 25, 0, 11, 5, 16, 2, 1, 0, 3, 44),
(46, 6, 24, 10, 4, 7, 14, 1, 15, 10, 6, 58),
(47, 12, 21, 0, 3, 4, 4, 8, 7, 8, 4, 60),
(48, 8, 2, 16, 10, 11, 13, 3, 6, 8, 13, 52),
(49, 11, 23, 8, 1, 8, 11, 9, 0, 6, 0, 52),
(50, 1, 25, 17, 4, 7, 9, 14, 9, 13, 4, 49),
(51, 11, 27, 21, 7, 16, 2, 4, 8, 7, 10, 48),
(52, 12, 9, 2, 12, 13, 4, 9, 4, 1, 0, 57),
(53, 6, 16, 1, 16, 6, 6, 9, 16, 9, 3, 42),
(54, 4, 9, 14, 12, 14, 11, 15, 15, 7, 0, 77),
(55, 7, 25, 18, 2, 6, 9, 14, 7, 1, 11, 79),
(56, 12, 4, 5, 13, 13, 16, 10, 10, 11, 5, 73),
(57, 12, 28, 8, 8, 6, 14, 12, 9, 13, 10, 80),
(58, 6, 11, 3, 0, 10, 5, 6, 6, 8, 5, 71),
(59, 10, 25, 11, 8, 13, 8, 2, 15, 5, 10, 46),
(60, 3, 21, 8, 16, 1, 14, 11, 12, 14, 7, 80),
(61, 10, 20, 8, 11, 3, 2, 2, 7, 14, 13, 58),
(62, 3, 23, 15, 8, 3, 6, 12, 11, 5, 14, 71),
(63, 10, 25, 6, 8, 5, 1, 9, 0, 10, 16, 59),
(64, 12, 21, 19, 7, 0, 1, 5, 11, 3, 13, 78),
(65, 4, 2, 16, 8, 15, 14, 13, 11, 1, 5, 58),
(66, 3, 30, 21, 0, 3, 4, 15, 4, 10, 0, 55),
(67, 5, 24, 5, 13, 13, 14, 15, 5, 9, 1, 53),
(68, 11, 18, 5, 5, 13, 11, 14, 3, 2, 6, 42),
(69, 2, 23, 3, 0, 7, 14, 14, 9, 7, 0, 61),
(70, 9, 11, 16, 5, 11, 8, 4, 13, 1, 5, 64),
(71, 4, 25, 9, 1, 1, 16, 12, 0, 1, 8, 40),
(72, 6, 23, 12, 14, 1, 11, 11, 9, 1, 6, 71),
(73, 6, 21, 12, 8, 8, 0, 5, 8, 9, 2, 77),
(74, 8, 14, 2, 2, 13, 13, 11, 0, 14, 2, 42),
(75, 9, 21, 5, 12, 14, 6, 4, 2, 3, 3, 51),
(76, 1, 25, 14, 11, 6, 8, 2, 12, 8, 3, 74),
(77, 12, 29, 22, 13, 15, 12, 14, 8, 10, 8, 64),
(78, 9, 19, 23, 15, 1, 7, 2, 0, 11, 5, 64),
(79, 7, 6, 7, 8, 0, 4, 2, 16, 0, 10, 53),
(80, 4, 6, 13, 16, 3, 4, 6, 11, 16, 7, 60),
(81, 12, 7, 5, 3, 3, 9, 10, 15, 11, 1, 46),
(82, 9, 14, 6, 13, 10, 1, 7, 7, 13, 0, 77),
(83, 8, 5, 4, 7, 10, 12, 5, 4, 7, 10, 61),
(84, 4, 18, 12, 3, 3, 7, 9, 6, 3, 16, 57),
(85, 2, 1, 21, 10, 5, 6, 6, 13, 0, 6, 77),
(86, 2, 25, 1, 12, 7, 8, 2, 9, 15, 5, 55),
(87, 5, 10, 9, 2, 1, 9, 4, 1, 14, 4, 58),
(88, 11, 9, 21, 5, 4, 16, 8, 2, 2, 2, 76),
(89, 7, 14, 16, 4, 8, 12, 7, 7, 15, 16, 71),
(90, 11, 22, 17, 14, 4, 3, 11, 0, 12, 1, 80),
(91, 10, 10, 4, 10, 9, 5, 14, 12, 8, 3, 78),
(92, 7, 25, 16, 13, 3, 16, 16, 14, 11, 10, 78),
(93, 2, 17, 6, 13, 6, 5, 16, 8, 11, 0, 48),
(94, 10, 10, 14, 12, 8, 7, 0, 8, 16, 4, 53),
(95, 2, 9, 16, 12, 15, 1, 15, 13, 2, 1, 43),
(96, 9, 8, 8, 10, 1, 3, 8, 13, 10, 16, 49),
(97, 10, 5, 21, 12, 10, 11, 6, 11, 2, 16, 63),
(98, 8, 18, 23, 3, 9, 4, 3, 4, 2, 11, 48),
(99, 1, 20, 1, 10, 14, 14, 9, 10, 12, 16, 78),
(100, 11, 16, 21, 0, 6, 2, 7, 16, 15, 3, 75),
(101, 4, 1, 4, 2, 5, 6, 0, 13, 1, 1, 66),
(102, 2, 22, 0, 1, 12, 10, 15, 5, 5, 0, 69),
(103, 1, 23, 5, 15, 7, 11, 11, 6, 11, 5, 60),
(104, 1, 6, 1, 14, 7, 0, 4, 16, 11, 0, 69),
(105, 5, 15, 23, 4, 9, 2, 12, 11, 15, 8, 75),
(106, 9, 11, 12, 11, 13, 4, 5, 15, 0, 2, 58),
(107, 7, 9, 6, 6, 15, 1, 2, 8, 14, 8, 71),
(108, 9, 12, 22, 16, 6, 7, 4, 7, 1, 15, 60),
(109, 2, 15, 3, 13, 2, 3, 4, 2, 2, 15, 57),
(110, 1, 25, 6, 16, 9, 13, 15, 4, 16, 10, 80),
(111, 1, 19, 14, 14, 1, 8, 7, 0, 13, 2, 75),
(112, 7, 9, 16, 8, 1, 6, 12, 15, 3, 14, 60),
(113, 6, 13, 16, 15, 7, 6, 15, 3, 9, 0, 55),
(114, 9, 20, 14, 9, 8, 11, 10, 14, 5, 10, 70),
(115, 2, 3, 7, 2, 15, 12, 8, 12, 2, 4, 57),
(116, 10, 12, 0, 16, 11, 14, 8, 16, 5, 1, 50),
(117, 8, 9, 4, 5, 3, 15, 7, 4, 1, 8, 47),
(118, 1, 14, 3, 7, 11, 11, 5, 3, 0, 10, 56),
(119, 5, 7, 13, 15, 9, 7, 13, 16, 0, 4, 66),
(120, 12, 21, 11, 3, 15, 16, 5, 3, 13, 4, 69),
(121, 7, 22, 13, 1, 4, 14, 10, 12, 16, 1, 67),
(122, 2, 23, 7, 0, 1, 15, 2, 11, 14, 13, 46),
(123, 4, 12, 18, 9, 4, 4, 6, 13, 9, 10, 47),
(124, 6, 6, 8, 11, 0, 1, 5, 15, 14, 8, 78),
(125, 10, 10, 2, 13, 7, 6, 13, 0, 5, 15, 55),
(126, 9, 30, 5, 8, 5, 0, 13, 13, 0, 15, 65),
(127, 8, 3, 18, 8, 1, 5, 9, 10, 15, 13, 60),
(128, 9, 9, 6, 16, 15, 12, 1, 0, 0, 4, 50),
(129, 1, 26, 2, 5, 15, 14, 2, 11, 10, 14, 70),
(130, 6, 2, 18, 5, 9, 13, 11, 11, 9, 16, 52),
(131, 2, 3, 19, 15, 0, 2, 12, 9, 7, 7, 62),
(132, 12, 21, 8, 14, 3, 13, 5, 15, 4, 13, 51),
(133, 7, 7, 9, 6, 1, 15, 13, 4, 10, 11, 57),
(134, 2, 4, 14, 10, 3, 10, 5, 3, 14, 11, 40),
(135, 7, 6, 20, 0, 14, 2, 13, 15, 11, 15, 52),
(136, 4, 2, 18, 0, 5, 11, 2, 10, 11, 11, 44),
(137, 9, 13, 10, 12, 14, 5, 9, 6, 6, 8, 74),
(138, 5, 8, 15, 4, 12, 9, 15, 13, 16, 16, 58),
(139, 6, 19, 13, 11, 14, 3, 7, 14, 3, 1, 62),
(140, 5, 27, 12, 8, 7, 12, 13, 5, 13, 2, 58),
(141, 3, 4, 12, 11, 7, 2, 11, 1, 4, 13, 72),
(142, 5, 9, 7, 1, 1, 11, 12, 8, 15, 11, 76),
(143, 1, 6, 23, 13, 8, 11, 4, 10, 15, 13, 67),
(144, 11, 4, 21, 5, 2, 10, 5, 7, 12, 15, 75),
(145, 6, 14, 2, 12, 13, 2, 0, 13, 14, 5, 50),
(146, 7, 2, 0, 8, 0, 10, 14, 15, 6, 9, 74),
(147, 11, 10, 10, 10, 4, 15, 11, 1, 9, 13, 75),
(148, 2, 23, 15, 7, 0, 0, 0, 13, 11, 5, 54),
(149, 1, 2, 20, 9, 12, 2, 14, 14, 8, 7, 68),
(150, 10, 8, 7, 15, 9, 6, 13, 8, 7, 10, 60),
(151, 6, 12, 7, 16, 5, 14, 4, 12, 15, 11, 65),
(152, 7, 7, 12, 1, 11, 7, 6, 10, 10, 4, 67),
(153, 9, 13, 21, 0, 13, 14, 1, 16, 2, 8, 50),
(154, 7, 29, 6, 8, 11, 9, 16, 15, 10, 16, 61),
(155, 6, 21, 18, 0, 4, 16, 6, 13, 6, 6, 75),
(156, 3, 22, 8, 15, 0, 13, 11, 10, 1, 16, 54),
(157, 6, 28, 9, 9, 5, 5, 6, 3, 9, 1, 74),
(158, 3, 5, 23, 10, 13, 5, 4, 13, 6, 6, 74),
(159, 12, 2, 11, 1, 4, 8, 8, 1, 14, 6, 75),
(160, 8, 28, 15, 11, 1, 7, 4, 3, 13, 12, 74),
(161, 1, 29, 5, 15, 9, 1, 12, 3, 14, 16, 47),
(162, 10, 12, 3, 2, 15, 5, 10, 12, 16, 4, 72),
(163, 10, 15, 21, 2, 15, 11, 3, 0, 10, 10, 51),
(164, 8, 11, 0, 13, 16, 5, 12, 11, 14, 6, 61),
(165, 8, 19, 16, 6, 6, 15, 5, 0, 16, 13, 64),
(166, 3, 4, 14, 9, 16, 14, 1, 3, 2, 9, 71),
(167, 11, 9, 15, 0, 12, 5, 4, 0, 11, 11, 41),
(168, 6, 25, 22, 0, 7, 12, 8, 5, 9, 1, 58),
(169, 4, 16, 4, 5, 6, 16, 1, 16, 1, 3, 54),
(170, 11, 30, 4, 0, 16, 5, 14, 2, 14, 11, 49),
(171, 9, 26, 2, 7, 14, 1, 3, 1, 13, 1, 51),
(172, 9, 9, 15, 15, 7, 6, 8, 4, 13, 14, 80),
(173, 11, 15, 0, 12, 16, 6, 13, 9, 1, 6, 55),
(174, 3, 15, 14, 1, 11, 12, 2, 1, 8, 1, 77),
(175, 11, 27, 12, 10, 16, 8, 14, 12, 5, 6, 64),
(176, 2, 23, 12, 2, 0, 16, 8, 5, 7, 4, 44),
(177, 6, 29, 15, 1, 8, 6, 4, 7, 7, 6, 72),
(178, 4, 28, 18, 4, 16, 3, 14, 2, 6, 1, 71),
(179, 3, 27, 13, 5, 11, 11, 15, 15, 14, 8, 46),
(180, 10, 3, 5, 0, 1, 4, 14, 8, 16, 10, 62),
(181, 10, 24, 21, 2, 9, 4, 1, 6, 1, 15, 69),
(182, 7, 3, 14, 4, 1, 0, 3, 1, 0, 9, 54),
(183, 8, 24, 20, 6, 8, 8, 1, 8, 12, 7, 45),
(184, 3, 30, 17, 13, 10, 6, 5, 15, 1, 6, 46),
(185, 3, 3, 11, 5, 14, 7, 0, 16, 2, 13, 71),
(186, 2, 12, 17, 2, 2, 8, 9, 5, 12, 5, 54),
(187, 12, 27, 21, 0, 14, 4, 6, 11, 14, 11, 67),
(188, 7, 4, 2, 3, 0, 0, 8, 14, 8, 7, 59),
(189, 9, 14, 7, 9, 14, 11, 7, 1, 0, 3, 78),
(190, 1, 5, 21, 16, 10, 9, 11, 5, 8, 12, 61),
(191, 11, 19, 16, 6, 0, 4, 3, 6, 7, 6, 50),
(192, 9, 27, 6, 3, 7, 8, 16, 9, 2, 7, 62),
(193, 3, 25, 11, 4, 12, 16, 15, 6, 15, 15, 48),
(194, 6, 7, 23, 1, 10, 15, 10, 11, 13, 8, 43),
(195, 7, 17, 3, 1, 4, 13, 11, 10, 14, 8, 62),
(196, 10, 9, 1, 15, 16, 5, 10, 3, 12, 15, 49),
(197, 9, 5, 19, 16, 11, 4, 7, 0, 9, 15, 61),
(198, 4, 10, 0, 9, 11, 1, 10, 6, 4, 5, 74),
(199, 8, 21, 13, 0, 6, 4, 10, 14, 12, 13, 40),
(200, 8, 23, 16, 7, 0, 10, 4, 13, 8, 11, 58),
(201, 9, 26, 20, 4, 8, 6, 4, 14, 16, 10, 79),
(202, 12, 7, 13, 2, 8, 8, 6, 13, 15, 11, 49),
(203, 9, 10, 22, 3, 1, 14, 12, 5, 12, 0, 71),
(204, 12, 3, 21, 7, 15, 11, 1, 16, 2, 0, 80),
(205, 10, 14, 16, 7, 16, 1, 12, 5, 5, 14, 62),
(206, 10, 3, 16, 3, 11, 11, 13, 12, 14, 16, 80),
(207, 12, 17, 4, 5, 3, 15, 6, 3, 10, 6, 46),
(208, 9, 19, 2, 7, 8, 6, 0, 8, 12, 7, 72),
(209, 6, 1, 14, 9, 15, 11, 1, 4, 4, 11, 46),
(210, 12, 4, 2, 10, 4, 13, 14, 16, 3, 13, 41),
(211, 7, 3, 1, 4, 6, 15, 10, 8, 10, 13, 44),
(212, 5, 2, 2, 11, 9, 8, 0, 16, 14, 14, 49),
(213, 10, 4, 10, 16, 11, 10, 11, 3, 16, 13, 59),
(214, 2, 15, 19, 15, 9, 12, 15, 10, 3, 3, 74),
(215, 3, 9, 21, 15, 9, 10, 2, 12, 16, 5, 64),
(216, 9, 26, 11, 3, 3, 13, 16, 3, 9, 5, 77),
(217, 7, 1, 14, 14, 10, 14, 7, 7, 16, 7, 65),
(218, 2, 2, 9, 4, 0, 5, 13, 11, 8, 0, 70),
(219, 1, 4, 10, 8, 4, 14, 0, 14, 11, 8, 77),
(220, 10, 16, 19, 15, 14, 1, 2, 5, 11, 10, 62),
(221, 12, 4, 15, 11, 10, 16, 0, 0, 3, 8, 42),
(222, 10, 11, 4, 3, 8, 0, 6, 11, 7, 9, 64),
(223, 12, 20, 2, 6, 6, 9, 10, 7, 13, 2, 54),
(224, 12, 6, 10, 13, 5, 3, 0, 12, 4, 12, 55),
(225, 10, 19, 20, 3, 9, 12, 16, 3, 15, 15, 68),
(226, 3, 25, 16, 12, 16, 0, 8, 10, 10, 15, 42),
(227, 6, 24, 15, 11, 12, 1, 3, 0, 5, 0, 51),
(228, 3, 7, 13, 6, 9, 7, 0, 15, 15, 15, 65),
(229, 3, 10, 18, 11, 1, 4, 14, 14, 6, 10, 80),
(230, 12, 14, 16, 13, 4, 13, 7, 14, 9, 5, 72),
(231, 12, 12, 23, 2, 15, 1, 6, 3, 0, 6, 55),
(232, 1, 30, 7, 1, 10, 12, 15, 14, 12, 0, 56),
(233, 7, 9, 4, 3, 9, 8, 14, 11, 11, 15, 40),
(234, 10, 23, 7, 5, 11, 3, 12, 11, 5, 0, 49),
(235, 12, 3, 15, 3, 11, 16, 3, 12, 14, 6, 41),
(236, 6, 28, 23, 6, 3, 16, 1, 7, 6, 3, 56),
(237, 10, 11, 18, 2, 8, 10, 15, 12, 0, 5, 65),
(238, 10, 25, 21, 7, 4, 10, 13, 13, 1, 9, 42),
(239, 5, 29, 19, 4, 2, 2, 13, 12, 2, 9, 78),
(240, 10, 9, 7, 9, 6, 12, 1, 8, 15, 13, 50),
(241, 3, 19, 16, 5, 1, 5, 9, 6, 3, 12, 47),
(242, 3, 17, 15, 11, 8, 5, 14, 2, 2, 5, 42),
(243, 10, 25, 22, 11, 10, 16, 16, 14, 12, 0, 76),
(244, 8, 4, 3, 2, 7, 16, 3, 9, 10, 9, 59),
(245, 6, 12, 15, 10, 12, 3, 10, 3, 14, 10, 63),
(246, 6, 30, 12, 10, 12, 12, 5, 7, 5, 10, 40),
(247, 9, 13, 12, 1, 15, 1, 1, 12, 0, 6, 61),
(248, 12, 12, 23, 14, 5, 11, 16, 0, 16, 9, 49),
(249, 5, 26, 23, 14, 5, 3, 6, 1, 1, 13, 72),
(250, 8, 21, 1, 6, 5, 1, 0, 14, 3, 10, 54),
(251, 3, 23, 21, 1, 9, 2, 5, 8, 12, 1, 41),
(252, 3, 22, 11, 1, 13, 13, 13, 4, 7, 11, 66),
(253, 8, 10, 7, 10, 3, 16, 5, 7, 16, 12, 76),
(254, 3, 19, 11, 4, 8, 13, 1, 1, 4, 10, 54),
(255, 8, 8, 4, 15, 10, 16, 6, 16, 6, 12, 75),
(256, 4, 15, 10, 8, 11, 10, 12, 0, 12, 4, 74),
(257, 8, 11, 12, 5, 6, 16, 9, 13, 1, 10, 79),
(258, 12, 1, 13, 16, 6, 12, 8, 6, 8, 8, 74),
(259, 3, 27, 22, 10, 4, 10, 14, 13, 13, 15, 69),
(260, 6, 3, 13, 6, 7, 14, 9, 3, 14, 3, 44),
(261, 9, 22, 13, 15, 8, 7, 2, 16, 3, 9, 49),
(262, 12, 11, 19, 6, 13, 0, 14, 14, 3, 14, 52),
(263, 5, 26, 8, 3, 6, 2, 1, 10, 0, 16, 67),
(264, 4, 17, 15, 1, 11, 8, 0, 11, 3, 4, 80),
(265, 5, 9, 17, 12, 3, 0, 2, 3, 9, 14, 56),
(266, 3, 10, 4, 9, 6, 3, 5, 2, 8, 13, 75),
(267, 7, 9, 6, 6, 3, 5, 14, 5, 2, 6, 51),
(268, 3, 29, 19, 10, 6, 8, 13, 7, 15, 13, 47),
(269, 12, 19, 0, 1, 13, 4, 14, 0, 5, 12, 63),
(270, 4, 26, 16, 8, 9, 11, 9, 4, 7, 7, 41),
(271, 11, 13, 7, 16, 2, 3, 13, 14, 5, 10, 52),
(272, 11, 14, 13, 9, 6, 2, 4, 1, 5, 14, 56),
(273, 8, 16, 15, 2, 11, 0, 13, 5, 0, 1, 40),
(274, 5, 1, 2, 13, 15, 6, 11, 9, 3, 13, 75),
(275, 10, 12, 9, 13, 16, 2, 7, 9, 8, 7, 42),
(276, 11, 28, 7, 1, 1, 10, 8, 10, 16, 1, 80),
(277, 3, 22, 16, 0, 9, 14, 8, 16, 7, 4, 62),
(278, 7, 15, 18, 9, 12, 2, 9, 6, 1, 12, 57),
(279, 6, 15, 0, 12, 6, 10, 11, 10, 6, 12, 54),
(280, 6, 10, 0, 15, 0, 1, 3, 11, 4, 10, 52),
(281, 5, 26, 13, 1, 9, 0, 4, 10, 14, 16, 49),
(282, 8, 20, 14, 8, 5, 13, 9, 8, 12, 6, 56),
(283, 5, 14, 17, 15, 15, 9, 14, 15, 15, 4, 50),
(284, 3, 28, 21, 3, 2, 10, 5, 14, 13, 4, 43),
(285, 2, 23, 19, 4, 1, 4, 2, 3, 6, 16, 67),
(286, 1, 8, 13, 8, 9, 14, 1, 11, 12, 1, 42),
(287, 12, 9, 3, 5, 8, 12, 15, 10, 7, 11, 41),
(288, 6, 30, 16, 8, 12, 9, 11, 9, 13, 5, 42),
(289, 12, 21, 10, 7, 9, 13, 1, 8, 15, 14, 74),
(290, 8, 14, 16, 5, 15, 13, 13, 4, 14, 0, 74),
(291, 4, 17, 9, 3, 0, 7, 1, 1, 10, 13, 62),
(292, 9, 10, 18, 8, 9, 5, 8, 1, 4, 0, 42),
(293, 4, 21, 15, 15, 8, 10, 8, 0, 3, 16, 47),
(294, 1, 6, 16, 9, 5, 7, 10, 1, 8, 12, 44),
(295, 8, 27, 3, 15, 5, 13, 16, 16, 1, 16, 65),
(296, 5, 18, 17, 3, 16, 5, 5, 11, 1, 3, 42),
(297, 2, 23, 1, 14, 13, 7, 11, 9, 10, 5, 55),
(298, 1, 4, 4, 9, 6, 11, 2, 6, 9, 13, 63),
(299, 4, 5, 11, 12, 4, 16, 8, 12, 10, 8, 43),
(300, 3, 18, 6, 10, 9, 5, 14, 5, 10, 9, 65),
(301, 4, 9, 21, 4, 10, 10, 0, 6, 3, 9, 67),
(302, 11, 28, 14, 1, 2, 9, 12, 3, 3, 13, 79),
(303, 10, 14, 16, 11, 12, 3, 12, 13, 4, 5, 57),
(304, 1, 29, 14, 9, 15, 7, 16, 15, 4, 16, 63),
(305, 11, 30, 5, 2, 1, 16, 9, 10, 10, 16, 54),
(306, 7, 23, 15, 2, 8, 12, 0, 9, 1, 3, 52),
(307, 3, 5, 3, 8, 1, 9, 2, 11, 9, 12, 60),
(308, 8, 18, 8, 15, 8, 6, 15, 11, 4, 12, 47),
(309, 4, 17, 22, 12, 6, 14, 1, 3, 7, 1, 57),
(310, 12, 10, 7, 3, 5, 11, 3, 14, 10, 12, 63),
(311, 7, 28, 12, 16, 14, 0, 4, 7, 13, 2, 60),
(312, 8, 10, 6, 2, 3, 9, 2, 11, 14, 8, 41),
(313, 7, 14, 3, 15, 2, 12, 12, 6, 0, 3, 61),
(314, 3, 4, 19, 15, 6, 1, 16, 5, 5, 1, 60),
(315, 5, 1, 19, 6, 3, 14, 15, 8, 14, 15, 79),
(316, 3, 7, 15, 3, 8, 14, 5, 16, 11, 4, 47),
(317, 12, 19, 15, 3, 16, 16, 9, 14, 8, 16, 76),
(318, 11, 26, 19, 3, 0, 3, 7, 4, 0, 13, 70),
(319, 1, 8, 19, 15, 5, 6, 13, 9, 2, 13, 55),
(320, 3, 2, 15, 0, 0, 8, 0, 7, 14, 8, 52),
(321, 10, 22, 21, 11, 3, 5, 12, 1, 3, 15, 63),
(322, 4, 7, 4, 4, 9, 9, 9, 6, 6, 8, 60),
(323, 5, 24, 15, 10, 13, 12, 4, 6, 13, 11, 63),
(324, 2, 7, 15, 16, 2, 12, 4, 4, 2, 0, 76),
(325, 9, 1, 19, 15, 5, 7, 5, 7, 12, 15, 41),
(326, 11, 19, 2, 11, 0, 6, 12, 6, 4, 10, 68),
(327, 8, 22, 11, 12, 4, 10, 9, 7, 2, 16, 45),
(328, 5, 22, 18, 0, 2, 16, 11, 15, 6, 2, 61),
(329, 3, 28, 9, 9, 11, 12, 11, 7, 13, 5, 55),
(330, 6, 11, 12, 8, 1, 0, 12, 8, 15, 8, 63),
(331, 12, 5, 23, 0, 1, 6, 9, 5, 6, 9, 54),
(332, 8, 23, 14, 11, 11, 14, 10, 0, 4, 13, 60),
(333, 9, 7, 12, 15, 13, 9, 11, 5, 4, 2, 79),
(334, 8, 10, 9, 11, 12, 4, 1, 9, 13, 4, 64),
(335, 12, 28, 13, 15, 9, 5, 2, 12, 16, 7, 80),
(336, 10, 22, 11, 9, 7, 16, 5, 13, 3, 4, 45),
(337, 3, 14, 6, 13, 11, 14, 13, 16, 7, 5, 76),
(338, 11, 19, 17, 13, 0, 13, 8, 8, 8, 10, 61),
(339, 4, 26, 13, 15, 16, 5, 10, 12, 0, 16, 67),
(340, 11, 21, 18, 13, 8, 6, 7, 15, 7, 6, 55),
(341, 9, 26, 14, 3, 15, 7, 7, 10, 2, 6, 55),
(342, 5, 28, 4, 0, 13, 8, 8, 0, 15, 2, 60),
(343, 5, 11, 3, 8, 14, 13, 10, 15, 0, 5, 49),
(344, 8, 25, 19, 9, 11, 5, 10, 8, 5, 10, 46),
(345, 3, 15, 17, 14, 0, 8, 2, 11, 14, 2, 59),
(346, 4, 23, 10, 3, 7, 12, 10, 2, 16, 0, 77),
(347, 3, 1, 18, 0, 1, 13, 12, 2, 4, 7, 51),
(348, 11, 23, 10, 5, 2, 5, 14, 6, 8, 2, 55),
(349, 12, 23, 8, 10, 6, 16, 0, 1, 13, 3, 40),
(350, 5, 15, 17, 1, 14, 3, 4, 4, 7, 14, 61),
(351, 11, 12, 16, 14, 4, 11, 10, 12, 7, 12, 60),
(352, 1, 15, 3, 9, 13, 13, 1, 7, 13, 13, 79),
(353, 10, 6, 1, 9, 15, 10, 4, 11, 0, 8, 65),
(354, 5, 8, 19, 10, 4, 7, 10, 9, 4, 11, 58),
(355, 10, 9, 14, 15, 16, 2, 15, 13, 1, 12, 60),
(356, 1, 30, 17, 16, 6, 2, 12, 3, 2, 13, 49),
(357, 11, 25, 9, 2, 16, 7, 2, 13, 3, 2, 75),
(358, 5, 17, 12, 5, 4, 8, 16, 1, 7, 10, 46),
(359, 5, 29, 8, 16, 14, 2, 0, 1, 15, 9, 61),
(360, 10, 30, 3, 15, 3, 5, 1, 4, 7, 0, 59),
(361, 9, 30, 10, 7, 10, 16, 4, 6, 3, 13, 70),
(362, 12, 17, 14, 13, 12, 4, 6, 16, 6, 14, 47),
(363, 11, 23, 11, 13, 8, 3, 8, 12, 4, 10, 71),
(364, 8, 30, 19, 0, 1, 12, 15, 1, 9, 0, 69),
(365, 10, 11, 16, 11, 14, 9, 3, 15, 6, 14, 64),
(366, 2, 3, 1, 8, 1, 6, 1, 13, 1, 7, 61),
(367, 9, 11, 5, 16, 5, 7, 16, 4, 6, 16, 74),
(368, 10, 4, 8, 10, 3, 12, 16, 5, 14, 0, 57),
(369, 11, 2, 13, 2, 5, 7, 7, 16, 13, 3, 80),
(370, 8, 8, 12, 15, 2, 10, 16, 6, 4, 0, 75),
(371, 1, 19, 5, 0, 0, 14, 16, 4, 6, 16, 65),
(372, 1, 10, 13, 16, 1, 3, 2, 9, 3, 12, 71),
(373, 1, 22, 1, 3, 6, 11, 16, 10, 5, 11, 58),
(374, 2, 24, 1, 8, 15, 8, 6, 3, 6, 5, 76),
(375, 11, 2, 14, 6, 15, 16, 11, 3, 14, 3, 44),
(376, 1, 3, 8, 3, 3, 0, 3, 10, 7, 2, 78),
(377, 7, 21, 14, 10, 9, 2, 9, 5, 8, 6, 58),
(378, 11, 10, 4, 16, 5, 12, 16, 9, 13, 11, 42),
(379, 9, 25, 22, 9, 9, 3, 9, 10, 2, 2, 79),
(380, 2, 9, 16, 13, 3, 0, 7, 11, 7, 7, 67),
(381, 10, 30, 16, 10, 16, 12, 0, 7, 14, 11, 61),
(382, 6, 11, 19, 4, 11, 13, 12, 13, 16, 12, 65),
(383, 4, 2, 0, 4, 12, 2, 16, 0, 13, 0, 55),
(384, 6, 4, 7, 6, 4, 3, 15, 0, 6, 12, 70),
(385, 3, 6, 2, 0, 12, 3, 15, 13, 1, 7, 56),
(386, 6, 24, 5, 12, 14, 0, 1, 1, 1, 16, 78),
(387, 3, 2, 22, 12, 11, 11, 5, 12, 15, 3, 45),
(388, 10, 15, 8, 3, 3, 4, 8, 2, 10, 6, 75),
(389, 2, 17, 19, 15, 14, 8, 12, 7, 2, 9, 55),
(390, 12, 5, 13, 2, 0, 3, 2, 5, 1, 4, 59),
(391, 2, 26, 19, 6, 0, 0, 8, 0, 16, 6, 46),
(392, 11, 8, 20, 2, 10, 12, 12, 13, 4, 2, 47),
(393, 10, 12, 19, 10, 1, 1, 5, 3, 16, 0, 74),
(394, 9, 19, 2, 15, 2, 15, 13, 6, 13, 4, 72),
(395, 3, 21, 0, 16, 15, 2, 15, 2, 12, 6, 54),
(396, 4, 26, 6, 5, 13, 3, 8, 6, 0, 13, 62),
(397, 10, 23, 11, 0, 13, 12, 0, 11, 2, 15, 50),
(398, 6, 26, 6, 15, 1, 5, 15, 4, 9, 16, 46),
(399, 10, 10, 5, 11, 13, 10, 11, 13, 6, 7, 67),
(400, 6, 2, 6, 1, 4, 12, 5, 1, 12, 10, 80),
(401, 6, 13, 3, 16, 14, 5, 3, 10, 5, 13, 51),
(402, 5, 30, 23, 6, 11, 1, 3, 2, 11, 13, 56),
(403, 7, 24, 15, 10, 11, 3, 8, 0, 12, 13, 56),
(404, 8, 29, 16, 13, 4, 16, 3, 9, 7, 8, 54),
(405, 9, 19, 7, 1, 0, 6, 2, 6, 7, 3, 44),
(406, 12, 16, 7, 8, 2, 5, 7, 9, 2, 11, 50),
(407, 8, 7, 4, 11, 9, 5, 16, 8, 14, 6, 66),
(408, 2, 19, 2, 3, 6, 9, 12, 1, 13, 15, 41),
(409, 10, 25, 20, 8, 11, 5, 6, 2, 13, 14, 47),
(410, 11, 22, 16, 16, 5, 12, 6, 16, 10, 6, 58),
(411, 11, 13, 13, 6, 14, 1, 1, 10, 1, 10, 75),
(412, 8, 20, 20, 10, 1, 14, 15, 14, 7, 9, 54),
(413, 11, 19, 21, 3, 11, 5, 15, 6, 1, 16, 51),
(414, 11, 19, 4, 5, 9, 1, 3, 13, 13, 16, 63),
(415, 12, 29, 21, 1, 2, 1, 12, 11, 16, 13, 80),
(416, 7, 19, 23, 12, 2, 7, 10, 0, 15, 14, 55),
(417, 3, 4, 20, 4, 15, 6, 11, 8, 9, 3, 70),
(418, 6, 7, 8, 2, 3, 0, 13, 2, 4, 3, 62),
(419, 10, 9, 8, 8, 9, 6, 3, 10, 16, 9, 44),
(420, 12, 3, 1, 2, 11, 13, 8, 10, 10, 4, 45),
(421, 11, 22, 17, 5, 2, 5, 0, 4, 16, 3, 43),
(422, 7, 17, 4, 0, 16, 12, 2, 8, 9, 7, 46),
(423, 2, 7, 7, 10, 1, 3, 12, 14, 15, 0, 57),
(424, 11, 15, 11, 10, 9, 15, 9, 10, 12, 8, 44),
(425, 9, 26, 8, 12, 14, 10, 15, 11, 2, 0, 64),
(426, 1, 13, 19, 16, 9, 6, 13, 14, 7, 7, 77),
(427, 7, 11, 9, 8, 0, 1, 10, 16, 3, 9, 67),
(428, 2, 10, 10, 16, 0, 1, 14, 12, 12, 8, 63),
(429, 10, 3, 18, 5, 5, 14, 15, 15, 2, 14, 61),
(430, 1, 21, 20, 2, 3, 7, 0, 2, 10, 3, 48),
(431, 2, 6, 4, 8, 6, 10, 0, 5, 14, 10, 53),
(432, 4, 2, 23, 6, 8, 6, 8, 3, 15, 13, 71),
(433, 2, 23, 13, 1, 2, 15, 14, 11, 15, 10, 66),
(434, 4, 5, 1, 2, 4, 7, 4, 0, 6, 10, 58),
(435, 12, 8, 18, 0, 4, 15, 7, 15, 12, 3, 42),
(436, 5, 23, 5, 5, 6, 15, 2, 0, 7, 12, 55),
(437, 2, 29, 21, 0, 6, 1, 9, 2, 0, 16, 77),
(438, 6, 18, 10, 4, 6, 13, 12, 3, 9, 12, 51),
(439, 8, 27, 13, 2, 14, 13, 10, 15, 12, 4, 75),
(440, 3, 30, 17, 5, 4, 0, 13, 9, 16, 5, 59),
(441, 2, 4, 0, 13, 5, 16, 1, 8, 11, 7, 40),
(442, 5, 7, 18, 9, 5, 2, 6, 13, 15, 4, 79),
(443, 5, 30, 12, 13, 11, 12, 3, 2, 14, 7, 64),
(444, 3, 6, 19, 4, 1, 14, 2, 16, 9, 11, 59),
(445, 2, 26, 13, 3, 7, 12, 14, 5, 11, 7, 53),
(446, 4, 27, 12, 15, 0, 10, 5, 14, 11, 6, 62),
(447, 3, 8, 4, 10, 15, 12, 2, 5, 5, 2, 40),
(448, 2, 14, 12, 14, 9, 0, 9, 0, 11, 1, 75),
(449, 8, 1, 3, 0, 10, 9, 3, 4, 9, 3, 54),
(450, 3, 29, 11, 5, 16, 1, 8, 3, 10, 10, 52),
(451, 11, 7, 17, 5, 13, 11, 9, 0, 16, 6, 57),
(452, 10, 27, 1, 4, 14, 1, 14, 9, 10, 0, 46),
(453, 4, 4, 4, 9, 10, 12, 4, 8, 0, 10, 77),
(454, 5, 28, 18, 13, 4, 12, 5, 13, 12, 7, 74),
(455, 7, 4, 21, 5, 7, 8, 12, 6, 0, 13, 74),
(456, 11, 1, 5, 1, 3, 5, 10, 9, 15, 10, 79),
(457, 12, 19, 21, 0, 16, 1, 6, 6, 15, 7, 66),
(458, 5, 21, 19, 14, 16, 15, 15, 5, 7, 15, 51),
(459, 7, 28, 9, 15, 9, 0, 6, 9, 7, 3, 47),
(460, 4, 1, 3, 10, 10, 11, 4, 1, 11, 2, 60),
(461, 10, 22, 2, 5, 10, 7, 2, 7, 8, 1, 75),
(462, 5, 21, 2, 6, 10, 12, 5, 4, 10, 4, 79),
(463, 8, 9, 1, 8, 16, 11, 9, 3, 6, 12, 66),
(464, 6, 6, 15, 4, 15, 3, 1, 1, 16, 3, 41),
(465, 7, 12, 8, 2, 2, 9, 2, 11, 1, 4, 40),
(466, 2, 13, 8, 8, 3, 9, 11, 0, 6, 4, 62),
(467, 11, 5, 1, 9, 12, 1, 9, 6, 4, 4, 77),
(468, 10, 21, 5, 10, 10, 0, 15, 9, 15, 4, 65),
(469, 11, 12, 8, 7, 13, 8, 0, 7, 9, 2, 78),
(470, 9, 23, 4, 4, 7, 9, 16, 2, 9, 16, 70),
(471, 12, 30, 6, 2, 7, 6, 7, 10, 6, 16, 65),
(472, 8, 1, 14, 11, 10, 6, 10, 6, 11, 0, 64),
(473, 8, 28, 18, 3, 3, 15, 13, 13, 9, 5, 53),
(474, 8, 14, 22, 16, 13, 6, 1, 7, 6, 11, 52),
(475, 10, 2, 0, 6, 2, 10, 12, 12, 9, 15, 68),
(476, 4, 28, 15, 7, 10, 3, 4, 14, 2, 10, 75),
(477, 11, 4, 13, 11, 9, 14, 8, 15, 9, 0, 60),
(478, 7, 7, 1, 6, 11, 7, 10, 6, 1, 9, 54),
(479, 6, 16, 14, 9, 2, 2, 13, 1, 9, 16, 51),
(480, 11, 3, 23, 8, 15, 0, 12, 0, 4, 12, 57),
(481, 11, 11, 4, 9, 2, 6, 16, 16, 13, 5, 47),
(482, 11, 28, 8, 11, 4, 2, 9, 4, 12, 5, 58),
(483, 4, 19, 10, 0, 0, 1, 11, 14, 2, 3, 42),
(484, 6, 8, 15, 3, 11, 2, 1, 1, 0, 0, 67),
(485, 10, 6, 22, 13, 16, 10, 16, 6, 12, 6, 52),
(486, 9, 27, 23, 5, 10, 4, 15, 7, 12, 13, 78),
(487, 12, 15, 8, 6, 6, 15, 6, 0, 13, 14, 74),
(488, 10, 21, 20, 11, 0, 2, 14, 6, 10, 11, 43),
(489, 9, 27, 12, 14, 0, 5, 7, 6, 8, 10, 79),
(490, 5, 29, 20, 6, 12, 12, 13, 1, 14, 0, 69),
(491, 8, 19, 2, 1, 2, 5, 14, 3, 15, 5, 43),
(492, 1, 14, 15, 16, 10, 0, 12, 0, 14, 0, 76),
(493, 12, 12, 23, 3, 4, 15, 8, 6, 4, 2, 46),
(494, 7, 7, 11, 1, 12, 3, 14, 8, 16, 13, 70),
(495, 12, 6, 15, 14, 2, 6, 14, 7, 4, 4, 45),
(496, 2, 21, 22, 8, 14, 11, 7, 0, 4, 14, 63),
(497, 2, 3, 12, 11, 1, 5, 6, 8, 4, 4, 61),
(498, 1, 17, 21, 6, 8, 9, 11, 10, 1, 7, 63),
(499, 6, 3, 19, 8, 16, 9, 16, 12, 6, 2, 80),
(500, 11, 27, 7, 12, 6, 8, 15, 12, 5, 1, 56),
(501, 7, 3, 21, 12, 1, 2, 5, 8, 10, 2, 59),
(502, 1, 13, 23, 5, 1, 14, 15, 8, 11, 13, 57),
(503, 4, 6, 10, 16, 12, 13, 10, 16, 15, 12, 53),
(504, 9, 5, 1, 4, 11, 11, 4, 16, 6, 16, 57),
(505, 10, 2, 9, 16, 1, 5, 2, 2, 15, 8, 73),
(506, 1, 2, 3, 9, 4, 0, 5, 6, 11, 3, 67),
(507, 5, 11, 21, 6, 2, 10, 9, 1, 14, 5, 62),
(508, 12, 30, 23, 1, 7, 8, 11, 3, 12, 7, 42),
(509, 11, 7, 13, 6, 13, 9, 16, 10, 2, 3, 77),
(510, 4, 12, 5, 5, 1, 10, 13, 9, 10, 15, 57),
(511, 6, 8, 19, 10, 14, 13, 1, 2, 4, 16, 74),
(512, 10, 27, 17, 11, 2, 12, 3, 2, 4, 9, 47),
(513, 9, 10, 23, 13, 3, 13, 14, 12, 5, 8, 73),
(514, 4, 18, 11, 7, 10, 5, 10, 5, 16, 7, 65),
(515, 2, 3, 9, 4, 8, 11, 8, 10, 7, 8, 60),
(516, 7, 28, 1, 15, 6, 7, 2, 5, 16, 13, 46),
(517, 1, 22, 7, 16, 16, 9, 15, 0, 15, 16, 74),
(518, 4, 21, 0, 1, 16, 3, 3, 3, 7, 0, 61),
(519, 4, 17, 17, 8, 2, 14, 0, 15, 8, 7, 72),
(520, 12, 27, 9, 0, 1, 3, 2, 2, 1, 9, 45),
(521, 5, 9, 6, 6, 10, 16, 9, 13, 6, 6, 45),
(522, 4, 4, 4, 7, 9, 9, 7, 13, 7, 8, 80),
(523, 2, 4, 13, 7, 15, 10, 10, 5, 1, 1, 71),
(524, 9, 8, 10, 14, 15, 0, 3, 16, 14, 9, 55),
(525, 5, 30, 2, 2, 3, 10, 9, 14, 7, 0, 75),
(526, 11, 9, 10, 10, 11, 12, 3, 2, 5, 10, 67),
(527, 11, 12, 4, 15, 12, 5, 8, 0, 14, 2, 73),
(528, 10, 16, 15, 15, 14, 5, 10, 9, 15, 9, 54),
(529, 9, 25, 14, 14, 3, 7, 7, 3, 8, 2, 58),
(530, 12, 1, 23, 8, 3, 2, 14, 14, 12, 2, 79),
(531, 2, 14, 0, 9, 2, 2, 14, 5, 16, 13, 42),
(532, 11, 7, 4, 5, 11, 11, 10, 0, 12, 15, 76),
(533, 3, 30, 22, 2, 14, 9, 8, 7, 7, 10, 51),
(534, 12, 5, 13, 7, 0, 9, 11, 15, 9, 15, 58),
(535, 6, 12, 18, 15, 3, 3, 7, 15, 16, 7, 74),
(536, 12, 10, 10, 2, 3, 13, 8, 12, 6, 15, 69),
(537, 8, 1, 6, 13, 10, 7, 4, 4, 6, 0, 66),
(538, 2, 30, 19, 9, 12, 13, 10, 13, 10, 16, 70),
(539, 12, 16, 14, 5, 16, 1, 7, 7, 5, 2, 43),
(540, 11, 22, 22, 13, 9, 8, 6, 2, 2, 1, 40),
(541, 2, 4, 19, 11, 1, 11, 14, 1, 16, 5, 71),
(542, 3, 7, 16, 14, 6, 6, 3, 15, 11, 2, 45),
(543, 10, 25, 17, 16, 11, 5, 9, 6, 4, 12, 43),
(544, 5, 29, 6, 10, 3, 2, 12, 15, 11, 2, 79),
(545, 12, 10, 17, 9, 1, 5, 9, 12, 5, 6, 46),
(546, 2, 11, 7, 9, 16, 12, 13, 10, 4, 4, 67),
(547, 2, 8, 22, 3, 3, 10, 9, 4, 3, 15, 64),
(548, 5, 24, 12, 9, 1, 9, 7, 14, 3, 4, 75),
(549, 10, 22, 20, 2, 6, 0, 9, 2, 5, 6, 52),
(550, 12, 26, 8, 7, 13, 9, 11, 10, 15, 16, 80),
(551, 10, 22, 12, 4, 3, 14, 5, 4, 6, 9, 71),
(552, 5, 17, 21, 0, 14, 5, 13, 5, 16, 12, 73),
(553, 5, 10, 6, 6, 15, 9, 5, 8, 4, 16, 48),
(554, 11, 2, 10, 11, 16, 7, 11, 5, 9, 0, 64),
(555, 10, 23, 7, 0, 4, 1, 10, 14, 14, 14, 42),
(556, 6, 24, 11, 4, 6, 4, 16, 6, 12, 13, 49),
(557, 11, 14, 21, 3, 12, 6, 6, 11, 6, 8, 56),
(558, 9, 9, 6, 16, 2, 12, 4, 0, 9, 4, 78),
(559, 2, 4, 3, 12, 0, 4, 2, 12, 0, 16, 63),
(560, 11, 18, 17, 7, 10, 15, 16, 6, 15, 13, 74),
(561, 10, 22, 15, 3, 0, 14, 3, 14, 16, 10, 54),
(562, 11, 8, 4, 11, 4, 7, 0, 12, 0, 5, 61),
(563, 9, 27, 2, 2, 13, 9, 13, 13, 6, 13, 59),
(564, 4, 1, 12, 15, 9, 7, 6, 9, 9, 16, 80),
(565, 12, 12, 23, 15, 2, 8, 13, 11, 15, 10, 78),
(566, 10, 8, 5, 15, 9, 8, 4, 4, 12, 10, 44),
(567, 4, 27, 0, 1, 4, 7, 8, 5, 1, 4, 75),
(568, 9, 30, 7, 8, 10, 10, 5, 15, 10, 2, 50),
(569, 11, 23, 13, 2, 11, 5, 0, 5, 4, 10, 64),
(570, 1, 16, 5, 14, 7, 16, 0, 9, 2, 5, 60),
(571, 11, 10, 10, 0, 7, 1, 11, 10, 6, 2, 64),
(572, 10, 27, 4, 14, 13, 8, 2, 7, 12, 13, 58),
(573, 5, 8, 9, 8, 4, 16, 13, 10, 1, 9, 79),
(574, 9, 20, 6, 13, 13, 13, 7, 12, 2, 9, 76),
(575, 10, 26, 6, 11, 5, 2, 5, 12, 15, 15, 42),
(576, 6, 30, 14, 8, 11, 5, 5, 2, 15, 16, 48),
(577, 3, 11, 0, 6, 3, 15, 5, 7, 16, 9, 58),
(578, 11, 8, 7, 1, 14, 8, 8, 8, 13, 2, 64),
(579, 2, 1, 13, 0, 0, 3, 8, 6, 13, 12, 60),
(580, 11, 6, 5, 0, 14, 0, 12, 2, 2, 14, 73),
(581, 2, 14, 12, 9, 3, 0, 3, 6, 15, 12, 52),
(582, 10, 2, 14, 14, 3, 6, 4, 12, 5, 9, 45),
(583, 11, 18, 1, 1, 3, 14, 6, 8, 11, 2, 61),
(584, 2, 27, 0, 14, 16, 13, 15, 5, 12, 15, 72),
(585, 2, 10, 12, 4, 1, 8, 4, 12, 11, 4, 65),
(586, 7, 24, 14, 0, 8, 5, 6, 3, 10, 6, 60),
(587, 5, 17, 7, 12, 16, 14, 15, 9, 7, 12, 76),
(588, 1, 20, 18, 4, 12, 7, 13, 3, 0, 11, 74),
(589, 2, 14, 23, 12, 2, 1, 16, 5, 8, 14, 54),
(590, 7, 5, 21, 11, 15, 6, 9, 4, 16, 11, 58),
(591, 5, 27, 20, 7, 2, 3, 12, 8, 6, 9, 45),
(592, 1, 20, 5, 15, 1, 5, 4, 5, 1, 13, 41),
(593, 5, 1, 2, 11, 2, 4, 2, 6, 7, 7, 77),
(594, 1, 20, 16, 3, 5, 1, 15, 13, 8, 13, 72),
(595, 3, 10, 3, 3, 6, 16, 13, 6, 4, 3, 79),
(596, 7, 5, 4, 16, 3, 2, 1, 1, 12, 16, 44),
(597, 10, 13, 17, 1, 2, 4, 11, 10, 2, 9, 48),
(598, 7, 11, 17, 16, 13, 7, 11, 14, 8, 10, 71),
(599, 9, 28, 3, 12, 6, 9, 14, 3, 2, 13, 44),
(600, 1, 8, 18, 7, 7, 8, 7, 14, 16, 1, 64),
(601, 7, 4, 4, 3, 8, 15, 4, 3, 16, 9, 74),
(602, 3, 14, 5, 16, 1, 10, 13, 10, 10, 0, 70),
(603, 4, 24, 17, 0, 2, 7, 15, 12, 5, 6, 62),
(604, 1, 5, 6, 11, 4, 7, 13, 15, 0, 12, 75),
(605, 8, 22, 6, 8, 13, 11, 8, 5, 2, 5, 56),
(606, 5, 14, 11, 9, 3, 4, 3, 4, 15, 0, 80),
(607, 6, 28, 10, 4, 14, 6, 16, 0, 10, 13, 40),
(608, 4, 27, 15, 5, 5, 14, 12, 5, 12, 1, 49),
(609, 1, 28, 6, 0, 6, 9, 13, 3, 6, 2, 71),
(610, 4, 24, 17, 7, 3, 6, 15, 16, 11, 1, 57),
(611, 1, 8, 10, 8, 6, 6, 15, 14, 10, 9, 60),
(612, 6, 10, 14, 12, 12, 11, 12, 11, 0, 4, 42),
(613, 2, 21, 6, 1, 14, 2, 15, 8, 0, 2, 59),
(614, 11, 25, 7, 10, 15, 3, 15, 2, 6, 16, 44),
(615, 12, 3, 14, 2, 1, 11, 8, 2, 12, 3, 49),
(616, 7, 24, 18, 15, 15, 6, 15, 10, 7, 12, 47),
(617, 5, 1, 7, 15, 16, 4, 4, 4, 1, 5, 42),
(618, 9, 9, 19, 12, 4, 2, 15, 6, 12, 8, 54),
(619, 7, 22, 20, 13, 11, 6, 12, 5, 9, 10, 59),
(620, 2, 18, 8, 4, 7, 8, 7, 5, 9, 16, 65),
(621, 8, 9, 4, 4, 12, 9, 0, 1, 13, 4, 64),
(622, 8, 28, 2, 14, 6, 0, 2, 1, 7, 14, 75),
(623, 9, 16, 17, 12, 5, 0, 2, 5, 8, 16, 47),
(624, 2, 16, 0, 9, 8, 15, 0, 5, 6, 10, 56),
(625, 2, 7, 17, 13, 2, 0, 0, 9, 6, 3, 40),
(626, 10, 24, 3, 9, 9, 7, 13, 14, 13, 6, 44),
(627, 11, 27, 0, 10, 6, 1, 0, 5, 15, 14, 40),
(628, 9, 6, 12, 9, 4, 14, 11, 5, 6, 4, 72),
(629, 3, 8, 1, 15, 11, 12, 6, 12, 12, 13, 73),
(630, 11, 13, 6, 7, 12, 4, 6, 16, 7, 6, 68),
(631, 10, 18, 14, 11, 10, 1, 3, 14, 16, 2, 51),
(632, 5, 14, 8, 3, 11, 15, 16, 6, 15, 14, 47),
(633, 8, 6, 9, 0, 7, 11, 0, 6, 13, 9, 58),
(634, 11, 5, 9, 8, 2, 10, 15, 0, 8, 3, 56),
(635, 10, 21, 18, 1, 7, 14, 6, 7, 7, 6, 55),
(636, 7, 2, 0, 14, 0, 7, 13, 5, 12, 11, 77),
(637, 1, 13, 23, 2, 12, 13, 4, 13, 11, 3, 73),
(638, 1, 5, 12, 15, 15, 3, 4, 14, 13, 9, 77),
(639, 11, 21, 16, 8, 9, 1, 2, 15, 11, 9, 48),
(640, 4, 21, 2, 5, 3, 1, 16, 1, 6, 0, 59),
(641, 5, 13, 4, 1, 11, 2, 6, 10, 8, 11, 51),
(642, 3, 16, 21, 4, 9, 13, 9, 7, 7, 8, 53),
(643, 2, 21, 0, 4, 5, 8, 1, 7, 13, 7, 78),
(644, 9, 28, 21, 2, 3, 1, 13, 3, 6, 14, 51),
(645, 1, 17, 20, 16, 12, 8, 14, 13, 2, 2, 64),
(646, 1, 22, 15, 0, 2, 2, 15, 4, 13, 16, 76),
(647, 4, 29, 6, 11, 15, 9, 12, 0, 1, 9, 64),
(648, 9, 28, 16, 11, 11, 9, 15, 1, 1, 1, 54),
(649, 5, 4, 13, 6, 14, 14, 10, 11, 3, 5, 48),
(650, 10, 28, 1, 3, 5, 4, 10, 13, 15, 2, 61),
(651, 5, 14, 22, 3, 10, 2, 14, 2, 6, 10, 55),
(652, 2, 5, 5, 3, 15, 15, 13, 7, 7, 5, 48),
(653, 6, 21, 19, 14, 1, 12, 0, 1, 12, 11, 44),
(654, 2, 27, 22, 6, 1, 11, 8, 3, 2, 0, 55),
(655, 3, 23, 14, 8, 6, 3, 5, 0, 4, 13, 72),
(656, 10, 18, 8, 12, 0, 9, 13, 14, 2, 3, 56),
(657, 2, 9, 2, 2, 2, 10, 7, 7, 14, 7, 61),
(658, 3, 15, 4, 14, 8, 10, 0, 10, 15, 11, 62),
(659, 11, 30, 9, 14, 9, 3, 3, 9, 3, 5, 55),
(660, 7, 6, 20, 7, 5, 16, 15, 0, 10, 14, 78),
(661, 3, 26, 0, 10, 1, 15, 0, 9, 3, 6, 67),
(662, 2, 27, 4, 5, 0, 13, 4, 1, 7, 2, 68),
(663, 9, 11, 7, 3, 14, 8, 6, 9, 10, 12, 73),
(664, 9, 28, 16, 15, 14, 0, 16, 11, 13, 15, 67),
(665, 7, 23, 17, 4, 8, 10, 7, 3, 4, 6, 80),
(666, 9, 30, 5, 12, 13, 4, 8, 3, 10, 13, 72),
(667, 2, 4, 20, 1, 7, 11, 16, 7, 6, 4, 46),
(668, 3, 10, 7, 11, 13, 1, 1, 10, 14, 9, 67),
(669, 7, 11, 12, 11, 0, 3, 8, 10, 11, 14, 59),
(670, 3, 20, 18, 1, 13, 14, 6, 8, 7, 0, 78),
(671, 6, 11, 8, 8, 1, 0, 12, 6, 6, 6, 44),
(672, 9, 10, 1, 13, 10, 1, 10, 16, 5, 15, 65),
(673, 5, 5, 10, 8, 7, 6, 14, 5, 12, 13, 61),
(674, 2, 11, 23, 12, 0, 2, 4, 9, 12, 16, 67),
(675, 10, 7, 18, 16, 12, 8, 2, 15, 7, 5, 69),
(676, 12, 30, 4, 7, 2, 15, 16, 10, 11, 12, 42),
(677, 4, 24, 17, 14, 2, 1, 13, 10, 12, 0, 65),
(678, 11, 27, 22, 10, 8, 11, 5, 4, 8, 1, 68),
(679, 10, 7, 10, 2, 6, 5, 1, 0, 9, 7, 45),
(680, 11, 2, 8, 10, 16, 6, 11, 12, 14, 15, 65),
(681, 12, 4, 8, 12, 3, 14, 5, 1, 15, 11, 52),
(682, 7, 9, 1, 15, 6, 11, 10, 14, 14, 2, 60),
(683, 6, 5, 1, 16, 12, 4, 13, 2, 15, 13, 54),
(684, 10, 24, 22, 13, 15, 5, 14, 11, 2, 1, 58),
(685, 11, 8, 0, 0, 11, 0, 10, 11, 8, 7, 77),
(686, 5, 22, 5, 4, 8, 12, 9, 3, 1, 6, 41),
(687, 11, 22, 3, 7, 8, 5, 0, 12, 5, 11, 63),
(688, 5, 28, 23, 9, 6, 12, 12, 15, 11, 0, 71),
(689, 11, 1, 3, 10, 1, 1, 10, 7, 16, 14, 51),
(690, 3, 28, 1, 14, 3, 14, 2, 4, 16, 9, 48),
(691, 3, 29, 14, 10, 13, 7, 1, 13, 6, 10, 62),
(692, 12, 8, 19, 11, 16, 7, 8, 8, 4, 16, 57),
(693, 8, 28, 10, 11, 10, 16, 4, 0, 4, 12, 48),
(694, 7, 21, 7, 11, 13, 15, 13, 4, 15, 0, 54),
(695, 1, 13, 19, 10, 8, 0, 14, 5, 12, 8, 75),
(696, 11, 26, 17, 4, 7, 5, 0, 4, 13, 8, 73),
(697, 12, 25, 21, 3, 14, 12, 16, 10, 7, 16, 53),
(698, 3, 26, 9, 16, 11, 11, 4, 13, 16, 5, 75),
(699, 4, 20, 9, 0, 13, 7, 14, 6, 13, 7, 67),
(700, 6, 19, 22, 8, 14, 1, 9, 2, 15, 15, 77),
(701, 9, 12, 17, 15, 4, 4, 16, 4, 3, 10, 62),
(702, 2, 7, 19, 7, 9, 11, 1, 15, 6, 11, 71),
(703, 4, 7, 16, 12, 16, 6, 4, 2, 5, 6, 49),
(704, 11, 12, 11, 6, 3, 5, 5, 7, 4, 14, 60),
(705, 7, 27, 4, 16, 9, 4, 12, 5, 14, 5, 64);

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
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=706;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;