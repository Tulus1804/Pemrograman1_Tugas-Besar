-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 28 Jun 2019 pada 08.09
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbwebsekolah`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_karyawan`
--

CREATE TABLE `tb_karyawan` (
  `nik` int(11) NOT NULL,
  `foto` varchar(50) NOT NULL,
  `nama_karyawan` varchar(45) NOT NULL,
  `jk` enum('L','P') NOT NULL,
  `tmp_lahir` varchar(25) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `status` enum('ketua','guru','staf') NOT NULL,
  `mengajar` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `no_hp` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_karyawan`
--

INSERT INTO `tb_karyawan` (`nik`, `foto`, `nama_karyawan`, `jk`, `tmp_lahir`, `tgl_lahir`, `status`, `mengajar`, `alamat`, `no_hp`) VALUES
(33080696, 'client1.png', 'Bowo Susilo', 'L', 'Pekalongan', '1996-06-08', 'guru', 'Sosiologi', 'Kajen, Kab. Pekalongan', '085742215630'),
(33101191, 'man1.jpg', 'Bambang Sujiwo', 'L', 'Pekalongan', '1991-10-11', 'guru', 'Sosiologi', 'Kajen, Kab. Pekalongan', '085882487354'),
(33101197, 'team-member.jpg', 'Susu Susi', 'P', 'Bogor', '1997-10-11', 'guru', 'Biologi', 'Sragi, Pekalongan', '085223658987'),
(33180896, 'man3.jpg', 'Ussop', 'L', 'Semarang', '1996-08-17', 'guru', 'Penjasorkes', 'Buaran, Pekalongan', '082349756585');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kategoripost`
--

CREATE TABLE `tb_kategoripost` (
  `id_kat` int(11) NOT NULL,
  `kategori_post` varchar(30) NOT NULL,
  `slug_katpost` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_kategoripost`
--

INSERT INTO `tb_kategoripost` (`id_kat`, `kategori_post`, `slug_katpost`) VALUES
(3, 'Prestasi Sekolah', 'PrestasiSekolah'),
(4, 'Kegiatan Sekolah', 'KegiatanSekolah'),
(5, 'Kesehatan', 'Kesehatan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_menu`
--

CREATE TABLE `tb_menu` (
  `id_menu` int(11) NOT NULL,
  `menu` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_menu`
--

INSERT INTO `tb_menu` (`id_menu`, `menu`) VALUES
(1, 'Profil Sekolah'),
(2, 'Visi & Misi'),
(3, 'Struktur Organisasi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_menudetail`
--

CREATE TABLE `tb_menudetail` (
  `id_md` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL,
  `isi_menu` text NOT NULL,
  `slug_menu` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_menudetail`
--

INSERT INTO `tb_menudetail` (`id_md`, `id_menu`, `isi_menu`, `slug_menu`) VALUES
(1, 1, 'Isi menu profil&nbsp;sekolah', 'profil'),
(2, 2, 'Isi menu visi dan misi', 'visimisi'),
(3, 3, 'Isi menu struktur organisasi', 'struktur-organisasi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_post`
--

CREATE TABLE `tb_post` (
  `id_post` int(11) NOT NULL,
  `id_kat` int(11) NOT NULL,
  `tgl_post` date NOT NULL,
  `judul` varchar(100) NOT NULL,
  `slug_judul` varchar(200) NOT NULL,
  `header` varchar(20) NOT NULL,
  `isi_post` text NOT NULL,
  `id_user` char(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_post`
--

INSERT INTO `tb_post` (`id_post`, `id_kat`, `tgl_post`, `judul`, `slug_judul`, `header`, `isi_post`, `id_user`) VALUES
(4, 3, '2019-06-24', 'Siswa Berprestasi', 'SiswaBerprestasi', 'slider_one.jpg', 'Siswa Prestasi Mumpuni&nbsp;Siswa Prestasi Mumpuni&nbsp;Siswa Prestasi Mumpuni&nbsp;Siswa Prestasi Mumpuni', 'ID001'),
(5, 5, '2019-06-24', 'Siswa Sehat & Kuat', 'SiswaSehat&Kuat', 'accordion1.png', '<b><i>Kesehatan Siswa Kesehatan Siswa&nbsp; Kesehatan Siswa&nbsp; Kesehatan Siswa&nbsp;</i></b>', 'ID001');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_siswa`
--

CREATE TABLE `tb_siswa` (
  `nis` varchar(10) NOT NULL,
  `foto` varchar(50) NOT NULL,
  `nama_siswa` varchar(45) NOT NULL,
  `jk` enum('L','P') NOT NULL,
  `tmp_lahir` varchar(25) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `alamat` text NOT NULL,
  `tahun_masuk` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_siswa`
--

INSERT INTO `tb_siswa` (`nis`, `foto`, `nama_siswa`, `jk`, `tmp_lahir`, `tgl_lahir`, `alamat`, `tahun_masuk`) VALUES
('181530001', 'boy2.png', 'Adi Al-Fatih', 'L', 'Pekalongan', '2000-02-20', 'Kajen, Kab. Pekalongan', 2017),
('181530015', 'girl.png', 'Himatul Birriyah', 'P', 'Pekalongan', '2000-05-31', 'Wonopringgo, Pekalongan', 2017),
('181530031', 'boy.png', 'Nur Ikhsan', 'L', 'Pekalongan', '2000-02-29', 'Wiradesa, Pekalongan', 2017);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_slider`
--

CREATE TABLE `tb_slider` (
  `id_slider` int(11) NOT NULL,
  `slider` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_slider`
--

INSERT INTO `tb_slider` (`id_slider`, `slider`) VALUES
(5, 'slider_one.jpg'),
(6, 'accordion1.png'),
(7, 'gallery2.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` char(5) NOT NULL,
  `nama_user` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `nama_user`, `password`) VALUES
('ID001', 'adm01', '4afcb778263838fb53840ab963b72fd8'),
('ID002', 'adm02', '5455b6e8ba41f82a966dcbdc23bea486');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_karyawan`
--
ALTER TABLE `tb_karyawan`
  ADD PRIMARY KEY (`nik`);

--
-- Indeks untuk tabel `tb_kategoripost`
--
ALTER TABLE `tb_kategoripost`
  ADD PRIMARY KEY (`id_kat`);

--
-- Indeks untuk tabel `tb_menu`
--
ALTER TABLE `tb_menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indeks untuk tabel `tb_menudetail`
--
ALTER TABLE `tb_menudetail`
  ADD PRIMARY KEY (`id_md`,`id_menu`);

--
-- Indeks untuk tabel `tb_post`
--
ALTER TABLE `tb_post`
  ADD PRIMARY KEY (`id_post`,`id_kat`,`id_user`);

--
-- Indeks untuk tabel `tb_siswa`
--
ALTER TABLE `tb_siswa`
  ADD PRIMARY KEY (`nis`);

--
-- Indeks untuk tabel `tb_slider`
--
ALTER TABLE `tb_slider`
  ADD PRIMARY KEY (`id_slider`);

--
-- Indeks untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_kategoripost`
--
ALTER TABLE `tb_kategoripost`
  MODIFY `id_kat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tb_menu`
--
ALTER TABLE `tb_menu`
  MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tb_menudetail`
--
ALTER TABLE `tb_menudetail`
  MODIFY `id_md` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tb_post`
--
ALTER TABLE `tb_post`
  MODIFY `id_post` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tb_slider`
--
ALTER TABLE `tb_slider`
  MODIFY `id_slider` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
