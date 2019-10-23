-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 23, 2019 at 09:23 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `northwind`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `categoryid` char(4) DEFAULT NULL,
  `categoryname` char(40) DEFAULT NULL,
  `description` char(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`categoryid`, `categoryname`, `description`) VALUES
('a', 'a', 'a');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `cus` char(4) DEFAULT NULL,
  `company` char(40) DEFAULT NULL,
  `contact` char(40) DEFAULT NULL,
  `address` char(40) DEFAULT NULL,
  `phone` char(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`cus`, `company`, `contact`, `address`, `phone`) VALUES
('f', 'a', 'a', 'a', 'a');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `empid` char(4) DEFAULT NULL,
  `empname` char(40) DEFAULT NULL,
  `empbd` char(40) DEFAULT NULL,
  `empaddress` char(40) DEFAULT NULL,
  `empphone` char(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`empid`, `empname`, `empbd`, `empaddress`, `empphone`) VALUES
('fon', 'fonfon', 'fon', 'fon', '');

-- --------------------------------------------------------

--
-- Table structure for table `orderdetails`
--

CREATE TABLE `orderdetails` (
  `orderid` char(5) DEFAULT NULL,
  `productid` char(40) DEFAULT NULL,
  `unitprice` char(40) DEFAULT NULL,
  `quantity` char(40) DEFAULT NULL,
  `discount` char(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `ordid` char(4) DEFAULT NULL,
  `cusid` char(40) DEFAULT NULL,
  `empid` char(40) DEFAULT NULL,
  `orddate` char(40) DEFAULT NULL,
  `ship` char(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`ordid`, `cusid`, `empid`, `orddate`, `ship`) VALUES
('fon', 'fon', 'fon', 'fon', 'fon');

-- --------------------------------------------------------

--
-- Table structure for table `productstest`
--

CREATE TABLE `productstest` (
  `PID` char(4) DEFAULT NULL,
  `Pname` char(40) DEFAULT NULL,
  `SupID` char(40) DEFAULT NULL,
  `QPU` char(40) DEFAULT NULL,
  `UP` char(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `productstest`
--

INSERT INTO `productstest` (`PID`, `Pname`, `SupID`, `QPU`, `UP`) VALUES
('a', 'a', 'a', 'a', 'a'),
('a', 'a', 'a', 'a', 'a');

-- --------------------------------------------------------

--
-- Table structure for table `shippers`
--

CREATE TABLE `shippers` (
  `shid` char(4) DEFAULT NULL,
  `comname` char(40) DEFAULT NULL,
  `phone` char(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shippers`
--

INSERT INTO `shippers` (`shid`, `comname`, `phone`) VALUES
('fon', 'fon', 'fon');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `supid` char(4) DEFAULT NULL,
  `comname` char(40) DEFAULT NULL,
  `address` char(40) DEFAULT NULL,
  `post` char(40) DEFAULT NULL,
  `phone` char(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`supid`, `comname`, `address`, `post`, `phone`) VALUES
('fon', 'fon', 'fon', 'fon', 'fon');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
