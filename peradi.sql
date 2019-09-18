-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Inang: 127.0.0.1
-- Waktu pembuatan: 18 Sep 2019 pada 19.52
-- Versi Server: 5.5.32
-- Versi PHP: 5.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Basis data: `peradi`
--
CREATE DATABASE IF NOT EXISTS `peradi` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `peradi`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_advokat`
--

CREATE TABLE IF NOT EXISTS `tbl_advokat` (
  `advokat_id` int(11) NOT NULL AUTO_INCREMENT,
  `advokat_nip` varchar(30) DEFAULT NULL,
  `advokat_nama` varchar(70) DEFAULT NULL,
  `advokat_jenkel` varchar(2) DEFAULT NULL,
  `advokat_tmp_lahir` varchar(80) DEFAULT NULL,
  `advokat_tgl_lahir` varchar(80) DEFAULT NULL,
  `advokat_ahli` text,
  `advokat_photo` varchar(40) DEFAULT NULL,
  `advokat_tgl_input` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`advokat_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data untuk tabel `tbl_advokat`
--

INSERT INTO `tbl_advokat` (`advokat_id`, `advokat_nip`, `advokat_nama`, `advokat_jenkel`, `advokat_tmp_lahir`, `advokat_tgl_lahir`, `advokat_ahli`, `advokat_photo`, `advokat_tgl_input`) VALUES
(9, '12354', 'Klub Multimedia', 'L', 'Palangka Raya', '25 Agustus 1975', 'Multimedia adalah penggunaan komputer untuk menyajikan dan menggabungkan teks, suara, gambar, animasi dan video dengan alat bantu  (tool) dan koneksi (link) sehingga pengguna dapat ber-(navigasi), berinteraksi, berkarya dan berkomunikasi. Multimedia sering digunakan dalam dunia hiburan.  Selain dari dunia hiburan, Multimedia juga diadopsi oleh dunia game', '4f97e4ae52d0e15c58bbb05fb686fd00.png', '2018-11-01 15:30:08');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_agenda`
--

CREATE TABLE IF NOT EXISTS `tbl_agenda` (
  `agenda_id` int(11) NOT NULL AUTO_INCREMENT,
  `agenda_nama` varchar(200) DEFAULT NULL,
  `agenda_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `agenda_deskripsi` text,
  `agenda_mulai` date DEFAULT NULL,
  `agenda_selesai` date DEFAULT NULL,
  `agenda_tempat` varchar(90) DEFAULT NULL,
  `agenda_waktu` varchar(30) DEFAULT NULL,
  `agenda_keterangan` varchar(200) DEFAULT NULL,
  `agenda_author` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`agenda_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data untuk tabel `tbl_agenda`
--

INSERT INTO `tbl_agenda` (`agenda_id`, `agenda_nama`, `agenda_tanggal`, `agenda_deskripsi`, `agenda_mulai`, `agenda_selesai`, `agenda_tempat`, `agenda_waktu`, `agenda_keterangan`, `agenda_author`) VALUES
(4, 'Sidang Tipikor', '2018-11-01 16:33:06', 'Sidang atas terduga tidak pidana korupsi di pengadiln tinggi negeri sampit', '2018-11-07', '2018-11-10', 'Sampit', '2 hari', '', 'Ade Chandra Saputra');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_album`
--

CREATE TABLE IF NOT EXISTS `tbl_album` (
  `album_id` int(11) NOT NULL AUTO_INCREMENT,
  `album_nama` varchar(50) DEFAULT NULL,
  `album_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `album_pengguna_id` int(11) DEFAULT NULL,
  `album_author` varchar(60) DEFAULT NULL,
  `album_count` int(11) DEFAULT '0',
  `album_cover` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`album_id`),
  KEY `album_pengguna_id` (`album_pengguna_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data untuk tabel `tbl_album`
--

INSERT INTO `tbl_album` (`album_id`, `album_nama`, `album_tanggal`, `album_pengguna_id`, `album_author`, `album_count`, `album_cover`) VALUES
(1, 'Logo Sakti', '2019-09-17 17:02:20', 1, 'Ade Chandra Saputra', -5, 'b520cba6833a9d292009d77df900a7c5.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_files`
--

CREATE TABLE IF NOT EXISTS `tbl_files` (
  `file_id` int(11) NOT NULL AUTO_INCREMENT,
  `file_judul` varchar(120) DEFAULT NULL,
  `file_deskripsi` text,
  `file_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `file_oleh` varchar(60) DEFAULT NULL,
  `file_download` int(11) DEFAULT '0',
  `file_data` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`file_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_galeri`
--

CREATE TABLE IF NOT EXISTS `tbl_galeri` (
  `galeri_id` int(11) NOT NULL AUTO_INCREMENT,
  `galeri_judul` varchar(60) DEFAULT NULL,
  `galeri_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `galeri_gambar` varchar(40) DEFAULT NULL,
  `galeri_album_id` int(11) DEFAULT NULL,
  `galeri_pengguna_id` int(11) DEFAULT NULL,
  `galeri_author` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`galeri_id`),
  KEY `galeri_album_id` (`galeri_album_id`),
  KEY `galeri_pengguna_id` (`galeri_pengguna_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data untuk tabel `tbl_galeri`
--

INSERT INTO `tbl_galeri` (`galeri_id`, `galeri_judul`, `galeri_tanggal`, `galeri_gambar`, `galeri_album_id`, `galeri_pengguna_id`, `galeri_author`) VALUES
(4, 'Diskusi Pemilihan Ketua Osis', '2017-01-21 14:04:53', '9b10fa300633f62f105e9b52789fc8f3.jpg', 3, 1, 'M Fikri Setiadi'),
(5, 'Panitia Pemilu Osis', '2017-01-22 04:13:20', '0ec0c2f9aae6501d7ed7930995d48b57.jpg', 3, 1, 'M Fikri Setiadi'),
(6, 'Proses Pemilu Osis', '2017-01-22 04:13:43', 'bfbe6cc1c8096f5f36c68e93da53c248.jpg', 3, 1, 'M Fikri Setiadi'),
(12, 'Belajar sambil bermain', '2017-01-24 01:31:42', '9df82241493b94d1e06b461129cf57b2.jpg', 4, 1, 'M Fikri Setiadi'),
(13, 'Belajar sambil bermain', '2017-01-24 01:31:55', '5374415f11683ad6dd31572a7bbf8a7b.jpg', 4, 1, 'M Fikri Setiadi'),
(14, 'Belajar komputer programming', '2017-01-24 01:32:24', '82b91bd35706b21c3ab04e205e358eb6.jpg', 4, 1, 'M Fikri Setiadi'),
(15, 'Belajar komputer programming', '2017-01-24 01:32:34', '93048f2a103987bce8c8ec8d6912de06.jpg', 4, 1, 'M Fikri Setiadi'),
(16, 'Belajar komputer programming', '2017-01-24 01:32:44', '41f46be181f2f8452c2041b5e79a05a5.jpg', 4, 1, 'M Fikri Setiadi'),
(17, 'Belajar sambil bermain', '2017-01-24 01:33:08', '2858b0555c252690e293d29b922ba8e6.jpg', 4, 1, 'M Fikri Setiadi'),
(18, 'Makan bersama', '2017-01-24 01:33:24', '90d67328e33a31d3f5eecd7dcb25b55d.jpg', 4, 1, 'M Fikri Setiadi'),
(19, 'Logo Sakti', '2019-09-17 17:04:27', '0b53d856dc4fe12c94dca8bc8bca2602.jpg', 1, 1, 'Ade Chandra Saputra');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_inbox`
--

CREATE TABLE IF NOT EXISTS `tbl_inbox` (
  `inbox_id` int(11) NOT NULL AUTO_INCREMENT,
  `inbox_nama` varchar(40) DEFAULT NULL,
  `inbox_email` varchar(60) DEFAULT NULL,
  `inbox_kontak` varchar(20) DEFAULT NULL,
  `inbox_pesan` text,
  `inbox_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `inbox_status` int(11) DEFAULT '1' COMMENT '1=Belum dilihat, 0=Telah dilihat',
  PRIMARY KEY (`inbox_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kategori`
--

CREATE TABLE IF NOT EXISTS `tbl_kategori` (
  `kategori_id` int(11) NOT NULL AUTO_INCREMENT,
  `kategori_nama` varchar(30) DEFAULT NULL,
  `kategori_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`kategori_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data untuk tabel `tbl_kategori`
--

INSERT INTO `tbl_kategori` (`kategori_id`, `kategori_nama`, `kategori_tanggal`) VALUES
(14, 'Artikel Hukum', '2018-11-01 14:38:16');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_komentar`
--

CREATE TABLE IF NOT EXISTS `tbl_komentar` (
  `komentar_id` int(11) NOT NULL AUTO_INCREMENT,
  `komentar_nama` varchar(30) DEFAULT NULL,
  `komentar_email` varchar(50) DEFAULT NULL,
  `komentar_isi` varchar(120) DEFAULT NULL,
  `komentar_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `komentar_status` varchar(2) DEFAULT NULL,
  `komentar_tulisan_id` int(11) DEFAULT NULL,
  `komentar_parent` int(5) NOT NULL,
  PRIMARY KEY (`komentar_id`),
  KEY `komentar_tulisan_id` (`komentar_tulisan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_k_program`
--

CREATE TABLE IF NOT EXISTS `tbl_k_program` (
  `k_program_id` int(11) NOT NULL AUTO_INCREMENT,
  `k_program_nama` varchar(70) DEFAULT NULL,
  `k_program_deskripsi` text,
  `k_program_photo` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`k_program_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data untuk tabel `tbl_k_program`
--

INSERT INTO `tbl_k_program` (`k_program_id`, `k_program_nama`, `k_program_deskripsi`, `k_program_photo`) VALUES
(10, 'Klub Programming', 'Pemrograman adalah proses menulis, menguji dan memperbaiki, dan memelihara kode yang membangun suatu program komputer. Kode ini ditulis dalam berbagai bahasa pemrograman.', '25bc41953ccdcf3eec1340677b347ff0.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_k_robo`
--

CREATE TABLE IF NOT EXISTS `tbl_k_robo` (
  `k_robo_id` int(11) NOT NULL AUTO_INCREMENT,
  `k_robo_nama` varchar(70) DEFAULT NULL,
  `k_robo_deskripsi` text,
  `k_robo_photo` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`k_robo_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data untuk tabel `tbl_k_robo`
--

INSERT INTO `tbl_k_robo` (`k_robo_id`, `k_robo_nama`, `k_robo_deskripsi`, `k_robo_photo`) VALUES
(10, 'Klub Robotik', 'Robotika adalah satu cabang teknologi yang berhubungan dengan ayen, konstruksi, operasi, disposisi struktural, pembuatan, dan aplikasi dari robot. Robotika terkait dengan ilmu pengetahuan bidang elektronika, mesin, mekanika, dan perangkat lunak komputer.', '710a53eaa80f2f19d4480872d19ca61d.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_log_aktivitas`
--

CREATE TABLE IF NOT EXISTS `tbl_log_aktivitas` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `log_nama` text,
  `log_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `log_ip` varchar(20) DEFAULT NULL,
  `log_pengguna_id` int(11) DEFAULT NULL,
  `log_icon` blob,
  `log_jenis_icon` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`log_id`),
  KEY `log_pengguna_id` (`log_pengguna_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pengguna`
--

CREATE TABLE IF NOT EXISTS `tbl_pengguna` (
  `pengguna_id` int(11) NOT NULL AUTO_INCREMENT,
  `pengguna_nama` varchar(50) DEFAULT NULL,
  `pengguna_moto` varchar(100) DEFAULT NULL,
  `pengguna_jenkel` varchar(2) DEFAULT NULL,
  `pengguna_username` varchar(30) DEFAULT NULL,
  `pengguna_password` varchar(35) DEFAULT NULL,
  `pengguna_tentang` text,
  `pengguna_email` varchar(50) DEFAULT NULL,
  `pengguna_nohp` varchar(20) DEFAULT NULL,
  `pengguna_facebook` varchar(35) DEFAULT NULL,
  `pengguna_twitter` varchar(35) DEFAULT NULL,
  `pengguna_linkdin` varchar(35) DEFAULT NULL,
  `pengguna_google_plus` varchar(35) DEFAULT NULL,
  `pengguna_status` int(2) DEFAULT '1',
  `pengguna_level` varchar(3) DEFAULT NULL,
  `pengguna_register` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `pengguna_photo` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`pengguna_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data untuk tabel `tbl_pengguna`
--

INSERT INTO `tbl_pengguna` (`pengguna_id`, `pengguna_nama`, `pengguna_moto`, `pengguna_jenkel`, `pengguna_username`, `pengguna_password`, `pengguna_tentang`, `pengguna_email`, `pengguna_nohp`, `pengguna_facebook`, `pengguna_twitter`, `pengguna_linkdin`, `pengguna_google_plus`, `pengguna_status`, `pengguna_level`, `pengguna_register`, `pengguna_photo`) VALUES
(1, 'Ade Chandra Saputra', 'Just do it', 'L', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'I am a mountainner. to me mountainerring is a life', 'ade.chandra.saputra.tumbai@gmail.com', '081299057613', 'facebook.com/m_fikri_setiadi', 'twitter.com/fiver_fiver', '', '', 1, '1', '2016-09-03 06:07:55', '88ddc9ffbc1e05bdd6a4631fbe127d56.jpg'),
(2, 'admin', 'Just do it', 'L', 'admin', 'admin', 'I am a mountainner. to me mountainerring is a life', 'ade.chandra.saputra.tumbai@gmail.com', '081299057613', 'facebook.com/m_fikri_setiadi', 'twitter.com/fiver_fiver', '', '', 1, '1', '2016-09-02 23:07:55', '88ddc9ffbc1e05bdd6a4631fbe127d56.jpg'),
(5, 'agus', NULL, 'L', 'agus', 'fdf169558242ee051cca1479770ebac3', NULL, 'agus@agus.com', '2312', NULL, NULL, NULL, NULL, 1, '1', '2018-11-01 14:53:20', 'b972270b7353f8acb45c8b9a9fc06dcf.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pengumuman`
--

CREATE TABLE IF NOT EXISTS `tbl_pengumuman` (
  `pengumuman_id` int(11) NOT NULL AUTO_INCREMENT,
  `pengumuman_judul` varchar(150) DEFAULT NULL,
  `pengumuman_deskripsi` text,
  `pengumuman_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `pengumuman_author` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`pengumuman_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data untuk tabel `tbl_pengumuman`
--

INSERT INTO `tbl_pengumuman` (`pengumuman_id`, `pengumuman_judul`, `pengumuman_deskripsi`, `pengumuman_tanggal`, `pengumuman_author`) VALUES
(6, 'Visimisi UKM SAKTI', '<p>VISI UKM SAKTI</p>\r\n<ol>\r\n	<li>Berkembang secara berkesinambunagan, memberikan kesejahteraan kepada karyawan, pengurus, dan stakeholder.</li>\r\n</ol>\r\n\r\n<p>MISI UKM SAKTI</p>\r\n\r\n<ol>\r\n	<li>Mampu bersaing secara nasional berdasarkan kompetensi seperti pengadaan bahan kontruksi, tenaga ahli dan kualifikasi yang dimiliki.</li>\r\n	<li>Menjadi pilihan yang lebih disukai bagi seluruh pelanggan.</li>\r\n	<li>Menjalin kerjasama dengan pelanggan dan rekan perusahaan lain.</li>\r\n</ol>\r\n', '2019-09-18 02:46:31', 'Ade Chandra Saputra');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pengunjung`
--

CREATE TABLE IF NOT EXISTS `tbl_pengunjung` (
  `pengunjung_id` int(11) NOT NULL AUTO_INCREMENT,
  `pengunjung_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `pengunjung_ip` varchar(40) DEFAULT NULL,
  `pengunjung_perangkat` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`pengunjung_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=940 ;

--
-- Dumping data untuk tabel `tbl_pengunjung`
--

INSERT INTO `tbl_pengunjung` (`pengunjung_id`, `pengunjung_tanggal`, `pengunjung_ip`, `pengunjung_perangkat`) VALUES
(1, '2016-08-11 23:52:20', '127.0.0.1', 'Firefox'),
(2, '2016-08-12 17:14:20', '127.0.0.1', 'Firefox'),
(3, '2016-08-13 05:23:19', '127.0.0.1', 'Firefox'),
(4, '2016-08-13 05:27:05', '127.0.0.1', 'Firefox'),
(5, '2016-08-13 05:27:37', '127.0.0.1', 'Firefox'),
(6, '2016-08-13 06:54:58', '127.0.0.1', 'Firefox'),
(7, '2016-08-13 06:55:59', '127.0.0.1', 'Firefox'),
(8, '2016-08-13 07:00:06', '127.0.0.1', 'Firefox'),
(9, '2016-08-13 07:00:34', '127.0.0.1', 'Firefox'),
(10, '2016-09-18 20:24:39', '127.0.0.1', 'Firefox'),
(11, '2016-09-18 20:24:43', '127.0.0.1', 'Firefox'),
(12, '2016-09-18 20:24:43', '127.0.0.1', 'Firefox'),
(13, '2016-09-18 20:24:43', '127.0.0.1', 'Firefox'),
(14, '2016-09-18 20:24:43', '127.0.0.1', 'Firefox'),
(15, '2016-09-18 20:24:43', '127.0.0.1', 'Firefox'),
(16, '2016-09-18 20:24:43', '127.0.0.1', 'Firefox'),
(17, '2016-09-18 20:24:43', '127.0.0.1', 'Firefox'),
(18, '2016-09-18 20:24:43', '127.0.0.1', 'Firefox'),
(19, '2016-09-18 20:24:43', '127.0.0.1', 'Firefox'),
(20, '2016-09-18 20:24:43', '127.0.0.1', 'Firefox'),
(21, '2016-09-18 20:24:43', '127.0.0.1', 'Firefox'),
(22, '2016-09-18 20:24:43', '127.0.0.1', 'Firefox'),
(23, '2016-09-18 20:24:43', '127.0.0.1', 'Firefox'),
(24, '2017-02-04 18:06:52', '::1', 'Chrome'),
(25, '2017-02-04 18:07:16', '127.0.0.1', 'Firefox'),
(26, '2017-02-04 18:08:31', '::1', 'Chrome'),
(27, '2017-02-05 19:33:14', '::1', 'Chrome'),
(28, '2017-02-05 20:20:59', '127.0.0.1', 'Firefox'),
(29, '2017-02-06 18:21:08', '::1', 'Chrome'),
(30, '2017-02-09 01:07:51', '::1', 'Chrome'),
(31, '2017-02-10 20:12:05', '::1', 'Chrome'),
(32, '2017-02-20 20:46:21', '::1', 'Chrome'),
(33, '2017-02-22 04:04:16', '::1', 'Chrome'),
(34, '2017-02-27 18:47:25', '::1', 'Chrome'),
(35, '2017-03-02 06:09:25', '::1', 'Chrome'),
(36, '2017-03-04 08:18:51', '::1', 'Chrome'),
(37, '2017-03-12 20:40:32', '::1', 'Chrome'),
(38, '2017-03-13 20:34:32', '::1', 'Chrome'),
(39, '2017-03-23 04:08:15', '::1', 'Firefox'),
(40, '2017-03-25 09:39:02', '::1', 'Firefox'),
(41, '2017-03-25 10:16:45', '::1', 'Firefox'),
(42, '2017-03-28 14:11:23', '::1', 'Firefox'),
(43, '2017-03-29 22:39:17', '::1', 'Firefox'),
(44, '2017-03-30 10:52:11', '::1', 'Firefox'),
(45, '2017-03-31 22:48:46', '::1', 'Firefox'),
(46, '2017-04-06 22:33:58', '::1', 'Firefox'),
(47, '2017-04-08 00:25:37', '::1', 'Firefox'),
(48, '2017-04-08 10:00:14', '::1', 'Firefox'),
(49, '2017-04-09 10:06:03', '::1', 'Firefox'),
(50, '2017-04-10 12:20:50', '::1', 'Firefox'),
(51, '2017-04-11 11:46:50', '117.102.64.98', 'Chrome'),
(52, '2017-04-11 11:46:57', '125.165.129.35', 'Firefox'),
(53, '2017-04-11 12:52:18', '69.171.225.46', 'Other'),
(54, '2017-04-11 12:54:33', '69.171.225.12', 'Other'),
(55, '2017-04-11 12:55:04', '69.171.225.21', 'Other'),
(56, '2017-04-11 12:55:18', '69.171.225.18', 'Other'),
(57, '2017-04-11 13:03:44', '36.83.246.250', 'Chrome'),
(58, '2017-04-11 13:05:55', '202.62.17.121', 'Chrome'),
(59, '2017-04-11 13:06:45', '106.187.46.205', 'Chrome'),
(60, '2017-04-11 13:06:47', '173.252.98.28', 'Other'),
(61, '2017-04-11 13:10:36', '107.167.103.241', 'Opera'),
(62, '2017-04-11 13:16:14', '202.67.41.244', 'Chrome'),
(63, '2017-04-11 13:18:24', '36.72.192.194', 'Chrome'),
(64, '2017-04-11 13:19:40', '112.215.175.62', 'Chrome'),
(65, '2017-04-11 13:20:09', '173.252.102.112', 'Other'),
(66, '2017-04-11 13:20:17', '112.215.154.56', 'Firefox'),
(67, '2017-04-11 13:20:26', '158.140.170.23', 'Chrome'),
(68, '2017-04-11 13:22:33', '36.81.37.52', 'Chrome'),
(69, '2017-04-11 13:23:14', '120.188.65.243', 'Chrome'),
(70, '2017-04-11 13:26:16', '124.153.33.11', 'Chrome'),
(71, '2017-04-11 13:26:21', '112.215.172.240', 'Chrome'),
(72, '2017-04-11 13:27:34', '132.255.240.27', 'Chrome'),
(73, '2017-04-11 13:28:22', '103.213.131.147', 'Chrome'),
(74, '2017-04-11 13:29:38', '36.84.225.114', 'Chrome'),
(75, '2017-04-11 13:29:45', '180.253.158.87', 'Chrome'),
(76, '2017-04-11 13:33:35', '173.252.84.52', 'Other'),
(77, '2017-04-11 13:34:51', '202.67.35.20', 'Chrome'),
(78, '2017-04-11 13:37:02', '202.67.40.210', 'Chrome'),
(79, '2017-04-11 13:39:43', '120.188.76.26', 'Chrome'),
(80, '2017-04-11 13:41:05', '173.252.123.186', 'Other'),
(81, '2017-04-11 13:45:29', '110.139.8.41', 'Mozilla'),
(82, '2017-04-11 13:53:12', '202.80.216.219', 'Chrome'),
(83, '2017-04-11 13:55:16', '223.255.230.13', 'Safari'),
(84, '2017-04-11 13:55:38', '36.78.69.101', 'Chrome'),
(85, '2017-04-11 14:02:53', '180.251.173.137', 'Chrome'),
(86, '2017-04-11 14:03:05', '125.161.185.216', 'Chrome'),
(87, '2017-04-11 14:16:22', '139.192.226.49', 'Chrome'),
(88, '2017-04-11 14:18:10', '107.167.112.88', 'Opera'),
(89, '2017-04-11 14:18:13', '180.247.26.15', 'Chrome'),
(90, '2017-04-11 14:20:04', '204.44.65.210', 'Internet Explorer'),
(91, '2017-04-11 14:22:58', '36.78.96.198', 'Chrome'),
(92, '2017-04-11 14:23:40', '138.197.192.28', 'Chrome'),
(93, '2017-04-11 14:24:07', '112.215.151.61', 'Chrome'),
(94, '2017-04-11 14:25:46', '202.51.104.154', 'Chrome'),
(95, '2017-04-11 14:32:42', '202.67.44.7', 'Firefox'),
(96, '2017-04-11 14:36:53', '118.136.122.84', 'Chrome'),
(97, '2017-04-11 14:39:25', '61.247.21.51', 'Chrome'),
(98, '2017-04-11 14:41:38', '114.124.180.250', 'Chrome'),
(99, '2017-04-11 14:41:55', '120.188.64.226', 'Chrome'),
(100, '2017-04-11 14:43:14', '180.247.204.243', 'Chrome'),
(101, '2017-04-11 14:44:48', '125.161.179.203', 'Chrome'),
(102, '2017-04-11 14:46:06', '114.125.55.58', 'Chrome'),
(103, '2017-04-11 14:50:14', '158.140.182.11', 'Chrome'),
(104, '2017-04-11 14:54:09', '202.67.33.22', 'Chrome'),
(105, '2017-04-11 14:58:44', '120.188.65.30', 'Chrome'),
(106, '2017-04-11 14:59:55', '120.188.77.153', 'Chrome'),
(107, '2017-04-11 15:02:32', '125.167.185.147', 'Mozilla'),
(108, '2017-04-11 15:04:23', '118.136.84.45', 'Chrome'),
(109, '2017-04-11 15:04:41', '110.136.129.138', 'Chrome'),
(110, '2017-04-11 15:04:52', '36.75.108.223', 'Chrome'),
(111, '2017-04-11 15:05:46', '36.72.38.146', 'Chrome'),
(112, '2017-04-11 15:06:31', '120.188.5.85', 'Chrome'),
(113, '2017-04-11 15:09:53', '180.253.90.210', 'Chrome'),
(114, '2017-04-11 15:12:18', '107.167.99.179', 'Opera'),
(115, '2017-04-11 15:12:49', '112.215.171.165', 'Chrome'),
(116, '2017-04-11 15:14:55', '203.166.201.206', 'Chrome'),
(117, '2017-04-11 15:15:21', '107.167.99.208', 'Opera'),
(118, '2017-04-11 15:15:25', '36.73.194.145', 'Mozilla'),
(119, '2017-04-11 15:16:25', '107.167.113.164', 'Opera'),
(120, '2017-04-11 15:16:42', '120.92.32.177', 'Chrome'),
(121, '2017-04-11 15:17:23', '180.245.132.122', 'Chrome'),
(122, '2017-04-11 15:17:56', '120.188.80.236', 'Chrome'),
(123, '2017-04-11 15:17:57', '114.125.89.57', 'Chrome'),
(124, '2017-04-11 15:18:01', '139.0.186.187', 'Chrome'),
(125, '2017-04-11 15:18:25', '125.166.215.131', 'Chrome'),
(126, '2017-04-11 15:18:29', '120.188.6.216', 'Mozilla'),
(127, '2017-04-11 15:19:06', '125.161.98.148', 'Chrome'),
(128, '2017-04-11 15:20:10', '36.73.9.148', 'Chrome'),
(129, '2017-04-11 15:20:15', '114.125.182.65', 'Chrome'),
(130, '2017-04-11 15:21:07', '114.125.40.100', 'Chrome'),
(131, '2017-04-11 15:21:45', '120.188.86.219', 'Chrome'),
(132, '2017-04-11 15:22:35', '118.136.103.194', 'Mozilla'),
(133, '2017-04-11 15:23:47', '36.81.10.230', 'Chrome'),
(134, '2017-04-11 15:23:47', '114.125.164.4', 'Chrome'),
(135, '2017-04-11 15:24:28', '107.167.112.218', 'Chrome'),
(136, '2017-04-11 15:24:50', '107.167.98.132', 'Opera'),
(137, '2017-04-11 15:25:44', '180.246.19.210', 'Chrome'),
(138, '2017-04-11 15:26:12', '120.188.1.85', 'Chrome'),
(139, '2017-04-11 15:27:50', '139.195.66.235', 'Chrome'),
(140, '2017-04-11 15:28:06', '115.178.198.211', 'Chrome'),
(141, '2017-04-11 15:28:17', '115.178.235.88', 'Chrome'),
(142, '2017-04-11 15:28:49', '36.84.87.138', 'Mozilla'),
(143, '2017-04-11 15:29:05', '114.121.232.136', 'Chrome'),
(144, '2017-04-11 15:29:23', '118.96.227.216', 'Chrome'),
(145, '2017-04-11 15:29:45', '36.68.184.231', 'Mozilla'),
(146, '2017-04-11 15:30:18', '120.188.3.198', 'Chrome'),
(147, '2017-04-11 15:32:44', '61.94.133.70', 'Chrome'),
(148, '2017-04-11 15:32:44', '8.37.235.44', 'Safari'),
(149, '2017-04-11 15:33:19', '110.136.254.232', 'Chrome'),
(150, '2017-04-11 15:34:17', '36.83.28.90', 'Chrome'),
(151, '2017-04-11 15:34:25', '120.188.80.239', 'Chrome'),
(152, '2017-04-11 15:34:50', '114.125.72.8', 'Chrome'),
(153, '2017-04-11 15:34:59', '180.247.33.166', 'Safari'),
(154, '2017-04-11 15:35:10', '180.214.232.22', 'Chrome'),
(155, '2017-04-11 15:35:47', '61.5.92.125', 'Chrome'),
(156, '2017-04-11 15:36:22', '36.69.222.51', 'Chrome'),
(157, '2017-04-11 15:36:24', '182.253.139.130', 'Chrome'),
(158, '2017-04-11 15:36:36', '120.188.86.170', 'Chrome'),
(159, '2017-04-11 15:36:56', '139.228.97.115', 'Chrome'),
(160, '2017-04-11 15:37:18', '36.67.61.15', 'Chrome'),
(161, '2017-04-11 15:37:20', '114.4.78.184', 'Chrome'),
(162, '2017-04-11 15:38:09', '202.67.40.221', 'Chrome'),
(163, '2017-04-11 15:39:03', '112.215.172.66', 'Chrome'),
(164, '2017-04-11 15:39:11', '36.74.207.97', 'Chrome'),
(165, '2017-04-11 15:39:36', '64.233.173.4', 'Chrome'),
(166, '2017-04-11 15:40:07', '36.84.136.234', 'Chrome'),
(167, '2017-04-11 15:41:24', '202.62.16.49', 'Chrome'),
(168, '2017-04-11 15:41:28', '125.167.120.95', 'Chrome'),
(169, '2017-04-11 15:41:46', '168.235.207.168', 'Firefox'),
(170, '2017-04-11 15:41:52', '120.188.64.235', 'Chrome'),
(171, '2017-04-11 15:42:10', '120.188.81.204', 'Chrome'),
(172, '2017-04-11 15:42:26', '125.162.245.169', 'Chrome'),
(173, '2017-04-11 15:43:20', '180.242.10.170', 'Chrome'),
(174, '2017-04-11 15:44:03', '64.233.173.6', 'Chrome'),
(175, '2017-04-11 15:44:11', '112.215.174.87', 'Chrome'),
(176, '2017-04-11 15:44:37', '36.71.46.157', 'Chrome'),
(177, '2017-04-11 15:45:07', '103.56.235.74', 'Chrome'),
(178, '2017-04-11 15:45:18', '120.188.66.124', 'Chrome'),
(179, '2017-04-11 15:45:25', '69.171.225.33', 'Other'),
(180, '2017-04-11 15:46:14', '114.125.202.40', 'Chrome'),
(181, '2017-04-11 15:46:45', '120.188.87.93', 'Chrome'),
(182, '2017-04-11 15:46:46', '118.136.85.176', 'Chrome'),
(183, '2017-04-11 15:46:51', '64.233.173.8', 'Chrome'),
(184, '2017-04-11 15:47:32', '36.79.200.132', 'Chrome'),
(185, '2017-04-11 15:48:01', '120.188.35.53', 'Chrome'),
(186, '2017-04-11 15:49:39', '110.138.153.190', 'Chrome'),
(187, '2017-04-11 15:49:44', '114.125.73.228', 'Chrome'),
(188, '2017-04-11 15:49:52', '36.81.119.196', 'Chrome'),
(189, '2017-04-11 15:50:22', '120.188.65.140', 'Chrome'),
(190, '2017-04-11 15:51:05', '125.161.188.27', 'Chrome'),
(191, '2017-04-11 15:51:23', '124.40.251.74', 'Firefox'),
(192, '2017-04-11 15:51:31', '139.228.108.66', 'Chrome'),
(193, '2017-04-11 15:51:33', '180.254.57.164', 'Chrome'),
(194, '2017-04-11 15:53:07', '180.247.95.40', 'Chrome'),
(195, '2017-04-11 15:53:20', '103.205.56.66', 'Chrome'),
(196, '2017-04-11 15:53:20', '103.56.232.196', 'Chrome'),
(197, '2017-04-11 15:53:52', '180.241.167.242', 'Chrome'),
(198, '2017-04-11 15:53:54', '112.215.171.106', 'Chrome'),
(199, '2017-04-11 15:55:12', '114.125.214.65', 'Chrome'),
(200, '2017-04-11 15:55:40', '36.71.48.50', 'Firefox'),
(201, '2017-04-11 15:57:12', '103.9.227.1', 'Chrome'),
(202, '2017-04-11 15:57:16', '202.62.17.134', 'Chrome'),
(203, '2017-04-11 15:57:40', '36.74.110.84', 'Chrome'),
(204, '2017-04-11 15:57:54', '112.215.173.135', 'Chrome'),
(205, '2017-04-11 15:58:17', '36.80.43.86', 'Chrome'),
(206, '2017-04-11 15:59:04', '45.76.207.98', 'Chrome'),
(207, '2017-04-11 15:59:23', '180.214.233.30', 'Chrome'),
(208, '2017-04-11 15:59:28', '36.78.97.242', 'Mozilla'),
(209, '2017-04-11 15:59:58', '61.94.220.130', 'Chrome'),
(210, '2017-04-11 16:00:03', '8.37.230.63', 'Safari'),
(211, '2017-04-11 16:00:20', '125.162.99.169', 'Chrome'),
(212, '2017-04-11 16:00:31', '223.255.227.25', 'Chrome'),
(213, '2017-04-11 16:01:07', '114.121.244.144', 'Chrome'),
(214, '2017-04-11 16:01:24', '114.125.214.143', 'Chrome'),
(215, '2017-04-11 16:01:43', '8.37.235.230', 'Safari'),
(216, '2017-04-11 16:01:49', '120.188.86.129', 'Chrome'),
(217, '2017-04-11 16:02:10', '120.188.74.41', 'Chrome'),
(218, '2017-04-11 16:02:25', '115.178.239.193', 'Chrome'),
(219, '2017-04-11 16:02:49', '202.67.46.8', 'Chrome'),
(220, '2017-04-11 16:02:56', '36.80.211.28', 'Chrome'),
(221, '2017-04-11 16:03:54', '139.195.162.58', 'Chrome'),
(222, '2017-04-11 16:04:16', '202.154.180.10', 'Chrome'),
(223, '2017-04-11 16:04:34', '114.125.184.7', 'Chrome'),
(224, '2017-04-11 16:05:01', '120.188.85.253', 'Chrome'),
(225, '2017-04-11 16:05:32', '139.195.209.21', 'Chrome'),
(226, '2017-04-11 16:05:57', '120.188.33.114', 'Chrome'),
(227, '2017-04-11 16:06:03', '8.37.233.52', 'Safari'),
(228, '2017-04-11 16:06:09', '36.79.130.99', 'Chrome'),
(229, '2017-04-11 16:06:21', '36.74.24.2', 'Chrome'),
(230, '2017-04-11 16:06:43', '114.125.186.131', 'Chrome'),
(231, '2017-04-11 16:06:45', '202.62.17.197', 'Chrome'),
(232, '2017-04-11 16:07:31', '118.96.232.253', 'Chrome'),
(233, '2017-04-11 16:08:05', '36.79.188.51', 'Chrome'),
(234, '2017-04-11 16:08:13', '36.74.122.45', 'Chrome'),
(235, '2017-04-11 16:08:23', '36.84.110.69', 'Chrome'),
(236, '2017-04-11 16:08:23', '112.215.172.153', 'Chrome'),
(237, '2017-04-11 16:08:37', '36.82.30.206', 'Chrome'),
(238, '2017-04-11 16:09:03', '180.214.232.2', 'Chrome'),
(239, '2017-04-11 16:09:38', '107.167.112.128', 'Opera'),
(240, '2017-04-11 16:09:40', '36.70.178.105', 'Chrome'),
(241, '2017-04-11 16:09:55', '139.195.130.19', 'Chrome'),
(242, '2017-04-11 16:10:31', '114.125.57.214', 'Chrome'),
(243, '2017-04-11 16:10:41', '120.188.85.184', 'Chrome'),
(244, '2017-04-11 16:10:52', '125.163.107.41', 'Firefox'),
(245, '2017-04-11 16:11:15', '114.125.41.144', 'Chrome'),
(246, '2017-04-11 16:11:21', '61.94.103.59', 'Chrome'),
(247, '2017-04-11 16:12:08', '36.76.30.210', 'Chrome'),
(248, '2017-04-11 16:12:26', '36.73.134.193', 'Chrome'),
(249, '2017-04-11 16:12:31', '112.215.173.16', 'Chrome'),
(250, '2017-04-11 16:13:18', '120.188.92.195', 'Chrome'),
(251, '2017-04-11 16:13:20', '125.163.92.209', 'Chrome'),
(252, '2017-04-11 16:14:19', '182.253.142.24', 'Chrome'),
(253, '2017-04-11 16:14:28', '120.188.86.148', 'Chrome'),
(254, '2017-04-11 16:14:56', '182.253.163.61', 'Chrome'),
(255, '2017-04-11 16:16:02', '36.74.148.31', 'Chrome'),
(256, '2017-04-11 16:16:57', '8.37.233.156', 'Safari'),
(257, '2017-04-11 16:17:04', '114.125.56.121', 'Firefox'),
(258, '2017-04-11 16:17:12', '158.140.165.20', 'Chrome'),
(259, '2017-04-11 16:17:17', '125.164.97.226', 'Chrome'),
(260, '2017-04-11 16:17:18', '120.188.92.249', 'Chrome'),
(261, '2017-04-11 16:17:26', '118.137.208.31', 'Chrome'),
(262, '2017-04-11 16:17:30', '180.244.71.107', 'Chrome'),
(263, '2017-04-11 16:17:37', '120.188.87.220', 'Chrome'),
(264, '2017-04-11 16:17:57', '112.215.172.199', 'Safari'),
(265, '2017-04-11 16:18:23', '110.138.44.236', 'Chrome'),
(266, '2017-04-11 16:18:35', '168.235.195.254', 'Safari'),
(267, '2017-04-11 16:18:40', '180.245.98.188', 'Chrome'),
(268, '2017-04-11 16:18:58', '114.125.183.102', 'Chrome'),
(269, '2017-04-11 16:19:18', '125.164.38.13', 'Chrome'),
(270, '2017-04-11 16:19:27', '114.121.239.102', 'Chrome'),
(271, '2017-04-11 16:20:03', '168.235.206.137', 'Safari'),
(272, '2017-04-11 16:20:32', '202.80.213.87', 'Chrome'),
(273, '2017-04-11 16:21:18', '180.246.73.3', 'Chrome'),
(274, '2017-04-11 16:22:02', '36.75.32.145', 'Mozilla'),
(275, '2017-04-11 16:22:04', '112.215.154.115', 'Chrome'),
(276, '2017-04-11 16:22:09', '36.73.96.185', 'Mozilla'),
(277, '2017-04-11 16:22:38', '8.37.232.215', 'Safari'),
(278, '2017-04-11 16:22:53', '36.68.233.0', 'Chrome'),
(279, '2017-04-11 16:23:08', '36.84.224.73', 'Chrome'),
(280, '2017-04-11 16:23:29', '66.220.151.86', 'Other'),
(281, '2017-04-11 16:24:01', '120.188.75.121', 'Chrome'),
(282, '2017-04-11 16:24:19', '207.241.226.233', 'Mozilla'),
(283, '2017-04-11 16:24:35', '36.73.181.116', 'Chrome'),
(284, '2017-04-11 16:25:38', '198.186.192.44', 'Other'),
(285, '2017-04-11 16:25:56', '114.4.78.117', 'Chrome'),
(286, '2017-04-11 16:26:38', '36.72.95.85', 'Firefox'),
(287, '2017-04-11 16:27:26', '120.188.81.107', 'Chrome'),
(288, '2017-04-11 16:28:19', '114.124.149.112', 'Chrome'),
(289, '2017-04-11 16:28:29', '114.125.205.41', 'Chrome'),
(290, '2017-04-11 16:28:54', '125.163.78.202', 'Chrome'),
(291, '2017-04-11 16:29:17', '114.125.52.130', 'Firefox'),
(292, '2017-04-11 16:29:45', '114.4.78.150', 'Chrome'),
(293, '2017-04-11 16:29:47', '114.121.156.129', 'Chrome'),
(294, '2017-04-11 16:29:51', '112.215.172.8', 'Chrome'),
(295, '2017-04-11 16:30:30', '114.125.166.163', 'Chrome'),
(296, '2017-04-11 16:30:35', '139.195.187.141', 'Chrome'),
(297, '2017-04-11 16:30:53', '36.72.21.12', 'Chrome'),
(298, '2017-04-11 16:32:34', '8.37.225.108', 'Firefox'),
(299, '2017-04-11 16:32:39', '180.248.6.118', 'Chrome'),
(300, '2017-04-11 16:33:44', '8.37.233.95', 'Safari'),
(301, '2017-04-11 16:34:16', '120.188.80.6', 'Safari'),
(302, '2017-04-11 16:34:52', '211.227.156.112', 'Chrome'),
(303, '2017-04-11 16:34:54', '125.167.187.126', 'Chrome'),
(304, '2017-04-11 16:35:32', '107.167.112.72', 'Chrome'),
(305, '2017-04-11 16:35:57', '112.215.152.98', 'Mozilla'),
(306, '2017-04-11 16:36:06', '180.251.167.150', 'Chrome'),
(307, '2017-04-11 16:36:27', '36.82.76.215', 'Chrome'),
(308, '2017-04-11 16:37:45', '168.235.206.238', 'Safari'),
(309, '2017-04-11 16:38:09', '124.153.33.39', 'Chrome'),
(310, '2017-04-11 16:38:39', '168.235.197.19', 'Firefox'),
(311, '2017-04-11 16:38:44', '36.73.87.46', 'Chrome'),
(312, '2017-04-11 16:38:45', '188.166.218.174', 'Firefox'),
(313, '2017-04-11 16:39:03', '36.78.54.201', 'Firefox'),
(314, '2017-04-11 16:39:24', '139.228.95.10', 'Chrome'),
(315, '2017-04-11 16:39:24', '120.188.80.114', 'Chrome'),
(316, '2017-04-11 16:39:35', '182.253.203.58', 'Chrome'),
(317, '2017-04-11 16:39:54', '36.78.66.34', 'Chrome'),
(318, '2017-04-11 16:40:56', '120.188.79.185', 'Mozilla'),
(319, '2017-04-11 16:41:35', '118.96.235.203', 'Chrome'),
(320, '2017-04-11 16:41:44', '180.253.236.103', 'Chrome'),
(321, '2017-04-11 16:43:18', '125.161.188.207', 'Chrome'),
(322, '2017-04-11 16:44:08', '36.66.72.178', 'Chrome'),
(323, '2017-04-11 16:44:16', '36.84.13.131', 'Chrome'),
(324, '2017-04-11 16:44:46', '112.215.45.240', 'Firefox'),
(325, '2017-04-11 16:45:01', '49.182.76.246', 'Chrome'),
(326, '2017-04-11 16:45:09', '180.247.77.200', 'Chrome'),
(327, '2017-04-11 16:45:19', '36.88.158.84', 'Chrome'),
(328, '2017-04-11 16:45:38', '202.62.17.12', 'Chrome'),
(329, '2017-04-11 16:46:05', '182.253.163.51', 'Firefox'),
(330, '2017-04-11 16:46:11', '139.195.94.117', 'Chrome'),
(331, '2017-04-11 16:46:41', '114.4.83.68', 'Chrome'),
(332, '2017-04-11 16:47:30', '114.125.37.46', 'Safari'),
(333, '2017-04-11 16:47:32', '173.252.74.105', 'Other'),
(334, '2017-04-11 16:49:04', '112.215.200.30', 'Chrome'),
(335, '2017-04-11 16:50:22', '120.188.81.20', 'Chrome'),
(336, '2017-04-11 16:50:32', '120.188.33.140', 'Chrome'),
(337, '2017-04-11 16:51:06', '114.4.79.120', 'Chrome'),
(338, '2017-04-11 16:51:27', '139.194.221.74', 'Chrome'),
(339, '2017-04-11 16:51:29', '120.188.87.99', 'Firefox'),
(340, '2017-04-11 16:51:48', '36.73.62.30', 'Chrome'),
(341, '2017-04-11 16:51:53', '112.215.45.120', 'Firefox'),
(342, '2017-04-11 16:51:54', '112.215.153.184', 'Safari'),
(343, '2017-04-11 16:51:59', '36.78.67.111', 'Chrome'),
(344, '2017-04-11 16:52:31', '120.188.80.165', 'Chrome'),
(345, '2017-04-11 16:52:37', '61.94.100.166', 'Chrome'),
(346, '2017-04-11 16:52:48', '180.252.168.2', 'Chrome'),
(347, '2017-04-11 16:52:50', '36.84.64.22', 'Chrome'),
(348, '2017-04-11 16:52:56', '198.144.107.187', 'Chrome'),
(349, '2017-04-11 16:53:42', '120.188.80.158', 'Chrome'),
(350, '2017-04-11 16:54:47', '180.244.55.126', 'Chrome'),
(351, '2017-04-11 16:55:18', '107.167.112.118', 'Opera'),
(352, '2017-04-11 16:55:43', '36.73.63.156', 'Chrome'),
(353, '2017-04-11 16:56:44', '125.167.92.123', 'Safari'),
(354, '2017-04-11 16:58:15', '180.247.136.78', 'Chrome'),
(355, '2017-04-11 16:59:23', '114.124.148.228', 'Chrome'),
(356, '2017-04-11 16:59:44', '120.188.80.220', 'Chrome'),
(357, '2017-04-11 16:59:50', '180.248.179.126', 'Chrome'),
(358, '2017-04-11 17:00:03', '36.78.194.86', 'Chrome'),
(359, '2017-04-11 17:00:12', '202.67.46.46', 'Chrome'),
(360, '2017-04-11 17:00:34', '113.210.202.42', 'Chrome'),
(361, '2017-04-11 17:01:47', '114.120.233.30', 'Chrome'),
(362, '2017-04-11 17:02:34', '202.182.55.230', 'Chrome'),
(363, '2017-04-11 17:02:44', '180.244.73.72', 'Chrome'),
(364, '2017-04-11 17:03:16', '49.213.16.227', 'Chrome'),
(365, '2017-04-11 17:04:03', '36.73.177.201', 'Chrome'),
(366, '2017-04-11 17:04:12', '112.215.152.124', 'Chrome'),
(367, '2017-04-11 17:08:38', '120.188.0.47', 'Chrome'),
(368, '2017-04-11 17:09:43', '36.84.58.187', 'Chrome'),
(369, '2017-04-11 17:12:18', '111.94.229.133', 'Chrome'),
(370, '2017-04-11 17:12:31', '118.136.18.255', 'Chrome'),
(371, '2017-04-11 17:13:11', '36.74.212.125', 'Chrome'),
(372, '2017-04-11 17:13:20', '103.206.245.142', 'Chrome'),
(373, '2017-04-11 17:14:21', '36.71.129.27', 'Chrome'),
(374, '2017-04-11 17:18:44', '180.252.123.165', 'Chrome'),
(375, '2017-04-11 17:19:01', '180.253.138.223', 'Chrome'),
(376, '2017-04-11 17:19:11', '66.249.79.83', 'Googlebot'),
(377, '2017-04-11 17:19:27', '36.80.242.230', 'Chrome'),
(378, '2017-04-11 17:19:54', '223.255.231.154', 'Chrome'),
(379, '2017-04-11 17:19:55', '114.125.200.74', 'Chrome'),
(380, '2017-04-11 17:21:24', '66.249.79.78', 'Googlebot'),
(381, '2017-04-11 17:21:45', '114.4.83.180', 'Mozilla'),
(382, '2017-04-11 17:23:55', '139.192.11.235', 'Chrome'),
(383, '2017-04-11 17:24:10', '125.160.66.244', 'Firefox'),
(384, '2017-04-11 17:24:17', '112.215.170.139', 'Chrome'),
(385, '2017-04-11 17:25:01', '112.215.153.158', 'Safari'),
(386, '2017-04-11 17:25:29', '110.139.187.176', 'Chrome'),
(387, '2017-04-11 17:25:38', '111.94.122.151', 'Chrome'),
(388, '2017-04-11 17:25:46', '112.215.153.252', 'Chrome'),
(389, '2017-04-11 17:27:24', '112.215.170.48', 'Chrome'),
(390, '2017-04-11 17:28:36', '125.160.51.241', 'Chrome'),
(391, '2017-04-11 17:29:53', '66.249.79.85', 'Googlebot'),
(392, '2017-04-11 17:30:04', '120.188.83.178', 'Chrome'),
(393, '2017-04-11 17:30:26', '112.215.170.170', 'Chrome'),
(394, '2017-04-11 17:30:27', '139.228.17.159', 'Chrome'),
(395, '2017-04-11 17:30:32', '107.167.112.5', 'Opera'),
(396, '2017-04-11 17:31:33', '180.249.17.245', 'Chrome'),
(397, '2017-04-11 17:31:38', '182.253.163.14', 'Chrome'),
(398, '2017-04-11 17:32:08', '202.80.215.217', 'Chrome'),
(399, '2017-04-11 17:32:45', '120.188.95.126', 'Chrome'),
(400, '2017-04-11 17:32:55', '118.136.247.154', 'Firefox'),
(401, '2017-04-11 17:33:04', '66.102.6.211', 'Chrome'),
(402, '2017-04-11 17:33:04', '66.102.6.207', 'Chrome'),
(403, '2017-04-11 17:33:05', '66.102.6.209', 'Chrome'),
(404, '2017-04-11 17:34:10', '36.84.9.122', 'Firefox'),
(405, '2017-04-11 17:34:34', '120.188.94.195', 'Chrome'),
(406, '2017-04-11 17:34:55', '36.84.2.91', 'Chrome'),
(407, '2017-04-11 17:35:12', '125.164.16.170', 'Chrome'),
(408, '2017-04-11 17:35:35', '125.164.15.224', 'Chrome'),
(409, '2017-04-11 17:36:04', '114.125.70.243', 'Chrome'),
(410, '2017-04-11 17:36:29', '180.241.222.250', 'Chrome'),
(411, '2017-04-11 17:36:55', '112.215.44.57', 'Safari'),
(412, '2017-04-11 17:39:53', '114.4.82.125', 'Chrome'),
(413, '2017-04-11 17:39:58', '120.188.5.175', 'Chrome'),
(414, '2017-04-11 17:40:27', '103.233.157.202', 'Chrome'),
(415, '2017-04-11 17:44:13', '37.34.62.205', 'Other'),
(416, '2017-04-11 17:45:37', '120.188.32.191', 'Chrome'),
(417, '2017-04-11 17:46:53', '168.235.198.107', 'Safari'),
(418, '2017-04-11 17:47:00', '36.84.0.75', 'Chrome'),
(419, '2017-04-11 17:47:43', '182.253.163.7', 'Chrome'),
(420, '2017-04-11 17:47:49', '36.68.52.209', 'Safari'),
(421, '2017-04-11 17:48:03', '103.47.132.52', 'Chrome'),
(422, '2017-04-11 17:49:58', '36.66.211.11', 'Chrome'),
(423, '2017-04-11 17:50:12', '112.215.171.166', 'Chrome'),
(424, '2017-04-11 17:51:49', '103.4.167.243', 'Chrome'),
(425, '2017-04-11 17:51:51', '120.188.85.6', 'Chrome'),
(426, '2017-04-11 17:52:02', '120.188.81.83', 'Chrome'),
(427, '2017-04-11 17:52:52', '120.188.83.233', 'Chrome'),
(428, '2017-04-11 17:53:37', '125.165.48.195', 'Firefox'),
(429, '2017-04-11 17:54:20', '203.130.236.249', 'Chrome'),
(430, '2017-04-11 17:54:28', '115.178.238.196', 'Mozilla'),
(431, '2017-04-11 17:54:49', '202.179.189.74', 'Mozilla'),
(432, '2017-04-11 17:56:50', '182.253.62.114', 'Chrome'),
(433, '2017-04-11 17:57:37', '112.215.154.28', 'Chrome'),
(434, '2017-04-11 17:57:53', '110.137.169.204', 'Chrome'),
(435, '2017-04-11 17:57:56', '223.255.227.26', 'Chrome'),
(436, '2017-04-11 17:58:01', '112.215.63.20', 'Chrome'),
(437, '2017-04-11 17:58:46', '139.194.53.216', 'Chrome'),
(438, '2017-04-11 17:59:15', '27.50.17.11', 'Chrome'),
(439, '2017-04-11 17:59:34', '182.253.163.50', 'Firefox'),
(440, '2017-04-11 17:59:47', '36.76.123.254', 'Chrome'),
(441, '2017-04-11 18:00:20', '103.47.132.22', 'Chrome'),
(442, '2017-04-11 18:00:30', '8.37.233.83', 'Safari'),
(443, '2017-04-11 18:00:46', '114.125.180.165', 'Chrome'),
(444, '2017-04-11 18:01:39', '180.252.143.230', 'Chrome'),
(445, '2017-04-11 18:01:45', '163.53.185.146', 'Chrome'),
(446, '2017-04-11 18:02:33', '114.125.207.121', 'Chrome'),
(447, '2017-04-11 18:02:40', '36.72.9.120', 'Chrome'),
(448, '2017-04-11 18:04:44', '61.5.60.185', 'Chrome'),
(449, '2017-04-11 18:04:46', '36.80.153.97', 'Chrome'),
(450, '2017-04-11 18:05:41', '180.252.239.223', 'Chrome'),
(451, '2017-04-11 18:07:10', '120.188.33.120', 'Chrome'),
(452, '2017-04-11 18:07:10', '118.97.50.22', 'Chrome'),
(453, '2017-04-11 18:08:05', '118.97.50.23', 'Chrome'),
(454, '2017-04-11 18:09:09', '36.84.229.118', 'Chrome'),
(455, '2017-04-11 18:09:12', '114.125.11.225', 'Chrome'),
(456, '2017-04-11 18:09:49', '182.23.59.66', 'Firefox'),
(457, '2017-04-11 18:10:16', '118.97.50.24', 'Chrome'),
(458, '2017-04-11 18:10:59', '175.111.91.19', 'Firefox'),
(459, '2017-04-11 18:11:01', '121.101.131.66', 'Chrome'),
(460, '2017-04-11 18:11:16', '2.235.170.197', 'Chrome'),
(461, '2017-04-11 18:11:43', '180.247.185.142', 'Chrome'),
(462, '2017-04-11 18:12:38', '36.80.179.43', 'Firefox'),
(463, '2017-04-11 18:12:53', '36.75.240.166', 'Chrome'),
(464, '2017-04-11 18:13:31', '118.97.241.130', 'Chrome'),
(465, '2017-04-11 18:13:31', '101.128.85.22', 'Chrome'),
(466, '2017-04-11 18:13:48', '182.253.122.110', 'Chrome'),
(467, '2017-04-11 18:14:31', '120.188.65.57', 'Chrome'),
(468, '2017-04-11 18:14:38', '115.164.60.248', 'Chrome'),
(469, '2017-04-11 18:14:42', '180.250.206.226', 'Chrome'),
(470, '2017-04-11 18:15:06', '125.165.103.49', 'Chrome'),
(471, '2017-04-11 18:15:25', '104.237.243.90', 'Firefox'),
(472, '2017-04-11 18:15:30', '180.254.241.158', 'Chrome'),
(473, '2017-04-11 18:15:50', '36.85.5.162', 'Chrome'),
(474, '2017-04-11 18:15:56', '120.188.67.11', 'Chrome'),
(475, '2017-04-11 18:15:58', '38.80.23.2', 'Firefox'),
(476, '2017-04-11 18:16:01', '61.94.194.3', 'Chrome'),
(477, '2017-04-11 18:16:02', '222.124.22.228', 'Chrome'),
(478, '2017-04-11 18:16:07', '180.178.93.249', 'Chrome'),
(479, '2017-04-11 18:16:32', '36.80.213.229', 'Chrome'),
(480, '2017-04-11 18:17:27', '175.184.250.82', 'Chrome'),
(481, '2017-04-11 18:17:56', '103.31.109.2', 'Chrome'),
(482, '2017-04-11 18:18:11', '168.235.202.213', 'Safari'),
(483, '2017-04-11 18:18:43', '120.188.85.102', 'Chrome'),
(484, '2017-04-11 18:18:49', '61.5.84.239', 'Chrome'),
(485, '2017-04-11 18:18:51', '36.73.220.140', 'Chrome'),
(486, '2017-04-11 18:18:57', '180.247.181.120', 'Chrome'),
(487, '2017-04-11 18:19:50', '36.73.22.116', 'Chrome'),
(488, '2017-04-11 18:21:09', '36.84.229.80', 'Chrome'),
(489, '2017-04-11 18:21:23', '120.188.67.170', 'Chrome'),
(490, '2017-04-11 18:21:24', '36.85.13.189', 'Chrome'),
(491, '2017-04-11 18:22:18', '66.96.246.66', 'Chrome'),
(492, '2017-04-11 18:22:48', '111.68.27.251', 'Chrome'),
(493, '2017-04-11 18:23:31', '202.80.212.117', 'Chrome'),
(494, '2017-04-11 18:23:59', '112.215.171.69', 'Mozilla'),
(495, '2017-04-11 18:24:35', '222.124.214.250', 'Chrome'),
(496, '2017-04-11 18:24:53', '140.0.203.15', 'Chrome'),
(497, '2017-04-11 18:24:58', '116.254.126.142', 'Chrome'),
(498, '2017-04-11 18:25:13', '120.188.66.255', 'Chrome'),
(499, '2017-04-11 18:25:33', '168.235.194.213', 'Safari'),
(500, '2017-04-11 18:25:48', '114.125.9.160', 'Safari'),
(501, '2017-04-11 18:25:54', '112.215.201.184', 'Safari'),
(502, '2017-04-11 18:25:57', '125.163.255.80', 'Chrome'),
(503, '2017-04-11 18:26:09', '168.235.200.204', 'Safari'),
(504, '2017-04-11 18:26:37', '128.199.233.142', 'Safari'),
(505, '2017-04-11 18:28:11', '112.215.154.169', 'Firefox'),
(506, '2017-04-11 18:28:25', '168.235.195.242', 'Safari'),
(507, '2017-04-11 18:29:06', '223.25.97.210', 'Chrome'),
(508, '2017-04-11 18:30:24', '203.176.183.20', 'Chrome'),
(509, '2017-04-11 18:30:50', '180.253.126.127', 'Chrome'),
(510, '2017-04-11 18:31:06', '36.78.129.171', 'Chrome'),
(511, '2017-04-11 18:33:51', '14.102.152.234', 'Chrome'),
(512, '2017-04-11 18:34:09', '8.37.230.53', 'Safari'),
(513, '2017-04-11 18:34:27', '112.215.172.183', 'Chrome'),
(514, '2017-04-11 18:35:45', '112.215.65.96', 'Safari'),
(515, '2017-04-11 18:36:42', '110.5.102.56', 'Chrome'),
(516, '2017-04-11 18:37:05', '114.121.246.246', 'Chrome'),
(517, '2017-04-11 18:37:17', '110.139.27.171', 'Chrome'),
(518, '2017-04-11 18:39:05', '120.188.65.207', 'Chrome'),
(519, '2017-04-11 18:39:31', '180.254.64.231', 'Chrome'),
(520, '2017-04-11 18:39:34', '202.133.6.54', 'Chrome'),
(521, '2017-04-11 18:40:40', '36.68.41.249', 'Chrome'),
(522, '2017-04-11 18:43:08', '125.163.57.73', 'Chrome'),
(523, '2017-04-11 18:44:21', '114.121.157.148', 'Chrome'),
(524, '2017-04-11 18:44:46', '140.0.229.214', 'Chrome'),
(525, '2017-04-11 18:46:15', '103.55.216.76', 'Firefox'),
(526, '2017-04-11 18:47:25', '120.188.4.116', 'Chrome'),
(527, '2017-04-11 18:48:03', '202.124.205.203', 'Mozilla'),
(528, '2017-04-11 18:48:11', '202.80.212.84', 'Chrome'),
(529, '2017-04-11 18:48:52', '36.74.26.7', 'Chrome'),
(530, '2017-04-11 18:48:52', '210.57.215.142', 'Chrome'),
(531, '2017-04-11 18:48:56', '202.43.183.130', 'Chrome'),
(532, '2017-04-11 18:49:16', '61.94.50.125', 'Chrome'),
(533, '2017-04-11 18:50:14', '139.192.185.41', 'Chrome'),
(534, '2017-04-11 18:50:46', '36.72.118.174', 'Chrome'),
(535, '2017-04-11 18:51:16', '118.136.225.170', 'Chrome'),
(536, '2017-04-11 18:51:48', '202.67.46.40', 'Chrome'),
(537, '2017-04-11 18:52:04', '182.253.33.51', 'Firefox'),
(538, '2017-04-11 18:52:06', '180.254.26.52', 'Chrome'),
(539, '2017-04-11 18:52:07', '36.66.168.63', 'Chrome'),
(540, '2017-04-11 18:52:24', '112.215.45.116', 'Firefox'),
(541, '2017-04-11 18:52:52', '112.215.172.67', 'Chrome'),
(542, '2017-04-11 18:54:21', '180.245.67.128', 'Chrome'),
(543, '2017-04-11 18:55:01', '36.83.178.178', 'Chrome'),
(544, '2017-04-11 18:55:10', '118.96.213.178', 'Firefox'),
(545, '2017-04-11 18:56:30', '114.125.170.252', 'Chrome'),
(546, '2017-04-11 18:56:43', '124.153.32.100', 'Chrome'),
(547, '2017-04-11 18:57:11', '120.188.74.139', 'Mozilla'),
(548, '2017-04-11 18:57:47', '124.153.33.42', 'Mozilla'),
(549, '2017-04-11 18:58:44', '36.78.128.112', 'Firefox'),
(550, '2017-04-11 18:59:10', '103.228.26.4', 'Chrome'),
(551, '2017-04-11 19:00:17', '36.82.101.17', 'Chrome'),
(552, '2017-04-11 19:01:21', '139.0.54.49', 'Chrome'),
(553, '2017-04-11 19:01:23', '180.252.103.36', 'Mozilla'),
(554, '2017-04-11 19:01:33', '117.102.64.82', 'Firefox'),
(555, '2017-04-11 19:03:59', '202.67.44.8', 'Chrome'),
(556, '2017-04-11 19:04:16', '114.125.26.15', 'Chrome'),
(557, '2017-04-11 19:04:23', '180.246.224.105', 'Chrome'),
(558, '2017-04-11 19:05:05', '112.215.170.35', 'Mozilla'),
(559, '2017-04-11 19:05:33', '180.251.217.107', 'Chrome'),
(560, '2017-04-11 19:06:35', '36.84.39.119', 'Chrome'),
(561, '2017-04-11 19:07:10', '103.241.206.74', 'Chrome'),
(562, '2017-04-11 19:08:18', '203.160.128.8', 'Chrome'),
(563, '2017-04-11 19:09:24', '36.71.230.230', 'Chrome'),
(564, '2017-04-11 19:09:33', '118.136.40.213', 'Chrome'),
(565, '2017-04-11 19:10:26', '8.37.225.146', 'Firefox'),
(566, '2017-04-11 19:10:27', '180.251.6.162', 'Chrome'),
(567, '2017-04-11 19:10:34', '112.215.201.35', 'Chrome'),
(568, '2017-04-11 19:10:40', '120.188.64.132', 'Chrome'),
(569, '2017-04-11 19:11:13', '112.215.151.179', 'Chrome'),
(570, '2017-04-11 19:11:34', '107.167.99.205', 'Opera'),
(571, '2017-04-11 19:11:48', '210.211.18.82', 'Chrome'),
(572, '2017-04-11 19:11:51', '112.215.174.151', 'Chrome'),
(573, '2017-04-11 19:12:02', '120.188.73.159', 'Chrome'),
(574, '2017-04-11 19:13:39', '36.81.46.228', 'Chrome'),
(575, '2017-04-11 19:15:31', '36.77.89.224', 'Chrome'),
(576, '2017-04-11 19:16:10', '107.167.112.144', 'Chrome'),
(577, '2017-04-11 19:16:23', '125.165.178.198', 'Firefox'),
(578, '2017-04-11 19:16:50', '139.192.58.131', 'Chrome'),
(579, '2017-04-11 19:16:54', '36.69.12.48', 'Chrome'),
(580, '2017-04-11 19:17:14', '202.179.190.162', 'Chrome'),
(581, '2017-04-11 19:17:26', '36.78.33.42', 'Chrome'),
(582, '2017-04-11 19:17:48', '103.213.131.160', 'Chrome'),
(583, '2017-04-11 19:17:55', '36.85.24.1', 'Mozilla'),
(584, '2017-04-11 19:18:13', '202.158.89.154', 'Chrome'),
(585, '2017-04-11 19:19:02', '36.70.91.134', 'Firefox'),
(586, '2017-04-11 19:19:15', '114.125.30.235', 'Chrome'),
(587, '2017-04-11 19:19:52', '125.163.174.117', 'Chrome'),
(588, '2017-04-11 19:20:01', '103.17.246.48', 'Firefox'),
(589, '2017-04-11 19:21:22', '36.88.134.156', 'Chrome'),
(590, '2017-04-11 19:22:53', '120.188.5.152', 'Mozilla'),
(591, '2017-04-11 19:23:28', '114.124.33.225', 'Chrome'),
(592, '2017-04-11 19:23:44', '112.215.200.147', 'Chrome'),
(593, '2017-04-11 19:24:23', '180.253.125.143', 'Chrome'),
(594, '2017-04-11 19:24:30', '36.69.83.3', 'Chrome'),
(595, '2017-04-11 19:25:24', '36.68.118.78', 'Firefox'),
(596, '2017-04-11 19:25:36', '180.245.99.108', 'Chrome'),
(597, '2017-04-11 19:26:15', '8.37.225.106', 'Firefox'),
(598, '2017-04-11 19:26:16', '58.10.55.252', 'Chrome'),
(599, '2017-04-11 19:27:07', '36.73.65.61', 'Firefox'),
(600, '2017-04-11 19:27:18', '202.62.18.53', 'Chrome'),
(601, '2017-04-11 19:27:39', '180.243.101.157', 'Chrome'),
(602, '2017-04-11 19:29:40', '180.249.209.233', 'Chrome'),
(603, '2017-04-11 19:31:13', '120.188.7.226', 'Chrome'),
(604, '2017-04-11 19:31:29', '36.85.139.235', 'Firefox'),
(605, '2017-04-11 19:32:43', '203.142.64.87', 'Chrome'),
(606, '2017-04-11 19:33:19', '107.167.112.181', 'Opera'),
(607, '2017-04-11 19:34:05', '182.253.73.4', 'Firefox'),
(608, '2017-04-11 19:34:16', '110.136.57.170', 'Chrome'),
(609, '2017-04-11 19:38:24', '112.215.200.152', 'Mozilla'),
(610, '2017-04-11 19:38:37', '168.235.205.184', 'Safari'),
(611, '2017-04-11 19:39:48', '125.164.109.171', 'Chrome'),
(612, '2017-04-11 19:39:50', '36.73.58.152', 'Chrome'),
(613, '2017-04-11 19:40:16', '202.62.16.15', 'Chrome'),
(614, '2017-04-11 19:41:57', '36.73.54.54', 'Chrome'),
(615, '2017-04-11 19:42:26', '36.80.151.109', 'Firefox'),
(616, '2017-04-11 19:43:14', '202.67.40.199', 'Chrome'),
(617, '2017-04-11 19:43:29', '114.4.83.133', 'Chrome'),
(618, '2017-04-11 19:43:31', '173.193.202.116', 'Firefox'),
(619, '2017-04-11 19:44:18', '202.62.16.181', 'Chrome'),
(620, '2017-04-11 19:45:13', '167.114.233.118', 'Firefox'),
(621, '2017-04-11 19:45:30', '180.241.24.74', 'Chrome'),
(622, '2017-04-11 19:47:01', '125.166.212.190', 'Chrome'),
(623, '2017-04-11 19:47:21', '180.241.179.220', 'Chrome'),
(624, '2017-04-11 19:47:27', '125.167.75.246', 'Chrome'),
(625, '2017-04-11 19:47:48', '168.235.194.226', 'Safari'),
(626, '2017-04-11 19:52:01', '118.97.137.170', 'Chrome'),
(627, '2017-04-11 19:52:53', '180.247.208.196', 'Chrome'),
(628, '2017-04-11 19:54:25', '103.9.124.211', 'Chrome'),
(629, '2017-04-11 19:56:29', '120.188.94.118', 'Chrome'),
(630, '2017-04-11 19:56:33', '36.73.12.186', 'Firefox'),
(631, '2017-04-11 19:56:44', '36.66.254.39', 'Firefox'),
(632, '2017-04-11 19:57:28', '120.188.81.56', 'Chrome'),
(633, '2017-04-11 19:59:02', '36.82.7.245', 'Chrome'),
(634, '2017-04-11 19:59:36', '103.212.43.138', 'Chrome'),
(635, '2017-04-11 20:00:38', '139.193.114.21', 'Chrome'),
(636, '2017-04-11 20:00:50', '112.215.175.249', 'Firefox'),
(637, '2017-04-11 20:01:24', '120.188.33.237', 'Chrome'),
(638, '2017-04-11 20:01:53', '36.80.106.53', 'Chrome'),
(639, '2017-04-11 20:02:10', '36.84.0.88', 'Firefox'),
(640, '2017-04-11 20:03:00', '103.57.192.122', 'Chrome'),
(641, '2017-04-11 20:04:55', '36.72.190.47', 'Firefox'),
(642, '2017-04-11 20:06:41', '125.163.105.25', 'Chrome'),
(643, '2017-04-11 20:07:06', '115.178.234.139', 'Mozilla'),
(644, '2017-04-11 20:07:31', '114.120.234.114', 'Mozilla'),
(645, '2017-04-11 20:08:50', '202.67.46.227', 'Chrome'),
(646, '2017-04-11 20:09:22', '36.77.160.216', 'Chrome'),
(647, '2017-04-11 20:10:14', '139.193.15.145', 'Chrome'),
(648, '2017-04-11 20:10:47', '112.215.172.245', 'Chrome'),
(649, '2017-04-11 20:10:50', '207.241.226.232', 'Mozilla'),
(650, '2017-04-11 20:11:07', '120.188.0.239', 'Chrome'),
(651, '2017-04-11 20:11:09', '180.251.99.141', 'Chrome'),
(652, '2017-04-11 20:11:13', '125.162.56.58', 'Chrome'),
(653, '2017-04-11 20:11:39', '36.72.50.199', 'Chrome'),
(654, '2017-04-11 20:12:20', '139.194.66.128', 'Chrome'),
(655, '2017-04-11 20:12:55', '36.78.127.45', 'Firefox'),
(656, '2017-04-11 20:13:00', '36.74.170.244', 'Chrome'),
(657, '2017-04-11 20:13:59', '36.83.123.80', 'Chrome'),
(658, '2017-04-11 20:14:36', '36.84.13.207', 'Chrome'),
(659, '2017-04-11 20:14:50', '112.198.68.78', 'Chrome'),
(660, '2017-04-11 20:15:20', '180.251.88.168', 'Firefox'),
(661, '2017-04-11 20:15:32', '119.110.69.226', 'Chrome'),
(662, '2017-04-11 20:16:00', '36.85.65.250', 'Chrome'),
(663, '2017-04-11 20:16:43', '112.78.141.82', 'Firefox'),
(664, '2017-04-11 20:16:57', '125.163.59.51', 'Chrome'),
(665, '2017-04-11 20:17:19', '116.197.132.78', 'Firefox'),
(666, '2017-04-11 20:17:39', '120.188.67.180', 'Chrome'),
(667, '2017-04-11 20:18:27', '114.4.83.35', 'Chrome'),
(668, '2017-04-11 20:18:28', '125.162.19.20', 'Firefox'),
(669, '2017-04-11 20:18:29', '182.253.3.140', 'Chrome'),
(670, '2017-04-11 20:21:45', '36.78.130.219', 'Firefox'),
(671, '2017-04-11 20:24:05', '180.246.25.27', 'Firefox'),
(672, '2017-04-11 20:25:03', '202.150.146.82', 'Chrome'),
(673, '2017-04-11 20:25:05', '125.162.222.87', 'Mozilla'),
(674, '2017-04-11 20:25:34', '120.188.86.20', 'Chrome'),
(675, '2017-04-11 20:25:43', '125.163.109.106', 'Chrome'),
(676, '2017-04-11 20:26:12', '120.188.81.160', 'Chrome'),
(677, '2017-04-11 20:29:23', '175.111.89.10', 'Chrome'),
(678, '2017-04-11 20:30:27', '114.121.245.17', 'Mozilla'),
(679, '2017-04-11 20:32:54', '110.139.200.11', 'Chrome'),
(680, '2017-04-11 20:33:00', '114.125.52.89', 'Chrome'),
(681, '2017-04-11 20:33:25', '36.74.177.233', 'Chrome'),
(682, '2017-04-11 20:33:44', '180.254.162.29', 'Firefox'),
(683, '2017-04-11 20:33:53', '125.160.100.4', 'Chrome'),
(684, '2017-04-11 20:34:59', '202.77.111.104', 'Chrome'),
(685, '2017-04-11 20:35:16', '36.69.153.83', 'Chrome'),
(686, '2017-04-11 20:35:19', '180.254.13.225', 'Chrome'),
(687, '2017-04-11 20:35:24', '180.251.214.117', 'Chrome'),
(688, '2017-04-11 20:35:27', '36.74.134.188', 'Chrome'),
(689, '2017-04-11 20:35:41', '107.167.103.167', 'Opera'),
(690, '2017-04-11 20:36:56', '139.193.222.23', 'Chrome'),
(691, '2017-04-11 20:36:59', '182.253.72.87', 'Chrome'),
(692, '2017-04-11 20:37:10', '101.255.64.210', 'Chrome'),
(693, '2017-04-11 20:38:20', '36.69.60.79', 'Chrome'),
(694, '2017-04-11 20:38:34', '36.84.229.27', 'Firefox'),
(695, '2017-04-11 20:41:28', '202.62.16.239', 'Firefox'),
(696, '2017-04-11 20:41:42', '36.81.58.185', 'Chrome'),
(697, '2017-04-11 20:41:44', '112.215.152.52', 'Chrome'),
(698, '2017-04-11 20:42:08', '36.74.224.172', 'Chrome'),
(699, '2017-04-11 20:42:11', '112.215.200.247', 'Mozilla'),
(700, '2017-04-11 20:42:34', '112.215.153.115', 'Chrome'),
(701, '2017-04-11 20:42:58', '223.164.0.178', 'Chrome'),
(702, '2017-04-11 20:42:58', '36.72.62.17', 'Chrome'),
(703, '2017-04-11 20:43:38', '103.209.131.44', 'Firefox'),
(704, '2017-04-11 20:43:43', '139.195.33.29', 'Chrome'),
(705, '2017-04-11 20:44:51', '103.61.248.82', 'Chrome'),
(706, '2017-04-11 20:46:50', '175.103.43.86', 'Chrome'),
(707, '2017-04-11 20:47:49', '120.188.94.79', 'Chrome'),
(708, '2017-04-11 20:47:53', '202.169.46.130', 'Chrome'),
(709, '2017-04-11 20:48:37', '158.140.170.38', 'Chrome'),
(710, '2017-04-11 20:49:55', '180.245.193.140', 'Chrome'),
(711, '2017-04-11 20:50:24', '180.246.157.179', 'Chrome'),
(712, '2017-04-11 20:51:51', '36.76.23.139', 'Chrome'),
(713, '2017-04-11 20:52:06', '202.67.41.213', 'Chrome'),
(714, '2017-04-11 20:52:34', '36.78.163.149', 'Chrome'),
(715, '2017-04-11 20:53:12', '158.140.166.0', 'Chrome'),
(716, '2017-04-11 20:55:36', '207.244.86.209', 'Chrome'),
(717, '2017-04-11 20:56:35', '120.188.79.122', 'Chrome'),
(718, '2017-04-11 20:58:11', '36.73.104.74', 'Chrome'),
(719, '2017-04-11 20:58:21', '222.124.22.251', 'Firefox'),
(720, '2017-04-11 20:58:32', '120.188.93.249', 'Chrome'),
(721, '2017-04-11 21:02:03', '120.188.33.199', 'Chrome'),
(722, '2017-04-11 21:02:06', '125.161.64.96', 'Chrome'),
(723, '2017-04-11 21:03:41', '182.253.122.125', 'Chrome'),
(724, '2017-04-11 21:04:06', '36.68.234.47', 'Chrome'),
(725, '2017-04-11 21:04:33', '36.72.94.211', 'Chrome'),
(726, '2017-04-11 21:04:48', '125.163.125.211', 'Chrome'),
(727, '2017-04-11 21:04:52', '180.248.243.155', 'Chrome'),
(728, '2017-04-11 21:04:58', '182.253.34.175', 'Mozilla'),
(729, '2017-04-11 21:05:28', '103.24.49.225', 'Chrome'),
(730, '2017-04-11 21:06:42', '180.248.250.226', 'Chrome'),
(731, '2017-04-11 21:09:06', '36.84.157.255', 'Chrome'),
(732, '2017-04-11 21:09:09', '202.152.156.210', 'Firefox'),
(733, '2017-04-11 21:09:41', '114.125.53.87', 'Chrome'),
(734, '2017-04-11 21:09:43', '120.188.7.170', 'Chrome'),
(735, '2017-04-11 21:11:29', '152.118.148.226', 'Internet Explorer'),
(736, '2017-04-11 21:11:43', '182.253.188.125', 'Chrome'),
(737, '2017-04-11 21:12:47', '5.254.97.108', 'Chrome'),
(738, '2017-04-11 21:13:23', '120.188.3.109', 'Chrome'),
(739, '2017-04-11 21:14:38', '180.246.199.52', 'Chrome'),
(740, '2017-04-11 21:15:05', '210.211.17.14', 'Chrome'),
(741, '2017-04-11 21:15:59', '36.82.201.211', 'Chrome'),
(742, '2017-04-11 21:16:14', '103.23.102.111', 'Chrome'),
(743, '2017-04-11 21:17:19', '36.81.75.68', 'Chrome'),
(744, '2017-04-11 21:18:59', '114.125.39.153', 'Chrome'),
(745, '2017-04-11 21:20:34', '222.124.52.127', 'Chrome'),
(746, '2017-04-11 21:21:13', '180.248.199.49', 'Chrome'),
(747, '2017-04-11 21:22:00', '125.163.114.139', 'Chrome'),
(748, '2017-04-11 21:25:37', '107.167.99.151', 'Opera'),
(749, '2017-04-11 21:26:05', '114.125.116.95', 'Chrome'),
(750, '2017-04-11 21:26:49', '202.62.18.115', 'Chrome'),
(751, '2017-04-11 21:26:50', '61.8.69.82', 'Chrome'),
(752, '2017-04-11 21:28:31', '113.161.224.83', 'Chrome'),
(753, '2017-04-11 21:28:45', '103.47.132.24', 'Chrome'),
(754, '2017-04-11 21:29:03', '120.188.64.12', 'Chrome'),
(755, '2017-04-11 21:30:03', '103.47.134.26', 'Chrome'),
(756, '2017-04-11 21:30:29', '202.9.85.34', 'Chrome'),
(757, '2017-04-11 21:31:59', '182.253.62.142', 'Chrome'),
(758, '2017-04-11 21:32:07', '36.88.45.251', 'Chrome'),
(759, '2017-04-11 21:32:24', '114.121.133.17', 'Mozilla'),
(760, '2017-04-11 21:33:18', '190.233.193.231', 'Chrome'),
(761, '2017-04-11 21:33:41', '202.80.215.57', 'Chrome'),
(762, '2017-04-11 21:34:18', '115.178.216.124', 'Chrome'),
(763, '2017-04-11 21:37:01', '222.165.226.122', 'Firefox'),
(764, '2017-04-11 21:38:07', '36.82.13.155', 'Chrome'),
(765, '2017-04-11 21:38:30', '202.182.59.185', 'Firefox'),
(766, '2017-04-11 21:38:42', '103.21.206.66', 'Chrome'),
(767, '2017-04-11 21:39:14', '36.69.87.71', 'Chrome'),
(768, '2017-04-11 21:39:42', '43.247.13.202', 'Chrome'),
(769, '2017-04-11 21:40:08', '66.102.7.143', 'Chrome'),
(770, '2017-04-11 21:43:21', '168.235.195.74', 'Safari'),
(771, '2017-04-11 21:44:11', '103.8.12.99', 'Chrome'),
(772, '2017-04-11 21:44:14', '180.252.137.203', 'Chrome'),
(773, '2017-04-11 21:44:27', '36.87.53.20', 'Safari'),
(774, '2017-04-11 21:45:06', '114.125.87.178', 'Chrome'),
(775, '2017-04-11 21:46:04', '158.140.172.34', 'Chrome'),
(776, '2017-04-11 21:46:12', '61.94.132.66', 'Chrome'),
(777, '2017-04-11 21:47:36', '101.255.60.254', 'Chrome'),
(778, '2017-04-11 21:49:09', '36.74.102.19', 'Chrome'),
(779, '2017-04-11 21:49:42', '180.246.244.93', 'Chrome'),
(780, '2017-04-11 21:49:52', '118.97.151.193', 'Firefox'),
(781, '2017-04-11 21:50:01', '117.102.122.242', 'Chrome'),
(782, '2017-04-11 21:50:51', '36.71.249.134', 'Chrome'),
(783, '2017-04-11 21:51:54', '112.215.171.45', 'Chrome'),
(784, '2017-04-11 21:52:18', '103.241.5.116', 'Chrome'),
(785, '2017-04-11 21:52:31', '36.78.103.212', 'Chrome'),
(786, '2017-04-11 21:53:09', '36.72.80.127', 'Chrome'),
(787, '2017-04-11 21:54:12', '36.78.123.228', 'Chrome'),
(788, '2017-04-11 21:54:16', '36.68.235.225', 'Chrome'),
(789, '2017-04-11 21:54:37', '125.161.181.154', 'Firefox'),
(790, '2017-04-11 21:55:13', '36.80.164.131', 'Chrome'),
(791, '2017-04-11 21:56:15', '180.245.211.69', 'Chrome'),
(792, '2017-04-11 21:56:16', '125.167.186.204', 'Chrome'),
(793, '2017-04-11 21:57:34', '114.125.119.153', 'Chrome'),
(794, '2017-04-11 21:59:59', '114.121.234.35', 'Chrome'),
(795, '2017-04-11 22:02:26', '107.167.103.67', 'Opera'),
(796, '2017-04-11 22:02:47', '36.80.9.250', 'Chrome'),
(797, '2017-04-11 22:02:50', '36.88.62.43', 'Chrome'),
(798, '2017-04-11 22:02:57', '114.125.184.105', 'Chrome'),
(799, '2017-04-11 22:03:07', '185.182.81.53', 'Chrome'),
(800, '2017-04-11 22:04:44', '66.102.7.141', 'Chrome'),
(801, '2017-04-11 22:04:57', '36.88.158.219', 'Chrome'),
(802, '2017-04-11 22:06:25', '36.73.34.208', 'Chrome'),
(803, '2017-04-11 22:07:58', '36.74.20.46', 'Chrome'),
(804, '2017-04-11 22:08:28', '36.82.100.128', 'Chrome'),
(805, '2017-04-11 22:09:30', '112.215.65.245', 'Chrome'),
(806, '2017-04-11 22:09:42', '114.4.78.119', 'Chrome'),
(807, '2017-04-11 22:09:46', '110.137.171.177', 'Chrome'),
(808, '2017-04-11 22:09:47', '140.0.198.87', 'Mozilla'),
(809, '2017-04-11 22:10:20', '103.47.134.18', 'Chrome'),
(810, '2017-04-11 22:10:43', '36.66.46.34', 'Chrome'),
(811, '2017-04-11 22:11:32', '180.246.96.230', 'Chrome'),
(812, '2017-04-11 22:13:26', '146.185.31.213', 'Firefox'),
(813, '2017-04-11 22:18:49', '163.53.186.186', 'Firefox'),
(814, '2017-04-11 22:19:24', '202.62.16.98', 'Chrome'),
(815, '2017-04-11 22:21:09', '36.70.200.11', 'Chrome'),
(816, '2017-04-11 22:24:10', '112.215.45.58', 'Chrome'),
(817, '2017-04-11 22:25:14', '66.96.234.91', 'Chrome'),
(818, '2017-04-11 22:25:55', '103.66.199.34', 'Chrome'),
(819, '2017-04-11 22:26:53', '182.253.163.82', 'Chrome'),
(820, '2017-04-11 22:28:37', '103.3.44.1', 'Chrome'),
(821, '2017-04-11 22:29:22', '36.88.90.200', 'Chrome'),
(822, '2017-04-11 22:30:19', '180.254.255.166', 'Chrome'),
(823, '2017-04-11 22:30:24', '115.178.200.226', 'Chrome'),
(824, '2017-04-11 22:30:45', '120.188.1.120', 'Chrome'),
(825, '2017-04-11 22:32:14', '103.195.142.26', 'Chrome'),
(826, '2017-04-11 22:33:33', '120.188.0.9', 'Firefox'),
(827, '2017-04-11 22:35:18', '120.188.81.213', 'Chrome'),
(828, '2017-04-11 22:36:20', '182.253.131.41', 'Mozilla'),
(829, '2017-04-11 22:36:24', '8.37.234.123', 'Chrome'),
(830, '2017-04-11 22:36:27', '36.72.34.63', 'Chrome'),
(831, '2017-04-11 22:36:36', '115.178.239.80', 'Chrome'),
(832, '2017-04-11 22:36:54', '103.58.111.34', 'Chrome'),
(833, '2017-04-11 22:38:16', '8.37.225.224', 'Firefox'),
(834, '2017-04-11 22:38:19', '112.215.200.93', 'Chrome'),
(835, '2017-04-11 22:39:20', '120.188.92.156', 'Chrome'),
(836, '2017-04-11 22:39:27', '114.125.103.119', 'Chrome'),
(837, '2017-04-11 22:40:08', '107.167.112.73', 'Chrome'),
(838, '2017-04-11 22:42:02', '120.188.66.2', 'Chrome'),
(839, '2017-04-11 22:42:44', '36.72.134.144', 'Chrome'),
(840, '2017-04-11 22:43:13', '36.66.215.5', 'Firefox'),
(841, '2017-04-11 22:44:26', '114.125.101.241', 'Chrome'),
(842, '2017-04-11 22:45:36', '182.253.37.186', 'Firefox'),
(843, '2017-04-11 22:46:05', '114.125.117.183', 'Chrome'),
(844, '2017-04-11 22:46:05', '114.125.101.71', 'Chrome'),
(845, '2017-04-11 22:46:05', '114.125.101.255', 'Chrome'),
(846, '2017-04-11 22:47:28', '114.124.34.31', 'Mozilla'),
(847, '2017-04-11 22:48:28', '202.62.17.122', 'Chrome'),
(848, '2017-04-11 22:48:41', '139.192.131.90', 'Chrome'),
(849, '2017-04-11 22:52:52', '120.188.3.158', 'Chrome'),
(850, '2017-04-11 22:53:10', '200.77.128.224', 'Mozilla'),
(851, '2017-04-11 22:54:26', '112.215.151.215', 'Chrome'),
(852, '2017-04-11 22:55:40', '114.4.82.59', 'Chrome'),
(853, '2017-04-11 22:55:50', '36.79.229.121', 'Chrome'),
(854, '2017-04-11 22:57:41', '118.136.224.179', 'Chrome'),
(855, '2017-04-11 23:00:38', '202.67.41.242', 'Chrome'),
(856, '2017-04-11 23:01:11', '36.77.191.150', 'Mozilla'),
(857, '2017-04-11 23:01:26', '125.166.214.129', 'Chrome'),
(858, '2017-04-11 23:03:25', '202.93.231.81', 'Chrome'),
(859, '2017-04-11 23:03:40', '36.68.69.52', 'Chrome'),
(860, '2017-04-11 23:03:59', '112.215.152.222', 'Chrome'),
(861, '2017-04-11 23:04:55', '36.79.42.167', 'Chrome'),
(862, '2017-04-11 23:05:30', '103.47.134.3', 'Chrome'),
(863, '2017-04-11 23:10:29', '139.59.96.104', 'Chrome'),
(864, '2017-04-11 23:11:56', '36.73.101.192', 'Firefox'),
(865, '2017-04-11 23:12:39', '180.252.110.204', 'Chrome'),
(866, '2017-04-11 23:14:25', '36.84.224.105', 'Firefox'),
(867, '2017-04-11 23:15:20', '112.215.172.91', 'Chrome'),
(868, '2017-04-11 23:15:29', '43.252.159.29', 'Chrome'),
(869, '2017-04-11 23:16:19', '114.124.2.201', 'Chrome'),
(870, '2017-04-11 23:16:52', '103.77.50.21', 'Chrome'),
(871, '2017-04-11 23:18:18', '114.125.215.48', 'Mozilla'),
(872, '2017-04-11 23:19:02', '202.62.17.10', 'Chrome'),
(873, '2017-04-11 23:20:03', '202.93.231.70', 'Firefox'),
(874, '2017-04-11 23:20:33', '103.47.134.15', 'Firefox'),
(875, '2017-04-11 23:22:24', '120.188.77.49', 'Firefox'),
(876, '2017-04-11 23:22:51', '120.188.3.239', 'Chrome'),
(877, '2017-04-11 23:24:00', '180.189.162.131', 'Chrome'),
(878, '2017-04-11 23:24:20', '36.83.36.137', 'Chrome'),
(879, '2017-04-11 23:26:02', '175.111.89.42', 'Chrome'),
(880, '2017-04-11 23:26:56', '213.171.207.70', 'Chrome'),
(881, '2017-04-11 23:27:42', '180.252.173.112', 'Chrome'),
(882, '2017-04-11 23:28:22', '115.178.234.185', 'Chrome'),
(883, '2017-04-11 23:28:28', '36.77.83.38', 'Chrome'),
(884, '2017-04-11 23:29:16', '103.248.248.86', 'Chrome'),
(885, '2017-04-11 23:29:32', '180.254.74.221', 'Chrome'),
(886, '2017-04-11 23:29:39', '36.78.55.37', 'Firefox'),
(887, '2017-04-11 23:29:48', '112.78.191.34', 'Chrome'),
(888, '2017-04-11 23:30:04', '120.188.81.161', 'Chrome'),
(889, '2017-04-11 23:30:08', '115.178.201.60', 'Chrome'),
(890, '2017-04-11 23:31:14', '36.72.202.102', 'Chrome'),
(891, '2017-04-11 23:31:58', '120.188.79.93', 'Chrome'),
(892, '2017-04-11 23:33:26', '36.80.202.16', 'Firefox'),
(893, '2017-04-11 23:35:32', '139.194.22.183', 'Chrome'),
(894, '2017-04-11 23:38:11', '120.188.87.248', 'Chrome'),
(895, '2017-04-11 23:38:30', '182.253.163.75', 'Chrome'),
(896, '2017-04-11 23:39:26', '103.213.128.19', 'Chrome'),
(897, '2017-04-11 23:40:11', '202.169.53.3', 'Firefox'),
(898, '2017-04-11 23:41:53', '202.67.40.1', 'Chrome'),
(899, '2017-04-11 23:43:22', '120.188.66.119', 'Chrome'),
(900, '2017-04-11 23:43:42', '36.74.115.169', 'Chrome'),
(901, '2017-04-11 23:46:07', '103.47.132.27', 'Chrome'),
(902, '2017-04-11 23:46:19', '180.241.75.46', 'Mozilla'),
(903, '2017-04-11 23:46:19', '36.84.228.213', 'Chrome'),
(904, '2017-04-11 23:46:44', '118.136.88.249', 'Chrome'),
(905, '2017-04-11 23:49:50', '120.188.83.242', 'Chrome'),
(906, '2017-04-11 23:49:52', '36.77.137.120', 'Chrome');
INSERT INTO `tbl_pengunjung` (`pengunjung_id`, `pengunjung_tanggal`, `pengunjung_ip`, `pengunjung_perangkat`) VALUES
(907, '2017-05-01 12:24:03', '::1', NULL),
(908, '2017-05-01 12:24:53', '::1', NULL),
(909, '2017-05-01 12:25:57', '::1', NULL),
(910, '2017-05-01 17:13:50', '::1', NULL),
(911, '2017-05-01 18:26:09', '::1', NULL),
(912, '2017-05-06 14:43:17', '::1', 'Firefox'),
(913, '2017-05-07 02:18:38', '::1', 'Firefox'),
(914, '2017-05-13 12:19:10', '::1', 'Firefox'),
(915, '2017-05-13 17:08:02', '::1', 'Firefox'),
(916, '2017-05-16 12:30:09', '::1', 'Firefox'),
(917, '2017-05-17 07:46:05', '::1', 'Firefox'),
(918, '2017-05-23 05:01:55', '::1', 'Firefox'),
(919, '2017-06-01 15:37:00', '::1', 'Firefox'),
(920, '2017-06-21 00:48:57', '::1', 'Firefox'),
(921, '2017-06-21 22:58:34', '::1', 'Firefox'),
(922, '2017-06-23 23:00:36', '::1', 'Firefox'),
(923, '2017-06-26 22:25:17', '::1', 'Firefox'),
(924, '2017-07-01 01:10:04', '::1', 'Firefox'),
(925, '2018-11-01 03:33:05', '::1', 'Chrome'),
(926, '2018-11-27 13:47:23', '::1', 'Chrome'),
(927, '2018-11-27 14:06:06', '180.248.149.21', 'Chrome'),
(928, '2019-03-25 10:35:35', '180.250.196.155', 'Chrome'),
(929, '2019-03-25 15:46:19', '125.160.56.174', 'Chrome'),
(930, '2019-05-03 04:02:52', '180.250.196.155', 'Chrome'),
(931, '2019-08-02 00:06:41', '46.17.174.2', 'Other'),
(932, '2019-09-16 12:13:16', '180.246.148.187', 'Chrome'),
(933, '2019-09-16 12:14:42', '36.75.105.220', 'Chrome'),
(934, '2019-09-16 12:17:03', '202.67.32.6', 'Chrome'),
(935, '2019-09-16 12:17:42', '180.246.148.165', 'Chrome'),
(936, '2019-09-17 01:23:47', '::1', 'Chrome'),
(937, '2019-09-17 17:00:47', '::1', 'Chrome'),
(938, '2019-09-18 02:20:56', '127.0.0.1', 'Chrome'),
(939, '2019-09-18 17:42:13', '::1', 'Chrome');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_testimoni`
--

CREATE TABLE IF NOT EXISTS `tbl_testimoni` (
  `testimoni_id` int(11) NOT NULL AUTO_INCREMENT,
  `testimoni_nama` varchar(30) DEFAULT NULL,
  `testimoni_isi` varchar(120) DEFAULT NULL,
  `testimoni_email` varchar(35) DEFAULT NULL,
  `testimoni_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`testimoni_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_tulisan`
--

CREATE TABLE IF NOT EXISTS `tbl_tulisan` (
  `tulisan_id` int(11) NOT NULL AUTO_INCREMENT,
  `tulisan_judul` varchar(100) DEFAULT NULL,
  `tulisan_isi` text,
  `tulisan_tanggal` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `tulisan_kategori_id` int(11) DEFAULT NULL,
  `tulisan_kategori_nama` varchar(30) DEFAULT NULL,
  `tulisan_views` int(11) DEFAULT '0',
  `tulisan_gambar` varchar(40) DEFAULT NULL,
  `tulisan_pengguna_id` int(11) DEFAULT NULL,
  `tulisan_author` varchar(40) DEFAULT NULL,
  `tulisan_img_slider` int(2) NOT NULL DEFAULT '0',
  `tulisan_slug` varchar(300) NOT NULL,
  PRIMARY KEY (`tulisan_id`),
  KEY `tulisan_kategori_id` (`tulisan_kategori_id`),
  KEY `tulisan_pengguna_id` (`tulisan_pengguna_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

--
-- Dumping data untuk tabel `tbl_tulisan`
--

INSERT INTO `tbl_tulisan` (`tulisan_id`, `tulisan_judul`, `tulisan_isi`, `tulisan_tanggal`, `tulisan_kategori_id`, `tulisan_kategori_nama`, `tulisan_views`, `tulisan_gambar`, `tulisan_pengguna_id`, `tulisan_author`, `tulisan_img_slider`, `tulisan_slug`) VALUES
(25, ' PUTUSAN HEBAT oleh Johan Imanuel, S.H.', '<p>Sesuai Putusan Mahkamah Agung (MA) Nomor 22 P/HUM/2018 tanggal 31 Mei 2018 merupakan perkembangan progresif dalam Hukum di Indonesia bahwa Paralegal hanya memiliki fungsi membantu Advokat. Putusan MA tersebut merupakan salah satu Putusan hebat di Tahun 2018.&nbsp; Mengapa? Karena MA mampu memberikan kepastian hukum terhadap fungsi Paralegal di&nbsp; bagi perkembangan hukum di Indonesia. Dan Putusan ini telah menarik perhatian semua elemen masyarakat bukan hanya Advokat. Namun terlepas dari hal itu tidak dapat dipungkiri bahwa banyak pihak yang belum bisa menerima Putusan MA tersebut karena Putusan tersebut dianggap menghalangi akses bantuan hukum. Padahal jika dicermati, justru bukan menghalangi namun memberikan kepastian hukum. Bagaimanapun semua pihak harus menghormati Putusan MA, hal ini telah dinyatakan tegas&nbsp; sesuai Pasal 8 ayat (2) Perma 1/2011 bahwa :&quot;Dalam hal 90 (sembilan puluh) hari setelah putusan Mahkamah Agung tersebut dikirim kepada Badan atau Pejabat Tata Usaha Negara yang mengeluarkan Peraturan Perundang-undangan tersebut, ternyata Pejabat yang bersangkutan tidak melaksanakan kewajibannya, demi hukum Peraturan Perundang-undangan yang bersangkutan tidak mempunyai kekuatan hukum.&quot; Sehingga sifat Putusan MA berkaitan Paralegal itu otomatis berkekuatan hukum tetap meskipun Kementerian Hukum dan Hak Asasi Manusia sampai saat ini belum melakukan pencabutan atas dua hal yang dikabulkan yaitu Pasal 11 dan Pasal 12. Dengan dinyatakan bahwa Pasal 11 dan Pasal 12 Peraturan Menteri Hukum dan HAM Nomor 1/2018 (Permenkumham Paralegal) tidak memiliki kekuatan hukum maka Fungsi Paralegal menjadi lebih tegas kedudukannya di dalam pemberian bantuan hukum.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Dengan dicabutnya kedua Pasal dalam Permenkumham Paralegal tersebut maka diperlukan tindakan koreksi yang dapat mengakomodir Putusan MA yang telah lebih dari 90 hari sejak dikeluarkan.&nbsp;&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Fungsi Paralegal</strong></p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Dalam Putusan Uji Materiil ditegaskan bahwa Paralegal tidak melaksanakan fungsi advokat tetapi melaksanakan fungsi membantu Advokat. Sehingga kemampuan antara Paralegal dengan Advokat dinilai memang berbeda jauh dan tidak dapat disejajarkan. Paralegal patut berterima kasih kepada Advokat dan Mahkamah Agung yang telah menciptakan kepastian hukum atas Fungsi Paralegal sehingga tidak bertabrakan denagn fungsi profesi Advokat serta tetap mempertahankan kedudukan Paralegal dalam hukum di Indonesia. Putusan MA ini patut diapresiasi oleh semua kalangan karena telah mencapai tiga tujuan hukum yaitu keadilan (<em>gerechtigheit</em>), kemanfaatan (<em>zwechmaerten</em>), dan kepastian (<em>rechtssicherkeit.</em>) seperti yang dikemukakan oleh seorang ahli hukum bernama Gustav Radburch.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Apabila tidak dibatalkan fungsinya dalam memberikan bantuan hukum maka akan menjadi stigma atas kedudukan paralegal yang berdampak pada mundurnya supremasi hukum di Indonesia dan berpotensi membingungkan seluruh masyarakat atas fungsi Paralegal itu sendiri serta kualitasnya apakah seperti Advokat.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Tindakan Koreksi</strong></p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Tentunya harapan bagi Para Pemohon dan Advokat di Indonesia agar Pasal 11 dan Pasal 12 dalam Permenkumham RI Nomor 1 Tahun 2018 segera dilakukan pencabutan. &nbsp;Kemudian apabila akan dilakukan revisi terhadap Permenkumham RI No. 1 Tahun 2018 maka sebaiknya melibatkan pihak-pihak yang terkait agar isinya dapat disesuaikan dengan baik dan dapat diterapkan sebagaimana mestinya.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Mengenai bantuan hukum yang notabene diatur dalam UU No, 16 Tahun 2011 Tentang Bantuan Hukum tidak dapat berdiri sendiri tanpa ada peran Advokat yang sah sesuai UU No. 18 Tahun 2003. Sehingga mutlak dalam penyusunan materi pelatihan Paralegal harus dilakukan oleh Advokat sehingga Paralegal yang telah terlatih mengetahui perannya tidak dapat berdiri sendiri tanpa Advokat dalam hal litigasi dan non litigasi.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Alasan mengapa harus disusun oleh Advokat adalah agar menjadi bemper terhadap persyaratan Paralegal yang tidak diharuskan memiliki latar belakang pendidikan tinggi hukum dengan usia minimal delapan belas tahun (usia belia) dapat mempelajari dan memahami dasar-dasar hukum acara dengan baik.&nbsp; Disamping itu, disarankan Lembaga atau Organisasi Bantuan Hukum yang memiliki Paralegal ini memiliki kerjasama dengan Pusat Bantuan Hukum (PBH) dari Organisasi Advokat yang ada di Indonesia agar dapat bersinergi mengenai materi-materi pelatihan tentang Paralegal dan menanamkan kesadaran terhadap Paralegal bahwa Paralegal berfungsi sebagai Asisten Advokat.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Beberapa hal yang dapat direvisi dalam Permenkumham RI Nomor 1 Tahun 2018 menyesuaikan dengan Putusan Mahkamah Agung Nomor 22 P/ HUM/ 2018 yaitu,&nbsp;<strong>Pertama</strong>, Pasal 11 &ndash; 12, direvisi agar menyesuaikan tafsir Putusan Mahkamah Agung bahwa Paralegal sebagai fungsi membantu Advokat; Memang hanya Pasal 11 dan 12 yang dibatalkan oleh Mahkamah Agung namun Pasal 13 dan 14 juga diperlukan revisi sepanjang terkait fungsi Paralegal yang dicantumkan oleh Permenkumham dapat melaksanakan litigasi dan non litigasi.&nbsp;<strong>Kedua</strong>, mengenai eksistensi lembaga atau organisasi bantuan hukum dipastikan adalah benar-benar yang memiliki Advokat Pendamping yang sah sesuai UU Advokat sehingga pelayanan hukum yang diberikan sesuai dengan jalur hukum yang berlaku baik dari segi hukum acara dan/atau peraturan perundang-undangan yang berlaku di Indonesia. Ini kaitannya dengan Pasal 7 sampai dengan Pasal 10 &nbsp;penyusunan materi pelatihan paralegal yang menjadi ideal apabila bekerjasama dengan Pusat Bantuan Hukum (PBH) di Organisasi Advokat sehingga Paralegal mengetahui betul fungsinya membantu Advokat baik litigasi dan non litigasi dalam bantuan hukum</p>\r\n', '2018-11-01 14:41:10', 14, 'Artikel Hukum', 2, '4a326e5146c9cfb6c19150b5a384cffc.jpg', 1, 'Ade Chandra Saputra', 0, 'putusan-hebat-oleh-johan-imanuel'),
(26, ' PILKADA SERENTAK DAN PENGUATAN DEMOKRASI DALAM SISTEM KETATANEGARAAN INDONESIA ', '<p><strong>Oleh: Dr. Anthon Raharusun, S.H.,M.H. Ketua DPC PERADI Kota Jayapura</strong></p>\r\n\r\n<p><strong>PENDAHULUAN</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Dinamika ketatanegaraan di Indonesia semakin berkembang seiring dengan dinamika perubahan terhadap Undang-Undang Dasar Negara Republik Indonesia Tahun 1945 (UUD) 1945. Secara teoritis pengubahan dan perubahan suatu konstitusi dapat dilihat sebagai bagian dari sebuah proses penyempurnaan ketatanegaraan sebagai akibat dinamika perubahan sistem politik hukum dan demokratisasi. Upaya penyempurnaan atas kekurangan lahiriah yang terdapat dalam suatu konstitusi, menurut&nbsp;&nbsp; K.C. Wheare dapat dilakukan melalui&nbsp;<em>formal amandement, constitutional convension, ataupun judicial interpretation</em>. Seiring dengan hal tersebut, penyempurnaan dan pengubahan terhadap UUD 1945 baik perubahan pertama, kedua, ketiga dan keempat (bahkan kelima nanti) diharapkan mampu menciptakan dan mengawal transisi politik kekuasaan yang otoritarianisme menuju era demokrasi konstitusional sebagai upaya menciptakan pemerintahan yang demokratis baik pada level nasional (pemerintah pusat) mapun pada level sub nasional (pemerintah daerah).</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Pada era reformasi muncul gumpalan aspirasi dan gugatan kuat agar pemilu sebagai sarana paling nyata bagi pelaksanaan demokrasi harus diselenggarakan secara benar-benar langsung, umum, bebas, rahasia, jujur, dan adil. Pada pemilu tahun 1999 kita boleh bergembira karena berhasil menyelenggarakan secara ralatif&nbsp;<em>fair&nbsp;</em>dan bersih, terutama jika dibandingkan dengan pemilu era Orde Baru. Meskipun harus diakui pada tingkat Panitia Pemilihan Indonesia yang diisi dengan orang-orang parpol itu terjadi kekisruhan dalam penetapan hasil pemilu, tetapi akal sehat publik (<em>public commen sense</em>) menyatakan bahwa pemilu tahun 1999 adalah pemilu yang terbaik setelah pemilu yang pertama tahun 1955. Tetapi problem atau ancaman bagi penyelenggaraan pemilu yang membaik itu muncul lagi sejak pemilu legislatif tahun 2004, lalu menguat lagi pada pemilu tahun 2009, terutama terkait dengan isu politik uang (<em>money politic</em>) dan gejala menguatnya oligarki di kalangan partai politik. Problem yang tidak kondusif, bahkan mengacam demokrasi, ini bisa dilihat dari berbagai kasus yang dimuat secara telanjang di berbagai media massa dan menjadi kasus sengketa hasil pemilu dan pemilu kepala daerah di Mahkamah Konstitusi. Selain itu, permasalahan lain yang seringkali terjadi dalam Pemilu baik pemilu legislatif, pemilu presiden dan wakil presiden serta pemilu kepala daerah adalah terkait dengan daftar pemilih yang tidak akurat (daftar pemilih tetap), manipulasi dalam perhitungan suara dan rekapitulasi hasil perhitungan suara, netralisasi institusi penyelenggara, dan berbagai permasalahan lainnya terkait dengan pelaksanaan Pemilu.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Pemilihan Umum merupakan syarat minimal penyelenggaraan sistem demokrasi, di mana para pembuat keputusan kolektif tertinggi dalam sistem itu dipilih melalui mekanisme yang jujur, adil, dan berkala. Oleh karena itu, dalam perkembangan sejarah negara-negara modern, pemilu dianggap sebagai tonggak bagi tegaknya sistem demokrasi. Mengaitkan pemilu dengan demokrasi sebenarnya dapat dilihat dalam hubungan dan rumusan yang sederhana sehingga ada yang mengatakan bahwa pemilu merupakan salah satu bentuk dan cara yang paling nyata untuk melaksanakan demokrasi. Jika demokrasi diartikan sebagai pemerintahan dari, oleh dan untuk rakyat, maka cara rakyat untuk menentukan pemerintahan itu dilakukan melalui pemilu. Hal ini menjadi niscaya karena di zaman modern ini tidak ada lagi demokrasi langsung atau demokrasi yang dilakukan sendiri oleh seluruh rakyat seperti pada zaman polis-polis di Yunani kuno kira-kira 2.500 tahun yang lalu. Di dalam demokrasi modern, pemilu selalu dikaitkan dengan konsep demokrasi perwakilan atau demokrasi tidak langsung (<em>indect democracy</em>), yang berarti keikutsertaan rakyat di dalam pemerintahan dilakukan oleh wakil-wakil rakyat yang dipilih sendiri oleh rakyat secara langsung, bebas, sehingga hasil pemilu haruslah mencerminkan konfigurasi aliran-aliran dan aspirasi politik yang hidup di tengah-tengah rakyat. Konsep dan pemahaman yang seperti itu pulalah yang mendasari penyelenggaraan pemilu sepanjang sejarah Negara Kesatuan Republik Indonesia.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Terdapat beberapa alasan mengapa Pemilu menjadi penting bagi sebuah negara demokrasi.&nbsp;<em>Pertama,&nbsp;</em>melalui Pemilu dapat dibangun basis dan konsep demokrasi. Tanpa Pemilu, tanpa persaingan yang terbuka di antara kekuatan sosial dan kelompok politik, maka tidak ada demokrasi.&nbsp;<em>Kedua,&nbsp;</em>Pemilu melegitimasi sistem politik.&nbsp;<em>Ketiga,&nbsp;</em>mengabsahkan kepemimpinan politik.&nbsp;<em>Keempat</em>, pemilu sebagai unsur pokok partisipasi politik di negara-negara demokrasi. Oleh karena itu, dinamika penyelenggaraan pemilihan kepala daerah merupakan manifestasi dan perwujudan hak-hak politik dan demokrasi rakyat untuk menentukan jalannya pemerintahan dan ketatanegaraan sebagaimana diamanatkan dalam UUD 1945. Selain itu, pemilihan kepala daerah juga dimaksudkan untuk mengukur tingkat dukungan dan kepercayaan masyarakat terhadap seorang pemimpin.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Terkait dengan beberapa alasan tersebut di atas, dalam hubungannya dengan pemilu, terutama pemilihan kepala daerah (Pilkada), maka beberapa hal yang perlu diperhatikan berkaitan dengan pelaksanaan pemilihan kepala daerah langsung adalah:&nbsp;<em>Pertama;&nbsp;</em>pemilihan kepala daerah langsung memungkinkan terwujudnya penguatan demokrasi di tingkat lokal, khususnya pembangunan legitimasi politik. Ini didasarkan pada asumsi bahwa Kepala Daerah terpilih memiliki mandat dan legitimasi yang kuat,karena mendapat dukungan suara oleh rakyat secara langsung yang merefleksikan konfigurasi kekuatan politik dan kepentingan konstituen pemilih. Legitimasi ini merupakan hal yang sangat penting bagi pemerintahan yang akan berkuasa.&nbsp;<em>Kedua;&nbsp;</em>Pemilihan Kepala Daerah langsung diharapkan mampu membangun serta mewujudkan akuntabilitas lokal dan penguatan terhadap nilai-nilai demokrasi dalam sistem ketatanegaraan Indonesia.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Secara yuridis, dasar pelaksanaan Pemilihan Kepala Daerah dilakukan secara demokratis (langsung) dapat ditemukan dalam ketentuan Pasal 18 ayat (4) UUD 1945 yang menyatakan bahwa&nbsp;<strong>&rdquo;</strong>Gubernur, Bupati dan Walikota masing-masing sebagai Kepala Pemerintahan Daerah Provinsi, Kabupaten, dan Kota dipilih secara demokratis&rdquo;. Apabila kita mencermati amanat konstitusi tersebut, maka pemilihan kepala daerah tersebut tidak disebutkan secara tegas mengenai apakah pemilihan kepala daerah tersebut termasuk didalamnya pemilihan Wakil Gubernur, Wakil Bupati dan Wakil Walikota dipilih secara demokratis dalam satu pasangan calon Kepala Daerah dan Wakil Kepala Daerah. Namun demikian, setelah keluarnya Undang- Undang Nomor 32 Tahun 2004 tentang Pemerintahan Daerah kemudian ditafsirkan termasuk di dalamnya adalah gubernur, bupati, dan walikota memiliki pasangan seorang wakil yang juga dipilih sebagai satu pasangan calon. Hal mana telah ditegaskan dalam ketentuan Pasal 56 UU No 32 Tahun 2004 ditentukan bahwa kepala daerah dan wakil kepala daerah dipilih dalam satu pasangan calon yang dilaksanakan secara demokratis berdasarkan&nbsp; asas langsung,&nbsp; umum,&nbsp; bebas dan&nbsp; rahasia, jujur&nbsp; dan adil. Pasangan tersebut harus diajukan oleh partai politik atau gabungan partai politik seperti halnya dalam pemilihan presiden dan wakil presiden.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Pemilihan Kepala Daerah dan Wakil Kepala Daerah secara langsung (demokratis) dan pemilu serentak oleh rakyat merupakan suatu proses politik bangsa Indonesia menuju kehidupan politik yang lebih demokratis, transparan, akuntabel dan bertanggung jawab. Oleh karena itu, untuk menjamin pelaksanaan pemilihan Kepala Daerah dan Wakil Kepala Daerah serentak yang berkualitas dan memenuhi derajat kompetisi yang sehat, maka persyaratan dan tata cara pemilihan Kepala Daerah ditetapkan dalam peraturan perundang-undangan tersendiri. Secara umum dikatakan bahwa pemilihan kepala daerah secara langsung itu lebih demokratis. Setidaknya ada dua alasan mengapa gagasan pemilihan langsung dianggap perlu:&nbsp;<em>Pertama</em>; untuk membuka pintu bagi tampilnya kepala daerah yang sesuai dengan kehendak mayoritas rakyat &nbsp;sendiri.&nbsp;&nbsp; &nbsp;<em>Kedua</em>; &nbsp;untuk&nbsp; menjaga stabilitas pemerintahan agar&nbsp; tidak&nbsp; mudah dijatuhkan ditengah jalan. Praktik selama rezim Undang-Undang Nomor 22 Tahun 1999&nbsp; &nbsp;tentang&nbsp; &nbsp;Pemerintahan&nbsp; &nbsp;Daerah,&nbsp; &nbsp;menunjukkan,&nbsp; &nbsp;bahwa&nbsp; &nbsp;pemilihan&nbsp; &nbsp;melalui mekanisme DPRD seringkali berseberangan bahkan tidak sesuai dengan kehendak mayoritas rakyat di daerah.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Kekurangan dalam Undang-Undang Nomor 22 Tahun 1999 telah disadari oleh para wakil rakyat yang duduk di MRP-RI, sehingga melahirkan ketetapan MPR No. IV/MPR/2000 tentang Rekomendasi Kebijakan dalam Penyelenggaraan Otonomi Daerah. Bersamaan dengan itu, dalam Sidang Tahunan MPR-RI Tahun 2000 telah dilakukan perubahan kedua UUD 1945 yang antara lain telah mengubah Bab IV tentang Pemerintahan Daerah dengan Pasal 18, Pasal 18A dan Pasal 18B sehingga dikeluarkannya Ketetapan MPR No. IV/MPR/2000 tersebut sejalan dengan perubahan UUD 1945.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Salah satu butir rekomendasi menyebutkan: sejalan dengan semangat desentralisasi, demokrasi dan kesetaraan hubungan pusat dan daerah diperlukan upaya perintisan awal untuk melakukan revisi yang bersifat mendasar terhadap Undang- Undang Nomor 22 Tahun 1999 tentang Pemerintahan Daerah. Revisi dimaksud dilakukan sebagai upaya penyesuaian terhadap Pasal 18 UUD 1945 atas dasar amanat TAP MPR di atas, kebutuhan untuk melakukan revisi terhadap UU No. 22 Tahun 1999, tidak terelakkan, apalagi Pasal 18 UUD 1945 yang menjadi dasarnya, pasca perubahan kedua UUD 1945 telah disempurnakan dan ditambah menjadi&nbsp; semakin jelas dan terperinci. Disisi lain, pengaturan pemilihan kepala daerah berdasarkan Undang- Undang Nomor 32 tahun 2004 tentang Pemerintahan Daerah mengandung sejumlah kelemahan baik dari segi sistem maupun aturan teknisnya.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Dalam konteks pelaksanaan desentralisasi politik, saat ini Indonesia telah melaksanakan pemilihan kepala daerah (Pilkada) secara langsung yang dimulai sejak 1 Juni 2005 sebagai manifestasi dari upaya penguatan agenda demokratisasi di daerah.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Namun, implementasi &nbsp;kebijakan desentralisasi politik telah menimbulkan dinamika politik yang cukup tinggi dalam kurun waktu 2005-2014, di mana penyelenggaraan Pilkada membawa implikasi yang negatif di satu sisi, yakni membawa potensi tidak terselenggaranya pemerintahan daerah secara efektif dan efisien, sekaligus memicu terjadinya konflik-konflik horizontal.&nbsp; Oleh karena itu, berdasarkan latar belakang berbagai problematika yang ada serta pemahaman bahwa penyelenggaraan pemilihan kepala daerah sebagaimana diatur dalam UU tentang Pemerintahan Daerah sudah tidak sejalan dengan tuntutan demokrasi kekinian saat ini, maka pengaturan tentang Pemilihan Kepala Daerah perlu diatur dalam UU tersendiri. Terkait dengan pengaturan Pilkada dalam UU tersendiri ini, DPR-RI telah mengesahkan UU No. 8 Tahun 2015 tentang Perubahan Atas Undang-Undang Nomor 1 Tahun 2015 Tentang Penetapan Peraturan Pemerintah Pengganti Undang-Undang Nomor 1 Tahun 2014 Tentang Pemilihan Gubernur, Bupati, Dan Walikota Menjadi Undang-Undang). Undang- Undang ini antara lain diarahkan untuk memproyeksikan format Pilkada yang ideal kedepan, sekaligus meletakan Pilkada secara konsisten dalam konfigurasi ketatanegaraan Indonesia dengan menata kembali mekanisme Pemilihan Kepala Daerah secara serentak di Indonesia&nbsp; dengan berbagai dinamika sosial-politik dalam penyelenggaraannya. Oleh karena itu Pilkada serentak selain dimaksudkna untuk memperkuat demokrasi di aras lokal juga merupakan mekanisme untuk melahirkan pemerintahan daerah yang mampu menciptakan akuntabilitas dan efektifitas penyelenggaraan pemerintahan di daerah, kesetaraan hak warga negara dalam berpolikan serta bagi penguatan demokrasi nasional. Selain itu, salah tujuan dilaksanakannya Pilkada serentak baik pemilihan gubernur, bupati, walikota adalah agar terciptanya efektivitas dan efisiensi anggaran negara. Misalnya saja, pemilihan Gubernur yang berbarengan dengan pemilihan Bupati atau Walikota, pembiayaan atas petugas TPS hanya perlu dibayarkan satu kali termasuk biaya bimbingan teknis, biaya sosialisasi, dan biaya-biaya lain untuk&nbsp; pembiayaan satu kali pemilihan, termasuk proses rekapitulasi pemilihan gubernur, proses pemungutan dan perhitungan suara bupati, walikota. Dalam kaitannya dengan efisiensi anggaran ini, KPU juga melakukan pembatasan pengeluaran biaya kampanye. Pembatasan dilakukan dengan memperhitungkan metode kampanye, jumlah kegiatan, perkiraan jumlah peserta, standar biaya daerah, bahan kampanye yang diperlukan, cakupan wilayah dan kondisi geografis, logistik dan manajemen kampanye. Hal ini dilakukan KPU agar para calon kepala daerah diharapkan tidak terjebak dengan politik uang (<em>money politic</em>). Problem lainnya yang menjadi perhatian utama KPU dalam penyelenggaraan Pilkada serentak adalah terkait dengan sosialisasi. Sebab partisipasi pemilih Pilkada secara nasional telah diambang titik kritis, terutama di sejumlah kota besar di Indonesia seperti Medan, Surabaya dan Bandung. Terkait dengan sosialisasi ini menurut KPU, setidaknya ada tiga metode yang akan digunakan untuk aktivitas sosialisasi, yakni komunikasi massa seperti tatap muka, pertemuan terbatas, diskusi; iklan di media cetak, elektronik, media sosial dan sosialisasi melalui berbagai jejaring yang dimiliki KPU.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Berdasarkan uraian diatas, pertanyaan mendasar dalam penulisan ini berfokus pada:&nbsp; &nbsp;<em>Pertama:&nbsp;</em>Problem-problem apa sajakah yang seringkali terjadi dalam pelaksanaan pemilihan kepala daerah di Indonesia.&nbsp;<em>Kedua</em>: apakah Pilkada serentak dapat memperkuat demokrasi dalam sistem ketatanegaraan Indonesia ?. dan apakah Pilkada serentak juga merupakan momentum konsolidasi sistem demokras Pancasila?</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Oleh karena itu, sebelum Penulis menguraikan atau membahas lebih lanjut mengenai artikel ini, maka terlebih dahulu membahas beberapa teori yang relevan dengan topik pembahasan dalam penulisan ini, terutama mengenai bagaimana hubungan teoretik antara partai politik dalam sebuah negara demokrasi dengan proses demokrasi itu sendiri (baca: pemilu), termasuk bagaimana pembentukan peraturan perundang-undangan yang baik.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '2018-11-01 16:24:30', 14, 'Artikel Hukum', 4, '8447e31d112f66c6df4775500d75ed89.jpg', 1, 'Ade Chandra Saputra', 0, 'pilkada-serentak-dan-penguatan-demokrasi-dalam-sistem-ketatanegaraan-indonesia');
INSERT INTO `tbl_tulisan` (`tulisan_id`, `tulisan_judul`, `tulisan_isi`, `tulisan_tanggal`, `tulisan_kategori_id`, `tulisan_kategori_nama`, `tulisan_views`, `tulisan_gambar`, `tulisan_pengguna_id`, `tulisan_author`, `tulisan_img_slider`, `tulisan_slug`) VALUES
(27, 'Masukan RUU Jabatan Hakim INFALLIBILITAS BUKAN IMUNITAS TANGGUNGJAWAB HAKIM Oleh: Nikolas Simanjunta', '<h2><strong>Masukan RUU Jabatan Hakim</strong></h2>\r\n\r\n<h2><strong><em>INFALLIBILITAS</em></strong><strong>&nbsp;BUKAN IMUNITAS TANGGUNGJAWAB HAKIM</strong></h2>\r\n\r\n<p>Nikolas Simanjuntak [Email: nsplaw@gmail.com]</p>\r\n\r\n<p>DPN PERADI Bidang Kajian Hukum &amp; Perundang-undangan, Pengajar Hukum &amp; HAM</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>RUU Jabatan Hakim (draft 18 April 2016) merumuskan Jabatan Hakim sebagai&nbsp;<em>&ldquo;pelaksana kekuasaan kehakiman dalam memeriksa, mengadili, memutuskan dan menyelesaikan perkara&rdquo;</em>. Tujuan penyelenggaraan Jabatan Hakim untuk:&nbsp;<em>(a) mewujudkan kemandirian Hakim dalam melaksanakan fungsi dan tujuannya, (b) menjaga kehormatan dan keluhuran martabat Hakim, (c) meningkatkan integritas, profesionalitas, dan akuntabilitas Hakim dalam menegakkan hukum dan keadilan, (d) memberikan perlindungan Hakim dan (e) meningkatkan kesejahteraan Hakim</em>. Penilaian kinerja Hakim dilakukan terhadap&nbsp;<em>teknis peradilan dan administrasi peradilan.&nbsp;</em>Pengawasan Hakim meliputi&nbsp;<em>pengawasan terhadap teknis yudisial&nbsp;</em>(oleh Pengadilan tingkat atasan),&nbsp;<em>penilaian kinerja&nbsp;</em>(oleh Mahkamah Agung), dan&nbsp;<em>pengawasan terhadap perilaku Hakim&nbsp;</em>(oleh Komisi Yudisial).</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Titik kritis RUU</strong>&nbsp;Jabatan Hakim selama ini, dengan menyimak beberapa ketentuan dalam draft di atas itu, utamanya sangat krusial mengenai&nbsp;<strong>tanggung-jawab&nbsp;</strong>Hakim selaku&nbsp;<strong>profesional</strong>&nbsp;yang<strong>&nbsp;disumpah,&nbsp;</strong>juga tanggung-jawab selaku&nbsp;<strong>intelektual</strong>, dan selaku&nbsp;<strong>pejabat negara</strong>. Praktik&nbsp;<strong><em>infallibilitas</em></strong>&nbsp;Hakim (ketakmungkinan keliru) selama ini seringkali disalah-pahami seakan-itu akan jadi sama dengan&nbsp;<strong><em>imunitas</em></strong>&nbsp;juga (kekebalan hukum). Namun, draft&nbsp; RUU ini dan Naskah Akademiknya belum cukup tegas menjangkau fokus implikasi itu untuk dijadikan solusi dengan memberlakukan UU ini.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Kesalahpahaman membedakan&nbsp;<em>infallibilitas&nbsp;</em>dengan&nbsp;<em>imunitas</em>&nbsp;yang melekat pada jabatan hakim pengadilan, merupakan hulu yang bisa jadi berakibat keliru sampai dengan tahap eksekusi di posisi hilir.&nbsp;<strong><em>Imunitas</em></strong><em>&nbsp;(immunity)&nbsp;</em>hakim, yang juga dimiliki profesi Advokat dan beberapa profesi lainnya, dimaksudkan sebagai &ldquo;kekebalan untuk tidak boleh dihukum&rdquo; karena dia&nbsp;<em>immun&nbsp;</em>selama dalam melaksanakan profesinya.&nbsp;<strong><em>Infallibilitas&nbsp;</em></strong>adalah keadaan yang tidak-mungkin bersalah (<em>infallibility</em>) dalam melaksanakan jabatannya. Latar sejarah&nbsp;<em>infallibilitas</em>&nbsp;bisa ditelusuri ke suatu masa kekuasaan negara di Eropah pada abad ke-5 sampai ke-16, dimana&nbsp;<em>imunitas</em>dan&nbsp;<em>infallibilitas</em>, pernah diklaim sebagai milik penguasa negara dan para pejabat atas nama negara, karena kuasa negara menyatu dengan kuasa agama dengan bersandar pada ayat suci ini&nbsp;<em>&ldquo;Dabo claves tibi regni caelorum&rdquo;</em>. Namun era itu sudah berakhir lama sekali tetapi sisa-sisanya masih saja merasuk alam bawah sadar para penguasa dan pejabat peradilan.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Peradilan sesat</strong>&nbsp;(<em>miscarriage of justice</em>) adalah muara akhir dari keliru eksekusi sebagai akibat&nbsp;<em>infallibilitas</em>&nbsp;yang disalahpahami seakan itu jadi&nbsp;<em>imunitas</em>, yang dibiarkan begitu saja karena putusan sudah berkekuatan-hukum pasti (<em>inkracht van gewijsde verklaard</em>).&nbsp;<em>M</em><em>iscarriage</em>&nbsp;yang dikenal sebagai&nbsp;<strong><em>dwaling</em></strong>&nbsp;atau kekeliruan bisa timbul karena&nbsp;<strong><em>error in juris</em></strong>,&nbsp;<strong><em>error in facti,</em></strong>&nbsp;atau&nbsp;<strong><em>error in persona.</em></strong>&nbsp;Padahal, putusan&nbsp;<em>inkracht</em>&nbsp;yang terjadi karena&nbsp;<em>infallibilitas</em>&nbsp;itu justru jadi&nbsp;<strong>disfungsi adab hukum</strong>, bahkan telah&nbsp;<strong>mendegradasi peradaban kemanusiaan</strong>&nbsp;bangsa dan negara secara sangat serius. Terjadinya&nbsp;<em>infallibilitas</em>&nbsp;yang sudah sering ditemukan melalui berbagai riset, sekurang-kurangnya timbul karena 4 (empat) hal ini: (1) sesat sistem pikir, (2) sesat informasi, (3) dangkal (<em>banalitas</em>) pemahaman teks dan konteks kasus, serta (4)&nbsp;<strong>buta hati terhadap keyakinan</strong>&nbsp;nurani di hening bening lepas-bebas (<em>zero mind process</em>) tanpa konflik di relung lubuk hati terdalam yang berada di luar garis demarkasi kepentingan apa pun juga.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Konteks situasi di atas itulah yang menjadi penjelas terhadap banyak kasus&nbsp;<em>in concreto</em>&nbsp;yang banyak terjadi selama ini dan tanpa solusi konstitusional.&nbsp;<strong>Pengadilan</strong>&nbsp;untuk dan atas negara beradab dengan&nbsp;<strong>kemanusiaan yang adil demi Ketuhanan</strong>&nbsp;Yang Maha Esa (Pancasila) harus membuat koreksi yuridis terhadap kekeliruan itu menghindarkan&nbsp;<em>miscarriage of justice</em>&nbsp;(peradilan sesat) dari suatu negara modern. Mengapa? Karena secara ilmiah, etis, dan formal yuridis, setiap Hakim dituntut untuk&nbsp;<strong>mempertanggung-jawabkan kebenaran putusan hukum</strong>&nbsp;yang ditetapkannya kepada sekurang-kurangnya 6 (enam) pihak sekaligus kumulatif, yakni kepada: (1) para pejabat atasan dalam&nbsp;<strong>upaya hukum</strong>; (2) para pejabat administratif atasan selaku&nbsp;<strong>pejabat negara</strong>; (3)&nbsp;<strong>masyarakat ilmiah</strong>&nbsp;pada umumnya, (4) kalangan intelektual/<strong>ahli teoritis dan praktisi hukum</strong>; (5)&nbsp;<strong>negara</strong>&nbsp;dan bangsa yang berdasarkan Tuhan Yang Mahaesa; dan (6) Tuhan atau&nbsp;<strong>Allah S.W.T.</strong>&nbsp;berdasarkan sumpah profesi menurut keyakinan yang diimani&nbsp;<strong>suara hati</strong>manusiawinya.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>1. Menghindarkan Sirkus Hukum dan Sesat Logika</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Uraian penjelas terhadap konteks situasi di atas itu bisa ditelusuri dari Bab-bab berkaitan di dalam Buku yang kami tulis berjudul&nbsp;<em>&ldquo;Acara Pidana Indonesia dalam Sirkus Hukum&rdquo;</em>Penerbit Ghalia Indonesia, 2009, yang antara lain sebagaimana berikut ini. Juga pada Bab-bab yang relevan di dalam buku terbaru kami berjudul&nbsp;<em>&ldquo;Hak-hak Asasi Manusia dalam Soliloqui Pertarungan Peradaban&rdquo;</em>&nbsp;(dalam proses cetak, 2015). Rujukan lebih jauh bisa ditelusur ke berbagai referensi tertulis maupun hasil temuan riset yang ada di dalamnya.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Patut dicermati teliti bahwa sesungguhnya kerahasiaan putusan, adalah perlindungan hukum kepada hakim dalam kebebasannya untuk memilih dan menentukan putusan. Namun, kerahasiaan itu sebagai bagian dari&nbsp;<em>immunitas</em>, yang berarti tidak mungkin boleh dihukum (kebal hukum). Tetapi itu bukanlah dengan sendirinya menjadi berarti sebagai&nbsp;<em>infallibilitas</em>, atau ketidak-mungkinan salah memutuskan. Setiap putusan hakim adalah atas nama dan demi Tuhan Yang Maha Esa. Dan itulah&nbsp;<em>irah-irah</em>&nbsp;putusan pengadilan yang sampai hari ini dikenal. Akar substansi paham itu bahwa&nbsp;<strong>hakim pemegang kuasa akhir atas nasib manusia&nbsp;</strong>di muka bumi ini. Konsekuensi logisnya memang, karena itu hakim tidak boleh dihukum (<em>immunitas</em>) karena untuk itu dia tidak mungkin bersalah (<em>infallible</em>). Tetapi benarkah paham seperti itu hingga sekarang ini (<em>hic et nunc</em>) dalam konteks antropo-sosiologis Indonesia pasca-modern?&nbsp; Ketika di Eropah sendiri pun, kuasa negara tidak lagi menyatu dengan wewenang surgawi?</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Dalam sistem peradilan di Indonesia, sudah sejak lama hingga kini, dianut satu paham yang masih berlaku dan diresmikan ke dalam ketentuan Surat Edaran Mahkamah Agung(SEMA)RI No.9 Thn 1976 tentang&nbsp;<em>Hakim Tidak Dapat Digugat dan Tidak Dapat Dipersalahkan</em>. Pada intinya, bahkan pun bilamana hakim salah dalam menerapkan sistem peradilan, dia tetap tidak boleh diperiksa dan diadili karena kasus itu. Maksudnya jelas, demi melindungi immunitas hakim dalam sistem peradilan seperti paham di atas itu. Persoalan di dalamnya, bagaimana apabila nyata sungguh ada hakim yang salah dalam melakukan sistem peradilan? Apakah konteks&nbsp;<em>imunitas hakim&nbsp;</em>di Indonesia dengan itu masih dalam korelasi moral filosofis dengan konteks negara agama yang sudah kuno?</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>Imunitas</em>&nbsp;hakim adalah untuk&nbsp;<em>mencegah</em>&nbsp;penyelenggara pemerintahan agar tidak bertindak menindas dan semena-mena. Sebab, tugas, dan tanggung-jawab, berdasarkan wewenang dan kewajiban yang diemban setiap badan maupun pejabat penyelenggara pemerintahan negara adalah persis sama saja dengan&nbsp;<em>esensi keadilan</em>&nbsp;yang hendak ditegakkan oleh kekuasaan Kehakiman, yakni&nbsp;<em>tujuan negara</em>&nbsp;sebagaimana di dalam Pembukaan UUD 1945 itu.&nbsp;<em>Imunitas</em>&nbsp;hakim bertujuan&nbsp;<em>menilai keabsahan</em>&nbsp;hukum setiap tindakan dan keputusan pemerintahan, atau suatu peraturan perundang-undangan, agar sistem hukum dapat dijalankan dan ditegakkan dengan baik. Karena itu berarti, imunitas Hakim bertujuan secara esensial untuk mengadili setiap perkara, apakah setiap ketentuan hukum positif maupun penggunaan wewenang kebebasan&nbsp;<em>diskresioner</em>&nbsp;badan atau pejabat dipergunakan untuk menerapkan keadilan.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Dari konteks di atas itu kiranya dapat dipahami bahwa setiap putusan hakim pengadilan, baik yang berlaku&nbsp;<strong><em>inter partes</em></strong>(hanya bagi para pihak yang berperkara) maupun dan terutama yang&nbsp;<strong><em>erga omnes&nbsp;</em></strong>(berlaku umum di luar pihak yang berperkara) adalah sebagai karya kecerdasan yang seyogianya harus tetap terbuka untuk uji kualitas. Oleh sebab itu, SEMA Thn 1976&nbsp;<strong>bukanlah</strong>&nbsp;berarti sekaligus sebagai&nbsp;<strong><em>infallibilitas</em></strong><strong><em>.</em></strong>&nbsp;Sebab masih mungkin diajukan uji kualitas terhadap hakim, walaupun tidak bermaksud untuk menghukumnya dalam proses peradilan hakim. Karena &nbsp;itu, fungsi dan peran&nbsp;<strong>Komisi Yudisial</strong>&nbsp;(KY) menurut UUD RI Thn 1945 Pasal 24B dan UU Kehakiman (UU No. 4 Thn 2004) Pasal 34 ayat (3) bisa dipahami juga dalam rangka menjaga dan menguji kualitas hakim itu sendiri untuk mempertanggung-jawabkan putusannya sebagai karya&nbsp;<em>intelektual</em>, praktik moral&nbsp;<em>etika</em>&nbsp;profesi, dan selaku&nbsp;<strong>pejabat negara</strong>&nbsp;yang menyelenggarakan konstitusi, sebagaimana akan lebih jelas selanjutnya mengenai tanggung-jawab kebenaran putusan hakim.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Salah satu yang sudah disinggung sebagai&nbsp;<strong>rumus ilmu logika&nbsp;</strong>adalah dalil&nbsp;<strong><em>t</em></strong><strong><em>antum valet auctoritas, quantum valet argumentatio</em></strong><em>.&nbsp;</em>Dalil ini sangat kontekstual dan aktual untuk menguji kualitas putusan dengan berpatokan pada kepercayaan (<em>trust</em>) dan kepastian wibawa (<em>credential</em>) argumentasi yang mengandalkan alur-logika, tidak sekadar posisi jabatan berdekorasi otoritas. Kebenaran yang hanya bersandar pada jabatan semata disebut sebagai&nbsp;<strong>kebenaran otoritatif dekoratif</strong>, akan jauh dari nilai kepercayaan dan wibawa yang berkharisma. Relevansi konteks dalil itu dalam penentuan putusan adalah bahwa kebenaran hukum yang ditetapkan, bukanlah tergantung kepada Hakim yang mengatakannya dikarenakan dia menjabat Hakim. Tetapi karena&nbsp;<strong>kerangka logika argumentasi</strong>&nbsp;yang disusun untuk menetapkan kebenaran hukum itu, memang bisa dipercaya dan dipertanggung-jawabkan secara terukur karena valid, otentik, dan akurat.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Sistem logika berfikir yang nyata salah secara metodologis sehingga kebenaran yang dihasilkannya juga salah dan mengelirukan, harus ditolak sama sekali. Jika pun orang yang menetapkan kebenaran itu adalah pejabat yang sah berwenang (otoritatif) haruslah ditolak mentah-mentah. Sebab itu,&nbsp;<strong>kebenaran otoritatif dekoratif</strong>&nbsp;tidak selalu menjadi&nbsp;<strong>kebenaran hukum</strong>&nbsp;yang benar-benar otentik dan valid, sebab nyata tidak akurat. Masih ada jarak yang terbentang antara kebenaran otoritatif dengan kebenaran otentik.&nbsp;&nbsp;<strong>Ideal</strong>&nbsp;memang, kebenaran&nbsp;<strong>otoritatif</strong>&nbsp;putusan Hakim haruslah&nbsp;<strong>identik</strong>&nbsp;menjadi kebenaran yang&nbsp;<strong>otentik</strong>, valid, dan akurat. Itulah sebabnya, untuk memutuskan kebenaran putusan hakim diperlukan kontestasi perlawanan ekstrim di sepanjang acara pengadilan.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Susunan kerangka logika kebenaran putusan itu haruslah dipertanggung-jawabkan oleh Hakim, bukan hanya dalam arti tanggung-jawab wewenang jabatan kenegaraan saja. Esensi tanggung-jawab itu juga meliputi pertanggung-jawaban teoritis ilmiah selaku ahli dan praktisi, yang mengemban fungsi&nbsp;<strong>profesi pemutus penegakan hukum berkepastian.</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Beban tanggung-jawab itu juga meliputi Etika Profesi, yang mengandung esensi mendalam (<em>duc in altum</em>) secara&nbsp;<em>transenden</em>dan&nbsp;<em>immanen</em>. Tindakan profesional untuk memutuskan kebenaran hukum menuntut standar yang terukur dalam&nbsp;<strong><em>best practices and best efforts.&nbsp;</em></strong>Tindakan itu juga berarti sebagai kewajiban manusia profesional selaku mahluk individual dan sosial dalam etika praktis, untuk mempertanggung-jawabkan tuntutan suara hatinya kepada Yang Ilahi. Lagi pula tuntutan itu semakin dipertegas lagi dengan formalitas putusan berkepala, irah-irah,&nbsp;<em>Demi Keadilan Berdasarkan Ketuhanan Yang Mahaesa</em>.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Oleh sebab itu secara ilmiah, etis, dan formal yuridis, maka setiap Hakim dituntut untuk&nbsp;<strong>mempertanggung-jawabkan kebenaran putusan hukum</strong>&nbsp;yang ditetapkannya kepada sekurang-kurangnya 6 (enam) pihak sekaligus kumulatif, yakni kepada: (1) para pejabat atasan dalam&nbsp;<strong>upaya hukum</strong>; (2) para pejabat administratif atasan selaku&nbsp;<strong>pejabat negara</strong>; (3)&nbsp;<strong>masyarakat ilmiah</strong>&nbsp;pada umumnya, (4) kalangan intelektual/<strong>ahli teoritis dan praktisi hukum</strong>; (5)&nbsp;<strong>negara</strong>&nbsp;dan bangsa yang berdasarkan Tuhan Yang Mahaesa; dan (6) Tuhan atau&nbsp;<strong>Allah S.W.T.</strong>&nbsp;menurut keyakinan yang diimani&nbsp;<strong>suara hati</strong>manusiawinya.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Betapa penting, luhur, dan mulianya pertanggung-jawaban kualitas tak-terbantahkan atas kebenaran putusan Hakim, karena secara ekstrim akibat putusan itu akan&nbsp;<strong>mengubah nasib orang</strong>&nbsp;dengan mengakhiri kebebasan orang yang dipenjara. Meniadakan hak orang yang disita harta-bendanya. Bahkan pun bisa juga mencabut nyawa seorang yang dihukum mati. Putusan hakim yang berkekuatan tetap (<em>inkracht</em>) menjadi puncak akhir peradaban bangsa negara dari seluruh rangkaian norma etika individual dan sosial.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Makna keyakinan hatinurani sungguh perlu dipahami, agar lagi-lagi tidak terjadi&nbsp;<em>salah kaprah</em>. Dan lebih lagi, agar di dalam praktiknya jangan sampai ada yang mempermain-mainkan keyakinan hatinurani, seakan-akan itu hanya produk imajinasi dari hasil pikiran spekulatif, yang bersandarkan&nbsp;<strong>motivasi naluri primitif inderawi&nbsp;</strong>untuk menentukan putusan sebagai&nbsp;<strong>rekayasa kebenaran.</strong>&nbsp;Kecerdikan mengelabui orang lain dengan alasan sesuai keyakinan nurani, padahal untuk meperoleh keuntungan inderawi adalah bagian dari&nbsp;<strong>permainan sirkus</strong>&nbsp;terhadap pemahaman yang keliru&nbsp; terhadap hatinurani. Kecerdikan bermain sirkus itu bisa dikemas lagi untuk mengelirukan orang lain, yang tidak paham liku-liku teknis yuridis sistem pembuktian sebagaimana uraian teoritis di atas.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Tanpa sadar, jika kecerdikan itu digunakan dengan motivasi naluri primitif inderawi, justru perbuatan itu sungguh&nbsp;<strong>melawan hatinurani</strong>. Itu bahkan secara normatif menjadi kejahatan representasi profesi yang sungguh benar canggih sebagai&nbsp;<em>fraudulent misrepresentation</em>. Yakni penipuan yang dirangkai dengan kecanggihan teknis ilmiah sehingga orang yang tidak ahli menjadi tidak sadar lagi, bahwa di dalamnya ada penipuan dan pengelabuan, kecuali itu hanya dapat ditelusuri oleh orang yang sama canggih keahliannya dengan si penipu yang bermain&nbsp;<strong>sirkus intelektual</strong>&nbsp;tersebut.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Naluri primitif</strong>&nbsp;sebagai ancaman bahaya yang harus dihindarkan, telah beberapa kali disebutkan pada bagian-bagian terdahulu buku ini. Naluri primitif itu senantiasa berbentuk rangsangan&nbsp;<strong>kepentingan ego</strong>&nbsp;manusia untuk menang sendiri. Apalagi jika itu diperoleh dengan menggunakan wewenang jabatan, sehingga hasilnya menjadi kebenaran otoritatif semata tanpa argumentasi yang berkualitas. Kepentingan sendiri itu bisa jadi juga untuk kepentingan uang, jabatan, pertemanan, kuasa, dan bentuk-bentuk kemudahan lainnya tanpa kerja-keras manusiawi yang beradab.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Keyakinan hatinurani yang lepas bebas di luar garis demarkasi segala kepentingan, hanya bisa muncul dari suasana hening bening, hanya mungkin&nbsp;<strong>ternoda</strong>&nbsp;jika dicampuri oleh rangsangan naluri primitif dengan nafsu, uang, dan kepentingan yang sejenisnya. Kecuali oleh naluri primitif itu, daya-dorong suara hati hanya mungkin menjadi macet atau&nbsp;<strong>buntu</strong>&nbsp;karena&nbsp;<strong>buta hati</strong>atau&nbsp;<strong>sesat pikir</strong>&nbsp;dan&nbsp;<strong>sesat hati,</strong>&nbsp;akibat sudah terbiasa membungkam suarahati dengan naluri primitif inderawi.&nbsp;&nbsp;<em>Sesat-pikir</em>dan&nbsp;<em>sesat-hati</em>&nbsp;bisa terjadi bagi seseorang yang tak-pernah melatih nalar dan akal-budi dengan olah-pikir bolak-balik berolah-nurani. Bagaikan tangan dan otot kaki tak-bisa&nbsp;<em>lentur</em>&nbsp;bergerak-jalan, karena organ-organ jaringan otot tubuh tak-pernah dilatih berolah-raga fisik.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Bagaimana menelusuri jika ada manipulasi karena kepentingan? Setiap adanya manipulasi keyakinan atau pengaruh rangsangan benturan kepentingan, maka akan tampak di dalam pertimbangan yang&nbsp;<strong>tidak</strong>&nbsp;<strong><em>best efforts and best practices</em></strong>menurut rumus metodologi praksis dan teoritis.&nbsp; Dan, bilamana ada sesat-pikir dan sesat-hati, maka itu akan tampak dari pertimbangan yang&nbsp;<strong>macet logika</strong>&nbsp;dan&nbsp;<strong>buntu</strong>&nbsp;proses intelektual atau terjadi pendangkalan (<strong><em>banalitas</em></strong>) karena malas berfikir. Itulah yang menghasilkan&nbsp;<strong>kuasi kebenaran&nbsp;</strong>atau&nbsp;<strong>rekayasa kebenaran</strong>&nbsp;dalam bentuk yang disebut terdahulu, misalnya karena&nbsp;<em>latius hos</em>&nbsp;akibat tidak sempurna premis logika. Atau, melulu bersandar pada nalar kebenaran&nbsp;<strong>otoritatif dekorasi jabatan</strong>dengan mengorbankan argumentasi logika rasional. Atau, bisa juga di dalam pertimbangan itu terdapat campur-baur kronologis dengan kausalitas, dsb. Tanda-tanda lahir visual dari adanya manipulasi lumuran noda bercak yang tidak&nbsp;<em>best efforts and best practices</em>&nbsp;akan sangat mudah dikenali oleh sesama profesional, seperti seorang dokter ahli yang sedang memeriksa pasien.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>2. Menghindarkan Peradilan Sesat (<em>Miscarriage of Justice</em>)</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Contoh&nbsp;<em>bench-marking</em>&nbsp;dokter ahli di atas itu mungkin bisa relevan dengan konteks situasi terkini yang dilaporkan ICW kepada Komisi Yudisial Diketahui ada 56 orang Hakim bermasalah yang diminta agar segera diselidiki. Diantaranya diutarakan ada sebanyak 33 Hakim yang bermasalah dalam memutuskan kasus&nbsp;<em>illegal logging&nbsp;</em>selama tahun 2005-2008. Bagaimana itu bisa ditelusuri? Antara lain dengan meneliti pertimbangan yang tidak&nbsp;<em>best efforts and best practices</em>&nbsp;seperti diuraikan di atas itu. Putusannya nampak kental dengan keyakinan yang tidak bebas-lepas, akibat terkuak adanya benturan kepentingan akan nafsu naluri primitif, bisa-jadi demi uang atau nilai ekonomis lainnya atau pertemanan.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Temuan lain berikut ini bisa disimak&nbsp;<em>sharing</em>&nbsp;dari wawancara dengan&nbsp;<em>Prof. Zainal Asikin Kusumah Atmadja SH</em>. Ketika itu Prof. Asikin, selaku Ketua Majelis Hakim Agung MA, sedang ramai disanjung masyarakat dan diwaspadai oleh penguasa Orde Baru, karena keputusannya mengabulkan tuntutan ganti rugi kepada pemerintah dalam kasus Kedungombo. Katanya, &ldquo;saya berani mengatakan, hakim yang tidak baik 50%. Sekali lagi jangan suruh saya membuktikan&hellip; Ada hakim yang sebenarnya beritikad baik, tapi salah karena tidak tahu [NS:&nbsp;<em>sesat-pikir</em>]. Ada yang tahu tapi memang sengaja berbuat tidak baik&nbsp; meskipun dia tahu bahwa itu tidak benar [NS:&nbsp;<em>buta-hati</em>]. Hakim yang pengetahuan hukumnya kurang, salah-salah bisa merugikan pencari keadilan [NS:&nbsp;<em>banalitas</em>] &hellip; Ini kan repot. Ini kan wajib dia ketahui. Padahal hakim sekarang tantangannya begitu berat, banyak perkembangan-perkembangan baru yang seharusnya dia ikuti, di bidang lingkungan, soal aborsi, hukum ekonomi, dan lain-lainnya [NS: juga&nbsp;<em>teknologi telematika, gelombang elektromagnetik</em>]. Saya juga prihatin karena kesempatan belajar hakim ternyata juga tak cukup merata&hellip; Bagi hakim-hakim yang sudah ada pembinaan sangat penting. Seharusnya ada buku konduite hakim yang obyektif, tidak berdasarkan&nbsp;<em>like and dislike</em>&hellip; Eksaminasi tidak jalan..&nbsp; &rdquo;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Catatan para praktisi dan ahli hukum Indonesia sudah semakin sering mengungkapkan kasus kegagalan penegakan keadilan (<em>miscarriage of justice</em>). Namun kasus-kasus seperti ini juga terjadi di Amerika Serikat, Inggris, Kanada, dan Australia. Aspek yang terkandung di dalamnya meliputi perspektif&nbsp;<strong>hukum</strong>,&nbsp;<strong>politik</strong>, dan&nbsp;<strong>sosial</strong>&nbsp;yang terkait dengan sistem&nbsp;<strong>peradilan</strong>&nbsp;pidana. Berbagai lembaga independen terus menyuarakan dan memperjuangkan keadilan bagi para korban&nbsp;<em>miscarriage of justice.&nbsp;</em>Diantaranya yang dirilis oleh&nbsp;<em>Forejustice</em>, hingga saat ini (2008) ada terdaftar&nbsp;<strong>2.539 korban&nbsp;<em>miscarriage of justice</em></strong>yang terjadi di dunia dan tersebar di&nbsp;<strong>70 negara</strong>. Apakah yang bisa digambarkan dari data itu?</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Korban sebanyak itu menunjukkan adanya 4 (empat) hal yang perlu disimak dengan seksama.&nbsp;<em>Pertama,&nbsp;</em>sebagian besar kasus&nbsp;<em>miscarriage of justice&nbsp;</em>terjadi di negara-negara maju yang memiliki sistem peradilan pidana yang mapan dan sangat peduli dengan persoalan penegakan hukum dan masalah hak-hak asasi manusia.&nbsp;<em>Kedua,&nbsp;</em>sistem peradilan pidana di negara-negara tersebut, ternyata menunjukkan pula kegagalan dalam menegakkan keadilan.&nbsp;<em>Ketiga,&nbsp;</em>kegagalan tersebut menunjukkan fakta bahwa&nbsp;<em>miscarriage of justice&nbsp;</em>merupakan masalah yang serius dan bersifat universal.&nbsp;<em>Keempat,&nbsp;</em>menguatnya kesadaran masyarakat internasional akan seriusnya masalah&nbsp;<em>miscarriage of justice.&nbsp;</em>Lalu, inspirasi apa yang bisa dipetik dari paparan itu untuk berusaha mencari solusi pengembangan dan perbaikan hukum acara?</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Dalam pidato pengukuhan Gurubesarnya, OC Kaligis, antara lain mengusulkan sistem peradilan pidana dengan pendekatan<strong>keadilan restoratif</strong>. Menurut data yang ada, sistem restoratif ini telah mulai diterapkan di Kanada pada akhir tahun 1970-an. Dalam program restoratif, pandangan bahwa konflik yang disebut kejahatan haruslah dilihat pertama-tama bukan semata-mata sebagai pelanggaran terhadap negara. Tetapi konflik yang merepresentasikan terputusnya dan&nbsp;<strong>terpecahnya</strong>&nbsp;<strong>relasi</strong>antara dua atau lebih orang dalam masyarakat. Karena itu, para korban, pelaku tindak pidana, dan komunitas, sejauh mungkin berpartisipasi dalam menangani kerusakan atau kerugian dari tindak pidana tersebut. Di dalam sistem itu, fungsi Polisi, Penuntut umum, Hakim, dan Advokat adalah melakukan peran yang spesifik bervariasi sesuai dengan program.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Salah satu tujuan dari pendekatan restoratif adalah untuk mencapai konsensus mengenai&nbsp;<strong>solusi</strong>&nbsp;yang paling baik untuk menyelesaikan&nbsp;<strong>konflik</strong>. Keadilan restoratif merupakan suatu cara baru dalam melihat peradilan pidana yang&nbsp;<strong>berpusat</strong>&nbsp;pada perbaikan kerusakan dan kerugian korban dan&nbsp;<strong>hubungan antar manusia,</strong>&nbsp;daripada sekadar menghukum pelaku tindak pidana. Negara yang dipresentasikan oleh institusi-institusi penegak hukum, tidak mengambil-alih penyelesaian konflik yang merupakan kejahatan. Karena suatu tindak pidana dalam keadilan restoratif tidak dipandang sebagai kejahatan terhadap negara, melainkan terhadap anggota masyarakat yang menjadi korban.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Dengan dan atas kerja-bersama semua pihak yang antara lain tersebut itu, akan semakin tidak ada lagi&nbsp;<em>miscarriage of justice.</em>&nbsp;Terjadinya&nbsp;<em>miscarriage</em>&nbsp;yang dikenal sebagai&nbsp;<strong><em>dwaling</em></strong>&nbsp;atau kekeliruan bisa timbul karena&nbsp;<strong><em>error in juris</em></strong>,&nbsp;<strong><em>error in facti,</em></strong>atau&nbsp;<strong><em>error in persona.</em></strong>&nbsp;Untuk menghindarkan semua&nbsp;<em>errors</em>&nbsp;itulah, maka hukum acara ke depan menjadi benar-benar sebagai instrumen pemberadaban (<em>civilisation</em>) untuk merasionalkan naluri primitif yang selama ini masih sering terjadi di hadapan mata masyarakat. Kiranya itu bukan hanya harapan semata. Tetapi terlebih lagi sebagai pengalaman yang menggairahkan dan menggerakkan, karena begitu menggetarkan,&nbsp;<strong><em>tremendum et fascinosum</em></strong>, untuk bersikap-tindak atas motivasi sadar dorongan suara hati dari dan oleh semua orang yang berkehendak baik untuk menghindarkan&nbsp;<em>error</em>.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><em>3. Judicial Dictatorship</em></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Berbagai studi telah mengungkapkan betapa sistem kelembagaan pengadilan pada saat ini kurang berfungsi dalam mencapai tujuannya untuk memberikan keadilan, halmana telah menjadi pembicaraan di hampir semua forum publik, akademis, politis, dan lingkungan legislasi. Diantara beberapa faktor yang terungkap yakni:&nbsp;<em>pertama</em>, terjadinya tumpukan perkara yang kronis (<em>cautio judicium solvi</em>) atau disebut juga sebagai kongesti pemeriksaan perkara yang terus-menerus tidak dapat diatasi, misalnya tahun 2005 diberitakan ada 20.000 tunggakan perkara di MA, karena pengadilan tidak mempunyai ruang dan kesempatan yang memadai untuk menggali dan menemukan &lsquo;nilai-nilai dan hukum yang hidup dan berkembang&rsquo; di masyarakat.&nbsp;<em>Kedua</em>, seringkali ada itikat buruk untuk mengulur-ulur waktu dengan upaya hukum sebagai akibat tingginya tingkat ketidak-puasan terhadap putusan pengadilan.&nbsp;<em>Ketiga</em>, produktivitas putusan pengadilan yang berkualitas sangat rendah, akibat berbagai kendala yang terus-menerus tidak bisa diatasi, sehingga tidak banyak putusan pengadilan yang dapat dikategorikan sebagai yurisprudensi tetap yang merupakan salah satu sumber hukum menurut doktrin hukum Indonesia.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Dengan ketentuan UU yang mengharuskan&nbsp;<strong>putusan pengadilan untuk menegakkan dan menemukan &lsquo;hukum&rsquo; dan &lsquo;keadilan&rsquo;</strong>secara formil dan materil, maka tugas hakim pengadilan mencakup sekurang-kurangnya 4 (empat) beban berat yakni (i) menemukan&nbsp;<strong>fakta</strong>&nbsp;di dalam peristiwa hukum; (ii) menentukan adanya&nbsp;<strong>kesalahan</strong>&nbsp;atau tidak; (iii) menyusun&nbsp;<strong>pertimbangan</strong>hukum (<em>ratio decidendi</em>) terhadap fakta dan kesalahan itu; serta (iv) memutuskan&nbsp;<strong>berat-ringannya hukuman</strong>&nbsp;atau membebaskan/melepaskan terdakwa. Setiap hakim dalam memeriksa dan mengadili perkara diwajibkan menemukan, menyusun, dan menanggung sendiri semua beban tugas itu tanpa bisa diintervensi oleh pihak manapun juga. Tambahan lagi, untuk pemeriksaan suatu perkara dengan menghadirkan saksi ahli ataupun dengan adanya keterangan ahli yang tertulis (doktrin), namun semua keterangan ahli itu tidak akan berdampak pada putusan karena yang secara normatif menjadi putusan adalah pendapat hakim sendiri.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Dengan kuasa hakim yang begitu besar untuk memutuskan, bahkan dengan adanya ketentuan hukum acara yang memberikan wewenang dalam&nbsp;<strong>stelsel aktif</strong>, sehingga hakim pengadilan pidana menjadi sangat berkuasa luar biasa secara&nbsp;<strong>absolut</strong>&nbsp;untuk memutuskan sendiri hukum dan keadilan di pengadilan. Konteks inilah yang disebut sebagai&nbsp;<em>judicial dictatorship</em>&nbsp;oleh Satjipto Rahardjo dan ada yang lain menyebutnya sebagai&nbsp;<strong><em>judicial tyrani</em></strong><em>.</em>&nbsp;Situasi ini berbeda dengan pendapat&nbsp;<em>jury</em>&nbsp;atau hakim&nbsp;<em>ad hoc</em>&nbsp;di negara lain yang menerapkan konsep&nbsp;<em>lay judges</em>&nbsp;seperti dalam sistem&nbsp;<em>common law</em>.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Penerapan konsep&nbsp;<em>lay participation&nbsp;</em>dengan lembaga&nbsp;<em>jury</em>&nbsp;dan&nbsp;<em>lay judges&nbsp;</em>seperti dapat diketahui dari tulisan John Dawson, mengacu pada konsep hukum adanya partisipasi anggota masyarakat (<em>lay participation of person</em>) di dalam pengadilan. Partisipasi orang awam (<em>lay persons</em>) dimaksudkan sebagai orang umum yang tidak pernah dididik secara khusus sebagai hakim bahkan bukan bagian dari suatu profesi, namun diterima sebagai orang baik yang dapat merefleksikan hatinuraninya sebagai&nbsp;<em>common sense</em>&nbsp;untuk menemukan dan menentukan keadilan di pengadilan pidana. Mereka ini duduk sebagai wasit atau anggota majelis hakim untuk mengadili suatu perkara di pengadilan, baik dalam bentuk kolaboratif kolegial maupun duduk dengan kewenangannya secara terpisah (<em>bench</em>) dari hakim karir. Pola&nbsp;<em>lay participation</em>&nbsp;dengan&nbsp;<em>jury</em>&nbsp;atau&nbsp;<em>lay judges&nbsp;</em>dalam sejarahnya telah digunakan oleh Cicero pada zaman Romawi kuno yang kemudian diadopsi dalam berbagai sistem hukum dewasa ini. Dan di Jepang pernah digunakan juga sistem jury tapi kemudian dihapuskan. Tetapi pada tahun 2006&nbsp;<em>lay judges</em>&nbsp;kembali digunakan dalam pengadilan pidana Jepang, yang mengikuti tradisi sistem hukum Jerman dalam sistem&nbsp;<em>civil law</em>. Dengan contoh itu menjadi terang bahwa konsep&nbsp;<em>jury</em>&nbsp;atau&nbsp;<em>lay judges</em>&nbsp;sebagai bentuk&nbsp;<em>lay participations</em>&nbsp;sudah digunakan baik dalam sistem&nbsp;<em>common law</em>&nbsp;(dalam konsep&nbsp;<em>adversary</em>) maupun dalam&nbsp;<em>civil law&nbsp;</em>(Jerman, Austria, Denmark, di Perancis dalam&nbsp;<em>Court d&rsquo;assises</em>). Namun dalam kenyataannya memang bentuk&nbsp;<em>jury</em>&nbsp;lebih banyak ditemukan dalam sistem hukum&nbsp;<em>common law</em>, yang di Inggris dengan&nbsp;<em>lay magistrates</em>.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Kelembagaan hukum yang ada untuk mewujudkan cita hukum dan kewajiban hakim dalam pengadilan pidana saat ini masih terbatas pada konsep kemandirian kekuasaan kehakiman. Konsep ini masih belum memadai, walaupun keberadaannya sudah dinyatakan sejak dalam konstitusi dan diteruskan lagi dalam berbagai UU di bidang kekuasaan kehakiman termasuk dalam hukum acara pidana. Praktiknya dalam pengadilan pidana hanya dapat diharapkan melalui doktrin&nbsp;<strong>hakim</strong>&nbsp;yang&nbsp;<strong>berintegritas</strong>,&nbsp;<strong>profesionalitas</strong>&nbsp;hakim dan kelembagaan&nbsp;<strong>alat-alat bukti</strong>. Adanya hakim&nbsp;<em>ad hoc</em>&nbsp;di pengadilan khusus menjadi harapan tambahan atas kemandirian itu.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Namun tidak cukup hanya dengan konsep kemandirian itu saja untuk mencapai teori&nbsp;<em>&ldquo;fair equality of opportunity and pure procedural justice&rdquo;&nbsp;</em>karena dengan itu hanya akan sampai pada tataran formal, konseptual dan doktrinal saja, yang belum masuk ke dalam penjabaran&nbsp;<strong>mekanisme</strong>&nbsp;dan&nbsp;<strong>operasional</strong>&nbsp;semua kaidah itu di pengadilan. Konsep untuk itu harus meliputi pula&nbsp;<em>basic structure</em>&nbsp;dalam arti bahwa kemandirian kekuasaan kehakiman termasuk semua kelembagaan hukumnya tersedia secara operasional untuk diimplementasikan. Itu artinya&nbsp;<em>basic structure</em>&nbsp;harus menjadi&nbsp;<strong><em>public rules</em></strong>&nbsp;sebagai&nbsp;<strong><em>a just political constitution</em></strong>&nbsp;dan&nbsp;<strong><em>a just system of institution</em></strong>&nbsp;sehingga&nbsp;<strong><em>justice as fairness&nbsp;</em></strong>secara teoritis dapat dicapai. Tanpa mekanisme dan operasionalisasi itu maka&nbsp;<strong>gradasi keadilan</strong>&nbsp;yang dicapai hanya&nbsp;<strong>formal</strong>&nbsp;dan&nbsp;<strong>prosedural</strong>&nbsp;saja.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Bagaimana situasi peradilan di masa reformasi setelah amandemen konstitusi menjadi UUD NRI Thn 1945? Berikut ini disarikan petikan dari tulisan Prof.Dr. Achmad Ali, SH, MH., mengenai&nbsp;<em>Teori Hukum dan Teori Peradilan</em>. Akibat banyak orang salah mengartikan &lsquo;reformasi hukum&rsquo; sehingga menimbulkan &lsquo;penyakit hukum&rsquo; yang menyebabkan hukum di Indonesia tidak pernah bisa menunaikan fungsinya secara optimal. Ketika seseorang ingin memahami &lsquo;hakikat hukum&rsquo; berarti yang dimaksudkan termasuk tiga komponen hukum yang terdiri dari&nbsp;<strong>struktur</strong>,&nbsp;<strong>substansi</strong>, dan&nbsp;<strong>kultur hukum</strong>&nbsp;yang ketiganya terkait dengan fungsi hukum dan tujuan hukum. Sependapat dengan Prof. Satjipto Rahardjo tentang konsep penanggulangan kejahatan berkaitan erat dengan&nbsp;<strong>kepercayaan</strong>&nbsp;terhadap sistem hukum modern, Achmad Ali menyatakan&nbsp;<strong>bahwa &lsquo;formalisme hukum&rsquo; termasuk penyakit hukum yang ada saat ini.</strong>&nbsp;Resiko tertinggi dari kepercayaan adalah mematikan unsur keterlibatan, kepekaan, emosi, dan komitmen. Padahal, kepekaan dan keterlibatan menjadi sangat penting dalam keadaan tertentu.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Serupa dengan yang pernah dikemukakan oleh Satjipto Rahardjo dalam artikel&nbsp;<em>Between Two Worlds: Modern State and Traditional Society&nbsp;</em>salah satu&nbsp;<strong>penyebab keterpurukan praktik hukum di Indonesia</strong>&nbsp;bisa diperhatikan pada paradigma hukum dan hukum formal Barat. Ketika seseorang belajar ilmu hukum dengan hanya menggunakan&nbsp;<strong>pendekatan normatif atau yurisprudensi,</strong>&nbsp;berarti orang tersebut hanya mempelajari &ldquo;ilmu tentang penyakit-penyakit&nbsp; yang harus dihadapi oleh hukum dalam melaksanakan fungsinya secara optimal&rdquo; yang di dalamnya mencakup keseluruhan &ldquo;perbuatan hukum, dan perbuatan melawan hukum&rdquo;.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Menurut Prof. Achmad Ali, yang dimaksud dengan&nbsp;<strong>&ldquo;penyakit hukum&rdquo;</strong>&nbsp;adalah penyakit yang diderita oleh hukum itu sendiri yang menyebabkan hukum&nbsp;<strong>tidak dapat melaksanakan fungsinya secara optimal.&nbsp;</strong>Penyakit itu bisa menimpa strukturnya, fungsinya, atau dapat menyerang kultur hukumnya. Ketiga komponen itu, yang diperkenalkan oleh&nbsp;<em>Lawrence M. Friedman</em>pada tahun 1970-an, bisa menjadi&nbsp;<strong>indikator keberhasilan</strong>&nbsp;hukum dan juga&nbsp;<strong>kegagalan</strong>&nbsp;hukum. Prof. Achmad Ali memasukkan dua komponen lain ke dalamnya, yakni:&nbsp;<strong>profesionalisme</strong>&nbsp;dan&nbsp;<strong>kepemimpinan</strong>. Menurut hemat saya (NS) di dalam kepemimpinan sudah seharusnya mengandung profesionalisme, baik disadari atau tidak sebagai kriteria penentu. Nilai kepemimpinan tanpa profesionalisme akan direduksi menjadi sekadar jabatan di dalam struktur. Atau bahkan kepemimpinan menjadi sekadar&nbsp;<em>atribut</em>&nbsp;jika tidak dihayati sebagai profesi yang merupakan aktualisasi diri terhadap keterpanggilan suarahati dengan tanggung-jawab etika individual dan sosial.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>4. Koreksi Pengadilan terhadap Keliru Eksekusi</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Kasus&nbsp;&nbsp;<em>in concreto&nbsp;</em>&ldquo;keliru eksekusi terhadap putusan pengadilan&rdquo; yang disebut pada bagian awal uraian ini, bisa dijelaskan dalam konteks di hulu sebagai kesalahpahaman antara&nbsp;<em>infallibilitas</em>&nbsp;dengan&nbsp;<em>imunitas</em>, yang kemudian di hilir menjadi keliru eksekusi dan mengancam peradaban negara yang ber-Ketuhanan Maha Esa, bilamana sampai terjadi peradilan sesat (<em>miscarriage of justice</em>) atau oleh Prof.Achmad Ali disebutnya sebagai &ldquo;<strong>penyakit hukum</strong>yang menyebabkan hukum tidak dapat melaksanakan fungsinya secara optimal.&rdquo; Maka, teranglah koreksi Pengadilan harus dilakukan dalam kerangka tanggungjawab peradaban bangsa dan negara yang bisa dijelaskan secara ilmiah, etis moral, dan yuridis formal terhadap banyak contoh kasus&nbsp;<em>in concreto.</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>UU Kekuasaan Kehakiman yang menyelenggarakan pengadilan untuk dan atas nama negara,&nbsp;<strong>bertanggungjawab terhadap pelaksanaan HAM</strong>&nbsp;yang ditentukan dalam Pasal 28I (4)&nbsp;<em>&ldquo;<strong>Perlindungan, pemajuan, penegakan, dan pemenuhan hak asasi manusia</strong>&nbsp;adalah&nbsp;<strong>tanggung jawab negara,</strong>&nbsp;terutama pemerintah&rdquo;.&nbsp;</em>Pasal 5 ayat (1) UU No. 48 Tahun 2009 tentang&nbsp;<strong>Kekuasaan Kehakiman&nbsp;</strong>menentukan bahwa<em>&ldquo;Hakim dan hakim konstitusi wajib menggali, mengikuti, dan memahami nilai-nilai hukum dan rasa keadilan yang hidup dalam masyarakat&rdquo;.&nbsp;</em>HAM itu sendiri selain imperatif menjadi rujukan hirarkis dari seluruh UU yang oleh karena itu dengan sendirinya juga merupakan &ldquo;nilai-nilai hukum dan rasa keadilan&rdquo; yang hidup dalam masyarakat sebagai&nbsp;<em>the living laws</em>.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Kepastian hukum</strong>&nbsp;dan keadilan&nbsp;<strong>di luar dan di dalam pengadilan</strong>&nbsp;adalah hak asasi konstitusional, menurut UUD NRI Thn 1945 Pasal 28D ayat (1)&nbsp;<em>Setiap orang berhak atas&nbsp;<strong>pengakuan, jaminan, perlindungan, dan kepastian hukum yang adil</strong>&nbsp;serta perlakuan yang sama di hadapan hukum.</em>&nbsp;Konstitusi itu juga dalam Pasal 28I (5) menentukan&nbsp;<em>Untuk menegakkan dan melindungi hak asasi manusia sesuai dengan prinsip negara hukum yang demokratis, maka&nbsp;<strong>pelaksanaan hak asasi manusia dijamin, diatur, dan dituangkan dalam peraturan perundang-undangan.</strong></em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Dengan itu, maka segala hukum dan peraturan perundang-undangan yang diberlakukan oleh dan atas nama negara termasuk oleh Pengadilan, haruslah dalam rangka&nbsp;<strong>&ldquo;pelaksanaan HAM konstitusional&rdquo;</strong>yang dalam konteks kasus&nbsp;<em>in concreto</em>, bagaimana HAM dilaksanakan tentang Kepastian Hukum dan Keadilan, di luar dan di dalam pengadilan? Eksekutor adalah&nbsp;<strong>pejabat administrasi yudisial&nbsp;</strong>penyelenggara fungsi pemerintahan di lingkungan yudikatif<strong>, tidak memiliki wewenang konstitutif&nbsp;</strong>untuk meniadakan hak kepemilikan seseorang; tetapi wajib melaksanakan administrasi pemerintahan negara berdasarkan asas-asas umum pemerintahan yang baik (<strong>AAUPB</strong>) sebagaimana dalam Pasal 4 (1) b. UU No. 30 Thn 2014 Administrasi Pemerintahan. AAUPB di dalam UU ini. UU HAM (No. 39 Thn 1999) Pasal 36 (2)&nbsp;<em>&ldquo;Tidak seorangpun boleh&nbsp;<strong>dirampas miliknya dengan sewenang-wenang</strong>&nbsp;dan secara melawan hukum.</em>&rdquo; Juga, Pasal 17&nbsp;<em>&ldquo;Setiap orang, tanpa diskriminasi, berhak untuk memperoleh keadilan dengan mengajukan permohonan, pengaduan, dan gugatan, baik dalam perkara pidana, perdata, maupun administrasi serta diadili melalui proses peradilan yang bebas dan tidak memihak, sesuai dengan hukum acara yang&nbsp;<strong>menjamin pemeriksaan yang objektif oleh hakim yang jujur dan adil untuk memperoleh putusan yang adil dan benar.</strong>&rdquo;</em>&nbsp;<strong>Eksekusi&nbsp;</strong>yang&nbsp;<strong>bukan dan tidak boleh sebagai peniadaan HAM konstitutif</strong>&nbsp;melainkan sebagai perbuatan administrasi penyelenggara fungsi pemerintahan selaku administrasi yudisial, harus dilaksanakan dengan&nbsp;<strong>kepastian hukum, kecermatan, dan pelayanan yang baik.</strong></p>\r\n', '2018-11-01 16:26:49', 14, 'Artikel Hukum', 0, '32ad9ba593203430c360c0e8c6b84b3b.jpg', 1, 'Ade Chandra Saputra', 0, 'masukan-ruu-jabatan-hakim-infallibilitas-bukan-imunitas-tanggungjawab-hakim-oleh:-nikolas-simanjuntak');
INSERT INTO `tbl_tulisan` (`tulisan_id`, `tulisan_judul`, `tulisan_isi`, `tulisan_tanggal`, `tulisan_kategori_id`, `tulisan_kategori_nama`, `tulisan_views`, `tulisan_gambar`, `tulisan_pengguna_id`, `tulisan_author`, `tulisan_img_slider`, `tulisan_slug`) VALUES
(28, ' Mempersiapkan Advokat Indonesia dalam Menghadapi MEA Oleh: Dr. Ricardo Simanjuntak, SH, LL.M,ANZIIF', '<p>Memahami globalisasi perekonomian sebagai suatu realitas hidup yang sudah pasti akan hadir,&nbsp; sebenarnya telah lama disuarakan oleh Prof. C.F.G Sunaryati Hartono(1). Ahli Hukum Perdata Internasional tersebut mengingatkan bahwa globalisasi perekonomian merupakan suatu keniscayaan yang tidak dapat lagi dipungkiri kehadirannya, sehingga yang paling tepat dilakukan bukanlah menghindarinya, melainkan&nbsp; mempersiapkan diri&nbsp; dengan sebaik mungkin untuk&nbsp; dapat menarik semaksimum mungkin manfaat dari setiap peluang yang diciptakan globalisasi tersebut. Termasuk juga untuk menangkal pengaruh-pengaruh negatif yang sangat berpotensi menggerus kemandirian suatu negara yang&nbsp; berdaulat.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Globalisasi perekonomian, seperti yang dijabarkan oleh Paul Hirst dan Grahame Thomson, telah meningkatkan interaksi yang berbasis nasional menjadi suatu kekuatan baru. Sistem ekonomi internasional menjadi otonom dan terlepas dari ikatan nasional. Pasar dan kegiatan produksi benar-benar menjadi bersifat global(2)dan lebih dikendalikan oleh kekuatan-kekuatan swasta, yaitu pelaku-pelaku bisnis transnasional (transnational companies - TNCs).</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Walaupun aktivitas perekonomian global&nbsp; lebih didominasi oleh kehadiran dan kekuatan swasta, tetapi tidak dapat dipungkiri bahwa keterlibatan negara-negara, baik dalam kapasitasnya sebagai suatu kesatuan berdaulat yang bersifat public (iure imperii) maupun sebagai suatu pribadi perdata (iure gestiones)(3), sangat penting. Bahkan, negara merupakan kunci&nbsp; dalam memberikan akses seluas-luasnya pada setiap aktivitas bisnis lintas negara (cross border business activities) sebagai unsur utama dari perwujudan globalisasi perekonomian. Keterlibatan negara tidak hanya akibat dari keanggotaannya pada organisasi internasional, seperti organisasi perdagangan dunia (World Trade Organisation/WTO), tetapi juga sebagai konsekuensi dari peran aktifnya dalam visi pengintegrasian&nbsp; kekuatan perekonomian kawasan (4). Misalnya, di kawasan Eropa dikenal European Union (EU), di Asia Pacific dikenal the Asia Pacific Economic Cooperation (APEC), di Amerika Latin dikenal the North America Free Trade Area (NAFTA). Lalu, kawasan Asia Tenggara mengenal the Association of South East Asian Nations (ASEAN) yang&nbsp; kini sedang&nbsp; bertransformasi menjadi the ASEAN Economic Community, dalam mewujudkan ASEAN single market and production base(5)yang ditargetkan mulai pada tanggal 31 Desember 2015 ini.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Kehadiran dan peran Indonesia dalam pusaran perekonomian global misalnya, telah nyata sejak diratifikasinya hasil kesepakatan Putaran Uruguay, GATT 1994 melalui UU No. 14 Tahun 1994. Konsekuensi ratifikasi ini, perkembangan hukum ekonomi Indonesia tidak bisa&nbsp; lagi dilepaskan dari&nbsp; kesepakatan internasional (collective commitments) yang dilahirkan oleh WTO sebagai salah satu lokomotif globalisasi perekonomian dunia tersebut.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Dalam konteks&nbsp; ASEAN, Indonesia tidak hanya merupakan salah satu pendiri ASEAN, tetapi sangat berperan dalam mewujudkan visi&nbsp; pentransformasian kawasan ASEAN menjadi salah satu kekuatan ekonomi&nbsp; dunia melalui pengintegrasian seluruh kekuatan pasar dan basis produksi dari 10 negara anggota ASEAN kedalam suatu wilayah ekonomi bersama yang disebut ASEAN Economic Community (&ldquo;MEA&rdquo;) (6)seperti yang telah&nbsp; disepakati dalam the ASEAN Vision 2020 (7)dan&nbsp; the ASEAN Charter yang tahapan-tahapan pencapaiannya telah dijabarkan dalam the Declaration on the ASEAN Economic Community Blue Print (The MEA Blue Print) (8),&nbsp; termasuk&nbsp; juga pendukung kuat terhadap ide&nbsp; percepatan realisasi dari MEA yang sebelumnya disepakati untuk diwujudkan pada tahun 2010, dipercepat menjadi tahun 2015.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Kedudukan Indonesia sebagai core member ASEAN (lebih dikenal dengan istilah ASEAN 5) serta peran aktif yang dilakukannya dalam mewujudkan MEA,&nbsp; membuat sangat sulit (atau bahkan hampir tidak mungkin lagi) bagi Indonesia untuk meminta penundaan-penundaan atau kemudahan-kemudahan terhadap konsekuensi-konsekuensi pelaksanaan integrasi perekonomian ASEAN(9), apalagi untuk&nbsp; mengambil sikap&nbsp; mundur dari komitmen MEA (10). Dan sikap dari Presiden Jokowi, dalam sambutannya pada pembukaan Musyawarah Nasional XV Himpunan Pengusaha Muda Indonesia di Bandung&nbsp; yang&nbsp; menegaskan bahwa Indonesia akan terus maju dalam pelaksanaan komitmen MEA pada akhir tahun 2015 (11), memberikan ketegasan bahwa tidak ada lagi alasan bagi Indonesia selain melihat MEA sebagai bagian yang tidak terpisahkan&nbsp; dari pembangunan masa depan kesejahteraan Indonesia.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>MEA dan Free Movement of Legal Services</p>\r\n\r\n<p>Free movement of Services merupakan salah satu dari 5 elemen utama dalam&nbsp; pencapaian visi pasar dan basis produksi tunggal ASEAN (ASEAN single market and production base) yang merupakan&nbsp; goal akhir dari visi ASEAN. Langkah dan target&nbsp; liberalisasi dari masing-masing elemen tersebut pada dasarnya telah disepakati dalam the MEA Blueprint. Meskipun target liberalisasi belum secara tegas menyebutkan langkah dan target liberalisasi pada pemberian jasa hukum atau internasionalisasi profesi advokat, tetapi salah satu langkah aksi sehubungan dengan free flows of services yang disepakati dalam the ASEAN&nbsp; Blueprint, yaitu &ldquo; to remove substantially all restrictions on trade in services for all other services sectors by 2015.&rdquo; menggambarkan bahwa free movement of services akan semakin tidak dapat dihindarkan untuk meliputi free movement of legal services and advocates profession, karena setiap langkah menuju&nbsp; the ASEAN single market and production base&nbsp; sangat berhubungan dengan kepastian dari pelaksanaan collective commitments (soft laws) dari kesepuluh negara anggota ASEAN.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Meningkatnya arus modal dan investasi asing, khususnya diantara&nbsp; pelaku-pelaku bisnis negara anggota ASEAN (inter-ASEAN trade and investments),&nbsp; secara logis akan diikuti peningkatan kebutuhan jasa advokat atau konsultan hukum. Profesi ini penting dalam&nbsp; memberikan arah dan nasehat-nasehat hukum, termasuk&nbsp; pendampingan yang dibutuhkan oleh para pelaku bisnis internasional untuk dapat beraktivitas bisnis dengan benar dan terlindungi di Indonesia. Demikian pula sebaliknya, ketika pelaku bisnis Indonesia memutuskan untuk mengembangkan akvitivas investasi dan produksi, misalnya ke Thailand atau ke negara ASEAN lainnya. Pelaku bisnis Indonesia akan membutuhkan jasa dari advokat atau konsultan hukum yang memahami ketentuan-ketentuan hukum Thailand. Para advokat itu memberikan arah dan nasehat-nasehat hukum&nbsp; atau pendampingan agar pengusaha Indonesia dapat berbisnis dengan benar dan terlindungi di Thailand.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Meningkatnya kebutuhan atas jasa advokat&nbsp; dalam wilayah MEA(12)telah&nbsp; mendorong ketertarikan dari para advokat atau kantor-kantor hukum, paling tidak dari masing-masing negara anggota ASEAN,&nbsp; untuk berkompetisi merebut pasar pelayanan jasa hukum&nbsp; dalam pasar dan basis produksi ASEAN yang telah terintegrasi dalam MEA. Dalam konteks Indonesia, hal tersebut tidak hanya membutuhkan kesiapan&nbsp; advokat Indonesia untuk berkompetisi dengan advokat asing dalam pasar pemberian jasa hukum di dalam wilayah Indonesia, tetapi juga kemampuan advokat Indonesia untuk berkompetisi dalam pasar pelayanan jasa hukum di wilayah ASEAN yang diyakini akan tumbuh sangat besar, walaupun penuh dengan kompetisi.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Dalam laporan yang dipublikasikan&nbsp; oleh Maastricht University,&nbsp; penelitian berjudul the Evaluation of the Legal Framework for the free Movement of Lawyers menggambarkan suatu kepastian terhadap peningkatan kebutuhan terhadap jasa pelayanan hukum atau profesi advokat sebagai konsekuensi dari pengintegrasian kekuatan perekonomian negara-negara, seperti antara lain dikutip di bawah ini:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&ldquo; In general, the needs for cross-border legal services have increased since the introduction of the lawyers&rsquo; directives due to e.g. globalization, integration of market, family migration, cross-border marriages, cross border trade and mobility, and the ease of cross-border provision of services at a distance by the use of ICT. Most individual citizents and small business prefer a lawyer that speaks their language.&rdquo;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Penelitian tersebut juga menggambarkan bahwa aktivitas pengembangan bisnis tidak terlepas dari peranan&nbsp; dan advis hukum dari advokat di negaranya yang cenderung tetap akan memegang peranan&nbsp; dalam&nbsp; menangani&nbsp; aspek hukum&nbsp; pengembangan bisnisnya di negara lain, baik secara langsung maupun melalui kerjasama dengan advokat lokal negara tempat aktivitas bisnis dilaksanakan. Sejalan dengan itu, kebutuhan akan pemberian pelayanan jasa hukum secara transnasional akibat dari integrasi pasar dan basis produksi ASEAN akan mendorong realisasi kebutuhan akan&nbsp; free movement of legal services and lawyers profession dalam wilayah MEA.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>-------------</p>\r\n\r\n<p>*) Ricardo Simanjuntak, Penulis adalah advokat senior dan pengajar pascasarjana pada beberapa perguruan tinggi. Konsep awal tulisan ini pernah dipresentasikan dalam seminar nasional yang diselenggarakan AAI pada 29 Januari 2015.</p>\r\n', '2018-11-01 16:27:39', 14, 'Artikel Hukum', 4, 'da5eb6e63c45be2674a04d8d9cfed965.jpg', 1, 'Ade Chandra Saputra', 0, 'mempersiapkan-advokat-indonesia-dalam-menghadapi-mea-oleh-dr-ricardo-simanjuntak-sh-llmanziif.cip');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
