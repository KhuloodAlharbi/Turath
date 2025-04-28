-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 24 أبريل 2025 الساعة 22:16
-- إصدار الخادم: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `turath-project`
--

-- --------------------------------------------------------

--
-- بنية الجدول `new_reservations`
--

CREATE TABLE `new_reservations` (
  `id` int(11) NOT NULL,
  `trip` varchar(255) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `transaction` varchar(10) NOT NULL,
  `notes` text DEFAULT NULL,
  `reservation_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `new_reservations`
--

INSERT INTO `new_reservations` (`id`, `trip`, `full_name`, `email`, `phone`, `transaction`, `notes`, `reservation_date`) VALUES
(1, 'Riyadh', 'khgg', 'JHffVGJ@gmail.com', '+966567890987', '8888', 'jkbjki', '2025-04-24 19:03:26'),
(2, 'Jeddah', 'KHUL00D ALHARBI', 'khluodhena@gmail.com', '+966567890987', '8888', 'nkjoo', '2025-04-24 19:05:14'),
(3, 'Abha', 'KHULUD ALHARBI', 'khluodhena@gmail.com', '+966567890987', '8888', 'jjghvcfxdz', '2025-04-24 19:11:50'),
(4, 'Abha', 'KHULUD ALHARBI', 'khluodhena@gmail.com', '+966567890987', '8888', 'jjghvcfxdz', '2025-04-24 19:11:57'),
(5, 'Jeddah', 'khgg', 'JHVGJ@gmail.com', '+966567890987', '8888', 'vvvvvvvvvv', '2025-04-24 19:17:02'),
(6, 'Jeddah', 'khgg', 'JHVGJ@gmail.com', '+966567890987', '8888', 'vvvvvvvvvv', '2025-04-24 19:17:08'),
(7, 'Jeddah', 'khgg', 'JHVGJ@gmail.com', '+966567890987', '8888', 'vvvvvvvvvv', '2025-04-24 19:21:44'),
(8, 'Jeddah', 'khgg', 'JHVGJ@gmail.com', '+966567890987', '8888', 'vvvvvvvvvv', '2025-04-24 19:21:48'),
(9, 'Jeddah', 'khgg', 'JHVGJ@gmail.com', '+966567890987', '8888', 'vvvvvvvvvv', '2025-04-24 19:23:06'),
(10, 'Jeddah', 'khgg', 'JHVGJ@gmail.com', '+966567890987', '8888', 'vvvvvvvvvv', '2025-04-24 19:23:42'),
(11, 'Jeddah', 'khgg', 'JHVGJ@gmail.com', '+966567890987', '8888', 'vvvvvvvvvv', '2025-04-24 19:23:53'),
(12, 'Jeddah', 'khgg', 'JHVGJ@gmail.com', '+966567890987', '8888', 'vvvvvvvvvv', '2025-04-24 19:24:42'),
(13, 'Jeddah', 'KHUL00D ALHARBI', 'khluodhena@gmail.com', '+966567890987', '8888', 'nkjoo', '2025-04-24 19:32:42'),
(14, 'Jeddah', 'KHUL00D ALHARBI', 'khluodhena@gmail.com', '+966567890987', '8888', 'nkjoo', '2025-04-24 19:33:21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `new_reservations`
--
ALTER TABLE `new_reservations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `new_reservations`
--
ALTER TABLE `new_reservations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
