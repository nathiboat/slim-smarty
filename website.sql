-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 20, 2016 at 06:45 PM
-- Server version: 5.6.25
-- PHP Version: 5.6.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `website`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `name`) VALUES
(1, 'nathiboat', 'nathi'),
(2, 'alex1', 'alex'),
(3, 'bank1', 'bank');

-- --------------------------------------------------------

--
-- Table structure for table `userss`
--

CREATE TABLE IF NOT EXISTS `userss` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userss`
--

INSERT INTO `userss` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'alex', 'alex@mail.com', 'pass', NULL, NULL),
(2, 'admin', 'hahaha@mail.com', '$2y$10$vF5uDOAv9YkPUsKCpF6E0.xweQYakMHUe1BZ6NnRfQqbzCGo51gTG', '2016-04-19 16:54:01', '2016-04-19 16:54:01'),
(3, 'admin', 'sdf@sdf.com', '$2y$10$qxR5manNx1kVG0dKGan9EOTaygML5zS30YM/re9mLF7D/hHljyqce', '2016-04-20 15:44:27', '2016-04-20 15:44:27'),
(4, 'boat boat', 'boat@mail.com', '$2y$10$QrGFsn.pNAWVHAvhHoxCjekYjExS01555VL.dmtuZs55ZP/cV1KW.', '2016-04-20 17:01:36', '2016-04-20 17:01:36'),
(5, 'adad', '123@123.com', '$2y$10$L8yVWgbAFGzTdW0BV3iqv.v4YkVr.V8H9Whl..GKBjxBmLOBLyZN6', '2016-04-21 08:51:22', '2016-04-21 08:51:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userss`
--
ALTER TABLE `userss`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `userss`
--
ALTER TABLE `userss`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
