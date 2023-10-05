-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 14 Jun 2022 pada 06.24
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `usermod5`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `image_text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `images`
--

INSERT INTO `images` (`id`, `image`, `image_text`) VALUES
(3, 'cendol.jpg', '90 gram tepung beras\r\n70 gram tepung tapioka\r\n750 ml air\r\n3 tetes pewarna makanan merah muda\r\n\r\nEs batu parut, secukupnya\r\nNangka, potong dadu, secukupnya\r\nNangka, potong dadu, secukupnya');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(1, 'kinti', '$2y$10$VUMBrfxd1bocAJv246CqOuJBsgWby5va.l.ReYXPRUqwTIGX3csK6'),
(2, 'masuk', '$2y$10$A/ahhztjxVaP/n0gMuhLmeN.Ob4mRuIrCuaCCCtiO4OfaAgG8cipy'),
(3, 'aku', '$2y$10$lCzlCMfUHu1V4mSM0RvfuewJD0jmGun6LXZOaLgm1niC.wnLgpdhu'),
(4, 'admin', '$2y$10$f.SKWmRy/eHMQJLg6XOIweuoU6rkXjFRQNZUHqR934awtYQremi0W'),
(5, 'user', '$2y$10$GjXXaiuXRQTvv2hRnSVLZ.xAzOXqE9Hw.f8/wGZw5oZ2/wLUpZc/G'),
(6, 'aku', '$2y$10$eQWZNtkJLdFBG.htnlxWGeibpgkZRqonqa/z1ZTS7y4jlAqIBcsiG'),
(7, 'a', '$2y$10$SIr9i0QTSMxFkYIqJ2H1Runrsmk1coGIgLmYcle0hQXI4aCCBeVKa'),
(8, 'c', '$2y$10$7MG438rf/aQhc.754pUmAOfLvCWqgfdLC7s.50k6OtwgdI2w8rDOC'),
(9, 'c', '$2y$10$aC6pJ8NmyKqnZY3Zs62m/.MuYyf4HOXrxHG6LeqZnaEyP.QVNHnfO'),
(10, 'g', '$2y$10$F1v1wDNAEApRqvtcD.wbZ.13lZhq0Fvtd7PRDkGJ8cRY3ckHNSUWe'),
(11, 'sub', '$2y$10$dLcMieINYvXRIIDTaUtvT.eidV5VMnhMWU/t.N8muVpXKOUsBLBdS');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
