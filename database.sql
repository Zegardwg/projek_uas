-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 14, 2023 at 07:45 PM
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
-- Database: `database`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_pendaftaran`
--

CREATE TABLE `data_pendaftaran` (
  `no` varchar(255) NOT NULL,
  `pekerjaan` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `tanggal` varchar(255) NOT NULL,
  `tempat` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `kelamin` varchar(255) NOT NULL,
  `ktp` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `data_pendaftaran`
--

INSERT INTO `data_pendaftaran` (`no`, `pekerjaan`, `nama`, `tanggal`, `tempat`, `email`, `alamat`, `kelamin`, `ktp`) VALUES
('111', 'UI/UX Designer', '111', '11', '111', '11', '11', 'Perempuan', '11'),
('1113', 'Software Engineer/Developer', '111', '11', '111', '11', '11', 'Perempuan', '11'),
('11134', 'DevOps Engineer', '111', '11', '111', '11', '11', 'Perempuan', '11');

-- --------------------------------------------------------

--
-- Table structure for table `data_pendidikan`
--

CREATE TABLE `data_pendidikan` (
  `jenjang` varchar(255) NOT NULL,
  `sekolah` varchar(255) NOT NULL,
  `tahunmasuk` varchar(255) NOT NULL,
  `tahunkeluar` varchar(255) NOT NULL,
  `jurusan` varchar(255) NOT NULL,
  `akreditasi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `data_pendidikan`
--

INSERT INTO `data_pendidikan` (`jenjang`, `sekolah`, `tahunmasuk`, `tahunkeluar`, `jurusan`, `akreditasi`) VALUES
('Perguruan Tinggi', '1', '1', '11', '11', '11'),
('Pilih', '111', '2222', '333', '444', '555'),
('SD', '1', '11', '11', '11', '11'),
('SMA', '222', '222', '22', '22', '2222'),
('SMP', '111', '111', '111', '111', '111'),
('SD', '11', '11', '11', '11', '111'),
('SD', '11', '11', '11', '11', '111'),
('SD', '11', '11', '11', '11', '111'),
('SMP', '111', '11', '11', '11', '111'),
('SD', '111', '111', '111', '111', '111');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `full_name` varchar(127) NOT NULL,
  `email` varchar(127) NOT NULL,
  `password` varchar(127) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `full_name`, `email`, `password`) VALUES
(1, 'yunita', 'shj', 'shiaooao'),
(2, 'yunita putri', 'yunita@gmail.com', '123456'),
(3, 'yunita', 'yunitaputri', '123'),
(4, 'yunita', 'yunita@gmail.com', '1234'),
(5, 'eggar', 'eggar@gmail.com', '1111'),
(6, 'eggar', 'eggar@gmail.com', '1111');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_pendaftaran`
--
ALTER TABLE `data_pendaftaran`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `data_pendidikan`
--
ALTER TABLE `data_pendidikan` ADD FULLTEXT KEY `jenjang` (`jenjang`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
