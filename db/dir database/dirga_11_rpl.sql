-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 14, 2023 at 07:50 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dirga 11 rpl`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id_transaksi` int(11) NOT NULL,
  `nama_barang` varchar(256) NOT NULL,
  `harga_barang` decimal(10,2) NOT NULL,
  `jenis_barang` varchar(256) NOT NULL,
  `nama_supplier` varchar(256) NOT NULL,
  `alamat_supplier` text NOT NULL,
  `nama_toko` varchar(256) NOT NULL,
  `pemilik_toko` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id_transaksi`, `nama_barang`, `harga_barang`, `jenis_barang`, `nama_supplier`, `alamat_supplier`, `nama_toko`, `pemilik_toko`) VALUES
(1, 'bola', '75000.00', 'alat olahraga', 'PT.indomarco', 'Jakarta', 'Toko Makmur', 'Pak Makmur'),
(2, 'monitor', '1800000.00', 'Alat Komputer', 'PT.Electronic', 'Yogyakarta', 'Teachi computer', 'Pak jackie'),
(3, 'Keyboard', '500000.00', 'Alat Komputer', 'PT.Electronic', 'Yogyakarta', 'Teachi computer', 'Pak jackie'),
(4, 'Komputer', '5000000.00', 'Komputer', 'PT.Electronic', 'Jakarta', 'Teachi computer', 'Pak Jackie'),
(5, 'Mouse', '300000.00', 'Alat Komputer', 'PT.Electronic', 'Jakarta', 'Teachi computer', 'Pak Jeckie'),
(6, 'Indomie', '2500.00', 'Makanan', 'PT.alfakart', 'bekasi', 'toko suskes', 'pak joko'),
(7, 'gawang bola', '1500.00', 'alat olahraga', 'PT.indomarco', 'jakarta', 'toko makmur', 'pak makmur'),
(8, 'raket badminton', '500000.00', 'alat olahraga', 'PT.indomarco', 'jakarta', 'toko makmur', 'pak makmur'),
(9, 'bola pingpong', '25000.00', 'alat olahraga', 'PT.indomarco', 'jakarta', 'toko makmur ', 'pak makmur'),
(10, 'choco latoz', '500.00', 'makanan', 'PT.alfakart', 'bekasi', 'toko sukses', 'pak joko');

-- --------------------------------------------------------

--
-- Table structure for table `harga_barang`
--

CREATE TABLE `harga_barang` (
  `id_barang` int(11) NOT NULL,
  `harga_barang` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `harga_barang`
--

INSERT INTO `harga_barang` (`id_barang`, `harga_barang`) VALUES
(1, '75000.00'),
(2, '1800000.00'),
(3, '500000.00'),
(4, '5000000.00'),
(5, '300000.00'),
(6, '2500.00'),
(7, '1500000.00'),
(8, '500000.00'),
(9, '25000.00'),
(10, '500.00');

-- --------------------------------------------------------

--
-- Table structure for table `jenis barang`
--

CREATE TABLE `jenis barang` (
  `id_barang` int(11) NOT NULL,
  `jenis_barang` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jenis barang`
--

INSERT INTO `jenis barang` (`id_barang`, `jenis_barang`) VALUES
(1, 'alat olahraga'),
(2, 'alat komputer'),
(3, 'alat komputer'),
(4, 'alat komputer'),
(5, 'alat komputer'),
(6, 'makanan'),
(7, 'alat olahraga'),
(8, 'alat olahraga'),
(9, 'alat olahraga'),
(10, 'makanan');

-- --------------------------------------------------------

--
-- Table structure for table `pembelian`
--

CREATE TABLE `pembelian` (
  `id_pembelian` int(11) NOT NULL,
  `nama_pembeli` varchar(256) NOT NULL,
  `alamat_barang` text NOT NULL,
  `nama_barang` varchar(100) NOT NULL,
  `jumlah_beli_barang` int(11) NOT NULL,
  `total_bayar` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pembelian`
--

INSERT INTO `pembelian` (`id_pembelian`, `nama_pembeli`, `alamat_barang`, `nama_barang`, `jumlah_beli_barang`, `total_bayar`) VALUES
(1, 'ronaldo\r\n', 'Yogyakarta', 'bola', 15, 1125000),
(2, 'Tuan speed\r\n', 'Yogyakarta ', 'monitor', 2, 3600000),
(3, 'Daffa\r\n', 'jakarta ', 'keyboard ', 3, 1500000),
(4, 'hapis\r\n', 'Yogyakarta', 'komputer ', 1, 5000000),
(5, 'rafa\r\n', 'Bantul', 'mouse', 1, 300000),
(6, 'iza\r\n', 'sewon', 'indomie ', 5, 1250000),
(7, 'halim\r\n', 'tanggerang', 'gawang bola', 2, 3000000),
(8, 'denis\r\n', 'bantul', 'raket badminton', 1, 500000),
(9, 'bimo\r\n', 'surabaya', 'bola pingpong', 2, 50000),
(10, ' diendi\r\n', 'mojkerto', 'choco latoz', 10, 5000);

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id_barang` int(11) NOT NULL,
  `nama_supplier` varchar(256) NOT NULL,
  `alamat_supplier` text NOT NULL,
  `nama_toko` varchar(100) NOT NULL,
  `pemilik_toko` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id_barang`, `nama_supplier`, `alamat_supplier`, `nama_toko`, `pemilik_toko`) VALUES
(1, 'PT. indomarco\r\n', 'jakarta	 ', 'Toko makmur', 'pak makmur'),
(2, 'PT.Electronic\r\n', 'Yogyakarta', 'Teachi computer', 'Pak Jackie'),
(3, 'PT. Electronic\r\n', 'Yogyakarta ', 'Teachi computer', 'Pak Jackie'),
(4, 'PT.Electronic\r\n', 'jakarta', 'Teachi computer', 'Pak Jackie\r\n'),
(5, 'PT. Electronic\r\n', 'jakarta', 'Teachi computer ', 'Pak Jackie'),
(6, 'PT.alfakart\r\n', 'bekasi', 'Toko sukses', 'pak joko'),
(7, 'PT.indomarco\r\n', 'jakarta', 'Toko makmur', 'pak makmur'),
(8, 'PT.indomarco\r\n', 'jakarta', 'Toko makmur', 'pak makmur\r\n'),
(9, 'PT.indomarco\r\n', 'jakarta', 'Toko makmur', 'pak makmur'),
(10, 'PT. alfakart\r\n', 'bekasi', 'Toko sukses', 'pak joko');

-- --------------------------------------------------------

--
-- Table structure for table `toko`
--

CREATE TABLE `toko` (
  `id_toko` int(11) NOT NULL,
  `nama_toko` varchar(100) NOT NULL,
  `pemilik toko` varchar(100) NOT NULL,
  `id_supplier` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `toko`
--

INSERT INTO `toko` (`id_toko`, `nama_toko`, `pemilik toko`, `id_supplier`) VALUES
(1, 'Toko makmur\r\n', 'pak makmur\r\n', 1),
(2, 'Teachi computer\r\n', 'Pak Jackie', 2),
(3, 'Teachi computer\r\n', 'Pak Jackie', 3),
(4, 'Teachi computer\r\n', 'Pak Jackie', 4),
(5, 'Teachi computer\r\n', 'Pak Jackie', 5),
(6, 'Toko sukses', 'pak joko', 6),
(7, 'Toko makmur\r\n', 'pak makmur', 7),
(8, 'Toko makmur\r\n', 'pak makmur', 8),
(9, 'Toko makmur\r\n', 'pak makmur', 9),
(10, 'Toko sukses\r\n', 'pak joko', 10);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indexes for table `harga_barang`
--
ALTER TABLE `harga_barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indexes for table `jenis barang`
--
ALTER TABLE `jenis barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indexes for table `pembelian`
--
ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`id_pembelian`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id_barang`);

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
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `pembelian`
--
ALTER TABLE `pembelian`
  MODIFY `id_pembelian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `toko`
--
ALTER TABLE `toko`
  MODIFY `id_toko` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
