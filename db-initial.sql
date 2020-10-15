-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 15, 2020 at 05:40 PM
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
-- Database: `lab2 group-2`
--

-- --------------------------------------------------------

--
-- Table structure for table `imagesamplestable`
--

DROP TABLE IF EXISTS `imagesamplestable`;
CREATE TABLE `imagesamplestable` (
  `ID` bigint(20) NOT NULL,
  `UID` bigint(20) DEFAULT NULL,
  `Image_path` varchar(255) DEFAULT NULL,
  `Name` varchar(255) NOT NULL,
  `Description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `profiletable`
--

DROP TABLE IF EXISTS `profiletable`;
CREATE TABLE `profiletable` (
  `ID` bigint(20) NOT NULL,
  `UID` bigint(20) DEFAULT NULL,
  `Image` blob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tablea`
--

DROP TABLE IF EXISTS `tablea`;
CREATE TABLE `tablea` (
  `ID` bigint(20) NOT NULL,
  `Acronym` varchar(255) NOT NULL,
  `Name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tablea`
--

INSERT INTO `tablea` (`ID`, `Acronym`, `Name`) VALUES
(1, 'CA', 'Becky fuller '),
(2, 'US', 'Veronica'),
(3, 'IN', 'Kiran');

-- --------------------------------------------------------

--
-- Table structure for table `tableb`
--

DROP TABLE IF EXISTS `tableb`;
CREATE TABLE `tableb` (
  `ID` bigint(20) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Description` varchar(255) NOT NULL,
  `TableAId` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tableb`
--

INSERT INTO `tableb` (`ID`, `Name`, `Description`, `TableAId`) VALUES
(1, 'Becky fuller', 'she is a and actor', 1),
(2, 'Veronica', 'She is a detective', 2),
(3, 'Kiran', 'She is Nomad', 3),
(4, 'Beyonce', 'she is a singer', 1),
(5, 'kim clijesters', 'she is a tennis player', 2),
(6, 'alexanderia ', 'she is a actress', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `imagesamplestable`
--
ALTER TABLE `imagesamplestable`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `UID` (`UID`);

--
-- Indexes for table `profiletable`
--
ALTER TABLE `profiletable`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `UID` (`UID`);

--
-- Indexes for table `tablea`
--
ALTER TABLE `tablea`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Acronym` (`Acronym`);

--
-- Indexes for table `tableb`
--
ALTER TABLE `tableb`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `TableAId` (`TableAId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `imagesamplestable`
--
ALTER TABLE `imagesamplestable`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `profiletable`
--
ALTER TABLE `profiletable`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tablea`
--
ALTER TABLE `tablea`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tableb`
--
ALTER TABLE `tableb`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `imagesamplestable`
--
ALTER TABLE `imagesamplestable`
  ADD CONSTRAINT `imagesamplestable_ibfk_1` FOREIGN KEY (`UID`) REFERENCES `tableb` (`ID`);

--
-- Constraints for table `profiletable`
--
ALTER TABLE `profiletable`
  ADD CONSTRAINT `profiletable_ibfk_1` FOREIGN KEY (`UID`) REFERENCES `tableb` (`ID`);

--
-- Constraints for table `tableb`
--
ALTER TABLE `tableb`
  ADD CONSTRAINT `tableb_ibfk_1` FOREIGN KEY (`TableAId`) REFERENCES `tablea` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
