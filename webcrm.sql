-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : mer. 15 déc. 2021 à 16:41
-- Version du serveur : 10.6.4-MariaDB
-- Version de PHP : 7.4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `webcrm`
--

-- --------------------------------------------------------

--
-- Structure de la table `actions`
--

CREATE TABLE `actions` (
  `action_id` int(11) NOT NULL,
  `action_label` varchar(255) NOT NULL,
  `action_date` datetime NOT NULL,
  `action_user` int(11) NOT NULL,
  `active` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `actions`
--

INSERT INTO `actions` (`action_id`, `action_label`, `action_date`, `action_user`, `active`) VALUES
(1, 'CREATE CONTACT', '2021-06-23 15:06:34', 1, 1),
(2, 'CREATE MISSION', '2021-06-23 16:06:25', 1, 1),
(3, 'LOGIN TO DASHBOARD', '2021-06-24 09:06:28', 1, 1),
(4, 'LOGIN TO DASHBOARD', '2021-06-24 10:06:50', 1, 1),
(5, 'LOGIN TO DASHBOARD', '2021-06-24 15:06:55', 1, 1),
(6, 'CREATE MISSION', '2021-06-24 17:06:23', 1, 1),
(7, 'LOGIN TO DASHBOARD', '2021-06-25 09:06:04', 1, 1),
(8, 'LOGIN TO DASHBOARD', '2021-06-28 09:06:23', 1, 1),
(9, 'CREATE MISSION', '2021-06-28 09:06:15', 1, 1),
(10, 'CREATE MISSION', '2021-06-28 09:06:48', 1, 1),
(11, 'LOGIN TO DASHBOARD', '2021-06-29 09:06:48', 1, 1),
(12, 'CREATE CONTACT', '2021-06-29 09:06:14', 1, 1),
(13, 'CREATE CONTACT', '2021-06-29 09:06:18', 1, 1),
(14, 'CREATE CONTACT', '2021-06-29 09:06:46', 1, 1),
(15, 'CREATE CONTACT', '2021-06-29 09:06:39', 1, 1),
(16, 'CREATE CONTACT', '2021-06-29 10:06:23', 1, 1),
(17, 'LOGIN TO DASHBOARD', '2021-06-30 09:06:05', 1, 1),
(18, 'SEND EMAIL TO philippe.moreau@jiscomputing.com', '2021-06-30 11:36:45', 1, 1),
(19, 'SEND EMAIL TO philippe.moreau@jiscomputing.com', '2021-06-30 15:17:33', 1, 1),
(20, 'LOGIN TO DASHBOARD', '2021-07-01 08:07:45', 1, 1),
(21, 'SEND EMAIL TO philippe.moreau@jiscomputing.com', '2021-07-01 09:42:06', 1, 1),
(22, 'SEND EMAIL TO philippe.moreau@jiscomputing.com', '2021-07-01 09:48:56', 1, 1),
(23, 'CREATE MISSION', '2021-07-01 15:07:08', 1, 1),
(24, 'CREATE NEW USER', '2021-07-01 16:07:01', 1, 1),
(25, 'CREATE NEW USER', '2021-07-01 16:07:09', 1, 1),
(26, 'CREATE NEW USER', '2021-07-01 16:07:25', 1, 1),
(27, 'CREATE NEW USER', '2021-07-01 16:07:38', 1, 1),
(28, 'CREATE NEW USER', '2021-07-01 16:07:16', 1, 1),
(29, 'CREATE NEW USER', '2021-07-01 16:07:27', 1, 1),
(30, 'CREATE NEW USER', '2021-07-01 16:07:14', 1, 1),
(31, 'SEND EMAIL TO philippe.moreau@jiscomputing.com', '2021-07-01 17:49:43', 1, 1),
(32, 'LOGIN TO DASHBOARD', '2021-07-02 09:07:17', 1, 1),
(33, 'SEND EMAIL TO philippe.moreau@jiscomputing.com', '2021-07-02 09:30:31', 1, 1),
(34, 'SEND EMAIL TO philippe.moreau@jiscomputing.com', '2021-07-02 09:35:44', 1, 1),
(35, 'LOGIN TO DASHBOARD', '2021-07-02 10:07:43', 1, 1),
(36, 'CREATE NEW USER', '2021-07-02 10:07:11', 1, 1),
(37, 'LOGIN TO DASHBOARD', '2021-07-02 10:07:25', 1, 1),
(38, 'CREATE NEW USER', '2021-07-02 10:07:42', 1, 1),
(39, 'LOGIN TO DASHBOARD', '2021-07-02 10:07:18', 12, 1),
(40, 'LOGIN TO DASHBOARD', '2021-07-02 11:07:35', 1, 1),
(41, 'LOGIN TO DASHBOARD', '2021-07-02 11:07:39', 1, 1),
(42, 'LOGIN TO DASHBOARD', '2021-07-02 11:07:30', 1, 1),
(43, 'LOGIN TO DASHBOARD', '2021-07-02 11:07:18', 1, 1),
(44, 'LOGIN TO DASHBOARD', '2021-07-02 11:07:56', 1, 1),
(45, 'LOGIN TO DASHBOARD', '2021-07-02 11:07:11', 1, 1),
(46, 'LOGIN TO DASHBOARD', '2021-07-02 11:07:52', 1, 1),
(47, 'LOGIN TO DASHBOARD', '2021-07-02 11:07:58', 1, 1),
(48, 'LOGIN TO DASHBOARD', '2021-07-02 11:07:21', 1, 1),
(49, 'LOGIN TO DASHBOARD', '2021-07-02 11:07:07', 1, 1),
(50, 'LOGIN TO DASHBOARD', '2021-07-02 12:07:15', 12, 1),
(51, 'CREATE MISSION', '2021-07-02 12:07:39', 12, 1),
(52, 'LOGIN TO DASHBOARD', '2021-07-02 12:07:02', 1, 1),
(53, 'LOGIN TO DASHBOARD', '2021-07-05 08:07:47', 1, 1),
(54, 'CREATE NEW USER', '2021-07-05 09:07:57', 1, 1),
(55, 'CREATE NEW USER', '2021-07-05 09:07:08', 1, 1),
(56, 'LOGIN TO DASHBOARD', '2021-07-05 09:07:30', 1, 1),
(57, 'LOGIN TO DASHBOARD', '2021-07-05 11:07:18', 1, 1),
(58, 'LOGIN TO DASHBOARD', '2021-07-05 11:07:21', 1, 1),
(59, 'LOGIN TO DASHBOARD', '2021-07-05 13:07:25', 1, 1),
(60, 'LOGIN TO DASHBOARD', '2021-07-05 13:07:18', 1, 1),
(61, 'LOGIN TO DASHBOARD', '2021-07-06 09:07:19', 1, 1),
(62, 'LOGIN TO DASHBOARD', '2021-07-06 10:07:22', 1, 1),
(63, 'CREATE MISSION', '2021-07-06 10:07:21', 1, 1),
(64, 'LOGIN TO DASHBOARD', '2021-07-06 10:07:14', 1, 1),
(65, 'LOGIN TO DASHBOARD', '2021-07-06 10:07:26', 12, 1),
(66, 'LOGIN TO DASHBOARD', '2021-07-06 10:07:47', 1, 1),
(67, 'LOGIN TO DASHBOARD', '2021-07-06 11:07:52', 1, 1),
(68, 'LOGIN TO DASHBOARD', '2021-07-06 13:07:55', 1, 1),
(69, 'LOGIN TO DASHBOARD', '2021-07-06 15:07:00', 1, 1),
(70, 'LOGIN TO DASHBOARD', '2021-07-06 16:07:30', 1, 1),
(71, 'LOGIN TO DASHBOARD', '2021-07-06 16:07:35', 1, 1),
(72, 'LOGIN TO DASHBOARD', '2021-07-06 16:07:50', 1, 1),
(73, 'LOGIN TO DASHBOARD', '2021-07-06 16:07:24', 12, 1),
(74, 'SEND EMAIL TO philippe.moreau@jiscomputing.com', '2021-07-06 16:58:47', 12, 1),
(75, 'LOGIN TO DASHBOARD', '2021-07-07 09:07:50', 1, 1),
(76, 'LOGIN TO DASHBOARD', '2021-07-07 09:07:16', 1, 1),
(77, 'LOGIN TO DASHBOARD', '2021-07-07 09:07:39', 12, 1),
(78, 'LOGIN TO DASHBOARD', '2021-07-07 09:07:00', 1, 1),
(79, 'LOGIN TO DASHBOARD', '2021-07-07 09:07:23', 1, 1),
(80, 'LOGIN TO DASHBOARD', '2021-07-07 09:07:41', 1, 1),
(81, 'LOGIN TO DASHBOARD', '2021-07-07 09:07:41', 1, 1),
(82, 'LOGIN TO DASHBOARD', '2021-07-07 09:07:02', 1, 1),
(83, 'LOGIN TO DASHBOARD', '2021-07-07 09:07:31', 1, 1),
(84, 'LOGIN TO DASHBOARD', '2021-07-07 09:07:06', 1, 1),
(85, 'LOGIN TO DASHBOARD', '2021-07-07 09:07:23', 1, 1),
(86, 'LOGIN TO DASHBOARD', '2021-07-07 09:07:03', 1, 1),
(87, 'SEND EMAIL TO philippe.moreau@jiscomputing.com', '2021-07-07 09:57:53', 1, 1),
(88, 'SEND EMAIL TO philippe.moreau@jiscomputing.com', '2021-07-07 10:18:09', 1, 1),
(89, 'SEND EMAIL TO philippe.moreau@jiscomputing.com', '2021-07-07 10:19:05', 1, 1),
(90, 'SEND EMAIL TO philippe.moreau@jiscomputing.com', '2021-07-07 10:30:16', 1, 1),
(91, 'SEND EMAIL TO philippe.moreau@jiscomputing.com', '2021-07-07 10:30:49', 1, 1),
(92, 'LOGIN TO DASHBOARD', '2021-07-07 10:07:16', 1, 1),
(93, 'LOGIN TO DASHBOARD', '2021-07-07 10:07:26', 1, 1),
(94, 'LOGIN TO DASHBOARD', '2021-07-07 11:07:47', 1, 1),
(95, 'LOGIN TO DASHBOARD', '2021-07-07 11:07:46', 1, 1),
(96, 'LOGIN TO DASHBOARD', '2021-07-07 11:07:46', 1, 1),
(97, 'LOGIN TO DASHBOARD', '2021-07-07 11:07:11', 1, 1),
(98, 'LOGIN TO DASHBOARD', '2021-07-07 11:07:00', 1, 1),
(99, 'LOGIN TO DASHBOARD', '2021-07-07 11:07:28', 1, 1),
(100, 'LOGIN TO DASHBOARD', '2021-07-07 11:07:52', 1, 1),
(101, 'LOGIN TO DASHBOARD', '2021-07-07 11:07:10', 1, 1),
(102, 'LOGIN TO DASHBOARD', '2021-07-07 11:07:28', 1, 1),
(103, 'LOGIN TO DASHBOARD', '2021-07-07 12:07:31', 1, 1),
(104, 'LOGIN TO DASHBOARD', '2021-07-07 12:07:53', 1, 1),
(105, 'LOGIN TO DASHBOARD', '2021-07-07 12:07:26', 1, 1),
(106, 'LOGIN TO DASHBOARD', '2021-07-07 12:07:14', 1, 1),
(107, 'LOGIN TO DASHBOARD', '2021-07-07 12:07:03', 1, 1),
(108, 'LOGIN TO DASHBOARD', '2021-07-07 12:07:18', 1, 1),
(109, 'LOGIN TO DASHBOARD', '2021-07-07 12:07:26', 1, 1),
(110, 'LOGIN TO DASHBOARD', '2021-07-07 12:07:19', 1, 1),
(111, 'LOGIN TO DASHBOARD', '2021-07-07 12:07:56', 1, 1),
(112, 'LOGIN TO DASHBOARD', '2021-07-07 12:07:59', 1, 1),
(113, 'LOGIN TO DASHBOARD', '2021-07-07 13:07:21', 1, 1),
(114, 'LOGIN TO DASHBOARD', '2021-07-07 13:07:22', 1, 1),
(115, 'LOGIN TO DASHBOARD', '2021-07-08 09:07:04', 1, 1),
(116, 'LOGIN TO DASHBOARD', '2021-07-08 11:07:14', 1, 1),
(117, 'LOGIN TO DASHBOARD', '2021-07-08 11:07:40', 1, 1),
(118, 'LOGIN TO DASHBOARD', '2021-07-08 11:07:50', 1, 1),
(119, 'LOGIN TO DASHBOARD', '2021-07-08 11:07:14', 1, 1),
(120, 'LOGIN TO DASHBOARD', '2021-07-08 11:07:55', 1, 1),
(121, 'LOGIN TO DASHBOARD', '2021-07-08 11:07:20', 1, 1),
(122, 'LOGIN TO DASHBOARD', '2021-07-08 11:07:37', 1, 1),
(123, 'LOGIN TO DASHBOARD', '2021-07-08 11:07:38', 1, 1),
(124, 'SEND EMAIL TO philippe.moreau@jiscomputing.com', '2021-07-08 11:27:14', 1, 1),
(125, 'LOGIN TO DASHBOARD', '2021-07-08 11:07:05', 1, 1),
(126, 'LOGIN TO DASHBOARD', '2021-07-08 12:07:47', 1, 1),
(127, 'LOGIN TO DASHBOARD', '2021-07-08 16:07:35', 1, 1),
(128, 'LOGIN TO DASHBOARD', '2021-07-08 16:07:47', 1, 1),
(129, 'CREATE CONTACT', '2021-07-08 16:07:54', 1, 1),
(130, 'CREATE CONTACT', '2021-07-08 18:07:55', 1, 1),
(131, 'LOGIN TO DASHBOARD', '2021-07-09 09:07:05', 1, 1),
(132, 'LOGIN TO DASHBOARD', '2021-07-15 09:07:13', 1, 1),
(133, 'LOGIN TO DASHBOARD', '2021-07-15 09:07:27', 1, 1),
(134, 'LOGIN TO DASHBOARD', '2021-07-15 09:07:05', 1, 1),
(135, 'LOGIN TO DASHBOARD', '2021-07-15 09:07:58', 1, 1),
(136, 'LOGIN TO DASHBOARD', '2021-07-15 09:07:21', 1, 1),
(137, 'LOGIN TO DASHBOARD', '2021-07-15 09:07:01', 1, 1),
(138, 'LOGIN TO DASHBOARD', '2021-07-15 12:07:31', 12, 1),
(139, 'LOGIN TO DASHBOARD', '2021-07-15 12:07:15', 1, 1),
(140, 'LOGIN TO DASHBOARD', '2021-07-26 12:07:22', 1, 1),
(141, 'LOGIN TO DASHBOARD', '2021-07-26 15:07:19', 1, 1),
(142, 'LOGIN TO DASHBOARD', '2021-07-29 09:07:54', 1, 1),
(143, 'LOGIN TO DASHBOARD', '2021-07-29 11:07:03', 1, 1),
(144, 'LOGIN TO DASHBOARD', '2021-07-29 11:07:50', 1, 1),
(145, 'LOGIN TO DASHBOARD', '2021-07-29 11:07:03', 1, 1),
(146, 'LOGIN TO DASHBOARD', '2021-07-30 09:07:55', 1, 1),
(147, 'LOGIN TO DASHBOARD', '2021-07-30 09:07:02', 1, 1),
(148, 'LOGIN TO DASHBOARD', '2021-07-30 09:07:37', 12, 1),
(149, 'LOGIN TO DASHBOARD', '2021-07-30 10:07:31', 12, 1),
(150, 'LOGIN TO DASHBOARD', '2021-07-30 10:07:05', 12, 1),
(151, 'LOGIN TO DASHBOARD', '2021-07-30 10:07:07', 12, 1),
(152, 'LOGIN TO DASHBOARD', '2021-07-30 10:07:32', 12, 1),
(153, 'LOGIN TO DASHBOARD', '2021-07-30 10:07:20', 12, 1),
(154, 'LOGIN TO DASHBOARD', '2021-07-30 10:07:09', 12, 1),
(155, 'LOGIN TO DASHBOARD', '2021-07-30 11:07:01', 1, 1),
(156, 'LOGIN TO DASHBOARD', '2021-07-30 12:07:59', 1, 1),
(157, 'SEND EMAIL TO ismaeltell94em@gmail.com', '2021-07-30 17:03:07', 1, 1),
(158, 'LOGIN TO DASHBOARD', '2021-08-02 09:08:34', 1, 1),
(159, 'CREATE CONTACT', '2021-08-02 10:08:09', 1, 1),
(160, 'SEND EMAIL TO philippe.moreu@jiscomputing.co', '2021-08-02 10:19:00', 1, 1),
(161, 'SEND EMAIL TO xipizyhovi@mailinator.com', '2021-08-02 10:27:16', 1, 1),
(162, 'SEND EMAIL TO philippe.moreau@jiscomputing.com', '2021-08-02 10:36:47', 1, 1),
(163, 'LOGIN TO DASHBOARD', '2021-08-02 12:08:37', 1, 1),
(164, 'LOGIN TO DASHBOARD', '2021-08-03 10:08:51', 1, 1),
(165, 'LOGIN TO DASHBOARD', '2021-08-03 10:08:32', 1, 1),
(166, 'LOGIN TO DASHBOARD', '2021-08-03 11:08:06', 1, 1),
(167, 'LOGIN TO DASHBOARD', '2021-08-03 17:08:10', 12, 1),
(168, 'LOGIN TO DASHBOARD', '2021-08-04 09:08:13', 12, 1),
(169, 'LOGIN TO DASHBOARD', '2021-08-04 09:08:15', 1, 1),
(170, 'LOGIN TO DASHBOARD', '2021-08-04 10:08:12', 1, 1),
(171, 'LOGIN TO DASHBOARD', '2021-08-04 11:08:26', 1, 1),
(172, 'CREATE NEW USER', '2021-08-04 12:08:17', 1, 1),
(173, 'CREATE MISSION', '2021-08-04 12:08:12', 1, 1),
(174, 'CREATE MISSION', '2021-08-04 13:08:38', 1, 1),
(175, 'LOGIN TO DASHBOARD', '2021-08-04 15:08:46', 12, 1),
(176, 'LOGIN TO DASHBOARD', '2021-08-04 15:08:02', 1, 1),
(177, 'CREATE NEW USER', '2021-08-04 15:08:20', 1, 1),
(178, 'LOGIN TO DASHBOARD', '2021-08-05 09:08:36', 1, 1),
(179, 'CREATE NEW USER', '2021-08-05 13:08:54', 1, 1),
(180, 'CREATE NEW USER', '2021-08-05 13:08:21', 1, 1),
(181, 'LOGIN TO DASHBOARD', '2021-08-09 09:08:57', 1, 1),
(182, 'LOGIN TO DASHBOARD', '2021-08-10 17:08:09', 1, 1),
(183, 'LOGIN TO DASHBOARD', '2021-08-12 09:08:18', 1, 1),
(184, 'CREATE MISSION', '2021-08-12 15:08:25', 1, 1),
(185, 'LOGIN TO DASHBOARD', '2021-08-12 18:08:27', 12, 1),
(186, 'LOGIN TO DASHBOARD', '2021-08-13 09:08:08', 1, 1),
(187, 'LOGIN TO DASHBOARD', '2021-08-16 11:08:33', 1, 1),
(188, 'LOGIN TO DASHBOARD', '2021-08-16 16:08:50', 1, 1),
(189, 'LOGIN TO DASHBOARD', '2021-08-17 09:08:46', 1, 1),
(190, 'SEND EMAIL TO philippe.moreau@jiscomputing.com', '2021-08-17 17:32:43', 1, 1),
(191, 'LOGIN TO DASHBOARD', '2021-08-18 19:08:18', 1, 1),
(192, 'LOGIN TO DASHBOARD', '2021-08-30 09:08:30', 1, 1),
(193, 'CREATE COMPANY', '2021-08-30 11:08:38', 1, 1),
(194, 'CREATE COMPANY', '2021-08-30 11:08:38', 1, 1),
(195, 'CREATE CONTACT', '2021-08-30 12:08:49', 1, 1),
(196, 'CREATE MISSION', '2021-08-30 12:08:06', 1, 1),
(197, 'CREATE COMPANY', '2021-08-30 13:08:51', 1, 1),
(198, 'SEND EMAIL TO philippe.moreau@jiscomputing.com', '2021-08-30 17:50:22', 1, 1),
(199, 'SEND EMAIL TO philippe.moreau@jiscomputing.com', '2021-08-30 17:56:50', 1, 1),
(200, 'SEND EMAIL TO philippe.moreau@jiscomputing.com', '2021-08-30 18:20:17', 1, 1),
(201, 'SEND EMAIL TO philippe.moreau@jiscomputing.com', '2021-08-30 18:22:11', 1, 1),
(202, 'SEND EMAIL TO philippe.moreau@jiscomputing.com', '2021-08-30 18:29:49', 1, 1),
(203, 'SEND EMAIL TO philippe.moreau@jiscomputing.com', '2021-08-30 18:34:59', 1, 1),
(204, 'SEND EMAIL TO philippe.moreau@jiscomputing.com', '2021-08-30 18:37:07', 1, 1),
(205, 'SEND EMAIL TO philippe.moreau@jiscomputing.com', '2021-08-30 18:42:34', 1, 1),
(206, 'LOGIN TO DASHBOARD', '2021-08-31 08:08:37', 1, 1),
(207, 'SEND EMAIL TO philippe.moreau@jiscomputing.com', '2021-08-31 09:01:37', 1, 1),
(208, 'SEND EMAIL TO philippe.moreau@jiscomputing.com', '2021-08-31 09:12:18', 1, 1),
(209, 'SEND EMAIL TO philippe.moreau@jiscomputing.com', '2021-08-31 09:19:43', 1, 1),
(210, 'LOGIN TO DASHBOARD', '2021-08-31 12:08:48', 12, 1),
(211, 'LOGIN TO DASHBOARD', '2021-08-31 13:08:38', 12, 1),
(212, 'SEND EMAIL TO philippe.moreau@jiscomputing.com', '2021-08-31 15:23:47', 1, 1),
(213, 'SEND EMAIL TO philippe.moreau@jiscomputing.com', '2021-08-31 15:52:36', 1, 1),
(214, 'SEND EMAIL TO philippe.moreau@jiscomputing.com', '2021-08-31 15:54:02', 1, 1),
(215, 'SEND EMAIL TO philippe.moreau@jiscomputing.com', '2021-08-31 15:56:09', 1, 1),
(216, 'SEND EMAIL TO philippe.moreau@jiscomputing.com', '2021-08-31 16:21:59', 1, 1),
(217, 'SEND EMAIL TO philippe.moreau@jiscomputing.com', '2021-08-31 16:23:50', 1, 1),
(218, 'SEND EMAIL TO philippe.moreau@jiscomputing.com', '2021-08-31 16:26:47', 1, 1),
(219, 'SEND EMAIL TO philippe.moreau@jiscomputing.com', '2021-08-31 16:29:12', 1, 1),
(220, 'SEND EMAIL TO philippe.moreau@jiscomputing.com', '2021-08-31 16:37:09', 1, 1),
(221, 'SEND EMAIL TO philippe.moreau@jiscomputing.com', '2021-08-31 16:40:10', 1, 1),
(222, 'SEND EMAIL TO philippe.moreau@jiscomputing.com', '2021-08-31 17:26:07', 1, 1),
(223, 'SEND EMAIL TO philippe.moreau@jiscomputing.com', '2021-08-31 17:29:46', 1, 1),
(224, 'LOGIN TO DASHBOARD', '2021-08-31 18:08:31', 1, 1),
(225, 'LOGIN TO DASHBOARD', '2021-08-31 18:08:40', 1, 1),
(226, 'LOGIN TO DASHBOARD', '2021-09-01 11:09:24', 1, 1),
(227, 'SEND EMAIL TO philippe.moreau@jiscomputing.com', '2021-09-01 17:40:48', 1, 1),
(228, 'SEND EMAIL TO philippe.moreau@jiscomputing.com', '2021-09-01 17:42:29', 1, 1),
(229, 'SEND EMAIL TO philippe.moreau@jiscomputing.com', '2021-09-01 17:45:55', 1, 1),
(230, 'LOGIN TO DASHBOARD', '2021-09-02 09:09:39', 1, 1),
(231, 'SEND EMAIL TO philippe.moreau@jiscomputing.com', '2021-09-02 11:56:11', 1, 1),
(232, 'SEND EMAIL TO philippe.moreau@jiscomputing.com', '2021-09-02 12:02:25', 1, 1),
(233, 'SEND EMAIL TO philippe.moreau@jiscomputing.com', '2021-09-02 12:03:09', 1, 1),
(234, 'SEND EMAIL TO philippe.moreau@jiscomputing.com', '2021-09-02 12:05:46', 1, 1),
(235, 'SEND EMAIL TO philippe.moreau@jiscomputing.com', '2021-09-02 12:09:09', 1, 1),
(236, 'SEND EMAIL TO philippe.moreau@jiscomputing.com', '2021-09-02 12:13:30', 1, 1),
(237, 'SEND EMAIL TO philippe.moreau@jiscomputing.com', '2021-09-02 12:15:20', 1, 1),
(238, 'CREATE CONTACT', '2021-09-02 18:09:37', 1, 1),
(239, 'LOGIN TO DASHBOARD', '2021-10-04 11:10:09', 1, 1),
(240, 'LOGIN TO DASHBOARD', '2021-10-06 10:10:45', 1, 1),
(241, 'CREATE COMPANY', '2021-10-06 11:10:47', 1, 1),
(242, 'LOGIN TO DASHBOARD', '2021-10-07 09:10:55', 1, 1),
(243, 'LOGIN TO DASHBOARD', '2021-10-11 09:10:17', 1, 1),
(244, 'CREATE MISSION', '2021-10-11 12:10:16', 1, 1),
(245, 'SEND EMAIL TO nozurowi@mailinator.com', '2021-10-11 15:50:47', 1, 1),
(246, 'LOGIN TO DASHBOARD', '2021-10-11 19:10:01', 1, 1),
(247, 'LOGIN TO DASHBOARD', '2021-10-13 09:10:40', 1, 1),
(248, 'LOGIN TO DASHBOARD', '2021-10-13 09:10:32', 1, 1),
(249, 'LOGIN TO DASHBOARD', '2021-10-13 11:10:46', 1, 1),
(250, 'LOGIN TO DASHBOARD', '2021-10-25 09:10:49', 1, 1),
(251, 'LOGIN TO DASHBOARD', '2021-10-25 14:10:18', 1, 1),
(252, 'CREATE COMPANY', '2021-10-25 16:10:00', 1, 1),
(253, 'LOGIN TO DASHBOARD', '2021-10-25 18:10:18', 1, 1),
(254, 'LOGIN TO DASHBOARD', '2021-10-26 12:10:41', 1, 1),
(255, 'CREATE COMPANY', '2021-10-26 12:10:55', 1, 1),
(256, 'CREATE COMPANY', '2021-10-26 12:10:38', 1, 1),
(257, 'CREATE COMPANY', '2021-10-26 12:10:45', 1, 1),
(258, 'SEND EMAIL TO philippe.moreau@jiscomputing.com', '2021-10-26 13:06:09', 1, 1),
(259, 'CREATE MISSION', '2021-10-26 13:10:31', 1, 1),
(260, 'CREATE MISSION', '2021-10-26 15:10:35', 1, 1),
(261, 'LOGIN TO DASHBOARD', '2021-10-26 17:10:53', 1, 1),
(262, 'CREATE CONTACT', '2021-10-26 18:10:36', 1, 1),
(263, 'CREATE CONTACT', '2021-10-26 18:10:53', 1, 1),
(264, 'LOGIN TO DASHBOARD', '2021-10-26 18:10:48', 12, 1),
(265, 'CREATE MISSION', '2021-10-26 18:10:19', 12, 1),
(266, 'CREATE MISSION', '2021-10-26 18:10:46', 12, 1),
(267, 'LOGIN TO DASHBOARD', '2021-11-03 14:11:21', 1, 1),
(268, 'LOGIN TO DASHBOARD', '2021-11-09 10:11:50', 1, 1),
(269, 'LOGIN TO DASHBOARD', '2021-11-09 10:11:37', 12, 1),
(270, 'LOGIN TO DASHBOARD', '2021-11-09 15:11:29', 1, 1),
(271, 'LOGIN TO DASHBOARD', '2021-11-10 17:11:15', 1, 1),
(272, 'LOGIN TO DASHBOARD', '2021-11-11 09:11:15', 1, 1),
(273, 'LOGIN TO DASHBOARD', '2021-11-12 12:11:55', 12, 1),
(274, 'LOGIN TO DASHBOARD', '2021-11-15 08:11:24', 12, 1),
(275, 'LOGIN TO DASHBOARD', '2021-11-15 08:11:57', 12, 1),
(276, 'LOGIN TO DASHBOARD', '2021-11-15 09:11:06', 12, 1),
(277, 'LOGIN TO DASHBOARD', '2021-11-29 08:11:43', 12, 1),
(278, 'LOGIN TO DASHBOARD', '2021-11-29 15:11:53', 12, 1),
(279, 'LOGIN TO DASHBOARD', '2021-12-01 15:12:14', 12, 1),
(280, 'LOGIN TO DASHBOARD', '2021-12-02 09:12:38', 12, 1),
(281, 'LOGIN TO DASHBOARD', '2021-12-06 11:12:27', 12, 1),
(282, 'CREATE MISSION', '2021-12-06 11:12:13', 12, 1),
(283, 'LOGIN TO DASHBOARD', '2021-12-06 11:12:26', 12, 1),
(284, 'LOGIN TO DASHBOARD', '2021-12-07 17:12:53', 12, 1),
(285, 'CREATE COMPANY', '2021-12-07 18:12:12', 12, 1),
(286, 'CREATE COMPANY', '2021-12-07 19:12:55', 12, 1),
(287, 'LOGIN TO DASHBOARD', '2021-12-08 07:12:56', 12, 1),
(288, 'LOGIN TO DASHBOARD', '2021-12-09 14:12:53', 17, 1),
(289, 'LOGIN TO DASHBOARD', '2021-12-09 15:12:31', 17, 1),
(290, 'LOGIN TO DASHBOARD', '2021-12-09 16:12:15', 12, 1),
(291, 'LOGIN TO DASHBOARD', '2021-12-10 18:12:40', 12, 1),
(292, 'LOGIN TO DASHBOARD', '2021-12-10 18:12:51', 12, 1),
(293, 'LOGIN TO DASHBOARD', '2021-12-10 18:12:14', 12, 1),
(294, 'LOGIN TO DASHBOARD', '2021-12-10 18:12:52', 17, 1),
(295, 'LOGIN TO DASHBOARD', '2021-12-10 18:12:38', 17, 1),
(296, 'LOGIN TO DASHBOARD', '2021-12-10 18:12:24', 17, 1),
(297, 'LOGIN TO DASHBOARD', '2021-12-10 18:12:41', 17, 1),
(298, 'LOGIN TO DASHBOARD', '2021-12-10 18:12:59', 17, 1),
(299, 'LOGIN TO DASHBOARD', '2021-12-10 18:12:22', 12, 1),
(300, 'LOGIN TO DASHBOARD', '2021-12-13 15:12:05', 17, 1),
(301, 'LOGIN TO DASHBOARD', '2021-12-13 15:12:37', 12, 1),
(302, 'LOGIN TO DASHBOARD', '2021-12-13 15:12:59', 17, 1),
(303, 'LOGIN TO DASHBOARD', '2021-12-13 15:12:07', 12, 1),
(304, 'LOGIN TO DASHBOARD', '2021-12-14 08:12:07', 12, 1),
(305, 'LOGIN TO DASHBOARD', '2021-12-14 17:12:11', 12, 1),
(306, 'CREATE COMPANY', '2021-12-14 18:12:36', 12, 1),
(307, 'CREATE COMPANY', '2021-12-14 18:12:09', 12, 1);

-- --------------------------------------------------------

--
-- Structure de la table `action_types`
--

CREATE TABLE `action_types` (
  `action_type_id` int(11) NOT NULL,
  `action_type_label` varchar(45) NOT NULL,
  `active` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `action_types`
--

INSERT INTO `action_types` (`action_type_id`, `action_type_label`, `active`) VALUES
(1, 'Appel prospect', 1),
(2, 'Email', 1),
(3, 'Rendez-vous physique', 1),
(4, 'Rendez-vous telephonique', 1);

-- --------------------------------------------------------

--
-- Structure de la table `addresses`
--

CREATE TABLE `addresses` (
  `addresse_id` int(11) NOT NULL,
  `addresse_label` varchar(255) DEFAULT NULL,
  `company_id` int(11) NOT NULL,
  `city` varchar(45) DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL,
  `postal` varchar(11) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `lastupdate` datetime DEFAULT NULL,
  `active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `addresses`
--

INSERT INTO `addresses` (`addresse_id`, `addresse_label`, `company_id`, `city`, `country`, `postal`, `website`, `lastupdate`, `active`) VALUES
(1, 'Scoat-gbeto', 9, 'Cotonou', 'Benin', '78202', 'https://profile.w3schools.com/signup?redirect_url=https%3A%2F%2Fspaces.w3schools.com%2Fcreatespace%2Fstepone', '2021-12-07 18:51:12', 1),
(2, 'Scoat-gbeto', 10, 'Cotonou', 'Benin', '123456', 'https://profile.w3schools.com/signup?redirect_url=https%3A%2F%2Fspaces.w3schools.com%2Fcreatespace%2Fstepone', '2021-12-07 19:09:55', 1),
(3, 'Scoat-gbeto', 2, 'Cotonou', 'Benin', '123456', 'https://profile.w3schools.com/signup?redirect_url=https%3A%2F%2Fspaces.w3schools.com%2Fcreatespace%2Fstepone', '2021-12-07 19:09:55', 1),
(4, 'Scoat-gbeto', 4, 'Cotonou', 'Benin', '123456', 'https://profile.w3schools.com/signup?redirect_url=https%3A%2F%2Fspaces.w3schools.com%2Fcreatespace%2Fstepone', '2021-12-07 19:09:55', 1),
(5, 'Scoat-gbeto', 7, 'Cotonou', 'Benin', '123456', 'https://profile.w3schools.com/signup?redirect_url=https%3A%2F%2Fspaces.w3schools.com%2Fcreatespace%2Fstepone', '2021-12-07 19:09:55', 1),
(6, 'Scoat-gbeto', 1, 'Cotonou', 'Benin', '123456', 'https://profile.w3schools.com/signup?redirect_url=https%3A%2F%2Fspaces.w3schools.com%2Fcreatespace%2Fstepone', '2021-12-07 19:09:55', 1),
(7, 'Scoat-gbeto', 11, 'Cotonou', 'Australie', '2020', 'https://mtn.bj', '2021-12-14 18:27:09', 1),
(8, 'CENTRE VILLE', 13, 'Abomey-calavi', 'Benin', '2020', 'www.airtel.com', '2021-12-15 08:07:51', 1),
(9, 'VILLE', 14, 'Cotonou', 'Benin', '8752', 'Benin', '2021-12-15 08:19:31', 1);

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `categorie_id` int(2) NOT NULL,
  `libelle` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `img` text CHARACTER SET utf8mb4 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`categorie_id`, `libelle`, `img`) VALUES
(5, 'Telecommunication', 'http://dkocrm.bj/uploads/tower.png'),
(6, 'Construction', 'http://dkocrm.bj/uploads/hook.png');

-- --------------------------------------------------------

--
-- Structure de la table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(11) NOT NULL,
  `comment_text` text NOT NULL,
  `comment_date` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `company_id` int(11) DEFAULT NULL,
  `mission_id` int(11) DEFAULT NULL,
  `active` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `comments`
--

INSERT INTO `comments` (`comment_id`, `comment_text`, `comment_date`, `user_id`, `company_id`, `mission_id`, `active`) VALUES
(30, 'ok\n', '2021-08-30 12:57:25', 1, 1, NULL, 1),
(31, 'ldknfkgnsdf', '2021-08-31 10:02:16', 1, 1, NULL, 1),
(32, 'ok', '2021-10-06 11:54:45', 1, 25, NULL, 1),
(33, 'lol', '2021-10-06 12:22:04', 1, 25, NULL, 1),
(34, 'new comment ', '2021-10-06 13:08:52', 1, 26, NULL, 1),
(35, 'ok\n', '2021-10-26 12:32:33', 1, 150, NULL, 1),
(36, 'ok\n', '2021-11-11 09:10:40', 1, 25, 73, 1),
(37, 'zozo chaud aec mon', '2021-12-09 16:30:20', 12, 2, 113, 1),
(38, '', '2021-12-10 12:14:09', 17, 2, 117, 1),
(39, 'Le marche a ete conclu apres plusieurs essais', '2021-12-10 12:14:09', 17, 2, 117, 1),
(40, 'le marchÃ© a Ã©tÃ© conclu avec succÃ¨s aprÃ¨s plusieurs nÃ©gociations', '2021-12-10 16:09:05', 17, 2, 118, 1),
(41, 'le marchÃ© a Ã©tÃ© conclu avec succÃ¨s aprÃ¨s plusieurs nÃ©gociations', '2021-12-10 16:47:18', 17, 2, 118, 1),
(42, 'bla', '2021-12-10 18:36:56', 17, 2, 118, 1),
(43, 'bla', '2021-12-10 18:40:13', 17, 2, 119, 1),
(44, 'Le rendez vous nâ€¹a pas eu lieu', '2021-12-13 14:46:16', 17, 2, 121, 1),
(45, 'le rendez-vous aura lieu le 15 dÃ©cembre prochain', '2021-12-13 14:52:42', 17, 2, 120, 1),
(46, 'le marchÃ© a Ã©tÃ© conclu avec succÃ¨s', '2021-12-13 14:57:39', 17, 2, 119, 1);

-- --------------------------------------------------------

--
-- Structure de la table `companies`
--

CREATE TABLE `companies` (
  `company_id` int(11) NOT NULL,
  `company_name` varchar(60) NOT NULL,
  `company_zipcode` int(11) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `categorie` int(2) DEFAULT NULL,
  `company_type` varchar(45) DEFAULT NULL,
  `code_naf` varchar(45) DEFAULT NULL,
  `email` text DEFAULT NULL,
  `contact` text DEFAULT NULL,
  `by_prospect` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `companies`
--

INSERT INTO `companies` (`company_id`, `company_name`, `company_zipcode`, `city`, `categorie`, `company_type`, `code_naf`, `email`, `contact`, `by_prospect`) VALUES
(1, 'DKO SARL', 20, 'Cotonou', 5, 'SARL', 'D20', 'infos@dko-technologies.com', '+229 91 96 11 11', NULL),
(2, 'MTN', 10, 'Cotonou', 5, 'SA', 'M21', 'contact@mtn.bj', '66152976', 17),
(3, 'MOOV', 70, 'COTONOU', 5, 'CULTUREL', 'D47', 'contact@moov.bj', '66152976', NULL),
(4, 'MOOV2', 70, 'COTONOU', 5, 'CULTUREL', 'D47', 'test@test.com', '66152976', 17),
(5, 'MOOV5', 70, 'COTONOU', 5, 'CULTUREL', 'D47', 'test@test.com', '66152976', NULL),
(6, 'my company', 70, 'Brazzaville', 6, 'SA', '242', 'test@test.com', '66152976', NULL),
(7, 'company1', 70, 'inconue', 6, 'ONG', '258', 'test@test.com', '66152976', NULL),
(8, 'DTEST', 70, 'ckfk', 6, 'ONG', '1255', 'test@test.com', '66152976', NULL),
(9, 'ZOZO', 70, 'Cotonou', 6, 'private', 'CD78', 'test@test.com', '95876741', 17),
(10, 'ZOZOs', 80, 'Cotonou', 6, 'public', 'CD78', 'kenneth30121995@gmail.com', '95876741', 17),
(11, 'ADEOTIE', 2020, 'Abomey', 6, 'private', 'CD78', 'info@adeoti.bj', '95876741', NULL),
(12, 'AIRTEL', 242, 'Ouidah', 5, 'Privee', 'fr20', '63125487', 'airtel@gmail.com', 17),
(13, 'AIRTEL', 242, 'Abomey', 5, 'Privee', 'DE20', '63125487', 'airtel@gmail.com', 17),
(14, 'BENIN TELECOM', 242, 'Cotonou', 5, 'Public', '242', '52147890', 'benintelecom@gmail.com', 17);

-- --------------------------------------------------------

--
-- Structure de la table `contacts`
--

CREATE TABLE `contacts` (
  `contact_id` int(11) NOT NULL,
  `contact_firstname` varchar(60) NOT NULL,
  `contact_lastname` varchar(60) NOT NULL,
  `contact_email` varchar(60) NOT NULL,
  `phone_number` varchar(45) DEFAULT NULL,
  `title` varchar(60) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `interest_level` enum('interested','non_interested','customer') DEFAULT NULL,
  `company_id` int(11) NOT NULL,
  `is_manager` tinyint(1) DEFAULT 0,
  `created_by` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `update_date` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `contacts`
--

INSERT INTO `contacts` (`contact_id`, `contact_firstname`, `contact_lastname`, `contact_email`, `phone_number`, `title`, `is_active`, `interest_level`, `company_id`, `is_manager`, `created_by`, `created_date`, `update_date`) VALUES
(130, 'TEST', 'Testeur 1', 'arouna.hafiz@mydko-sarl.com', '66152976', 'DC', 1, 'interested', 1, 0, NULL, NULL, NULL),
(131, 'TEST1', 'Nuptia', 'arouna.hafiz@mydko-sarl.com', '90909090', 'DT', 0, 'non_interested', 4, 1, NULL, '2021-11-19 09:54:44', NULL),
(132, 'CHEDE', 'Cedric', 'cedric@test-crm.com', '97979797', 'DAF', 1, 'customer', 3, 0, NULL, '2021-11-19 09:56:02', NULL),
(134, 'MONGONDZA', 'Nuptia', 'nuptiamongondza@gmail.com', '69126070', 'DÃ©veloppeur', 1, 'interested', 2, 1, 0, '2021-11-22 00:00:00', '0000-00-00'),
(135, 'NUPTIA', 'Mongondza', 'nuptiamongondza@gmail.com', '69126070', 'DÃ©veloppeur', 0, 'customer', 1, 0, 17, '2021-12-02 10:09:20', '0000-00-00'),
(136, 'JULIEN', 'Safou', 'julien@gmail.com', '67890954', 'Agronome', 0, 'customer', 7, 0, 17, '2021-12-02 10:18:53', '0000-00-00'),
(137, 'NUPTIA', 'Onday', '', '69126070', 'IngÃ©nieure', 0, 'customer', 13, 0, 17, '2021-12-15 09:44:06', '0000-00-00'),
(138, 'NUPTIA', 'Onday', '', '69126070', 'IngÃ©nieure', 0, 'interested', 14, 0, 17, '2021-12-15 09:52:37', '0000-00-00'),
(139, 'NUPTIA', 'Mongondza', '', '69125478', 'IngÃ©nieure', 0, 'customer', 1, 0, 17, '2021-12-15 09:58:11', '0000-00-00');

-- --------------------------------------------------------

--
-- Structure de la table `contacts_desired_services`
--

CREATE TABLE `contacts_desired_services` (
  `contact_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Structure de la table `crm_logs`
--

CREATE TABLE `crm_logs` (
  `log_id` int(11) NOT NULL,
  `hystory_label` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `update_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Structure de la table `desired_services`
--

CREATE TABLE `desired_services` (
  `service_id` int(11) NOT NULL,
  `libelle_service` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `desired_services`
--

INSERT INTO `desired_services` (`service_id`, `libelle_service`) VALUES
(1, 'Service 1'),
(2, 'Service 2'),
(3, 'Service 3'),
(4, 'Service 4'),
(5, 'Service 5'),
(6, 'Service 6');

-- --------------------------------------------------------

--
-- Structure de la table `hr_time_sheets`
--

CREATE TABLE `hr_time_sheets` (
  `time_sheet_id` int(11) NOT NULL,
  `creation_date` datetime NOT NULL,
  `long_distance` tinyint(1) DEFAULT 0,
  `meal_ext` tinyint(1) NOT NULL,
  `sheet_date` date NOT NULL,
  `start_hour_morning` time DEFAULT NULL,
  `end_hour_morning` time DEFAULT NULL,
  `start_hour_afternoon` time DEFAULT NULL,
  `end_hour_afternoon` time DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `is_lunch` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `hr_time_sheets`
--

INSERT INTO `hr_time_sheets` (`time_sheet_id`, `creation_date`, `long_distance`, `meal_ext`, `sheet_date`, `start_hour_morning`, `end_hour_morning`, `start_hour_afternoon`, `end_hour_afternoon`, `user_id`, `is_lunch`) VALUES
(51, '2021-11-26 00:00:00', 0, 0, '2021-11-26', '09:39:54', NULL, NULL, NULL, 1, 0),
(52, '2021-11-26 00:00:00', 0, 0, '2021-11-26', '09:40:48', NULL, NULL, NULL, 1, 0),
(53, '2021-11-26 00:00:00', 0, 0, '2021-11-26', '09:40:50', NULL, NULL, NULL, 1, 0),
(64, '2021-11-26 00:00:00', 0, 0, '2021-11-26', '17:54:38', '17:55:01', '17:55:05', '17:55:09', 17, 0);

-- --------------------------------------------------------

--
-- Structure de la table `mail_templates`
--

CREATE TABLE `mail_templates` (
  `mail_template_id` int(11) NOT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `type_mail` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `mail_templates`
--

INSERT INTO `mail_templates` (`mail_template_id`, `subject`, `content`, `type_mail`) VALUES
(1, '{SUBJECT} - {SERVICE}', '<!DOCTYPE html>\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n<title>{SERVICE}</title>\r\n<style type=\"text/css\">\r\n.ReadMsgBody {\r\n	width: 100%;\r\n	background-color: #ffffff;\r\n}\r\n\r\n.ExternalClass {\r\n	width: 100%;\r\n	background-color: #ffffff;\r\n}\r\n\r\nbody {\r\n	width: 100%;\r\n	background-color: #ffffff;\r\n	margin: 0;\r\n	padding: 0;\r\n	-webkit-font-smoothing: antialiased;\r\n	font-family: Arial, Helvetica, sans-serif\r\n}\r\n\r\ntable {\r\n	border-collapse: collapse;\r\n}\r\n\r\n@media only screen and (max-width: 640px) {\r\n	body[yahoo] .deviceWidth {\r\n		width: 440px !important;\r\n		padding: 0;\r\n	}\r\n	body[yahoo] .center {\r\n		text-align: center !important;\r\n	}\r\n}\r\n\r\n@media only screen and (max-width: 479px) {\r\n	body[yahoo] .deviceWidth {\r\n		width: 280px !important;\r\n		padding: 0;\r\n	}\r\n	body[yahoo] .center {\r\n		text-align: center !important;\r\n	}\r\n}\r\n</style>\r\n</head>\r\n<body leftmargin=\"0\" topmargin=\"0\" yahoo=\"fix\"\r\n	style=\"font-family: Arial, Helvetica, sans-serif\" marginheight=\"0\"\r\n	marginwidth=\"0\">\r\n	<!-- Wrapper -->\r\n	<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\"\r\n		width=\"100%\">\r\n		<tbody>\r\n			<tr>\r\n				<td style=\"padding-top: 20px\" bgcolor=\"#ffffff\" valign=\"top\"\r\n					width=\"100%\">\r\n					<!--Start Header-->\r\n					<table class=\"deviceWidth\" align=\"center\" bgcolor=\"#fff\" border=\"0\"\r\n						cellpadding=\"0\" cellspacing=\"0\" width=\"700\">\r\n						<tbody>\r\n							<tr>\r\n								<td style=\"padding: 6px 0px 0px\">\r\n									<table class=\"deviceWidth\" align=\"center\" border=\"0\"\r\n										cellpadding=\"0\" cellspacing=\"0\" width=\"680\">\r\n										<tbody>\r\n											<tr>\r\n												<td width=\"100%\">\r\n													<!--Start logo-->\r\n													<table class=\"deviceWidth\" align=\"left\" border=\"0\"\r\n														cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\r\n														<tbody>\r\n															<tr>\r\n																<td class=\"center\" style=\"padding: 10px 0px 10px 0px;\"\r\n																	width=\"50%\"><a href=\"#\"><img\r\n																		src=\"{LOGO}\"></a></td>\r\n																<td class=\"center\" width=\"50%\"\r\n																	style=\"font-size: 20px; color: #272727; font-weight: light; text-align: center; font-family: Arial, Helvetica, sans-serif; line-height: 25px; vertical-align: middle; padding: 10px 0px 10px 0px;\">A vos côtés, à tout moment {LOGO}\r\n																</td>\r\n															</tr>\r\n														</tbody>\r\n													</table> \r\n													<!-- <table class=\"deviceWidth\" align=\"right\" border=\"0\"\r\n														cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\r\n														<tbody>\r\n															<tr>\r\n																<td\r\n																	style=\"font-size: 13px; color: #272727; font-weight: light; text-align: left; font-family: Arial, Helvetica, sans-serif; line-height: 25px; vertical-align: middle; padding: 10px 0px 10px 0px;\">\r\n																	Cher(e) client(e),<br> Veuillez trouver ci-après\r\n																	la preuve de livraison de votre expédition.\r\n																</td>\r\n															</tr>\r\n														</tbody>\r\n													</table>  -->\r\n												</td>\r\n											</tr>\r\n										</tbody>\r\n									</table>\r\n								</td>\r\n							</tr>\r\n						</tbody>\r\n					</table> <!--End Header-->\r\n\r\n					<!-- <table class=\"deviceWidth\" align=\"center\" border=\"0\"\r\n						cellpadding=\"0\" cellspacing=\"0\" width=\"700\">\r\n						<tbody>\r\n							<tr>\r\n								<td bgcolor=\"#ffffff\" width=\"100%\">\r\n									<table class=\"deviceWidth\" align=\"center\" border=\"0\"\r\n										cellpadding=\"0\" cellspacing=\"0\" width=\"700\">\r\n										<tbody>\r\n											<tr>\r\n												<td bgcolor=\"#7FBA00\" width=\"49%\"\r\n													style=\"font-size: 15px; text-align: center; font-weight: bold;\">Votre\r\n													expéditeur</td>\r\n												<td bgcolor=\"#7FBA00\" width=\"49%\"\r\n													style=\"font-size: 15px; text-align: center; font-weight: bold\">Votre\r\n													destinataire</td>\r\n											</tr>\r\n											<tr>\r\n												<td class=\"center\"\r\n													style=\"font-size: 14px; color: #303030; font-weight: light; text-align: center; font-family: Arial, Helvetica, sans-serif; line-height: 25px; vertical-align: top; padding: 0px 10px;\">{SOURCE}\r\n												</td>\r\n												<td class=\"center\"\r\n													style=\"font-size: 14px; color: #303030; font-weight: light; text-align: center; font-family: Arial, Helvetica, sans-serif; line-height: 25px; vertical-align: top; padding: 0px 10px;\">{CONSIGNEE}\r\n												</td>\r\n											</tr>\r\n											<tr>\r\n												<td\r\n													style=\"font-size: 13px; color: #303030; font-weight: light; text-align: left; font-family: Arial, Helvetica, sans-serif; line-height: 25px; vertical-align: top; padding: 0px 10px;\">\r\n													Nb colis : {NB_ITEM} - Poids : {WEIGHT} Kg <br>Date\r\n													d\'enlèvement estimée : {PICKUP_DATE} - {PICKUP_TIME} <br />Nom\r\n													du contact : {CONTACT_SOURCE}\r\n												</td>\r\n												<td\r\n													style=\"font-size: 13px; color: #303030; font-weight: light; text-align: left; font-family: Arial, Helvetica, sans-serif; line-height: 25px; vertical-align: top; padding: 0px 10px;\">Contenu\r\n													: {CONTENT} <br />Date de livraison estimée :\r\n													{DELIVERY_DATE} - {DELIVERY_TIME} <br />A l\'attention de :\r\n													{CONTACT_ATTN} <br />\r\n												<br />\r\n												</td>\r\n											</tr>\r\n											<tr>\r\n												<td align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" colspan=\"2\"\r\n													width=\"80%\">\r\n\r\n													<table class=\"deviceWidth\" align=\"right\" border=\"0\"\r\n														cellpadding=\"0\" cellspacing=\"0\" width=\"100%\"\r\n														style=\"font-size: 13px; color: #303030; font-weight: light; text-align: left; font-family: Arial, Helvetica, sans-serif; line-height: 25px; vertical-align: top; padding: 0px 10px;\">\r\n\r\n														<tbody>\r\n															<tr>\r\n																<td colspan=\'3\'\r\n																	style=\"font-size: 20px; text-align: center; color: #ffa07a;\">\r\n																	Votre preuve de livraison</td>\r\n															</tr>\r\n															<tr>\r\n																<td><strong>Date et heure de livraison</strong></td>\r\n																<td><strong>{DATE} - {TIME}</strong></td>\r\n															</tr>\r\n															<tr>\r\n																<td><strong>Signature</strong></td>\r\n																<td><strong>{SIGNATURE}</strong></td>\r\n															</tr>\r\n														</tbody>\r\n													</table>\r\n												</td>\r\n											</tr>\r\n										</tbody>\r\n									</table>\r\n								</td>\r\n							</tr>\r\n						</tbody>\r\n					</table> -->\r\n\r\n					<div style=\"height: 15px\">&nbsp;</div>\r\n\r\n					<table class=\"deviceWidth\" align=\"center\" border=\"0\"\r\n						cellpadding=\"0\" cellspacing=\"0\" width=\"700\">\r\n						<tbody>\r\n							<tr>\r\n								<td bgcolor=\"#ffffff\" width=\"100%\" colspan=\"2\"\r\n									style=\"font-size: 13px; color: #303030; font-weight: light; text-align: left; font-family: Arial, Helvetica, sans-serif; line-height: 25px; vertical-align: top; padding: 0px 10px;\">\r\n\r\n									<p>{MESSAGE}</p>\r\n									<br> <br> Nous restons à votre écoute pour tout\r\n									complément d\'information<br> Salutations cordiales,<br>\r\n									Service {SERVICE}<br> Tél : {COMPPHONE}\r\n								</td>\r\n							</tr>\r\n						</tbody>\r\n					</table>\r\n				</td>\r\n			</tr>\r\n\r\n			<tr>\r\n				<td class=\"center\" bgcolor=\"#7FBA00\" width=\"100%\">\r\n					<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n						<tbody>\r\n							<tr>\r\n								<td\r\n									style=\"font-size: 13px; color: #303030; font-weight: light; text-align: left; font-family: Arial, Helvetica, sans-serif; line-height: 25px; vertical-align: top; padding: 0px 10px;\"\r\n									class=\"center\" valign=\"top\">{SERVICE} -\r\n									{ADDRESS}- {ZIPCODE} {COMPCITY} -\r\n									{COMPCOUNTRY}<br> Tél : {COMPPHONE} \r\n									\r\n								</td>\r\n							</tr>\r\n						</tbody>\r\n					</table>\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td class=\"center\"\r\n					style=\"font-size: 12px; color: #687074; font-weight: light; text-align: center; font-family: Arial, Helvetica, sans-serif; line-height: 25px; vertical-align: middle; padding: 20px 50px 0px 50px;\"\r\n					bgcolor=\"#ffffff\">Copyright © {SERVICE} All rights\r\n					reserved.</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n	<!--End Left Box-->\r\n</body>\r\n</html>', 1),
(2, '{SUBJECT} - {SERVICE}', '<!DOCTYPE html>\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n<title>{SERVICE}</title>\r\n<style type=\"text/css\">\r\n.ReadMsgBody {\r\n	width: 100%;\r\n	background-color: #ffffff;\r\n}\r\n\r\n.ExternalClass {\r\n	width: 100%;\r\n	background-color: #ffffff;\r\n}\r\n\r\nbody {\r\n	width: 100%;\r\n	background-color: #ffffff;\r\n	margin: 0;\r\n	padding: 0;\r\n	-webkit-font-smoothing: antialiased;\r\n	font-family: Arial, Helvetica, sans-serif\r\n}\r\n\r\ntable {\r\n	border-collapse: collapse;\r\n}\r\n\r\n@media only screen and (max-width: 640px) {\r\n	body[yahoo] .deviceWidth {\r\n		width: 440px !important;\r\n		padding: 0;\r\n	}\r\n	body[yahoo] .center {\r\n		text-align: center !important;\r\n	}\r\n}\r\n\r\n@media only screen and (max-width: 479px) {\r\n	body[yahoo] .deviceWidth {\r\n		width: 280px !important;\r\n		padding: 0;\r\n	}\r\n	body[yahoo] .center {\r\n		text-align: center !important;\r\n	}\r\n}\r\n</style>\r\n</head>\r\n<body leftmargin=\"0\" topmargin=\"0\" yahoo=\"fix\"\r\n	style=\"font-family: Arial, Helvetica, sans-serif\" marginheight=\"0\"\r\n	marginwidth=\"0\">\r\n	<!-- Wrapper -->\r\n	<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\"\r\n		width=\"100%\">\r\n		<tbody>\r\n			<tr>\r\n				<td style=\"padding-top: 20px\" bgcolor=\"#ffffff\" valign=\"top\"\r\n					width=\"100%\">\r\n					<!--Start Header-->\r\n					<table class=\"deviceWidth\" align=\"center\" bgcolor=\"#fff\" border=\"0\"\r\n						cellpadding=\"0\" cellspacing=\"0\" width=\"700\">\r\n						<tbody>\r\n							<tr>\r\n								<td style=\"padding: 6px 0px 0px\">\r\n									<table class=\"deviceWidth\" align=\"center\" border=\"0\"\r\n										cellpadding=\"0\" cellspacing=\"0\" width=\"680\">\r\n										<tbody>\r\n											<tr>\r\n												<td width=\"100%\">\r\n													<!--Start logo-->\r\n													<table class=\"deviceWidth\" align=\"left\" border=\"0\"\r\n														cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\r\n														<tbody>\r\n															<tr>\r\n																<td class=\"center\" style=\"padding: 10px 0px 10px 0px;\"\r\n																	width=\"50%\"><a href=\"#\"><img\r\n																		src=\"{SITE_URL}/design/logo_tp.png\"></a></td>\r\n																<td class=\"center\" width=\"50%\"\r\n																	style=\"font-size: 20px; color: #272727; font-weight: light; text-align: center; font-family: Arial, Helvetica, sans-serif; line-height: 25px; vertical-align: middle; padding: 10px 0px 10px 0px;\">A vos côtés, à tout moment \r\n																</td>\r\n															</tr>\r\n														</tbody>\r\n													</table> \r\n													<!-- <table class=\"deviceWidth\" align=\"right\" border=\"0\"\r\n														cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\r\n														<tbody>\r\n															<tr>\r\n																<td\r\n																	style=\"font-size: 13px; color: #272727; font-weight: light; text-align: left; font-family: Arial, Helvetica, sans-serif; line-height: 25px; vertical-align: middle; padding: 10px 0px 10px 0px;\">\r\n																	Cher(e) client(e),<br> Veuillez trouver ci-après\r\n																	la preuve de livraison de votre expédition.\r\n																</td>\r\n															</tr>\r\n														</tbody>\r\n													</table>  -->\r\n												</td>\r\n											</tr>\r\n										</tbody>\r\n									</table>\r\n								</td>\r\n							</tr>\r\n						</tbody>\r\n					</table> <!--End Header-->\r\n\r\n					<!-- <table class=\"deviceWidth\" align=\"center\" border=\"0\"\r\n						cellpadding=\"0\" cellspacing=\"0\" width=\"700\">\r\n						<tbody>\r\n							<tr>\r\n								<td bgcolor=\"#ffffff\" width=\"100%\">\r\n									<table class=\"deviceWidth\" align=\"center\" border=\"0\"\r\n										cellpadding=\"0\" cellspacing=\"0\" width=\"700\">\r\n										<tbody>\r\n											<tr>\r\n												<td bgcolor=\"#7FBA00\" width=\"49%\"\r\n													style=\"font-size: 15px; text-align: center; font-weight: bold;\">Votre\r\n													expéditeur</td>\r\n												<td bgcolor=\"#7FBA00\" width=\"49%\"\r\n													style=\"font-size: 15px; text-align: center; font-weight: bold\">Votre\r\n													destinataire</td>\r\n											</tr>\r\n											<tr>\r\n												<td class=\"center\"\r\n													style=\"font-size: 14px; color: #303030; font-weight: light; text-align: center; font-family: Arial, Helvetica, sans-serif; line-height: 25px; vertical-align: top; padding: 0px 10px;\">{SOURCE}\r\n												</td>\r\n												<td class=\"center\"\r\n													style=\"font-size: 14px; color: #303030; font-weight: light; text-align: center; font-family: Arial, Helvetica, sans-serif; line-height: 25px; vertical-align: top; padding: 0px 10px;\">{CONSIGNEE}\r\n												</td>\r\n											</tr>\r\n											<tr>\r\n												<td\r\n													style=\"font-size: 13px; color: #303030; font-weight: light; text-align: left; font-family: Arial, Helvetica, sans-serif; line-height: 25px; vertical-align: top; padding: 0px 10px;\">\r\n													Nb colis : {NB_ITEM} - Poids : {WEIGHT} Kg <br>Date\r\n													d\'enlèvement estimée : {PICKUP_DATE} - {PICKUP_TIME} <br />Nom\r\n													du contact : {CONTACT_SOURCE}\r\n												</td>\r\n												<td\r\n													style=\"font-size: 13px; color: #303030; font-weight: light; text-align: left; font-family: Arial, Helvetica, sans-serif; line-height: 25px; vertical-align: top; padding: 0px 10px;\">Contenu\r\n													: {CONTENT} <br />Date de livraison estimée :\r\n													{DELIVERY_DATE} - {DELIVERY_TIME} <br />A l\'attention de :\r\n													{CONTACT_ATTN} <br />\r\n												<br />\r\n												</td>\r\n											</tr>\r\n											<tr>\r\n												<td align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" colspan=\"2\"\r\n													width=\"80%\">\r\n\r\n													<table class=\"deviceWidth\" align=\"right\" border=\"0\"\r\n														cellpadding=\"0\" cellspacing=\"0\" width=\"100%\"\r\n														style=\"font-size: 13px; color: #303030; font-weight: light; text-align: left; font-family: Arial, Helvetica, sans-serif; line-height: 25px; vertical-align: top; padding: 0px 10px;\">\r\n\r\n														<tbody>\r\n															<tr>\r\n																<td colspan=\'3\'\r\n																	style=\"font-size: 20px; text-align: center; color: #ffa07a;\">\r\n																	Votre preuve de livraison</td>\r\n															</tr>\r\n															<tr>\r\n																<td><strong>Date et heure de livraison</strong></td>\r\n																<td><strong>{DATE} - {TIME}</strong></td>\r\n															</tr>\r\n															<tr>\r\n																<td><strong>Signature</strong></td>\r\n																<td><strong>{SIGNATURE}</strong></td>\r\n															</tr>\r\n														</tbody>\r\n													</table>\r\n												</td>\r\n											</tr>\r\n										</tbody>\r\n									</table>\r\n								</td>\r\n							</tr>\r\n						</tbody>\r\n					</table> -->\r\n\r\n					<div style=\"height: 15px\">&nbsp;</div>\r\n\r\n					<table class=\"deviceWidth\" align=\"center\" border=\"0\"\r\n						cellpadding=\"0\" cellspacing=\"0\" width=\"700\">\r\n						<tbody>\r\n							<tr>\r\n								<td bgcolor=\"#ffffff\" width=\"100%\" colspan=\"2\"\r\n									style=\"font-size: 13px; color: #303030; font-weight: light; text-align: left; font-family: Arial, Helvetica, sans-serif; line-height: 25px; vertical-align: top; padding: 0px 10px;\">\r\n\r\n									<p>{MESSAGE}</p>\r\n									<br> <br> Nous restons à votre écoute pour tout\r\n									complément d\'information<br> Salutations cordiales,<br>\r\n									Service {SERVICE}<br> Tél : {COMPPHONE}\r\n								</td>\r\n							</tr>\r\n						</tbody>\r\n					</table>\r\n				</td>\r\n			</tr>\r\n\r\n			<tr>\r\n				<td class=\"center\" bgcolor=\"#7FBA00\" width=\"100%\">\r\n					<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n						<tbody>\r\n							<tr>\r\n								<td\r\n									style=\"font-size: 13px; color: #303030; font-weight: light; text-align: left; font-family: Arial, Helvetica, sans-serif; line-height: 25px; vertical-align: top; padding: 0px 10px;\"\r\n									class=\"center\" valign=\"top\">{SERVICE} -\r\n									{ADDRESS}- {ZIPCODE} {COMPCITY} -\r\n									{COMPCOUNTRY}<br> Tél : {COMPPHONE} \r\n									\r\n								</td>\r\n							</tr>\r\n						</tbody>\r\n					</table>\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td class=\"center\"\r\n					style=\"font-size: 12px; color: #687074; font-weight: light; text-align: center; font-family: Arial, Helvetica, sans-serif; line-height: 25px; vertical-align: middle; padding: 20px 50px 0px 50px;\"\r\n					bgcolor=\"#ffffff\">Copyright © {SERVICE} All rights\r\n					reserved.</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n	<!--End Left Box-->\r\n</body>\r\n</html>', 2),
(3, '{SUBJECT} - {SERVICE}', '<!DOCTYPE html>\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n<title>{SERVICE}</title>\r\n<style type=\"text/css\">\r\n.ReadMsgBody {\r\n	width: 100%;\r\n	background-color: #ffffff;\r\n}\r\n\r\n.ExternalClass {\r\n	width: 100%;\r\n	background-color: #ffffff;\r\n}\r\n\r\nbody {\r\n	width: 100%;\r\n	background-color: #ffffff;\r\n	margin: 0;\r\n	padding: 0;\r\n	-webkit-font-smoothing: antialiased;\r\n	font-family: Arial, Helvetica, sans-serif\r\n}\r\n\r\ntable {\r\n	border-collapse: collapse;\r\n}\r\n\r\n@media only screen and (max-width: 640px) {\r\n	body[yahoo] .deviceWidth {\r\n		width: 440px !important;\r\n		padding: 0;\r\n	}\r\n	body[yahoo] .center {\r\n		text-align: center !important;\r\n	}\r\n}\r\n\r\n@media only screen and (max-width: 479px) {\r\n	body[yahoo] .deviceWidth {\r\n		width: 280px !important;\r\n		padding: 0;\r\n	}\r\n	body[yahoo] .center {\r\n		text-align: center !important;\r\n	}\r\n}\r\n</style>\r\n</head>\r\n<body leftmargin=\"0\" topmargin=\"0\" yahoo=\"fix\"\r\n	style=\"font-family: Arial, Helvetica, sans-serif\" marginheight=\"0\"\r\n	marginwidth=\"0\">\r\n	<!-- Wrapper -->\r\n	<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\"\r\n		width=\"100%\">\r\n		<tbody>\r\n			<tr>\r\n				<td style=\"padding-top: 20px\" bgcolor=\"#ffffff\" valign=\"top\"\r\n					width=\"100%\">\r\n					<!--Start Header-->\r\n					<table class=\"deviceWidth\" align=\"center\" bgcolor=\"#fff\" border=\"0\"\r\n						cellpadding=\"0\" cellspacing=\"0\" width=\"700\">\r\n						<tbody>\r\n							<tr>\r\n								<td style=\"padding: 6px 0px 0px\">\r\n									<table class=\"deviceWidth\" align=\"center\" border=\"0\"\r\n										cellpadding=\"0\" cellspacing=\"0\" width=\"680\">\r\n										<tbody>\r\n											<tr>\r\n												<td width=\"100%\">\r\n													<!--Start logo-->\r\n													<table class=\"deviceWidth\" align=\"left\" border=\"0\"\r\n														cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\r\n														<tbody>\r\n															<tr>\r\n																<td class=\"center\" style=\"padding: 10px 0px 10px 0px;\"\r\n																	width=\"50%\"><a href=\"#\"><img\r\n																		src=\"{SITE_URL}/design/logo_tp.png\"></a></td>\r\n																<td class=\"center\" width=\"50%\"\r\n																	style=\"font-size: 20px; color: #272727; font-weight: light; text-align: center; font-family: Arial, Helvetica, sans-serif; line-height: 25px; vertical-align: middle; padding: 10px 0px 10px 0px;\">A vos côtés, à tout moment \r\n																</td>\r\n															</tr>\r\n														</tbody>\r\n													</table> \r\n													<!-- <table class=\"deviceWidth\" align=\"right\" border=\"0\"\r\n														cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\r\n														<tbody>\r\n															<tr>\r\n																<td\r\n																	style=\"font-size: 13px; color: #272727; font-weight: light; text-align: left; font-family: Arial, Helvetica, sans-serif; line-height: 25px; vertical-align: middle; padding: 10px 0px 10px 0px;\">\r\n																	Cher(e) client(e),<br> Veuillez trouver ci-après\r\n																	la preuve de livraison de votre expédition.\r\n																</td>\r\n															</tr>\r\n														</tbody>\r\n													</table>  -->\r\n												</td>\r\n											</tr>\r\n										</tbody>\r\n									</table>\r\n								</td>\r\n							</tr>\r\n						</tbody>\r\n					</table> <!--End Header-->\r\n\r\n					<!-- <table class=\"deviceWidth\" align=\"center\" border=\"0\"\r\n						cellpadding=\"0\" cellspacing=\"0\" width=\"700\">\r\n						<tbody>\r\n							<tr>\r\n								<td bgcolor=\"#ffffff\" width=\"100%\">\r\n									<table class=\"deviceWidth\" align=\"center\" border=\"0\"\r\n										cellpadding=\"0\" cellspacing=\"0\" width=\"700\">\r\n										<tbody>\r\n											<tr>\r\n												<td bgcolor=\"#7FBA00\" width=\"49%\"\r\n													style=\"font-size: 15px; text-align: center; font-weight: bold;\">Votre\r\n													expéditeur</td>\r\n												<td bgcolor=\"#7FBA00\" width=\"49%\"\r\n													style=\"font-size: 15px; text-align: center; font-weight: bold\">Votre\r\n													destinataire</td>\r\n											</tr>\r\n											<tr>\r\n												<td class=\"center\"\r\n													style=\"font-size: 14px; color: #303030; font-weight: light; text-align: center; font-family: Arial, Helvetica, sans-serif; line-height: 25px; vertical-align: top; padding: 0px 10px;\">{SOURCE}\r\n												</td>\r\n												<td class=\"center\"\r\n													style=\"font-size: 14px; color: #303030; font-weight: light; text-align: center; font-family: Arial, Helvetica, sans-serif; line-height: 25px; vertical-align: top; padding: 0px 10px;\">{CONSIGNEE}\r\n												</td>\r\n											</tr>\r\n											<tr>\r\n												<td\r\n													style=\"font-size: 13px; color: #303030; font-weight: light; text-align: left; font-family: Arial, Helvetica, sans-serif; line-height: 25px; vertical-align: top; padding: 0px 10px;\">\r\n													Nb colis : {NB_ITEM} - Poids : {WEIGHT} Kg <br>Date\r\n													d\'enlèvement estimée : {PICKUP_DATE} - {PICKUP_TIME} <br />Nom\r\n													du contact : {CONTACT_SOURCE}\r\n												</td>\r\n												<td\r\n													style=\"font-size: 13px; color: #303030; font-weight: light; text-align: left; font-family: Arial, Helvetica, sans-serif; line-height: 25px; vertical-align: top; padding: 0px 10px;\">Contenu\r\n													: {CONTENT} <br />Date de livraison estimée :\r\n													{DELIVERY_DATE} - {DELIVERY_TIME} <br />A l\'attention de :\r\n													{CONTACT_ATTN} <br />\r\n												<br />\r\n												</td>\r\n											</tr>\r\n											<tr>\r\n												<td align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" colspan=\"2\"\r\n													width=\"80%\">\r\n\r\n													<table class=\"deviceWidth\" align=\"right\" border=\"0\"\r\n														cellpadding=\"0\" cellspacing=\"0\" width=\"100%\"\r\n														style=\"font-size: 13px; color: #303030; font-weight: light; text-align: left; font-family: Arial, Helvetica, sans-serif; line-height: 25px; vertical-align: top; padding: 0px 10px;\">\r\n\r\n														<tbody>\r\n															<tr>\r\n																<td colspan=\'3\'\r\n																	style=\"font-size: 20px; text-align: center; color: #ffa07a;\">\r\n																	Votre preuve de livraison</td>\r\n															</tr>\r\n															<tr>\r\n																<td><strong>Date et heure de livraison</strong></td>\r\n																<td><strong>{DATE} - {TIME}</strong></td>\r\n															</tr>\r\n															<tr>\r\n																<td><strong>Signature</strong></td>\r\n																<td><strong>{SIGNATURE}</strong></td>\r\n															</tr>\r\n														</tbody>\r\n													</table>\r\n												</td>\r\n											</tr>\r\n										</tbody>\r\n									</table>\r\n								</td>\r\n							</tr>\r\n						</tbody>\r\n					</table> -->\r\n\r\n					<div style=\"height: 15px\">&nbsp;</div>\r\n\r\n					<table class=\"deviceWidth\" align=\"center\" border=\"0\"\r\n						cellpadding=\"0\" cellspacing=\"0\" width=\"700\">\r\n						<tbody>\r\n							<tr>\r\n								<td bgcolor=\"#ffffff\" width=\"100%\" colspan=\"2\"\r\n									style=\"font-size: 13px; color: #303030; font-weight: light; text-align: left; font-family: Arial, Helvetica, sans-serif; line-height: 25px; vertical-align: top; padding: 0px 10px;\">\r\n\r\n									<p>{MESSAGE}</p>\r\n									<br> <br> Nous restons à votre écoute pour tout\r\n									complément d\'information<br> Salutations cordiales,<br>\r\n									Service {SERVICE}<br> Tél : {COMPPHONE}\r\n								</td>\r\n							</tr>\r\n						</tbody>\r\n					</table>\r\n				</td>\r\n			</tr>\r\n\r\n			<tr>\r\n				<td class=\"center\" bgcolor=\"#7FBA00\" width=\"100%\">\r\n					<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n						<tbody>\r\n							<tr>\r\n								<td\r\n									style=\"font-size: 13px; color: #303030; font-weight: light; text-align: left; font-family: Arial, Helvetica, sans-serif; line-height: 25px; vertical-align: top; padding: 0px 10px;\"\r\n									class=\"center\" valign=\"top\">{SERVICE} -\r\n									{ADDRESS}- {ZIPCODE} {COMPCITY} -\r\n									{COMPCOUNTRY}<br> Tél : {COMPPHONE} \r\n									\r\n								</td>\r\n							</tr>\r\n						</tbody>\r\n					</table>\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td class=\"center\"\r\n					style=\"font-size: 12px; color: #687074; font-weight: light; text-align: center; font-family: Arial, Helvetica, sans-serif; line-height: 25px; vertical-align: middle; padding: 20px 50px 0px 50px;\"\r\n					bgcolor=\"#ffffff\">Copyright © {SERVICE} All rights\r\n					reserved.</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n	<!--End Left Box-->\r\n</body>\r\n</html>', 3),
(4, '{SUBJECT} - {SERVICE}', '<!DOCTYPE html>\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n<title>{SERVICE}</title>\r\n<style type=\"text/css\">\r\n.ReadMsgBody {\r\n	width: 100%;\r\n	background-color: #ffffff;\r\n}\r\n\r\n.ExternalClass {\r\n	width: 100%;\r\n	background-color: #ffffff;\r\n}\r\n\r\nbody {\r\n	width: 100%;\r\n	background-color: #ffffff;\r\n	margin: 0;\r\n	padding: 0;\r\n	-webkit-font-smoothing: antialiased;\r\n	font-family: Arial, Helvetica, sans-serif\r\n}\r\n\r\ntable {\r\n	border-collapse: collapse;\r\n}\r\n\r\n@media only screen and (max-width: 640px) {\r\n	body[yahoo] .deviceWidth {\r\n		width: 440px !important;\r\n		padding: 0;\r\n	}\r\n	body[yahoo] .center {\r\n		text-align: center !important;\r\n	}\r\n}\r\n\r\n@media only screen and (max-width: 479px) {\r\n	body[yahoo] .deviceWidth {\r\n		width: 280px !important;\r\n		padding: 0;\r\n	}\r\n	body[yahoo] .center {\r\n		text-align: center !important;\r\n	}\r\n}\r\n</style>\r\n</head>\r\n<body leftmargin=\"0\" topmargin=\"0\" yahoo=\"fix\"\r\n	style=\"font-family: Arial, Helvetica, sans-serif\" marginheight=\"0\"\r\n	marginwidth=\"0\">\r\n	<!-- Wrapper -->\r\n	<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\"\r\n		width=\"100%\">\r\n		<tbody>\r\n			<tr>\r\n				<td style=\"padding-top: 20px\" bgcolor=\"#ffffff\" valign=\"top\"\r\n					width=\"100%\">\r\n					<!--Start Header-->\r\n					<table class=\"deviceWidth\" align=\"center\" bgcolor=\"#fff\" border=\"0\"\r\n						cellpadding=\"0\" cellspacing=\"0\" width=\"700\">\r\n						<tbody>\r\n							<tr>\r\n								<td style=\"padding: 6px 0px 0px\">\r\n									<table class=\"deviceWidth\" align=\"center\" border=\"0\"\r\n										cellpadding=\"0\" cellspacing=\"0\" width=\"680\">\r\n										<tbody>\r\n											<tr>\r\n												<td width=\"100%\">\r\n													<!--Start logo-->\r\n													<table class=\"deviceWidth\" align=\"left\" border=\"0\"\r\n														cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\r\n														<tbody>\r\n															<tr>\r\n																<td class=\"center\" style=\"padding: 10px 0px 10px 0px;\"\r\n																	width=\"50%\"><a href=\"#\"><img\r\n																		src=\"{SITE_URL}/design/logo_tp.png\"></a></td>\r\n																<td class=\"center\" width=\"50%\"\r\n																	style=\"font-size: 20px; color: #272727; font-weight: light; text-align: center; font-family: Arial, Helvetica, sans-serif; line-height: 25px; vertical-align: middle; padding: 10px 0px 10px 0px;\">A vos côtés, à tout moment \r\n																</td>\r\n															</tr>\r\n														</tbody>\r\n													</table> \r\n													<!-- <table class=\"deviceWidth\" align=\"right\" border=\"0\"\r\n														cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\r\n														<tbody>\r\n															<tr>\r\n																<td\r\n																	style=\"font-size: 13px; color: #272727; font-weight: light; text-align: left; font-family: Arial, Helvetica, sans-serif; line-height: 25px; vertical-align: middle; padding: 10px 0px 10px 0px;\">\r\n																	Cher(e) client(e),<br> Veuillez trouver ci-après\r\n																	la preuve de livraison de votre expédition.\r\n																</td>\r\n															</tr>\r\n														</tbody>\r\n													</table>  -->\r\n												</td>\r\n											</tr>\r\n										</tbody>\r\n									</table>\r\n								</td>\r\n							</tr>\r\n						</tbody>\r\n					</table> <!--End Header-->\r\n\r\n					<!-- <table class=\"deviceWidth\" align=\"center\" border=\"0\"\r\n						cellpadding=\"0\" cellspacing=\"0\" width=\"700\">\r\n						<tbody>\r\n							<tr>\r\n								<td bgcolor=\"#ffffff\" width=\"100%\">\r\n									<table class=\"deviceWidth\" align=\"center\" border=\"0\"\r\n										cellpadding=\"0\" cellspacing=\"0\" width=\"700\">\r\n										<tbody>\r\n											<tr>\r\n												<td bgcolor=\"#7FBA00\" width=\"49%\"\r\n													style=\"font-size: 15px; text-align: center; font-weight: bold;\">Votre\r\n													expéditeur</td>\r\n												<td bgcolor=\"#7FBA00\" width=\"49%\"\r\n													style=\"font-size: 15px; text-align: center; font-weight: bold\">Votre\r\n													destinataire</td>\r\n											</tr>\r\n											<tr>\r\n												<td class=\"center\"\r\n													style=\"font-size: 14px; color: #303030; font-weight: light; text-align: center; font-family: Arial, Helvetica, sans-serif; line-height: 25px; vertical-align: top; padding: 0px 10px;\">{SOURCE}\r\n												</td>\r\n												<td class=\"center\"\r\n													style=\"font-size: 14px; color: #303030; font-weight: light; text-align: center; font-family: Arial, Helvetica, sans-serif; line-height: 25px; vertical-align: top; padding: 0px 10px;\">{CONSIGNEE}\r\n												</td>\r\n											</tr>\r\n											<tr>\r\n												<td\r\n													style=\"font-size: 13px; color: #303030; font-weight: light; text-align: left; font-family: Arial, Helvetica, sans-serif; line-height: 25px; vertical-align: top; padding: 0px 10px;\">\r\n													Nb colis : {NB_ITEM} - Poids : {WEIGHT} Kg <br>Date\r\n													d\'enlèvement estimée : {PICKUP_DATE} - {PICKUP_TIME} <br />Nom\r\n													du contact : {CONTACT_SOURCE}\r\n												</td>\r\n												<td\r\n													style=\"font-size: 13px; color: #303030; font-weight: light; text-align: left; font-family: Arial, Helvetica, sans-serif; line-height: 25px; vertical-align: top; padding: 0px 10px;\">Contenu\r\n													: {CONTENT} <br />Date de livraison estimée :\r\n													{DELIVERY_DATE} - {DELIVERY_TIME} <br />A l\'attention de :\r\n													{CONTACT_ATTN} <br />\r\n												<br />\r\n												</td>\r\n											</tr>\r\n											<tr>\r\n												<td align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" colspan=\"2\"\r\n													width=\"80%\">\r\n\r\n													<table class=\"deviceWidth\" align=\"right\" border=\"0\"\r\n														cellpadding=\"0\" cellspacing=\"0\" width=\"100%\"\r\n														style=\"font-size: 13px; color: #303030; font-weight: light; text-align: left; font-family: Arial, Helvetica, sans-serif; line-height: 25px; vertical-align: top; padding: 0px 10px;\">\r\n\r\n														<tbody>\r\n															<tr>\r\n																<td colspan=\'3\'\r\n																	style=\"font-size: 20px; text-align: center; color: #ffa07a;\">\r\n																	Votre preuve de livraison</td>\r\n															</tr>\r\n															<tr>\r\n																<td><strong>Date et heure de livraison</strong></td>\r\n																<td><strong>{DATE} - {TIME}</strong></td>\r\n															</tr>\r\n															<tr>\r\n																<td><strong>Signature</strong></td>\r\n																<td><strong>{SIGNATURE}</strong></td>\r\n															</tr>\r\n														</tbody>\r\n													</table>\r\n												</td>\r\n											</tr>\r\n										</tbody>\r\n									</table>\r\n								</td>\r\n							</tr>\r\n						</tbody>\r\n					</table> -->\r\n\r\n					<div style=\"height: 15px\">&nbsp;</div>\r\n\r\n					<table class=\"deviceWidth\" align=\"center\" border=\"0\"\r\n						cellpadding=\"0\" cellspacing=\"0\" width=\"700\">\r\n						<tbody>\r\n							<tr>\r\n								<td bgcolor=\"#ffffff\" width=\"100%\" colspan=\"2\"\r\n									style=\"font-size: 13px; color: #303030; font-weight: light; text-align: left; font-family: Arial, Helvetica, sans-serif; line-height: 25px; vertical-align: top; padding: 0px 10px;\">\r\n\r\n									<p>{MESSAGE}</p>\r\n									<br> <br> Nous restons à votre écoute pour tout\r\n									complément d\'information<br> Salutations cordiales,<br>\r\n									Service {SERVICE}<br> Tél : {COMPPHONE}\r\n								</td>\r\n							</tr>\r\n						</tbody>\r\n					</table>\r\n				</td>\r\n			</tr>\r\n\r\n			<tr>\r\n				<td class=\"center\" bgcolor=\"#7FBA00\" width=\"100%\">\r\n					<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n						<tbody>\r\n							<tr>\r\n								<td\r\n									style=\"font-size: 13px; color: #303030; font-weight: light; text-align: left; font-family: Arial, Helvetica, sans-serif; line-height: 25px; vertical-align: top; padding: 0px 10px;\"\r\n									class=\"center\" valign=\"top\">{SERVICE} -\r\n									{ADDRESS}- {ZIPCODE} {COMPCITY} -\r\n									{COMPCOUNTRY}<br> Tél : {COMPPHONE} \r\n									\r\n								</td>\r\n							</tr>\r\n						</tbody>\r\n					</table>\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td class=\"center\"\r\n					style=\"font-size: 12px; color: #687074; font-weight: light; text-align: center; font-family: Arial, Helvetica, sans-serif; line-height: 25px; vertical-align: middle; padding: 20px 50px 0px 50px;\"\r\n					bgcolor=\"#ffffff\">Copyright © {SERVICE} All rights\r\n					reserved.</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n	<!--End Left Box-->\r\n</body>\r\n</html>', 4),
(5, '{SUBJECT} - {SERVICE}', '<!DOCTYPE html>\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n<title>{SERVICE}</title>\r\n<style type=\"text/css\">\r\n.ReadMsgBody {\r\n	width: 100%;\r\n	background-color: #ffffff;\r\n}\r\n\r\n.ExternalClass {\r\n	width: 100%;\r\n	background-color: #ffffff;\r\n}\r\n\r\nbody {\r\n	width: 100%;\r\n	background-color: #ffffff;\r\n	margin: 0;\r\n	padding: 0;\r\n	-webkit-font-smoothing: antialiased;\r\n	font-family: Arial, Helvetica, sans-serif\r\n}\r\n\r\ntable {\r\n	border-collapse: collapse;\r\n}\r\n\r\n@media only screen and (max-width: 640px) {\r\n	body[yahoo] .deviceWidth {\r\n		width: 440px !important;\r\n		padding: 0;\r\n	}\r\n	body[yahoo] .center {\r\n		text-align: center !important;\r\n	}\r\n}\r\n\r\n@media only screen and (max-width: 479px) {\r\n	body[yahoo] .deviceWidth {\r\n		width: 280px !important;\r\n		padding: 0;\r\n	}\r\n	body[yahoo] .center {\r\n		text-align: center !important;\r\n	}\r\n}\r\n</style>\r\n</head>\r\n<body leftmargin=\"0\" topmargin=\"0\" yahoo=\"fix\"\r\n	style=\"font-family: Arial, Helvetica, sans-serif\" marginheight=\"0\"\r\n	marginwidth=\"0\">\r\n	<!-- Wrapper -->\r\n	<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\"\r\n		width=\"100%\">\r\n		<tbody>\r\n			<tr>\r\n				<td style=\"padding-top: 20px\" bgcolor=\"#ffffff\" valign=\"top\"\r\n					width=\"100%\">\r\n					<!--Start Header-->\r\n					<table class=\"deviceWidth\" align=\"center\" bgcolor=\"#fff\" border=\"0\"\r\n						cellpadding=\"0\" cellspacing=\"0\" width=\"700\">\r\n						<tbody>\r\n							<tr>\r\n								<td style=\"padding: 6px 0px 0px\">\r\n									<table class=\"deviceWidth\" align=\"center\" border=\"0\"\r\n										cellpadding=\"0\" cellspacing=\"0\" width=\"680\">\r\n										<tbody>\r\n											<tr>\r\n												<td width=\"100%\">\r\n													<!--Start logo-->\r\n													<table class=\"deviceWidth\" align=\"left\" border=\"0\"\r\n														cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\r\n														<tbody>\r\n															<tr>\r\n																<td class=\"center\" style=\"padding: 10px 0px 10px 0px;\"\r\n																	width=\"50%\"><a href=\"#\"><img\r\n																		src=\"{SITE_URL}/design/logo_tp.png\"></a></td>\r\n																<td class=\"center\" width=\"50%\"\r\n																	style=\"font-size: 20px; color: #272727; font-weight: light; text-align: center; font-family: Arial, Helvetica, sans-serif; line-height: 25px; vertical-align: middle; padding: 10px 0px 10px 0px;\">A vos côtés, à tout moment \r\n																</td>\r\n															</tr>\r\n														</tbody>\r\n													</table> \r\n													<!-- <table class=\"deviceWidth\" align=\"right\" border=\"0\"\r\n														cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\r\n														<tbody>\r\n															<tr>\r\n																<td\r\n																	style=\"font-size: 13px; color: #272727; font-weight: light; text-align: left; font-family: Arial, Helvetica, sans-serif; line-height: 25px; vertical-align: middle; padding: 10px 0px 10px 0px;\">\r\n																	Cher(e) client(e),<br> Veuillez trouver ci-après\r\n																	la preuve de livraison de votre expédition.\r\n																</td>\r\n															</tr>\r\n														</tbody>\r\n													</table>  -->\r\n												</td>\r\n											</tr>\r\n										</tbody>\r\n									</table>\r\n								</td>\r\n							</tr>\r\n						</tbody>\r\n					</table> <!--End Header-->\r\n\r\n					<!-- <table class=\"deviceWidth\" align=\"center\" border=\"0\"\r\n						cellpadding=\"0\" cellspacing=\"0\" width=\"700\">\r\n						<tbody>\r\n							<tr>\r\n								<td bgcolor=\"#ffffff\" width=\"100%\">\r\n									<table class=\"deviceWidth\" align=\"center\" border=\"0\"\r\n										cellpadding=\"0\" cellspacing=\"0\" width=\"700\">\r\n										<tbody>\r\n											<tr>\r\n												<td bgcolor=\"#7FBA00\" width=\"49%\"\r\n													style=\"font-size: 15px; text-align: center; font-weight: bold;\">Votre\r\n													expéditeur</td>\r\n												<td bgcolor=\"#7FBA00\" width=\"49%\"\r\n													style=\"font-size: 15px; text-align: center; font-weight: bold\">Votre\r\n													destinataire</td>\r\n											</tr>\r\n											<tr>\r\n												<td class=\"center\"\r\n													style=\"font-size: 14px; color: #303030; font-weight: light; text-align: center; font-family: Arial, Helvetica, sans-serif; line-height: 25px; vertical-align: top; padding: 0px 10px;\">{SOURCE}\r\n												</td>\r\n												<td class=\"center\"\r\n													style=\"font-size: 14px; color: #303030; font-weight: light; text-align: center; font-family: Arial, Helvetica, sans-serif; line-height: 25px; vertical-align: top; padding: 0px 10px;\">{CONSIGNEE}\r\n												</td>\r\n											</tr>\r\n											<tr>\r\n												<td\r\n													style=\"font-size: 13px; color: #303030; font-weight: light; text-align: left; font-family: Arial, Helvetica, sans-serif; line-height: 25px; vertical-align: top; padding: 0px 10px;\">\r\n													Nb colis : {NB_ITEM} - Poids : {WEIGHT} Kg <br>Date\r\n													d\'enlèvement estimée : {PICKUP_DATE} - {PICKUP_TIME} <br />Nom\r\n													du contact : {CONTACT_SOURCE}\r\n												</td>\r\n												<td\r\n													style=\"font-size: 13px; color: #303030; font-weight: light; text-align: left; font-family: Arial, Helvetica, sans-serif; line-height: 25px; vertical-align: top; padding: 0px 10px;\">Contenu\r\n													: {CONTENT} <br />Date de livraison estimée :\r\n													{DELIVERY_DATE} - {DELIVERY_TIME} <br />A l\'attention de :\r\n													{CONTACT_ATTN} <br />\r\n												<br />\r\n												</td>\r\n											</tr>\r\n											<tr>\r\n												<td align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" colspan=\"2\"\r\n													width=\"80%\">\r\n\r\n													<table class=\"deviceWidth\" align=\"right\" border=\"0\"\r\n														cellpadding=\"0\" cellspacing=\"0\" width=\"100%\"\r\n														style=\"font-size: 13px; color: #303030; font-weight: light; text-align: left; font-family: Arial, Helvetica, sans-serif; line-height: 25px; vertical-align: top; padding: 0px 10px;\">\r\n\r\n														<tbody>\r\n															<tr>\r\n																<td colspan=\'3\'\r\n																	style=\"font-size: 20px; text-align: center; color: #ffa07a;\">\r\n																	Votre preuve de livraison</td>\r\n															</tr>\r\n															<tr>\r\n																<td><strong>Date et heure de livraison</strong></td>\r\n																<td><strong>{DATE} - {TIME}</strong></td>\r\n															</tr>\r\n															<tr>\r\n																<td><strong>Signature</strong></td>\r\n																<td><strong>{SIGNATURE}</strong></td>\r\n															</tr>\r\n														</tbody>\r\n													</table>\r\n												</td>\r\n											</tr>\r\n										</tbody>\r\n									</table>\r\n								</td>\r\n							</tr>\r\n						</tbody>\r\n					</table> -->\r\n\r\n					<div style=\"height: 15px\">&nbsp;</div>\r\n\r\n					<table class=\"deviceWidth\" align=\"center\" border=\"0\"\r\n						cellpadding=\"0\" cellspacing=\"0\" width=\"700\">\r\n						<tbody>\r\n							<tr>\r\n								<td bgcolor=\"#ffffff\" width=\"100%\" colspan=\"2\"\r\n									style=\"font-size: 13px; color: #303030; font-weight: light; text-align: left; font-family: Arial, Helvetica, sans-serif; line-height: 25px; vertical-align: top; padding: 0px 10px;\">\r\n\r\n									<p>{MESSAGE}</p>\r\n									<br> <br> Nous restons à votre écoute pour tout\r\n									complément d\'information<br> Salutations cordiales,<br>\r\n									Service {SERVICE}<br> Tél : {COMPPHONE}\r\n								</td>\r\n							</tr>\r\n						</tbody>\r\n					</table>\r\n				</td>\r\n			</tr>\r\n\r\n			<tr>\r\n				<td class=\"center\" bgcolor=\"#7FBA00\" width=\"100%\">\r\n					<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n						<tbody>\r\n							<tr>\r\n								<td\r\n									style=\"font-size: 13px; color: #303030; font-weight: light; text-align: left; font-family: Arial, Helvetica, sans-serif; line-height: 25px; vertical-align: top; padding: 0px 10px;\"\r\n									class=\"center\" valign=\"top\">{SERVICE} -\r\n									{ADDRESS}- {ZIPCODE} {COMPCITY} -\r\n									{COMPCOUNTRY}<br> Tél : {COMPPHONE} \r\n									\r\n								</td>\r\n							</tr>\r\n						</tbody>\r\n					</table>\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td class=\"center\"\r\n					style=\"font-size: 12px; color: #687074; font-weight: light; text-align: center; font-family: Arial, Helvetica, sans-serif; line-height: 25px; vertical-align: middle; padding: 20px 50px 0px 50px;\"\r\n					bgcolor=\"#ffffff\">Copyright © {SERVICE} All rights\r\n					reserved.</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n	<!--End Left Box-->\r\n</body>\r\n</html>', 5);
INSERT INTO `mail_templates` (`mail_template_id`, `subject`, `content`, `type_mail`) VALUES
(6, '{SUBJECT} - {SERVICE}', '<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional //EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\" xmlns:o=\"urn:schemas-microsoft-com:office:office\" xmlns:v=\"urn:schemas-microsoft-com:vml\">\r\n\r\n<head>\r\n	<!--[if gte mso 9]><xml><o:OfficeDocumentSettings><o:AllowPNG/><o:PixelsPerInch>96</o:PixelsPerInch></o:OfficeDocumentSettings></xml><![endif]-->\r\n	<meta content=\"text/html; charset=utf-8\" http-equiv=\"Content-Type\" />\r\n	<meta content=\"width=device-width\" name=\"viewport\" />\r\n	<!--[if !mso]><!-->\r\n	<meta content=\"IE=edge\" http-equiv=\"X-UA-Compatible\" />\r\n	<!--<![endif]-->\r\n	<title></title>\r\n	<!--[if !mso]><!-->\r\n	<link href=\"https://fonts.googleapis.com/css?family=Montserrat\" rel=\"stylesheet\" type=\"text/css\" />\r\n	<link href=\"https://fonts.googleapis.com/css?family=Roboto\" rel=\"stylesheet\" type=\"text/css\" />\r\n	<!--<![endif]-->\r\n	<style type=\"text/css\">\r\n		body {\r\n			margin: 0;\r\n			padding: 0;\r\n		}\r\n\r\n		table,\r\n		td,\r\n		tr {\r\n			vertical-align: top;\r\n			border-collapse: collapse;\r\n		}\r\n\r\n		* {\r\n			line-height: inherit;\r\n		}\r\n\r\n		a[x-apple-data-detectors=true] {\r\n			color: inherit !important;\r\n			text-decoration: none !important;\r\n		}\r\n	</style>\r\n	<style id=\"media-query\" type=\"text/css\">\r\n		@media (max-width: 650px) {\r\n\r\n			.block-grid,\r\n			.col {\r\n				min-width: 320px !important;\r\n				max-width: 100% !important;\r\n				display: block !important;\r\n			}\r\n\r\n			.block-grid {\r\n				width: 100% !important;\r\n			}\r\n\r\n			.col {\r\n				width: 100% !important;\r\n			}\r\n\r\n			.col_cont {\r\n				margin: 0 auto;\r\n			}\r\n\r\n			img.fullwidth,\r\n			img.fullwidthOnMobile {\r\n				max-width: 100% !important;\r\n			}\r\n\r\n			.no-stack .col {\r\n				min-width: 0 !important;\r\n				display: table-cell !important;\r\n			}\r\n\r\n			.no-stack.two-up .col {\r\n				width: 50% !important;\r\n			}\r\n\r\n			.no-stack .col.num2 {\r\n				width: 16.6% !important;\r\n			}\r\n\r\n			.no-stack .col.num3 {\r\n				width: 25% !important;\r\n			}\r\n\r\n			.no-stack .col.num4 {\r\n				width: 33% !important;\r\n			}\r\n\r\n			.no-stack .col.num5 {\r\n				width: 41.6% !important;\r\n			}\r\n\r\n			.no-stack .col.num6 {\r\n				width: 50% !important;\r\n			}\r\n\r\n			.no-stack .col.num7 {\r\n				width: 58.3% !important;\r\n			}\r\n\r\n			.no-stack .col.num8 {\r\n				width: 66.6% !important;\r\n			}\r\n\r\n			.no-stack .col.num9 {\r\n				width: 75% !important;\r\n			}\r\n\r\n			.no-stack .col.num10 {\r\n				width: 83.3% !important;\r\n			}\r\n\r\n			.video-block {\r\n				max-width: none !important;\r\n			}\r\n\r\n			.mobile_hide {\r\n				min-height: 0px;\r\n				max-height: 0px;\r\n				max-width: 0px;\r\n				display: none;\r\n				overflow: hidden;\r\n				font-size: 0px;\r\n			}\r\n\r\n			.desktop_hide {\r\n				display: block !important;\r\n				max-height: none !important;\r\n			}\r\n		}\r\n	</style>\r\n</head>\r\n\r\n<body class=\"clean-body\" style=\"margin: 0; padding: 0; -webkit-text-size-adjust: 100%; background-color: #FFFFFF;\">\r\n	<!--[if IE]><div class=\"ie-browser\"><![endif]-->\r\n	<table bgcolor=\"#FFFFFF\" cellpadding=\"0\" cellspacing=\"0\" class=\"nl-container\" role=\"presentation\" style=\"table-layout: fixed; vertical-align: top; min-width: 320px; border-spacing: 0; border-collapse: collapse; mso-table-lspace: 0pt; mso-table-rspace: 0pt; background-color: #FFFFFF; width: 100%;\" valign=\"top\" width=\"100%\">\r\n		<tbody>\r\n			<tr style=\"vertical-align: top;\" valign=\"top\">\r\n				<td style=\"word-break: break-word; vertical-align: top;\" valign=\"top\">\r\n					<!--[if (mso)|(IE)]><table width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\"><tr><td align=\"center\" style=\"background-color:#FFFFFF\"><![endif]-->\r\n					<div style=\"background-position:center top;background-repeat:no-repeat;\">\r\n						<div class=\"block-grid\" style=\"min-width: 320px; max-width: 630px; overflow-wrap: break-word; word-wrap: break-word; word-break: break-word; Margin: 0 auto; background-color: transparent;\">\r\n							<div style=\"border-collapse: collapse;display: table;width: 100%;background-color:transparent;\">\r\n								<div class=\"col num12\" style=\"min-width: 320px; max-width: 630px; display: table-cell; vertical-align: top; width: 630px;\">\r\n									<div class=\"col_cont\" style=\"width:100% !important;\">\r\n										<!--[if (!mso)&(!IE)]><!-->\r\n										<div style=\"border-top:0px solid transparent; border-left:0px solid transparent; border-bottom:0px solid transparent; border-right:0px solid transparent; padding-top:0px; padding-bottom:0px; padding-right: 0px; padding-left: 0px;\">\r\n											<div align=\"center\" class=\"img-container center autowidth\" style=\"padding-right: 0px;padding-left: 0px;\">\r\n												<!--[if mso]></td></tr></table><![endif]-->\r\n											</div>\r\n											<!--[if (!mso)&(!IE)]><!-->\r\n										</div>\r\n										<!--<![endif]-->\r\n									</div>\r\n								</div>\r\n							</div>\r\n						</div>\r\n					</div>\r\n					<div style=\"background-color:transparent;\">\r\n						<div class=\"block-grid\" style=\"min-width: 320px; max-width: 630px; overflow-wrap: break-word; word-wrap: break-word; word-break: break-word; Margin: 0 auto; background-color: transparent;\">\r\n							<div style=\"border-collapse: collapse;display: table;width: 100%;background-color:transparent;\">\r\n								<div class=\"col num12\" style=\"min-width: 320px; max-width: 630px; display: table-cell; vertical-align: top; width: 630px;\">\r\n									<div class=\"col_cont\" style=\"width:100% !important;\">\r\n										<!--[if (!mso)&(!IE)]><!-->\r\n										<div style=\"border-top:0px solid transparent; border-left:0px solid transparent; border-bottom:0px solid transparent; border-right:0px solid transparent; padding-top:5px; padding-bottom:25px; padding-right: 0px; padding-left: 0px;\">\r\n											<div style=\"color:#393d47;font-family:Montserrat, Trebuchet MS, Lucida Grande, Lucida Sans Unicode, Lucida Sans, Tahoma, sans-serif;line-height:2;padding-top:25px;padding-right:30px;padding-bottom:25px;padding-left:30px;\">\r\n												<div class=\"txtTinyMce-wrapper\" style=\"line-height: 2; font-size: 12px; font-family: Montserrat, Trebuchet MS, Lucida Grande, Lucida Sans Unicode, Lucida Sans, Tahoma, sans-serif; color: #393d47; mso-line-height-alt: 24px;\">\r\n													<p style=\"font-size: 14px; line-height: 2; word-break: break-word; font-family: Montserrat, Trebuchet MS, Lucida Grande, Lucida Sans Unicode, Lucida Sans, Tahoma, sans-serif; mso-line-height-alt: 28px; margin: 0;\">Bonjour<br>Vos identifiants de connexion sur {SERVICE}<br>\r\n													email : {EMAIL}; <br>\r\n													Nouveau Mot de passe : {PASSWORD}    </p>\r\n												</div>\r\n											</div>\r\n										</div>\r\n									</div>\r\n								</div>\r\n							</div>\r\n						</div>\r\n					</div>\r\n					<div style=\"background-color:transparent;\">\r\n						<div class=\"block-grid three-up\" style=\"min-width: 320px; max-width: 630px; overflow-wrap: break-word; word-wrap: break-word; word-break: break-word; Margin: 0 auto; background-color: #3a72a2;\">\r\n							<div style=\"border-collapse: collapse;display: table;width: 100%;background-color:#3a72a2;\">\r\n								<div class=\"col num4\" style=\"display: table-cell; vertical-align: top; max-width: 320px; min-width: 208px; width: 210px;\">\r\n									<div class=\"col_cont\" style=\"width:100% !important;\">\r\n										\r\n										<div style=\"border-top:0px solid transparent; border-left:0px solid transparent; border-bottom:0px solid transparent; border-right:0px solid transparent; padding-top:5px; padding-bottom:20px; padding-right: 0px; padding-left: 0px;\">\r\n											\r\n											<div align=\"center\" class=\"img-container center autowidth\" style=\"padding-right: 0px;padding-left: 0px;\">\r\n											</div>\r\n											\r\n										</div>\r\n									</div>\r\n								</div>\r\n								<div class=\"col num4\" style=\"display: table-cell; vertical-align: top; max-width: 320px; min-width: 208px; width: 210px;\">\r\n									<div class=\"col_cont\" style=\"width:100% !important;\">\r\n										<!--[if (!mso)&(!IE)]><!-->\r\n										<div style=\"border-top:0px solid transparent; border-left:0px solid transparent; border-bottom:0px solid transparent; border-right:0px solid transparent; padding-top:5px; padding-bottom:5px; padding-right: 0px; padding-left: 0px;\">\r\n											<!--<![endif]-->\r\n											<div align=\"center\" class=\"img-container center autowidth\" style=\"padding-right: 0px;padding-left: 0px;\">\r\n											</div>\r\n										</div>\r\n										<!--<![endif]-->\r\n									</div>\r\n								</div>\r\n								<div class=\"col num4\" style=\"display: table-cell; vertical-align: top; max-width: 320px; min-width: 208px; width: 210px;\">\r\n									<div class=\"col_cont\" style=\"width:100% !important;\">\r\n										<!--[if (!mso)&(!IE)]><!-->\r\n										<div style=\"border-top:0px solid transparent; border-left:0px solid transparent; border-bottom:0px solid transparent; border-right:0px solid transparent; padding-top:5px; padding-bottom:5px; padding-right: 0px; padding-left: 0px;\">\r\n											<!--<![endif]-->\r\n											<div align=\"center\" class=\"img-container center autowidth\" style=\"padding-right: 0px;padding-left: 0px;\">\r\n											</div>\r\n										</div>\r\n										<!--<![endif]-->\r\n									</div>\r\n								</div>\r\n							</div>\r\n						</div>\r\n					</div>\r\n					<div style=\"background-color:transparent;\">\r\n						<div class=\"block-grid two-up\" style=\"min-width: 320px; max-width: 630px; overflow-wrap: break-word; word-wrap: break-word; word-break: break-word; Margin: 0 auto; background-color: #f5f5f5;\">\r\n							<div style=\"border-collapse: collapse;display: table;width: 100%;background-color:#f5f5f5;\">\r\n								<div class=\"col num6\" style=\"display: table-cell; vertical-align: top; max-width: 320px; min-width: 312px; width: 315px;\">\r\n									<div class=\"col_cont\" style=\"width:100% !important;\">\r\n										<!--[if (!mso)&(!IE)]><!-->\r\n										<div style=\"border-top:0px solid transparent; border-left:0px solid transparent; border-bottom:0px solid transparent; border-right:0px solid transparent; padding-top:5px; padding-bottom:5px; padding-right: 0px; padding-left: 0px;\">\r\n											<div style=\"color:#393d47;font-family:Montserrat, Trebuchet MS, Lucida Grande, Lucida Sans Unicode, Lucida Sans, Tahoma, sans-serif;line-height:1.8;padding-top:25px;padding-right:15px;padding-bottom:30px;padding-left:45px;\">\r\n												<div class=\"txtTinyMce-wrapper\" style=\"line-height: 1.8; font-size: 12px; color: #393d47; font-family: Montserrat, Trebuchet MS, Lucida Grande, Lucida Sans Unicode, Lucida Sans, Tahoma, sans-serif; mso-line-height-alt: 22px;\">\r\n														<p style=\"font-size: 14px; line-height: 1.8; word-break: break-word; text-align: center; mso-line-height-alt: 25px; margin: 0;\"> <a href=\"javascript:void(0)\" rel=\"noopener\" style=\"color: #78a8d5;\" target=\"_blank\">{SERVICE}</a></p>\r\n												</div>\r\n											</div>\r\n											<!--[if mso]></td></tr></table><![endif]-->\r\n											<!--[if (!mso)&(!IE)]><!-->\r\n										</div>\r\n										<!--<![endif]-->\r\n									</div>\r\n								</div>\r\n							</div>\r\n						</div>\r\n					</div>\r\n				</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n	<!--[if (IE)]></div><![endif]-->\r\n</body>\r\n\r\n</html>', 7),
(7, '{SUBJECT} - {SERVICE}', '<!DOCTYPE html>\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n<head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n<title>{SERVICE}</title>\r\n<style type=\"text/css\">\r\n.ReadMsgBody {\r\n	width: 100%;\r\n	background-color: #ffffff;\r\n}\r\n\r\n.ExternalClass {\r\n	width: 100%;\r\n	background-color: #ffffff;\r\n}\r\n\r\nbody {\r\n	width: 100%;\r\n	background-color: #ffffff;\r\n	margin: 0;\r\n	padding: 0;\r\n	-webkit-font-smoothing: antialiased;\r\n	font-family: Arial, Helvetica, sans-serif\r\n}\r\n\r\ntable {\r\n	border-collapse: collapse;\r\n}\r\n\r\n@media only screen and (max-width: 640px) {\r\n	body[yahoo] .deviceWidth {\r\n		width: 440px !important;\r\n		padding: 0;\r\n	}\r\n	body[yahoo] .center {\r\n		text-align: center !important;\r\n	}\r\n}\r\n\r\n@media only screen and (max-width: 479px) {\r\n	body[yahoo] .deviceWidth {\r\n		width: 280px !important;\r\n		padding: 0;\r\n	}\r\n	body[yahoo] .center {\r\n		text-align: center !important;\r\n	}\r\n}\r\n</style>\r\n</head>\r\n<body leftmargin=\"0\" topmargin=\"0\" yahoo=\"fix\"\r\n	style=\"font-family: Arial, Helvetica, sans-serif\" marginheight=\"0\"\r\n	marginwidth=\"0\">\r\n	<!-- Wrapper -->\r\n	<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\"\r\n		width=\"100%\">\r\n		<tbody>\r\n			<tr>\r\n				<td style=\"padding-top: 20px\" bgcolor=\"#ffffff\" valign=\"top\"\r\n					width=\"100%\">\r\n					<!--Start Header-->\r\n					<table class=\"deviceWidth\" align=\"center\" bgcolor=\"#fff\" border=\"0\"\r\n						cellpadding=\"0\" cellspacing=\"0\" width=\"700\">\r\n						<tbody>\r\n							<tr>\r\n								<td style=\"padding: 6px 0px 0px\">\r\n									<table class=\"deviceWidth\" align=\"center\" border=\"0\"\r\n										cellpadding=\"0\" cellspacing=\"0\" width=\"680\">\r\n										<tbody>\r\n											<tr>\r\n												<td width=\"100%\">\r\n													<!--Start logo-->\r\n													<table class=\"deviceWidth\" align=\"left\" border=\"0\"\r\n														cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\r\n														<tbody>\r\n															<tr>\r\n																<td class=\"center\" style=\"padding: 10px 0px 10px 0px;\"\r\n																	width=\"50%\"><a href=\"#\"><img\r\n																		src=\"{SITE_URL}/design/logo_tp.png\"></a></td>\r\n																<td class=\"center\" width=\"50%\"\r\n																	style=\"font-size: 20px; color: #272727; font-weight: light; text-align: center; font-family: Arial, Helvetica, sans-serif; line-height: 25px; vertical-align: middle; padding: 10px 0px 10px 0px;\">A vos côtés, à tout moment \r\n																</td>\r\n															</tr>\r\n														</tbody>\r\n													</table> \r\n													<!-- <table class=\"deviceWidth\" align=\"right\" border=\"0\"\r\n														cellpadding=\"0\" cellspacing=\"0\" width=\"100%\">\r\n														<tbody>\r\n															<tr>\r\n																<td\r\n																	style=\"font-size: 13px; color: #272727; font-weight: light; text-align: left; font-family: Arial, Helvetica, sans-serif; line-height: 25px; vertical-align: middle; padding: 10px 0px 10px 0px;\">\r\n																	Cher(e) client(e),<br> Veuillez trouver ci-après\r\n																	la preuve de livraison de votre expédition.\r\n																</td>\r\n															</tr>\r\n														</tbody>\r\n													</table>  -->\r\n												</td>\r\n											</tr>\r\n										</tbody>\r\n									</table>\r\n								</td>\r\n							</tr>\r\n						</tbody>\r\n					</table> <!--End Header-->\r\n\r\n					<!-- <table class=\"deviceWidth\" align=\"center\" border=\"0\"\r\n						cellpadding=\"0\" cellspacing=\"0\" width=\"700\">\r\n						<tbody>\r\n							<tr>\r\n								<td bgcolor=\"#ffffff\" width=\"100%\">\r\n									<table class=\"deviceWidth\" align=\"center\" border=\"0\"\r\n										cellpadding=\"0\" cellspacing=\"0\" width=\"700\">\r\n										<tbody>\r\n											<tr>\r\n												<td bgcolor=\"#7FBA00\" width=\"49%\"\r\n													style=\"font-size: 15px; text-align: center; font-weight: bold;\">Votre\r\n													expéditeur</td>\r\n												<td bgcolor=\"#7FBA00\" width=\"49%\"\r\n													style=\"font-size: 15px; text-align: center; font-weight: bold\">Votre\r\n													destinataire</td>\r\n											</tr>\r\n											<tr>\r\n												<td class=\"center\"\r\n													style=\"font-size: 14px; color: #303030; font-weight: light; text-align: center; font-family: Arial, Helvetica, sans-serif; line-height: 25px; vertical-align: top; padding: 0px 10px;\">{SOURCE}\r\n												</td>\r\n												<td class=\"center\"\r\n													style=\"font-size: 14px; color: #303030; font-weight: light; text-align: center; font-family: Arial, Helvetica, sans-serif; line-height: 25px; vertical-align: top; padding: 0px 10px;\">{CONSIGNEE}\r\n												</td>\r\n											</tr>\r\n											<tr>\r\n												<td\r\n													style=\"font-size: 13px; color: #303030; font-weight: light; text-align: left; font-family: Arial, Helvetica, sans-serif; line-height: 25px; vertical-align: top; padding: 0px 10px;\">\r\n													Nb colis : {NB_ITEM} - Poids : {WEIGHT} Kg <br>Date\r\n													d\'enlèvement estimée : {PICKUP_DATE} - {PICKUP_TIME} <br />Nom\r\n													du contact : {CONTACT_SOURCE}\r\n												</td>\r\n												<td\r\n													style=\"font-size: 13px; color: #303030; font-weight: light; text-align: left; font-family: Arial, Helvetica, sans-serif; line-height: 25px; vertical-align: top; padding: 0px 10px;\">Contenu\r\n													: {CONTENT} <br />Date de livraison estimée :\r\n													{DELIVERY_DATE} - {DELIVERY_TIME} <br />A l\'attention de :\r\n													{CONTACT_ATTN} <br />\r\n												<br />\r\n												</td>\r\n											</tr>\r\n											<tr>\r\n												<td align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" colspan=\"2\"\r\n													width=\"80%\">\r\n\r\n													<table class=\"deviceWidth\" align=\"right\" border=\"0\"\r\n														cellpadding=\"0\" cellspacing=\"0\" width=\"100%\"\r\n														style=\"font-size: 13px; color: #303030; font-weight: light; text-align: left; font-family: Arial, Helvetica, sans-serif; line-height: 25px; vertical-align: top; padding: 0px 10px;\">\r\n\r\n														<tbody>\r\n															<tr>\r\n																<td colspan=\'3\'\r\n																	style=\"font-size: 20px; text-align: center; color: #ffa07a;\">\r\n																	Votre preuve de livraison</td>\r\n															</tr>\r\n															<tr>\r\n																<td><strong>Date et heure de livraison</strong></td>\r\n																<td><strong>{DATE} - {TIME}</strong></td>\r\n															</tr>\r\n															<tr>\r\n																<td><strong>Signature</strong></td>\r\n																<td><strong>{SIGNATURE}</strong></td>\r\n															</tr>\r\n														</tbody>\r\n													</table>\r\n												</td>\r\n											</tr>\r\n										</tbody>\r\n									</table>\r\n								</td>\r\n							</tr>\r\n						</tbody>\r\n					</table> -->\r\n\r\n					<div style=\"height: 15px\">&nbsp;</div>\r\n\r\n					<table class=\"deviceWidth\" align=\"center\" border=\"0\"\r\n						cellpadding=\"0\" cellspacing=\"0\" width=\"700\">\r\n						<tbody>\r\n							<tr>\r\n								<td bgcolor=\"#ffffff\" width=\"100%\" colspan=\"2\"\r\n									style=\"font-size: 13px; color: #303030; font-weight: light; text-align: left; font-family: Arial, Helvetica, sans-serif; line-height: 25px; vertical-align: top; padding: 0px 10px;\">\r\n\r\n									<p>{MESSAGE}</p>\r\n									<br> <br> Nous restons à votre écoute pour tout\r\n									complément d\'information<br> Salutations cordiales,<br>\r\n									Service {SERVICE}<br> Tél : {COMPPHONE}\r\n								</td>\r\n							</tr>\r\n						</tbody>\r\n					</table>\r\n				</td>\r\n			</tr>\r\n\r\n			<tr>\r\n				<td class=\"center\" bgcolor=\"#7FBA00\" width=\"100%\">\r\n					<table align=\"center\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n						<tbody>\r\n							<tr>\r\n								<td\r\n									style=\"font-size: 13px; color: #303030; font-weight: light; text-align: left; font-family: Arial, Helvetica, sans-serif; line-height: 25px; vertical-align: top; padding: 0px 10px;\"\r\n									class=\"center\" valign=\"top\">{SERVICE} -\r\n									{ADDRESS}- {ZIPCODE} {COMPCITY} -\r\n									{COMPCOUNTRY}<br> Tél : {COMPPHONE} \r\n									\r\n								</td>\r\n							</tr>\r\n						</tbody>\r\n					</table>\r\n				</td>\r\n			</tr>\r\n			<tr>\r\n				<td class=\"center\"\r\n					style=\"font-size: 12px; color: #687074; font-weight: light; text-align: center; font-family: Arial, Helvetica, sans-serif; line-height: 25px; vertical-align: middle; padding: 20px 50px 0px 50px;\"\r\n					bgcolor=\"#ffffff\">Copyright © {SERVICE} All rights\r\n					reserved.</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n	<!--End Left Box-->\r\n</body>\r\n</html>', 6),
(8, '{SUBJECT} - {SERVICE}', '<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional //EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\" xmlns:o=\"urn:schemas-microsoft-com:office:office\" xmlns:v=\"urn:schemas-microsoft-com:vml\">\r\n\r\n<head>\r\n	<!--[if gte mso 9]><xml><o:OfficeDocumentSettings><o:AllowPNG/><o:PixelsPerInch>96</o:PixelsPerInch></o:OfficeDocumentSettings></xml><![endif]-->\r\n	<meta content=\"text/html; charset=utf-8\" http-equiv=\"Content-Type\" />\r\n	<meta content=\"width=device-width\" name=\"viewport\" />\r\n	<!--[if !mso]><!-->\r\n	<meta content=\"IE=edge\" http-equiv=\"X-UA-Compatible\" />\r\n	<!--<![endif]-->\r\n	<title></title>\r\n	<!--[if !mso]><!-->\r\n	<link href=\"https://fonts.googleapis.com/css?family=Montserrat\" rel=\"stylesheet\" type=\"text/css\" />\r\n	<link href=\"https://fonts.googleapis.com/css?family=Roboto\" rel=\"stylesheet\" type=\"text/css\" />\r\n	<!--<![endif]-->\r\n	<style type=\"text/css\">\r\n		body {\r\n			margin: 0;\r\n			padding: 0;\r\n		}\r\n\r\n		table,\r\n		td,\r\n		tr {\r\n			vertical-align: top;\r\n			border-collapse: collapse;\r\n		}\r\n\r\n		* {\r\n			line-height: inherit;\r\n		}\r\n\r\n		a[x-apple-data-detectors=true] {\r\n			color: inherit !important;\r\n			text-decoration: none !important;\r\n		}\r\n	</style>\r\n	<style id=\"media-query\" type=\"text/css\">\r\n		@media (max-width: 650px) {\r\n\r\n			.block-grid,\r\n			.col {\r\n				min-width: 320px !important;\r\n				max-width: 100% !important;\r\n				display: block !important;\r\n			}\r\n\r\n			.block-grid {\r\n				width: 100% !important;\r\n			}\r\n\r\n			.col {\r\n				width: 100% !important;\r\n			}\r\n\r\n			.col_cont {\r\n				margin: 0 auto;\r\n			}\r\n\r\n			img.fullwidth,\r\n			img.fullwidthOnMobile {\r\n				max-width: 100% !important;\r\n			}\r\n\r\n			.no-stack .col {\r\n				min-width: 0 !important;\r\n				display: table-cell !important;\r\n			}\r\n\r\n			.no-stack.two-up .col {\r\n				width: 50% !important;\r\n			}\r\n\r\n			.no-stack .col.num2 {\r\n				width: 16.6% !important;\r\n			}\r\n\r\n			.no-stack .col.num3 {\r\n				width: 25% !important;\r\n			}\r\n\r\n			.no-stack .col.num4 {\r\n				width: 33% !important;\r\n			}\r\n\r\n			.no-stack .col.num5 {\r\n				width: 41.6% !important;\r\n			}\r\n\r\n			.no-stack .col.num6 {\r\n				width: 50% !important;\r\n			}\r\n\r\n			.no-stack .col.num7 {\r\n				width: 58.3% !important;\r\n			}\r\n\r\n			.no-stack .col.num8 {\r\n				width: 66.6% !important;\r\n			}\r\n\r\n			.no-stack .col.num9 {\r\n				width: 75% !important;\r\n			}\r\n\r\n			.no-stack .col.num10 {\r\n				width: 83.3% !important;\r\n			}\r\n\r\n			.video-block {\r\n				max-width: none !important;\r\n			}\r\n\r\n			.mobile_hide {\r\n				min-height: 0px;\r\n				max-height: 0px;\r\n				max-width: 0px;\r\n				display: none;\r\n				overflow: hidden;\r\n				font-size: 0px;\r\n			}\r\n\r\n			.desktop_hide {\r\n				display: block !important;\r\n				max-height: none !important;\r\n			}\r\n		}\r\n	</style>\r\n</head>\r\n\r\n<body class=\"clean-body\" style=\"margin: 0; padding: 0; -webkit-text-size-adjust: 100%; background-color: #FFFFFF;\">\r\n	<!--[if IE]><div class=\"ie-browser\"><![endif]-->\r\n	<table bgcolor=\"#FFFFFF\" cellpadding=\"0\" cellspacing=\"0\" class=\"nl-container\" role=\"presentation\" style=\"table-layout: fixed; vertical-align: top; min-width: 320px; border-spacing: 0; border-collapse: collapse; mso-table-lspace: 0pt; mso-table-rspace: 0pt; background-color: #FFFFFF; width: 100%;\" valign=\"top\" width=\"100%\">\r\n		<tbody>\r\n			<tr style=\"vertical-align: top;\" valign=\"top\">\r\n				<td style=\"word-break: break-word; vertical-align: top;\" valign=\"top\">\r\n					<!--[if (mso)|(IE)]><table width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\"><tr><td align=\"center\" style=\"background-color:#FFFFFF\"><![endif]-->\r\n					<div style=\"background-position:center top;background-repeat:no-repeat;\">\r\n						<div class=\"block-grid\" style=\"min-width: 320px; max-width: 630px; overflow-wrap: break-word; word-wrap: break-word; word-break: break-word; Margin: 0 auto; background-color: transparent;\">\r\n							<div style=\"border-collapse: collapse;display: table;width: 100%;background-color:transparent;\">\r\n								<div class=\"col num12\" style=\"min-width: 320px; max-width: 630px; display: table-cell; vertical-align: top; width: 630px;\">\r\n									<div class=\"col_cont\" style=\"width:100% !important;\">\r\n										<!--[if (!mso)&(!IE)]><!-->\r\n										<div style=\"border-top:0px solid transparent; border-left:0px solid transparent; border-bottom:0px solid transparent; border-right:0px solid transparent; padding-top:0px; padding-bottom:0px; padding-right: 0px; padding-left: 0px;\">\r\n											<div align=\"center\" class=\"img-container center autowidth\" style=\"padding-right: 0px;padding-left: 0px;\">\r\n												<!--[if mso]></td></tr></table><![endif]-->\r\n											</div>\r\n											<!--[if (!mso)&(!IE)]><!-->\r\n										</div>\r\n										<!--<![endif]-->\r\n									</div>\r\n								</div>\r\n							</div>\r\n						</div>\r\n					</div>\r\n					<div style=\"background-color:transparent;\">\r\n						<div class=\"block-grid\" style=\"min-width: 320px; max-width: 630px; overflow-wrap: break-word; word-wrap: break-word; word-break: break-word; Margin: 0 auto; background-color: transparent;\">\r\n							<div style=\"border-collapse: collapse;display: table;width: 100%;background-color:transparent;\">\r\n								<div class=\"col num12\" style=\"min-width: 320px; max-width: 630px; display: table-cell; vertical-align: top; width: 630px;\">\r\n									<div class=\"col_cont\" style=\"width:100% !important;\">\r\n										<!--[if (!mso)&(!IE)]><!-->\r\n										<div style=\"border-top:0px solid transparent; border-left:0px solid transparent; border-bottom:0px solid transparent; border-right:0px solid transparent; padding-top:5px; padding-bottom:25px; padding-right: 0px; padding-left: 0px;\">\r\n											<div style=\"color:#393d47;font-family:Montserrat, Trebuchet MS, Lucida Grande, Lucida Sans Unicode, Lucida Sans, Tahoma, sans-serif;line-height:2;padding-top:25px;padding-right:30px;padding-bottom:25px;padding-left:30px;\">\r\n												<div class=\"txtTinyMce-wrapper\" style=\"line-height: 2; font-size: 12px; font-family: Montserrat, Trebuchet MS, Lucida Grande, Lucida Sans Unicode, Lucida Sans, Tahoma, sans-serif; color: #393d47; mso-line-height-alt: 24px;\">\r\n													<p style=\"font-size: 14px; line-height: 2; word-break: break-word; font-family: Montserrat, Trebuchet MS, Lucida Grande, Lucida Sans Unicode, Lucida Sans, Tahoma, sans-serif; mso-line-height-alt: 28px; margin: 0;\">Bonjour Mr/Mme {LASTNAME}<br>Votre email a été ajouté dans notre base de données.<br>\r\n													Cordialement !   </p>\r\n												</div>\r\n											</div>\r\n										</div>\r\n									</div>\r\n								</div>\r\n							</div>\r\n						</div>\r\n					</div>\r\n					<div style=\"background-color:transparent;\">\r\n						<div class=\"block-grid three-up\" style=\"min-width: 320px; max-width: 630px; overflow-wrap: break-word; word-wrap: break-word; word-break: break-word; Margin: 0 auto; background-color: #3a72a2;\">\r\n							<div style=\"border-collapse: collapse;display: table;width: 100%;background-color:#3a72a2;\">\r\n								<div class=\"col num4\" style=\"display: table-cell; vertical-align: top; max-width: 320px; min-width: 208px; width: 210px;\">\r\n									<div class=\"col_cont\" style=\"width:100% !important;\">\r\n										\r\n										<div style=\"border-top:0px solid transparent; border-left:0px solid transparent; border-bottom:0px solid transparent; border-right:0px solid transparent; padding-top:5px; padding-bottom:20px; padding-right: 0px; padding-left: 0px;\">\r\n											\r\n											<div align=\"center\" class=\"img-container center autowidth\" style=\"padding-right: 0px;padding-left: 0px;\">\r\n											</div>\r\n											\r\n										</div>\r\n									</div>\r\n								</div>\r\n								<div class=\"col num4\" style=\"display: table-cell; vertical-align: top; max-width: 320px; min-width: 208px; width: 210px;\">\r\n									<div class=\"col_cont\" style=\"width:100% !important;\">\r\n										<!--[if (!mso)&(!IE)]><!-->\r\n										<div style=\"border-top:0px solid transparent; border-left:0px solid transparent; border-bottom:0px solid transparent; border-right:0px solid transparent; padding-top:5px; padding-bottom:5px; padding-right: 0px; padding-left: 0px;\">\r\n											<!--<![endif]-->\r\n											<div align=\"center\" class=\"img-container center autowidth\" style=\"padding-right: 0px;padding-left: 0px;\">\r\n											</div>\r\n										</div>\r\n										<!--<![endif]-->\r\n									</div>\r\n								</div>\r\n								<div class=\"col num4\" style=\"display: table-cell; vertical-align: top; max-width: 320px; min-width: 208px; width: 210px;\">\r\n									<div class=\"col_cont\" style=\"width:100% !important;\">\r\n										<!--[if (!mso)&(!IE)]><!-->\r\n										<div style=\"border-top:0px solid transparent; border-left:0px solid transparent; border-bottom:0px solid transparent; border-right:0px solid transparent; padding-top:5px; padding-bottom:5px; padding-right: 0px; padding-left: 0px;\">\r\n											<!--<![endif]-->\r\n											<div align=\"center\" class=\"img-container center autowidth\" style=\"padding-right: 0px;padding-left: 0px;\">\r\n											</div>\r\n										</div>\r\n										<!--<![endif]-->\r\n									</div>\r\n								</div>\r\n							</div>\r\n						</div>\r\n					</div>\r\n					<div style=\"background-color:transparent;\">\r\n						<div class=\"block-grid two-up\" style=\"min-width: 320px; max-width: 630px; overflow-wrap: break-word; word-wrap: break-word; word-break: break-word; Margin: 0 auto; background-color: #f5f5f5;\">\r\n							<div style=\"border-collapse: collapse;display: table;width: 100%;background-color:#f5f5f5;\">\r\n								<div class=\"col num6\" style=\"display: table-cell; vertical-align: top; max-width: 320px; min-width: 312px; width: 315px;\">\r\n									<div class=\"col_cont\" style=\"width:100% !important;\">\r\n										<!--[if (!mso)&(!IE)]><!-->\r\n										<div style=\"border-top:0px solid transparent; border-left:0px solid transparent; border-bottom:0px solid transparent; border-right:0px solid transparent; padding-top:5px; padding-bottom:5px; padding-right: 0px; padding-left: 0px;\">\r\n											<div style=\"color:#393d47;font-family:Montserrat, Trebuchet MS, Lucida Grande, Lucida Sans Unicode, Lucida Sans, Tahoma, sans-serif;line-height:1.8;padding-top:25px;padding-right:15px;padding-bottom:30px;padding-left:45px;\">\r\n												<div class=\"txtTinyMce-wrapper\" style=\"line-height: 1.8; font-size: 12px; color: #393d47; font-family: Montserrat, Trebuchet MS, Lucida Grande, Lucida Sans Unicode, Lucida Sans, Tahoma, sans-serif; mso-line-height-alt: 22px;\">\r\n														<p style=\"font-size: 14px; line-height: 1.8; word-break: break-word; text-align: center; mso-line-height-alt: 25px; margin: 0;\"> <a href=\"javascript:void(0)\" rel=\"noopener\" style=\"color: #78a8d5;\" target=\"_blank\">{SERVICE}</a></p>\r\n												</div>\r\n											</div>\r\n											<!--[if mso]></td></tr></table><![endif]-->\r\n											<!--[if (!mso)&(!IE)]><!-->\r\n										</div>\r\n										<!--<![endif]-->\r\n									</div>\r\n								</div>\r\n							</div>\r\n						</div>\r\n					</div>\r\n				</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n	<!--[if (IE)]></div><![endif]-->\r\n</body>\r\n\r\n</html>', 8),
(9, '{SUBJECT} - {SERVICE}', '<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional //EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n<html xmlns=\"http://www.w3.org/1999/xhtml\" xmlns:o=\"urn:schemas-microsoft-com:office:office\" xmlns:v=\"urn:schemas-microsoft-com:vml\">\r\n\r\n<head>\r\n	<!--[if gte mso 9]><xml><o:OfficeDocumentSettings><o:AllowPNG/><o:PixelsPerInch>96</o:PixelsPerInch></o:OfficeDocumentSettings></xml><![endif]-->\r\n	<meta content=\"text/html; charset=utf-8\" http-equiv=\"Content-Type\" />\r\n	<meta content=\"width=device-width\" name=\"viewport\" />\r\n	<!--[if !mso]><!-->\r\n	<meta content=\"IE=edge\" http-equiv=\"X-UA-Compatible\" />\r\n	<!--<![endif]-->\r\n	<title></title>\r\n	<!--[if !mso]><!-->\r\n	<link href=\"https://fonts.googleapis.com/css?family=Montserrat\" rel=\"stylesheet\" type=\"text/css\" />\r\n	<link href=\"https://fonts.googleapis.com/css?family=Roboto\" rel=\"stylesheet\" type=\"text/css\" />\r\n	<!--<![endif]-->\r\n	<style type=\"text/css\">\r\n		body {\r\n			margin: 0;\r\n			padding: 0;\r\n		}\r\n\r\n		table,\r\n		td,\r\n		tr {\r\n			vertical-align: top;\r\n			border-collapse: collapse;\r\n		}\r\n\r\n		* {\r\n			line-height: inherit;\r\n		}\r\n\r\n		a[x-apple-data-detectors=true] {\r\n			color: inherit !important;\r\n			text-decoration: none !important;\r\n		}\r\n	</style>\r\n	<style id=\"media-query\" type=\"text/css\">\r\n		@media (max-width: 650px) {\r\n\r\n			.block-grid,\r\n			.col {\r\n				min-width: 320px !important;\r\n				max-width: 100% !important;\r\n				display: block !important;\r\n			}\r\n\r\n			.block-grid {\r\n				width: 100% !important;\r\n			}\r\n\r\n			.col {\r\n				width: 100% !important;\r\n			}\r\n\r\n			.col_cont {\r\n				margin: 0 auto;\r\n			}\r\n\r\n			img.fullwidth,\r\n			img.fullwidthOnMobile {\r\n				max-width: 100% !important;\r\n			}\r\n\r\n			.no-stack .col {\r\n				min-width: 0 !important;\r\n				display: table-cell !important;\r\n			}\r\n\r\n			.no-stack.two-up .col {\r\n				width: 50% !important;\r\n			}\r\n\r\n			.no-stack .col.num2 {\r\n				width: 16.6% !important;\r\n			}\r\n\r\n			.no-stack .col.num3 {\r\n				width: 25% !important;\r\n			}\r\n\r\n			.no-stack .col.num4 {\r\n				width: 33% !important;\r\n			}\r\n\r\n			.no-stack .col.num5 {\r\n				width: 41.6% !important;\r\n			}\r\n\r\n			.no-stack .col.num6 {\r\n				width: 50% !important;\r\n			}\r\n\r\n			.no-stack .col.num7 {\r\n				width: 58.3% !important;\r\n			}\r\n\r\n			.no-stack .col.num8 {\r\n				width: 66.6% !important;\r\n			}\r\n\r\n			.no-stack .col.num9 {\r\n				width: 75% !important;\r\n			}\r\n\r\n			.no-stack .col.num10 {\r\n				width: 83.3% !important;\r\n			}\r\n\r\n			.video-block {\r\n				max-width: none !important;\r\n			}\r\n\r\n			.mobile_hide {\r\n				min-height: 0px;\r\n				max-height: 0px;\r\n				max-width: 0px;\r\n				display: none;\r\n				overflow: hidden;\r\n				font-size: 0px;\r\n			}\r\n\r\n			.desktop_hide {\r\n				display: block !important;\r\n				max-height: none !important;\r\n			}\r\n		}\r\n	</style>\r\n</head>\r\n\r\n<body class=\"clean-body\" style=\"margin: 0; padding: 0; -webkit-text-size-adjust: 100%; background-color: #FFFFFF;\">\r\n	<!--[if IE]><div class=\"ie-browser\"><![endif]-->\r\n	<table bgcolor=\"#FFFFFF\" cellpadding=\"0\" cellspacing=\"0\" class=\"nl-container\" role=\"presentation\" style=\"table-layout: fixed; vertical-align: top; min-width: 320px; border-spacing: 0; border-collapse: collapse; mso-table-lspace: 0pt; mso-table-rspace: 0pt; background-color: #FFFFFF; width: 100%;\" valign=\"top\" width=\"100%\">\r\n		<tbody>\r\n			<tr style=\"vertical-align: top;\" valign=\"top\">\r\n				<td style=\"word-break: break-word; vertical-align: top;\" valign=\"top\">\r\n					<!--[if (mso)|(IE)]><table width=\"100%\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\"><tr><td align=\"center\" style=\"background-color:#FFFFFF\"><![endif]-->\r\n					<div style=\"background-position:center top;background-repeat:no-repeat;\">\r\n						<div class=\"block-grid\" style=\"min-width: 320px; max-width: 630px; overflow-wrap: break-word; word-wrap: break-word; word-break: break-word; Margin: 0 auto; background-color: transparent;\">\r\n							<div style=\"border-collapse: collapse;display: table;width: 100%;background-color:transparent;\">\r\n								<div class=\"col num12\" style=\"min-width: 320px; max-width: 630px; display: table-cell; vertical-align: top; width: 630px;\">\r\n									<div class=\"col_cont\" style=\"width:100% !important;\">\r\n										<!--[if (!mso)&(!IE)]><!-->\r\n										<div style=\"border-top:0px solid transparent; border-left:0px solid transparent; border-bottom:0px solid transparent; border-right:0px solid transparent; padding-top:0px; padding-bottom:0px; padding-right: 0px; padding-left: 0px;\">\r\n											<div align=\"center\" class=\"img-container center autowidth\" style=\"padding-right: 0px;padding-left: 0px;\">\r\n												<!--[if mso]></td></tr></table><![endif]-->\r\n											</div>\r\n											<!--[if (!mso)&(!IE)]><!-->\r\n										</div>\r\n										<!--<![endif]-->\r\n									</div>\r\n								</div>\r\n							</div>\r\n						</div>\r\n					</div>\r\n					<div style=\"background-color:transparent;\">\r\n						<div class=\"block-grid\" style=\"min-width: 320px; max-width: 630px; overflow-wrap: break-word; word-wrap: break-word; word-break: break-word; Margin: 0 auto; background-color: transparent;\">\r\n							<div style=\"border-collapse: collapse;display: table;width: 100%;background-color:transparent;\">\r\n								<div class=\"col num12\" style=\"min-width: 320px; max-width: 630px; display: table-cell; vertical-align: top; width: 630px;\">\r\n									<div class=\"col_cont\" style=\"width:100% !important;\">\r\n										<!--[if (!mso)&(!IE)]><!-->\r\n										<div style=\"border-top:0px solid transparent; border-left:0px solid transparent; border-bottom:0px solid transparent; border-right:0px solid transparent; padding-top:5px; padding-bottom:25px; padding-right: 0px; padding-left: 0px;\">\r\n											<div style=\"color:#393d47;font-family:Montserrat, Trebuchet MS, Lucida Grande, Lucida Sans Unicode, Lucida Sans, Tahoma, sans-serif;line-height:2;padding-top:25px;padding-right:30px;padding-bottom:25px;padding-left:30px;\">\r\n												<div class=\"txtTinyMce-wrapper\" style=\"line-height: 2; font-size: 12px; font-family: Montserrat, Trebuchet MS, Lucida Grande, Lucida Sans Unicode, Lucida Sans, Tahoma, sans-serif; color: #393d47; mso-line-height-alt: 24px;\">\r\n													<p style=\"font-size: 14px; line-height: 2; word-break: break-word; font-family: Montserrat, Trebuchet MS, Lucida Grande, Lucida Sans Unicode, Lucida Sans, Tahoma, sans-serif; mso-line-height-alt: 28px; margin: 0;\">Bonjour<br>Vos identifiants de connexion sur {SERVICE}<br>\r\n													email : {EMAIL}; <br>\r\n													Nouveau Mot de passe : {PASSWORD}    </p>\r\n												</div>\r\n											</div>\r\n										</div>\r\n									</div>\r\n								</div>\r\n							</div>\r\n						</div>\r\n					</div>\r\n					<div style=\"background-color:transparent;\">\r\n						<div class=\"block-grid three-up\" style=\"min-width: 320px; max-width: 630px; overflow-wrap: break-word; word-wrap: break-word; word-break: break-word; Margin: 0 auto; background-color: #3a72a2;\">\r\n							<div style=\"border-collapse: collapse;display: table;width: 100%;background-color:#3a72a2;\">\r\n								<div class=\"col num4\" style=\"display: table-cell; vertical-align: top; max-width: 320px; min-width: 208px; width: 210px;\">\r\n									<div class=\"col_cont\" style=\"width:100% !important;\">\r\n										\r\n										<div style=\"border-top:0px solid transparent; border-left:0px solid transparent; border-bottom:0px solid transparent; border-right:0px solid transparent; padding-top:5px; padding-bottom:20px; padding-right: 0px; padding-left: 0px;\">\r\n											\r\n											<div align=\"center\" class=\"img-container center autowidth\" style=\"padding-right: 0px;padding-left: 0px;\">\r\n											</div>\r\n											\r\n										</div>\r\n									</div>\r\n								</div>\r\n								<div class=\"col num4\" style=\"display: table-cell; vertical-align: top; max-width: 320px; min-width: 208px; width: 210px;\">\r\n									<div class=\"col_cont\" style=\"width:100% !important;\">\r\n										<!--[if (!mso)&(!IE)]><!-->\r\n										<div style=\"border-top:0px solid transparent; border-left:0px solid transparent; border-bottom:0px solid transparent; border-right:0px solid transparent; padding-top:5px; padding-bottom:5px; padding-right: 0px; padding-left: 0px;\">\r\n											<!--<![endif]-->\r\n											<div align=\"center\" class=\"img-container center autowidth\" style=\"padding-right: 0px;padding-left: 0px;\">\r\n											</div>\r\n										</div>\r\n										<!--<![endif]-->\r\n									</div>\r\n								</div>\r\n								<div class=\"col num4\" style=\"display: table-cell; vertical-align: top; max-width: 320px; min-width: 208px; width: 210px;\">\r\n									<div class=\"col_cont\" style=\"width:100% !important;\">\r\n										<!--[if (!mso)&(!IE)]><!-->\r\n										<div style=\"border-top:0px solid transparent; border-left:0px solid transparent; border-bottom:0px solid transparent; border-right:0px solid transparent; padding-top:5px; padding-bottom:5px; padding-right: 0px; padding-left: 0px;\">\r\n											<!--<![endif]-->\r\n											<div align=\"center\" class=\"img-container center autowidth\" style=\"padding-right: 0px;padding-left: 0px;\">\r\n											</div>\r\n										</div>\r\n										<!--<![endif]-->\r\n									</div>\r\n								</div>\r\n							</div>\r\n						</div>\r\n					</div>\r\n					<div style=\"background-color:transparent;\">\r\n						<div class=\"block-grid two-up\" style=\"min-width: 320px; max-width: 630px; overflow-wrap: break-word; word-wrap: break-word; word-break: break-word; Margin: 0 auto; background-color: #f5f5f5;\">\r\n							<div style=\"border-collapse: collapse;display: table;width: 100%;background-color:#f5f5f5;\">\r\n								<div class=\"col num6\" style=\"display: table-cell; vertical-align: top; max-width: 320px; min-width: 312px; width: 315px;\">\r\n									<div class=\"col_cont\" style=\"width:100% !important;\">\r\n										<!--[if (!mso)&(!IE)]><!-->\r\n										<div style=\"border-top:0px solid transparent; border-left:0px solid transparent; border-bottom:0px solid transparent; border-right:0px solid transparent; padding-top:5px; padding-bottom:5px; padding-right: 0px; padding-left: 0px;\">\r\n											<div style=\"color:#393d47;font-family:Montserrat, Trebuchet MS, Lucida Grande, Lucida Sans Unicode, Lucida Sans, Tahoma, sans-serif;line-height:1.8;padding-top:25px;padding-right:15px;padding-bottom:30px;padding-left:45px;\">\r\n												<div class=\"txtTinyMce-wrapper\" style=\"line-height: 1.8; font-size: 12px; color: #393d47; font-family: Montserrat, Trebuchet MS, Lucida Grande, Lucida Sans Unicode, Lucida Sans, Tahoma, sans-serif; mso-line-height-alt: 22px;\">\r\n														<p style=\"font-size: 14px; line-height: 1.8; word-break: break-word; text-align: center; mso-line-height-alt: 25px; margin: 0;\"> <a href=\"javascript:void(0)\" rel=\"noopener\" style=\"color: #78a8d5;\" target=\"_blank\">{SERVICE}</a></p>\r\n												</div>\r\n											</div>\r\n											<!--[if mso]></td></tr></table><![endif]-->\r\n											<!--[if (!mso)&(!IE)]><!-->\r\n										</div>\r\n										<!--<![endif]-->\r\n									</div>\r\n								</div>\r\n							</div>\r\n						</div>\r\n					</div>\r\n				</td>\r\n			</tr>\r\n		</tbody>\r\n	</table>\r\n	<!--[if (IE)]></div><![endif]-->\r\n</body>\r\n\r\n</html>', 10);

-- --------------------------------------------------------

--
-- Structure de la table `messages`
--

CREATE TABLE `messages` (
  `message_id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `subject` varchar(45) NOT NULL,
  `contact` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `sent_date` datetime NOT NULL,
  `sent` tinyint(4) NOT NULL,
  `active` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `messages`
--

INSERT INTO `messages` (`message_id`, `type`, `subject`, `contact`, `user_id`, `sent_date`, `sent`, `active`) VALUES
(26, 5, 'Objet', 19, 1, '2021-08-30 17:50:22', 1, 1),
(27, 5, 'Objet', 19, 1, '2021-08-30 17:56:50', 1, 1),
(28, 5, 'Objet', 19, 1, '2021-08-30 18:20:17', 1, 1),
(29, 5, 'Objet', 19, 1, '2021-08-30 18:22:11', 1, 1),
(30, 5, 'Objet', 19, 1, '2021-08-30 18:29:49', 1, 1),
(31, 5, 'Objet', 19, 1, '2021-08-30 18:34:59', 1, 1),
(32, 5, 'Objet', 19, 1, '2021-08-30 18:37:07', 1, 1),
(33, 5, 'Objet', 19, 1, '2021-08-30 18:42:34', 1, 1),
(34, 5, 'Objet', 19, 1, '2021-08-31 09:01:37', 1, 1),
(35, 5, 'Objet', 19, 1, '2021-08-31 09:12:18', 1, 1),
(36, 5, 'Objet', 19, 1, '2021-08-31 09:19:43', 1, 1),
(37, 5, 'Objet', 19, 1, '2021-08-31 15:23:47', 1, 1),
(38, 5, 'Ojet', 19, 1, '2021-08-31 15:52:35', 1, 1),
(39, 5, 'Objet', 19, 1, '2021-08-31 15:54:02', 1, 1),
(40, 5, 'Objet', 19, 1, '2021-08-31 15:56:09', 1, 1),
(41, 5, 'Objet', 19, 1, '2021-08-31 16:21:59', 1, 1),
(42, 5, 'Objet', 19, 1, '2021-08-31 16:23:50', 1, 1),
(43, 5, 'objet', 19, 1, '2021-08-31 16:26:47', 1, 1),
(44, 5, 'file', 19, 1, '2021-08-31 16:29:12', 1, 1),
(45, 5, 'test file live ', 19, 1, '2021-08-31 16:37:09', 1, 1),
(46, 5, 'objet', 19, 1, '2021-08-31 16:40:10', 1, 1),
(47, 5, 'kjbv ', 19, 1, '2021-08-31 17:26:07', 1, 1),
(48, 5, 'okjnbv', 19, 1, '2021-08-31 17:29:46', 1, 1),
(49, 1, 'Objet', 19, 1, '2021-09-01 17:40:48', 1, 1),
(50, 5, 'Objet', 19, 1, '2021-09-01 17:42:29', 1, 1),
(51, 1, 'Objet', 19, 1, '2021-09-01 17:45:55', 1, 1),
(52, 5, 'Test', 19, 1, '2021-09-02 11:56:11', 1, 1),
(53, 5, 'File', 19, 1, '2021-09-02 12:02:25', 1, 1),
(54, 1, 'Prospere', 19, 1, '2021-09-02 12:03:09', 1, 1),
(55, 1, 'ok', 19, 1, '2021-09-02 12:05:46', 1, 1),
(56, 1, 'ok', 19, 1, '2021-09-02 12:09:09', 1, 1),
(57, 1, 'test', 19, 1, '2021-09-02 12:13:30', 1, 1),
(58, 1, 'test 2', 19, 1, '2021-09-02 12:15:20', 1, 1),
(59, 1, 'ok', 20, 1, '2021-10-11 15:50:47', 1, 1),
(60, 5, 'objet', 19, 1, '2021-10-26 13:06:09', 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `missions`
--

CREATE TABLE `missions` (
  `mission_id` int(11) NOT NULL,
  `mission_label` int(11) NOT NULL,
  `contact_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `mission_date` date DEFAULT NULL,
  `creation_date` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `active` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `description` text DEFAULT NULL,
  `mission_start_datetime` datetime DEFAULT NULL,
  `mission_end_datetime` datetime DEFAULT NULL,
  `executor_mission` int(2) DEFAULT NULL,
  `contact_signature` text DEFAULT NULL,
  `etat_mission` text DEFAULT NULL,
  `montant_conclu` int(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `missions`
--

INSERT INTO `missions` (`mission_id`, `mission_label`, `contact_id`, `company_id`, `mission_date`, `creation_date`, `status`, `active`, `created_by`, `description`, `mission_start_datetime`, `mission_end_datetime`, `executor_mission`, `contact_signature`, `etat_mission`, `montant_conclu`) VALUES
(113, 1, 132, 2, '2021-12-15', '2021-12-15 00:00:00', 0, 0, 17, 'Visite de poisonnerie SOL DES ANGES', NULL, NULL, 17, '', NULL, NULL),
(114, 4, 130, 1, '2021-12-07', '2021-12-06 11:12:13', 1, 1, 12, NULL, NULL, NULL, 17, NULL, NULL, NULL),
(115, 4, 130, 1, '2021-12-09', '2021-12-06 11:12:13', 0, 1, 12, 'Rendez--vous', NULL, NULL, 17, NULL, NULL, NULL),
(116, 4, 130, 1, '2021-12-09', '2021-12-06 11:12:13', 0, 1, 12, 'Rendez--vous', NULL, NULL, 17, NULL, NULL, NULL),
(117, 4, 130, 1, '2021-12-15', '2021-12-16 11:12:13', 0, 1, 12, 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. ', NULL, NULL, 17, NULL, NULL, NULL),
(118, 4, 130, 1, '2021-12-10', '2021-12-06 11:12:13', 2, 1, 12, 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. ', '2021-12-10 18:19:13', '2021-12-10 18:36:56', 17, '', 'Succes', 50000),
(119, 4, 130, 1, '2021-12-13', '2021-12-06 11:12:13', 2, 0, 12, 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. ', NULL, '2021-12-13 14:57:39', 17, 'iVBORw0KGgoAAAANSUhEUgAAAKUAAABECAYAAADgM/X9AAAAAXNSR0IArs4c6QAAAARzQklUCAgICHwIZIgAABGWSURBVHic7Z15WI7Z/8dfjD2y/ yXJRqMStFiS1SMJUIL2UpljTD2ZWylMH7GVHZtiKmUFtnXFlR2LWPJWErFlUESU/z IN8vWp6n576fp/x6/Xmfcz6f93U97 s855z7nHNXepGd 4EyRnJyEs ePaNd23Y0b9FC0XIqkDNVFC3ga6bYT LM6VO8efOGXr37oK7RlSVLlytaVgVypLKiBfw3VqPNObDfj7btVHDz2Eb9 g2IjopkrfMaRUurQI5UKit/32GhIYyzsqRHz14cPX7q83OH6VN58OBvpk13YPCQoQpUWIG8KBOmfJOTg7GhAf/m/culuKvflHfrqkbTpk05fPSEAtRVIG/KxN 3vZ0NN2/eYNNm90LLHWY6AuDr4yVPWRUoCIX3lE fPqV921b0NzQiOCS8yHomQ37m1s0bXIy7SpMmTeSoUDx27dxOtWrVMBk2nPr1GyhaTplB4T3lfr 9AKxxWltsvbUu68jKymLp4oXykCU6C bNxdvLE6fVK7GZOF7RcsoUCjXlhw8fOOC3D70ePemipl5sXTV1DRYsXEx6 hMiDhfdo5YH/Pz2sn3bFlq1aoWNrT1vc3M5HB6maFmCc lCDOnpT6Rup9C/7zWrV/LbeldCwiIw6NdfojZaGl1o1qxZuZ70rFr5K1s83Ej5 zFKSkro9 5B9qtXxF25zg8//KBoeYJgazORxISbtGnbDj29HjjO UXitgrrKcPDQtm 1YMJE60lNiR8nPRERUWW697y5PFjaGlqoaSkBIDl6DHcu3cXv317FaxMGCzMTPnnn eoa3QlOzubU6dOkJSUKHF7hZnySEQ4lStXZsrUGVK1m2Rnj7aODs5rVomkTFz  iuZGzeu01VT8/OzGQ6z6KKmzgG/8m9K17VOZGZkMmSoCdt3erLL04d3b9/htHqlxDEUYsrExAT27vHFZpIdXdTUpG5vbWPHrVs3y2XPUqB5puPcL573NTCASpW4eeO6AlQJx4EDfijXrcskW3sAmjRpgo6uHuFhoRL3lgox5fxf5lClShWmO8wqVftx4yegp9eDDetcBFYmPrGXLqLXoyfNmzf/4vmcufOJijxPgP fClImO25//M79lBS0tXW/eD7dYRZa3bqxedNGieLI3ZRhoSFERZ5nuOlImdYb5y9cTErKPTZt3CCgOnE5e Y0MdFRTJ02/Zuyxo0bM9x0JAEB5dOUGRkZRBwOx9DQiOUrVn5R1rRpU6pWrcqjR48kiiVXU77JyWHpkoVoanXD09tXplhGxgMYbjqSrVvcuX8/RSCF4hIeFkqNGjUYajK80HJzCwvSUlPL5STOw20zMdFROLuuL7RcQ0OTa1e/fYVcGHI1pa2tNQ/ /htnl3WCxBsxciSZmZkcCjooSDyxuXr1Cto6ulStWrXQcpNhpujo6rJ92xY5K5ONlJR7REdHMWy4KZ06dS60TsdOncjOfsWh4JJ/K7mZMi0tjcNhoRgaGdOrV29BYo4YaYaR8QC8vT0FiScme3x9iI LZc7cecXW69BBlYRbN WkShicVq/i2tUrODm7FlnH1m4y7dt3wNur5N9Kbqb0/WQcl3XCjgEnWtvw9/37BAcFChpXaHx9PNHoqomhkXGx9fobGvH06VMuXbooJ2WysWG9KwcD/Vm67Fdat2lTbN0J1jacOX2Ka1evFFtPbqb08fFiqMkwfvyxo6BxTYaZ0rNXb9a7lt2ZuNfuXcTFxmJtPanEuv0NP5rWpxz0/gDJSUk0btyYufMWlFh3orUNPXv14rcNxQ/f5GLKjRvWodJOhQkTbUSJP36CNYmJCfj6eIsSX1YePX5E9erVMbccXWLdBg0aoKOrx62bZf8v/N9//yU8LATTEaMkql vXn06dupMxOFwsrKyiqwnuilfv85m6xZ3qteowcCfB4mSw2rsOPro98XVxYm8vDxRcshCTFQkmppa1KlTR6L6o8zMuX7tKomJCSIrk41VK38lNzeXoSbDJG5jbT2J/Pz8z8O5whDdlOtc1vL06VMWLV4map5Fi5eS vgxUybbippHWt7k5HDhQgw9e/eRuI3JpyWjw2GhYskShMtxsaiotJdq70LBuHr3rh1F1hHVlBER4Xh57cbG1g5tHR0xU9G7jz76 gacPnmC9 /fi5pLGnZs3wog1YpDi5Yt6aPfl7AybMrwsFBiYqJxnD235Mpf0VVTi4cPHxa5XU9cU4aHkZ Xj63tZDHTfGb wkVkZWXhI8Gyg7y4du0aDRo0QFdPT6p2nTp1RllZmcSEWyIpk41NGzegqvojE21Knrx9za8rVtG8RQsO O0rtFw0UyYnJ7HH1wdbO3vU1IvfwCsU n0N6K6tjU8ZOctz9 4dgg4GYGNrT 3ako0nCxg/YSKR58 RUAZNmZaaSnx8nEz/flZjxxMaeohHDx9 UyaaKT3cNlO5cmVmfDr0JS Gm46iVq2aBB0MkGvewvDavQuASZPspG6rrtEVJaXaxMXGCi1LZqKjIwGws59S6hhWY8cB4LdvzzdlopgyIiKcoKCDOMx0pGnTpmKkKJJZjrNJS03D85MhFMXr19ns3r0Tq7HjaNmqValiaOvoEB8fJ7Ay2YmOjqJevfpodete6hgqKu0Z PMg9vj6fFMmiin9Dxzgh8o/YGE5RozwJTLTcTaR589x9EiEQvIDuLttRktTizGfeoTS0F1bh9t/JZOTkyOgMtk5e Y0PXv1kjmOpqYWjx495MTxY188F9yUx48dJTgokDlzf5HbWPJrbO0m07ZtO9zdNiskP0B0VBQvXr5EX9 g1DE6qKry6tUrgg6WnVeol PjuJ SUqrN2V zeOlyGjZsSID/gS eC25KVxdnVFV/ZM4v84UOLRUTJlrz4f17jhw5LPfcT5484dzZM1ItKhfG6NFW/NRFjf2FjLsURWCAP/DxCIcQmJlbEhjgz6tXLz8/E9SUu3Zup2bNmixYtFjIsKVi7rwFpKamssXdTe65w8NCADCR0ZTwcUIQFRXJjevXZI4lBIEBf2Jmbkm9evUFiWdmbkl fj7LlvzHM4KZ8k1ODutcnD  47Uo R2vPHCY5cj5c2flPrb027eXLmrqJZ5ll4QxVgWzVMWfR3L743cyMzMxM7cQLKaOri5aWt24eCHm8zPBTOnq4kxmZiYLFy8VKqTM2NlPQVtHFxc5XiV47eoVrlyOF2zPaMOGDRk9xoqgoECFv6l6 OABSkq1GTR4iKBx586bT3Jy0ucNNYKYMjQkGC/PXVhPskVXV7o3F2IzeowV165d5djRI3LJ5 m5iypVqrBkmXAXvaqpqZORnv55PKcoZF0wLwqTYabo6fXA49PEVGZT/vPPc9Y6raGWkhKOjnNkFig0dvZT5DYTT09Px8fLk0m29oKNuQAcZs1GRaX9N7NUeZKbm8uVy/Fo6 iWXLkUOMxy/NxbymzKKfa2JCUlsmOnJ 1U2guhT3Dsp0wlPz9fovMhsuDl ekNjp294LHNLUdz/NhRHj54IHhsSShYxO/eXVuU CbDTOnQQZXFC fJdpeQpdkIjh49gpvHNiZMtBZQovD069ubly9ecPmaeJtnBxr15/37fE6cPid47Dt3btNdU50RI0bhvafwjQxiMn7saLKzs9m525tGjRqJksN5zSqSk5JK31NeunSRo0ePYGDQr8wbEmDZ8hXcvXuH0RaS7ZKWlsPhYVy8GCPVRU7S0KGDKvp9DYiJiSI/P1 UHEWRmZlJxOFwmjdvLpohAZYuX8EevwOlN U6F2caN27M/j/LztuG4jA0MsbQ0JgjEYdJTk4SPH6A/580bdpU5gXz4liwcDEZGRlyf1Pl4baZvLw8uW2uKZUpfX28OHXyBIuWLKPWp5vDygPuWz8u7juvFvZyrKysLIKDAkVfn 2j35efBw3Gw22z3JaHMjMzcXfbzNhx4 nc Se55JTalHGxsbg4O6GjqyfT1iVF0Lx5cxxmzSbreZagS0Sua9fQt6 BoIvKReEw05GMjAxmOXx79YsYeLj9TndtHbluQZRqohMXG4uFmSnKdesScPAQqqo/iqlNNDTUOtG6dRtCw2U35uNHj1Dv0pFRZhbs3C2fzcX9DXqT yaXmEvxouf62bg/7z 85/jJs6LnKkDinvLK5Xgm29ugXLcu/oHB5daQAPaTp5KXlyfIEpGrixP5 fksXLxEAGWSYW1jR0LCLWJiokXNk56ezoULMRgbDxQ1z9dIbEqnNat49vQZ7h7bBL9QQN44zHQkJycHJxnHllu3uBPg788v8xfSvn0HgdSVjLmFJdWrVxd9Mb1gn6PxgDJoSg/3Pzh18gROa13po99XbE1yYdnyFdy5c5tRIwq/AU0S7qekAB YI9IyUFHUrFkTM3MLIg6H8 GDeFfWnzh jNZt2tBVU0u0HIVRoikPBQezaeMGTEeMYqK1ODdcKAIj4wEMGDCQkyeOcfrUqZIbFEJ4eCiDBg ljrKywOpKRl1Dk/QnT0S7ZPVNTg5paalym3H/N8WaMi42ljmOM6hZqxarnZzlpUlu7Pb2/fjlgpnTuXv3jlRtPdz/ICMjA5Nh4q1LFsfUadNRUWlPoEiXrPr57SUu9hKzS7glTgyKNGXBTLuOsjKBQSG0bt1GjrLkg7JyXVY5reXFixdYjBrB1RJuAyvg1auX7N65gzat2zBkqGJMCWBmYcmxo0cKPaYqK3779tCtuzZ6ej0Ej10ShZry3bt3zJo5ndq16xBw8FC5n9gUh55eD/wPBlOjRg1sJowjOiqyxDYWZiO5d 8um923UKNGDTmoLBxzC0sA1gt89/ulSxeJj4tjjNVYQeNKSqGmXLJoAYkJt9iybcd3bcgC9PR68L b3ahTpw4W5iPZsL7oq qc16wiJjqKYcNH0FuK 4HEoEMHVbp11 bmzRuCxt3vt5dq1ap9Ppstb74x5X6/fezcsY3Zc d9NzNtSdDT68FOT290dfU4ffI4JoMHEnn y90 drbW Pp606 /IXv27VeM0K8wM7fg6pXLgr3Pz8/P56 kJHr17oOSUm1BYkrLF2904uPiGGtlQbNmzTl7XtyF2bKMt5cn69etJfXxYzQ0ulKtejXe5r7lxo3rDB5iwvadu1BWrqtomQA8eviQLp1VMTe3ZJfXtwf7pSXkUBATxlkRHBJOf0MjARRKz2dTxsfFYWFmSu06dfAPDKZjx04KEVRWePv2LUsXL RV9kuyX2XTqfNP1KtX7/O3x8sSQwYN4ElaGleuy37vkL2tDefOnub2PcVsJoZPpkxKTGD8uDG8e/euwpDlkILezXevH8NNR5Y6Tn5 Pi2aNWaM1Vg2/S7/o8kFVAbYvn0r91NScHffVmHIcshw05G0a6ci0ZcXimPViuW8yclhqAKXuQAq37t3l7CQQ0yeMg19AwOFiqmg9BgaGZObm1vqbzs e/aMAP8DdNXUKvELFmJTRUWlPcl37pOZkaFQIRXIxqIly1Bp05L9fvtQU9eQuv28ubNJS0tjr5/iP8NXGaBq1aq0aNlS0VoqkIFGjRphOXoMQUGBvH37Vqq227dtITgokLWu6 km0mlFaVDY974rEB4dHT2epKWxZFHJ37Qp4PXrbEIOBdOzZy/BLq2SlSqKFlCBcNhNnsLj1Mds2rgBQyNjBg8ZWmIbby9PoqMiOXn6vBwUSoZM574rKJv06aVHXl4eMRfjqFSpUrF1dbp15X aNCE84lix9eRJxd/3d4jl6DEkJtwq8SjuyhXLuXPnNtal MKDmFT0lN8pFmYjSLh1k5NnImnWrNk35amPH9O3Tw9atGzJucgLClBYNBU95XdKv379efLkCRZmI7h549tdRI6zZvD8 XM8tmxXgLriqTDld8q0GTMJDAqhSpUqTJ82 QtjZmRkcOL4MYaaDBPkYlehqZh9f8f0NzTiw4cPOK1ZxZTJtsycNZsGDRrg7b374zeOHMre5hKoGFP v DUyRNs/G09mZmZ3Ln9F8YDBtLf0IjpM2YqWlqh/B BA0msp8vrKwAAAABJRU5ErkJggg==', 'Succes', 500000),
(120, 4, 130, 1, '2021-12-13', '2021-12-16 11:12:13', 1, 0, 12, 'Bla Bla', '2021-12-13 16:04:29', NULL, 17, '', NULL, 0),
(121, 4, 130, 1, '2021-12-13', '2021-12-06 11:12:13', 2, 1, 12, 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. ', '2021-12-13 12:19:32', '2021-12-13 14:46:16', 17, '', 'Echec', 0),
(122, 4, 130, 1, '2021-12-15', '2021-12-16 11:12:13', 1, 0, 12, 'Bla Bla', '2021-12-15 16:24:08', NULL, 17, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `mission_tracking`
--

CREATE TABLE `mission_tracking` (
  `mission_tracking_id` bigint(20) NOT NULL,
  `entered_date_time` datetime DEFAULT NULL,
  `tracking_date_time` datetime DEFAULT NULL,
  `description` text DEFAULT NULL,
  `agent_name` varchar(150) DEFAULT NULL,
  `visible` tinyint(1) DEFAULT 1,
  `mission_id` int(11) DEFAULT NULL,
  `deleted_flag` tinyint(1) DEFAULT 0,
  `alert_sent` tinyint(1) DEFAULT NULL,
  `driver_name` varchar(100) DEFAULT NULL,
  `gps_lon` varchar(250) DEFAULT NULL,
  `gps_lat` varchar(250) DEFAULT NULL,
  `is_step_tracking` tinyint(1) NOT NULL DEFAULT 0,
  `tracking_address` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `mission_tracking`
--

INSERT INTO `mission_tracking` (`mission_tracking_id`, `entered_date_time`, `tracking_date_time`, `description`, `agent_name`, `visible`, `mission_id`, `deleted_flag`, `alert_sent`, `driver_name`, `gps_lon`, `gps_lat`, `is_step_tracking`, `tracking_address`) VALUES
(1641009575, '2021-11-25 15:14:00', '2021-11-25 15:14:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283824', '6.3611447', 0, 'Gbedokpo  Rue 115'),
(1641009576, '2021-11-25 15:15:00', '2021-11-25 15:15:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283947', '6.3611873', 0, 'Gbedokpo  Rue 115'),
(1641009577, '2021-11-25 15:31:00', '2021-11-25 15:31:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283934', '6.3611904', 0, 'Gbedokpo  Rue 115'),
(1641009578, '2021-11-25 15:32:00', '2021-11-25 15:32:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283937', '6.3611905', 0, 'Gbedokpo  Rue 115'),
(1641009579, '2021-11-25 15:32:00', '2021-11-25 15:32:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283939', '6.3611865', 0, 'Gbedokpo  Rue 115'),
(1641009580, '2021-11-25 15:35:00', '2021-11-25 15:35:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283947', '6.3611873', 0, 'Gbedokpo  Rue 115'),
(1641009581, '2021-11-25 15:36:00', '2021-11-25 15:36:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283949', '6.3611879', 0, 'Gbedokpo  Rue 115'),
(1641009582, '2021-11-25 15:37:00', '2021-11-25 15:37:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283835', '6.3611941', 0, 'Gbedokpo  Rue 115'),
(1641009583, '2021-11-25 15:39:00', '2021-11-25 15:39:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, 113, 0, NULL, '17', '2.4283544', '6.3622432', 0, 'Gbedokpo  Rue 115'),
(1641009584, '2021-11-25 15:39:00', '2021-11-25 15:39:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283949', '6.3611885', 0, 'Gbedokpo  Rue 115'),
(1641009585, '2021-11-25 15:40:00', '2021-11-25 15:40:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283949', '6.3611879', 0, 'Gbedokpo  Rue 115'),
(1641009586, '2021-11-25 15:42:00', '2021-11-25 15:42:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283835', '6.3611894', 0, 'Gbedokpo  Rue 115'),
(1641009587, '2021-11-25 15:43:00', '2021-11-25 15:43:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283947', '6.3611873', 0, 'Gbedokpo  Rue 115'),
(1641009588, '2021-11-25 15:43:00', '2021-11-25 15:43:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283947', '6.3611873', 0, 'Gbedokpo  Rue 115'),
(1641009589, '2021-11-25 15:45:00', '2021-11-25 15:45:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283947', '6.3611873', 0, 'Gbedokpo  Rue 115'),
(1641009590, '2021-11-25 15:45:00', '2021-11-25 15:45:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283949', '6.361189', 0, 'Gbedokpo  Rue 115'),
(1641009591, '2021-11-25 15:48:00', '2021-11-25 15:48:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283949', '6.3611879', 0, 'Gbedokpo  Rue 115'),
(1641009592, '2021-11-25 15:49:00', '2021-11-25 15:49:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283939', '6.3611865', 0, 'Gbedokpo  Rue 115'),
(1641009593, '2021-11-25 15:51:00', '2021-11-25 15:51:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283884', '6.3611898', 0, 'Gbedokpo  Rue 115'),
(1641009594, '2021-11-25 15:51:00', '2021-11-25 15:51:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283884', '6.3611898', 0, 'Gbedokpo  Rue 115'),
(1641009595, '2021-11-25 15:52:00', '2021-11-25 15:52:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283949', '6.3611885', 0, 'Gbedokpo  Rue 115'),
(1641009596, '2021-11-25 15:54:00', '2021-11-25 15:54:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283939', '6.3611865', 0, 'Gbedokpo  Rue 115'),
(1641009597, '2021-11-25 15:56:00', '2021-11-25 15:56:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283841', '6.3611949', 0, 'Gbedokpo  Rue 115'),
(1641009598, '2021-11-25 15:57:00', '2021-11-25 15:57:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283859', '6.361191', 0, 'Gbedokpo  Rue 115'),
(1641009599, '2021-11-25 17:05:00', '2021-11-25 17:05:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283815', '6.3611938', 0, 'Gbedokpo  Rue 115'),
(1641009600, '2021-11-25 17:05:00', '2021-11-25 17:05:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283938', '6.3611906', 0, 'Gbedokpo  Rue 115'),
(1641009601, '2021-11-25 17:06:00', '2021-11-25 17:06:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283938', '6.3611906', 0, 'Gbedokpo  Rue 115'),
(1641009602, '2021-11-25 17:07:00', '2021-11-25 17:07:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283939', '6.3611905', 0, 'Gbedokpo  Rue 115'),
(1641009603, '2021-11-25 17:08:00', '2021-11-25 17:08:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283939', '6.3611905', 0, 'Gbedokpo  Rue 115'),
(1641009604, '2021-11-25 17:09:00', '2021-11-25 17:09:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283939', '6.3611906', 0, 'Gbedokpo  Rue 115'),
(1641009605, '2021-11-25 17:11:00', '2021-11-25 17:11:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283923', '6.3611972', 0, 'Gbedokpo  Rue 115'),
(1641009606, '2021-11-25 17:12:00', '2021-11-25 17:12:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283949', '6.361189', 0, 'Gbedokpo  Rue 115'),
(1641009612, '2021-11-25 17:19:00', '2021-11-25 17:19:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283946', '6.3611894', 0, 'Gbedokpo  Rue 115'),
(1641009613, '2021-11-25 17:20:00', '2021-11-25 17:20:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283946', '6.3611894', 0, 'Gbedokpo  Rue 115'),
(1641009614, '2021-11-25 17:21:00', '2021-11-25 17:21:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283822', '6.3611902', 0, 'Gbedokpo  Rue 115'),
(1641009615, '2021-11-25 17:22:00', '2021-11-25 17:22:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283853', '6.3611904', 0, 'Gbedokpo  Rue 115'),
(1641009616, '2021-11-25 17:23:00', '2021-11-25 17:23:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283949', '6.361189', 0, 'Gbedokpo  Rue 115'),
(1641009617, '2021-11-25 17:24:00', '2021-11-25 17:24:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283949', '6.3611879', 0, 'Gbedokpo  Rue 115'),
(1641009618, '2021-11-25 17:25:00', '2021-11-25 17:25:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283941', '6.3611897', 0, 'Gbedokpo  Rue 115'),
(1641009619, '2021-11-25 17:27:00', '2021-11-25 17:27:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283841', '6.3611893', 0, 'Gbedokpo  Rue 115'),
(1641009620, '2021-11-26 07:10:00', '2021-11-26 07:10:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283843', '6.3611905', 0, 'Gbedokpo  Rue 115'),
(1641009621, '2021-11-26 07:11:00', '2021-11-26 07:11:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283936', '6.3611899', 0, 'Gbedokpo  Rue 115'),
(1641009622, '2021-11-26 07:12:00', '2021-11-26 07:12:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283889', '6.3611947', 0, 'Gbedokpo  Rue 115'),
(1641009623, '2021-11-26 07:13:00', '2021-11-26 07:13:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283939', '6.3611906', 0, 'Gbedokpo  Rue 115'),
(1641009624, '2021-11-26 07:15:00', '2021-11-26 07:15:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283939', '6.3611906', 0, 'Gbedokpo  Rue 115'),
(1641009625, '2021-11-26 07:16:00', '2021-11-26 07:16:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283819', '6.3611896', 0, 'Gbedokpo  Rue 115'),
(1641009626, '2021-11-26 07:17:00', '2021-11-26 07:17:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283946', '6.3611894', 0, 'Gbedokpo  Rue 115'),
(1641009627, '2021-11-26 07:18:00', '2021-11-26 07:18:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283949', '6.3611879', 0, 'Gbedokpo  Rue 115'),
(1641009628, '2021-11-26 07:19:00', '2021-11-26 07:19:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283949', '6.361189', 0, 'Gbedokpo  Rue 115'),
(1641009629, '2021-11-26 07:21:00', '2021-11-26 07:21:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283938', '6.3611906', 0, 'Gbedokpo  Rue 115'),
(1641009630, '2021-11-26 07:22:00', '2021-11-26 07:22:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283949', '6.3611885', 0, 'Gbedokpo  Rue 115'),
(1641009631, '2021-11-26 07:23:00', '2021-11-26 07:23:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.428385', '6.36119', 0, 'Gbedokpo  Rue 115'),
(1641009632, '2021-11-26 07:24:00', '2021-11-26 07:24:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.428386', '6.3611917', 0, 'Gbedokpo  Rue 115'),
(1641009633, '2021-11-26 07:25:00', '2021-11-26 07:25:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283939', '6.3611905', 0, 'Gbedokpo  Rue 115'),
(1641009634, '2021-11-26 07:26:00', '2021-11-26 07:26:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283946', '6.3611894', 0, 'Gbedokpo  Rue 115'),
(1641009635, '2021-11-26 07:27:00', '2021-11-26 07:27:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283949', '6.3611885', 0, 'Gbedokpo  Rue 115'),
(1641009636, '2021-11-26 07:29:00', '2021-11-26 07:29:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283824', '6.3611927', 0, 'Gbedokpo  Rue 115'),
(1641009637, '2021-11-26 07:30:00', '2021-11-26 07:30:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.428387', '6.3611976', 0, 'Gbedokpo  Rue 115'),
(1641009638, '2021-11-26 07:31:00', '2021-11-26 07:31:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.428391', '6.3611866', 0, 'Gbedokpo  Rue 115'),
(1641009639, '2021-11-26 07:32:00', '2021-11-26 07:32:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283944', '6.3611868', 0, 'Gbedokpo  Rue 115'),
(1641009640, '2021-11-26 07:33:00', '2021-11-26 07:33:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283841', '6.3611938', 0, 'Gbedokpo  Rue 115'),
(1641009641, '2021-11-26 07:34:00', '2021-11-26 07:34:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283925', '6.3611864', 0, 'Gbedokpo  Rue 115'),
(1641009642, '2021-11-26 07:36:00', '2021-11-26 07:36:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283838', '6.3611945', 0, 'Gbedokpo  Rue 115'),
(1641009643, '2021-11-26 07:37:00', '2021-11-26 07:37:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283849', '6.361194', 0, 'Gbedokpo  Rue 115'),
(1641009644, '2021-11-26 07:38:00', '2021-11-26 07:38:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283846', '6.3611972', 0, 'Gbedokpo  Rue 115'),
(1641009645, '2021-11-26 07:39:00', '2021-11-26 07:39:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283925', '6.3611864', 0, 'Gbedokpo  Rue 115'),
(1641009646, '2021-11-26 07:41:00', '2021-11-26 07:41:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283854', '6.361195', 0, 'Gbedokpo  Rue 115'),
(1641009647, '2021-11-26 07:42:00', '2021-11-26 07:42:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283939', '6.3611865', 0, 'Gbedokpo  Rue 115'),
(1641009648, '2021-11-26 07:43:00', '2021-11-26 07:43:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283947', '6.3611873', 0, 'Gbedokpo  Rue 115'),
(1641009649, '2021-11-26 07:44:00', '2021-11-26 07:44:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283949', '6.3611879', 0, 'Gbedokpo  Rue 115'),
(1641009650, '2021-11-26 07:46:00', '2021-11-26 07:46:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283939', '6.3611865', 0, 'Gbedokpo  Rue 115'),
(1641009651, '2021-11-26 07:47:00', '2021-11-26 07:47:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283852', '6.3611934', 0, 'Gbedokpo  Rue 115'),
(1641009652, '2021-11-26 07:48:00', '2021-11-26 07:48:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283846', '6.3611926', 0, 'Gbedokpo  Rue 115'),
(1641009653, '2021-11-26 07:49:00', '2021-11-26 07:49:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283939', '6.3611865', 0, 'Gbedokpo  Rue 115'),
(1641009654, '2021-11-26 07:50:00', '2021-11-26 07:50:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283887', '6.361198', 0, 'Gbedokpo  Rue 115'),
(1641009655, '2021-11-26 07:51:00', '2021-11-26 07:51:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283949', '6.3611885', 0, 'Gbedokpo  Rue 115'),
(1641009656, '2021-11-26 07:53:00', '2021-11-26 07:53:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283949', '6.361189', 0, 'Gbedokpo  Rue 115'),
(1641009657, '2021-11-26 07:54:00', '2021-11-26 07:54:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283946', '6.3611894', 0, 'Gbedokpo  Rue 115'),
(1641009658, '2021-11-26 07:55:00', '2021-11-26 07:55:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283949', '6.3611879', 0, 'Gbedokpo  Rue 115'),
(1641009659, '2021-11-26 07:55:00', '2021-11-26 07:55:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283944', '6.3611868', 0, 'Gbedokpo  Rue 115'),
(1641009660, '2021-11-26 07:57:00', '2021-11-26 07:57:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283946', '6.3611894', 0, 'Gbedokpo  Rue 115'),
(1641009661, '2021-11-26 08:49:00', '2021-11-26 08:49:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283941', '6.3611897', 0, 'Gbedokpo  Rue 115'),
(1641009662, '2021-11-26 08:49:00', '2021-11-26 08:49:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283847', '6.3611902', 0, 'Gbedokpo  Rue 115'),
(1641009663, '2021-11-26 09:04:00', '2021-11-26 09:04:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283949', '6.361189', 0, 'Gbedokpo  Rue 115'),
(1641009664, '2021-11-26 09:07:00', '2021-11-26 09:07:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283934', '6.3611904', 0, 'Gbedokpo  Rue 115'),
(1641009665, '2021-11-26 09:09:00', '2021-11-26 09:09:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283939', '6.3611905', 0, 'Gbedokpo  Rue 115'),
(1641009666, '2021-11-26 09:15:00', '2021-11-26 09:15:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283932', '6.3611865', 0, 'Gbedokpo  Rue 115'),
(1641009667, '2021-11-26 09:15:00', '2021-11-26 09:15:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283939', '6.3611905', 0, 'Gbedokpo  Rue 115'),
(1641009668, '2021-11-26 09:20:00', '2021-11-26 09:20:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283939', '6.3611906', 0, 'Gbedokpo  Rue 115'),
(1641009669, '2021-11-26 09:44:00', '2021-11-26 09:44:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283938', '6.3611906', 0, 'Gbedokpo  Rue 115'),
(1641009670, '2021-11-26 09:44:00', '2021-11-26 09:44:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283938', '6.3611906', 0, 'Gbedokpo  Rue 115'),
(1641009671, '2021-11-26 09:45:00', '2021-11-26 09:45:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283941', '6.3611897', 0, 'Gbedokpo  Rue 115'),
(1641009672, '2021-11-26 09:48:00', '2021-11-26 09:48:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283859', '6.361191', 0, 'Gbedokpo  Rue 115'),
(1641009673, '2021-11-26 09:50:00', '2021-11-26 09:50:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283949', '6.3611885', 0, 'Gbedokpo  Rue 115'),
(1641009674, '2021-11-26 09:53:00', '2021-11-26 09:53:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283939', '6.3611906', 0, 'Gbedokpo  Rue 115'),
(1641009675, '2021-11-26 09:58:00', '2021-11-26 09:58:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283949', '6.3611879', 0, 'Gbedokpo  Rue 115'),
(1641009676, '2021-11-26 09:59:00', '2021-11-26 09:59:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283843', '6.3611905', 0, 'Gbedokpo  Rue 115'),
(1641009677, '2021-11-26 10:00:00', '2021-11-26 10:00:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283846', '6.3611908', 0, 'Gbedokpo  Rue 115'),
(1641009678, '2021-11-26 10:01:00', '2021-11-26 10:01:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283849', '6.3611871', 0, 'Gbedokpo  Rue 115'),
(1641009679, '2021-11-26 10:06:00', '2021-11-26 10:06:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283846', '6.3611908', 0, 'Gbedokpo  Rue 115'),
(1641009680, '2021-11-26 10:07:00', '2021-11-26 10:07:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283925', '6.3611864', 0, 'Gbedokpo  Rue 115'),
(1641009681, '2021-11-26 10:07:00', '2021-11-26 10:07:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283925', '6.3611864', 0, 'Gbedokpo  Rue 115'),
(1641009682, '2021-11-26 10:07:00', '2021-11-26 10:07:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283949', '6.3611885', 0, 'Gbedokpo  Rue 115'),
(1641009683, '2021-11-26 10:07:00', '2021-11-26 10:07:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283949', '6.3611885', 0, 'Gbedokpo  Rue 115'),
(1641009684, '2021-11-26 10:09:00', '2021-11-26 10:09:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.428384', '6.3611863', 0, 'Gbedokpo  Rue 115'),
(1641009685, '2021-11-26 10:09:00', '2021-11-26 10:09:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.428384', '6.3611863', 0, 'Gbedokpo  Rue 115'),
(1641009686, '2021-11-26 10:11:00', '2021-11-26 10:11:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283947', '6.3611873', 0, 'Gbedokpo  Rue 115'),
(1641009687, '2021-11-26 10:11:00', '2021-11-26 10:11:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283947', '6.3611873', 0, 'Gbedokpo  Rue 115'),
(1641009688, '2021-11-26 10:11:00', '2021-11-26 10:11:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283947', '6.3611873', 0, 'Gbedokpo  Rue 115'),
(1641009689, '2021-11-26 10:18:00', '2021-11-26 10:18:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283852', '6.3611915', 0, 'Gbedokpo  Rue 115'),
(1641009690, '2021-11-26 10:18:00', '2021-11-26 10:18:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283852', '6.3611915', 0, 'Gbedokpo  Rue 115'),
(1641009691, '2021-11-26 10:18:00', '2021-11-26 10:18:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283852', '6.3611915', 0, 'Gbedokpo  Rue 115'),
(1641009692, '2021-11-26 10:19:00', '2021-11-26 10:19:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283946', '6.3611894', 0, 'Gbedokpo  Rue 115'),
(1641009693, '2021-11-26 10:19:00', '2021-11-26 10:19:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283946', '6.3611894', 0, 'Gbedokpo  Rue 115'),
(1641009694, '2021-11-26 10:19:00', '2021-11-26 10:19:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283946', '6.3611894', 0, 'Gbedokpo  Rue 115'),
(1641009695, '2021-11-26 10:19:00', '2021-11-26 10:19:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283946', '6.3611894', 0, 'Gbedokpo  Rue 115'),
(1641009696, '2021-11-26 10:20:00', '2021-11-26 10:20:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283835', '6.3611922', 0, 'Gbedokpo  Rue 115'),
(1641009697, '2021-11-26 10:20:00', '2021-11-26 10:20:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283835', '6.3611922', 0, 'Gbedokpo  Rue 115'),
(1641009698, '2021-11-26 10:20:00', '2021-11-26 10:20:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283835', '6.3611922', 0, 'Gbedokpo  Rue 115'),
(1641009699, '2021-11-26 10:20:00', '2021-11-26 10:20:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283835', '6.3611922', 0, 'Gbedokpo  Rue 115'),
(1641009700, '2021-11-26 10:22:00', '2021-11-26 10:22:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283944', '6.3611868', 0, 'Gbedokpo  Rue 115'),
(1641009701, '2021-11-26 10:22:00', '2021-11-26 10:22:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283944', '6.3611868', 0, 'Gbedokpo  Rue 115'),
(1641009702, '2021-11-26 10:22:00', '2021-11-26 10:22:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283944', '6.3611868', 0, 'Gbedokpo  Rue 115'),
(1641009703, '2021-11-26 10:22:00', '2021-11-26 10:22:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283944', '6.3611868', 0, 'Gbedokpo  Rue 115'),
(1641009704, '2021-11-26 10:25:00', '2021-11-26 10:25:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283939', '6.3611865', 0, 'Gbedokpo  Rue 115'),
(1641009705, '2021-11-26 10:25:00', '2021-11-26 10:25:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283939', '6.3611865', 0, 'Gbedokpo  Rue 115'),
(1641009706, '2021-11-26 10:25:00', '2021-11-26 10:25:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283939', '6.3611865', 0, 'Gbedokpo  Rue 115'),
(1641009707, '2021-11-26 10:25:00', '2021-11-26 10:25:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283939', '6.3611865', 0, 'Gbedokpo  Rue 115'),
(1641009708, '2021-11-26 10:28:00', '2021-11-26 10:28:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283949', '6.361189', 0, 'Gbedokpo  Rue 115'),
(1641009709, '2021-11-26 10:28:00', '2021-11-26 10:28:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283949', '6.361189', 0, 'Gbedokpo  Rue 115'),
(1641009710, '2021-11-26 10:28:00', '2021-11-26 10:28:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283949', '6.361189', 0, 'Gbedokpo  Rue 115'),
(1641009711, '2021-11-26 10:28:00', '2021-11-26 10:28:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283949', '6.361189', 0, 'Gbedokpo  Rue 115'),
(1641009712, '2021-11-26 10:30:00', '2021-11-26 10:30:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283925', '6.3611864', 0, 'Gbedokpo  Rue 115'),
(1641009713, '2021-11-26 10:30:00', '2021-11-26 10:30:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283925', '6.3611864', 0, 'Gbedokpo  Rue 115'),
(1641009714, '2021-11-26 10:30:00', '2021-11-26 10:30:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283925', '6.3611864', 0, 'Gbedokpo  Rue 115'),
(1641009715, '2021-11-26 10:30:00', '2021-11-26 10:30:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283925', '6.3611864', 0, 'Gbedokpo  Rue 115'),
(1641009716, '2021-11-26 10:31:00', '2021-11-26 10:31:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283863', '6.3611913', 0, 'Gbedokpo  Rue 115'),
(1641009717, '2021-11-26 10:31:00', '2021-11-26 10:31:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283863', '6.3611913', 0, 'Gbedokpo  Rue 115'),
(1641009718, '2021-11-26 10:31:00', '2021-11-26 10:31:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283863', '6.3611913', 0, 'Gbedokpo  Rue 115'),
(1641009719, '2021-11-26 10:31:00', '2021-11-26 10:31:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283863', '6.3611913', 0, 'Gbedokpo  Rue 115'),
(1641009720, '2021-11-26 10:32:00', '2021-11-26 10:32:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283866', '6.3611917', 0, 'Gbedokpo  Rue 115'),
(1641009721, '2021-11-26 10:32:00', '2021-11-26 10:32:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283866', '6.3611917', 0, 'Gbedokpo  Rue 115'),
(1641009722, '2021-11-26 10:32:00', '2021-11-26 10:32:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283866', '6.3611917', 0, 'Gbedokpo  Rue 115'),
(1641009723, '2021-11-26 10:32:00', '2021-11-26 10:32:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283866', '6.3611917', 0, 'Gbedokpo  Rue 115'),
(1641009724, '2021-11-26 10:32:00', '2021-11-26 10:32:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283866', '6.3611917', 0, 'Gbedokpo  Rue 115'),
(1641009725, '2021-11-26 10:34:00', '2021-11-26 10:34:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283939', '6.3611865', 0, 'Gbedokpo  Rue 115'),
(1641009726, '2021-11-26 10:34:00', '2021-11-26 10:34:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283939', '6.3611865', 0, 'Gbedokpo  Rue 115'),
(1641009727, '2021-11-26 10:34:00', '2021-11-26 10:34:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283939', '6.3611865', 0, 'Gbedokpo  Rue 115'),
(1641009728, '2021-11-26 10:34:00', '2021-11-26 10:34:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283939', '6.3611865', 0, 'Gbedokpo  Rue 115'),
(1641009729, '2021-11-26 10:34:00', '2021-11-26 10:34:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283939', '6.3611865', 0, 'Gbedokpo  Rue 115'),
(1641009730, '2021-11-26 10:36:00', '2021-11-26 10:36:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283932', '6.3611865', 0, 'Gbedokpo  Rue 115'),
(1641009731, '2021-11-26 10:36:00', '2021-11-26 10:36:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283932', '6.3611865', 0, 'Gbedokpo  Rue 115'),
(1641009732, '2021-11-26 10:36:00', '2021-11-26 10:36:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283932', '6.3611865', 0, 'Gbedokpo  Rue 115'),
(1641009733, '2021-11-26 10:36:00', '2021-11-26 10:36:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283932', '6.3611865', 0, 'Gbedokpo  Rue 115'),
(1641009734, '2021-11-26 10:36:00', '2021-11-26 10:36:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283932', '6.3611865', 0, 'Gbedokpo  Rue 115'),
(1641009735, '2021-11-26 10:38:00', '2021-11-26 10:38:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283949', '6.3611879', 0, 'Gbedokpo  Rue 115'),
(1641009736, '2021-11-26 10:38:00', '2021-11-26 10:38:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283949', '6.3611879', 0, 'Gbedokpo  Rue 115'),
(1641009737, '2021-11-26 10:38:00', '2021-11-26 10:38:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283949', '6.3611879', 0, 'Gbedokpo  Rue 115'),
(1641009738, '2021-11-26 10:38:00', '2021-11-26 10:38:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283949', '6.3611879', 0, 'Gbedokpo  Rue 115'),
(1641009739, '2021-11-26 10:38:00', '2021-11-26 10:38:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283949', '6.3611879', 0, 'Gbedokpo  Rue 115'),
(1641009740, '2021-11-26 10:39:00', '2021-11-26 10:39:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283939', '6.3611865', 0, 'Gbedokpo  Rue 115'),
(1641009741, '2021-11-26 10:39:00', '2021-11-26 10:39:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283939', '6.3611865', 0, 'Gbedokpo  Rue 115'),
(1641009742, '2021-11-26 10:39:00', '2021-11-26 10:39:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283939', '6.3611865', 0, 'Gbedokpo  Rue 115'),
(1641009743, '2021-11-26 10:39:00', '2021-11-26 10:39:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283939', '6.3611865', 0, 'Gbedokpo  Rue 115'),
(1641009744, '2021-11-26 10:39:00', '2021-11-26 10:39:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283939', '6.3611865', 0, 'Gbedokpo  Rue 115'),
(1641009745, '2021-11-26 10:40:00', '2021-11-26 10:40:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283949', '6.3611885', 0, 'Gbedokpo  Rue 115'),
(1641009746, '2021-11-26 10:40:00', '2021-11-26 10:40:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283949', '6.3611885', 0, 'Gbedokpo  Rue 115'),
(1641009747, '2021-11-26 10:40:00', '2021-11-26 10:40:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283949', '6.3611885', 0, 'Gbedokpo  Rue 115'),
(1641009748, '2021-11-26 10:40:00', '2021-11-26 10:40:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283949', '6.3611885', 0, 'Gbedokpo  Rue 115'),
(1641009749, '2021-11-26 10:40:00', '2021-11-26 10:40:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283949', '6.3611885', 0, 'Gbedokpo  Rue 115'),
(1641009750, '2021-11-26 10:42:00', '2021-11-26 10:42:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283949', '6.3611885', 0, 'Gbedokpo  Rue 115'),
(1641009751, '2021-11-26 10:42:00', '2021-11-26 10:42:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283949', '6.3611885', 0, 'Gbedokpo  Rue 115'),
(1641009752, '2021-11-26 10:42:00', '2021-11-26 10:42:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283949', '6.3611885', 0, 'Gbedokpo  Rue 115'),
(1641009753, '2021-11-26 10:42:00', '2021-11-26 10:42:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283949', '6.3611885', 0, 'Gbedokpo  Rue 115'),
(1641009754, '2021-11-26 10:42:00', '2021-11-26 10:42:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283949', '6.3611885', 0, 'Gbedokpo  Rue 115'),
(1641009755, '2021-11-26 10:45:00', '2021-11-26 10:45:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283949', '6.3611885', 0, 'Gbedokpo  Rue 115'),
(1641009756, '2021-11-26 10:45:00', '2021-11-26 10:45:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283949', '6.3611885', 0, 'Gbedokpo  Rue 115'),
(1641009757, '2021-11-26 10:45:00', '2021-11-26 10:45:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283949', '6.3611885', 0, 'Gbedokpo  Rue 115'),
(1641009758, '2021-11-26 10:45:00', '2021-11-26 10:45:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283949', '6.3611885', 0, 'Gbedokpo  Rue 115'),
(1641009759, '2021-11-26 10:45:00', '2021-11-26 10:45:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283949', '6.3611885', 0, 'Gbedokpo  Rue 115'),
(1641009760, '2021-11-26 10:46:00', '2021-11-26 10:46:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283949', '6.361189', 0, 'Gbedokpo  Rue 115'),
(1641009761, '2021-11-26 10:46:00', '2021-11-26 10:46:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283949', '6.361189', 0, 'Gbedokpo  Rue 115'),
(1641009762, '2021-11-26 10:46:00', '2021-11-26 10:46:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283949', '6.361189', 0, 'Gbedokpo  Rue 115'),
(1641009763, '2021-11-26 10:46:00', '2021-11-26 10:46:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283949', '6.361189', 0, 'Gbedokpo  Rue 115'),
(1641009764, '2021-11-26 10:46:00', '2021-11-26 10:46:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283949', '6.361189', 0, 'Gbedokpo  Rue 115'),
(1641009765, '2021-11-26 10:47:00', '2021-11-26 10:47:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283949', '6.3611879', 0, 'Gbedokpo  Rue 115'),
(1641009766, '2021-11-26 10:47:00', '2021-11-26 10:47:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283949', '6.3611879', 0, 'Gbedokpo  Rue 115'),
(1641009767, '2021-11-26 10:47:00', '2021-11-26 10:47:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283949', '6.3611879', 0, 'Gbedokpo  Rue 115'),
(1641009768, '2021-11-26 10:47:00', '2021-11-26 10:47:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283949', '6.3611879', 0, 'Gbedokpo  Rue 115'),
(1641009769, '2021-11-26 10:47:00', '2021-11-26 10:47:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283949', '6.3611879', 0, 'Gbedokpo  Rue 115'),
(1641009770, '2021-11-26 10:48:00', '2021-11-26 10:48:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283946', '6.3611894', 0, 'Gbedokpo  Rue 115'),
(1641009771, '2021-11-26 10:48:00', '2021-11-26 10:48:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283946', '6.3611894', 0, 'Gbedokpo  Rue 115'),
(1641009772, '2021-11-26 10:48:00', '2021-11-26 10:48:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283946', '6.3611894', 0, 'Gbedokpo  Rue 115'),
(1641009773, '2021-11-26 10:48:00', '2021-11-26 10:48:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283946', '6.3611894', 0, 'Gbedokpo  Rue 115'),
(1641009774, '2021-11-26 10:48:00', '2021-11-26 10:48:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283946', '6.3611894', 0, 'Gbedokpo  Rue 115'),
(1641009775, '2021-11-26 10:49:00', '2021-11-26 10:49:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283949', '6.3611885', 0, 'Gbedokpo  Rue 115'),
(1641009776, '2021-11-26 10:49:00', '2021-11-26 10:49:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283949', '6.3611885', 0, 'Gbedokpo  Rue 115'),
(1641009777, '2021-11-26 10:49:00', '2021-11-26 10:49:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283949', '6.3611885', 0, 'Gbedokpo  Rue 115'),
(1641009778, '2021-11-26 10:49:00', '2021-11-26 10:49:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283949', '6.3611885', 0, 'Gbedokpo  Rue 115'),
(1641009779, '2021-11-26 10:49:00', '2021-11-26 10:49:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283949', '6.3611885', 0, 'Gbedokpo  Rue 115'),
(1641009780, '2021-11-26 10:51:00', '2021-11-26 10:51:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283853', '6.3611904', 0, 'Gbedokpo  Rue 115'),
(1641009781, '2021-11-26 10:51:00', '2021-11-26 10:51:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283853', '6.3611904', 0, 'Gbedokpo  Rue 115'),
(1641009782, '2021-11-26 10:51:00', '2021-11-26 10:51:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283853', '6.3611904', 0, 'Gbedokpo  Rue 115'),
(1641009783, '2021-11-26 10:51:00', '2021-11-26 10:51:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283853', '6.3611904', 0, 'Gbedokpo  Rue 115'),
(1641009784, '2021-11-26 10:51:00', '2021-11-26 10:51:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283853', '6.3611904', 0, 'Gbedokpo  Rue 115'),
(1641009785, '2021-11-26 10:52:00', '2021-11-26 10:52:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283941', '6.3611897', 0, 'Gbedokpo  Rue 115'),
(1641009786, '2021-11-26 10:52:00', '2021-11-26 10:52:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283941', '6.3611897', 0, 'Gbedokpo  Rue 115'),
(1641009787, '2021-11-26 10:52:00', '2021-11-26 10:52:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283941', '6.3611897', 0, 'Gbedokpo  Rue 115'),
(1641009788, '2021-11-26 10:52:00', '2021-11-26 10:52:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283941', '6.3611897', 0, 'Gbedokpo  Rue 115'),
(1641009789, '2021-11-26 10:52:00', '2021-11-26 10:52:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283941', '6.3611897', 0, 'Gbedokpo  Rue 115'),
(1641009790, '2021-11-26 11:01:00', '2021-11-26 11:01:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283939', '6.3611905', 0, 'Gbedokpo  Rue 115'),
(1641009791, '2021-11-26 11:01:00', '2021-11-26 11:01:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283939', '6.3611905', 0, 'Gbedokpo  Rue 115'),
(1641009792, '2021-11-26 11:01:00', '2021-11-26 11:01:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283939', '6.3611905', 0, 'Gbedokpo  Rue 115'),
(1641009793, '2021-11-26 11:01:00', '2021-11-26 11:01:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283939', '6.3611905', 0, 'Gbedokpo  Rue 115'),
(1641009794, '2021-11-26 11:01:00', '2021-11-26 11:01:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283939', '6.3611905', 0, 'Gbedokpo  Rue 115'),
(1641009795, '2021-11-26 11:21:00', '2021-11-26 11:21:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283838', '6.3611874', 0, 'Gbedokpo  Rue 115'),
(1641009796, '2021-11-26 11:21:00', '2021-11-26 11:21:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283838', '6.3611874', 0, 'Gbedokpo  Rue 115'),
(1641009797, '2021-11-26 11:21:00', '2021-11-26 11:21:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283838', '6.3611874', 0, 'Gbedokpo  Rue 115'),
(1641009798, '2021-11-26 11:21:00', '2021-11-26 11:21:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283838', '6.3611874', 0, 'Gbedokpo  Rue 115'),
(1641009799, '2021-11-26 11:21:00', '2021-11-26 11:21:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283838', '6.3611874', 0, 'Gbedokpo  Rue 115'),
(1641009809, '2021-11-26 16:45:00', '2021-11-26 16:45:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283946', '6.3611894', 0, 'Gbedokpo  Rue 115'),
(1641009810, '2021-11-26 16:45:00', '2021-11-26 16:45:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283902', '6.361187', 0, 'Gbedokpo  Rue 115'),
(1641009811, '2021-11-26 16:47:00', '2021-11-26 16:47:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283808', '6.3611759', 0, 'Gbedokpo  Rue 115'),
(1641009812, '2021-11-26 16:48:00', '2021-11-26 16:48:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283748', '6.3611747', 0, 'Gbedokpo  Rue 115'),
(1641009813, '2021-11-26 16:49:00', '2021-11-26 16:49:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, 113, 0, NULL, '17', '2.4283624', '6.3611616', 0, 'Gbedokpo  Rue 115'),
(1641009814, '2021-11-26 16:50:00', '2021-11-26 16:50:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.428385', '6.3612213', 0, 'Gbedokpo  Rue 115'),
(1641009817, '2021-11-26 16:51:00', '2021-11-26 16:51:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283937', '6.3611896', 0, 'Gbedokpo  Rue 115'),
(1641009818, '2021-11-26 16:52:00', '2021-11-26 16:52:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283874', '6.3611954', 0, 'Gbedokpo  Rue 115'),
(1641009819, '2021-11-26 16:53:00', '2021-11-26 16:53:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283841', '6.3611937', 0, 'Gbedokpo  Rue 115'),
(1641009820, '2021-11-26 16:54:00', '2021-11-26 16:54:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283869', '6.3611967', 0, 'Gbedokpo  Rue 115'),
(1641009821, '2021-11-26 16:55:00', '2021-11-26 16:55:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283941', '6.3611897', 0, 'Gbedokpo  Rue 115'),
(1641009822, '2021-11-26 16:55:00', '2021-11-26 16:55:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, 113, 0, NULL, '17', '2.4283941', '6.3611897', 0, 'Gbedokpo  Rue 115'),
(1641009823, '2021-11-26 16:56:00', '2021-11-26 16:56:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283798', '6.3612188', 0, 'Gbedokpo  Rue 115'),
(1641009824, '2021-11-26 16:56:00', '2021-11-26 16:56:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283798', '6.3612188', 0, 'Gbedokpo  Rue 115'),
(1641009825, '2021-11-26 16:57:00', '2021-11-26 16:57:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283947', '6.3611873', 0, 'Gbedokpo  Rue 115'),
(1641009826, '2021-11-26 16:57:00', '2021-11-26 16:57:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283947', '6.3611873', 0, 'Gbedokpo  Rue 115'),
(1641009827, '2021-11-26 16:59:00', '2021-11-26 16:59:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, NULL, 0, NULL, '17', '2.4283936', '6.3611901', 0, 'Gbedokpo  Rue 115'),
(1641009828, '2021-11-26 16:59:00', '2021-12-02 16:59:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, 113, 0, NULL, '17', '2.4283936', '6.3611901', 0, 'Gbedokpo  Rue 115'),
(1641009835, '2021-12-09 15:20:00', '2021-12-09 15:20:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, 117, 0, NULL, '17', '2.4275109', '6.3599901', 0, 'Gbedokpo  Cotonou'),
(1641009836, '2021-12-10 15:05:00', '2021-12-10 15:05:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, 118, 0, NULL, '17', '2.4283625', '6.3610648', 0, 'Gbedokpo  Rue 115'),
(1641009837, '2021-12-10 15:47:00', '2021-12-10 15:47:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, 118, 0, NULL, '17', '2.4283583', '6.3610496', 0, 'Gbedokpo  Rue 115'),
(1641009838, '2021-12-10 17:19:00', '2021-12-10 17:19:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, 118, 0, NULL, '17', '2.4283583', '6.3610496', 0, 'Gbedokpo  Rue 115'),
(1641009839, '2021-12-10 17:36:00', '2021-12-10 17:36:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, 118, 0, NULL, '17', '2.4283363', '6.3610216', 0, 'Gbedokpo  Rue 115'),
(1641009840, '2021-12-10 17:38:00', '2021-12-10 17:38:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, 119, 0, NULL, '17', '2.4283355', '6.3610188', 0, 'Gbedokpo  Rue 115'),
(1641009841, '2021-12-10 17:40:00', '2021-12-10 17:40:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, 119, 0, NULL, '17', '2.4283529', '6.3610612', 0, 'Gbedokpo  Rue 115'),
(1641009842, '2021-12-13 11:19:00', '2021-12-13 11:19:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, 121, 0, NULL, '17', '2.428362', '6.3610646', 0, 'Gbedokpo  Rue 115'),
(1641009843, '2021-12-13 13:46:00', '2021-12-13 13:46:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, 121, 0, NULL, '17', '2.42836', '6.3610838', 0, 'Gbedokpo  Rue 115');
INSERT INTO `mission_tracking` (`mission_tracking_id`, `entered_date_time`, `tracking_date_time`, `description`, `agent_name`, `visible`, `mission_id`, `deleted_flag`, `alert_sent`, `driver_name`, `gps_lon`, `gps_lat`, `is_step_tracking`, `tracking_address`) VALUES
(1641009844, '2021-12-13 13:52:00', '2021-12-13 13:52:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, 120, 0, NULL, '17', '2.4283557', '6.3610898', 0, 'Gbedokpo  Rue 115'),
(1641009845, '2021-12-13 13:57:00', '2021-12-13 13:57:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, 119, 0, NULL, '17', '2.4283557', '6.3610898', 0, 'Gbedokpo  Rue 115'),
(1641009846, '2021-12-13 15:04:00', '2021-12-13 15:04:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, 120, 0, NULL, '17', '2.4283557', '6.3610898', 0, 'Gbedokpo  Rue 115'),
(1641009847, '2021-12-15 15:21:00', '2021-12-15 15:21:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, 113, 0, NULL, '17', '2.4283929', '6.3614095', 0, 'Gbedokpo  Rue 115'),
(1641009848, '2021-12-15 15:24:00', '2021-12-15 15:24:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, 122, 0, NULL, '17', '2.4283921', '6.361512', 0, 'Gbedokpo  Cotonou'),
(1641009849, '2021-12-15 15:47:00', '2021-12-15 15:47:00', 'Mise Ã  jour de la localisation au dÃ©marrage de la mission', '17', 1, 113, 0, NULL, '17', '2.4283921', '6.361512', 0, 'Gbedokpo  Cotonou');

-- --------------------------------------------------------

--
-- Structure de la table `modifications`
--

CREATE TABLE `modifications` (
  `modif_id` int(11) NOT NULL,
  `modif_label` varchar(45) NOT NULL,
  `modif_date` datetime NOT NULL,
  `modif_user` int(11) NOT NULL,
  `active` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

CREATE TABLE `roles` (
  `role_id` int(11) NOT NULL,
  `role_label` varchar(45) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `roles`
--

INSERT INTO `roles` (`role_id`, `role_label`, `active`) VALUES
(1, 'Manager', 1),
(2, 'Prospecteur', 1);

-- --------------------------------------------------------

--
-- Structure de la table `roles_has_actions`
--

CREATE TABLE `roles_has_actions` (
  `role_id` int(11) NOT NULL,
  `action_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Structure de la table `type_email`
--

CREATE TABLE `type_email` (
  `type_email_id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `via_mailer` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `type_email`
--

INSERT INTO `type_email` (`type_email_id`, `name`, `via_mailer`) VALUES
(1, 'Email de Prospection', 1),
(2, 'Email de Confirmation de RDV Téléphonique', 1),
(3, 'Email de Confirmation de RDV Physique', 1),
(4, 'Nouvel An', 1),
(5, 'Communiqué de Presse', 1),
(6, 'Plaquettes de Présentation', 1),
(7, 'Identifiants de Prospecteur', 0),
(8, 'Mail envoyé à la création d\'un contact', 0),
(10, 'Réinitialisation de Mode de passe', 0);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `firstname` varchar(45) DEFAULT NULL,
  `lastname` varchar(45) DEFAULT NULL,
  `manager` int(11) NOT NULL,
  `login` varchar(45) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `role_id` int(11) NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  `creation_date` datetime NOT NULL,
  `salt` int(11) DEFAULT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`user_id`, `firstname`, `lastname`, `manager`, `login`, `email`, `password`, `role_id`, `img`, `creation_date`, `salt`, `active`) VALUES
(1, 'Mario', 'SUPER', 0, 'SuperMario', 'brancom554@gmail.com', '$2y$10$pBHuZojzr0ZMauLlheGXyu5H6D2MdygWJIIiiBwLYCTDMBNDz2Uaq', 1, '20210705120727.png', '0000-00-00 00:00:00', 1458074976, 1),
(12, 'Alban', 'Marius', 1, 'marius.ganhouegnon@mydko-sarl.com', 'marius.ganhouegnon@mydko-sarl.com', '$2y$10$33TB.bupb3WeW0sx.ysm9.uPvKuYjrdNG..dQCUVloQAr6ZGt8Vve', 1, '20210706170721.png', '2021-07-02 10:34:42', NULL, 1),
(17, 'Mongondza', 'Nuptia', 0, 'Nuptia', 'nuptia@test.com', '$2y$10$33TB.bupb3WeW0sx.ysm9.uPvKuYjrdNG..dQCUVloQAr6ZGt8Vve', 2, NULL, '2021-11-22 10:50:54', NULL, 1);

-- --------------------------------------------------------

--
-- Structure de la table `users_comments`
--

CREATE TABLE `users_comments` (
  `user_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `comment` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `actions`
--
ALTER TABLE `actions`
  ADD PRIMARY KEY (`action_id`),
  ADD KEY `action_user` (`action_user`);

--
-- Index pour la table `action_types`
--
ALTER TABLE `action_types`
  ADD PRIMARY KEY (`action_type_id`);

--
-- Index pour la table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`addresse_id`,`company_id`),
  ADD KEY `fk_addresses_companies1_idx` (`company_id`);

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`categorie_id`);

--
-- Index pour la table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `user_comment` (`user_id`),
  ADD KEY `company_id` (`company_id`),
  ADD KEY `mission_id` (`mission_id`);

--
-- Index pour la table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`company_id`),
  ADD KEY `activity_area` (`categorie`) USING BTREE;

--
-- Index pour la table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`contact_id`,`company_id`),
  ADD KEY `fk_contacts_companies1_idx` (`company_id`);

--
-- Index pour la table `contacts_desired_services`
--
ALTER TABLE `contacts_desired_services`
  ADD PRIMARY KEY (`contact_id`,`service_id`),
  ADD KEY `fk_contacts_has_desired_services_desired_services1_idx` (`service_id`),
  ADD KEY `fk_contacts_has_desired_services_contacts1_idx` (`contact_id`);

--
-- Index pour la table `crm_logs`
--
ALTER TABLE `crm_logs`
  ADD PRIMARY KEY (`log_id`);

--
-- Index pour la table `desired_services`
--
ALTER TABLE `desired_services`
  ADD PRIMARY KEY (`service_id`);

--
-- Index pour la table `hr_time_sheets`
--
ALTER TABLE `hr_time_sheets`
  ADD PRIMARY KEY (`time_sheet_id`),
  ADD KEY `FK_hr_time_sheets_employee_id` (`user_id`);

--
-- Index pour la table `mail_templates`
--
ALTER TABLE `mail_templates`
  ADD PRIMARY KEY (`mail_template_id`),
  ADD KEY `type_mail` (`type_mail`);

--
-- Index pour la table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`message_id`),
  ADD KEY `contact` (`contact`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `type` (`type`);

--
-- Index pour la table `missions`
--
ALTER TABLE `missions`
  ADD PRIMARY KEY (`mission_id`) USING BTREE,
  ADD KEY `fk_mis sions_users` (`created_by`),
  ADD KEY `fk_mission_label` (`mission_label`),
  ADD KEY `fk_missions_contacts1_idx` (`contact_id`) USING BTREE;

--
-- Index pour la table `mission_tracking`
--
ALTER TABLE `mission_tracking`
  ADD PRIMARY KEY (`mission_tracking_id`),
  ADD KEY `FK_mission_id` (`mission_id`);

--
-- Index pour la table `modifications`
--
ALTER TABLE `modifications`
  ADD PRIMARY KEY (`modif_id`),
  ADD KEY `modif_user` (`modif_user`);

--
-- Index pour la table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`role_id`);

--
-- Index pour la table `roles_has_actions`
--
ALTER TABLE `roles_has_actions`
  ADD PRIMARY KEY (`role_id`,`action_id`),
  ADD KEY `fk_roles_has_actions_actions1_idx` (`action_id`),
  ADD KEY `fk_roles_has_actions_roles1_idx` (`role_id`);

--
-- Index pour la table `type_email`
--
ALTER TABLE `type_email`
  ADD PRIMARY KEY (`type_email_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email_UNIQUE` (`email`),
  ADD KEY `role_id` (`role_id`);

--
-- Index pour la table `users_comments`
--
ALTER TABLE `users_comments`
  ADD PRIMARY KEY (`user_id`,`company_id`),
  ADD KEY `fk_users_has_companies_companies1_idx` (`company_id`),
  ADD KEY `fk_users_has_companies_users1_idx` (`user_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `actions`
--
ALTER TABLE `actions`
  MODIFY `action_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=308;

--
-- AUTO_INCREMENT pour la table `action_types`
--
ALTER TABLE `action_types`
  MODIFY `action_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `addresse_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `categorie_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `companies`
--
ALTER TABLE `companies`
  MODIFY `company_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- AUTO_INCREMENT pour la table `crm_logs`
--
ALTER TABLE `crm_logs`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `desired_services`
--
ALTER TABLE `desired_services`
  MODIFY `service_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `hr_time_sheets`
--
ALTER TABLE `hr_time_sheets`
  MODIFY `time_sheet_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT pour la table `mail_templates`
--
ALTER TABLE `mail_templates`
  MODIFY `mail_template_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `messages`
--
ALTER TABLE `messages`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT pour la table `missions`
--
ALTER TABLE `missions`
  MODIFY `mission_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT pour la table `mission_tracking`
--
ALTER TABLE `mission_tracking`
  MODIFY `mission_tracking_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1641009850;

--
-- AUTO_INCREMENT pour la table `modifications`
--
ALTER TABLE `modifications`
  MODIFY `modif_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `roles`
--
ALTER TABLE `roles`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `type_email`
--
ALTER TABLE `type_email`
  MODIFY `type_email_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `actions`
--
ALTER TABLE `actions`
  ADD CONSTRAINT `action_user_fk` FOREIGN KEY (`action_user`) REFERENCES `users` (`user_id`);

--
-- Contraintes pour la table `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `fk_addresses_companies1` FOREIGN KEY (`company_id`) REFERENCES `companies` (`company_id`);

--
-- Contraintes pour la table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `fk_company_id` FOREIGN KEY (`company_id`) REFERENCES `companies` (`company_id`),
  ADD CONSTRAINT `fk_user_comment` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Contraintes pour la table `companies`
--
ALTER TABLE `companies`
  ADD CONSTRAINT `FK_companies_categories` FOREIGN KEY (`categorie`) REFERENCES `categories` (`categorie_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `contacts`
--
ALTER TABLE `contacts`
  ADD CONSTRAINT `fk_contacts_companies1` FOREIGN KEY (`company_id`) REFERENCES `companies` (`company_id`);

--
-- Contraintes pour la table `contacts_desired_services`
--
ALTER TABLE `contacts_desired_services`
  ADD CONSTRAINT `fk_contacts_has_desired_services_contacts1` FOREIGN KEY (`contact_id`) REFERENCES `contacts` (`contact_id`),
  ADD CONSTRAINT `fk_contacts_has_desired_services_desired_services1` FOREIGN KEY (`service_id`) REFERENCES `desired_services` (`service_id`);

--
-- Contraintes pour la table `hr_time_sheets`
--
ALTER TABLE `hr_time_sheets`
  ADD CONSTRAINT `FK_hr_time_sheets_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Contraintes pour la table `mail_templates`
--
ALTER TABLE `mail_templates`
  ADD CONSTRAINT `fk_type_mail` FOREIGN KEY (`type_mail`) REFERENCES `type_email` (`type_email_id`);

--
-- Contraintes pour la table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `fk_contact` FOREIGN KEY (`contact`) REFERENCES `contacts` (`contact_id`),
  ADD CONSTRAINT `fk_type` FOREIGN KEY (`type`) REFERENCES `type_email` (`type_email_id`),
  ADD CONSTRAINT `fk_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Contraintes pour la table `missions`
--
ALTER TABLE `missions`
  ADD CONSTRAINT `FK_missions_contacts` FOREIGN KEY (`contact_id`) REFERENCES `contacts` (`contact_id`),
  ADD CONSTRAINT `FK_missions_users` FOREIGN KEY (`created_by`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `fk_mission_label` FOREIGN KEY (`mission_label`) REFERENCES `action_types` (`action_type_id`);

--
-- Contraintes pour la table `mission_tracking`
--
ALTER TABLE `mission_tracking`
  ADD CONSTRAINT `FK_mission_id` FOREIGN KEY (`mission_id`) REFERENCES `missions` (`mission_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `modifications`
--
ALTER TABLE `modifications`
  ADD CONSTRAINT `modif_user_fk` FOREIGN KEY (`modif_user`) REFERENCES `users` (`user_id`);

--
-- Contraintes pour la table `roles_has_actions`
--
ALTER TABLE `roles_has_actions`
  ADD CONSTRAINT `fk_roles_has_actions_actions1` FOREIGN KEY (`action_id`) REFERENCES `actions` (`action_id`),
  ADD CONSTRAINT `fk_roles_has_actions_roles1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`role_id`);

--
-- Contraintes pour la table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `fk_role_id` FOREIGN KEY (`role_id`) REFERENCES `roles` (`role_id`);

--
-- Contraintes pour la table `users_comments`
--
ALTER TABLE `users_comments`
  ADD CONSTRAINT `fk_users_has_companies_companies1` FOREIGN KEY (`company_id`) REFERENCES `companies` (`company_id`),
  ADD CONSTRAINT `fk_users_has_companies_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
