-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 15, 2025 at 10:10 AM
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
-- Database: `membershiphp`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `address_id` int(11) NOT NULL,
  `City` varchar(255) NOT NULL,
  `country` varchar(50) NOT NULL,
  `postcode` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`address_id`, `City`, `country`, `postcode`) VALUES
(1, '123 Demo', 'DCountry', '4545'),
(2, '77 asd', 'aaaaa', '8888'),
(3, '77 address', 'testCounty', '1010'),
(4, '11 test', 'TestCountry', '1111'),
(5, '8 demoo', 'Demoo', '7777'),
(6, '12 demo', 'qweee', '1111'),
(7, '77 demo', 'demooo', '1111'),
(8, '8 test', 'testing', '1111'),
(9, '77 demo', 'Democountry', '7777');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `members_id` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `address_id` int(11) DEFAULT NULL,
  `fullname` varchar(255) NOT NULL,
  `dob` date NOT NULL,
  `gender` enum('Male','Female','Other') NOT NULL,
  `contact_number` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `occupation` varchar(255) NOT NULL,
  `membership_typeID` int(11) NOT NULL,
  `membership_number` varchar(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `photo` varchar(255) NOT NULL,
  `expiry_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`members_id`, `userID`, `address_id`, `fullname`, `dob`, `gender`, `contact_number`, `email`, `occupation`, `membership_typeID`, `membership_number`, `created_at`, `photo`, `expiry_date`) VALUES
(1, 1, 1, 'Demo NameUPD', '1995-11-10', 'Male', '4444444444', 'demo@mail.com', 'Test', 2, 'CA-923020', '2024-02-02 04:10:30', 'default.jpg', '2024-05-04'),
(4, 1, 2, 'Qwerty', '1990-12-12', 'Male', '1010101012', 'qwerty@mail.com', 'addddd', 2, 'CA-610243', '2024-02-04 03:40:16', 'default.jpg', '2025-04-15'),
(6, 1, 4, 'Member A', '1990-12-12', 'Female', '1111111100', 'membera@test.com', 'Demo', 10, 'CA-159695', '2024-02-05 01:12:53', 'default.jpg', '2025-09-15'),
(7, 1, 5, 'Member B', '1985-11-02', 'Male', '7000000001', 'memberb@mail.com', 'demo', 7, 'CA-992342', '2024-02-05 01:14:52', 'default.jpg', '2025-09-15'),
(9, 1, 6, 'Random Updated', '1989-04-12', 'Female', '1010101010', 'random1989@mail.com', 'wwwwww', 1, 'CA-871386', '2024-02-05 02:55:03', '1707101703_65c04e07c6d1b.png', '2025-04-15'),
(11, 1, 8, 'Member C', '1991-02-22', 'Male', '1111111100', 'c@mem.com', 'test', 2, 'CA-905203', '2024-02-05 05:30:04', '1707111004_65c0725c6b6f9.png', '2024-03-05'),
(12, 1, 9, 'Demo Member', '1990-12-12', 'Male', '7777777770', 'member@demo.com', 'test test', 2, 'CA-053289', '2024-02-05 06:07:10', '1707113230_65c07b0e3641c.jpg', '2025-04-15');

-- --------------------------------------------------------

--
-- Table structure for table `membership_types`
--

CREATE TABLE `membership_types` (
  `membership_typeID` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `membership_types`
--

INSERT INTO `membership_types` (`membership_typeID`, `type`, `amount`) VALUES
(1, 'Basic', 8),
(2, 'Standard', 13),
(3, 'Gold', 19),
(4, 'Silver', 15),
(6, 'Bronze', 12),
(7, 'BB Upd', 6),
(10, 'Premium', 28);

-- --------------------------------------------------------

--
-- Table structure for table `renew`
--

CREATE TABLE `renew` (
  `renew.id` int(11) NOT NULL,
  `members_id` int(11) DEFAULT NULL,
  `total_amount` decimal(10,2) DEFAULT NULL,
  `renew_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `renew`
--

INSERT INTO `renew` (`renew.id`, `members_id`, `total_amount`, `renew_date`) VALUES
(1, 1, 39.00, '2024-02-04'),
(16, 4, 57.00, '2024-02-04'),
(19, 9, 228.00, '2024-02-05'),
(21, 11, 13.00, '2024-02-05'),
(23, 12, 336.00, '2024-02-05'),
(24, 6, 90.00, '2024-02-05'),
(25, 12, 13.00, '2025-03-15'),
(26, 6, 168.00, '2025-03-15'),
(27, 4, 13.00, '2025-03-15'),
(28, 4, 28.00, '2025-03-15'),
(29, 4, 13.00, '2025-03-15'),
(30, 9, 8.00, '2025-03-15');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `settingsID` int(11) NOT NULL,
  `system_name` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `currency` varchar(50) NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`settingsID`, `system_name`, `logo`, `currency`, `user_id`) VALUES
(1, 'Membership System', 'uploads/mlg.png', '$', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `usersID` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `registration_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`usersID`, `email`, `password`, `registration_date`, `updated_date`) VALUES
(1, 'admin@mail.com', 'f2d0ff370380124029c2b807a924156c', '2024-02-02 01:34:26', '2024-02-05 08:49:01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`address_id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`members_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `membership_type` (`membership_typeID`),
  ADD KEY `idx_members_email` (`email`),
  ADD KEY `fk_members_address` (`address_id`),
  ADD KEY `fk_mebers_users` (`userID`);

--
-- Indexes for table `membership_types`
--
ALTER TABLE `membership_types`
  ADD PRIMARY KEY (`membership_typeID`);

--
-- Indexes for table `renew`
--
ALTER TABLE `renew`
  ADD PRIMARY KEY (`renew.id`),
  ADD KEY `member_id` (`members_id`),
  ADD KEY `idx_renew_member_id` (`members_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`settingsID`),
  ADD KEY `fk_settings_user` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`usersID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `members_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `membership_types`
--
ALTER TABLE `membership_types`
  MODIFY `membership_typeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `renew`
--
ALTER TABLE `renew`
  MODIFY `renew.id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `settingsID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `usersID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `members`
--
ALTER TABLE `members`
  ADD CONSTRAINT `fk_mebers_users` FOREIGN KEY (`userID`) REFERENCES `users` (`usersID`),
  ADD CONSTRAINT `fk_members_address` FOREIGN KEY (`address_id`) REFERENCES `addresses` (`address_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_members_membership_type` FOREIGN KEY (`membership_typeID`) REFERENCES `membership_types` (`membership_typeID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `members_ibfk_1` FOREIGN KEY (`membership_typeID`) REFERENCES `membership_types` (`membership_typeID`);

--
-- Constraints for table `renew`
--
ALTER TABLE `renew`
  ADD CONSTRAINT `fk_renew_member` FOREIGN KEY (`members_id`) REFERENCES `members` (`members_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `renew_ibfk_1` FOREIGN KEY (`members_id`) REFERENCES `members` (`members_id`);

--
-- Constraints for table `settings`
--
ALTER TABLE `settings`
  ADD CONSTRAINT `fk_settings_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`usersID`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
