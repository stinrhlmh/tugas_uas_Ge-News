-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 26, 2025 at 02:15 PM
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
-- Database: `genews`
--

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `Nama` varchar(100) NOT NULL,
  `Alamat` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `role` enum('admin','user') NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `Nama`, `Alamat`, `Email`, `Username`, `Password`, `role`) VALUES
(1, 'Siti Nurhalimah', 'jl.cisaat', 'sn630035@gmail.com', 'stinrhlmh', '$2y$10$h1WadY22MP.yo5q3gOVDJ.mBeBeZdEEZcfWZeRBFmSFQm18lvnxNe', 'user'),
(2, 'imaa', 'jl.cisaat', 's.nurhalimahh1@gmail.com', 'imaa06', '$2y$10$JSh9Y73QZl7j3.NLAY/HAuRTEydk9IplKx2WDtJdW2qZkYWZRg/Oe', 'user'),
(3, 'admin', 'jl.cimanggu', 'admin@gmail.com', 'admin', '$2y$10$LhmPMYGlvt.mUWmp9Ht9l.Z7uGILTEkqJjOsLMs0Rpm6nhFp1oo12', 'admin'),
(5, 'imaa', 'jl.cisaat', 'sitinur@gmail.com', 'imaa09', '$2y$10$ClXU6V.YydbUj7qE6cOHVeNGWy/bN0l2qvY9YZIRThkw/nZ1cDugS', 'user'),
(6, 'asri', 'jl.cibolang', 'asri@gmail.com', 'asri002', '$2y$10$ll0qAEPY/owddXumbnDoQeKtfZs3DZFBmsrq5swbpPKPnPavLvJk6', 'user'),
(7, 'kania', 'jl.cisaat', 'kania@gmail.com', 'kakan09', '$2y$10$Jwp/usVTIyFozKrVOBQ9B.rRCXTGdOHtafx1jeXVj2apUegyJcn0a', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`,`Nama`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
