-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 18, 2025 at 04:31 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `organ_donation`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `donors`
--

CREATE TABLE `donors` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `age` int(11) NOT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `blood_group` varchar(5) NOT NULL,
  `organ_donating` varchar(50) NOT NULL,
  `phone_number` varchar(15) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `emergency_contact_name` varchar(100) DEFAULT NULL,
  `emergency_contact_phone` varchar(15) DEFAULT NULL,
  `weight_kg` decimal(5,2) DEFAULT NULL,
  `height_cm` decimal(5,2) DEFAULT NULL,
  `has_diseases` tinyint(1) DEFAULT 0,
  `medical_history` text DEFAULT NULL,
  `hla_type` varchar(255) DEFAULT NULL,
  `status` varchar(20) DEFAULT 'Available',
  `hospital_id` int(11) DEFAULT NULL,
  `registration_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `hla_a1` varchar(10) DEFAULT NULL,
  `hla_a2` varchar(10) DEFAULT NULL,
  `hla_b1` varchar(10) DEFAULT NULL,
  `hla_b2` varchar(10) DEFAULT NULL,
  `hla_dr1` varchar(10) DEFAULT NULL,
  `hla_dr2` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `donors`
--

INSERT INTO `donors` (`id`, `name`, `age`, `gender`, `date_of_birth`, `blood_group`, `organ_donating`, `phone_number`, `email`, `address`, `emergency_contact_name`, `emergency_contact_phone`, `weight_kg`, `height_cm`, `has_diseases`, `medical_history`, `hla_type`, `status`, `hospital_id`, `registration_date`, `hla_a1`, `hla_a2`, `hla_b1`, `hla_b2`, `hla_dr1`, `hla_dr2`) VALUES
(1, 'Ravi Kumar', 36, 'Male', '1989-03-12', 'A+', 'Kidney', '8877665544', 'ravi@email.com', '111 Maple St, Delhi', 'Anita Kumar', '8877665543', 72.00, 170.00, 0, '', NULL, 'Available', 1, '2025-10-18 02:15:29', 'A2', 'A24', 'B7', 'B27', 'DR1', 'DR4'),
(2, 'Sonia Gupta', 30, 'Female', '1995-06-22', 'A+', 'Kidney', '8765432109', 'sonia@email.com', '222 Birch Ct, Delhi', 'Rajiv Gupta', '8765432108', 60.00, 158.00, 0, '', NULL, 'Available', 1, '2025-10-18 02:15:29', 'A2', 'A24', 'B7', 'B27', 'DR1', 'DR4'),
(3, 'Mahesh Verma', 40, 'Male', '1985-01-05', 'A+', 'Kidney', '8987654321', 'mahesh@email.com', '333 Pine Ln, Noida', 'Priya Verma', '8987654320', 80.00, 178.00, 0, '', NULL, 'Available', 1, '2025-10-18 02:15:29', 'A1', 'A11', 'B5', 'B51', 'DR2', 'DR17'),
(4, 'Lila Menon', 38, 'Female', '1987-11-01', 'A+', 'Kidney', '8654321098', 'lila@email.com', '444 Elm Dr, Gurgaon', 'Anil Menon', '8654321097', 65.00, 165.00, 0, '', NULL, 'Available', 1, '2025-10-18 02:15:29', 'A3', 'A29', 'B13', 'B18', 'DR3', 'DR12'),
(5, 'Karan Joshi', 49, 'Male', '1976-05-09', 'A+', 'Lungs', '8210987654', 'karan@email.com', '555 Palm Grove, Delhi', 'Sunita Joshi', '8210987653', 76.00, 172.00, 0, '', NULL, 'Available', 1, '2025-10-18 02:15:29', 'A2', 'A24', 'B7', 'B27', 'DR1', 'DR4'),
(6, 'Deepak Sharma', 48, 'Male', '1977-09-30', 'B+', 'Bone Marrow', '8123456789', 'deepak@email.com', '666 Oak Ave, Mumbai', 'Rani Sharma', '8123456788', 78.00, 175.00, 0, '', NULL, 'Available', 2, '2025-10-18 02:15:29', 'A1', 'A3', 'B8', 'B44', 'DR7', 'DR11'),
(7, 'Priya Singh', 25, 'Female', '2000-12-01', 'O-', 'Eyes', '8543210987', 'priya.s@email.com', '777 Cedar Rd, Mumbai', 'Kiran Singh', '8543210986', 55.00, 163.00, 0, 'Asthma', NULL, 'Available', 2, '2025-10-18 02:15:29', 'A2', 'A26', 'B8', 'B38', 'DR4', 'DR13'),
(8, 'Arun Kumar', 41, 'Male', '1984-10-14', 'B-', 'Kidney', '8432109876', 'arun@email.com', '888 Spruce Way, Bangalore', 'Lata Kumar', '8432109875', 78.00, 176.00, 0, '', NULL, 'Available', 2, '2025-10-18 02:15:29', 'A1', 'A24', 'B7', 'B35', 'DR1', 'DR4'),
(9, 'Geeta Reddy', 38, 'Female', '1987-07-07', 'A+', 'Kidney', '8321098765', 'geeta@email.com', '999 Willow Ave, Hyderabad', 'Suresh Reddy', '8321098764', 62.00, 155.00, 0, '', NULL, 'Matched', 1, '2025-10-18 02:15:29', 'A2', 'A24', 'B7', 'B27', 'DR1', 'DR4'),
(10, 'Nisha Kulkarni', 33, 'Female', '1992-02-28', 'AB+', 'Liver', '8109876543', 'nisha@email.com', '101 Rosewood Dr, Pune', 'Raj Kulkarni', '8109876542', 66.00, 169.00, 0, '', NULL, 'Available', 2, '2025-10-18 02:15:29', 'A11', 'A23', 'B44', 'B57', 'DR11', 'DR16');

-- --------------------------------------------------------

--
-- Table structure for table `hospitals`
--

CREATE TABLE `hospitals` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hospitals`
--

INSERT INTO `hospitals` (`id`, `name`, `email`, `password`) VALUES
(1, 'AIIMS Delhi', 'contact@aiims.delhi', 'hospital123'),
(2, 'st.mary\'s', 'st@gmail.com', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `login_logs`
--

CREATE TABLE `login_logs` (
  `id` int(11) NOT NULL,
  `user_type` enum('admin','hospital') NOT NULL,
  `username_or_email` varchar(100) NOT NULL,
  `status` enum('success','failure') NOT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `event_timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `matches`
--

CREATE TABLE `matches` (
  `id` int(11) NOT NULL,
  `donor_id` int(11) NOT NULL,
  `recipient_id` int(11) NOT NULL,
  `match_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` varchar(20) DEFAULT 'Potential'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `recipients`
--

CREATE TABLE `recipients` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `age` int(11) NOT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `blood_group` varchar(5) NOT NULL,
  `organ_needed` varchar(50) NOT NULL,
  `urgency_level` varchar(20) NOT NULL,
  `phone_number` varchar(15) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `diagnosis` text DEFAULT NULL,
  `weight_kg` decimal(5,2) DEFAULT NULL,
  `height_cm` decimal(5,2) DEFAULT NULL,
  `has_communicable_disease` tinyint(1) DEFAULT 0,
  `medical_history` text DEFAULT NULL,
  `hla_type` varchar(255) DEFAULT NULL,
  `status` varchar(20) DEFAULT 'Waiting',
  `hospital_id` int(11) DEFAULT NULL,
  `registration_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `hla_a1` varchar(10) DEFAULT NULL,
  `hla_a2` varchar(10) DEFAULT NULL,
  `hla_b1` varchar(10) DEFAULT NULL,
  `hla_b2` varchar(10) DEFAULT NULL,
  `hla_dr1` varchar(10) DEFAULT NULL,
  `hla_dr2` varchar(10) DEFAULT NULL,
  `pra_percent` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `recipients`
--

INSERT INTO `recipients` (`id`, `name`, `age`, `gender`, `date_of_birth`, `blood_group`, `organ_needed`, `urgency_level`, `phone_number`, `email`, `address`, `diagnosis`, `weight_kg`, `height_cm`, `has_communicable_disease`, `medical_history`, `hla_type`, `status`, `hospital_id`, `registration_date`, `hla_a1`, `hla_a2`, `hla_b1`, `hla_b2`, `hla_dr1`, `hla_dr2`, `pra_percent`) VALUES
(1, 'Ananya Nair', 34, 'Female', '1991-05-15', 'A+', 'Kidney', 'Urgent', '9876543210', 'ananya@email.com', '123 Park St, Delhi', 'End-Stage Renal Disease', 65.00, 160.00, 0, 'No significant history', NULL, 'Waiting', 1, '2025-10-18 02:15:29', 'A2', 'A24', 'B7', 'B27', 'DR1', 'DR4', 10),
(2, 'Brijesh Patel', 45, 'Male', '1980-08-20', 'B+', 'Bone Marrow', 'High', '9988776655', 'brijesh@email.com', '456 Lake Rd, Mumbai', 'Leukemia', 75.00, 175.00, 0, 'Undergoing chemotherapy', NULL, 'Waiting', 2, '2025-10-18 02:15:29', 'A1', 'A3', 'B8', 'B44', 'DR7', 'DR11', 5),
(3, 'Chitra Iyer', 52, 'Female', '1973-02-10', 'O+', 'Liver', 'Medium', '9123456789', 'chitra@email.com', '789 Ocean Blvd, Chennai', 'Cirrhosis', 58.00, 162.00, 0, '', NULL, 'Waiting', 1, '2025-10-18 02:15:29', 'A11', 'A29', 'B35', 'B62', 'DR4', 'DR13', 15);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `donors`
--
ALTER TABLE `donors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hospital_id` (`hospital_id`);

--
-- Indexes for table `hospitals`
--
ALTER TABLE `hospitals`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `login_logs`
--
ALTER TABLE `login_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `matches`
--
ALTER TABLE `matches`
  ADD PRIMARY KEY (`id`),
  ADD KEY `donor_id` (`donor_id`),
  ADD KEY `recipient_id` (`recipient_id`);

--
-- Indexes for table `recipients`
--
ALTER TABLE `recipients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hospital_id` (`hospital_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `donors`
--
ALTER TABLE `donors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `hospitals`
--
ALTER TABLE `hospitals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `login_logs`
--
ALTER TABLE `login_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `matches`
--
ALTER TABLE `matches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `recipients`
--
ALTER TABLE `recipients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `donors`
--
ALTER TABLE `donors`
  ADD CONSTRAINT `donors_ibfk_1` FOREIGN KEY (`hospital_id`) REFERENCES `hospitals` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `matches`
--
ALTER TABLE `matches`
  ADD CONSTRAINT `matches_ibfk_1` FOREIGN KEY (`donor_id`) REFERENCES `donors` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `matches_ibfk_2` FOREIGN KEY (`recipient_id`) REFERENCES `recipients` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `recipients`
--
ALTER TABLE `recipients`
  ADD CONSTRAINT `recipients_ibfk_1` FOREIGN KEY (`hospital_id`) REFERENCES `hospitals` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
