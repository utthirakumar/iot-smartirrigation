-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 20, 2019 at 02:39 PM
-- Server version: 10.1.40-MariaDB
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nodemcu`
--

-- --------------------------------------------------------

--
-- Table structure for table `dht11`
--

CREATE TABLE `dht11` (
  `ID` bigint(20) NOT NULL,
  `humidity` float DEFAULT NULL,
  `temperature` float DEFAULT NULL,
  `soilmoisture` int(11) DEFAULT NULL,
  `moto_status` varchar(10) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dht11`
--

INSERT INTO `dht11` (`ID`, `humidity`, `temperature`, `soilmoisture`, `moto_status`, `date`) VALUES
(1, 78, 27.6, 0, 'on', '2019-12-11 07:57:52'),
(2, 66, 28.4, 100, 'on', '2019-12-11 07:58:29'),
(3, 66, 28.4, 100, 'on', '2019-12-11 07:58:29'),
(4, 69, 28.3, 100, 'on', '2019-12-11 07:58:34'),
(5, 69, 28.3, 100, 'on', '2019-12-11 07:58:35'),
(6, 66, 28.3, 100, 'on', '2019-12-11 07:58:40'),
(7, 66, 28.3, 100, 'on', '2019-12-11 07:58:40'),
(8, 66, 28.3, 100, 'on', '2019-12-11 07:58:45'),
(9, 66, 28.3, 100, 'on', '2019-12-11 07:58:46'),
(10, 66, 28.3, 100, 'on', '2019-12-11 07:58:51'),
(11, 66, 28.3, 100, 'on', '2019-12-11 07:58:51'),
(12, 66, 28.4, 100, 'on', '2019-12-11 07:58:56'),
(13, 66, 28.4, 100, 'on', '2019-12-11 07:58:57'),
(14, 66, 28.3, 100, 'on', '2019-12-11 07:59:02'),
(15, 66, 28.3, 100, 'on', '2019-12-11 07:59:03'),
(16, 66, 28.3, 100, 'on', '2019-12-11 07:59:08'),
(17, 66, 28.3, 100, 'on', '2019-12-11 07:59:08'),
(18, 66, 28.3, 100, 'on', '2019-12-11 08:02:58'),
(19, 66, 28.3, 100, 'on', '2019-12-11 08:02:58'),
(20, 68, 28.2, 100, 'on', '2019-12-11 08:03:07'),
(21, 65, 28.2, 100, 'on', '2019-12-11 08:05:36'),
(22, 65, 28.2, 100, 'on', '2019-12-11 08:05:36'),
(23, 68, 28.1, 100, 'on', '2019-12-11 08:05:42'),
(24, 68, 28.1, 100, 'on', '2019-12-11 08:05:43'),
(25, 65, 28.1, 100, 'on', '2019-12-11 08:05:48'),
(26, 65, 28.1, 100, 'on', '2019-12-11 08:05:49'),
(27, 65, 28.1, 100, 'on', '2019-12-11 08:05:54'),
(28, 65, 28.1, 100, 'on', '2019-12-11 08:05:56'),
(29, 65, 28.2, 100, 'on', '2019-12-11 08:06:01'),
(30, 65, 28.2, 100, 'on', '2019-12-11 08:06:02'),
(31, 65, 28.2, 100, 'on', '2019-12-11 08:06:08'),
(32, 65, 28.2, 100, 'on', '2019-12-11 08:06:10'),
(33, 65, 28.2, 100, 'on', '2019-12-11 08:06:15'),
(34, 65, 28.2, 100, 'on', '2019-12-11 08:06:17'),
(35, 65, 28.2, 100, 'on', '2019-12-11 08:06:22'),
(36, 65, 28.2, 100, 'on', '2019-12-11 08:06:23'),
(37, 65, 28.2, 100, 'on', '2019-12-11 08:06:28'),
(38, 65, 28.2, 100, 'on', '2019-12-11 08:06:30'),
(39, 65, 28.2, 100, 'on', '2019-12-11 08:06:35'),
(40, 65, 28.2, 100, 'on', '2019-12-11 08:06:36'),
(41, 64, 28.2, 100, 'on', '2019-12-11 08:06:43'),
(42, 64, 28.2, 100, 'on', '2019-12-11 08:06:52'),
(43, 64, 28.2, 100, 'on', '2019-12-11 08:06:59'),
(44, 64, 28.2, 100, 'on', '2019-12-11 08:07:08'),
(45, 64, 28.1, 100, 'on', '2019-12-11 08:07:13'),
(46, 63, 27.9, 100, 'on', '2019-12-11 08:12:41'),
(47, 63, 27.9, 100, 'on', '2019-12-11 08:12:41'),
(48, 66, 28, 100, 'on', '2019-12-11 08:12:51'),
(49, 63, 28, 100, 'on', '2019-12-11 08:12:54'),
(50, 63, 28, 100, 'on', '2019-12-11 08:13:03'),
(51, 63, 28, 100, 'on', '2019-12-11 08:13:05'),
(52, 63, 28, 100, 'on', '2019-12-11 08:13:15'),
(53, 63, 28, 100, 'on', '2019-12-11 08:13:20'),
(54, 63, 28, 100, 'on', '2019-12-11 08:13:30'),
(55, 67, 30.7, 0, 'on', '2019-12-11 12:27:48'),
(56, 67, 30.7, 0, 'on', '2019-12-11 12:27:50'),
(57, 70, 31.1, 0, 'on', '2019-12-11 12:27:54'),
(58, 70, 31.1, 0, 'on', '2019-12-11 12:27:55'),
(59, 67, 31, 100, 'Off', '2019-12-11 12:28:07'),
(60, 67, 31, 100, 'on', '2019-12-11 12:28:07'),
(61, 66, 31.2, 100, 'Off', '2019-12-11 12:28:18'),
(62, 66, 31.2, 100, 'on', '2019-12-11 12:28:18'),
(63, 66, 31.2, 100, 'Off', '2019-12-11 12:28:28'),
(64, 66, 31.2, 100, 'on', '2019-12-11 12:28:29'),
(65, 66, 31.3, 100, 'Off', '2019-12-11 12:28:34'),
(66, 66, 31.3, 100, 'on', '2019-12-11 12:28:35'),
(67, 66, 31.3, 100, 'Off', '2019-12-11 12:28:45'),
(68, 66, 31.3, 100, 'on', '2019-12-11 12:28:46'),
(69, 66, 31.3, 100, 'Off', '2019-12-11 12:28:56'),
(70, 66, 31.3, 100, 'on', '2019-12-11 12:28:56'),
(71, 66, 31.3, 100, 'Off', '2019-12-11 12:29:06'),
(72, 66, 31.3, 100, 'on', '2019-12-11 12:29:08'),
(73, 66, 31.3, 100, 'Off', '2019-12-11 12:29:18'),
(74, 66, 31.3, 100, 'on', '2019-12-11 12:29:20'),
(75, 65, 31.3, 100, 'Off', '2019-12-11 12:29:30'),
(76, 66, 31.3, 100, 'on', '2019-12-11 12:29:32'),
(77, 66, 31.3, 100, 'Off', '2019-12-11 12:29:43'),
(78, 66, 31.3, 100, 'on', '2019-12-11 12:29:44'),
(79, 65, 31.4, 100, 'Off', '2019-12-11 12:29:54'),
(80, 66, 31.4, 100, 'on', '2019-12-11 12:29:57'),
(81, 65, 31.5, 100, 'on', '2019-12-11 12:45:18'),
(82, 67, 31.5, 100, 'on', '2019-12-11 12:45:20'),
(83, 64, 31.6, 100, 'on', '2019-12-11 12:45:30'),
(84, 64, 31.6, 100, 'on', '2019-12-11 12:45:31'),
(85, 64, 31.6, 100, 'on', '2019-12-11 12:45:41'),
(86, 64, 31.6, 100, 'on', '2019-12-11 12:45:41'),
(87, 65, 31.6, 100, 'on', '2019-12-11 12:49:21'),
(88, 65, 31.6, 100, 'on', '2019-12-11 12:49:22'),
(89, 69, 31.6, 100, 'on', '2019-12-11 12:49:32'),
(90, 69, 31.6, 100, 'on', '2019-12-11 12:49:33'),
(91, 69, 31.8, 100, 'on', '2019-12-11 13:43:23'),
(92, 66, 31.8, 100, 'on', '2019-12-11 13:43:26'),
(93, 66, 31.8, 100, 'on', '2019-12-11 13:43:35'),
(94, 66, 31.8, 100, 'on', '2019-12-11 13:43:35'),
(95, 65, 31.8, 100, 'on', '2019-12-11 13:43:45'),
(96, 65, 31.8, 100, 'on', '2019-12-11 13:43:46'),
(97, 65, 31.8, 100, 'on', '2019-12-11 13:43:56'),
(98, 65, 31.8, 100, 'on', '2019-12-11 13:43:59'),
(99, 65, 31.8, 100, 'on', '2019-12-11 13:44:08'),
(100, 65, 31.8, 100, 'on', '2019-12-11 13:44:09'),
(101, 65, 31.9, 100, 'on', '2019-12-11 13:44:19'),
(102, 65, 31.9, 100, 'on', '2019-12-11 13:44:20'),
(103, 64, 31.9, 100, 'on', '2019-12-11 13:44:45'),
(104, 66, 31.9, 100, 'on', '2019-12-11 13:44:48'),
(105, 0, 0, 0, 'on', '2019-12-12 02:33:11'),
(106, 0, 0, 0, 'on', '2019-12-12 02:33:13'),
(107, 0, 0, 65, 'on', '2019-12-12 02:33:23'),
(108, 0, 0, 65, 'on', '2019-12-12 02:33:23'),
(109, 0, 0, 0, 'on', '2019-12-12 02:33:33'),
(110, 0, 0, 0, 'on', '2019-12-12 02:33:33'),
(111, 0, 0, 0, 'on', '2019-12-12 02:33:44'),
(112, 0, 0, 0, 'on', '2019-12-12 02:33:45'),
(113, 0, 0, 0, 'on', '2019-12-12 02:33:55'),
(114, 0, 0, 0, 'on', '2019-12-12 02:33:56'),
(115, 0, 0, 0, 'on', '2019-12-12 02:34:06'),
(116, 0, 0, 0, 'on', '2019-12-12 02:34:06'),
(117, 0, 0, 0, 'on', '2019-12-12 02:34:16'),
(118, 0, 0, 0, 'on', '2019-12-12 02:34:16'),
(119, 0, 0, 0, 'on', '2019-12-12 02:34:26'),
(120, 0, 0, 0, 'on', '2019-12-12 02:34:28'),
(121, 0, 0, 0, 'on', '2019-12-12 02:34:39'),
(122, 0, 0, 0, 'on', '2019-12-12 02:34:41'),
(123, 0, 0, 0, 'on', '2019-12-12 02:34:51'),
(124, 0, 0, 0, 'on', '2019-12-12 02:34:52'),
(125, 0, 0, 0, 'on', '2019-12-12 02:35:02'),
(126, 0, 0, 0, 'on', '2019-12-12 02:35:03'),
(127, 0, 0, 0, 'on', '2019-12-12 02:35:13'),
(128, 0, 0, 0, 'on', '2019-12-12 02:35:14'),
(129, 0, 0, 0, 'on', '2019-12-12 02:35:24'),
(130, 0, 0, 0, 'on', '2019-12-12 02:35:25'),
(131, 0, 0, 0, 'on', '2019-12-12 02:35:35'),
(132, 0, 0, 0, 'on', '2019-12-12 02:35:36'),
(133, 0, 0, 0, 'on', '2019-12-12 02:35:46'),
(134, 0, 0, 0, 'on', '2019-12-12 02:35:47'),
(135, 0, 0, 0, 'OFF', '2019-12-12 02:45:56'),
(136, 0, 0, 0, 'OFF', '2019-12-12 02:45:57'),
(137, 0, 0, 68, 'OFF', '2019-12-12 02:46:07'),
(138, 0, 0, 67, 'OFF', '2019-12-12 02:46:07'),
(139, 0, 0, 0, 'OFF', '2019-12-12 02:46:17'),
(140, 0, 0, 0, 'OFF', '2019-12-12 02:46:18'),
(141, 0, 0, 0, 'OFF', '2019-12-12 02:46:28'),
(142, 0, 0, 0, 'OFF', '2019-12-12 02:46:28'),
(143, 0, 0, 0, 'OFF', '2019-12-12 02:46:38'),
(144, 0, 0, 0, 'OFF', '2019-12-12 02:46:39'),
(145, 0, 0, 0, 'OFF', '2019-12-12 02:46:49'),
(146, 0, 0, 0, 'OFF', '2019-12-12 02:46:49'),
(147, 0, 0, 0, 'OFF', '2019-12-12 02:46:59'),
(148, 0, 0, 0, 'OFF', '2019-12-12 02:47:01'),
(149, 0, 0, 0, 'OFF', '2019-12-12 02:47:11'),
(150, 0, 0, 0, 'OFF', '2019-12-12 02:47:13'),
(151, 0, 0, 0, 'OFF', '2019-12-12 02:47:23'),
(152, 0, 0, 0, 'OFF', '2019-12-12 02:47:24'),
(153, 0, 0, 0, 'OFF', '2019-12-12 02:47:34'),
(154, 0, 0, 0, 'OFF', '2019-12-12 02:47:35'),
(155, 0, 0, 0, 'OFF', '2019-12-12 02:47:45'),
(156, 0, 0, 0, 'OFF', '2019-12-12 02:47:46'),
(157, 0, 0, 0, 'OFF', '2019-12-12 02:47:56'),
(158, 0, 0, 0, 'OFF', '2019-12-12 02:47:58'),
(159, 0, 0, 0, 'OFF', '2019-12-12 02:48:08'),
(160, 0, 0, 0, 'OFF', '2019-12-12 02:48:09'),
(161, 0, 0, 0, 'OFF', '2019-12-12 02:48:49'),
(162, 0, 0, 0, 'OFF', '2019-12-12 02:48:50'),
(163, 0, 0, 0, 'OFF', '2019-12-12 02:49:00'),
(164, 0, 0, 0, 'OFF', '2019-12-12 02:49:02'),
(165, 0, 0, 0, 'OFF', '2019-12-12 02:49:12'),
(166, 0, 0, 0, 'OFF', '2019-12-12 02:49:15'),
(167, 0, 0, 0, 'OFF', '2019-12-12 02:49:25'),
(168, 0, 0, 0, 'OFF', '2019-12-12 02:49:25'),
(169, 0, 0, 1, 'OFF', '2019-12-12 02:49:35'),
(170, 0, 0, 1, 'OFF', '2019-12-12 02:49:36'),
(171, 0, 0, 61, 'OFF', '2019-12-12 02:49:46'),
(172, 0, 0, 64, 'OFF', '2019-12-12 02:49:46'),
(173, 0, 0, 10, 'OFF', '2019-12-12 02:49:56'),
(174, 0, 0, 5, 'OFF', '2019-12-12 02:49:56'),
(175, 0, 0, 0, 'ON', '2019-12-12 02:58:01'),
(176, 0, 0, 0, 'ON', '2019-12-12 02:58:02'),
(177, 0, 0, 0, 'ON', '2019-12-12 02:58:12'),
(178, 0, 0, 0, 'ON', '2019-12-12 02:58:12'),
(179, 0, 0, 0, 'ON', '2019-12-12 02:58:22'),
(180, 0, 0, 0, 'ON', '2019-12-12 02:58:23'),
(181, 0, 0, 0, 'ON', '2019-12-12 02:58:33'),
(182, 0, 0, 0, 'ON', '2019-12-12 02:58:33'),
(183, 0, 0, 44, 'ON', '2019-12-12 02:58:43'),
(184, 0, 0, 45, 'ON', '2019-12-12 02:58:43'),
(185, 0, 0, 58, 'OFF', '2019-12-12 02:58:53'),
(186, 0, 0, 57, 'OFF', '2019-12-12 02:58:54'),
(187, 0, 0, 0, 'ON', '2019-12-12 02:59:04'),
(188, 0, 0, 0, 'ON', '2019-12-12 02:59:05'),
(189, 0, 0, 0, 'ON', '2019-12-12 02:59:15'),
(190, 0, 0, 0, 'ON', '2019-12-12 02:59:17'),
(191, 0, 0, 0, 'ON', '2019-12-12 02:59:27'),
(192, 0, 0, 0, 'ON', '2019-12-12 02:59:31'),
(193, 0, 0, 0, 'ON', '2019-12-12 02:59:41'),
(194, 0, 0, 0, 'ON', '2019-12-12 02:59:44'),
(195, 0, 0, 0, 'ON', '2019-12-12 02:59:54'),
(196, 0, 0, 0, 'ON', '2019-12-12 02:59:56'),
(197, 0, 0, 0, 'ON', '2019-12-12 03:00:06'),
(198, 0, 0, 0, 'ON', '2019-12-12 03:00:08'),
(199, 0, 0, 0, 'ON', '2019-12-12 03:05:29'),
(200, 0, 0, 0, 'ON', '2019-12-12 03:05:31'),
(201, 0, 0, 0, 'ON', '2019-12-12 03:05:41'),
(202, 0, 0, 0, 'ON', '2019-12-12 03:05:41'),
(203, 0, 0, 0, 'ON', '2019-12-12 03:05:51'),
(204, 0, 0, 0, 'ON', '2019-12-12 03:05:52'),
(205, 0, 0, 0, 'ON', '2019-12-12 03:06:02'),
(206, 0, 0, 0, 'ON', '2019-12-12 03:06:03'),
(207, 0, 0, 0, 'ON', '2019-12-12 03:06:13'),
(208, 0, 0, 0, 'ON', '2019-12-12 03:06:13'),
(209, 0, 0, 0, 'ON', '2019-12-12 03:06:23'),
(210, 0, 0, 0, 'ON', '2019-12-12 03:06:24'),
(211, 0, 0, 0, 'ON', '2019-12-12 03:06:34'),
(212, 0, 0, 0, 'ON', '2019-12-12 03:06:35'),
(213, 0, 0, 0, 'ON', '2019-12-12 03:06:44'),
(214, 0, 0, 0, 'ON', '2019-12-12 03:06:45'),
(215, 0, 0, 0, 'ON', '2019-12-12 03:06:55'),
(216, 0, 0, 0, 'ON', '2019-12-12 03:06:57'),
(217, 0, 0, 0, 'OFF', '2019-12-12 03:06:59'),
(218, 0, 0, 0, 'ON', '2019-12-12 03:06:59'),
(219, 0, 0, 0, 'OFF', '2019-12-12 03:07:00'),
(220, 0, 0, 0, 'ON', '2019-12-12 03:07:02'),
(221, 0, 0, 0, 'OFF', '2019-12-12 03:07:03'),
(222, 0, 0, 0, 'ON', '2019-12-12 03:07:03'),
(223, 0, 0, 0, 'ON', '2019-12-12 03:07:18'),
(224, 0, 0, 0, 'ON', '2019-12-12 03:07:19'),
(225, 0, 0, 0, 'OFF', '2019-12-12 03:07:27'),
(226, 0, 0, 0, 'ON', '2019-12-12 03:07:27'),
(227, 0, 0, 0, 'ON', '2019-12-12 03:07:29'),
(228, 0, 0, 0, 'ON', '2019-12-12 03:07:30'),
(229, 0, 0, 0, 'ON', '2019-12-12 03:07:40'),
(230, 0, 0, 0, 'ON', '2019-12-12 03:07:41'),
(231, 0, 0, 0, 'ON', '2019-12-12 03:07:51'),
(232, 0, 0, 0, 'ON', '2019-12-12 03:07:51'),
(233, 0, 0, 0, 'ON', '2019-12-12 03:08:01'),
(234, 0, 0, 0, 'ON', '2019-12-12 03:08:02'),
(235, 0, 0, 0, 'ON', '2019-12-12 03:08:12'),
(236, 0, 0, 0, 'ON', '2019-12-12 03:08:13'),
(237, 0, 0, 0, 'ON', '2019-12-12 03:08:24'),
(238, 0, 0, 0, 'ON', '2019-12-12 03:08:24'),
(239, 0, 0, 0, 'ON', '2019-12-12 03:08:35'),
(240, 0, 0, 0, 'ON', '2019-12-12 03:08:36'),
(241, 0, 0, 0, 'ON', '2019-12-12 03:08:46'),
(242, 0, 0, 0, 'ON', '2019-12-12 03:08:47'),
(243, 0, 0, 0, 'ON', '2019-12-12 03:09:20'),
(244, 0, 0, 0, 'ON', '2019-12-12 03:09:21'),
(245, 0, 0, 0, 'ON', '2019-12-12 03:09:31'),
(246, 0, 0, 0, 'ON', '2019-12-12 03:09:33'),
(247, 0, 0, 0, 'ON', '2019-12-12 03:09:41'),
(248, 0, 0, 0, 'ON', '2019-12-12 03:09:42'),
(249, 0, 0, 0, 'ON', '2019-12-12 03:09:43'),
(250, 0, 0, 0, 'ON', '2019-12-12 03:09:43'),
(251, 0, 0, 0, 'OFF', '2019-12-12 03:09:45'),
(252, 0, 0, 0, 'ON', '2019-12-12 03:09:46'),
(253, 0, 0, 0, 'ON', '2019-12-12 03:09:53'),
(254, 0, 0, 0, 'ON', '2019-12-12 03:09:53'),
(255, 0, 0, 0, 'ON', '2019-12-12 03:09:53'),
(256, 0, 0, 0, 'ON', '2019-12-12 03:09:56'),
(257, 0, 0, 0, 'ON', '2019-12-12 03:09:59'),
(258, 0, 0, 0, 'ON', '2019-12-12 03:10:00'),
(259, 0, 0, 0, 'ON', '2019-12-12 03:10:04'),
(260, 0, 0, 0, 'ON', '2019-12-12 03:10:04'),
(261, 0, 0, 0, 'ON', '2019-12-12 03:10:30'),
(262, 0, 0, 0, 'ON', '2019-12-12 03:10:30'),
(263, 0, 0, 0, 'ON', '2019-12-12 03:10:40'),
(264, 0, 0, 0, 'ON', '2019-12-12 03:10:41'),
(265, 0, 0, 0, 'ON', '2019-12-12 03:10:51'),
(266, 0, 0, 0, 'ON', '2019-12-12 03:10:51'),
(267, 0, 0, 0, 'ON', '2019-12-12 03:11:01'),
(268, 0, 0, 0, 'ON', '2019-12-12 03:11:02'),
(269, 0, 0, 0, 'ON', '2019-12-12 03:11:12'),
(270, 0, 0, 0, 'ON', '2019-12-12 03:11:13'),
(271, 0, 0, 0, 'ON', '2019-12-12 03:11:23'),
(272, 0, 0, 0, 'ON', '2019-12-12 03:11:24'),
(273, 0, 0, 0, 'ON', '2019-12-12 03:11:34'),
(274, 0, 0, 0, 'ON', '2019-12-12 03:11:35'),
(275, 0, 0, 0, 'ON', '2019-12-12 03:11:45'),
(276, 0, 0, 0, 'ON', '2019-12-12 03:11:46'),
(277, 0, 0, 0, 'ON', '2019-12-12 03:11:56'),
(278, 0, 0, 0, 'ON', '2019-12-12 03:11:57'),
(279, 0, 0, 0, 'OFF', '2019-12-12 03:18:08'),
(280, 0, 0, 0, 'OFF', '2019-12-12 03:18:09'),
(281, 0, 0, 0, 'OFF', '2019-12-12 03:18:19'),
(282, 0, 0, 0, 'OFF', '2019-12-12 03:18:19'),
(283, 0, 0, 56, 'OFF', '2019-12-12 03:18:29'),
(284, 0, 0, 56, 'OFF', '2019-12-12 03:18:30'),
(285, 0, 0, 56, 'OFF', '2019-12-12 03:18:40'),
(286, 0, 0, 56, 'OFF', '2019-12-12 03:18:40'),
(287, 0, 0, 53, 'OFF', '2019-12-12 03:18:50'),
(288, 0, 0, 53, 'OFF', '2019-12-12 03:18:51'),
(289, 0, 0, 50, 'OFF', '2019-12-12 03:19:18'),
(290, 0, 0, 50, 'OFF', '2019-12-12 03:19:18'),
(291, 0, 0, 0, 'OFF', '2019-12-12 03:20:30'),
(292, 0, 0, 0, 'OFF', '2019-12-12 03:20:32'),
(293, 0, 0, 54, 'OFF', '2019-12-12 03:20:42'),
(294, 0, 0, 56, 'OFF', '2019-12-12 03:20:44'),
(295, 0, 0, 55, 'OFF', '2019-12-12 03:20:54'),
(296, 0, 0, 50, 'OFF', '2019-12-12 03:20:56'),
(297, 0, 0, 47, 'OFF', '2019-12-12 03:21:06'),
(298, 0, 0, 56, 'OFF', '2019-12-12 03:21:06'),
(299, 0, 0, 59, 'OFF', '2019-12-12 03:21:16'),
(300, 0, 0, 59, 'OFF', '2019-12-12 03:21:16'),
(301, 0, 0, 0, 'OFF', '2019-12-12 03:23:47'),
(302, 0, 0, 0, 'OFF', '2019-12-12 03:23:48'),
(303, 0, 0, 57, 'ON', '2019-12-12 03:23:58'),
(304, 0, 0, 58, 'ON', '2019-12-12 03:23:59'),
(305, 0, 0, 59, 'ON', '2019-12-12 03:24:09'),
(306, 0, 0, 59, 'ON', '2019-12-12 03:24:09'),
(307, 0, 0, 0, 'OFF', '2019-12-12 03:24:19'),
(308, 0, 0, 0, 'OFF', '2019-12-12 03:24:19'),
(309, 0, 0, 0, 'OFF', '2019-12-12 03:24:29'),
(310, 0, 0, 0, 'OFF', '2019-12-12 03:24:30'),
(311, 0, 0, 0, 'OFF', '2019-12-12 03:24:40'),
(312, 0, 0, 0, 'OFF', '2019-12-12 03:24:40'),
(313, 0, 0, 0, 'OFF', '2019-12-12 03:24:50'),
(314, 0, 0, 0, 'OFF', '2019-12-12 03:24:50'),
(315, 0, 0, 0, 'OFF', '2019-12-12 03:25:00'),
(316, 0, 0, 0, 'OFF', '2019-12-12 03:25:01'),
(317, 0, 0, 0, 'OFF', '2019-12-12 03:25:11'),
(318, 0, 0, 0, 'OFF', '2019-12-12 03:25:11'),
(319, 0, 0, 0, 'OFF', '2019-12-12 03:25:21'),
(320, 0, 0, 0, 'OFF', '2019-12-12 03:25:22'),
(321, 0, 0, 23, 'ON', '2019-12-12 03:26:45'),
(322, 0, 0, 23, 'ON', '2019-12-12 03:26:46'),
(323, 0, 0, 38, 'ON', '2019-12-12 03:26:55'),
(324, 0, 0, 39, 'ON', '2019-12-12 03:26:56'),
(325, 0, 0, 39, 'ON', '2019-12-12 03:27:06'),
(326, 0, 0, 39, 'ON', '2019-12-12 03:27:06'),
(327, 0, 0, 64, 'OFF', '2019-12-12 03:27:16'),
(328, 0, 0, 64, 'OFF', '2019-12-12 03:27:17'),
(329, 65, 25.9, 57, 'OFF', '2019-12-12 05:10:30'),
(330, 65, 25.9, 57, 'OFF', '2019-12-12 05:10:31'),
(331, 50, 25.5, 57, 'OFF', '2019-12-12 05:10:41'),
(332, 50, 25.5, 56, 'OFF', '2019-12-12 05:10:42'),
(333, 47, 25.6, 56, 'OFF', '2019-12-12 05:10:52'),
(334, 48, 25.6, 56, 'OFF', '2019-12-12 05:10:54'),
(335, 48, 25.6, 55, 'OFF', '2019-12-12 05:11:04'),
(336, 48, 25.6, 55, 'OFF', '2019-12-12 05:11:06'),
(337, 48, 25.5, 55, 'OFF', '2019-12-12 05:11:06'),
(338, 48, 25.5, 55, 'OFF', '2019-12-12 05:11:08'),
(339, 48, 25.6, 55, 'OFF', '2019-12-12 05:11:09'),
(340, 48, 25.6, 55, 'ON', '2019-12-12 05:11:19'),
(341, 48, 25.6, 55, 'ON', '2019-12-12 05:11:20'),
(342, 48, 25.6, 54, 'ON', '2019-12-12 05:11:30'),
(343, 48, 25.6, 54, 'ON', '2019-12-12 05:11:31'),
(344, 49, 25.6, 54, 'ON', '2019-12-12 05:11:41'),
(345, 49, 25.6, 54, 'ON', '2019-12-12 05:11:43'),
(346, 47, 25.5, 50, 'ON', '2019-12-12 05:14:07'),
(347, 51, 25.4, 50, 'ON', '2019-12-12 05:14:10'),
(348, 0, 0, 100, 'OFF', '2019-12-17 06:32:03'),
(349, 0, 0, 100, 'OFF', '2019-12-17 06:32:04'),
(350, 0, 0, 100, 'OFF', '2019-12-17 06:32:15'),
(351, 0, 0, 100, 'OFF', '2019-12-17 06:32:15'),
(352, 0, 0, 100, 'OFF', '2019-12-17 06:32:25'),
(353, 0, 0, 100, 'OFF', '2019-12-17 06:32:27'),
(354, 0, 0, 100, 'OFF', '2019-12-17 06:32:37'),
(355, 0, 0, 100, 'OFF', '2019-12-17 06:32:37'),
(356, 0, 0, 100, 'OFF', '2019-12-17 06:32:47'),
(357, 0, 0, 100, 'OFF', '2019-12-17 06:32:48'),
(358, 0, 0, 100, 'OFF', '2019-12-17 06:32:58'),
(359, 0, 0, 100, 'OFF', '2019-12-17 06:32:58'),
(360, 0, 0, 100, 'OFF', '2019-12-17 06:33:08'),
(361, 0, 0, 100, 'OFF', '2019-12-17 06:33:08'),
(362, 0, 0, 100, 'OFF', '2019-12-17 06:33:18'),
(363, 0, 0, 100, 'OFF', '2019-12-17 06:33:19'),
(364, 0, 0, 100, 'OFF', '2019-12-17 06:33:29'),
(365, 0, 0, 100, 'OFF', '2019-12-17 06:33:29'),
(366, 0, 0, 100, 'OFF', '2019-12-17 06:33:39'),
(367, 0, 0, 100, 'OFF', '2019-12-17 06:33:40'),
(368, 0, 0, 100, 'OFF', '2019-12-17 06:33:50'),
(369, 0, 0, 99, 'OFF', '2019-12-17 06:33:50'),
(370, 0, 0, 100, 'OFF', '2019-12-17 06:34:00'),
(371, 0, 0, 100, 'OFF', '2019-12-17 06:34:00'),
(372, 0, 0, 100, 'OFF', '2019-12-17 06:34:10'),
(373, 0, 0, 100, 'OFF', '2019-12-17 06:34:11'),
(374, 0, 0, 100, 'OFF', '2019-12-17 06:34:34'),
(375, 0, 0, 100, 'OFF', '2019-12-17 06:45:30'),
(376, 0, 0, 100, 'OFF', '2019-12-17 06:45:30'),
(377, 0, 0, 100, 'OFF', '2019-12-17 06:45:40'),
(378, 0, 0, 100, 'OFF', '2019-12-17 06:45:41'),
(379, 0, 0, 100, 'OFF', '2019-12-17 06:45:51'),
(380, 0, 0, 100, 'OFF', '2019-12-17 06:45:53'),
(381, 0, 0, 100, 'OFF', '2019-12-17 06:46:03'),
(382, 0, 0, 100, 'OFF', '2019-12-17 06:46:03'),
(383, 0, 0, 100, 'OFF', '2019-12-17 06:46:13'),
(384, 0, 0, 100, 'OFF', '2019-12-17 06:46:15'),
(385, 0, 0, 100, 'OFF', '2019-12-17 06:46:25'),
(386, 0, 0, 100, 'OFF', '2019-12-17 06:46:26'),
(387, 0, 0, 100, 'OFF', '2019-12-17 06:46:36'),
(388, 0, 0, 100, 'OFF', '2019-12-17 06:46:36'),
(389, 0, 0, 100, 'OFF', '2019-12-17 06:46:47'),
(390, 0, 0, 100, 'OFF', '2019-12-17 06:46:47'),
(391, 0, 0, 100, 'OFF', '2019-12-17 06:46:58'),
(392, 0, 0, 100, 'OFF', '2019-12-17 06:46:58'),
(393, 0, 0, 100, 'OFF', '2019-12-17 06:47:08'),
(394, 0, 0, 100, 'OFF', '2019-12-17 06:47:09'),
(395, 0, 0, 100, 'OFF', '2019-12-17 06:47:19'),
(396, 0, 0, 100, 'OFF', '2019-12-17 06:47:20'),
(397, 0, 0, 100, 'OFF', '2019-12-17 06:47:30'),
(398, 0, 0, 100, 'OFF', '2019-12-17 06:47:31'),
(399, 0, 0, 100, 'OFF', '2019-12-17 07:12:42'),
(400, 0, 0, 100, 'OFF', '2019-12-17 07:12:44'),
(401, 0, 0, 100, 'OFF', '2019-12-17 07:12:54'),
(402, 0, 0, 100, 'OFF', '2019-12-17 07:12:55'),
(403, 72, 30, 0, 'ON', '2019-12-17 07:15:41'),
(404, 72, 30, 0, 'ON', '2019-12-17 07:15:42'),
(405, 74, 30, 0, 'ON', '2019-12-17 07:15:52'),
(406, 74, 30, 0, 'ON', '2019-12-17 07:15:52'),
(407, 71, 30, 0, 'ON', '2019-12-17 07:16:02'),
(408, 71, 30, 0, 'ON', '2019-12-17 07:16:03'),
(409, 71, 30, 0, 'ON', '2019-12-17 07:16:12'),
(410, 71, 30, 0, 'ON', '2019-12-17 07:16:13'),
(411, 71, 30, 0, 'ON', '2019-12-17 07:16:23'),
(412, 71, 30, 0, 'ON', '2019-12-17 07:16:23'),
(413, 71, 30, 0, 'ON', '2019-12-17 07:16:33'),
(414, 71, 30, 0, 'ON', '2019-12-17 07:16:34'),
(415, 71, 30, 0, 'ON', '2019-12-17 07:16:44'),
(416, 71, 30, 0, 'ON', '2019-12-17 07:16:44'),
(417, 71, 30, 0, 'ON', '2019-12-17 07:16:54'),
(418, 71, 30, 0, 'ON', '2019-12-17 07:16:54'),
(419, 71, 30, 0, 'ON', '2019-12-17 07:17:04'),
(420, 71, 30, 0, 'ON', '2019-12-17 07:17:05'),
(421, 71, 30, 26, 'ON', '2019-12-17 07:17:15'),
(422, 71, 30, 25, 'ON', '2019-12-17 07:17:15'),
(423, 70, 30, 22, 'ON', '2019-12-17 07:17:25'),
(424, 70, 30, 22, 'ON', '2019-12-17 07:17:25'),
(425, 70, 30, 22, 'ON', '2019-12-17 07:17:35'),
(426, 70, 30, 22, 'ON', '2019-12-17 07:17:36'),
(427, 70, 30, 22, 'ON', '2019-12-17 07:17:46'),
(428, 70, 30, 22, 'ON', '2019-12-17 07:17:46'),
(429, 70, 30, 21, 'ON', '2019-12-17 07:17:56'),
(430, 70, 30, 22, 'ON', '2019-12-17 07:17:56'),
(431, 70, 30, 19, 'ON', '2019-12-17 07:18:02'),
(432, 70, 30, 18, 'ON', '2019-12-17 07:18:03'),
(433, 70, 30, 20, 'ON', '2019-12-17 07:18:05'),
(434, 70, 30, 20, 'ON', '2019-12-17 07:18:05'),
(435, 70, 30, 0, 'ON', '2019-12-17 07:18:15'),
(436, 70, 30, 12, 'ON', '2019-12-17 07:18:15'),
(437, 70, 30, 0, 'ON', '2019-12-17 07:19:38'),
(438, 73, 30, 0, 'ON', '2019-12-17 07:20:21'),
(439, 73, 30, 0, 'ON', '2019-12-17 07:20:21'),
(440, 73, 30, 16, 'ON', '2019-12-17 07:20:32'),
(441, 73, 30, 16, 'ON', '2019-12-17 07:20:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dht11`
--
ALTER TABLE `dht11`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dht11`
--
ALTER TABLE `dht11`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=442;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
