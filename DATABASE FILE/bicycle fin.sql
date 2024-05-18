-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 25, 2023 at 08:50 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carmat`
--

-- --------------------------------------------------------

--
-- Table structure for table `bicycle`
--

CREATE TABLE `bicycle` (
  `b_id` int(20) NOT NULL,
  `b_name` varchar(50) NOT NULL,
  `b_idfino` varchar(50) NOT NULL,
  `b_img` varchar(50) DEFAULT 'NA',
  `tube_price_per_hour` float NOT NULL,
  `tubeless_price_per_hour` float NOT NULL,
  `tube_price_per_day` float NOT NULL,
  `tubeless_price_per_day` float NOT NULL,
  `bicycle_availability` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bicycle`
--

INSERT INTO `bicycle` (`b_id`, `b_name`, `b_idfino`, `b_img`, `tube_price_per_hour`, `tubeless_price_per_hour`, `tube_price_per_day`, `tubeless_price_per_day`, `bicycle_availability`) VALUES
(1, 'MONTRA BRONZE L2', 'SHD001MTW', 'assets/img/bicycle/001.png', 36, 26, 5200, 2600, 'no'),
(2, 'Atlas', 'SHD002ATL', 'assets/img/bicycle/002.png', 22, 12, 2900, 1400, 'yes'),
(3, 'MOUNTAIN ATV', 'SHD003ATV', 'assets/img/bicycle/003.png', 39, 30, 6950, 5999, 'yes'),
(4, 'HERCULES SPRINT', 'SHD004SPR', 'assets/img/bicycle/004.png', 45, 30, 7200, 5200, 'yes'),
(6, 'HERO MECHTRIP', 'SHD006MCH', 'assets/img/bicycle/006.png', 21, 13, 3890, 2600, 'yes'),
(7, 'AVLON MTX', 'SHD007MTX', 'assets/img/bicycle/007.png', 14, 12, 2800, 2400, 'no'),
(8, 'FIREFLY MTX', 'SHD008FRF', 'assets/img/bicycle/008.png', 36, 26, 6000, 4600, 'yes'),
(9, 'HERCULES RIDER', 'SHD009RDR', 'assets/img/bicycle/009.png', 20, 12, 2900, 1400, 'yes'),
(10, 'CARBON LIGHT X', 'SHD010LHT', 'assets/img/bicycle/010.png', 22, 15, 2850, 1400, 'yes'),
(11, 'HERO RIDER MT', 'SHD011HRE', 'assets/img/bicycle/011.png', 15, 13, 3000, 2600, 'yes'),
(12, 'BSA MTX', 'SHD012BSA', 'assets/img/bicycle/012.png', 16, 14, 3200, 2800, 'yes'),
(13, 'HERO RIDEX P', 'SHD013RPD', 'assets/img/bicycle/012.png', 23, 15, 4500, 3500, 'yes'),
(14, 'AVLON MTP', 'SHD014MTA', 'assets/img/bicycle/014.png', 39, 29, 6100, 4380, 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `clientcars`
--

CREATE TABLE `clientcars` (
  `b_id` int(20) NOT NULL,
  `client_username` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `clientcars`
--

INSERT INTO `clientcars` (`b_id`, `client_username`) VALUES
(1, 'you'),
(2, 'you'),
(3, 'you'),
(4, 'you'),
(6, 'you'),
(7, 'you'),
(8, 'you'),
(9, 'you'),
(10, 'you'),
(11, 'you'),
(12, 'you'),
(13, 'you'),
(14, 'you');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `client_username` varchar(50) NOT NULL,
  `client_name` varchar(50) NOT NULL,
  `client_phone` varchar(15) NOT NULL,
  `client_email` varchar(25) NOT NULL,
  `client_address` varchar(50) CHARACTER SET utf8 COLLATE utf8_estonian_ci NOT NULL,
  `client_password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`client_username`, `client_name`, `client_phone`, `client_email`, `client_address`, `client_password`) VALUES
('harry', 'Harry Den', '9876543210', 'harryden@gmail.com', '2477  Harley Vincent Drive', 'password'),
('jenny', 'Jeniffer Washington', '7850000069', 'washjeni@gmail.com', '4139  Mesa Drive', 'jenny'),
('you', 'Yourself', '900696969', 'tom@gmail.com', '4645  Dawson Drive', 'password');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_username` varchar(50) NOT NULL,
  `customer_name` varchar(50) NOT NULL,
  `customer_phone` varchar(15) NOT NULL,
  `customer_email` varchar(25) NOT NULL,
  `customer_address` varchar(50) NOT NULL,
  `customer_password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_username`, `customer_name`, `customer_phone`, `customer_email`, `customer_address`, `customer_password`) VALUES
('antonio', 'Antonio M', '0785556580', 'antony@gmail.com', '2677  Burton Avenue', 'password'),
('christine', 'Christine', '8544444444', 'chr@gmail.com', '3701  Fairway Drive', 'password'),
('ethan', 'Ethan Hawk', '69741111110', 'thisisethan@gmail.com', '4554  Rowes Lane', 'password'),
('james', 'James Washington', '0258786969', 'james@gmail.com', '2316  Mayo Street', 'password'),
('lucas', 'Lucas Rhoades', '7003658500', 'lucas@gmail.com', '2737  Fowler Avenue', 'password');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `name` varchar(20) NOT NULL,
  `e_mail` varchar(30) NOT NULL,
  `message` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`name`, `e_mail`, `message`) VALUES
('Nikhil', 'nikhil@gmail.com', 'Hope this works.');

-- --------------------------------------------------------

--
-- Table structure for table `rentedbicycle`
--

CREATE TABLE `rentedbicycle` (
  `id` int(100) NOT NULL,
  `customer_username` varchar(50) NOT NULL,
  `b_id` int(20) NOT NULL,
  `rider_id` int(20) NOT NULL,
  `booking_date` date NOT NULL,
  `rent_start_date` date NOT NULL,
  `rent_end_date` date NOT NULL,
  `car_return_date` date DEFAULT NULL,
  `fare` double NOT NULL,
  `charge_type` varchar(25) NOT NULL DEFAULT 'days',
  `distance` double DEFAULT NULL,
  `no_of_days` int(50) DEFAULT NULL,
  `total_amount` double DEFAULT NULL,
  `return_status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rentedbicycle`
--

INSERT INTO `rentedbicycle` (`id`, `customer_username`, `b_id`, `rider_id`, `booking_date`, `rent_start_date`, `rent_end_date`, `car_return_date`, `fare`, `charge_type`, `distance`, `no_of_days`, `total_amount`, `return_status`) VALUES
(574681260, 'christine', 1, 1, '2023-09-25', '2023-09-25', '2023-09-26', '2023-09-25', 5200, 'days', NULL, 1, 5200, 'R');

-- --------------------------------------------------------

--
-- Table structure for table `rider`
--

CREATE TABLE `rider` (
  `rider_id` int(20) NOT NULL,
  `rider_name` varchar(50) NOT NULL,
  `token_no` varchar(50) NOT NULL,
  `rider_phone` varchar(15) NOT NULL,
  `rider_address` varchar(50) NOT NULL,
  `rider_gender` varchar(10) NOT NULL,
  `client_username` varchar(50) NOT NULL,
  `rider_consent` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rider`
--

INSERT INTO `rider` (`rider_id`, `rider_name`, `token_no`, `rider_phone`, `rider_address`, `rider_gender`, `client_username`, `rider_consent`) VALUES
(1, 'Yourself', '27840218658 ', '9547863157', '1782  Vineyard Drive', 'Male', 'you', 'no'),
(2, 'Will Williams', '03191563155 ', '9147523684', '4354  Hillcrest Drive', 'Male', 'you', 'yes');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bicycle`
--
ALTER TABLE `bicycle`
  ADD PRIMARY KEY (`b_id`),
  ADD UNIQUE KEY `b_idfino` (`b_idfino`);

--
-- Indexes for table `clientcars`
--
ALTER TABLE `clientcars`
  ADD PRIMARY KEY (`b_id`),
  ADD KEY `client_username` (`client_username`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`client_username`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_username`);

--
-- Indexes for table `rentedbicycle`
--
ALTER TABLE `rentedbicycle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_username` (`customer_username`),
  ADD KEY `b_id` (`b_id`),
  ADD KEY `rider_id` (`rider_id`);

--
-- Indexes for table `rider`
--
ALTER TABLE `rider`
  ADD PRIMARY KEY (`rider_id`),
  ADD UNIQUE KEY `token_no` (`token_no`),
  ADD KEY `client_username` (`client_username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bicycle`
--
ALTER TABLE `bicycle`
  MODIFY `b_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `rentedbicycle`
--
ALTER TABLE `rentedbicycle`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=574681261;

--
-- AUTO_INCREMENT for table `rider`
--
ALTER TABLE `rider`
  MODIFY `rider_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `clientcars`
--
ALTER TABLE `clientcars`
  ADD CONSTRAINT `clientcars_ibfk_1` FOREIGN KEY (`client_username`) REFERENCES `clients` (`client_username`),
  ADD CONSTRAINT `clientcars_ibfk_2` FOREIGN KEY (`b_id`) REFERENCES `bicycle` (`b_id`);

--
-- Constraints for table `rentedbicycle`
--
ALTER TABLE `rentedbicycle`
  ADD CONSTRAINT `rentedbicycle_ibfk_1` FOREIGN KEY (`customer_username`) REFERENCES `customers` (`customer_username`),
  ADD CONSTRAINT `rentedbicycle_ibfk_2` FOREIGN KEY (`b_id`) REFERENCES `bicycle` (`b_id`),
  ADD CONSTRAINT `rentedbicycle_ibfk_3` FOREIGN KEY (`rider_id`) REFERENCES `rider` (`rider_id`);

--
-- Constraints for table `rider`
--
ALTER TABLE `rider`
  ADD CONSTRAINT `rider_ibfk_1` FOREIGN KEY (`client_username`) REFERENCES `clients` (`client_username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
