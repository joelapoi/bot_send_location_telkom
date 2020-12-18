-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 18 Des 2020 pada 09.37
-- Versi server: 10.3.25-MariaDB-log-cll-lve
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
-- Database: `babybost_send_location_bot`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_logins`
--

CREATE TABLE `auth_logins` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `date` datetime NOT NULL,
  `success` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `auth_logins`
--

INSERT INTO `auth_logins` (`id`, `ip_address`, `email`, `user_id`, `date`, `success`) VALUES
(1, '::1', 'hasiholanhutasoit14@gmail.com', 1, '2020-11-23 05:52:48', 1),
(2, '::1', 'hasiholanhutasoit14@gmail.com', 1, '2020-11-23 05:52:57', 1),
(3, '::1', 'hasiholanhutasoit14@gmail.com', 1, '2020-11-23 05:53:51', 1),
(4, '::1', 'hasiholanhutasoit14@gmail.com', 1, '2020-11-23 05:54:15', 1),
(5, '::1', 'hasiholanhutasoit14@gmail.com', 1, '2020-11-23 05:54:32', 1),
(6, '36.73.109.170', 'hasiholanhutasoit14@gmail.com', 1, '2020-11-23 20:18:40', 1),
(7, '118.97.16.154', 'hasiholanhutasoit14@gmail.com', 1, '2020-11-24 00:00:52', 1),
(8, '36.73.109.170', 'hasiholanhutasoit14@gmail.com', 1, '2020-11-24 06:14:40', 1),
(9, '36.73.109.170', 'hasiholanhutasoit14@gmail.com', 1, '2020-11-24 06:18:48', 1),
(10, '36.73.109.170', 'admin123', NULL, '2020-11-24 07:49:25', 0),
(11, '36.73.109.170', 'admin123', NULL, '2020-11-24 07:50:07', 0),
(12, '36.73.109.170', 'hasiholanhutasoit12@gmail.com', 3, '2020-11-24 07:55:22', 1),
(13, '202.67.40.10', 'hasiholanhutasoit12@gmail.com', 3, '2020-11-24 07:56:11', 1),
(14, '36.72.212.16', 'hasiholanhutasoit12@gmail.com', 3, '2020-11-24 08:18:12', 1),
(15, '36.73.109.170', 'hasiholanhutasoit14@gmail.com', 1, '2020-11-24 08:26:42', 1),
(16, '116.206.40.51', 'hasiholanhutasoit12@gmail.com', 3, '2020-11-24 10:19:25', 1),
(17, '103.147.154.56', 'hasiholanhutasoit12@gmail.com', 3, '2020-11-24 10:20:45', 1),
(18, '103.147.154.56', 'hasiholanhutasoit12@gmail.com', 3, '2020-11-24 10:41:32', 1),
(19, '36.73.109.170', 'hasiholanhutasoit14@gmail.com', 1, '2020-11-24 11:36:48', 1),
(20, '36.72.213.160', 'hasiholanhutasoit14@gmail.com', 1, '2020-11-26 08:36:24', 1),
(21, '36.72.213.160', 'hasiholanhutasoit14@gmail.com', 1, '2020-11-26 08:36:54', 1),
(22, '36.72.213.160', 'hasiholanhutasoit14@gmail.com', 1, '2020-11-26 08:37:29', 1),
(23, '103.147.154.56', 'hasiholanhutasoit12@gmail.com', 3, '2020-11-26 09:18:39', 1),
(24, '36.72.213.160', 'hasiholanhutasoit14@gmail.com', 1, '2020-11-26 09:22:44', 1),
(25, '103.147.154.58', 'admin', NULL, '2020-11-26 09:37:40', 0),
(26, '103.147.154.58', 'hasiholanhutasoit12@gmail.com', 3, '2020-11-26 09:37:54', 1),
(27, '36.72.213.160', 'hasiholanhutasoit14@gmail.com', 1, '2020-11-26 09:47:27', 1),
(28, '103.147.154.56', 'hasiholanhutasoit12@gmail.com', 3, '2020-11-26 10:27:03', 1),
(29, '36.72.213.160', 'hasiholanhutasoit14@gmail.com', 1, '2020-11-27 00:46:54', 1),
(30, '118.97.16.154', 'admin', NULL, '2020-12-02 21:29:55', 0),
(31, '118.97.16.154', 'hasiholanhutasoit14@gmail.com', 1, '2020-12-02 21:30:01', 1),
(32, '118.97.16.154', 'admin', NULL, '2020-12-02 23:54:51', 0),
(33, '118.97.16.154', 'admin', NULL, '2020-12-02 23:55:03', 0),
(34, '118.97.16.154', 'admin', NULL, '2020-12-02 23:55:21', 0),
(35, '118.97.16.154', 'hasiholanhutasoit14@gmail.com', 1, '2020-12-02 23:55:56', 1),
(36, '118.97.16.154', 'hasiholanhutasoit14@gmail.com', 1, '2020-12-02 23:56:27', 1),
(37, '125.161.131.18', 'hasiholanhutasoit14@gmail.com', 1, '2020-12-03 07:24:48', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_tokens`
--

CREATE TABLE `auth_tokens` (
  `id` int(11) UNSIGNED NOT NULL,
  `selector` varchar(255) NOT NULL,
  `hashedValidator` varchar(255) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `expires` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` text NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2017-11-20-223112', 'Myth\\Auth\\Database\\Migrations\\CreateAuthTables', 'default', 'Myth\\Auth', 1606132287, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_datauser`
--

CREATE TABLE `tb_datauser` (
  `id_user` int(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `kontak` varchar(255) NOT NULL,
  `akses` varchar(192) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_datauser`
--

INSERT INTO `tb_datauser` (`id_user`, `nama`, `kontak`, `akses`) VALUES
(48489681, 'dani', '08112694500', 'Ya'),
(1086519366, 'joel', '085359804143', 'Ya');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_data_lokasi`
--

CREATE TABLE `tb_data_lokasi` (
  `id` int(255) NOT NULL,
  `no_internet` varchar(255) NOT NULL,
  `no_telepon` varchar(255) NOT NULL,
  `alamat` longtext NOT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_data_lokasi`
--

INSERT INTO `tb_data_lokasi` (`id`, `no_internet`, `no_telepon`, `alamat`, `latitude`, `longitude`) VALUES
(1, '146279103305', '02853970442', 'BATANG, WONOKERSO, Dukuh WONOKERSO, PerumBPI_A4', -7.765152029707855, 110.42217478400107),
(2, '146279104808', '2853970465', 'BATANG, WONOKERSO, Dukuh WONOKERSO, PerumBPI_B4', -692488582987776, 1.09803803322753e15),
(3, '146279104982', '02853970565', 'BATANG, WONOKERSO, Dukuh WONOKERSO, PerumBPI_B6', -692477912678400, 1.09803781865081e15),
(4, '146279104983', '02853970569', 'BATANG, WONOKERSO, Dukuh WONOKERSO, PerumBPI_B7', -692497911119872, 1.09803512303075e15),
(5, '146279104984', '02853970595', 'BATANG, WONOKERSO, Dukuh WONOKERSO, PerumBPI_B8', -692482140536832, 1.0980386769577e15),
(6, '146279104988', '02853970599', 'BATANG, WONOKERSO, Dukuh WONOKERSO, PerumBPI_B9', -692497105813504, 1.09803760407409e15),
(7, '141539102561', '', 'JEPARA, PANGGANG, BRIGJEN KATAMSO, 39, RT/RW 02/03', -659290834599936, 1.10673323939504e15),
(8, '146504603139', '', 'jl slamet riyadi 34 Kp. Baru, Kec. Ps. Kliwon, Kota Surakarta, Jawa Tengah 57122', -7.571182844903424e15, 1108258105),
(9, '142510103290', '02728991377', 'Griya Kedungan Indah no.17, Jl. Pedan-Juwiring km.1, RT.01, RW.06, Kedungan, Pedan, Klaten, Jawa Tengah, 57468', -76875804180480, 11070425620303),
(10, '141303127691', '', 'JAKARTA TIMUR, CIRACAS(Kec.Ciracas), H BAPING, 100', -744058590855168, 1.09247223823942e15);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password_hash` varchar(255) NOT NULL,
  `reset_hash` varchar(255) DEFAULT NULL,
  `reset_at` datetime DEFAULT NULL,
  `reset_expires` datetime DEFAULT NULL,
  `activate_hash` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `status_message` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `force_pass_reset` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `password_hash`, `reset_hash`, `reset_at`, `reset_expires`, `activate_hash`, `status`, `status_message`, `active`, `force_pass_reset`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'hasiholanhutasoit14@gmail.com', 'joelapoi', '$2y$10$Gcq2j8HNPxbsl92xCCVgUubUnbnTBv1Vava1mGlt/GwTpR.ZlDe5a', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2020-11-23 05:52:31', '2020-11-23 05:52:31', NULL),
(3, 'hasiholanhutasoit12@gmail.com', 'admin', '$2y$10$CCIxrKX3knDaROShXV5BP.Y8U4xgRrbifqSnFc3vjO55ytBN9c5ii', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2020-11-24 07:53:17', '2020-11-24 07:53:17', NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `auth_logins`
--
ALTER TABLE `auth_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeks untuk tabel `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auth_tokens_user_id_foreign` (`user_id`),
  ADD KEY `selector` (`selector`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_datauser`
--
ALTER TABLE `tb_datauser`
  ADD PRIMARY KEY (`id_user`);

--
-- Indeks untuk tabel `tb_data_lokasi`
--
ALTER TABLE `tb_data_lokasi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `auth_logins`
--
ALTER TABLE `auth_logins`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT untuk tabel `auth_tokens`
--
ALTER TABLE `auth_tokens`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tb_datauser`
--
ALTER TABLE `tb_datauser`
  MODIFY `id_user` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1234132443;

--
-- AUTO_INCREMENT untuk tabel `tb_data_lokasi`
--
ALTER TABLE `tb_data_lokasi`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD CONSTRAINT `auth_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
