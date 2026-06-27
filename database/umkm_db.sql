-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 27, 2026 at 06:11 AM
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
-- Database: `umkm_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `detail_penjualan`
--

CREATE TABLE `detail_penjualan` (
  `id_detail` int(11) NOT NULL,
  `id_penjualan` int(11) DEFAULT NULL,
  `id_produk` int(11) DEFAULT NULL,
  `stok_awal` int(11) NOT NULL,
  `stok_akhir` int(11) NOT NULL,
  `jumlah_terjual` int(11) NOT NULL,
  `subtotal` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `detail_penjualan`
--

INSERT INTO `detail_penjualan` (`id_detail`, `id_penjualan`, `id_produk`, `stok_awal`, `stok_akhir`, `jumlah_terjual`, `subtotal`, `created_at`) VALUES
(4, 2, 4, 100, 2, 98, 196000, '2026-04-28 09:36:13'),
(5, 2, 5, 100, 0, 100, 300000, '2026-04-28 09:36:25'),
(6, 2, 6, 100, 10, 90, 315000, '2026-04-28 09:36:35'),
(7, 2, 7, 30, 1, 29, 145000, '2026-04-28 09:36:47'),
(8, 2, 10, 50, 0, 50, 100000, '2026-04-28 09:37:01'),
(9, 2, 11, 15, 2, 13, 32500, '2026-04-28 09:37:13'),
(10, 2, 9, 20, 1, 19, 57000, '2026-04-28 09:37:26'),
(19, 3, 4, 200, 0, 200, 400000, '2026-04-29 06:28:46'),
(20, 3, 5, 250, 2, 248, 744000, '2026-04-29 06:47:50'),
(21, 3, 6, 100, 1, 99, 346500, '2026-04-29 06:48:00'),
(22, 3, 7, 50, 4, 46, 230000, '2026-04-29 06:48:09'),
(23, 3, 9, 50, 3, 47, 141000, '2026-04-29 06:48:18'),
(24, 3, 10, 100, 10, 90, 180000, '2026-04-29 06:48:33'),
(25, 4, 4, 100, 5, 95, 190000, '2026-05-01 07:25:21'),
(26, 4, 5, 200, 2, 198, 594000, '2026-05-01 07:25:30'),
(27, 4, 6, 100, 1, 99, 346500, '2026-05-01 07:25:39'),
(28, 4, 7, 50, 2, 48, 240000, '2026-05-01 07:25:48'),
(29, 4, 9, 50, 5, 45, 135000, '2026-05-01 07:26:22'),
(30, 4, 10, 100, 10, 90, 180000, '2026-05-01 07:26:32'),
(31, 4, 12, 20, 2, 18, 36000, '2026-05-01 07:26:46'),
(32, 5, 4, 100, 10, 90, 180000, '2026-05-04 07:57:03'),
(33, 5, 5, 200, 0, 200, 600000, '2026-05-04 07:57:12'),
(34, 5, 6, 100, 2, 98, 343000, '2026-05-04 07:57:21'),
(35, 5, 7, 50, 7, 43, 215000, '2026-05-04 07:57:30'),
(37, 5, 10, 200, 5, 195, 390000, '2026-05-04 07:57:56'),
(38, 5, 11, 30, 3, 27, 67500, '2026-05-04 07:58:08'),
(39, 5, 12, 50, 3, 47, 94000, '2026-05-04 07:58:18'),
(40, 6, 4, 50, 3, 47, 94000, '2026-05-05 06:08:27'),
(41, 6, 5, 200, 0, 200, 600000, '2026-05-05 06:08:37'),
(42, 6, 6, 80, 2, 78, 273000, '2026-05-05 06:08:48'),
(43, 6, 7, 50, 5, 45, 225000, '2026-05-05 06:08:59'),
(44, 6, 9, 50, 4, 46, 138000, '2026-05-05 06:09:11'),
(45, 6, 10, 50, 10, 40, 80000, '2026-05-05 06:09:24'),
(46, 6, 11, 50, 4, 46, 115000, '2026-05-05 06:09:36'),
(47, 6, 12, 40, 2, 38, 76000, '2026-05-05 06:09:46'),
(48, 7, 4, 100, 10, 90, 180000, '2026-05-10 07:13:57'),
(49, 7, 5, 200, 0, 200, 600000, '2026-05-10 07:14:07'),
(50, 7, 6, 50, 2, 48, 168000, '2026-05-10 07:14:15'),
(51, 7, 7, 50, 2, 48, 144000, '2026-05-10 07:14:24'),
(52, 7, 9, 50, 1, 49, 122500, '2026-05-10 07:14:36'),
(53, 7, 10, 100, 2, 98, 196000, '2026-05-10 07:14:46'),
(54, 7, 10, 100, 0, 0, 0, '2026-05-10 07:15:02'),
(55, 7, 11, 50, 10, 40, 100000, '2026-05-10 07:16:21'),
(56, 7, 12, 50, 2, 48, 96000, '2026-05-10 07:16:32'),
(57, 7, 13, 100, 1, 99, 495000, '2026-05-10 07:16:42'),
(58, 8, 4, 100, 0, 100, 200000, '2026-05-25 06:34:15'),
(59, 8, 5, 200, 1, 199, 597000, '2026-05-25 06:34:25'),
(60, 8, 6, 50, 7, 43, 150500, '2026-05-25 06:34:48'),
(61, 8, 7, 50, 2, 48, 144000, '2026-05-25 06:34:58'),
(62, 8, 9, 50, 0, 50, 125000, '2026-05-25 06:35:11'),
(63, 8, 11, 50, 10, 40, 100000, '2026-05-25 06:35:24'),
(64, 9, 4, 100, 5, 95, 190000, '2026-05-26 12:32:14'),
(65, 9, 4, 100, 0, 0, 0, '2026-05-26 12:33:08'),
(66, 9, 5, 300, 0, 300, 900000, '2026-05-26 12:33:29'),
(67, 9, 6, 50, 2, 48, 168000, '2026-05-26 12:33:39'),
(68, 9, 9, 50, 3, 47, 117500, '2026-05-26 12:33:58'),
(69, 9, 7, 50, 10, 40, 120000, '2026-05-26 12:34:11'),
(70, 9, 10, 100, 4, 96, 192000, '2026-05-26 12:34:41'),
(71, 9, 11, 50, 10, 40, 100000, '2026-05-26 12:34:52'),
(72, 9, 13, 50, 2, 48, 240000, '2026-05-26 12:35:05'),
(73, 9, 14, 20, 1, 19, 57000, '2026-05-26 12:35:15'),
(74, 10, 4, 150, 2, 148, 296000, '2026-05-28 03:01:59'),
(75, 10, 5, 200, 0, 200, 600000, '2026-05-28 03:02:11'),
(76, 10, 6, 50, 5, 45, 157500, '2026-05-28 03:02:22'),
(77, 10, 7, 50, 2, 48, 144000, '2026-05-28 03:02:33'),
(78, 10, 9, 50, 0, 50, 125000, '2026-05-28 03:02:48'),
(79, 10, 10, 100, 0, 100, 200000, '2026-05-28 03:03:01'),
(80, 10, 11, 20, 2, 18, 45000, '2026-05-28 03:03:15'),
(81, 10, 12, 40, 10, 30, 60000, '2026-05-28 03:03:31'),
(82, 10, 13, 100, 4, 96, 480000, '2026-05-28 03:03:44'),
(83, 10, 14, 20, 2, 18, 54000, '2026-05-28 03:03:56'),
(84, 11, 4, 100, 4, 96, 192000, '2026-05-30 07:02:05'),
(85, 11, 5, 250, 0, 250, 750000, '2026-05-30 07:03:02'),
(87, 11, 6, 100, 10, 90, 315000, '2026-05-30 07:06:17'),
(88, 11, 7, 50, 0, 50, 150000, '2026-05-30 07:06:27'),
(89, 11, 9, 100, 5, 95, 237500, '2026-05-30 07:06:37'),
(90, 11, 10, 100, 2, 98, 196000, '2026-05-30 07:06:50'),
(91, 11, 11, 20, 5, 15, 37500, '2026-05-30 07:07:00'),
(92, 11, 12, 20, 3, 17, 34000, '2026-05-30 07:07:10'),
(93, 11, 13, 150, 0, 150, 750000, '2026-05-30 07:07:19'),
(94, 11, 14, 20, 0, 20, 60000, '2026-05-30 07:07:30'),
(95, 12, 4, 100, 2, 98, 196000, '2026-05-31 13:21:15'),
(96, 12, 5, 250, 0, 250, 750000, '2026-05-31 13:21:24'),
(97, 12, 6, 100, 5, 95, 332500, '2026-05-31 13:21:33'),
(98, 12, 7, 50, 0, 50, 150000, '2026-05-31 13:21:44'),
(99, 12, 9, 50, 0, 50, 125000, '2026-05-31 13:21:54'),
(100, 12, 10, 100, 3, 97, 194000, '2026-05-31 13:22:05'),
(101, 12, 11, 20, 2, 18, 45000, '2026-05-31 13:22:16'),
(102, 12, 12, 40, 1, 39, 78000, '2026-05-31 13:22:39'),
(103, 13, 4, 100, 10, 90, 180000, '2026-06-01 04:11:51'),
(104, 13, 5, 300, 0, 300, 900000, '2026-06-01 04:12:03'),
(105, 13, 6, 50, 2, 48, 168000, '2026-06-01 04:12:11'),
(106, 13, 7, 20, 3, 17, 51000, '2026-06-01 04:12:23'),
(107, 13, 9, 30, 1, 29, 72500, '2026-06-01 04:12:33'),
(108, 13, 10, 100, 3, 97, 194000, '2026-06-01 04:12:45'),
(109, 13, 11, 20, 1, 19, 47500, '2026-06-01 04:12:56'),
(110, 13, 12, 50, 5, 45, 90000, '2026-06-01 04:13:06'),
(111, 13, 13, 120, 1, 119, 595000, '2026-06-01 04:13:18'),
(112, 14, 4, 100, 10, 90, 180000, '2026-06-02 13:45:57'),
(113, 14, 5, 200, 0, 200, 600000, '2026-06-02 13:46:07'),
(114, 14, 6, 100, 2, 98, 343000, '2026-06-02 13:46:15'),
(127, 16, 4, 50, 0, 50, 100000, '2026-06-06 12:29:51'),
(128, 16, 5, 100, 10, 90, 270000, '2026-06-06 12:30:00'),
(129, 16, 6, 50, 2, 48, 168000, '2026-06-06 12:30:10'),
(130, 16, 7, 50, 3, 47, 141000, '2026-06-06 13:02:17');

-- --------------------------------------------------------

--
-- Table structure for table `penjualan_harian`
--

CREATE TABLE `penjualan_harian` (
  `id_penjualan` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `total_pendapatan` int(11) DEFAULT 0,
  `catatan` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `penjualan_harian`
--

INSERT INTO `penjualan_harian` (`id_penjualan`, `tanggal`, `id_user`, `total_pendapatan`, `catatan`, `created_at`) VALUES
(2, '2026-04-28', NULL, 0, NULL, '2026-04-28 09:36:12'),
(3, '2026-04-29', NULL, 2041500, NULL, '2026-04-29 06:03:08'),
(4, '2026-05-01', NULL, 1721500, NULL, '2026-05-01 07:25:21'),
(5, '2026-05-04', NULL, 2027500, NULL, '2026-05-04 07:57:03'),
(6, '2026-05-05', NULL, 1601000, NULL, '2026-05-05 06:08:27'),
(7, '2026-05-10', NULL, 2101500, NULL, '2026-05-10 07:13:57'),
(8, '2026-05-25', NULL, 1316500, NULL, '2026-05-25 06:34:15'),
(9, '2026-05-26', NULL, 2084500, NULL, '2026-05-26 12:32:14'),
(10, '2026-05-28', NULL, 2161500, NULL, '2026-05-28 03:01:59'),
(11, '2026-05-30', NULL, 2713000, NULL, '2026-05-30 07:02:05'),
(12, '2026-05-31', NULL, 1870500, NULL, '2026-05-31 13:21:14'),
(13, '2026-06-01', NULL, 2298000, NULL, '2026-06-01 04:11:51'),
(14, '2026-06-02', NULL, 1123000, NULL, '2026-06-02 13:45:57'),
(16, '2026-06-06', NULL, 679000, NULL, '2026-06-06 06:03:37');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `harga` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `nama_produk`, `harga`, `created_at`) VALUES
(4, 'Donat Kampung', 2000, '2026-04-24 06:24:44'),
(5, 'Donat Palm', 3000, '2026-04-24 06:24:44'),
(6, 'Donat Meses', 3500, '2026-04-24 06:24:44'),
(7, 'Pie Buah', 3000, '2026-04-24 07:26:59'),
(9, 'Lemper Ayam', 2500, '2026-04-27 03:08:29'),
(10, 'Bugis Mandi', 2000, '2026-04-27 03:08:40'),
(11, 'Gabin Tape', 2500, '2026-04-27 03:09:11'),
(12, 'Lapis Pepe', 2000, '2026-04-27 03:09:19'),
(13, 'Brownies Potong', 5000, '2026-05-10 07:11:33'),
(14, 'Talam Srikaya', 3000, '2026-05-25 06:32:29'),
(15, 'Sosis Solo', 3000, '2026-06-02 13:38:32'),
(17, 'Risol ', 2500, '2026-06-06 13:01:19');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `role` enum('owner','kasir') DEFAULT 'kasir'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detail_penjualan`
--
ALTER TABLE `detail_penjualan`
  ADD PRIMARY KEY (`id_detail`),
  ADD KEY `id_penjualan` (`id_penjualan`),
  ADD KEY `id_produk` (`id_produk`);

--
-- Indexes for table `penjualan_harian`
--
ALTER TABLE `penjualan_harian`
  ADD PRIMARY KEY (`id_penjualan`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `detail_penjualan`
--
ALTER TABLE `detail_penjualan`
  MODIFY `id_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT for table `penjualan_harian`
--
ALTER TABLE `penjualan_harian`
  MODIFY `id_penjualan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detail_penjualan`
--
ALTER TABLE `detail_penjualan`
  ADD CONSTRAINT `detail_penjualan_ibfk_1` FOREIGN KEY (`id_penjualan`) REFERENCES `penjualan_harian` (`id_penjualan`) ON DELETE CASCADE,
  ADD CONSTRAINT `detail_penjualan_ibfk_2` FOREIGN KEY (`id_produk`) REFERENCES `produk` (`id_produk`);

--
-- Constraints for table `penjualan_harian`
--
ALTER TABLE `penjualan_harian`
  ADD CONSTRAINT `penjualan_harian_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
