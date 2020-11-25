-- phpMyAdmin SQL Dump
-- version 5.0.0
-- https://www.phpmyadmin.net/
--
-- Host: mysql
-- Generation Time: Nov 25, 2020 at 01:51 PM
-- Server version: 10.3.22-MariaDB-1:10.3.22+maria~bionic
-- PHP Version: 7.3.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `luxury_services`
--

-- --------------------------------------------------------

--
-- Table structure for table `application`
--

CREATE TABLE `application` (
  `id` int(11) NOT NULL,
  `candidate_id` int(11) NOT NULL,
  `joboffer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `application`
--

INSERT INTO `application` (`id`, `candidate_id`, `joboffer_id`) VALUES
(6, 35, 6),
(7, 35, 4),
(8, 35, 4),
(9, 35, 4),
(10, 35, 5),
(11, 35, 5),
(12, 35, 5),
(13, 35, 6),
(14, 35, 4),
(15, 36, 3),
(16, 36, 5),
(17, 35, 3),
(18, 35, 7);

-- --------------------------------------------------------

--
-- Table structure for table `candidate`
--

CREATE TABLE `candidate` (
  `id` int(11) NOT NULL,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_admin` tinyint(1) DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_passport_valid` tinyint(1) DEFAULT NULL,
  `passport` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cv` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profil_pic` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birth_date` datetime DEFAULT NULL,
  `birth_place` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_available` tinyint(1) DEFAULT NULL,
  `experience` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `notes` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `files` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sector_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `candidate`
--

INSERT INTO `candidate` (`id`, `email`, `password`, `is_admin`, `gender`, `first_name`, `last_name`, `address`, `country`, `nationality`, `is_passport_valid`, `passport`, `cv`, `profil_pic`, `current_location`, `birth_date`, `birth_place`, `is_available`, `experience`, `description`, `created_at`, `updated_at`, `deleted_at`, `notes`, `files`, `sector_id`) VALUES
(28, 'olivier@hotmail.com', '$argon2id$v=19$m=65536,t=4,p=1$SdLEbC7hCbWrJg+YFmLxbg$cQMzCXPd2tQHl58qVZds6ARJkIslV3z8nId6F7xRS0k', 0, 'male', 'Olivier', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 'vero@hotmail.com', '$argon2id$v=19$m=65536,t=4,p=1$xiy1x/pROofowxbLustosg$7Q40w3OBZR2jGJ+Tf7CoaJqXjPKy4sERxahVturZfOM', 0, 'Male', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, '0-6 months', NULL, NULL, NULL, NULL, 'eqgsg', NULL, 2),
(30, 'grego1@hotmail.com', '$argon2id$v=19$m=65536,t=4,p=1$15qLiTwUZjhQyKbwxK8Abg$MkOgIb8vqs5lEpz9iOxtdL93vGavprP52fcwnCiximA', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 'admin@hotmail.com', '$argon2id$v=19$m=65536,t=4,p=1$HLJS75IWmYkEw9lpNNcTcg$qwvTfyP48DuSWN75OaYXG1Lr9z+Kn974sGanofAivsw', 1, 'select a value', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(32, 'vero1@hotmail.com', '$argon2id$v=19$m=65536,t=4,p=1$X+Cfucr8u2Kog3NM2Q3QWg$32s4yIs/0/i6xr5mVDDJuirNJq28Ibgg6t+KFOMp0+o', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, 'veru@hotmail.com', '$argon2id$v=19$m=65536,t=4,p=1$u8xiIg2iNMTCIOuRxYGG+Q$qdTWlC+B2MexsJ5L/t1hq2KK/O3TRUMWaXYZfQd3HjA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, 'Alice@hotmail.com', '$argon2id$v=19$m=65536,t=4,p=1$ASNjN2t+vnsOBRaLJgvJyA$6V7lxuC8bFr0+WAQ4BiQ20PMygshDezdebVQJt/ding', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, 'hamza@hotmail.copm', '$argon2id$v=19$m=65536,t=4,p=1$BSUR4GXUIdgLR96ZQ+awXA$kfP9PHR9CjPuoYvvW1bbomSYMo7pBK3ImpAEiWVUU7o', 0, 'Male', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, '0-6 months', NULL, NULL, NULL, NULL, NULL, NULL, 4),
(36, 'victoria@hotmail.com', '$argon2id$v=19$m=65536,t=4,p=1$sIZXHauAjtt55P4B2JA+mg$FZK8SsEjH0NXf+xS3rvEHO9p8EEwo5kMNkbQcl8gAl4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `id` int(11) NOT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`id`, `company_name`, `activity`, `contact_name`, `contact_position`, `phone`, `email`) VALUES
(1, 'ChezOlivier', 'voyagiste', 'Usher', 'manager', '062930898', 'olivierjean.guillemot@googlemail.com');

-- --------------------------------------------------------

--
-- Table structure for table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20200715141100', '2020-07-15 16:11:31', 1623),
('DoctrineMigrations\\Version20200715142356', '2020-07-15 16:24:05', 356),
('DoctrineMigrations\\Version20200715144217', '2020-07-15 16:42:23', 8980),
('DoctrineMigrations\\Version20200722093143', '2020-07-22 11:33:44', 2174),
('DoctrineMigrations\\Version20200722095502', '2020-07-22 11:55:24', 1881);

-- --------------------------------------------------------

--
-- Table structure for table `joboffer`
--

CREATE TABLE `joboffer` (
  `id` int(11) NOT NULL,
  `reference` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_activated` tinyint(1) DEFAULT NULL,
  `notes` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `closing_date` datetime DEFAULT NULL,
  `salary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `client_id` int(11) DEFAULT NULL,
  `sector_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `joboffer`
--

INSERT INTO `joboffer` (`id`, `reference`, `description`, `is_activated`, `notes`, `job_title`, `job_type`, `location`, `closing_date`, `salary`, `created_at`, `client_id`, `sector_id`) VALUES
(3, 'TOUR1', 'LOLOLOLOOLOL', 1, 'dsqgdsqg', 'Barman', 'Tourisme', 'PAris', NULL, '12000', NULL, 1, 1),
(4, 'R124345', 'Vous ferez ce qu\'on vous demande quand on vous le demande', 1, 'lol', 'Barman', 'CDD', 'Hawaii', NULL, '1600', NULL, 1, 2),
(5, 'R124345', 'Vous ferez ce qu\'on vous demande quand on vous le demande', 1, 'lol', 'Barman', 'CDD', 'Hawaii', NULL, '1600', NULL, 1, 2),
(6, 'REF123', 'what the hell is going on', 1, 'dd', 'WebDev', NULL, NULL, NULL, NULL, NULL, 1, 1),
(7, '&&&&&&&&&&&&&&&', 'You think you know it', 1, NULL, 'HouseKeeper', NULL, NULL, NULL, NULL, NULL, 1, 6);

-- --------------------------------------------------------

--
-- Table structure for table `sector`
--

CREATE TABLE `sector` (
  `id` int(11) NOT NULL,
  `sector` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sector`
--

INSERT INTO `sector` (`id`, `sector`) VALUES
(1, 'commercial'),
(2, 'Retail sales'),
(3, 'Creative'),
(4, 'Technology'),
(5, 'Marketing & PR'),
(6, 'Fashion & luxury'),
(7, 'Management & HR');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `application`
--
ALTER TABLE `application`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_A45BDDC191BD8781` (`candidate_id`),
  ADD KEY `IDX_A45BDDC1BD612208` (`joboffer_id`);

--
-- Indexes for table `candidate`
--
ALTER TABLE `candidate`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_C8B28E44E7927C74` (`email`),
  ADD KEY `IDX_C8B28E44DE95C867` (`sector_id`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `joboffer`
--
ALTER TABLE `joboffer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_F33F816419EB6921` (`client_id`),
  ADD KEY `FK_F33F8164DE95C867` (`sector_id`);

--
-- Indexes for table `sector`
--
ALTER TABLE `sector`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `application`
--
ALTER TABLE `application`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `candidate`
--
ALTER TABLE `candidate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `joboffer`
--
ALTER TABLE `joboffer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sector`
--
ALTER TABLE `sector`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `application`
--
ALTER TABLE `application`
  ADD CONSTRAINT `FK_A45BDDC191BD8781` FOREIGN KEY (`candidate_id`) REFERENCES `candidate` (`id`),
  ADD CONSTRAINT `FK_A45BDDC1BD612208` FOREIGN KEY (`joboffer_id`) REFERENCES `joboffer` (`id`);

--
-- Constraints for table `candidate`
--
ALTER TABLE `candidate`
  ADD CONSTRAINT `FK_C8B28E44DE95C867` FOREIGN KEY (`sector_id`) REFERENCES `sector` (`id`);

--
-- Constraints for table `joboffer`
--
ALTER TABLE `joboffer`
  ADD CONSTRAINT `FK_F33F816419EB6921` FOREIGN KEY (`client_id`) REFERENCES `client` (`id`),
  ADD CONSTRAINT `FK_F33F8164DE95C867` FOREIGN KEY (`sector_id`) REFERENCES `sector` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

