-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 23, 2018 at 03:11 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `indopasific`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_checker`
--

CREATE TABLE `tbl_checker` (
  `id` int(10) NOT NULL,
  `nama` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_checker`
--

INSERT INTO `tbl_checker` (`id`, `nama`) VALUES
(1, 'Pa Asep'),
(2, 'Pa Deni');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_costumer`
--

CREATE TABLE `tbl_costumer` (
  `idcostumer` int(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(20) NOT NULL,
  `alamat` varchar(150) NOT NULL,
  `telepon` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_costumer`
--

INSERT INTO `tbl_costumer` (`idcostumer`, `nama`, `email`, `alamat`, `telepon`) VALUES
(15, 'Nagatama', 'nagatama@mail.com', 'jakarta', '0896765483'),
(16, 'Panji', 'panji.pam@gmail.com', 'a', '0');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_desain`
--

CREATE TABLE `tbl_desain` (
  `nodesain` varchar(10) NOT NULL,
  `kodegambar` varchar(10) NOT NULL,
  `costumer` varchar(10) NOT NULL,
  `tglpenerimaan` date NOT NULL,
  `konstruksi` varchar(10) NOT NULL,
  `instruksi` varchar(10) NOT NULL,
  `tracer` varchar(10) NOT NULL,
  `tgltracer` date NOT NULL,
  `tglkelar` date NOT NULL,
  `tglkirim` date NOT NULL,
  `tglorderproduk` date NOT NULL,
  `keterangan` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_desain`
--

INSERT INTO `tbl_desain` (`nodesain`, `kodegambar`, `costumer`, `tglpenerimaan`, `konstruksi`, `instruksi`, `tracer`, `tgltracer`, `tglkelar`, `tglkirim`, `tglorderproduk`, `keterangan`) VALUES
('Aa65566', 'dd', 'Panji', '2018-09-06', 'CT30s', 'ss', 'Pa Iwan', '2018-09-08', '2018-08-31', '2018-09-15', '2018-09-28', '11'),
('Aasss', 'dd', 'Nagatama', '2018-09-06', 'Print Kert', 'ss', 'Pa Engkun', '2018-09-14', '2018-09-13', '2018-09-13', '2018-09-28', 'aaaa');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_items`
--

CREATE TABLE `tbl_items` (
  `itemId` int(11) NOT NULL,
  `itemHeader` varchar(512) NOT NULL COMMENT 'Heading',
  `itemSub` varchar(1021) NOT NULL COMMENT 'sub heading',
  `itemDesc` text COMMENT 'content or description',
  `itemImage` varchar(80) DEFAULT NULL,
  `isDeleted` tinyint(4) NOT NULL DEFAULT '0',
  `createdBy` int(11) NOT NULL,
  `createdDtm` datetime NOT NULL,
  `updatedDtm` datetime DEFAULT NULL,
  `updatedBy` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_items`
--

INSERT INTO `tbl_items` (`itemId`, `itemHeader`, `itemSub`, `itemDesc`, `itemImage`, `isDeleted`, `createdBy`, `createdDtm`, `updatedDtm`, `updatedBy`) VALUES
(1, 'jquery.validation.js', 'Contribution towards jquery.validation.js', 'jquery.validation.js is the client side javascript validation library authored by Jörn Zaefferer hosted on github for us and we are trying to contribute to it. Working on localization now', 'validation.png', 0, 1, '2015-09-02 00:00:00', NULL, NULL),
(2, 'CodeIgniter User Management', 'Demo for user management system', 'This the demo of User Management System (Admin Panel) using CodeIgniter PHP MVC Framework and AdminLTE bootstrap theme. You can download the code from the repository or forked it to contribute. Usage and installation instructions are provided in ReadMe.MD', 'cias.png', 0, 1, '2015-09-02 00:00:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kontruksi`
--

CREATE TABLE `tbl_kontruksi` (
  `id` int(10) NOT NULL,
  `nama` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_kontruksi`
--

INSERT INTO `tbl_kontruksi` (`id`, `nama`) VALUES
(1, 'Print Kertas'),
(2, 'CT40s'),
(3, 'CT60s'),
(4, 'CT30s'),
(5, 'CT40 peach'),
(6, 'CT10'),
(7, 'Rayon 30'),
(8, 'Rayon 40'),
(9, 'Rayon 60'),
(10, 'Rayon Twill'),
(11, 'BB Canvas'),
(12, 'BB Canvas peach'),
(13, 'Ramee'),
(14, 'CT Poplin Strecth');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_produksi`
--

CREATE TABLE `tbl_produksi` (
  `no` int(11) NOT NULL,
  `tglterima` date NOT NULL,
  `costumer` varchar(20) NOT NULL,
  `kodegambar` varchar(20) NOT NULL,
  `nodesain` varchar(20) NOT NULL,
  `noso` varchar(11) NOT NULL,
  `konstruksi` varchar(11) NOT NULL,
  `combo` varchar(11) NOT NULL,
  `tglselesai` date NOT NULL,
  `desainer` varchar(11) NOT NULL,
  `keterangan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_produksi`
--

INSERT INTO `tbl_produksi` (`no`, `tglterima`, `costumer`, `kodegambar`, `nodesain`, `noso`, `konstruksi`, `combo`, `tglselesai`, `desainer`, `keterangan`) VALUES
(1, '2018-09-14', 'Nagatama', 'a', 'Aa', 'Aag', 'CT30s', '11', '2018-09-21', '11', '11'),
(223, '2018-09-21', 'Nagatama', 'a', 'Aa', 'aa', 'CT60s', 'ff', '2018-09-07', 'ss', 'ss');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_reset_password`
--

CREATE TABLE `tbl_reset_password` (
  `id` bigint(20) NOT NULL,
  `email` varchar(128) NOT NULL,
  `activation_id` varchar(32) NOT NULL,
  `agent` varchar(512) NOT NULL,
  `client_ip` varchar(32) NOT NULL,
  `isDeleted` tinyint(4) NOT NULL DEFAULT '0',
  `createdBy` bigint(20) NOT NULL DEFAULT '1',
  `createdDtm` datetime NOT NULL,
  `updatedBy` bigint(20) DEFAULT NULL,
  `updatedDtm` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_reset_password`
--

INSERT INTO `tbl_reset_password` (`id`, `email`, `activation_id`, `agent`, `client_ip`, `isDeleted`, `createdBy`, `createdDtm`, `updatedBy`, `updatedDtm`) VALUES
(22, 'manager@codeinsect.co', '4TCMF1e24ONMfj9', 'Chrome 62.0.3202.94', '0.0.0.0', 0, 1, '2017-12-03 03:36:28', NULL, NULL),
(23, 'employee@codeinsect.com', 'TP9Te8Wfjkl8j2G', 'Chrome 62.0.3202.94', '0.0.0.0', 0, 1, '2017-12-03 03:36:55', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_roles`
--

CREATE TABLE `tbl_roles` (
  `roleId` tinyint(4) NOT NULL COMMENT 'role id',
  `role` varchar(50) NOT NULL COMMENT 'role text'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_roles`
--

INSERT INTO `tbl_roles` (`roleId`, `role`) VALUES
(1, 'System Administrator'),
(2, 'Costumer');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_strikeoff`
--

CREATE TABLE `tbl_strikeoff` (
  `noso` varchar(20) NOT NULL,
  `kodegambar` varchar(12) NOT NULL,
  `costumer` varchar(20) NOT NULL,
  `tglpenerimaan` date NOT NULL,
  `konstruksi` int(10) UNSIGNED NOT NULL,
  `instruksi` varchar(20) NOT NULL,
  `tracer` varchar(20) NOT NULL,
  `tgltracer` date NOT NULL,
  `tglkelar` date NOT NULL,
  `tglkirim` date NOT NULL,
  `tglorderproduk` date NOT NULL,
  `keterangan` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_strikeoff`
--

INSERT INTO `tbl_strikeoff` (`noso`, `kodegambar`, `costumer`, `tglpenerimaan`, `konstruksi`, `instruksi`, `tracer`, `tgltracer`, `tglkelar`, `tglkirim`, `tglorderproduk`, `keterangan`) VALUES
('Aa', 'dd', 'Panji', '2018-09-22', 0, 'ss', 'Pa Engkun', '2018-09-14', '2018-09-15', '2018-09-27', '2018-09-14', 'ssssss'),
('Aag', 'ssss', 'Nagatama', '2018-09-28', 0, 'a', 'Pa Iwan', '2018-09-22', '2018-09-14', '2018-09-21', '2018-09-14', 'aaaa'),
('Aagbbb', 'dd', 'Nagatama', '2018-09-14', 0, 's', 'Pa Iwan', '2018-09-14', '2018-09-14', '2018-09-21', '2018-09-28', 'qqqqqq');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tracer`
--

CREATE TABLE `tbl_tracer` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_tracer`
--

INSERT INTO `tbl_tracer` (`id`, `nama`) VALUES
(1, 'Pa Engkun'),
(2, 'Pa Heri'),
(3, 'Pa Iwan'),
(4, 'Pa Asep Tata'),
(5, 'Pa Sobari'),
(6, 'Pa Deni'),
(7, 'Pa Jaja'),
(8, 'Pa Eko'),
(9, 'Pa Wahyu'),
(10, 'Pa Slamet'),
(11, 'Ratna'),
(12, 'Liesty');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `userId` int(11) NOT NULL,
  `email` varchar(128) NOT NULL COMMENT 'login email',
  `password` varchar(128) NOT NULL COMMENT 'hashed login password',
  `name` varchar(128) DEFAULT NULL COMMENT 'full name of user',
  `mobile` varchar(20) DEFAULT NULL,
  `roleId` tinyint(4) NOT NULL,
  `isDeleted` tinyint(4) NOT NULL DEFAULT '0',
  `createdBy` int(11) NOT NULL,
  `createdDtm` datetime NOT NULL,
  `updatedBy` int(11) DEFAULT NULL,
  `updatedDtm` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`userId`, `email`, `password`, `name`, `mobile`, `roleId`, `isDeleted`, `createdBy`, `createdDtm`, `updatedBy`, `updatedDtm`) VALUES
(1, 'admin@codeinsect.com', '$2y$10$WQQRBQDkxV/98bqK.24Dp.uMVS6KcztVqdwwTrOBLIWLSeSqE2gii', 'System Administrator', '9890098900', 1, 0, 0, '2015-07-01 18:56:49', 1, '2017-03-03 12:08:39'),
(6, 'admin@indopasific.com', '$2y$10$rsn1f0WqHGKhaklWliK2AeRpM1JuB7CXYN2b0zTbS6/PC7nQ.FIrW', 'Admin', '0813117782', 1, 0, 1, '2017-12-04 03:47:18', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_checker`
--
ALTER TABLE `tbl_checker`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_costumer`
--
ALTER TABLE `tbl_costumer`
  ADD PRIMARY KEY (`idcostumer`);

--
-- Indexes for table `tbl_desain`
--
ALTER TABLE `tbl_desain`
  ADD PRIMARY KEY (`nodesain`);

--
-- Indexes for table `tbl_items`
--
ALTER TABLE `tbl_items`
  ADD PRIMARY KEY (`itemId`);

--
-- Indexes for table `tbl_kontruksi`
--
ALTER TABLE `tbl_kontruksi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_produksi`
--
ALTER TABLE `tbl_produksi`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `tbl_reset_password`
--
ALTER TABLE `tbl_reset_password`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_roles`
--
ALTER TABLE `tbl_roles`
  ADD PRIMARY KEY (`roleId`);

--
-- Indexes for table `tbl_strikeoff`
--
ALTER TABLE `tbl_strikeoff`
  ADD PRIMARY KEY (`noso`),
  ADD KEY `idx_konstruksi` (`konstruksi`);

--
-- Indexes for table `tbl_tracer`
--
ALTER TABLE `tbl_tracer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`userId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_checker`
--
ALTER TABLE `tbl_checker`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_costumer`
--
ALTER TABLE `tbl_costumer`
  MODIFY `idcostumer` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbl_items`
--
ALTER TABLE `tbl_items`
  MODIFY `itemId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_kontruksi`
--
ALTER TABLE `tbl_kontruksi`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_produksi`
--
ALTER TABLE `tbl_produksi`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9898998;

--
-- AUTO_INCREMENT for table `tbl_reset_password`
--
ALTER TABLE `tbl_reset_password`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tbl_roles`
--
ALTER TABLE `tbl_roles`
  MODIFY `roleId` tinyint(4) NOT NULL AUTO_INCREMENT COMMENT 'role id', AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_tracer`
--
ALTER TABLE `tbl_tracer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
