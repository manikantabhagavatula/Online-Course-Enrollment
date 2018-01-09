-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 04, 2016 at 10:55 PM
-- Server version: 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `organ`
--

-- --------------------------------------------------------

--
-- Table structure for table `hospital`
--
Drop Database if exists organ;
Create database organ;
use organ;

CREATE TABLE IF NOT EXISTS `hospital` (
  `userName` varchar(50) NOT NULL,
  `hospital_id` int(11) NOT NULL,
  `hosp_name` varchar(50) NOT NULL,
  `address` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `zip` varchar(10) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hospital`
--

INSERT INTO `hospital` (`userName`, `hospital_id`, `hosp_name`, `address`, `city`, `state`, `zip`, `email`, `password`) VALUES
('asdas', 8001, 'Carolina health', 'ashford', 'Charlotte', 'North Carolina', '28262', 'asdas@gmail.com', 'asd'),
('noc', 8002, 'NC Ortho clinic', 'ashford', 'Charlotte', 'North Carolina', '28263', 'a@gmail.com', 'asd'),
('NCMC', 8003, 'North carolina medical services', 'North tryon street', 'Charlotte', 'NC', '28262', 'ncmc@gmail.com', 'asd'),
('', 8004, '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `organs`
--

CREATE TABLE IF NOT EXISTS `organs` (
  `donor_id` int(15) NOT NULL,
  `organ_id` int(15) NOT NULL,
  `organ_name` varchar(45) NOT NULL,
  `hospital_id` int(15) NOT NULL,
  `availability` varchar(45) NOT NULL,
  `bloodgroup` varchar(45) NOT NULL,
  `Rhfactor` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `organs`
--

INSERT INTO `organs` (`donor_id`, `organ_id`, `organ_name`, `hospital_id`, `availability`, `bloodgroup`, `Rhfactor`) VALUES
(1, 6001, 'Eyes', 8001, 'Available', 'A', 'Positive'),
(4, 6002, 'Kidneys', 8002, 'Available', 'B', 'Negative'),
(5, 6003, 'Liver', 8003, 'Available', 'O', 'Positive'),
(7, 6003, 'Pancreas', 8001, 'Available', 'B', 'Negative'),
(1, 6004, 'Lungs', 8001, 'available', 'AB', 'Negative');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE IF NOT EXISTS `tickets` (
  `reqId` int(5) NOT NULL,
  `hospital_id` int(5) NOT NULL,
  `organ_name` varchar(50) NOT NULL,
  `bloodgroup` varchar(20) NOT NULL,
  `Rhfactor` varchar(15) NOT NULL,
  `mailId` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`reqId`, `hospital_id`, `organ_name`, `bloodgroup`, `Rhfactor`, `mailId`) VALUES
(1, 8001, 'Kidneys', 'A', 'Positive', 'asdas@gmail.com'),
(2, 8002, 'Lungs', 'AB', 'Negative', 'vbudagam@uncc.edu'),
(3, 8003, 'Kidneys', 'A', 'Positive', 'tgude@uncc.edu');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `user_name` varchar(30) NOT NULL,
  `First_name` text,
  `Last_Name` text,
  `Email_address` varchar(40) DEFAULT NULL,
  `Password` varchar(40) DEFAULT NULL,
  `Address1` varchar(70) DEFAULT NULL,
  `Address2` varchar(70) DEFAULT NULL,
  `City` text,
  `State` text,
  `Desired_Hospital` text,
  `Desired_Hospital_ID` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `User_Role` text NOT NULL,
  `zip` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_name`, `First_name`, `Last_Name`, `Email_address`, `Password`, `Address1`, `Address2`, `City`, `State`, `Desired_Hospital`, `Desired_Hospital_ID`, `user_id`, `User_Role`, `zip`) VALUES
('dsfasdf', 'Sakthi', 'sadasd', 'dfgsd@gmail.com', 'test', 'dffsadfsd', 'dsfsadf', 'sdfas', 'dsfgds', NULL, NULL, 1, 'DONOR', NULL),
('kjh', 'kjhjk', 'hkjh', 'hkj@sdf.com', 'kj', 'kjhkj', 'hkk', 'kjh', 'khk', NULL, NULL, 2, 'HOSPITAL', NULL),
('saksen', 'Sakthi', 'saranya', '', '', '', '', '', '', NULL, NULL, 3, 'SELECT VALUES', NULL),
('test', 'test', 'test', 'test@test.com', 'test', 'test', 'test', 'test', 'test', NULL, 0, 4, 'DONOR', NULL),
('ASDAS', 'ASDA', 'ASDASD', 'SA@SAD.COM', 'ASDA', 'ASD', 'vasdasd', 'ASD', 'SADAS', NULL, NULL, 5, 'DONOR', NULL),
('vinay', 'vinay', 'chanchlani', 'v@gmail.com', 'vinay', 'asd', 'asdf', 'Charlotte', 'North Carolina', NULL, NULL, 6, 'CUSTODIAN', NULL),
('sagar', 'sagar', 'budagam', 'asdas@gmail.com', 'asd', 'ashford', 'ashford', 'Charlotte', 'North Carolina', 'asdas', 8001, 7, 'DONOR', '28262');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hospital`
--
ALTER TABLE `hospital`
  ADD PRIMARY KEY (`hospital_id`),
  ADD UNIQUE KEY `userName_UNIQUE` (`userName`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`reqId`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `User_name` (`user_name`),
  ADD UNIQUE KEY `Email_address` (`Email_address`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

use organ;
select * from user;
