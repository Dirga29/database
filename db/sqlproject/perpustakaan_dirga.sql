-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 27, 2023 at 06:01 AM
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
-- Database: `perpustakaan_dirga`
--

-- --------------------------------------------------------

--
-- Table structure for table `anggota`
--

CREATE TABLE `anggota` (
  `id` int(10) NOT NULL,
  `nim` int(6) NOT NULL,
  `nama` char(45) NOT NULL,
  `jurusan` varchar(25) NOT NULL,
  `alamat` text NOT NULL,
  `nomor hp` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `anggota`
--

INSERT INTO `anggota` (`id`, `nim`, `nama`, `jurusan`, `alamat`, `nomor hp`) VALUES
(1, 345678, 'Jono', 'kedokteran ', 'JOGJA', '86565498'),
(2, 345679, 'RIKA', 'Pembangunan', 'pleret', '834565456'),
(3, 345680, 'RIKI', 'Sastra Jepang ', 'kasihan ', '897665000'),
(4, 345691, 'fadly', 'pertanian', 'kasongan', '87698799'),
(5, 345675, 'cokro', 'pertanian', 'sewon', '857760660');

-- --------------------------------------------------------

--
-- Table structure for table `data_pegawai`
--

CREATE TABLE `data_pegawai` (
  `id` int(5) NOT NULL,
  `nim` int(6) NOT NULL,
  `nama` varchar(15) NOT NULL,
  `jabatan` varchar(25) NOT NULL,
  `no hp` text NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_pegawai`
--

INSERT INTO `data_pegawai` (`id`, `nim`, `nama`, `jabatan`, `no hp`, `alamat`) VALUES
(1, 375689, 'riska', 'manager', '081598608501', 'jogja'),
(2, 387654, 'suaka', 'pegawai ', '087523658945', 'solo'),
(3, 986538, 'bima', 'office boy', '084595877506', 'surabaya'),
(4, 765654, 'elang ', 'pegawai ', '081365987456', 'godean'),
(5, 245675, 'putra ', 'pegawai', '082546857425', 'kotagede');

-- --------------------------------------------------------

--
-- Table structure for table `data_peminjaman`
--

CREATE TABLE `data_peminjaman` (
  `id` int(10) NOT NULL,
  `nim` int(6) NOT NULL,
  `nama` char(45) NOT NULL,
  `jurusan` varchar(25) NOT NULL,
  `jumlah buku` int(10) NOT NULL,
  `tangal pinjam` date NOT NULL,
  `tanggal pengembalian` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_peminjaman`
--

INSERT INTO `data_peminjaman` (`id`, `nim`, `nama`, `jurusan`, `jumlah buku`, `tangal pinjam`, `tanggal pengembalian`) VALUES
(1, 345678, 'Jono', 'kedokteran ', 4, '2023-06-15', '2023-06-25'),
(2, 345679, 'Rika', 'pembangunan', 5, '2023-06-17', '2023-06-26'),
(3, 345680, 'RIKI', 'Sastra Jepang ', 2, '2023-07-16', '2023-07-27'),
(4, 345691, 'fadly', 'pertanian', 3, '2023-07-19', '2023-07-27'),
(5, 345675, 'cokro', 'pertanian', 2, '2023-07-05', '2023-07-20');

-- --------------------------------------------------------

--
-- Table structure for table `data_pengembalian`
--

CREATE TABLE `data_pengembalian` (
  `id` int(11) NOT NULL,
  `nim` int(11) NOT NULL,
  `nama` varchar(15) NOT NULL,
  `jurusan` varchar(15) NOT NULL,
  `terlambat` int(11) NOT NULL,
  `hilang` int(5) NOT NULL,
  `donatur` int(5) NOT NULL,
  `total` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_pengembalian`
--

INSERT INTO `data_pengembalian` (`id`, `nim`, `nama`, `jurusan`, `terlambat`, `hilang`, `donatur`, `total`) VALUES
(1, 345678, 'Jono', 'kedokteran ', 2, 0, 0, 700),
(2, 345679, 'Rika', 'pembangunan', 0, 0, 0, 400),
(3, 345680, 'RIKI', 'Sastra Jepang ', 1, 0, 0, 300),
(4, 345691, 'fadly ', 'pertanian', 0, 0, 1, 0),
(5, 345675, 'cokro', 'pertanian', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `jenis_buku`
--

CREATE TABLE `jenis_buku` (
  `id` int(5) NOT NULL,
  `nama buku` varchar(50) NOT NULL,
  `kode buku` int(30) NOT NULL,
  `stok buku` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jenis_buku`
--

INSERT INTO `jenis_buku` (`id`, `nama buku`, `kode buku`, `stok buku`) VALUES
(1, 'laskar pelangi ', 1, 25),
(2, 'sang pencerah ', 5, 20),
(3, 'fikih ', 9, 25),
(4, 'qurdis', 6, 20),
(5, 'akidah', 7, 20);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_pegawai`
--
ALTER TABLE `data_pegawai`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_peminjaman`
--
ALTER TABLE `data_peminjaman`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jenis_buku`
--
ALTER TABLE `jenis_buku`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `anggota`
--
ALTER TABLE `anggota`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `data_pegawai`
--
ALTER TABLE `data_pegawai`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `data_peminjaman`
--
ALTER TABLE `data_peminjaman`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `jenis_buku`
--
ALTER TABLE `jenis_buku`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
