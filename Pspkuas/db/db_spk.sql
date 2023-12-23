-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 23 Des 2023 pada 10.47
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_spk`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `calon_karyawan`
--

CREATE TABLE `calon_karyawan` (
  `id_calon_kr` int(11) NOT NULL,
  `nama` varchar(64) DEFAULT NULL,
  `foto` varchar(64) DEFAULT NULL,
  `ttl` date DEFAULT NULL,
  `skill` text DEFAULT NULL,
  `pengalaman` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `calon_karyawan`
--

INSERT INTO `calon_karyawan` (`id_calon_kr`, `nama`, `foto`, `ttl`, `skill`, `pengalaman`) VALUES
(1, 'Adi Purniawan', '', '2000-04-05', '', ''),
(2, 'Ade Fiqi Amirul', '', '1987-05-06', '', ''),
(3, 'Alvan Belvas', '', '1967-09-01', '', ''),
(4, 'Budi Doremi', NULL, '2002-03-09', NULL, NULL),
(5, 'Beni Kompo', NULL, '2001-09-01', NULL, NULL),
(6, 'Deva Mahardika', NULL, '2000-01-01', NULL, NULL),
(7, 'Erina Fahrena', NULL, '2004-07-03', NULL, NULL),
(8, 'Fery Irawan', NULL, '2002-03-08', NULL, NULL),
(9, 'Ginanjar Saputra', NULL, '1998-02-04', NULL, NULL),
(10, 'Hartanto Binara', NULL, '1997-05-09', NULL, NULL),
(13, 'Anang Syahputra', '', '2009-04-24', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `hasil_spk`
--

CREATE TABLE `hasil_spk` (
  `id_spk` int(11) NOT NULL,
  `id_calon_kr` int(11) DEFAULT NULL,
  `hasil_spk` float(10,8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `hasil_spk`
--

INSERT INTO `hasil_spk` (`id_spk`, `id_calon_kr`, `hasil_spk`) VALUES
(1, 1, 0.69132227),
(2, 2, 0.35246778),
(3, 3, 0.55696630),
(4, 4, 0.46327552),
(5, 5, 0.50450271),
(6, 6, 0.64565897),
(7, 7, 0.48327932),
(8, 8, 0.55269152),
(9, 9, 0.41341615),
(10, 10, 0.45082581),
(11, 13, 0.86267042);

-- --------------------------------------------------------

--
-- Struktur dari tabel `hasil_tpa`
--

CREATE TABLE `hasil_tpa` (
  `id_test` int(11) NOT NULL,
  `id_calon_kr` int(11) DEFAULT NULL,
  `k_keterampilan` int(11) DEFAULT NULL,
  `k_Lulusan` int(11) DEFAULT NULL,
  `k_Motivasi_Kerja` int(11) DEFAULT NULL,
  `k_Kemampuan_komunikasi` int(11) DEFAULT NULL,
  `k_pemahaman_wacana` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `hasil_tpa`
--

INSERT INTO `hasil_tpa` (`id_test`, `id_calon_kr`, `k_keterampilan`, `k_Lulusan`, `k_Motivasi_Kerja`, `k_Kemampuan_komunikasi`, `k_pemahaman_wacana`) VALUES
(1, 1, 66, 66, 66, 66, 66),
(3, 3, 58, 55, 38, 56, 85),
(4, 4, 30, 31, 41, 39, 15),
(5, 5, 52, 38, 35, 26, 73),
(6, 6, 60, 45, 88, 50, 98),
(7, 7, 11, 73, 10, 11, 94),
(8, 8, 74, 45, 11, 56, 34),
(9, 9, 31, 37, 51, 90, 56),
(10, 10, 59, 16, 44, 95, 38);

-- --------------------------------------------------------

--
-- Struktur dari tabel `hrd`
--

CREATE TABLE `hrd` (
  `nip` varchar(16) NOT NULL,
  `email` varchar(32) DEFAULT NULL,
  `username` varchar(32) DEFAULT NULL,
  `password` varchar(64) DEFAULT NULL,
  `nama_lengkap` varchar(64) DEFAULT NULL,
  `ttl` date DEFAULT NULL,
  `foto` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `hrd`
--

INSERT INTO `hrd` (`nip`, `email`, `username`, `password`, `nama_lengkap`, `ttl`, `foto`) VALUES
('1', 'admin@admin.com', 'admin', '202cb962ac59075b964b07152d234b70', 'Admin', '1999-05-16', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kriteria`
--

CREATE TABLE `kriteria` (
  `id_kriteria` int(11) NOT NULL,
  `kriteria` varchar(32) DEFAULT NULL,
  `bobot` float(5,2) DEFAULT NULL,
  `type` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `kriteria`
--

INSERT INTO `kriteria` (`id_kriteria`, `kriteria`, `bobot`, `type`) VALUES
(1, 'k_keterampilan', 0.30, 'Benefit'),
(2, 'k_Lulusan', 0.25, 'Benefit'),
(3, 'k_Motivasi_Kerja', 0.20, 'Benefit'),
(4, 'k_Kemampuan_komunikasi', 0.15, 'Cost'),
(6, 'k_pemahaman_wacana', 0.10, 'Cost');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `calon_karyawan`
--
ALTER TABLE `calon_karyawan`
  ADD PRIMARY KEY (`id_calon_kr`);

--
-- Indeks untuk tabel `hasil_spk`
--
ALTER TABLE `hasil_spk`
  ADD PRIMARY KEY (`id_spk`),
  ADD KEY `id_calon_kr` (`id_calon_kr`);

--
-- Indeks untuk tabel `hasil_tpa`
--
ALTER TABLE `hasil_tpa`
  ADD PRIMARY KEY (`id_test`),
  ADD KEY `id_calon_kr` (`id_calon_kr`);

--
-- Indeks untuk tabel `hrd`
--
ALTER TABLE `hrd`
  ADD PRIMARY KEY (`nip`);

--
-- Indeks untuk tabel `kriteria`
--
ALTER TABLE `kriteria`
  ADD PRIMARY KEY (`id_kriteria`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `calon_karyawan`
--
ALTER TABLE `calon_karyawan`
  MODIFY `id_calon_kr` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `hasil_spk`
--
ALTER TABLE `hasil_spk`
  MODIFY `id_spk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `hasil_tpa`
--
ALTER TABLE `hasil_tpa`
  MODIFY `id_test` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `kriteria`
--
ALTER TABLE `kriteria`
  MODIFY `id_kriteria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `hasil_spk`
--
ALTER TABLE `hasil_spk`
  ADD CONSTRAINT `hasil_spk_ibfk_1` FOREIGN KEY (`id_calon_kr`) REFERENCES `calon_karyawan` (`id_calon_kr`);

--
-- Ketidakleluasaan untuk tabel `hasil_tpa`
--
ALTER TABLE `hasil_tpa`
  ADD CONSTRAINT `hasil_tpa_ibfk_1` FOREIGN KEY (`id_calon_kr`) REFERENCES `calon_karyawan` (`id_calon_kr`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
