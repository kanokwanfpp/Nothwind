-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 07, 2019 at 05:32 AM
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
(NULL, NULL, NULL),
('1', 'pen', 'stationary'),
('2', 'noodle', 'food'),
('3', 'coke', 'drinks');

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
('1', 'fha', 'chaimai', 'chaimai', '0987646992'),
('2', 'fon', 'fon', 'nan', '0882136548'),
('3', 'aa', 'bangkok', 'bangkok', '0654842546');

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
('1', 'fon', 'fon,lampang,0987654321', 'lampang', '0987654321'),
('2', 'tar', 'tar,bangkok,0984708228', 'bangkok', '0984708228');

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
('0101', '0101', '1', '0002,08/09/2019', '08/09/2019'),
('0102', '3', '3', '0001', '15/09/2019'),
('0103', '0103', '2', '0003', '29/09/2019');

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
('11', 'pen', '9991', '9803', '10'),
('12', 'book', '9992', '9801', '5'),
('13', 'noodle', '9993', '9802', '30');

-- --------------------------------------------------------

--
-- Table structure for table `productstext`
--

CREATE TABLE `productstext` (
  `productid` int(20) NOT NULL,
  `productname` int(11) NOT NULL,
  `supplierid` int(11) NOT NULL,
  `categoryid` int(11) NOT NULL,
  `quantityperunit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
('7501', 'kerry', '0549872819'),
('7502', 'ninja', '0285749742'),
('7503', 'j&t', '0245473624');

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
('8001', 'wan,nan,0987654321', 'nan', '1', '0987654321'),
('8002', 'pang', 'nan', '2', '0898429235'),
('8003', 'golf', '3', 'nan', '0684928323');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `productstext`
--
ALTER TABLE `productstext`
  ADD PRIMARY KEY (`productid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `productstext`
--
ALTER TABLE `productstext`
  MODIFY `productid` int(20) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
