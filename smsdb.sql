-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 15 Okt 2020 pada 20.06
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.2.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smsdb`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `sendedsms`
--

CREATE TABLE `sendedsms` (
  `id` int(11) NOT NULL,
  `send_from` varchar(13) NOT NULL,
  `send_to` varchar(13) NOT NULL,
  `mesage_sent` varchar(160) NOT NULL,
  `sended_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `sendedsms`
--

INSERT INTO `sendedsms` (`id`, `send_from`, `send_to`, `mesage_sent`, `sended_on`) VALUES
(1, 'BEBECLUB101', '081375675615', 'Do you ever take this test before??', '2020-10-14 14:25:37'),
(3, '080989999', '6281375675615', 'can you call me pls?', '2020-10-14 14:25:37'),
(4, '080989999', '6281375675615', 'can you call me again pls?', '2020-10-14 15:17:37'),
(5, '080989999', '6281375675615', 'can you call me again pls? NOW!', '2020-10-14 15:17:37'),
(8, 'undefined', 'undefined', 'undefined', '0000-00-00 00:00:00'),
(9, '080989999', '6281375675615', 'can you call me again pls? NOW! again', '2020-10-14 15:17:37'),
(10, 'undefined', 'undefined', 'undefined', '0000-00-00 00:00:00'),
(11, 'undefined', 'undefined', 'undefined', '0000-00-00 00:00:00'),
(12, 'undefined', 'undefined', 'undefined', '2020-10-15 15:50:09'),
(13, 'BEBECLUB', '6281375675615', 'this is try no 101', '2020-10-15 15:50:49'),
(14, 'BEBECLUB', '6281375675615', 'this is try no 102', '2020-10-15 15:54:24'),
(15, 'BEBECLUB', '6281375675615', 'mohmd.agung@gmail.com', '2020-10-15 15:55:08'),
(16, 'BEBECLUB', '6285664055215', 'test sms for reza imutz', '2020-10-15 16:27:43'),
(17, 'BEBECLUB', '6281269989899', 'Hi Icha! Ini test sms dari agung', '2020-10-15 16:28:33'),
(18, 'BEBECLUB', '6281396493256', 'Hi Harry BUCIN! coba ss sms ini terus kirim ke grup', '2020-10-15 16:29:49');

-- --------------------------------------------------------

--
-- Struktur dari tabel `smsdlr`
--

CREATE TABLE `smsdlr` (
  `id` int(255) UNSIGNED NOT NULL,
  `dlr` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `sendedsms`
--
ALTER TABLE `sendedsms`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `smsdlr`
--
ALTER TABLE `smsdlr`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `sendedsms`
--
ALTER TABLE `sendedsms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `smsdlr`
--
ALTER TABLE `smsdlr`
  MODIFY `id` int(255) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
