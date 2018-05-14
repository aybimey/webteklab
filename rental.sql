-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 14, 2018 at 04:06 PM
-- Server version: 5.7.19
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rental`
--

-- --------------------------------------------------------

--
-- Table structure for table `accepted_reservation`
--

DROP TABLE IF EXISTS `accepted_reservation`;
CREATE TABLE IF NOT EXISTS `accepted_reservation` (
  `reservation_id` int(50) NOT NULL AUTO_INCREMENT,
  `reservation_quantity` int(50) NOT NULL,
  `reservation_date` date NOT NULL,
  `reservation_duedate` date NOT NULL,
  PRIMARY KEY (`reservation_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `admin_id` int(100) NOT NULL AUTO_INCREMENT,
  `username` text NOT NULL,
  `pass` text NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(100) NOT NULL,
  `shop_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category_name`, `shop_id`) VALUES
(1, 'wedding gown', 1),
(2, 'wedding suit', 1);

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
CREATE TABLE IF NOT EXISTS `client` (
  `client_id` int(100) NOT NULL AUTO_INCREMENT,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `client_name` varchar(40) NOT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `request_reservation`
--

DROP TABLE IF EXISTS `request_reservation`;
CREATE TABLE IF NOT EXISTS `request_reservation` (
  `req_id` int(11) NOT NULL AUTO_INCREMENT,
  `reservation_quantity` int(3) NOT NULL,
  `reservation_date` date NOT NULL,
  PRIMARY KEY (`req_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `serviceprovider`
--

DROP TABLE IF EXISTS `serviceprovider`;
CREATE TABLE IF NOT EXISTS `serviceprovider` (
  `shop_id` int(100) NOT NULL AUTO_INCREMENT,
  `shop_name` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `address` varchar(200) NOT NULL,
  `shop_info` varchar(255) NOT NULL,
  `shop_contact` varchar(50) NOT NULL,
  PRIMARY KEY (`shop_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `serviceprovider`
--

INSERT INTO `serviceprovider` (`shop_id`, `shop_name`, `password`, `address`, `shop_info`, `shop_contact`) VALUES
(1, 'fabshop', 'fabshop', '#47 gibraltar Road Near Hotel Elizabeth Baguio City', 'We sell your products all like gowns and mens apparel.', 'Call or Text Sherryl ann at 09812344123'),
(2, '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `shop_collection`
--

DROP TABLE IF EXISTS `shop_collection`;
CREATE TABLE IF NOT EXISTS `shop_collection` (
  `cloth_id` int(50) NOT NULL,
  `cloth_img` varchar(255) NOT NULL,
  `cloth_name` varchar(255) NOT NULL,
  `cloth_category` varchar(20) NOT NULL,
  `cloth_info` varchar(255) NOT NULL,
  `cloth_quantity` int(50) NOT NULL,
  `cloth_price` int(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shop_collection`
--

INSERT INTO `shop_collection` (`cloth_id`, `cloth_img`, `cloth_name`, `cloth_category`, `cloth_info`, `cloth_quantity`, `cloth_price`) VALUES
(1, '', 'Orange Dress', 'Dress', 'This is a dress', 100, 1000),
(1, '', 'Black Suit', 'Mens apparel', 'tis is for men', 100, 1000),
(3, '', 'awdawd', 'wadawd', 'awdawd', 112, 123);

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
CREATE TABLE IF NOT EXISTS `transaction` (
  `transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
