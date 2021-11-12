-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 21, 2021 at 01:21 PM
-- Server version: 8.0.23
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_medic`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `address_id` int NOT NULL,
  `postalcode` varchar(45) DEFAULT NULL,
  `street` varchar(45) DEFAULT NULL,
  `street_number` varchar(45) DEFAULT NULL,
  `city` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `country` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `statut` int DEFAULT NULL,
  `is_supplyer` int DEFAULT NULL,
  `compagny_id` int DEFAULT NULL,
  `contact_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`address_id`, `postalcode`, `street`, `street_number`, `city`, `country`, `statut`, `is_supplyer`, `compagny_id`, `contact_id`) VALUES
(4, 'BP02 166', 'apkapka Segbeya', NULL, 'Cotonou', 'Benin', 1, NULL, NULL, 28);

-- --------------------------------------------------------

--
-- Table structure for table `anomalies`
--

CREATE TABLE `anomalies` (
  `anomaly_id` int NOT NULL,
  `order_id` int NOT NULL,
  `content` varchar(45) NOT NULL,
  `status` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table ` brands`
--

CREATE TABLE ` brands` (
  `brand_id` int NOT NULL,
  `name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table ` brands`
--

INSERT INTO ` brands` (`brand_id`, `name`) VALUES
(1, 'Merco'),
(2, 'Benz');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `cart_id` int NOT NULL,
  `creation_date` datetime NOT NULL,
  `contact_id` int NOT NULL,
  `status` int DEFAULT NULL,
  `total` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cart_details`
--

CREATE TABLE `cart_details` (
  `cart_detail_id` int NOT NULL,
  `cart_id` int NOT NULL,
  `item_id` int NOT NULL,
  `quantity` int DEFAULT NULL,
  `subtotal` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int NOT NULL,
  `name` varchar(45) NOT NULL,
  `creation_date` datetime NOT NULL,
  `modif_date` datetime DEFAULT NULL,
  `parent` int DEFAULT NULL,
  `image` varchar(225) NOT NULL,
  `status` int DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL,
  `slug` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `name`, `creation_date`, `modif_date`, `parent`, `image`, `status`, `is_active`, `slug`) VALUES
(1, 'Catégorie 1', '2021-04-23 13:04:10', '2021-04-23 13:04:28', 0, './files/images/categories/16070610976082cc5a72505.jpg', 1, 1, 'categorie_1'),
(2, 'Emma', '2021-01-15 02:15:33', '2021-01-23 14:01:49', 4, 'c/images/image', 1, 1, 'emma'),
(3, 'Rhea', '2021-10-10 21:17:52', '2020-06-18 13:51:42', 1, 'c/images/image', 1, 1, 'rhea'),
(4, 'Amelia', '2021-02-17 12:34:06', '2021-02-15 13:04:50', 4, 'c/images/image', 1, 1, 'amelia'),
(5, 'Lisandra', '2021-02-06 17:29:35', '2020-08-20 18:18:38', 2, 'c/images/image', 1, 1, 'lisandra'),
(6, 'Petra', '2020-09-18 12:56:39', '2022-04-12 00:05:31', 9, 'c/images/image', 1, 1, '1petra'),
(7, 'Jena', '2021-06-08 13:46:31', '2021-12-30 22:32:32', 2, 'c/images/image', 1, 1, 'jena'),
(8, 'Skyler', '2020-05-04 07:07:26', '2021-12-14 18:06:50', 10, 'c/images/image', 1, 1, 'skyler'),
(9, 'Mary', '2021-02-10 08:44:48', '2020-12-25 13:21:49', 5, 'c/images/image', 1, 1, 'mary'),
(10, 'Belle', '2021-03-19 01:30:01', '2020-12-10 13:53:11', 6, 'c/images/image', 1, 1, 'belle');

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `company_id` int NOT NULL,
  `name` varchar(45) NOT NULL,
  `phone` varchar(45) NOT NULL,
  `status` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `contact_id` int NOT NULL,
  `lastname` varchar(225) NOT NULL,
  `fisrtname` varchar(225) NOT NULL,
  `email` varchar(225) DEFAULT NULL,
  `gender` varchar(225) DEFAULT NULL,
  `password` varchar(225) NOT NULL,
  `phone` varchar(225) DEFAULT NULL,
  `creation_date` datetime DEFAULT NULL,
  `modif_date` datetime NOT NULL,
  `img` varchar(225) DEFAULT NULL,
  `statut` int DEFAULT NULL,
  `role_id` int NOT NULL,
  `address_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`contact_id`, `lastname`, `fisrtname`, `email`, `gender`, `password`, `phone`, `creation_date`, `modif_date`, `img`, `statut`, `role_id`, `address_id`) VALUES
(28, 'idriss', 'ismael', 'ismaeltell94em@gmail.com', '', '$2y$10$kn7HMfuqfvbNSOLSJ5DTPOxtI27EFJSNXOsKmwSTNs3PZtitsQLmu', '+22967756042', '2021-05-14 09:05:53', '2021-05-14 10:36:19', NULL, 1, 2, NULL),
(31, 'admin', 'admin', 'admin@admin.com', '', '$2y$10$H6wNWJxt6RDZa9sPIinJWuZX8JkaKOMPXTa5pksEzh50fNqXTp20G', '229000000', '2021-05-14 17:05:36', '2021-05-21 11:05:01', '20210521110501.png', 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `deliveries`
--

CREATE TABLE `deliveries` (
  `delivery_id` int NOT NULL,
  `supplier_ref` varchar(45) NOT NULL,
  `delivery_date` date DEFAULT NULL,
  `status` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `deliveries`
--

INSERT INTO `deliveries` (`delivery_id`, `supplier_ref`, `delivery_date`, `status`) VALUES
(3, 'REF FOURNISSEUR', '2021-05-23', 2);

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `image_id` int NOT NULL,
  `item_id` int NOT NULL,
  `path` varchar(45) NOT NULL,
  `feath_img` int NOT NULL,
  `status` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`image_id`, `item_id`, `path`, `feath_img`, `status`) VALUES
(16, 96, 'BRADLEY1.jpg', 1, '1'),
(17, 96, 'BRADLEY11.jpg', 0, '1'),
(18, 96, 'BRADLEY12.png', 0, '1');

-- --------------------------------------------------------

--
-- Table structure for table `inventories`
--

CREATE TABLE `inventories` (
  `inventory_id` int NOT NULL,
  `item_id` int NOT NULL,
  `order_id` int NOT NULL,
  `product_number` varchar(45) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `inventory_date` datetime DEFAULT NULL,
  `expedition_ref` varchar(45) DEFAULT NULL,
  `source` varchar(45) DEFAULT NULL,
  `movement_flag` tinyint(1) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `invoice_id` int NOT NULL,
  `order_id` int NOT NULL,
  `invoice_amount` float DEFAULT NULL,
  `invoice_date` date DEFAULT NULL,
  `invoice_tax_amount` float DEFAULT NULL,
  `creation_date` datetime DEFAULT NULL,
  `invoice_comment` varchar(45) DEFAULT NULL,
  `invoice_number` varchar(45) DEFAULT NULL,
  `payment_status` varchar(45) DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `rebate_amount` decimal(9,0) DEFAULT NULL,
  `rebate_text` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `item_id` int NOT NULL,
  `reference` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `stock` int DEFAULT NULL,
  `price_min` varchar(20) DEFAULT NULL,
  `price_max` varchar(20) DEFAULT NULL,
  `description` longtext,
  `creation_date` datetime DEFAULT NULL,
  `modif_date` datetime DEFAULT NULL,
  `beginpromo` varchar(20) DEFAULT NULL,
  `endpromo` varchar(20) DEFAULT NULL,
  `slug` varchar(45) NOT NULL,
  `status` varchar(45) DEFAULT NULL,
  `brand_id` int NOT NULL,
  `category_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`item_id`, `reference`, `name`, `stock`, `price_min`, `price_max`, `description`, `creation_date`, `modif_date`, `beginpromo`, `endpromo`, `slug`, `status`, `brand_id`, `category_id`) VALUES
(2, '70935', 'Wang', 59, NULL, '18929', 'convallis convallis dolor. Quisque tincidunt pede ac urna. Ut tincidunt vehicula risus. Nulla eget metus eu erat semper rutrum. Fusce dolor quam, elementum at, egestas a, scelerisque sed,', '2022-01-04 09:45:26', '2022-04-08 21:16:16', NULL, NULL, 'Adele', '1', 1, 1),
(3, '99365', 'Andrew', 90, NULL, '15695', 'eu elit. Nulla facilisi. Sed neque. Sed eget lacus. Mauris non dui nec urna suscipit nonummy. Fusce fermentum fermentum arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Phasellus ornare. Fusce mollis. Duis sit amet diam eu dolor egestas rhoncus. Proin nisl sem, consequat nec, mollis vitae, posuere at, velit. Cras lorem lorem, luctus ut, pellentesque eget, dictum placerat, augue. Sed molestie. Sed id risus quis diam luctus lobortis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos hymenaeos.', '2021-06-16 11:27:35', '2021-03-12 14:35:24', NULL, NULL, 'Maile', '1', 1, 10),
(4, '93174', 'Raja', 32, NULL, '11501', 'luctus et ultrices posuere cubilia Curae; Phasellus ornare. Fusce mollis. Duis sit amet diam eu dolor egestas rhoncus. Proin nisl sem, consequat nec, mollis vitae, posuere at, velit. Cras lorem lorem, luctus ut, pellentesque eget, dictum placerat, augue. Sed molestie. Sed id risus quis diam luctus lobortis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos hymenaeos. Mauris ut quam vel sapien imperdiet ornare. In faucibus. Morbi vehicula.', '2021-05-22 06:36:38', '2021-12-01 14:10:02', NULL, NULL, 'Claudia', '1', 1, 1),
(5, '49838', 'Hu', 29, NULL, '16205', 'mollis dui, in sodales elit erat vitae risus. Duis a mi fringilla mi lacinia mattis. Integer eu lacus. Quisque imperdiet, erat nonummy ultricies ornare, elit elit fermentum risus, at fringilla purus mauris a nunc. In at pede. Cras vulputate velit eu sem. Pellentesque ut ipsum ac mi eleifend egestas. Sed pharetra, felis eget varius ultrices, mauris ipsum porta elit, a feugiat tellus lorem eu metus. In lorem. Donec elementum, lorem ut aliquam iaculis, lacus pede sagittis augue, eu tempor erat neque non quam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam fringilla cursus', '2021-06-12 13:34:10', '2021-08-17 02:03:59', NULL, NULL, 'Roanna', '1', 1, 1),
(6, '42043', 'Talon', 4, NULL, '16948', 'ac, eleifend vitae, erat. Vivamus nisi. Mauris nulla. Integer urna. Vivamus molestie dapibus ligula. Aliquam erat volutpat. Nulla dignissim. Maecenas ornare egestas ligula. Nullam feugiat placerat velit. Quisque', '2020-07-06 14:06:39', '2020-11-02 11:12:32', NULL, NULL, 'Brittany', '1', 1, 1),
(7, '16047', 'Zeph', 75, NULL, '16606', 'velit. Quisque varius. Nam porttitor scelerisque neque. Nullam nisl. Maecenas malesuada fringilla est. Mauris eu turpis. Nulla aliquet. Proin velit. Sed malesuada augue ut lacus. Nulla tincidunt, neque vitae semper egestas, urna justo faucibus lectus, a sollicitudin orci sem eget massa. Suspendisse eleifend. Cras sed leo. Cras vehicula aliquet libero. Integer in', '2022-03-12 19:06:41', '2021-12-15 12:38:29', NULL, NULL, 'Kylee', '1', 1, 1),
(9, '31355', 'Ray', 6, NULL, '13501', '                                                                                        vitae odio sagittis semper. Nam tempor diam dictum sapien. Aenean massa. Integer vitae nibh. Donec est mauris, rhoncus id, mollis nec, cursus a, enim.                                                                                        ', '2022-03-27 10:37:10', '2021-04-09 07:28:38', NULL, NULL, 'Germaine', '1', 1, 5),
(10, '92899', 'Chaney', 46, NULL, '10300', 'Nulla semper tellus id nunc interdum feugiat. Sed nec metus facilisis lorem tristique aliquet. Phasellus', '2021-09-12 05:27:20', '2021-06-27 17:48:33', NULL, NULL, 'Irene', '1', 1, 1),
(11, '67388', 'Dieter', 44, NULL, '12224', 'Nunc ac sem ut dolor dapibus gravida. Aliquam tincidunt, nunc ac mattis ornare, lectus ante dictum mi, ac mattis velit justo nec ante. Maecenas mi felis, adipiscing fringilla, porttitor vulputate, posuere vulputate, lacus. Cras interdum. Nunc sollicitudin commodo ipsum. Suspendisse non leo. Vivamus nibh dolor, nonummy ac, feugiat non, lobortis quis, pede. Suspendisse dui. Fusce diam nunc, ullamcorper eu, euismod ac, fermentum vel, mauris. Integer sem elit, pharetra ut, pharetra sed, hendrerit a, arcu. Sed', '2020-10-15 19:01:50', '2021-12-01 16:10:35', NULL, NULL, 'Amaya', '1', 1, 1),
(12, '44569', 'Noah', 32, NULL, '15655', 'nec, cursus a, enim. Suspendisse aliquet, sem ut cursus luctus, ipsum leo elementum sem, vitae aliquam eros turpis non enim. Mauris quis turpis vitae purus gravida sagittis. Duis gravida. Praesent eu nulla at sem molestie sodales. Mauris blandit enim consequat purus. Maecenas libero est, congue a, aliquet vel, vulputate eu, odio. Phasellus at augue id ante dictum cursus. Nunc mauris elit, dictum eu, eleifend nec, malesuada ut, sem. Nulla interdum. Curabitur dictum.', '2020-07-09 19:45:10', '2021-01-05 14:57:06', NULL, NULL, 'Leah', '1', 1, 1),
(13, '71126', 'Phelan', 78, NULL, '10986', 'est. Mauris eu turpis. Nulla aliquet. Proin velit. Sed malesuada augue ut lacus. Nulla tincidunt, neque vitae semper egestas, urna justo faucibus lectus, a sollicitudin orci sem eget massa. Suspendisse eleifend. Cras sed leo. Cras vehicula aliquet libero. Integer in magna. Phasellus dolor elit, pellentesque a, facilisis non, bibendum sed, est. Nunc laoreet lectus quis massa. Mauris vestibulum, neque sed dictum eleifend, nunc risus varius orci, in consequat enim diam vel arcu. Curabitur ut odio vel est tempor bibendum. Donec felis orci, adipiscing non, luctus sit amet, faucibus ut, nulla.', '2021-04-14 03:30:49', '2022-01-05 14:59:41', NULL, NULL, 'Danielle', '1', 1, 1),
(14, '70287', 'Hakeem', 57, NULL, '14643', 'urna. Nunc quis arcu vel quam dignissim pharetra. Nam ac nulla. In tincidunt congue turpis. In condimentum. Donec at arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec tincidunt. Donec vitae erat vel pede blandit congue. In scelerisque scelerisque dui. Suspendisse ac metus vitae velit egestas lacinia. Sed congue, elit sed consequat auctor, nunc nulla vulputate dui, nec tempus mauris erat', '2021-12-21 00:15:10', '2022-02-16 03:45:19', NULL, NULL, 'Halla', '1', 1, 1),
(15, '35636', 'Thane', 50, NULL, '12853', 'nulla ante, iaculis nec, eleifend non, dapibus rutrum, justo. Praesent luctus. Curabitur egestas nunc sed libero. Proin sed turpis nec mauris blandit mattis. Cras eget nisi dictum augue malesuada malesuada. Integer id magna et ipsum cursus vestibulum. Mauris magna. Duis dignissim tempor arcu. Vestibulum ut eros non enim commodo hendrerit. Donec porttitor tellus non magna. Nam ligula elit, pretium et, rutrum non, hendrerit id, ante. Nunc', '2020-07-08 04:54:31', '2021-12-30 07:38:48', NULL, NULL, 'Taylor', '1', 1, 1),
(16, '70174', 'Walter', 3, NULL, '13874', 'purus gravida sagittis. Duis gravida. Praesent eu nulla at sem molestie sodales. Mauris blandit enim consequat purus. Maecenas libero est, congue a, aliquet vel, vulputate eu, odio. Phasellus at augue id ante dictum cursus. Nunc mauris elit, dictum eu, eleifend nec, malesuada ut, sem. Nulla interdum. Curabitur dictum. Phasellus in felis. Nulla tempor augue ac ipsum. Phasellus vitae mauris sit amet lorem semper auctor. Mauris vel turpis. Aliquam adipiscing lobortis risus. In mi pede, nonummy ut, molestie in, tempus eu, ligula. Aenean euismod mauris eu elit. Nulla facilisi. Sed neque. Sed eget lacus. Mauris non dui nec', '2020-07-24 10:56:05', '2021-03-24 08:37:42', NULL, NULL, 'Cynthia', '1', 1, 1),
(17, '97547', 'Sylvester', 18, NULL, '17309', 'ligula. Donec luctus aliquet odio. Etiam ligula tortor, dictum eu, placerat eget, venenatis a, magna. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Etiam laoreet, libero et tristique pellentesque, tellus sem mollis dui, in sodales elit erat vitae risus. Duis a mi fringilla mi lacinia mattis. Integer eu lacus. Quisque imperdiet, erat', '2021-04-09 05:59:52', '2020-11-04 01:20:41', NULL, NULL, 'Kim', '1', 1, 1),
(18, '75975', 'Coby', 11, NULL, '14914', 'nisl arcu iaculis enim, sit amet ornare lectus justo eu arcu. Morbi sit amet massa. Quisque porttitor eros nec tellus. Nunc lectus pede, ultrices a, auctor non, feugiat nec, diam. Duis mi enim, condimentum eget, volutpat ornare, facilisis eget, ipsum. Donec sollicitudin adipiscing ligula. Aenean gravida', '2022-04-30 20:00:22', '2020-11-20 08:39:18', NULL, NULL, 'Nina', '1', 1, 1),
(19, '43682', 'Nicholas', 72, NULL, '14297', 'facilisis non, bibendum sed, est. Nunc laoreet lectus quis massa. Mauris vestibulum, neque sed dictum eleifend, nunc risus varius orci, in consequat enim diam vel arcu. Curabitur ut odio vel est tempor bibendum. Donec felis orci, adipiscing non, luctus sit amet, faucibus ut, nulla. Cras eu tellus eu augue porttitor interdum. Sed auctor odio a purus. Duis elementum, dui quis accumsan convallis, ante lectus convallis est, vitae sodales nisi magna sed dui.', '2022-04-06 19:42:28', '2020-06-29 00:49:05', NULL, NULL, 'Darrel', '1', 1, 1),
(21, '60704', 'Gavin', 8, NULL, '11782', 'sit amet luctus vulputate, nisi sem semper erat, in consectetuer ipsum nunc id enim. Curabitur massa. Vestibulum accumsan neque et nunc. Quisque ornare tortor at risus. Nunc ac sem ut dolor dapibus gravida. Aliquam tincidunt, nunc ac mattis ornare, lectus', '2021-09-19 23:42:53', '2021-05-09 07:10:27', NULL, NULL, 'Breanna', '1', 1, 1),
(22, '36741', 'Carter', 9, NULL, '12989', 'et, rutrum non, hendrerit id, ante. Nunc mauris sapien, cursus in, hendrerit consectetuer, cursus et, magna. Praesent interdum ligula eu enim. Etiam imperdiet dictum magna. Ut tincidunt orci quis lectus. Nullam suscipit, est ac facilisis facilisis, magna tellus faucibus leo, in lobortis tellus justo sit amet nulla. Donec non justo. Proin non massa non ante bibendum ullamcorper. Duis cursus, diam at pretium aliquet, metus urna convallis erat, eget', '2021-04-02 19:42:08', '2021-05-25 02:43:52', NULL, NULL, 'Wendy', '1', 1, 1),
(23, '24827', 'Clarke', 97, NULL, '18085', 'erat. Sed nunc est, mollis non, cursus non, egestas a, dui. Cras pellentesque. Sed dictum. Proin eget odio. Aliquam vulputate ullamcorper magna. Sed eu eros. Nam consequat dolor vitae dolor. Donec fringilla. Donec feugiat metus sit amet ante. Vivamus non lorem vitae odio sagittis semper. Nam tempor diam dictum sapien. Aenean massa. Integer vitae nibh. Donec est mauris, rhoncus id,', '2020-09-21 22:32:23', '2021-09-17 01:50:28', NULL, NULL, 'Hilda', '1', 1, 1),
(95, '92121', 'Henry', 1, NULL, '12576', 'elit fermentum risus, at fringilla purus mauris a nunc. In at pede. Cras vulputate velit eu sem. Pellentesque ut ipsum ac mi eleifend egestas. Sed pharetra, felis eget varius ultrices, mauris ipsum porta elit, a feugiat tellus lorem eu metus. In lorem. Donec elementum, lorem ut aliquam iaculis, lacus pede sagittis augue, eu tempor erat neque non quam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac', '2020-10-25 06:47:43', '2021-03-19 19:37:15', NULL, NULL, 'Lavinia', '1', 1, 1),
(96, '12655', 'Bradley1', 82, NULL, '12083', '                                                                                                                                                                                                                                                                                                                                                                                                            dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida non, sollicitudin a, malesuada id, erat. Etiam vestibulum massa rutrum magna. Cras                                                                                                                                                                                                                                                                                                                                                                                                            ', '2021-05-23 20:34:58', '2020-05-05 12:02:19', NULL, NULL, 'Winter', '1', 1, 3),
(98, '42594', 'Curran', 52, NULL, '15693', 'non, luctus sit amet, faucibus ut, nulla. Cras eu tellus eu augue porttitor interdum. Sed auctor odio a purus. Duis elementum, dui quis accumsan convallis, ante lectus convallis est, vitae sodales nisi magna sed dui. Fusce aliquam, enim nec tempus scelerisque, lorem ipsum sodales purus, in molestie tortor nibh sit amet orci. Ut sagittis lobortis mauris. Suspendisse aliquet molestie tellus. Aenean egestas hendrerit neque. In ornare sagittis felis. Donec tempor, est ac mattis semper, dui lectus rutrum urna, nec luctus felis', '2020-06-19 05:57:36', '2021-11-12 17:25:20', NULL, NULL, 'Wynne', '1', 1, 1),
(99, '52912', 'Callum', 61, NULL, '10888', 'Aenean sed pede nec ante blandit viverra. Donec tempus, lorem fringilla ornare placerat, orci lacus vestibulum lorem, sit amet ultricies sem magna nec quam. Curabitur vel lectus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec dignissim magna a tortor. Nunc commodo auctor velit. Aliquam nisl. Nulla eu neque pellentesque massa lobortis ultrices. Vivamus rhoncus. Donec est. Nunc ullamcorper, velit in aliquet lobortis, nisi nibh lacinia orci, consectetuer euismod est arcu ac orci. Ut semper pretium neque. Morbi quis urna. Nunc quis', '2022-04-05 06:23:03', '2020-12-02 13:26:17', NULL, NULL, 'Dahlia', '1', 1, 1),
(100, '65349', 'Isaac', 88, NULL, '16867', 'risus. Nunc ac sem ut dolor dapibus gravida. Aliquam tincidunt, nunc ac mattis ornare, lectus ante dictum mi, ac mattis velit justo nec ante. Maecenas mi felis, adipiscing fringilla, porttitor vulputate, posuere vulputate, lacus. Cras interdum. Nunc sollicitudin commodo ipsum. Suspendisse non leo. Vivamus nibh dolor, nonummy ac, feugiat non, lobortis quis, pede. Suspendisse dui. Fusce diam nunc, ullamcorper eu, euismod ac, fermentum vel, mauris. Integer sem elit, pharetra ut, pharetra sed, hendrerit a, arcu. Sed et', '2022-02-18 08:43:59', '2021-06-11 21:38:40', NULL, NULL, 'Ruby', '1', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `item_has_anomalies`
--

CREATE TABLE `item_has_anomalies` (
  `item_has_anomaly_id` int NOT NULL,
  `anomaly_id` int NOT NULL,
  `item_id` int NOT NULL,
  `item_status_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `item_statuses`
--

CREATE TABLE `item_statuses` (
  `item_status_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int NOT NULL,
  `code` varchar(45) NOT NULL,
  `creation_date` date NOT NULL,
  `total` int NOT NULL,
  `status` int NOT NULL,
  `payment_audit_id` int DEFAULT NULL,
  `address_id` int NOT NULL,
  `shipping_id` int DEFAULT NULL,
  `contact_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `code`, `creation_date`, `total`, `status`, `payment_audit_id`, `address_id`, `shipping_id`, `contact_id`) VALUES
(33, 'ORD20210520170538', '2021-05-20', 101202, 2, NULL, 4, 3, 28);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `order_detail_id` int NOT NULL,
  `quantity` int NOT NULL,
  `subtotal` float NOT NULL,
  `order_id` int DEFAULT NULL,
  `item_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`order_detail_id`, `quantity`, `subtotal`, `order_id`, `item_id`) VALUES
(91, 3, 101202, 33, 100);

-- --------------------------------------------------------

--
-- Table structure for table `payment_audits`
--

CREATE TABLE `payment_audits` (
  `payment_audit_id` int NOT NULL,
  `payment_method_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `payment_method_id` int NOT NULL,
  `name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `role_id` int NOT NULL,
  `name` varchar(45) NOT NULL,
  `is_active` tinyint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`role_id`, `name`, `is_active`) VALUES
(1, 'admin', 1),
(2, 'customer', 1),
(4, 'superadmin', 1);

-- --------------------------------------------------------

--
-- Table structure for table `specs`
--

CREATE TABLE `specs` (
  `spec_id` int NOT NULL,
  `name` varchar(45) NOT NULL,
  `value` varchar(45) NOT NULL,
  `status` int NOT NULL,
  `item_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `suppliers_has_items`
--

CREATE TABLE `suppliers_has_items` (
  `suppliers_has_item_id` int NOT NULL,
  `buying_price` int DEFAULT NULL,
  `order_quatity_min` varchar(45) DEFAULT NULL,
  `suppliers_ref` varchar(45) DEFAULT NULL,
  `avarage_delivery_time` varchar(45) DEFAULT NULL,
  `items_item_id` int NOT NULL,
  `addresses_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`address_id`),
  ADD KEY `fk_adresse_compagnie1_idx` (`compagny_id`),
  ADD KEY `contact_id` (`contact_id`);

--
-- Indexes for table `anomalies`
--
ALTER TABLE `anomalies`
  ADD PRIMARY KEY (`anomaly_id`),
  ADD KEY `fk_anomalies_orders1_idx` (`order_id`);

--
-- Indexes for table ` brands`
--
ALTER TABLE ` brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `fk_cart_utilisateur1_idx` (`contact_id`);

--
-- Indexes for table `cart_details`
--
ALTER TABLE `cart_details`
  ADD PRIMARY KEY (`cart_detail_id`),
  ADD KEY `fk_cart_detail_cart1_idx` (`cart_id`),
  ADD KEY `fk_cart_detail_items1_idx` (`item_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`company_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`contact_id`),
  ADD KEY `fk_utilisateur_role_idx` (`role_id`),
  ADD KEY `fk_contacts_addresses1_idx` (`address_id`);

--
-- Indexes for table `deliveries`
--
ALTER TABLE `deliveries`
  ADD PRIMARY KEY (`delivery_id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`image_id`),
  ADD KEY `item_id` (`item_id`);

--
-- Indexes for table `inventories`
--
ALTER TABLE `inventories`
  ADD PRIMARY KEY (`inventory_id`),
  ADD KEY `fk_inv_inventories_items1_idx` (`item_id`),
  ADD KEY `fk_inv_inventories_orders1_idx` (`order_id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`invoice_id`),
  ADD KEY `fk_invoices_orders1_idx` (`order_id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `fk_produit_marque1_idx` (`brand_id`),
  ADD KEY `fk_items_categories1_idx` (`category_id`);

--
-- Indexes for table `item_has_anomalies`
--
ALTER TABLE `item_has_anomalies`
  ADD PRIMARY KEY (`item_has_anomaly_id`),
  ADD KEY `fk_item_has_anomalies_anomalies1_idx` (`anomaly_id`),
  ADD KEY `fk_item_has_anomalies_items1_idx` (`item_id`),
  ADD KEY `fk_item_has_anomalies_item_status1_idx` (`item_status_id`);

--
-- Indexes for table `item_statuses`
--
ALTER TABLE `item_statuses`
  ADD PRIMARY KEY (`item_status_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `fk_commande_payement_audit1_idx` (`payment_audit_id`),
  ADD KEY `fk_commande_adresse1_idx` (`address_id`),
  ADD KEY `fk_commande_shipping1_idx` (`shipping_id`),
  ADD KEY `fk_orders_contacts1_idx` (`contact_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`order_detail_id`),
  ADD KEY `fk_command_detail_commande1_idx` (`order_id`),
  ADD KEY `fk_order_detail_items1_idx` (`item_id`);

--
-- Indexes for table `payment_audits`
--
ALTER TABLE `payment_audits`
  ADD PRIMARY KEY (`payment_audit_id`),
  ADD KEY `fk_payement_audit_payement_method1_idx` (`payment_method_id`);

--
-- Indexes for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`payment_method_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `specs`
--
ALTER TABLE `specs`
  ADD PRIMARY KEY (`spec_id`),
  ADD KEY `fk_specs_items1_idx` (`item_id`);

--
-- Indexes for table `suppliers_has_items`
--
ALTER TABLE `suppliers_has_items`
  ADD PRIMARY KEY (`suppliers_has_item_id`),
  ADD KEY `fk_supplyers_has_item_items1_idx` (`items_item_id`),
  ADD KEY `fk_supplyers_has_item_addresses1_idx` (`addresses_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `address_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `anomalies`
--
ALTER TABLE `anomalies`
  MODIFY `anomaly_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table ` brands`
--
ALTER TABLE ` brands`
  MODIFY `brand_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `cart_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `cart_details`
--
ALTER TABLE `cart_details`
  MODIFY `cart_detail_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `contact_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `deliveries`
--
ALTER TABLE `deliveries`
  MODIFY `delivery_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `image_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `inventories`
--
ALTER TABLE `inventories`
  MODIFY `inventory_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `invoice_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `item_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `item_has_anomalies`
--
ALTER TABLE `item_has_anomalies`
  MODIFY `item_has_anomaly_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `item_statuses`
--
ALTER TABLE `item_statuses`
  MODIFY `item_status_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `order_detail_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `payment_audits`
--
ALTER TABLE `payment_audits`
  MODIFY `payment_audit_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `payment_method_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `role_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `specs`
--
ALTER TABLE `specs`
  MODIFY `spec_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `suppliers_has_items`
--
ALTER TABLE `suppliers_has_items`
  MODIFY `suppliers_has_item_id` int NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `fk_adresse_compagnie1` FOREIGN KEY (`compagny_id`) REFERENCES `companies` (`company_id`);

--
-- Constraints for table `anomalies`
--
ALTER TABLE `anomalies`
  ADD CONSTRAINT `fk_anomalies_orders1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`);

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `fk_cart_utilisateur1` FOREIGN KEY (`contact_id`) REFERENCES `contacts` (`contact_id`);

--
-- Constraints for table `cart_details`
--
ALTER TABLE `cart_details`
  ADD CONSTRAINT `fk_cart_detail_cart1` FOREIGN KEY (`cart_id`) REFERENCES `carts` (`cart_id`),
  ADD CONSTRAINT `fk_cart_detail_items1` FOREIGN KEY (`item_id`) REFERENCES `items` (`item_id`);

--
-- Constraints for table `contacts`
--
ALTER TABLE `contacts`
  ADD CONSTRAINT `fk_contacts_addresses1` FOREIGN KEY (`address_id`) REFERENCES `addresses` (`address_id`),
  ADD CONSTRAINT `fk_utilisateur_role` FOREIGN KEY (`role_id`) REFERENCES `roles` (`role_id`);

--
-- Constraints for table `inventories`
--
ALTER TABLE `inventories`
  ADD CONSTRAINT `fk_inv_inventories_items1` FOREIGN KEY (`item_id`) REFERENCES `items` (`item_id`),
  ADD CONSTRAINT `fk_inv_inventories_orders1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`);

--
-- Constraints for table `invoices`
--
ALTER TABLE `invoices`
  ADD CONSTRAINT `fk_invoices_orders1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`);

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `fk_items_categories1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`),
  ADD CONSTRAINT `fk_produit_marque1` FOREIGN KEY (`brand_id`) REFERENCES ` brands` (`brand_id`);

--
-- Constraints for table `item_has_anomalies`
--
ALTER TABLE `item_has_anomalies`
  ADD CONSTRAINT `fk_item_has_anomalies_anomalies1` FOREIGN KEY (`anomaly_id`) REFERENCES `anomalies` (`anomaly_id`),
  ADD CONSTRAINT `fk_item_has_anomalies_item_status1` FOREIGN KEY (`item_status_id`) REFERENCES `item_statuses` (`item_status_id`),
  ADD CONSTRAINT `fk_item_has_anomalies_items1` FOREIGN KEY (`item_id`) REFERENCES `items` (`item_id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `fk_commande_adresse1` FOREIGN KEY (`address_id`) REFERENCES `addresses` (`address_id`),
  ADD CONSTRAINT `fk_commande_payement_audit1` FOREIGN KEY (`payment_audit_id`) REFERENCES `payment_audits` (`payment_audit_id`),
  ADD CONSTRAINT `fk_commande_shipping1` FOREIGN KEY (`shipping_id`) REFERENCES `deliveries` (`delivery_id`),
  ADD CONSTRAINT `fk_orders_contacts1` FOREIGN KEY (`contact_id`) REFERENCES `contacts` (`contact_id`);

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `fk_command_detail_commande1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`),
  ADD CONSTRAINT `fk_order_detail_items1` FOREIGN KEY (`item_id`) REFERENCES `items` (`item_id`);

--
-- Constraints for table `payment_audits`
--
ALTER TABLE `payment_audits`
  ADD CONSTRAINT `fk_payement_audit_payement_method1` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_methods` (`payment_method_id`);

--
-- Constraints for table `specs`
--
ALTER TABLE `specs`
  ADD CONSTRAINT `fk_specs_items1` FOREIGN KEY (`item_id`) REFERENCES `items` (`item_id`);

--
-- Constraints for table `suppliers_has_items`
--
ALTER TABLE `suppliers_has_items`
  ADD CONSTRAINT `fk_supplyers_has_item_addresses1` FOREIGN KEY (`addresses_id`) REFERENCES `addresses` (`address_id`),
  ADD CONSTRAINT `fk_supplyers_has_item_items1` FOREIGN KEY (`items_item_id`) REFERENCES `items` (`item_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
