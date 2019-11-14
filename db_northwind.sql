-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 07, 2019 at 05:41 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_northwind`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `categoryid` char(4) CHARACTER SET utf8 NOT NULL,
  `categoryname` char(40) CHARACTER SET utf8 NOT NULL,
  `description` char(40) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`categoryid`, `categoryname`, `description`) VALUES
('0003', 'pencil', 'stationary'),
('0002', 'pen', 'stationary'),
('0001', 'book', 'stationary'),
('0004', 'ruler', 'stationary'),
('0005', 'eraser', 'stationary');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customerid` int(4) NOT NULL,
  `companyname` char(40) CHARACTER SET utf8 NOT NULL,
  `contactname` char(40) NOT NULL,
  `contacttitle` char(40) NOT NULL,
  `address` char(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customerid`, `companyname`, `contactname`, `contacttitle`, `address`) VALUES
(1200, 'Global Co', 'Natthapong', 'Manager', '444/2'),
(1201, 'Belief Co', 'Praweenon', 'Manager', '52/3'),
(1202, '1Moby Co', 'Chompoo', 'Staff', '472/1'),
(1203, 'Infotech System Co', 'Kanokwan', 'Staff', '125/3'),
(1204, 'Nation U', 'Namwarn', 'Staff', '611/9');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `employeeid` char(4) NOT NULL,
  `firstname` char(40) NOT NULL,
  `lastname` char(40) NOT NULL,
  `title` char(40) NOT NULL,
  `birthdate` char(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`employeeid`, `firstname`, `lastname`, `title`, `birthdate`) VALUES
('1112', 'Natthapat', 'Kummoon', 'Sale', '20/07/2541'),
('1111', 'Patcharida', 'Jareonpon', 'Sale', '06/11/2541'),
('1110', 'Kronwarin', 'Putthawong', 'Sale', '29/03/2542'),
('1113', 'Wachirasak', 'Saithongthanasak', 'Sale', '27/06/2541'),
('1114', 'Suwatjanee', 'Punyapoo', 'Sale', '08/09/2541');

-- --------------------------------------------------------

--
-- Table structure for table `orderdetails`
--

CREATE TABLE `orderdetails` (
  `orderid` char(5) NOT NULL,
  `productid` char(40) NOT NULL,
  `unitprice` char(40) NOT NULL,
  `quantity` char(40) NOT NULL,
  `discount` char(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orderdetails`
--

INSERT INTO `orderdetails` (`orderid`, `productid`, `unitprice`, `quantity`, `discount`) VALUES
('1302', '1102', '12', '10', '2%'),
('1301', '1101', '199', '5', '30%'),
('1303', '1103', '12', '10', '2%'),
('1304', '1104', '5', '5', '0'),
('1305', '1105', '10', '5', '0');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderid` int(4) NOT NULL,
  `customerid` char(40) NOT NULL,
  `employeeid` char(40) NOT NULL,
  `orderdate` char(40) NOT NULL,
  `requireddate` char(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderid`, `customerid`, `employeeid`, `orderdate`, `requireddate`) VALUES
(1301, '1200', '1110', '02/11/62', '04/11/62'),
(1302, '1201', '1111', '03/11/62', '05/11/62'),
(1303, '1202', '1112', '04/11/62', '06/11/62'),
(1304, '1203', '1113', '05/11/62', '07/11/62'),
(1305, '1204', '1114', '06/11/62', '08/11/62');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `productid` int(4) DEFAULT NULL,
  `productname` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `supplierid` char(40) DEFAULT NULL,
  `categoryid` char(40) DEFAULT NULL,
  `quantityperunit` char(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`productid`, `productname`, `supplierid`, `categoryid`, `quantityperunit`) VALUES
(1101, 'book', '1001', '0001', '10'),
(1102, 'pen', '1002', '0002', '20'),
(1103, 'pencil', '1003', '0003', '30'),
(1104, 'ruler', '1004', '0004', '40'),
(1105, 'eraser', '1005', '0005', '50');

-- --------------------------------------------------------

--
-- Table structure for table `shippers`
--

CREATE TABLE `shippers` (
  `shid` char(4) NOT NULL,
  `comname` char(40) NOT NULL,
  `phone` char(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shippers`
--

INSERT INTO `shippers` (`shid`, `comname`, `phone`) VALUES
('1402', 'ninjavan', '0543123432'),
('1401', 'Kerry', '0547654398'),
('1405', 'TNT', '027893542'),
('1403', 'j&t', '0549998712'),
('1404', 'SCG', '0845321567');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `supplierid` int(4) NOT NULL,
  `companyname` char(40) NOT NULL,
  `contactname` char(40) NOT NULL,
  `contacttitle` char(40) NOT NULL,
  `address` char(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`supplierid`, `companyname`, `contactname`, `contacttitle`, `address`) VALUES
(1002, 'Nation', 'Ketsarin', 'Manager', '45/1'),
(1001, '11Street (Thailand) Co', 'Purin', 'Manager', '44/4'),
(1003, 'CP ALL', 'Worawat', 'Manager', '777/11'),
(1004, 'Graphic House', 'Pittiya', 'Manager', '111/44'),
(1005, 'A.T', 'Sasiwimon', 'Manager', '68/2');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_location`
--

CREATE TABLE `tbl_location` (
  `ID` int(2) NOT NULL,
  `House_No` varchar(50) CHARACTER SET utf8 NOT NULL,
  `Village_No` varchar(50) CHARACTER SET utf8 NOT NULL,
  `Village` varchar(50) CHARACTER SET utf8 NOT NULL,
  `Road` varchar(50) CHARACTER SET utf8 NOT NULL,
  `Sub_district` varchar(50) CHARACTER SET utf8 NOT NULL,
  `District` varchar(50) CHARACTER SET utf8 NOT NULL,
  `Province` varchar(50) CHARACTER SET utf8 NOT NULL,
  `Postal_Code` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_location`
--

INSERT INTO `tbl_location` (`ID`, `House_No`, `Village_No`, `Village`, `Road`, `Sub_district`, `District`, `Province`, `Postal_Code`) VALUES
(1, '444', '2', '-', 'วชิราวุธดำเนิน', 'พระบาท', 'เมือง', 'ลำปาง', '52000'),
(2, '45', '4', 'วชิราวุธดำเนิน', '-', 'น้ำปั้ว', 'เวียงสา', 'น่าน', '52000');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_member`
--

CREATE TABLE `tbl_member` (
  `ID` int(2) NOT NULL,
  `Username` varchar(50) CHARACTER SET utf8 NOT NULL,
  `Password` int(6) NOT NULL,
  `Name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `Sex` varchar(50) CHARACTER SET utf8 NOT NULL,
  `Id_Number` varchar(13) CHARACTER SET utf8 NOT NULL,
  `Telephone` varchar(10) CHARACTER SET utf8 NOT NULL,
  `Email` varchar(50) CHARACTER SET utf8 NOT NULL,
  `Status` varchar(50) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_member`
--

INSERT INTO `tbl_member` (`ID`, `Username`, `Password`, `Name`, `Sex`, `Id_Number`, `Telephone`, `Email`, `Status`) VALUES
(1, 'admin', 123456, 'admin', 'ชาย', '1550700149361', '0954563043', 'admin@gmail.com', '2'),
(2, 'user', 123456, 'user', 'หญิง', '1550700149361', '0876839201', 'user@gmail.com', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_location`
--
ALTER TABLE `tbl_location`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_member`
--
ALTER TABLE `tbl_member`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_location`
--
ALTER TABLE `tbl_location`
  MODIFY `ID` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_member`
--
ALTER TABLE `tbl_member`
  MODIFY `ID` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
