-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 16, 2024 at 10:55 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `confectionery`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `getAllConfections` ()   SELECT * from confections$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `getAllContents` ()   SELECT * from contents$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `getAllPrices` ()   SELECT * from prices$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `getConfectionByName` (IN `name` TEXT)   SELECT * FROM confections where confections.cname=name$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `getConfectionByPrize` (IN `prize_winning` INT)   SELECT * from confections where confections.prize_winning=prize_winning$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `getConfectionByType` (IN `type` TEXT)   SELECT * FROM confections where confections.type=type$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `getContentByFree` (IN `free` TEXT)   SELECT * from contents where contents.free=free$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `getPriceByConfID` (IN `confID` INT)   SELECT * from prices where prices.confID=confID$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `confections`
--

CREATE TABLE `confections` (
  `confectionid` bigint(20) NOT NULL,
  `cname` text DEFAULT NULL,
  `type` text DEFAULT NULL,
  `prize_winning` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `confections`
--

INSERT INTO `confections` (`confectionid`, `cname`, `type`, `prize_winning`) VALUES
(1, 'Süni', 'mixed', 0),
(2, 'Gesztenyealagút', 'mixed', 0),
(3, 'Sajtos pogácsa salty', 'biscuit', 0),
(4, 'Diós-mákos', 'roll', 0),
(5, 'Sajttorta (málnás)', 'cake', 0),
(6, 'Citrom', 'cake', 0),
(7, 'Eszterházy cake', 'slice', 0),
(8, 'Rákóczi-túrós', 'pie', 0),
(9, 'Meggyes kocka creamy', 'cake', 0),
(10, 'Legényfogó', 'cake', 1),
(11, 'Alpesi karamell cake', 'slice', 0),
(12, 'Kókuszcsók sweet', 'biscuit', 0),
(13, 'Habos mákos', 'pie', 0),
(14, 'Szilvás', 'pie', 0),
(15, 'Juhtúrós párna salty', 'biscuit', 0),
(16, 'Mákos guba cake', 'slice', 0),
(17, 'Néró sweet', 'biscuit', 0),
(18, 'Sacher cake', 'slice', 0),
(19, 'Citrom cake', 'slice', 0),
(20, 'Ribizlihabos-almás réteges special', 'cake', 1),
(21, 'Három kívánság', 'cake', 1),
(22, 'Dobos', 'cake', 0),
(23, 'Epres mascarpone cake', 'slice', 0),
(24, 'Csokoládémousse', 'cake', 0),
(25, 'Oroszkrém', 'cake', 0),
(26, 'Medvetalp', 'mixed', 0),
(27, 'Trüffel', 'cake', 0),
(28, 'Tejszínes gyümölcsös (meggy)', 'cake', 0),
(29, 'Mákos-szilvalekváros', 'roll', 0),
(30, 'Ribizlihabos-﻿almá﻿s réteges tortaszelet cake', 'slice', 0),
(31, 'Marcipános vágott sweet', 'biscuit', 0),
(32, 'Indiáner', 'mixed', 0),
(33, 'Meggyes', 'pie', 0),
(34, 'Mákos', 'roll', 0),
(35, 'Sós karamella', 'cake', 0),
(36, 'Legényfogó cake', 'slice', 0),
(37, 'Rigó Jancsi', 'cake', 0),
(38, 'Tejszínes gyümölcsös (erdei gyümölcs)', 'cake', 0),
(39, 'Ez+Az (csokoládé és gesztenye)', 'cake', 0),
(40, 'Málnás mascarpone', 'cake', 0),
(41, 'Dobos cake', 'slice', 0),
(42, 'Ferrero', 'cake', 0),
(43, 'Vegyes házi pitefalatok', 'pie', 0),
(44, 'Ökörszem sweet', 'biscuit', 0),
(45, 'Danubius kocka creamy', 'cake', 0),
(46, 'Sajtkrémmel töltött fánkocska salty', 'biscuit', 0),
(47, 'Túrókrém gyümölccsel díszítve cake', 'slice', 0),
(48, 'Almás', 'pie', 0),
(49, 'Mignon', 'mixed', 0),
(50, 'Csokoládémousse fényes csokoládéval', 'cake', 0),
(51, 'Vágott sós (sós omlós) salty', 'biscuit', 0),
(52, 'Nagyi sós salty', 'biscuit', 0),
(53, 'Vegyes sós salty', 'biscuit', 0),
(54, 'Somlói cake', 'slice', 0),
(55, 'Tiramisu cake', 'slice', 0),
(56, 'Hegyvidék cake', 'slice', 0),
(57, 'Szedres csokoládé cake', 'slice', 0),
(58, 'Pogácsák mixeden salty', 'biscuit', 0),
(59, 'Lúdláb', 'cake', 0),
(60, 'Sacher', 'cake', 0),
(61, 'Eszterházy', 'cake', 0),
(62, 'Zalavári gesztenye cake', 'slice', 0),
(63, 'Gesztenyegolyó', 'mixed', 0),
(64, 'Pisztáciás-málnás mascarpone cake', 'slice', 0),
(65, 'Habos mákos', 'mixed', 0),
(66, 'Franciakrémes', 'pastry', 0),
(67, 'Gesztenye kocka creamy', 'cake', 0),
(68, 'Pisztáciás-málnás mascarpone', 'cake', 0),
(69, 'Málnás kocka creamy', 'cake', 0),
(70, 'Sajttorta (málnás) cake', 'slice', 0),
(71, 'Túrókrém gyümölccsel', 'cake', 0),
(72, 'Csokis kaland special', 'cake', 1),
(73, 'Somlói', 'cake', 0),
(74, 'Palermo', 'cake', 0),
(75, 'Szilvalekváros', 'roll', 0),
(76, 'Ünnepi diótorta grillázzsal', 'cake', 0),
(77, 'Oroszkrém cake', 'slice', 0),
(78, 'Mini zserbó sweet', 'biscuit', 0),
(79, 'Sajtos masni salty', 'biscuit', 0),
(80, 'Zserbó', 'pie', 0),
(81, 'Tejszínes gyümölcsös (málna)', 'cake', 0),
(82, 'Marcipános csokoládé', 'cake', 0),
(83, 'Csokis kaland cake', 'slice', 0),
(84, 'Marcipán tekercs sweet', 'biscuit', 0),
(85, 'Képviselőfánk', 'mixed', 0),
(86, 'Epres omlett', 'mixed', 0),
(87, 'Mini linzer sweet', 'biscuit', 0),
(88, 'Linzerkarika', 'mixed', 0),
(89, 'Szedres csokoládé', 'cake', 0),
(90, 'Narancsív sweet', 'biscuit', 0),
(91, 'Gesztenyepüré', 'mixed', 0),
(92, 'Palermo creamy', 'cake', 0),
(93, 'Csokis néró sweet', 'biscuit', 0),
(94, 'Flódni', 'pie', 0),
(95, 'Mézeskalács', 'cake', 0),
(96, 'Olívás pogácsa salty', 'biscuit', 0),
(97, 'Florentin sweet', 'biscuit', 0),
(98, 'Tiramisu', 'cake', 0),
(99, 'Zoli kedvence (vágott édes tea) sweet', 'biscuit', 0),
(100, 'Erdei gyümölcs kocka creamy', 'cake', 0),
(101, 'Rákóczi-túrós cake', 'slice', 0),
(102, 'Mézeskrémes', 'pie', 0),
(103, 'Trüffel cake', 'slice', 0),
(104, 'Szilvás papucs sweet', 'biscuit', 0),
(105, 'Zalavári gesztenye', 'cake', 1),
(106, 'Danubius', 'cake', 0),
(107, 'Alpesi karamell', 'cake', 0),
(108, 'Puncs', 'cake', 0),
(109, 'Gesztenye szív', 'mixed', 0),
(110, 'Ez+Az (csokoládé és gesztenye) cake', 'slice', 0),
(111, 'Tökmagos félhold salty', 'biscuit', 0),
(112, 'Burgonyás pogácsa salty', 'biscuit', 0),
(113, 'Somlói galuska', 'mixed', 0),
(114, 'Puncs cake', 'slice', 0),
(115, 'Lekváros vágott sweet', 'biscuit', 0),
(116, 'Oreo', 'cake', 0),
(117, 'Vintage', 'cake', 0),
(118, 'Rigó Jancsi creamy', 'cake', 0),
(119, 'Feketeerdő', 'cake', 0),
(120, 'Kókuszos vágott sweet', 'biscuit', 0),
(121, 'Feketeerdő cake', 'slice', 0),
(122, 'Moscauer sweet', 'biscuit', 0),
(123, 'Diós', 'roll', 0),
(124, 'Rákóczi-túrós', 'cake', 0),
(125, 'Három kívánság special', 'cake', 0),
(126, 'Gesztenyés-karamellás', 'roll', 0),
(127, 'Gesztenyés szív sweet', 'biscuit', 0),
(128, 'Ropi salty', 'biscuit', 0),
(129, 'Paleolit étcsokoládé special', 'cake', 0),
(130, 'Túrós', 'pie', 0),
(131, 'Ischler', 'mixed', 0),
(132, 'Lúdláb cake', 'slice', 0),
(133, 'Csokoládémousse cake', 'slice', 0),
(134, 'Dió', 'cake', 0),
(135, 'Krémes', 'pastry', 0),
(136, 'Mini ischler sweet', 'biscuit', 0),
(137, 'Paleolit étcsokoládé cake', 'slice', 0),
(138, 'Tejfölös túrós hajtogatott salty', 'biscuit', 0),
(139, 'Mákos guba', 'cake', 0);

-- --------------------------------------------------------

--
-- Table structure for table `contents`
--

CREATE TABLE `contents` (
  `contentid` bigint(20) NOT NULL,
  `confid` bigint(20) DEFAULT NULL,
  `free` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contents`
--

INSERT INTO `contents` (`contentid`, `confid`, `free`) VALUES
(1, 26, 'G'),
(2, 37, 'L'),
(3, 83, 'HC'),
(4, 91, 'G'),
(5, 137, 'G'),
(6, 60, 'Te'),
(7, 129, 'HC'),
(8, 122, 'To'),
(9, 90, 'G'),
(10, 26, 'To'),
(11, 94, 'L'),
(12, 46, 'É'),
(13, 72, 'HC'),
(14, 114, 'Te'),
(15, 63, 'To'),
(16, 12, 'Te'),
(17, 128, 'É'),
(18, 51, 'É'),
(19, 109, 'To'),
(20, 109, 'G'),
(21, 97, 'G'),
(22, 97, 'To'),
(23, 24, 'L'),
(24, 91, 'To'),
(25, 137, 'L'),
(26, 84, 'G'),
(27, 30, 'HC'),
(28, 108, 'Te'),
(29, 84, 'To'),
(30, 6, 'L'),
(31, 108, 'L'),
(32, 12, 'L'),
(33, 79, 'É'),
(34, 72, 'G'),
(35, 118, 'L'),
(36, 60, 'L'),
(37, 52, 'É'),
(38, 137, 'HC'),
(39, 114, 'L'),
(40, 90, 'To'),
(41, 20, 'HC'),
(42, 63, 'G'),
(43, 129, 'G'),
(44, 129, 'L'),
(45, 15, 'É');

-- --------------------------------------------------------

--
-- Table structure for table `prices`
--

CREATE TABLE `prices` (
  `priceid` bigint(20) NOT NULL,
  `confid` bigint(20) DEFAULT NULL,
  `price` bigint(20) DEFAULT NULL,
  `unit` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `prices`
--

INSERT INTO `prices` (`priceid`, `confid`, `price`, `unit`) VALUES
(1, 32, 500, 'pce'),
(2, 76, 10900, '16 slices'),
(3, 106, 4300, '8 slices'),
(4, 88, 300, 'pce'),
(5, 116, 16200, '24 slices'),
(6, 135, 250, 'pce'),
(7, 127, 4400, 'kg'),
(8, 50, 13400, '24 slices'),
(9, 70, 700, 'pce'),
(10, 31, 5200, 'kg'),
(11, 96, 3300, 'kg'),
(12, 116, 5700, '8 slices'),
(13, 22, 9000, '16 slices'),
(14, 138, 4400, 'kg'),
(15, 112, 2900, 'kg'),
(16, 58, 3200, 'kg'),
(17, 98, 10400, '16 slices'),
(18, 75, 2100, 'bar'),
(19, 24, 11400, '24 slices'),
(20, 62, 600, 'pce'),
(21, 61, 8400, '16 slices'),
(22, 105, 10900, '16 slices'),
(23, 20, 4700, '8 slices'),
(24, 123, 1800, 'bar'),
(25, 60, 8200, '16 slices'),
(26, 24, 3900, '8 slices'),
(27, 38, 4300, '8 slices'),
(28, 126, 2100, 'bar'),
(29, 64, 750, 'pce'),
(30, 109, 300, 'pce'),
(32, 89, 13200, '24 slices'),
(33, 98, 15400, '24 slices'),
(34, 24, 7400, '16 slices'),
(35, 76, 5700, '8 slices'),
(36, 131, 250, 'pce'),
(37, 50, 9200, '16 slices'),
(38, 55, 600, 'pce'),
(39, 87, 3400, 'kg'),
(40, 4, 3500, 'wreath'),
(41, 8, 400, 'pce'),
(42, 100, 450, 'pce'),
(43, 129, 5300, '8 slices'),
(44, 35, 4700, '8 slices'),
(45, 47, 490, 'pce'),
(46, 89, 9000, '16 slices'),
(47, 111, 3300, 'kg'),
(48, 94, 400, 'pce'),
(49, 42, 16200, '24 slices'),
(50, 80, 350, 'pce'),
(51, 134, 4700, '8 slices'),
(52, 128, 4000, 'kg'),
(53, 90, 5200, 'kg'),
(54, 39, 13200, '24 slices'),
(55, 71, 7400, '16 slices'),
(56, 17, 3400, 'kg'),
(57, 68, 18400, '24 slices'),
(58, 81, 8200, '16 slices'),
(59, 134, 9000, '16 slices'),
(60, 108, 11400, '24 slices'),
(61, 97, 5200, 'kg'),
(62, 81, 4300, '8 slices'),
(63, 44, 3800, 'kg'),
(64, 72, 5700, '8 slices'),
(65, 49, 250, 'pce'),
(66, 48, 350, 'pce'),
(67, 14, 350, 'pce'),
(68, 107, 12200, '24 slices'),
(69, 27, 15400, '24 slices'),
(70, 106, 12100, '24 slices'),
(71, 74, 7400, '16 slices'),
(72, 40, 5700, '8 slices'),
(73, 133, 450, 'pce'),
(74, 77, 490, 'pce'),
(75, 22, 13200, '24 slices'),
(76, 119, 9000, '16 slices'),
(77, 120, 3400, 'kg'),
(78, 105, 5700, '8 slices'),
(79, 119, 13200, '24 slices'),
(80, 99, 4600, 'kg'),
(81, 61, 12200, '24 slices'),
(82, 93, 4200, 'kg'),
(83, 59, 13200, '24 slices'),
(84, 82, 5700, '8 slices'),
(85, 56, 600, 'pce'),
(86, 23, 550, 'pce'),
(87, 81, 12100, '24 slices'),
(88, 67, 500, 'pce'),
(89, 68, 6400, '8 slices'),
(90, 38, 8200, '16 slices'),
(91, 139, 4700, '8 slices'),
(92, 30, 530, 'pce'),
(93, 95, 16200, '24 slices'),
(94, 101, 400, 'pce'),
(95, 65, 400, 'pce'),
(96, 10, 12100, '24 slices'),
(97, 59, 9000, '16 slices'),
(98, 119, 4700, '8 slices'),
(99, 82, 16200, '24 slices'),
(100, 3, 3300, 'kg'),
(101, 104, 4200, 'kg'),
(102, 110, 530, 'pce'),
(103, 1, 300, 'pce'),
(104, 25, 8200, '16 slices'),
(105, 40, 16200, '24 slices'),
(106, 36, 490, 'pce'),
(107, 124, 3900, '8 slices'),
(108, 16, 530, 'pce'),
(109, 29, 3500, 'wreath'),
(110, 116, 10900, '16 slices'),
(111, 71, 3900, '8 slices'),
(112, 2, 500, 'pce'),
(113, 71, 11400, '24 slices'),
(114, 10, 4300, '8 slices'),
(115, 108, 3900, '8 slices'),
(116, 69, 450, 'pce'),
(117, 39, 9000, '16 slices'),
(118, 25, 4300, '8 slices'),
(119, 107, 8400, '16 slices'),
(120, 5, 9000, '12 slices'),
(121, 106, 8200, '16 slices'),
(122, 114, 450, 'pce'),
(123, 26, 400, 'pce'),
(124, 82, 10900, '16 slices'),
(125, 28, 8200, '16 slices'),
(126, 42, 10900, '16 slices'),
(127, 35, 13200, '24 slices'),
(128, 74, 3900, '8 slices'),
(129, 19, 450, 'pce'),
(130, 25, 12100, '24 slices'),
(131, 125, 5700, '8 slices'),
(132, 95, 5700, '8 slices'),
(133, 34, 1700, 'bar'),
(134, 121, 530, 'pce'),
(135, 76, 16200, '24 slices'),
(136, 13, 400, 'pce'),
(137, 60, 12100, '24 slices'),
(138, 33, 350, 'pce'),
(139, 132, 530, 'pce'),
(140, 117, 9900, '16 slices'),
(141, 27, 10400, '16 slices'),
(142, 18, 490, 'pce'),
(143, 124, 7400, '16 slices'),
(144, 122, 5200, 'kg'),
(145, 59, 4700, '8 slices'),
(146, 124, 11400, '24 slices'),
(147, 134, 13200, '24 slices'),
(148, 45, 450, 'pce'),
(149, 63, 350, 'pce'),
(150, 6, 3900, '8 slices'),
(151, 28, 4300, '8 slices'),
(152, 37, 3900, '8 slices'),
(153, 52, 5000, 'kg'),
(154, 61, 4500, '8 slices'),
(155, 86, 600, 'pce'),
(156, 6, 7400, '16 slices'),
(157, 37, 7400, '16 slices'),
(158, 11, 490, 'pce'),
(159, 108, 7400, '16 slices'),
(160, 35, 9000, '16 slices'),
(161, 107, 4500, '8 slices'),
(162, 6, 11400, '24 slices'),
(163, 79, 4000, 'kg'),
(164, 60, 4300, '8 slices'),
(165, 21, 5700, '8 slices'),
(166, 28, 12100, '24 slices'),
(167, 15, 5000, 'kg'),
(168, 21, 5700, '8 slices'),
(169, 37, 11400, '24 slices'),
(170, 74, 11400, '24 slices'),
(171, 103, 650, 'pce'),
(172, 43, 4200, 'kg'),
(173, 12, 3400, 'kg'),
(174, 27, 5400, '8 slices'),
(175, 7, 490, 'pce'),
(176, 84, 5200, 'kg'),
(177, 115, 3600, 'kg'),
(178, 51, 4000, 'kg'),
(179, 118, 450, 'pce'),
(180, 41, 530, 'pce'),
(181, 135, 400, 'pce'),
(182, 73, 5400, '8 slices'),
(183, 10, 8200, '16 slices'),
(184, 98, 5400, '8 slices'),
(185, 113, 850, 'pce'),
(186, 130, 350, 'pce'),
(187, 39, 4700, '8 slices'),
(188, 136, 3400, 'kg'),
(189, 83, 650, 'pce'),
(190, 91, 800, '200 g'),
(191, 46, 5200, 'kg'),
(192, 102, 330, 'pce'),
(193, 95, 10900, '16 slices'),
(194, 54, 580, 'pce'),
(195, 57, 530, 'pce'),
(196, 22, 4700, '8 slices'),
(197, 92, 450, 'pce'),
(198, 68, 12400, '16 slices'),
(199, 42, 5700, '8 slices'),
(200, 40, 10900, '16 slices'),
(201, 9, 450, 'pce'),
(202, 78, 4200, 'kg'),
(203, 85, 500, 'pce'),
(204, 137, 600, 'pce'),
(205, 50, 4900, '8 slices'),
(206, 38, 12100, '24 slices'),
(207, 53, 4200, 'kg'),
(208, 89, 4700, '8 slices');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `confections`
--
ALTER TABLE `confections`
  ADD PRIMARY KEY (`confectionid`);

--
-- Indexes for table `contents`
--
ALTER TABLE `contents`
  ADD PRIMARY KEY (`contentid`);

--
-- Indexes for table `prices`
--
ALTER TABLE `prices`
  ADD PRIMARY KEY (`priceid`),
  ADD KEY `confID` (`confid`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `contents`
--
ALTER TABLE `contents`
  ADD CONSTRAINT `contents_ibfk_1` FOREIGN KEY (`contentID`) REFERENCES `confections` (`confectionID`),
  ADD CONSTRAINT `contents_ibfk_2` FOREIGN KEY (`contentID`) REFERENCES `confections` (`confectionID`);

--
-- Constraints for table `prices`
--
ALTER TABLE `prices`
  ADD CONSTRAINT `prices_ibfk_1` FOREIGN KEY (`confID`) REFERENCES `confections` (`confectionID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
