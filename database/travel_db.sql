-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 13, 2021 at 09:30 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `travel_db`
--
CREATE DATABASE IF NOT EXISTS `travel_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `travel_db`;

-- --------------------------------------------------------

--
-- Table structure for table `agency_users_tb`
--

DROP TABLE IF EXISTS `agency_users_tb`;
CREATE TABLE `agency_users_tb` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `user_age` varchar(100) NOT NULL,
  `user_sex` varchar(100) NOT NULL,
  `user_location` varchar(100) NOT NULL,
  `user_contact` varchar(10) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_trip_date` varchar(100) NOT NULL,
  `user_trip_plan` varchar(100) NOT NULL,
  `user_trip_cost` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `agency_users_tb`
--

INSERT INTO `agency_users_tb` (`user_id`, `user_name`, `user_age`, `user_sex`, `user_location`, `user_contact`, `user_email`, `user_trip_date`, `user_trip_plan`, `user_trip_cost`) VALUES
(1, 'Jinmiran', '29', 'Female', 'House No: 72, Nil Mani Mullik Lane, Kolkata, West Bengal', '8342392761', 'Jinmiran25@gmail.com', '02/06/2021', 'Indore to Coimbatore', '4173'),
(2, 'Rohan Singh', '48', 'Male', '45/90 Karol Bagh, New Delhi', '9022578194', 'rohanpreet@gmail.com', '17/05/2021', 'Patna to Chandigarh', '4520');

-- --------------------------------------------------------

--
-- Table structure for table `trips_tb`
--

DROP TABLE IF EXISTS `trips_tb`;
CREATE TABLE `trips_tb` (
  `trip_id` int(11) NOT NULL,
  `trip_name` varchar(100) NOT NULL DEFAULT '0',
  `trip_cost` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `trips_tb`
--

INSERT INTO `trips_tb` (`trip_id`, `trip_name`, `trip_cost`) VALUES
(1, 'Indore to Coimbatore', 4173),
(2, 'Kolkata to Chennai', 5892),
(3, 'Patna to Chandigarh', 4520),
(4, 'Guwahati to Vadodara', 6894);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agency_users_tb`
--
ALTER TABLE `agency_users_tb`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `trips_tb`
--
ALTER TABLE `trips_tb`
  ADD PRIMARY KEY (`trip_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agency_users_tb`
--
ALTER TABLE `agency_users_tb`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `trips_tb`
--
ALTER TABLE `trips_tb`
  MODIFY `trip_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
