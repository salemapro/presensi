-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 16 Agu 2023 pada 12.24
-- Versi server: 10.3.15-MariaDB
-- Versi PHP: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_presensi`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `username`, `password`) VALUES
(1, 'sa', '123');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_daftarhadir`
--

CREATE TABLE `tbl_daftarhadir` (
  `id` int(11) NOT NULL,
  `id_Rapat` int(11) DEFAULT NULL,
  `nip` varchar(20) DEFAULT NULL,
  `namaLengkap` varchar(100) DEFAULT NULL,
  `jabatan` varchar(100) DEFAULT NULL,
  `unit` varchar(100) DEFAULT NULL,
  `instansi` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `sign` varchar(100) DEFAULT NULL,
  `attendance` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_daftarhadir`
--

INSERT INTO `tbl_daftarhadir` (`id`, `id_Rapat`, `nip`, `namaLengkap`, `jabatan`, `unit`, `instansi`, `email`, `sign`, `attendance`) VALUES
(1, 1, '212303002', 'Salma Sayyidah', 'Direktur', 'Pemberantas Korupsi', 'PT. Salema Jaya', 'ssaruma@gmail.com', NULL, '2023-07-10 01:30:00'),
(2, 2, '212303002', 'Salma Sayyidah', 'Direktur', 'Pemberantas Korupsi', 'PT EXCALIBER', 'sarumasa@gmail.com', 'img_sign/64b64d8f581ec_2_18072023.png', '2023-07-18 08:30:07'),
(3, 2, '212303003', 'Baekhyun', 'HRD', 'Pemberantas Korupsi', 'PT. Salema Jaya', 'baekhyunchan@gmail.com', 'img_sign/64c36657cf123_2_28072023.png', '2023-07-28 06:55:19'),
(4, 1, '-', 'Salma Sayyidah', 'HRD', 'Pemberantas Korupsi', 'PT. Salema Jaya', 'sarumasa@gmail.com', 'img_sign/64d20542a723f_1_08082023.png', '2023-08-08 09:05:06');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_daftarrapat`
--

CREATE TABLE `tbl_daftarrapat` (
  `id` int(11) NOT NULL,
  `judulRapat` varchar(200) DEFAULT NULL,
  `tempat` varchar(100) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `waktu` time DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_daftarrapat`
--

INSERT INTO `tbl_daftarrapat` (`id`, `judulRapat`, `tempat`, `tanggal`, `waktu`, `status`) VALUES
(1, 'Rapat pembahasan pembangunan IKN tahun 2024', 'Zoom Meetings', '2023-07-03', '10:20:00', 1),
(2, 'Rapat Pembahasan Project Tender Kementrian Luar Nagreg', 'Gmeet', '2023-07-18', '04:40:00', 0);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_daftarhadir`
--
ALTER TABLE `tbl_daftarhadir`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_daftarrapat`
--
ALTER TABLE `tbl_daftarrapat`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_daftarhadir`
--
ALTER TABLE `tbl_daftarhadir`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tbl_daftarrapat`
--
ALTER TABLE `tbl_daftarrapat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;