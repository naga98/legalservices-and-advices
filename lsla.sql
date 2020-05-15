-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 02, 2019 at 10:09 AM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lsla`
--

-- --------------------------------------------------------

--
-- Table structure for table `askquestion`
--

CREATE TABLE `askquestion` (
  `slno` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `law` varchar(80) NOT NULL,
  `title` varchar(80) NOT NULL,
  `question` varchar(80) NOT NULL,
  `state` varchar(80) NOT NULL,
  `city` varchar(80) NOT NULL,
  `pincode` varchar(80) NOT NULL,
  `phone` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `askquestion`
--

INSERT INTO `askquestion` (`slno`, `email`, `law`, `title`, `question`, `state`, `city`, `pincode`, `phone`) VALUES
(1, 'kuundana@gmail.com', 'CivilLaw', 'sdf', 'sfd', 'sdf', 'sf', 'fs', 'sfd'),
(2, 'kuundana@gmail.com', 'CriminalLaw', 'i need diverse', 'I have faced problems with my husbend', 'ap', 'vijayawada', '520011', '9988774455');

-- --------------------------------------------------------

--
-- Table structure for table `lawyerregistration`
--

CREATE TABLE `lawyerregistration` (
  `FullName` varchar(50) NOT NULL,
  `Mobileno` varchar(20) NOT NULL,
  `EmailId` varchar(30) NOT NULL,
  `Password` varchar(30) NOT NULL,
  `AreaofLaw` varchar(50) NOT NULL,
  `Experience` varchar(30) NOT NULL,
  `City` varchar(50) NOT NULL,
  `Gender` varchar(6) NOT NULL,
  `Remember` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lawyerregistration`
--

INSERT INTO `lawyerregistration` (`FullName`, `Mobileno`, `EmailId`, `Password`, `AreaofLaw`, `Experience`, `City`, `Gender`, `Remember`) VALUES
('chinnu', '8686080884', 'chinnu@gmail.com', '12345', 'Family Law', '9', 'guntur', 'male', 'on'),
('mahesh', '9988775544', 'mahesh@gmail.com', '12345', 'Criminal Law', '3 years', 'vijayawada', 'male', 'on'),
('naga', '9849049261', 'naga@gmail.com', '12345', 'Family Law', '5', 'guntur', 'male', 'on'),
('siri m', '9984755661', 'siri@gmail.com', '12345', 'Property Law', '2 years', 'vijayawada', 'female', 'on'),
('teja', '9154558801', 'teja@gmail.com', '12345', 'Family Law', '3', 'guntur', 'male', 'on');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `emailid` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `desig` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`emailid`, `password`, `desig`, `status`) VALUES
('chinnu@gmail.com', '12345', 'lawyer', 'active'),
('kaveri@gmail.com', '12345', 'user', 'active'),
('kuundana@gmail.com', '12345', 'user', 'active'),
('mahesh@gmail.com', '12345', 'lawyer', 'active'),
('naga@gmail.com', '12345', 'lawyer', 'active'),
('siri@gmail.com', '12345', 'lawyer', 'active'),
('teja@gmail.com', '12345', 'lawyer', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `responseaskqusetion`
--

CREATE TABLE `responseaskqusetion` (
  `slno` int(11) NOT NULL,
  `aqid` int(11) NOT NULL,
  `laweremail` varchar(50) NOT NULL,
  `useremail` varchar(50) NOT NULL,
  `response` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `responseaskqusetion`
--

INSERT INTO `responseaskqusetion` (`slno`, `aqid`, `laweremail`, `useremail`, `response`) VALUES
(1, 1, 'mahesh@gmail.com', 'kuundana@gmail.com', 'hihihi'),
(2, 2, 'siri@gmail.com', 'kuundana@gmail.com', 'hjkhlkj;ok;lkbl');

-- --------------------------------------------------------

--
-- Table structure for table `responsetalkquestion`
--

CREATE TABLE `responsetalkquestion` (
  `slno` int(11) NOT NULL,
  `tlid` int(11) NOT NULL,
  `laweremail` varchar(50) NOT NULL,
  `useremail` varchar(50) NOT NULL,
  `response` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `responsetalkquestion`
--

INSERT INTO `responsetalkquestion` (`slno`, `tlid`, `laweremail`, `useremail`, `response`) VALUES
(1, 2, 'mahesh@gmail.com', 'kuundana@gmail.com', 'hihih'),
(2, 3, 'chinnu@gmail.com', 'kaveri@gmail.com', 'hey hai'),
(3, 3, 'chinnu@gmail.com', 'kaveri@gmail.com', 'hello');

-- --------------------------------------------------------

--
-- Table structure for table `talkquestion`
--

CREATE TABLE `talkquestion` (
  `slno` int(11) NOT NULL,
  `ToEmailid` varchar(80) NOT NULL,
  `law` varchar(80) NOT NULL,
  `title` varchar(80) NOT NULL,
  `question` text NOT NULL,
  `state` varchar(80) NOT NULL,
  `city` varchar(50) NOT NULL,
  `pincode` varchar(60) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `FromEmailid` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `talkquestion`
--

INSERT INTO `talkquestion` (`slno`, `ToEmailid`, `law`, `title`, `question`, `state`, `city`, `pincode`, `phone`, `FromEmailid`, `username`) VALUES
(2, 'mahesh@gmail.com', 'Criminal Law', 'sddsfd', 'ffdsdsffsfdsdsf', 'ap', 'vijayawada', '520011', '9988774455', 'kuundana@gmail.com', 'kundu'),
(3, 'chinnu@gmail.com', 'Family Law', 'dont know', 'hello every one..i am suffered', 'ap', 'guntur', '520013', '9154558801', 'kaveri@gmail.com', 'kaveri');

-- --------------------------------------------------------

--
-- Table structure for table `userregistration`
--

CREATE TABLE `userregistration` (
  `FullName` varchar(30) NOT NULL,
  `Mobileno` varchar(30) NOT NULL,
  `Emailid` varchar(30) NOT NULL,
  `Password` varchar(30) NOT NULL,
  `City` varchar(30) NOT NULL,
  `Address` varchar(70) NOT NULL,
  `Gender` varchar(30) NOT NULL,
  `Remember` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userregistration`
--

INSERT INTO `userregistration` (`FullName`, `Mobileno`, `Emailid`, `Password`, `City`, `Address`, `Gender`, `Remember`) VALUES
('kaveri j', '6655889977', 'kaveri@gmail.com', '12345', 'vijayawada', 'madhuranagar', 'female', 'on'),
('kundana y', '9658321047', 'kuundana@gmail.com', '12345', 'vijayawada', 'papulumilli', 'female', 'on');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `askquestion`
--
ALTER TABLE `askquestion`
  ADD PRIMARY KEY (`slno`);

--
-- Indexes for table `lawyerregistration`
--
ALTER TABLE `lawyerregistration`
  ADD PRIMARY KEY (`EmailId`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`emailid`);

--
-- Indexes for table `responseaskqusetion`
--
ALTER TABLE `responseaskqusetion`
  ADD PRIMARY KEY (`slno`);

--
-- Indexes for table `responsetalkquestion`
--
ALTER TABLE `responsetalkquestion`
  ADD PRIMARY KEY (`slno`);

--
-- Indexes for table `talkquestion`
--
ALTER TABLE `talkquestion`
  ADD PRIMARY KEY (`slno`);

--
-- Indexes for table `userregistration`
--
ALTER TABLE `userregistration`
  ADD PRIMARY KEY (`Emailid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `askquestion`
--
ALTER TABLE `askquestion`
  MODIFY `slno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `responseaskqusetion`
--
ALTER TABLE `responseaskqusetion`
  MODIFY `slno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `responsetalkquestion`
--
ALTER TABLE `responsetalkquestion`
  MODIFY `slno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `talkquestion`
--
ALTER TABLE `talkquestion`
  MODIFY `slno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
