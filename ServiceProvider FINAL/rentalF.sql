-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 25, 2018 at 09:07 AM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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

CREATE TABLE `accepted_reservation` (
  `reservation_id` int(50) NOT NULL,
  `reservation_firstname` varchar(50) NOT NULL,
  `reservation_lastname` varchar(50) NOT NULL,
  `reservation_contact` varchar(255) NOT NULL,
  `reservation_collectionname` varchar(255) NOT NULL,
  `reservation_quantity` int(11) NOT NULL,
  `reservation_datereserved` varchar(255) NOT NULL,
  `reservation_datereturned` varchar(255) NOT NULL,
  `shop_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accepted_reservation`
--

INSERT INTO `accepted_reservation` (`reservation_id`, `reservation_firstname`, `reservation_lastname`, `reservation_contact`, `reservation_collectionname`, `reservation_quantity`, `reservation_datereserved`, `reservation_datereturned`, `shop_name`) VALUES
(13, 'heart', 'heart', 'heart@gmail.com', 'wedding gown02', 2, '2018-05-24', 'null', 'jelee couture'),
(14, 'John', 'Snow', 'snow@gmail.com', 'anlee01', 4, '2018-05-24', 'null', 'jelee couture');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(100) NOT NULL,
  `username` text NOT NULL,
  `pass` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`) VALUES
(1, 'Wedding gown'),
(2, 'Wedding suit'),
(3, 'Gown'),
(4, 'Suit'),
(5, 'Kids gown'),
(6, 'Kids suit');

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `user_id` int(11) NOT NULL,
  `first_name` varchar(256) NOT NULL,
  `last_name` varchar(256) NOT NULL,
  `username` varchar(256) NOT NULL,
  `city` varchar(256) NOT NULL,
  `province` varchar(256) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `age` int(11) NOT NULL,
  `contactNumber` int(20) NOT NULL,
  `email` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`user_id`, `first_name`, `last_name`, `username`, `city`, `province`, `gender`, `age`, `contactNumber`, `email`, `password`) VALUES
(20, 'Jelly', 'Grabanzor', 'jelly', 'Candon', 'Seoul', 'Female', 20, 956874267, 'jelly@gmail.com', '$2y$10$W4wAvZnr10z5A9JfmcZoZOLsE0/CtoNyRhz9QuBsG6GwpdMJkRm26'),
(19, 'john', 'snow', 'johnsnow', 'Winter', 'Fell', 'Male', 32, 977198079, 'johnsnow@gmail.com', '$2y$10$oa.OT/QMuO1KbgW/CLPcdO1k.SO98hzucPEaNGG2esCrjQSPSyXaG'),
(18, 'Venessa', 'Antonio', 'venessantonio', 'Baguio', 'Benguet', 'Female', 20, 956066902, 'venessantonio@gmail.com', '$2y$10$Pg53AutXHUnfz0LzKFo7nuN8Wyajt.fyVzrmDgLJFqVPVAL0fpMui'),
(17, 'gren', 'soriano', 'gren', 'tarlac', 'capas', 'Female', 20, 4449678, 'gren@gmail.com', '$2y$10$82pk/YPXkIh2/RBLmIFapu.xXNqF92wG/4r54xxbcV//JKiOggxCO'),
(21, 'sam', 'dacanay', 'sam', 'dinalupihan', 'bataan', 'Female', 20, 958742361, 'sam@gmail.com', '$2y$10$f9Tosvb8Q459PG3.DAs07.xnftohSqIvIJfFs.hO4TSuRZTCOTAdW'),
(22, 'sam', 'dacanay', 'sam', 'dinalupihan', 'bataan', 'Female', 20, 965874256, 'sam@gmail.com', '$2y$10$4XOOcl7tmsmh8RcB/PGjV./ZdTTO1VvY20i2xMGeR6zZ8dmdVceXS');

-- --------------------------------------------------------

--
-- Table structure for table `clientaccepted`
--

CREATE TABLE `clientaccepted` (
  `user_id` int(11) NOT NULL,
  `first_name` varchar(256) NOT NULL,
  `last_name` varchar(256) NOT NULL,
  `username` varchar(256) NOT NULL,
  `city` varchar(256) NOT NULL,
  `province` varchar(256) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `age` int(11) NOT NULL,
  `contactNumber` int(20) NOT NULL,
  `email` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `collection`
--

CREATE TABLE `collection` (
  `collection_id` int(11) NOT NULL,
  `category_name` varchar(100) DEFAULT NULL,
  `collection_name` varchar(100) NOT NULL,
  `collection_price` varchar(100) NOT NULL,
  `collection_info` varchar(250) NOT NULL,
  `collection_quantity` varchar(11) NOT NULL,
  `shop_name` varchar(200) NOT NULL,
  `filename` varchar(250) NOT NULL,
  `path` varchar(250) NOT NULL,
  `category_id` int(11) NOT NULL,
  `color` text NOT NULL,
  `size` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `collection`
--

INSERT INTO `collection` (`collection_id`, `category_name`, `collection_name`, `collection_price`, `collection_info`, `collection_quantity`, `shop_name`, `filename`, `path`, `category_id`, `color`, `size`) VALUES
(26, 'Select Category', 'anlg02', '3500.00', 'TRANSLUCENT pink that will surely turn heads', '5', 'jelee couture', 'c3dd4f63108bc74347e76f44d97c3be4.jpg', 'C:\\Users\\Angelica\\Documents\\NetBeansProjects\\ServiceProvider\\web\\images\\c3dd4f63108bc74347e76f44d97c3be4.jpg', 0, '', ''),
(27, ' Gown ', 'anlg03', '3200.00', 'pale pink gown that will make you like a princess', '10', 'jelee couture', 'a643d6c01899282e577b294b60096344.jpg', 'C:\\Users\\Angelica\\Documents\\NetBeansProjects\\ServiceProvider\\web\\images\\a643d6c01899282e577b294b60096344.jpg', 3, '', ''),
(24, ' Gown ', 'anlee01', '2890.00', 'perfect for ladies who wants to stand out', '5', 'jelee couture', 'a2fb6558e6e42ff2434e0b225bc44b46.jpg', 'C:\\Users\\Angelica\\Documents\\NetBeansProjects\\ServiceProvider\\web\\images\\a2fb6558e6e42ff2434e0b225bc44b46.jpg', 3, '', ''),
(33, ' Gown ', 'blkg01', '2800.00', 'Mysterious black', '3', 'Blanc & Eclare', 'cbc0bf006fd3c58f64af784cc38146ed.jpg', 'C:\\Users\\Angelica\\Documents\\NetBeansProjects\\ServiceProvider\\web\\images\\cbc0bf006fd3c58f64af784cc38146ed.jpg', 3, '', ''),
(34, ' Gown ', 'blkg02', '3500.00', 'This elegant and classy gown will definitely make you look like a part of the royal family', '1', 'Blanc & Eclare', 'edae79cb746acfb4b2a552416ec2e889.jpg', 'C:\\Users\\Angelica\\Documents\\NetBeansProjects\\ServiceProvider\\web\\images\\edae79cb746acfb4b2a552416ec2e889.jpg', 3, '', ''),
(30, ' Wedding suit ', 'anglws01', '3300.00', 'Your soon to be bride will realize how lucky she is', '4', 'jelee couture', 'suit6.JPG', 'C:\\Users\\Angelica\\Documents\\NetBeansProjects\\ServiceProvider\\web\\images\\suit6.JPG', 2, '', ''),
(31, ' Wedding suit ', 'anglws02', '3,800.00', 'You will definitely feel like a man', '8', 'jelee couture', 'suit5.JPG', 'C:\\Users\\Angelica\\Documents\\NetBeansProjects\\ServiceProvider\\web\\images\\suit5.JPG', 2, '', ''),
(35, ' Gown ', 'blkg03', '3200.00', 'Black will definitely make you sexy', '3', 'Blanc & Eclare', '302e63e8c3731aee2e419b3edb71a033.jpg', 'C:\\Users\\Angelica\\Documents\\NetBeansProjects\\ServiceProvider\\web\\images\\302e63e8c3731aee2e419b3edb71a033.jpg', 3, '', ''),
(36, ' Kids gown ', 'blkk01', '3,200.00', 'Little gown for a little princess', '5', 'Blanc & Eclare', 'kid3.JPG', 'C:\\Users\\Angelica\\Documents\\NetBeansProjects\\ServiceProvider\\web\\images\\kid3.JPG', 5, '', ''),
(37, ' Kids gown ', 'blkk02', '2,800.00', 'Royal Princess', '10', 'Blanc & Eclare', 'kid5.JPG', 'C:\\Users\\Angelica\\Documents\\NetBeansProjects\\ServiceProvider\\web\\images\\kid5.JPG', 5, '', ''),
(38, ' Kids gown ', 'blkk03', '3,250.00', 'Little lace princess gown', '10', 'Blanc & Eclare', 'kid7.JPG', 'C:\\Users\\Angelica\\Documents\\NetBeansProjects\\ServiceProvider\\web\\images\\kid7.JPG', 5, '', ''),
(39, NULL, 'wedding gown02', '5,000.00', 'hehe', '3', 'jelee couture', 'weddingC.JPG', 'C:\\Users\\Angelica\\Documents\\NetBeansProjects\\ServiceProvider\\web\\images\\weddingC.JPG', 1, '', ''),
(41, NULL, 'sakjfshd', '9000', 'fsaf', '4', 'jelee couture', 'weddingD.JPG', 'C:\\Users\\Angelica\\Documents\\NetBeansProjects\\ServiceProvider\\web\\images\\weddingD.JPG', 1, 'pink', ' 1 ');

-- --------------------------------------------------------

--
-- Table structure for table `request_reservation`
--

CREATE TABLE `request_reservation` (
  `req_id` int(11) NOT NULL,
  `req_lastname` varchar(20) NOT NULL,
  `req_firstname` varchar(20) DEFAULT NULL,
  `req_contactnumber` varchar(20) DEFAULT NULL,
  `req_collectionname` varchar(255) DEFAULT NULL,
  `req_categoryname` varchar(255) DEFAULT NULL,
  `req_quantity` varchar(255) DEFAULT NULL,
  `req_price` varchar(255) DEFAULT NULL,
  `req_datereserved` date DEFAULT NULL,
  `req_datereturned` date DEFAULT NULL,
  `shop_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `request_reservation`
--

INSERT INTO `request_reservation` (`req_id`, `req_lastname`, `req_firstname`, `req_contactnumber`, `req_collectionname`, `req_categoryname`, `req_quantity`, `req_price`, `req_datereserved`, `req_datereturned`, `shop_name`) VALUES
(1, 'heart', 'heart', 'heart@gmail.com', '', '', '3', '', '2018-05-14', NULL, ''),
(2, 'heart', 'heart', 'heart@gmail.com', '', '', '5', '', '2018-05-22', NULL, ''),
(3, 'heart', 'heart', 'heart@gmail.com', '', '', '2', '', '2018-05-24', NULL, ''),
(4, 'heart', 'heart', 'heart@gmail.com', 'anglws02;', '', '4', '', '2018-05-23', NULL, ''),
(5, 'heart', 'heart', 'heart@gmail.com', 'anlg03', ' Gown ;', '4', '', '2018-05-25', NULL, ''),
(6, 'heart', 'heart', 'heart@gmail.com', 'anglws01', ' Wedding suit ', '3', '3300.00', '2018-05-29', NULL, ''),
(7, 'heart', 'heart', 'heart@gmail.com', 'blkg03', ' Gown ', '2', '3200.00', '2018-05-24', NULL, 'Blanc ');

-- --------------------------------------------------------

--
-- Table structure for table `serviceprovider`
--

CREATE TABLE `serviceprovider` (
  `shop_id` int(100) NOT NULL,
  `shop_name` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `address` varchar(200) NOT NULL,
  `shop_info` varchar(255) NOT NULL,
  `shop_contact` varchar(50) NOT NULL,
  `shop_owner` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `serviceprovider`
--

INSERT INTO `serviceprovider` (`shop_id`, `shop_name`, `password`, `address`, `shop_info`, `shop_contact`, `shop_owner`) VALUES
(3, 'jelee couture', 'jelee', 'Seoul, Ilocos sur', 'Having spent much of her adulthood in the spotlight surrounded by renowned designers and brands, Angelica decided to join the fashion conversation with her own collections that reflect her love of the modern classic.', '09151591096/ alee@gmail.com', 'angelica lee'),
(6, 'Blanc & Eclare', 'jessica', 'Manila, California', 'Jessica Jung brings her flair for design and love of the classic aesthetic to her fashion line, BLANC & ECLARE. BLANC & ECLARE?s unique point of view is best described as the modern classic.', 'blanc&eclare@gmail.com', 'Jessica Jung');

-- --------------------------------------------------------

--
-- Table structure for table `size`
--

CREATE TABLE `size` (
  `size_id` int(10) NOT NULL,
  `size` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `size`
--

INSERT INTO `size` (`size_id`, `size`) VALUES
(1, 'XS'),
(2, 'S'),
(3, 'M'),
(4, 'ML'),
(5, 'L'),
(6, 'XL'),
(7, 'XXL');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `transaction_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accepted_reservation`
--
ALTER TABLE `accepted_reservation`
  ADD PRIMARY KEY (`reservation_id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `collection`
--
ALTER TABLE `collection`
  ADD PRIMARY KEY (`collection_id`);

--
-- Indexes for table `request_reservation`
--
ALTER TABLE `request_reservation`
  ADD PRIMARY KEY (`req_id`);

--
-- Indexes for table `serviceprovider`
--
ALTER TABLE `serviceprovider`
  ADD PRIMARY KEY (`shop_id`);

--
-- Indexes for table `size`
--
ALTER TABLE `size`
  ADD PRIMARY KEY (`size_id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`transaction_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accepted_reservation`
--
ALTER TABLE `accepted_reservation`
  MODIFY `reservation_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(100) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `collection`
--
ALTER TABLE `collection`
  MODIFY `collection_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `request_reservation`
--
ALTER TABLE `request_reservation`
  MODIFY `req_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `serviceprovider`
--
ALTER TABLE `serviceprovider`
  MODIFY `shop_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `size`
--
ALTER TABLE `size`
  MODIFY `size_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
