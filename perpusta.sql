-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 09 Nov 2022 pada 01.56
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpusta`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `anggota`
--

CREATE TABLE `anggota` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama_depan` varchar(50) NOT NULL,
  `nama_belakang` varchar(50) DEFAULT NULL,
  `email` varchar(128) NOT NULL,
  `nohp` varchar(16) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `kota` varchar(60) NOT NULL,
  `gender` enum('L','P') NOT NULL DEFAULT 'L',
  `foto` varchar(255) NOT NULL,
  `tgl_daftar` date DEFAULT NULL,
  `status_aktif` enum('A','N') NOT NULL DEFAULT 'A',
  `berlaku_awal` date DEFAULT NULL,
  `berlaku_akhir` date DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `bahasa`
--

CREATE TABLE `bahasa` (
  `id` int(10) UNSIGNED NOT NULL,
  `kode` varchar(2) DEFAULT NULL,
  `nama` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `klasifikasi`
--

CREATE TABLE `klasifikasi` (
  `id` int(10) UNSIGNED NOT NULL,
  `ddc` varchar(12) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `klasifikasi`
--

INSERT INTO `klasifikasi` (`id`, `ddc`, `nama`) VALUES
(1, '000-099', 'Karya Umum');

-- --------------------------------------------------------

--
-- Struktur dari tabel `koleksi`
--

CREATE TABLE `koleksi` (
  `id` int(10) UNSIGNED NOT NULL,
  `judul` varchar(255) NOT NULL,
  `jilid` varchar(20) NOT NULL,
  `edisi` varchar(80) NOT NULL,
  `penerbit_id` int(10) UNSIGNED NOT NULL,
  `penulis` varchar(155) NOT NULL,
  `thn_terbit` year(4) NOT NULL,
  `klasifikasi_id` int(10) UNSIGNED NOT NULL,
  `juml_halaman` varchar(10) NOT NULL,
  `isbn` varchar(20) NOT NULL,
  `bahasa_id` int(10) UNSIGNED NOT NULL,
  `stok` int(10) NOT NULL,
  `eksemplar` int(10) NOT NULL,
  `kategori_id` int(10) UNSIGNED NOT NULL,
  `pustakawan_id` int(10) UNSIGNED NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2022-09-28-045728', 'App\\Database\\Migrations\\Klasifikasi', 'default', 'App', 1667827288, 1),
(2, '2022-09-28-073612', 'App\\Database\\Migrations\\Bahasa', 'default', 'App', 1667827288, 1),
(3, '2022-09-28-074228', 'App\\Database\\Migrations\\Kategori', 'default', 'App', 1667827288, 1),
(4, '2022-09-29-115137', 'App\\Database\\Migrations\\Penerbit', 'default', 'App', 1667827288, 1),
(5, '2022-09-30-080000', 'App\\Database\\Migrations\\Pustakawan', 'default', 'App', 1667827288, 1),
(6, '2022-10-01-075558', 'App\\Database\\Migrations\\Koleksi', 'default', 'App', 1667827288, 1),
(7, '2022-10-02-055709', 'App\\Database\\Migrations\\Anggota', 'default', 'App', 1667827288, 1),
(8, '2022-10-03-040946', 'App\\Database\\Migrations\\StokKoleksi', 'default', 'App', 1667827288, 1),
(9, '2022-10-10-075158', 'App\\Database\\Migrations\\Pegawai', 'default', 'App', 1667827289, 1),
(10, '2022-10-20-071233', 'App\\Database\\Migrations\\Pemesanan', 'default', 'App', 1667827289, 1),
(11, '2022-10-20-073605', 'App\\Database\\Migrations\\Transaksi', 'default', 'App', 1667827289, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemesanan`
--

CREATE TABLE `pemesanan` (
  `id` int(10) UNSIGNED NOT NULL,
  `tgl_awal` date DEFAULT NULL,
  `tgl_akhir` date DEFAULT NULL,
  `koleksi_id` int(10) UNSIGNED NOT NULL,
  `anggota_id` int(10) UNSIGNED NOT NULL,
  `status_pesan` enum('B','O','X','H') NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `penerbit`
--

CREATE TABLE `penerbit` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(100) NOT NULL,
  `kota` varchar(100) NOT NULL,
  `negara` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `penerbit`
--

INSERT INTO `penerbit` (`id`, `nama`, `kota`, `negara`) VALUES
(1, 'test', 'Pontianak', 'Indonesia');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pustakawan`
--

CREATE TABLE `pustakawan` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama_lengkap` varchar(80) DEFAULT NULL,
  `gender` enum('L','P') DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `level` enum('P','K') DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `sandi` varchar(60) DEFAULT NULL,
  `nohp` varchar(15) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `kota` varchar(30) DEFAULT NULL,
  `token_reset` varchar(10) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `pustakawan`
--

INSERT INTO `pustakawan` (`id`, `nama_lengkap`, `gender`, `tgl_lahir`, `level`, `email`, `sandi`, `nohp`, `alamat`, `kota`, `token_reset`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'admin', 'P', '2022-11-07', 'P', 'admin@gmail.com', '$2a$10$7/sr98mHAY9J60WFKb2Rnu0DFWi6/zWJccT9x6qAsvv0fepeVzNzy', '0890808080', 'ererewrwerw', 'Pontianak', '', '2022-11-07 20:55:17', '2022-11-07 20:55:21', NULL),
(2, NULL, NULL, NULL, NULL, 'admin@gmail.com', '$2y$10$hy8ir0CKObn3dSriub2t8uFU133afmPDzWtdeah0WMfwm4bNIR3L6', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, NULL, NULL, NULL, NULL, 'admin@gmail.com', '$2y$10$KjysrjLgOy4yqm99oxfjz.yRfSWvi0NhPAldYwvH5CSyRi.bQsko.', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, NULL, NULL, NULL, NULL, 'admin@gmail.com', '$2y$10$RSvUWXhvFyP951iVlz1Fpu7OGEpcya9Hnqlxx5ok/2Yy56MDx8DG.', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, NULL, NULL, NULL, NULL, 'admin@gmail.com', '$2y$10$mSjshXvbal6QVRtN8MHD4eTkfJrgctxtlTVDpCRcOyXv46asVuxGi', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `stokkoleksi`
--

CREATE TABLE `stokkoleksi` (
  `id` int(10) UNSIGNED NOT NULL,
  `koleksi_id` int(10) UNSIGNED NOT NULL,
  `nomor` int(10) NOT NULL,
  `status_tersedia` enum('A','P','R','H') NOT NULL DEFAULT 'A',
  `anggota_id` int(10) UNSIGNED NOT NULL,
  `pustakawan_id` int(10) UNSIGNED NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id` int(10) UNSIGNED NOT NULL,
  `tgl_pinjam` date DEFAULT NULL,
  `tgl_harus_kembali` date DEFAULT NULL,
  `anggota_id` int(10) UNSIGNED DEFAULT NULL,
  `stok_koleksi_id` int(10) UNSIGNED DEFAULT NULL,
  `pustakawan_id` int(10) UNSIGNED DEFAULT NULL,
  `kembali_pustakawan_id` int(10) UNSIGNED DEFAULT NULL,
  `denda` double NOT NULL DEFAULT 0,
  `status_trx` enum('P','K','R','H') NOT NULL DEFAULT 'P',
  `catatan` text NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `bahasa`
--
ALTER TABLE `bahasa`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `klasifikasi`
--
ALTER TABLE `klasifikasi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `koleksi`
--
ALTER TABLE `koleksi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `koleksi_penerbit_id_foreign` (`penerbit_id`),
  ADD KEY `koleksi_klasifikasi_id_foreign` (`klasifikasi_id`),
  ADD KEY `koleksi_kategori_id_foreign` (`kategori_id`),
  ADD KEY `koleksi_bahasa_id_foreign` (`bahasa_id`),
  ADD KEY `koleksi_pustakawan_id_foreign` (`pustakawan_id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pemesanan_koleksi_id_foreign` (`koleksi_id`),
  ADD KEY `pemesanan_anggota_id_foreign` (`anggota_id`);

--
-- Indeks untuk tabel `penerbit`
--
ALTER TABLE `penerbit`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pustakawan`
--
ALTER TABLE `pustakawan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `stokkoleksi`
--
ALTER TABLE `stokkoleksi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stokkoleksi_koleksi_id_foreign` (`koleksi_id`),
  ADD KEY `stokkoleksi_anggota_id_foreign` (`anggota_id`),
  ADD KEY `stokkoleksi_pustakawan_id_foreign` (`pustakawan_id`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaksi_anggota_id_foreign` (`anggota_id`),
  ADD KEY `transaksi_pustakawan_id_foreign` (`pustakawan_id`),
  ADD KEY `transaksi_kembali_pustakawan_id_foreign` (`kembali_pustakawan_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `anggota`
--
ALTER TABLE `anggota`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `bahasa`
--
ALTER TABLE `bahasa`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `klasifikasi`
--
ALTER TABLE `klasifikasi`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `koleksi`
--
ALTER TABLE `koleksi`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `pemesanan`
--
ALTER TABLE `pemesanan`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `penerbit`
--
ALTER TABLE `penerbit`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `pustakawan`
--
ALTER TABLE `pustakawan`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `stokkoleksi`
--
ALTER TABLE `stokkoleksi`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `koleksi`
--
ALTER TABLE `koleksi`
  ADD CONSTRAINT `koleksi_bahasa_id_foreign` FOREIGN KEY (`bahasa_id`) REFERENCES `bahasa` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `koleksi_kategori_id_foreign` FOREIGN KEY (`kategori_id`) REFERENCES `kategori` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `koleksi_klasifikasi_id_foreign` FOREIGN KEY (`klasifikasi_id`) REFERENCES `klasifikasi` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `koleksi_penerbit_id_foreign` FOREIGN KEY (`penerbit_id`) REFERENCES `penerbit` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `koleksi_pustakawan_id_foreign` FOREIGN KEY (`pustakawan_id`) REFERENCES `pustakawan` (`id`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD CONSTRAINT `pemesanan_anggota_id_foreign` FOREIGN KEY (`anggota_id`) REFERENCES `anggota` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `pemesanan_koleksi_id_foreign` FOREIGN KEY (`koleksi_id`) REFERENCES `koleksi` (`id`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `stokkoleksi`
--
ALTER TABLE `stokkoleksi`
  ADD CONSTRAINT `stokkoleksi_anggota_id_foreign` FOREIGN KEY (`anggota_id`) REFERENCES `anggota` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `stokkoleksi_koleksi_id_foreign` FOREIGN KEY (`koleksi_id`) REFERENCES `koleksi` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `stokkoleksi_pustakawan_id_foreign` FOREIGN KEY (`pustakawan_id`) REFERENCES `pustakawan` (`id`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_anggota_id_foreign` FOREIGN KEY (`anggota_id`) REFERENCES `anggota` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `transaksi_kembali_pustakawan_id_foreign` FOREIGN KEY (`kembali_pustakawan_id`) REFERENCES `pustakawan` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `transaksi_pustakawan_id_foreign` FOREIGN KEY (`pustakawan_id`) REFERENCES `pustakawan` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
