-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 15, 2023 at 02:29 AM
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
  `user_id` bigint(11) UNSIGNED DEFAULT NULL,
  `service_id` bigint(11) UNSIGNED DEFAULT NULL,
  `amount` decimal(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `checkout_venue`
--

INSERT INTO `checkout_venue` (`id`, `name`, `no_of_guests`, `date`, `event_id`, `phone`, `email`, `plan_id`, `venue_id`, `user_id`, `service_id`, `amount`, `created_at`, `updated_at`) VALUES
(1, 'adsf', '35', '2023-04-25 18:30:00', 3, 1234567890, 'steelvyapor88@gmail.com', NULL, 3, NULL, NULL, '456789.00', '2023-04-06 10:56:39', '2023-04-06 10:56:39'),
(2, 'Abra Heath', 'Possimus quos reici', '1995-03-30 18:30:00', 1, 1234567890, 'myjemetig@mailinator.com', NULL, 5, NULL, NULL, '1000.00', '2023-04-12 11:23:54', '2023-04-12 11:23:54'),
(3, 'CODE AXION', '3', '2023-04-26 18:30:00', 2, 1234567890, 'hubsoftindia@gmail.com', NULL, 3, 1, NULL, '4789.00', '2023-04-14 18:40:22', '2023-04-14 18:40:22'),
(4, 'Eugenia Villarreal', 'Minima tempor deleni', '2004-02-09 18:30:00', 1, 1234567890, 'tyne@mailinator.com', 1, 14, 1, 1, '6000.00', '2023-04-14 18:44:29', '2023-04-14 18:44:29');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` bigint(11) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `name`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Wedding', 'event_images/cards.webp', NULL, NULL),
(2, 'Kitty Party', 'event_images/caterers.webp', NULL, NULL),
(3, 'Birthday', 'event_images/decorators.webp', NULL, NULL),
(4, 'Restaurants - Barbiques', 'event_images/photography.webp', NULL, '2023-04-14 14:09:44'),
(5, 'Conference', NULL, '2023-03-18 04:51:10', '2023-03-18 05:17:58'),
(6, 'Anniversary', NULL, '2023-03-20 12:29:23', '2023-03-20 12:29:23'),
(7, 'Celebration', 'event_images/DUvH5fHLrUUYBDnzFTk8Nx46jyfvzRNaXj82NVb7.png', '2023-04-04 12:11:37', '2023-04-14 14:13:35');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` bigint(11) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `name`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Ahmedabad', 'location_images/4-star-above-hotels.webp', NULL, NULL),
(2, 'Mumbai', 'location_images/banquet-halls.webp', NULL, NULL),
(3, 'Pune', 'location_images/lawn-farm-house.webp', NULL, NULL),
(4, 'Kerala ', NULL, NULL, NULL),
(5, 'Gujarat', NULL, NULL, NULL),
(6, 'Banglore', NULL, NULL, NULL),
(10, 'Hyderabad', NULL, '2023-03-26 11:27:10', '2023-03-26 11:27:10'),
(11, 'Ahirtoli, Ranchi', NULL, '2023-04-14 13:33:35', '2023-04-14 13:36:39');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_03_31_171625_create_permission_tables', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'venues.create', 'web', NULL, NULL),
(2, 'venues.edit', 'web', NULL, NULL),
(3, 'venues.delete', 'web', NULL, NULL),
(4, 'venues.view', 'web', NULL, NULL),
(5, 'categories.view', 'web', NULL, NULL),
(6, 'categories.create', 'web', NULL, NULL),
(7, 'categories.edit', 'web', NULL, NULL),
(8, 'categories.delete', 'web', NULL, NULL),
(9, 'events.view', 'web', NULL, NULL),
(10, 'events.create', 'web', NULL, NULL),
(11, 'events.edit', 'web', NULL, NULL),
(12, 'events.delete', 'web', NULL, NULL),
(13, 'services.view', 'web', NULL, NULL),
(14, 'services.create', 'web', NULL, NULL),
(15, 'services.edit', 'web', NULL, NULL),
(16, 'services.delete', 'web', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'User', 'web', '2023-03-31 12:27:22', '2023-03-31 12:27:22'),
(3, 'Seller', 'web', '2023-04-28 15:21:45', '2023-04-14 15:21:48'),
(4, 'Admin', 'web', '2023-04-13 15:21:52', '2023-04-12 15:21:54');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(6, 1),
(8, 1);

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
(1, 'DJ Services', '50', '455', NULL, '2023-04-14 18:43:54'),
(2, 'Catterine', '100', '666', NULL, '2023-04-14 18:46:45'),
(4, 'Cakes and parties', '45', '7000', '2023-03-20 12:26:34', '2023-03-20 12:26:34'),
(5, 'Bakers, Party Cakes, Bakery Caterers', '30 - 50', '800', '2023-04-14 13:46:25', '2023-04-14 13:46:25');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_admin` int(11) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `is_admin`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin11@gmail.com', 777, NULL, '$2y$10$Ngb7YUE4qKiNWYDo8LABTewJbP3akQT8CUaWG/nLPnrwZJFUa3E4u', NULL, '2023-04-04 09:43:01', '2023-04-04 09:43:01');

-- --------------------------------------------------------

--
-- Table structure for table `user_reviews`
--

CREATE TABLE `user_reviews` (
  `id` bigint(11) UNSIGNED NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `venues`
--

CREATE TABLE `venues` (
  `id` bigint(11) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `capacity` varchar(255) DEFAULT NULL,
  `price` decimal(8,2) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
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

INSERT INTO `venues` (`id`, `name`, `capacity`, `price`, `image`, `status`, `event_id`, `category_id`, `location_id`, `description`, `created_at`, `updated_at`) VALUES
(3, 'Mumbai Banquet Hall', 'Deleniti tenetur dol', '4789.00', 'venue_images/qoGqV7gsHCK5qUK33ePqnECWpqJeRDc6p1QY3AoN.png', NULL, 1, 1, 1, 'some description', '2023-03-14 11:35:04', '2023-04-14 14:25:37'),
(4, 'Ahmedabad Wedding Farm House', '300', '9000.00', 'venue_images/m7S3pqyMfuASAJKBGFKkAUibFJRa5IapAtslHBjf.webp', NULL, 1, 2, 1, 'Hyderabad Wedding Farm House has best spaces to suit different occasions and celebrations. You can get contact details, event packages, rental prices Go ahead and make an enquiry for your event booking now!', '2023-03-15 10:08:08', '2023-04-14 14:49:51'),
(5, 'Ahmedabad Aamantran  Party Plot', '500', '1000.00', 'venue_images/L7KBzkQw2xz4yy3cgHHlSopMHK2zrtCQOpsLSAr5.png', NULL, 2, 4, 1, 'Aamantran Hall: Having a capacity of 30 in U Shape, 50\r\nin Classroom style, 80 in theater style and 150 for social get together, birthday parties, ring ceremony and other functions.', '2023-03-16 10:06:41', '2023-04-14 14:26:25'),
(10, 'Kashi Da Conference', '800', '1070.00', 'venue_images/eDcPzMJbt3jGAHXsaK4vojAV8vJM38k8MxopFDR9.png', NULL, 4, 7, 3, 'Kashi Da Conference, Nehru Chacha Nagar, Vadodara offers a spacious and lush green lawn for lavish per-wedding and wedding ceremonies.', '2023-03-19 02:33:50', '2023-04-14 14:34:16'),
(11, 'Surat Sawans Gravies Party Plot', '100 - 500', '8100.00', 'venue_images/li8JJenYxFvbwJi8x2p3FGzl86FeeNlGH6yzfrnE.png', NULL, 4, 4, 4, 'Group Events encompass all sorts of get-together, from sports teams to\r\nfamily reunions. Perhaps it\'s a 50th birthday party. Or maybe you simply\r\nneed a room block for your kitty party or a wedding anniversary\r\ncelebration.', '2023-03-20 12:24:41', '2023-04-14 14:26:35'),
(13, 'Midwaay Resort, Patratu', '300 - 500', '75000.00', 'venue_images/Vw7YjkZjt3QmrI74zdVeaNGXdlucd7DIbyWLpwWf.jpg', NULL, 1, 1, 2, 'Located in Ranchi, Midwaay Resort, Patratu is a well designed wedding venue that serves as the epitome of splendour and regality for your family and wedding guests.', '2023-04-14 13:27:50', '2023-04-14 13:27:50'),
(14, 'Kanha Banquet Hall', '400 - 500', '6000.00', 'venue_images/RdBcwefby0OFyZFy2ZrpT0bAnN9bicq3vfnHTVZK.png', NULL, 1, 1, 11, 'You want the wedding of your dreams without compromise. A ceremony expressing the heart.', '2023-04-14 13:37:32', '2023-04-14 14:26:48'),
(15, 'Surya Banquet', '100 - 600', '3000.00', 'venue_images/qh9T1SoYhevO3Ly7UiRgbhE1TVTg9xNxB6gCWsS2.png', NULL, 1, 1, 11, 'Hotel Surya, Hotel Surya Ln, Pawan Park Society, Sarod, Sayajiganj, Vadodara, Gujarat 390020', '2023-04-14 13:39:25', '2023-04-14 14:35:05'),
(16, 'Shreeji Farmhouse', '200 - 300', '7000.00', 'venue_images/SNKCGHchGFs7XDjYqvvPXdilYjprfWdzE3Q9g2Op.png', NULL, 2, 2, 1, 'Shreeji Farmhouse in Makarpura,Vadodara listed under Farm House On Rent in Vadodara. Rated 4.1 based on 28 Customer Reviews and Ratings with 10 Photos.', '2023-04-14 13:44:27', '2023-04-14 14:35:50'),
(17, 'Misty Woods Farmhouse', '500 - 700', '9000.00', 'venue_images/OLfBV3BK0WBZZdfXkO3pLiMTdONEiI2CrFGzFPcW.jpg', NULL, 2, 2, 2, 'Misty Woods Farmhouse is a Lawn / Farmhouse located in Dabhoi Rd, Vadodara. Space available: The venue has Outdoor spaces available which can ...', '2023-04-14 13:45:22', '2023-04-14 14:37:52'),
(18, 'The Mango Orchard Resort Club', '780 - 890', '4500.00', 'venue_images/8DOqp88X1to6yMTbmekdxCW3tGQZLpUUp8yCozZo.jpg', NULL, 2, 2, 1, 'The mango orchard resort club.. A place where you will not to wait for 15 years to see mangoes enjoy your weekend amidst a lush green sanctury with a host of leisure facilites..', '2023-04-14 13:49:15', '2023-04-14 14:38:01'),
(19, 'Vishal Patel Farm', '500 - 700', '5600.00', 'venue_images/OdvLxyp8j0eZ8LSvSYXFAhtqeZs8gz21ZTBS7Ekk.jpg', NULL, 2, 2, 5, 'Farmhouses are preferred by people as these are considered an ideal destination to celebrate key occasions.', '2023-04-14 13:51:59', '2023-04-14 14:38:12'),
(20, 'Comfort Inn Donil', '400 - 900', '8000.00', 'venue_images/6lEUlVc5J22XJHHGtyoS1ACf5WXQywI5yevETvi5.jpg', NULL, 6, 4, 6, 'The Party Hall facility offered by us is extensively preferred for\r\nhosting various corporate gatherings, weddings and other special\r\noccasions.', '2023-04-14 13:57:27', '2023-04-14 14:38:26'),
(21, 'Milan Resorts', '200 - 900', '9000.00', 'venue_images/S4QWdD04JeDK8qAuUqnx6mXyiYxSE7cWAyMYGg1R.jpg', NULL, 6, 3, 4, 'Milan Resorts offers three exclusive banquets with a capacity from 1000 Pax, be it a corporate affair, a marriage in your family, a social get together or a private dinner', '2023-04-14 14:00:57', '2023-04-14 14:38:36');

-- --------------------------------------------------------

--
-- Table structure for table `venue_request`
--

CREATE TABLE `venue_request` (
  `id` bigint(11) UNSIGNED NOT NULL,
  `username` varchar(254) DEFAULT NULL,
  `email` varchar(245) DEFAULT NULL,
  `venue_name` varchar(245) DEFAULT NULL,
  `capacity` varchar(254) DEFAULT NULL,
  `price` decimal(8,2) DEFAULT NULL,
  `category_id` bigint(11) UNSIGNED DEFAULT NULL,
  `event_id` bigint(11) UNSIGNED DEFAULT NULL,
  `location_id` bigint(11) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(29, 2, 11, 2, '600.00', 'we serve 400 customers in our restaurant', NULL, NULL),
(30, 1, 14, 1, '400.00', 'RD DJ Sound and Light System', NULL, NULL),
(31, 2, 15, 2, '600.00', 'These caterers offer services for various events, including weddings, corporate events, parties, and other social gatherings.', NULL, NULL),
(32, 3, 16, 4, '400.00', 'Find the most classic bakery catering service providers in the town. ... Top 3840+ Bakery Food & Party Cake Suppliers', NULL, NULL),
(33, 3, 19, 5, '900.00', 'Masterline Bakery Service, a division of Bunge India offers India\'s largest selling and most trusted range of Specialized Bakery Fats, Shortenings', NULL, NULL);

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
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `plans`
--
ALTER TABLE `plans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_reviews`
--
ALTER TABLE `user_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `venues`
--
ALTER TABLE `venues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `venue_request`
--
ALTER TABLE `venue_request`
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
  MODIFY `id` bigint(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `checkout_venue`
--
ALTER TABLE `checkout_venue`
  MODIFY `id` bigint(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` bigint(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `plans`
--
ALTER TABLE `plans`
  MODIFY `id` bigint(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_reviews`
--
ALTER TABLE `user_reviews`
  MODIFY `id` bigint(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `venues`
--
ALTER TABLE `venues`
  MODIFY `id` bigint(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `venue_request`
--
ALTER TABLE `venue_request`
  MODIFY `id` bigint(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `venue_services`
--
ALTER TABLE `venue_services`
  MODIFY `id` bigint(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
