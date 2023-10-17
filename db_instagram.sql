-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 10 Okt 2023 pada 10.05
-- Versi server: 10.3.29-MariaDB-0+deb10u1
-- Versi PHP: 8.1.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_instagram`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `post`
--

CREATE TABLE `post` (
  `no` int(11) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `caption` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL,
  `lokasi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `post`
--

INSERT INTO `post` (`no`, `gambar`, `caption`, `deskripsi`, `lokasi`) VALUES
(11, '6523441db2ebc.jpeg', 'Lamborghini Gallardo', 'sebuah mobil sport yang dibuat oleh Lamborghini, sebuah mobil yang paling laku di perusahaan dengan 10.000 unit yang telah dibuat dalam 7 tahun produksi pertamanya dan 14.022 unit telah diproduksi selama masa produksinya.[1] Mobil ini dinamakan setelah nama seekor banteng petarung yang terkenal.', 'Purbalinggaa'),
(12, '652363f0358f7.jpeg', 'Pragos', 'ghfhfytty', 'India'),
(14, '6524b61f46170.jpeg', 'uwon', 'jungwon jungwonnnnnnn', 'Banjaranyar-Banyumas-Jawa Tengah'),
(24, '6524afdc91d58.jpg', 'Pemandangan Alam', 'Pemandangan alam saat sore hari', 'Pegunungan Jawa'),
(29, '6524bbc83e0e2.jpg', 'Krisna', 'Bandung', 'Bandung');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `no` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`no`, `username`, `password`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`no`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`no`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `post`
--
ALTER TABLE `post`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
