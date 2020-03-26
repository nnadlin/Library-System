-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 25, 2020 at 12:35 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mini_library_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminregistration`
--

CREATE TABLE `adminregistration` (
  `adminId` varchar(10) NOT NULL,
  `adminName` varchar(50) NOT NULL,
  `adminPassword` varchar(30) NOT NULL,
  `adminPhoneNo` varchar(11) NOT NULL,
  `admintype` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adminregistration`
--

INSERT INTO `adminregistration` (`adminId`, `adminName`, `adminPassword`, `adminPhoneNo`, `admintype`) VALUES
('A1030', 'Azmashuhada', 'azma', '0174087723', 'admin'),
('A1242', 'nik', '0987', '0123456711', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `bookregistration`
--

CREATE TABLE `bookregistration` (
  `bookID` bigint(15) NOT NULL,
  `bookTitle` varchar(50) NOT NULL,
  `author` varchar(50) NOT NULL,
  `publisher` varchar(50) NOT NULL,
  `year` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bookregistration`
--

INSERT INTO `bookregistration` (`bookID`, `bookTitle`, `author`, `publisher`, `year`) VALUES
(340733500, 'The Power of Now', 'Eckhart Tolle', 'Hodder & Stoughton General Division', 2012),
(1119035082, 'Research Methods in Psychology For Dummies', ' Donncha Hanna', ' John Wiley & Sons Inc', 2015),
(1506386768, 'Research Design : Qualitative', 'John W. Creswell', 'SAGE Publications Inc', 2016),
(1526456885, 'Research Question : Little Quick Fix', 'Zina O\'Leary', 'Sage Publications Ltd', 2018),
(9801026354, 'WEB PROGRAMMING', 'DR RABIEI', 'UMT ', 2016);

-- --------------------------------------------------------

--
-- Table structure for table `borrowerbook`
--

CREATE TABLE `borrowerbook` (
  `matricNo` varchar(10) NOT NULL,
  `bookId` int(10) NOT NULL,
  `bookTitle` varchar(50) NOT NULL,
  `date` varchar(20) NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `borrowerbook`
--

INSERT INTO `borrowerbook` (`matricNo`, `bookId`, `bookTitle`, `date`, `status`) VALUES
('S48402', 340733500, 'The Power of Now', '4/5/2019-7/5/2019', 'In progress'),
('S48443', 1119035082, 'Research Methods in Psychology For Dummies', '22/3/2019-25/3/2019', 'Approved'),
('S48481', 340733500, 'The Power of Now', '19/3/2019-22/3/2019', 'Approved'),
('S48496', 1506386768, 'Research Design : Qualitative', '15/4/2019-18/4/2019', 'In progress');

-- --------------------------------------------------------

--
-- Table structure for table `borrowingbook`
--

CREATE TABLE `borrowingbook` (
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `listborrower`
--

CREATE TABLE `listborrower` (
  `matricNo` varchar(7) NOT NULL,
  `bookID` int(10) NOT NULL,
  `bookTitle` varchar(50) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `listborrower`
--

INSERT INTO `listborrower` (`matricNo`, `bookID`, `bookTitle`, `status`) VALUES
('S2222', 1526456885, '', 'Approved'),
('S48496', 340733500, 'The Power of Now', 'Approved'),
('S48496', 1506386768, 'Research Design : Qualitative', 'In progress');

-- --------------------------------------------------------

--
-- Table structure for table `returningbook`
--

CREATE TABLE `returningbook` (
  `matricNo` varchar(7) NOT NULL,
  `bookID` int(10) NOT NULL,
  `returningDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `studentregistration`
--

CREATE TABLE `studentregistration` (
  `matricNo` varchar(7) NOT NULL,
  `password` varchar(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phoneNo` varchar(13) NOT NULL,
  `gender` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `studentregistration`
--

INSERT INTO `studentregistration` (`matricNo`, `password`, `name`, `phoneNo`, `gender`) VALUES
('S48402', 'iman123', 'Muhammad Iman bin Ahmad', '0175332011', 'Male'),
('S48431', 'nnadlin01', 'Nik Nur Adlin Binti Nik Qausbee', '0123456789', 'Female'),
('S48443', 'shah09', 'Shah Ahmad Bin Shah Idham', '0114569921', 'Male'),
('S48481', 'azma3010', 'Noor Azmashuhada Binti Maaroff', '010215678', 'Female'),
('S48496', 'nawal12', 'Nawal Hanis Binti Norhamidi', '0145342122', 'Female');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminregistration`
--
ALTER TABLE `adminregistration`
  ADD PRIMARY KEY (`adminId`);

--
-- Indexes for table `bookregistration`
--
ALTER TABLE `bookregistration`
  ADD PRIMARY KEY (`bookID`);

--
-- Indexes for table `borrowerbook`
--
ALTER TABLE `borrowerbook`
  ADD PRIMARY KEY (`matricNo`);

--
-- Indexes for table `studentregistration`
--
ALTER TABLE `studentregistration`
  ADD PRIMARY KEY (`matricNo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
