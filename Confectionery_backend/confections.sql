-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 14, 2024 at 07:43 AM
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
-- Database: `confectionery`
--

-- --------------------------------------------------------

--
-- Table structure for table `confections`
--

CREATE TABLE `confections` (
  `confectionID` bigint(20) NOT NULL,
  `cname` text DEFAULT NULL,
  `type` text DEFAULT NULL,
  `prizewinning` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `confections`
--

INSERT INTO `confections` (`confectionID`, `cname`, `type`, `prizewinning`) VALUES
(1, 'Süni', 'mixed', 0),
(2, 'Gesztenyealagút', 'mixed', 0),
(3, 'Sajtos pogácsa salty', 'biscuit', 0),
(4, 'Diós-mákos', 'roll', 0),
(5, 'Sajttorta (málnás)', 'cake', 0),
(6, 'Citrom', 'cake', 0),
(7, 'Eszterházy cake', 'slice', 0),
(8, 'Rákóczi-túrós', 'pie', 0),
(9, 'Meggyes kocka creamy', 'cake', 0),
(10, 'Legényfogó', 'cake', -1),
(11, 'Alpesi karamell cake', 'slice', 0),
(12, 'Kókuszcsók sweet', 'biscuit', 0),
(13, 'Habos mákos', 'pie', 0),
(14, 'Szilvás', 'pie', 0),
(15, 'Juhtúrós párna salty', 'biscuit', 0),
(16, 'Mákos guba cake', 'slice', 0),
(17, 'Néró sweet', 'biscuit', 0),
(18, 'Sacher cake', 'slice', 0),
(19, 'Citrom cake', 'slice', 0),
(20, 'Ribizlihabos-almás réteges special', 'cake', -1),
(21, 'Három kívánság', 'cake', -1),
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
(72, 'Csokis kaland special', 'cake', -1),
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
(105, 'Zalavári gesztenye', 'cake', -1),
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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `confections`
--
ALTER TABLE `confections`
  ADD PRIMARY KEY (`confectionID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
