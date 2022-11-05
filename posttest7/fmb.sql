-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 30, 2022 at 05:24 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `posttest5`
--

-- --------------------------------------------------------

--
-- Table structure for table `fmb`
--

CREATE TABLE `fmb` (
  `no` int(11) NOT NULL,
  `merk_tas` varchar(50) NOT NULL,
  `size` varchar(50) NOT NULL,
  `warna` varchar(50) NOT NULL,
  `jumlah_tas` int(11) NOT NULL,
  `tanggal_stok` varchar(50) NOT NULL,
  `harga` int(11) NOT NULL,
  `gambar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fmb`
--

INSERT INTO `fmb` (`no`, `merk_tas`, `size`, `warna`, `jumlah_tas`, `tanggal_stok`, `harga`, `gambar`) VALUES
(15, 'Guess', 'M', 'Hitam', 5, '30-10-22 10:42:48 am', 1050000, 'Guess.png'),
(16, 'Michael', 'M', 'Cream', 5, '30-10-22 10:50:23 am', 1750000, 'Michael.png'),
(19, 'Unisa', 'M', 'Hitam', 7, '30-10-22 10:52:46 am', 520000, 'Unisa.png'),
(20, 'Armour', 'M', 'Abu-abu', 8, '30-10-22 12:09:16 pm', 780000, 'Armour.png'),
(21, 'Kia', 'S', 'Hijau', 5, '30-10-22 12:16:03 pm', 350000, 'Kia.png'),
(23, 'Sadie', 'S', 'Cream', 5, '30-10-22 12:14:14 pm', 359000, 'Sadie.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fmb`
--
ALTER TABLE `fmb`
  ADD PRIMARY KEY (`no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fmb`
--
ALTER TABLE `fmb`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
