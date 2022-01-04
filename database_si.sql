-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 02, 2021 at 04:21 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `database_si`
--

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE `announcements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `announcements`
--

INSERT INTO `announcements` (`id`, `title`, `category`, `slug`, `content`, `photo`, `created_at`, `updated_at`) VALUES
(1, 'Perubahan Jadwal Wisuda', 'Pengumuman', 'perubahan-jadwal-wisuda', '<p>Diberitahukan kepada</p>', 'images/1637812648.png', '2021-11-24 20:57:28', '2021-11-24 20:57:28');

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `announcement_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `document` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `kurikulum`
--

CREATE TABLE `kurikulum` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_mk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_mk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kelompok_mk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sks` int(11) NOT NULL,
  `semester` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `document` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kurikulum`
--

INSERT INTO `kurikulum` (`id`, `kode_mk`, `nama_mk`, `kelompok_mk`, `sks`, `semester`, `document`, `created_at`, `updated_at`) VALUES
(1, '141122101', 'Pengantar Bisnis dan Manajemen', 'MKB', 2, 'Semester 1', '1638329082_RPS_example.docx', '2021-11-28 23:05:29', '2021-11-30 20:24:42'),
(2, '1401201', 'Pengantar Teknologi Informasi', 'MKB', 2, 'Semester 1', NULL, '2021-11-28 23:08:27', '2021-11-28 23:08:27'),
(3, '1411442101', 'Pengantar Pemrograman', 'MKK', 4, 'Semester 1', NULL, '2021-11-28 23:13:04', '2021-11-28 23:13:04'),
(4, 'UBD2001', 'Bahasa Indonesia', 'MKK', 2, 'Semester 1', NULL, '2021-11-29 00:37:35', '2021-11-29 00:37:35'),
(5, 'UBD2006', 'Pendidikan Agama', 'MKK', 2, 'Semester 1', NULL, '2021-11-29 00:38:15', '2021-11-29 00:38:15'),
(6, '1401202', 'Bahasa Inggris 1', 'MKK', 2, 'Semester 1', NULL, '2021-11-29 00:39:21', '2021-11-29 00:39:21'),
(7, '141122102', 'Interpersonal Skill', 'MPB', 2, 'Semester 1', NULL, '2021-11-29 00:41:31', '2021-11-29 00:41:31'),
(8, '141222101', 'Analisa Proses Bisnis', 'MKK', 2, 'Semester 2', NULL, '2021-11-29 00:44:01', '2021-11-29 00:44:01'),
(9, '141242101', 'Matematika Diskrit', 'MKK', 4, 'Semester 2', NULL, '2021-11-29 00:46:39', '2021-11-29 00:46:39'),
(10, '141242102', 'Basis Data', 'MKB', 4, 'Semester 2', NULL, '2021-11-29 00:47:58', '2021-11-29 00:47:58'),
(11, '1402201', 'Bahasa Inggris 2', 'MPK', 2, 'Semester 2', NULL, '2021-11-29 00:48:38', '2021-11-29 00:48:38'),
(12, '141242103', 'Sistem Informasi Manajemen', 'MKK', 4, 'Semester 2', NULL, '2021-11-29 00:49:28', '2021-11-29 00:49:28'),
(13, '141222103', 'Interaksi Manusia dan Komputer', 'MPB', 2, 'Semester 2', NULL, '2021-11-29 00:51:55', '2021-11-29 00:51:55'),
(14, '141242104', 'Algoritma dan Struktur Data', 'MKK', 4, 'Semester 2', NULL, '2021-11-29 00:54:27', '2021-11-29 00:54:27'),
(15, '141342101', 'Jaringan Komputer dan Komunikasi Data', 'MKB', 4, 'Semester 3', NULL, '2021-11-29 00:55:12', '2021-11-29 00:55:12'),
(16, '141342101', 'Statistika dan Probabilitas', 'MKK', 4, 'Semester 3', NULL, '2021-11-29 00:55:59', '2021-11-29 00:55:59'),
(17, '141342103', 'UI/UX Design', 'MKK', 4, 'Semester 3', NULL, '2021-11-29 00:56:54', '2021-11-29 00:56:54'),
(18, '141342104', 'Pemrograman 1', 'MKK', 4, 'Semester 3', NULL, '2021-11-29 00:57:25', '2021-11-29 00:57:25'),
(19, '141322101', 'IT Enterpreneurship', 'MKB', 2, 'Semester 3', NULL, '2021-11-29 00:58:07', '2021-11-29 00:58:07'),
(20, '141442101', 'Pemrograman 2', 'MKK', 4, 'Semester 4', NULL, '2021-11-29 01:29:14', '2021-11-29 01:44:32'),
(21, '141442103', 'Analisis dan Visualisasi Data', 'MKK', 4, 'Semester 4', NULL, '2021-11-29 01:51:27', '2021-11-29 01:51:38');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(14, '2021_11_22_050644_create_panduan_documents_table', 3),
(15, '2014_10_12_000000_create_users_table', 4),
(16, '2014_10_12_100000_create_password_resets_table', 4),
(17, '2019_08_19_000000_create_failed_jobs_table', 4),
(18, '2019_12_14_000001_create_personal_access_tokens_table', 4),
(19, '2021_10_03_023324_create_announcements_table', 4),
(20, '2021_10_03_023430_create_documents_table', 4),
(21, '2021_11_05_224713_create_kurikulum_table', 4),
(22, '2021_11_05_230133_create_staf_pengajar_table', 4),
(23, '2021_11_05_230418_create_tentang_table', 4),
(24, '2021_11_05_230538_create_tujuan_table', 4),
(25, '2021_11_05_230713_create_visi_misi_table', 4),
(26, '2021_11_17_024026_create_mk_bidangminat_table', 4),
(27, '2021_11_22_032126_create_panduans_table', 4),
(28, '2021_11_24_232910_create_profile_lulusan_table', 5),
(29, '2021_11_24_233321_create_pembimbing_akademik_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `mk_bidangminat`
--

CREATE TABLE `mk_bidangminat` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_mk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_mk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bidangminat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kelompok_mk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `semester` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sks` int(11) NOT NULL,
  `stream` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `panduans`
--

CREATE TABLE `panduans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `document` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `panduans`
--

INSERT INTO `panduans` (`id`, `title`, `document`, `created_at`, `updated_at`) VALUES
(6, 'Lembar Bimbingan Proposal', '1637793134_Lembar Bimbingan Proposal_template.docx', '2021-11-24 15:32:14', '2021-11-24 15:32:14');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pembimbing_akademik`
--

CREATE TABLE `pembimbing_akademik` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `dosen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mahasiswa` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `angkatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pembimbing_akademik`
--

INSERT INTO `pembimbing_akademik` (`id`, `dosen`, `mahasiswa`, `angkatan`, `created_at`, `updated_at`) VALUES
(2, 'Rahayu Amalia, M. Kom.', 'Muhammad Fajri Riki', '2018', '2021-11-24 20:35:57', '2021-11-24 20:35:57');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
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
-- Table structure for table `profile_lulusan`
--

CREATE TABLE `profile_lulusan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profile_lulusan`
--

INSERT INTO `profile_lulusan` (`id`, `no`, `nama`, `deskripsi`, `created_at`, `updated_at`) VALUES
(1, 'PL1', 'Konsultan Sistem Informasi', '<ol><li>Mampu menganalisis data dan kode program, kelemahan dan ancaman terhadap sistem serta memberikan solusi dan supervisi pada berbagai permasalah sistem informasi yang dihapadi organisai.</li><li>Mampu memeriksa dan menilai sistem informasi dari sisi proses bisnis, kualitas, integritas data dan informasi, kondisi hardware dan software, keberlanjutan serta mengidentifikasi resiko-resiko yang mungkin terjadi.</li><li>Mampu menganalisis, merancang dan mengajukan solusi, menginvestigasi kebutuhan sumber daya, serta mengimplementasikan sesuai kebutuhan organisasi.</li></ol>', '2021-11-24 19:23:20', '2021-11-24 19:23:20'),
(3, 'PL2', 'Data Analytics', '<ol><li>Mampu Mengumpulkan, mengolah serta menganalisa data yang besar untuk diproses menjadi informasi.</li><li>Mampu menemukan pola, melihat tren, mengubah data yang rumit menjadi mudah dibaca.</li><li>Mampu mengevaluasi akurasi dan efektivitas sumber data dan teknik pengumpulan data yang digunakan.</li><li>Mampu berkoordinasi dengan data engineers untuk mengelola, memantau, dan memelihara data.</li></ol>', '2021-11-24 19:53:52', '2021-11-24 19:53:52'),
(4, 'PL3', 'Pengembang Sistem Informasi', '<ol><li>Mampu menganalisis kebutuhan pengguna, menginvestigasi kebutuhan teknologi dan sistem informasi yang akan dikembangkan untuk mendukung tercapainya tujuan organisasi.</li><li>Mampu berperan dalam merancang, mengembangkan dan menguji kode program, mengimplementasikan, mengintegrasikan serta melakukan pemeliharaan sistem informasi.</li></ol>', '2021-11-24 19:56:50', '2021-11-24 19:56:50');

-- --------------------------------------------------------

--
-- Table structure for table `staf_pengajar`
--

CREATE TABLE `staf_pengajar` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nidn` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jabatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tentang`
--

CREATE TABLE `tentang` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `konten_tentang` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tentang`
--

INSERT INTO `tentang` (`id`, `konten_tentang`, `created_at`, `updated_at`) VALUES
(1, 'Program Studi Sistem Informasi Strata Satu STMIK Bina Darma didirikan pada tahun 1994 dengan nama Program Studi Manajemen Informatika berdasarkan SK Mendikbud nomor: 027/D/O/1994 tanggal 18 Mei 1994 dengan status \"terdaftar\" yang beralamat di Jalan A. Yani No. 3 Palembang. Dengan perkembangan ilmu, khususnya ilmu komputer, program studi Manajemen Informatika mengalami perubahan nama menjadi program studi Sistem Informasi berdasarkan SK Dirjen Dikti No. 70/DIKTI/Kep/2000 tertanggal 30 Mei 2000.', '2021-11-24 21:20:40', '2021-11-24 21:25:29');

-- --------------------------------------------------------

--
-- Table structure for table `tujuan`
--

CREATE TABLE `tujuan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `konten_tujuan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tujuan`
--

INSERT INTO `tujuan` (`id`, `konten_tujuan`, `created_at`, `updated_at`) VALUES
(1, '<ol><li>Menghasilkan sumber daya manusia yang mampu mengembangkan sistem informasi di berbagai bidang yang relevan.</li><li>Menghasilkan sumber daya manusia yang mampu menciptakan lapangan pekerjaan sendiri/berwiraswasta.</li><li>Menghasilkan lulusan yang berpotensi dan berkualitas yang cerdas dan berkarakter.</li><li>Menghasilkan sumber daya manusia yang mampu bersaing dengan lulusan lain baik secara regional, nasional, maupun internasional.</li><li>Menghasilkan penelitian yang berkualitas di bidang sistem informasi.</li><li>Melakukan berbagai wujud pengabdian yang berguna bagi masyarakat.</li></ol>', '2021-11-24 21:15:23', '2021-11-24 21:15:23');

-- --------------------------------------------------------

--
-- Table structure for table `users`
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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin Sistem Informasi', 'adminsi@binadarma.ac.id', NULL, '$2y$10$ylGC/.dKaMUzc9pJeirIAuEc0Wr9aIcCwLWqMNn58pqGvHgCgypBy', NULL, '2021-11-23 16:41:20', '2021-11-23 16:41:20');

-- --------------------------------------------------------

--
-- Table structure for table `visi_misi`
--

CREATE TABLE `visi_misi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `visi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `misi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visi_misi`
--

INSERT INTO `visi_misi` (`id`, `visi`, `misi`, `created_at`, `updated_at`) VALUES
(1, '<p>Kompetensi lulusan Program Studi Sistem Informasi meliputi 3 bidang keahlian (konsentrasi) yaitu Konsentrasi dalam Bidang Sistem Informasi Bisnis, Konsentrasi dalam bidang Sistem Penunjang Manajemen, Konsentrasi dalam bidang Teknologi Informasi.</p>', '<ol><li>Menyelenggarakan pendidikan di bidang Sistem Informasi dengan memperhatikan kurikulum yang berbasis kompetensi untuk menciptakan proses belajar mengajar dengan pelayanan pendidikan yang berkualitas internasional melalui pemanfaatan teknologi informasi.</li><li>Penyelenggaraan penelitian di bidang rekayasa sistem informasi yang berkualitas.</li><li>Penyelenggaraan pengabdian kepada masyarakat dengan penerapan hasil penelitian dan kajian bidang rekayasa sistem informasi.</li></ol>', '2021-11-24 21:06:44', '2021-11-24 21:06:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `announcements_title_unique` (`title`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documents_announcement_id_foreign` (`announcement_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `kurikulum`
--
ALTER TABLE `kurikulum`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mk_bidangminat`
--
ALTER TABLE `mk_bidangminat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `panduans`
--
ALTER TABLE `panduans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `pembimbing_akademik`
--
ALTER TABLE `pembimbing_akademik`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `profile_lulusan`
--
ALTER TABLE `profile_lulusan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staf_pengajar`
--
ALTER TABLE `staf_pengajar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tentang`
--
ALTER TABLE `tentang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tujuan`
--
ALTER TABLE `tujuan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `visi_misi`
--
ALTER TABLE `visi_misi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `announcements`
--
ALTER TABLE `announcements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kurikulum`
--
ALTER TABLE `kurikulum`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `mk_bidangminat`
--
ALTER TABLE `mk_bidangminat`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `panduans`
--
ALTER TABLE `panduans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `pembimbing_akademik`
--
ALTER TABLE `pembimbing_akademik`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `profile_lulusan`
--
ALTER TABLE `profile_lulusan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `staf_pengajar`
--
ALTER TABLE `staf_pengajar`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tentang`
--
ALTER TABLE `tentang`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tujuan`
--
ALTER TABLE `tujuan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `visi_misi`
--
ALTER TABLE `visi_misi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `documents`
--
ALTER TABLE `documents`
  ADD CONSTRAINT `documents_announcement_id_foreign` FOREIGN KEY (`announcement_id`) REFERENCES `announcements` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
