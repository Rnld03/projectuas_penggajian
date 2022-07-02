-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 02 Jul 2022 pada 16.22
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `penggajian`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_jabatan`
--

CREATE TABLE `data_jabatan` (
  `id_jabatan` int(11) NOT NULL,
  `nama_jabatan` varchar(120) NOT NULL,
  `gaji_pokok` varchar(50) NOT NULL,
  `tj_transport` varchar(50) NOT NULL,
  `uang_makan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `data_jabatan`
--

INSERT INTO `data_jabatan` (`id_jabatan`, `nama_jabatan`, `gaji_pokok`, `tj_transport`, `uang_makan`) VALUES
(8, 'Pengajar', '10000000', '2000000', '1500000'),
(9, 'Murid', '500000', '100000', '250000'),
(10, 'Cleaning Service', '2500000', '300000', '300000'),
(11, 'Staff Marketing', '5600000', '1200000', '900000'),
(12, 'Staff Operasional', '4600000', '800000', '600000'),
(13, 'Admin', '4700000', '900000', '900000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_kehadiran`
--

CREATE TABLE `data_kehadiran` (
  `id_kehadiran` int(11) NOT NULL,
  `bulan` varchar(15) NOT NULL,
  `nik` varchar(50) NOT NULL,
  `nama_pegawai` varchar(225) NOT NULL,
  `jenis_kelamin` varchar(50) NOT NULL,
  `nama_jabatan` varchar(50) NOT NULL,
  `hadir` int(11) NOT NULL,
  `sakit` int(11) NOT NULL,
  `alpa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `data_kehadiran`
--

INSERT INTO `data_kehadiran` (`id_kehadiran`, `bulan`, `nik`, `nama_pegawai`, `jenis_kelamin`, `nama_jabatan`, `hadir`, `sakit`, `alpa`) VALUES
(27, '012022', '009720', 'Kakashi Hatake', 'Laki-Laki', 'Pengajar', 30, 0, 1),
(28, '012022', '5345362', 'Naruto Uzumaki', 'Laki-Laki', 'Cleaning Service', 7, 3, 14),
(29, '012022', '012601', 'Sakura Haruno', 'Perempuan', 'Staff Marketing', 28, 4, 0),
(30, '012022', '012606', 'Sasuke Uchiha', 'Laki-Laki', 'Staff Operasional', 29, 1, 1),
(31, '022022', '569001', 'Gaara', 'Laki-Laki', 'Staff Operasional', 10, 10, 10),
(32, '022022', '012612', 'Hinata Hyuga', 'Perempuan', 'Staff Marketing', 11, 9, 7),
(33, '022022', '009720', 'Kakashi Hatake', 'Laki-Laki', 'Pengajar', 23, 6, 1),
(34, '022022', '5345362', 'Naruto Uzumaki', 'Laki-Laki', 'Cleaning Service', 11, 0, 19),
(35, '022022', '012601', 'Sakura Haruno', 'Perempuan', 'Staff Marketing', 24, 0, 6),
(36, '022022', '012606', 'Sasuke Uchiha', 'Laki-Laki', 'Staff Operasional', 27, 0, 3),
(37, '022022', '002302', 'Tsunade Senju', 'Perempuan', 'Admin', 25, 0, 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_pegawai`
--

CREATE TABLE `data_pegawai` (
  `id_pegawai` int(11) NOT NULL,
  `nik` varchar(50) NOT NULL,
  `nama_pegawai` varchar(225) NOT NULL,
  `username` varchar(120) NOT NULL,
  `password` varchar(120) NOT NULL,
  `jenis_kelamin` varchar(20) NOT NULL,
  `jabatan` varchar(50) NOT NULL,
  `tanggal_masuk` date NOT NULL,
  `status` varchar(50) NOT NULL,
  `photo` varchar(225) NOT NULL,
  `hak_akses` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `data_pegawai`
--

INSERT INTO `data_pegawai` (`id_pegawai`, `nik`, `nama_pegawai`, `username`, `password`, `jenis_kelamin`, `jabatan`, `tanggal_masuk`, `status`, `photo`, `hak_akses`) VALUES
(7, '5345362', 'Naruto Uzumaki', 'naruto', '202cb962ac59075b964b07152d234b70', 'Laki-Laki', 'Cleaning Service', '2007-01-04', 'Pegawai Tetap', 'Naruto1.jpg', 2),
(8, '012606', 'Sasuke Uchiha', 'sasuke', '202cb962ac59075b964b07152d234b70', 'Laki-Laki', 'Staff Operasional', '2007-01-19', 'Pegawai Tidak Tetap', 'sasukeuchiha_naruto.jpg', 2),
(9, '012601', 'Sakura Haruno', 'sakura', '202cb962ac59075b964b07152d234b70', 'Perempuan', 'Staff Marketing', '2007-01-11', 'Pegawai Tidak Tetap', '7b79f3519318d5161c3ec5dd0ca0.jpg', 2),
(10, '009720', 'Kakashi Hatake', 'kakashi', '202cb962ac59075b964b07152d234b70', 'Laki-Laki', 'Pengajar', '2004-02-29', 'Pegawai Tetap', 'kakashi_hatake1.jpg', 1),
(11, '002302', 'Tsunade Senju', 'tsunade', '81dc9bdb52d04dc20036dbd8313ed055', 'Perempuan', 'Admin', '2006-01-11', 'Pegawai Tetap', 'Tsunade_Senju1.jpg', 1),
(13, '012612', 'Hinata Hyuga', 'hinata', '202cb962ac59075b964b07152d234b70', 'Perempuan', 'Staff Marketing', '2007-02-24', 'Pegawai Tidak Tetap', 'hinata-hd-png-download2.png', 2),
(14, '569001', 'Gaara', 'gaara', '81dc9bdb52d04dc20036dbd8313ed055', 'Laki-Laki', 'Staff Operasional', '2008-04-04', 'Pegawai Tidak Tetap', 'GaaraKishimotoo1.jpg', 2),
(15, '12345', 'Admin', 'admin', 'admin', 'Perempuan', 'Admin', '2012-07-03', 'Pegawai Tetap', 'male-user-shadow.jpg', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `hak_akses`
--

CREATE TABLE `hak_akses` (
  `id` int(11) NOT NULL,
  `keterangan` varchar(50) NOT NULL,
  `hak_akses` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `hak_akses`
--

INSERT INTO `hak_akses` (`id`, `keterangan`, `hak_akses`) VALUES
(1, 'admin', 1),
(2, 'pegawai', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `potongan_gaji`
--

CREATE TABLE `potongan_gaji` (
  `id` int(11) NOT NULL,
  `potongan` varchar(120) NOT NULL,
  `jml_potongan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `potongan_gaji`
--

INSERT INTO `potongan_gaji` (`id`, `potongan`, `jml_potongan`) VALUES
(1, 'Alpa', 100000);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `data_jabatan`
--
ALTER TABLE `data_jabatan`
  ADD PRIMARY KEY (`id_jabatan`);

--
-- Indeks untuk tabel `data_kehadiran`
--
ALTER TABLE `data_kehadiran`
  ADD PRIMARY KEY (`id_kehadiran`);

--
-- Indeks untuk tabel `data_pegawai`
--
ALTER TABLE `data_pegawai`
  ADD PRIMARY KEY (`id_pegawai`);

--
-- Indeks untuk tabel `hak_akses`
--
ALTER TABLE `hak_akses`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `potongan_gaji`
--
ALTER TABLE `potongan_gaji`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `data_jabatan`
--
ALTER TABLE `data_jabatan`
  MODIFY `id_jabatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `data_kehadiran`
--
ALTER TABLE `data_kehadiran`
  MODIFY `id_kehadiran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT untuk tabel `data_pegawai`
--
ALTER TABLE `data_pegawai`
  MODIFY `id_pegawai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `hak_akses`
--
ALTER TABLE `hak_akses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `potongan_gaji`
--
ALTER TABLE `potongan_gaji`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
