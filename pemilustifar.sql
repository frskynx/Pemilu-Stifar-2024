-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 31, 2024 at 01:50 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pemilustifar`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(8) NOT NULL,
  `username` varchar(16) NOT NULL,
  `password` varchar(256) NOT NULL,
  `terakhir_login` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `terakhir_login`) VALUES
(2, 'orangbejo', '$2y$10$gorL8n9CVhP/6qySLovCYOv7TB/tS0QPoFFGTBoh8TErILqwyENRO', '2024-07-31 06:43:35'),
(3, 'ajeng', '$2y$10$TzF03fo3NNu8yNYdTsyioeTmCFtIjexpUhUeOxE9KT4Lui0lb6yAO', '2024-04-18 22:30:33');

-- --------------------------------------------------------

--
-- Table structure for table `calon`
--

CREATE TABLE `calon` (
  `id_calon` int(8) NOT NULL,
  `nama_calon` varchar(24) NOT NULL,
  `jabatan` enum('ketua','wakil') NOT NULL,
  `foto` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `calon`
--

INSERT INTO `calon` (`id_calon`, `nama_calon`, `jabatan`, `foto`) VALUES
(1, 'Anisa', 'ketua', 'assets/img/1.jpg'),
(2, 'Prabroro', 'ketua', 'assets/img/2.jpeg'),
(3, 'Janggar', 'ketua', 'assets/img/3.jpg'),
(4, 'Cak Imin', 'wakil', 'assets/img/1.jpg'),
(5, 'Brigan', 'wakil', 'assets/img/2.jpeg'),
(6, 'Mahmud md.', 'wakil', 'assets/img/3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim` varchar(10) NOT NULL,
  `nama_mahasiswa` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `nama_mahasiswa`) VALUES
('111111111', 'Agus'),
('222222222', 'Bayu');

-- --------------------------------------------------------

--
-- Table structure for table `misi`
--

CREATE TABLE `misi` (
  `id_misi` int(8) NOT NULL,
  `misi` varchar(512) NOT NULL,
  `no_misi` int(2) NOT NULL,
  `id_calon` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `misi`
--

INSERT INTO `misi` (`id_misi`, `misi`, `no_misi`, `id_calon`) VALUES
(78, 'Menciptakan organisasi yang harmonis dan inovatif.', 1, 1),
(79, 'Meningkatkan kinerja program kerja yang telah ada.', 2, 1),
(80, 'Mengadakan partisipasi mahasiswa dalam setiap kegiatan yang dilakukan senat mahasiswa.', 3, 1),
(81, 'Menguatkan komunikasi yang baik dari sisi internal maupun eksternal demi mencapai kesinergisan kampus.', 1, 2),
(82, 'Menjadikan senat mahasiswa sebagai sarana aspiratif yang kritis guna membentuk generasi muda yang unggul.', 2, 2),
(83, 'Menciptakan pengurus senat yang bertanggung jawab,disiplin,dan tanggap', 3, 2),
(84, 'Menjadi penyalur aspirasi mahasiswa yang bertanggung jawab.', 1, 3),
(85, 'Membangun komunikasi dan hubungan kekeluargaan antar senat dan mahasiswa', 2, 3),
(86, 'Melaksanakan program kerja sesuai dengan kebutuhan mahasiswa D3 Farmasi STIFAR Semarang', 3, 3),
(87, 'Membangun lingkup berlandaskan kekeluargaan dan beriringan dengan keharmonisan', 1, 4),
(88, 'Mengayomi dan merangkul himpunan program akademik maupun non akademik', 2, 4),
(89, 'Mewadahi pengembangan minat bakat, keilmuan dan penalaran, serta kerakter mahasiswa', 3, 4),
(90, 'Memperkuat sistem informasi dan komunikasi dimana sebagai wadah aspirasi yang menjembatani mahasiswa', 4, 4),
(91, 'Mengoptimalkan ke aktifan dengan menjadikan mahasiswa yang kritis dan kreatif', 5, 4),
(92, 'Meningatkan pemahaman dan kesadaran tentang farmasi.', 1, 5),
(93, 'Membangun hubungan dengan industri farmasi', 2, 5),
(94, 'Mempromosikan pengembangan profesional', 3, 5),
(95, 'Melakukan kegiatan sosial dan pelayanan masyarakat', 4, 5);

-- --------------------------------------------------------

--
-- Table structure for table `suara`
--

CREATE TABLE `suara` (
  `id_suara` int(11) NOT NULL,
  `id_admin` int(11) NOT NULL,
  `nim` varchar(10) NOT NULL,
  `id_calon` int(11) NOT NULL,
  `jenis_suara` enum('ketua','wakil','','') NOT NULL,
  `waktu_pilih` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `suara_wakil`
--

CREATE TABLE `suara_wakil` (
  `id_suara_wakil` int(11) NOT NULL,
  `id_admin` int(11) NOT NULL,
  `nim` varchar(10) NOT NULL,
  `id_calon_wakil` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `visi`
--

CREATE TABLE `visi` (
  `id_visi` int(8) NOT NULL,
  `visi` varchar(256) NOT NULL,
  `id_calon` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `visi`
--

INSERT INTO `visi` (`id_visi`, `visi`, `id_calon`) VALUES
(7, 'Menjadikan senat mahasiswa sebagai wadah menampung aspirasi seluruh mahasiswa dan mewujudkan senat yang terpercaya, komunikatif, dan aktif, dan juga membentuk mahasiswa yang aktif dan disiplin.', 1),
(8, 'Mewujudkan Senat Mahasiswa yang mandiri,kolaboratif,kreatif,dan inovatif guna membentuk generasi muda yang unggul', 2),
(9, 'Mewujudkan senat mahasiswa D3 Farmasi yang terbuka, kreatif, dan bertanggung jawab dalam setiap kegiatan D3 Farmasi Yayasan Pharmasi semarang.', 3),
(10, 'Menjadikan organisasi senat mahasiswa sebagai wadah yang berintegritas, komunikatif, aspiratif, dan kreatif yang mengedepankan keaktifan serta pertanggung jawaban agar terwujudnya harmonisasi, menginovasi, dan meningkatkan kualitas sosial personal', 4),
(11, 'Membentuk organisasi pendidikan yang berperan aktif dalam mengembangkan pengetahuan dan kualitas di bidang farmasi serta memberikan manfaat kepada masyarakat.', 5),
(12, '', 6);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `calon`
--
ALTER TABLE `calon`
  ADD PRIMARY KEY (`id_calon`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nim`);

--
-- Indexes for table `misi`
--
ALTER TABLE `misi`
  ADD PRIMARY KEY (`id_misi`),
  ADD KEY `id_calon` (`id_calon`);

--
-- Indexes for table `suara`
--
ALTER TABLE `suara`
  ADD PRIMARY KEY (`id_suara`),
  ADD KEY `id_admin` (`id_admin`),
  ADD KEY `id_calon` (`id_calon`),
  ADD KEY `nim` (`nim`);

--
-- Indexes for table `suara_wakil`
--
ALTER TABLE `suara_wakil`
  ADD PRIMARY KEY (`id_suara_wakil`),
  ADD KEY `id_admin` (`id_admin`),
  ADD KEY `id_calon_wakil` (`id_calon_wakil`),
  ADD KEY `nim` (`nim`);

--
-- Indexes for table `visi`
--
ALTER TABLE `visi`
  ADD PRIMARY KEY (`id_visi`),
  ADD KEY `id_calon` (`id_calon`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `calon`
--
ALTER TABLE `calon`
  MODIFY `id_calon` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `misi`
--
ALTER TABLE `misi`
  MODIFY `id_misi` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `suara`
--
ALTER TABLE `suara`
  MODIFY `id_suara` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT for table `suara_wakil`
--
ALTER TABLE `suara_wakil`
  MODIFY `id_suara_wakil` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `visi`
--
ALTER TABLE `visi`
  MODIFY `id_visi` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `misi`
--
ALTER TABLE `misi`
  ADD CONSTRAINT `misi_ibfk_1` FOREIGN KEY (`id_calon`) REFERENCES `calon` (`id_calon`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `suara`
--
ALTER TABLE `suara`
  ADD CONSTRAINT `suara_ibfk_1` FOREIGN KEY (`id_admin`) REFERENCES `admin` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `suara_ibfk_2` FOREIGN KEY (`id_calon`) REFERENCES `calon` (`id_calon`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `suara_ibfk_3` FOREIGN KEY (`nim`) REFERENCES `mahasiswa` (`nim`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `suara_wakil`
--
ALTER TABLE `suara_wakil`
  ADD CONSTRAINT `suara_wakil_ibfk_1` FOREIGN KEY (`id_admin`) REFERENCES `admin` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `suara_wakil_ibfk_2` FOREIGN KEY (`id_calon_wakil`) REFERENCES `calon` (`id_calon`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `suara_wakil_ibfk_3` FOREIGN KEY (`nim`) REFERENCES `mahasiswa` (`nim`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `visi`
--
ALTER TABLE `visi`
  ADD CONSTRAINT `visi_ibfk_1` FOREIGN KEY (`id_calon`) REFERENCES `calon` (`id_calon`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
