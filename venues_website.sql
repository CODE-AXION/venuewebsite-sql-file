-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 26, 2023 at 08:07 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `venues_website`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(11) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Banquet Halls', NULL, NULL),
(2, 'Lawns/Farm Houses', NULL, NULL),
(3, 'Resorts', NULL, NULL),
(4, 'Party Halls', NULL, NULL),
(5, 'Small Functions', NULL, NULL),
(7, 'Conference', '2023-03-20 12:26:12', '2023-03-20 12:26:12');

-- --------------------------------------------------------

--
-- Table structure for table `checkout_venue`
--

CREATE TABLE `checkout_venue` (
  `id` bigint(11) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `no_of_guests` varchar(255) DEFAULT NULL,
  `date` timestamp NULL DEFAULT NULL,
  `event_id` bigint(11) UNSIGNED DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `plan_id` bigint(11) UNSIGNED DEFAULT NULL,
  `venue_id` bigint(11) UNSIGNED DEFAULT NULL,
  `service_id` bigint(11) UNSIGNED DEFAULT NULL,
  `amount` decimal(8,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` bigint(11) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Wedding', NULL, NULL),
(2, 'Kitty Party', NULL, NULL),
(3, 'Birthday', NULL, NULL),
(4, 'Death ', NULL, NULL),
(5, 'Conference', '2023-03-18 04:51:10', '2023-03-18 05:17:58'),
(6, 'Anniversary', '2023-03-20 12:29:23', '2023-03-20 12:29:23');

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` bigint(11) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Ahmedabad', NULL, NULL),
(2, 'Mumbai', NULL, NULL),
(3, 'Pune', NULL, NULL),
(4, 'Kerala ', NULL, NULL),
(5, 'Gujarat', NULL, NULL),
(6, 'Banglore', NULL, NULL),
(10, 'Hyderabad', '2023-03-26 11:27:10', '2023-03-26 11:27:10');

-- --------------------------------------------------------

--
-- Table structure for table `plans`
--

CREATE TABLE `plans` (
  `id` bigint(11) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `plans`
--

INSERT INTO `plans` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Basic', NULL, NULL),
(2, 'Standard', NULL, NULL),
(3, 'Premium', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(11) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `capacity` varchar(255) DEFAULT NULL,
  `price` decimal(11,0) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `name`, `capacity`, `price`, `created_at`, `updated_at`) VALUES
(1, 'DJ Services', '50', NULL, NULL, NULL),
(2, 'Catterine', '100', NULL, NULL, NULL),
(4, 'Cakes and parties', '45', '7000', '2023-03-20 12:26:34', '2023-03-20 12:26:34');

-- --------------------------------------------------------

--
-- Table structure for table `venues`
--

CREATE TABLE `venues` (
  `id` bigint(11) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `capacity` varchar(255) DEFAULT NULL,
  `price` decimal(8,2) DEFAULT NULL,
  `event_id` bigint(11) UNSIGNED DEFAULT NULL,
  `category_id` bigint(11) UNSIGNED DEFAULT NULL,
  `location_id` bigint(11) UNSIGNED DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `venues`
--

INSERT INTO `venues` (`id`, `name`, `capacity`, `price`, `event_id`, `category_id`, `location_id`, `description`, `created_at`, `updated_at`) VALUES
(3, 'darkest brush', 'Deleniti tenetur dol', '456789.00', 1, 1, 1, NULL, '2023-03-14 11:35:04', '2023-03-14 11:35:04'),
(4, 'reverse engineering', '300', '10.00', 1, 2, 1, NULL, '2023-03-15 10:08:08', '2023-03-15 10:08:08'),
(5, 'Ahmedabad Party Plot', '500', '1000.00', 2, 4, 2, NULL, '2023-03-16 10:06:41', '2023-03-16 10:06:41'),
(10, 'CLOUD', '6969', '100000.00', 4, 3, 3, NULL, '2023-03-19 02:33:50', '2023-03-19 02:33:50'),
(11, 'Surat Party Plot', '100 - 500', '100.00', 5, 4, 4, NULL, '2023-03-20 12:24:41', '2023-03-20 12:24:41'),
(12, 'Kerala', '600 - 1000', '3525.00', 1, 1, 4, 'asdfasdf', '2023-03-26 10:53:40', '2023-03-26 11:54:02');

-- --------------------------------------------------------

--
-- Table structure for table `venue_services`
--

CREATE TABLE `venue_services` (
  `id` bigint(11) UNSIGNED NOT NULL,
  `plan_id` bigint(11) UNSIGNED DEFAULT NULL,
  `venue_id` bigint(11) UNSIGNED DEFAULT NULL,
  `service_id` bigint(11) UNSIGNED DEFAULT NULL,
  `service_price` decimal(8,2) DEFAULT NULL,
  `service_description` varchar(245) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `venue_services`
--

INSERT INTO `venue_services` (`id`, `plan_id`, `venue_id`, `service_id`, `service_price`, `service_description`, `created_at`, `updated_at`) VALUES
(29, 2, 11, 2, '600.00', 'we serve 400 customers in our restaurant', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `checkout_venue`
--
ALTER TABLE `checkout_venue`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plans`
--
ALTER TABLE `plans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `venues`
--
ALTER TABLE `venues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `venue_services`
--
ALTER TABLE `venue_services`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `checkout_venue`
--
ALTER TABLE `checkout_venue`
  MODIFY `id` bigint(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` bigint(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `plans`
--
ALTER TABLE `plans`
  MODIFY `id` bigint(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `venues`
--
ALTER TABLE `venues`
  MODIFY `id` bigint(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `venue_services`
--
ALTER TABLE `venue_services`
  MODIFY `id` bigint(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
