-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql208.byethost16.com
-- Generation Time: Jan 14, 2024 at 04:04 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `b16_35768956_admission`
--

-- --------------------------------------------------------

--
-- Table structure for table `student_data`
--

CREATE TABLE `student_data` (
  `id` int(10) NOT NULL,
  `u_card` varchar(12) NOT NULL,
  `u_f_name` text NOT NULL,
  `u_l_name` text NOT NULL,
  `u_father` text NOT NULL,
  `u_nid` varchar(12) NOT NULL,
  `u_birthday` text NOT NULL,
  `u_gender` varchar(6) NOT NULL,
  `u_email` text NOT NULL,
  `u_phone` varchar(10) NOT NULL,
  `u_division` varchar(12) NOT NULL,
  `u_dist` text NOT NULL,
  `u_village` text NOT NULL,
  `u_police` text NOT NULL,
  `u_pincode` text NOT NULL,
  `file` longblob NOT NULL,
  `u_mother` varchar(30) NOT NULL,
  `u_details` text NOT NULL,
  `staff_id` varchar(12) NOT NULL,
  `image` varchar(150) NOT NULL,
  `uploaded` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_data`
--

INSERT INTO `student_data` (`id`, `u_card`, `u_f_name`, `u_l_name`, `u_father`, `u_nid`, `u_birthday`, `u_gender`, `u_email`, `u_phone`, `u_division`, `u_dist`, `u_village`, `u_police`, `u_pincode`, `file`, `u_mother`, `u_details`, `staff_id`, `image`, `uploaded`) VALUES
(125, '20221057010', 'Ankan', 'Das', 'Sadhan Das', '205478454521', '2001-11-28', 'Male', 'ankandas.cse22@gmail.com', '0174500993', 'Khulna', 'Bagerhat', '29,Khulna', 'Kahuca', '9311', '', 'Champa Das', 'B.Sc in CSE , NWU', '1011', '1700413223648.jpg', '2024-01-11 14:08:52'),
(127, '20221047010', 'Pranto', 'Mallick', 'Mirtunjoy Mallick', '', '2001-08-15', 'Male', 'mallickpranto1@gmail.com', '0172303366', 'Choose...', '', '20,TB boundary roda', '', '', '', 'Tandra Mallick', 'none', '1012', '', '2024-01-14 02:34:35'),
(128, '20221045010', ' MD', 'Rahim', 'Abcd', '205478454521', '2001-02-07', 'Male', 'mallickpranto1@gmail.com', '0172303366', 'Barishal', 'Bagerhat', '20,TB boundary roda', 'Kahuca', '9311', '', 'EFG', 'N/A', '1013', '', '2024-01-14 02:37:21'),
(129, '20221001010', 'Rana', 'Rahman', 'Raju Rahman', '', '2001-01-21', 'Male', 'mallickpranto1@gmail.com', '0172303366', 'Choose...', '', '20,TB boundary roda', '', '', '', 'Rumi Rahman', '', '1014', '', '2024-01-14 02:39:50'),
(130, '20221002010', 'Rahima', 'Begum', 'Asdf', '', '2002-01-23', 'Choose', 'mallickpranto1@gmail.com', '0172303366', 'Choose...', '', '20,TB boundary roda', '', '', '', 'ghjk', '', '1015', '', '2024-01-14 02:41:29');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created_at`) VALUES
(7, 'ankan', '$2y$10$Cfxpqo7x6FzJxi9ZDAZ4R.mJa5zx4lwoMTTbdZgPQymfRyLfBXlBa', '2024-01-11 19:28:18'),
(8, 'PrantoMallick', '$2y$10$b4c/69NBULA4f8ieQfd3PuM1XweVLDjAwJ0f14Kxzz5zeWvPfWVLS', '2024-01-11 11:03:34');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `student_data`
--
ALTER TABLE `student_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `student_data`
--
ALTER TABLE `student_data`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
