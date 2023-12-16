-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 16, 2023 at 04:12 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `farm.exe`
--

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `ReviewID` int(11) NOT NULL,
  `user` varchar(255) DEFAULT NULL,
  `place` varchar(255) DEFAULT NULL,
  `point` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`ReviewID`, `user`, `place`, `point`, `description`) VALUES
(1, 'test1', 'test2', 1, 'test3'),
(2, 'test4', 'test5', 2, 'test6'),
(3, 'test7', 'test8', 3, 'test9'),
(4, 'ddd', 'paris', 1, 'bad'),
(5, 'A', 'B', 10, 'D'),
(6, 'donn', 'chumphon', 3, 'natural'),
(7, 'stalin', 'cuba', 5, 'commy'),
(8, 'stalin', 'cuba', 5, 'commy'),
(9, 'loki', 'P06002196', 5, 'southside'),
(10, 'cj', 'P03013635', 4, 'ok');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userId` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userId`, `username`, `password`) VALUES
(1, 'donnygalaxy', '$2a$10$zZ55yh0td6xJtRsQKvCOy.CLc9uJyq3BM6PEztwq6gd0KY0jq78Cy'),
(2, 'donnygalax', '$2a$10$BaHY86Jnbj39Pu2cq0M1xOBIPTwCabnqjmqFcm98t4LxD41ZA.bIS'),
(3, 'carljohnson', '$2a$10$kY4rn1kZmPukkaGHS.fEV.CGUNbIOlabbmMv4T6cZ2BbpWpKII23i'),
(4, 'johnwidth', '$2a$10$lzwiVWTnxO1EcDuhA8TMfuCmpTJ4kd7VeivFlJp3ceaImcQN2RYiS'),
(5, 'dekchai', '$2a$10$/NTBBMTlTpnWWTqIIY3r.e2P3McD41DTNpZwWgW/P33ZtK8j4E86e');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`ReviewID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `ReviewID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
