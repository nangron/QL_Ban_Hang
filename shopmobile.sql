-- phpMyAdmin SQL Dump
-- version 4.5.0.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 25, 2015 at 07:34 AM
-- Server version: 10.0.17-MariaDB
-- PHP Version: 5.5.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `shopmobile`
--
CREATE DATABASE IF NOT EXISTS `shopmobile` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `shopmobile`;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE IF NOT EXISTS `contacts` (
  `ContactID` int(12) NOT NULL AUTO_INCREMENT,
  `ContactName` varchar(50) NOT NULL,
  `ContactEmail` varchar(30) NOT NULL,
  `ContactPhone` int(15) NOT NULL,
  `ContactDesc` text NOT NULL,
  PRIMARY KEY (`ContactID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=0 ;


-- --------------------------------------------------------

--
-- Table structure for table `orderdetails`
--

CREATE TABLE IF NOT EXISTS `orderdetails` (
  `OrderID` int(12) NOT NULL AUTO_INCREMENT,
  `ProductID` int(12) NOT NULL,
  `ProductPrice` double(10,0) NOT NULL,
  `Quantity` int(5) NOT NULL,
  `Totals` int(5) NOT NULL,
  PRIMARY KEY (`OrderID`),
  KEY `PKMA_ID` (`ProductID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=0 ;

--


-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `OrderID` int(12) NOT NULL AUTO_INCREMENT,
  `OrderDate` date NOT NULL,
  `OrderTotal` int(10) NOT NULL,
  `UserID` int(12) NOT NULL,
  PRIMARY KEY (`OrderID`),
  UNIQUE KEY `Order_ID` (`OrderID`),
  KEY `Order_ID_2` (`OrderID`),
  KEY `User_ID` (`UserID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=0 ;


-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `ProductID` int(12) NOT NULL AUTO_INCREMENT,
  `ProductName` varchar(50) NOT NULL,
  `ProductImage` varchar(255) DEFAULT NULL,
  `ProductPrice` double(10,0) NOT NULL,
  `ProductDesc` text NOT NULL,
  `ProductCategory` varchar(50) NOT NULL,
  `ProductBrand` varchar(50) NOT NULL,
  `ProductGroup` varchar(50) NOT NULL,
  PRIMARY KEY (`ProductID`),
  UNIQUE KEY `PKMA_Image` (`ProductImage`),
  KEY `PKMA_Image_2` (`ProductImage`),
  KEY `PKMA_Image_3` (`ProductImage`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`ProductID`, `ProductName`, `ProductImage`, `ProductPrice`, `ProductDesc`, `ProductCategory`, `ProductBrand`, `ProductGroup`) VALUES
(1, 'Canon Speedlight 430EX II, New 100% fullbox', '430_EXII.jpg', 11212121, 'Đèn flash Canon Speedlite 430EX II thuộc dòng đèn flash rời có đế gắn lên thân máy EOS, được tích hợp nhiều tính năng hiện đại tương tự như người anh em 580 EX II. Được thiết kế hỗ trợ đầy đủ các tính năng cho các dòng máy DSLR EOS, hoặc dòng G-series của', 'Đèn flash', 'Canon', 'Phụ kiện máy ảnh'),
(3, 'Nikon Speedlight SB 700, New 100% Fullbox', 'flash3.jpg', 6399630, 'èn flash3Đèn flash3Đèn flash3Đèn flash3Đèn flash3Đèn flash3Đèn flash3Đèn flash3Đèn flash3Đèn flash3Đèn flash3Đèn flash3Đèn flash3Đèn flash3Đèn flash3Đèn flash3Đèn flash3Đèn flash3Đèn flash3Đèn flash3', 'Đèn flash', 'Nikon', 'Phụ kiện máy ảnh'),
(4, 'Canon Speedlite 600EX-RT New 100%', 'dkfjdf.jpg', 11183000, 'Cùng với mẫu 5D Mark III, Canon hôm nay còn giới thiệu thêm một số phụ kiện khác dành cho dòng máy ống kính rời EOS cũng như riêng cho sản phẩm này. Đầu tiên là mẫu đèn Speedlite 600EX-RT tương thích với tất cả các máy thuộc dòng EOS. Mẫu sản phẩm này có ', 'Đèn flash', 'Canon', 'Phụ kiện máy ảnh'),
(6, 'Nikon Speedlight SB 700, New 100% Fullbox (Hàng ch', 'flash4.jpg', 7499995, 'Đèn flash 4Đèn flash 4Đèn flash 4Đèn flash 4Đèn flash 4Đèn flash 4Đèn flash 4Đèn flash 4Đèn flash 4Đèn flash 4Đèn flash 4Đèn flash 4Đèn flash 4Đèn flash 4Đèn flash 4Đèn flash 4Đèn flash 4Đèn flash 4Đèn flash 4Đèn flash 4Đèn flash 4Đèn flash 4Đèn flash 4Đè', 'Đèn flash', 'Nikon', 'Phụ kiện máy ảnh'),
(7, 'Nikon SB-N5 mới 100% (Hàng chính hãng)', 'flash5.jpg', 3312700, 'Đèn flash 5Đèn flash 5Đèn flash 5Đèn flash 5Đèn flash 5Đèn flash 5Đèn flash 5Đèn flash 5Đèn flash 5Đèn flash 5Đèn flash 5Đèn flash 5Đèn flash 5Đèn flash 5Đèn flash 5Đèn flash 5Đèn flash 5Đèn flash 5Đèn flash 5Đèn flash 5Đèn flash 5Đèn flash 5Đèn flash 5Đè', 'Đèn flash', 'Nikon', 'Phụ kiện máy ảnh'),
(10, 'Nikon Speedlight SB-910 New 100% (Hàng chính hãng)', 'flash1.jpg', 10288360, 'Đèn flash Nikon Đèn flash Nikon Đèn flash Nikon Đèn flash Nikon Đèn flash Nikon Đèn flash Nikon Đèn flash Nikon Đèn flash Nikon', 'Đèn flash', 'Nikon', 'Phụ kiện máy ảnh');


-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `UserID` int(12) NOT NULL AUTO_INCREMENT,
  `Username` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `FullName` varchar(100) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Permissions` varchar(10) NOT NULL,
  `Avatar` varchar(50) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `Phone` int(15) NOT NULL,
  PRIMARY KEY (`UserID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UserID`, `Username`, `Password`, `FullName`, `Email`, `Permissions`, `Avatar`, `Address`, `Phone`) VALUES
(1, 'tovannang', 'ps03425', 'Tô Văn Năng', 'vannang@yahoo.com', 'admin', '', '391A Nam Kỳ Khởi Nghĩa, Quận 3,TP.HCM', 1998078087),
(2, 'user', 'abc', 'User', 'user@yahoo.com', 'user', '', '456 user, Quận user,TP.user', 901654321);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD CONSTRAINT `orderdetails_ibfk_1` FOREIGN KEY (`OrderID`) REFERENCES `orders` (`OrderID`),
  ADD CONSTRAINT `orderdetails_ibfk_2` FOREIGN KEY (`ProductID`) REFERENCES `products` (`ProductID`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
