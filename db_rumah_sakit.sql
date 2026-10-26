-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 26, 2026 at 03:01 PM
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
-- Database: `db_rumah_sakit`
--

-- --------------------------------------------------------

--
-- Table structure for table `dokter`
--

CREATE TABLE `dokter` (
  `id_dokter` int(11) NOT NULL,
  `nama_dokter` varchar(100) DEFAULT NULL,
  `id_poli` int(11) DEFAULT NULL,
  `spesialisasi` varchar(100) DEFAULT NULL,
  `tarif_konsultasi` decimal(12,2) DEFAULT NULL,
  `status_dokter` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dokter`
--

INSERT INTO `dokter` (`id_dokter`, `nama_dokter`, `id_poli`, `spesialisasi`, `tarif_konsultasi`, `status_dokter`) VALUES
(1, 'Dr. Alif', 1, 'Umum', 50000.00, 'Aktif'),
(2, 'Dr. Guntur', 2, 'Anak', 100000.00, 'Aktif'),
(3, 'Dr. Sabiluna', 3, 'Gigi', 150000.00, 'Aktif'),
(4, 'Dr. Zafirah', 4, 'Penyakit Dalam', 175000.00, 'Cuti'),
(5, 'Dr. Selfiana', 5, 'Jantung', 250000.00, 'Aktif'),
(6, 'Dr. Asyifa', 6, 'Mata', 120000.00, 'Nonaktif'),
(7, 'Dr. Mayang', 7, 'THT', 130000.00, 'Aktif'),
(8, 'Dr. Lisa', 8, 'Saraf', 200000.00, 'Aktif'),
(9, 'Dr. Yeni', 9, 'Kulit dan Kelamin', 150000.00, 'Aktif'),
(10, 'Dr. Ayu', 1, 'Umum', 75000.00, 'Cuti');

-- --------------------------------------------------------

--
-- Table structure for table `kunjungan`
--

CREATE TABLE `kunjungan` (
  `id_kunjungan` int(11) NOT NULL,
  `id_pasien` int(11) DEFAULT NULL,
  `id_dokter` int(11) DEFAULT NULL,
  `tanggal_kunjungan` date DEFAULT NULL,
  `jenis_kunjungan` varchar(30) DEFAULT NULL,
  `diagnosis` varchar(200) DEFAULT NULL,
  `status_kunjungan` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kunjungan`
--

INSERT INTO `kunjungan` (`id_kunjungan`, `id_pasien`, `id_dokter`, `tanggal_kunjungan`, `jenis_kunjungan`, `diagnosis`, `status_kunjungan`) VALUES
(1, 1, 1, '2026-06-01', 'Umum', 'Flu dan Batuk Ringan', 'Selesai'),
(2, 2, 2, '2026-06-02', 'Kontrol', 'Demam Berdarah', 'Selesai'),
(3, 3, 3, '2026-06-03', 'Darurat', 'Sakit Gigi Berlubang', 'Selesai'),
(4, 1, 2, '2026-06-04', 'Kontrol', 'Pemeriksaan Rutin Anak', 'Batal'),
(5, 4, 2, '2026-06-05', 'Umum', 'Maag Akut', 'Selesai'),
(6, 5, 5, '2026-06-06', 'Darurat', 'Nyeri Dada Sebelah Kiri', 'Selesai'),
(7, 6, 3, '2026-06-07', 'Umum', 'Mata Minus dan Iritasi', 'Selesai'),
(8, 7, 7, '2026-06-08', 'Kontrol', 'Radang Tenggorokan', 'Batal'),
(9, 8, 8, '2026-06-09', 'Darurat', 'Migrain Berkepanjangan', 'Menunggu'),
(10, 2, 1, '2026-06-10', 'Umum', 'Insomnia Ringan', 'Menunggu');

-- --------------------------------------------------------

--
-- Table structure for table `pasien`
--

CREATE TABLE `pasien` (
  `id_pasien` int(11) NOT NULL,
  `nama_pasien` varchar(100) DEFAULT NULL,
  `jenis_kelamin` char(1) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `alamat` varchar(200) DEFAULT NULL,
  `no_hp` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pasien`
--

INSERT INTO `pasien` (`id_pasien`, `nama_pasien`, `jenis_kelamin`, `tanggal_lahir`, `alamat`, `no_hp`) VALUES
(1, 'Ahmad Fauzi', 'L', '1995-05-10', 'Jl. Merdeka No. 1', '081234567890'),
(2, 'Siti Aminah', 'P', '1998-08-15', 'Jl. Sudirman No. 5', '081234567891'),
(3, 'Rian Hidayat', 'L', '1990-12-20', 'Jl. Diponegoro No. 10', '081234567892'),
(4, 'Dewi Sartika', 'P', '2000-03-25', 'Jl. A. Yani No. 12', '081234567893'),
(5, 'Bambang Pamungkas', 'L', '1985-07-30', 'Jl. Gajah Mada No. 8', '081234567894'),
(6, 'Rini Wulandari', 'P', '1996-01-14', 'Jl. Pahlawan No. 3', '081234567895'),
(7, 'Joko Widodo', 'L', '1975-06-21', 'Jl. Kebon Jeruk No. 7', '081234567896'),
(8, 'Sri Mulyani', 'P', '1982-11-09', 'Jl. Melati No. 15', '081234567897'),
(9, 'Doni Salmanan', 'L', '1997-04-04', 'Jl. Pluit Indah No. 9', '081234567898'),
(10, 'Putri Titian', 'P', '1999-09-19', 'Jl. Teuku Umar No. 4', '081234567899');

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id_pembayaran` int(11) NOT NULL,
  `id_kunjungan` int(11) DEFAULT NULL,
  `tanggal_bayar` date DEFAULT NULL,
  `biaya_konsultasi` decimal(12,2) DEFAULT NULL,
  `biaya_obat` decimal(12,2) DEFAULT NULL,
  `biaya_laboratorium` decimal(12,2) DEFAULT NULL,
  `diskon` decimal(12,2) DEFAULT NULL,
  `metode_bayar` varchar(30) DEFAULT NULL,
  `status_bayar` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`id_pembayaran`, `id_kunjungan`, `tanggal_bayar`, `biaya_konsultasi`, `biaya_obat`, `biaya_laboratorium`, `diskon`, `metode_bayar`, `status_bayar`) VALUES
(1, 1, '2026-06-01', 50000.00, 75000.00, 0.00, 10000.00, 'Tunai', 'Lunas'),
(2, 2, '2026-06-02', 100000.00, 150000.00, 200000.00, 50000.00, 'Transfer', 'Lunas'),
(3, 3, '2026-06-03', 150000.00, 50000.00, 0.00, 0.00, 'Asuransi', 'Lunas'),
(4, 5, '2026-06-05', 175000.00, 125000.00, 100000.00, 25000.00, 'Tunai', 'Lunas'),
(5, 6, '2026-06-06', 250000.00, 300000.00, 500000.00, 100000.00, 'Transfer', 'Belum Lunas'),
(6, 7, '2026-06-07', 120000.00, 80000.00, 0.00, 0.00, 'Asuransi', 'Lunas'),
(7, 4, '2026-06-04', 100000.00, 0.00, 0.00, 0.00, 'Tunai', 'Lunas'),
(8, 8, '2026-06-08', 130000.00, 45000.00, 0.00, 15000.00, 'Transfer', 'Lunas'),
(9, 9, '2026-06-09', 200000.00, 150000.00, 150000.00, 0.00, 'Asuransi', 'Belum Lunas'),
(10, 10, '2026-06-10', 50000.00, 30000.00, 0.00, 0.00, 'Tunai', 'Belum Lunas');

-- --------------------------------------------------------

--
-- Table structure for table `poli`
--

CREATE TABLE `poli` (
  `id_poli` int(11) NOT NULL,
  `nama_poli` varchar(100) DEFAULT NULL,
  `lantai` int(11) DEFAULT NULL,
  `status_poli` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `poli`
--

INSERT INTO `poli` (`id_poli`, `nama_poli`, `lantai`, `status_poli`) VALUES
(1, 'Poli Umum', 1, 'Aktif'),
(2, 'Poli Anak', 2, 'Aktif'),
(3, 'Poli Gigi', 1, 'Aktif'),
(4, 'Poli Penyakit Dalam', 2, 'Aktif'),
(5, 'Poli Jantung', 3, 'Aktif'),
(6, 'Poli Mata', 1, 'Aktif'),
(7, 'Poli THT', 2, 'Aktif'),
(8, 'Poli Saraf', 3, 'Aktif'),
(9, 'Poli Kulit dan Kelamin', 1, 'Aktif'),
(10, 'Poli Bedah', 2, 'Nonaktif');

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_ifmajemuk_operator_logika_no10`
-- (See below for the actual view)
--
CREATE TABLE `view_ifmajemuk_operator_logika_no10` (
`id_kunjungan` int(11)
,`jenis_kunjungan` varchar(30)
,`status_kunjungan` varchar(30)
,`status_prioritas_pelayanan` varchar(17)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_if_majemuk_no9`
-- (See below for the actual view)
--
CREATE TABLE `view_if_majemuk_no9` (
`id_pembayaran` int(11)
,`id_kunjungan` int(11)
,`total_biaya` decimal(15,2)
,`klasifikasi_biaya` varchar(8)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_if_tunggal_no8`
-- (See below for the actual view)
--
CREATE TABLE `view_if_tunggal_no8` (
`id_pembayaran` int(11)
,`id_kunjungan` int(11)
,`diskon` decimal(12,2)
,`keterangan_diskon` varchar(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_inner_join_no4`
-- (See below for the actual view)
--
CREATE TABLE `view_inner_join_no4` (
`id_pasien` int(11)
,`nama_pasien` varchar(100)
,`id_dokter` int(11)
,`nama_dokter` varchar(100)
,`nama_poli` varchar(100)
,`spesialisasi` varchar(100)
,`tanggal_kunjungan` date
,`status_kunjungan` varchar(30)
,`diagnosis` varchar(200)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_kombinasi_join_no7`
-- (See below for the actual view)
--
CREATE TABLE `view_kombinasi_join_no7` (
`nama_pasien` varchar(100)
,`nama_dokter` varchar(100)
,`nama_poli` varchar(100)
,`tanggal_kunjungan` date
,`diagnosis` varchar(200)
,`total_sebelum_diskon` decimal(14,2)
,`diskon` decimal(12,2)
,`total_tagihan` decimal(15,2)
,`metode_bayar` varchar(30)
,`status_bayar` varchar(20)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_left_join_no5`
-- (See below for the actual view)
--
CREATE TABLE `view_left_join_no5` (
`nama_pasien` varchar(100)
,`no_hp` varchar(15)
,`jumlah_kunjungan` bigint(21)
,`tanggal_kunjungan_terakhir` date
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_right_join_no6`
-- (See below for the actual view)
--
CREATE TABLE `view_right_join_no6` (
`nama_dokter` varchar(100)
,`spesialisasi` varchar(100)
,`nama_poli` varchar(100)
,`id_kunjungan` int(11)
,`status_kunjungan` varchar(30)
);

-- --------------------------------------------------------

--
-- Structure for view `view_ifmajemuk_operator_logika_no10`
--
DROP TABLE IF EXISTS `view_ifmajemuk_operator_logika_no10`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_ifmajemuk_operator_logika_no10`  AS SELECT `kunjungan`.`id_kunjungan` AS `id_kunjungan`, `kunjungan`.`jenis_kunjungan` AS `jenis_kunjungan`, `kunjungan`.`status_kunjungan` AS `status_kunjungan`, if(`kunjungan`.`jenis_kunjungan` = 'Darurat' and `kunjungan`.`status_kunjungan` <> 'Batal','Prioritas Tinggi',if(`kunjungan`.`jenis_kunjungan` = 'Kontrol' and `kunjungan`.`status_kunjungan` = 'Selesai','Kontrol Selesai',if(`kunjungan`.`status_kunjungan` = 'Batal','Tidak Dilayani','Pelayanan Reguler'))) AS `status_prioritas_pelayanan` FROM `kunjungan` ;

-- --------------------------------------------------------

--
-- Structure for view `view_if_majemuk_no9`
--
DROP TABLE IF EXISTS `view_if_majemuk_no9`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_if_majemuk_no9`  AS SELECT `pembayaran`.`id_pembayaran` AS `id_pembayaran`, `pembayaran`.`id_kunjungan` AS `id_kunjungan`, `pembayaran`.`biaya_konsultasi`+ `pembayaran`.`biaya_obat` + `pembayaran`.`biaya_laboratorium` - `pembayaran`.`diskon` AS `total_biaya`, if(`pembayaran`.`biaya_konsultasi` + `pembayaran`.`biaya_obat` + `pembayaran`.`biaya_laboratorium` - `pembayaran`.`diskon` < 100000,'Ekonomis',if(`pembayaran`.`biaya_konsultasi` + `pembayaran`.`biaya_obat` + `pembayaran`.`biaya_laboratorium` - `pembayaran`.`diskon` < 300000,'Menengah','Premium')) AS `klasifikasi_biaya` FROM `pembayaran` ;

-- --------------------------------------------------------

--
-- Structure for view `view_if_tunggal_no8`
--
DROP TABLE IF EXISTS `view_if_tunggal_no8`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_if_tunggal_no8`  AS SELECT `pembayaran`.`id_pembayaran` AS `id_pembayaran`, `pembayaran`.`id_kunjungan` AS `id_kunjungan`, `pembayaran`.`diskon` AS `diskon`, if(`pembayaran`.`diskon` > 0,'Mendapat Diskon','Tidak Mendapat Diskon') AS `keterangan_diskon` FROM `pembayaran` ;

-- --------------------------------------------------------

--
-- Structure for view `view_inner_join_no4`
--
DROP TABLE IF EXISTS `view_inner_join_no4`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_inner_join_no4`  AS SELECT `pasien`.`id_pasien` AS `id_pasien`, `pasien`.`nama_pasien` AS `nama_pasien`, `dokter`.`id_dokter` AS `id_dokter`, `dokter`.`nama_dokter` AS `nama_dokter`, `poli`.`nama_poli` AS `nama_poli`, `dokter`.`spesialisasi` AS `spesialisasi`, `kunjungan`.`tanggal_kunjungan` AS `tanggal_kunjungan`, `kunjungan`.`status_kunjungan` AS `status_kunjungan`, `kunjungan`.`diagnosis` AS `diagnosis` FROM (((`kunjungan` join `pasien` on(`kunjungan`.`id_pasien` = `pasien`.`id_pasien`)) join `dokter` on(`kunjungan`.`id_dokter` = `dokter`.`id_dokter`)) join `poli` on(`dokter`.`id_poli` = `poli`.`id_poli`)) ;

-- --------------------------------------------------------

--
-- Structure for view `view_kombinasi_join_no7`
--
DROP TABLE IF EXISTS `view_kombinasi_join_no7`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_kombinasi_join_no7`  AS SELECT `pasien`.`nama_pasien` AS `nama_pasien`, `dokter`.`nama_dokter` AS `nama_dokter`, `poli`.`nama_poli` AS `nama_poli`, `kunjungan`.`tanggal_kunjungan` AS `tanggal_kunjungan`, `kunjungan`.`diagnosis` AS `diagnosis`, coalesce(`pembayaran`.`biaya_konsultasi`,0) + coalesce(`pembayaran`.`biaya_obat`,0) + coalesce(`pembayaran`.`biaya_laboratorium`,0) AS `total_sebelum_diskon`, `pembayaran`.`diskon` AS `diskon`, coalesce(`pembayaran`.`biaya_konsultasi`,0) + coalesce(`pembayaran`.`biaya_obat`,0) + coalesce(`pembayaran`.`biaya_laboratorium`,0) - coalesce(`pembayaran`.`diskon`,0) AS `total_tagihan`, `pembayaran`.`metode_bayar` AS `metode_bayar`, `pembayaran`.`status_bayar` AS `status_bayar` FROM ((((`kunjungan` join `pasien` on(`kunjungan`.`id_pasien` = `pasien`.`id_pasien`)) join `dokter` on(`kunjungan`.`id_dokter` = `dokter`.`id_dokter`)) join `poli` on(`dokter`.`id_poli` = `poli`.`id_poli`)) left join `pembayaran` on(`kunjungan`.`id_kunjungan` = `pembayaran`.`id_kunjungan`)) ;

-- --------------------------------------------------------

--
-- Structure for view `view_left_join_no5`
--
DROP TABLE IF EXISTS `view_left_join_no5`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_left_join_no5`  AS SELECT `pasien`.`nama_pasien` AS `nama_pasien`, `pasien`.`no_hp` AS `no_hp`, count(`kunjungan`.`id_kunjungan`) AS `jumlah_kunjungan`, max(`kunjungan`.`tanggal_kunjungan`) AS `tanggal_kunjungan_terakhir` FROM (`pasien` left join `kunjungan` on(`pasien`.`id_pasien` = `kunjungan`.`id_pasien`)) GROUP BY `pasien`.`id_pasien`, `pasien`.`nama_pasien`, `pasien`.`no_hp` ;

-- --------------------------------------------------------

--
-- Structure for view `view_right_join_no6`
--
DROP TABLE IF EXISTS `view_right_join_no6`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_right_join_no6`  AS SELECT `dokter`.`nama_dokter` AS `nama_dokter`, `dokter`.`spesialisasi` AS `spesialisasi`, `poli`.`nama_poli` AS `nama_poli`, `kunjungan`.`id_kunjungan` AS `id_kunjungan`, `kunjungan`.`status_kunjungan` AS `status_kunjungan` FROM ((`dokter` left join `kunjungan` on(`kunjungan`.`id_dokter` = `dokter`.`id_dokter`)) join `poli` on(`dokter`.`id_poli` = `poli`.`id_poli`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dokter`
--
ALTER TABLE `dokter`
  ADD PRIMARY KEY (`id_dokter`),
  ADD KEY `id_poli` (`id_poli`);

--
-- Indexes for table `kunjungan`
--
ALTER TABLE `kunjungan`
  ADD PRIMARY KEY (`id_kunjungan`),
  ADD KEY `id_pasien` (`id_pasien`),
  ADD KEY `id_dokter` (`id_dokter`);

--
-- Indexes for table `pasien`
--
ALTER TABLE `pasien`
  ADD PRIMARY KEY (`id_pasien`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id_pembayaran`),
  ADD KEY `id_kunjungan` (`id_kunjungan`);

--
-- Indexes for table `poli`
--
ALTER TABLE `poli`
  ADD PRIMARY KEY (`id_poli`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dokter`
--
ALTER TABLE `dokter`
  ADD CONSTRAINT `dokter_ibfk_1` FOREIGN KEY (`id_poli`) REFERENCES `poli` (`id_poli`);

--
-- Constraints for table `kunjungan`
--
ALTER TABLE `kunjungan`
  ADD CONSTRAINT `kunjungan_ibfk_1` FOREIGN KEY (`id_pasien`) REFERENCES `pasien` (`id_pasien`),
  ADD CONSTRAINT `kunjungan_ibfk_2` FOREIGN KEY (`id_dokter`) REFERENCES `dokter` (`id_dokter`);

--
-- Constraints for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD CONSTRAINT `pembayaran_ibfk_1` FOREIGN KEY (`id_kunjungan`) REFERENCES `kunjungan` (`id_kunjungan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
