-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 29, 2022 at 11:17 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ceriadb`
--
CREATE DATABASE IF NOT EXISTS `ceriadb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ceriadb`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'fauzi', '123'),
(2, 'agung', '123');

-- --------------------------------------------------------

--
-- Table structure for table `laundry`
--

CREATE TABLE `laundry` (
  `id` int(11) NOT NULL,
  `idPlg` varchar(255) NOT NULL,
  `idLaundry` varchar(255) NOT NULL,
  `service` varchar(255) DEFAULT NULL,
  `jenis` varchar(255) DEFAULT NULL,
  `perKilo` varchar(255) DEFAULT NULL,
  `mass` varchar(255) DEFAULT NULL,
  `qty` varchar(255) DEFAULT NULL,
  `tglBuat` varchar(255) DEFAULT NULL,
  `tglAmbil` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `laundry`
--

INSERT INTO `laundry` (`id`, `idPlg`, `idLaundry`, `service`, `jenis`, `perKilo`, `mass`, `qty`, `tglBuat`, `tglAmbil`) VALUES
(2, 'PLG-3', 'LDR-1', 'Standar', 'Lengkap', '6000', '16', '30', '28 Agustus 2022, 08:46', '31 Agustus 2022, 08:46'),
(4, 'PLG-1', 'LDR-4', 'Standar', 'Lengkap', '6000', '8', '10', '28 Agustus 2022, 09:39', '31 Agustus 2022, 09:39');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id` int(11) NOT NULL,
  `idPlg` varchar(255) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `telp` varchar(255) DEFAULT NULL,
  `tglBuat` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id`, `idPlg`, `nama`, `alamat`, `telp`, `tglBuat`) VALUES
(2, 'PLG-1', 'Agung', 'Jl. Potlot', '0829872347', '29 Agustus 2022'),
(4, 'PLG-3', 'Fauzi', 'Jl. Supomo', '2398345436', '29 Agustus 2022');

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id` int(11) NOT NULL,
  `idPlg` varchar(255) NOT NULL,
  `idLaundry` varchar(255) NOT NULL,
  `biaya` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`id`, `idPlg`, `idLaundry`, `biaya`, `status`) VALUES
(2, 'PLG-3', 'LDR-1', '96000', 'Berjalan'),
(4, 'PLG-1', 'LDR-4', '48000', 'Selesai');

-- --------------------------------------------------------

--
-- Table structure for table `pengeluaran`
--

CREATE TABLE `pengeluaran` (
  `id` int(11) NOT NULL,
  `detail` varchar(255) DEFAULT NULL,
  `total` varchar(255) DEFAULT NULL,
  `tglBuat` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pengeluaran`
--

INSERT INTO `pengeluaran` (`id`, `detail`, `total`, `tglBuat`) VALUES
(1, 'Sabun, Softener', '150000', '28 Agustus 2022'),
(2, 'Packaging', '50000', '28 Agustus 2022'),
(3, 'Packaging', '50000', '28 Agustus 2022'),
(4, 'Detergen', '100000', '28 Agustus 2022');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `laundry`
--
ALTER TABLE `laundry`
  ADD PRIMARY KEY (`id`,`idPlg`,`idLaundry`) USING BTREE;

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id`,`idPlg`) USING BTREE;

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id`,`idPlg`,`idLaundry`) USING BTREE;

--
-- Indexes for table `pengeluaran`
--
ALTER TABLE `pengeluaran`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `laundry`
--
ALTER TABLE `laundry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pengeluaran`
--
ALTER TABLE `pengeluaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
