-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 03, 2020 at 03:25 PM
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
-- Database: `homelibrary`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `book_id` int(11) NOT NULL,
  `title` text NOT NULL,
  `author_first_name` text NOT NULL,
  `author_last_name` text NOT NULL,
  `published` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`book_id`, `title`, `author_first_name`, `author_last_name`, `published`) VALUES
(3, 'Foundation', 'Isaac', 'Asimov', 1951),
(4, 'The Stars My Destination', 'Alfred', 'Bester', 1957),
(5, 'Solaris', 'Stanislaw', 'Lem', 1961),
(6, 'Dune', 'Frank', 'Herbert', 1965),
(7, 'The Moon is a Harsh Mistress', 'Robert', 'Heinlein', 1966),
(8, 'Ice', 'Anna', 'Kavan', 1967),
(9, 'The Left Hand of Darkness', 'Ursula K.', 'Le Guin', 1969),
(10, 'A Scanner Darkly', 'Philip K.', 'Dick', 1977),
(11, 'Kindred', 'Octavia E.', 'Butler', 1979),
(12, 'Neuromancer', 'William', 'Gibson', 1984),
(13, 'Consider Phlebas', 'Iain', 'Banks', 1987),
(14, 'Hyperion', 'Dan', 'Simmons ', 1989),
(15, 'Jurassic Park', 'Michael', 'Crichton', 1990),
(16, 'Snow Crash', 'Neal', 'Stephenson', 1992),
(17, 'Metro 2033', 'Dmitry', 'Glukhovsky', 2002),
(18, 'Oryx and Crake', 'Margaret', 'Atwood', 2003),
(19, 'The Three-Body Problem', 'Liu', 'Cixin', 2008),
(20, 'The Martian', 'Andy', 'Weir', 2015),
(21, 'The Heart Goes Last', 'Margaret', 'Atwood', 2015),
(22, 'The Power', 'Naomi', 'Alderman', 2016),
(23, 'Borne', 'Jeff', 'VanderMeer', 2017),
(24, 'Moonrise: The Golden Age of Lunar Adventures', 'Mike', 'Ashley', 2018);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(11) NOT NULL,
  `rating` int(11) DEFAULT NULL,
  `date_started` date DEFAULT NULL,
  `date_finished` date DEFAULT NULL,
  `book_id` int(11) NOT NULL,
  `reader_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `rating`, `date_started`, `date_finished`, `book_id`, `reader_id`) VALUES
(1, 5, '2020-10-01', '2020-10-07', 10, 8),
(2, 4, '2020-10-05', '2020-10-12', 23, 10),
(3, 3, '2020-10-12', '2020-10-18', 13, 1),
(4, 4, '2020-10-18', '2020-10-22', 6, 12),
(5, 4, '2020-10-21', '2020-10-25', 3, 3),
(7, 3, '2020-10-22', '2020-10-27', 14, 5),
(8, 5, '2020-10-29', '2020-11-05', 15, 3),
(9, 3, '2020-11-02', '2020-11-07', 15, 7);

-- --------------------------------------------------------

--
-- Table structure for table `reader`
--

CREATE TABLE `reader` (
  `reader_id` int(11) NOT NULL,
  `first_name` text DEFAULT NULL,
  `last_name` text DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reader`
--

INSERT INTO `reader` (`reader_id`, `first_name`, `last_name`, `gender`, `date_of_birth`) VALUES
(1, 'Danny', 'Röhl', 'm', '2000-01-01'),
(2, 'Toni', 'Tapalović', 'm', '2000-02-01'),
(3, 'Hermann', 'Gerland', 'm', '2000-03-01'),
(4, 'Tanguy', 'Nianzou', 'm', '2000-04-01'),
(5, 'Jérôme', 'Boateng', 'm', '2000-05-01'),
(6, 'Kingsley', 'Coman', 'm', '2000-06-01'),
(7, 'Leroy', 'Sané', 'm', '2000-07-01'),
(8, 'Alphonso', 'Davies', 'm', '2000-08-01'),
(9, 'Leon', 'Goretzka', 'm', '2000-09-01'),
(10, 'Benjamin', 'Pavard', 'm', '2000-10-01'),
(11, 'Niklas', 'Süle', 'm', '2000-11-01'),
(12, 'Hansi', 'Flick', 'm', '2000-12-01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `book_id` (`book_id`),
  ADD KEY `reader_id` (`reader_id`);

--
-- Indexes for table `reader`
--
ALTER TABLE `reader`
  ADD PRIMARY KEY (`reader_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `reader`
--
ALTER TABLE `reader`
  MODIFY `reader_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `book_id` FOREIGN KEY (`book_id`) REFERENCES `books` (`book_id`),
  ADD CONSTRAINT `reader_id` FOREIGN KEY (`reader_id`) REFERENCES `reader` (`reader_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
