-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 05, 2022 at 08:25 AM
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
-- Table structure for table `akun`
--

CREATE TABLE `akun` (
  `email` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `psw` blob NOT NULL,
  `konfirmasi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `akun`
--

INSERT INTO `akun` (`email`, `username`, `psw`, `konfirmasi`) VALUES
('2', '2', 0x24327924313024367a3779667341524e2f7851745236687a5a776d454f6c2f4c4a54467a5a493972476e54712f3053436876727a4b7241325472526d, ''),
('kayla@gmail.com', 'kayla78', 0x2432792431302455514d4a367230484e39633942756c317946456f624f7355354268595332385370426f346446304c35574751316d543854697a4f6d, ''),
('lyly@gmail.com', 'lyly', 0x243279243130246775617a546544676465426b6a68553439704e4c564f4b462f53706c7451325233426832546a5a796f6c52527a42424a6972456b43, ''),
('wonwoo@gmail.com', 'wonwoo17', 0x243279243130244e506a43635a4e5a703676596c356f6332614c796d654c57384863323074657865464e65556b774e326d4970475165776379596b43, '');

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
-- Indexes for table `akun`
--
ALTER TABLE `akun`
  ADD PRIMARY KEY (`email`);

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
