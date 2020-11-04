-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 04, 2020 at 01:24 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `airline`
--

-- --------------------------------------------------------

--
-- Table structure for table `airport`
--

CREATE TABLE `airport` (
  `airport_id` int(11) NOT NULL,
  `identifier` varchar(55) NOT NULL,
  `airport_name` varchar(100) DEFAULT NULL,
  `city_name` varchar(100) DEFAULT NULL,
  `country_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `airport`
--

INSERT INTO `airport` (`airport_id`, `identifier`, `airport_name`, `city_name`, `country_name`) VALUES
(1, 'ATL/KATL', 'Hartsfield–Jackson Atlanta International Airport', 'Atlanta, Georgia', 'United States'),
(2, 'PEK/ZBAA', 'Beijing Capital International Airport', 'Chaoyang-Shunyi, Beijing', 'China'),
(3, 'LAX/KLAX', 'Los Angeles International Airport', 'Los Angeles, California', 'United States'),
(4, 'DXB/OMDB', 'Dubai International Airport', 'Garhoud, Dubai', 'United Arab Emirates'),
(5, 'HND/RJTT', 'Tokyo Haneda Airport', 'Ōta, Tokyo', 'Japan'),
(6, 'ORD/KORD', 'O-Hare International Airport', 'Chicago, Illinois', 'United States'),
(7, 'LHR/EGLL', 'London Heathrow Airport', 'Hillingdon, London', 'United Kingdom'),
(8, 'PVG/ZSPD', 'Shanghai Pudong International Airport', 'Pudong, Shanghai', 'China'),
(9, 'CDG/LFPG', 'Charles de Gaulle Airport', 'Roissy-en-France, Île-de-France (Paris)', 'France'),
(10, 'DFW/KDFW', 'Dallas/Fort Worth International Airport', 'Dallas-Fort Worth, Texas', 'United States'),
(11, 'CAN/ZGGG', 'Guangzhou Baiyun International Airport', 'Baiyun-Huadu, Guangzhou, Guangdong', 'China'),
(12, 'AMS/EHAM', 'Amsterdam Airport Schiphol', 'Haarlemmermeer, North Holland', 'Netherlands'),
(13, 'HKG/VHHH', 'Hong Kong International Airport', 'Chek Lap Kok, Islands, New Territories', 'Hong Kong SAR, China');

-- --------------------------------------------------------

--
-- Table structure for table `flight`
--

CREATE TABLE `flight` (
  `flight_id` int(11) NOT NULL,
  `flight_date` date NOT NULL,
  `fk_origin_airport_id` int(11) NOT NULL,
  `fk_destination_airport_id` int(11) NOT NULL,
  `fk_plane_id` int(11) NOT NULL,
  `fk_pilot_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `flight`
--

INSERT INTO `flight` (`flight_id`, `flight_date`, `fk_origin_airport_id`, `fk_destination_airport_id`, `fk_plane_id`, `fk_pilot_id`) VALUES
(1, '2020-11-24', 1, 2, 3, 4),
(2, '2020-11-25', 2, 1, 1, 2),
(3, '2020-11-26', 3, 2, 2, 3),
(4, '2020-11-27', 4, 3, 3, 5),
(5, '2020-11-28', 4, 3, 3, 5),
(6, '2020-11-29', 10, 9, 4, 7),
(7, '2020-11-30', 12, 5, 5, 5),
(8, '2020-12-01', 7, 10, 6, 6),
(9, '2020-12-02', 8, 3, 3, 5),
(10, '2020-12-03', 9, 5, 4, 1),
(11, '2020-12-04', 6, 11, 5, 2),
(12, '2020-12-05', 12, 12, 6, 3),
(13, '2020-12-06', 11, 11, 2, 4),
(14, '2020-12-07', 5, 10, 3, 5),
(15, '2020-12-08', 12, 9, 4, 6),
(16, '2020-12-09', 11, 8, 5, 7),
(17, '2020-12-10', 9, 7, 6, 8),
(18, '2020-12-11', 8, 6, 1, 9),
(19, '2020-12-12', 7, 5, 2, 10),
(20, '2020-12-13', 6, 4, 3, 11);

-- --------------------------------------------------------

--
-- Table structure for table `pilot`
--

CREATE TABLE `pilot` (
  `pilot_id` int(11) NOT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `middle_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) NOT NULL,
  `rank` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pilot`
--

INSERT INTO `pilot` (`pilot_id`, `first_name`, `middle_name`, `last_name`, `rank`) VALUES
(1, 'Danny', 'Detlef', 'Röhl', 'Captain'),
(2, 'Toni', 'Detlef', 'Tapalović', 'First Officer'),
(3, 'Toni', 'Detlef', 'Tapalović', 'First Officer'),
(4, 'Hermann', 'Detlef', 'Gerland', 'Senior First Officer'),
(5, 'Tanguy', 'Detlef', 'Nianzou', 'First Officer'),
(6, 'Jérôme', 'Detlef', 'Boateng', 'Captain'),
(7, 'Kingsley', 'Detlef', 'Coman', 'Captain'),
(8, 'Leroy', 'Detlef', 'Sané', 'First Officer'),
(9, 'Alphonso', 'Detlef', 'Davies', 'Training Captain'),
(10, 'Leon', 'Detlef', 'Goretzka', 'Captain'),
(11, 'Benjamin', 'Detlef', 'Pavard', 'First Officer'),
(12, 'Niklas', 'Detlef', 'Süle', 'Captain'),
(13, 'Hansi', 'Detlef', 'Flick', 'Captain'),
(14, 'Miroslav', 'Detlef', 'Klose', 'First Officer');

-- --------------------------------------------------------

--
-- Table structure for table `plane`
--

CREATE TABLE `plane` (
  `plane_id` int(11) NOT NULL,
  `registration_number` varchar(55) NOT NULL,
  `manufacturer` varchar(55) DEFAULT NULL,
  `model` varchar(55) DEFAULT NULL,
  `maximum_capacity` int(11) DEFAULT NULL,
  `flight_range` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `plane`
--

INSERT INTO `plane` (`plane_id`, `registration_number`, `manufacturer`, `model`, `maximum_capacity`, `flight_range`) VALUES
(1, 'N1012', 'Airbus Corporate Jets', 'A330', 440, 11750),
(2, 'N1007', 'Boeing Business Jets', '767', 375, 7130),
(3, 'N1023', 'Embraer-Empresa Brasileira DR AeronÁutica', 'Lineage 1000', 19, 8519),
(4, 'N1027', 'Bombardier Aerospace', 'CRJ1000', 104, 2830),
(5, 'N1056', 'Airbus Corporate Jets', 'A340', 300, 13500),
(6, 'N1086', 'Boeing Business Jets', '777', 550, 17395),
(7, 'N1037', 'Embraer-Empresa Brasileira DR AeronÁutica', 'Lineage 1000', 19, 8519),
(8, 'N1098', 'Bombardier Aerospace', 'CRJ900', 104, 2830);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `airport`
--
ALTER TABLE `airport`
  ADD PRIMARY KEY (`airport_id`);

--
-- Indexes for table `flight`
--
ALTER TABLE `flight`
  ADD PRIMARY KEY (`flight_id`),
  ADD KEY `fk_origin_airport_id` (`fk_origin_airport_id`),
  ADD KEY `fk_destination_airport_id` (`fk_destination_airport_id`),
  ADD KEY `fk_plane_id` (`fk_plane_id`),
  ADD KEY `fk_pilot_id` (`fk_pilot_id`);

--
-- Indexes for table `pilot`
--
ALTER TABLE `pilot`
  ADD PRIMARY KEY (`pilot_id`);

--
-- Indexes for table `plane`
--
ALTER TABLE `plane`
  ADD PRIMARY KEY (`plane_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `airport`
--
ALTER TABLE `airport`
  MODIFY `airport_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `flight`
--
ALTER TABLE `flight`
  MODIFY `flight_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `pilot`
--
ALTER TABLE `pilot`
  MODIFY `pilot_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `plane`
--
ALTER TABLE `plane`
  MODIFY `plane_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `flight`
--
ALTER TABLE `flight`
  ADD CONSTRAINT `flight_ibfk_1` FOREIGN KEY (`fk_origin_airport_id`) REFERENCES `airport` (`airport_id`),
  ADD CONSTRAINT `flight_ibfk_2` FOREIGN KEY (`fk_destination_airport_id`) REFERENCES `airport` (`airport_id`),
  ADD CONSTRAINT `flight_ibfk_3` FOREIGN KEY (`fk_plane_id`) REFERENCES `plane` (`plane_id`),
  ADD CONSTRAINT `flight_ibfk_4` FOREIGN KEY (`fk_pilot_id`) REFERENCES `pilot` (`pilot_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
