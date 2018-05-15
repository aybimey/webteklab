-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 15, 2018 at 07:50 AM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

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
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
CREATE TABLE IF NOT EXISTS `client` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(256) NOT NULL,
  `last_name` varchar(256) NOT NULL,
  `username` varchar(256) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `age` int(11) NOT NULL,
  `email` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`user_id`, `first_name`, `last_name`, `username`, `gender`, `age`, `email`, `password`) VALUES
(1, 'Venessa', 'Antonio', 'Antonio', 'Female', 20, 'jelly@gmail.com', '$2y$10$U5Y1PAgZEasMUMzC3.oJI.ZeUhOeDPfHycwQVZ4NxwKcWvPKH6K1y'),
(2, 'Jelly', 'Grabanzor', 'Grabanzor', 'Female', 20, 'grab@gmail.com', '$2y$10$CCsyShRLHjqmtgQNNDNaP./isKfz1SHbJK1k8Oyfd53Sas7fzpc1C'),
(6, 'John', 'Snow', 'Snow', 'Male', 27, 'snow@gmail.com', '$2y$10$hRDKezYlTtMEmxhJKL5/sutbq.rMIq4iIbQV8lV.4PZx8SQrb8HiO'),
(7, 'Dora', 'explorer', 'explorer', 'Female', 35, 'dora@gmail.com', '$2y$10$HYkNKDwmgElP1YjuonEAv.ioMPywihQBtNYEUWMtAm3M5GFQPgylS'),
(8, 'Archie', 'Andrews', 'Andrews', 'Male', 25, 'archie@yahoo.com', '$2y$10$a4f5U66yb9KDfy7ly.YDMu6rW1Bs3Mar3whXN7q//0tOVnjSIryuy'),
(9, 'Bruno', 'Pluto', 'Pluto', 'Male', 18, 'pluto@yahoo.com', '$2y$10$dxACukhEbsnKwtp.CA8J6uQnBtdrXAbsfh3gwFGLrZsJlZz2oHiLa');

-- --------------------------------------------------------

--
-- Table structure for table `collection`
--

DROP TABLE IF EXISTS `collection`;
CREATE TABLE IF NOT EXISTS `collection` (
  `collection_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(100) NOT NULL,
  `collection_name` varchar(100) NOT NULL,
  `collection_price` varchar(100) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `collection_image` int(100) NOT NULL,
  PRIMARY KEY (`collection_id`)
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
(1, 'fabshopyyyy', 'fabshop', '#47 gibraltar Road Near Hotel Elizabeth Baguio City', 'We sell your products all like gowns and mens apparel.', 'Call or Text Sherryl ann at 09812344123');

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
