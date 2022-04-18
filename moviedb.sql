-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 18, 2022 at 11:23 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `moviedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `casts`
--

CREATE TABLE `casts` (
  `cast_id` int(11) NOT NULL,
  `fisrt_name` varchar(20) DEFAULT NULL,
  `last_name` varchar(20) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `movieid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `casts`
--

INSERT INTO `casts` (`cast_id`, `fisrt_name`, `last_name`, `age`, `movieid`) VALUES
(1, 'Roger Craig', 'Smith', 45, 3),
(2, 'Hugh', 'Jackman', 52, 4),
(4, 'Ryan', 'Gosling', 40, 5),
(6, 'Emma', 'Stone', 32, 5);

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `movie_id` int(11) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `category` varchar(20) DEFAULT NULL CHECK (`category` = 'Action' or `category` = 'Drama' or `category` = 'Animation' or `category` = 'Super hero'),
  `IMDB_RATING` float(3,2) DEFAULT NULL,
  `BO_earns_m$` float(6,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`movie_id`, `title`, `category`, `IMDB_RATING`, `BO_earns_m$`) VALUES
(3, 'ASSASSIN\'S CREED: EMBERS', 'Animation ', 7.60, 240.00),
(4, 'Real Steel ', 'Action', 7.00, 299.30),
(5, 'La La Land', 'Drama', 8.00, 448.90),
(6, 'Aquaman', 'Super Hero', 6.90, 1148.00),
(7, 'Game of Thrones', 'Drama', 9.20, 228.00),
(8, 'Breaking Bad', 'Drama', 9.40, 80.00);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `casts`
--
ALTER TABLE `casts`
  ADD PRIMARY KEY (`cast_id`),
  ADD KEY `fk` (`movieid`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`movie_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `movie_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `casts`
--
ALTER TABLE `casts`
  ADD CONSTRAINT `fk` FOREIGN KEY (`movieid`) REFERENCES `movies` (`movie_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
