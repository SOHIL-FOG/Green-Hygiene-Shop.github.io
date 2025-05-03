-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 22, 2024 at 04:27 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vegetable`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `user_id`, `name`, `email`, `number`, `message`) VALUES
(8, 31, 'sohil', 'st123@gmail.com', '4569874512', 'nice');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `email` varchar(100) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` varchar(50) NOT NULL,
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `category` varchar(20) NOT NULL,
  `details` varchar(500) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `category`, `details`, `price`, `image`) VALUES
(1, 'Artichoke', 'vegitables', 'don&#39;t panic, go organice\r\nReach For A Healthier You With Organic Foods\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Iusto natus culpa officia quasi, accusantium explicabo?', 120, 'Artichoke.jpg'),
(3, 'Beets', 'vegitables', 'don&#39;t panic, go organice\r\nReach For A Healthier You With Organic Foods\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Iusto natus culpa officia quasi, accusantium explicabo?', 120, 'Beets.jpeg'),
(4, 'Bell Pepper', 'vegitables', 'don&#39;t panic, go organice\r\nReach For A Healthier You With Organic Foods\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Iusto natus culpa officia quasi, accusantium explicabo?', 120, 'Bell Pepper.jpg'),
(5, 'brinjal', 'vegitables', 'don&#39;t panic, go organice\r\nReach For A Healthier You With Organic Foods\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Iusto natus culpa officia quasi, accusantium explicabo?', 120, 'brinjal.png'),
(6, 'Broccoli', 'vegitables', 'don&#39;t panic, go organice\r\nReach For A Healthier You With Organic Foods\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Iusto natus culpa officia quasi, accusantium explicabo?', 120, 'Broccoli.jpg'),
(7, 'Brussels Sprouts', 'vegitables', 'don&#39;t panic, go organice\r\nReach For A Healthier You With Organic Foods\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Iusto natus culpa officia quasi, accusantium explicabo?', 120, 'Brussels Sprouts.jpeg'),
(8, 'Carrots', 'vegitables', 'Carrots', 120, 'Carrots.jpg'),
(9, 'Cauliflower', 'vegitables', 'don&#39;t panic, go organice\r\nReach For A Healthier You With Organic Foods\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Iusto natus culpa officia quasi, accusantium explicabo?', 120, 'Cauliflower.jpg'),
(10, 'cucumbers', 'vegitables', 'don&#39;t panic, go organice\r\nReach For A Healthier You With Organic Foods\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Iusto natus culpa officia quasi, accusantium explicabo?', 120, 'cucumbers.jpg'),
(11, 'Green Beans', 'vegitables', 'don&#39;t panic, go organice\r\nReach For A Healthier You With Organic Foods\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Iusto natus culpa officia quasi, accusantium explicabo?', 120, 'Green Beans.jpg'),
(12, 'Jicama', 'vegitables', 'don&#39;t panic, go organice\r\nReach For A Healthier You With Organic Foods\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Iusto natus culpa officia quasi, accusantium explicabo?', 120, 'Jicama.jpg'),
(13, 'Kale', 'vegitables', 'don&#39;t panic, go organice\r\nReach For A Healthier You With Organic Foods\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Iusto natus culpa officia quasi, accusantium explicabo?', 120, 'Kale.jpg'),
(14, 'Lasun', 'vegitables', 'don&#39;t panic, go organice\r\nReach For A Healthier You With Organic Foods\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Iusto natus culpa officia quasi, accusantium explicabo?', 120, 'Lasun.jpeg'),
(15, 'Okra', 'vegitables', 'don&#39;t panic, go organice\r\nReach For A Healthier You With Organic Foods\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Iusto natus culpa officia quasi, accusantium explicabo?', 120, 'Okra.jpg'),
(16, 'Onion', 'vegitables', 'don&#39;t panic, go organice\r\nReach For A Healthier You With Organic Foods\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Iusto natus culpa officia quasi, accusantium explicabo?', 120, 'Onion.jpg'),
(17, 'parsely', 'vegitables', 'don&#39;t panic, go organice\r\nReach For A Healthier You With Organic Foods\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Iusto natus culpa officia quasi, accusantium explicabo?', 120, 'parsely.jpeg'),
(18, 'Potatoes', 'vegitables', 'don&#39;t panic, go organice\r\nReach For A Healthier You With Organic Foods\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Iusto natus culpa officia quasi, accusantium explicabo?', 120, 'Potatoes.jpg'),
(19, 'Radish', 'vegitables', 'don&#39;t panic, go organice\r\nReach For A Healthier You With Organic Foods\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Iusto natus culpa officia quasi, accusantium explicabo?', 120, 'Radish.png'),
(20, 'Snake beans', 'vegitables', 'don&#39;t panic, go organice\r\nReach For A Healthier You With Organic Foods\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Iusto natus culpa officia quasi, accusantium explicabo?', 120, 'Snake beans.jpg'),
(21, 'Squash', 'vegitables', 'don&#39;t panic, go organice\r\nReach For A Healthier You With Organic Foods\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Iusto natus culpa officia quasi, accusantium explicabo?', 120, 'Squash.jpg'),
(22, 'Tomatoes', 'vegitables', 'don&#39;t panic, go organice\r\nReach For A Healthier You With Organic Foods\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Iusto natus culpa officia quasi, accusantium explicabo?', 120, 'Tomatoes.jpg'),
(23, 'Lemon', 'vegitables', 'don&#39;t panic, go organice\r\nReach For A Healthier You With Organic Foods\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Iusto natus culpa officia quasi, accusantium explicabo?', 120, 'Lemon.jpg'),
(24, 'images', 'vegitables', 'don&#39;t panic, go organice\r\nReach For A Healthier You With Organic Foods\r\nLorem ipsum dolor sit amet consectetur adipisicing elit. Iusto natus culpa officia quasi, accusantium explicabo?', 120, 'images.jpeg'),
(27, ' Asparagus', 'vegitables', 'don&#39;t panic, go organice Reach For A Healthier You With Organic Foods Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto natus culpa officia quasi, accusantium explicabo?', 120, 'Asparagus.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_type` varchar(20) NOT NULL DEFAULT 'user',
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `user_type`, `image`) VALUES
(31, 'admin', 'admin@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'admin', 'rku.png'),
(32, 'user', 'user123@gmail.com', '202cb962ac59075b964b07152d234b70', 'user', 'k.png');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
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
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
