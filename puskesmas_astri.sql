-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 13 Feb 2023 pada 02.07
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
-- Database: `puskesmas_astri`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `diagnosa`
--

CREATE TABLE `diagnosa` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_rekam` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keluhan` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telaah` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rpo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alergi` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `td` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pr` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bb` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lp` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hr` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `t` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tb` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assement` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `planing` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `education` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `terapi` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `dokter`
--

CREATE TABLE `dokter` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nip` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_kelamin` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanggal_lahir` datetime DEFAULT NULL,
  `tempat_lahir` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telepon` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanggal` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `poli` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kwitansi`
--

CREATE TABLE `kwitansi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_rekam` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `kartu_berobat` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ket` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jumlah` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_02_18_110210_tbl_user', 1),
(6, '2022_02_18_110228_tbl_pegawai', 1),
(7, '2022_02_18_110248_tbl_pasien', 1),
(8, '2022_02_18_110257_tbl_poli', 1),
(9, '2022_02_18_110311_tbl_rekam', 1),
(10, '2022_02_18_110323_tbl_kwitansi', 1),
(11, '2022_02_18_110332_tbl_rujukan', 1),
(12, '2022_04_19_175306_tbl_dokter', 1),
(13, '2022_07_16_042301_tbl_rekam_medis', 1),
(14, '2022_07_19_134327_tbl_diagnosa', 1),
(15, '2022_07_19_135229_tbl_rekam_medik', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pasien`
--

CREATE TABLE `pasien` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `nik` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_rm` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gol_darah` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jenis_kelamin` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_nikah` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jkn` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alergi_obat` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alergi_makan` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alergi_udara` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alergi_lain` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kartu_berobat` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanggal_lahir` datetime DEFAULT NULL,
  `tempat_lahir` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `agama` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pekerjaan` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_hp` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_kepala` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_registrasi` datetime DEFAULT NULL,
  `status` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '1=aktif, 0=non'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pegawai`
--

CREATE TABLE `pegawai` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nip` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_kelamin` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanggal_lahir` datetime DEFAULT NULL,
  `tempat_lahir` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telepon` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jabatan` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pendidikan_nama` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pendidikan_tahun_lulus` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pendidikan_tk_ijazah` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tmt_cpns` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanggal` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '1=aktif, 0=non'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pegawai`
--

INSERT INTO `pegawai` (`id`, `nip`, `nama`, `jenis_kelamin`, `tanggal_lahir`, `tempat_lahir`, `alamat`, `telepon`, `jabatan`, `pendidikan_nama`, `pendidikan_tahun_lulus`, `pendidikan_tk_ijazah`, `tmt_cpns`, `tanggal`, `status`) VALUES
(1, '1232123142', 'Sumail', NULL, '2023-02-13 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1'),
(2, '456656568', 'Nurhalimah', NULL, '2023-02-13 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
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
-- Struktur dari tabel `poli`
--

CREATE TABLE `poli` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `prosedur` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `poli`
--

INSERT INTO `poli` (`id`, `prosedur`) VALUES
(1, 'POLI ANAK'),
(2, 'POLI KANDUNGAN'),
(3, 'POLI GIzi'),
(4, 'POLI UMUM'),
(5, 'POLI GIGI');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rekam`
--

CREATE TABLE `rekam` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_rekam` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_poli` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_pasien` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_dokter` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `kartu_berobat` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanggal` datetime DEFAULT NULL,
  `diagnosa` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pengobatan` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `petugas` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uang_diterima` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanggal_keluar` datetime DEFAULT NULL,
  `status_rujuk` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `rekam_medis`
--

CREATE TABLE `rekam_medis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_rekam` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_rm` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanggal` datetime DEFAULT NULL,
  `diagnosa` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dokter` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tindakan` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resep` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanggal_keluar` datetime DEFAULT NULL,
  `status` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `rujukan`
--

CREATE TABLE `rujukan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kartu_berobat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_pasien` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_rekam` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `rs_tujuan` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `diagnosa` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_surat` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'nip',
  `password` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '1=admin,2=kepala,3=pasien',
  `status` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '1=aktif, 0=non'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `level`, `status`) VALUES
(1, 'admin', '$2y$10$6xHGwUGaxg81Lboof3.Bh.xOdU4Omjpg0p6jaI/g/0mjTPKW2qTVq', '1', '1'),
(2, 'kapus', '$2y$10$k7M4xONoXM3SHQTh1dTa/.obExxKdB9f.eY391qwdtevHrx4Q5U7O', '2', '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `diagnosa`
--
ALTER TABLE `diagnosa`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `dokter`
--
ALTER TABLE `dokter`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `kwitansi`
--
ALTER TABLE `kwitansi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pasien`
--
ALTER TABLE `pasien`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `poli`
--
ALTER TABLE `poli`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `rekam`
--
ALTER TABLE `rekam`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `rekam_medis`
--
ALTER TABLE `rekam_medis`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `rujukan`
--
ALTER TABLE `rujukan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `diagnosa`
--
ALTER TABLE `diagnosa`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `dokter`
--
ALTER TABLE `dokter`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kwitansi`
--
ALTER TABLE `kwitansi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `pasien`
--
ALTER TABLE `pasien`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `poli`
--
ALTER TABLE `poli`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `rekam`
--
ALTER TABLE `rekam`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `rekam_medis`
--
ALTER TABLE `rekam_medis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `rujukan`
--
ALTER TABLE `rujukan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
