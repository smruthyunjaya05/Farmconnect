-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 10, 2025 at 06:16 PM
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
-- Database: `farmconnect`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(3) NOT NULL,
  `pro_id` int(3) NOT NULL,
  `pro_title` varchar(200) NOT NULL,
  `pro_image` varchar(200) NOT NULL,
  `pro_price` int(10) NOT NULL,
  `pro_qty` int(10) NOT NULL,
  `pro_subtotal` int(10) NOT NULL,
  `user_id` int(3) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `pro_id`, `pro_title`, `pro_image`, `pro_price`, `pro_qty`, `pro_subtotal`, `user_id`, `created_at`) VALUES
(6, 1, 'Tomato', 'Tomato.jpg', 81, 2, 162, 6, '2025-03-05 11:57:45');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(3) NOT NULL,
  `name` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `icon` varchar(200) NOT NULL,
  `description` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `image`, `icon`, `description`, `created_at`) VALUES
(1, 'Vegetables', 'vegetables.jpg', 'bistro-carrot', 'Freshly Harvested Veggies From Local Growers', '2024-10-24 15:47:32'),
(2, 'Meats', 'meats.jpg', 'bistro-roast-leg', 'Protein Rich Ingridients From Local Farmers', '2024-10-24 15:47:32'),
(3, 'Fishes', 'fish.jpg', 'bistro-fish-1', 'Protein Rich Ingridients From Local Farmers', '2024-10-24 15:51:39'),
(4, 'Fruits', 'fruits.jpg', 'bistro-apple', 'Variety of Fruits From Local Growers', '2024-10-24 15:51:39'),
(5, 'Frozen', 'frozen.jpg', 'bistro-french-fries', 'Wide range of high-quality frozen foods', '2024-10-24 15:57:44');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) NOT NULL,
  `name` varchar(200) NOT NULL,
  `lname` varchar(200) NOT NULL,
  `company_name` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `city` varchar(200) NOT NULL,
  `country` varchar(200) NOT NULL,
  `zip_code` int(20) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone_number` int(20) NOT NULL,
  `order_notes` text NOT NULL,
  `status` varchar(200) NOT NULL DEFAULT 'sent to admins',
  `price` int(20) NOT NULL,
  `user_id` int(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `lname`, `company_name`, `address`, `city`, `country`, `zip_code`, `email`, `phone_number`, `order_notes`, `status`, `price`, `user_id`, `created_at`) VALUES
(1, 'S', 'Mruthyunjaya', 'gat', 'S MRUTHYUNJAYA', 'Bangalore, Karnataka', 'India', 560072, 's.mruthyunjaya05@gmail.com', 2147483647, 'hhhh', 'sent to admins', 52, 8, '2025-03-06 13:23:54'),
(2, 'S', 'Mruthyunjaya', 'gat', '26 C  OPP NEELANJANA APPMT  Nagarbhavi  Bengaluru 560072', 'Bangalore, Karnataka', 'India', 560072, 's.mruthyunjaya05@gmail.com', 2147483647, 'fuuuuu', 'sent to admins', 52, 8, '2025-03-06 16:20:02'),
(3, 'S', 'Mruthyunjaya', 'gat', '26 C  OPP NEELANJANA APPMT  Nagarbhavi  Bengaluru 560072', 'Bangalore, Karnataka', 'India', 560072, 's.mruthyunjaya05@gmail.com', 2147483647, 'fuuuuu', 'sent to admins', 52, 8, '2025-03-06 16:41:10'),
(4, 'S', 'Mruthyunjaya', 'gat', '26 C  OPP NEELANJANA APPMT  Nagarbhavi  Bengaluru 560072', 'Bangalore, Karnataka', 'India', 560072, 's.mruthyunjaya05@gmail.com', 2147483647, 'fuuuuu', 'sent to admins', 52, 8, '2025-03-06 16:58:15'),
(5, 'S', 'Mruthyunjaya', 'gat', '26 C  OPP NEELANJANA APPMT  Nagarbhavi  Bengaluru 560072', 'Bangalore, Karnataka', 'India', 560072, 's.mruthyunjaya05@gmail.com', 2147483647, 'bknk', 'sent to admins', 133, 8, '2025-03-06 17:04:33'),
(6, 'S', 'Mruthyunjaya', 'gat', 'S MRUTHYUNJAYA', 'Bangalore, Karnataka', 'India', 560072, 's.mruthyunjaya05@gmail.com', 2147483647, 'help', 'sent to admins', 133, 8, '2025-04-01 13:50:39'),
(7, 'S', 'Mruthyunjaya', 'Global Academy of Technology', 'Plot No:205, 80 Feet Road, Manganahalli Cross Ullal Main Road, opposite Muneeshwara Temple, circle, Bengaluru, Karnataka 560110', 'BANGALORE URBAN', 'India', 560110, 's.prathimaveeresh@gmail.com', 2147483647, 'hiii', 'sent to admins', 36, 8, '2025-04-01 14:08:36'),
(8, 'S', 'Mruthyunjaya', 'Global Academy of Technology', 'Plot No:205, 80 Feet Road, Manganahalli Cross Ullal Main Road, opposite Muneeshwara Temple, circle, Bengaluru, Karnataka 560110', 'BANGALORE URBAN', 'India', 560110, 's.prathimaveeresh@gmail.com', 2147483647, 'hiiii', 'sent to admins', 36, 8, '2025-04-01 14:16:35'),
(9, 'S', 'Mruthyunjaya', 'gat', 'S MRUTHYUNJAYA', 'Bangalore, Karnataka', 'India', 560072, 's.mruthyunjaya05@gmail.com', 2147483647, 'hh', 'sent to admins', 182, 6, '2025-09-04 20:20:08');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(3) NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` varchar(200) NOT NULL,
  `price` varchar(20) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `image` varchar(200) NOT NULL,
  `category_id` int(3) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `description`, `price`, `quantity`, `image`, `category_id`, `status`, `created_at`) VALUES
(1, 'Tomato', 'fresho! Tomato - Hybrid, Organically Grown (Loose), 1 kg', '81', 1, 'Tomato.jpg', 1, 1, '2024-10-26 16:41:24'),
(2, 'Apple', 'fresho! Apple - Royal Gala, Regular, 2x4 pcs Multipack', '364', 1, 'Apple.jpg', 4, 1, '2024-10-26 16:41:24'),
(3, 'Dragon Fruit', 'fresho! Dragon Fruit (Loose), 1 pc (Approx. 300 g - 400 g)', '85', 1, 'Dragon Fruit.jpg', 4, 1, '2024-10-26 16:46:34'),
(4, 'Banana', 'fresho! Banana - Robusta, 500 g', '16.4', 1, 'Banana.jpg', 4, 1, '2024-10-26 16:46:34'),
(5, 'Chicken Breast', 'fresho! Chicken Breast - Boneless, 2-4 Pcs, 500 g (2- 4 pcs)', '189', 5, 'Chicken Breast.jpg', 2, 1, '2024-10-26 16:50:38'),
(6, 'Rohu Fish ', 'fresho! Rohu Curry Cut/Bengali Cut 6-8 pcs, 450 g', '189', 1, 'Rohu Fish.jpg', 3, 1, '2024-10-26 16:50:38'),
(7, 'Beans', 'fresho! Beans - Haricot (Loose), 1 kg', '115.07', 4, 'Beans.jpg', 1, 1, '2024-11-04 13:47:07'),
(8, 'Carrot', 'fresho! Carrot - Orange (Loose), 1 kg', '82', 4, 'Carrot.jpg', 1, 1, '2024-11-04 13:55:47'),
(9, 'Cabbage', 'fresho! Cabbage - Organically Grown (Loose), 1 pc (approx. 300-1.3 Kg)\r\n', '23.5', 1, 'Cabbage.jpg', 1, 1, '2024-11-04 13:55:47'),
(10, 'Red Snapper', 'Red Snapper / Chempalli / Rane (Large) (700g to 3.6kg)', '309', 1, 'Red Snapper.jpg', 3, 1, '2024-11-04 14:43:44'),
(11, 'Whole Chicken', 'Premium Antibiotic-residue-free Chicken Dressed with Skin', '310', 1, 'Chicken.jpg', 2, 1, '2024-11-04 14:01:12'),
(12, 'Cucumber', 'fresho! Cucumber, 300 g', '10', 1, 'Cucumber.jpg', 1, 1, '2024-11-04 14:01:12'),
(13, 'Egg', 'fresho! Farm Eggs - Regular, 6 pcs', '49', 1, 'Egg.jpg', 2, 1, '2024-11-04 14:29:37'),
(14, 'Curry cut Mutton', 'For the finest mutton Connoisseurs - lamb that is tender and between 4 – 12 months old', '599', 1, 'Curry cut.jpg', 2, 1, '2024-11-04 14:29:37'),
(15, 'Garlic', 'fresho! Garlic - Organically Grown (Loose), 500 g', '254.4', 1, 'Garlic.jpg', 1, 1, '2024-11-04 14:32:04'),
(16, 'Mutton', 'Premium Tender Lamb - Curry Cut\r\n', '499', 1, 'mutton 3.jpg', 2, 1, '2024-11-04 14:15:30'),
(17, 'Grapes', 'fresho! Grapes - Bangalore Blue, 1 kg', '106.3', 1, 'Grapes.jpg', 4, 1, '2024-11-04 14:34:49'),
(18, 'Green Capsicum', 'fresho! Capsicum - Green, Organically Grown (Loose), 1 kg', '98', 1, 'Green Capsicum.jpg', 1, 1, '2024-11-04 14:34:49'),
(19, 'Herring', 'Thorny Herring / Thodi (10+ Count/kg)', '139', 1, 'Herring.jpg', 3, 1, '2024-11-04 14:39:14'),
(20, 'Keema', 'Premium Lamb Mince / Kheema\r\n', '625', 1, 'Keema.jpg', 2, 1, '2024-11-04 14:39:14'),
(21, 'Kiwi', 'fresho! Zespri Kiwi - Sun Gold, 3 pcs Approx. 220 g - 260 g', '277.97', 1, 'Kiwi.jpg', 4, 1, '2024-11-04 14:46:15'),
(22, 'Lobster', ' Wild Rock Lobster - 1 Piece (Size 3 to 3.1kg)', '900', 1, 'Lobster.jpg', 3, 1, '2024-11-04 14:46:15'),
(23, 'Mango', 'fresho! Mango - Alphonso/Ratnagiri, 2 pcs (Approx. 225 g - 250g per pc)', '169.86', 1, 'Mango.jpg', 4, 1, '2024-11-04 14:49:18'),
(24, 'Green chilli', 'fresho! Chilli - Green, Organically Grown (Loose), 950 g', '143.56', 1, 'green chilli.jpg', 1, 1, '2024-11-04 15:47:13'),
(25, 'Mutton Sholder', 'Premium Goat Raan / Shoulder Portion', '995', 1, 'Mutton Sholder.jpg', 2, 1, '2024-11-04 14:52:06'),
(26, 'Mutton Leg', 'Premium Goat Raan / Leg Portion ', '885', 1, 'Mutton.jpg', 2, 1, '2024-11-04 14:52:06'),
(27, 'Onion', 'fresho! Onion (Loose), 1 kg', '60', 1, 'Onion.jpg', 1, 1, '2024-11-04 14:54:39'),
(28, 'Orange', 'fresho! Orange - Nagpur, Regular (Loose), 1 kg (Approx. 6 - 8 pcs)', '85', 1, 'Orange.jpg', 4, 1, '2024-11-04 14:54:39'),
(29, 'Papaya', 'fresho! Papaya - Medium, 1.25 kg (1 pc)', '113.48', 1, 'Papaya.jpg', 4, 1, '2024-11-04 14:56:57'),
(30, 'Pineapple', 'fresho! Pineapple, 1 pc 800 g -1000 g', '86.41', 1, 'Pineapple.jpg', 4, 1, '2024-11-04 14:56:57'),
(31, 'Pomegranate', 'fresho! Pomegranate - Regular, 1 kg (5-7 pcs per kg)', '197', 1, 'Pomegranate.jpg', 4, 1, '2024-11-04 15:02:13'),
(32, 'Pork Slices', 'Prasuma Pork - Belly Slice, 200 g Vacuum Packed', '550', 1, 'Pork Slices.jpg', 2, 1, '2024-11-04 15:02:13'),
(33, 'Pork', 'Prasuma Pork - Loin Slice, 980 g Vacuum Packed', '899', 1, 'Pork.jpg', 2, 1, '2024-11-04 15:16:25'),
(34, 'Prawns', 'Indian Prawns / Venami / Vannamei / Jhinga / Chemmin / (60+ Count/kg)', '568', 1, 'prawns.jpg', 3, 1, '2024-11-04 15:16:25'),
(35, 'Catla', 'Catla / (1kg to 2kg)', '139', 1, 'Catla.jpg', 3, 1, '2024-11-04 15:21:44'),
(36, 'Red Capsicum', 'fresho! Capsicum - Red (Loose), 1 kg', '280.05', 1, 'Red Capsicum.jpg', 1, 1, '2024-11-04 15:30:15'),
(37, 'pomfret fish', 'Black Pomfret / Karutha Avoli / Halwa Fish / (700g to 1kg)', '549', 1, 'pomfret fish.jpg', 3, 1, '2024-11-04 15:30:15'),
(38, 'Seer Fish Curry Cut', 'Seer Fish / KingFish / Surmai / Neymeen / Vanjaram / Anjal / (2kg to 5kg)', '749', 1, 'Seer Fish Curry Cut.jpg', 3, 1, '2024-11-04 15:37:53'),
(39, 'Silver Sardine', 'White Sardine / Veloori / Silver Fish / White Fish (160+ Count/kg)', '139', 1, 'Small Fish.jpg', 3, 1, '2024-11-04 15:41:04'),
(40, 'Tuna fish', 'Yellow Fin Tuna / Kera / (1.2kg to 2.5kg)', '550', 1, 'Tuna fish.jpg', 3, 1, '2024-11-04 15:41:04');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `fullname` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `username` varchar(200) NOT NULL,
  `mypassword` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullname`, `email`, `username`, `mypassword`, `image`, `created_at`) VALUES
(1, 'Mruthyunjaya S', 's.mruthyunjaya05@gmail.com', 'mruthyunjaya_05', '$2y$10$kBPfPkI2bRZXn2VRtt.NTuKeYPlo/sn2t4kfF9hMx6qmPxUqP7P2e', 'avatar.png', '2024-10-21 16:35:15'),
(2, 'Mruthyunjaya S', 's.mruthyunjaya05@gmail.com', 'mruthyunjaya_05', '$2y$10$LiRiZbZ1oMniXwSmw.0vzeRmJ0TaANTY1eWZH4FEdSA88DayLLF86', 'avatar.png', '2024-10-21 16:35:53'),
(3, 'trayambak', 'trayambak2006@gmail.com', 'yua0763', '$2y$10$WeL5/n9fMnfmHY0hggZP2umUJGi1O/rMUjBO32QikCv/ByL6PZzJO', 'avatar.png', '2024-10-21 16:38:48'),
(4, 'Naga', 'trayambak2006@gmail.com', 'crazy_artsy05', '$2y$10$8CE8VQK4noaXrb.i/mSmH.AvPd5FkdfO3F9ejLZ4Gd2UsvpH8RsMy', 'avatar.png', '2024-10-22 15:18:15'),
(5, 'Veeresh S', 'vaishnavmj2006@gmail.com', 'crazy_artsy05', '$2y$10$IuugOhJH3l5FxaiSGiKoU.JJcXeqFJ2XkCfKOnHH.JVpvIgLiEpBe', 'avatar.png', '2024-10-22 15:53:28'),
(6, 'Veeresh S', 'S.aaaaaasde@gmail.com', 'crazy', '$2y$10$mrBDdRuR7HhbzFFByXUJMewWRVizhOv39OcLuqn5KP4AaCaQMCVg2', 'user.png', '2024-10-23 15:18:28'),
(7, 'Mruthyunjaya S', 's.mruthyunjaya05@gmail.com', 'Mruthyunjaya S', '$2y$10$Ylgwm6riCRzO3f74RIIFhOJCdzwBsKpKaV8ouaOW5UHzbE.qsjeF6', 'user.png', '2025-03-02 06:29:16'),
(8, 'Veeresh S', 's.veeresh4350@gmail.com', 'Mruthyunjaya S', '$2y$10$7kN4/n2/fydbNfS4t7RGHu0fOL16AkaU8XTB3V.7x8skX2Gfm5DJu', 'user.png', '2025-03-05 12:12:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
