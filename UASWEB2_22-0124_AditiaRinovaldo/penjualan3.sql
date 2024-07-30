-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:8111
-- Generation Time: Jul 03, 2024 at 02:56 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `penjualan3`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE `tb_admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `admin_telp` varchar(20) NOT NULL,
  `admin_email` varchar(50) NOT NULL,
  `admin_address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`admin_id`, `admin_name`, `username`, `password`, `admin_telp`, `admin_email`, `admin_address`) VALUES
(9, 'Aditia Rinovaldo', 'admin', '2bf10ad03682fc40b930d987556abb20', '085935614162', 'aditiarinovaldo933@gmail.com', 'Jl. Dalam Gadung Lubeg'),
(10, 'Devano Sahputra', 'karyawan1', 'c04895e9c713643278a3df15426030cd', '081234567890', 'devanostar933@gmail.com', 'Jl. H. Agus Salim');

-- --------------------------------------------------------

--
-- Table structure for table `tb_category`
--

CREATE TABLE `tb_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_category`
--

INSERT INTO `tb_category` (`category_id`, `category_name`) VALUES
(23, 'Sepeda Gunung'),
(24, 'Sepeda Kota'),
(25, 'Sepeda Anak'),
(26, 'Sepeda Listrik');

-- --------------------------------------------------------

--
-- Table structure for table `tb_month_report`
--

CREATE TABLE `tb_month_report` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `category_name` varchar(25) NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_count` int(11) NOT NULL,
  `total_price` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_month_report`
--

INSERT INTO `tb_month_report` (`product_id`, `product_name`, `category_name`, `product_price`, `product_count`, `total_price`) VALUES
(0, 'Sepeda anak Element Kids', 'Sepeda Anak', 1500000, 4, 6000000),
(1, 'Sepeda anak Element Kids', 'Sepeda Anak', 1500000, 4, 6000000),
(2, 'Sepeda Kota United', 'Sepeda Kota', 12500000, 4, 50000000),
(3, 'Sepeda Listrik Edison', 'Sepeda Listrik', 5500000, 5, 27500000),
(4, 'Sepeda Gunung Exotic', 'Sepeda Gunung', 8250000, 2, 16500000);

-- --------------------------------------------------------

--
-- Table structure for table `tb_product`
--

CREATE TABLE `tb_product` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_description` text NOT NULL,
  `product_image` varchar(100) NOT NULL,
  `product_status` tinyint(1) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_product`
--

INSERT INTO `tb_product` (`product_id`, `category_id`, `product_name`, `product_price`, `product_description`, `product_image`, `product_status`, `date_created`) VALUES
(38, 23, 'Sepeda Gunung Falcon', 6500000, 'Sepeda yang bagus dan cocok digunakan di daerah pegunungan.', 'produk1716331813.jpg', 1, '2024-05-21 22:50:13'),
(40, 26, 'Sepeda listrik Edison', 12500000, 'Sepeda cocok digunakan di daerah perkotaan', 'produk1716340677.png', 1, '2024-05-22 01:17:57'),
(41, 25, 'Sepeda anak Exotic', 3500000, 'Sepeda cocok digunakan untuk anak berusia 2 tahun keatas.', 'produk1716340732.jpg', 1, '2024-05-22 01:18:52'),
(42, 24, 'Sepeda kota United', 7250000, 'Sepeda ini sangat cocok digunakan untuk perjalanan perkotaan', 'produk1716341597.jpg', 1, '2024-05-22 01:33:17'),
(43, 26, 'Sepeda listrik Exotic', 14500000, 'Sepeda listrik', 'produk1716341628.jpg', 1, '2024-05-22 01:33:48'),
(44, 24, 'Sepeda kota United', 8000000, 'Sepeda kota', 'produk1716347585.jpg', 0, '2024-05-22 03:13:05'),
(45, 25, 'Sepeda anak Element Kids', 4250000, 'Sepeda anak', 'produk1716348399.jpg', 1, '2024-05-22 03:26:39');

-- --------------------------------------------------------

--
-- Table structure for table `tb_report`
--

CREATE TABLE `tb_report` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `category_name` varchar(25) NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_count` int(11) NOT NULL,
  `total_price` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_report`
--

INSERT INTO `tb_report` (`product_id`, `product_name`, `category_name`, `product_price`, `product_count`, `total_price`) VALUES
(1, 'Sepeda anak Element Kids', 'Sepeda Anak', 4250000, 2, 8500000),
(2, 'Sepeda Listrik United', 'Sepeda Listrik', 3500000, 5, 17500000),
(3, 'Sepeda Gunung Exotic', 'Sepeda Gunung', 8250000, 2, 16500000);

-- --------------------------------------------------------

--
-- Table structure for table `tb_stock`
--

CREATE TABLE `tb_stock` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` int(11) NOT NULL,
  `stock_count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_stock`
--

INSERT INTO `tb_stock` (`product_id`, `category_id`, `category_name`, `product_name`, `product_price`, `stock_count`) VALUES
(0, 0, 'Sepeda Listrik', 'Sepeda Listrik Exotic', 450000, 5),
(1, 0, 'Sepeda Listrik', 'Sepeda Listrik Pacific', 750000, 12),
(0, 0, 'Sepeda Gunung', 'Sepeda Gunung United', 6500000, 9),
(2, 0, 'Sepeda Gunung', 'Sepeda Gunung United', 6500000, 9);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tb_category`
--
ALTER TABLE `tb_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tb_product`
--
ALTER TABLE `tb_product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `category_id` (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tb_category`
--
ALTER TABLE `tb_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `tb_product`
--
ALTER TABLE `tb_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
