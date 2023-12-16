-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 16, 2023 at 04:40 PM
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
-- Database: `hardbank`
--

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `transaction_id` int(11) NOT NULL,
  `start_user_id` int(11) NOT NULL,
  `end_user_id` int(11) NOT NULL,
  `amount` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`transaction_id`, `start_user_id`, `end_user_id`, `amount`) VALUES
(1, 2, 1, '100.00'),
(2, 1, 2, '500.00'),
(3, 2, 3, '455.00'),
(4, 3, 1, '300.00'),
(5, 1, 4, '300.00'),
(6, 4, 1, '299.99'),
(7, 5, 1, '0.00'),
(8, 1, 5, '1.00'),
(9, 1, 5, '100.00'),
(10, 1, 5, '0.50'),
(11, 1, 8, '0.49'),
(12, 4, 1, '0.01'),
(13, 1, 4, '89.00'),
(14, 5, 4, '0.49'),
(15, 4, 8, '0.49');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(60) NOT NULL,
  `balance` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `balance`) VALUES
(1, 'carljohnson', '$2a$10$ego.DsmjO1UNoXzP4PYtLe9qmg6wLMHfeOfjYKces9ZGXl1qZEPYa', '109.01'),
(2, 'johnwidth', '$2a$10$gTZvMRacrOPxbXMUvwBcP.yxeCt5AVYMTaBnlU2SnlyyRslMCq5ZS', '45.00'),
(3, 'johndoe', '$2a$10$bCApObFddplzr6RY5zHoneljRSO8/e6/rpkTmD82t1oc0TNss.FYm', '155.00'),
(4, 'imbigsmoke', '$2a$10$wWDyvhrzsHlvgvBnftKCc.WFU4lW27j1.HNTQZ932Y/Y7Mki7iuLW', '89.00'),
(5, 'ryder10', '$2a$10$IADAIcpGNxgtmn8LAF6Sxuor8ar0M.jrIJ1AaM0qbTlukAIdhU6LS', '101.01'),
(8, 'janedoe', '$2a$10$wNJSZoVi349bb1iq4NX21.noP8eJZjlJ/MV/0YHdsN4wKQaiImFFW', '0.98');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`transaction_id`),
  ADD KEY `start_user_id` (`start_user_id`),
  ADD KEY `end_user_id` (`end_user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`start_user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `transactions_ibfk_2` FOREIGN KEY (`end_user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
