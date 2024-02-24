-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 21, 2024 at 04:22 AM
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
-- Database: `db_toko`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id` int(11) NOT NULL,
  `id_barang` varchar(255) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `nama_barang` text NOT NULL,
  `merk` varchar(255) NOT NULL,
  `harga_beli` varchar(255) NOT NULL,
  `harga_jual` varchar(255) NOT NULL,
  `satuan_barang` varchar(255) NOT NULL,
  `stok` text NOT NULL,
  `tgl_input` varchar(255) NOT NULL,
  `tgl_update` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id`, `id_barang`, `id_kategori`, `nama_barang`, `merk`, `harga_beli`, `harga_jual`, `satuan_barang`, `stok`, `tgl_input`, `tgl_update`) VALUES
(6, 'BR001', 8, 'Bola Basket', 'Ballerbro', '400000', '500000', '#', '100', '21 February 2024, 9:28', '21 February 2024, 9:37'),
(7, 'BR002', 8, 'Bola Futsal', 'Specs', '400000', '500000', '#', '100', '21 February 2024, 9:34', NULL),
(8, 'BR003', 8, 'Bola Volly ', 'Mikasa', '200000', '300000', '#', '100', '21 February 2024, 9:36', NULL),
(9, 'BR004', 12, 'Sepatu Basket', 'Ballerbro 5', '500000', '600000', 'PCS', '100', '21 February 2024, 9:38', '21 February 2024, 10:20'),
(10, 'BR005', 12, 'Sepatu Futsal', 'Specs', '400000', '500000', 'PCS', '100', '21 February 2024, 9:39', '21 February 2024, 10:20'),
(11, 'BR006', 12, 'Sepatu Volly', 'Mizuno', '400000', '500000', 'PCS', '100', '21 February 2024, 9:40', '21 February 2024, 10:19'),
(12, 'BR007', 11, 'Kacamata Olahraga', 'Ballerbro', '1000000', '1500000', '#', '50', '21 February 2024, 10:03', '21 February 2024, 10:18'),
(13, 'BR008', 11, 'Ankle support', 'Ballerbro', '80000', '100000', 'PCS', '100', '21 February 2024, 10:07', NULL),
(14, 'BR009', 11, 'Kneedpad', 'Ballerbro', '80000', '100000', 'PCS', '100', '21 February 2024, 10:08', NULL),
(15, 'BR010', 12, 'Tas Travel Gym Fitness', 'Ballerbro', '200000', '250000', '#', '100', '21 February 2024, 10:12', NULL),
(16, 'BR011', 11, 'Finger Support', 'Ballerbro', '50000', '70000', '#', '100', '21 February 2024, 10:13', NULL),
(17, 'BR012', 11, 'Manset', 'Specs', '50000', '70000', '#', '100', '21 February 2024, 10:14', NULL),
(18, 'BR013', 12, 'Coness', 'Specs', '100000', '150000', 'PCS', '100', '21 February 2024, 10:15', NULL),
(19, 'BR014', 12, 'Jaring', 'Specs', '200000', '250000', 'PCS', '100', '21 February 2024, 10:16', NULL),
(20, 'BR015', 12, 'Kompaan  Portabel', 'Specs', '100000', '150000', '#', '100', '21 February 2024, 10:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL,
  `tgl_input` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `tgl_input`) VALUES
(8, 'Bola', '21 February 2024, 9:25'),
(11, 'Aksesoris', '21 February 2024, 10:07'),
(12, 'Barang', '21 February 2024, 10:11');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id_member` int(11) NOT NULL,
  `nm_member` varchar(255) DEFAULT NULL,
  `alamat_member` text DEFAULT NULL,
  `telepon` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `gambar` text DEFAULT NULL,
  `NIK` text DEFAULT NULL,
  `status` enum('1','2') NOT NULL,
  `user` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id_member`, `nm_member`, `alamat_member`, `telepon`, `email`, `gambar`, `NIK`, `status`, `user`, `pass`) VALUES
(1, 'Admin', 'uj harapan', '089603252223', 'Admin@gmail.com', '1708484444unnamed.jpg', '12314121', '1', 'admin', '21232f297a57a5a743894a0e4a801fc3'),
(5, 'Muhammad Rezky Febriansyah', 'Padalarang', '089676197380', 'Kyraahelix@gmail.com', '1708484567WhatsApp Image 2024-02-21 at 10.02.10.jpeg', '3217080202060005', '2', 'rezky ', '6ca30a20120934960c7a923441ada154'),
(6, 'Sanrina Nur Intan', 'Batujajar', '085951708720', 'sanrina833@gmail.com', '1707213095WhatsApp Image 2024-02-06 at 16.51.24.jpeg', '3217065805060001', '2', 'sanrina', '061e7f6083e4287185043b9ac0e8dcf0');

-- --------------------------------------------------------

--
-- Table structure for table `nota`
--

CREATE TABLE `nota` (
  `id_nota` int(11) NOT NULL,
  `id_barang` varchar(255) NOT NULL,
  `id_member` int(11) NOT NULL,
  `jumlah` varchar(255) NOT NULL,
  `total` varchar(255) NOT NULL,
  `tanggal_input` varchar(255) NOT NULL,
  `periode` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `id_penjualan` int(11) NOT NULL,
  `id_barang` varchar(255) NOT NULL,
  `id_member` int(11) NOT NULL,
  `jumlah` varchar(255) NOT NULL,
  `total` varchar(255) NOT NULL,
  `tanggal_input` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `toko`
--

CREATE TABLE `toko` (
  `id_toko` int(11) NOT NULL,
  `nama_toko` varchar(255) NOT NULL,
  `alamat_toko` text NOT NULL,
  `tlp` varchar(255) NOT NULL,
  `nama_pemilik` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `toko`
--

INSERT INTO `toko` (`id_toko`, `nama_toko`, `alamat_toko`, `tlp`, `nama_pemilik`) VALUES
(1, 'Absolute Shop', 'Cipaganti', '089676197380', 'Rezky &amp; Sanrina');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id_member`),
  ADD UNIQUE KEY `user` (`user`);

--
-- Indexes for table `nota`
--
ALTER TABLE `nota`
  ADD PRIMARY KEY (`id_nota`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id_penjualan`);

--
-- Indexes for table `toko`
--
ALTER TABLE `toko`
  ADD PRIMARY KEY (`id_toko`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id_member` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `nota`
--
ALTER TABLE `nota`
  MODIFY `id_nota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `id_penjualan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `toko`
--
ALTER TABLE `toko`
  MODIFY `id_toko` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
