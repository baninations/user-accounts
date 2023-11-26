-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 27, 2023 at 12:44 AM
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
-- Database: `nolis`
--

-- --------------------------------------------------------

--
-- Table structure for table `benutzeraccount`
--

CREATE TABLE `benutzeraccount` (
  `id` int(11) NOT NULL,
  `vorname` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `kundennummer` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `telefon` varchar(20) NOT NULL,
  `benutzername` varchar(50) NOT NULL,
  `passwort` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `benutzeraccount`
--

INSERT INTO `benutzeraccount` (`id`, `vorname`, `name`, `kundennummer`, `email`, `telefon`, `benutzername`, `passwort`) VALUES
(1, 'Alban', 'Mramori', 62466, 'mramorialban@gmail.com', '+4915202024358', 'Alban.m', '$2y$10$yorT23zvgaVxpY7UaSSejOq1dikqvFVgv6upHR.jEsS'),
(2, 'John', 'Doe', 16133, 'john.doe@example.com', '1234567890', 'johndoe', '$2y$10$LVW3HQ35EA4OsT.ejV1ajOrRGHZ4TgNFYWBz3wOdzrf'),
(3, 'Hans', 'Fischer', 54321, 'hans.fischer@example.com', '5555555555', 'hansfischer', '$2y$10$yYzp.IeAPegwxKXc/kieHuNeUoPlm3VEPnaWpp5PEv3'),
(4, 'Hava', 'Weber', 98765, 'eva.weber@example.com', '1112233444', 'evaweber', '$2y$10$5rAzbBrTwDwPfoa8OrEbMOBnFd/pgEcAksAEitXymNP'),
(5, 'Charlotte', 'Braun', 13579, 'charlotte.braun@example.com', '9998887777', 'charlottebraun', '$2y$10$JtkLNikd8DxlWXpDJg6OjeqBZgKDSLHq26KSPok17KH'),
(6, 'Sophie', 'Mramori', 24680, 'sophie.mueller@example.com', '4443332222', 'sophiemueller', '$2y$10$QqmT6ZNCYTu3uCxfQ9gT0uojVKp.LFMIheUfdUpyTkl'),
(12, 'Laura', 'Schwarz', 22224, 'laura.schwarz@example.com', '9876543212', 'lauraschwarz', '$2y$10$Cbe5Zm1oz79m2RJTrbU5De6Sl53xydn6jRH5Td6GpxQ'),
(16, 'Emilia', 'Krause', 66668, 'emilia.krause@example.com', '4443332223', 'emiliakrause', '$2y$10$D/BXeeQq1Yzf10g7SzplTu/f/7AOVHKPqUaiokPr7dx'),
(18, 'Mia', 'Bergmann', 88880, 'mia.bergmann@example.com', '3332221112', 'miabergmann', '$2y$10$zaI7GbewEo02l8sL1mM2KuDv.oFCWo5SGzA63OcXalZ'),
(19, 'Julian', 'Vogel', 99991, 'julian.vogel@example.com', '6667778889', 'julianvogel', '$2y$10$dFu5n8O419J37TeSWEcUI.K.Pghe5f//sMV87kzYWoa'),
(21, 'Felix', 'Schmitt', 121314, 'felix.schmitt@example.com', '5554443333', 'felixschmitt', '$2y$10$UmIPN5Zb/Fy.2TUS/gxVne4CZOk21mbiLH1KJ0dwQbM'),
(22, 'Hannah', 'Lange', 141516, 'hannah.lange@example.com', '2223334444', 'hannahlange', '$2y$10$zoKC78CXc7WJIjLekmd8qO3tajQXzgw5/qRQIxnC772'),
(23, 'Simon', 'König', 161718, 'simon.koenig@example.com', '8887776666', 'simonkoenig', '$2y$10$BqPGTi4qVqtf5dd9E/56suwqZaS7vNHrFgclvVLPqZh'),
(24, 'Mila', 'Herrmann', 181920, 'mila.herrmann@example.com', '4445556666', 'milaherrmann', '$2y$10$a.C4bP16xe9AwETiPtrae.O/5iQlObjfXD8hOJ/oBw2'),
(25, 'Tim', 'Keller', 202122, 'tim.keller@example.com', '9998887776', 'timkeller', '$2y$10$9k0jJ.MBzL1a/8Frdp.7GeWqdE1qBSY/WxhmJifHnLT'),
(26, 'Lina', 'Schuster', 222324, 'lina.schuster@example.com', '5556667777', 'linaschuster', '$2y$10$3S6YiKbiYYwVejnVw52JoeYbq9x6AFdGBUvT4a1YKU3'),
(27, 'Oscar', 'Bayer', 242526, 'oscar.bayer@example.com', '2223334445', 'oscarbayer', '$2y$10$jrSNny1wFe4spOUUfHa8ROXijh/lKtF9t9ZfJ3M0/QE'),
(28, 'Elena', 'Bach', 262728, 'elena.bach@example.com', '7778889999', 'elenabach', '$2y$10$8MQQwEOjokGLRdLE6gxR1.RjvuMBZhoE2kNrBRWyctj'),
(29, 'David', 'Richter', 282930, 'david.richter@example.com', '6665554444', 'davidrichter', '$2y$10$KKjVBV0IoHK69X5xyZ8x3u.ODfNqnm2I62hpNFMBwSf'),
(30, 'Clara', 'Schreiber', 313233, 'clara.schreiber@example.com', '3334445555', 'claraschreiber', '$2y$10$cd48JQ6DVqrPpQOmQFpjZ.evRTelFPfPPJIL8HY17q9'),
(31, 'Luca', 'Krüger', 333435, 'luca.krueger@example.com', '1112223333', 'lucakrueger', '$2y$10$NJkv4U5YXYKPUvPy24NmvOaSh84aJipspkYT9IgarjH'),
(32, 'Leah', 'Brandt', 353637, 'leah.brandt@example.com', '9991112222', 'leahbrandt', '$2y$10$Km1sJZygCYsvCvffThVCq.Y9m4oA71seWOuwn6yF8Zm'),
(33, 'Jonas', 'Kaiser', 373839, 'jonas.kaiser@example.com', '8882223333', 'jonaskaiser', '$2y$10$g5qarS1QZjn.Ri9eHpyAWOQeGIVVMbrD9QaRYP7pwEN'),
(34, 'Isabella', 'Reuter', 394041, 'isabella.reuter@example.com', '7773334444', 'isabellareuter', '$2y$10$JLDsknR35C4kGbFIUbHnYO7O9MDKlRN35YFIxla2K2A'),
(35, 'Finnja', 'Simon', 414243, 'finnja.simon@example.com', '5554443334', 'finnjasimon', '$2y$10$YI65GraJ.fURYZeJFROVKuTMzPYJy6izGXUakOIa96w'),
(36, 'Marlon', 'Neumann', 434445, 'marlon.neumann@example.com', '1112223334', 'marlonneumann', '$2y$10$A6V6Wj8DYT/ET3p1sAZLteeJNPw03knQDNo2dr4xEq.'),
(37, 'Nora', 'Schröder', 454647, 'nora.schroeder@example.com', '9991112223', 'noraschroeder', '$2y$10$LycHIfhwFUEMtEmD48myn.HLv.ce8QFZBZRL4Ot24HZ'),
(38, 'Elias', 'Maurer', 464849, 'elias.maurer@example.com', '8882223334', 'eliasmaurer', '$2y$10$rwJ/aSj2ps1vzUJwqUuWTO2t8EHbsIz0ya1QJTeY39o'),
(39, 'Sophie', 'Engel', 495051, 'sophie.engel@example.com', '7773334445', 'sophieengel', '$2y$10$AC37O1L.iJoaVnrnC8351OhRFVv3wDcfEIDv2pHDoQ4'),
(41, 'Johanna', 'Baum', 535455, 'johanna.baum@example.com', '1112223335', 'johannabaum', '$2y$10$rcpFSC/XLeGwu8oVf.uA6O/ATYqr7y.HzeS4J3LydQy'),
(42, 'Ben', 'Hahn', 555657, 'ben.hahn@example.com', '9991112224', 'benhahn', '$2y$10$rXYVHNwaxlYLUOBPURjxF.ZnXC43pB3H8etFm.TCUvh'),
(43, 'Mara', 'Kuhn', 575859, 'mara.kuhn@example.com', '8882223335', 'marakuhn', '$2y$10$EaVMpkimz7VtRQ7lr9q7ougocEPwja82F7/NXb6rpih'),
(44, 'Tom', 'Fuchs', 596061, 'tom.fuchs@example.com', '7773334446', 'tomfuchs', '$2y$10$e5RG3876V/xHzrVN9BtkNu4y6ENrLwmcpTNrapbXR1o'),
(45, 'Leni', 'Böhme', 616263, 'leni.boehme@example.com', '5554443336', 'leniboehme', '$2y$10$sWsnoUZsmdtGQCa/cEsqnepUnB8tt7uJ4erIktqr1g9'),
(46, 'Maxim', 'Kaiser', 636465, 'maxim.kaiser@example.com', '1112223336', 'maximkaiser', '$2y$10$Q2n70nzHx.ThUCnZsktgtezsktTQWmeC1OjFiARDPDw'),
(47, 'Lea', 'Lorenz', 656667, 'lea.lorenz@example.com', '9991112225', 'lealorenz', '$2y$10$6ocTdTSRdlR2nvB54JY6luxAMb9n9ItRbTA.FLLyf.v'),
(48, 'Goku', 'Goku', 125568, 'goku@vegeta.com', '+49152200220020', 'Goku.ss', '$2y$10$.PnyG.IOwsTrzKd.F4M.QOIwrxFYAV4N/tALyveJ.6J'),
(49, 'Florian', 'Rohde', 23321, 'f.rohde@nolis.de', '0123456789', 'Florian.R', '$2y$10$HTuiwaAZkW2BPv6GnqZAR.FxXMWJLQ0yZOQH547Z991'),
(51, 'Alban', 'Mramori', 882350, 'Alban.M@gmail.com', '015202024358', 'baninationsssss', '$2y$10$XO4A72Z3Ej2tQ8IACIgkKuW3q78/RK8uB0K93qRCoY6');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`) VALUES
(1, 'admin', 'adminpass', 'Administrator'),
(2, 'user', 'userpass', 'User');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `benutzeraccount`
--
ALTER TABLE `benutzeraccount`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `benutzeraccount`
--
ALTER TABLE `benutzeraccount`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
