-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 01, 2022 at 07:24 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `logmipa`
--

-- --------------------------------------------------------

--
-- Table structure for table `alat`
--

CREATE TABLE `alat` (
  `id` int(10) NOT NULL,
  `nama_alat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `alat`
--

INSERT INTO `alat` (`id`, `nama_alat`) VALUES
(1, 'Printer Ink Jet'),
(2, 'AC'),
(3, 'Pintu'),
(4, 'Lampu'),
(5, 'Plavon'),
(6, 'Stop Kontak'),
(7, 'Saklar'),
(8, 'VGA'),
(9, 'PC Unit'),
(10, 'Mouse'),
(11, 'Keyboard'),
(12, 'Lemari Es'),
(13, 'Projector'),
(14, 'Keramik'),
(15, 'Mesin Air'),
(16, 'Printer '),
(17, 'Mesin Fotocopy'),
(18, 'Gembok / alat Pengunci lainnya'),
(19, 'MCB'),
(20, 'Lampu TL'),
(21, 'HUB '),
(22, 'Lampu SL( Biasa)');

-- --------------------------------------------------------

--
-- Table structure for table `laporan`
--

CREATE TABLE `laporan` (
  `id` int(10) NOT NULL,
  `nip` varchar(18) NOT NULL,
  `nama_jurusan` varchar(10) NOT NULL,
  `tanggal_lapor` date NOT NULL,
  `kode_barang` varchar(55) NOT NULL,
  `jawab_ruang` varchar(30) NOT NULL,
  `nama_alat` varchar(50) NOT NULL,
  `merk` varchar(30) NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `laporan`
--

INSERT INTO `laporan` (`id`, `nip`, `nama_jurusan`, `tanggal_lapor`, `kode_barang`, `jawab_ruang`, `nama_alat`, `merk`, `deskripsi`) VALUES
(15, '196405051990021001', 'Matematika', '2019-02-18', '0', '', '0', 'Gembok', 'Kunci gembok ruang laboratorium koputasi rusak mohon penggantian'),
(16, '195907011990022001', 'Biologi', '2019-02-18', '001', '', 'Pintu', '-', 'Kunci Patah'),
(17, '196405051990021001', 'Matematika', '2019-02-22', '0', '', 'AC', 'lg', 'Ac ruang Kajur Matematika. Remote control tidak berfungsi, menggunakan saclar MCB juga tidak mau.'),
(18, '196405051990021001', 'Matematika', '2019-02-22', '0', '', '0', 'PINTU ALUMINIUM', 'Ruang pak TPN Nababan, pintu aluminiumnya menggeser kelantai dan saat ini hanya bisa dibuka sepertiga.  Hal yang sama juga berlaku untuk beberapa ruang dosen di gedung epsilon'),
(20, '197409302003121001', 'Ilkom', '2019-02-23', 'Labor Sistem Komputer', '', 'Lampu', 'LED 21 WATT', 'Mati'),
(21, '197409302003121001', 'Ilkom', '2019-02-23', 'Labor Sistem Komputer', '', 'MCB', '', 'Sering mati sendiri'),
(22, '197409302003121001', 'Ilkom', '2019-02-23', '0', '', 'AC', 'Panasonic', 'Mati'),
(23, '197409302003121001', 'Ilkom', '2019-02-23', 'Labor Sistem Terdistribusi', '', 'MCB', '', 'Sering mati sendiri'),
(24, '197409302003121001', 'Ilkom', '2019-02-23', 'Labor Sistem Terdistribusi', '', 'Lampu', '', 'Mati'),
(25, '197409302003121001', 'Ilkom', '2019-02-23', 'Labor EDP', '', 'Projector', 'Sony', 'Warna layar biru, tidak normal'),
(26, '197409302003121001', 'Ilkom', '2019-02-23', 'Labor EDP', '', 'Projector', 'Kabel projector', 'Pin patah'),
(27, '197409302003121001', 'Ilkom', '2019-02-23', 'Labor EDP', '', 'Gembok / alat Pengunci lainnya', 'Penyangga pintu', 'Rusak. tak bisa menutup'),
(28, '197409302003121001', 'Ilkom', '2019-02-23', 'Toilet Lantai 2 Gedung ILKOM', '', 'Lampu', '', 'Mati'),
(29, '197409302003121001', 'Ilkom', '2019-02-23', 'Labor Multimedia', '', 'AC', 'LG', 'Berbunyi berisik'),
(30, '197409302003121001', 'Ilkom', '2019-02-23', 'Toilet Lantai 1 Gedung ILKOM', '', 'Lampu', '', 'Mati'),
(31, '196405051990021001', 'Matematika', '2019-02-25', '0', '', 'Lampu', '', 'Semua lampu loteng (corridor) ruang dosen matematika di gedung Epsilon putus dan tidak hidup, suasana jadi gelap.'),
(32, '196405051990021001', 'Matematika', '2019-02-25', '0', '', 'Lampu', 'Neon 40 w', 'Dua lampu ruang baca (perpustakaan) matematika di gedung epsilon putus dan ruang baca jadi kurang terang, karena hanya diterangi 2 lampu dari 4 lampu seharusnya.'),
(33, '196405051990021001', 'Matematika', '2019-02-25', '0', '', '0', 'AXIOO/MONITOR', 'Monitor axioo 5 unit Mati, kena petir beberapa bulan yll'),
(34, '196405051990021001', 'Matematika', '2019-02-25', '0', '', 'AC', 'Changhong', 'AC Ruang seminar Matematika B, Mati, tidak berfungsi.'),
(35, '196405051990021001', 'Matematika', '2019-02-25', '0', '', 'AC', 'Changhong', 'AC diruang administrasi Jurusan Matematika, tidak berfungsi menggunakan remote, kalau NCB digunakan untuk menghidupkan sebentar akan balik, sehingga AC mati lagi'),
(36, '', 'Matematika', '2019-02-25', '', '', '', '', ''),
(37, '196405051990021001', 'Matematika', '2019-02-26', '12 epsilon', '', 'Lampu', 'Neon 20 w', 'Lampu ruang pak sigit terdiri dari 4 lampu neon 20 w. Saat ini yang hidup hanya 2 sehingga kurang terang sehingga pekerjaan terganggu. Mohon ganti segera'),
(38, '196405051990021001', 'Matematika', '2019-02-27', '17 epsilon', '', 'Lampu', 'Neon 20 w', 'Lampu ruang ada 4 buah neon 20 watt, hanya 1 yang hidup, 2 mati dan 1 lagi selalu berkedip, sangat mengganggu, mohon dintaklanjuti'),
(39, '197409302003121001', 'Ilkom', '2019-02-28', 'Gedung Kuliah 103', '', 'Projector', '', 'Tampilan tidak normal (biru)'),
(40, '197409302003121001', 'Ilkom', '2019-02-28', 'Gedung Kuliah 301', '', 'Lampu', 'Pijar 1 dan Neon 4', 'Mati '),
(41, '197409302003121001', 'Ilkom', '2019-02-28', 'Gedung Kuliah 301', '', 'AC', '', 'Mati'),
(42, '197409302003121001', 'Ilkom', '2019-02-28', 'Gedung Kuliah 303', '', 'Keramik', '', 'Menggembung dan berbunyi derik ketika dipijak'),
(43, '197409302003121001', 'Ilkom', '2019-02-28', 'Gedung Kuliah 303', '', 'Lampu', 'Neon 2 buah', 'Mati'),
(44, '197409302003121001', 'Ilkom', '2019-02-28', 'Gedung Kuliah 309', '', 'Projector', '', 'Kabel projector rusak, tak bisa dipakai'),
(45, '', 'Matematika', '2019-03-21', '', '', '', '', ''),
(46, '196405051990021001', 'Matematika', '2019-03-21', '07 delta Seminar A', '', 'AC', 'Panasonic', 'AC tidak dingin yang keluar hanya angin saja, kalau dilihat dari luat mesin tak hidup'),
(47, '', 'Matematika', '2019-03-21', '', '', '', '', ''),
(48, '196405051990021001', 'Matematika', '2019-03-21', '09 delta (Ruang ADM Jurusan)', '', 'AC', 'Panasonic', 'Bocor, air menetes dari mesin AC, sangat mengganggu, karena letak AC tepat di jendela pelayanan.'),
(49, '196405051990021001', 'Matematika', '2019-03-26', '13 Delta Lab Komputasi', '', 'AC', 'Panasonic 2PK', 'AC tak mau hidup, umur AC masih baru,, mohon segera, karena terasa sangat panas '),
(50, '196405051990021001', 'Matematika', '2019-04-10', '07 delta Seminar A', '', 'Lampu', 'Lampu TL', 'Bola lampu berkedip satu buah, sangat mengganggu'),
(51, '', 'Matematika', '2019-04-29', '', '', '', '', ''),
(52, '', 'Matematika', '2019-04-29', '', '', '', '', ''),
(53, '196405051990021001', 'Matematika', '2019-04-29', '02 delta', '', 'AC', 'Changhong', 'AC bocor, air keluar dari Indoor Panel.  Mohon segera diperbaiki, karena letak AC persis di kursi Dr. Srigemawati'),
(54, '196108141987022001', 'Kimia', '2019-05-10', '0', '', 'Mesin Air', '', 'Mesin tdk jalan di Lab Analitik'),
(55, '196108141987022001', 'Kimia', '2019-05-10', '0', '', '0', '', 'Kursi besi lobi Jurusan patah/Lepas dibagian las '),
(56, '', 'Matematika', '2019-05-10', '', '', '', '', ''),
(57, '196405051990021001', 'Matematika', '2019-05-10', '10 delta', '', 'Pintu', 'PINTU ALUMINIUM', 'Pintu masuk ke ruangan menggeser ke keramik, kalau dibiar lama bisa merusak kerangka pintu danmungkin mengakibatkan kaca pecah'),
(58, '196108141987022001', 'Kimia', '2019-05-17', '0', '', 'AC', 'LG', 'Ac bocor menyebabkan air tergenang di teras dan dalam ruangan sidang 1 Jurusan Kimia'),
(59, '197409302003121001', 'Ilkom', '2019-05-20', 'R. Astried', '', 'AC', 'Panasonic', 'Listrik tidak stabil, AC dan Komputer sering mati'),
(60, '197409302003121001', 'Ilkom', '2019-05-20', 'R. Yanti Andriyani', '', 'AC', 'LG', 'Tidak dingin'),
(61, '196108141987022001', 'Kimia', '2019-05-22', '0', '', 'Plavon', '', 'Plavon ruang gudang Jurusan Kimia bocor'),
(62, '197409302003121001', 'Ilkom', '2019-05-24', 'Labor Sistem Terdistribusi', '', 'AC', 'Panasonic', 'Keluar air dari AC'),
(63, '196108141987022001', 'Kimia', '2019-06-12', '0', '', 'Plavon', '', 'Atap diatas plvon bocor di labor Anorganik bagian yang menghadap labor Biologi'),
(64, '196108141987022001', 'Kimia', '2019-06-17', '0', '', 'Mesin Fotocopy', 'Canon', 'Peper jammed : setiap akan print kertas terjepit/menggulung didalam mesin fotocopy'),
(65, '196405051990021001', 'Matematika', '2019-06-20', '09 delta (Ruang ADM Jurusan)', '', 'AC', 'lg', 'Outdoor tidak hidup sehingga yang keluar angin saja. Mohon segera, agar pegawai nyaman bekerja'),
(66, '', 'Matematika', '2019-06-20', '', '', '', '', ''),
(67, '196405051990021001', 'Matematika', '2019-06-20', '03 delta', '', 'AC', 'lg', 'AC mati tak bisa dihidupkan dengan remote atau menggunakan MCB, mohon perbaikan segera, mengganggu kinerja koordinator prodi statistika\r\n'),
(68, '196405051990021001', 'Matematika', '2019-06-20', '00 Toilet 2 Delta', '', 'Lampu', 'Lampu Pijar', 'Bola lampu tiolet putus, sehingga gelap, sulit untuk digunakan'),
(69, '196405051990021001', 'Matematika', '2019-06-28', '00 Koridor Delta', '', 'Lampu', 'Neon 40 w', 'Bola Mati perlu diganti'),
(70, '196405051990021001', 'Matematika', '2019-07-04', '07 delta Seminar A', '', 'AC', '', 'Salah satu mesin ac yang berdekatan dengan ruang seminar delta 07 sangat bergetar sehingga mengganggu kegiatan semianr atau rapat'),
(71, '196405051990021001', 'Matematika', '2019-07-04', '14 epsilon', '', 'AC', 'lg', 'AC barusan dibersihak lebih kurang 2 minggu yll, tapi sampai sekarang tidak dingin, mohon periksa ulang dan solusinya, agar dosen betah diruangan'),
(72, '197409302003121001', 'Ilkom', '2019-07-08', 'R. Yanti Andriyani', '', 'AC', 'LG', 'Tidak dingin'),
(73, '197409302003121001', 'Ilkom', '2019-07-08', 'Labor Multimedia', '', 'Lampu', 'Hanoc', 'Putus'),
(74, '197409302003121001', 'Ilkom', '2019-07-08', 'Labor EDP', '', 'AC', 'LG', 'Kurang dingin'),
(75, '196108141987022001', 'Kimia', '2019-07-09', '0', '', 'Projector', 'Benq', 'Projector mati mendadak (rusak)'),
(76, '197409302003121001', 'Ilkom', '2019-07-09', 'Labor Sistem Terdistribusi', '', 'Lampu', 'Hanoc', 'Mati'),
(77, '197409302003121001', 'Ilkom', '2019-07-09', 'Ruang Tamu Lantai 2', '', 'Lampu', 'Hanoc', 'Mati'),
(78, '197409302003121001', 'Ilkom', '2019-07-09', 'Ruang Rapat', '', 'Projector', 'BenQ', 'Kabel rusak sehingga tampilan ke layar warna merah, hijau, kuning dll'),
(79, '196803261992031001', 'Fisika', '2019-07-11', '0', '', 'PC Unit', 'VGA', 'kerusakan pada monitor, dan CPU Komputer'),
(80, '196803261992031001', 'Fisika', '2019-07-11', '0', '', 'AC', 'LG', 'KERUSAKAN AC PADA RUANG KAPRODI S1 FISIKA'),
(81, '196803261992031001', 'Fisika', '2019-07-11', '0', '', 'Lampu', 'PHILIP', '8 BUAH LAMPU RUSAK DI RUANG JURUSAN FISIKA'),
(82, '196803261992031001', 'Fisika', '2019-07-11', '0', '', 'Pintu', 'PINTU PIBER', 'RUSAK PINTU  TOILET JURUSAN'),
(83, '196405051990021001', 'Matematika', '2019-07-12', '01 Halaman Selatan', '', 'Mesin Air', 'Shimizu', 'Mesin Mati sehingga air tidak ada, sangat urgen'),
(84, '196803261992031001', 'Fisika', '2019-07-18', '0', '', 'Lampu', 'PHILIP', 'bOLA LAMPU DAN ANTENA TV, DI LAB. FISIKA TERAPAN  (lAZUARDI)'),
(85, '196803261992031001', 'Fisika', '2019-07-18', '0', '', 'AC', 'LG', 'AC  BASAH  DI LAB. FISIKA TERAPAN (LAZUARDI)'),
(86, '196803261992031001', 'Fisika', '2019-07-18', '0', '', 'Gembok / alat Pengunci lainnya', 'PEMANGKASAN RUMPUT DI AREAL LA', 'PEMANGKASAN RUMPUT DI AREAL LABORATORIUM FISIKA TERAPAN'),
(87, '196803261992031001', 'Fisika', '2019-07-18', '0', '', 'Gembok / alat Pengunci lainnya', 'LAINNYA', 'KERUSAKAN WC, SALURAN AIRN PECAH,CAT DINDING WC, SEDOT SEPTIK TANK WC'),
(88, '196405051990021001', 'Matematika', '2019-07-25', '00 Koridor Delta', '', 'Lampu', 'Neon 40 w', 'Lampu koridor satu matidan satu lagi sudah redup, megganggu kenyamanan bekerja'),
(89, '196108141987022001', 'Kimia', '2019-07-25', '0', '', 'AC', 'LG', 'Ac bocor menyebabkan air melimpah ke dalam ruangan dan teras lantai ruang seminar I Jurusan Kimia FMIPA Unri'),
(90, '197409302003121001', 'Ilkom', '2019-07-29', 'Labor Sistem Komputer', '', 'AC', 'Panasonic', 'Tidak dingin. pada indoor hanya angin yang keluar, AC setiap 15 menit mati. Pada  bagian outdoor freeon beku (tidak keluar)'),
(91, '197409302003121001', 'Ilkom', '2019-07-29', 'Labor Sistem Terdistribusi', '', 'AC', 'LG', 'Tidak dingin karena freon bocor'),
(92, '196108141987022001', 'Kimia', '2019-07-29', '0', '', 'Lampu', '', 'Lampu kedap-kedip 1 dan 1 mati di kamar mandi dan 1 lampu mati di gudang Jurusan Kimia'),
(93, '196803261992031001', 'Fisika', '2019-07-29', '0', '', 'Printer Ink Jet', 'epson /l350', 'hasil cetak tidak jlas, di Lab. Pak Lazuardi'),
(94, '196803261992031001', 'Fisika', '2019-07-29', '0', '', 'Lampu', 'TL 2X 20 W', 'PUTUS DI L;AB. PAK LAZUARDI'),
(95, '196803261992031001', 'Fisika', '2019-07-29', '0', '', 'Lampu', 'BOHLAM 5W', 'PUTUS DI LAB. LAZUARDI'),
(96, '196803261992031001', 'Fisika', '2019-07-29', '0', '', 'AC', 'LG', 'PEMBERSIHAN DI LAB. PAK LAZUARDI'),
(97, '195907011990022001', 'Biologi', '2019-07-31', '0', '', 'AC', '', '1. Pemindahan AC dari ruang Sekretaris Jurusan ke ruang ketua Jurusan.\r\n2. Pemindahan AC dari ruang Ketua Jurusan ke ruang Rapat Jurusan Biologi Lantai 2.'),
(98, '195907011990022001', 'Biologi', '2019-07-31', '0', '', 'Stop Kontak', '', 'perbaikan instalasi listrik yang ada di biologi berhubung karena ada renovasi jurusan'),
(99, '196108141987022001', 'Kimia', '2019-08-01', '0', '', 'Lampu', '', 'Lampu mushola Jurusan Kimia putus/mati 1 buah, kamar kecil laki2 labor HPLC mati 1 buah. jadi total bola lampu mati sebanyak 2 buah'),
(100, '196405051990021001', 'Matematika', '2019-08-12', '15 epsilon', '', 'PC Unit', 'Asus', 'Power suplay rusak, komputer sering mati mendadak'),
(101, '196108141987022001', 'Kimia', '2019-08-13', '0', '', 'Mesin Fotocopy', '', 'Mesin saat ditutup bagian belakang setelah menarik kertas yg tersangkut berbunyi dan tdk bs mengcopi'),
(102, '197409302003121001', 'Ilkom', '2019-08-16', 'R. Astried', '', 'AC', 'Panasonic', 'AC mati hidup, akibat tegangan tidak stabil dan setelah di cek oleh Yani ternyata instalasi listriknya tergabung dengan listrik untuk PC komputer'),
(103, '196405051990021001', 'Matematika', '2019-08-16', '09 epsilon', '', 'Lampu', 'TL / neon', 'Lampu ada 2 dan satu  putus sehingga ruang baca gelap, sulut mencari buku yang diperlukan karena ruang gelap'),
(104, '196405051990021001', 'Matematika', '2019-08-19', '11 delta/ Ruang Kajur', '', '0', 'Hub jaringan', 'Jaringan tidak terdistribusi, karena hub 5 port rusak (tidak berfungsi)'),
(105, '196108141987022001', 'Kimia', '2019-08-19', '0', '', 'AC', '', 'Ac ruang Kepala Labor Analitik di Labor Analitik mati/tidak hidup'),
(106, '196108141987022001', 'Kimia', '2019-08-21', '0', '', 'Lampu', 'Hannochs', 'Lampu ruang Kajur Kimia mati dan untuk sementara memakai lampu ruang seminar I'),
(107, '196108141987022001', 'Kimia', '2019-08-21', '0', '', 'Projector', 'Infocus', 'Projector tdk hidup di ruang Seminar II Jurusan Kimia FMIPA Unri'),
(108, '196803261992031001', 'Fisika', '2019-08-23', '0', '', 'AC', 'LG', 'berbunyi, di ruang Administrasi jurusan'),
(109, '196803261992031001', 'Fisika', '2019-08-23', '0', '', 'Mesin Fotocopy', 'mesin copy', 'rusak,  (mesin foto copy yang ada di ruang administrasi jurusan)'),
(110, '196108141987022001', 'Kimia', '2019-08-26', '0', '', 'PC Unit', 'Compac ', 'Sering eror/hang saat digunakan'),
(111, '196803261992031001', 'Fisika', '2019-08-26', '0', '', 'AC', 'LG', 'rusak, di Ruang baca Jurusan Fisika'),
(112, '195907011990022001', 'Biologi', '2019-08-27', '0', '', 'AC', '', 'Pemindahan posisi AC ruangan dosen baru di lantai 2, dari pinggir ke tengah dan agak naik ke atas.'),
(113, '195907011990022001', 'Biologi', '2019-08-27', '0', '', 'AC', '', 'Pemindahan posisi AC yang ada di ruang rapat lama jadi ketengah. sehingga suhu AC dapat menyebar ke ruang lain'),
(114, '', 'Biologi', '2019-08-27', '', '', '', '', ''),
(115, '195907011990022001', 'Biologi', '2019-08-27', '0', '', 'VGA', '', 'Pemasangan Jaringan internet di setiap ruang dosen dan staf yang ada di biologi'),
(116, '', 'Biologi', '2019-08-27', '', '', '', '', ''),
(117, '195907011990022001', 'Biologi', '2019-08-27', '0', '', 'Lemari Es', '', 'tidak bisa dipakai lagi dan sudah diserahkan ke bagian perlengkapan sehingga biologi tidak mempunyai lemari es'),
(118, '195907011990022001', 'Biologi', '2019-08-27', '0', '', 'Lampu', '', 'penggantian bola Lampu di ruang rapat lama yang sudah lama mati'),
(119, '196108141987022001', 'Kimia', '2019-08-28', '0', '', '0', '', 'Penggantian kran dan pipa air di Laboratorium Anorganik Kimia FMIPA Unri'),
(120, '196405051990021001', 'Matematika', '2019-08-28', '15 epsilon', '', 'Printer ', 'hp/hp2135', 'Tidak mau menarik kertas'),
(121, '196108141987022001', 'Kimia', '2019-08-30', '0', '', '0', '', 'Beberapa kerusakan di Labor Biokimia :\r\n1. Instalasi listrik untuk UV-Lamp di Laminar Air Flow\r\n2. Waterbath tidak nyala\r\n3. Ac ruang OLP/Asisten dan Ac ruang semisteril \r\n4. Colokan meja rusak\r\n5. Pintu loker lab rusak\r\n6. Bohlam lampu banyak yang mati'),
(122, '196108141987022001', 'Kimia', '2019-09-02', '0', '', '0', '', 'Bak air bocor dan pintu rusak di kamar kecil Labor Kimia Fisika Jurusan Kimia FMIPA Unri '),
(123, '195907011990022001', 'Biologi', '2019-09-03', 'Laboratorium Botani', '', '0', '', 'Uraian Kerusakan\r\n1. Washtafel bocor dan tersumbat.\r\n2. Kran air sudah di ganti tapi masih bocor, karena    diganti dengan kran bekas.'),
(124, '197409302003121001', 'Ilkom', '2019-09-04', 'Labor Sistem Komputer', '', 'AC', 'LG', 'Mati Total'),
(125, '196803261992031001', 'Fisika', '2019-09-06', '0', '', 'PC Unit', 'LAYAR MONITOR pc, ', 'RUSAK DI RUANG LAB. FISIKA DASAR (MAKSI GINTING)'),
(126, '196405051990021001', 'Matematika', '2019-09-07', '01 delta', '', 'Printer ', 'Cannon e 500', 'Catridge habis dan tak bisa diisi, mohon diganti'),
(127, '196405051990021001', 'Matematika', '2019-09-07', '03 delta', '', 'AC', 'lg', 'AC tak berfungsi ruang jadi panas, kenyamanan bekerja tidak ada'),
(128, '196405051990021001', 'Matematika', '2019-09-07', '09 delta (Ruang ADM Jurusan)', '', 'Pintu', 'Pintu frame aluminium', 'Pintu menggeser ke lantai sulit ditutup'),
(129, '196108141987022001', 'Kimia', '2019-09-09', '0', '', '0', '', 'Lampu ruang Ketua Jurusan putus/mati (sementara pakai lampu ruang seminar 1) Koordinator Prodi S2 Kimia (kadang-kadang kedap-kedip) administrasi Jurusan  putus/mati'),
(130, '196405051990021001', 'Matematika', '2019-09-09', '12 epsilon', '', 'Printer ', 'Brother DCP-J125', 'Cardtrige tdk berfungsi mohon penggantian/ perbaikan'),
(131, '196108141987022001', 'Kimia', '2019-09-12', '0', '', 'Mesin Air', '', 'Air hanya sebentar hidupnya/keluarnya di Gedung labor Analitik dan Biokimia'),
(132, '196803261992031001', 'Fisika', '2019-09-16', '0', '', 'MCB', 'mcb rusak', 'di laboratorium fisika dasar  listrik mati total'),
(133, '196108141987022001', 'Kimia', '2019-09-17', '0', '', 'PC Unit', 'HP', 'Komputer di sekre HIMAKI pada monitor keluar bacaan Insert boot device'),
(134, '195907011990022001', 'Biologi', '2019-09-24', 'Laboratorium Mikrobiologi', '', 'Mesin Air', 'Sanyo', 'Tidak Hidup'),
(135, '195907011990022001', 'Biologi', '2019-09-24', 'Laboratorium Mikrobiologi', '', 'AC', 'LG', 'Tidak Dingin, Mesin Tidak Hidup'),
(136, '196108141987022001', 'Kimia', '2019-09-27', '0', '', 'AC', 'LG', 'Ac di labor Kimia dasar mati total tidak bisa dihidupkan, dan kipas angin dinding 2 buah di ruang mahasiswa praktikum kimia dasar rusak tidak bisa dipakai lagi'),
(137, '195907011990022001', 'Biologi', '2019-09-27', 'Ruang Dosen (Ruang Skripsi Lama)', '', 'AC', 'LG', 'AC bocor, pemindahan Posisi AC ke tengah/lorong '),
(138, '195907011990022001', 'Biologi', '2019-09-27', 'Ruang Admin Lama', '', 'Stop Kontak', '', 'Pembuatan Stop kontak '),
(139, '196405051990021001', 'Matematika', '2019-09-28', '01 delta', '', 'PC Unit', 'Dell/ Laptop', 'Windows expired mohon di reaktivikasi'),
(140, '195907011990022001', 'Biologi', '2019-09-30', '002/ Sekretaris Jurusan', '', 'PC Unit', 'Lenovo', 'Tidak Hidup'),
(141, '196405051990021001', 'Matematika', '2019-10-01', '11 delta/ Ruang Kajur', '', 'AC', 'lg', 'MCB selalu balik sesudah hidup dengan waktu tertentu, perlu penggantian MCB'),
(142, '196405051990021001', 'Matematika', '2019-10-01', '11 epsilon', '', 'Lampu', 'pijar', 'Bola rampu sudah redup, perlu penggantian.  Lampu rauang hanya satu dan sangat mengganggu dosen berkerja'),
(143, '197409302003121001', 'Ilkom', '2019-10-02', 'Ruang Kajur', '', 'AC', 'Panasonic', 'Tidak dingin'),
(144, '195907011990022001', 'Biologi', '2019-10-03', 'Ruang S2', '', 'Plavon', '-', 'Plavon sudah lapuk dan mau jatuh'),
(145, '195907011990022001', 'Biologi', '2019-10-03', 'Studio Komputer', '', 'PC Unit', 'Acer', 'Mohon di cek dan diperbaiki/di service yang rusak, ada 9 komputer Tabung yang rusak'),
(146, '195907011990022001', 'Biologi', '2019-10-03', 'Studio Komputer', '', 'AC', '', 'Pengadaan AC baru 1 pk'),
(147, '195907011990022001', 'Biologi', '2019-10-03', 'SEMUA RUANG', '', 'Stop Kontak', '', 'Pembuatan stop kontak di semua ruang jurusan yang telah direnovasi'),
(148, '196108141987022001', 'Kimia', '2019-10-07', '0', '', 'Lampu', '', 'Lampu lorong gedung HPLC dan Sintesis mati sebanyak 3 buah'),
(149, '196803261992031001', 'Fisika', '2019-10-09', '0', '', 'Pintu', 'KUNCI PINTU', 'KUNCI PINTU RUSAK DI LAB BUK RAKHMAWATI FARMA'),
(150, '196803261992031001', 'Fisika', '2019-10-11', '0', '', 'AC', 'lg', 'rusak ac di lab fisika dasar ruang pak salomo'),
(151, '196108141987022001', 'Kimia', '2019-10-11', '0', '', 'AC', '', 'Ac ruang buk Kajur Kimia bocor/menetes dibagian dalam ruangan. saat ini ditampung dengan ember kecil'),
(152, '196108141987022001', 'Kimia', '2019-10-11', '0', '', 'AC', 'LG', 'Ac di ruang labor prak organik dan biokim Buk Dra. Silvera Devi, Sy, M.Si tdk mau hidup '),
(153, '196108141987022001', 'Kimia', '2019-10-14', '0', '', 'PC Unit', '', 'CPU HIMAKI Jurusan Kimia rusak'),
(154, '196108141987022001', 'Kimia', '2019-10-14', '0', '', 'Mesin Air', '', 'Air tidak mengalir ke Labor Biokimia dan Organik'),
(155, '196108141987022001', 'Kimia', '2019-10-14', '0', '', 'PC Unit', '', 'Jaringan internet komputer Kajur tdk terhubung dan printnya rusak'),
(156, '197409302003121001', 'Ilkom', '2019-10-15', 'R. Fatayat', '', 'AC', 'Panasonic', 'Mati sendiri'),
(157, '196803261992031001', 'Fisika', '2019-10-15', '0', '', 'AC', 'LG', 'rusak, ruang lab fotonik, buk minarni'),
(158, '195907011990022001', 'Biologi', '2019-10-16', '003/Ketua Jurusan', '', 'VGA', 'Lenovo', 'Adapter Komputer Rusak '),
(159, '196803261992031001', 'Fisika', '2019-10-16', '0', '', 'Projector', 'infokus', 'infokus rusak di lab fisika komputasi'),
(160, '196803261992031001', 'Fisika', '2019-10-16', '0', '', 'AC', 'LG', 'ac rusak di ruang baca jurusan fisika '),
(161, '195907011990022001', 'Biologi', '2019-10-17', 'Laboratorium Genetika', '', 'VGA', '-', 'Wifi Mati di semua Lab yang ada di Jurusan Biologi'),
(162, '196108141987022001', 'Kimia', '2019-10-17', '0', '', 'Pintu', '', 'Pintu masuk depan labor Kimia Organik jurusan Kimia FMIPA patah, '),
(163, '196405051990021001', 'Matematika', '2019-10-17', '03 delta', '', 'AC', 'lg', 'AC sudah diperbaiki 2 hari yll tetapi sampai sekarang tidak dingin.'),
(164, '196803261992031001', 'Fisika', '2019-10-18', '0', '', 'AC', 'LG', 'ac di ruang pak M. Hamdi   Rusak'),
(165, '196803261992031001', 'Fisika', '2019-10-18', '0', '', 'AC', 'LG', 'Mohon pindahkan AC yang di AUDI fisika, ke Lab. Fisika Bumi  (sebab sangat panas tak ada pentilasi)'),
(166, '196803261992031001', 'Fisika', '2019-10-18', '0', '', 'AC', 'LG', 'Mohon pindah kan AC yang di Audi Fisika, ke Lab. Konversi Energi  (Pak Antonius), sebab panas tak ada pentilasi'),
(167, '196108141987022001', 'Kimia', '2019-10-21', '0', '', 'Mesin Air', '', 'Kabel listrik stop kontak air di depan Labor Biokimia/Kimia Organik Jurusan Kimia terbakar'),
(168, '196108141987022001', 'Kimia', '2019-10-21', '0', '', 'Pintu', '', '2 Handle pintu Labotarorium Biokimia Jurusan Kimia FMIPA Unri rusak :\r\n1. Handle pintu masuk ruang praktikum dan \r\n2. Handle kamar kecil  '),
(169, '196108141987022001', 'Kimia', '2019-10-22', '0', '', 'Mesin Fotocopy', '', 'Tinta mesin fotocopi habis di Jurusan Kimia Fmipa Unri'),
(170, '197409302003121001', 'Ilkom', '2019-10-22', 'Labor EDP', '', 'AC', 'LG', 'Tidak dingin'),
(171, '196108141987022001', 'Kimia', '2019-10-22', '0', '', '0', '', 'Wastafel bocor di Laboratorium Organik Sintesis Jurusan Kimia FMIPA Unri'),
(172, '196108141987022001', 'Kimia', '2019-10-23', '0', '', '0', '', 'Neraca analitik laboratorium Kimia Fisik dan Anorganik error sehingga diperlukan kalibrasi ulang'),
(173, '196108141987022001', 'Kimia', '2019-10-23', '0', '', '0', '', 'Wastafel tersumbat di Laboratorium Anorganik Jurusan Kimia FMIPA Unri'),
(174, '196803261992031001', 'Fisika', '2019-10-24', '0', '', 'Pintu', 'KUNCI PINTU', 'kunci pintu ruang pak usman malik/pak Zulkarnain rusak'),
(175, '196803261992031001', 'Fisika', '2019-10-24', '0', '', 'AC', 'LG', 'AC ruang lab. fisika komputasi rusak'),
(176, '196405051990021001', 'Matematika', '2019-10-28', '03 delta', '', 'PC Unit', 'Dell/Laptop', 'Laptop tidak bisa hidup, dan kalau dihidupkan muncul logo Dell, sesudah itu layar blank hitam, seperti tidak ada respon.\r\n'),
(177, '196405051990021001', 'Matematika', '2019-10-28', '11 delta/ Ruang Kajur', '', 'PC Unit', 'Dell/ Laptop', 'License Office expired mohon di aktifkan lagi'),
(178, '196405051990021001', 'Matematika', '2019-10-29', '07 delta Seminar A', '', 'AC', 'LG/1 pk', 'AC LG ini rusak dan dibongkar, kemudian AC yang 2 pk diruang yang sama di pindah letaknya ke tempat AC yang 1 PK ini.  Hal ini karena posisi ac 2 PK tidak ditengah ruangan.'),
(179, '196405051990021001', 'Matematika', '2019-10-29', '08 delta Ruang Seminar B', '', 'AC', 'Chang Hong dan Lg masing masin', 'Ac diruang ini ada 2 yaitu Chang Hong dan Lg masing masing 1 pk.  AC ini dibuka keduanya, yang LG dipindah ke ruang pak Erman Taer Fisika, kemudian di pasangkan AC 2 PK yang rencananya akan dipasang diruang pak Erman Taer.'),
(180, '196405051990021001', 'Matematika', '2019-11-01', '03 delta', '', 'Plavon', 'Plafon bocor', 'Ruang pak Rustam Bocor, yang selama ini tak masalah, mohon bantuannya ada pegawai yg memeriksa. Dari luar tak terlihat atap bocor terlihat, boleh jadi karena air ac yang baru diservice. Kalau dibiar bakal hancur plafon. Urgent. '),
(181, '196803261992031001', 'Fisika', '2019-11-04', '0', '', 'Pintu', 'pintu labor pak lazuardi', 'dinding rusak, dan buat konsen pintu dan pintunya, di labor pak lazuardi'),
(182, '197409302003121001', 'Ilkom', '2019-11-05', 'Ruang Kajur', '', 'AC', 'Panasonic', 'Kondisi AC kadang-kadang Tidak Dingin'),
(183, '197409302003121001', 'Ilkom', '2019-11-05', 'R. Yanti Andriyani', '', 'AC', 'LG', 'Tidak Dingin'),
(184, '197409302003121001', 'Ilkom', '2019-11-05', 'Labor Sistem Komputer', '', 'AC', 'Panasonic', 'Tidak dingin, AC mati sendiri setelah 15 - 20 menit '),
(185, '197409302003121001', 'Ilkom', '2019-11-05', 'Labor Sistem Komputer', '', 'AC', 'LG', 'Tidak dingin'),
(186, '196108141987022001', 'Kimia', '2019-11-07', '0', '', 'AC', '', 'Ac bocor di ruang dosen Riryn Novianty, M.Si'),
(187, '195907011990022001', 'Biologi', '2019-11-07', 'Ruang S2', '', 'AC', '', 'Pemindahan AC dari ruang Admin S2 ke ruang Rapat S2 (Ruang Tengah)'),
(188, '195907011990022001', 'Biologi', '2019-11-07', 'Ruang Rapat Lantai 2', '', 'AC', '', 'Penambahan Kabel '),
(189, '195907011990022001', 'Biologi', '2019-11-07', 'Studio Komputer', '', 'AC', '', 'Ganti Freon'),
(190, '195907011990022001', 'Biologi', '2019-11-07', 'Laboratorium Mikrobiologi', '', '0', 'All. American', 'Nama Alat: Autoklaf (Tombol ON/OF rusak, tidak bisa mencapai suhu 121° C'),
(191, '195907011990022001', 'Biologi', '2019-11-07', 'Laboratorium Mikrobiologi', '', '0', 'Gollenkamp', 'Nama Alat: Shaker Orbital (Tidak Bisa Hidup)'),
(192, '195907011990022001', 'Biologi', '2019-11-07', 'Laboratorium Mikrobiologi', '', '0', 'J. Labtech', 'Nama Alat : Shaker Incubator (kerusakan: Per Pengikat Lepas, Putaran Tidak Sesuai dengan Display)'),
(193, '196803261992031001', 'Fisika', '2019-11-07', '0', '', 'AC', 'lg', 'rusak di lab fisika dasar'),
(194, '196803261992031001', 'Fisika', '2019-11-07', '0', '', 'AC', 'LG', 'rusak di lab fotonik, buk minarni'),
(195, '196405051990021001', 'Matematika', '2019-11-11', '05 delta', '', '0', 'Dispenser/uchida', 'Air panasnya tersumbat dan tak mau keluar, mohon perbaikan segera, karena sangat dibutuhkan pegawai dan dosen'),
(196, '196108141987022001', 'Kimia', '2019-11-11', '0', '', 'Printer ', 'Canon Ip2770', 'Cartridge print rusak di ruang staff Jurusan an. Zamzami (semua warna sdh kabur/berubah)'),
(197, '196405051990021001', 'Matematika', '2019-11-12', '18 epsilon', '', 'Pintu', 'PINTU ALUMINIUM', 'Pintu tak bisa dikunci dan menggeser diatasnya. Mohon perbaikan segera, bisa jadi ruang pak Bustami dimasuki orang karena tak terkunci'),
(198, '196108141987022001', 'Kimia', '2019-11-15', '0', '', 'AC', '', 'Ac 2 buah mati (tdk mau hidup) di ruang seminar I Jurusan Kimia FMIPA Unti'),
(199, '196108141987022001', 'Kimia', '2019-11-18', '0', '', 'PC Unit', '', 'Komputer di sekre HIMAKI pada monitor keluar bacaan Insert boot device (rusak berkali-kali)'),
(200, '196803261992031001', 'Fisika', '2019-11-19', '0', '', 'AC', 'LG', 'AC BOCOR  DI LAB PAK LAZUARDI'),
(201, '196108141987022001', 'Kimia', '2019-11-19', '0', '', '0', '', 'Pintu administrasi Jurusan sering mengenai mesin foto copi sehingga diperlukan Door Stopper'),
(202, '196108141987022001', 'Kimia', '2019-11-20', '0', '', 'Saklar', '', 'Stop contak dinding di ruang administrasi Jurusan kimia yang biasa dipakai utk penghubung ke komputer pak Zamzami rusak (komputer sering mati-hidup)'),
(203, '196108141987022001', 'Kimia', '2019-11-21', '0', '', 'AC', 'LG', 'Ac tidak merespon remot (walaupun remot sdh dicoba dg remot lain) di ruang Prof Adel Labor Organik Sintesis'),
(204, '195907011990022001', 'Biologi', '2019-11-21', 'Laboratorium Fotomikrografi', '', 'PC Unit', 'Acer', 'Adapter Komputer Rusak'),
(205, '195907011990022001', 'Biologi', '2019-11-21', 'Laboratorium Genetika', '', 'PC Unit', 'Acer', 'Komputer Mati Total'),
(206, '196108141987022001', 'Kimia', '2019-11-21', '0', '', 'AC', '', 'Pemasangan kembali AC di ruang pak Dr. Emrizal Laboratorium Anorganik Kimia FMIPA Unri'),
(207, '196108141987022001', 'Kimia', '2019-11-21', '0', '', 'Lampu', '', '4 lampu kecil mati di ruang tengah/Dosen/Tamu Jurusan Kimia FMIPA Unri '),
(208, '196405051990021001', 'Matematika', '2019-11-22', '07 delta Seminar A', '', 'PC Unit', 'Komputer rakitan destop', 'Komputer mati, tak hidup sama sekali'),
(209, '196405051990021001', 'Matematika', '2019-11-22', '11 epsilon', '', 'PC Unit', 'Komputer rakitan destop', 'Loading sangat lambat, kadang-kadang hang tak ada respon'),
(210, '196405051990021001', 'Matematika', '2019-11-22', '00 Koridor Delta', '', 'MCB', 'Breaker 60 Ampere', 'Breaker sudah terlalu tua, Kamis sore balik total tak bisa diswitchkan lagi. Ketika sudah dingin dapat hidup kembali'),
(211, '197409302003121001', 'Ilkom', '2019-11-26', 'Toilet Lantai 1 Gedung ILKOM', '', 'Pintu', 'Futura', 'Engsel rusak, pintu sulit untuk ditutup'),
(212, '196108141987022001', 'Kimia', '2019-11-26', '0', '', 'AC', '', 'Ac bocor buk Dr. Yum Eryanti di ruang Labor Organik FMIPA Unri'),
(213, '196108141987022001', 'Kimia', '2019-11-26', '0', '', '0', '', '3 kran rusak dan 2 buah anak pintu rusak di Labor Prak. Kimia Organik dan Biokimia,'),
(214, '196803261992031001', 'Fisika', '2019-11-29', '0', '', 'AC', 'LG', 'RUSAK AC DI LAB FOTONIK,  (BUK MINARNI) DESKRIPSI RUSAK BOCOR DAN SENSOR RUSAK'),
(215, '196108141987022001', 'Kimia', '2019-12-02', '0', '', 'Lampu', '', 'Lampu ruang Koordinator S2 Kimia mulai kedap-kedip (kadang-kadang)'),
(216, '197409302003121001', 'Ilkom', '2019-12-03', 'Toilet Lantai 1 Gedung ILKOM', '', 'Pintu', 'Futura', 'Engsel rusak, pintu sulit untuk ditutup, Toilet perempuan tidak terpakai karena pintunya tidak bisa tertutup. Please we need the good door immediately'),
(217, '196108141987022001', 'Kimia', '2019-12-03', '0', '', '0', '', 'Vacum dan waterbath di Labor Biokimia Jurusan Kimia, lampu ruangan putus 4 buah'),
(218, '196803261992031001', 'Fisika', '2019-12-03', '0', '', 'AC', 'LG', 'Ac perlu di Lab Material (buk rahmawati)'),
(219, '195907011990022001', 'Biologi', '2019-12-09', 'Ruang Rapat Lama (Ruang Admin Baru)', '', 'Lampu', '', 'penggantian bola Lampu di ruang rapat lama yang  mati'),
(220, '196108141987022001', 'Kimia', '2019-12-11', '0', '', '0', '', 'Pemasangan jaringan ruang dosen di lab Organik dan anorganik Jurusan Kimia FMIPA Unri'),
(221, '196108141987022001', 'Kimia', '2019-12-11', '0', '', '0', '', 'Wastafel bocor di Laboratorium Kimia Fisik Jurusan Kimia FMIPA Unri'),
(222, '196108141987022001', 'Kimia', '2019-12-11', '0', '', 'Lampu', '', '4 Bola lampu mati di Laboratorium Kimia Fisik Jurusan Kimia FMIPA Unri, sehingga diperlukan pembelian bola lampu sebanyak 4 buah 3o watt '),
(223, '196108141987022001', 'Kimia', '2019-12-12', '0', '', 'AC', '', 'AC di ruang FTIR Jurusan Kimia FMIPA UNRI (depan ruang HPLC) tdk bs hidup '),
(224, '196108141987022001', 'Kimia', '2019-12-12', '0', '', '0', '', 'Kerusakan di Labor Kimia Fisik Jurusan Kimia FMIPA Unri :\r\n1. 4 Aliran listrik yang menghubungkan ke bola lampu\r\n2. Keramik rumpel/pecak kecil-kecil di bagian tepi meja praktikum '),
(225, '196108141987022001', 'Kimia', '2019-12-12', '0', '', '0', '', 'Wastafel tersubat dan atap bocor di Labor Analitik (Buk Asum)'),
(226, '196405051990021001', 'Matematika', '2019-12-13', '08 delta Ruang Seminar B', '', 'AC', 'lg/ 2pk', 'MCB AC balik kalau sudah dihidupkan sekitar 30 menit, mohon respon segera, karena ruang ini dipakai rutin untuk seminar sehingga pelaksanaan seminar sangat terganggu'),
(227, '196803261992031001', 'Fisika', '2019-12-16', '0', '', 'Pintu', 'kunci pintu', 'kunci pintu rusak di lab. material (Buk Ari dan Dewi)'),
(228, '196803261992031001', 'Fisika', '2019-12-16', '0', '', 'Lampu', 'Colokan listrik/pengambil dan ', 'yang bermasalah colokan api listrik belum sendiri masih tergantung pada lab fisika dasar, (untuk lab material yaitu buk Ari dan Buk Dewi)'),
(229, '196405051990021001', 'Matematika', '2019-12-16', '00 Koridor Delta', '', 'Lampu', 'Neon 40 w', 'Lampu neon dikoridor berkedip mengganggu kenyamanan'),
(230, '196405051990021001', 'Matematika', '2019-12-16', '00 epsilon toilet perempuan', '', '0', 'Keran Air, ', 'Keran air lemnya lepas, sehingga airu keluar mengucur. Dampaknya air lain tidak ada '),
(231, '196108141987022001', 'Kimia', '2019-12-18', '0', '', '0', '', 'Handle pintu masuk Labotarorium Biokimia dan labor samping Kimia Organik Jurusan Kimia FMIPA Unri rusak'),
(232, '195907011990022001', 'Biologi', '2019-12-18', '004 / Lab. Kultur Jaringan', '', 'AC', 'Panasonic', 'Suaranya bising (Bunyi keras)'),
(233, '195907011990022001', 'Biologi', '2019-12-18', '004 / Lab. Kultur Jaringan', '', 'Saklar', '-', 'Atribut-atributnya copot'),
(234, '196803261992031001', 'Fisika', '2019-12-18', '0', '', 'AC', 'LG', 'AC RUSAK DI RUANG  TU JURUSAN FISIKA '),
(235, '196405051990021001', 'Matematika', '2019-12-19', '18 epsilon', '', 'Pintu', 'PINTU ALUMINIUM', 'Pintu ruang pak Bustami, sulit ditutup dan tak bisa dikunju, mohon respon segera, karena sekarang dengan mendorong saja orang bisa masuk ke ruang pak bustami, sangat urgent'),
(236, '196405051990021001', 'Matematika', '2019-12-19', '01 Halaman Selatan', '', 'Mesin Air', 'Otomatis  Mesin Air', 'Otomatis mesin air sepertinya sudah karatan, terkadang otomatis tidak berfungsi, untuk berfungsi harus ditarik kabel kabelnya,  Kalau dibiar nanti macet total.'),
(237, '196405051990021001', 'Matematika', '2019-12-20', '08 delta Ruang Seminar B', '', 'AC', 'lg', 'AC bisa hidup dengan baik, tetapi setelah 30 menit AC mati, MCBnya balik.  Perlu perbaikan agar air tersedia setiap saat'),
(238, '', 'Matematika', '2019-12-20', '', '', '', '', ''),
(239, '196803261992031001', 'Fisika', '2020-01-02', '0', '', 'Lampu', 'PHILIP', 'RUSAK DUA BUAH LAMPU DI  TOELET JURUSAN FISIKA '),
(240, '195907011990022001', 'Biologi', '2020-01-06', 'Laboratorium Mikrobiologi', '', 'Lampu', 'Philips', 'Putus / tidak dapat hidup'),
(241, '195907011990022001', 'Biologi', '2020-01-17', 'Laboratorium Genetika', '', 'Lampu', 'Lampu Neon', 'Mati Total 6 Buah Lampu Neon'),
(242, '195907011990022001', 'Biologi', '2020-01-17', 'Laboratorium Genetika', '', 'Gembok / alat Pengunci lainnya', '-', 'Gembok Pintu rusak '),
(243, '195907011990022001', 'Biologi', '2020-01-17', 'Laboratorium Ekologi', '', 'Gembok / alat Pengunci lainnya', '-', 'Gembok Pintu rusak '),
(244, '195907011990022001', 'Biologi', '2020-01-17', 'Ruang Rapat Lama (Ruang Admin Baru)', '', '0', 'Panasonic', 'Pemindahan Kipas Angin dari Ruang admin lama ke Ruang admin Baru'),
(245, '196803261992031001', 'Fisika', '2020-01-28', '0', '', 'AC', 'LG', 'AC DI RUANG KAJUR  FISIKA TIDAK DINGIN'),
(246, '196803261992031001', 'Fisika', '2020-01-28', '0', '', 'Pintu', 'PINTU', 'KUNCI  PINTU DI RUANG SEKJUR FISIKA RUSAK'),
(247, '195907011990022001', 'Biologi', '2020-01-29', 'Studio Komputer', '', 'AC', '-', 'Pemindahan AC yang ada di ruang Admin S2 ke ruang studio Komputer'),
(248, '195907011990022001', 'Biologi', '2020-01-29', 'Ketua Jurusan', '', 'Lampu', 'Lampu Neon Panjang', 'Mati'),
(249, '196108141987022001', 'Kimia', '2020-01-29', '0', '', 'Pintu', '', 'Gagang kunci pintu ruang buk Riryn rusak dan tdk bisa dikunci'),
(250, '196108141987022001', 'Kimia', '2020-01-29', '0', '', 'AC', '', 'Mesin air Jurusan Kimia tdk kuat menarik air ke atas'),
(251, '196108141987022001', 'Kimia', '2020-01-29', '0', '', 'AC', '', 'Ac bocor di Labor anorganik'),
(252, '195907011990022001', 'Biologi', '2020-01-30', 'Studio Komputer', '', 'AC', 'Toshiba, Panasonic', 'Penggantian MCB dan Penambahan Kabel '),
(253, '195907011990022001', 'Biologi', '2020-01-30', 'PLP Lab. Botani', '', 'AC', '-', 'AC Bocor (kalau tidak diperbaiki bisa berenang)'),
(254, '196405051990021001', 'Matematika', '2020-01-31', '00 Koridor Delta', '', 'Pintu', 'Pintu Kaca', 'Engsel pintu bermasalah tidak mau balik sehingga untuk keamanan dikunci, Mohon segera'),
(255, '196405051990021001', 'Matematika', '2020-02-05', '10 Ruang Baca 2 epsilon', '', 'Pintu', 'Pintu aluminium', 'Pintu menggeser ke lantai, sulit dibuka khawatir lama2 kaca pintu jadi pecah'),
(256, '196405051990021001', 'Matematika', '2020-02-05', '10 delta', '', 'Pintu', 'PINTU ALUMINIUM', 'Pintu menggeser ke lantai sulit ditutup, khawatir kaca pintu pecah kalau dibiarkan lama.'),
(257, '', 'Matematika', '2020-02-05', '', '', '', '', ''),
(258, '196405051990021001', 'Matematika', '2020-02-05', '09 delta (Ruang ADM Jurusan)', '', 'Pintu', 'PINTU ALUMINIUM', 'Pintu menggeser ke lantai sulit ditutup, khawatir kaca pintu pecah kalau dibiarkan lama.'),
(259, '196405051990021001', 'Matematika', '2020-02-05', '10 Ruang Baca 2 epsilon', '', 'Pintu', 'PINTU ALUMINIUM', 'Pintu menggeser ke lantai sulit ditutup, khawatir kaca pintu pecah kalau dibiarkan lama.'),
(260, '196108141987022001', 'Kimia', '2020-02-05', '0', '', 'AC', '', 'Ac bocor di labor anorganik Jurusan Kimia FMIPA Unri'),
(261, '196108141987022001', 'Kimia', '2020-02-05', '0', '', 'AC', '', 'Pembongkaran dan pemasangan ac di :\r\n1. Lab Organik Jurusan Kimia FMIPA Unri\r\n2. Lab Anorganik Jurusan Kimia FMIPA Unri'),
(262, '195907011990022001', 'Biologi', '2020-02-06', 'Laboratorium Zoologi', '', 'Pintu', '-', '- Pintu besi 1 rusak tidak bisa dikunci\r\n- Pintu besi 2 rusak (besinya tidak ada / patah dan perlu di Las ulang)\r\n- gembok kedua pintu rusak / perlu diganti'),
(263, '195907011990022001', 'Biologi', '2020-02-06', 'Laboratorium Ekologi', '', 'Pintu', '-', 'Kunci pintu kayu rusak ( tidak bisa dikunci)'),
(264, '196108141987022001', 'Kimia', '2020-02-06', '0', '', 'AC', 'AUX', 'AC di Laboratorium Organik Sintesis tidak dingin, ruang jadi pengap dan bau. Sudah di cek teknisi AC, disuruh ganti Freon. '),
(265, '197409302003121001', 'Ilkom', '2020-02-10', 'Labor Sistem Komputer', '', 'AC', 'LG', 'Tidak dingin, kata tukang service harus ganti baru'),
(266, '', 'Ilkom', '2020-02-10', '', '', '', '', ''),
(267, '197409302003121001', 'Ilkom', '2020-02-10', 'R. Zaiful Bahri', '', 'AC', 'LG', 'Tidak dingin'),
(268, '196405051990021001', 'Matematika', '2020-02-13', '15 epsilon', '', 'PC Unit', 'build up', 'Tidak bisa di shut down'),
(269, '196405051990021001', 'Matematika', '2020-02-13', '04 delta', '', 'PC Unit', 'Komputer rakitan destop', '2 Komputer tidak bisa di shut down'),
(270, '196405051990021001', 'Matematika', '2020-02-13', '09 epsilon', '', 'PC Unit', 'Komputer rakitan destop', 'Power suplay bermasalah, perlu penggantian'),
(271, '196108141987022001', 'Kimia', '2020-02-17', '0', '', 'AC', '', 'Ac mati ruang Dra. Itnawita, M.Si di Labor Analitik Jurusan Kimia FMIPA Unri'),
(272, '197409302003121001', 'Ilkom', '2020-02-17', 'Ruangan TU Jurusan ILKOM', '', 'Printer ', 'Canon MP237', 'Tinta tidak keluar'),
(273, '196108141987022001', 'Kimia', '2020-02-20', '0', '', 'AC', '', 'Ac di ruang Koordinator S1 Kimia kurang preron (tidak dingin)'),
(274, '196108141987022001', 'Kimia', '2020-02-20', '0', '', 'AC', '', 'Ac di ruang Koordinator S2 Kimia kurang preron (tidak dingin)'),
(275, '196108141987022001', 'Kimia', '2020-02-20', '0', '', 'AC', '', 'Ac mati total di ruang seminar II Jurusan Kimia FMIPA Unri'),
(276, '196108141987022001', 'Kimia', '2020-02-20', '0', '', 'AC', '', 'Ac mati total di ruang buk Yuli/Yuana (sebelah ruang prof Amir Awaluddin)'),
(277, '195907011990022001', 'Biologi', '2020-02-20', 'Laboratorium Botani', '', 'Plavon', '-', '1. Atap bocor, ketika hujan air menetes membasahi lemari.\r\n2. Plafon teras Lab Rusak.\r\n3. Dinding Lab berjamur karena lembab oleh tetesan air hujan'),
(278, '195907011990022001', 'Biologi', '2020-02-20', 'Laboratorium Botani', '', 'HUB ', '-', '1. Kipas Angin Gantung Rusak\r\n2. Oven Tidak Panas'),
(279, '195907011990022001', 'Biologi', '2020-02-20', '005/ Kamar Mandi ', '', 'Mesin Air', '-', 'Tempat Cucian Piring bocor sehingga air sering melimpah'),
(280, '196405051990021001', 'Matematika', '2020-02-20', '07 epsilon', '', 'AC', 'lg', 'Tidak dingin, kompresor AC mati,  mohon di cek. segera, untuk kenyamanan dosen bekerja'),
(281, '196405051990021001', 'Matematika', '2020-02-20', '13 epsilon', '', 'AC', 'lg', 'AC kurang dingin, perlu di cek apakah perlu ditambah freon'),
(282, '196405051990021001', 'Matematika', '2020-02-20', '14 epsilon', '', '0', 'lg', 'AC kurang dingin, perlu di cek apakah perlu ditambah freon'),
(283, '196405051990021001', 'Matematika', '2020-02-20', '15 epsilon', '', 'AC', 'lg', 'AC kurang dingin, perlu di cek apakah perlu ditambah freon'),
(284, '196405051990021001', 'Matematika', '2020-02-20', '09 epsilon', '', 'AC', 'LG dan Nasional', 'AC tidak dingin seperti tidah ada AC, perlu di cek kedua apakah perlu ditambah freon'),
(285, '196405051990021001', 'Matematika', '2020-02-20', '08 Ruang Baca 1 epsilon', '', 'AC', 'LG', 'Kompresor rusak, mohon cek, ruang ini dipenuhi tiap hari oleh mahasiswa yang tugas Akhir, sangat panas'),
(286, '196108141987022001', 'Kimia', '2020-02-24', '0', '', 'AC', '', 'AC bocor ruang Prof Adel Zamri di Labor Sintesis Jurusan Kimia FMIPA Unri'),
(287, '196108141987022001', 'Kimia', '2020-02-24', '0', '', 'MCB', '', 'MCB rusak yg menghubungkan ke Ac di ruang diskusi Pascasarjana Jurusan Kimia FMIPA Unri'),
(288, '196803261992031001', 'Fisika', '2020-03-03', '', '', 'AC', 'LG', 'ac rusak di ruang kaprodi s2 (Minarni)'),
(289, '196405051990021001', 'Matematika', '2020-03-06', '01 delta', '', 'Lampu', 'Neon 40 w', 'Lampu Mati dan kadang hidup sebentar, urgent sangat mengganggu kerja'),
(290, '196405051990021001', 'Matematika', '2020-03-06', '09 delta (Ruang ADM Jurusan)', '', 'AC', 'LG', 'Sesudah dibersihkan  malah ac bocor, air menetes cukup banyak mengenai kertas adm. Mohon segera'),
(291, '196108141987022001', 'Kimia', '2020-03-10', '0', '', 'AC', '', 'AC tidak dingin di ruang Sekretaris Jurusan Kimia FMIPA Unri'),
(292, '195907011990022001', 'Biologi', '2020-03-10', 'Laboratorium Fotomikrografi', '', 'AC', 'LG', 'AC Bocor deras 9mohon segera di cek / Urgent)'),
(293, '195907011990022001', 'Biologi', '2020-03-11', 'Administrasi', '', 'Mesin Fotocopy', 'Canon', 'kertas menggulung, lengket dan macet'),
(294, '195907011990022001', 'Biologi', '2020-03-11', 'Studio Komputer', '', 'AC', 'LG', 'kontak listrik sering membalik'),
(295, '196803261992031001', 'Fisika', '2020-03-11', 'Lab komputasi Fisika', '', 'AC', 'LG', 'perbaikan AC Admin jurusan fisika'),
(296, '196803261992031001', 'Fisika', '2020-03-11', 'Lab komputasi Fisika', '', 'AC', 'LG', 'rusak AC PADA RUANG KAJUR'),
(297, '196803261992031001', 'Fisika', '2020-03-11', '', '', 'AC', 'LG', 'AC RUSAK DI RUANG SEKJUR'),
(298, '196803261992031001', 'Fisika', '2020-03-11', '', '', 'AC', 'LG', 'AC RUSAK PUSTAKA JURUSAN'),
(299, '196803261992031001', 'Fisika', '2020-03-11', '', '', 'AC', 'LG', 'AC DIRUANG PAK HAMDI'),
(300, '196803261992031001', 'Fisika', '2020-03-11', '', '', 'AC', 'LG', 'AC RUSAK DI LAB. FISIKA DASAR'),
(301, '196108141987022001', 'Kimia', '2020-03-11', '0', '', 'AC', '', 'Ac bocor di Ruang PLP bu Firda Gudang Bahan Kimia Jurusan Kimia Fmipa Unri'),
(302, '196108141987022001', 'Kimia', '2020-03-16', '0', '', 'Mesin Air', '', 'Mesin air di Jurusan Kimia masih membutuhkan bantuan manual utk menaikan air keatas tengki dengan cara menaik-turunkan pipa paralon. '),
(303, '196108141987022001', 'Kimia', '2020-03-31', '0', '', 'Gembok / alat Pengunci lainnya', '', 'Anak kunci rusak di Labor Kimia Anorganik Jurusan Kimia FMIPA Unri'),
(304, '196405051990021001', 'Matematika', '2020-04-14', '09 delta (Ruang ADM Jurusan)', '', 'PC Unit', 'Komputer rakitan destop', 'Window bermasalah tidak bisa booting'),
(305, '195907011990022001', 'Biologi', '2020-05-11', 'Ruang S2', '', 'Plavon', '', 'plavon ruangan sdh hancur'),
(306, '195907011990022001', 'Biologi', '2020-05-11', 'Ruang S2', '', 'Pintu', '', 'pintu ruangan rusak'),
(307, '196108141987022001', 'Kimia', '2020-05-15', '0', '', '0', '', 'Meja dan kursi dosen di Jurusan Kimia FMIPA yang sangat layak untuk diganti seperti dibawah ini :\r\nNo	Nama Dosen	NIP	Pengadaan	Keterangan\r\n1	-	-	Meja dan Kursi	Ruang KoProdi S3\r\n2	Prof. Dr. Jasril, M.Si	196305051989031006	Meja dan Kursi	Ruang Dosen\r\n3	Prof. Dr. Saryono, M.Si	196206111989031005	Meja dan Kursi	Ruang Dosen\r\n4	Prof. Dr.Titania Tj. Nugroho, M.Si	195610131985032001	Kursi	Ruang Dosen\r\n5	Prof. Dr. Amir Awaluddin, M.Sc	196212171989031001	Meja	Ruang Dosen\r\n6	Dr. Sofia Anita, M.Sc	196504201991032005	Meja dan Kursi	Lab. Kimia Analitik\r\n7	Dr. Amilia Linggawati, M.Si	196401081991032003	Meja dan Kursi	Lab. Kimia Analitik\r\n8	Dra. Itnawita, M.Si	196105051988032001	Meja dan Kursi	Lab. Kimia Fisika\r\n'),
(308, '196405051990021001', 'Matematika', '2020-05-27', '00 epsilon Koridor', '', 'HUB ', 'unknown', 'Hub kena petir sebelum lebaran dan sampai sekarang belum ada jaringan internet ke gedung epsolon dimana dosen akan memasukkan nilai dan umumnya dosen matematika berkantor di gedung epsilon'),
(309, '196108141987022001', 'Kimia', '2020-05-28', '0', '', 'Lampu TL', '', 'Bola lampu mati di 3 ruang, (ruang Kajur, Koord. S2 Kimia dan ruang Administrasi)'),
(310, '196108141987022001', 'Kimia', '2020-05-29', '0', '', '0', '', 'Aliran listrik terputus di ruang bu Kajur dan seminar I Jurusan Kimia FMIPA '),
(311, '196108141987022001', 'Kimia', '2020-06-03', '0', '', 'PC Unit', '', 'PC rusak milik bu Zul Aprisna di Labor Kimia Anorganik Jurusan Kimia '),
(312, '195907011990022001', 'Biologi', '2020-06-04', 'Kamar Mandi Lantai 1', '', 'Mesin Air', 'Sanyo', 'Mesin Air mati / Pipa Air Pecah'),
(313, '195907011990022001', 'Biologi', '2020-06-04', 'Laboratorium Fotomikrografi', '', 'AC', 'LG', 'Bocor'),
(314, '196405051990021001', 'Matematika', '2020-06-08', '07 delta Seminar A', '', 'AC', 'lg', 'AC kalau dihidupkan anginnya sangat kenceang dan kemudian mati.  Mohon segera diperbaiki, karena semonat mahasiswa terganggu dengan kondisi ini'),
(315, '196405051990021001', 'Matematika', '2020-06-08', '07 epsilon', '', 'Lampu', '-', 'Jaringan listrik di ruang ini mati sehingga tidak bisa menggunakan komputer.  Mohon urgent perbaikan karena sekarang saat penginputan nilai'),
(316, '196108141987022001', 'Kimia', '2020-06-10', '0', '', 'AC', '', 'Ac tdk dingin di ruang Koordinator S2 Kimia'),
(317, '195907011990022001', 'Biologi', '2020-06-12', '002/ Sekretaris Jurusan', '', 'Lampu', '-', 'Lampu mati'),
(318, '195907011990022001', 'Biologi', '2020-06-16', 'Kamar Mandi Lantai 1', '', 'Lampu', '-', 'Lampu Mati kamar madi gelap'),
(319, '195907011990022001', 'Biologi', '2020-06-16', 'Lobi Jurusan/Teras', '', 'Lampu', '-', 'Lampu Mati, kalau malam teras gelap'),
(320, '196405051990021001', 'Matematika', '2020-06-18', '13 epsilon', '', 'PC Unit', 'hp', ''),
(321, '196405051990021001', 'Matematika', '2020-06-18', '13 epsilon', '', 'PC Unit', 'Konmputer all in one (HP)', 'Mesin komputer hidup, tapi tidak tampil satupun di screen'),
(322, '196405051990021001', 'Matematika', '2020-06-18', '15 epsilon', '', 'HUB ', 'Dlink', 'Linknya  error, lampu hidup semua tapi tidak berfungsi, Urgent perbaikan untuk upload nilai'),
(323, '195907011990022001', 'Biologi', '2020-06-18', 'Kamar Mandi Lantai 1', '', 'Keramik', '-', 'Bak penampungan air dikamar mandi bocor jadi minta diganti dengan ember besar untuk penampungan air'),
(324, '196108141987022001', 'Kimia', '2020-06-22', '0', '', 'Lampu', 'Hannochs', 'Permohonan pengadaan lampu hannochs 35 watt di ruang :\r\n1. Kajur 1 buah\r\n2. Koord S2 1 buah\r\n3. Administrasi Jurusan 1 buah\r\n4. Labor Kimia Fisik 5 buah\r\n5. Labor Kimia Anorganik 4 buah\r\nsehingga totalnya sebanyak 12 buah lampu'),
(325, '195907011990022001', 'Biologi', '2020-06-24', 'Laboratorium Genetika', '', 'AC', 'LG dan Samsung', 'harap segera di perbaiki : 3 buah AC Rusak (Komponen terbakar, sensor AC tidak hidup, 1 ac mati total) '),
(326, '195907011990022001', 'Biologi', '2020-06-24', 'Laboratorium Genetika', '', 'Lemari Es', 'LG', 'Kulkas Tidak dingin (Kulkas panas) '),
(327, '195907011990022001', 'Biologi', '2020-06-24', 'Laboratorium Genetika', '', 'VGA', '-', 'WIFI Mati total'),
(328, '195907011990022001', 'Biologi', '2020-06-30', '005/ Kamar Mandi ', '', '0', 'Kran Air dan Sifon ', 'Kran Air patah, Siphon bocor harap segera diperbaiki'),
(329, '196108141987022001', 'Kimia', '2020-06-30', '0', '', 'PC Unit', '', 'Komputer PLP rusak di Labor Kimia Bahan Alam (Koba)Jurusan Kimia FMIPA'),
(330, '196405051990021001', 'Matematika', '2020-07-02', '08 delta Ruang Seminar B', '', 'VGA', '', 'Kabel HDMI rusak, LCD proyektor tak bisa  digunakan, sementara semianr mahasiswa hampir tiap hari.  Mohon  penggantian sangat urgent'),
(331, '196108141987022001', 'Kimia', '2020-07-02', '0', '', 'Lampu', '', '4 lampu rusak/mati di Lab Kimia bahan alam Jurusan Kimia'),
(332, '196108141987022001', 'Kimia', '2020-07-02', '0', '', '0', '', '2 kulkas rusak di Lab Kimia Bahan Alam Jurusan Kimia'),
(333, '196405051990021001', 'Matematika', '2020-07-03', '13 Delta Lab Komputasi', '', 'AC', 'lg', 'Ac hidup tapi tak dingin, mohon service.  '),
(334, '195907011990022001', 'Biologi', '2020-07-06', 'Lab. Terpadu', '', 'AC', 'Panasonic', 'Kalau dihidupkan ada bunyi bergemuruh (takut terjadi koslet seperti kejadian dulu) mohon segera di perbaiki'),
(335, '195907011990022001', 'Biologi', '2020-07-06', 'Lab. Terpadu', '', '0', 'Autoklaf All American dan Auto', 'Karet Silk sudah copot sehingga suhu tidak bisa naik'),
(336, '196803261992031001', 'Fisika', '2020-07-07', '', '', 'Printer ', 'PRINTER RUSAK DI RUANG DR. RAH', 'PRINTER RUSAK DI RUANG \r\nDR. RAHMI DEWI MSI');
INSERT INTO `laporan` (`id`, `nip`, `nama_jurusan`, `tanggal_lapor`, `kode_barang`, `jawab_ruang`, `nama_alat`, `merk`, `deskripsi`) VALUES
(337, '196803261992031001', 'Fisika', '2020-07-08', '', '', 'AC', 'ac ', 'Ac di ruang baca fisika rusak'),
(338, '196803261992031001', 'Fisika', '2020-07-08', '', '', 'AC', 'ac', 'Ac di ruang  TU Fisika ada kebocoran pipa'),
(339, '196803261992031001', 'Fisika', '2020-07-08', '', '', 'Mesin Air', 'Dispenser', 'Dispenser 2 buah rusak di Ruang /sekretariat Jurusan Fisika'),
(340, '195907011990022001', 'Biologi', '2020-07-13', '011 / Lobi Lantai 2 Jurusan', '', 'Lampu', 'Philips', '3 buah bola lampu mati total harap segera diganti '),
(341, '195907011990022001', 'Biologi', '2020-07-13', '009/ Ketua Jurusan', '', 'Lampu', '', 'bola lampu panjang mati '),
(342, '195907011990022001', 'Biologi', '2020-07-16', 'Ruang Rapat Lantai 2', '', 'AC', 'LG', 'AC tidak dingin, harap di servis karna berhubung akan ada rapat jurusan tanggal 22 juli 2020'),
(343, '197409302003121001', 'Ilkom', '2020-07-20', 'Ruang KoProdi SI', '', 'Lampu', 'Philips', 'Hidup Mati'),
(344, '', 'Ilkom', '2020-07-20', '', '', '', '', ''),
(345, '', 'Ilkom', '2020-07-20', '', '', '', '', ''),
(346, '197409302003121001', 'Ilkom', '2020-07-20', 'Ruang Tamu Lantai 1', '', 'Gembok / alat Pengunci lainnya', 'Jam Dinding', 'Baterai Mati'),
(347, '196108141987022001', 'Kimia', '2020-07-20', '0', '', 'Printer ', '', 'Print rusak di ruang adminitrasi bg Zam Jurusan Kimia'),
(348, '195907011990022001', 'Biologi', '2020-07-21', 'Lab. Terpadu', '', 'Saklar', '-', 'Saklar (Colokan) Dibelakang Oven Tidak ada arus listrik sehingga oven tidak bisa hidup'),
(349, '196108141987022001', 'Kimia', '2020-07-21', '0', '', 'Lampu', '', 'Lampu mati/putus di ruang gudang zat jurusan kimia fmipa unri'),
(350, '196803261992031001', 'Fisika', '2020-07-24', 'Lab komputasi Fisika', '', 'MCB', '-', 'Rusak di jurusan fisika (2 buah)'),
(351, '196803261992031001', 'Fisika', '2020-07-24', 'Lab komputasi Fisika', '', 'Lampu', '-', 'Lampu rusak 2 buah dijurusan fisika'),
(352, '196405051990021001', 'Matematika', '2020-07-24', '07 delta Seminar A', '', 'Lampu', 'Neon 40 w', 'Salah satu lampu ruang berkedip kemudian mati tak mau hidup lagi, perlu diganti.'),
(353, '196405051990021001', 'Matematika', '2020-07-24', '05 delta', '', 'Lampu', 'Neon 40 w', 'Lampu pemasangannya tidak kencang sehingga kalau dihidupkan berbunyi, tidak nyaman'),
(354, '196405051990021001', 'Matematika', '2020-07-24', '00 epsilon Koridor', '', 'Lampu', 'Lampu Pijar', 'Lampu pada mati, sehingga coridor gelap.  Sementara hari senin visitasi daring prodi s1 statistik, dimana dosen statistik berkantor di gendung ini.\r\n'),
(355, '197409302003121001', 'Ilkom', '2020-07-27', 'Ruang Dosen', '', 'Lampu', 'Philips', 'Putus'),
(356, '197409302003121001', 'Ilkom', '2020-07-27', 'Ruang Sekjur', '', 'Lampu', 'Philips', 'Putus'),
(357, '197409302003121001', 'Ilkom', '2020-07-27', 'Ruangan TU Jurusan ILKOM', '', 'AC', 'LG', 'Remote AC Rusak'),
(358, '196803261992031001', 'Fisika', '2020-07-27', '', '', 'PC Unit', '-', 'internet rusak di laboratorium fisika dasar dan material, serta di ruang kajur'),
(359, '196405051990021001', 'Matematika', '2020-08-03', '09 delta (Ruang ADM Jurusan)', '', 'PC Unit', 'lenovo', 'Harddisk komputer tendik Munawir bermasalah perlu penggantian.  Mohon solusi, karena sangat mengganggu pelayanan.'),
(360, '195907011990022001', 'Biologi', '2020-08-05', '007/Kamar Mandi Lantai 1', '', 'Mesin Air', '-', 'Kran air untuk cuci tangan dan cuci piring rusak / patah'),
(361, '196108141987022001', 'Kimia', '2020-08-10', '0', '', 'AC', '', 'Ac tidak dingin di ruang bu Reni PLP labor Kimia Fisika Jurusan Kimia'),
(362, '196803261992031001', 'Fisika', '2020-08-10', 'Lab komputasi Fisika', '', 'Gembok / alat Pengunci lainnya', 'kunci pintu ', 'kunci pintu rusak 2 buah, yaitu 1 di lab fisika bumi dan 1 lagi di ruang pk Usman malik'),
(363, '197409302003121001', 'Ilkom', '2020-08-11', 'Ruang Dosen', '', 'Lampu', 'Philips', 'Mati'),
(364, '195907011990022001', 'Biologi', '2020-08-12', 'Ruang Dosen lantai 2', '', 'AC', 'LG', 'Kontak Lepas, AC mati '),
(365, '195907011990022001', 'Biologi', '2020-08-12', 'Ruang Dosen lantai 2', '', 'AC', 'LG', 'AC tidak dingin'),
(366, '195907011990022001', 'Biologi', '2020-08-12', 'Ruang Dosen lantai 2', '', 'AC', 'LG', 'AC tidak dingin'),
(367, '196108141987022001', 'Kimia', '2020-08-13', '0', '', '0', '', 'Pipa bocor di labor kimia anorganik'),
(368, '196803261992031001', 'Fisika', '2020-08-13', 'Lab komputasi Fisika', '', 'Lampu', 'oroginal', 'Di Lab Fisika Dasar :Atap bocor, lampu mati, saluran air tersumbat'),
(369, '197409302003121001', 'Ilkom', '2020-08-13', 'Ruang Dosen', '', 'Lampu', 'Philips', 'MATI'),
(370, '197409302003121001', 'Ilkom', '2020-08-13', 'Ruang Dosen', '', 'Lampu', 'Philips', 'MATI'),
(371, '197409302003121001', 'Ilkom', '2020-08-13', 'Ruang Teknisi', '', 'AC', 'LG', 'Tidak Dingin'),
(372, '197409302003121001', 'Ilkom', '2020-08-13', 'Ruang Dosen', '', 'Lampu', 'Philips', 'MATI'),
(373, '196108141987022001', 'Kimia', '2020-08-19', '0', '', '0', '', 'Pipa air patah di Labor Kimia Anorganik Kimia FMIPA Unri'),
(374, '196108141987022001', 'Kimia', '2020-08-25', '0', '', '0', '', 'Wifi tdk hidup/rusak di Labor Kimia Analitik Jurusan Kimia FMIPA'),
(375, '196108141987022001', 'Kimia', '2020-08-25', '0', '', 'AC', '', 'Ac mati-hidup di Labor Kimia Analitik Jurusan Kimia FMIPA Unri'),
(376, '196108141987022001', 'Kimia', '2020-08-27', '0', '', 'Lampu', '', 'Lampu mati 4 buah di ruang lorong labor HPLC Jurusan Kimia'),
(377, '196803261992031001', 'Fisika', '2020-09-03', 'Lab komputasi Fisika', '', 'Lampu', 'LAMPU TL (40 WATT)', 'LAMPUN TL (40 WATT) 2 UNIT, DI LAB. FISIKA TERAPAN (LAZUARDI)'),
(378, '196108141987022001', 'Kimia', '2020-09-03', '0', '', '0', '', 'Lapotop Jurusan Kimia rusak'),
(379, '196108141987022001', 'Kimia', '2020-09-07', '0', '', 'Gembok / alat Pengunci lainnya', '', 'Pengantian kunci sebanyak 3 buah pintu di Lab Kimia Analitik'),
(380, '196108141987022001', 'Kimia', '2020-09-07', '0', '', '0', '', 'Kebocoran pembuangan air pada semua westafel di Lab Kimia Analitik '),
(381, '196108141987022001', 'Kimia', '2020-09-07', '0', '', 'Gembok / alat Pengunci lainnya', '', 'Pengantian gembok 1 buah untuk pintu luar di Lab Biokimia'),
(382, '195907011990022001', 'Biologi', '2020-09-11', 'Laboratorium Mikrobiologi', '', 'Mesin Air', '-', 'Mesin air mati '),
(383, '196405051990021001', 'Matematika', '2020-09-17', '09 delta (Ruang ADM Jurusan)', '', 'AC', 'LG', 'AC tidak dingin, seperti mesin outdornya mati. Mohon perbaikan segera, pegawai tidak tahan duduk diruangan karena panas.'),
(384, '196405051990021001', 'Matematika', '2020-09-17', '09 delta (Ruang ADM Jurusan)', '', 'AC', 'changhong', 'AC tidak hidup ada masalah dengan MCB, boak baol berkali kali'),
(385, '195907011990022001', 'Biologi', '2020-09-17', 'Laboratorium Zoologi', '', 'Plavon', '-', 'Atap Bocor'),
(386, '195907011990022001', 'Biologi', '2020-09-17', 'Laboratorium Botani', '', 'VGA', '-', 'WIFI dan LAN mati total di semua laboratorium'),
(387, '196803261992031001', 'Fisika', '2020-10-05', '', '', 'AC', 'LG', 'Kode Ruang : Lab. Bio Sensor\r\nPenanggung Jawab : Dr.-Ing. Lazuardi, M.Si\r\nKerusakan : Air Pembuangan AC bocor'),
(388, '196803261992031001', 'Fisika', '2020-10-05', '', '', 'AC', 'LG', 'Kode Ruang : Staff ADM Jurusan Fisika\r\nPenanggung Jawab : Prof. Dr. Juandi M, M.Si\r\nKerusakan : Pembuangan Air AC Bocor'),
(389, '196803261992031001', 'Fisika', '2020-10-05', '', '', 'AC', 'LG', 'Kode Ruang : Perpustakaan Jurusan Fisika\r\nPenanggung Jawab : Drs. Riad Syech, MT\r\nKerusakan : 1. AC LG 1 PK status Rusak\r\n                      2. AC LG 2 PK status Rusak'),
(390, '197409302003121001', 'Ilkom', '2020-10-12', 'Ruang KoProdi MI', '', 'AC', 'Panasonic', 'Tidak dingin, mati sendiri, bau busuk'),
(391, '196108141987022001', 'Kimia', '2020-10-12', '0', '', '0', '', 'Tempat colokan listrik mati di 2 tempat Labor Biokimia Jurusan (Ruang PLP dan Semi Steril)'),
(392, '195907011990022001', 'Biologi', '2020-10-13', 'PLP Lab. Botani', '', 'Mesin Air', '-', 'otomatis pompa air lab biologi Harus diganti baru/ Rusak/Mati total.'),
(393, '196108141987022001', 'Kimia', '2020-10-14', '0', '', 'AC', '', 'Pemasangan Indoor Ac Diruangan Pak tengku emrinaldi Labor AN OR'),
(394, '197409302003121001', 'Ilkom', '2020-10-15', '03 Ruang Dosen', '', 'AC', 'LG', 'Rusak'),
(395, '196405051990021001', 'Matematika', '2020-10-20', '09 epsilon', '', 'PC Unit', 'desktop?samsung', 'Tidak mau hidup'),
(396, '197409302003121001', 'Ilkom', '2020-11-04', '02 Ruang Dosen', '', 'AC', 'Panasonic', 'Hidup atau mati sendiri'),
(397, '197409302003121001', 'Ilkom', '2020-11-04', '02 Ruang Dosen', '', 'Saklar', 'Philips', 'Hidup dan mati sendiri'),
(398, '197409302003121001', 'Ilkom', '2020-11-04', '05 Ruang Dosen', '', 'AC', 'LG', 'Tidak dingin, AC seperti kipas angin'),
(399, '197409302003121001', 'Ilkom', '2020-11-04', 'Ruang KoProdi MI', '', 'AC', 'Panasonic', 'MATI'),
(400, '197409302003121001', 'Ilkom', '2020-11-04', 'Ruang KoProdi SI', '', 'AC', 'Panasonic', 'Tidak dingin'),
(401, '197409302003121001', 'Ilkom', '2020-11-04', 'Ruang Kajur', '', 'AC', 'Panasonic', 'Kurang dingin dan kotor'),
(402, '195907011990022001', 'Biologi', '2020-11-09', 'SEMUA RUANG', '', 'Lampu', '-', 'Aliran listrik di jurusan mati '),
(403, '195907011990022001', 'Biologi', '2020-11-09', 'SEMUA RUANG', '', 'VGA', '-', 'WIFI jurusan mati '),
(404, '', 'Ilkom', '2020-11-09', '', '', '', '', ''),
(405, '197409302003121001', 'Ilkom', '2020-11-09', 'Ruang Asisten', '', 'HUB ', 'Converter FO to UTP', 'Mati total'),
(406, '196803261992031001', 'Fisika', '2020-11-09', '', '', 'HUB ', 'D-Link', 'Mati Total/Rusak'),
(407, '196405051990021001', 'Matematika', '2020-11-09', '04 delta', '', 'HUB ', 'TP LINK', 'Karena Petir Hub di ruang jurusan rusak sehingga tidak semua ruang pengelola bisa akses internet, sementara perkuliahan dilakukan online, mohon penggantian segera urgent'),
(408, '196405051990021001', 'Matematika', '2020-11-09', '00 epsilon Koridor', '', 'HUB ', 'TP Link', 'Karena Petir Hub di ruang jurusan rusak sehingga tidak semua ruang pengelola bisa akses internet, sementara perkuliahan dilakukan online, mohon penggantian segera urgent'),
(409, '197409302003121001', 'Ilkom', '2020-11-11', 'Ruang Sekjur', '', 'Lampu', 'LG', 'Mati'),
(410, '196405051990021001', 'Matematika', '2020-11-11', '11 delta/ Ruang Kajur', '', 'Lampu', 'phillips', 'Lampu redup karena sudah expired'),
(411, '196108141987022001', 'Kimia', '2020-11-12', '0', '', 'Gembok / alat Pengunci lainnya', '', 'Kunci rusak dipintu masuk ruang Prof Titania dan bu Riryn'),
(412, '196108141987022001', 'Kimia', '2020-11-12', '0', '', 'Lampu', '', 'Bola lampu mati 1 buah diruang asisten Labor Analitik Kimia FMIPA'),
(413, '196108141987022001', 'Kimia', '2020-11-13', '0', '', '0', '', 'Hub switch internet di Labor Organik yang ke HPLC dan Labor Anorganik dekat lorong dosen Kimia rusak'),
(414, '196108141987022001', 'Kimia', '2020-11-20', '0', '', '0', '', 'Wifi di labor Kimia Bahan Alam rusak dan \r\nsaklar lampu d ruangan bu Yum rusak 1 '),
(415, '196803261992031001', 'Fisika', '2020-11-24', '', '', 'AC', 'LG', 'Kode Ruang : Staf ADM Jurusan\r\nPenanggung Jawab : Prof. Dr. Juandi M, M.Si\r\nDeskripsi Kerusakan : Pembuangan air AC masuk kedalam Ruang staf ADM Jurusan'),
(416, '196803261992031001', 'Fisika', '2020-11-25', '', '', 'AC', 'LG', 'ac di ruang Kaprodi S2  dan di ruang TU Jurusan dalam keadaan bocor, ada air yang tergenang dilantai berasal dari ac'),
(417, '196108141987022001', 'Kimia', '2020-11-30', '0', '', 'Plavon', '', 'Plavon koridor depan HPLC rusak'),
(418, '196405051990021001', 'Matematika', '2020-11-30', '11 delta/ Ruang Kajur', '', 'AC', 'LG', 'Ac hidup dan dingin, tapi tak bisa dimatikan dengan remot, harus dimatikan dari MCB.  Mohon perbaikannya, karena terkadang tak ada sapu yang bisa dipakai mematikan'),
(419, '196108141987022001', 'Kimia', '2020-11-30', '0', '', '0', '', 'Wifi rusak di HPLC'),
(420, '196405051990021001', 'Matematika', '2020-11-30', '04 epsilon', '', 'AC', 'LG', 'AC tak mau hidup walaupun baterai remot sudah diganti.  Mohon perbaikan'),
(421, '197409202003121002', 'Ilkom', '2020-12-01', 'Ruang Sekjur', '', 'AC', 'LG', 'AC tidak bisa hidup. (sudah 5 hari)'),
(422, '197409202003121002', 'Ilkom', '2020-12-01', 'Ruang Sekjur', '', 'Lampu', 'Lampu LED', 'Lampu Mati / Tidak bisa hidup'),
(423, '196803261992031001', 'Fisika', '2020-12-02', '', '', '0', '-', 'Lokasi Ruangan: Lab Elektronika R3, Jurusan Fisika FMIPA Universitas Riau\r\n\r\nHal Perbaikan:\r\n1. Penambahan stecker listrik 4 lobang untuk Ruang R3 Lab Elektronika (Riset Biosensor)\r\n2. Penggantian Bola Lampu\r\n3. Penambahan kunci gembok'),
(424, '196405051990021001', 'Matematika', '2020-12-03', '09 delta (Ruang ADM Jurusan)', '', 'Printer Ink Jet', 'Brother', 'Printer ini  diruang pak sigit, sekarang akan dimanfaat di adm jurusan.  Tetapi setelah diperiksa, printer ini mati, tak ada arus listrik masuk'),
(425, '196405051990021001', 'Matematika', '2020-12-13', '09 delta (Ruang ADM Jurusan)', '', 'Lampu TL', 'Phillip', 'Masa pemakaian bola lampu sepertinya habis dan sekarang 1 sudah mati, 1 sudah sangat redup,  sementar lagi juga mati.  Kerja tendik terganggu, karena kurang terang.  Mohon penggantian segera'),
(426, '196803261992031001', 'Fisika', '2020-12-15', 'Lab komputasi Fisika', '', 'Lampu', 'phylip', 'lampu 9 buah putus di l;ab fisika dasar'),
(427, '196803261992031001', 'Fisika', '2020-12-15', '', '', 'Mesin Air', 'mesin air', 'Pipa mesin air telah pecah di lab fisika dasar '),
(428, '196803261992031001', 'Fisika', '2020-12-15', '', '', 'Pintu', 'Plafon dan atap seng', 'Atap seng ada yang bocor dan plafon udah hampir jatuh di lab fisika dasar, Ini URGEN '),
(429, '196108141987022001', 'Kimia', '2020-12-15', '0', '', 'Plavon', '', 'Mohon untuk ditindaklanjuti laporan no 100 tentang Plavon koridor depan HPLC/di atas pintu ruangan FTIR rusak (status : tidak bisa diperbaiki)'),
(430, '196405051990021001', 'Matematika', '2020-12-21', '00 Toilet 2 Delta', '', 'Pintu', 'Kunci Pintu rusan tak bisa dig', 'Kunci pintu toileh yang diputar rusak, dan tak bisa diperbaiki, perlu penggantian.  Karena kalau dibiarkan orang yang menggunakan tioilet kelihatan dari luar.'),
(431, '195907011990022001', 'Biologi', '2020-12-21', '009/ Ketua Jurusan', '', 'AC', 'National', 'Berbau terbakar'),
(432, '195907011990022001', 'Biologi', '2020-12-21', 'Ruang Dosen Lantai 2 (herman, hari kapli, ahmad mu', '', 'Stop Kontak', '-', 'Tambah colokan di tiap ruangan dosen tersebut'),
(433, '195907011990022001', 'Biologi', '2020-12-21', 'SEMUA RUANG', '', 'VGA', '-', 'Pemasangan Jaringan internet di setiap ruang dosen dan staf yang ada di biologi (lantai 1 dan lantai 2)'),
(434, '195907011990022001', 'Biologi', '2020-12-21', 'Ruang Rapat Lantai 2', '', 'Stop Kontak', '-', 'penambahan colokan listrik di ruang rapat lantai 2'),
(435, '196108141987022001', 'Kimia', '2020-12-22', '0', '', '0', '', 'Kerusakan alat-alat di Labor Biokimia Jurusan Kimia antara lain : pH meter, lampu spektrofotometer, oven, dan shaker'),
(436, '196803261992031001', 'Fisika', '2020-12-22', 'Lab komputasi Fisika', '', 'PC Unit', 'compac', 'KERUSAKAN CPU MERK COMPAC'),
(437, '195907011990022001', 'Biologi', '2020-12-23', 'Laboratorium Mikrobiologi', '', 'Lampu', '-', 'Penggantian 2 buah bola lampu mati /putus'),
(438, '197409302003121001', 'Ilkom', '2021-01-08', '02 Ruang Dosen', '', 'AC', 'Panasonic', 'MCB dan Sekring Listriknya Rusak'),
(439, '196108141987022001', 'Kimia', '2021-01-11', '0', '', '0', '', 'Kondisi beberapa alat di Labor Kimia Anorganik Jurusan Kimia seperti dibawah ini :\r\n1. Muffle Furnace  size 2 GALLENKAMP : Hidup,  tapi suhu Furnace tidak bisa dinaikkan\r\n2. Oven GALENKAMP : Hidup, tapi suhu oven tidak bisa dinaikkan\r\n3. Spectrometer Uv-vis UVmini-1240 SHIMAZU : Lampu uv  tidak berfungsi'),
(440, '195907011990022001', 'Biologi', '2021-01-14', 'SEMUA RUANG', '', 'VGA', '-', 'Pemasangan Internet disemua ruang dosen'),
(441, '196108141987022001', 'Kimia', '2021-01-18', '0', '', '0', '', 'Tempat pembuangan zat kimia rusak/berlubang besar di Labor Biokimia Jurusan Kimia Fmipa Unri'),
(442, '196108141987022001', 'Kimia', '2021-01-18', '0', '', '0', '', 'Tersumbat tempat pembuangan air dari wastafel mengakibatkan air mengalir ke lantai di Labor KOBA Jurusan Kimia FMIPA'),
(443, '196108141987022001', 'Kimia', '2021-01-19', '0', '', '0', '', 'Suhu tidak mau naik pada alat Fornace (suhu eror) di Labor Kimia Fisik Jurusan Kimia FMIPA'),
(444, '195907011990022001', 'Biologi', '2021-01-22', '009/ Ketua Jurusan', '', 'VGA', '-', 'USB untuk 2 unit PC'),
(445, '197409302003121001', 'Ilkom', '2021-01-25', 'Ruang Tamu Lantai 1', '', 'Lampu', 'Hanoc', 'Mati'),
(446, '196405051990021001', 'Matematika', '2021-01-26', '09 delta (Ruang ADM Jurusan)', '', 'Mesin Fotocopy', 'Cannon', 'Mesin fc rusak alat pengeluar kertas kalau di copy. untuk scanner bisa.  Mohon perbaikan segera.  Kerusakan ini sudah disampaikan ke wd 2 dan bendahara tanggal 10 Januari 2021.'),
(447, '196405051990021001', 'Matematika', '2021-01-26', '07 delta Seminar A', '', 'Lampu', 'TL', 'Lampu berkedip sehingga mengganggu jalannya seminar atau ujian sarjana. perlu penggantian urgent, agar tidak mengganggu.'),
(448, '196803261992031001', 'Fisika', '2021-01-26', '', '', 'Lampu TL', 'lampu listrik', 'perlu tiga buah lampu, satu di toilet jurusan, dan dua lampu di ruang AUDI dosen Fisika'),
(449, '196803261992031001', 'Fisika', '2021-01-26', '', '', 'Pintu', 'pelubang kaca pada TU Jurusan', 'Perlu di buat lubang - lubang kaca pada jendela TU Jurusan fisika, agar komunikasi lancar antar TU dan mhs'),
(450, '196803261992031001', 'Fisika', '2021-01-26', '', '', 'AC', 'Ac', 'Ac di ruang kajur rusak. tak hidup'),
(451, '196108141987022001', 'Kimia', '2021-01-27', '0', '', '0', '', 'Laporan dr Labor Kimia bahan Alam (KOBA)\r\n1. aliran listrik d meja dekat pntu belakang lab.koba mati.\r\n2. Wastafel d meja tengah lab koba tersumbat.'),
(452, '196108141987022001', 'Kimia', '2021-01-28', '0', '', '0', '', 'laporan dari Labor Biokimi Jurusan Kimia FMIPA : saluran pembuangan air tersumbat dari Wastafel di Lobor Biokimia'),
(453, '196803261992031001', 'Fisika', '2021-02-01', '', '', 'Plavon', 'plavon bocor di ruang buk Vevy', 'plavon bocor di ruang buk vevy asyana'),
(454, '195907011990022001', 'Biologi', '2021-02-01', 'Laboratorium Mikrobiologi', '', 'Mesin Air', '-', 'Kran Wastafel laboratorium rusak/ patah (minta ganti baru)'),
(455, '196803261992031001', 'Fisika', '2021-02-05', '', '', 'AC', 'Ac', 'Ac di Lab. Fotonik /Buk Minarni   Rusak,'),
(456, '196803261992031001', 'Fisika', '2021-02-05', '', '', 'Mesin Air', 'Air di Toilet ', 'Air di tolilet Lab. Fotonik, tidak mengalir'),
(457, '196803261992031001', 'Fisika', '2021-02-08', '', '', 'Pintu', 'pintu', 'kunci pintu rusak di ruang pak Usman malik'),
(458, '196803261992031001', 'Fisika', '2021-02-08', '', '', 'AC', 'Ac', 'Ac rusak di lab fisika material, Prof. Erman taer '),
(459, '196803261992031001', 'Fisika', '2021-02-08', 'Lab komputasi Fisika', '', 'HUB ', 'Wifi ', 'Wifi Rusak di lab. fisika material, Prof. Erman taer'),
(460, '196803261992031001', 'Fisika', '2021-02-08', '', '', 'HUB ', 'Pengalihan jaringan wifi', 'Pengalihan jaringan wifi dari lab. fotonik ke pustaka fisika'),
(461, '195907011990022001', 'Biologi', '2021-02-09', 'Laboratorium Mikrobiologi', '', 'Pintu', '-', 'Hande Pintu (Pintu Lab Mikrobiologi ) rusak'),
(462, '', 'Biologi', '2021-02-09', '', '', '', '', ''),
(463, '195907011990022001', 'Biologi', '2021-02-09', 'Laboratorium Mikrobiologi', '', 'Mesin Air', '-', 'Saluran air di tangki (lemnya lepas dan stop kerannya keras)'),
(464, '', 'Biologi', '2021-02-09', '', '', '', '', ''),
(465, '195907011990022001', 'Biologi', '2021-02-09', 'Laboratorium Mikrobiologi', '', 'AC', 'LG 1/2 pk', 'rusak/ganti baru'),
(466, '', 'Biologi', '2021-02-11', '', '', '', '', ''),
(467, '195907011990022001', 'Biologi', '2021-02-11', '012 / Kebun Biologi', '', 'Mesin Air', '-', 'Mesin Air rusak atau listriknya mati sehingga air di kebun tidak bisa hidup dan kesulitan buat siram penelitian mahasiswa'),
(468, '196108141987022001', 'Kimia', '2021-02-11', '0', '', 'AC', 'LG', 'AC tdk mau hidup diruang Bu Kajur Kimia FMIPA UNRI'),
(469, '196803261992031001', 'Fisika', '2021-02-17', '', '', 'AC', 'LG', 'AC di ruang pak Salomo  dalam keadaan rusak, ruang panas'),
(470, '196405051990021001', 'Matematika', '2021-02-18', '09 epsilon', '', 'AC', 'LG (3 Buah) + Nasional 1 buah', 'Ac tidak dingin, perlu service'),
(471, '196405051990021001', 'Matematika', '2021-02-18', '09 epsilon', '', 'PC Unit', 'cpu compact, moitor samsung', 'CPU bervirus, sangat lambat, perlu perbaikan.  Monitor samsung bergaris, mohon perbaikan'),
(472, '196108141987022001', 'Kimia', '2021-02-22', '0', '', '0', '', 'Pengajuan kabel lan wifi ke ruang seminar I dan Labor Kimia Fisika Jurusan Kimia FMIPA Unri'),
(473, '196108141987022001', 'Kimia', '2021-02-22', '0', '', 'PC Unit', '', 'Komputer rusak/mati Labor Kimia Dasar Jurusan Kimia Fmipa Unri'),
(474, '196108141987022001', 'Kimia', '2021-02-22', '0', '', '0', '', 'Jaringan kabel Lan tdak connect di ruang Kajur dan Sekjur Kimia Fmipa Unri'),
(475, '196803261992031001', 'Fisika', '2021-02-22', '', '', 'AC', 'lg', 'AC rusak di ruang SEKJUR'),
(476, '196803261992031001', 'Fisika', '2021-02-22', '', '', 'AC', 'LG', 'Ac rusak di ruang kaprodi S2 Fisika'),
(477, '196803261992031001', 'Fisika', '2021-02-24', '', '', 'Saklar', 'sklar', 'saklar rusak di lorong depan ruangan ibu Dr. Ari Sulistyorini, yaitu di ruang audi dosen fisika'),
(478, '195907011990022001', 'Biologi', '2021-03-12', '009/ Ketua Jurusan', '', 'AC', 'National', 'AC Bocor '),
(479, '196108141987022001', 'Kimia', '2021-03-15', '0', '', '0', '', 'Pengadaan router Wifi di Labor Kimia Fisika Jurusan Kimia'),
(480, '196108141987022001', 'Kimia', '2021-03-15', '0', '', '0', '', 'Pengadaan router Wifi di ruang seminar I jurusan Kimia FMIPA Unri'),
(481, '197409302003121001', 'Ilkom', '2021-03-16', 'Labor Multimedia', '', 'AC', 'Panasonic', 'Hidup 20 menit lalu mati sendiri '),
(482, '197409302003121001', 'Ilkom', '2021-03-16', 'Labor Sistem Komputer', '', 'AC', 'Panasonic', 'Hidup 20 menit lalu mati sendiri '),
(483, '196108141987022001', 'Kimia', '2021-03-19', '0', '', 'Lampu', '', 'Lampu mati dilorong Labor Sintesis sebanyak 5 buah'),
(484, '196108141987022001', 'Kimia', '2021-03-19', '0', '', 'MCB', '', 'MCB AC rusak diruang bu Yuli Haryani, M.Sc (sebelah labor sintesisi) '),
(485, '196108141987022001', 'Kimia', '2021-03-19', '0', '', 'Lampu', '', 'Lampu mati diruang Koordinator Prodi S1 Kimia'),
(486, '195907011990022001', 'Biologi', '2021-03-22', '004/Lab. Kultur Jaringan', '', 'Mesin Air', '-', 'Wastafel Lab Kultur Jaringan Pipa Pembuangannya Keluar Air dan Melimpah Kelantai/Kesumbat'),
(487, '196803261992031001', 'Fisika', '2021-03-22', '', '', 'Pintu', 'kunci pintu rusak di lab fisik', 'kunci pintu rusak di lab. Fisika bumi'),
(488, '197409302003121001', 'Ilkom', '2021-03-22', 'Labor Multimedia', '', 'Lampu', 'Philips', '2 buah lampu yg panjang kedap kedip terus sudah seminggu'),
(489, '196108141987022001', 'Kimia', '2021-03-22', '0', '', 'AC', '', 'Ac rusak diruang PLP Labor Kimia Fisik Jurusan Kimia FMIPA'),
(490, '196405051990021001', 'Matematika', '2021-03-25', '06 epsilon', '', 'Stop Kontak', 'brroco', 'Tombol kontak untuk menghidupkan lampu patah karena sudah terlalu lama dan kering.  Mohon penggantian, karena saat ini lampu hidup tak bisa dimatikan'),
(491, '196108141987022001', 'Kimia', '2021-03-25', '0', '', 'Mouse', '', 'Mouse komputer jurusan klik kanan sdh tdk berfungsi'),
(492, '195907011990022001', 'Biologi', '2021-03-30', 'Laboratorium Genetika', '', 'Mesin Air', '-', 'Kran Air Tersumbat sehingga airnya melimpah dan Hot Plate Error'),
(493, '196405051990021001', 'Matematika', '2021-04-05', '00 Toilet 1 Delta', '', 'Lampu', 'Pillips/hannoc', 'Bola lampu putus perlu penggantian segera, agar toilet terang..  Sekarang katlau masuk toilet gelap.  Urgent'),
(494, '196108141987022001', 'Kimia', '2021-04-06', '0', '', '0', '', 'Pitting sekaligus dengan lampu rusak/mati 2 buah, serta 1 lampu mati di Labor Instrumen (belakang Labor Koba) Jurusan Kimia'),
(495, '197409302003121001', 'Ilkom', '2021-04-08', 'Labor EDP', '', 'AC', 'LG', 'Mati Total'),
(496, '197409302003121001', 'Ilkom', '2021-04-09', 'Ruang Kajur', '', 'HUB ', 'TPLink 8 port', '4 port mati kena petir dan membuat koneksi jaringan tidak optimal lagi, ada potensi 4 port sisa akan mengalami kerusakan '),
(497, '196405051990021001', 'Matematika', '2021-04-13', '02 delta', '', 'AC', 'LG', 'Ac tidak dingin, sehingga krja kurang nyaman, urgent untuk diperbaiki'),
(498, '196803261992031001', 'Fisika', '2021-04-15', '', '', 'Plavon', 'plavon/atap', 'atap seng rusak / bocor  di lab. fisika bumi'),
(499, '196803261992031001', 'Fisika', '2021-04-16', '', '', 'AC', 'Ac', 'Ac rusak di Lab. Fisika Terapan (Pak Lazuardi), sering keluar air'),
(500, '196108141987022001', 'Kimia', '2021-04-20', '0', '', '0', '', 'Kebocoran pipa didalam ruang Labor Kimia Anorganik Fmipa Unri'),
(501, '196108141987022001', 'Kimia', '2021-04-20', '0', '', 'Gembok / alat Pengunci lainnya', '', 'Kunci Wc rusak di Labor Biokimia, Permohonan pergantian kunci tersebut'),
(502, '196108141987022001', 'Kimia', '2021-04-20', '0', '', '0', '', 'Rauter rusak di Labor Biokimia Jurusan Kimia Fmipa Unri'),
(503, '196108141987022001', 'Kimia', '2021-04-22', '0', '', '0', '', 'Paralon patah didekat mesin air Jurusan Kimia fmipa unri'),
(504, '195907011990022001', 'Biologi', '2021-04-29', '003/Ketua Jurusan', '', 'PC Unit', 'Lenovo', 'Leptop ketua jurusan rusak sehingga tidak dapat bekerja dengan maksimal, dan harus Ganti HDD 500 GB, NB + Instal lenovo dan Box HDD Mtech'),
(505, '195907011990022001', 'Biologi', '2021-05-03', '006/ Administrasi', '', 'HUB ', '-', 'HUB rusak sehingga internet di jurusan mati'),
(506, '196405051990021001', 'Matematika', '2021-05-06', '09 delta (Ruang ADM Jurusan)', '', 'AC', 'changhong', 'Air AC bocor, sehingga tak bisa digunakan, sebab kalau dihidupkan volume air yang keluar besar.  mohon perbaiki segera, karena AC LG di ruang yang sama kompresornya rusak dan menunggu yang baru.  Saat ini ruang ini hanya mengharapkan dingin pindahan dari ruang kajur dan sekjur'),
(507, '196405051990021001', 'Matematika', '2021-05-06', '03 delta', '', 'AC', 'Lg', 'AC tidak dingin, mohon perbaiki segera, karena sangat mengganggu kinerja koor prodi'),
(508, '196405051990021001', 'Matematika', '2021-05-06', '12 epsilon', '', 'AC', 'LG', 'AC ruang ini sudah lama tidak dihidupkan dikarenakan pak Sigit meninggal dunia, sekarang ac tak mau hidup sementara jurusan sudah menempatkan dosen baru diruang tsb. Mohon perrbaikan segera untuk membuat dosen betah dikampus'),
(509, '196405051990021001', 'Matematika', '2021-05-06', '09 epsilon', '', 'AC', 'Ada 2 AC', 'Kedua AC remotenya tidak berfungsi, perlu perbaikan, sekarang kalau mau menghidupkan menggunakan tongkat melalui MCB.  Kalau takbisa diperbaiki ada baiknya MCBnya dipindah ke bawah agar ter jangkau'),
(510, '196803261992031001', 'Fisika', '2021-05-10', '', '', 'AC', 'Ac', 'ac rusak  di ruang  TU sekretariat jurusan'),
(511, '196108141987022001', 'Kimia', '2021-05-17', '0', '', '0', '', 'Wifi mati di Laboratorium Koba dan Biokimia Jurusan Kimia Fmipa Unri'),
(512, '196803261992031001', 'Fisika', '2021-05-17', '', '', 'HUB ', 'Rotor wiefi internet rusak ken', 'di lab fisika dasar'),
(513, '196108141987022001', 'Kimia', '2021-05-19', '0', '', '0', '', 'Wifi mati di labor HPLC dan Kimia Sintesis Jurusan Kimia Fmipa Unri'),
(514, '197409302003121001', 'Ilkom', '2021-05-19', 'Ruang Kajur', '', 'Gembok / alat Pengunci lainnya', 'Kursi kerja', 'Pengontrol turun naik kursi rusak'),
(515, '197409302003121001', 'Ilkom', '2021-05-19', 'Labor Multimedia', '', 'PC Unit', 'Dell', '2 buah power supply mati total'),
(516, '197409302003121001', 'Ilkom', '2021-05-19', 'Labor Sistem Komputer', '', 'PC Unit', 'Dell', '1 Power supply mati total '),
(517, '197409302003121001', 'Ilkom', '2021-05-19', 'Labor Sistem Komputer', '', 'Projector', 'BenQ', 'Mati Hidup'),
(518, '195907011990022001', 'Biologi', '2021-05-20', 'Laboratorium Mikrobiologi', '', 'Mesin Air', '-', 'Mesin air di lab rusak'),
(519, '195907011990022001', 'Biologi', '2021-05-20', '008/Lobi Jurusan/Teras', '', 'Lampu', '-', 'lampu di ruang lobi admin jurusan mati '),
(520, '195907011990022001', 'Biologi', '2021-05-21', '006/ Administrasi', '', 'PC Unit', 'Acer', 'Komputer admin rusak / tidak bisa hidup'),
(521, '195907011990022001', 'Biologi', '2021-05-21', 'Laboratorium Fotomikrografi', '', 'AC', '-', '2 (dua) buah AC di lab fotomikrografi bocor'),
(522, '', 'Biologi', '2021-05-21', '', '', '', '', ''),
(523, '195907011990022001', 'Biologi', '2021-05-21', 'Lab. Mikroteknik', '', 'AC', '-', 'AC Bocor '),
(524, '196803261992031001', 'Fisika', '2021-05-21', '', '', 'AC', 'Ac', 'Ac di ruang sekjur rusak'),
(525, '195907011990022001', 'Biologi', '2021-05-27', '006/ Administrasi', '', 'PC Unit', 'Acer', 'kabel komputer admin dimakan tikus, sehingga komputer tidak bisa hidup '),
(526, '196803261992031001', 'Fisika', '2021-06-02', '', '', 'HUB ', '-', 'pengadaan baru wiefi di ruang rapat jurusan fisika'),
(527, '196803261992031001', 'Fisika', '2021-06-02', '', '', 'AC', 'Ac', 'Rusak Ac di ruang kaprodi S2 Fisika'),
(528, '196803261992031001', 'Fisika', '2021-06-02', '', '', 'AC', 'ac rusak di ruang kaprodi S1', 'ac rusak di ruang kaprodi S1'),
(529, '196803261992031001', 'Fisika', '2021-06-02', '', '', 'AC', 'Ac', 'AC BOCOR DI RUANG TU JURUSAN FISIKA'),
(530, '196803261992031001', 'Fisika', '2021-06-03', '', '', '0', 'Stempel Prodi S2', 'Mohon pak dibuatkan Stempel Prodi S2 Fisika yang otomatis seperti S1 Fisika'),
(531, '196108141987022001', 'Kimia', '2021-06-04', '0', '', '0', '', 'Air subur bor keruh jurusan kimia fmipa (berwarna putih berlumpur)'),
(532, '196108141987022001', 'Kimia', '2021-06-09', '0', '', 'Lemari Es', '', 'Perbaikan 2 kulkas di lab organik Jurusan Kimia Fmipa'),
(533, '196108141987022001', 'Kimia', '2021-06-09', '0', '', '0', '', 'Perbaikan pipa air yg bocor di depan lab Analitik Jurusan Kimia Fmipa Unri'),
(534, '196108141987022001', 'Kimia', '2021-06-09', '0', '', '0', '', 'Perbaikan wifi di lab Analitik Jurusan Kimia Fmipa Unri'),
(535, '197409302003121001', 'Ilkom', '2021-06-10', 'Labor Multimedia', '', 'AC', 'LG', 'hidup sebentar lalu mati sendiri'),
(536, '196108141987022001', 'Kimia', '2021-06-14', '0', '', 'Lampu', '', 'Ac di ruang Koordinator Prodi S1 Kimia kurang dingin'),
(537, '196108141987022001', 'Kimia', '2021-06-14', '0', '', 'Plavon', '', 'Plovon rusak dilorong depan pintu masuk gedung administrasi Jurusan Kimia FMIPA Unri'),
(538, '196108141987022001', 'Kimia', '2021-06-14', '0', '', '0', '', 'Wifi Jurusan Kimia mati/sering hilang timbul sinyalnya'),
(539, '196108141987022001', 'Kimia', '2021-06-14', '0', '', 'AC', '', 'AC tidak dingin diruang FTIR Jurusan Kimia'),
(540, '196108141987022001', 'Kimia', '2021-06-14', '0', '', 'Plavon', '', 'Plavon bocor digudang Jurusan Kimia (sebelah ruang seminar II)'),
(541, '197409302003121001', 'Ilkom', '2021-06-15', 'Ruangan TU Jurusan ILKOM', '', 'AC', 'LG', 'BOCOR'),
(542, '196803261992031001', 'Fisika', '2021-06-16', '', '', '', '', 'router internet di lab Prof. Saktioto RUSAK'),
(543, '196405051990021001', 'Matematika', '2021-06-16', '09 delta (Ruang ADM Jurusan)', '', 'Lampu', 'TL/Neon', 'Starter terbakar dan lampo berkedip sudah beberapa hari, sekarang mati total. Ruang kerja jadi gelap sehingga tak nyaman'),
(544, '196803261992031001', 'Fisika', '2021-06-17', '', '', 'AC', 'LG', 'AC DI RUANGAN STAFF JURUSAN PANAS '),
(545, '196108141987022001', 'Kimia', '2021-06-21', '0', '', 'Mesin Air', '', 'Air tdk mau naik keatas tengki atau air tidak keluar di Jurusan Kimia Fmipa Unri '),
(546, '196108141987022001', 'Kimia', '2021-06-25', '0', '', '0', '', 'Kran air tempat wudhu patah diruang mushola Jurusan Kimia Fmipa Unri'),
(547, '196405051990021001', 'Matematika', '2021-06-28', '08 delta Ruang Seminar B', '', 'Projector', 'Epson', 'Tampilan gambar dan tulisan kabur/sangat kurang tajam, susah dibaca.  Banyak dosen yang kesulitan membaca.  Mohon perbaikan karena pelaksanaan ujian skripsi sangat banyak di akhri juni dan bulan juli ini'),
(548, '196108141987022001', 'Kimia', '2021-06-28', '0', '', '0', '', 'Perbaikan colokan  di Labor Organik'),
(549, '196108141987022001', 'Kimia', '2021-06-28', '0', '', '0', '', 'Perbaikan Ac di ruang bu Dr. Yum Eryanti'),
(550, '196108141987022001', 'Kimia', '2021-06-28', '0', '', '0', '', 'Perbaikan Ac di ruang bu Ganis Fia Kartika, M.Si/Yuli Haryani, Apt. M.Si'),
(551, '195907011990022001', 'Biologi', '2021-06-29', '004/Lab. Kultur Jaringan', '', 'Mesin Air', '-', 'Wastafel Lab Kultur Jaringan Pipa Pembuangannya Keluar Air dan Melimpah Kelantai/Kesumbat. 	'),
(552, '196803261992031001', 'Fisika', '2021-07-01', '', '', 'Lampu', 'lampu', 'lampu rusak dua buah di ruang WC/toilet  jurusan fisika'),
(553, '196405051990021001', 'Matematika', '2021-07-07', '09 delta (Ruang ADM Jurusan)', '', 'HUB ', 'TPLINK', 'WIFI di jurusan rusak sinyal sering putus putus, sudah di cek oleh IT fakultas, disarankan untuk dibelikan yang baru.  Wifi ini sangat diperlukan untuk kelancaran pelayanan administrasi ke mhs.  Mohon penggantian segera'),
(554, '196108141987022001', 'Kimia', '2021-07-07', '0', '', '0', '', 'Kran air tersumbat 4 buah di Labor Kimia Anorganik Jurusan Kimia FMIPA Unri. '),
(555, '196405051990021001', 'Matematika', '2021-07-26', '01 Halaman Selatan', '', 'Mesin Air', 'dap', 'Sumur ini sudah 2 kali mesin airnya di curi orang, dengan memotong pipa paralon.  Sekarang sudah 2 pipa tenggleam di sumur, sehingga pipa sedotan air saat ini terletak di atas pipa yang asuk ke sumur .  Resikonya setiap mau diisi mesin harus dipancing karena kklep dibawah air bocor dan sudah diperbaiki berkali kali..  Solusinya sumur dicuci agar pipa yang terada dalam pipa sumur bisa dikeluarkan.'),
(556, '196803261992031001', 'Fisika', '2021-07-29', '', '', 'Saklar', 'colokan listrik', 'kerusakan colokan AC terbakar di Lab. Fotonik'),
(557, '196803261992031001', 'Fisika', '2021-08-09', '', '', 'AC', 'ac', 'AC TAK HIDUP DI RUANG TU JURUSAN FISIKA'),
(558, '197409302003121001', 'Ilkom', '2021-08-10', 'Ruang KoProdi MI', '', 'Lampu', 'Hanoc', 'Mati'),
(559, '197409302003121001', 'Ilkom', '2021-08-10', 'Labor Sistem Komputer', '', 'PC Unit', 'RAM DDR 4', 'Rusak'),
(560, '196108141987022001', 'Kimia', '2021-08-12', '0', '', 'Lampu', '', 'Lampu nion panjang mati di Lab Biokimia Jurusan Kimia Fmipa Unri'),
(561, '196108141987022001', 'Kimia', '2021-08-12', '0', '', '0', '', 'Permohonan pengadaan Wifi di Labor Kimia Anorganik Jurusan Kimia Fmipa Unri'),
(562, '196803261992031001', 'Fisika', '2021-08-12', '', '', 'Lampu', 'lampu', 'rusak lampu di Lab Pak lazuardi, dan perbaikan pintu WC di lab pak lazuardi'),
(563, '196108141987022001', 'Kimia', '2021-08-16', '0', '', '0', '', 'Permohonan pemasangan kabel LAN ruang Dosen Pak Leo Saputra, Ph.D di Labor Kimia Anorganik Jurusan Kimia FMIPA Unri'),
(564, '195907011990022001', 'Biologi', '2021-08-16', '006/ Administrasi', '', 'PC Unit', 'Lenovo ', 'komputer Lelet / lambat, minta tolong di instal ulang '),
(565, '196803261992031001', 'Fisika', '2021-08-18', '', '', 'Lampu', 'lam,pu', 'Bola Lampu putus (mati) di ruang buk Kaprodi S2 (Minarni)'),
(566, '196803261992031001', 'Fisika', '2021-08-18', '', '', 'AC', 'Ax', 'AC tak hidup di Lab. Fotonik (Lab. Buk Minarni)'),
(567, '196108141987022001', 'Kimia', '2021-08-23', '0', '', 'AC', '', 'Ac mati di ruang seminar I jurusan Kimia Fmipa Unri'),
(568, '196108141987022001', 'Kimia', '2021-08-23', '0', '', 'Printer ', '', 'Printer lampu merahnya kedap-kedip di ruang adminitrasi Jurusan Kimia Fmipa Unri'),
(569, '196108141987022001', 'Kimia', '2021-08-23', '0', '', 'PC Unit', '', 'Komputer administrasi Prodi S2 Kimia prosesnya lambat'),
(570, '196108141987022001', 'Kimia', '2021-08-24', '0', '', 'Mesin Air', '', 'Mesin air mati di gedung laboratorium Kimia Anorganik, Kimia Fisika dan Forensik'),
(571, '196803261992031001', 'Fisika', '2021-08-25', '', '', 'Lampu', 'lam,pu', 'lampu mati di Toilet Lab. Pak Lazuardi'),
(572, '196803261992031001', 'Fisika', '2021-08-31', '', '', 'Lampu', 'lampu', 'Lampu mati di ruangnya buk Vevy asyana (yaitu Exs. Ruang Almarhum Dr. Hamdi)'),
(573, '196803261992031001', 'Fisika', '2021-09-02', '', '', 'Saklar', 'sklar', 'sklar mati di Lab Material nya buk Dr. Ari Sulistyorini'),
(574, '196108141987022001', 'Kimia', '2021-09-07', '0', '', 'AC', '', 'Ac mati di ruang Koordinator Prodi S1 dan S3 Kimia FMIPA Unri'),
(575, '196108141987022001', 'Kimia', '2021-09-07', '0', '', 'Lampu', '', 'Lampu mati diruang Koordinator Prodi S3 Ilmu Kimia Fmipa Unri'),
(576, '196108141987022001', 'Kimia', '2021-09-07', '0', '', 'Lampu', '', 'Lampu mati dikamar kecil/Wc perempuan di Labor HPLC (depan ruang Prof Saryono)'),
(577, '195907011990022001', 'Biologi', '2021-09-09', 'Laboratorium Mikrobiologi', '', '', '', '1. Vortex, spesifikasi WhirliMixer, sudah tidak bisa mutar lagi\r\n2. Hotplate, spesifikasi Magnetic Stirrer With Heater\r\n3. Microwave, merk Samsung, tombol buka an rusak'),
(578, '195907011990022001', 'Biologi', '2021-09-10', '006/ Administrasi', '', 'PC Unit', 'Acer', 'tidak bisa membuka aplikasi selain yang ada di desktop, tidak bisa memprint, tidak bisa membuka atau klik menu search, tidak bisa klik mouse kiri untuk membuka aplikasi dll, dan kalau komputer mati dan dihidupkan kembali file2 yang disimpan hilang '),
(579, '196108141987022001', 'Kimia', '2021-09-10', '0', '', 'Lampu', '', 'Penggunaan lampu ruang labor sintesis 5 buah dan ruang dosen bu Ganis Fia Kartika, M.Si 3 buah'),
(580, '196108141987022001', 'Kimia', '2021-09-10', '0', '', '0', '', 'Wastafel bocor di Laboratorium Organik Sintesis Jurusan Kimia FMIPA Unri'),
(581, '196108141987022001', 'Kimia', '2021-09-13', '0', '', '0', '', 'Penambahan accespoint diruang prof Saryono, sekaliagus utk bimbingan mahasiswa S3 dan S2 Kimia'),
(582, '196108141987022001', 'Kimia', '2021-09-13', '0', '', '0', '', 'Penambahan PC diruang Prof Saryono'),
(583, '195907011990022001', 'Biologi', '2021-09-13', 'Ruang Rapat Lantai 2', '', 'Projector', '-', 'pemindahan posisi/arah infocus yang digantung diruang rapat '),
(584, '195907011990022001', 'Biologi', '2021-09-13', '009/ Ketua Jurusan', '', 'AC', 'National', 'ketika AC dihidupkan penutupnya tidak mau terbuka'),
(585, '', 'Biologi', '2021-09-14', '', '', '', '', ''),
(586, '195907011990022001', 'Biologi', '2021-09-14', '013/Ruang Dosen', '', 'Lampu', '', 'Bola lampu mati di ruang dosen ibu Dr. Roza Elvyra, M.Si, mohon segera di tindak lanjuti, terimakasih, karena dosennya sering komplen'),
(587, '196108141987022001', 'Kimia', '2021-09-16', '0', '', '0', '', 'Wifi mati diruang Akreditasi Jurusan Kimia Fmipa Unri (depan ruang Prof Amir Awaluddin, M.Sc)'),
(588, '195907011990022001', 'Biologi', '2021-09-17', '009/ Ketua Jurusan', '', 'Lampu', '-', 'bola lampu mati'),
(589, '195907011990022001', 'Biologi', '2021-09-17', '008/Lobi Jurusan', '', 'Lampu', '-', 'bola lampu mati, mohon di tindak lanjuti terimakasih'),
(590, '195907011990022001', 'Biologi', '2021-09-17', '006/ Administrasi', '', 'PC Unit', 'Acer', 'tidak bisa membuka aplikasi selain yang ada di desktop, tidak bisa memprint, tidak bisa membuka atau klik menu search, tidak bisa klik mouse kiri untuk membuka aplikasi dll, dan kalau komputer mati dan dihidupkan kembali file2 yang disimpan hilang. sehingga kerjaan admin terganggu'),
(591, '195907011990022001', 'Biologi', '2021-09-17', 'Ruang Rapat Lantai 2', '', 'Projector', '', 'pemindahan posisi/arah infocus yang digantung diruang rapat. harap segera di tindak lanjuti karena ruangan sering dipakai untuk seminar dan rapat oleh dosen '),
(592, '', 'Biologi', '2021-09-17', '', '', '', '', ''),
(593, '', 'Biologi', '2021-09-20', '', '', '', '', ''),
(594, '195907011990022001', 'Biologi', '2021-09-20', '014/Kebun Biologi', '', 'Mesin Air', '-', 'Pipa kran air rusak/bocor di kebun biologi, harap segera diperbaiki '),
(595, '195907011990022001', 'Biologi', '2021-09-20', 'Ruang Rapat Lantai 2', '', 'Plavon', '-', 'Kalau hujan meja rapat basah karena plavonnya bocor, harap segera di tindak lanjuti'),
(596, '196108141987022001', 'Kimia', '2021-10-06', '0', '', 'Lampu', '', 'Lampu mati diruang prof Titanian, depan ruang prof Amir Awaluddin.'),
(597, '196108141987022001', 'Kimia', '2021-10-06', '0', '', '0', '', 'Saluran pembuangan air tempat wudhu tersumbat di Gedung Jurusan Kimia Fmipa unri'),
(598, '196803261992031001', 'Fisika', '2021-10-08', '', '', 'AC', 'ac', 'ada tiga buah AC DI LAB. PAK LAZUARDI YG RUSAK, MENGELUARKAN AIR, BLOWER BERBUNYI, ADA AC YG TAK HIDUP. '),
(599, '195907011990022001', 'Biologi', '2021-10-13', 'Laboratorium Genetika', '', 'AC', 'LG', 'kerusakan di lab genetika, AC LG 2 unit Tidak dingin, kipas tidak berputar'),
(600, '196405051990021001', 'Matematika', '2021-10-13', '01 delta', '', 'PC Unit', 'Dell/Laptop', 'Laptop prodi bermasalah, arus kadang-kadang tak bisa masuk. '),
(601, '196108141987022001', 'Kimia', '2021-10-15', '0', '', 'Lampu', '', 'Lampu mati 1 buah diruang sidang 1 Jurusan Kimia'),
(602, '196803261992031001', 'Fisika', '2021-10-27', '', '', 'Mesin Air', 'mesin air', 'mesin air rusak  di lab. nano'),
(603, '196803261992031001', 'Fisika', '2021-10-27', '', '', 'Lampu', 'lampu', 'rusak  2 lampu 15 watt  di l;ab. nano'),
(604, '196108141987022001', 'Kimia', '2021-11-01', '0', '', 'AC', '', 'Ac bocor disaluran pembuangan air di Labor Sintesis'),
(605, '195907011990022001', 'Biologi', '2021-11-26', '008/Lobi Jurusan', '', 'Lampu', '-', 'Bola lampu di lobi dan teras depan jurusan mati, mohon segera di tindaklanjuti. terimakasih'),
(606, '196108141987022001', 'Kimia', '2021-11-29', '0', '', 'AC', '', 'Ac tidak dingin diruang PLP Labor Kimia Anorganik Jurusan Kimia FMIPA Unri'),
(607, '196108141987022001', 'Kimia', '2021-11-29', '0', '', 'AC', '', 'Ac tidak dingin diruang Sekretaris Jurusan Kimia FMIPA Unri'),
(608, '196108141987022001', 'Kimia', '2021-11-30', '0', '', 'Lampu', '', 'Lampu mati di ruang Kimia bersama dan aliran listrik kimia bersama'),
(609, '196405051990021001', 'Matematika', '2021-12-01', '07 delta Ruang Seminar A', '', 'Lampu', 'Bola Lampu TL 40 W', 'Bola lampu mati, ruang seminar jadi sangat gelap, mohon penggantian segera'),
(610, '196405051990021001', 'Matematika', '2021-12-01', '00 Koridor Delta', '', 'Lampu', 'Lampu TL', 'Bola Lampu TL sudah mulai sangat redup, sementara pencahayaan hanyatergantung kepada lampu.  Jadi sekarang cukup gelap.  Mohon penggantian segera'),
(611, '196108141987022001', 'Kimia', '2021-12-01', '0', '', 'AC', '', 'Ac 2 buah tidak dingin di Labor Instrumen (belakang Labor Kimia Organik) Jurusan Kimia FMIPA Unri'),
(612, '196803261992031001', 'Fisika', '2021-12-03', '', '', 'AC', 'AC', 'Saluran AC bocor, sehingga keluar air dari plapon di depan Sekretariat /TU Jurusan Fisika'),
(613, '195907011990022001', 'Biologi', '2021-12-03', '006/ Administrasi', '', 'Lampu', '-', 'Bola lampu mati'),
(614, '195907011990022001', 'Biologi', '2021-12-03', 'Ruang Rapat Lantai 2', '', 'Plavon', '-', 'Bocor'),
(615, '', 'Biologi', '2021-12-03', '', '', '', '', ''),
(616, '195907011990022001', 'Biologi', '2021-12-03', '015 / Ruang Baca', '', 'Saklar', '-', 'Saklarnya copot / Jebol '),
(617, '195907011990022001', 'Biologi', '2021-12-03', '015 / Ruang Baca', '', 'Plavon', '-', 'Bocor dan sudah lapuk, sehingga kalau hujan air tergenang di ruang baca'),
(618, '', '', '2021-12-03', '', '', '', '', ''),
(619, '196108141987022001', 'Kimia', '2021-12-09', '0', '', '0', '', '4 alat yg perlu perbaiki di labor kimia fisika.Jurusan Kimia:\r\n1. Furnace merk       Nabertherm 3 bh \r\n2. Hot plate stirrer 4 bh\r\n3. AC rusak MCB nya\r\n4. Flower lemari asam.'),
(620, '196108141987022001', 'Kimia', '2021-12-09', '0', '', 'Lampu', '', 'Lampu mati di ruang administrasi Jurusan Kimia Fmipa Unri'),
(621, '', 'Ilkom', '2021-12-13', '', '', '', '', ''),
(622, '197409302003121001', 'Ilkom', '2021-12-13', '06 Ruang Dosen', '', 'AC', 'LG', 'Tidak dingin, kompresor sering mati sendiri'),
(623, '196803261992031001', 'Fisika', '2021-12-14', '', '', 'MCB', 'mcb', 'Dua buah rusak MCB di labor Fisika dasar'),
(624, '197409302003121001', 'Ilkom', '2021-12-20', 'Ruang Kajur', '', 'Lampu SL( Biasa)', 'Hanoc', 'Kedap kedip sendiri'),
(625, '197409302003121001', 'Ilkom', '2021-12-20', 'Ruang Tamu Lantai 2', '', 'Pintu', 'DMT', 'Slinder Kunci Pintu jembatan dekanat ke Ilkom rusak'),
(626, '', 'Ilkom', '2021-12-22', '', '', '', '', ''),
(627, '', 'Ilkom', '2021-12-22', '', '', '', '', ''),
(628, '', 'Ilkom', '2021-12-22', '', '', '', '', ''),
(629, '197409302003121001', 'Ilkom', '2021-12-22', 'Ruang Tamu Lantai 1', '', 'Pintu', 'Kayu', 'Kunci gerendel rusak, pintu tak bisa dibuka'),
(630, '196108141987022001', 'Kimia', '2021-12-27', '0', '', '0', '', 'CPU Spectrofotometer UV-Vis alur listrik tdk masuk Jurusan Kimia Fmipa'),
(631, '195907011990022001', 'Biologi', '2021-12-28', 'Laboratorium Genetika', '', 'Lampu', '-', 'Aliran Listrik mati di ruang laboran, harap segera ditindak lanjuti '),
(632, '196108141987022001', 'Kimia', '2022-01-10', '0', '', 'Lampu', '', 'Lampu mati dibeberapa ruang:\r\n1. Seminar jurusan I : 2 buah\r\n2. Seminar Jurusan II : 1 buah\r\n3. Ruang PLP Labor Kimia Fisik : 1 buah'),
(633, '196108141987022001', 'Kimia', '2022-01-10', '0', '', 'AC', '', 'Konslet Listrik saat balikan saklar Ac  (keluar percikan api) di ruang seminar I Jurusan Kimia Fmipa'),
(634, '196108141987022001', 'Kimia', '2022-01-11', '0', '', 'AC', '', 'Ac mati di ruang Kajur Kimia Fmipa'),
(635, '20211212', 'Dekanat', '2022-01-17', '0', '', 'Mesin Air', 'Shimizu Model :Ps-128 bit', 'Kerusakan plug, tutup lobang pancingan air pada pompa.'),
(636, '196803261992031001', 'Fisika', '2022-01-19', '', '', 'HUB ', 'HUB WIEEFI', 'Mohon di pasang Wefii  di Lab. Fisika Kebumian'),
(637, '196108141987022001', 'Kimia', '2022-01-20', '0', '', 'Keramik', '', 'Lantai lab. Koba Jurusan Kimia rusak (keramik yang banyak yg pecah)'),
(638, '196108141987022001', 'Kimia', '2022-01-20', '0', '', '0', '', 'Saluran pembuangan air tersumbat di Lab Koba Jurusan Kimia Fmipa Unri'),
(639, '196108141987022001', 'Kimia', '2022-01-21', '0', '', 'AC', '', '3 Ac mati di ruang seminar I, 1 ac mati di ruang seminar II Jurusan Kimia Fmipa Unri'),
(640, '196405051990021001', 'Matematika', '2022-01-25', '11 delta/ Ruang Kajur', '', 'PC Unit', 'Monitor/samsung', 'Monitor dipakai di ruang baca Matematika, kerusakan layar hanya hitam tidak ada sinyal sama sekali.  Sekarang untuk operasional ruang baca dipinjamkan monitor salah seorang dosen.  Mulai bulan feb akan ada perkuliahan dosen akan datang mohon solusi.'),
(641, '196405051990021001', 'Matematika', '2022-01-25', '11 delta/ Ruang Kajur', '', 'PC Unit', 'Lenovo/monitor', 'Monitor rusak ada garisnya di screen secara vertikal.  Monotor ini sebenarnya digunakan diruang pak Supriadi, Tapi karena kondisi, monitor di ruang kajur dibawa ke ruang pak supriadi.  Mohon solusi agar ketersedian monitor ini segera bisa diperbaikan.'),
(642, '196803261992031001', 'Fisika', '2022-01-26', '', '', 'AC', 'ac', 'AC rusak di lab. elektronika'),
(643, '196803261992031001', 'Fisika', '2022-01-26', '', '', 'Lampu', 'lampu', 'lampu rusak di lab elektronika'),
(644, '196803261992031001', 'Fisika', '2022-01-26', '', '', 'Lampu', 'lampu', 'lampu rusak di ruang rahmi dewi'),
(645, '196803261992031001', 'Fisika', '2022-01-26', '', '', 'Stop Kontak', 'stop kontak', 'stop kontak rusak di ruang buk Dr. Ari sulistyo rini'),
(646, '196803261992031001', 'Fisika', '2022-02-02', '', '', 'AC', 'ac', 'AC rusak berbunyi keras di ruang TU Jurusan'),
(647, '196803261992031001', 'Fisika', '2022-02-02', '', '', 'Pintu', 'Pelobang kaca', 'Mohon pembuatan pelobang kaca di TU Jurusan Fisika'),
(648, '', 'Loboratori', '2022-02-07', '', '', '', '', ''),
(649, '195907011990022001', 'Biologi', '2022-02-11', 'Laboratorium Fotomikrografi', '', 'AC', '-', 'Tidak Dingin'),
(650, '195907011990022001', 'Biologi', '2022-02-11', 'Laboratorium Zoologi', '', '0', '-', 'Kipas angin di lab zoologi yang baru tidak hidup'),
(651, '195907011990022001', 'Biologi', '2022-02-11', 'Laboratorium Zoologi', '', 'Lampu', '-', 'Lampu Koridor sepanjang lab zoologi sampai lab fotomikro tidak hidup/mati'),
(652, '195907011990022001', 'Biologi', '2022-02-11', 'Ruang Rapat Lantai 2', '', '0', '-', 'WIFI diruang rapat lantai 2 tidak nyambung'),
(653, '195907011990022001', 'Biologi', '2022-02-11', 'Ruang S2', '', 'Plavon', '-', 'plavon di ruang dosen S2 lapuk dan kalau hujan bocor'),
(654, '195907011990022001', 'Biologi', '2022-02-11', '009/ Ketua Jurusan', '', 'PC Unit', 'Lenovo', 'komputer ketua jurusan lelet mohon di instal ulang serta mouse komputernya tidak ada'),
(655, '195907011990022001', 'Biologi', '2022-02-11', 'SEMUA RUANG', '', '0', '', 'colokan listrik untuk ruang dosen di lantai 2 belum ada, berhubung sudah mau offline harap di tindak lanjuti'),
(656, '196108141987022001', 'Kimia', '2022-02-15', '0', '', '0', '', 'Vakum rusak di Labor Kimia Anorganik Jurusan Kimia FMIPA UNRI'),
(657, '196108141987022001', 'Kimia', '2022-02-15', '0', '', 'AC', '', 'Ac tdk dingin di ruang Ketua Jurusan Kimia FMIPA Unri'),
(658, '195907011990022001', 'Biologi', '2022-02-15', '008/Lobi Jurusan', '', 'Pintu', '-', 'Kaca Pintu Pecah'),
(659, '195907011990022001', 'Biologi', '2022-02-21', '01 / Laboratorium Botani', '', 'Lampu', '-', 'Lab botani 3 lampu mati.'),
(660, '195907011990022001', 'Biologi', '2022-02-21', '02 / Laboratorium Mikrobiologi', '', 'Lampu', '-', 'Listrik di bens lab mikrobiologi hanya 1 baris yg hidup'),
(661, '196108141987022001', 'Kimia', '2022-02-23', '0', '', 'AC', '', 'Ac rusak diruang Sekretaris Jurusan Kimia Fmipa Unri'),
(662, '196108141987022001', 'Kimia', '2022-03-01', '0', '', 'Keramik', '', 'Keramik pecah-pecah diruang seminar I dan depan pintu masuk koordinator S2 Kimia Jurusan Kimia Fmipa Unri'),
(663, '196108141987022001', 'Kimia', '2022-03-01', '0', '', 'AC', '', 'AC konslet diruang Pak Dr. Hilwan Yuda Teruna, M. Si, Apt Labor Kimia Organik'),
(664, '196803261992031001', 'Fisika', '2022-03-01', '', '', 'Mesin Air', 'mesin air', 'mesin air rusak di laboratorium pak lazuardi');
INSERT INTO `laporan` (`id`, `nip`, `nama_jurusan`, `tanggal_lapor`, `kode_barang`, `jawab_ruang`, `nama_alat`, `merk`, `deskripsi`) VALUES
(665, '196803261992031001', 'Fisika', '2022-03-01', '', '', 'AC', 'ac', 'AC bocor di lab buk Minarni'),
(666, '196803261992031001', 'Fisika', '2022-03-01', '', '', 'AC', 'ac', 'AC rusak di Ruang dosen di Auditorium fisika yaitu Ruang Buk Rakhmawati Farma'),
(667, '197409302003121001', 'Ilkom', '2022-03-04', 'Labor EDP', '', 'AC', 'LG', 'Tidak dingin, disarankan teknisi untuk ganti AC'),
(668, '197409302003121001', 'Ilkom', '2022-03-04', 'Ruang Rapat', '', 'Lampu', 'Hanoc', 'Mati'),
(669, '196108141987022001', 'Kimia', '2022-03-07', '0', '', '0', '', 'Dinding retak sehingga terlihat antar ruang pembatas ruang seminar 1 dan ruang seminar 2 Jurusan Kimia Fmpa Unri'),
(670, '196108141987022001', 'Kimia', '2022-03-08', '0', '', '0', '', 'Ac rusak diruang Pak Dr. Rudi Hendra,  bu Emil labor Organik Jurusan Kimia'),
(671, '196108141987022001', 'Kimia', '2022-03-08', '0', '', '0', '', 'Ac rusak diruang Prof Adel Labor Sintesis'),
(672, '196108141987022001', 'Kimia', '2022-03-08', '0', '', '0', '', 'Ac rusak diruang bu Zul PLP Kimia Anorganik Jurusan Kimia'),
(673, '196108141987022001', 'Kimia', '2022-03-08', '0', '', '0', '', 'Konector penguhubung kabel LAN ke Komputer Jurusan tdk berfungsi/rusak'),
(674, '196405051990021001', 'Matematika', '2022-03-09', '09 delta (Ruang ADM Jurusan)', '', 'Mesin Fotocopy', 'cannon', 'Tinta mesin foto copy sudah habis, perlu penggantian segera, agar  pelayanan adm sempurna'),
(675, '196405051990021001', 'Matematika', '2022-03-09', '04 delta, Ruang Dosen LB', '', 'Lampu', 'TL', 'Bola lampu mati, hanya punya saru lampu dan ruang sangar gelap terlebih mendung, mohon penggantia segera karena ruang ini dipakai dosen'),
(676, '', 'Matematika', '2022-03-09', '', '', '', '', ''),
(677, '196405051990021001', 'Matematika', '2022-03-09', '05 Epsilon', '', 'Pintu', 'Aluminium', 'Pak Nababan Pensiun dan kunci dibawanya, sementara yagn ingin masuk dosen perempuan, mohon kunci diganti'),
(678, '196803261992031001', 'Fisika', '2022-03-09', '', '', 'AC', 'ac', 'AC RUSAK DI RUANG PAK USMAN MALIK'),
(679, '196803261992031001', 'Fisika', '2022-03-09', '', '', 'AC', 'AC', 'AC RUSAK DI RUANG PAK SALOMO'),
(680, '196803261992031001', 'Fisika', '2022-03-09', '', '', 'AC', 'AC', 'AC RUSAK DI LAB. FISIKA KOMPUTASI PAK DEFRIANTO'),
(681, '196803261992031001', 'Fisika', '2022-03-09', '', '', 'AC', 'AC', 'AC RUSAK DI TU JURUSAN FISIKA'),
(682, '196803261992031001', 'Fisika', '2022-03-09', '', '', 'Printer ', 'FOTO COPY', 'MESIN FOTO COPI DI JURUSAN FISIKA RUSAK'),
(683, '196803261992031001', 'Fisika', '2022-03-09', '', '', 'PC Unit', 'PC', 'PC DI RUANG MUNAWIR   RUSAK '),
(684, '196108141987022001', 'Kimia', '2022-03-10', '0', '', 'Lampu', '', '6 lampu mati dan 1 redup lampu di Labor Kimia Anorganik Jurusan Kimia FMIPA Unri'),
(685, '196108141987022001', 'Kimia', '2022-03-11', '0', '', 'Plavon', '', 'Plavon rusak/lapuk dibeberapa Labor diantaranya: Kimia Instrumen, Kimia Organik dan Biokimia Jurusan Kimia'),
(686, '196108141987022001', 'Kimia', '2022-03-11', '0', '', 'Plavon', '', 'Plavon bocor di Labor Sintesis, HPLC, Kimia Bahan Organik, Bikimia, Instrumen Jurusan Kimia Fmipa'),
(687, '196108141987022001', 'Kimia', '2022-03-11', '0', '', '0', '', '3 buah Hofplate Labor Kimia Fisika mengalamin kerusakan diantarnya :\r\n1. Stirernya tidak jalan\r\n2 Mati total\r\n3 Suhunya (panas) tidak bisa dikontrol'),
(688, '196108141987022001', 'Kimia', '2022-03-11', '0', '', '0', '', 'Vakum di Labor Kimia Anorganik rusak/tidak kuat lagi '),
(689, '196803261992031001', 'Fisika', '2022-03-14', '', '', 'AC', 'ac', 'AC rusak di ruang sidang Jurusan Fisika'),
(690, '196405051990021001', 'Matematika', '2022-03-16', '13 Delta Lab Komputasi', '', 'AC', 'Panasonic', 'AC tak hidup dari masa UTBK, tapi samai sekarang tak ada perbaikan, sementara lab dipakai untuk kuliah, mohon perbaikan segera..  Dulu janjinya akan diperbaiki, karena rusa disaat UTBK, tapi sampai sekarang tak ada ciri-ciri akan dikerjakan'),
(691, '197409302003121001', 'Ilkom', '2022-03-17', 'Ruang KoProdi MI', '', 'AC', 'Panasonic', 'Tidak dingin, freon kosong hanya kipas AC saja yang hidup'),
(692, '197409302003121001', 'Ilkom', '2022-03-17', 'Ruang Sekjur', '', 'Lampu', 'Hanoc', 'Mati'),
(693, '196108141987022001', 'Kimia', '2022-03-23', '0', '', 'Lampu', '', 'Lampu mati diruang Koordinator S2 Kimia FMIPA Unri'),
(694, '20211212', 'Dekanat', '2022-03-23', '0', '', 'AC', 'Daikin', 'Freyon habis'),
(695, '20211212', 'Dekanat', '2022-03-24', '0', '', 'AC', 'LG', 'Ruang sekre HIMAKI_ Angin AC tidak keluar'),
(696, '20211212', 'Dekanat', '2022-03-24', '0', '', 'AC', 'Panasonic', 'Ruang sekre HIMABIO_AC tidak bisa dihidupkan'),
(697, '20211212', 'Dekanat', '2022-03-24', '0', '', 'Plavon', 'Atap dan plavon', 'Ruang sekre HIMABIO_ Atap dan plavon bocor '),
(698, '20211212', 'Dekanat', '2022-03-24', '0', '', 'AC', 'Panasonic', 'Ruang sekre HIMASKA_Freyon habis'),
(699, '20211212', 'Dekanat', '2022-03-24', '0', '', 'AC', 'Panasonic', 'Ruang sekre HIMAFI_ Angin AC tidak keluar'),
(700, '20211212', 'Dekanat', '2022-03-24', '0', '', 'AC', 'Panasonic', 'Ruang sekre HIMALKOM_ AC kotor dan freyon habis'),
(701, '20211212', 'Dekanat', '2022-03-24', '0', '', 'AC', 'Gree', 'Ruang sekre ALKAMIL_ AC tidak dingin'),
(702, '20211212', 'Dekanat', '2022-03-24', '0', '', 'Plavon', 'Plavon', 'Ruang sekre HIMASKA_ Plavon atap bocor'),
(703, '20211212', 'Dekanat', '2022-03-24', '0', '', 'Plavon', 'Plavon', 'Ruang sekre HIMAFI_ Plavon atap bocor'),
(704, '20211212', 'Dekanat', '2022-03-24', '0', '', 'Plavon', 'Plavon', 'Ruang sekre HIMALKOM_ Plavon atap bocor'),
(705, '195907011990022001', 'Biologi', '2022-03-28', 'Ruang Rapat Lantai 2', '', 'Projector', '-', 'Infokus tidak menyambung ke laptop'),
(706, '195907011990022001', 'Biologi', '2022-03-28', 'Ruang Rapat Lantai 2', '', 'AC', '-', 'Kontak listrik tidak menyambung/kontak AC membalik, AC tidak dingin'),
(707, '195907011990022001', 'Biologi', '2022-03-28', '006/ Administrasi', '', 'AC', 'Panasonic', 'AC tidak dingin, sering bunyi2 kuat'),
(708, '195907011990022001', 'Biologi', '2022-03-28', 'Studio Komputer', '', 'AC', '-', 'kontak AC sering membalik'),
(709, '195907011990022001', 'Biologi', '2022-03-28', '06 / Ketua Jurusan', '', 'AC', 'National', 'AC tidak dingin'),
(710, '196108141987022001', 'Kimia', '2022-03-29', '0', '', 'Lampu', '', '2buah Lampu mati di Labor Organik dan 4 buah dilorong labor Organik Jurusan Kimia Fmipa Unri'),
(711, '196108141987022001', 'Kimia', '2022-03-31', '0', '', 'Stop Kontak', '', 'Stop kontak rusak krn keras tidak bisa balik untuk menghidupkan infocus di ruang seminar 1 jurusan kimia fmipa unri'),
(712, '196108141987022001', 'Kimia', '2022-04-01', '0', '', 'AC', '', 'Ac tidak dingin diruang Administrasi Jurusan dan ruang Prof Amir Awaluddin yg dekat dengan labor sintesis'),
(713, '196108141987022001', 'Kimia', '2022-04-01', '0', '', 'AC', '', 'Cuci Ac bu Firda di Labor bersama/gudang Zat Jurusan Kimia Fmipa Unri'),
(714, '196108141987022001', 'Kimia', '2022-04-04', '0', '', '0', '', 'Tempat pembuangan air keluar bosor di labor Sintesis Jurusan Kimia'),
(715, '196108141987022001', 'Kimia', '2022-04-04', '0', '', '0', '', 'Ruangan Prof Titanian dan bu Andi bocor di Labor Biokimia Jurusan Kimia'),
(716, '196108141987022001', 'Kimia', '2022-04-07', '0', '', 'AC', '', 'Ac mati diruang Prof Amir sebelah labor Sintesis Jurusan Kimia'),
(717, '196108141987022001', 'Kimia', '2022-04-07', '0', '', 'AC', 'Panasonic', 'Ac mati diruang Prof Amir sebelah Labor Sintesis Kimia Fmipa Unri'),
(718, '196803261992031001', 'Fisika', '2022-04-11', '', '', 'AC', 'ac', 'AC RUSAK DI LAB. NYA PAK LAZUARDI'),
(719, '196803261992031001', 'Fisika', '2022-04-11', '', '', 'Lampu', 'lampu', 'PENGANTIAN 3 BUAH BOLA LAMPU DI LAB NYA PAK LAZUARDI'),
(720, '195907011990022001', 'Biologi', '2022-04-13', '09 / Ruang S2', '', 'AC', '-', 'tidak hidup / rusak'),
(721, '195907011990022001', 'Biologi', '2022-04-13', '015 / Ruang Baca', '', 'AC', 'National', 'tidak hidup / rusak'),
(722, '195907011990022001', 'Biologi', '2022-04-13', '02 / Laboratorium Mikrobiologi', '', 'Stop Kontak', '-', 'instalasi listrik di lab mikrobiologi yang baru, karna hanya ada 1 bens yang ada colokan listriknya sedangkan praktikum perlu colokan untuk mikroskop'),
(723, '', 'Biologi', '2022-04-13', '', '', '', '', ''),
(724, '195907011990022001', 'Biologi', '2022-04-13', '016/Ruang Dosen', '', 'AC', 'Panasonic', 'AC baru yang dipasang di ruang dosen lantai 1 kalau dihidupkan AC bocor, sehingga ruang dosen an. Radith Mahatma basah karena kena tetesan air dari AC tersebut.'),
(725, '196803261992031001', 'Fisika', '2022-04-18', '', '', 'MCB', 'mcb', 'MCB DI LAB MATERIAL D SELALU JEPRET KE BAWAH (LAB BUK DR. ARI SULISTYORINI'),
(726, '197409302003121001', 'Ilkom', '2022-04-21', 'Labor Multimedia', '', 'MCB', 'Top Breaker Schneider', 'Terbakar'),
(727, '20211212', 'Dekanat', '2022-04-22', '0', '', 'AC', 'PANASONIC', 'kapasitor ac sekre HIMASKA dan HIMAFI yang harus diganti'),
(728, '196803261992031001', 'Fisika', '2022-04-25', '', '', 'Lampu', 'PITING LAMPU', 'PITING LAMPU RUSAK 30 BUAH DI LORONG LAB FISIKA DASAR DAN LAB MATERIAL'),
(729, '196405051990021001', 'Matematika', '2022-05-09', '11 delta/ Ruang Kajur', '', 'AC', 'LG', 'AC ttsk mau dingin walaupun di set 18 derajat, yang keluar cuma hawa panas. Mohon perbaikan untk kenyamanan bekerja'),
(730, '196108141987022001', 'Kimia', '2022-05-11', '0', '', '0', '', 'Kerusakan atap labor Kimia fisik Jurusan Kimia Fmipa Unri'),
(731, '', 'Ilkom', '2022-05-12', '', '', '', '', ''),
(732, '197409302003121001', 'Ilkom', '2022-05-12', 'LOBI lantai 2 Ilkom', '', 'Lampu', 'HANOCH', 'MATI /PUTUS'),
(733, '197409302003121001', 'Ilkom', '2022-05-12', 'Labor EDP', '', 'Projector', 'BENQ', 'Gambar Kabur , tidak jelas'),
(734, '196108141987022001', 'Kimia', '2022-05-12', '0', '', 'Lampu', '', 'Pengadaan lampu sebanyak 7 buah diruang baru dosen Jurusan Kimia (Sebelumnya ruang Perpustakaan Kimia)'),
(735, '', 'Matematika', '2022-05-12', '', '', '', '', ''),
(736, '196405051990021001', 'Matematika', '2022-05-12', '03 delta', '', 'AC', 'LG', 'AC tidak dingin sama sekali, mohon perbaikan segera, agar kerja adm oprimal'),
(737, '196108141987022001', 'Kimia', '2022-05-17', '0', '', 'Saklar', '', 'Saklar AC bolak-balik di ruang Administrasi Jurusan Kimia sehingga ac tdk bisa hidup'),
(738, '197409302003121001', 'Ilkom', '2022-05-17', 'Ruang Kajur', '', 'AC', 'Panasonic', 'Tidak dingin'),
(739, '196108141987022001', 'Kimia', '2022-05-18', '0', '', 'Printer ', 'Epson L3150', 'Print Jurusan kimia terjadi kebocoran tinta dan hasil print muncul garis2 hitam walaupun sudah dilakukan cleaning'),
(740, '196108141987022001', 'Kimia', '2022-05-18', '0', '', 'Gembok / alat Pengunci lainnya', '', 'Engsel pintu ruang seminar II Jurusan Kimia rusak '),
(741, '196108141987022001', 'Kimia', '2022-05-18', '0', '', 'AC', 'LG', 'Ac bocor /banjil jika dihidupkan di ruang seminar I Jurusan Kimia FMipa Unri'),
(742, '196803261992031001', 'Fisika', '2022-05-18', '', '', 'MCB', 'mcb sering turun, ac rusak', 'mcb sering turun, di LAB MATERIAL D '),
(743, '197409302003121001', 'Ilkom', '2022-05-22', 'Teras Tangga ke Lantai 2 Lab. ILKOM', '', 'Lampu', 'Hanochs', 'MATI'),
(744, '197409302003121001', 'Ilkom', '2022-05-22', 'Ruang Kajur', '', 'AC', 'Panasonic', 'AC Tidak dingin, freon kosong hanya kipas AC saja yang hidup dan setiap 3 - 5 menit  setelah AC hidup,  lalu mati sendiri'),
(745, '196803261992031001', 'Fisika', '2022-05-23', '', '', 'AC', 'AC', 'Ac rusak di TU Jurusan fisika, panas sekali ruangan, ini udah laporan yg kesekian kalinya'),
(746, '196405051990021001', 'Matematika', '2022-05-23', '05 delta, Dapur', '', 'Lampu', 'Lampu TL', 'Lampu tidak mau hidup, berkedip terus, mohon penggantian bola sangat mengganggu kalau ada yang makan diruang tersebut'),
(747, '196405051990021001', 'Matematika', '2022-05-23', '09 epsilon', '', 'Lampu', 'Lampu TL', 'Bola lampu di ruangan yang seharusnya 4 hanya ada  bola.  Dari  3 bola yang hidup hanya 2, itu pun sudah tidak terang.  Mohon penggantian segera'),
(748, '196108141987022001', 'Kimia', '2022-05-24', '0', '', 'AC', '', 'Ac tidak dingin diruang Spektro dan FTIR (sebelah ruang Prof. Dr. Jasril, M.Si)'),
(749, '195907011990022001', 'Biologi', '2022-05-24', '09 / Ruang S2', '', 'Lampu', '-', 'Bola lampu di ruang dosen an. Ibu Mayta Novaliza Isda mati, mohon segera di tindak lanjuti'),
(750, '197409302003121001', 'Ilkom', '2022-05-25', 'Ruang Rapat', '', 'Lampu', 'Hanoch', 'Mati'),
(751, '197409302003121001', 'Ilkom', '2022-05-25', 'Ruang Kajur', '', 'Lampu', 'Hanoch', 'mati hidup, mati sebentar lalu hidup lagi'),
(752, '196803261992031001', 'Fisika', '2022-06-02', '', '', 'Pintu', 'pintu dll', 'PERBAIKAN UNTUK DUA  RUANG DOSEN BARU, YAITU : PERBAIKAN : 3 BUAH KUNCI PINTU, PLAPON, PINTU SATU, LANTAI DIBERI KARPET PLASTIK, DINDING DI CAT, JENDELA DIBERI GORDEN,  '),
(753, '196108141987022001', 'Kimia', '2022-06-06', '0', '', '0', '', 'Jaringan wifi dan kabel LAN  off di Jurusan Kimia '),
(754, '197409302003121001', 'Ilkom', '2022-06-06', 'Ruangan TU Jurusan ILKOM', '', 'AC', 'LG', 'Bocor, Air Keluar dari AC membasahi lantai'),
(755, '195907011990022001', 'Biologi', '2022-06-07', '007/Kamar Mandi Lantai 1', '', 'Lampu', '-', 'Bola Lampu mati mohon segera ditindak lanjuti. terimakasih'),
(756, '196108141987022001', 'Kimia', '2022-06-07', '0', '', '0', '', 'Kran air rusak di kamar kecil/kamar mandi perempuan di Gedung HPLC (depan ruang Prof Saryono)'),
(757, '196108141987022001', 'Kimia', '2022-06-07', '0', '', 'Lampu', '', 'Lampu mati 1 buah diruang Prof Titania'),
(758, '196108141987022001', 'Kimia', '2022-06-07', '0', '', '0', '', 'Ac bocor ke teras di 4 lokasi yaitu depan ruang Akreditasi Jurusan Kimia,  ruang Seminar I, Administrasi Jurusan dan Labor Sintesis (sebelah ruang Prof Adel)'),
(759, '197409302003121001', 'Ilkom', '2022-06-08', 'Ruangan TU Jurusan ILKOM', '', 'AC', 'LG', 'Bocor, Air Keluar dari AC membasahi lantai. Kondisi sekarang ditampung pada ember dan berbahaya bila ember penuh akan membasahi meja dan lantai. Di lantai ada colokan listrik, mohon segera diperbaiki'),
(760, '195907011990022001', 'Biologi', '2022-06-10', '06/ Laboratorium Fotomikrografi', '', 'Mesin Air', '-', 'Mesin air di lab mati harap di tindak lanjuti'),
(761, '195907011990022001', 'Biologi', '2022-06-10', '09 / Ruang S2', '', 'Lampu', '-', 'Bola lampu di ruang dosen an. Ibu Mayta Novaliza Isda mati, mohon segera di tindak lanjuti'),
(762, '196108141987022001', 'Kimia', '2022-06-15', '0', '', 'Lampu', '', 'Lampu mati sebanyak 6 (enam) buah di Labor Kimia Fisik Jurusan Kimia Fmipa Unri'),
(763, '196108141987022001', 'Kimia', '2022-06-15', '0', '', 'Pintu', '', 'Teralis pintu kanan patah bagian bawahnya, dan teralis pintu kiri patah bagian atasnya di Labor Kimia Anorganik Jurusan Kimia Fmipa Unri'),
(764, '196405051990021001', 'Matematika', '2022-06-21', '06 epsilon', '', 'AC', 'LG', 'AC bocor dan tak dingin mohon perbaikan segera untuk kenyamanan dosen bekerja'),
(765, '196405051990021001', 'Matematika', '2022-06-21', '17 epsilon', '', 'AC', 'LG', 'AC  tak dingin mohon perbaikan segera untuk kenyamanan dosen bekerja'),
(766, '196405051990021001', 'Matematika', '2022-06-21', '11 epsilon', '', 'AC', 'LG', 'AC tak dingin mohon perbaikan segera untuk kenyamanan dosen bekerja'),
(767, '196405051990021001', 'Matematika', '2022-06-21', '00 Toilet 1 Delta', '', 'Lampu', 'Pijar/hannoc', 'Bola lampu tak hidup, putus, mohon penggantian'),
(768, '197409302003121001', 'Ilkom', '2022-06-22', 'Ruangan TU Jurusan ILKOM', '', 'Pintu', 'Pintu Aluminium', 'Pintu sering bermasalah, kunci sering patah dan selinder bermasalah'),
(769, '196108141987022001', 'Kimia', '2022-06-27', '0', '', '0', '', 'Pipa bocor didalam (dibawah keramik) Labor Kimia Anorganik Jurusan Kimia FMIPA Unri'),
(770, '196108141987022001', 'Kimia', '2022-06-27', '0', '', 'Mesin Fotocopy', '', 'Hasil copian mesin fotocopy Jurusan Kimia Fmipa Unri tulisannya mulai buram '),
(771, '196108141987022001', 'Kimia', '2022-06-27', '0', '', '0', '', 'Meja Besar rusak (perlu perbaikan) di ruang seminar 1 Jursan Kimia dan ruang diskusi pascasarjana Kimia Fmipa Unri'),
(772, '196108141987022001', 'Kimia', '2022-06-28', '0', '', 'Lampu', '', 'Lampu mati dibeberapa ruangan dibawah ini:\r\n1. 3 buah di ruang seminar I jurusan Kimia\r\n2. 2 buah di ruang tamu Jurusan Kimia\r\n3. 2 buah di Labor Biokimia Jurusan Kimia Fmipa Unri'),
(773, '196108141987022001', 'Kimia', '2022-06-29', '0', '', 'Lampu', '', '4 buah lampu mati di Labor Forensik/ dibelakang Labor Kimia Fisika Jurusan Kimia Fmipa'),
(774, '196108141987022001', 'Kimia', '2022-06-29', '0', '', '0', '', 'Wifi tidak conek ke internet di Labor Forensik. tepatnya dibelakang Labor Kimia Fisika Jurusan kimia Fmipa Unri'),
(775, '197409302003121001', 'Ilkom', '2022-06-29', 'Labor Sistem Komputer', '', 'AC', 'Panasonic', 'Bocor dan air menetes dari AC');

-- --------------------------------------------------------

--
-- Table structure for table `laporan_status`
--

CREATE TABLE `laporan_status` (
  `id` int(11) NOT NULL,
  `id_laporan` int(11) NOT NULL,
  `id_user` bigint(21) NOT NULL,
  `tanggal` datetime NOT NULL,
  `deskripsi` text NOT NULL,
  `status` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE `log` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_atasan` int(11) NOT NULL,
  `deskripsi` text NOT NULL,
  `status` int(2) NOT NULL,
  `verifikasi` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_01_12_173356_create_permission_tables', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(1, 'App\\Models\\User', 2),
(2, 'App\\Models\\User', 3);

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'user-list', 'web', '2022-06-29 23:16:33', '2022-06-29 23:16:33'),
(2, 'user-create', 'web', '2022-06-29 23:16:33', '2022-06-29 23:16:33'),
(3, 'user-edit', 'web', '2022-06-29 23:16:33', '2022-06-29 23:16:33'),
(4, 'user-delete', 'web', '2022-06-29 23:16:33', '2022-06-29 23:16:33'),
(5, 'role-create', 'web', '2022-06-29 23:16:33', '2022-06-29 23:16:33'),
(6, 'role-edit', 'web', '2022-06-29 23:16:33', '2022-06-29 23:16:33'),
(7, 'role-list', 'web', '2022-06-29 23:16:33', '2022-06-29 23:16:33'),
(8, 'role-delete', 'web', '2022-06-29 23:16:33', '2022-06-29 23:16:33'),
(9, 'permission-list', 'web', '2022-06-29 23:16:33', '2022-06-29 23:16:33'),
(10, 'permission-create', 'web', '2022-06-29 23:16:33', '2022-06-29 23:16:33'),
(11, 'permission-edit', 'web', '2022-06-29 23:16:33', '2022-06-29 23:16:33'),
(12, 'permission-delete', 'web', '2022-06-29 23:16:33', '2022-06-29 23:16:33');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'web', '2022-06-29 23:16:33', '2022-06-29 23:16:33'),
(2, 'User', 'web', '2022-06-29 23:16:33', '2022-06-29 23:16:33');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ruang`
--

CREATE TABLE `ruang` (
  `id_ruang` int(10) NOT NULL,
  `kode_ruang` varchar(50) NOT NULL,
  `nama_ruang` varchar(50) NOT NULL,
  `jurusan` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ruang`
--

INSERT INTO `ruang` (`id_ruang`, `kode_ruang`, `nama_ruang`, `jurusan`) VALUES
(5, '04 Ruang Dosen', 'Sukamto', 'Ilkom'),
(7, 'Labor Sistem Komputer', 'Ketua Jurusan', 'Ilkom'),
(8, 'Labor Sistem Terdistribusi', 'Ketua Jurusan', 'Ilkom'),
(9, 'Labor Multimedia', 'Ketua Jurusan', 'Ilkom'),
(10, 'Labor EDP', 'Ketua Jurusan', 'Ilkom'),
(11, 'Toilet Lantai 2 Gedung ILKOM', 'Ketua Jurusan', 'Ilkom'),
(12, 'Toilet Lantai 1 Gedung ILKOM', 'Ketua Jurusan', 'Ilkom'),
(13, '02 epsilon', 'Musraini, M.S.i', 'Matematika'),
(14, '03 epsilon', 'Harison, M.Si/Endang Lily, M.Si', 'Matematika'),
(16, '06 epsilon', 'Rustam Efendi, M.Si', 'Matematika'),
(17, '07 epsilon', 'Hasriati, M.Si.', 'Matematika'),
(18, '08 Ruang Baca 1 epsilon', 'Kajur Mat', 'Matematika'),
(19, '09 epsilon', 'Kajur Mat', 'Matematika'),
(21, '11 epsilon', 'Firdaus, M.S.i/ Abdul Hadi, M.Si.', 'Matematika'),
(22, '12 epsilon', 'Anne Mudya Yolanda S.Stat, M.Stat', 'Matematika'),
(23, '13 epsilon', 'Haposan Sirait, M.Si/ Rolan Pane,M.Si.', 'Matematika'),
(24, '14 epsilon', 'Dr. Leli Deswita', 'Matematika'),
(25, '15 epsilon', 'Asli Sirait., M.Si,./Noor Ell Goldameir, S.Si, M.S', 'Matematika'),
(28, '10 Ruang Baca 2 epsilon', 'Kajur Mat', 'Matematika'),
(29, '01 epsilon Ruang Kerja Mahasiswa', 'Kajur Mat', 'Matematika'),
(30, '17 epsilon', 'Supriadi Putra, M.Si.', 'Matematika'),
(31, '18 epsilon', 'Bustami, M.Si', 'Matematika'),
(32, '16 epsilon Dapur', 'Kajur Mat', 'Matematika'),
(33, 'Gedung Kuliah 103', 'Ketua Jurusan', 'Ilkom'),
(34, 'Gedung Kuliah 301', 'Ketua Jurusan', 'Ilkom'),
(35, 'Gedung Kuliah 303', 'Ketua Jurusan', 'Ilkom'),
(36, 'Gedung Kuliah 309', 'Ketua Jurusan', 'Ilkom'),
(37, '07 delta Ruang Seminar A', 'Kajur Mat', 'Matematika'),
(38, '08 delta Ruang Seminar B', 'Kajur Mat', 'Matematika'),
(39, '09 delta (Ruang ADM Jurusan)', 'Kajur Mat', 'Matematika'),
(40, '13 Delta Lab Komputasi', 'Kajur Mat', 'Matematika'),
(41, '02 delta', 'Sri Gemawati', 'Matematika'),
(43, '10 delta', 'Dr. Ihda Hasbiyati', 'Matematika'),
(45, '05 Ruang Dosen', 'Yanti Andriyani', 'Ilkom'),
(46, '03 delta', 'Dr. Arisman Adnan', 'Matematika'),
(48, '00 Toilet 1 Delta', 'Kajur Mat', 'Matematika'),
(49, '00 Toilet 2 Delta', 'Kajur Mat', 'Matematika'),
(50, '00 Koridor Delta', 'Kajur Mat', 'Matematika'),
(51, 'Ruang Tamu Lantai 2', 'Ketua Jurusan', 'Ilkom'),
(52, 'Ruang Rapat', 'Ketua Jurusan', 'Ilkom'),
(53, '01 Halaman Selatan', 'Kajur Mat', 'Matematika'),
(54, '11 delta/ Ruang Kajur', 'Kajur Mat', 'Matematika'),
(55, '01 / Laboratorium Botani', 'Dr. Nery Sofiyanti, M.Si', 'Biologi'),
(56, '01 delta', 'Dr. MDH Gamal', 'Matematika'),
(57, '02 / Laboratorium Mikrobiologi', 'Dra. Atria Martina, M.Si', 'Biologi'),
(58, '03 / Laboratorium Genetika', 'Prof. Dr. Dewi Indriyani Roslim, M.Si', 'Biologi'),
(59, '04 / Laboratorium Zoologi', 'Dra. Titrawani, M.Si', 'Biologi'),
(60, '05 / Laboratorium Ekologi', 'Dr. Yulminarti, M.Si', 'Biologi'),
(63, '08 / Sekretaris Jurusan', 'Prof. Dr. Fitmawati, M.Si', 'Biologi'),
(64, '06 / Ketua Jurusan', 'Dr. Vanda Julita Yahya, M.Si', 'Biologi'),
(65, 'Ruang Kajur', 'Roni Salambue', 'Ilkom'),
(66, '09 / Ruang S2', 'Dr. Yulminarti, M.Si', 'Biologi'),
(67, 'Studio Komputer', 'Dr. rer. nat. Delita Zul, M.Si', 'Biologi'),
(68, 'SEMUA RUANG', 'Dr. Vanda Julita Yahya, M.Si', 'Biologi'),
(69, '01 Ruang Dosen', 'Fatayat', 'Ilkom'),
(70, 'Ruang Rapat Lantai 2', 'Dr. Vanda Julita Yahya, M.Si', 'Biologi'),
(71, '05 delta, Dapur', 'Kajur Mat', 'Matematika'),
(72, '06/ Laboratorium Fotomikrografi', 'Ennie Chahyadi, M.Si', 'Biologi'),
(74, '00 epsilon toilet perempuan', 'Kajur Mat', 'Matematika'),
(75, '004/Lab. Kultur Jaringan', 'Dr. Mayta Novaliza Isda, M.Si', 'Biologi'),
(76, '009/ Ketua Jurusan', 'Dr. Vanda Julita Yahya, M.Si', 'Biologi'),
(77, 'PLP Lab. Botani', 'Arman Faluti, ST', 'Biologi'),
(78, '03 Ruang Dosen', 'Zaiful Bahri', 'Ilkom'),
(79, '04 delta, Ruang Dosen LB', 'Kajur Mat', 'Matematika'),
(80, 'Lab komputasi Fisika', 'Juandi', 'Fisika'),
(81, '', '', 'Fisika'),
(82, 'Ruangan TU Jurusan ILKOM', 'Tirta Marlinda', 'Ilkom'),
(83, '005/ Kamar Mandi ', 'Dr. Vanda Julita Yahya, M.Si', 'Biologi'),
(84, '006/ Administrasi', 'Dr. Vanda Julita Yahya, M.Si', 'Biologi'),
(85, '00 epsilon Koridor', 'Kajur Mat', 'Matematika'),
(86, '007/Kamar Mandi Lantai 1', 'Dr. Vanda Julita Yahya, M.Si', 'Biologi'),
(87, '008/Lobi Jurusan', 'Dr. Vanda Julita Yahya, M.Si', 'Biologi'),
(88, 'Lab. Terpadu', 'Dr. Mayta Novaliza Isda, M.Si', 'Biologi'),
(89, '011 / Lobi Lantai 2 Jurusan', 'Dr. Vanda Julita Yahya, M.Si', 'Biologi'),
(90, 'Ruang KoProdi SI', 'Joko Risanto', 'Ilkom'),
(91, 'Ruang KoProdi MI', 'Evfi Mahdiyah', 'Ilkom'),
(92, 'Ruang Tamu Lantai 1', 'Ketua Jurusan', 'Ilkom'),
(93, 'Ruang Sekjur', 'Aidil Fitriansyah', 'Ilkom'),
(94, '01 Ruang Dosen lantai 2', 'Hari Kapli, M.Si', 'Biologi'),
(95, '02 Ruang Dosen lantai 2', 'Dr. rer. nat. Delita Zul, M.Si', 'Biologi'),
(96, 'Ruang Teknisi', 'Zulkifli', 'Ilkom'),
(97, '02 Ruang Dosen', 'Astried', 'Ilkom'),
(98, 'Ruang Asisten', 'Aidil Fitriansyah', 'Ilkom'),
(100, '012 / Kebun Biologi', 'Dr. Ninik Nihayatul Wahibah, M.Si', 'Biologi'),
(101, 'Lab. Mikroteknik', 'Dra. Dyah Iriani, M.Si', 'Biologi'),
(102, '013/Ruang Dosen', 'Dr. Roza Elvyra, M.Si', 'Biologi'),
(103, '014/Kebun Biologi', 'Dr. Herman, M.Sc', 'Biologi'),
(104, '015 / Ruang Baca', 'Dr. Vanda Julita Yahya, M.Si', 'Biologi'),
(105, '06 Ruang Dosen', 'Alfirman', 'Ilkom'),
(106, 'Ruang Tamu Lantai 1', 'Ketua Jurusan', 'Ilkom'),
(107, '05 Epsilon', 'Ayunda Putri dan Rike Marjulisa', 'Matematika'),
(108, '016/Ruang Dosen', 'Dr. rer. nat. Radith Mahatma, M.Si', 'Biologi'),
(109, 'LOBI lantai 2 Ilkom', 'Ketua Jurusan', 'Ilkom'),
(110, 'Teras Tangga ke Lantai 2 Lab. ILKOM', 'Ketua Jurusan', 'Ilkom');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` int(11) NOT NULL DEFAULT 2 COMMENT '1=Admin, 2=TA/TP',
  `alamat` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pangkat` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `golongan` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jk` tinyint(4) DEFAULT NULL,
  `tempat_lahir` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `jurusan` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `mobile_number`, `password`, `role_id`, `alamat`, `pangkat`, `golongan`, `jk`, `tempat_lahir`, `tanggal_lahir`, `jurusan`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Super', 'admin@admin.com', '9028187696', '$2y$10$mxDQXkRBew1IpTpPbeAAAO6zatD4h1BtXtA0O9Vao6meIM0uGJwEa', 1, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, NULL, '2022-06-29 23:16:33', '2022-06-29 23:31:00'),
(2, 'atom', 'atomfire88@gmail.com', '1234567891', '$2y$10$Ywl1GrkUtHI3SG6qiCKzxeggdZq9FhAGCzpJ4p.6Shmwx9N8ohG/S', 1, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, NULL, '2022-06-29 23:24:10', '2022-06-29 23:24:10'),
(3, 'Tomi Firman', 'atomfire883@gmail.com', '0852653022', '$2y$10$u37y5OD5DO46miO0rg0eneG1ZDoxZhaZ0mNErBl/G9qkIGth04tIS', 2, NULL, NULL, NULL, NULL, NULL, NULL, '', 1, NULL, '2022-06-29 23:30:35', '2022-06-29 23:30:35'),
(4, 'Drs. Muhibbuddin Koto', '132086442', NULL, '$2y$10$Sxia8Cl6MqbebpUV.hLM1eODgEuoY2rTymMAmt70LGUdyOhZ8EqZu', 2, 'Pekanbaru', 'Pegawai', 'IIIa', 1, 'Bukittinggi', '1964-04-04', 'Dekanat', 1, NULL, NULL, NULL),
(5, 'M. Rohim', '1403021704991248', NULL, '$2y$10$Sxia8Cl6MqbebpUV.hLM1eODgEuoY2rTymMAmt70LGUdyOhZ8EqZu', 2, '-', 'Pegawai', '-', 1, 'Pekanbaru', '2022-01-11', 'Dekanat', 1, NULL, NULL, NULL),
(6, 'Akmaluddin', '1404070911950004', NULL, '$2y$10$Sxia8Cl6MqbebpUV.hLM1eODgEuoY2rTymMAmt70LGUdyOhZ8EqZu', 2, 'Pekanbaru', 'Pegawai', '0', 1, 'Pekanbaru', '2022-06-02', 'Kimia', 1, NULL, NULL, NULL),
(7, 'Dr. Vanda Yulita Yahya, M.Si', '195907011990022001', NULL, '$2y$10$Sxia8Cl6MqbebpUV.hLM1eODgEuoY2rTymMAmt70LGUdyOhZ8EqZu', 2, '-', 'Dosen', 'IVa', 2, 'Bogor', '1959-07-01', 'Biologi', 1, NULL, NULL, NULL),
(8, 'Nilawani  ', '196104221982022001', NULL, '$2y$10$Sxia8Cl6MqbebpUV.hLM1eODgEuoY2rTymMAmt70LGUdyOhZ8EqZu', 2, 'Pekanbaru', 'Pegawai', 'III-b', 2, 'Tebing Tinggi', '1961-04-22', 'FMIPA', 1, NULL, NULL, NULL),
(9, 'Dr. Muhdarina, M. Si', '196108141987022001', NULL, '$2y$10$Sxia8Cl6MqbebpUV.hLM1eODgEuoY2rTymMAmt70LGUdyOhZ8EqZu', 2, '-', 'Dosen', 'IVa', 2, 'Bengkalis', '1961-08-16', 'Kimia', 1, NULL, NULL, NULL),
(10, 'Suhelmi, S.Sos                      ', '196108171983031008', NULL, '$2y$10$Sxia8Cl6MqbebpUV.hLM1eODgEuoY2rTymMAmt70LGUdyOhZ8EqZu', 2, 'Pekanbaru', 'Pegawai', 'IIId', 1, 'Sentajo ', '1961-08-17', 'Dekanat', 1, NULL, NULL, NULL),
(11, 'ASum', '196202121987032001', NULL, '$2y$10$Sxia8Cl6MqbebpUV.hLM1eODgEuoY2rTymMAmt70LGUdyOhZ8EqZu', 2, 'Pekanbaru', 'Pegawai', 'III-c', 2, 'Anduring', '1962-02-12', 'Kimia', 1, NULL, NULL, NULL),
(12, 'Irmaini, SE', '196306221987032001', NULL, '$2y$10$Sxia8Cl6MqbebpUV.hLM1eODgEuoY2rTymMAmt70LGUdyOhZ8EqZu', 2, 'Pekanbaru', 'Pegawai', 'IVa', 2, 'Jambak Bukittingg', '1962-06-22', 'Dekanat', 1, NULL, NULL, NULL),
(13, 'Dara Mardiana', '196403041986032004', NULL, '$2y$10$Sxia8Cl6MqbebpUV.hLM1eODgEuoY2rTymMAmt70LGUdyOhZ8EqZu', 2, 'Pekanbaru', 'Pegawai', 'III-c', 2, 'Kota Baru', '1964-03-04', 'Kimia', 1, NULL, NULL, NULL),
(14, 'Zul Aprisna', '196404141989022001', NULL, '$2y$10$Sxia8Cl6MqbebpUV.hLM1eODgEuoY2rTymMAmt70LGUdyOhZ8EqZu', 2, '-', 'Pegawai', 'III', 2, '-', '1964-04-14', 'Kimia', 1, NULL, NULL, NULL),
(15, 'Dr. Imran,M, M.Sc', '196405051990021001', NULL, '$2y$10$Sxia8Cl6MqbebpUV.hLM1eODgEuoY2rTymMAmt70LGUdyOhZ8EqZu', 2, 'Pekanbaru', 'Dosen', 'IVb', 1, 'Bukittinggi', '1964-05-05', 'Matematika', 1, NULL, NULL, NULL),
(16, 'Reni Marleni', '196407111986032001', NULL, '$2y$10$Sxia8Cl6MqbebpUV.hLM1eODgEuoY2rTymMAmt70LGUdyOhZ8EqZu', 2, '-', 'Pegawai', 'III-c', 2, 'Sijunjung', '1964-07-11', 'Kimia', 1, NULL, NULL, NULL),
(17, 'Indriyeni', '196603281987102001', NULL, '$2y$10$Sxia8Cl6MqbebpUV.hLM1eODgEuoY2rTymMAmt70LGUdyOhZ8EqZu', 2, 'Pekanbaru', 'Pustakawan  Penyelia', 'III-d', 2, 'Pekanbaru', '1966-03-28', 'kepegawaian', 1, NULL, NULL, NULL),
(18, 'Edward Adhi Kurnia, A.Md ', '196702051995121001', NULL, '$2y$10$Sxia8Cl6MqbebpUV.hLM1eODgEuoY2rTymMAmt70LGUdyOhZ8EqZu', 2, 'Pekanbaru', 'Pegawai', 'III-c', 1, 'Pekanbaru', '1967-02-05', 'Biologi', 1, NULL, NULL, NULL),
(19, 'Syafri Amin', '196711201999031001', NULL, '$2y$10$Sxia8Cl6MqbebpUV.hLM1eODgEuoY2rTymMAmt70LGUdyOhZ8EqZu', 2, '-', 'Pegawai', 'III', 1, 'Pekanbaru', '1967-11-28', 'Dekanat', 1, NULL, NULL, NULL),
(20, 'Dr. Juandi, M, M.Si  ', '196803261992031001', NULL, '$2y$10$Sxia8Cl6MqbebpUV.hLM1eODgEuoY2rTymMAmt70LGUdyOhZ8EqZu', 2, '-', 'Dosen', 'IVb', 1, 'Lawe Sigalagala', '1968-03-26', 'Fisika', 1, NULL, NULL, NULL),
(21, 'Zulkarnein, S. Sos., M. Si ', '197008061992031001', NULL, '$2y$10$Sxia8Cl6MqbebpUV.hLM1eODgEuoY2rTymMAmt70LGUdyOhZ8EqZu', 2, '-', 'Kasubag Akademis', 'IV-a', 1, '-', '1970-08-06', 'Fakultas', 1, NULL, NULL, NULL),
(22, 'Syuryanti Iskandar', '197009081992032001', NULL, '$2y$10$Sxia8Cl6MqbebpUV.hLM1eODgEuoY2rTymMAmt70LGUdyOhZ8EqZu', 2, '-', 'Pegawai', '-', 2, 'Pariaman', '1970-09-08', 'Dekanat', 1, NULL, NULL, NULL),
(23, 'Firda', '197102141994032001', NULL, '$2y$10$Sxia8Cl6MqbebpUV.hLM1eODgEuoY2rTymMAmt70LGUdyOhZ8EqZu', 2, 'Pekanbaru', 'Pegawai', 'III-b', 2, 'Cupak', '1971-02-14', 'Kimia', 1, NULL, NULL, NULL),
(24, 'Zamzami', '197105202014091003', NULL, '$2y$10$Sxia8Cl6MqbebpUV.hLM1eODgEuoY2rTymMAmt70LGUdyOhZ8EqZu', 2, '-', 'Pegawai', 'IIa', 1, 'Bengkalis', '1971-05-20', 'Kimia', 1, NULL, NULL, NULL),
(25, 'Prof. Dr. Dewi Indriyani Roslim, M.Si', '197110162000032001', NULL, '$2y$10$Sxia8Cl6MqbebpUV.hLM1eODgEuoY2rTymMAmt70LGUdyOhZ8EqZu', 2, '-', 'Dosen', 'IV', 2, '-', '1971-10-16', 'Loboratorium', 1, NULL, NULL, NULL),
(26, 'Noviza Delfira', '197111201995122001', NULL, '$2y$10$Sxia8Cl6MqbebpUV.hLM1eODgEuoY2rTymMAmt70LGUdyOhZ8EqZu', 2, '-', 'Pegawai', 'III-a', 2, 'Kumango', '1971-11-21', 'Kimia', 1, NULL, NULL, NULL),
(27, 'Dr. Elfizar, S.Si, M.Kom', '197403271997021002', NULL, '$2y$10$Sxia8Cl6MqbebpUV.hLM1eODgEuoY2rTymMAmt70LGUdyOhZ8EqZu', 2, '-', 'Dosen', '-', 1, 'Teluk Latak', '1974-03-27', 'Dekanat', 1, NULL, NULL, NULL),
(28, 'Emilda, S.Pd', '197409071995122001', NULL, '$2y$10$Sxia8Cl6MqbebpUV.hLM1eODgEuoY2rTymMAmt70LGUdyOhZ8EqZu', 2, 'Pekanbaru', 'Pegawai', 'III-b', 2, 'Tiga Batur', '1974-09-07', 'Kimia', 1, NULL, NULL, NULL),
(29, 'Roni Salambue, S.Si., M.Si', '197409202003121002', NULL, '$2y$10$Sxia8Cl6MqbebpUV.hLM1eODgEuoY2rTymMAmt70LGUdyOhZ8EqZu', 2, 'Pekanbaru', 'Dosen', 'IIIc', 1, 'Pekanbaru', '1974-09-20', 'Ilkom', 1, NULL, NULL, NULL),
(30, 'Roni Salambue, S.Si., M.Si', '197409302003121001', NULL, '$2y$10$Sxia8Cl6MqbebpUV.hLM1eODgEuoY2rTymMAmt70LGUdyOhZ8EqZu', 2, '-', 'Dosen', 'IIIC', 1, 'pekanbaru', '1974-09-30', 'Ilkom', 1, NULL, NULL, NULL),
(31, 'Julia Indra, S.Si., M.Si', '197507122005011001', NULL, '$2y$10$Sxia8Cl6MqbebpUV.hLM1eODgEuoY2rTymMAmt70LGUdyOhZ8EqZu', 2, '-', 'Pegawai', 'IIIc', 1, 'Pekanbaru', '1975-07-17', 'Dekanat', 1, NULL, NULL, NULL),
(32, 'Septriawan Gustika', '197609242005021005', NULL, '$2y$10$Sxia8Cl6MqbebpUV.hLM1eODgEuoY2rTymMAmt70LGUdyOhZ8EqZu', 2, '-', 'Pegawai', 'III', 1, 'Pekanbaru', '1976-09-24', 'Dekanat', 1, NULL, NULL, NULL),
(33, 'Heri Mulyadi, ST ', '197612151997021001', NULL, '$2y$10$Sxia8Cl6MqbebpUV.hLM1eODgEuoY2rTymMAmt70LGUdyOhZ8EqZu', 2, 'Pekanbaru', '-', 'III-c', 1, 'Selat Panjang', '1976-12-15', 'Dekanat', 1, NULL, NULL, NULL),
(34, 'Sri Wahyu Ningsih', '197712152005022001', NULL, '$2y$10$Sxia8Cl6MqbebpUV.hLM1eODgEuoY2rTymMAmt70LGUdyOhZ8EqZu', 2, '-', 'Pegawai', 'II-d', 2, 'Padang', '1977-12-15', 'Biologi', 1, NULL, NULL, NULL),
(35, 'Lisna, A. Md   ', '197807282006042001', NULL, '$2y$10$Sxia8Cl6MqbebpUV.hLM1eODgEuoY2rTymMAmt70LGUdyOhZ8EqZu', 2, 'Pekanbaru', '-', 'III-a', 2, 'Pekanbaru', '1978-07-28', 'kepegawaian', 1, NULL, NULL, NULL),
(36, 'Aidil Fitriansyah, S.Kom., MIT', '197809052003121002', NULL, '$2y$10$Sxia8Cl6MqbebpUV.hLM1eODgEuoY2rTymMAmt70LGUdyOhZ8EqZu', 2, 'Pekanbaru', 'Dosen', 'IIIa', 1, 'Sumedang', '1978-09-05', 'FMIPA', 1, NULL, NULL, NULL),
(37, 'Yuana Nurulita, S.Si, M.Si, Ph. D', '197810092006042002', NULL, '$2y$10$Sxia8Cl6MqbebpUV.hLM1eODgEuoY2rTymMAmt70LGUdyOhZ8EqZu', 2, '-', 'Dosen', 'III', 2, '-', '1978-10-09', 'Loboratorium', 1, NULL, NULL, NULL),
(38, 'Suherman, S. Kom', '1979051401', NULL, '$2y$10$Sxia8Cl6MqbebpUV.hLM1eODgEuoY2rTymMAmt70LGUdyOhZ8EqZu', 2, 'Pekanbaru', '-', '-', 1, 'Padang Mutung', '1979-05-14', 'akademik', 1, NULL, NULL, NULL),
(39, 'Andi Rachmiyati, SE', '198208312014092001', NULL, '$2y$10$Sxia8Cl6MqbebpUV.hLM1eODgEuoY2rTymMAmt70LGUdyOhZ8EqZu', 2, '-', '-', 'III-a', 2, 'Pekanbaru', '1982-08-31', 'FMIPA', 1, NULL, NULL, NULL),
(40, 'Arman Faluti, ST', '19830107200801005', NULL, '$2y$10$Sxia8Cl6MqbebpUV.hLM1eODgEuoY2rTymMAmt70LGUdyOhZ8EqZu', 2, '-', 'Pegawai', 'III-a', 1, 'KP Panjang', '1983-01-07', 'Biologi', 1, NULL, NULL, NULL),
(41, 'Marsellyunur, S. Sos', '1983030501', NULL, '$2y$10$Sxia8Cl6MqbebpUV.hLM1eODgEuoY2rTymMAmt70LGUdyOhZ8EqZu', 2, 'Pekanbaru', 'Pegawai', '-', 2, 'Jakarta', '1983-03-05', 'Matematika', 1, NULL, NULL, NULL),
(42, 'Ibnu Agus Setiawan, S. Si', '1983083001', NULL, '$2y$10$Sxia8Cl6MqbebpUV.hLM1eODgEuoY2rTymMAmt70LGUdyOhZ8EqZu', 2, 'Pekanbaru', 'Pegawai', '-', 1, 'Pekanbaru', '1983-08-30', 'Matematika', 1, NULL, NULL, NULL),
(43, 'Vivi Mardawati ', '198309232005012002', NULL, '$2y$10$Sxia8Cl6MqbebpUV.hLM1eODgEuoY2rTymMAmt70LGUdyOhZ8EqZu', 2, '-', 'Pegawai', 'II-d', 2, 'Padang', '1983-08-23', 'Biologi', 1, NULL, NULL, NULL),
(44, 'Harta Dinata, S. Kom', '198404142014091003', NULL, '$2y$10$Sxia8Cl6MqbebpUV.hLM1eODgEuoY2rTymMAmt70LGUdyOhZ8EqZu', 2, '-', 'Pegawai', 'IIIa', 1, 'Kampar', '1984-04-14', 'perlengkapan', 1, NULL, NULL, NULL),
(45, 'Munawir, S. Sos', '1984091001', NULL, '$2y$10$Sxia8Cl6MqbebpUV.hLM1eODgEuoY2rTymMAmt70LGUdyOhZ8EqZu', 2, '-', 'Pegawai', '-', 1, 'Sungai  Cubadak', '1984-09-10', 'Fisika', 1, NULL, NULL, NULL),
(46, 'Yengki Sumardi, A. Md', '1986071501', NULL, '$2y$10$Sxia8Cl6MqbebpUV.hLM1eODgEuoY2rTymMAmt70LGUdyOhZ8EqZu', 2, '-', 'Pegawai', '-', 1, 'Tanjung Dama', '1986-07-15', 'perlengkapan', 1, NULL, NULL, NULL),
(47, 'Eggi Randy Rully Putra, S. Kom', '1987121001', NULL, '$2y$10$Sxia8Cl6MqbebpUV.hLM1eODgEuoY2rTymMAmt70LGUdyOhZ8EqZu', 2, 'Pekanbaru', 'Pegawai', '-', 1, 'Pekanbaru', '1987-12-10', 'Matematika', 1, NULL, NULL, NULL),
(48, 'Muhammad Rokhim, S. Si', '1988040101', NULL, '$2y$10$Sxia8Cl6MqbebpUV.hLM1eODgEuoY2rTymMAmt70LGUdyOhZ8EqZu', 2, 'Pekanbaru', '-', '-', 1, 'Malang', '1988-04-01', 'kemahasiswaan', 1, NULL, NULL, NULL),
(49, 'Zulkifli, S. Kom', '1988062501', NULL, '$2y$10$Sxia8Cl6MqbebpUV.hLM1eODgEuoY2rTymMAmt70LGUdyOhZ8EqZu', 2, '-', 'Pegawai', '-', 1, 'Purwokerto', '1988-06-24', 'Ilkom', 1, NULL, NULL, NULL),
(50, 'Ns. Riska Putri, S. Kep', '1988091301', NULL, '$2y$10$Sxia8Cl6MqbebpUV.hLM1eODgEuoY2rTymMAmt70LGUdyOhZ8EqZu', 2, 'Pekanbaru', '-', '-', 2, 'Pekanbaru', '1988-09-13', 'akademik', 1, NULL, NULL, NULL),
(51, 'Priska Oktaviani', '1988102701', NULL, '$2y$10$Sxia8Cl6MqbebpUV.hLM1eODgEuoY2rTymMAmt70LGUdyOhZ8EqZu', 2, '-', 'Pegawai', '-', 2, 'Pekanbaru', '1988-10-27', 'akademik', 1, NULL, NULL, NULL),
(52, 'Nasruddin, A. Md', '1989020401', NULL, '$2y$10$Sxia8Cl6MqbebpUV.hLM1eODgEuoY2rTymMAmt70LGUdyOhZ8EqZu', 2, 'Pekanbaru', '-', '-', 1, 'Tuntungan Medan', '1989-02-04', 'akademik', 1, NULL, NULL, NULL),
(53, 'Endang Mahdalena, A. Md', '1989032701', NULL, '$2y$10$Sxia8Cl6MqbebpUV.hLM1eODgEuoY2rTymMAmt70LGUdyOhZ8EqZu', 2, '-', 'Pegawai', '-', 2, 'Pekanbaru', '1989-03-27', 'Matematika', 1, NULL, NULL, NULL),
(54, 'Tirta Mailinda, ST', '1989052301', NULL, '$2y$10$Sxia8Cl6MqbebpUV.hLM1eODgEuoY2rTymMAmt70LGUdyOhZ8EqZu', 2, '-', 'Pegawai', '-', 2, 'Pekanbaru', '1989-05-23', 'Ilkom', 1, NULL, NULL, NULL),
(55, 'Rangga Dwi Junanda Putra, A. Md', '1990062801', NULL, '$2y$10$Sxia8Cl6MqbebpUV.hLM1eODgEuoY2rTymMAmt70LGUdyOhZ8EqZu', 2, 'Pekanbaru', 'Pegawai', '-', 1, 'Pekanbaru', '1990-06-28', 'Ilkom', 1, NULL, NULL, NULL),
(56, 'Sari Malinda, S. Si', '1990080201', NULL, '$2y$10$Sxia8Cl6MqbebpUV.hLM1eODgEuoY2rTymMAmt70LGUdyOhZ8EqZu', 2, 'Pekanbaru', 'Pegawai', '-', 2, 'Silayang', '1990-08-02', 'Biologi', 1, NULL, NULL, NULL),
(57, 'Muhammad Arif, A.Md', '1990100101', NULL, '$2y$10$Sxia8Cl6MqbebpUV.hLM1eODgEuoY2rTymMAmt70LGUdyOhZ8EqZu', 2, 'Pekanbaru', '-', '-', 1, 'Kapias Batu VIII Sumut', '1990-10-01', 'perlengkapan', 1, NULL, NULL, NULL),
(58, 'Yurnelli, SE', '1990122801', NULL, '$2y$10$Sxia8Cl6MqbebpUV.hLM1eODgEuoY2rTymMAmt70LGUdyOhZ8EqZu', 2, 'Pekanbaru', 'Pegawai', '-', 2, 'Lubung Alung', '1990-12-28', 'Fisika', 1, NULL, NULL, NULL),
(59, 'Taman Yani, A. Md', '1991010101', NULL, '$2y$10$Sxia8Cl6MqbebpUV.hLM1eODgEuoY2rTymMAmt70LGUdyOhZ8EqZu', 2, '-', 'Pegawai', '-', 1, 'Pekanbaru', '1991-01-01', 'perlengkapan', 1, NULL, NULL, NULL),
(60, 'Illis Suryani, S. Si., M. Si', '1991042501', NULL, '$2y$10$Sxia8Cl6MqbebpUV.hLM1eODgEuoY2rTymMAmt70LGUdyOhZ8EqZu', 2, 'Pekanbaru', 'Pegawai', '-', 2, 'Selat Panjang ', '1991-04-25', 'Kimia', 1, NULL, NULL, NULL),
(61, 'Valendri Harvenda, S. SI', '1991050201', NULL, '$2y$10$Sxia8Cl6MqbebpUV.hLM1eODgEuoY2rTymMAmt70LGUdyOhZ8EqZu', 2, 'Pekanbaru', 'Pegawai', '-', 1, 'Jakarta', '1991-05-02', 'Fisika', 1, NULL, NULL, NULL),
(62, 'Imelda Wardani', '1992073101', NULL, '$2y$10$Sxia8Cl6MqbebpUV.hLM1eODgEuoY2rTymMAmt70LGUdyOhZ8EqZu', 2, '-', 'Pegawai', '-', 2, '-', '1992-07-31', 'Biologi', 1, NULL, NULL, NULL),
(63, 'Budiono', '199510112014012001', NULL, '$2y$10$Sxia8Cl6MqbebpUV.hLM1eODgEuoY2rTymMAmt70LGUdyOhZ8EqZu', 2, '', 'Pegawai', 'IIIC', 1, 'Taluk', '2020-04-23', 'Dekanat', 1, NULL, NULL, NULL),
(64, 'Agung Wibowo, SP', '2018020101', NULL, '$2y$10$Sxia8Cl6MqbebpUV.hLM1eODgEuoY2rTymMAmt70LGUdyOhZ8EqZu', 2, '', 'Pegawai', '-', 1, 'Pekanbaru', '2018-08-28', 'Kimia', 1, NULL, NULL, NULL),
(65, 'Tomi Firman, S.Kom', '20190730001', NULL, '$2y$10$Sxia8Cl6MqbebpUV.hLM1eODgEuoY2rTymMAmt70LGUdyOhZ8EqZu', 2, '-', 'Pegawai', '-', 1, 'Tanah Datar', '2001-03-01', 'perlengkapan', 1, NULL, NULL, NULL),
(66, 'BEM FMIPA', '20211212', NULL, '$2y$10$Sxia8Cl6MqbebpUV.hLM1eODgEuoY2rTymMAmt70LGUdyOhZ8EqZu', 2, '-', 'Pegawai', '-', 1, 'Pekanbaru', '2022-01-11', 'Dekanat', 1, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alat`
--
ALTER TABLE `alat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `laporan`
--
ALTER TABLE `laporan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `laporan_status`
--
ALTER TABLE `laporan_status`
  ADD PRIMARY KEY (`id`),
  ADD KEY `f_laporan` (`id_laporan`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `ruang`
--
ALTER TABLE `ruang`
  ADD PRIMARY KEY (`id_ruang`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alat`
--
ALTER TABLE `alat`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `laporan`
--
ALTER TABLE `laporan`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=776;

--
-- AUTO_INCREMENT for table `laporan_status`
--
ALTER TABLE `laporan_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ruang`
--
ALTER TABLE `ruang`
  MODIFY `id_ruang` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `laporan_status`
--
ALTER TABLE `laporan_status`
  ADD CONSTRAINT `f_laporan` FOREIGN KEY (`id_laporan`) REFERENCES `laporan` (`id`);

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
