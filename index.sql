-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 06, 2025 at 07:11 AM
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
-- Database: `itads22_final`
--

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE `announcements` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text DEFAULT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  `is_announcement` tinyint(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `announcements`
--

INSERT INTO `announcements` (`id`, `title`, `content`, `image_path`, `is_announcement`, `created_at`, `updated_at`, `user_id`) VALUES
(1, 'new livelihood', 'new livelihood will be added next week !\r\nprepare your requirements', 'uploads/announcements/67e964acd45a0.png', 1, '2025-03-30 13:08:58', '2025-04-06 04:19:54', 1);

-- --------------------------------------------------------

--
-- Table structure for table `applicants`
--

CREATE TABLE `applicants` (
  `id` int(11) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `middle_name` varchar(100) DEFAULT NULL,
  `suffix` varchar(20) DEFAULT NULL,
  `gender` varchar(20) NOT NULL,
  `birth_date` varchar(20) NOT NULL,
  `birth_place` varchar(100) NOT NULL,
  `marital_status` varchar(50) NOT NULL,
  `nationality` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `contact_number` varchar(20) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `education` varchar(255) NOT NULL,
  `emergency_name` varchar(100) NOT NULL,
  `emergency_contact` varchar(20) NOT NULL,
  `emergency_relationship` varchar(50) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `id_photo` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `applicants`
--

INSERT INTO `applicants` (`id`, `last_name`, `first_name`, `middle_name`, `suffix`, `gender`, `birth_date`, `birth_place`, `marital_status`, `nationality`, `address`, `contact_number`, `email`, `education`, `emergency_name`, `emergency_contact`, `emergency_relationship`, `photo`, `id_photo`, `created_at`, `updated_at`) VALUES
(1, 'cabornay', 'jhon', 'gesim', '', 'male', '08-30-2005', 'cebu', 'married', 'american', 'st eskwelahan cebu city', '+639679872930', 'hamdellcrane@gmail.com', 'college', 'austen', '+639679872930', 'secret', 'uploads/photo_1743329253_loginbg.png', 'uploads/id_1743329253_logo.png', '2025-03-30 10:07:33', '2025-03-30 10:07:33');

-- --------------------------------------------------------

--
-- Table structure for table `livelihood_programs`
--

CREATE TABLE `livelihood_programs` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `category` varchar(50) NOT NULL,
  `offered_by` varchar(100) NOT NULL,
  `status` enum('Upcoming','Ongoing','Completed') NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `slots` int(11) DEFAULT 0,
  `location` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `livelihood_programs`
--

INSERT INTO `livelihood_programs` (`id`, `title`, `description`, `category`, `offered_by`, `status`, `start_date`, `end_date`, `slots`, `location`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Candle Making', 'Learn how to make decorative and scented candles for business or personal use.', 'Crafts', 'Chuchu', 'Ongoing', '2025-01-15', '2025-04-15', 20, 'Barangay Hall, Room 101', '../images/candle_making.png', '2025-03-23 13:44:55', '2025-04-02 04:13:40'),
(2, 'Basic Sewing', 'Learn basic sewing techniques for making simple garments and home accessories.', 'Crafts', 'Chuchu', 'Upcoming', '2025-04-20', '2025-07-20', 15, 'Barangay Hall, Room 102', '../images/sewing.jpg', '2025-03-23 13:44:55', '2025-04-02 04:14:15'),
(3, 'Urban Gardening', 'Learn how to grow vegetables and herbs in limited urban spaces.', 'Agriculture', 'Chuchu', 'Ongoing', '2025-02-10', '2025-05-10', 25, 'Barangay Plaza', '../images/urban-gardening.jpg', '2025-03-23 13:44:55', '2025-04-02 04:17:08'),
(4, 'Food Preservation', 'Learn techniques for preserving fruits and vegetables.', 'Food Production', 'Chuchu', 'Ongoing', '2025-03-01', '2025-06-01', 18, 'Barangay Hall, Kitchen', '../images/food-preservation.jpg', '2025-03-23 13:44:55', '2025-04-02 04:18:05'),
(5, 'Soap Making', 'Learn how to make organic soaps using natural ingredients.', 'Crafts', 'Chuchu', 'Ongoing', '2025-02-15', '2025-05-15', 20, 'Barangay Hall, Room 101', '../images/soap-making.jpg', '2025-03-23 13:44:55', '2025-04-02 04:18:41'),
(6, 'Computer Literacy', 'Basic computer skills for beginners.', 'Skills Training', 'Chuchu', 'Ongoing', '2025-01-20', '2025-04-20', 15, 'Barangay Hall, Computer Room', '../images/computer-literacy.jpg', '2025-03-23 13:44:55', '2025-04-02 04:20:27'),
(7, 'Baking Basics', 'Learn fundamental baking skills and recipes.', 'Food Production', 'Chuchu', 'Ongoing', '2025-02-25', '2025-05-25', 12, 'Barangay Hall, Kitchen', '../images/baking-basics.jpg', '2025-03-23 13:44:55', '2025-04-02 04:23:07'),
(8, 'Handicraft Making', 'Create various handicrafts using local materials.', 'Crafts', 'Chuchu', 'Ongoing', '2025-03-10', '2025-06-10', 19, 'Barangay Hall, Room 103', '../images/handicrafts.jpg', '2025-03-23 13:44:55', '2025-04-02 04:25:52');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `source` varchar(100) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `category` enum('Food','Apparel','Crafts','Household') NOT NULL,
  `stock_quantity` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `seller_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `source`, `image`, `description`, `category`, `stock_quantity`, `created_at`, `updated_at`, `seller_id`) VALUES
(1, 'Woven Basket', 350.00, 'Sunrise Village', '../images/basket.png', 'Handcrafted woven basket made by skilled artisans from Sunrise Village. Each basket is unique and perfect for storage or decoration.', 'Crafts', 50, '2025-03-27 14:15:51', '2025-04-06 05:08:49', 2),
(2, 'Chorizo', 100.00, 'Poblacion Market', '../images/chorizo.png', 'Authentic local chorizo made with traditional recipes from Poblacion Market. Perfect for breakfast or as a savory snack.', 'Food', 100, '2025-03-27 14:15:51', '2025-04-06 05:08:52', 2),
(3, 'Dishwashing Liquid', 120.00, 'Sunrise Village', '../images/dishwashing-liquid.png', 'Eco-friendly dishwashing liquid produced by Sunrise Village. Effective cleaning power with a gentle, natural formula.', 'Household', 75, '2025-03-27 14:15:51', '2025-04-06 05:08:57', 2),
(4, 'Handmade Soap', 80.00, 'Local Artisans', '../images/soap-making.jpg', 'Organic handmade soap crafted with natural ingredients. Available in various scents and perfect for sensitive skin.', 'Household', 60, '2025-03-27 14:15:51', '2025-04-06 05:09:00', 2),
(5, 'Embroidered Apron', 250.00, 'Community Crafters', '../images/apron.jpg', 'Beautifully embroidered apron with intricate local designs. Ideal for cooking, crafting, or as a unique gift.', 'Apparel', 30, '2025-03-27 14:15:51', '2025-04-06 05:09:03', 2),
(6, 'Preserved Fruits', 150.00, 'Poblacion Market', '../images/food-preservation.jpg', 'Locally grown fruits preserved using traditional methods. A perfect blend of sweet and tangy flavors.', 'Food', 40, '2025-03-27 14:15:51', '2025-04-06 05:09:05', 2);

-- --------------------------------------------------------

--
-- Table structure for table `program_applications`
--

CREATE TABLE `program_applications` (
  `id` int(11) NOT NULL,
  `program_id` int(11) NOT NULL,
  `applicant_id` int(11) NOT NULL,
  `reason` text DEFAULT NULL,
  `skills_to_gain` text DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `application_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` enum('Pending','Approved','Rejected') DEFAULT 'Pending',
  `remarks` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `program_applications`
--

INSERT INTO `program_applications` (`id`, `program_id`, `applicant_id`, `reason`, `skills_to_gain`, `user_id`, `application_date`, `status`, `remarks`) VALUES
(1, 8, 1, 'rftyhfghf', 'fhgjuyu ty', 2, '2025-03-30 10:07:33', 'Pending', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `program_schedules`
--

CREATE TABLE `program_schedules` (
  `id` int(11) NOT NULL,
  `program_id` int(11) NOT NULL,
  `session_date` date NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `location` varchar(255) DEFAULT NULL,
  `details` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `program_schedules`
--

INSERT INTO `program_schedules` (`id`, `program_id`, `session_date`, `start_time`, `end_time`, `location`, `details`) VALUES
(1, 1, '2025-01-20', '09:00:00', '12:00:00', 'Barangay Hall, Room 101', 'Introduction to candle making and materials'),
(2, 1, '2025-01-27', '09:00:00', '12:00:00', 'Barangay Hall, Room 101', 'Basic candle making techniques'),
(3, 1, '2025-02-03', '09:00:00', '12:00:00', 'Barangay Hall, Room 101', 'Advanced decorative candles'),
(4, 2, '2025-04-25', '13:00:00', '16:00:00', 'Barangay Hall, Room 102', 'Introduction to sewing tools and materials'),
(5, 3, '2025-02-15', '08:00:00', '11:00:00', 'Barangay Plaza', 'Introduction to urban gardening concepts');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','resident') DEFAULT NULL,
  `contact_number` varchar(20) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`, `contact_number`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'admin@brgy.com', '$2y$10$O/QhsA.K6NM98BGu52uqdOujlZFc5kmMdY7n91c3V7EGYLTGhvhC2', 'admin', '09123456789', '2025-03-30 09:47:10', '2025-03-30 09:47:30'),
(2, 'austen', 'hamdellcrane@gmail.com', '$2y$10$edwHu.08UtGroUJO8Cyrduc9ts6om3BSTiixHyMir6oTiLMK6PQEO', 'resident', '+639679872930', '2025-03-30 09:48:31', '2025-03-30 09:48:31'),
(4, 'resident', 'resident@gmail.com', '$2y$10$WKqION2PqP3TcKzMv95Gm.v5U86foclB17Fczy28kpVCRK1ki/tIq', 'resident', '09980559056', '2025-04-06 04:56:20', '2025-04-06 04:56:20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `applicants`
--
ALTER TABLE `applicants`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `contact_number` (`contact_number`);

--
-- Indexes for table `livelihood_programs`
--
ALTER TABLE `livelihood_programs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_product_name` (`name`),
  ADD KEY `idx_product_category` (`category`),
  ADD KEY `fk_product_user` (`seller_id`);

--
-- Indexes for table `program_applications`
--
ALTER TABLE `program_applications`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `program_id` (`program_id`,`user_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `applicant_id` (`applicant_id`);

--
-- Indexes for table `program_schedules`
--
ALTER TABLE `program_schedules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `program_id` (`program_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `announcements`
--
ALTER TABLE `announcements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `applicants`
--
ALTER TABLE `applicants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `livelihood_programs`
--
ALTER TABLE `livelihood_programs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `program_applications`
--
ALTER TABLE `program_applications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `program_schedules`
--
ALTER TABLE `program_schedules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `announcements`
--
ALTER TABLE `announcements`
  ADD CONSTRAINT `announcements_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `fk_product_user` FOREIGN KEY (`seller_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `program_applications`
--
ALTER TABLE `program_applications`
  ADD CONSTRAINT `program_applications_ibfk_1` FOREIGN KEY (`program_id`) REFERENCES `livelihood_programs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `program_applications_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `program_applications_ibfk_3` FOREIGN KEY (`applicant_id`) REFERENCES `applicants` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `program_schedules`
--
ALTER TABLE `program_schedules`
  ADD CONSTRAINT `program_schedules_ibfk_1` FOREIGN KEY (`program_id`) REFERENCES `livelihood_programs` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
