-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 26, 2021 at 06:40 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library_management_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `ISBN` varchar(10) NOT NULL,
  `Title` varchar(50) DEFAULT NULL,
  `Edition` varchar(5) DEFAULT NULL,
  `Catagory` varchar(30) DEFAULT NULL,
  `Price` varchar(10) DEFAULT NULL,
  `AuthName` varchar(20) DEFAULT NULL,
  `StaffId` varchar(9) DEFAULT NULL,
  `PublisherId` varchar(13) DEFAULT NULL,
  `UserId` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`ISBN`, `Title`, `Edition`, `Catagory`, `Price`, `AuthName`, `StaffId`, `PublisherId`, `UserId`) VALUES
('B_01', 'Bangladesh', '5th', 'Country', '550', 'Novel_Man', 'S_2', 'P_1', '339'),
('B_02', 'Bangladesh', '5th', 'Country', '550', 'Novel_Man', 'S_2', 'P_1', '333'),
('B_03', '1300', '1st', 'River', '250', 'Rajiya_Sultana', 'S_2', 'P_2', '339'),
('B_04', 'Database', '9th', 'CSE', '300', 'Sovon_Roy', 'S_2', 'P_3', '333'),
('B_05', 'Sat_Kahon', '10th', 'Novel', '285', 'Somoresh_Majumder', 'S_6', 'P_6', '330'),
('B_06', 'Chorabali', '10th', 'Detective', '150', 'Mahira_Arefin', 'S_2', 'P_8', '333'),
('B_07', 'Cokher_Bali', '9th', 'Novel', '200', 'Rabindranath_Tagor', 'S_2', 'P_4', '337'),
('B_08', 'Nouka_Dubi', '8th', 'Novel', '200', 'Rabindranath_Tagor', 'S_2', 'P_1', '337'),
('B_09', 'Database', '9th', 'CSE', '300', 'Sovon_Roy', 'S_8', 'P_3', '339'),
('B_10', 'Gitanjali', '24th', 'Poem', '245', 'Rabindranath_Tagor', 'S_5', 'P_4', '334'),
('B_11', '1300', '1st', 'River', '250', 'Rajiya_Sultana', 'S_5', 'P_2', '331'),
('B_12', 'Himu_Abong', '4th', 'Novel', '150', 'Humayun_Ahmed', 'S_8', 'P_7', '339'),
('B_13', 'Michir_Ali', '5th', 'Detective', '120', 'Humayun_Ahmed', 'S_8', 'P_5', '339'),
('B_14', 'Bangladesh', '5th', 'Country', '550', 'Novel_Man', 'S_5', 'P_1', '334'),
('B_15', 'Sat_Kahon', '10th', 'Novel', '285', 'Somoresh_Majumder', 'S_3', 'P_6', '332');

-- --------------------------------------------------------

--
-- Table structure for table `keeptrack`
--

CREATE TABLE `keeptrack` (
  `StaffId` varchar(9) DEFAULT NULL,
  `UserId` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `keeptrack`
--

INSERT INTO `keeptrack` (`StaffId`, `UserId`) VALUES
('S_2', '339'),
('S_2', '333'),
('S_2', '337'),
('S_3', '332'),
('S_5', '331'),
('S_5', '334'),
('S_6', '330'),
('S_8', '339');

-- --------------------------------------------------------

--
-- Stand-in structure for view `mahira`
-- (See below for the actual view)
--
CREATE TABLE `mahira` (
`FirstName` varchar(20)
,`LastName` varchar(20)
);

-- --------------------------------------------------------

--
-- Table structure for table `publisher`
--

CREATE TABLE `publisher` (
  `PublisherId` varchar(13) NOT NULL,
  `YearOfPublication` varchar(4) DEFAULT NULL,
  `PName` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `publisher`
--

INSERT INTO `publisher` (`PublisherId`, `YearOfPublication`, `PName`) VALUES
('P_1', '1994', 'Popi_Library'),
('P_2', '2000', 'Neuton_Publication'),
('P_3', '2010', 'Alok_Prokashoni'),
('P_4', '1999', 'HijiBiji_Prokashoni'),
('P_5', '2019', 'Alok_Prokashoni'),
('P_6', '1999', 'Pen_Production'),
('P_7', '2012', 'Alok_Prokashoni'),
('P_8', '2020', 'Khelaghor_Prokashoni');

-- --------------------------------------------------------

--
-- Stand-in structure for view `rashed`
-- (See below for the actual view)
--
CREATE TABLE `rashed` (
`FirstName` varchar(20)
,`Title` varchar(50)
);

-- --------------------------------------------------------

--
-- Table structure for table `readers`
--

CREATE TABLE `readers` (
  `UserId` varchar(11) NOT NULL,
  `FirstName` varchar(20) DEFAULT NULL,
  `LastName` varchar(20) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `PhoneNo` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `readers`
--

INSERT INTO `readers` (`UserId`, `FirstName`, `LastName`, `Email`, `Address`, `PhoneNo`) VALUES
('330', 'Asim', 'Riaz', 'asim@gmail.com', 'N_Block_339', '01399999999'),
('331', 'Sidharth', 'Shukla', 'sidharth@gmail.com', 'R_Block_338', '01499999999'),
('332', 'Rashidul', 'Haq', 'rashidul@gmail.com', 'M_Block_337', '01599999999'),
('333', 'Farhana', 'Islam', 'farhana@gmail.com', 'J_Block_336', '01699999999'),
('334', 'Sehnaaz', 'Gill', 'sehnaaz@gmail.com', 'P_Block_335', '01799999999'),
('335', 'Pratik', 'Sehejpal', 'pratik@gmail.com', 'S_Block_334', '01899999999'),
('336', 'Jannatul', 'Ferdouse', 'jannatul@gmail.com', 'F_Block_333', '01999999999'),
('337', 'Mahira', 'Arefin', 'mahira@gmail.com', 'R_Block_332', '01319999999'),
('338', 'Rouv', 'Hossain', 'rouv@gmail.com', 'S_Block_331', '01419999999'),
('339', 'Nishant', 'Bhatt', 'nishant@gmail.com', 'A_Block_330', '01519999999');

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `RegNo` varchar(20) NOT NULL,
  `BookAmount` varchar(2) DEFAULT NULL,
  `IssueDate` varchar(20) DEFAULT NULL,
  `ReturnDate` varchar(20) DEFAULT NULL,
  `OrgReturnDate` varchar(20) DEFAULT NULL,
  `DueDate` varchar(10) DEFAULT NULL,
  `Fine` varchar(3) DEFAULT NULL,
  `StaffId` varchar(9) DEFAULT NULL,
  `UserId` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`RegNo`, `BookAmount`, `IssueDate`, `ReturnDate`, `OrgReturnDate`, `DueDate`, `Fine`, `StaffId`, `UserId`) VALUES
('1001', '2', '7/6/21', '14/6/21', '10/6/21', '4', '00', 'S_2', '339'),
('1002', '3', '7/6/21', '14/6/21', '14/6/21', '0', '00', 'S_2', '333'),
('1003', '1', '8/6/21', '15/6/21', '13/6/21', '2', '00', 'S_6', '330'),
('1004', '2', '10/6/21', '17/6/21', '22/6/21', '-5', '50', 'S_2', '337'),
('1005', '3', '15/6/21', '22/6/21', '29/6/21', '-7', '50', 'S_8', '339'),
('1006', '1', '1/7/21', '8/7/21', '6/7/21', '2', '00', 'S_5', '331'),
('1007', '2', '1/7/21', '8/7/21', '9/7/21', '-1', '50', 'S_5', '334'),
('1008', '1', '2/7/21', '9/7/21', '9/7/21', '0', '00', 'S_3', '332');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `StaffId` varchar(9) NOT NULL,
  `SName` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`StaffId`, `SName`) VALUES
('S_1', 'Rabeya_Rahman'),
('S_2', 'Jashim_Uddin'),
('S_3', 'Badol_Khan'),
('S_4', 'Nikki_Roy'),
('S_5', 'Halima_Begum'),
('S_6', 'Mayn_Uddin'),
('S_7', 'Umar_Riaz'),
('S_8', 'Rashmi_De');

-- --------------------------------------------------------

--
-- Structure for view `mahira`
--
DROP TABLE IF EXISTS `mahira`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `mahira`  AS SELECT `readers`.`FirstName` AS `FirstName`, `readers`.`LastName` AS `LastName` FROM `readers` ;

-- --------------------------------------------------------

--
-- Structure for view `rashed`
--
DROP TABLE IF EXISTS `rashed`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `rashed`  AS SELECT `readers`.`FirstName` AS `FirstName`, `books`.`Title` AS `Title` FROM (`readers` join `books` on(`readers`.`UserId` = `books`.`UserId`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`ISBN`),
  ADD KEY `StaffId` (`StaffId`),
  ADD KEY `PublisherId` (`PublisherId`),
  ADD KEY `UserId` (`UserId`);

--
-- Indexes for table `keeptrack`
--
ALTER TABLE `keeptrack`
  ADD KEY `StaffId` (`StaffId`),
  ADD KEY `UserId` (`UserId`);

--
-- Indexes for table `publisher`
--
ALTER TABLE `publisher`
  ADD PRIMARY KEY (`PublisherId`);

--
-- Indexes for table `readers`
--
ALTER TABLE `readers`
  ADD PRIMARY KEY (`UserId`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`RegNo`),
  ADD KEY `StaffId` (`StaffId`),
  ADD KEY `UserId` (`UserId`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`StaffId`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_ibfk_1` FOREIGN KEY (`StaffId`) REFERENCES `staff` (`StaffId`),
  ADD CONSTRAINT `books_ibfk_2` FOREIGN KEY (`PublisherId`) REFERENCES `publisher` (`PublisherId`),
  ADD CONSTRAINT `books_ibfk_3` FOREIGN KEY (`UserId`) REFERENCES `readers` (`UserId`);

--
-- Constraints for table `keeptrack`
--
ALTER TABLE `keeptrack`
  ADD CONSTRAINT `keeptrack_ibfk_1` FOREIGN KEY (`StaffId`) REFERENCES `staff` (`StaffId`),
  ADD CONSTRAINT `keeptrack_ibfk_2` FOREIGN KEY (`UserId`) REFERENCES `readers` (`UserId`);

--
-- Constraints for table `reports`
--
ALTER TABLE `reports`
  ADD CONSTRAINT `reports_ibfk_1` FOREIGN KEY (`StaffId`) REFERENCES `staff` (`StaffId`),
  ADD CONSTRAINT `reports_ibfk_2` FOREIGN KEY (`UserId`) REFERENCES `readers` (`UserId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
