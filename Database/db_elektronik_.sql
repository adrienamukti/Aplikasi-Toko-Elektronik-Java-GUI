-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 18, 2024 at 03:46 AM
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
-- Database: `db_elektronik_`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id_barang` varchar(10) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `merk` varchar(50) NOT NULL,
  `harga` int(20) NOT NULL,
  `stok` int(10) NOT NULL,
  `file` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id_barang`, `nama_barang`, `merk`, `harga`, `stok`, `file`) VALUES
('hp001', 'henpon', 'asus', 2000000, 1, 'C:\\Users\\MyBook Hype AMD\\Documents\\UTS KWH 2324 UTS A1 Muhammad Adriena Mukti.pdf'),
('ka001', 'Kipas Angin', 'Cosmos', 250000, 9, 'C:\\Users\\MyBook Hype AMD\\Documents\\Tugas KWH 2324 A1 Muhammad Adriena Mukti.pdf'),
('mc001', 'Mesin Cuci', 'Sharp', 3899000, 10, ''),
('ps001', 'Playstaion 4', 'Sony', 4399000, 4, ''),
('st001', 'Setrika', 'Miyako', 99000, 12, '');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id` int(10) NOT NULL,
  `id_barang` varchar(10) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `merk` varchar(50) NOT NULL,
  `harga` int(20) NOT NULL,
  `jumlah_beli` int(10) NOT NULL,
  `diskon` int(10) NOT NULL,
  `harga_total` int(20) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `bayar` int(20) NOT NULL,
  `kembalian` int(20) NOT NULL,
  `tanggal` varchar(20) NOT NULL,
  `waktu` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id`, `id_barang`, `nama_barang`, `merk`, `harga`, `jumlah_beli`, `diskon`, `harga_total`, `nama`, `bayar`, `kembalian`, `tanggal`, `waktu`) VALUES
(1, 'ka001', 'Kipas Angin', 'Cosmos', 250000, 1, 10000, 240000, 'yucc', 250000, 10000, '06/07/2020', '16:50:57'),
(3, 'ps001', 'Playstaion 4', 'Sony', 4399000, 1, 20000, 4379000, 'Yucubbb', 4400000, 21000, '10/07/2020', '23:33:07'),
(4, 'st001', 'Setrika', 'Miyako', 99000, 1, 10000, 89000, 'Yucubbb', 100000, 11000, '10/07/2020', '23:39:43'),
(5, 'st001', 'Setrika', 'Miyako', 99000, 2, 20000, 178000, 'Josuke', 180000, 2000, '11/07/2020', '15:17:52'),
(6, 'ka001', 'Kipas Angin', 'Cosmos', 250000, 12, 10000, 2990000, 'Kipas', 3000000, 10000, '04/07/2024', '22:32:45'),
(8, 'hp001', 'henpon', 'asus', 2000000, 1, 10000, 1990000, 'boril meki', 2000000, 10000, '05/07/2024', '00:46:02'),
(9, 'ka001', 'Kipas Angin', 'Cosmos', 250000, 1, 10000, 240000, 'adri', 2400000, 2160000, '08/07/2024', '00:17:29');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(5) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `level` varchar(10) NOT NULL,
  `jenis_kelamin` varchar(10) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `telp` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nama`, `username`, `password`, `level`, `jenis_kelamin`, `alamat`, `telp`) VALUES
(1, 'admin', 'admin', 'admin123', 'admin', 'Laki-laki', 'Bantul, Yogyakarta', '089123456789'),
(3, 'yucc', 'yucc', 'yucc123', 'user', 'Laki-laki', 'Boyolali', '089123456789'),
(6, 'aril', 'boril', 'boril123', 'user', 'Laki-laki', 'ck', '11009'),
(8, 'mia kal', 'mia', 'mia123', 'user', 'Perempuan', 'cc', '1233');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_transakii_fkk` (`id_barang`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`id_barang`) REFERENCES `barang` (`id_barang`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
