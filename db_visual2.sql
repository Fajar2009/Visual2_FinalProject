-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 28 Jun 2023 pada 10.49
-- Versi server: 10.4.25-MariaDB
-- Versi PHP: 8.0.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_visual2`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `hubungan`
--

CREATE TABLE `hubungan` (
  `Id` int(10) NOT NULL,
  `Id_Siswa` int(10) NOT NULL,
  `Id_Ortu` int(10) NOT NULL,
  `Status_Hub` int(5) NOT NULL,
  `Keterangan` int(5) NOT NULL,
  `Status_Ortu` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas`
--

CREATE TABLE `kelas` (
  `Id` int(10) NOT NULL,
  `Nama` varchar(30) NOT NULL,
  `Jenis` int(5) NOT NULL,
  `Jurusan` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `ortu`
--

CREATE TABLE `ortu` (
  `Id` int(10) NOT NULL,
  `NIK` int(20) NOT NULL,
  `Nama` varchar(30) NOT NULL,
  `Pendidikan` varchar(15) NOT NULL,
  `Pekerjaan` varchar(15) NOT NULL,
  `Jenis_Kelamin` int(5) NOT NULL,
  `Alamat` varchar(40) NOT NULL,
  `Telpon` int(15) NOT NULL,
  `Agama` int(5) NOT NULL,
  `Is_Active` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `poin`
--

CREATE TABLE `poin` (
  `Id` int(10) NOT NULL,
  `Nama_Poin` varchar(30) NOT NULL,
  `Bobot` int(5) NOT NULL,
  `Jenis` int(5) NOT NULL,
  `Status` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `semester`
--

CREATE TABLE `semester` (
  `Id` int(10) NOT NULL,
  `Id_Siswa` int(10) NOT NULL,
  `Id_Poin` int(10) NOT NULL,
  `Id_Wali` int(10) NOT NULL,
  `Id_Ortu` int(10) NOT NULL,
  `Id_Kelas` int(10) NOT NULL,
  `Tanggal` date NOT NULL,
  `Semester` int(5) NOT NULL,
  `Status` int(5) NOT NULL,
  `Tingkat_Kelas` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `Id` int(10) NOT NULL,
  `NIS` int(20) NOT NULL,
  `NISN` int(20) NOT NULL,
  `Nama_Siswa` varchar(30) NOT NULL,
  `NIK` int(20) NOT NULL,
  `Tempat_Lahir` varchar(15) NOT NULL,
  `Tanggal_Lahir` date NOT NULL,
  `Jenis_Kelamin` enum('Laki-Laki','Perempuan','','') NOT NULL,
  `Alamat` varchar(40) NOT NULL,
  `Telp` int(15) NOT NULL,
  `hp` int(15) NOT NULL,
  `Status` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `Id` int(10) NOT NULL,
  `Username` varchar(30) NOT NULL,
  `Password` varchar(30) NOT NULL,
  `Level` int(5) NOT NULL,
  `Status` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `walikelas`
--

CREATE TABLE `walikelas` (
  `Id` int(10) NOT NULL,
  `NIK` int(20) NOT NULL,
  `Nama` varchar(30) NOT NULL,
  `Jenis_Kelamin` enum('Laki-Laki','Perempuan') NOT NULL,
  `Alamat` varchar(40) NOT NULL,
  `Telp` int(15) NOT NULL,
  `Status` int(5) NOT NULL,
  `Pendidikan` int(5) NOT NULL,
  `Matpel` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `hubungan`
--
ALTER TABLE `hubungan`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `ID_siswa` (`Id_Siswa`),
  ADD KEY `ID_Ortu` (`Id_Ortu`);

--
-- Indeks untuk tabel `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`Id`);

--
-- Indeks untuk tabel `ortu`
--
ALTER TABLE `ortu`
  ADD PRIMARY KEY (`Id`);

--
-- Indeks untuk tabel `poin`
--
ALTER TABLE `poin`
  ADD PRIMARY KEY (`Id`);

--
-- Indeks untuk tabel `semester`
--
ALTER TABLE `semester`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Id_Kelas` (`Id_Kelas`),
  ADD KEY `Id_Ortu` (`Id_Ortu`),
  ADD KEY `Id_Poin` (`Id_Poin`),
  ADD KEY `Id_Siswa` (`Id_Siswa`),
  ADD KEY `Id_Wali` (`Id_Wali`);

--
-- Indeks untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`Id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`Id`);

--
-- Indeks untuk tabel `walikelas`
--
ALTER TABLE `walikelas`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `hubungan`
--
ALTER TABLE `hubungan`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kelas`
--
ALTER TABLE `kelas`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `ortu`
--
ALTER TABLE `ortu`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `poin`
--
ALTER TABLE `poin`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `semester`
--
ALTER TABLE `semester`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `siswa`
--
ALTER TABLE `siswa`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `walikelas`
--
ALTER TABLE `walikelas`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `hubungan`
--
ALTER TABLE `hubungan`
  ADD CONSTRAINT `ID_Ortu` FOREIGN KEY (`Id_Ortu`) REFERENCES `ortu` (`Id`),
  ADD CONSTRAINT `ID_siswa` FOREIGN KEY (`Id_Siswa`) REFERENCES `siswa` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `semester`
--
ALTER TABLE `semester`
  ADD CONSTRAINT `semester_ibfk_1` FOREIGN KEY (`Id_Kelas`) REFERENCES `kelas` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `semester_ibfk_2` FOREIGN KEY (`Id_Ortu`) REFERENCES `ortu` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `semester_ibfk_3` FOREIGN KEY (`Id_Poin`) REFERENCES `poin` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `semester_ibfk_4` FOREIGN KEY (`Id_Siswa`) REFERENCES `siswa` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `semester_ibfk_5` FOREIGN KEY (`Id_Wali`) REFERENCES `walikelas` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
