-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 04, 2023 at 07:56 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lankabangla01`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `applicationNO` int(11) NOT NULL,
  `accOpeningDate` date DEFAULT NULL,
  `cdblParticipantId` int(11) DEFAULT NULL,
  `boId` int(11) DEFAULT NULL,
  `nameOfAc` varchar(30) DEFAULT NULL,
  `title` varchar(30) DEFAULT NULL,
  `accountType` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `administrator`
--

CREATE TABLE `administrator` (
  `AemployeeId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `authorised_person`
--

CREATE TABLE `authorised_person` (
  `authoPerId` int(11) NOT NULL,
  `isShareHolderOfStock` tinyint(1) DEFAULT NULL,
  `signature` longblob DEFAULT NULL,
  `ACcustomerId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `authorised_person`
--

INSERT INTO `authorised_person` (`authoPerId`, `isShareHolderOfStock`, `signature`, `ACcustomerId`) VALUES
(103, NULL, NULL, NULL),
(767, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bank_info`
--

CREATE TABLE `bank_info` (
  `bankId` int(10) UNSIGNED NOT NULL,
  `routingNumber` varchar(20) DEFAULT NULL,
  `bankName` varchar(100) DEFAULT NULL,
  `branchName` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bank_info`
--

INSERT INTO `bank_info` (`bankId`, `routingNumber`, `bankName`, `branchName`) VALUES
(1001, '123456780', 'Dhaka Bank', 'Motijheel Branch, Dhaka'),
(1002, '987654321', 'Standard Chartered Bank Bangladesh', 'Gulshan Branch, Dhaka'),
(1003, '111122233', 'Dutch-Bangla Bank', 'Dhanmondi Branch, Dhaka'),
(1004, '444455566', 'BRAC Bank', 'Uttara Branch, Dhaka'),
(1005, '777788899', 'Islami Bank Bangladesh', 'Chittagong Port Branch, Chittagong'),
(1006, '222233344', 'United Commercial Bank', 'Coxs Bazar Branch, Coxs Bazar'),
(1007, '555566677', 'Sonali Bank', 'Sylhet City Branch, Sylhet'),
(1008, '999988877', 'Rupali Bank', 'Khulna Main Branch, Khulna'),
(1009, '333322211', 'National Bank Limited', 'Rajshahi Central Branch, Rajshahi'),
(1010, '666655544', 'Eastern Bank Limited', 'Barisal Divisional Branch, Barisal'),
(1011, '888899977', 'Prime Bank Limited', 'Comilla Town Branch, Comilla'),
(1012, '222211133', 'One Bank Limited', 'Mymensingh Campus Branch, Mymensingh'),
(1013, '111133355', 'Trust Bank Limited', 'Rangpur District Branch, Rangpur'),
(1014, '444466688', 'Mercantile Bank Limited', 'Narayanganj Riverside Branch, Narayanganj'),
(1015, '555544433', 'Pubali Bank Limited', 'Bogura Commercial Branch, Bogura'),
(1016, '777766655', 'City Bank Limited', 'Jessore City Branch, Jessore'),
(1017, '111199988', 'AB Bank Limited', 'Tangail Branch, Tangail'),
(1018, '888877766', 'Janata Bank Limited', 'Faridpur Town Branch, Faridpur'),
(1019, '333322211', 'Agrani Bank Limited', 'Satkhira Coastal Branch, Satkhira'),
(1020, '666655544', 'NRB Commercial Bank Limited', 'Pabna District Branch, Pabna');

-- --------------------------------------------------------

--
-- Table structure for table `bo_account`
--

CREATE TABLE `bo_account` (
  `BOapplicationNo` int(11) NOT NULL,
  `boCategory` varchar(20) DEFAULT NULL,
  `boType` varchar(20) DEFAULT NULL,
  `accOpeningDate` date DEFAULT NULL,
  `customerId` int(11) DEFAULT NULL,
  `bankId` int(10) UNSIGNED DEFAULT NULL,
  `statementCycleType` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bo_account`
--

INSERT INTO `bo_account` (`BOapplicationNo`, `boCategory`, `boType`, `accOpeningDate`, `customerId`, `bankId`, `statementCycleType`) VALUES
(1001, 'Savings', 'Personal', '2017-01-10', 103, 1003, 'Monthly'),
(1002, 'Current', 'Business', '2014-02-18', 104, 1001, 'Quarterly'),
(1003, 'Savings', 'Joint', '2023-03-10', 101, 1006, 'Monthly'),
(1004, 'Fixed Deposit', 'Personal', '2012-04-10', 101, 1015, 'Annually'),
(1005, 'Current', 'Business', '2023-05-12', 104, 1020, 'Monthly'),
(1006, 'Savings', 'Personal', '2023-01-15', 106, 1003, 'Monthly'),
(1007, 'Current', 'Business', '2023-02-20', 107, 1001, 'Quarterly'),
(1008, 'Savings', 'Joint', '2023-03-10', 108, 1006, 'Monthly'),
(1009, 'Fixed Deposit', 'Personal', '2013-04-24', 109, 1015, 'Annually'),
(1010, 'Current', 'Business', '2023-05-12', 110, 1020, 'Monthly'),
(1011, 'New1', '123', '2014-09-18', 105, 1004, 'regular'),
(1012, 'new2', 'regular2', '2014-09-18', 103, 1016, 'vip');

-- --------------------------------------------------------

--
-- Table structure for table `bo_nomination`
--

CREATE TABLE `bo_nomination` (
  `BONapplicationNo` int(11) DEFAULT NULL,
  `guardianId` int(11) DEFAULT NULL,
  `nomineeId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `card`
--

CREATE TABLE `card` (
  `cardNum` varchar(20) NOT NULL,
  `bankId` int(10) UNSIGNED NOT NULL,
  `cvc` int(11) NOT NULL,
  `customerId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_info`
--

CREATE TABLE `contact_info` (
  `contactID` int(11) NOT NULL,
  `presentAddress` varchar(400) NOT NULL,
  `permanentAddress` varchar(400) DEFAULT NULL,
  `mobileNumber` varchar(20) NOT NULL,
  `city` varchar(20) DEFAULT NULL,
  `postcode` varchar(20) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  `country` varchar(20) DEFAULT NULL,
  `fax` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `telephoneNumber` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_info`
--

INSERT INTO `contact_info` (`contactID`, `presentAddress`, `permanentAddress`, `mobileNumber`, `city`, `postcode`, `state`, `country`, `fax`, `email`, `telephoneNumber`) VALUES
(1001, '123 Elm Street', '456 Oak Avenue', '555-789-1234', 'San Francisco', '94101', 'Dhaka', 'USA', '555-555-5555', 'jane.doe@example.com', '555-123-4567'),
(1002, '789 Birch Lane', '101 Cedar Avenue', '555-987-6543', 'Los Angeles', '90001', 'Chattogram', 'USA', '555-555-5555', 'john.smith@example.com', '555-987-6543'),
(1003, '456 Pine Road', '555 Maple Street', '555-123-7890', 'New York', '10001', 'Khulna', 'USA', '555-555-5555', 'susan.johnson@example.com', '555-789-1230'),
(1004, '987 Oak Lane', '555 Elm Street', '555-456-7890', 'Chicago', '60601', 'Dhaka', 'USA', '555-555-5555', 'michael.davis@example.com', '555-456-7890'),
(1005, '555 Cedar Road', '101 Pine Avenue', '555-555-5555', 'Toronto', 'M5V 1A1', 'Chattogram', 'Canada', '555-555-5555', 'lisa.brown@example.ca', '555-555-5555'),
(1006, '01 street Dhaka', '02 street CTG', '1313123131', 'Shylet', '3255', 'Shylet', 'Bangladesh', '2342432', '', ''),
(1007, 'Dhaka', 'Shylet', '342423', 'Shylet', '2424234', 'Shylet', 'Bangladesh', NULL, NULL, NULL),
(1008, 'Mymensingh', 'Dhaka', '23242424', 'Mymensingh', '2324', 'Mymensingh', 'Bangladesh', NULL, 'k@iub.edu.bd', '32424');

-- --------------------------------------------------------

--
-- Table structure for table `corporate_client`
--

CREATE TABLE `corporate_client` (
  `CcustomerId` int(11) NOT NULL,
  `companyName` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `credit_facility`
--

CREATE TABLE `credit_facility` (
  `creNum` varchar(20) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `recommendedBy` varchar(100) DEFAULT NULL,
  `approvedBy` varchar(100) DEFAULT NULL,
  `customerID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer_info`
--

CREATE TABLE `customer_info` (
  `customerID` int(11) NOT NULL,
  `customerName` varchar(100) NOT NULL,
  `fatherName` varchar(100) DEFAULT NULL,
  `motherName` varchar(100) DEFAULT NULL,
  `husbandName` varchar(100) DEFAULT NULL,
  `dob` date NOT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `contactID` int(11) DEFAULT NULL,
  `occupation` varchar(50) DEFAULT NULL,
  `drivingLicenseNo` varchar(30) DEFAULT NULL,
  `signature` longblob NOT NULL,
  `eTinID` varchar(50) DEFAULT NULL,
  `customerType` varchar(20) DEFAULT NULL,
  `introducerID` int(11) DEFAULT NULL,
  `introducerContact` varchar(15) DEFAULT NULL,
  `bankID` int(10) UNSIGNED DEFAULT NULL,
  `bankAccNo` varchar(30) DEFAULT NULL,
  `BOapplicationNo` int(11) DEFAULT NULL,
  `BONapplicationNo` int(11) DEFAULT NULL,
  `POAapplicationNo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer_info`
--

INSERT INTO `customer_info` (`customerID`, `customerName`, `fatherName`, `motherName`, `husbandName`, `dob`, `gender`, `contactID`, `occupation`, `drivingLicenseNo`, `signature`, `eTinID`, `customerType`, `introducerID`, `introducerContact`, `bankID`, `bankAccNo`, `BOapplicationNo`, `BONapplicationNo`, `POAapplicationNo`) VALUES
(101, 'John Doe', 'Johns Father', 'Johns Mother', 'Karim', '1990-01-01', 'Male', 1001, 'Engineer', 'DL12345', '', '1234567890', 'first_acc', 7890, '7890123456', 1010, '1234567890', 123, 123, 123),
(102, 'Jane Smith', 'Janes Father', 'Janes Mother', 'Rahim', '1995-03-15', 'Female', 1003, 'Doctor', 'DL54321', '', '0987654321', 'joint_acc', 6543, '6543210987', 1010, '9876543210', 456, 456, 456),
(103, 'Alice Johnson', 'Alices Father', 'Alices Mother', 'Sohel', '1988-07-20', 'Female', 1005, 'Teacher', 'DL98765', '', '5678901234', 'corporate_client', 4321, '4321098765', 1010, '3456789012', 89, 789, 789),
(104, 'Bob Wilson', 'Bobs Father', 'Bobs Mother', 'Joy', '1992-11-08', 'Male', 1002, 'Lawyer', 'DL24680', '', '3456789012', 'first_acc', 8765, '8765432109', 1012, '4567890123', 0, 12, 12),
(105, 'Eva Brown', 'Eva Father', 'Evas Mother', 'Mehedi', '1997-05-25', 'Female', 1004, 'Accountant', 'DL13579', '', '2345678901', 'joint_acc', 1234, '1234567890', 1012, '5678901234', 345, 345, 345),
(106, 'John Doe', 'Johns Father', 'Johns Mother', 'Karim', '1990-01-01', 'Male', 1006, 'Engineer', 'DL12345', '', '1234567890', 'first_acc', 7890, '7890123456', 1012, '1234567890', 123, 123, 123),
(107, 'Jane Smith', 'Janes Father', 'Janes Mother', 'Rahim', '1995-03-15', 'Female', 1007, 'Doctor', 'DL54321', '', '0987654321', '', 6543, '6543210987', 1003, '9876543210', 456, 456, 456),
(108, 'Alice Johnson', 'Alices Father', 'Alices Mother', 'Sohel', '1988-07-20', 'Female', 1008, 'Teacher', 'DL98765', '', '5678901234', 'corporate_client', 4321, '4321098765', 1017, '3456789012', 89, 789, 789),
(109, 'Bob Wilson', 'Bobs Father', 'Bobs Mother', 'Joy', '1992-11-08', 'Male', 1009, 'Lawyer', 'DL24680', '', '3456789012', 'first_acc', 8765, '8765432109', 1012, '4567890123', 0, 12, 12),
(110, 'Eva Brown', 'Eva Father', 'Evas Mother', 'Mehedi', '1997-05-25', 'Female', 1010, 'Accountant', 'DL13579', '', '2345678901', 'joint_acc', 1234, '1234567890', 1007, '5678901234', 345, 345, 345);

-- --------------------------------------------------------

--
-- Table structure for table `eft`
--

CREATE TABLE `eft` (
  `eftId` int(11) NOT NULL,
  `customerId` int(11) DEFAULT NULL,
  `eftDate` date DEFAULT NULL,
  `bankId` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `employeeId` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `contactId` int(11) DEFAULT NULL,
  `signature` longblob DEFAULT NULL,
  `employeeType` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `first_ac_holder`
--

CREATE TABLE `first_ac_holder` (
  `FcustomerId` int(11) NOT NULL,
  `boId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `first_ac_holder`
--

INSERT INTO `first_ac_holder` (`FcustomerId`, `boId`) VALUES
(101, 0);

-- --------------------------------------------------------

--
-- Table structure for table `guardian_info`
--

CREATE TABLE `guardian_info` (
  `guardianID` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `shortName` varchar(50) DEFAULT NULL,
  `dob` date NOT NULL,
  `relationshipWithMinor` varchar(20) DEFAULT NULL,
  `passportNumber` varchar(10) DEFAULT NULL,
  `contactID` int(11) DEFAULT NULL,
  `signature` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `head_of_settlement`
--

CREATE TABLE `head_of_settlement` (
  `HoSemployeeId` int(11) NOT NULL,
  `finalApprovalStatus` varchar(300) DEFAULT NULL,
  `finalApprovalDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `introducer_info`
--

CREATE TABLE `introducer_info` (
  `introducerID` int(11) NOT NULL,
  `iName` varchar(100) NOT NULL,
  `iNumber` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `occupation` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `joint_ac_holder`
--

CREATE TABLE `joint_ac_holder` (
  `JcustomerId` int(11) NOT NULL,
  `boId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `joint_ac_holder`
--

INSERT INTO `joint_ac_holder` (`JcustomerId`, `boId`) VALUES
(23, 0),
(102, 0);

-- --------------------------------------------------------

--
-- Table structure for table `kyc_profile`
--

CREATE TABLE `kyc_profile` (
  `customerId` int(11) NOT NULL,
  `employeeId` int(11) NOT NULL,
  `passportNumber` int(11) DEFAULT NULL,
  `fundSource` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nominee`
--

CREATE TABLE `nominee` (
  `nomineeId` int(11) NOT NULL,
  `percentage` float DEFAULT NULL,
  `relationshipWcus` varchar(50) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `shortName` varchar(50) DEFAULT NULL,
  `signature` longblob DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `contactId` int(11) DEFAULT NULL,
  `residencyType` varchar(20) DEFAULT NULL,
  `passportNumber` varchar(20) DEFAULT NULL,
  `isMinor` tinyint(1) DEFAULT NULL,
  `dateOfBirth` date DEFAULT NULL,
  `maturityDate` date DEFAULT NULL,
  `customerId` int(11) DEFAULT NULL,
  `guardianId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `passport_info`
--

CREATE TABLE `passport_info` (
  `pCustomerId` int(11) NOT NULL,
  `passportNumber` varchar(10) NOT NULL,
  `issuePlace` varchar(100) NOT NULL,
  `issueDate` varchar(100) NOT NULL,
  `expiryDate` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `poa_info`
--

CREATE TABLE `poa_info` (
  `poApplicationNum` int(11) NOT NULL,
  `poaTitles` varchar(20) DEFAULT NULL,
  `poaName` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `relationship_manager`
--

CREATE TABLE `relationship_manager` (
  `RMemployeeID` int(11) NOT NULL,
  `verificationCode` int(4) UNSIGNED DEFAULT NULL,
  `verificationDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`applicationNO`);

--
-- Indexes for table `administrator`
--
ALTER TABLE `administrator`
  ADD PRIMARY KEY (`AemployeeId`);

--
-- Indexes for table `authorised_person`
--
ALTER TABLE `authorised_person`
  ADD PRIMARY KEY (`authoPerId`),
  ADD KEY `Authorised_Person__FK_ACcustomer` (`ACcustomerId`);

--
-- Indexes for table `bank_info`
--
ALTER TABLE `bank_info`
  ADD PRIMARY KEY (`bankId`);

--
-- Indexes for table `bo_account`
--
ALTER TABLE `bo_account`
  ADD PRIMARY KEY (`BOapplicationNo`),
  ADD KEY `bo_account__FK_customer` (`customerId`),
  ADD KEY `bo_account__FK_bank` (`bankId`);

--
-- Indexes for table `bo_nomination`
--
ALTER TABLE `bo_nomination`
  ADD KEY `bo_nomination__FK_guardian` (`guardianId`),
  ADD KEY `bo_nomination__FK_nominee` (`nomineeId`);

--
-- Indexes for table `card`
--
ALTER TABLE `card`
  ADD PRIMARY KEY (`cardNum`),
  ADD KEY `card__FK_customer` (`customerId`),
  ADD KEY `card__FK_bank` (`bankId`);

--
-- Indexes for table `contact_info`
--
ALTER TABLE `contact_info`
  ADD PRIMARY KEY (`contactID`);

--
-- Indexes for table `corporate_client`
--
ALTER TABLE `corporate_client`
  ADD PRIMARY KEY (`CcustomerId`);

--
-- Indexes for table `credit_facility`
--
ALTER TABLE `credit_facility`
  ADD KEY `Credit_Facility__FK_customer` (`customerID`);

--
-- Indexes for table `customer_info`
--
ALTER TABLE `customer_info`
  ADD PRIMARY KEY (`customerID`),
  ADD KEY `customer_info__FK_Customer_Info` (`contactID`),
  ADD KEY `customer_info__FK_introducer` (`introducerID`),
  ADD KEY `customer_info__FK_bank` (`bankID`);

--
-- Indexes for table `eft`
--
ALTER TABLE `eft`
  ADD PRIMARY KEY (`eftId`),
  ADD KEY `eft__FK_customer` (`customerId`),
  ADD KEY `eft__FK_bank` (`bankId`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`employeeId`),
  ADD KEY `employee__FK_contact` (`contactId`);

--
-- Indexes for table `first_ac_holder`
--
ALTER TABLE `first_ac_holder`
  ADD PRIMARY KEY (`FcustomerId`,`boId`);

--
-- Indexes for table `guardian_info`
--
ALTER TABLE `guardian_info`
  ADD PRIMARY KEY (`guardianID`),
  ADD KEY `guardian_info__FK_contact` (`contactID`);

--
-- Indexes for table `head_of_settlement`
--
ALTER TABLE `head_of_settlement`
  ADD PRIMARY KEY (`HoSemployeeId`);

--
-- Indexes for table `introducer_info`
--
ALTER TABLE `introducer_info`
  ADD PRIMARY KEY (`introducerID`);

--
-- Indexes for table `joint_ac_holder`
--
ALTER TABLE `joint_ac_holder`
  ADD PRIMARY KEY (`JcustomerId`,`boId`);

--
-- Indexes for table `kyc_profile`
--
ALTER TABLE `kyc_profile`
  ADD PRIMARY KEY (`customerId`,`employeeId`);

--
-- Indexes for table `nominee`
--
ALTER TABLE `nominee`
  ADD PRIMARY KEY (`nomineeId`);

--
-- Indexes for table `passport_info`
--
ALTER TABLE `passport_info`
  ADD PRIMARY KEY (`pCustomerId`,`passportNumber`);

--
-- Indexes for table `poa_info`
--
ALTER TABLE `poa_info`
  ADD PRIMARY KEY (`poApplicationNum`);

--
-- Indexes for table `relationship_manager`
--
ALTER TABLE `relationship_manager`
  ADD PRIMARY KEY (`RMemployeeID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bank_info`
--
ALTER TABLE `bank_info`
  MODIFY `bankId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1021;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `administrator`
--
ALTER TABLE `administrator`
  ADD CONSTRAINT `administrator__FK_Aemployee` FOREIGN KEY (`AemployeeId`) REFERENCES `employee` (`employeeId`);

--
-- Constraints for table `authorised_person`
--
ALTER TABLE `authorised_person`
  ADD CONSTRAINT `Authorised_Person__FK_ACcustomer` FOREIGN KEY (`ACcustomerId`) REFERENCES `customer_info` (`customerID`);

--
-- Constraints for table `bo_account`
--
ALTER TABLE `bo_account`
  ADD CONSTRAINT `bo_account__FK_bank` FOREIGN KEY (`bankId`) REFERENCES `bank_info` (`bankId`),
  ADD CONSTRAINT `bo_account__FK_customer` FOREIGN KEY (`customerId`) REFERENCES `customer_info` (`customerID`);

--
-- Constraints for table `bo_nomination`
--
ALTER TABLE `bo_nomination`
  ADD CONSTRAINT `bo_nomination__FK_guardian` FOREIGN KEY (`guardianId`) REFERENCES `guardian_info` (`guardianID`),
  ADD CONSTRAINT `bo_nomination__FK_nominee` FOREIGN KEY (`nomineeId`) REFERENCES `nominee` (`nomineeId`);

--
-- Constraints for table `card`
--
ALTER TABLE `card`
  ADD CONSTRAINT `card__FK_bank` FOREIGN KEY (`bankId`) REFERENCES `bank_info` (`bankId`),
  ADD CONSTRAINT `card__FK_customer` FOREIGN KEY (`customerId`) REFERENCES `customer_info` (`customerID`);

--
-- Constraints for table `corporate_client`
--
ALTER TABLE `corporate_client`
  ADD CONSTRAINT `corporate_client__FK_customer` FOREIGN KEY (`CcustomerId`) REFERENCES `customer_info` (`customerID`);

--
-- Constraints for table `credit_facility`
--
ALTER TABLE `credit_facility`
  ADD CONSTRAINT `Credit_Facility__FK_customer` FOREIGN KEY (`customerID`) REFERENCES `customer_info` (`customerID`);

--
-- Constraints for table `eft`
--
ALTER TABLE `eft`
  ADD CONSTRAINT `eft__FK_bank` FOREIGN KEY (`bankId`) REFERENCES `bank_info` (`bankId`),
  ADD CONSTRAINT `eft__FK_customer` FOREIGN KEY (`customerId`) REFERENCES `customer_info` (`customerID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
