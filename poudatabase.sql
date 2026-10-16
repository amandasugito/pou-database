-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 30, 2025 at 06:02 PM
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
-- Database: `poudatabase`
--

-- --------------------------------------------------------

--
-- Table structure for table `gamesession`
--

CREATE TABLE `gamesession` (
  `SessionID` varchar(10) NOT NULL,
  `MiniGameID` varchar(10) DEFAULT NULL,
  `PouID` varchar(10) DEFAULT NULL,
  `Score` int(11) DEFAULT NULL,
  `CoinsEarned` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gamesession`
--

INSERT INTO `gamesession` (`SessionID`, `MiniGameID`, `PouID`, `Score`, `CoinsEarned`) VALUES
('SE001', 'MG001', 'POU001', 100, 10),
('SE002', 'MG001', 'POU001', 100, 10),
('SE003', 'MG002', 'POU002', 200, 20),
('SE004', 'MG003', 'POU003', 150, 15),
('SE005', 'MG003', 'POU003', 150, 15),
('SE006', 'MG004', 'POU004', 180, 18),
('SE007', 'MG005', 'POU005', 220, 22),
('SE008', 'MG006', 'POU006', 130, 13),
('SE009', 'MG007', 'POU007', 170, 17),
('SE010', 'MG007', 'POU007', 170, 17),
('SE011', 'MG008', 'POU008', 160, 16),
('SE012', 'MG009', 'POU009', 190, 19),
('SE013', 'MG010', 'POU010', 140, 14);

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `ItemID` varchar(10) NOT NULL,
  `ItemName` varchar(50) DEFAULT NULL,
  `ItemType` varchar(30) DEFAULT NULL,
  `Price` int(11) DEFAULT NULL,
  `Effect` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`ItemID`, `ItemName`, `ItemType`, `Price`, `Effect`) VALUES
('ITM001', 'Jelly Beans', 'Food', 10, '-10 Health'),
('ITM002', 'Energizer', 'Potion', 20, 'Adds 100% Energy'),
('ITM003', 'Bieber', 'Clothing', 30, '+5 Cleanliness'),
('ITM004', 'Pillows Black', 'Decoration', 40, 'Pillows Black'),
('ITM005', 'Pretzel', 'Food', 15, '-15 Health'),
('ITM006', 'Fat Burner', 'Potion', 25, 'Removes Extra Fat'),
('ITM007', 'Coats Black', 'Clothing', 39, 'Black Coat'),
('ITM008', 'Soaps', 'Decoration', 45, 'Blue Soap'),
('ITM009', 'Salmon Maki', 'Food', 12, '+12 Health'),
('ITM010', 'Max Potion', 'Potion', 39, '100% All Stats');

-- --------------------------------------------------------

--
-- Table structure for table `itempou`
--

CREATE TABLE `itempou` (
  `PouID` varchar(10) NOT NULL,
  `ItemID` varchar(10) NOT NULL,
  `Quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `itempou`
--

INSERT INTO `itempou` (`PouID`, `ItemID`, `Quantity`) VALUES
('POU001', 'ITM001', 1),
('POU001', 'ITM003', 2),
('POU002', 'ITM002', 3),
('POU003', 'ITM003', 4),
('POU003', 'ITM004', 5),
('POU004', 'ITM005', 6),
('POU005', 'ITM006', 7),
('POU006', 'ITM007', 8),
('POU007', 'ITM008', 9),
('POU008', 'ITM008', 10),
('POU009', 'ITM009', 11),
('POU010', 'ITM010', 13);

-- --------------------------------------------------------

--
-- Table structure for table `minigame`
--

CREATE TABLE `minigame` (
  `MiniGameID` varchar(10) NOT NULL,
  `GameName` varchar(50) DEFAULT NULL,
  `Description` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `minigame`
--

INSERT INTO `minigame` (`MiniGameID`, `GameName`, `Description`) VALUES
('MG001', 'Sky Jump', 'Mini game 1 description'),
('MG002', 'Sky Hop', 'Mini game 2 description'),
('MG003', 'Water Hop', 'Mini game 3 description'),
('MG004', 'Jet Pou', 'Mini game 4 description'),
('MG005', 'Food Swap', 'Mini game 5 description'),
('MG006', 'Food Drop', 'Mini game 6 description'),
('MG007', 'Sad Tap', 'Mini game 7 description'),
('MG008', 'Color Match', 'Mini game 8 description'),
('MG009', 'Match Tap', 'Mini game 9 description'),
('MG010', 'Hill Drive', 'Mini game 10 description');

-- --------------------------------------------------------

--
-- Table structure for table `player`
--

CREATE TABLE `player` (
  `PlayerID` varchar(10) NOT NULL,
  `Username` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `player`
--

INSERT INTO `player` (`PlayerID`, `Username`) VALUES
('PL001', 'pouMaster1'),
('PL002', 'gamerX'),
('PL003', 'lightPet'),
('PL004', 'eggLover'),
('PL005', 'crazyPou'),
('PL006', 'nightOwl'),
('PL007', 'funGamer'),
('PL008', 'caramelLatte'),
('PL009', 'urSunshine'),
('PL010', 'pouEnjoyer');

-- --------------------------------------------------------

--
-- Table structure for table `pou`
--

CREATE TABLE `pou` (
  `PouID` varchar(10) NOT NULL,
  `PlayerID` varchar(10) DEFAULT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Color` varchar(20) DEFAULT NULL,
  `Coin` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pou`
--

INSERT INTO `pou` (`PouID`, `PlayerID`, `Name`, `Color`, `Coin`) VALUES
('POU001', 'PL001', 'Pou1', 'Brown', 50),
('POU002', 'PL002', 'Pou2', 'Pink', 29),
('POU003', 'PL003', 'Pou3', 'Blue', 40),
('POU004', 'PL004', 'Pou4', 'Green', 458),
('POU005', 'PL005', 'Pou5', 'Yellow', 310),
('POU006', 'PL006', 'Pou6', 'Red', 599),
('POU007', 'PL007', 'Pou7', 'Orange', 386),
('POU008', 'PL008', 'Pou8', 'Purple', 834),
('POU009', 'PL009', 'Pou9', 'White', 709),
('POU010', 'PL010', 'Pou10', 'Gray', 573);

-- --------------------------------------------------------

--
-- Table structure for table `statuspou`
--

CREATE TABLE `statuspou` (
  `PouID` varchar(10) NOT NULL,
  `Level` int(11) DEFAULT NULL,
  `ExperiencePoint` int(11) DEFAULT NULL,
  `HungerLevel` int(11) DEFAULT NULL,
  `CleanlinessLevel` int(11) DEFAULT NULL,
  `HealthStatus` varchar(20) DEFAULT NULL,
  `EnergyLevel` int(11) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `statuspou`
--

INSERT INTO `statuspou` (`PouID`, `Level`, `ExperiencePoint`, `HungerLevel`, `CleanlinessLevel`, `HealthStatus`, `EnergyLevel`, `Age`) VALUES
('POU001', 5, 500, 20, 80, 'Healthy', 100, 2),
('POU002', 3, 300, 20, 70, 'Healthy', 95, 3),
('POU003', 7, 700, 15, 90, 'Healthy', 85, 1),
('POU004', 2, 200, 25, 80, 'Healthy', 90, 4),
('POU005', 8, 800, 10, 95, 'Healthy', 80, 2),
('POU006', 6, 600, 35, 85, 'Healthy', 75, 5),
('POU007', 4, 400, 40, 75, 'Healthy', 70, 1),
('POU008', 9, 900, 5, 100, 'Healthy', 65, 6),
('POU009', 1, 100, 50, 55, 'Healthy', 60, 1),
('POU010', 10, 1000, 8, 98, 'Healthy', 55, 7);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gamesession`
--
ALTER TABLE `gamesession`
  ADD PRIMARY KEY (`SessionID`),
  ADD KEY `MiniGameID` (`MiniGameID`),
  ADD KEY `PouID` (`PouID`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`ItemID`);

--
-- Indexes for table `itempou`
--
ALTER TABLE `itempou`
  ADD PRIMARY KEY (`PouID`,`ItemID`),
  ADD KEY `ItemID` (`ItemID`);

--
-- Indexes for table `minigame`
--
ALTER TABLE `minigame`
  ADD PRIMARY KEY (`MiniGameID`);

--
-- Indexes for table `player`
--
ALTER TABLE `player`
  ADD PRIMARY KEY (`PlayerID`);

--
-- Indexes for table `pou`
--
ALTER TABLE `pou`
  ADD PRIMARY KEY (`PouID`),
  ADD KEY `PlayerID` (`PlayerID`);

--
-- Indexes for table `statuspou`
--
ALTER TABLE `statuspou`
  ADD PRIMARY KEY (`PouID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `gamesession`
--
ALTER TABLE `gamesession`
  ADD CONSTRAINT `gamesession_ibfk_1` FOREIGN KEY (`MiniGameID`) REFERENCES `minigame` (`MiniGameID`),
  ADD CONSTRAINT `gamesession_ibfk_2` FOREIGN KEY (`PouID`) REFERENCES `pou` (`PouID`);

--
-- Constraints for table `itempou`
--
ALTER TABLE `itempou`
  ADD CONSTRAINT `itempou_ibfk_1` FOREIGN KEY (`PouID`) REFERENCES `pou` (`PouID`),
  ADD CONSTRAINT `itempou_ibfk_2` FOREIGN KEY (`ItemID`) REFERENCES `item` (`ItemID`);

--
-- Constraints for table `pou`
--
ALTER TABLE `pou`
  ADD CONSTRAINT `pou_ibfk_1` FOREIGN KEY (`PlayerID`) REFERENCES `player` (`PlayerID`);

--
-- Constraints for table `statuspou`
--
ALTER TABLE `statuspou`
  ADD CONSTRAINT `statuspou_ibfk_1` FOREIGN KEY (`PouID`) REFERENCES `pou` (`PouID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
