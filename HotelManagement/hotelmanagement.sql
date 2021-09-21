-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 20, 2021 at 06:44 AM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotelmanagement`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  `adminid` varchar(30) NOT NULL,
  `adminpwd` varchar(12) NOT NULL,
  PRIMARY KEY (`adminid`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `adminid`, `adminpwd`) VALUES
(1, 'Admin', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `name` varchar(50) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `day` int(15) NOT NULL,
  `roomno` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`name`, `fname`, `address`, `date`, `day`, `roomno`) VALUES
('sxs', 'as', '6ytgrfd', '2021-07-11', 2, 0),
('narayani shukla', 'satish', 'uma nagar', '2021-09-05', 2, 0),
('Soumya Shukla', 'Dinesh Shukla', 'uma nagar', '2021-09-05', 2, 765);

-- --------------------------------------------------------

--
-- Table structure for table `reception`
--

DROP TABLE IF EXISTS `reception`;
CREATE TABLE IF NOT EXISTS `reception` (
  `name` varchar(30) NOT NULL,
  `userid` varchar(15) NOT NULL,
  `address` varchar(50) NOT NULL,
  `jdate` date NOT NULL,
  `salary` int(10) NOT NULL,
  `password` varchar(10) NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reception`
--

INSERT INTO `reception` (`name`, `userid`, `address`, `jdate`, `salary`, `password`) VALUES
('ss', 'ss@gmail.com', 'uma nagar', '2021-07-15', 35000, 'ss12345');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
