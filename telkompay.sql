-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 15, 2024 at 05:41 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `telkompay`
--

-- --------------------------------------------------------

--
-- Table structure for table `detail_tagihan_spp`
--

CREATE TABLE `detail_tagihan_spp` (
  `id_tagihan` int(11) NOT NULL,
  `id_siswa` int(11) DEFAULT NULL,
  `bulan` varchar(20) DEFAULT NULL,
  `tahun` int(11) DEFAULT NULL,
  `jumlah_tagihan` decimal(10,2) DEFAULT NULL,
  `status_pembayaran` char(100) NOT NULL,
  `tanggal_pembayaran` date DEFAULT NULL,
  `tanggal_jatuh_tempo` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `detail_tagihan_spp`
--

INSERT INTO `detail_tagihan_spp` (`id_tagihan`, `id_siswa`, `bulan`, `tahun`, `jumlah_tagihan`, `status_pembayaran`, `tanggal_pembayaran`, `tanggal_jatuh_tempo`) VALUES
(177332, 1, 'Januari', 2024, 500000.00, 'LUNAS', '2024-01-05', '2024-01-10'),
(234820, 1, 'Februari', 2024, 500000.00, 'LUNAS', '2024-02-05', '2024-02-15'),
(323846, 1, 'Maret', 2024, 500000.00, 'LUNAS', '2024-03-10', '2024-05-13'),
(490823, 1, 'April', 2024, 550000.00, 'LUNAS', '2024-04-09', '2024-04-11'),
(587123, 1, 'Mei', 2024, 550000.00, 'LUNAS', '2024-05-07', '2024-05-15'),
(676235, 1, 'Juni', 2024, 550000.00, 'LUNAS', '2024-06-12', '2024-06-13'),
(777098, 1, 'Juli', 2024, 600000.00, 'LUNAS', '2024-07-09', '2024-07-12'),
(821023, 1, 'Agustus', 2024, 600000.00, 'BELUM LUNAS', '0000-00-00', '2024-08-10'),
(956439, 1, 'September', 2024, 600000.00, 'BELUM LUNAS', '0000-00-00', '2024-09-10');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id_siswa` int(11) NOT NULL,
  `nama_siswa` varchar(50) DEFAULT NULL,
  `kelas` varchar(20) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id_siswa`, `nama_siswa`, `kelas`, `alamat`, `tanggal_lahir`) VALUES
(1, 'Budi Santoso', 'XII IPA', 'Jl. Merdeka No. 123', '2005-05-15'),
(2, 'Ani Cahaya', 'XI IPS', 'Jl. Pahlawan No. 45', '2006-08-20'),
(3, 'Joko ', 'X IPA', 'Jl. Surya No. 89', '2007-02-10'),
(4, 'Rina Sari', 'XII IPS', 'Jl. Diponegoro No. 10', '2005-10-30'),
(5, 'Ahmad Irfan', 'X IPA', 'Jl. Gatot Subroto No. 56', '2006-03-25'),
(6, 'Siti Hidayah', 'XI IPA', 'Jl. Asia Afrika No. 78', '2007-07-15'),
(7, 'Dewi Anggraeni', 'XII IPA', 'Jl. Cendrawasih No. 33', '2005-12-05'),
(8, 'Faisal Rahman', 'XI IPS', 'Jl. Veteran No. 67', '2006-09-18'),
(9, 'Putri Lestari', 'X IPA', 'Jl. Hayam Wuruk No. 21', '2007-04-12'),
(10, 'Rudi Setiawan', 'XI IPA', 'Jl. Riau No. 14', '2006-01-08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detail_tagihan_spp`
--
ALTER TABLE `detail_tagihan_spp`
  ADD PRIMARY KEY (`id_tagihan`),
  ADD KEY `id_siswa` (`id_siswa`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id_siswa`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `detail_tagihan_spp`
--
ALTER TABLE `detail_tagihan_spp`
  MODIFY `id_tagihan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32384622;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id_siswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detail_tagihan_spp`
--
ALTER TABLE `detail_tagihan_spp`
  ADD CONSTRAINT `detail_tagihan_spp_ibfk_1` FOREIGN KEY (`id_siswa`) REFERENCES `siswa` (`id_siswa`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
