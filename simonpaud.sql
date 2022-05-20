-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2022 at 08:59 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `simonpaud`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bantuan`
--

CREATE TABLE `tbl_bantuan` (
  `id_bantuan` int(11) NOT NULL,
  `tahun` year(4) NOT NULL,
  `jenis_bantuan` enum('BOSDA','BOP','SARANA PRASARANA','') NOT NULL,
  `jumlah` int(20) NOT NULL,
  `sumber_bantuan` enum('Pusat','Daerah','','') NOT NULL,
  `keterangan_bantuan` enum('Uang','Barang','','') NOT NULL,
  `id_lembaga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_bantuan`
--

INSERT INTO `tbl_bantuan` (`id_bantuan`, `tahun`, `jenis_bantuan`, `jumlah`, `sumber_bantuan`, `keterangan_bantuan`, `id_lembaga`) VALUES
(9, 2023, 'BOSDA', 333333, 'Pusat', 'Uang', 8),
(10, 2018, 'BOSDA', 5676768, 'Pusat', 'Uang', 4),
(11, 2016, 'BOP', 1200, 'Pusat', 'Uang', 4),
(12, 2016, 'BOP', 1200, 'Pusat', 'Uang', 4),
(13, 2016, 'BOP', 1200, 'Pusat', 'Uang', 4),
(14, 2016, 'BOP', 1200, 'Pusat', 'Uang', 4),
(16, 2021, 'BOP', 23, 'Pusat', 'Uang', 4);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_desa`
--

CREATE TABLE `tbl_desa` (
  `kode_kec` varchar(3) DEFAULT NULL,
  `kode_desa` varchar(3) DEFAULT NULL,
  `desa` varchar(18) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_desa`
--

INSERT INTO `tbl_desa` (`kode_kec`, `kode_desa`, `desa`) VALUES
('090', '003', 'CIMAYASARI'),
('090', '005', 'CIPEUNDEUY'),
('090', '008', 'KARANGMUKTI'),
('090', '009', 'KOSAR'),
('090', '004', 'LENGKONG'),
('090', '007', 'SAWANGAN'),
('090', '006', 'WANTILAN'),
('100', '011', 'BALEBANDUNGJAYA'),
('100', '002', 'CIHAMBULU'),
('100', '006', 'KADAWUNG'),
('100', '008', 'KARANGHEGAR'),
('100', '004', 'PABUARAN'),
('100', '007', 'PRINGKASAP'),
('100', '005', 'SALAMJAYA'),
('100', '003', 'SILUMAN'),
('110', '001', 'TANJUNGRASA KIDUL'),
('110', '002', 'TANJUNGRASA'),
('110', '003', 'JATIRAGAS HILIR'),
('110', '004', 'TAMBAKJATI'),
('110', '005', 'CIBERES'),
('110', '006', 'GEMPOLSARI'),
('110', '007', 'RANCAMULYA'),
('110', '008', 'RANCAJAYA'),
('110', '009', 'RANCABANGO'),
('110', '010', 'RANCAASIH'),
('170', '006', 'BINONG'),
('170', '002', 'CICADAS'),
('170', '005', 'CITRAJAYA'),
('170', '008', 'MULYASARI'),
('170', '004', 'KARANGSARI'),
('170', '018', 'KARANGWANGI'),
('170', '007', 'KEDIRI'),
('170', '003', 'KIHIYANG'),
('170', '001', 'NANGGERANG'),
('220', '008', 'MUARA'),
('220', '009', 'TANJUNGTIGA'),
('220', '007', 'LANGENSARI'),
('220', '006', 'BLANAKAN'),
('220', '005', 'JAYAMUKTI'),
('220', '004', 'RAWAMENENG'),
('220', '003', 'RAWAMEKAR'),
('220', '001', 'CILAMAYA HILIR'),
('021', '001', 'CIATER'),
('021', '003', 'CIBEUSI'),
('021', '004', 'CIBITUNG'),
('021', '007', 'CISAAT'),
('021', '002', 'NAGRAK'),
('021', '006', 'PALASARI'),
('021', '005', 'SANCA'),
('060', '009', 'BELENDUNG'),
('060', '008', 'CIBALANDONGJAYA'),
('060', '005', 'CIBOGO'),
('060', '006', 'CINANGSI'),
('060', '010', 'CISAGA'),
('060', '007', 'MAJASARI'),
('060', '004', 'PADAASIH'),
('060', '002', 'SADAWARNA'),
('060', '003', 'SUMURBARANG'),
('050', '007', 'BANTARSARI'),
('050', '005', 'CIKADU'),
('050', '004', 'CIMENTENG'),
('050', '003', 'CIRANGKONG'),
('050', '002', 'CIJAMBE'),
('050', '001', 'GUNUNGTUA'),
('050', '006', 'SUKAHURIP'),
('050', '008', 'TANJUNGWANGI'),
('130', '004', 'CIKAUM BARAT'),
('130', '003', 'CIKAUM TIMUR'),
('130', '006', 'GANDASARI'),
('130', '001', 'KAWUNGANTEN'),
('130', '007', 'MEKARSARI'),
('130', '005', 'PASIRMUNCANG'),
('130', '002', 'SINDANGSARI'),
('130', '008', 'TANJUNGSARI BARAT'),
('130', '009', 'TANJUNGSARI TIMUR'),
('150', '008', 'JATI'),
('150', '009', 'KOSAMBI'),
('150', '010', 'SIMPAR'),
('150', '007', 'PADAMULYA'),
('150', '005', 'PARIGIMULYA'),
('150', '002', 'SIDAMULYA'),
('150', '004', 'TANJUNG'),
('150', '003', 'SIDAJAYA'),
('150', '001', 'WANASARI'),
('150', '006', 'MANYINGSAL'),
('030', '010', 'CIGADOG'),
('030', '009', 'CISALAK'),
('030', '014', 'PAKUHAJI'),
('030', '008', 'DARMAGA'),
('030', '005', 'SUKAKERTI'),
('030', '003', 'GARDUSAYANG'),
('030', '002', 'CIMANGGU'),
('030', '001', 'CUPUNAGARA'),
('030', '004', 'MAYANG'),
('160', '007', 'COMPRENG'),
('160', '008', 'JATIMULYA'),
('160', '006', 'KALENSARI'),
('160', '005', 'MEKARJAYA'),
('160', '002', 'SUKATANI'),
('160', '004', 'JATIREJA'),
('160', '003', 'KIARASARI'),
('160', '001', 'SUKADANA'),
('081', '001', 'JAMBELAER'),
('081', '003', 'CISAMPIH'),
('081', '002', 'MARGASARI'),
('081', '004', 'SITUSARI'),
('081', '005', 'SUKASARI'),
('081', '008', 'DAWUAN KALER'),
('081', '009', 'MANYETI'),
('081', '006', 'RAWALELE'),
('081', '010', 'BATUSARI'),
('081', '007', 'DAWUAN KIDUL'),
('020', '016', 'BUNIHAYU'),
('020', '007', 'CURUGRENDENG'),
('020', '015', 'JALANCAGAK'),
('020', '013', 'KUMPAY'),
('020', '008', 'SARIREJA'),
('020', '014', 'TAMBAKAN'),
('020', '017', 'TAMBAKMEKAR'),
('080', '017', 'BANGGALAMULYA'),
('080', '020', 'CIRULUK'),
('080', '019', 'CARACAS'),
('080', '016', 'KALIANGSANA'),
('080', '008', 'KALIJATI TIMUR'),
('080', '006', 'MARENGMANG'),
('080', '004', 'TANGGULUN TIMUR'),
('080', '005', 'TANGGULUN BARAT'),
('080', '018', 'JALUPANG'),
('080', '007', 'KALIJATI BARAT'),
('031', '003', 'BOJONGLOA'),
('031', '008', 'CIMANGGLID'),
('031', '007', 'KASOMALANG KULON'),
('031', '006', 'KASOMALANG WETAN'),
('031', '001', 'PASANGGRAHAN'),
('031', '002', 'SINDANGSARI'),
('031', '005', 'SUKAMELANG'),
('031', '004', 'TENJOLAYA'),
('210', '008', 'KARANGMULYA'),
('210', '007', 'BOBOS'),
('210', '006', 'PANGARENGAN'),
('210', '005', 'LEGONKULON'),
('210', '004', 'LEGONWETAN'),
('210', '003', 'MAYANGAN'),
('210', '002', 'TEGALURUNG'),
('140', '004', 'GUNUNGSEMBUNG'),
('140', '005', 'GEMBOR'),
('140', '006', 'GUNUNGSARI'),
('140', '007', 'SUKAMULYA'),
('140', '013', 'SUMBERSARI'),
('140', '014', 'GAMBARSARI'),
('140', '015', 'NEGLASARI'),
('140', '016', 'PAGADEN'),
('140', '017', 'KAMARUNG'),
('140', '018', 'JABONG'),
('141', '001', 'BALINGBING'),
('141', '006', 'MARGAHAYU'),
('141', '005', 'MUNJUL'),
('141', '007', 'BENDUNGAN'),
('141', '008', 'MEKARWANGI'),
('141', '002', 'CIDADAP'),
('141', '003', 'CIDAHU'),
('141', '009', 'SUMURGINTUNG'),
('141', '004', 'PANGSOR'),
('190', '009', 'LENGKONGJAYA'),
('190', '008', 'PAMANUKAN HILIR'),
('190', '007', 'PAMANUKAN'),
('190', '010', 'PAMANUKAN SEBRANG'),
('190', '006', 'RANCASARI'),
('190', '012', 'MULYASARI'),
('190', '013', 'RANCAHILIR'),
('190', '014', 'BONGAS'),
('120', '006', 'PARAPATAN'),
('120', '010', 'RANCAMAHI'),
('120', '007', 'PURWADADI'),
('120', '009', 'PASIR BUNGUR'),
('120', '011', 'PANYINGKIRAN'),
('120', '008', 'PURWADADI BARAT'),
('120', '002', 'BELENDUNG'),
('120', '005', 'PAGON'),
('120', '003', 'WANAKERTA'),
('120', '001', 'KORANJI'),
('201', '001', 'BOJONG TENGAH'),
('201', '002', 'BOJONGJAYA'),
('201', '003', 'CIGUGUR'),
('201', '004', 'CIGUGUR KALER'),
('201', '006', 'KARANGANYAR'),
('201', '007', 'KEBONDANAS'),
('201', '008', 'PUSAKAJAYA'),
('201', '005', 'RANGDU'),
('200', '010', 'GEMPOL'),
('200', '011', 'KALENTAMBO'),
('200', '012', 'KOTASARI'),
('200', '015', 'MUNDUSARI'),
('200', '014', 'PATIMBAN'),
('200', '009', 'PUSAKARATU'),
('200', '013', 'RANCADAKA'),
('010', '013', 'CURUGAGUNG'),
('010', '003', 'SUKAMANDI'),
('010', '006', 'DAYEUHKOLOT'),
('010', '005', 'SAGALAHERANG'),
('010', '012', 'SAGALAHERANG KALER'),
('010', '011', 'LELES'),
('010', '004', 'CICADAS'),
('011', '005', 'PONGGANG'),
('011', '006', 'TALAGASARI'),
('011', '002', 'CIKUJANG'),
('011', '003', 'CIJENGKOL'),
('011', '001', 'CIPANCAR'),
('011', '004', 'CINTAMEKAR'),
('220', '002', 'CILAMAYA GIRANG'),
('070', '001', 'PARUNG'),
('070', '005', 'CIGADUNG'),
('070', '003', 'SOKLAT'),
('070', '012', 'WANAREJA'),
('070', '006', 'DANGDEUR'),
('070', '002', 'PASIRKAREUMBI'),
('070', '004', 'KARANGANYAR'),
('070', '007', 'SUKAMELANG'),
('191', '003', 'BATANGSARI'),
('191', '007', 'SUKAMAJU'),
('191', '002', 'CURUGREJA'),
('191', '006', 'ANGGASARI'),
('191', '001', 'MANDALAWANGI'),
('191', '004', 'SUKASARI'),
('191', '005', 'SUKAREJA'),
('171', '008', 'BOJONEGARA'),
('171', '007', 'BOJONGKEDING'),
('171', '003', 'GARDAMUKTI'),
('171', '005', 'KERTAJAYA'),
('171', '004', 'MARIUK'),
('171', '009', 'RANCAUDIK'),
('171', '006', 'TAMBAKDAHAN'),
('171', '001', 'TANJUNGRASA'),
('171', '002', 'WANAJAYA'),
('040', '001', 'BUNIARA'),
('040', '002', 'TANJUNGSIANG'),
('040', '003', 'CIKAWUNG'),
('040', '004', 'CIMEUHMAL'),
('040', '005', 'SIRAP'),
('040', '006', 'KAWUNGLUWUK'),
('040', '008', 'CIBULUH'),
('040', '009', 'SINDANGLAYA'),
('040', '010', 'RANCAMANGGUNG'),
('040', '011', 'GANDASOLI'),
('180', '007', 'CIASEM BARU'),
('180', '008', 'CIASEM GIRANG'),
('180', '006', 'CIASEM HILIR'),
('180', '010', 'PINANGSARI'),
('180', '009', 'SUKAHAJI'),
('180', '001', 'SUKAMANDIJAYA'),
('180', '004', 'JATIBARU'),
('180', '002', 'CIASEM TENGAH'),
('180', '003', 'DUKUH');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gizi`
--

CREATE TABLE `tbl_gizi` (
  `id_gizi` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `id_lembaga` int(11) NOT NULL,
  `tinggi_badan` int(11) NOT NULL,
  `berat_badan` int(11) NOT NULL,
  `lingkar_kepala` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_gizi`
--

INSERT INTO `tbl_gizi` (`id_gizi`, `id_siswa`, `id_lembaga`, `tinggi_badan`, `berat_badan`, `lingkar_kepala`) VALUES
(1, 2, 6, 141, 45, 50),
(2, 8, 6, 161, 75, 50);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kecamatan`
--

CREATE TABLE `tbl_kecamatan` (
  `kode_kec` varchar(3) CHARACTER SET utf8mb4 NOT NULL,
  `kecamatan` varchar(13) CHARACTER SET utf8mb4 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_kecamatan`
--

INSERT INTO `tbl_kecamatan` (`kode_kec`, `kecamatan`) VALUES
('010', 'Sagalaherang'),
('011', 'Serangpanjang'),
('020', 'Jalancagak'),
('021', 'Ciater'),
('030', 'Cisalak'),
('031', 'Kasomalang'),
('040', 'Tanjungsiang'),
('050', 'Cijambe'),
('060', 'Cibogo'),
('070', 'Subang'),
('080', 'Kalijati'),
('081', 'Dawuan'),
('090', 'Cipeundeuy'),
('100', 'Pabuaran'),
('110', 'Patokbeusi'),
('120', 'Purwadadi'),
('130', 'Cikaum'),
('140', 'Pagaden'),
('141', 'Pagaden barat'),
('150', 'Cipunagara'),
('160', 'Compreng'),
('170', 'Binong'),
('171', 'Tambakdahan'),
('180', 'Ciasem'),
('190', 'Pamanukan'),
('191', 'Sukasari'),
('200', 'Pusakanagara'),
('201', 'Pusakajaya'),
('210', 'Legonkulon'),
('220', 'Blanakan');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_lembaga`
--

CREATE TABLE `tbl_lembaga` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `npsn` varchar(25) DEFAULT NULL,
  `nama_lembaga` varchar(50) NOT NULL,
  `kode_kec` varchar(3) DEFAULT NULL,
  `kode_desa` varchar(3) DEFAULT NULL,
  `alamat_lembaga` text DEFAULT NULL,
  `tahun_berdiri` year(4) DEFAULT NULL,
  `kepala_sekolah` varchar(50) DEFAULT NULL,
  `pengelompokan` varchar(60) DEFAULT NULL,
  `tahun_akreditasi` int(10) DEFAULT NULL,
  `status_akreditasi` varchar(30) DEFAULT NULL,
  `foto_lembaga` varchar(255) NOT NULL DEFAULT 'image_placeholder.jpg',
  `longitude` varchar(100) DEFAULT NULL,
  `latitude` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_lembaga`
--

INSERT INTO `tbl_lembaga` (`id`, `id_user`, `npsn`, `nama_lembaga`, `kode_kec`, `kode_desa`, `alamat_lembaga`, `tahun_berdiri`, `kepala_sekolah`, `pengelompokan`, `tahun_akreditasi`, `status_akreditasi`, `foto_lembaga`, `longitude`, `latitude`) VALUES
(4, 38, '32138383', 'PAUD Delima', '150', '', 'Desa Tanjung RT 15/RW 20', 2020, 'Agus', 'KB (Kelompok Bermain)', 2021, 'A', '24a37f88031c176b8fecbd1c924199e2.jpg', '107.76179643245852', '-6.567702632680259'),
(6, 40, '33321313', 'PAUD Kenanga', '011', '', 'Desa Tanjung RT 15/RW 20', 2020, 'Jumsin', 'TK (Taman Kanak-kanak)', 2020, 'B', 'image_placeholder.jpg', '107.75954501047475', '-6.570946780813654'),
(7, 41, NULL, 'PAUD Mawar', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(8, 42, NULL, 'PAUD Bagus', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(9, 43, '', 'PAUD Cempaka', '021', '', 'Subang', 2011, 'Jaja', 'RA (Raudhatul Athfal)', 2019, 'B', '422e3868f6267d3fa72e545c5c97c172.jpg', '107.76295587008634', '-6.571710185081761');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_prasarana`
--

CREATE TABLE `tbl_prasarana` (
  `id_prasarana` int(11) NOT NULL,
  `Ruang_Kepala_Sekolah` enum('Tersedia','Tidak Tersedia','','') NOT NULL,
  `Internet` enum('Tersedia','Tidak Tersedia','','') NOT NULL,
  `Listrik` enum('Tersedia','Tidak Tersedia','','') NOT NULL,
  `RK_Baik` int(10) NOT NULL,
  `RK_Rusak` int(10) NOT NULL,
  `RG_Baik` int(10) NOT NULL,
  `RG_Rusak` int(10) NOT NULL,
  `TS_Baik` int(10) NOT NULL,
  `TS_Rusak` int(10) NOT NULL,
  `TG_Baik` int(10) NOT NULL,
  `TG_Rusak` int(10) NOT NULL,
  `id_lembaga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_prasarana`
--

INSERT INTO `tbl_prasarana` (`id_prasarana`, `Ruang_Kepala_Sekolah`, `Internet`, `Listrik`, `RK_Baik`, `RK_Rusak`, `RG_Baik`, `RG_Rusak`, `TS_Baik`, `TS_Rusak`, `TG_Baik`, `TG_Rusak`, `id_lembaga`) VALUES
(2, 'Tersedia', 'Tersedia', 'Tersedia', 3, 2, 3, 2, 3, 2, 3, 2, 9),
(6, 'Tersedia', 'Tersedia', 'Tersedia', 1, 0, 1, 0, 1, 0, 1, 5, 7),
(7, 'Tersedia', 'Tidak Tersedia', 'Tersedia', 1, 1, 1, 1, 1, 1, 1, 1, 4),
(8, 'Tidak Tersedia', 'Tersedia', 'Tidak Tersedia', 11, 2, 3, 2, 2, 3, 32, 23, 4);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sarana`
--

CREATE TABLE `tbl_sarana` (
  `id_sarana` int(11) NOT NULL,
  `APEL_perosotan` char(20) NOT NULL,
  `APEL_jungkitan` char(20) NOT NULL,
  `APEL_ayunan` char(20) NOT NULL,
  `APEL_bola_dunia` char(20) NOT NULL,
  `APED_sensori_motor` char(11) NOT NULL,
  `APED_pembangunan` char(11) NOT NULL,
  `APED_bermain_peran` char(11) NOT NULL,
  `APED_imtaq` char(11) NOT NULL,
  `id_lembaga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_sarana`
--

INSERT INTO `tbl_sarana` (`id_sarana`, `APEL_perosotan`, `APEL_jungkitan`, `APEL_ayunan`, `APEL_bola_dunia`, `APED_sensori_motor`, `APED_pembangunan`, `APED_bermain_peran`, `APED_imtaq`, `id_lembaga`) VALUES
(120, '0', '0', '1', '0', '1', '1', '0', '0', 8),
(122, '1', '1', '1', '1', '1', '1', '1', '1', 7),
(125, '0', '0', '1', '1', '1', '1', '1', '1', 9),
(126, '1', '1', '1', '1', '1', '1', '1', '1', 6),
(127, '1', '0', '0', '1', '0', '1', '1', '0', 8);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sarana_prasarana`
--

CREATE TABLE `tbl_sarana_prasarana` (
  `id_sarana` int(11) NOT NULL,
  `nama_sarana` varchar(50) NOT NULL,
  `tanggal_pengadaan` date NOT NULL,
  `jumlah` int(11) NOT NULL,
  `kondisi` varchar(25) NOT NULL,
  `id_lembaga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_sarana_prasarana`
--

INSERT INTO `tbl_sarana_prasarana` (`id_sarana`, `nama_sarana`, `tanggal_pengadaan`, `jumlah`, `kondisi`, `id_lembaga`) VALUES
(1, 'Meja Belajar Kecil', '2020-07-01', 50, 'Rusak', 7),
(2, 'Meja Mengaji', '2020-04-02', 10, 'Layak Pakai', 4),
(3, 'Gedung Sekolah', '2021-11-02', 203, 'Layak Pakai', 4);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_siswa`
--

CREATE TABLE `tbl_siswa` (
  `id_siswa` int(11) NOT NULL,
  `NISN` varchar(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `nama_ortu` varchar(50) NOT NULL,
  `no_telp_ortu` varchar(18) NOT NULL,
  `pekerjaan_ortu` varchar(20) NOT NULL,
  `usia_adik` int(2) NOT NULL,
  `alamat` text NOT NULL,
  `tempat_lahir` varchar(30) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `tanggal_masuk` date NOT NULL,
  `tanggal_keluar` date DEFAULT NULL,
  `id_lembaga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_siswa`
--

INSERT INTO `tbl_siswa` (`id_siswa`, `NISN`, `nama`, `nama_ortu`, `no_telp_ortu`, `pekerjaan_ortu`, `usia_adik`, `alamat`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `tanggal_masuk`, `tanggal_keluar`, `id_lembaga`) VALUES
(2, '1212345678', 'Siti Anwar', 'Bambang Sukaesih', '0873173132131', 'Karyawan swasta', 3, 'Subang', 'Subang', '2016-11-12', 'P', '2021-11-01', NULL, 6),
(4, '405783213', 'Agus', 'Kusmin', '0837261638221', 'Petani', 0, 'Subang', 'Subang', '2017-04-11', 'L', '2021-11-01', '2021-11-26', 9),
(8, '401091265', 'Ahmad supardi f', 'Agus', '083833213131', 'Wiraswasta', 1, 'Subang barat', 'Subang', '2015-04-01', 'L', '2021-11-09', NULL, 4),
(9, '129378605', 'Stevia Margarett', 'Siti Aminah', '085764321112', 'Konsultan Kecantikan', 1, 'Pagaden', 'Jakarta', '2018-12-03', 'P', '2021-11-01', NULL, 4),
(10, '5506478970', 'Ayu Tyas', 'Siti Aminah', '087812346789', 'Konsultan Kecantikan', 2, 'Subang', 'Subang', '2019-11-15', 'P', '2021-11-09', NULL, 4),
(11, '5506478970', 'Siti', 'dadang', '087812346789', 'Wiraswasta', 1, 'Subang', 'Subang', '2019-11-19', 'P', '2021-12-08', '2021-12-11', 8),
(12, '0405783213', 'sinta', 'feri', '085345679812', 'Wiraswasta', 0, 'Subang', 'Jakarta', '2019-08-07', 'P', '2021-11-24', NULL, 4),
(15, 'ajsdsdsksd', 'n', 'kjashdjkashdjkashdjk', '12837218372183', 'jajshdjhdjasd', 12, 'jqlhjhjkashdjksahdkjsah', 'arab', '2022-03-30', 'L', '2022-03-30', '2022-03-30', 4);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tenagakependidikan`
--

CREATE TABLE `tbl_tenagakependidikan` (
  `id_tenagaKependidikan` int(11) NOT NULL,
  `nuptk` varchar(25) NOT NULL,
  `nip` varchar(22) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `no_telp` varchar(18) NOT NULL,
  `alamat` text NOT NULL,
  `pendidikan` varchar(20) NOT NULL,
  `tempat_lahir` varchar(30) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `diklatdasar` year(4) DEFAULT NULL,
  `diklatlanjut` year(4) DEFAULT NULL,
  `diklatmahir` year(4) DEFAULT NULL,
  `diklatlainnya` text DEFAULT NULL,
  `id_lembaga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_tenagakependidikan`
--

INSERT INTO `tbl_tenagakependidikan` (`id_tenagaKependidikan`, `nuptk`, `nip`, `nama`, `no_telp`, `alamat`, `pendidikan`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `diklatdasar`, `diklatlanjut`, `diklatmahir`, `diklatlainnya`, `id_lembaga`) VALUES
(1, '321318372719922', '321318372719922', 'Kasman Sualeman', '0892913131', 'Subang', 'SMA', 'Subang', '2000-02-15', 'L', NULL, NULL, NULL, NULL, 6),
(3, '2223838', '', 'Ahmad Supriadi', '08765544422', 'Subang', 'SMA', 'Subang', '2021-11-17', 'L', NULL, NULL, NULL, 'Pengembangan diri;2021', 4),
(4, '4123567', '9076540', 'cici suhartini', '087856432190', 'Bandung', 'S1', 'Cihampelas', '1995-05-25', 'P', 2016, 2018, 2020, NULL, 7);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tenagapendidik`
--

CREATE TABLE `tbl_tenagapendidik` (
  `id_tenagaPendidik` int(11) NOT NULL,
  `nuptk` varchar(25) NOT NULL,
  `nip` varchar(22) DEFAULT NULL,
  `nama` varchar(50) NOT NULL,
  `no_telp` varchar(18) NOT NULL,
  `alamat` text NOT NULL,
  `pendidikan` varchar(20) NOT NULL,
  `tempat_lahir` varchar(30) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `diklatdasar` year(4) DEFAULT NULL,
  `diklatlanjut` year(4) DEFAULT NULL,
  `diklatmahir` year(4) DEFAULT NULL,
  `diklatlainnya` text DEFAULT NULL,
  `id_lembaga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_tenagapendidik`
--

INSERT INTO `tbl_tenagapendidik` (`id_tenagaPendidik`, `nuptk`, `nip`, `nama`, `no_telp`, `alamat`, `pendidikan`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `diklatdasar`, `diklatlanjut`, `diklatmahir`, `diklatlainnya`, `id_lembaga`) VALUES
(2, '13131', '13131', 'Agung Hidayat', '08765544422', 'Sarengseng', 'SMA', 'Subang', '2000-05-16', 'L', NULL, NULL, NULL, NULL, 7),
(3, '999999', '999999', 'Siti Anwar', '0831831813', 'Subang', 'S1', 'Subang', '1985-03-20', 'P', NULL, NULL, NULL, NULL, 6),
(5, '1213131', '1213131', 'Kusmin', '0808070707', 'Subang', 'S1', 'Subang', '1993-06-25', 'L', 2019, 2020, NULL, NULL, 4),
(7, '444141414', '444141414', 'Jumsin', '09183713132', 'Subang', 'SMA', 'Subang', '1995-03-23', 'L', NULL, NULL, NULL, NULL, 7),
(9, '09993131', '09993131', 'Sari Yuni', '0891931312', 'Subang', 'SMA', 'Subang', '1998-04-30', 'P', NULL, NULL, NULL, NULL, 6),
(10, '99882121', '99882121', 'Karlina', '083152631314', 'Subang', 'S1', 'Subang', '1997-12-10', 'L', NULL, NULL, NULL, NULL, 7),
(11, '1313131313', '1313131313', 'Maman Lim', '0882913131', 'Subang', 'S1', 'Jakarta', '2000-03-08', 'P', NULL, NULL, NULL, NULL, 6),
(12, '31414141', '31414141', 'Nina Hamidah', '08393914141', 'Subang', 'SMA', 'Indramayu', '2000-09-20', 'P', NULL, NULL, NULL, NULL, 4),
(13, '382812223', '382812223', 'Sumardi', '087361627312', 'Subang', 'S1', 'Subang', '1999-03-24', 'L', NULL, NULL, NULL, NULL, 9),
(22, '321382831', '', 'Agung Hidayat', '083817362612', 'Subang', 'SD', 'Subang', '2021-11-02', 'L', 2018, NULL, NULL, 'Pelatihan Baru;2019', 4),
(24, '32143313', '', 'Ahmar Subarjo', '0831727313131', 'Subang', 'SMP', 'Subang', '2021-11-01', 'L', 2001, 2008, 2009, NULL, 4),
(25, '321313131', '', 'Ratih Sumiatih', '0833727131131', 'Subang', 'SMA', 'Subang', '2021-01-18', 'P', 2017, 2018, NULL, NULL, 7),
(28, '3213458', '', 'Ahmad Supriadi', '08765544422', 'Subang', 'SMP', 'Subang', '2021-11-10', 'L', 2018, NULL, NULL, 'Pelatihan Baru;2019,Pelatihan Lama;2020', 6),
(29, 'qwoiqwoqiowiowq', 'oqiwqiwiqowio', '829281928912', 'qwouiqqiwu', '29812998912', 'S3', '898787', '2022-03-26', 'L', NULL, NULL, NULL, '88888;2022', 4);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(25) NOT NULL COMMENT 'admin, operator, pimpinan'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `username`, `password`, `role`) VALUES
(1, 'admin', '6ce67eec6856ec87a40ccab5b39030b53af0cbfff851d80bb2b3eb7fabbfbc31c8610fe64db0d1e2421d9d71f3a31097ccd2ba9f7fb23e4428cc98aac4d483d1jlhTEzEgWhhcolJ27Uv1hGpHU5ski6uiUZvzzmaK0qM=', 'admin'),
(38, 'agung', '14cff53428071f2465a1612417845fc451f45b7d15fc56810ef0e95c3e5fc326f477f5cf063094f1a7c0a5fa776e743326fd28e2d71f9d022275eeb24f678e9awGcTdQ6pKo6iHPyeVorS+AP9WXy+Nz2q7riJKZjrwLg=', 'operator'),
(39, 'ahmad', '908071d6c019954c26959d8f44c61205f5cc893c077444151ca83f5e78cec6fc361ac1b71b61a7ad69c21fc20c024afc4390a5441a469c4667686f5aaf134e8acgdflkq3xQ/VMRO/l++fGw0AiHErfxcmPAo+bBfT/h8=', 'pimpinan'),
(40, 'hasan', '822e1e8a91f2cce6151cc015f10aaa166b40e17caf5e2e5573b5d6abdf2827c0972d0c4b858504217ad6a09aceeb41516768fa4035bc085358a592e2052efc3anKMAG31UZnq51wQ23NSJnCJecvYLe8PBnjJXmE4iBvo=', 'operator'),
(41, 'agus', '713b02398294c12849119ef63381a4fd80056f121b68b4e07ffba9aeab08274c021cda76f904f002d377c5c1d9787f2eb22351f9a867d717755e7851827d8419vIL2sj6nplyZvjuYRtiQBUhnMVUqZa3SqCbDej90zPw=', 'operator'),
(42, 'bagus', 'a522c25414acdcd5af76f12854d4a0e4ecdd2bc9b524839ea70357b8908d698a03bdaa4ed63e2bb0d18eddbb75b5d9d189e0c4ffbe9d31e509b81c7155d923cbyELQ53smFZAPzdwni31ChqhjTGvkamA10ntpZsQn77Y=', 'operator'),
(43, 'abdul', '394fc4780bb106d3ed6419c7e66e35064d1d3515b334458c6ca432f6e56d07cd401c24c87d9138387192f5941206494714999af4296ae60b3386f0945b7ea5a9VSJJlj6i+dsncMqUB9sWgZIQsErTx++rZ/oYjFViEXQ=', 'operator'),
(49, 'pimpinan', '430e47b33817660319af8765898e52063707c7d14ea2b44e0ea98064eee0c55a9ab40cd579ec59d9cfe272a80907216525c3abab4e80f9ca2165bffdb5f1ed89T9ZNk9Di6INipvhYOfMavW5G4HnOouyEUguD0qjq5Uc=', 'pimpinan');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_bantuan`
--
ALTER TABLE `tbl_bantuan`
  ADD PRIMARY KEY (`id_bantuan`),
  ADD KEY `id_lembaga` (`id_lembaga`) USING BTREE;

--
-- Indexes for table `tbl_gizi`
--
ALTER TABLE `tbl_gizi`
  ADD PRIMARY KEY (`id_gizi`),
  ADD KEY `id_siswa` (`id_siswa`),
  ADD KEY `id_lembaga` (`id_lembaga`);

--
-- Indexes for table `tbl_kecamatan`
--
ALTER TABLE `tbl_kecamatan`
  ADD PRIMARY KEY (`kode_kec`);

--
-- Indexes for table `tbl_lembaga`
--
ALTER TABLE `tbl_lembaga`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `kode_kec` (`kode_kec`);

--
-- Indexes for table `tbl_prasarana`
--
ALTER TABLE `tbl_prasarana`
  ADD PRIMARY KEY (`id_prasarana`),
  ADD KEY `id_lembaga` (`id_lembaga`) USING BTREE;

--
-- Indexes for table `tbl_sarana`
--
ALTER TABLE `tbl_sarana`
  ADD PRIMARY KEY (`id_sarana`);

--
-- Indexes for table `tbl_sarana_prasarana`
--
ALTER TABLE `tbl_sarana_prasarana`
  ADD PRIMARY KEY (`id_sarana`),
  ADD KEY `id_lembaga` (`id_lembaga`);

--
-- Indexes for table `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  ADD PRIMARY KEY (`id_siswa`),
  ADD KEY `id_lembaga` (`id_lembaga`);

--
-- Indexes for table `tbl_tenagakependidikan`
--
ALTER TABLE `tbl_tenagakependidikan`
  ADD PRIMARY KEY (`id_tenagaKependidikan`),
  ADD KEY `id_lembaga` (`id_lembaga`);

--
-- Indexes for table `tbl_tenagapendidik`
--
ALTER TABLE `tbl_tenagapendidik`
  ADD PRIMARY KEY (`id_tenagaPendidik`),
  ADD KEY `id_lembaga` (`id_lembaga`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_bantuan`
--
ALTER TABLE `tbl_bantuan`
  MODIFY `id_bantuan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbl_gizi`
--
ALTER TABLE `tbl_gizi`
  MODIFY `id_gizi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_lembaga`
--
ALTER TABLE `tbl_lembaga`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_prasarana`
--
ALTER TABLE `tbl_prasarana`
  MODIFY `id_prasarana` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_sarana`
--
ALTER TABLE `tbl_sarana`
  MODIFY `id_sarana` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT for table `tbl_sarana_prasarana`
--
ALTER TABLE `tbl_sarana_prasarana`
  MODIFY `id_sarana` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  MODIFY `id_siswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_tenagakependidikan`
--
ALTER TABLE `tbl_tenagakependidikan`
  MODIFY `id_tenagaKependidikan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_tenagapendidik`
--
ALTER TABLE `tbl_tenagapendidik`
  MODIFY `id_tenagaPendidik` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_gizi`
--
ALTER TABLE `tbl_gizi`
  ADD CONSTRAINT `tbl_gizi_ibfk_1` FOREIGN KEY (`id_lembaga`) REFERENCES `tbl_lembaga` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_gizi_ibfk_2` FOREIGN KEY (`id_siswa`) REFERENCES `tbl_siswa` (`id_siswa`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_lembaga`
--
ALTER TABLE `tbl_lembaga`
  ADD CONSTRAINT `tbl_lembaga_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `tbl_users` (`id`),
  ADD CONSTRAINT `tbl_lembaga_ibfk_2` FOREIGN KEY (`kode_kec`) REFERENCES `tbl_kecamatan` (`kode_kec`);

--
-- Constraints for table `tbl_sarana_prasarana`
--
ALTER TABLE `tbl_sarana_prasarana`
  ADD CONSTRAINT `tbl_sarana_prasarana_ibfk_1` FOREIGN KEY (`id_lembaga`) REFERENCES `tbl_lembaga` (`id`);

--
-- Constraints for table `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  ADD CONSTRAINT `tbl_siswa_ibfk_1` FOREIGN KEY (`id_lembaga`) REFERENCES `tbl_lembaga` (`id`);

--
-- Constraints for table `tbl_tenagakependidikan`
--
ALTER TABLE `tbl_tenagakependidikan`
  ADD CONSTRAINT `tbl_tenagakependidikan_ibfk_1` FOREIGN KEY (`id_lembaga`) REFERENCES `tbl_lembaga` (`id`);

--
-- Constraints for table `tbl_tenagapendidik`
--
ALTER TABLE `tbl_tenagapendidik`
  ADD CONSTRAINT `tbl_tenagapendidik_ibfk_1` FOREIGN KEY (`id_lembaga`) REFERENCES `tbl_lembaga` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
