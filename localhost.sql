-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 08, 2024 at 01:10 PM
-- Server version: 10.6.17-MariaDB-cll-lve-log
-- PHP Version: 8.1.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `buicsfka_pemilustifar`
--
CREATE DATABASE IF NOT EXISTS `buicsfka_pemilustifar` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `buicsfka_pemilustifar`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(8) NOT NULL,
  `username` varchar(16) NOT NULL,
  `password` varchar(256) NOT NULL,
  `terakhir_login` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `terakhir_login`) VALUES
(2, 'orangbejo', '$2y$10$gorL8n9CVhP/6qySLovCYOv7TB/tS0QPoFFGTBoh8TErILqwyENRO', '2024-05-29 08:39:02');

-- --------------------------------------------------------

--
-- Table structure for table `calon`
--

CREATE TABLE `calon` (
  `id_calon` int(8) NOT NULL,
  `nama_calon` varchar(24) NOT NULL,
  `jabatan` enum('ketua','wakil') NOT NULL,
  `foto` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `calon`
--

INSERT INTO `calon` (`id_calon`, `nama_calon`, `jabatan`, `foto`) VALUES
(1, 'Sabrina Putri Neyna', 'ketua', 'assets/img/Ketua_01_Sabrina_Putri_Neyna.png'),
(2, 'Hani Perdani Putri', 'ketua', 'assets/img/Ketua_02_Hani_Perdani_Putri.jpg'),
(3, 'Nurfadillah', 'ketua', 'assets/img/Ketua_03_Nurfadillah.png\r\n'),
(4, 'Sofi Hidayahturohman', 'wakil', 'assets/img/Wakil_01_Sofi_Hidayahturohman.png'),
(5, 'Reliyanti Feriyantina', 'wakil', 'assets/img/Wakil_02_Reliyanti_Febriyantina.jpg'),
(6, 'Nova Akbar', 'wakil', 'assets/img/Wakil_03_Nova_Akbar.png');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim` varchar(10) NOT NULL,
  `nama_mahasiswa` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `nama_mahasiswa`) VALUES
('0402040003', 'Hesti Wulan '),
('1032011040', 'Aziz'),
('1032011073', 'Naily E'),
('1032111002', 'Afia Katon Nurinda'),
('1032111003', 'Afsana Radaila Dwi Putri'),
('1032111004', 'Alfina Tri Damayanti'),
('1032111005', 'Ananda Syifa Khoerunnisa'),
('1032111006', 'Angela Merici Abutdia Dwi Hasturi'),
('1032111007', 'Aprilia Rahmawati'),
('1032111008', 'Arnesha Fitria Rachmadani'),
('1032111009', 'Arum Muliya Sari Trisna Utami'),
('1032111010', 'Atika Ardianawati'),
('1032111011', 'Atika Nurul Nikmah'),
('1032111014', 'Delia Rizka Oktavia'),
('1032111015', 'Dwi Lestari'),
('1032111016', 'Elsa Febriana'),
('1032111017', 'Erika Dwi Amalia'),
('1032111018', 'Erlintang Dina Anggraeni'),
('1032111019', 'Evi Dwi Latifah Pertiwi'),
('1032111020', 'Hapsari Nindya Wijangkara ❤️'),
('1032111021', 'Hidayatillah Nurjanah'),
('1032111022', 'Iga Ngesti Suryani'),
('1032111023', 'Jessica Deviana Cahyani'),
('1032111024', 'Jihan Najla Lathifah'),
('1032111025', 'Jingga Aprilia Husanda'),
('1032111026', 'Kayla Martha Putri Prabowo'),
('1032111027', 'Kharisma Noviana Fauziah'),
('1032111028', 'Lambat Prapti Lestari'),
('1032111029', 'M. Hendrianto'),
('1032111030', 'Maulida Musafa\'ah'),
('1032111031', 'Monica Anastasia'),
('1032111032', 'Muhammad Asrof Noor Maliki'),
('1032111033', 'Nadella Putri Ardhyanti'),
('1032111034', 'Novia Dwi Rimawan'),
('1032111035', 'Novita Kurniasari'),
('1032111036', 'Nur Aeni Awalia'),
('1032111037', 'Omega Putri Rahayu'),
('1032111038', 'Rahma Anindya Utami'),
('1032111039', 'Refi Mutiah'),
('1032111040', 'Rifka Amelia'),
('1032111041', 'Risty Ayu Wardhani'),
('1032111042', 'Rosa Yunita Wijayanti'),
('1032111043', 'Sekar Wida Ratih'),
('1032111044', 'Sharmila Devi Amalia'),
('1032111045', 'Shinta Keyla Anya Setiono'),
('1032111046', 'Sinala Rahmah'),
('1032111048', 'Suryaningrum Naviana'),
('1032111049', 'Syahdam Surya Pramudya'),
('1032111050', 'Tanzila Eka Putri Ramadani'),
('1032111051', 'Umaira Azra Khairunnisa'),
('1032111053', 'Vita Mellynda Nor Aziziyah'),
('1032111054', 'Yesa Elvita Fajrin'),
('1032111055', 'Yusvina Herawati'),
('1032111056', 'Zahra Justika Prasetyo'),
('1032111058', 'Elsa Nina Nurul Faizzah'),
('1032111059', 'Flora Rivana Anjani'),
('1032111060', 'Gabriela Yosie'),
('1032111062', 'Nestya Alun Cahayani Wikan Sasti'),
('1032111064', 'Refina Kurnia Werdaningsih'),
('1032111065', 'Tegar Shihab Maulana'),
('1032111066', 'Windi Febikasari'),
('1032111067', 'Zaqia Kurniawati'),
('1032111070', 'Refy Eliya Purnata'),
('1032211001', 'Addina Arfiani Winagusta'),
('1032211002', 'Ameilia Budiono'),
('1032211004', 'Amelia Putri Lukmana'),
('1032211005', 'Ananda Jihan Setyawati'),
('1032211006', 'Andiswara Pramesti'),
('1032211007', 'Annisa Dian Angelina'),
('1032211008', 'Aprilia Rahma Hikayati'),
('1032211009', 'Atikah Idna Salma Farida'),
('1032211011', 'Aulia Nur Aini'),
('1032211012', 'Auralia Febriani'),
('1032211013', 'Ayu Septiana Dewi'),
('1032211014', 'Benedya Pramesty Ayu'),
('1032211015', 'Devi Novitasari Febriyani'),
('1032211016', 'Dyah Kusuma Ningrum'),
('1032211018', 'Dinda Prigi Wulandari'),
('1032211019', 'Ega Dilla Ayu Maharani'),
('1032211020', 'Fadhilla Oktatifania'),
('1032211021', 'Febi Mulya Rinanti'),
('1032211022', 'Glawri Ivo Trilata'),
('1032211023', 'Hani Perdani Putri'),
('1032211024', 'Helma R. Wijaya'),
('1032211025', 'Helna Navira Zahrani'),
('1032211026', 'Himmatul Ulya'),
('1032211027', 'Hizkya Cahya Narwastu'),
('1032211028', 'Ikhsan Prio Nugroho'),
('1032211029', 'Ilham Indra Fata'),
('1032211030', 'Jenysa Muti Saka Puspita'),
('1032211031', 'Kansaclaurinda Evelyn Angelia'),
('1032211032', 'Karen Putri Carissa'),
('1032211033', 'Lia Choirul Nisya'),
('1032211034', 'Mella Yuliana Putri'),
('1032211035', 'Meyva Widi Nessalia'),
('1032211036', 'Muhamad Afifuddin'),
('1032211038', 'Muhammad Ulin Nuha'),
('1032211039', 'Nadia Apriana'),
('1032211040', 'Najma Shafrina Muthmainnah'),
('1032211041', 'Nayla Zahra Putri Wardana'),
('1032211043', 'Nur Wahyu Tian Ardiansyah'),
('1032211044', 'Nurfadillah'),
('1032211045', 'Nursida Ayunda Putri'),
('1032211047', 'Prasti Laelatul Maulida'),
('1032211048', 'Reza Oktafiana Oliviarisqi'),
('1032211049', 'Rina Wahyu Utami'),
('1032211050', 'Rizky Setyaningrum'),
('1032211051', 'Sabrina Putri Neyna'),
('1032211052', 'Salisa Qurota Ayuni'),
('1032211053', 'Salma Mumtaz Zain'),
('1032211054', 'Sekar Rahini'),
('1032211055', 'Septiya Anugrah Hadi Saputri'),
('1032211056', 'Shinta Ayu Pitaloka'),
('1032211057', 'Shodiq Ahmad Jalaluddin Rohmatullah'),
('1032211058', 'Tifanni Auliya Mubarokah'),
('1032211059', 'Titis Sri Wijayanti'),
('1032211060', 'Turfenika Kamilasanti'),
('1032211061', 'Vena Setiani Pradana'),
('1032211062', 'Yesika Dwi Adi Lestari'),
('1032211063', 'Ambarita Putri Maradina'),
('1032211064', 'Anggita Putri'),
('1032211065', 'Anisa Putri Utami'),
('1032211066', 'Ayu Putri Wardani'),
('1032211067', 'Devita Afryani'),
('1032211068', 'Fitri Wulan'),
('1032211069', 'Gita Anggraini'),
('1032211070', 'Heppy Salma Hasna'),
('1032211072', 'Laisa Dyasworo'),
('1032211075', 'Nathanea Eliza Kusumaning Budi'),
('1032211076', 'Nurul Rohimah'),
('1032211077', 'Rizky Fauzan Susanto'),
('1032211078', 'Safina Susiana'),
('1032211079', 'Dia Agustiani'),
('1032311001', 'Agista Anindya Cahyaning Tyas'),
('1032311003', 'Alfi Nurhaeni'),
('1032311004', 'Alfina Intan Hapsari'),
('1032311006', 'Angelia'),
('1032311007', 'Anggia Nurrahma Azzahra'),
('1032311008', 'Calista Melga Aulia'),
('1032311009', 'Cindy Putri Ramadhani'),
('1032311010', 'Damaris Lintang Pastika'),
('1032311011', 'Devi Melyana Putri'),
('1032311012', 'Dwikaputri Ayu Rusnitanikka'),
('1032311013', 'Edi Setiawan'),
('1032311014', 'Eka Windi Agustina'),
('1032311015', 'Elinda Kartika Dewi'),
('1032311016', 'Eni Setiowati'),
('1032311017', 'Fajar Arum Wahyuni'),
('1032311018', 'Fina Rahmana'),
('1032311020', 'Istikomah'),
('1032311021', 'Kezia Yusia Putri Hutabarat'),
('1032311022', 'Litania Anggraini Saputri'),
('1032311023', 'Lusi Rahmawati'),
('1032311024', 'Luthfia Arumita'),
('1032311025', 'Muh. Ahammad Arif Rahman Hakim'),
('1032311026', 'Munawarohtul Azizah'),
('1032311027', 'Mutia Anisa Widiyanti'),
('1032311028', 'Nabila Kesuma Putri'),
('1032311029', 'Nabila Putri Ramadhani'),
('1032311030', 'Nabyla Saskhia Setiawati'),
('1032311031', 'Namida Oliviani'),
('1032311032', 'Nasywa Putri Faradita'),
('1032311033', 'Naysilla Zulfia Arista Putri'),
('1032311034', 'Nisa Tisnim Fitria'),
('1032311035', 'Nisrina Qurrotun Aini Shofa'),
('1032311036', 'Nova Akbar Siswanto'),
('1032311037', 'Novita Putri Wahyuningsih'),
('1032311038', 'Okta Maulana Ibrahim'),
('1032311039', 'Putri Aulia Faradita'),
('1032311040', 'Qoni\'a Ulil Hikmah'),
('1032311041', 'Reliyanti Febriyantina'),
('1032311042', 'Rini Afrilina Ramadani'),
('1032311043', 'Riskika Fatma Hidayah'),
('1032311044', 'Sabrina Rahmania Setyawan'),
('1032311045', 'Saskia Maria Mefa Adisty'),
('1032311046', 'Shafira Maharani'),
('1032311047', 'Siti Aaisyah Sawa AS'),
('1032311048', 'Sofi Hidayaturohman'),
('1032311049', 'Swasti Krisvia Hapsari'),
('1032311050', 'Tata Zahira Fathiha'),
('1032311051', 'Via Agustin Elsanti'),
('1032311052', 'Zahra Yanuarika Pradini'),
('1032311053', 'Zunaela Mesa Arsya Ila'),
('1032311054', 'Ana Faridhotun Niswa'),
('1032311055', 'Fardilla Restu Octavia'),
('1032311056', 'Fatimah Alya Maulid Fajrin'),
('1032311057', 'Nabila Shofiya Dena'),
('1032311058', 'Ana Putriningsih'),
('1111111111', 'Tes MHS'),
('1212121212', 'Agos setiawan');

-- --------------------------------------------------------

--
-- Table structure for table `misi`
--

CREATE TABLE `misi` (
  `id_misi` int(8) NOT NULL,
  `misi` varchar(512) NOT NULL,
  `no_misi` int(2) NOT NULL,
  `id_calon` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(95, 'Melakukan kegiatan sosial dan pelayanan masyarakat', 4, 5),
(98, 'Mewadahi serta membantu dalam penyaluran minat bakat Mahasiswa Aktif D3 Farmasi Semarang', 1, 6),
(99, 'Menjalin hubungan baik dengan Mahasiswa Aktif, Program Studi, dan alumni Sekolah Tinggi Ilmu Farmasi Semarang', 2, 6),
(100, 'Meningkatkan Partisipasi Mahasiswa dalam setiap kegiatan yang dia adakan', 3, 6);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `suara`
--

INSERT INTO `suara` (`id_suara`, `id_admin`, `nim`, `id_calon`, `jenis_suara`, `waktu_pilih`) VALUES
(129, 2, '1032111016', 1, 'ketua', '2024-04-18 19:57:24'),
(130, 2, '1032111016', 5, 'wakil', '2024-04-18 19:57:24'),
(131, 2, '1032111017', 1, 'ketua', '2024-04-18 19:57:29'),
(132, 2, '1032111017', 4, 'wakil', '2024-04-18 19:57:29'),
(133, 2, '1032211028', 1, 'ketua', '2024-04-18 19:58:12'),
(134, 2, '1032211028', 6, 'wakil', '2024-04-18 19:58:12'),
(135, 2, '1032211023', 1, 'ketua', '2024-04-18 19:58:29'),
(136, 2, '1032211023', 4, 'wakil', '2024-04-18 19:58:29'),
(137, 2, '1032211038', 1, 'ketua', '2024-04-18 19:58:47'),
(138, 2, '1032211038', 4, 'wakil', '2024-04-18 19:58:47'),
(139, 2, '1032211036', 1, 'ketua', '2024-04-18 19:58:54'),
(140, 2, '1032211036', 6, 'wakil', '2024-04-18 19:58:54'),
(141, 2, '1032211044', 1, 'ketua', '2024-04-18 19:59:12'),
(142, 2, '1032211044', 6, 'wakil', '2024-04-18 19:59:12'),
(143, 2, '1032211029', 2, 'ketua', '2024-04-18 19:59:20'),
(144, 2, '1032211029', 6, 'wakil', '2024-04-18 19:59:20'),
(145, 2, '1032111029', 2, 'ketua', '2024-04-18 19:59:55'),
(146, 2, '1032111029', 6, 'wakil', '2024-04-18 19:59:55'),
(147, 2, '1032111006', 1, 'ketua', '2024-04-18 20:00:03'),
(148, 2, '1032111006', 5, 'wakil', '2024-04-18 20:00:03'),
(149, 2, '1032111049', 3, 'ketua', '2024-04-18 20:00:08'),
(150, 2, '1032111049', 6, 'wakil', '2024-04-18 20:00:08'),
(151, 2, '1032111032', 1, 'ketua', '2024-04-18 20:00:11'),
(152, 2, '1032111032', 4, 'wakil', '2024-04-18 20:00:11'),
(153, 2, '1032111039', 1, 'ketua', '2024-04-18 20:00:34'),
(154, 2, '1032111039', 6, 'wakil', '2024-04-18 20:00:34'),
(155, 2, '1032211051', 3, 'ketua', '2024-04-18 20:00:57'),
(156, 2, '1032211051', 4, 'wakil', '2024-04-18 20:00:57'),
(157, 2, '1032111007', 1, 'ketua', '2024-04-18 20:01:03'),
(158, 2, '1032111007', 5, 'wakil', '2024-04-18 20:01:03'),
(159, 2, '1032111010', 1, 'ketua', '2024-04-18 20:01:08'),
(160, 2, '1032111010', 6, 'wakil', '2024-04-18 20:01:08'),
(161, 2, '1032111002', 1, 'ketua', '2024-04-18 20:01:24'),
(162, 2, '1032111002', 4, 'wakil', '2024-04-18 20:01:24'),
(163, 2, '1032111009', 1, 'ketua', '2024-04-18 20:01:37'),
(164, 2, '1032111009', 4, 'wakil', '2024-04-18 20:01:37'),
(165, 2, '1032211030', 1, 'ketua', '2024-04-18 20:01:57'),
(166, 2, '1032211030', 4, 'wakil', '2024-04-18 20:01:57'),
(167, 2, '1032111035', 1, 'ketua', '2024-04-18 20:01:58'),
(168, 2, '1032111035', 5, 'wakil', '2024-04-18 20:01:58'),
(169, 2, '1032111053', 1, 'ketua', '2024-04-18 20:02:08'),
(170, 2, '1032111053', 6, 'wakil', '2024-04-18 20:02:08'),
(171, 2, '1032111011', 1, 'ketua', '2024-04-18 20:02:12'),
(172, 2, '1032111011', 4, 'wakil', '2024-04-18 20:02:12'),
(173, 2, '1032111008', 1, 'ketua', '2024-04-18 20:02:19'),
(174, 2, '1032111008', 4, 'wakil', '2024-04-18 20:02:19'),
(175, 2, '1032111059', 1, 'ketua', '2024-04-18 20:02:32'),
(176, 2, '1032111059', 5, 'wakil', '2024-04-18 20:02:32'),
(177, 2, '1032211034', 2, 'ketua', '2024-04-18 20:02:44'),
(178, 2, '1032211034', 6, 'wakil', '2024-04-18 20:02:44'),
(179, 2, '1032111019', 1, 'ketua', '2024-04-18 20:03:01'),
(180, 2, '1032111019', 6, 'wakil', '2024-04-18 20:03:01'),
(181, 2, '1032211053', 1, 'ketua', '2024-04-18 20:03:13'),
(182, 2, '1032211053', 4, 'wakil', '2024-04-18 20:03:13'),
(183, 2, '1032111003', 1, 'ketua', '2024-04-18 20:03:16'),
(184, 2, '1032111003', 6, 'wakil', '2024-04-18 20:03:16'),
(185, 2, '1032111034', 1, 'ketua', '2024-04-18 20:03:34'),
(186, 2, '1032111034', 4, 'wakil', '2024-04-18 20:03:34'),
(187, 2, '1032111026', 1, 'ketua', '2024-04-18 20:03:37'),
(188, 2, '1032111026', 4, 'wakil', '2024-04-18 20:03:37'),
(189, 2, '1032211033', 1, 'ketua', '2024-04-18 20:03:41'),
(190, 2, '1032211033', 6, 'wakil', '2024-04-18 20:03:41'),
(195, 2, '1032111056', 1, 'ketua', '2024-04-18 20:04:22'),
(196, 2, '1032111056', 4, 'wakil', '2024-04-18 20:04:22'),
(197, 2, '1032111055', 1, 'ketua', '2024-04-18 20:04:25'),
(198, 2, '1032111055', 4, 'wakil', '2024-04-18 20:04:25'),
(199, 2, '1032111050', 1, 'ketua', '2024-04-18 20:04:29'),
(200, 2, '1032111050', 4, 'wakil', '2024-04-18 20:04:29'),
(201, 2, '1032111033', 1, 'ketua', '2024-04-18 20:04:30'),
(202, 2, '1032111033', 4, 'wakil', '2024-04-18 20:04:30'),
(203, 2, '1032111024', 1, 'ketua', '2024-04-18 20:05:12'),
(204, 2, '1032111024', 4, 'wakil', '2024-04-18 20:05:12'),
(205, 2, '1032111036', 3, 'ketua', '2024-04-18 20:05:13'),
(206, 2, '1032111036', 6, 'wakil', '2024-04-18 20:05:13'),
(207, 2, '1032211040', 1, 'ketua', '2024-04-18 20:05:19'),
(208, 2, '1032211040', 4, 'wakil', '2024-04-18 20:05:19'),
(209, 2, '1032211032', 3, 'ketua', '2024-04-18 20:05:23'),
(210, 2, '1032211032', 6, 'wakil', '2024-04-18 20:05:23'),
(211, 2, '1032111014', 1, 'ketua', '2024-04-18 20:05:25'),
(212, 2, '1032111014', 4, 'wakil', '2024-04-18 20:05:25'),
(213, 2, '1032211031', 1, 'ketua', '2024-04-18 20:05:59'),
(214, 2, '1032211031', 4, 'wakil', '2024-04-18 20:05:59'),
(215, 2, '1032211035', 1, 'ketua', '2024-04-18 20:06:11'),
(216, 2, '1032211035', 4, 'wakil', '2024-04-18 20:06:11'),
(217, 2, '1032211041', 3, 'ketua', '2024-04-18 20:06:24'),
(218, 2, '1032211041', 4, 'wakil', '2024-04-18 20:06:24'),
(219, 2, '1032111021', 1, 'ketua', '2024-04-18 20:06:42'),
(220, 2, '1032111021', 4, 'wakil', '2024-04-18 20:06:42'),
(221, 2, '1032111043', 1, 'ketua', '2024-04-18 20:07:36'),
(222, 2, '1032111043', 6, 'wakil', '2024-04-18 20:07:36'),
(223, 2, '1032211026', 1, 'ketua', '2024-04-18 20:08:02'),
(224, 2, '1032211026', 4, 'wakil', '2024-04-18 20:08:02'),
(227, 2, '1032111027', 1, 'ketua', '2024-04-18 20:08:09'),
(228, 2, '1032111027', 4, 'wakil', '2024-04-18 20:08:09'),
(229, 2, '1032211022', 1, 'ketua', '2024-04-18 20:08:14'),
(230, 2, '1032211022', 4, 'wakil', '2024-04-18 20:08:14'),
(231, 2, '1032111023', 1, 'ketua', '2024-04-18 20:09:48'),
(232, 2, '1032111023', 6, 'wakil', '2024-04-18 20:09:48'),
(233, 2, '1032211057', 3, 'ketua', '2024-04-18 20:10:36'),
(234, 2, '1032211057', 6, 'wakil', '2024-04-18 20:10:36'),
(235, 2, '1032211043', 3, 'ketua', '2024-04-18 20:10:54'),
(236, 2, '1032211043', 4, 'wakil', '2024-04-18 20:10:54'),
(239, 2, '1032111038', 1, 'ketua', '2024-04-18 20:12:40'),
(240, 2, '1032111038', 6, 'wakil', '2024-04-18 20:12:40'),
(241, 2, '1032111030', 1, 'ketua', '2024-04-18 20:12:41'),
(242, 2, '1032111030', 6, 'wakil', '2024-04-18 20:12:41'),
(243, 2, '1032111015', 1, 'ketua', '2024-04-18 20:12:58'),
(244, 2, '1032111015', 4, 'wakil', '2024-04-18 20:12:58'),
(245, 2, '1032111022', 1, 'ketua', '2024-04-18 20:13:59'),
(246, 2, '1032111022', 5, 'wakil', '2024-04-18 20:13:59'),
(247, 2, '1032111048', 1, 'ketua', '2024-04-18 20:14:26'),
(248, 2, '1032111048', 5, 'wakil', '2024-04-18 20:14:26'),
(249, 2, '1032111028', 1, 'ketua', '2024-04-18 20:14:36'),
(250, 2, '1032111028', 4, 'wakil', '2024-04-18 20:14:36'),
(251, 2, '1032111040', 1, 'ketua', '2024-04-18 20:15:19'),
(252, 2, '1032111040', 5, 'wakil', '2024-04-18 20:15:19'),
(253, 2, '1032111020', 1, 'ketua', '2024-04-18 20:15:25'),
(254, 2, '1032111020', 4, 'wakil', '2024-04-18 20:15:25'),
(255, 2, '1032111045', 3, 'ketua', '2024-04-18 20:15:52'),
(256, 2, '1032111045', 6, 'wakil', '2024-04-18 20:15:52'),
(257, 2, '1032111031', 1, 'ketua', '2024-04-18 20:17:39'),
(258, 2, '1032111031', 6, 'wakil', '2024-04-18 20:17:39'),
(259, 2, '1032111042', 1, 'ketua', '2024-04-18 20:17:51'),
(260, 2, '1032111042', 4, 'wakil', '2024-04-18 20:17:51'),
(261, 2, '1032111054', 1, 'ketua', '2024-04-18 20:22:13'),
(262, 2, '1032111054', 6, 'wakil', '2024-04-18 20:22:13'),
(263, 2, '1032111044', 1, 'ketua', '2024-04-18 20:22:35'),
(264, 2, '1032111044', 6, 'wakil', '2024-04-18 20:22:35'),
(265, 2, '1032211013', 1, 'ketua', '2024-04-18 20:42:03'),
(266, 2, '1032211013', 6, 'wakil', '2024-04-18 20:42:03'),
(267, 2, '1032211008', 1, 'ketua', '2024-04-18 20:42:22'),
(268, 2, '1032211008', 6, 'wakil', '2024-04-18 20:42:22'),
(269, 2, '1032211009', 1, 'ketua', '2024-04-18 20:42:31'),
(270, 2, '1032211009', 6, 'wakil', '2024-04-18 20:42:31'),
(271, 2, '1032211020', 1, 'ketua', '2024-04-18 20:42:32'),
(272, 2, '1032211020', 6, 'wakil', '2024-04-18 20:42:32'),
(273, 2, '1032211011', 2, 'ketua', '2024-04-18 20:46:15'),
(274, 2, '1032211011', 4, 'wakil', '2024-04-18 20:46:15'),
(275, 2, '1032211015', 2, 'ketua', '2024-04-18 20:46:25'),
(276, 2, '1032211015', 4, 'wakil', '2024-04-18 20:46:25'),
(277, 2, '1032211016', 1, 'ketua', '2024-04-18 20:46:29'),
(278, 2, '1032211016', 4, 'wakil', '2024-04-18 20:46:29'),
(279, 2, '1032211021', 2, 'ketua', '2024-04-18 20:46:51'),
(280, 2, '1032211021', 4, 'wakil', '2024-04-18 20:46:51'),
(281, 2, '1032211007', 1, 'ketua', '2024-04-18 20:47:10'),
(282, 2, '1032211007', 4, 'wakil', '2024-04-18 20:47:10'),
(283, 2, '1032111041', 1, 'ketua', '2024-04-18 20:48:01'),
(284, 2, '1032111041', 4, 'wakil', '2024-04-18 20:48:01'),
(285, 2, '1032211018', 1, 'ketua', '2024-04-18 20:48:41'),
(286, 2, '1032211018', 6, 'wakil', '2024-04-18 20:48:41'),
(287, 2, '1032211006', 1, 'ketua', '2024-04-18 20:48:47'),
(288, 2, '1032211006', 4, 'wakil', '2024-04-18 20:48:47'),
(289, 2, '1032211005', 1, 'ketua', '2024-04-18 20:48:51'),
(290, 2, '1032211005', 4, 'wakil', '2024-04-18 20:48:51'),
(291, 2, '1032211012', 2, 'ketua', '2024-04-18 20:49:03'),
(292, 2, '1032211012', 6, 'wakil', '2024-04-18 20:49:03'),
(293, 2, '1032211019', 2, 'ketua', '2024-04-18 20:49:23'),
(294, 2, '1032211019', 4, 'wakil', '2024-04-18 20:49:23'),
(295, 2, '1032211004', 2, 'ketua', '2024-04-18 20:49:59'),
(296, 2, '1032211004', 4, 'wakil', '2024-04-18 20:49:59'),
(297, 2, '1032211014', 2, 'ketua', '2024-04-18 20:50:02'),
(298, 2, '1032211014', 4, 'wakil', '2024-04-18 20:50:02'),
(299, 2, '1032211002', 2, 'ketua', '2024-04-18 20:50:07'),
(300, 2, '1032211002', 5, 'wakil', '2024-04-18 20:50:07'),
(301, 2, '1032111037', 1, 'ketua', '2024-04-18 20:50:20'),
(302, 2, '1032111037', 4, 'wakil', '2024-04-18 20:50:20'),
(303, 2, '1032311051', 1, 'ketua', '2024-04-18 20:52:56'),
(304, 2, '1032311051', 4, 'wakil', '2024-04-18 20:52:56'),
(305, 2, '1032311017', 1, 'ketua', '2024-04-18 20:53:04'),
(306, 2, '1032311017', 4, 'wakil', '2024-04-18 20:53:04'),
(307, 2, '1032311056', 1, 'ketua', '2024-04-18 20:53:44'),
(308, 2, '1032311056', 4, 'wakil', '2024-04-18 20:53:44'),
(309, 2, '1032311028', 1, 'ketua', '2024-04-18 20:53:54'),
(310, 2, '1032311028', 4, 'wakil', '2024-04-18 20:53:54'),
(311, 2, '1032311036', 3, 'ketua', '2024-04-18 20:54:16'),
(312, 2, '1032311036', 4, 'wakil', '2024-04-18 20:54:16'),
(313, 2, '1032311018', 1, 'ketua', '2024-04-18 20:54:36'),
(314, 2, '1032311018', 6, 'wakil', '2024-04-18 20:54:36'),
(315, 2, '1032311007', 1, 'ketua', '2024-04-18 20:54:41'),
(316, 2, '1032311007', 6, 'wakil', '2024-04-18 20:54:41'),
(317, 2, '1032311040', 1, 'ketua', '2024-04-18 20:54:51'),
(318, 2, '1032311040', 4, 'wakil', '2024-04-18 20:54:51'),
(319, 2, '1032311006', 1, 'ketua', '2024-04-18 20:54:55'),
(320, 2, '1032311006', 4, 'wakil', '2024-04-18 20:54:55'),
(321, 2, '1032311014', 1, 'ketua', '2024-04-18 20:55:26'),
(322, 2, '1032311014', 4, 'wakil', '2024-04-18 20:55:26'),
(323, 2, '1032311011', 1, 'ketua', '2024-04-18 20:55:37'),
(324, 2, '1032311011', 4, 'wakil', '2024-04-18 20:55:37'),
(325, 2, '1032311016', 1, 'ketua', '2024-04-18 20:55:41'),
(326, 2, '1032311016', 4, 'wakil', '2024-04-18 20:55:41'),
(327, 2, '1032311037', 1, 'ketua', '2024-04-18 20:55:43'),
(328, 2, '1032311037', 4, 'wakil', '2024-04-18 20:55:43'),
(329, 2, '1032311015', 1, 'ketua', '2024-04-18 20:56:00'),
(330, 2, '1032311015', 4, 'wakil', '2024-04-18 20:56:00'),
(331, 2, '1032311022', 1, 'ketua', '2024-04-18 20:56:21'),
(332, 2, '1032311022', 4, 'wakil', '2024-04-18 20:56:21'),
(333, 2, '1032311023', 1, 'ketua', '2024-04-18 20:56:29'),
(334, 2, '1032311023', 4, 'wakil', '2024-04-18 20:56:29'),
(335, 2, '1032311027', 1, 'ketua', '2024-04-18 20:56:35'),
(336, 2, '1032311027', 4, 'wakil', '2024-04-18 20:56:35'),
(337, 2, '1032311046', 1, 'ketua', '2024-04-18 20:56:40'),
(338, 2, '1032311046', 4, 'wakil', '2024-04-18 20:56:40'),
(339, 2, '1032311001', 1, 'ketua', '2024-04-18 20:56:50'),
(340, 2, '1032311001', 4, 'wakil', '2024-04-18 20:56:50'),
(341, 2, '1032311055', 1, 'ketua', '2024-04-18 20:57:10'),
(342, 2, '1032311055', 4, 'wakil', '2024-04-18 20:57:10'),
(343, 2, '1032311030', 1, 'ketua', '2024-04-18 20:57:23'),
(344, 2, '1032311030', 4, 'wakil', '2024-04-18 20:57:23'),
(345, 2, '1032311021', 1, 'ketua', '2024-04-18 20:57:33'),
(346, 2, '1032311021', 4, 'wakil', '2024-04-18 20:57:33'),
(347, 2, '1032311034', 1, 'ketua', '2024-04-18 20:57:48'),
(348, 2, '1032311034', 4, 'wakil', '2024-04-18 20:57:48'),
(349, 2, '1032311010', 1, 'ketua', '2024-04-18 20:57:58'),
(350, 2, '1032311010', 4, 'wakil', '2024-04-18 20:57:58'),
(351, 2, '1032311058', 1, 'ketua', '2024-04-18 20:58:54'),
(352, 2, '1032311058', 4, 'wakil', '2024-04-18 20:58:54'),
(353, 2, '1032311024', 1, 'ketua', '2024-04-18 20:58:54'),
(354, 2, '1032311024', 4, 'wakil', '2024-04-18 20:58:54'),
(355, 2, '1032311033', 1, 'ketua', '2024-04-18 20:59:16'),
(356, 2, '1032311033', 4, 'wakil', '2024-04-18 20:59:16'),
(357, 2, '1032311008', 1, 'ketua', '2024-04-18 20:59:19'),
(358, 2, '1032311008', 4, 'wakil', '2024-04-18 20:59:19'),
(359, 2, '1032311003', 1, 'ketua', '2024-04-18 21:00:02'),
(360, 2, '1032311003', 4, 'wakil', '2024-04-18 21:00:02'),
(361, 2, '1032311052', 2, 'ketua', '2024-04-18 21:00:06'),
(362, 2, '1032311052', 4, 'wakil', '2024-04-18 21:00:06'),
(363, 2, '1032311032', 1, 'ketua', '2024-04-18 21:00:16'),
(364, 2, '1032311032', 4, 'wakil', '2024-04-18 21:00:16'),
(365, 2, '1032311026', 1, 'ketua', '2024-04-18 21:00:37'),
(366, 2, '1032311026', 4, 'wakil', '2024-04-18 21:00:37'),
(367, 2, '1032311042', 1, 'ketua', '2024-04-18 21:00:49'),
(368, 2, '1032311042', 4, 'wakil', '2024-04-18 21:00:49'),
(369, 2, '1032311039', 1, 'ketua', '2024-04-18 21:01:02'),
(370, 2, '1032311039', 4, 'wakil', '2024-04-18 21:01:02'),
(371, 2, '1032311053', 1, 'ketua', '2024-04-18 21:01:16'),
(372, 2, '1032311053', 4, 'wakil', '2024-04-18 21:01:16'),
(373, 2, '1032311043', 2, 'ketua', '2024-04-18 21:01:19'),
(374, 2, '1032311043', 4, 'wakil', '2024-04-18 21:01:19'),
(375, 2, '1032311049', 1, 'ketua', '2024-04-18 21:01:35'),
(376, 2, '1032311049', 4, 'wakil', '2024-04-18 21:01:35'),
(377, 2, '1032311050', 1, 'ketua', '2024-04-18 21:01:55'),
(378, 2, '1032311050', 4, 'wakil', '2024-04-18 21:01:55'),
(379, 2, '1032311012', 1, 'ketua', '2024-04-18 21:02:06'),
(380, 2, '1032311012', 4, 'wakil', '2024-04-18 21:02:06'),
(381, 2, '1032311045', 1, 'ketua', '2024-04-18 21:02:15'),
(382, 2, '1032311045', 4, 'wakil', '2024-04-18 21:02:15'),
(383, 2, '1032311044', 1, 'ketua', '2024-04-18 21:02:29'),
(384, 2, '1032311044', 4, 'wakil', '2024-04-18 21:02:29'),
(385, 2, '1032311031', 1, 'ketua', '2024-04-18 21:02:41'),
(386, 2, '1032311031', 4, 'wakil', '2024-04-18 21:02:41'),
(387, 2, '1032311004', 1, 'ketua', '2024-04-18 21:02:44'),
(388, 2, '1032311004', 4, 'wakil', '2024-04-18 21:02:44'),
(389, 2, '1032311009', 1, 'ketua', '2024-04-18 21:03:06'),
(390, 2, '1032311009', 4, 'wakil', '2024-04-18 21:03:06'),
(391, 2, '1032311020', 1, 'ketua', '2024-04-18 21:04:08'),
(392, 2, '1032311020', 4, 'wakil', '2024-04-18 21:04:08'),
(393, 2, '1032311029', 1, 'ketua', '2024-04-18 21:04:39'),
(394, 2, '1032311029', 4, 'wakil', '2024-04-18 21:04:39'),
(395, 2, '1032111005', 1, 'ketua', '2024-04-18 21:04:55'),
(396, 2, '1032111005', 4, 'wakil', '2024-04-18 21:04:55'),
(397, 2, '1032111004', 1, 'ketua', '2024-04-18 21:05:09'),
(398, 2, '1032111004', 4, 'wakil', '2024-04-18 21:05:09'),
(399, 2, '1032111046', 1, 'ketua', '2024-04-18 21:06:18'),
(400, 2, '1032111046', 5, 'wakil', '2024-04-18 21:06:18'),
(401, 2, '1032111051', 1, 'ketua', '2024-04-18 21:08:09'),
(402, 2, '1032111051', 5, 'wakil', '2024-04-18 21:08:09'),
(403, 2, '1032311038', 1, 'ketua', '2024-04-18 21:09:32'),
(404, 2, '1032311038', 4, 'wakil', '2024-04-18 21:09:32'),
(405, 2, '1032311013', 2, 'ketua', '2024-04-18 21:09:43'),
(406, 2, '1032311013', 5, 'wakil', '2024-04-18 21:09:43'),
(407, 2, '1032311025', 1, 'ketua', '2024-04-18 21:09:55'),
(408, 2, '1032311025', 4, 'wakil', '2024-04-18 21:09:55'),
(409, 2, '1032011040', 2, 'ketua', '2024-04-18 21:12:51'),
(410, 2, '1032011040', 6, 'wakil', '2024-04-18 21:12:51'),
(411, 2, '1032311048', 2, 'ketua', '2024-04-18 21:18:27'),
(412, 2, '1032311048', 6, 'wakil', '2024-04-18 21:18:27'),
(413, 2, '1032311035', 3, 'ketua', '2024-04-18 21:18:38'),
(414, 2, '1032311035', 5, 'wakil', '2024-04-18 21:18:38'),
(415, 2, '1032311047', 2, 'ketua', '2024-04-18 21:18:57'),
(416, 2, '1032311047', 5, 'wakil', '2024-04-18 21:18:57'),
(417, 2, '1032311057', 1, 'ketua', '2024-04-18 21:19:04'),
(418, 2, '1032311057', 5, 'wakil', '2024-04-18 21:19:04'),
(419, 2, '1032311041', 2, 'ketua', '2024-04-18 21:19:44'),
(420, 2, '1032311041', 4, 'wakil', '2024-04-18 21:19:44'),
(421, 2, '1032211027', 1, 'ketua', '2024-04-18 21:31:08'),
(422, 2, '1032211027', 6, 'wakil', '2024-04-18 21:31:08'),
(423, 2, '1032211045', 1, 'ketua', '2024-04-18 21:36:06'),
(424, 2, '1032211045', 4, 'wakil', '2024-04-18 21:36:06'),
(425, 2, '1032211024', 3, 'ketua', '2024-04-18 21:36:12'),
(426, 2, '1032211024', 4, 'wakil', '2024-04-18 21:36:12'),
(427, 2, '1032211039', 1, 'ketua', '2024-04-18 21:36:14'),
(428, 2, '1032211039', 4, 'wakil', '2024-04-18 21:36:14'),
(429, 2, '1032211025', 1, 'ketua', '2024-04-18 21:36:18'),
(430, 2, '1032211025', 4, 'wakil', '2024-04-18 21:36:18'),
(431, 2, '1032211058', 1, 'ketua', '2024-04-18 21:36:27'),
(432, 2, '1032211058', 4, 'wakil', '2024-04-18 21:36:27'),
(433, 2, '1032211054', 3, 'ketua', '2024-04-18 21:37:03'),
(434, 2, '1032211054', 5, 'wakil', '2024-04-18 21:37:03'),
(435, 2, '1032211059', 1, 'ketua', '2024-04-18 21:38:04'),
(436, 2, '1032211059', 4, 'wakil', '2024-04-18 21:38:04'),
(437, 2, '1032211050', 1, 'ketua', '2024-04-18 21:38:04'),
(438, 2, '1032211050', 4, 'wakil', '2024-04-18 21:38:04'),
(439, 2, '1032211056', 2, 'ketua', '2024-04-18 21:42:42'),
(440, 2, '1032211056', 5, 'wakil', '2024-04-18 21:42:42'),
(441, 2, '1032211048', 2, 'ketua', '2024-04-18 21:43:23'),
(442, 2, '1032211048', 5, 'wakil', '2024-04-18 21:43:23'),
(443, 2, '1032211061', 1, 'ketua', '2024-04-18 21:57:44'),
(444, 2, '1032211061', 4, 'wakil', '2024-04-18 21:57:44'),
(445, 2, '1032211062', 2, 'ketua', '2024-04-18 21:58:00'),
(446, 2, '1032211062', 4, 'wakil', '2024-04-18 21:58:00'),
(447, 2, '1032211052', 3, 'ketua', '2024-04-18 21:58:14'),
(448, 2, '1032211052', 4, 'wakil', '2024-04-18 21:58:14'),
(449, 2, '1032211079', 3, 'ketua', '2024-04-18 21:58:27'),
(450, 2, '1032211079', 4, 'wakil', '2024-04-18 21:58:27'),
(451, 2, '1032211060', 3, 'ketua', '2024-04-18 21:58:35'),
(452, 2, '1032211060', 4, 'wakil', '2024-04-18 21:58:35'),
(453, 2, '1032211055', 2, 'ketua', '2024-04-18 21:58:58'),
(454, 2, '1032211055', 4, 'wakil', '2024-04-18 21:58:58'),
(455, 2, '1032211047', 2, 'ketua', '2024-04-18 21:58:59'),
(456, 2, '1032211047', 4, 'wakil', '2024-04-18 21:58:59'),
(457, 2, '1032311054', 1, 'ketua', '2024-04-18 22:04:01'),
(458, 2, '1032311054', 4, 'wakil', '2024-04-18 22:04:01'),
(459, 2, '1032211049', 3, 'ketua', '2024-04-18 22:06:38'),
(460, 2, '1032211049', 4, 'wakil', '2024-04-18 22:06:38'),
(461, 2, '1032211069', 1, 'ketua', '2024-04-18 22:08:20'),
(462, 2, '1032211069', 6, 'wakil', '2024-04-18 22:08:20'),
(463, 2, '1032211066', 1, 'ketua', '2024-04-18 22:08:38'),
(464, 2, '1032211066', 6, 'wakil', '2024-04-18 22:08:38'),
(465, 2, '1032211072', 2, 'ketua', '2024-04-18 22:08:50'),
(466, 2, '1032211072', 4, 'wakil', '2024-04-18 22:08:50'),
(467, 2, '1032211067', 1, 'ketua', '2024-04-18 22:08:59'),
(468, 2, '1032211067', 4, 'wakil', '2024-04-18 22:08:59'),
(469, 2, '1032211064', 2, 'ketua', '2024-04-18 22:09:19'),
(470, 2, '1032211064', 6, 'wakil', '2024-04-18 22:09:19'),
(471, 2, '1032211001', 1, 'ketua', '2024-04-18 22:19:35'),
(472, 2, '1032211001', 6, 'wakil', '2024-04-18 22:19:35'),
(473, 2, '1032211070', 3, 'ketua', '2024-04-18 22:19:39'),
(474, 2, '1032211070', 6, 'wakil', '2024-04-18 22:19:39'),
(475, 2, '1032111018', 1, 'ketua', '2024-04-18 22:19:49'),
(476, 2, '1032111018', 4, 'wakil', '2024-04-18 22:19:49'),
(477, 2, '1032211068', 1, 'ketua', '2024-04-18 22:20:02'),
(478, 2, '1032211068', 5, 'wakil', '2024-04-18 22:20:02'),
(479, 2, '1032211078', 1, 'ketua', '2024-04-18 22:20:13'),
(480, 2, '1032211078', 6, 'wakil', '2024-04-18 22:20:13'),
(481, 2, '1032211063', 2, 'ketua', '2024-04-18 22:25:02'),
(482, 2, '1032211063', 6, 'wakil', '2024-04-18 22:25:02'),
(483, 2, '1032211075', 2, 'ketua', '2024-04-18 22:25:03'),
(484, 2, '1032211075', 4, 'wakil', '2024-04-18 22:25:03'),
(485, 2, '1032211065', 1, 'ketua', '2024-04-18 22:25:22'),
(486, 2, '1032211065', 5, 'wakil', '2024-04-18 22:25:22'),
(491, 2, '1032211076', 2, 'ketua', '2024-04-18 22:25:35'),
(492, 2, '1032211076', 5, 'wakil', '2024-04-18 22:25:35'),
(493, 2, '1032211077', 1, 'ketua', '2024-04-18 22:25:40'),
(494, 2, '1032211077', 5, 'wakil', '2024-04-18 22:25:40'),
(495, 2, '1032111064', 1, 'ketua', '2024-04-18 22:28:00'),
(496, 2, '1032111064', 4, 'wakil', '2024-04-18 22:28:00'),
(497, 2, '1032111067', 2, 'ketua', '2024-04-18 22:28:12'),
(498, 2, '1032111067', 5, 'wakil', '2024-04-18 22:28:12'),
(499, 2, '1032111070', 1, 'ketua', '2024-04-18 22:31:12'),
(500, 2, '1032111070', 4, 'wakil', '2024-04-18 22:31:12'),
(501, 2, '1032011073', 1, 'ketua', '2024-04-18 22:33:26'),
(502, 2, '1032011073', 4, 'wakil', '2024-04-18 22:33:26'),
(505, 2, '1032111066', 1, 'ketua', '2024-04-18 22:44:10'),
(506, 2, '1032111066', 4, 'wakil', '2024-04-18 22:44:10'),
(507, 2, '1032111058', 3, 'ketua', '2024-04-18 22:46:03'),
(508, 2, '1032111058', 4, 'wakil', '2024-04-18 22:46:03'),
(511, 2, '1032111062', 1, 'ketua', '2024-04-18 22:54:54'),
(512, 2, '1032111062', 4, 'wakil', '2024-04-18 22:54:54'),
(513, 2, '1032111060', 2, 'ketua', '2024-04-18 22:59:59'),
(514, 2, '1032111060', 5, 'wakil', '2024-04-18 22:59:59'),
(521, 2, '0402040003', 3, 'ketua', '2024-05-29 09:25:00'),
(522, 2, '0402040003', 6, 'wakil', '2024-05-29 09:25:00');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `visi`
--

CREATE TABLE `visi` (
  `id_visi` int(8) NOT NULL,
  `visi` varchar(512) NOT NULL,
  `id_calon` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `visi`
--

INSERT INTO `visi` (`id_visi`, `visi`, `id_calon`) VALUES
(7, 'Menjadikan senat mahasiswa sebagai wadah menampung aspirasi seluruh mahasiswa dan mewujudkan senat yang terpercaya, komunikatif, dan aktif, dan juga membentuk mahasiswa yang aktif dan disiplin.', 1),
(8, 'Mewujudkan Senat Mahasiswa yang mandiri,kolaboratif,kreatif,dan inovatif guna membentuk generasi muda yang unggul', 2),
(9, 'Mewujudkan senat mahasiswa D3 Farmasi yang terbuka, kreatif, dan bertanggung jawab dalam setiap kegiatan D3 Farmasi Yayasan Pharmasi semarang.', 3),
(10, 'Menjadikan organisasi senat mahasiswa sebagai wadah yang berintegritas, komunikatif, aspiratif, dan kreatif yang mengedepankan keaktifan serta pertanggung jawaban agar terwujudnya harmonisasi, menginovasi, dan meningkatkan kualitas sosial personal', 4),
(11, 'Membentuk organisasi pendidikan yang berperan aktif dalam mengembangkan pengetahuan dan kualitas di bidang farmasi serta memberikan manfaat kepada masyarakat.', 5),
(12, 'Menjadikan senat mahasiswa sebagai tempat menampung dan penerima aspirasi dan inspirasi mahasiswa dalam membentuk organisasi yang aktif dalam  pergerakakan mewujudkan mahasiswa yang kompeten dan memiliki jiwa simpatik terhadap problematika yg terjadi, dan juga mewujudkan sema menjadi organisasi yang berintegritas, progresif, dan berkualitas.', 6);

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
  MODIFY `id_misi` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `suara`
--
ALTER TABLE `suara`
  MODIFY `id_suara` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=523;

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
