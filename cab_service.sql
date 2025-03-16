-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 14, 2025 at 09:01 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cab_service`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `booking_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `destination` varchar(100) NOT NULL,
  `distance` double NOT NULL,
  `total_fare` double NOT NULL,
  `driver_id` int(11) NOT NULL,
  `vc_id` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`booking_id`, `customer_id`, `destination`, `distance`, `total_fare`, `driver_id`, `vc_id`, `created_date`) VALUES
(1, 1, 'Jaffna', 444, 24420.000000000004, 0, 0, '2025-02-21 19:16:39'),
(2, 2, '6666', 8787, 483285.00000000006, 0, 0, '2025-02-21 19:17:11'),
(3, 3, 'Jaffna', 435535, 23954425.000000004, 0, 0, '2025-02-21 19:18:45'),
(4, 4, 'Jaffna', 67888, 3733840.0000000005, 0, 0, '2025-03-04 17:19:34'),
(5, 5, '34234', 234, 12870.000000000002, 0, 0, '2025-03-09 17:52:51'),
(6, 6, '435345', 34534, 1899370.0000000002, 0, 0, '2025-03-09 17:53:14');

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `car_id` int(11) NOT NULL,
  `model` varchar(50) NOT NULL,
  `driver_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(200) NOT NULL,
  `nic` varchar(12) NOT NULL,
  `contact_no` varchar(15) NOT NULL,
  `email` varchar(200) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `name`, `address`, `nic`, `contact_no`, `email`, `username`, `password`) VALUES
(1, 'sumedha', 'Galahena, Magulagama', '44545454', '0765462237', '', '', ''),
(2, 'Kamal', 'Kottawa', '789878978', '786786887', '', '', ''),
(3, 'dasdad', 'Galahena, Magulagama', '44545454', '0765462237', '', '', ''),
(4, 'sumedha', 'Galahena, Magulagama', '44545454', '0765462237', '', '', ''),
(5, 'Anjalika De Mel', 'No.26, St Benedict Rd, Chilaw', '435345', '0775116781', '', '', ''),
(6, 'wwerwer', 'ewrwer', 's345345', '345345345', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `dd`
--

CREATE TABLE `dd` (
  `UserID` double NOT NULL DEFAULT 0,
  `us_fullname` varchar(100) DEFAULT NULL,
  `us_Password` varchar(50) DEFAULT NULL,
  `us_Usertype` varchar(50) DEFAULT NULL,
  `us_Address` varchar(100) DEFAULT NULL,
  `us_Email` varchar(100) DEFAULT NULL,
  `us_Contact_No` varchar(50) DEFAULT NULL,
  `us_NIC` varchar(50) DEFAULT NULL,
  `us_User_status` varchar(50) DEFAULT 'INACTIVE',
  `us_loginusername` varchar(50) DEFAULT NULL,
  `us_Created_by` varchar(50) DEFAULT NULL,
  `us_Created_date` timestamp NULL DEFAULT current_timestamp(),
  `us_Modified_by` varchar(50) DEFAULT NULL,
  `us_Modified_date` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dd`
--

INSERT INTO `dd` (`UserID`, `us_fullname`, `us_Password`, `us_Usertype`, `us_Address`, `us_Email`, `us_Contact_No`, `us_NIC`, `us_User_status`, `us_loginusername`, `us_Created_by`, `us_Created_date`, `us_Modified_by`, `us_Modified_date`) VALUES
(1, 'Shelini Senevirathna', '1234', 'customer', 'Balangoda.', 'shelini@gmail.com', '0768584565', '200105798462', 'INACTIVE', 'shelini123', 'a1', '2025-03-13 04:09:28', NULL, NULL),
(0, 'Amal Gamage', 'a123', 'admin', '21/A,Nugegoda.', 'amal@gmail.com', '075984162', '20048951125784', 'INACTIVE', 'admin', '', '2025-03-13 06:24:35', NULL, NULL),
(0, 'Namal Perera', 'd123', 'driver', '24/A, Kandy', 'namal@gmail.com', '07894563289', '1999586249185', 'INACTIVE', 'namal', NULL, '2025-03-13 06:24:35', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `drivers`
--

CREATE TABLE `drivers` (
  `driver_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `dr_fullname` varchar(200) NOT NULL,
  `dr_email` varchar(200) NOT NULL,
  `dr_password` varchar(100) NOT NULL,
  `dr_address` varchar(200) NOT NULL,
  `dr_licence_no` varchar(20) NOT NULL,
  `dr_status` varchar(20) NOT NULL DEFAULT 'INACTIVE'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblbill`
--

CREATE TABLE `tblbill` (
  `Bill_id` int(11) NOT NULL,
  `b_start_meter_reading` int(50) DEFAULT NULL,
  `b_end_meter_reading` int(50) DEFAULT NULL,
  `b_date` date DEFAULT NULL,
  `b_grand_total` int(50) DEFAULT NULL,
  `b_disscount` int(50) DEFAULT NULL,
  `b_sub_total` int(50) DEFAULT NULL,
  `b_tax` int(50) DEFAULT NULL,
  `b_total` int(50) DEFAULT NULL,
  `b_bk_status` varchar(50) DEFAULT NULL,
  `b_Created_by` varchar(50) DEFAULT NULL,
  `b_Created_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `b_Modified_by` varchar(50) DEFAULT NULL,
  `b_Modified_date` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblbookingdetail`
--

CREATE TABLE `tblbookingdetail` (
  `bd_id` int(11) NOT NULL,
  `bookind_id` int(11) NOT NULL,
  `odo_start` double NOT NULL,
  `odo_end` double NOT NULL,
  `triptype` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking_invoice`
--

CREATE TABLE `tblbooking_invoice` (
  `bi_id` int(11) NOT NULL,
  `bi_us_UserID` int(11) DEFAULT NULL,
  `bi_bk_id` int(11) DEFAULT NULL,
  `bi_odo_start` int(11) DEFAULT NULL,
  `bi_odo_end` int(11) DEFAULT NULL,
  `bi_created_by` varchar(50) DEFAULT NULL,
  `bi_created_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `bi_modified_by` varchar(50) DEFAULT NULL,
  `bi_modified_date` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblusertype`
--

CREATE TABLE `tblusertype` (
  `ut_ID` int(11) NOT NULL,
  `ut_name` varchar(50) DEFAULT NULL,
  `ut_description` varchar(150) DEFAULT NULL,
  `ut_status` varchar(50) DEFAULT NULL,
  `ut_created_by` varchar(50) DEFAULT NULL,
  `ut_created_date` timestamp NULL DEFAULT current_timestamp(),
  `ut_modified_by` varchar(50) DEFAULT NULL,
  `ut_modified_date` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblusertype`
--

INSERT INTO `tblusertype` (`ut_ID`, `ut_name`, `ut_description`, `ut_status`, `ut_created_by`, `ut_created_date`, `ut_modified_by`, `ut_modified_date`) VALUES
(1, 'Admin', 'Welcome to Admin', NULL, NULL, '2025-03-12 04:07:05', NULL, NULL),
(2, 'Driver', 'Welcome to Driver.', NULL, NULL, '2025-03-12 04:07:05', NULL, NULL),
(3, 'Customer', 'Welcome to Customer', NULL, NULL, '2025-03-12 04:07:27', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblvehicle`
--

CREATE TABLE `tblvehicle` (
  `v_id` int(11) NOT NULL,
  `v_number` varchar(100) DEFAULT NULL,
  `v_type` varchar(50) DEFAULT NULL,
  `v_no_of_seats` int(50) DEFAULT NULL,
  `V_status` varchar(30) NOT NULL DEFAULT 'Active',
  `v_created_by` varchar(50) DEFAULT NULL,
  `v_created_date` timestamp NULL DEFAULT current_timestamp(),
  `v_modified_by` varchar(50) DEFAULT NULL,
  `v_modified_date` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblvehicle`
--

INSERT INTO `tblvehicle` (`v_id`, `v_number`, `v_type`, `v_no_of_seats`, `V_status`, `v_created_by`, `v_created_date`, `v_modified_by`, `v_modified_date`) VALUES
(1, 'ABC-1234', 'Sedan', 4, 'Active', NULL, '2025-03-12 04:03:48', NULL, NULL),
(2, 'XYZ-5678', 'SUV', 7, 'Active', NULL, '2025-03-12 04:03:48', NULL, NULL),
(3, 'MNO-1122', 'Van', 8, 'Active', NULL, '2025-03-12 04:04:38', NULL, NULL),
(4, 'LMN-2345', 'Luxury', 5, 'Active', NULL, '2025-03-12 04:04:38', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblvehicletype`
--

CREATE TABLE `tblvehicletype` (
  `vt_id` int(11) NOT NULL,
  `vt_name` varchar(50) DEFAULT NULL,
  `vt_description` varchar(100) DEFAULT NULL,
  `vt_default_fee(5km)` double DEFAULT NULL,
  `vt_per_charge(oneway)` int(11) DEFAULT NULL,
  `vt_per_charge(roundway)` int(11) DEFAULT NULL,
  `vt_created_by` varchar(50) DEFAULT NULL,
  `vt_created_date` timestamp NULL DEFAULT current_timestamp(),
  `vt_modified_by` varchar(50) DEFAULT NULL,
  `vt_modified_date` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblvehicletype`
--

INSERT INTO `tblvehicletype` (`vt_id`, `vt_name`, `vt_description`, `vt_default_fee(5km)`, `vt_per_charge(oneway)`, `vt_per_charge(roundway)`, `vt_created_by`, `vt_created_date`, `vt_modified_by`, `vt_modified_date`) VALUES
(1, 'sedan', 'Comfortable - seater car, suitable for city travel.', 1000, 200, 150, NULL, '2025-03-12 03:49:02', NULL, NULL),
(2, 'SUV', 'Spacious and powerful, ideal for family trips.', 1500, 300, 250, NULL, '2022-03-01 03:49:02', NULL, NULL),
(3, 'Luxury', 'Premium car for high-end service', 3000, 500, 400, NULL, '2024-03-22 03:52:47', NULL, NULL),
(4, 'Van', 'Spacious vehicle, suitable for group transport', 2000, 350, 300, NULL, '2025-03-17 03:52:47', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UserID` double NOT NULL,
  `us_fullname` varchar(100) DEFAULT NULL,
  `us_Password` varchar(50) DEFAULT NULL,
  `us_Usertype` varchar(50) DEFAULT NULL,
  `us_Address` varchar(100) DEFAULT NULL,
  `us_Email` varchar(100) DEFAULT NULL,
  `us_Contact_No` varchar(50) DEFAULT NULL,
  `us_NIC` varchar(50) DEFAULT NULL,
  `us_User_status` varchar(50) DEFAULT 'INACTIVE',
  `us_loginusername` varchar(50) DEFAULT NULL,
  `us_Created_by` varchar(50) DEFAULT NULL,
  `us_Created_date` timestamp NULL DEFAULT current_timestamp(),
  `us_Modified_by` varchar(50) DEFAULT NULL,
  `us_Modified_date` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UserID`, `us_fullname`, `us_Password`, `us_Usertype`, `us_Address`, `us_Email`, `us_Contact_No`, `us_NIC`, `us_User_status`, `us_loginusername`, `us_Created_by`, `us_Created_date`, `us_Modified_by`, `us_Modified_date`) VALUES
(1, 'Shelini Senevirathna', '1234', 'customer', 'Balangoda.', 'shelini@gmail.com', '0768584565', '200105798462', 'INACTIVE', 'shelini123', 'a1', '2025-03-13 04:09:28', NULL, NULL),
(2, 'Amal Gamage', 'a123', 'admin', '21/A,Nugegoda.', 'amal@gmail.com', '075984162', '20048951125784', 'INACTIVE', 'admin', '', '2025-03-13 06:24:35', NULL, NULL),
(3, 'Namal Perera', 'd123', 'driver', '24/A, Kandy', 'namal@gmail.com', '07894563289', '1999586249185', 'INACTIVE', 'namal', NULL, '2025-03-13 06:24:35', NULL, NULL),
(5, 'John Doe', 'securePassword123', 'customer', NULL, 'john.doe@example.com', '1234567890', '123456789V', 'active', 'john_doe', NULL, '2025-03-13 08:15:39', NULL, NULL),
(6, 'John Doe', 'securePassword123', NULL, 'kandy', 'john.doe@example.com', '1234567890', '123456789V', 'INACTIVE', 'john_doe', NULL, '2025-03-13 11:05:46', NULL, NULL),
(7, 'Amaya Perera', 'amaya2', NULL, 'No.25/B, Nugegoda', 'amaya@gmail.com', '0789562385', '20016598745', 'INACTIVE', 'amaya1', NULL, '2025-03-13 11:44:57', NULL, NULL),
(8, 'Poorna Sajeewani', '1478', NULL, 'Dampe,Piliyandala.', 'poorna@gmail.com', '0769853621', '198526974832', 'INACTIVE', 'ppp11', NULL, '2025-03-13 11:45:56', NULL, NULL),
(9, 'Shriyani Munidasa', '2225', NULL, 'Galle', 'shriyani@gmail.com', '0774609774', '1962987456932', 'INACTIVE', 'shr222', NULL, '2025-03-13 11:50:29', NULL, NULL),
(10, 'Amaya Perera', '1596', NULL, 'No.25/B, Nugegoda', 'amaya@gmail.com', '0789562385', '20016598745', 'INACTIVE', 'ami', NULL, '2025-03-13 11:53:15', NULL, NULL),
(11, 'Gayani Perera', '9874', NULL, 'Homagama', 'gayani@gmail.com', '0774609774', '19968523974', 'INACTIVE', 'gaya', NULL, '2025-03-13 12:18:13', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`booking_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `customer_id_2` (`customer_id`);

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`car_id`),
  ADD KEY `driver_id` (`driver_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `drivers`
--
ALTER TABLE `drivers`
  ADD PRIMARY KEY (`driver_id`);

--
-- Indexes for table `tblbill`
--
ALTER TABLE `tblbill`
  ADD PRIMARY KEY (`Bill_id`);

--
-- Indexes for table `tblbookingdetail`
--
ALTER TABLE `tblbookingdetail`
  ADD PRIMARY KEY (`bd_id`);

--
-- Indexes for table `tblbooking_invoice`
--
ALTER TABLE `tblbooking_invoice`
  ADD PRIMARY KEY (`bi_id`);

--
-- Indexes for table `tblusertype`
--
ALTER TABLE `tblusertype`
  ADD PRIMARY KEY (`ut_ID`);

--
-- Indexes for table `tblvehicle`
--
ALTER TABLE `tblvehicle`
  ADD PRIMARY KEY (`v_id`);

--
-- Indexes for table `tblvehicletype`
--
ALTER TABLE `tblvehicletype`
  ADD PRIMARY KEY (`vt_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `car_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `drivers`
--
ALTER TABLE `drivers`
  MODIFY `driver_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblbookingdetail`
--
ALTER TABLE `tblbookingdetail`
  MODIFY `bd_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblusertype`
--
ALTER TABLE `tblusertype`
  MODIFY `ut_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblvehicle`
--
ALTER TABLE `tblvehicle`
  MODIFY `v_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblvehicletype`
--
ALTER TABLE `tblvehicletype`
  MODIFY `vt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `UserID` double NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `bookings_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`);

--
-- Constraints for table `cars`
--
ALTER TABLE `cars`
  ADD CONSTRAINT `cars_ibfk_1` FOREIGN KEY (`driver_id`) REFERENCES `drivers` (`driver_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
