-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 14, 2020 at 08:16 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ffc`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `ad_id` int(11) NOT NULL,
  `ad_uname` varchar(125) NOT NULL,
  `ad_email` varchar(125) NOT NULL,
  `ad_ph` bigint(10) NOT NULL,
  `ad_pwd` varchar(125) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`ad_id`, `ad_uname`, `ad_email`, `ad_ph`, `ad_pwd`) VALUES
(1, 'akhilxx', 'akhilrnadh380@gmail.com', 2147483647, '1234');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `textarea` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `delivery`
--

CREATE TABLE `delivery` (
  `id` int(11) NOT NULL,
  `orderid` int(11) NOT NULL,
  `ordereduser` varchar(125) NOT NULL,
  `usercontact` bigint(10) NOT NULL,
  `useraddress` varchar(1000) NOT NULL,
  `payment_type` varchar(11) NOT NULL,
  `totalprice` int(11) NOT NULL,
  `res_status` varchar(11) NOT NULL,
  `delivery_status` varchar(11) NOT NULL,
  `deliveryboy` varchar(125) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `delivery`
--

INSERT INTO `delivery` (`id`, `orderid`, `ordereduser`, `usercontact`, `useraddress`, `payment_type`, `totalprice`, `res_status`, `delivery_status`, `deliveryboy`) VALUES
(1, 2, 'Akhil Nadh', 8129510804, 'Kollam', 'cod', 70, 'shipped', 'delivered', 'anand'),
(2, 3, 'Shambhu r nadh', 8921276329, 'vadakke vayakkal, meenathucherry, kavanadu, kollam', 'online', 280, 'shipped', 'delivered', 'anand'),
(3, 4, 'Akhil Nadh', 8129510804, 'Kollam', 'online', 80, 'shipped', 'delivered', 'anand'),
(5, 21, 'Amal Micheal', 9995678765, 'Amal Michael, amalmicheal house, Chinnakada, kollam', 'cod', 320, 'shipped', 'delivered', 'anand'),
(6, 22, 'Shambhu r nadh', 8921276329, 'vadakke vayakkal, meenathucherry, kavanadu, kollam', 'online', 100, 'shipped', 'delivered', 'anand'),
(7, 28, 'Shambhu r nadh', 8921276329, 'vadakke vayakkal, meenathucherry, kavanadu, kollam', 'online', 40, 'shipped', 'delivered', 'anand'),
(8, 17, 'Akhil Nadh', 8129510804, 'vadakke vayakkal, meenathucherry, kavanadu, kollam, kerala', 'cod', 450, 'shipped', 'delivered', 'anand'),
(10, 30, 'subin sha', 8078320813, 'subin nivas, chavara, kollam', 'online', 360, 'shipped', 'delivered', 'anand'),
(11, 31, 'Akhil Nadh', 8129510804, 'vadakke vayakkal, meenathucherry, kavanadu, kollam, kerala', 'online', 998, 'shipped', 'delivered', 'anand');

-- --------------------------------------------------------

--
-- Table structure for table `deliveryboy`
--

CREATE TABLE `deliveryboy` (
  `id` int(11) NOT NULL,
  `name` varchar(125) NOT NULL,
  `uname` varchar(125) NOT NULL,
  `email` varchar(125) NOT NULL,
  `bgroup` varchar(11) NOT NULL,
  `license` varchar(125) NOT NULL,
  `contact` bigint(10) NOT NULL,
  `address` varchar(500) NOT NULL,
  `profile` varchar(1000) NOT NULL,
  `pwd` varchar(125) NOT NULL,
  `status` varchar(3) NOT NULL,
  `dstatus` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `deliveryboy`
--

INSERT INTO `deliveryboy` (`id`, `name`, `uname`, `email`, `bgroup`, `license`, `contact`, `address`, `profile`, `pwd`, `status`, `dstatus`) VALUES
(2, 'Akhil Nadh', 'akhilxx', 'tricktrendz@gmail.com', 'AB+', 'kdsciu173553883hdddu', 8129510804, 'Kollam', '5eef1df3a88777.44821793.jpg', '1234', 'yes', 'Not Ready'),
(3, 'Anand S', 'anand', 'anand@gmail.com', 'AB+', '800274fggdt90003', 9995331824, 'Anchalumoodu, Kollam,', '5ef036efc8b1c9.12224593.jpg', '1234', 'yes', 'Ready');

-- --------------------------------------------------------

--
-- Table structure for table `foodlist`
--

CREATE TABLE `foodlist` (
  `fid` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `fprice` varchar(30) NOT NULL,
  `fdescription` varchar(1000) NOT NULL,
  `frestaurents` varchar(50) NOT NULL,
  `fimage` varchar(125) NOT NULL,
  `manager` varchar(125) NOT NULL,
  `foodstatus` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `foodlist`
--

INSERT INTO `foodlist` (`fid`, `fname`, `fprice`, `fdescription`, `frestaurents`, `fimage`, `manager`, `foodstatus`) VALUES
(1, 'Chiken Curry', '70', 'Chiken curry from AR Restaurent', 'AR Restaurent', '5ea2dfe6077cf2.51415768.jpg', 'arteam', 'available'),
(2, 'Sharja Shake', '40', 'Cool sharja shake at rs40 only', 'Saleem Hotel', '5ef19377f1f2c0.38291747.jfif', 'saleem@123', 'available'),
(3, 'Pepsi', '20', '1 bottle pepsi for 20rs only', 'Saleem Hotel', '5ef1939e71aff2.42386668.jfif', 'saleem@123', 'available'),
(4, 'Rice Pathiri with chikken curry', '120', '4 Rice Pathiri with 1 chicken curry at rs 120 only', 'Saleem Hotel', '5ef193ee18ae12.88353428.jfif', 'saleem@123', 'available'),
(5, 'Prawn Fry', '80', 'prawn fry at rs 80 only', 'Saleem Hotel', '5ef1941ecddc24.94919636.jfif', 'saleem@123', 'available'),
(6, 'Prawn curry', '80', 'Prawn curry in salleem hotel @rs 80', 'Saleem Hotel', '5ef194569a17d1.11891582.jfif', 'saleem@123', 'available'),
(7, 'Poratta with beef', '80', '4 Poratta with 1 plate beef curry at 80rs', 'Saleem Hotel', '5ef1949101b087.94342937.jfif', 'saleem@123', 'available'),
(8, 'Poratta with Chicken Fry', '120', '4 poratta with 1 plate chicken fry', 'Saleem Hotel', '5ef194bc1b1239.93199773.jfif', 'saleem@123', 'available'),
(9, 'Masala Dhosha', '40', '1 masala dhosha @ rs 40', 'Saleem Hotel', '5ef194ef80a818.79777877.jfif', 'saleem@123', 'available'),
(10, 'Lime Juice', '20', 'Cool Packed lime juice at rs 20 only', 'Saleem Hotel', '5ef19512be9236.81018592.jfif', 'saleem@123', 'available'),
(11, 'Full chicken', '360', '1kg full chciken at rs 360', 'AR Restaurent', '5ef1955dc80a38.72194480.jfif', 'arteam', 'available'),
(12, 'Fried Chicken', '100', 'Fried chicken @ rs 100', 'AR Restaurent', '5ef19587353fa0.21681252.jfif', 'arteam', 'available'),
(13, 'Chilli Chicken', '130', '1kg chilli chicken @ rs130', 'AR Restaurent', '5ef195b0a5f4a5.69006089.jfif', 'arteam', 'notavailable'),
(14, 'Chicken curry', '90', 'chicken curry @90', 'AR Restaurent', '5ef1973e467999.87420905.jfif', 'arteam', 'notavailable'),
(15, 'Appam ', '30', '4 appam @30', 'AR Restaurent', '5ef19760397f56.27784370.jfif', 'arteam', 'available'),
(17, 'Fish fry', '70', '1 fish fry for 70rs', 'AR Restaurent', '5f2cf99c953c88.83840915.jfif', 'arteam', 'available'),
(18, 'shavarma', '60', '1 sharma cost 60rs', 'AR Restaurent', '5fd710c313e539.18791576.jfif', 'arteam', 'available');

-- --------------------------------------------------------

--
-- Table structure for table `foodorders`
--

CREATE TABLE `foodorders` (
  `orderid` int(11) NOT NULL,
  `fid` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `fprice` int(30) NOT NULL,
  `frestaurent` varchar(50) NOT NULL,
  `qty` int(10) NOT NULL,
  `ordereduser` varchar(125) NOT NULL,
  `totalprice` int(125) NOT NULL,
  `ordered_date` date DEFAULT NULL,
  `payment_type` varchar(20) NOT NULL,
  `res_status` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `foodorders`
--

INSERT INTO `foodorders` (`orderid`, `fid`, `fname`, `fprice`, `frestaurent`, `qty`, `ordereduser`, `totalprice`, `ordered_date`, `payment_type`, `res_status`) VALUES
(2, 1, 'Chiken Curry', 70, 'AR Restaurent', 1, 'akhilxx', 70, '2020-06-22', 'cod', 'delivered'),
(3, 1, 'Chiken Curry', 70, 'AR Restaurent', 4, 'shambhuxx', 280, '2020-06-23', 'online', 'accept'),
(4, 9, 'Masala Dhosha', 40, 'Saleem Hotel', 2, 'akhilxx', 80, '2020-06-23', 'online', 'accept'),
(11, 14, 'Chicken curry', 90, 'AR Restaurent', 5, 'akhilxx', 450, '2020-06-25', 'cod', 'waiting'),
(12, 15, 'Appam ', 30, 'AR Restaurent', 1, 'akhilxx', 30, '2020-06-25', 'cod', 'waiting'),
(13, 10, 'Lime Juice', 20, 'Saleem Hotel', 2, 'shambhuxx', 40, '2020-06-25', 'cod', 'waiting'),
(14, 9, 'Masala Dhosha', 40, 'Saleem Hotel', 2, 'shambhuxx', 80, '2020-06-25', 'cod', 'waiting'),
(15, 7, 'Poratta with beef', 80, 'Saleem Hotel', 1, 'akhilxx', 80, '2020-06-26', 'online', 'waiting'),
(16, 2, 'Sharja Shake', 40, 'Saleem Hotel', 1, 'akhilxx', 40, '2020-06-26', 'online', 'waiting'),
(17, 14, 'Chicken curry', 90, 'AR Restaurent', 5, 'akhilxx', 450, '2020-06-26', 'cod', 'delivered'),
(18, 14, 'Chicken curry', 90, 'AR Restaurent', 1, 'Amal', 90, '2020-06-28', 'cod', 'waiting'),
(19, 9, 'Masala Dhosha', 40, 'Saleem Hotel', 1, 'Amal', 40, '2020-06-30', 'cod', 'waiting'),
(20, 10, 'Lime Juice', 20, 'Saleem Hotel', 1, 'Amal', 20, '2020-06-30', 'cod', 'waiting'),
(21, 7, 'Poratta with beef', 80, 'Saleem Hotel', 4, 'Amal', 320, '2020-06-30', 'cod', 'delivered'),
(22, 12, 'Fried Chicken', 100, 'AR Restaurent', 1, 'shambhuxx', 100, '2020-06-30', 'online', 'delivered'),
(25, 11, 'Full chicken', 360, 'AR Restaurent', 1, 'Amal', 360, '2020-07-01', 'cod', 'accept'),
(28, 2, 'Sharja Shake', 40, 'Saleem Hotel', 1, 'shambhuxx', 40, '2020-07-01', 'online', 'delivered'),
(30, 11, 'Full chicken', 360, 'AR Restaurent', 1, 'subin', 360, '2020-07-06', 'online', 'delivered'),
(31, 16, 'chicken', 499, 'kfcnew', 2, 'akhilxx', 998, '2020-07-06', 'online', 'delivered'),
(32, 11, 'Full chicken', 360, 'AR Restaurent', 1, 'akhilxx', 360, '2020-08-07', 'cod', 'accept'),
(33, 12, 'Fried Chicken', 100, 'AR Restaurent', 2, 'akhilxx', 200, '2020-08-08', 'cod', 'waiting'),
(34, 12, 'Fried Chicken', 100, 'AR Restaurent', 2, 'akhilxx', 200, '2020-08-08', 'online', 'decline'),
(35, 11, 'Full chicken', 360, 'AR Restaurent', 5, 'akhilxx', 1800, '2020-08-08', 'online', 'accept'),
(36, 9, 'Masala Dhosha', 40, 'Saleem Hotel', 4, 'akhilxx', 160, '2020-08-08', 'cod', 'waiting');

-- --------------------------------------------------------

--
-- Table structure for table `restaurents`
--

CREATE TABLE `restaurents` (
  `rid` int(11) NOT NULL,
  `rname` varchar(50) NOT NULL,
  `runame` varchar(100) NOT NULL,
  `remail` varchar(100) NOT NULL,
  `rplace` varchar(100) NOT NULL,
  `rcontactno` bigint(10) NOT NULL,
  `raddress` text NOT NULL,
  `rpwd` varchar(30) NOT NULL,
  `status` varchar(125) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `restaurents`
--

INSERT INTO `restaurents` (`rid`, `rname`, `runame`, `remail`, `rplace`, `rcontactno`, `raddress`, `rpwd`, `status`) VALUES
(3, 'AR Restaurent', 'arteam', 'arrestaurent@gmail.com', 'Kavanadu', 8921276329, 'AR Resataurent, Kavanadu, Kollam', '1234', 'enable'),
(4, 'Zaviour Hotel', 'Teamzaviour', 'Zavioursrestaurent@gmail.com', 'Chinnakada', 8129510804, 'Chinnakada, Kollam', '1234', 'disable'),
(5, 'Rameez Hotel', 'rameez', 'Rameez@gmail.com', 'Chinnakada', 9142576674, 'Rameez, Chinnakada, Kollam', '1234', 'disabled'),
(6, 'Saleem Hotel', 'saleem@123', 'saleemhotel@gmail.com', 'Chinnakada', 9995775563, 'Chinnakada, Kollam', '1234', 'enable');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `contactno` bigint(10) NOT NULL,
  `address` varchar(500) NOT NULL,
  `pwd` varchar(30) NOT NULL,
  `profile` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullname`, `username`, `email`, `contactno`, `address`, `pwd`, `profile`) VALUES
(1, 'Akhil Nadh', 'akhilxx', 'akhilrnadh380@gmail.com', 8129510804, 'vadakke vayakkal, meenathucherry, kavanadu, kollam, kerala', '1234', '../uploads/FB_IMG_15896054990128473.jpg'),
(2, 'Shambhu r nadh', 'shambhuxx', 'shambhuxx@gmail.com', 8921276329, 'vadakke vayakkal, meenathucherry, kavanadu, kollam', '1234', '../uploads/199A8056.jpg'),
(3, 'Amal Micheal', 'Amal', 'Amalmichael123@gmail.com', 9995678765, 'Amal Michael, amalmicheal house, Chinnakada, kollam', '1234', '../uploads/defaultprofile.png'),
(5, 'subin sha', 'subin', 'subin@gmail.com', 8078320813, 'subin nivas, chavara, kollam', '1234', '../uploads/FB_IMG_15896055143069540.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`ad_id`),
  ADD UNIQUE KEY `ad_uname` (`ad_uname`),
  ADD UNIQUE KEY `ad_ph` (`ad_ph`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery`
--
ALTER TABLE `delivery`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orderid` (`orderid`);

--
-- Indexes for table `deliveryboy`
--
ALTER TABLE `deliveryboy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `foodlist`
--
ALTER TABLE `foodlist`
  ADD PRIMARY KEY (`fid`);

--
-- Indexes for table `foodorders`
--
ALTER TABLE `foodorders`
  ADD PRIMARY KEY (`orderid`);

--
-- Indexes for table `restaurents`
--
ALTER TABLE `restaurents`
  ADD PRIMARY KEY (`rid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `contactno` (`contactno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `ad_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `delivery`
--
ALTER TABLE `delivery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `deliveryboy`
--
ALTER TABLE `deliveryboy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `foodlist`
--
ALTER TABLE `foodlist`
  MODIFY `fid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `foodorders`
--
ALTER TABLE `foodorders`
  MODIFY `orderid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `restaurents`
--
ALTER TABLE `restaurents`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
