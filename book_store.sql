-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 14 Des 2023 pada 08.30
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
-- Database: `book_store`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `id_buku` varchar(20) NOT NULL,
  `judul_buku` varchar(100) NOT NULL,
  `id_pengarang` varchar(20) NOT NULL,
  `id_penerbit` varchar(20) NOT NULL,
  `id_kategori` varchar(20) NOT NULL,
  `stok` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `deskripsi` varchar(1000) NOT NULL,
  `gambar` varchar(200) NOT NULL,
  `deleted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`id_buku`, `judul_buku`, `id_pengarang`, `id_penerbit`, `id_kategori`, `stok`, `harga`, `deskripsi`, `gambar`, `deleted`) VALUES
('BU-1', 'Pemrograman 1', 'PG-1', 'PN-1', 'K-1', 7, 100000, 'Buku Pemrograman 1 handal', 'p-1.jpg', 0),
('BU-10', 'testtttt', 'PG-2', 'PN-1', 'K-5', 90, 100000, 'sajkdhkjashdsad', 'buku-jaringan-2.jpg', 1),
('BU-2', 'Pemrograman Lanjut', 'PG-2', 'PN-2', 'K-1', 10, 200000, 'Buku Pemrograman Lanjut', 'p-2.jpg', 0),
('BU-3', 'Jaringan 1', 'PG-1', 'PN-1', 'K-2', 23, 80000, 'Buku jaringan dasar', 'j-1.jpg', 0),
('BU-4', 'Jaringan komputer dan data', 'PG-2', 'PN-2', 'K-2', 12, 60000, 'Buku jaringan komputer dan data', 'j-2.jpg', 0),
('BU-5', 'Hardware 1', 'PG-1', 'PN-2', 'K-3', 23, 400000, 'Buku hardware software', 'h-1.jpg', 0),
('BU-6', 'treeeeeee', 'PG-1', 'PN-2', 'K-2', 20, 20000, 'testtttttt', 'avenger.jpg', 1),
('BU-7', 'testerrrrr', 'PG-2', 'PN-1', 'K-2', 12, 100000000, 'testssssss', 'avenger.jpg', 1),
('BU-8', 'Avengers', 'PG-3', 'PN-3', 'K-5', 1000, 90000, 'AVENGERS END GAME', 'avenger.jpg', 1),
('BU-9', 'avengerssssssss', 'PG-3', 'PN-1', 'K-1', 9000, 100000, 'aveg', 'avenger.jpg', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `customer`
--

CREATE TABLE `customer` (
  `id_customer` varchar(20) NOT NULL,
  `nama_customer` varchar(100) NOT NULL,
  `jk_customer` enum('Laki-Laki','Perempuan') NOT NULL,
  `alamat_customer` varchar(100) NOT NULL,
  `email_customer` varchar(20) NOT NULL,
  `telp_customer` varchar(50) NOT NULL,
  `deleted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `customer`
--

INSERT INTO `customer` (`id_customer`, `nama_customer`, `jk_customer`, `alamat_customer`, `email_customer`, `telp_customer`, `deleted`) VALUES
('CUS-1', 'user', 'Perempuan', 'user', 'user@gmail.com', '123', 0),
('CUS-657aa9d9ad95c', 'user1', 'Laki-Laki', 'user1', 'user1@gmail.com', '192038', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` varchar(20) NOT NULL,
  `nama_kategori` varchar(50) NOT NULL,
  `deleted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `deleted`) VALUES
('K-1', 'Pemrograman', 0),
('K-10', 'tester', 1),
('K-11', 'asdjkladjs', 1),
('K-2', 'Jaringan', 0),
('K-3', 'Hardware Software', 0),
('K-4', 'dghdf', 1),
('K-5', 'newww', 1),
('K-6', 'testssss', 1),
('K-7', 'ANIME', 1),
('K-8', 'testssss', 1),
('K-9', 'wer', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `penerbit`
--

CREATE TABLE `penerbit` (
  `id_penerbit` varchar(20) NOT NULL,
  `nama_penerbit` varchar(100) NOT NULL,
  `alamat_penerbit` varchar(100) NOT NULL,
  `email_penerbit` varchar(20) NOT NULL,
  `telp_penerbit` varchar(20) NOT NULL,
  `deleted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `penerbit`
--

INSERT INTO `penerbit` (`id_penerbit`, `nama_penerbit`, `alamat_penerbit`, `email_penerbit`, `telp_penerbit`, `deleted`) VALUES
('PN-1', 'Gramedia', 'Jogja Indonesia', 'g@m.c', '085555666555', 0),
('PN-2', 'SCOPUS', 'UK', 'scopus@gmail.com', '19216811', 0),
('PN-3', 'test', 'test', 'test@gmail.com', '333333', 1),
('PN-4', 'COba', 'jakarta', 'test@gmail.com', '123123', 1),
('PN-5', 'PENERBITTTTTT', 'PENERBITTT', 'PENERBIT@gmail.com', '129', 1),
('PN-6', 'testasdsdadasdsa', 'testasddads', 'tsets@gmail.com', '901283', 1),
('PN-7', 'sad', 'asd', 'dsadsa@gmail.com', '9032483242423432', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengarang`
--

CREATE TABLE `pengarang` (
  `id_pengarang` varchar(20) NOT NULL,
  `nama_pengarang` varchar(100) NOT NULL,
  `alamat_pengarang` varchar(255) NOT NULL,
  `email_pengarang` varchar(20) NOT NULL,
  `telp_pengarang` varchar(20) NOT NULL,
  `deleted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `pengarang`
--

INSERT INTO `pengarang` (`id_pengarang`, `nama_pengarang`, `alamat_pengarang`, `email_pengarang`, `telp_pengarang`, `deleted`) VALUES
('PG-1', 'Andre', 'Klaten', 'an@m.c', '086446446446', 0),
('PG-2', 'raihan', 'Prambanan', 'r@m.c', '082112112112', 0),
('PG-3', 'test', 'test', 'test@gmail.com', '5555544444', 1),
('PG-4', 'budi', 'semarang', 'budi@gmail.com', '099', 1),
('PG-5', 'BUDI', 'JKT', 'BUDI@gmail.com', '0980000', 1),
('PG-6', 'baru', 'beru', 'beru@gmail.com', '9238402132899123', 1),
('PG-7', 'budi', 'ubdassan', 'budi@gmail.com', '00000', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` varchar(20) NOT NULL,
  `id_customer` varchar(20) NOT NULL,
  `id_buku` varchar(20) NOT NULL,
  `tgl_transaksi` datetime NOT NULL,
  `jumlah` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `id_customer`, `id_buku`, `tgl_transaksi`, `jumlah`, `total`) VALUES
('TR-1', 'CUS-65787bb3dbdc5', 'BU-2', '2023-12-12 22:26:54', 1, 200000),
('TR-2', 'CUS-1', 'BU-3', '2023-12-14 14:06:33', 1, 80000),
('TR-3', 'CUS-657aa9d9ad95c', 'BU-2', '2023-12-14 14:08:26', 1, 200000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `tipe_user` enum('Customer','Admin','Petugas') NOT NULL,
  `id_customer` varchar(20) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`username`, `password`, `tipe_user`, `id_customer`, `deleted`) VALUES
('admin', '123', 'Admin', NULL, 0),
('petugas', '123', 'Petugas', NULL, 0),
('user', 'user', 'Customer', 'CUS-1', 0),
('user1', 'user1', 'Customer', 'CUS-657aa9d9ad95c', 0);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id_buku`),
  ADD KEY `FK_buku_pengarang` (`id_pengarang`) USING BTREE,
  ADD KEY `FK_buku_penerbit` (`id_penerbit`) USING BTREE,
  ADD KEY `FK_buku_kategori` (`id_kategori`) USING BTREE;

--
-- Indeks untuk tabel `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id_customer`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `penerbit`
--
ALTER TABLE `penerbit`
  ADD PRIMARY KEY (`id_penerbit`);

--
-- Indeks untuk tabel `pengarang`
--
ALTER TABLE `pengarang`
  ADD PRIMARY KEY (`id_pengarang`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD KEY `FK_transaksi_customer` (`id_customer`) USING BTREE,
  ADD KEY `FK_transaksi_buku` (`id_buku`) USING BTREE;

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD KEY `FK_user_customer` (`id_customer`) USING BTREE;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD CONSTRAINT `FK_buku_kategori` FOREIGN KEY (`id_kategori`) REFERENCES `kategori` (`id_kategori`),
  ADD CONSTRAINT `FK_buku_penerbit` FOREIGN KEY (`id_penerbit`) REFERENCES `penerbit` (`id_penerbit`),
  ADD CONSTRAINT `FK_buku_pengarang` FOREIGN KEY (`id_pengarang`) REFERENCES `pengarang` (`id_pengarang`);

--
-- Ketidakleluasaan untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `FK_transaksi_buku` FOREIGN KEY (`id_buku`) REFERENCES `buku` (`id_buku`),
  ADD CONSTRAINT `FK_transaksi_customer` FOREIGN KEY (`id_customer`) REFERENCES `customer` (`id_customer`);

--
-- Ketidakleluasaan untuk tabel `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `FK_user_customer` FOREIGN KEY (`id_customer`) REFERENCES `customer` (`id_customer`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
