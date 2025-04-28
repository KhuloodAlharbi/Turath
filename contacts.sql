-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 24 أبريل 2025 الساعة 22:13
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
-- بنية الجدول `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `mobile_number` varchar(20) NOT NULL,
  `date_of_birth` date DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `preferred_language` varchar(50) DEFAULT NULL,
  `message` text NOT NULL,
  `contact_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- إرجاع أو استيراد بيانات الجدول `contacts`
--

INSERT INTO `contacts` (`id`, `first_name`, `last_name`, `gender`, `mobile_number`, `date_of_birth`, `email`, `preferred_language`, `message`, `contact_date`) VALUES
(1, 'gdfgd', 'jlksdhl', 'male', '+966578987654', '2025-04-01', 'gfyujfujfu@gmail.com', 'english', 'bkkj', '2025-04-24 17:15:25'),
(2, 'gdfgd', 'jlksdhl', 'male', '+966578987654', '2025-04-23', 'gfyujfujfu@gmail.com', 'english', 'fthfjy', '2025-04-24 17:18:09'),
(3, 'gdfgd', 'jlksdhl', 'male', '+966578987654', '2025-04-01', 'gfyujfujfu@gmail.com', 'english', 'bkkjjbihi', '2025-04-24 17:28:37'),
(4, 'gdfgd', 'jlksdhl', 'male', '+966578987654', '2025-04-01', 'gfyujfujfu@gmail.com', 'english', '	\r\nbkkj', '2025-04-24 17:37:26'),
(5, 'gdfgd', 'jlksdhl', 'male', '+966578987654', '2025-04-01', 'gfyujfujfu@gmail.com', 'english', '	\r\nbkkj', '2025-04-24 17:37:30'),
(6, 'gdfgd', 'jlksdhl', 'male', '+966578987654', '2025-04-01', 'gfyujfujfu@gmail.com', 'english', '	\r\nbkkj', '2025-04-24 17:41:33'),
(7, 'gdfgd', 'jlksdhl', 'male', '+966578987654', '2025-04-01', 'gfyujfujfu@gmail.com', 'english', '	\r\nbkkj', '2025-04-24 17:42:23'),
(8, 'gdfgd', 'jlksdhl', 'male', '+966578987654', '2025-04-01', 'gfyujfujfu@gmail.com', 'english', '	\r\nbkkj', '2025-04-24 17:42:46'),
(9, 'gdfgd', 'jlksdhl', 'male', '+966578987654', '2025-04-05', 'gfyujfujfu@gmail.com', 'arabic', 'gygh', '2025-04-24 17:43:15'),
(10, 'gdfgd', 'jlksdhl', 'male', '+966578987654', '2025-04-05', 'gfyujfujfu@gmail.com', 'arabic', 'gygh', '2025-04-24 17:43:15'),
(11, 'gdfgd', 'jlksdhl', 'male', '+966578987654', '2025-04-05', 'gfyujfujfu@gmail.com', 'arabic', 'gygh', '2025-04-24 17:48:14'),
(12, 'gdfgd', 'jlksdhl', 'male', '+966578987654', '2025-04-05', 'gfyujfujfu@gmail.com', 'arabic', 'gygh', '2025-04-24 17:48:17'),
(13, 'gdfgd', 'jlksdhl', 'male', '+966578987654', '2025-04-05', 'gfyujfujfu@gmail.com', 'arabic', 'gygh', '2025-04-24 17:48:17'),
(14, 'gdfgd', 'jlksdhl', 'male', '+966578987654', '2025-04-05', 'gfyujfujfu@gmail.com', 'arabic', 'gyghk', '2025-04-24 17:48:22'),
(15, 'gdfgd', 'jlksdhl', 'male', '+966578987654', '2025-04-05', 'gfyujfujfu@gmail.com', 'arabic', 'gyghk', '2025-04-24 17:48:22'),
(16, 'gdfgd', 'jlksdhl', 'female', '+966578987654', '2025-04-17', 'gfyujfujfu@gmail.com', 'arabic', 'hjhhj', '2025-04-24 17:51:27'),
(17, 'gdfgd', 'jlksdhl', 'female', '+966578987654', '2025-04-17', 'gfyujfujfu@gmail.com', 'arabic', 'hjhhj', '2025-04-24 17:51:27'),
(18, 'gdfgd', 'jlksdhl', 'male', '+966578987654', '2025-04-05', 'gfyujfujfu@gmail.com', 'arabic', 'gyghk', '2025-04-24 17:56:40'),
(19, 'gdfgd', 'jlksdhl', 'male', '+966578987654', '2025-04-05', 'gfyujfujfu@gmail.com', 'arabic', 'gyghk', '2025-04-24 17:56:43'),
(20, 'gdfgd', 'jlksdhl', 'male', '+966578987654', '2025-04-05', 'gfyujfujfu@gmail.com', 'arabic', 'gyghk', '2025-04-24 17:56:43'),
(21, 'gdfgd', 'jlksdhl', 'male', '+966578987654', '2025-04-05', 'gfyujfujfu@gmail.com', 'arabic', 'gyghk', '2025-04-24 17:57:45'),
(22, 'gdfgd', 'jlksdhl', 'male', '+966578987654', '2025-04-05', 'gfyujfujfu@gmail.com', 'arabic', 'gyghk', '2025-04-24 17:57:48'),
(23, 'gdfgd', 'jlksdhl', 'male', '+966578987654', '2025-04-05', 'gfyujfujfu@gmail.com', 'arabic', 'gyghk', '2025-04-24 17:57:48'),
(24, 'gdfgd', 'jlksdhl', 'male', '+966578987654', '2025-04-05', 'gfyujfujfu@gmail.com', 'arabic', 'gyghk', '2025-04-24 17:59:02'),
(25, 'gdfgd', 'jlksdhl', 'male', '+966578987654', '2025-04-05', 'gfyujfujfu@gmail.com', 'arabic', 'gyghk', '2025-04-24 17:59:02'),
(26, 'gdfgd', 'jlksdhl', 'male', '+966578987654', '2025-04-05', 'gfyujfujfu@gmail.com', 'arabic', 'gyghk', '2025-04-24 17:59:43'),
(27, 'gdfgd', 'jlksdhl', 'male', '+966578987654', '2025-04-05', 'gfyujfujfu@gmail.com', 'arabic', 'gyghk', '2025-04-24 17:59:43'),
(28, 'gdfgd', 'jlksdhl', 'male', '+966578987654', '2025-04-05', 'gfyujfujfu@gmail.com', 'arabic', 'gyghk', '2025-04-24 18:00:59'),
(29, 'gdfgd', 'jlksdhl', 'male', '+966578987654', '2025-04-05', 'gfyujfujfu@gmail.com', 'arabic', 'gyghk', '2025-04-24 18:00:59'),
(30, 'gdfgd', 'jlksdhl', 'male', '+966578987654', '2025-04-05', 'gfyujf', 'arabic', 'gyghk', '2025-04-24 18:01:22'),
(31, 'gdfgd', 'jlksdhl', 'male', '+966578987654', '2025-04-05', 'gfyujfujfu@gmail.com', 'arabic', 'gyghk', '2025-04-24 18:01:51'),
(32, 'gdfgd', 'jlksdhl', 'male', '+966578987654', '2025-04-05', 'gfyujfujfu@gmail.com', 'arabic', 'gyghk', '2025-04-24 18:01:51'),
(33, 'gdfgd', 'jlksdhl', 'male', '+966578987654', '2025-04-05', 'gfyujfujfu@gmail.com', 'arabic', 'gyghk', '2025-04-24 18:10:45'),
(34, 'gdfgd', 'jlksdhl', 'male', '+966578987654', '2025-04-05', 'gfyujfujfu@gmail.com', 'arabic', 'gyghk', '2025-04-24 18:10:49'),
(35, 'gdfgd', 'jlksdhl', 'male', '+966578987654', '2025-04-05', 'gfyujfujfu@gmail.com', 'arabic', 'gyghk', '2025-04-24 18:10:49'),
(36, 'gdfgd', 'jlksdhl', 'male', '+966578987654', '2025-04-27', 'gfyujfujfu@gmail.com', 'english', 'jkhiu', '2025-04-24 18:16:13'),
(37, 'gdfgd', 'jlksdhl', 'male', '+966578987654', '2025-04-27', 'gfyujfujfu@gmail.com', 'english', 'jkhiu', '2025-04-24 18:16:13'),
(38, 'gdfgd', 'jlksdhl', 'male', '+966578987654', '2025-04-27', 'gfyujfujfu@gmail.com', 'english', 'jkhiu', '2025-04-24 18:45:49'),
(39, 'gdfgd', 'jlksdhl', 'male', '+966578987654', '2025-04-27', 'gfyujfujfu@gmail.com', 'english', 'jkhiu', '2025-04-24 18:45:49'),
(40, 'gdfgd', 'jlksdhl', 'male', '+966578987654', '2025-04-27', 'gfyujfujfu@gmail.com', 'english', 'jkhiukjhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh', '2025-04-24 18:46:43'),
(41, 'gdfgd', 'jlksdhl', 'male', '+966578987654', '2025-04-27', 'gfyujfujfu@gmail.com', 'english', 'jkhiukjhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh', '2025-04-24 18:46:43'),
(42, 'gdfgd', 'jlksdhl', 'male', '+966578987654', '2025-04-23', 'gfyujfujfu@gmail.com', 'english', 'fthfjy', '2025-04-24 18:55:04'),
(43, 'gdfgd', 'jlksdhl', 'male', '+966578987654', '2025-04-23', 'gfyujfujfu@gmail.com', 'english', 'fthfjy', '2025-04-24 18:55:04'),
(44, 'gdfgd', 'jlksdhl', 'male', '+966578987654', '2025-04-27', 'gfyujfujfu@gmail.com', 'english', 'jkhiukjhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh', '2025-04-24 19:22:57'),
(45, 'gdfgd', 'jlksdhl', 'male', '+966578987654', '2025-04-27', 'gfyujfujfu@gmail.com', 'english', 'jkhiukjhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh', '2025-04-24 19:22:57'),
(46, 'gdfgd', 'jlksdhl', 'female', '+966578987654', '2025-04-17', 'gfyujfujfu@gmail.com', 'arabic', 'hjhhj', '2025-04-24 19:24:45'),
(47, 'gdfgd', 'jlksdhl', 'female', '+966578987654', '2025-04-17', 'gfyujfujfu@gmail.com', 'arabic', 'hjhhj', '2025-04-24 19:24:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
