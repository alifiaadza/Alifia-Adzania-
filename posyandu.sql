-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 19 Des 2021 pada 13.41
-- Versi server: 10.4.20-MariaDB
-- Versi PHP: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `posyandu`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `anak`
--

CREATE TABLE `anak` (
  `id_anak` int(11) NOT NULL,
  `nik_anak` varchar(16) NOT NULL,
  `nama_anak` varchar(50) NOT NULL,
  `tempat_lahir` varchar(30) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jenis_kelamin` enum('Laki-Laki','Perempuan') NOT NULL,
  `ibu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `anak`
--

INSERT INTO `anak` (`id_anak`, `nik_anak`, `nama_anak`, `tempat_lahir`, `tgl_lahir`, `jenis_kelamin`, `ibu_id`) VALUES
(2, '0087165328926439', 'Ayla Azza Permewari', 'Malang', '2021-12-10', 'Perempuan', 4),
(3, '0098723671086298', 'Syifa\'ul Jinan', 'Semarang', '2020-02-06', 'Laki-Laki', 2),
(4, '0081992754189297', 'Fauziah Khomariah', 'NTT', '2017-08-18', 'Perempuan', 5),
(5, '5091890038163100', 'Alhanna Maryam Abdulhamid Ezzo ', 'Amsterdam, US', '2018-11-07', 'Perempuan', 6),
(6, '0098725789165289', 'Rizky Ananda Kamil', 'Jogjakarta', '2019-03-26', 'Laki-Laki', 3),
(7, '0087678200187692', 'Talina Naila Azzahra', 'Malang', '2016-07-09', 'Perempuan', 7);

-- --------------------------------------------------------

--
-- Struktur dari tabel `bidan`
--

CREATE TABLE `bidan` (
  `id_bidan` int(11) NOT NULL,
  `nama_bidan` varchar(50) NOT NULL,
  `tempat_lahir` varchar(30) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `no_hp` varchar(13) NOT NULL,
  `pendidikan_terakhir` varchar(30) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `bidan`
--

INSERT INTO `bidan` (`id_bidan`, `nama_bidan`, `tempat_lahir`, `tanggal_lahir`, `no_hp`, `pendidikan_terakhir`, `user_id`) VALUES
(1, 'ana elsa fia', 'Jakarta', '1999-01-01', '0812-0000-112', 'SMA', 2),
(2, 'amanda', 'Malang', '2000-07-29', '0896-0800-419', 'S1', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ibu`
--

CREATE TABLE `ibu` (
  `id_ibu` int(11) NOT NULL,
  `nama_ibu` varchar(50) NOT NULL,
  `tempat_lahir` varchar(30) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `gol_dar` varchar(2) NOT NULL,
  `pendidikan` enum('Tidak Sekolah','SD','SMP','SMA','SMK','Perguruan Tinggi') NOT NULL,
  `pekerjaan` varchar(30) NOT NULL,
  `nama_suami` varchar(50) NOT NULL,
  `tempat_lahir_suami` varchar(30) NOT NULL,
  `tgl_lahir_suami` date NOT NULL,
  `pendidikan_suami` enum('Tidak Sekolah','SD','SMP','SMA','SMK','Perguruan Tinggi') NOT NULL,
  `pekerjaan_suami` varchar(30) NOT NULL,
  `alamat` text NOT NULL,
  `kecamatan` varchar(30) NOT NULL,
  `kota` varchar(30) NOT NULL,
  `no_tlp` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ibu`
--

INSERT INTO `ibu` (`id_ibu`, `nama_ibu`, `tempat_lahir`, `tgl_lahir`, `gol_dar`, `pendidikan`, `pekerjaan`, `nama_suami`, `tempat_lahir_suami`, `tgl_lahir_suami`, `pendidikan_suami`, `pekerjaan_suami`, `alamat`, `kecamatan`, `kota`, `no_tlp`) VALUES
(2, 'Linda', 'Karawang', '1987-09-20', 'O', 'SMA', 'Ibu Rumah Tangga', 'Waluyu Santoso', 'Blora', '1985-03-08', 'SMK', 'Karyawan Swasta', 'Jl. Sukapura Jaya RT 04/010', 'Cilincing', 'Jakarta Utara', ''),
(3, 'saya alya', 'jogjakarta', '1999-01-14', 'B', '', 'dokter hewan', 'dia muhdi', 'jakarta', '1995-12-17', '', 'dokter hewan', 'jl. indah asri', 'bogor', 'bogor', '0180-9001-118'),
(4, 'Nurul', 'Surayaba', '2001-12-17', 'B+', 'SMA', 'Ibu Rumah Tangga', 'Kholik', 'Malang', '2000-12-17', 'SMA', 'Kurir', 'Jl. Raya Langsep', 'Wonokromo', 'Surabaya', '0853-6654-290'),
(5, 'Endah', 'Jombang', '1996-05-04', 'A', '', 'Guru SMA', 'Sutrisno', 'Jombang', '1990-09-15', '', 'Arsitek', 'Jl. suyakarto ', 'Ngliyep', 'Jombang', '0814-5829-640'),
(6, 'Ezza Ramadhantya', 'Malang', '2000-11-07', 'O', '', 'Translator Guide ', 'Ezzo Abdulhamid', 'Tripoli, Lebanon', '2000-01-12', '', 'Penceramah/Pembicara islamic', 'Jl. Candi VA', 'Sukum', 'Malang', '0895-3971-643'),
(8, 'Sulamah', 'Malang', '1976-02-07', 'O', 'SMP', 'Ibu RT', 'Subandi', 'Malang', '1970-09-13', 'SMA', 'Bangunan', 'Jl. Candi VA No. 81', 'Sukun', 'Malang', '0819-3791-959');

-- --------------------------------------------------------

--
-- Struktur dari tabel `imunisasi`
--

CREATE TABLE `imunisasi` (
  `id_imunisasi` int(11) NOT NULL,
  `anak_id` int(11) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jenis_kelamin` enum('Laki-Laki','Perempuan') NOT NULL,
  `ibu_id` int(11) NOT NULL,
  `tgl_skrng` date NOT NULL,
  `usia` int(11) NOT NULL,
  `imunisasi` varchar(30) NOT NULL,
  `vit_a` enum('Merah','Biru') NOT NULL,
  `ket` text NOT NULL,
  `created_by` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `imunisasi`
--

INSERT INTO `imunisasi` (`id_imunisasi`, `anak_id`, `tgl_lahir`, `jenis_kelamin`, `ibu_id`, `tgl_skrng`, `usia`, `imunisasi`, `vit_a`, `ket`, `created_by`) VALUES
(1, 1, '2012-06-06', 'Perempuan', 2, '2019-02-12', 84, 'flu', 'Merah', '', 0),
(3, 1, '2012-06-06', 'Perempuan', 2, '2021-02-12', 108, 'flu', 'Merah', '', 0),
(4, 4, '2017-08-18', 'Perempuan', 5, '2021-12-24', 52, 'sinovac', 'Merah', 'kekebalan tubuh', 1),
(5, 5, '2018-11-07', 'Perempuan', 6, '2021-12-17', 37, 'campak', 'Merah', 'Si kecil sehat dan dalam proses pertumbuhan, jadi untuk bunda Ezza jangan lupa untuk memberi makanan yang selalu sehat dan banyak protein juga vitamin nya yaa  ^-^', 1),
(6, 5, '2018-11-07', 'Perempuan', 6, '2021-12-19', 37, 'campak', 'Biru', '---', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `login_attempts`
--

CREATE TABLE `login_attempts` (
  `user_id` int(11) NOT NULL,
  `date_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `login_attempts`
--

INSERT INTO `login_attempts` (`user_id`, `date_time`) VALUES
(1, '2021-01-30 10:23:29'),
(1, '2021-01-30 10:34:46'),
(1, '2021-01-30 10:43:56'),
(1, '2021-01-31 02:28:21'),
(1, '2021-01-31 03:22:35'),
(1, '2021-01-31 09:10:44'),
(1, '2021-01-31 09:26:10'),
(1, '2021-01-31 09:29:54'),
(1, '2021-01-31 09:30:32'),
(1, '2021-02-03 01:44:40'),
(1, '2021-02-05 07:31:28'),
(2, '2021-02-07 11:30:13'),
(1, '2021-02-07 12:51:05'),
(2, '2021-02-07 01:55:44'),
(1, '2021-02-07 01:56:42'),
(1, '2021-02-07 02:20:01'),
(2, '2021-02-07 02:26:00'),
(2, '2021-02-07 05:10:55'),
(1, '2021-02-07 05:12:08'),
(2, '2021-02-07 05:20:27'),
(1, '2021-02-07 05:21:00'),
(1, '2021-02-07 08:28:31'),
(1, '2021-02-07 09:37:56'),
(1, '2021-02-11 03:17:12'),
(1, '2021-02-11 03:21:59'),
(1, '2021-02-11 09:34:17'),
(1, '2021-02-11 09:50:11'),
(1, '2021-02-12 07:32:48'),
(1, '2021-02-12 10:15:28'),
(1, '2021-02-12 10:44:02'),
(1, '2021-12-16 09:15:00'),
(1, '2021-12-16 09:22:22'),
(1, '2021-12-16 09:48:57'),
(2, '2021-12-17 11:31:56'),
(1, '2021-12-17 11:32:21'),
(1, '2021-12-17 11:38:45'),
(1, '2021-12-17 11:41:48'),
(1, '2021-12-17 12:47:37'),
(1, '2021-12-17 06:53:55'),
(1, '2021-12-18 08:33:15'),
(1, '2021-12-18 09:09:01'),
(1, '2021-12-18 09:47:48'),
(1, '2021-12-18 11:25:20'),
(1, '2021-12-19 07:34:30'),
(3, '2021-12-19 07:38:49'),
(1, '2021-12-19 07:39:24');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penimbangan`
--

CREATE TABLE `penimbangan` (
  `id_penimbangan` int(11) NOT NULL,
  `anak_id` int(11) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jenis_kelamin` enum('Laki-Laki','Perempuan') NOT NULL,
  `ibu_id` int(11) NOT NULL,
  `tgl_skrng` date NOT NULL,
  `usia` int(11) NOT NULL,
  `bb` double NOT NULL,
  `tb` double NOT NULL,
  `deteksi` enum('Sesuai','Tidak Sesuai') NOT NULL,
  `ket` text NOT NULL,
  `created_by` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `penimbangan`
--

INSERT INTO `penimbangan` (`id_penimbangan`, `anak_id`, `tgl_lahir`, `jenis_kelamin`, `ibu_id`, `tgl_skrng`, `usia`, `bb`, `tb`, `deteksi`, `ket`, `created_by`) VALUES
(1, 1, '2012-06-06', 'Perempuan', 2, '2021-02-05', 106, 4, 4, 'Sesuai', '', 0),
(3, 1, '2012-06-06', 'Perempuan', 2, '2019-01-11', 84, -4, 5, 'Sesuai', '', 0),
(4, 1, '2012-06-06', 'Perempuan', 2, '2019-01-11', 84, -4, 5, 'Sesuai', '', 0),
(5, 1, '2012-06-06', 'Perempuan', 2, '2021-02-12', 108, 9.5, 64, 'Sesuai', '', 0),
(6, 5, '2018-11-07', 'Perempuan', 6, '2021-12-08', 37, 20, 100, 'Sesuai', 'sehat', 1),
(7, 5, '2018-11-07', 'Perempuan', 6, '2021-12-18', 37, 15, 88, 'Sesuai', 'sip', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `petugas`
--

CREATE TABLE `petugas` (
  `id_petugas` int(11) NOT NULL,
  `nama_petugas` varchar(50) NOT NULL,
  `tempat_lahir` varchar(30) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `no_hp` varchar(14) NOT NULL,
  `jabatan` enum('Ketua','Bendahara','Sekretaris','Anggota') NOT NULL,
  `pendidikan_terakhir` varchar(30) NOT NULL,
  `lama_kerja` int(11) NOT NULL,
  `tugas_pokok` text NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `petugas`
--

INSERT INTO `petugas` (`id_petugas`, `nama_petugas`, `tempat_lahir`, `tgl_lahir`, `no_hp`, `jabatan`, `pendidikan_terakhir`, `lama_kerja`, `tugas_pokok`, `user_id`) VALUES
(1, 'Putri Asmara', 'Jakarta', '1999-07-09', '0831-3000-9123', 'Bendahara', 'SMA', 5, 'Mengkoordinir bagian keuangan ', 4),
(2, 'Alifia ', 'Malang', '2000-11-07', '0895-3971-6438', 'Ketua', 'S1', 9, 'Menghandle', 1),
(4, 'Afaf Anggraini', 'Malang', '1999-01-01', '0896-5578-2578', 'Anggota', 'S1', 3, 'Mengawasi ', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_users` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level_id` int(1) NOT NULL,
  `is_active` int(1) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_users`, `name`, `username`, `image`, `password`, `level_id`, `is_active`, `date_created`) VALUES
(1, 'Alifia Adzania', 'alifia', 'fia.jpg', 'qwerty', 1, 1, 0),
(2, 'Lutfiana', 'fia', 'icon-02.png', 'qwerty', 2, 1, 111),
(3, 'amanda', 'anda', '', 'qwer', 0, 1, 12),
(4, 'ecco', 'ekoy', '', 'asdf', 20, 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users_level`
--

CREATE TABLE `users_level` (
  `id_level` int(11) NOT NULL,
  `level` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users_level`
--

INSERT INTO `users_level` (`id_level`, `level`) VALUES
(1, 'Petugas'),
(2, 'Bidan'),
(3, 'Ibu');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `anak`
--
ALTER TABLE `anak`
  ADD PRIMARY KEY (`id_anak`),
  ADD UNIQUE KEY `ibu_id` (`ibu_id`);

--
-- Indeks untuk tabel `bidan`
--
ALTER TABLE `bidan`
  ADD PRIMARY KEY (`id_bidan`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indeks untuk tabel `ibu`
--
ALTER TABLE `ibu`
  ADD PRIMARY KEY (`id_ibu`);

--
-- Indeks untuk tabel `imunisasi`
--
ALTER TABLE `imunisasi`
  ADD PRIMARY KEY (`id_imunisasi`);

--
-- Indeks untuk tabel `penimbangan`
--
ALTER TABLE `penimbangan`
  ADD PRIMARY KEY (`id_penimbangan`);

--
-- Indeks untuk tabel `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id_petugas`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_users`),
  ADD UNIQUE KEY `level_id` (`level_id`);

--
-- Indeks untuk tabel `users_level`
--
ALTER TABLE `users_level`
  ADD PRIMARY KEY (`id_level`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `anak`
--
ALTER TABLE `anak`
  MODIFY `id_anak` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `bidan`
--
ALTER TABLE `bidan`
  MODIFY `id_bidan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `ibu`
--
ALTER TABLE `ibu`
  MODIFY `id_ibu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `imunisasi`
--
ALTER TABLE `imunisasi`
  MODIFY `id_imunisasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `penimbangan`
--
ALTER TABLE `penimbangan`
  MODIFY `id_penimbangan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `petugas`
--
ALTER TABLE `petugas`
  MODIFY `id_petugas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_users` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21203;

--
-- AUTO_INCREMENT untuk tabel `users_level`
--
ALTER TABLE `users_level`
  MODIFY `id_level` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
