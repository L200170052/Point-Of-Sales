-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 28, 2021 at 04:47 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_pos`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_barang`
--

CREATE TABLE `tbl_barang` (
  `barang_id` varchar(15) NOT NULL,
  `barang_nama` varchar(150) DEFAULT NULL,
  `barang_satuan` varchar(30) DEFAULT NULL,
  `barang_harpok` double DEFAULT NULL,
  `barang_harjul` double DEFAULT NULL,
  `barang_harjul_grosir` double DEFAULT NULL,
  `barang_stok` int(11) DEFAULT 0,
  `barang_min_stok` int(11) DEFAULT 0,
  `barang_tgl_input` timestamp NULL DEFAULT current_timestamp(),
  `barang_tgl_last_update` datetime DEFAULT NULL,
  `barang_kategori_id` int(11) DEFAULT NULL,
  `barang_user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_barang`
--

INSERT INTO `tbl_barang` (`barang_id`, `barang_nama`, `barang_satuan`, `barang_harpok`, `barang_harjul`, `barang_harjul_grosir`, `barang_stok`, `barang_min_stok`, `barang_tgl_input`, `barang_tgl_last_update`, `barang_kategori_id`, `barang_user_id`) VALUES
('BR000001', 'Sapu', 'Buah', 15000, 16500, 13000, 9, 5, '2021-11-01 04:25:24', '2021-11-01 11:27:31', 56, 21),
('BR000002', 'Pel', 'Buah', 16000, 17500, 15000, 9, 5, '2021-11-01 04:26:09', NULL, 56, 21),
('BR000003', 'Ember', 'Buah', 15000, 16000, 13000, 5, 3, '2021-11-01 04:30:51', '2021-11-01 11:31:01', 56, 21),
('BR000004', 'Gayung', 'Buah', 10000, 11000, 9000, 8, 4, '2021-11-01 04:31:29', NULL, 56, 21),
('BR000005', 'Keset', 'Buah', 6000, 6500, 5000, 10, 5, '2021-11-01 04:33:14', NULL, 56, 21),
('BR000006', 'Pensil 2B', 'Biji', 1500, 2000, 1000, 25, 10, '2021-11-01 04:34:30', NULL, 45, 21),
('BR000007', 'Pulpen ', 'Biji', 2000, 2500, 1500, 16, 10, '2021-11-01 04:35:04', NULL, 45, 21),
('BR000008', 'Spidol Papan Tulis', 'Biji', 6000, 6500, 5500, 15, 5, '2021-11-01 04:35:57', '2021-11-01 11:36:13', 45, 21),
('BR000009', 'Penghapus Pensil', 'Biji', 1500, 2000, 1000, -1, 5, '2021-11-01 04:36:48', NULL, 45, 21),
('BR000010', 'Buku Tulis', 'PCS', 3500, 4000, 3000, 14, 10, '2021-11-01 04:39:07', NULL, 45, 21),
('BR000011', 'Buku Tulis', 'Lusin', 40000, 42000, 39000, 10, 3, '2021-11-01 04:42:07', NULL, 45, 21),
('BR000012', 'Buku Gambar A3', 'Buah', 5000, 5500, 4500, 10, 3, '2021-11-01 04:50:24', NULL, 45, 21),
('BR000013', 'Buku Gambar A3', 'Lusin', 58000, 60000, 55000, 4, 3, '2021-11-01 04:51:44', NULL, 45, 21),
('BR000014', 'Kertas Folio', 'Rim', 40000, 41500, 38000, 3, 1, '2021-11-01 04:56:50', NULL, 45, 21),
('BR000015', 'Kertas Folio', 'Lembar', 100, 100, 100, 500, 250, '2021-11-01 05:01:32', NULL, 45, 21),
('BR000016', 'Kertas Kado', 'Roll', 4000, 4500, 3500, 10, 3, '2021-11-01 05:02:57', NULL, 45, 21),
('BR000017', 'Lakban', 'Buah', 4000, 4500, 3500, 10, 3, '2021-11-01 05:04:47', NULL, 45, 21),
('BR000018', 'Beras Merk A', 'Kilogram', 10000, 10500, 9500, 15, 5, '2021-11-01 06:15:30', '2021-11-01 13:16:17', 47, 21),
('BR000019', 'Beras Merk B', 'Kilogram', 11000, 11500, 10500, 7, 5, '2021-11-01 06:15:58', NULL, 47, 21),
('BR000020', 'Beras Merk C', 'Kilogram', 12000, 12500, 11000, 10, 5, '2021-11-01 06:16:42', NULL, 47, 21),
('BR000021', 'Gula Pasir', 'Kilogram', 1200, 12500, 11500, 15, 5, '2021-11-01 06:17:24', NULL, 44, 21),
('BR000022', 'Minyak', 'Kilogram', 29000, 30000, 28000, 13, 5, '2021-11-01 06:18:11', NULL, 44, 21),
('BR000023', 'Telur Ayam', 'Kilogram', 19000, 20000, 18000, 15, 5, '2021-11-01 06:18:52', NULL, 44, 21),
('BR000024', 'Tepung', 'Kilogram', 11500, 12000, 11000, 15, 5, '2021-11-01 06:19:15', NULL, 44, 21),
('BR000025', 'Galon Aqua', 'Liter', 19000, 20000, 18000, 7, 3, '2021-11-01 06:20:32', '2021-11-01 13:26:43', 49, 21),
('BR000026', 'Galon Cleo', 'Liter', 18500, 19500, 18000, 5, 3, '2021-11-01 06:22:15', '2021-11-01 13:26:36', 49, 21),
('BR000027', 'LPJ 12 Kg', 'Kilogram', 150000, 155000, 145000, 8, 3, '2021-11-01 06:23:40', '2021-11-01 13:26:30', 48, 21),
('BR000028', 'LPJ 3 Kg', 'Kilogram', 20000, 21000, 19000, 6, 3, '2021-11-01 06:24:57', '2021-11-01 13:26:23', 48, 21),
('BR000029', 'Sabun Cair Merk A', 'Mililiter', 18000, 18500, 17000, 15, 5, '2021-11-01 06:28:00', NULL, 46, 21),
('BR000030', 'Sabun Cair Merk B', 'Mililiter', 19000, 19500, 18500, 15, 5, '2021-11-01 06:28:22', NULL, 46, 21),
('BR000031', 'Sabun Batang Merk A', 'Biji', 10000, 10500, 9000, 10, 5, '2021-11-01 06:28:59', NULL, 46, 21),
('BR000032', 'Sabun Batang Merk B', 'Biji', 8000, 8500, 7500, 10, 5, '2021-11-01 06:29:26', NULL, 46, 21),
('BR000033', 'Shampoo Merk A', 'Mililiter', 18000, 18500, 17000, 13, 5, '2021-11-01 06:30:17', NULL, 46, 21),
('BR000034', 'Shampoo Merk B', 'Mililiter', 20000, 21000, 19000, 15, 5, '2021-11-01 06:30:46', NULL, 46, 21),
('BR000035', 'Sikat Gigi Merk A', 'Biji', 8000, 8500, 7000, 14, 5, '2021-11-01 06:31:33', NULL, 46, 21),
('BR000036', 'Sikat Gigi Merk B', 'Biji', 7500, 8000, 7000, 15, 5, '2021-11-01 06:32:10', NULL, 46, 21),
('BR000037', 'Sabun Muka Merk A', 'Mililiter', 25000, 26000, 24500, 15, 5, '2021-11-01 06:32:55', NULL, 46, 21),
('BR000038', 'Sabun Muka Merk A (Kecil)', 'Mililiter', 17500, 18000, 16500, 15, 5, '2021-11-01 06:33:24', '2021-11-01 13:33:54', 46, 21),
('BR000039', 'Detergen Merk A', 'Liter', 20000, 20500, 19500, 15, 5, '2021-11-01 06:34:48', NULL, 55, 21),
('BR000040', 'Pewangi Pakaian Merk B', 'Liter', 18500, 19000, 17500, 14, 5, '2021-11-01 06:35:23', NULL, 55, 21),
('BR000041', 'Rokok Merk A', 'Bks', 20000, 21000, 19000, 14, 5, '2021-11-03 05:52:08', NULL, 57, 21),
('BR000042', 'Rokok Merk B', 'Bks', 22000, 23000, 21000, 14, 5, '2021-11-03 05:55:50', NULL, 57, 21),
('BR000043', 'Obat Batuk Sirup', 'Botol', 15000, 16000, 14000, 7, 5, '2021-11-03 05:56:28', NULL, 54, 21),
('BR000044', 'Obat Batuk Pil', 'Bks', 10000, 11000, 9000, 10, 5, '2021-11-03 05:57:18', NULL, 54, 21),
('BR000045', 'Snack Chiki', 'Bks', 5000, 6000, 4500, 41, 5, '2021-11-03 05:58:00', NULL, 53, 21),
('BR000046', 'Snack Wafer', 'Bks', 6000, 7000, 5500, 7, 5, '2021-11-03 05:58:22', NULL, 53, 21),
('BR000047', 'Snack Coklat Beng Beng', 'Bks', 2000, 2500, 1500, 45, 25, '2021-11-04 07:11:33', NULL, 53, 21),
('BR000048', 'Snack Coklat Beng Beng', 'Kotak', 20000, 25000, 19000, 0, 1, '2021-11-04 07:12:06', NULL, 53, 21),
('BR000049', 'Minuman Pocari', 'Botol', 7000, 7500, 6500, 19, 5, '2021-11-04 07:12:51', NULL, 52, 21),
('BR000050', 'Minuman Fruit Tea', 'Botol', 6000, 6500, 5500, 16, 10, '2021-11-04 07:13:14', NULL, 52, 21),
('BR000051', 'Aqua Gelas', 'Box', 32000, 33000, 30000, 2, 3, '2021-11-04 07:14:12', NULL, 52, 21),
('BR000052', 'Baygon Semprot', 'Kaleng', 24000, 25500, 23000, 2, 5, '2021-11-04 07:14:58', '2021-12-03 00:19:34', 56, 21),
('BR000054', 'Mie Instan Indomie', 'Bks', 2500, 3000, 1500, 49, 20, '2021-11-04 07:18:37', '2021-12-01 19:50:34', 51, 21),
('BR000056', 'Mie Instan Mie Sedap', 'Bks', 2500, 3000, 1500, 42, 25, '2021-11-04 07:20:29', '2021-12-01 19:50:38', 51, 21),
('BR000057', 'Galon Le Minerale', 'Liter', 25000, 27000, 23000, 9, 5, '2021-11-29 08:31:22', '2021-12-01 19:49:03', 49, 21),
('BR000058', 'Roti Sobek Sari Roti', 'Bks', 15000, 16500, 14000, 1, 5, '2021-12-16 18:26:40', '2021-12-17 01:26:53', 53, 21);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_beli`
--

CREATE TABLE `tbl_beli` (
  `beli_nofak` varchar(15) DEFAULT NULL,
  `beli_tanggal` date DEFAULT NULL,
  `beli_suplier_id` int(11) DEFAULT NULL,
  `beli_user_id` int(11) DEFAULT NULL,
  `beli_kode` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_beli`
--

INSERT INTO `tbl_beli` (`beli_nofak`, `beli_tanggal`, `beli_suplier_id`, `beli_user_id`, `beli_kode`) VALUES
('2', '2021-12-01', 3, 21, 'BL011221000001'),
('2', '2021-12-03', 5, 21, 'BL021221000001'),
('091221000012', '2021-12-09', 7, 21, 'BL091221000001'),
('3', '2021-12-17', 8, 21, 'BL161221000001'),
('171221000004', '2021-12-17', 9, 21, 'BL171221000002');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_detail_beli`
--

CREATE TABLE `tbl_detail_beli` (
  `d_beli_id` int(11) NOT NULL,
  `d_beli_nofak` varchar(15) DEFAULT NULL,
  `d_beli_barang_id` varchar(15) DEFAULT NULL,
  `d_beli_harga` double DEFAULT NULL,
  `d_beli_jumlah` int(11) DEFAULT NULL,
  `d_beli_total` double DEFAULT NULL,
  `d_beli_kode` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_detail_beli`
--

INSERT INTO `tbl_detail_beli` (`d_beli_id`, `d_beli_nofak`, `d_beli_barang_id`, `d_beli_harga`, `d_beli_jumlah`, `d_beli_total`, `d_beli_kode`) VALUES
(1, '2', 'BR000057', 25000, 10, 250000, 'BL011221000001'),
(2, '2', 'BR000045', 5000, 50, 250000, 'BL021221000001'),
(3, '091221000012', 'BR000049', 7000, 10, 70000, 'BL091221000001'),
(4, '3', 'BR000045', 5000, 5, 25000, 'BL161221000001'),
(5, '171221000004', 'BR000045', 5000, 5, 25000, 'BL171221000002');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_detail_jual`
--

CREATE TABLE `tbl_detail_jual` (
  `d_jual_id` int(11) NOT NULL,
  `d_jual_nofak` varchar(15) DEFAULT NULL,
  `d_jual_barang_id` varchar(15) DEFAULT NULL,
  `d_jual_barang_nama` varchar(150) DEFAULT NULL,
  `d_jual_barang_satuan` varchar(30) DEFAULT NULL,
  `d_jual_barang_harpok` double DEFAULT NULL,
  `d_jual_barang_harjul` double DEFAULT NULL,
  `d_jual_qty` int(11) DEFAULT NULL,
  `d_jual_diskon` double DEFAULT NULL,
  `d_jual_total` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_detail_jual`
--

INSERT INTO `tbl_detail_jual` (`d_jual_id`, `d_jual_nofak`, `d_jual_barang_id`, `d_jual_barang_nama`, `d_jual_barang_satuan`, `d_jual_barang_harpok`, `d_jual_barang_harjul`, `d_jual_qty`, `d_jual_diskon`, `d_jual_total`) VALUES
(29, '031221000001', 'BR000001', 'Sapu', 'Buah', 15000, 16500, 1, 0, 16500),
(30, '031221000001', 'BR000002', 'Pel', 'Buah', 16000, 17500, 1, 0, 17500),
(31, '031221000001', 'BR000003', 'Ember', 'Buah', 15000, 16000, 2, 0, 32000),
(32, '031221000002', 'BR000010', 'Buku Tulis', 'PCS', 3500, 4000, 2, 0, 8000),
(33, '031221000002', 'BR000009', 'Penghapus Pensil', 'Biji', 1500, 2000, 1, 0, 2000),
(34, '031221000002', 'BR000007', 'Pulpen ', 'Biji', 2000, 2500, 4, 0, 10000),
(35, '031221000003', 'BR000019', 'Beras Merk B', 'Kilogram', 11000, 11500, 3, 0, 34500),
(36, '031221000003', 'BR000056', 'Mie Instan Mie Sedap', 'Bks', 2500, 3000, 2, 0, 6000),
(37, '031221000003', 'BR000045', 'Snack Chiki', 'Bks', 5000, 6000, 6, 0, 36000),
(38, '031221000004', 'BR000040', 'Pewangi Pakaian Merk B', 'Liter', 18500, 19000, 1, 0, 19000),
(39, '031221000004', 'BR000050', 'Minuman Fruit Tea', 'Botol', 6000, 6500, 1, 0, 6500),
(40, '031221000004', 'BR000048', 'Snack Coklat Beng Beng', 'Kotak', 20000, 25000, 2, 0, 50000),
(41, '031221000004', 'BR000052', 'Baygon Semprot', 'Kaleng', 24000, 25500, 3, 0, 76500),
(42, '031221000005', 'BR000051', 'Aqua Gelas', 'Box', 32000, 33000, 1, 0, 33000),
(43, '031221000005', 'BR000042', 'Rokok Merk B', 'Bks', 22000, 23000, 1, 0, 23000),
(44, '031221000005', 'BR000043', 'Obat Batuk Sirup', 'Botol', 15000, 16000, 2, 0, 32000),
(45, '031221000006', 'BR000013', 'Buku Gambar A3', 'Lusin', 58000, 60000, 1, 0, 60000),
(46, '031221000006', 'BR000028', 'LPJ 3 Kg', 'Kilogram', 20000, 21000, 1, 0, 21000),
(47, '031221000007', 'BR000046', 'Snack Wafer', 'Bks', 6000, 7000, 1, 0, 7000),
(48, '031221000007', 'BR000049', 'Minuman Pocari', 'Botol', 7000, 7500, 2, 0, 15000),
(49, '031221000007', 'BR000047', 'Snack Coklat Beng Beng', 'Bks', 2000, 2500, 3, 0, 7500),
(50, '031221000007', 'BR000056', 'Mie Instan Mie Sedap', 'Bks', 2500, 3000, 3, 0, 9000),
(51, '031221000008', 'BR000035', 'Sikat Gigi Merk A', 'Biji', 8000, 8500, 1, 0, 8500),
(52, '031221000008', 'BR000025', 'Galon Aqua', 'Liter', 19000, 20000, 1, 0, 20000),
(53, '031221000008', 'BR000033', 'Shampoo Merk A', 'Mililiter', 18000, 18500, 2, 0, 37000),
(54, '041221000001', 'BR000045', 'Snack Chiki', 'Bks', 5000, 6000, 1, 0, 6000),
(55, '041221000001', 'BR000052', 'Baygon Semprot', 'Kaleng', 24000, 25500, 1, 0, 25500),
(56, '051221000001', 'BR000045', 'Snack Chiki', 'Bks', 5000, 6000, 1, 0, 6000),
(57, '051221000001', 'BR000050', 'Minuman Fruit Tea', 'Botol', 6000, 6500, 1, 0, 6500),
(58, '051221000001', 'BR000046', 'Snack Wafer', 'Bks', 6000, 7000, 2, 0, 14000),
(59, '051221000003', 'BR000052', 'Baygon Semprot', 'Kaleng', 24000, 25500, 1, 0, 25500),
(60, '051221000003', 'BR000041', 'Rokok Merk A', 'Bks', 20000, 21000, 1, 0, 21000),
(61, '091221000001', 'BR000057', 'Galon Le Minerale', 'Liter', 25000, 27000, 1, 0, 27000),
(62, '091221000002', 'BR000045', 'Snack Chiki', 'Bks', 5000, 6000, 1, 0, 6000),
(63, '091221000002', 'BR000052', 'Baygon Semprot', 'Kaleng', 24000, 25500, 1, 0, 25500),
(64, '091221000003', 'BR000057', 'Galon Le Minerale', 'Liter', 25000, 27000, 1, 0, 27000),
(65, '091221000004', 'BR000057', 'Galon Le Minerale', 'Liter', 25000, 27000, 1, 0, 27000),
(66, '091221000005', 'BR000045', 'Snack Chiki', 'Bks', 5000, 6000, 1, 0, 6000),
(67, '091221000005', 'BR000052', 'Baygon Semprot', 'Kaleng', 24000, 25500, 1, 0, 25500),
(68, '091221000005', 'BR000049', 'Minuman Pocari', 'Botol', 7000, 7500, 2, 0, 15000),
(69, '091221000006', 'BR000054', 'Mie Instan Indomie', 'Bks', 2500, 3000, 1, 0, 3000),
(70, '091221000006', 'BR000057', 'Galon Le Minerale', 'Liter', 25000, 27000, 1, 0, 27000),
(71, '091221000009', 'BR000052', 'Baygon Semprot', 'Kaleng', 24000, 25500, 1, 0, 25500),
(72, '091221000011', 'BR000050', 'Minuman Fruit Tea', 'Botol', 6000, 6500, 1, 0, 6500),
(73, '091221000011', 'BR000049', 'Minuman Pocari', 'Botol', 7000, 7500, 1, 0, 7500),
(74, '091221000011', 'BR000047', 'Snack Coklat Beng Beng', 'Bks', 2000, 2500, 2, 0, 5000),
(75, '091221000012', 'BR000056', 'Mie Instan Mie Sedap', 'Bks', 2500, 1500, 1, 0, 1500),
(76, '091221000012', 'BR000051', 'Aqua Gelas', 'Box', 32000, 30000, 1, 0, 30000),
(77, '091221000013', 'BR000057', 'Galon Le Minerale', 'Liter', 25000, 27000, 1, 0, 27000),
(78, '091221000014', 'BR000057', 'Galon Le Minerale', 'Liter', 25000, 23000, 1, 0, 23000),
(79, '161221000001', 'BR000058', 'Roti Sobek Sari Roti', 'Bks', 15000, 16500, 2, 0, 33000),
(80, '161221000001', 'BR000045', 'Snack Chiki', 'Bks', 5000, 6000, 2, 0, 12000),
(81, '161221000002', 'BR000009', 'Penghapus Pensil', 'Biji', 1500, 2000, 3, 0, 6000),
(82, '171221000003', 'BR000009', 'Penghapus Pensil', 'Biji', 1500, 2000, 2, 0, 4000),
(83, '171221000003', 'BR000056', 'Mie Instan Mie Sedap', 'Bks', 2500, 3000, 1, 0, 3000),
(84, '171221000004', 'BR000058', 'Roti Sobek Sari Roti', 'Bks', 15000, 14000, 1, 0, 14000),
(85, '171221000004', 'BR000043', 'Obat Batuk Sirup', 'Botol', 15000, 14000, 1, 0, 14000),
(86, '171221000005', 'BR000045', 'Snack Chiki', 'Bks', 5000, 6000, 2, 0, 12000),
(87, '171221000005', 'BR000009', 'Penghapus Pensil', 'Biji', 1500, 2000, 3, 0, 6000),
(88, '251221000001', 'BR000009', 'Penghapus Pensil', 'Biji', 1500, 2000, 3, 0, 6000),
(89, '251221000001', 'BR000045', 'Snack Chiki', 'Bks', 5000, 6000, 4, 0, 24000),
(90, '251221000002', 'BR000045', 'Snack Chiki', 'Bks', 5000, 4500, 3, 0, 13500),
(91, '251221000002', 'BR000009', 'Penghapus Pensil', 'Biji', 1500, 1000, 1, 0, 1000),
(92, '251221000003', 'BR000009', 'Penghapus Pensil', 'Biji', 1500, 1000, 1, 0, 1000),
(93, '251221000003', 'BR000045', 'Snack Chiki', 'Bks', 5000, 4500, 1, 0, 4500),
(94, '251221000003', 'BR000058', 'Roti Sobek Sari Roti', 'Bks', 15000, 14000, 1, 0, 14000),
(95, '251221000004', 'BR000009', 'Penghapus Pensil', 'Biji', 1500, 2000, 2, 0, 4000),
(96, '251221000004', 'BR000057', 'Galon Le Minerale', 'Liter', 25000, 27000, 1, 0, 27000),
(97, '251221000005', 'BR000056', 'Mie Instan Mie Sedap', 'Bks', 2500, 3000, 1, 0, 3000),
(98, '251221000005', 'BR000045', 'Snack Chiki', 'Bks', 5000, 6000, 3, 0, 18000),
(99, '251221000006', 'BR000010', 'Buku Tulis', 'PCS', 3500, 4000, 1, 0, 4000),
(100, '251221000006', 'BR000058', 'Roti Sobek Sari Roti', 'Bks', 15000, 16500, 1, 0, 16500),
(101, '251221000007', 'BR000051', 'Aqua Gelas', 'Box', 32000, 33000, 1, 0, 33000),
(102, '251221000008', 'BR000045', 'Snack Chiki', 'Bks', 5000, 6000, 1, 0, 6000),
(103, '251221000008', 'BR000050', 'Minuman Fruit Tea', 'Botol', 6000, 6500, 1, 0, 6500),
(104, '251221000009', 'BR000045', 'Snack Chiki', 'Bks', 5000, 6000, 1, 0, 6000),
(105, '251221000009', 'BR000049', 'Minuman Pocari', 'Botol', 7000, 7500, 1, 0, 7500),
(106, '251221000009', 'BR000048', 'Snack Coklat Beng Beng', 'Kotak', 20000, 25000, 1, 0, 25000),
(107, '271221000001', 'BR000045', 'Snack Chiki', 'Bks', 5000, 6000, 1, 0, 6000),
(108, '271221000001', 'BR000058', 'Roti Sobek Sari Roti', 'Bks', 15000, 16500, 4, 0, 66000),
(109, '271221000002', 'BR000045', 'Snack Chiki', 'Bks', 5000, 4500, 1, 0, 4500),
(110, '271221000002', 'BR000010', 'Buku Tulis', 'PCS', 3500, 3000, 3, 0, 9000);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jual`
--

CREATE TABLE `tbl_jual` (
  `jual_nofak` varchar(15) NOT NULL,
  `jual_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `jual_total` double DEFAULT NULL,
  `jual_jml_uang` double DEFAULT NULL,
  `jual_kembalian` double DEFAULT NULL,
  `jual_user_id` int(11) DEFAULT NULL,
  `jual_keterangan` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_jual`
--

INSERT INTO `tbl_jual` (`jual_nofak`, `jual_tanggal`, `jual_total`, `jual_jml_uang`, `jual_kembalian`, `jual_user_id`, `jual_keterangan`) VALUES
('031221000001', '2021-12-03 08:44:44', 66000, 70000, 4000, 21, 'eceran'),
('031221000002', '2021-12-03 08:45:43', 20000, 20000, 0, 21, 'eceran'),
('031221000003', '2021-12-03 08:47:01', 76500, 100000, 23500, 21, 'eceran'),
('031221000004', '2021-12-03 08:47:42', 152000, 160000, 8000, 21, 'eceran'),
('031221000005', '2021-12-03 08:48:31', 88000, 100000, 12000, 21, 'eceran'),
('031221000006', '2021-12-03 08:49:02', 81000, 85000, 4000, 21, 'eceran'),
('031221000007', '2021-12-03 08:49:42', 38500, 40000, 1500, 21, 'eceran'),
('031221000008', '2021-12-03 08:50:14', 65500, 70000, 4500, 21, 'eceran'),
('041221000001', '2021-12-04 10:19:29', 31500, 40000, 8500, 21, 'eceran'),
('051221000001', '2021-12-05 12:40:14', 26500, 30000, 3500, 21, 'eceran'),
('051221000002', '2021-12-05 12:41:11', 26500, 30000, 3500, 21, 'eceran'),
('051221000003', '2021-12-05 13:41:04', 46500, 50000, 3500, 21, 'eceran'),
('091221000001', '2021-12-09 06:09:19', 27000, 30000, 3000, 21, 'eceran'),
('091221000002', '2021-12-09 06:11:50', 31500, 50000, 18500, 27, 'eceran'),
('091221000003', '2021-12-09 06:27:16', 27000, 50000, 23000, 27, 'eceran'),
('091221000004', '2021-12-09 06:30:02', 27000, 50000, 23000, 27, 'eceran'),
('091221000005', '2021-12-09 06:39:00', 46500, 50000, 3500, 21, 'eceran'),
('091221000006', '2021-12-09 06:44:41', 30000, 50000, 20000, 21, 'eceran'),
('091221000007', '2021-12-09 06:45:37', 30000, 50000, 20000, 21, 'eceran'),
('091221000008', '2021-12-09 06:45:40', 30000, 50000, 20000, 21, 'eceran'),
('091221000009', '2021-12-09 06:47:05', 25500, 50000, 24500, 21, 'eceran'),
('091221000010', '2021-12-09 06:47:22', 25500, 50000, 24500, 21, 'eceran'),
('091221000011', '2021-12-09 06:50:22', 19000, 20000, 1000, 21, 'eceran'),
('091221000012', '2021-12-09 06:50:44', 31500, 50000, 18500, 21, 'grosir'),
('091221000013', '2021-12-09 06:54:08', 27000, 50000, 23000, 29, 'eceran'),
('091221000014', '2021-12-09 06:54:18', 23000, 50000, 27000, 29, 'grosir'),
('161221000001', '2021-12-16 18:32:29', 45000, 50000, 5000, 21, 'eceran'),
('161221000002', '2021-12-16 18:33:26', 6000, 10000, 4000, 21, 'eceran'),
('171221000003', '2021-12-17 07:06:14', 7000, 10000, 3000, 21, 'eceran'),
('171221000004', '2021-12-17 07:06:53', 28000, 50000, 22000, 21, 'grosir'),
('171221000005', '2021-12-17 07:09:15', 18000, 50000, 32000, 27, 'eceran'),
('251221000001', '2021-12-25 03:26:47', 30000, 50000, 20000, 21, 'eceran'),
('251221000002', '2021-12-25 03:45:12', 14500, 50000, 35500, 21, 'grosir'),
('251221000003', '2021-12-25 03:46:28', 19500, 20000, 500, 21, 'grosir'),
('251221000004', '2021-12-25 03:58:12', 31000, 50000, 19000, 27, 'eceran'),
('251221000005', '2021-12-25 03:59:43', 21000, 50000, 29000, 27, 'eceran'),
('251221000006', '2021-12-25 04:13:10', 20500, 50000, 29500, 27, 'eceran'),
('251221000007', '2021-12-25 04:35:55', 33000, 50000, 17000, 27, 'eceran'),
('251221000008', '2021-12-25 04:36:38', 12500, 50000, 37500, 27, 'eceran'),
('251221000009', '2021-12-25 04:37:18', 38500, 50000, 11500, 21, 'eceran'),
('271221000001', '2021-12-27 16:40:22', 72000, 100000, 28000, 21, 'eceran'),
('271221000002', '2021-12-27 16:40:57', 13500, 50000, 36500, 21, 'grosir'),
('271221000003', '2021-12-27 16:41:36', 13500, 50000, 36500, 21, 'grosir');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kategori`
--

CREATE TABLE `tbl_kategori` (
  `kategori_id` int(11) NOT NULL,
  `kategori_nama` varchar(35) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_kategori`
--

INSERT INTO `tbl_kategori` (`kategori_id`, `kategori_nama`) VALUES
(44, 'Sembako'),
(45, 'Alat Tulis'),
(46, 'Alat Mandi'),
(47, 'Beras'),
(48, 'Gas LPJ'),
(49, 'Galon Minum'),
(50, 'Minuman Kemasan'),
(51, 'Mie Instan'),
(52, 'Minuman Ringan'),
(53, 'Makanan Ringan'),
(54, 'Obat-obatan'),
(55, 'Alat Mencuci'),
(56, 'Perlengkapan Rumah Tangga'),
(57, 'Rokok');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_retur`
--

CREATE TABLE `tbl_retur` (
  `retur_id` int(11) NOT NULL,
  `retur_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `retur_barang_id` varchar(15) DEFAULT NULL,
  `retur_barang_nama` varchar(150) DEFAULT NULL,
  `retur_barang_satuan` varchar(30) DEFAULT NULL,
  `retur_harjul` double DEFAULT NULL,
  `retur_qty` int(11) DEFAULT NULL,
  `retur_subtotal` double DEFAULT NULL,
  `retur_keterangan` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_retur`
--

INSERT INTO `tbl_retur` (`retur_id`, `retur_tanggal`, `retur_barang_id`, `retur_barang_nama`, `retur_barang_satuan`, `retur_harjul`, `retur_qty`, `retur_subtotal`, `retur_keterangan`) VALUES
(4, '2021-12-09 06:10:56', 'BR000051', 'Aqua Gelas', 'Box', 30000, 1, NULL, 'Rusak'),
(7, '2021-12-16 18:38:58', 'br000058', 'Roti Sobek Sari Roti', 'Bks', 14000, 2, NULL, 'Kadarluarsa'),
(9, '2021-12-16 18:49:09', 'br000045', 'Snack Chiki', 'Bks', 4500, 1, NULL, 'Kadarluarsa'),
(12, '2021-12-17 07:07:50', 'br000058', 'Roti Sobek Sari Roti', 'Bks', 14000, 1, NULL, 'Kadarluarsa'),
(13, '2021-12-27 16:43:36', 'br000010', 'Buku Tulis', 'PCS', 3000, 1, NULL, 'rusak'),
(14, '2021-12-27 17:29:36', 'br000045', 'Snack Chiki', 'Bks', 4500, 1, NULL, 'rusak');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_suplier`
--

CREATE TABLE `tbl_suplier` (
  `suplier_id` int(11) NOT NULL,
  `suplier_nama` varchar(35) DEFAULT NULL,
  `suplier_alamat` varchar(60) DEFAULT NULL,
  `suplier_notelp` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_suplier`
--

INSERT INTO `tbl_suplier` (`suplier_id`, `suplier_nama`, `suplier_alamat`, `suplier_notelp`) VALUES
(3, 'Pak Joko (Galon Aqua)', 'Puro Asri', '082121512'),
(4, 'Pak Fatwa', 'Puro Gadung', '082121212'),
(5, 'Pak Saiful', 'Purwo Asri', '08212121212'),
(7, 'Pak Sai', 'Solo', '08212121212'),
(8, 'Pak Mardi', 'Solo Baru', '08292929'),
(9, 'Pak Jaja', 'Solo Baru', '08292929'),
(10, 'Pak Sujojo', 'Laweyan ', '08989898'),
(11, 'Pak William', 'Banjarsari ', '090909');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` int(11) NOT NULL,
  `user_nama` varchar(35) DEFAULT NULL,
  `user_username` varchar(30) DEFAULT NULL,
  `user_password` varchar(255) DEFAULT NULL,
  `user_level` varchar(2) DEFAULT NULL,
  `user_status` varchar(2) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `user_nama`, `user_username`, `user_password`, `user_level`, `user_status`) VALUES
(1, 'A3 Jaya', 'admin_a3', '$2y$12$gF1.MuOwOXdJEzc.nuuZpeSUmRHEWFmtn0y9E3mxnGossG23K8EHS', '1', '1'),
(21, 'bayu_admin', 'bayu_admin', '$2a$12$q5P1NrvzpwQuBLDliJs9peDfXazF/jNdGtKX05d26M4zVU3ADBLmy', '1', '1'),
(27, 'tejo joko', 'tejo_kasir', '$2y$12$V6X1jDXCkSmFcAdjFwLW.uHS7sDIKwES6tGt3LqS6zA68hs2M0g3y', '2', '1'),
(29, 'Joko', 'Joko_kasir', '$2y$12$Bvbcyai9jtuSLpHM7BK/Ke4VwV/SFM3mRIJWA3vbTxC8JUHkYJTjK', '2', '1'),
(30, 'Admin A3', 'Admin', '$2y$12$yjJ/VIax5KXvT3LU2lAT9uabAnGy5dgDYKshisNEp7OI.mS9kqhSy', '1', '1'),
(31, 'Admin 1', 'admin', '$2y$12$VEl/fj8Yw3CThs1jwjB6y.BrGUTrbWSpoAuj60rQTOnnOjPitN2kq', '1', '0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_barang`
--
ALTER TABLE `tbl_barang`
  ADD PRIMARY KEY (`barang_id`),
  ADD KEY `barang_user_id` (`barang_user_id`),
  ADD KEY `barang_kategori_id` (`barang_kategori_id`);

--
-- Indexes for table `tbl_beli`
--
ALTER TABLE `tbl_beli`
  ADD PRIMARY KEY (`beli_kode`),
  ADD KEY `beli_user_id` (`beli_user_id`),
  ADD KEY `beli_suplier_id` (`beli_suplier_id`),
  ADD KEY `beli_id` (`beli_kode`);

--
-- Indexes for table `tbl_detail_beli`
--
ALTER TABLE `tbl_detail_beli`
  ADD PRIMARY KEY (`d_beli_id`),
  ADD KEY `d_beli_barang_id` (`d_beli_barang_id`),
  ADD KEY `d_beli_nofak` (`d_beli_nofak`),
  ADD KEY `d_beli_kode` (`d_beli_kode`);

--
-- Indexes for table `tbl_detail_jual`
--
ALTER TABLE `tbl_detail_jual`
  ADD PRIMARY KEY (`d_jual_id`),
  ADD KEY `d_jual_barang_id` (`d_jual_barang_id`),
  ADD KEY `d_jual_nofak` (`d_jual_nofak`);

--
-- Indexes for table `tbl_jual`
--
ALTER TABLE `tbl_jual`
  ADD PRIMARY KEY (`jual_nofak`),
  ADD KEY `jual_user_id` (`jual_user_id`);

--
-- Indexes for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indexes for table `tbl_retur`
--
ALTER TABLE `tbl_retur`
  ADD PRIMARY KEY (`retur_id`);

--
-- Indexes for table `tbl_suplier`
--
ALTER TABLE `tbl_suplier`
  ADD PRIMARY KEY (`suplier_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_detail_beli`
--
ALTER TABLE `tbl_detail_beli`
  MODIFY `d_beli_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_detail_jual`
--
ALTER TABLE `tbl_detail_jual`
  MODIFY `d_jual_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `tbl_retur`
--
ALTER TABLE `tbl_retur`
  MODIFY `retur_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_suplier`
--
ALTER TABLE `tbl_suplier`
  MODIFY `suplier_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_barang`
--
ALTER TABLE `tbl_barang`
  ADD CONSTRAINT `tbl_barang_ibfk_1` FOREIGN KEY (`barang_user_id`) REFERENCES `tbl_user` (`user_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_barang_ibfk_2` FOREIGN KEY (`barang_kategori_id`) REFERENCES `tbl_kategori` (`kategori_id`) ON UPDATE CASCADE;

--
-- Constraints for table `tbl_beli`
--
ALTER TABLE `tbl_beli`
  ADD CONSTRAINT `tbl_beli_ibfk_1` FOREIGN KEY (`beli_user_id`) REFERENCES `tbl_user` (`user_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_beli_ibfk_2` FOREIGN KEY (`beli_suplier_id`) REFERENCES `tbl_suplier` (`suplier_id`) ON UPDATE CASCADE;

--
-- Constraints for table `tbl_detail_beli`
--
ALTER TABLE `tbl_detail_beli`
  ADD CONSTRAINT `tbl_detail_beli_ibfk_1` FOREIGN KEY (`d_beli_barang_id`) REFERENCES `tbl_barang` (`barang_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_detail_beli_ibfk_2` FOREIGN KEY (`d_beli_kode`) REFERENCES `tbl_beli` (`beli_kode`) ON UPDATE CASCADE;

--
-- Constraints for table `tbl_detail_jual`
--
ALTER TABLE `tbl_detail_jual`
  ADD CONSTRAINT `tbl_detail_jual_ibfk_1` FOREIGN KEY (`d_jual_barang_id`) REFERENCES `tbl_barang` (`barang_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_detail_jual_ibfk_2` FOREIGN KEY (`d_jual_nofak`) REFERENCES `tbl_jual` (`jual_nofak`) ON UPDATE CASCADE;

--
-- Constraints for table `tbl_jual`
--
ALTER TABLE `tbl_jual`
  ADD CONSTRAINT `tbl_jual_ibfk_1` FOREIGN KEY (`jual_user_id`) REFERENCES `tbl_user` (`user_id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
