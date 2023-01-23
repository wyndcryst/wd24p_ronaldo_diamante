-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 10, 2023 at 12:09 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_jams`
--

-- --------------------------------------------------------

--
-- Table structure for table `area_location`
--

CREATE TABLE `area_location` (
  `zip_code` int(100) NOT NULL,
  `town_city` varchar(150) NOT NULL,
  `province` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `area_location`
--

INSERT INTO `area_location` (`zip_code`, `town_city`, `province`) VALUES
(5000, 'Iloilo City', 'Iloilo'),
(5003, 'Leganes', 'Iloilo'),
(5004, 'Zarraga', 'Iloilo'),
(5006, 'Dumangas', 'Iloilo'),
(5007, 'Barotac Nuevo', 'Iloilo'),
(5011, 'Barotac Viejo', 'Iloilo'),
(5013, 'Conception', 'Iloilo'),
(5017, 'Estancia', 'Iloilo'),
(5019, 'Carles', 'Iloilo'),
(5032, 'Mina', 'Iloilo'),
(5035, 'Dingle', 'Iloilo'),
(5037, 'Passi', 'Iloilo'),
(5038, 'Dueñas', 'Iloilo'),
(5600, 'Kalibo', 'Aklan'),
(5608, 'Malay', 'Aklan'),
(5800, 'Roxas City', 'Capiz'),
(5801, 'Panay', 'Capiz'),
(5803, 'Pres. Roxas', 'Capiz');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(255) NOT NULL,
  `customer` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `circuit_id` varchar(150) NOT NULL,
  `work_order` varchar(100) NOT NULL,
  `bandwidth` int(255) NOT NULL,
  `service_type` varchar(100) NOT NULL,
  `last_mile_type` varchar(150) NOT NULL,
  `medium_assignments` varchar(255) NOT NULL,
  `terminating_node_ne_name` varchar(255) NOT NULL,
  `homing_pla_id` varchar(100) NOT NULL,
  `homing_site_name` varchar(100) NOT NULL,
  `port_assignment` varchar(100) NOT NULL,
  `town_city` varchar(100) NOT NULL,
  `province` varchar(150) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `customer`, `address`, `circuit_id`, `work_order`, `bandwidth`, `service_type`, `last_mile_type`, `medium_assignments`, `terminating_node_ne_name`, `homing_pla_id`, `homing_site_name`, `port_assignment`, `town_city`, `province`, `status`) VALUES
(49, 'AIR MATERIEL WING SAVINGS AND LOAN, INC (AMWSLAI)', 'Rizal St., Brgy. Ortiz', 'IC-AUZ-4394', '63090953/1', 4, 'DVPN', 'FIBER', 'CABIN7 72C FDU F19/F20 <> CLIENT FDU F1/F2', 'JMBASA-HSA_V-002', 'VIS927', 'JMBASA', 'S5 P9', 'Iloilo City', 'Iloilo', 'ACTIVE'),
(67, 'CARGILL  PHIL. INC.', 'Brgy. Dacutan', 'IC-ATZ-9258', '62876004/1', 20, 'DI', 'MW RADIO', 'NA', 'TABUCN_TDCAN_T980C_01', 'VIS559', 'TABUCN', 'GigabitEthernet0/1/3', 'Roxas City', 'Capiz', 'ACTIVE'),
(68, 'PUREGOLD PRICE CLUB', 'Brgy. Poblacion', 'IC-ATZ-7251', '62648242/1', 2, 'IPVPN/MPLS', 'FIBER', 'NEW 48C FDU F1/F2 <> CLIENT FDU F1/F2', 'TRS_DC_MAN-R1R1_L12-01', 'VIS571', 'BNUEVO', 'GigabitEthernet0/4/7', 'Barotac Nuevo', 'Iloilo', 'ACTIVE'),
(69, 'E-PERFORMAX', 'Pueblo de Panay TechnoPark, Lawaan', 'IC-AUZ-5397', '63117337/1', 500, 'DI', 'FIBER', 'E-PERFORMAX FDU 24C 2022  F1/F2 <> CLIENT FDU F1/F2', 'PUEBLO-HSA_V-001 ', 'VIS3115', 'PUEBLO', 'S8 P9', 'Roxas City', 'Capiz', 'ACTIVE'),
(70, 'POWERLINETECH', 'Panay Ville, Poblacion, Ilaya', 'IC-AUZ-1245', '62966744/1', 20, 'DI', 'FIBER', 'NEW 12C FDU F1/F2 <> CLIENT FDU F1/F2', 'TRS_DC_MAN-R1R1_L14-01', 'VIS368', 'PANAY', 'GigabitEthernet0/2/6', 'Panay', 'Capiz', 'ACTIVE'),
(71, 'MARIBERT', 'Brgy. Poblacion', 'IC-AUZ-4882', '63105939/1', 100, 'DI', 'FIBER', '24C FDU F1/F2 <> CLIENT FDU F1/F2', 'AVIAT CTR8540', 'VIS380', 'PROXAS', 'P12', 'Pres. Roxas', 'Capiz', 'ACTIVE'),
(72, 'BDO', 'Ground Floor Annex Building, SM Delgado', 'IC-AUZ-3381', '63058108/1', 10, 'IPVPN/MPLS', 'FIBER', 'SMDELGZ 48C FDU F1/F2 <> CLIENT FDU F1/F2', 'TRS_DC_MAN-R1R1_L15LTE-01', 'VIS521', 'SMDELG', 'GigabitEthernet0/2/6', 'Iloilo City', 'Iloilo', 'ACTIVE'),
(73, 'BPI', 'Plaza Libertad', 'IC-AOZ-0840', '49311915/1', 10, 'IPVPN/MPLS', 'FIBER', 'JMBASA FDU F45/F46 - CLIENT FDU F1/F2', 'JMBASA-HSA_V-001', 'VI927', 'JMBASA', 'S6 P2', 'Iloilo City', 'Iloilo', 'ACTIVE'),
(74, 'DBP', 'Plaza Rizal St., Jaro', 'BT-110999', '56810382/1', 2, 'IPVPN/MPLS', 'FIBER', 'ILO138 FDU F15 <NAP2> CLIENT FDU F1', 'ILO138-LSA06-001', 'VIS2580', 'ILO138', 'S1 P3', 'Iloilo City', 'Iloilo', 'ACTIVE'),
(75, 'PHILIPPINE PHARMAWEALTH', 'Q. Abeto St., Mandurriao', 'IC-AUZ-2905', '63041268/1', 100, 'SDWAN', 'SDWAN OVER WIRED BROADBAND', 'SDWAN via Broadband', 'NA', 'NA', 'NA', 'NA', 'Iloilo City', 'Iloilo', 'ACTIVE'),
(76, 'PNB', 'Lopez Jaena St., Jaro', 'IC-AJZ-5648', '49623298/1', 1, 'IPVPN/MPLS', 'FIBER', 'ILO138 FDU F14 <NAP2> CLIENT FDU F1', 'ILO138-LSA06-001', 'VIS2580', 'ILO138', 'S2 P1', 'Iloilo City', 'Iloilo', 'ACTIVE'),
(77, 'GAISANO DYNASTY / DMDC', 'Arnaldo Blvd., Roxas City, Capiz', 'IC-AAQ-4728', 'NA', 1, 'IPVPN/MPLS', 'COPPER', 'MSAN ROX103 DP41 P14 SEC324', 'RXSRSU-IT003-001', 'VIS1772', 'RSU', 'OMH U2 IF3', 'Roxas City', 'Capiz', 'ACTIVE'),
(78, 'LANDBANK ATM BAYANTEL', 'Capiz Capitol Bldg', 'BT-471314', 'NA', 2, 'IPVPN/MPLS', 'FIBER', 'RSU 48C ODF F15/F16 <> CLIENT FAT F1/F2', 'RXSRSU-LSA07-001', 'VIS1772', 'RXSRSU', 'S2 P1', 'Roxas City', 'Capiz', 'ACTIVE'),
(79, 'WESFARDELL CABLE TV', 'Poblacion', 'IC-ASZ-1225', '60419826/1', 1000, 'DI', 'FIBER', 'San Antonio ODF F13/F14 <> CLIENT FDU F1/F2', 'ROXAS1-HSA_V-001', 'VIS369', 'ROXFOBN', 'S6 P2', 'Roxas City', 'Capiz', 'ACTIVE'),
(80, 'SAVEMORE', 'City Mall', 'IC-ANZ-7385', '60019503/1', 1, 'IPVPN/MPLS', 'FIBER', 'SAVEMORE 12C FDU F1 <> CLIENT F1', 'IPASSI-LSA07-001', 'VIS537', 'IPASSI', 'Slot 1 Port 7 (GPON)', 'Passi', 'Iloilo', 'ACTIVE'),
(81, 'R-LINK NETWORK AND DATA SOLUTION', 'Poblacion', 'IC-AUZ-5784', '63125960/1', 20, 'DI', 'FIBER', 'VIS545 48C FDU F39/F40 <> CLIENT FDU F1/F2', 'TDCAN_T980C_01_VIS545', 'VIS545', 'MINA', 'GigabitEthernet0/2/6', 'Mina', 'Iloilo', 'ACTIVE');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstname` varchar(128) NOT NULL,
  `lastname` varchar(128) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `position` varchar(100) NOT NULL,
  `profile_pic` text NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `password`, `position`, `profile_pic`, `timestamp`) VALUES
(80, 'Jam', 'Diamante', 'wyndcryst25@gmail.com', '$2y$10$zkfo./j2iKffsv4J25E6Ke0Aa.rQl3OEyxVIN3Cr9M5VtXy0/ckP6', 'Admin', '../images/jam.jpg', '2023-01-06 12:51:46'),
(81, 'Ronaldo', 'Diamante', 'rbdiamante@globe.com.ph', '$2y$10$3lZLQTqHvBuRk66II0qGLudppwHbqcuYky9/vjluerfzle5VLx6g6', 'Admin', '../images/photo_2022-09-16_16-03-17.jpg', '2023-01-06 11:53:04'),
(118, 'Andrew', 'Smith', 'andrew@disroot.org', '$2y$10$c2LFtG2yfHDkt60DmIVMSuTT0LrniEceiJD..gmrsbpwOG7043D6C', 'Admin', '../images/andrew.jpg', '2023-01-06 10:01:51'),
(120, 'Larissa', 'Bradshaw', 'qitozezar@mailinator.com', '$2y$10$pCosYES6yWDh1DgSXadcvOY.nkuhwGL/K4S8rV27c3ZYJF8uQpVFG', 'Admin', '../images/simon-robben.jpg', '2023-01-06 11:46:58'),
(121, 'John', 'Smith', 'john@smith.com', '$2y$10$GqsIZZt20IlZVZzZLOQ2deLx/Xm9SMV6ky6/QBJsv3AOPTOFi3fmq', 'Admin', '../images/andrew.jpg', '2023-01-06 12:49:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `area_location`
--
ALTER TABLE `area_location`
  ADD PRIMARY KEY (`zip_code`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
