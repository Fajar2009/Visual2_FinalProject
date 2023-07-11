-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 11 Jul 2023 pada 14.26
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
  `Status_Hub` varchar(15) NOT NULL,
  `Keterangan` varchar(15) NOT NULL,
  `Status_Ortu` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `hubungan`
--

INSERT INTO `hubungan` (`Id`, `Id_Siswa`, `Id_Ortu`, `Status_Hub`, `Keterangan`, `Status_Ortu`) VALUES
(1, 1, 2, 'Kandung', 'Saudara', 'Hidup '),
(2, 2, 3, 'Kandung', 'Ayah', 'Hidup');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas`
--

CREATE TABLE `kelas` (
  `Id` int(10) NOT NULL,
  `Nama` varchar(30) NOT NULL,
  `Jurusan` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kelas`
--

INSERT INTO `kelas` (`Id`, `Nama`, `Jurusan`) VALUES
(1, 'X 2020', 'Bahasa'),
(2, 'XII  MIPA 2 2020', 'Umum'),
(3, 'XII MIPA 1 2021', 'Umum');

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
  `Jenis_Kelamin` varchar(10) NOT NULL,
  `Alamat` varchar(40) NOT NULL,
  `Telpon` int(15) NOT NULL,
  `Agama` varchar(10) NOT NULL,
  `Is_Active` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `ortu`
--

INSERT INTO `ortu` (`Id`, `NIK`, `Nama`, `Pendidikan`, `Pekerjaan`, `Jenis_Kelamin`, `Alamat`, `Telpon`, `Agama`, `Is_Active`) VALUES
(2, 212121, 'Devina agnes', 'S1', 'Guru', 'Perempuan', 'JLskdhksjdh', 989, 'Kristen', 'Tidak Aktif '),
(3, 132323, 'Joko', 'S2', 'Pengusaha', 'Laki-Laki', 'Jl cirebon', 78687, 'Islam', 'Aktif'),
(4, 23652, 'Wijaya', 'S3', 'Dosen', 'Laki-Laki', 'Jl batu', 6557, 'Budha', 'Aktif');

-- --------------------------------------------------------

--
-- Struktur dari tabel `poin`
--

CREATE TABLE `poin` (
  `Id` int(10) NOT NULL,
  `Nama_Poin` varchar(30) NOT NULL,
  `Bobot` int(5) NOT NULL,
  `Jenis` varchar(15) NOT NULL,
  `Status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `poin`
--

INSERT INTO `poin` (`Id`, `Nama_Poin`, `Bobot`, `Jenis`, `Status`) VALUES
(1, 'Bolos', 20, 'Pelanggaran', 'Aktif'),
(2, 'Juara 1 kelas ', 22, 'Prestasi', 'Aktif');

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
  `Semester` varchar(15) NOT NULL,
  `Status` varchar(15) NOT NULL,
  `Tingkat_Kelas` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `semester`
--

INSERT INTO `semester` (`Id`, `Id_Siswa`, `Id_Poin`, `Id_Wali`, `Id_Ortu`, `Id_Kelas`, `Tanggal`, `Semester`, `Status`, `Tingkat_Kelas`) VALUES
(1, 1, 2, 1, 2, 3, '2023-07-11', 'Ganjil', 'Aktif', 'XII ');

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
  `Jenis_Kelamin` enum('Laki-Laki','Perempuan') NOT NULL,
  `Alamat` varchar(40) NOT NULL,
  `Telp` int(15) NOT NULL,
  `hp` int(15) NOT NULL,
  `Status` enum('Aktif','Tidak Aktif') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`Id`, `NIS`, `NISN`, `Nama_Siswa`, `NIK`, `Tempat_Lahir`, `Tanggal_Lahir`, `Jenis_Kelamin`, `Alamat`, `Telp`, `hp`, `Status`) VALUES
(1, 3232323, 464545, 'Fajar', 3545657, 'bjb', '2023-07-01', 'Laki-Laki', 'jl as amsa', 32323, 434344, 'Aktif'),
(2, 1234567, 45678, 'siti', 2147483647, 'mtp', '1899-12-30', 'Perempuan', 'dfdfd', 3434, 787878, 'Tidak Aktif'),
(4, 666, 555, 'Fajar', 333, 'dsdsd', '2023-07-07', 'Laki-Laki', 'fdsds', 878, 43434, 'Aktif'),
(6, 12232, 434343, 'jafar', 3232323, 'vcfgffg', '2023-07-19', 'Perempuan', 'gfgfgf', 43434, 44545, 'Aktif');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `Id` int(10) NOT NULL,
  `Username` varchar(30) NOT NULL,
  `Password` varchar(30) NOT NULL,
  `Level` varchar(10) NOT NULL,
  `Status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`Id`, `Username`, `Password`, `Level`, `Status`) VALUES
(1, 'Udin Petot', 'jaka', 'Walikelas', 'Tidak Akti'),
(2, 'Wijaya', '22433', 'Admin', 'Aktif'),
(3, 'Jafar', '321', 'Guru', 'Aktif');

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
  `Status` varchar(15) NOT NULL,
  `Pendidikan` varchar(15) NOT NULL,
  `Matpel` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `walikelas`
--

INSERT INTO `walikelas` (`Id`, `NIK`, `Nama`, `Jenis_Kelamin`, `Alamat`, `Telp`, `Status`, `Pendidikan`, `Matpel`) VALUES
(1, 13354657, 'Budi h', 'Perempuan', 'jl. didd', 8122222, 'Tidak Aktif', 'S1 Matematika', 'Matematika    '),
(2, 79978, 'Susi', 'Perempuan', 'Jl timba', 8978, 'Aktif', 'S1 Fisika ', 'Fisika');

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
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `kelas`
--
ALTER TABLE `kelas`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `ortu`
--
ALTER TABLE `ortu`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `poin`
--
ALTER TABLE `poin`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `semester`
--
ALTER TABLE `semester`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `siswa`
--
ALTER TABLE `siswa`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `walikelas`
--
ALTER TABLE `walikelas`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
