-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 13, 2023 at 06:57 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project_sem1`
--

-- --------------------------------------------------------

--
-- Table structure for table `life_story`
--

CREATE TABLE `life_story` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `person_id` bigint(20) UNSIGNED NOT NULL,
  `childhood` text DEFAULT NULL,
  `education` text DEFAULT NULL,
  `experiment` text DEFAULT NULL,
  `struggles` text DEFAULT NULL,
  `time_line` text DEFAULT NULL,
  `personalities` text DEFAULT NULL,
  `achievements_detail` text DEFAULT NULL,
  `quote` varchar(100) DEFAULT NULL,
  `books` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `life_story`
--

INSERT INTO `life_story` (`id`, `person_id`, `childhood`, `education`, `experiment`, `struggles`, `time_line`, `personalities`, `achievements_detail`, `quote`, `books`, `created_at`, `updated_at`) VALUES
(1, 1, 'unlucky child', 'learn at Havert', 'fidsahfba', 'ewqeqw', 'fdasfafsa', 'fdsafsdafdsa', 'fdsafdsa', 'fdsafsda', 'fadsfdsa', NULL, NULL),
(2, 2, 'fdsafad', 'fdasfdsafas', 'fdsafda', 'fdasfdsa', 'fdsafafdsf', 'fdsafsfds', 'fdafdsafsa', 'dfasfsa', 'fdsafsdf', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `multiple_images`
--

CREATE TABLE `multiple_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `person_id` int(10) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `image_path` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `multiple_images`
--

INSERT INTO `multiple_images` (`id`, `person_id`, `title`, `image_path`, `created_at`, `updated_at`) VALUES
(1, 1, 'hehe', 'heheheh', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `nobel_prizes`
--

CREATE TABLE `nobel_prizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nobel_year` char(4) NOT NULL,
  `nobel_name` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `nobel_prizes`
--

INSERT INTO `nobel_prizes` (`id`, `nobel_year`, `nobel_name`, `created_at`, `updated_at`) VALUES
(1, '2022', 'Physic', NULL, NULL),
(2, '2022', 'Math', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `persons`
--

CREATE TABLE `persons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `birthdate` date NOT NULL,
  `deathdate` date DEFAULT NULL,
  `gender` tinyint(1) DEFAULT NULL,
  `national` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `persons`
--

INSERT INTO `persons` (`id`, `name`, `birthdate`, `deathdate`, `gender`, `national`, `created_at`, `updated_at`) VALUES
(1, 'Nguyen', '2004-06-15', '2023-06-15', 1, 'Viet Nam', NULL, NULL),
(2, 'Long', '2004-06-17', '2023-06-17', 0, 'Laos', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `person_nobel`
--

CREATE TABLE `person_nobel` (
  `person_id` bigint(20) NOT NULL,
  `nobel_id` bigint(20) NOT NULL,
  `motivation` varchar(200) NOT NULL,
  `nobel_share` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `person_nobel`
--

INSERT INTO `person_nobel` (`person_id`, `nobel_id`, `motivation`, `nobel_share`, `created_at`, `updated_at`) VALUES
(1, 1, 'sucess create db', NULL, NULL, NULL),
(1, 2, 'ahihi do ngoc', '2', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `life_story`
--
ALTER TABLE `life_story`
  ADD PRIMARY KEY (`id`),
  ADD KEY `life_story_person_id_foreign` (`person_id`);

--
-- Indexes for table `multiple_images`
--
ALTER TABLE `multiple_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nobel_prizes`
--
ALTER TABLE `nobel_prizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `persons`
--
ALTER TABLE `persons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `person_nobel`
--
ALTER TABLE `person_nobel`
  ADD PRIMARY KEY (`person_id`,`nobel_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `life_story`
--
ALTER TABLE `life_story`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `multiple_images`
--
ALTER TABLE `multiple_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `nobel_prizes`
--
ALTER TABLE `nobel_prizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `persons`
--
ALTER TABLE `persons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `life_story`
--
ALTER TABLE `life_story`
  ADD CONSTRAINT `life_story_person_id_foreign` FOREIGN KEY (`person_id`) REFERENCES `persons` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
