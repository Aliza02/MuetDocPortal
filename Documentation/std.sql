-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 05, 2023 at 06:16 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `muetdoc`
--

-- --------------------------------------------------------

--
-- Table structure for table `std`
--

CREATE TABLE `std` (
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `rollNo` varchar(10) NOT NULL,
  `email` varchar(25) NOT NULL,
  `phone` int(11) NOT NULL,
  `batch` int(4) NOT NULL,
  `dept` varchar(20) NOT NULL,
  `program` varchar(30) NOT NULL,
  `document` varchar(50) NOT NULL,
  `ChallanNo` int(100) NOT NULL,
  `paymentType` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `std`
--

INSERT INTO `std` (`firstName`, `lastName`, `rollNo`, `email`, `phone`, `batch`, `dept`, `program`, `document`, `ChallanNo`, `paymentType`) VALUES
('Aliza', 'Aziz', '19SW02', 'abc@gmail.com', 2147483647, 12, 'SW', 'Undergraduate', 'Marksheet', 13, 'Bank Challan'),
('Aliza', 'Aziz', '19SW02', 'abc@gmail.com', 2147483647, 12, 'SW', 'Undergraduate', 'Marksheet', 13, 'Bank Challan'),
('Aliza', 'Aziz', '19SW02', 'abc@gmail.com', 2147483647, 12, 'SW', 'Undergraduate', 'Marksheet', 13, 'Bank Challan'),
('aBC', 'XYZ', '19sw02', 'abc@gmail.com', 0, 19, 'sw', 'Undergraduate', 'Marksheet', 12, 'Bank Challan'),
('ABC', 'XYZ', '12', 'daad@gmail.com', 10000000, 90, 'sw', 'Undergraduate', 'Marksheet', 12, 'Bank Challan'),
('ABC', 'XYZ', '12', 'daad@gmail.com', 10000000, 90, 'sw', 'Undergraduate', 'Marksheet', 12, 'Bank Challan'),
('ABC', 'XYZ', '12', 'daad@gmail.com', 10000000, 90, 'sw', 'Undergraduate', 'Marksheet', 12, 'Bank Challan'),
('ABC', 'XYZ', '12', 'daad@gmail.com', 10000000, 90, 'sw', 'Undergraduate', 'Marksheet', 12, 'Bank Challan'),
('ABC', 'XYZ', '12', 'daad@gmail.com', 10000000, 90, 'sw', 'Undergraduate', 'Marksheet', 12, 'Bank Challan'),
('ABC', 'XYZ', '12', 'daad@gmail.com', 10000000, 90, 'sw', 'Undergraduate', 'Marksheet', 12, 'Bank Challan'),
('ABC', 'XYZ', '12', 'daad@gmail.com', 10000000, 90, 'sw', 'Undergraduate', 'Marksheet', 12, 'Bank Challan'),
('ABC', 'XYZ', '12', 'daad@gmail.com', 10000000, 90, 'sw', 'Undergraduate', 'Marksheet', 12, 'Bank Challan'),
('ABC', 'XYZ', '12', 'daad@gmail.com', 10000000, 90, 'sw', 'Undergraduate', 'Marksheet', 12, 'Bank Challan'),
('ABC', 'XYZ', '12', 'daad@gmail.com', 10000000, 90, 'sw', 'Undergraduate', 'Marksheet', 12, 'Bank Challan'),
('ABC', 'XYZ', '12', 'daad@gmail.com', 10000000, 90, 'sw', 'Undergraduate', 'Marksheet', 12, 'Bank Challan'),
('ABC', 'XYZ', '12', 'daad@gmail.com', 10000000, 90, 'sw', 'Undergraduate', 'Marksheet', 12, 'Bank Challan'),
('qq', 'aa', 'aa', 'abc@gmail.com', 99999, 12, 'sw', 'Undergraduate', 'Marksheet', 12, 'Bank Challan'),
('qq', 'aa', 'aa', 'abc@gmail.com', 99999, 12, 'sw', 'Undergraduate', 'Marksheet', 12, 'Bank Challan'),
('qq', 'aa', 'aa', 'abc@gmail.com', 99999, 12, 'sw', 'Undergraduate', 'Marksheet', 12, 'Bank Challan'),
('qq', 'aa', '19', 'abc@gmail.com', 99999, 12, 'sw', 'Undergraduate', 'Marksheet', 12, 'Bank Challan'),
('qq', 'aa', '19', 'abc@gmail.com', 99999, 12, 'sw', 'Undergraduate', 'Marksheet', 12, 'Bank Challan'),
('aa', 'aa', '09', 'abc@gmail.com', 111, 10, 'sw', 'Undergraduate', 'Marksheet', 12, 'Bank Challan'),
('aa', 'aa', '09', 'abc@gmail.com', 111, 10, 'sw', 'Undergraduate', 'Marksheet', 12, 'Bank Challan'),
('aa', 'aa', '09', 'abc@gmail.com', 111, 10, 'sw', 'Undergraduate', 'Marksheet', 12, 'Bank Challan'),
('aa', 'aa', '09', 'abc@gmail.com', 111, 10, 'sw', 'Undergraduate', 'Marksheet', 12, 'Bank Challan'),
('aa', 'aa', '09', 'abc@gmail.com', 111, 10, 'sw', 'Undergraduate', 'Marksheet', 12, 'Bank Challan'),
('aa', 'aa', '09', 'abc@gmail.com', 111, 10, 'sw', 'Undergraduate', 'Marksheet', 12, 'Bank Challan'),
('aa', 'aa', '09', 'abc@gmail.com', 111, 10, 'sw', 'Undergraduate', 'Marksheet', 12, 'Bank Challan'),
('aa', 'aa', '09', 'abc@gmail.com', 111, 10, 'sw', 'Undergraduate', 'Marksheet', 12, 'Bank Challan'),
('aa', 'aa', '09', 'abc@gmail.com', 111, 10, 'sw', 'Undergraduate', 'Marksheet', 12, 'Bank Challan'),
('aa', 'aa', '09', 'abc@gmail.com', 111, 10, 'sw', 'Undergraduate', 'Marksheet', 12, 'Bank Challan'),
('aa', 'aa', '09', 'abc@gmail.com', 111, 10, 'sw', 'Undergraduate', 'Marksheet', 12, 'Bank Challan'),
('aa', 'aa', '09', 'abc@gmail.com', 111, 10, 'sw', 'Undergraduate', 'Marksheet', 12, 'Bank Challan'),
('aa', 'aa', '09', 'abc@gmail.com', 111, 10, 'sw', 'Undergraduate', 'Marksheet', 12, 'Bank Challan'),
('aa', 'aa', '09', 'abc@gmail.com', 111, 10, 'sw', 'Undergraduate', 'Marksheet', 12, 'Bank Challan'),
('Afsa', 'Riaz', '19sw02', 'abc@gmail.com', 1111111, 11, 'SW', 'Undergraduate', 'Marksheet', 111, 'Bank Challan'),
('Afsa', 'Riaz', '19sw02', 'abc@gmail.com', 1111111, 11, 'SW', 'Undergraduate', 'Marksheet', 111, 'Bank Challan'),
('Afsa', 'Riaz', '19sw02', 'abc@gmail.com', 1111111, 11, 'SW', 'Undergraduate', 'Marksheet', 111, 'Bank Challan'),
('Afsa', 'Riaz', '19sw02', 'abc@gmail.com', 1111111, 11, 'SW', 'Undergraduate', 'Marksheet', 111, 'Bank Challan'),
('Afsa', 'Riaz', '19sw02', 'abc@gmail.com', 1111111, 11, 'SW', 'Undergraduate', 'Marksheet', 111, 'Bank Challan'),
('Afsa', 'Riaz', '19sw02', 'abc@gmail.com', 1111111, 11, 'SW', 'Undergraduate', 'Marksheet', 111, 'Bank Challan'),
('Afsa', 'Riaz', '01', 'abc@gmail.com', 1111111, 11, 'SW', 'Undergraduate', 'Marksheet', 111, 'Bank Challan'),
('Afsa', 'Riaz', '01', 'abc@gmail.com', 1111111, 11, 'SW', 'Undergraduate', 'Marksheet', 111, 'Bank Challan'),
('Afsa', 'Riaz', '01', 'abc@gmail.com', 1111111, 11, 'SW', 'Undergraduate', 'Marksheet', 111, 'Bank Challan'),
('Afsa', 'Riaz', '01', 'abc@gmail.com', 1111111, 11, 'SW', 'Undergraduate', 'Marksheet', 111, 'Bank Challan'),
('Afsa', 'Riaz', '01', 'abc@gmail.com', 1111111, 11, 'SW', 'Undergraduate', 'Marksheet', 111, 'Bank Challan'),
('Afsa', 'Riaz', '01', 'abc@gmail.com', 1111111, 11, 'SW', 'Undergraduate', 'Marksheet', 111, 'Bank Challan'),
('Afsa', 'Riaz', '01', 'abc@gmail.com', 1111111, 11, 'SW', 'Undergraduate', 'Marksheet', 111, 'Bank Challan'),
('Afsa', 'Riaz', '01', 'abc@gmail.com', 1111111, 11, 'SW', 'Undergraduate', 'Marksheet', 111, 'Bank Challan'),
('Aliza', 'Aziz', '08', 'abc@gmail.com', 0, 9, 'sw', 'Undergraduate', 'Marksheet', 14, 'Bank Challan'),
('Aliza', 'Aziz', '08', 'abc@gmail.com', 0, 9, 'sw', 'Undergraduate', 'Marksheet', 14, 'Bank Challan'),
('Aliza', 'Aziz', '08', 'abc@gmail.com', 0, 9, 'sw', 'Undergraduate', 'Marksheet', 14, 'Bank Challan'),
('Aliza', 'Aziz', '08', 'abc@gmail.com', 0, 9, 'sw', 'Undergraduate', 'Marksheet', 14, 'Bank Challan'),
('Aliza', 'Aziz', '08', 'abc@gmail.com', 0, 9, 'sw', 'Undergraduate', 'Marksheet', 14, 'Bank Challan'),
('aa', 'aa', '4', 'abc@gmail.com', 2147483647, 11, 'sw', 'Undergraduate', 'Marksheet', 12, 'Bank Challan'),
('aa', 'aa', '4', 'abc@gmail.com', 2147483647, 11, 'sw', 'Undergraduate', 'Marksheet', 12, 'Bank Challan'),
('Aliza', 'Aziz', '03', 'abc@gmail.com', 2147483647, 12, 'sw', 'Undergraduate', 'Marksheet', 55, 'Bank Challan'),
('Aliza', 'aa', '33', 'abc@gmail.com', 111111111, 12, 'SW', 'Undergraduate', 'Marksheet', 14, 'Bank Challan'),
('ajh', 'aa', '34', 'abc@gmail.com', 2147483647, 13, 'sw', 'Undergraduate', 'Marksheet', 12, 'Bank Challan'),
('Aliza', 'Aziz', '34', 'abc@gmail.com', 2147483647, 12, 'sw', 'Undergraduate', 'Marksheet', 13, 'Bank Challan'),
('Aliza', 'Aziz', '34', 'abc@gmail.com', 2147483647, 12, 'sw', 'Undergraduate', 'Marksheet', 12, 'Bank Challan'),
('Aliza', 'Aziz', '02', 'abc@gmail.com', 2147483647, 19, 'sw', 'Undergraduate', 'Marksheet', 99, 'Bank Challan'),
('Aliza', 'Aziz', '02', 'abc@gmail.com', 2147483647, 19, 'sw', 'Undergraduate', 'Marksheet', 99, 'Bank Challan');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
