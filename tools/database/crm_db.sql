-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : ven. 12 nov. 2021 à 13:51
-- Version du serveur :  8.0.20
-- Version de PHP : 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `crm_db`
--

-- --------------------------------------------------------

--
-- Structure de la table `actions`
--

CREATE TABLE `actions` (
  `action_id` int NOT NULL,
  `action_label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `action_date` datetime NOT NULL,
  `action_user` int NOT NULL,
  `active` tinyint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
(273, 'LOGIN TO DASHBOARD', '2021-11-12 12:11:55', 12, 1);

-- --------------------------------------------------------

--
-- Structure de la table `action_types`
--

CREATE TABLE `action_types` (
  `action_type_id` int NOT NULL,
  `action_type_label` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `active` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `action_types`
--

INSERT INTO `action_types` (`action_type_id`, `action_type_label`, `active`) VALUES
(1, 'Appel prospect', 1),
(2, 'Email', 1),
(3, 'Rendez-vous physique', 1),
(4, 'Rendez-vous téléphonique', 1);

-- --------------------------------------------------------

--
-- Structure de la table `addresses`
--

CREATE TABLE `addresses` (
  `addresse_id` int NOT NULL,
  `addresse_label` varchar(255) DEFAULT NULL,
  `company_id` int NOT NULL,
  `city` varchar(45) DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL,
  `postal` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `website` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `lastupdate` datetime DEFAULT NULL,
  `active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int NOT NULL,
  `comment_text` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `comment_date` datetime NOT NULL,
  `user_id` int NOT NULL,
  `company_id` int DEFAULT NULL,
  `mission_id` int DEFAULT NULL,
  `active` tinyint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `comments`
--

INSERT INTO `comments` (`comment_id`, `comment_text`, `comment_date`, `user_id`, `company_id`, `mission_id`, `active`) VALUES
(30, 'ok\n', '2021-08-30 12:57:25', 1, 25, NULL, 1),
(31, 'ldknfkgnsdf', '2021-08-31 10:02:16', 1, 26, NULL, 1),
(32, 'ok', '2021-10-06 11:54:45', 1, 25, NULL, 1),
(33, 'lol', '2021-10-06 12:22:04', 1, 25, NULL, 1),
(34, 'new comment ', '2021-10-06 13:08:52', 1, 26, NULL, 1),
(35, 'ok\n', '2021-10-26 12:32:33', 1, 150, NULL, 1),
(36, 'ok\n', '2021-11-11 09:10:40', 1, 25, 73, 1);

-- --------------------------------------------------------

--
-- Structure de la table `companies`
--

CREATE TABLE `companies` (
  `company_id` int NOT NULL,
  `company_name` varchar(60) NOT NULL,
  `company_zipcode` int DEFAULT NULL,
  `city` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `activity_area` varchar(45) DEFAULT NULL,
  `company_type` varchar(45) DEFAULT NULL,
  `code_naf` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `contacts`
--

CREATE TABLE `contacts` (
  `contact_id` int NOT NULL,
  `contact_firstname` varchar(60) NOT NULL,
  `contact_lastname` varchar(60) NOT NULL,
  `contact_email` varchar(60) NOT NULL,
  `phone_number` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `title` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `interest_level` enum('interested','non_interested','customer') DEFAULT NULL,
  `company_id` int NOT NULL,
  `is_manager` tinyint(1) DEFAULT '0',
  `created_by` int DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `update_date` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `contacts_desired_services`
--

CREATE TABLE `contacts_desired_services` (
  `contact_id` int NOT NULL,
  `service_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `crm_logs`
--

CREATE TABLE `crm_logs` (
  `log_id` int NOT NULL,
  `hystory_label` varchar(255) DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `update_datetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `desired_services`
--

CREATE TABLE `desired_services` (
  `service_id` int NOT NULL,
  `libelle_service` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
-- Structure de la table `mail_templates`
--

CREATE TABLE `mail_templates` (
  `mail_template_id` int NOT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `content` longtext,
  `type_mail` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `message_id` int NOT NULL,
  `type` int NOT NULL,
  `subject` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `contact` int NOT NULL,
  `user_id` int NOT NULL,
  `sent_date` datetime NOT NULL,
  `sent` tinyint NOT NULL,
  `active` tinyint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `mission_id` int NOT NULL,
  `mission_label` int NOT NULL,
  `contact_id` int NOT NULL,
  `company_id` int NOT NULL,
  `mission_date` date DEFAULT NULL,
  `creation_date` datetime NOT NULL,
  `status` int NOT NULL,
  `active` int NOT NULL,
  `created_by` int NOT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `missions`
--

INSERT INTO `missions` (`mission_id`, `mission_label`, `contact_id`, `company_id`, `mission_date`, `creation_date`, `status`, `active`, `created_by`, `description`) VALUES
(35, 1, 19, 25, '2021-08-31', '2021-08-30 12:08:06', 2, 1, 1, NULL),
(36, 2, 19, 25, '2021-08-30', '2021-08-30 17:50:22', 1, 1, 1, NULL),
(37, 2, 19, 25, '2021-08-30', '2021-08-30 17:56:50', 1, 1, 1, NULL),
(38, 2, 19, 25, '2021-08-30', '2021-08-30 18:20:17', 1, 1, 1, NULL),
(39, 2, 19, 25, '2021-08-30', '2021-08-30 18:22:11', 1, 1, 1, NULL),
(40, 2, 19, 25, '2021-08-30', '2021-08-30 18:29:49', 1, 1, 1, NULL),
(41, 2, 19, 25, '2021-08-30', '2021-08-30 18:34:59', 1, 1, 1, NULL),
(42, 2, 19, 25, '2021-08-30', '2021-08-30 18:37:07', 1, 1, 1, NULL),
(43, 2, 19, 25, '2021-08-30', '2021-08-30 18:42:34', 1, 1, 1, NULL),
(44, 2, 19, 25, '2021-08-31', '2021-08-31 09:01:37', 1, 1, 1, NULL),
(45, 2, 19, 25, '2021-08-31', '2021-08-31 09:12:18', 1, 1, 1, NULL),
(46, 2, 19, 25, '2021-08-31', '2021-08-31 09:19:43', 1, 1, 1, NULL),
(47, 2, 19, 25, '2021-08-31', '2021-08-31 15:23:47', 2, 1, 1, NULL),
(48, 2, 19, 25, '2021-08-31', '2021-08-31 15:52:35', 2, 1, 1, NULL),
(49, 2, 19, 25, '2021-08-31', '2021-08-31 15:54:02', 2, 1, 1, NULL),
(50, 2, 19, 25, '2021-08-31', '2021-08-31 15:56:09', 2, 1, 1, NULL),
(51, 2, 19, 25, '2021-08-31', '2021-08-31 16:21:59', 2, 1, 1, NULL),
(52, 2, 19, 25, '2021-08-31', '2021-08-31 16:23:50', 2, 1, 1, NULL),
(53, 2, 19, 25, '2021-08-31', '2021-08-31 16:26:47', 2, 1, 1, NULL),
(54, 2, 19, 25, '2021-08-31', '2021-08-31 16:29:12', 2, 1, 1, NULL),
(55, 2, 19, 25, '2021-08-31', '2021-08-31 16:37:09', 2, 1, 1, NULL),
(56, 2, 19, 25, '2021-08-31', '2021-08-31 16:40:10', 2, 1, 1, NULL),
(57, 2, 19, 25, '2021-08-31', '2021-08-31 17:26:07', 2, 1, 1, NULL),
(58, 2, 19, 25, '2021-08-31', '2021-08-31 17:29:46', 2, 1, 1, NULL),
(59, 2, 19, 25, '2021-09-01', '2021-09-01 17:40:48', 2, 1, 1, NULL),
(60, 2, 19, 25, '2021-09-01', '2021-09-01 17:42:29', 2, 1, 1, NULL),
(61, 2, 19, 25, '2021-09-01', '2021-09-01 17:45:55', 2, 1, 1, NULL),
(62, 2, 19, 25, '2021-09-02', '2021-09-02 11:56:11', 2, 1, 1, NULL),
(63, 2, 19, 25, '2021-09-02', '2021-09-02 12:02:25', 2, 1, 1, NULL),
(64, 2, 19, 25, '2021-09-02', '2021-09-02 12:03:09', 2, 1, 1, NULL),
(65, 2, 19, 25, '2021-09-02', '2021-09-02 12:05:46', 2, 1, 1, NULL),
(66, 2, 19, 25, '2021-09-02', '2021-09-02 12:09:09', 2, 1, 1, NULL),
(67, 2, 19, 25, '2021-09-02', '2021-09-02 12:13:30', 2, 1, 1, NULL),
(68, 2, 19, 25, '2021-09-02', '2021-09-02 12:15:20', 2, 1, 1, 'uk'),
(69, 1, 20, 26, '2021-10-12', '2021-10-11 12:10:16', 2, 1, 1, NULL),
(70, 2, 20, 26, '2021-10-11', '2021-10-11 15:50:47', 2, 1, 1, NULL),
(71, 2, 19, 25, '2021-10-26', '2021-10-26 13:06:09', 2, 1, 1, NULL),
(72, 1, 19, 25, '2021-10-27', '2021-10-26 15:10:05', 1, 1, 1, NULL),
(73, 1, 19, 25, '2021-10-30', '2021-10-26 15:10:35', 1, 1, 1, NULL),
(74, 1, 129, 25, '2021-10-27', '2021-10-26 18:10:19', 1, 1, 12, NULL),
(75, 1, 60, 75, '2021-10-28', '2021-10-26 18:10:46', 1, 1, 12, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `modifications`
--

CREATE TABLE `modifications` (
  `modif_id` int NOT NULL,
  `modif_label` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `modif_date` datetime NOT NULL,
  `modif_user` int NOT NULL,
  `active` tinyint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

CREATE TABLE `roles` (
  `role_id` int NOT NULL,
  `role_label` varchar(45) NOT NULL,
  `active` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `role_id` int NOT NULL,
  `action_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `type_email`
--

CREATE TABLE `type_email` (
  `type_email_id` int NOT NULL,
  `name` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `via_mailer` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `user_id` int NOT NULL,
  `firstname` varchar(45) DEFAULT NULL,
  `lastname` varchar(45) DEFAULT NULL,
  `manager` int NOT NULL,
  `login` varchar(45) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `role_id` int NOT NULL,
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `creation_date` datetime NOT NULL,
  `salt` int DEFAULT NULL,
  `active` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`user_id`, `firstname`, `lastname`, `manager`, `login`, `email`, `password`, `role_id`, `img`, `creation_date`, `salt`, `active`) VALUES
(1, 'Mario', 'SUPER', 0, 'SuperMario', 'brancom554@gmail.com', '$2y$10$pBHuZojzr0ZMauLlheGXyu5H6D2MdygWJIIiiBwLYCTDMBNDz2Uaq', 1, '20210705120727.png', '0000-00-00 00:00:00', 1458074976, 1),
(12, 'Alban', 'Marius', 1, 'marius.ganhouegnon@mydko-sarl.com', 'marius.ganhouegnon@mydko-sarl.com', '$2y$10$33TB.bupb3WeW0sx.ysm9.uPvKuYjrdNG..dQCUVloQAr6ZGt8Vve', 2, '20210706170721.png', '2021-07-02 10:34:42', NULL, 1);

-- --------------------------------------------------------

--
-- Structure de la table `users_comments`
--

CREATE TABLE `users_comments` (
  `user_id` int NOT NULL,
  `company_id` int NOT NULL,
  `comment` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  ADD PRIMARY KEY (`company_id`);

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
  ADD KEY `fk_missions_contacts1_idx` (`contact_id`,`company_id`),
  ADD KEY `fk_mis sions_users` (`created_by`),
  ADD KEY `fk_mission_label` (`mission_label`);

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
  MODIFY `action_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=274;

--
-- AUTO_INCREMENT pour la table `action_types`
--
ALTER TABLE `action_types`
  MODIFY `action_type_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `addresse_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT pour la table `companies`
--
ALTER TABLE `companies`
  MODIFY `company_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `contact_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- AUTO_INCREMENT pour la table `crm_logs`
--
ALTER TABLE `crm_logs`
  MODIFY `log_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `desired_services`
--
ALTER TABLE `desired_services`
  MODIFY `service_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `mail_templates`
--
ALTER TABLE `mail_templates`
  MODIFY `mail_template_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `messages`
--
ALTER TABLE `messages`
  MODIFY `message_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT pour la table `missions`
--
ALTER TABLE `missions`
  MODIFY `mission_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT pour la table `modifications`
--
ALTER TABLE `modifications`
  MODIFY `modif_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `roles`
--
ALTER TABLE `roles`
  MODIFY `role_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `type_email`
--
ALTER TABLE `type_email`
  MODIFY `type_email_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

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
  ADD CONSTRAINT `fk_mission_label` FOREIGN KEY (`mission_label`) REFERENCES `action_types` (`action_type_id`),
  ADD CONSTRAINT `fk_missions_contacts1` FOREIGN KEY (`contact_id`,`company_id`) REFERENCES `contacts` (`contact_id`, `company_id`);

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
