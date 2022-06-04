-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 04, 2022 at 04:37 AM
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
  `lingkar_kepala` int(11) NOT NULL,
  `bmi` varchar(255) DEFAULT NULL,
  `tanggal_input` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_gizi`
--

INSERT INTO `tbl_gizi` (`id_gizi`, `id_siswa`, `id_lembaga`, `tinggi_badan`, `berat_badan`, `lingkar_kepala`, `bmi`, `tanggal_input`) VALUES
(9, 12, 4, 105, 30, 30, '27.210884353741', '2022-05-27'),
(10, 10, 4, 100, 19, 30, '19', '2022-05-27'),
(12, 4, 9, 100, 9, 30, '9', '2022-05-27'),
(13, 12, 4, 130, 40, 35, '23.668639053254', '2022-05-30'),
(14, 10, 4, 140, 50, 30, '25.510204081633', '2022-05-31'),
(15, 4, 9, 131, 31, 33, '18.064215372065', '2022-05-31');

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
(9, 43, '', 'PAUD Cempaka', '021', '', 'Subang', 2011, 'Jaja', 'RA (Raudhatul Athfal)', 2019, 'B', '422e3868f6267d3fa72e545c5c97c172.jpg', '107.76295587008634', '-6.571710185081761'),
(10, 50, NULL, 'KB AL-KAUTSAR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(11, 51, NULL, 'KB AL-MUHYI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(12, 52, NULL, 'KB ANUGRAH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(13, 53, NULL, 'KB AR-RADHWA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(14, 54, NULL, 'KB AR-ROHMAH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(15, 55, NULL, 'KB HARAPAN BUNDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(16, 56, NULL, 'KB KASIH IBU ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(17, 57, NULL, 'KB KENANGA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(18, 58, NULL, 'KB MIFTAHUSSAADAH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(19, 59, NULL, 'KB MUTI BAROKAH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(20, 60, NULL, 'RA Ibnu Shina', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(21, 61, NULL, 'RA/BA/TA AL MAMUN BAIBARS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(22, 62, NULL, 'RA/BA/TA RIYADHUSHOLIHIN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(23, 63, NULL, 'SPS AL-MUAWANAH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(24, 64, NULL, 'SPS IBTISAAM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(25, 65, NULL, 'SPS ILHAM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(26, 66, NULL, 'SPS MARIPOSA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(27, 67, NULL, 'SPS NABILA AL FIYAH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(28, 68, NULL, 'SPS NURUL BAYAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(29, 69, NULL, 'SPS NURUL ILMI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(30, 70, NULL, 'SPS PELITA HATI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(31, 71, NULL, 'SPS RAUDHOTUL MUTA ALIMIN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(32, 72, NULL, 'SPS SEJAHTERA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(33, 73, NULL, 'TK CINTA NUSA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(34, 74, NULL, 'TK DEWI RATIH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(35, 75, NULL, 'TK DEWI SARTIKA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(36, 76, NULL, 'TK IT SALSABILA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(37, 77, NULL, 'TK MEKAR SARI ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(38, 78, NULL, 'TK MIFTAHUL ULUM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(39, 79, NULL, 'TK NEGERI SAGALAHERANG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(40, 80, NULL, 'TK PASIR ENDAH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(41, 81, NULL, 'TK PELITA KASIH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(42, 82, NULL, 'TK PERWANIDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(43, 83, NULL, 'TK PLUS MUTI MUIZ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(44, 84, NULL, 'TK PUSPA DEWI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(45, 85, NULL, 'TK SARI INDAH SGL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(46, 86, NULL, 'KB SITI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(47, 87, NULL, 'KB NARUTO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL);

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
(12, '0405783213', 'Sinta Melawati', 'feri', '085345679812', 'Wiraswasta', 0, 'Subang', 'Jakarta', '2019-08-07', 'P', '2021-11-24', NULL, 4);

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
(49, 'pimpinan', '430e47b33817660319af8765898e52063707c7d14ea2b44e0ea98064eee0c55a9ab40cd579ec59d9cfe272a80907216525c3abab4e80f9ca2165bffdb5f1ed89T9ZNk9Di6INipvhYOfMavW5G4HnOouyEUguD0qjq5Uc=', 'pimpinan'),
(50, 'kautsar', '9abb32ac80e3e16431a460b30161c7298bf6eb5f94470d02dbd728ac0b89fa7f09dc5e2be48ead0ad3f01c8d9a754c690bf479814cccf6de3d9f6bcc910ca950DGydZ/pFs9Hsg7sc2RMmHzPSk36CCOt3pGgSmtJoxxA=', 'operator'),
(51, 'muhyi', '83b77a292720bb4a647c211d9ea43b7dd0c7c97d36145f7105cd38e802ed5159f9c3e64f8de3c384e29bd73f52e9d7dcde172c006d365273b83710ff686275750SrT19+yY+kCVPSMgUA9qC/m7FDlJ01+8mRNP7pDpQo=', 'operator'),
(52, 'anugrah', '4900babeb8984ef6c8ff5f7325a097b9c61b24a54280c32a9e8fed9bc78bdec6d99642304c44096ffda20653798a77c7fd764a3ed05e23dfd41c63e331d0fc61Kg8vx6SnEQBCeoNK6DjU+6e+QZd1bS01Fb9bz/lwKK4=', 'operator'),
(53, 'radhwa', '459f5063307da743a91c2f114445c7c18df7df2fc4607d69578f13d5fa41bcf7ae1df378fbc5374663fad1d721c72d5c7d00be8aa9156b77c1ef7d07dff81c65lI49vS9QKtxj7Kqg+ubY/SDdabeEoKTQ1yJ3hBinjw8=', 'operator'),
(54, 'rohmah', '01e615f2e1b6b080ea2274c8cbd6b90466e8910df9afe6ac4954e65d7dbaf6fa42dc73cda682c63484e7abe2cdeb74b31f1ff9387bef9694ae675dbbfb95c472aZb+MGUbF3Ty0x3jevIGIysxbt9gkzAt+f5JijNNU3A=', 'operator'),
(55, 'harapan bunda', '107a45110432e7e24eaa825e3a10688397c5e8244f152ddd48916928bc94fe46d7795d7dabcf885098872bafe6f6a7a30cb51018c6e31ab1f5c189fe3a7d16d0xqEmQczHIbEmVrsZGXQmNGBu6nD1puDhbAQaEz2vluo=', 'operator'),
(56, 'kasih ibu', '96ac596507b52ceb1d1058588e707e5ee064f0b3b056d2ce5369f1835f32f5747ee0a9d3ed6c07f2642ba5258b47188e2cce3180e854634cb4bdb9477d31f508lvSSHI8eP+xF87V9fX2SmODJqt//k3GceS3QgjTe/HU=', 'operator'),
(57, 'kenanga', '946cb894353d6da97643ce0df986d27db5cb876a697b4ee8cb111fb529d4822a0417b2ea919f494c462177582e39ee83699c52b067003ed43223682edcdc969aVx3AGqW99+yJTB7CnzY0e9O0h2TIy4ASrlUkgi/d8eg=', 'operator'),
(58, 'miftahussaadah', '6b004630e219968179ff044ad0f4a31c0f5a7c5b017467701304eaab1df74d648f9da27cd53fd37cb7d4d1149deb9994fe91832341b90500931f601494c62db1sWc63GJX8XcrdrQTUDQoi1331JEOk+XeL/kalzpGDmM=', 'operator'),
(59, 'muti barokah', '2e4aa91344f1511fc283c59244ac1863dfa0488b9040ac6fedf7ee08853824c75d6d535f8ab4240f2ae2f56af1a7217873859d0efcc7ef94f0d757edef6d17d3FOTA+t7Wc2OprazdCSQ69PF1thsx5bAttlXA87O3VK0=', 'operator'),
(60, 'ibnu shina', '6e201c57e44c5870d9374ef3cdb3996b3ea0f00bcea6b2c2d665fbd72f023442f6a6825b06b2748205a5c988264ae832d4950b5793e613f50799fc3cc21560ffnfLxk1ep0yg0jOQbBKoaQYTL8VB2qUU4Rk/QHgxWA04=', 'operator'),
(61, 'almamun', '061648fa069797eed3aaca8226316ed12cc75c300ced90249db1e145f69450501ac3ff48c6b3b11fab04163cd2fdc1ccdaa141c961b3fba0c383700b48e5fc40Xd9xymwN7OPon7Y93Q8a1eactXu2z5/kj7DHSnChQ30=', 'operator'),
(62, 'riyadhusholihin', '43556dd47584a018847991f750e0853e8bb9df9d5b2f70e0885b1d4293a44935a9203378edeeb0a3523734039bfacdc0a2e1cb7ff8248fab8efe3719b0e86cc7mAGHLp28c40G+YkWFsW00DrjzPE2kkJIxEgH7cH8HvY=', 'operator'),
(63, 'al-muawanah', '046c5dfb22df9a70ab2f39256a73434abe589ea21e85b09940df9a0c88970b6e6b2930d7fba5f4db2b2e2f6cacadb6284b7e8c0ada78998ad799c6ce6c3d4659FnDDDeclfCXmuQEy2HlG8JV1hRw2lwBYu2VXFz6XAOw=', 'operator'),
(64, 'ibtisaam', '65be985fd5cb85e5a100a06d09734835cfd80f41f5e6f00791d72b18aab43550296e4c8ed65a790282d3cdba92510ebb895feffb8e7a3179a2271b674648805blApZ6yXV+Q2wvEJb1gBVPZYktO0q5UKZ0Z2wyyWTdOU=', 'operator'),
(65, 'ilham', '9428eeb315f51a13fd8ac0ff0ef75289d2539cf956230d85e618e481a0bee6bf9ee8d4e6a3a63a243dbcb4fa87dfd62894f0070927ccc683467ba2b3375637b0WbQlyAtfHTauBvHMWGzABfgvPBNLRFrH+eU/lGnMcQU=', 'operator'),
(66, 'mariposa', '3b77cb7e4572673abbfba91a851178cb64a873d637f2329d99d48f4e08d805122f9e98ca654af19d58b0d0ba04337d42cd4d44c8daa5234b28c923795c308e88dYifpxwUzSa3T2XnL2S4XgsfdkKwA1NDTtSvEkl1aFU=', 'operator'),
(67, 'nabila', '8b4a6cbc82b4d86e1eaddbecbfbd706e60074f7e0709a5686e967437b60d45a7f83dfa2594644bd6c953badb9fa39079cbdaea9e3d0ccd8088bfee37203fc957IEaaVXoI75ml9vA8aaaSAVKbrzoh2SYl6js+KOnnnyA=', 'operator'),
(68, 'nurul bayan', '5fad0f51369697c460a91d6295b79d35f6319094d5e7610e8652607b013b5dbb610f5f4c27652b646c91555943abb43c32501378ba80530cd66c7caefec54ca7QTgml+i/OG/IBgq/6hN9Cs1/2HGqPcy1a+VLlyBv/00=', 'operator'),
(69, 'nurul ilmi', '3e27073d8bd0bc65fd9120806cb14f18fb044b42e46ddf145fe35b6e94998c1cfa2d33e43f8920574323ba1d5530b6de0faed499de672c04ce623c337f2ec7e2UmCSnpWQUYfu5mrnkzxkWmakwqUsMdlgkW/ftnxUtTE=', 'operator'),
(70, 'pelita hati', 'a80f19186b2782089e534b2a43df23b4606b5dc267e792b4f479ca9c3e5fc07ef633d7e0829ec3aa6e540aaf116e373e76b4d9d3dfa7b2aab0948803877e2d7aV4PV6PRckYAnCcO6JqjHf5fl57syf6TRyYR44DH+P4M=', 'operator'),
(71, 'raudhotul', 'b0bd28b03b6675c2e4dc95972fff4491462f7631fe107a928f8e2525cb611fb6cda3ad8f0798917686f55f0cb76f70e02afaed978ddfd9f80ae3ecdbca74b8c1XHhk6kg9letYgWzSGqtxi15ft8kX/7PbjjbM5TizVxc=', 'operator'),
(72, 'sejahtera', '7a7a6feecaa98861f62aa67ace9cd9ef402e0bb0048edacf51252f4376b6c1d6b3373260e7f9fd2c17b2ee4f994a3709752a83691fcb4e0a2684e281e6efaffcmUGlOdWlBUcxUf+72ZbMJC1RrpbZB6ZSRG3W5GdAed0=', 'operator'),
(73, 'cinta nusa', 'e35c913e9f7b27e0aedde14584d5417f76b559fa8ab507d9b9e011637cdf3a8bcd52db8686a7a55cd9e2993f07f49e03d9259b34d31d563eae35af96394dee66rKhBCii2yDLI8/qcbOBOgn+mQUXBZiDOaEepp/t0CiA=', 'operator'),
(74, 'dewi ratih', 'eb2f2b33db7a4b78d29bbc0c311cd0694fce3b64daae86fd77abe68d9ef407638046be124b4c61a8dafde17771add3028e1d3ced6f8714e0401d7e4afa6f5d575DntUnqKVxBex57SesCT+l3wwKkzs8fQ5IMsMp5GGtU=', 'operator'),
(75, 'dewi sartika', 'c0b33715e3110d4068c694421d65f3b9aee66695100ef6f8504aecbd745d70029e287a229d01d238687594144229ab34026ba1e9fbb2c93bd7379d490368ca045xilHslVC+f1Ck3bYaf3VFxlvFljqokBxma84eAsO3A=', 'operator'),
(76, 'it salsabila', '5586ad067c2addab371bec1aff9fd20be561d30688a6f2745066c3cac2b71b9e36717ba66d03ba03e4c82ee3dcb32a04d7380b43aabcfebb99c9e7151b575630iFHQUFMyIXInBZzQAoWqFlGjvjKOzXIIaBLv87rKSnA=', 'operator'),
(77, 'mekar sari', '63997be90709a49ebd7ce1e27a09ada7cb96cb56094127052cdc24328bef9f0b49f7c3ce7b7f21d0a1dbf0dea0e8ddfe4112dd0be35332c3caf5bedb34769f54Jc+/iwrfdbzvEvWfI17nLT6s4feL2hwDlVbNk/rjeGQ=', 'operator'),
(78, 'miftahul ulum', '69bf086471231de1c5cceee6830bad4e10e50eba1008e4f2be8d0bc69e4d2251868480a9969668ba0ab82ff93d4891343751119427f03b146b2e691a440e6f38SlGTmVelzMRak6ARrxIUkvLcSa45YVlQlDqNRo95iwU=', 'operator'),
(79, 'negeri sagalaherang', 'ada7a8d8e46067f409f7c20fa92dd3a16268476bb26c6e27518adc0181b2faf0a63484b73f594c376ba74328433c853e4f40cdc6a9e4f8a469b155f5acffa70f+HP+VqMw4TkcW9mB8XkDkctiLOIeMTArZ2LuwACPtam2OqqJk8iQ8P4quNoFec2b', 'operator'),
(80, 'pasir endah', 'dcea0f3416575e23af5ba72ba358b0ab905cc041de9ce27ca137edb1073761369bbcdca02adf57775ba7de8d52e4f5f1638352994f3a06fe7ac008da8950ca443Ah3jzgy5pMhIFkUl0or08peHF18gkLhfoPPx4ah/4M=', 'operator'),
(81, 'pelita kasih', 'd7d20a8f9638e95575ae156e0c1942bd3228ff7916074d9e5d18bc7247315f17c66706478812e8778da77571bc3edc12ea1fb142b5525fb3e0535a5be840410cgXm7PnCV1vQp49l5VYng1RyoEY0blADpFUF7JyvfTFI=', 'operator'),
(82, 'perwanida', '5bfc2984a7df4c34caad66a78edbdceafc65e5435601462c0a07d39b14735c077baa35aae49fd8b301a778591991f0fcbbdcd4f9103e98197f6a74d1534b16293lez+Z7ZV+3yKBE6pEBscX5ee01XXBc0dN0y9aktvrE=', 'operator'),
(83, 'plis muti muiz', '0305baf67bfe461c9274c2dee6054c4fde317930b9da7a80b6e3b8a12ad66322ad6a8d910179a0f11d2de25acf14ae28da9636371b6769f8699bec237a4b47d3wlg7yTn7EVyvTPR2jSt9z3Zg6CqmjXIi2DogPdYb4yE=', 'operator'),
(84, 'puspa dewi', '93730e9400bb82af5d84dec3a85858409a34ded44fa11acfda70f7d18b0f5560957fbc25ae5795fe8fa43dd8c4c7bed93b3b47bedaa34a6c67ebcf76291df47brbUxVb+yeDm/LGIbxhfnywY16lMK0LfuKxIfjamCAMU=', 'operator'),
(85, 'sari indah sgl', 'da1d5d8d0d9c40c4097292f45ceda94e9a03a3de5c538ba5743ebb7bedcbe774dea9994cb6ccd71b7960007111482b6aba62799b7d72284f2469ed84dd323e28/3eQSipHRk3eHLbJ3HUAM8uOjfjD9RgSi6L+SOpAhqk=', 'operator'),
(86, 'siti', '3e5f79e2b3e4dae35233d945f2f34b97ff684569934d2ce5de1806a5f1b86186cfbc927645dd733edc1332cb84ee1f87846c9258241d345deccdd8e5dead0429TEexTQ7Brz2dn0cUwWVl4jnM6uUmXaj1liKGfkMmo9k=', 'operator'),
(87, 'narto', '02cb6da0451533e0053bb4207718f02196020bd7c5e7b98d63a0d5f638167fe42f13772052604945d0703fd4df1b929dd14dc346517ab1a7ab5a9cb76863f80ekNfY2Z9WRw8ODuaHk669flvXV9njlRTMxE9/7x1ArqA=', 'operator');

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
  MODIFY `id_gizi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_lembaga`
--
ALTER TABLE `tbl_lembaga`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

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
