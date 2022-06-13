-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 11, 2022 at 06:15 AM
-- Server version: 10.4.24-MariaDB
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
(10, 50, '69824004', 'KB AL-KAUTSAR', '010', '013', 'JL. CURUG AGUNG', 2022, '', 'KB (Kelompok Bermain)', 2022, 'A', 'image_placeholder.jpg', '', ''),
(11, 51, ' 69823959', 'KB AL-MUHYI', '010', '013', 'KP Cembul', 2018, '', 'KB (Kelompok Bermain)', 2021, 'A', 'image_placeholder.jpg', '', ''),
(12, 52, ' 69861414', 'KB ANUGRAH', '010', '012', 'Kp Mande RT 25 RW 09', 2018, '', 'KB (Kelompok Bermain)', 2021, 'A', 'image_placeholder.jpg', '', ''),
(13, 53, ' 69952595', 'KB AR-RADHWA', '010', '013', 'KP SINAPEUL RT 06 RW 02', 2018, '', 'KB (Kelompok Bermain)', 2021, 'A', 'image_placeholder.jpg', '', ''),
(14, 54, ' 69824192	', 'KB AR-ROHMAH', '010', '013', 'Kp. Cikadu RT.20 RW.06', 2018, '', 'KB (Kelompok Bermain)', 2021, 'A', 'image_placeholder.jpg', '', ''),
(15, 55, ' 69823936', 'KB HARAPAN BUNDA', '010', '003', 'CICEURI', 2017, '', 'KB (Kelompok Bermain)', 2021, 'A', 'image_placeholder.jpg', '', ''),
(16, 56, ' 69861642', 'KB KASIH IBU ', '010', '005', 'KP. KAUM RT.008/003', 2019, '', 'KB (Kelompok Bermain)', 2021, 'A', 'image_placeholder.jpg', '', ''),
(17, 57, ' 69824001', 'KB KENANGA', '010', '004', 'PANARUBAN', 2018, '', 'KB (Kelompok Bermain)', 2021, 'A', 'image_placeholder.jpg', '', ''),
(18, 58, ' 69824129', 'KB MIFTAHUSSAADAH', '010', '005', 'Kp. Krajan RT.12 RW.09 Desa Sagalaherang', 2018, '', 'KB (Kelompok Bermain)', 2021, 'A', 'image_placeholder.jpg', '', ''),
(19, 59, ' 69953925', 'KB MUTI BAROKAH', '010', '013', 'KP. BATUKAPUR RT 024 RW 004', 2018, '', 'KB (Kelompok Bermain)', 2021, 'A', 'image_placeholder.jpg', '', ''),
(20, 60, ' 69940981', 'RA Ibnu Shina', '010', '005', 'Krajan Rt 12/09 Desa Sagalaherang', 2017, '', 'RA (Raudhatul Athfal)', 2021, 'B', 'image_placeholder.jpg', '', ''),
(21, 61, 'almamun', 'RA/BA/TA AL MAMUN BAIBARS', '010', '013', 'Jl. Alun-Alun Timur No. 11 Rt. 09 Rw. 03', 2017, '', 'RA (Raudhatul Athfal)', 2021, 'A', 'image_placeholder.jpg', '', ''),
(22, 62, ' 69737437', 'RA/BA/TA RIYADHUSHOLIHIN', '010', '004', 'Jl Raya Cicadas II Rt 14/03 Ds. Cicadas', 2017, '', 'RA (Raudhatul Athfal)', 2021, 'A', 'image_placeholder.jpg', '', ''),
(23, 63, ' 69824097', 'SPS AL-MUAWANAH', '010', '003', 'SUKAMANDI', 2017, '', 'SPS (Satuan PAUD Sejenis)', 2021, 'A', 'image_placeholder.jpg', '', ''),
(24, 64, 'ibtisaam', 'SPS IBTISAAM', '010', '012', 'Jl. Cibuntu RT.19 RW.07 Desa Sagalaherang Kaler', 2017, '', 'SPS (Satuan PAUD Sejenis)', 2021, 'A', 'image_placeholder.jpg', '', ''),
(25, 65, ' 69824161	', 'SPS ILHAM', '010', '003', 'KP . PASIRMENYAN', 2017, '', 'SPS (Satuan PAUD Sejenis)', 2017, 'A', 'image_placeholder.jpg', '', ''),
(26, 66, ' 69824167', 'SPS MARIPOSA', '010', '004', 'Jl. Cicadas RT. 07 RW. 02', 2017, '', 'SPS (Satuan PAUD Sejenis)', 2021, 'A', 'image_placeholder.jpg', '', ''),
(27, 67, ' 69959053', 'SPS NABILA AL FIYAH', '010', '003', 'KP. SUKAMANDI RT 17 RW 08', 2018, '', 'SPS (Satuan PAUD Sejenis)', 2021, 'A', 'image_placeholder.jpg', '', ''),
(28, 68, ' 69911607', 'SPS NURUL BAYAN', '010', '004', 'KP.CIGEUREUNG RT 17/04', 2017, '', 'SPS (Satuan PAUD Sejenis)', 2021, 'A', 'image_placeholder.jpg', '', ''),
(29, 69, ' 69911605', 'SPS NURUL ILMI', '010', '006', 'KP.CIWAHANG RT 14/04', 2017, '', 'SPS (Satuan PAUD Sejenis)', 2017, 'A', 'image_placeholder.jpg', '', ''),
(30, 70, ' 69861640', 'SPS PELITA HATI', '010', '006', 'BOJONGRANGKAS', 2017, '', 'SPS (Satuan PAUD Sejenis)', 2021, 'A', 'image_placeholder.jpg', '', ''),
(31, 71, ' 69911604', 'SPS RAUDHOTUL MUTA ALIMIN', '010', '006', 'Jl. Margaluyu RT.08 RW.03 Desa Dayeuhkolot Kecamatan Sagalaherang', 2017, '', 'SPS (Satuan PAUD Sejenis)', 2021, 'A', 'image_placeholder.jpg', '', ''),
(32, 72, ' 69861644', 'SPS SEJAHTERA', '010', '012', 'GUDANG GARAM', 2017, '', 'SPS (Satuan PAUD Sejenis)', 2021, 'A', 'image_placeholder.jpg', '', ''),
(33, 73, ' 69968497', 'TK CINTA NUSA', '010', '012', 'KAMPUNG CILEUNGSING', 2007, '', 'TK (Taman Kanak-kanak)', 2021, 'A', 'image_placeholder.jpg', '', ''),
(34, 74, ' 20264553', 'TK DEWI RATIH', '010', '006', 'Jl. Yudha Prawira RT. 02 RW. 01', 2008, '', 'TK (Taman Kanak-kanak)', 2021, 'A', 'image_placeholder.jpg', '', ''),
(35, 75, ' 20264556', 'TK DEWI SARTIKA', '010', '005', 'Kp. Krajan RT. 12 RW. 08', 2004, '', 'TK (Taman Kanak-kanak)', 2021, 'A', 'image_placeholder.jpg', '', ''),
(36, 76, ' 69988148', 'TK IT SALSABILA', '010', '004', 'Kp. Panaruban RT.24 RW.05 Desa Cicadas Kec. Sagalaherang', 2005, '', 'TK (Taman Kanak-kanak)', 2021, 'A', 'image_placeholder.jpg', '', ''),
(37, 77, ' 20264595', 'TK MEKAR SARI ', '010', '003', 'Jl. Sukamandi RT. 16 RW. 08', 2007, '', 'TK (Taman Kanak-kanak)', 2021, 'A', 'image_placeholder.jpg', '', ''),
(38, 78, '69912221', 'TK MIFTAHUL ULUM', '010', '011', 'Kp. Ciherang RT. 04 RW. 02', 2003, '', 'TK (Taman Kanak-kanak)', 2021, 'A', 'image_placeholder.jpg', '', ''),
(39, 79, ' 20264636', 'TK NEGERI SAGALAHERANG', '010', '005', 'Jl. Alun-alun Selatan Kp. Keripik RT. 09 RW. 03', 2005, '', 'TK (Taman Kanak-kanak)', 2021, 'A', 'image_placeholder.jpg', '', ''),
(40, 80, ' 20264630', 'TK PASIR ENDAH', '010', '003', 'Jl. Pasirmenyan RT. 08 RW. 04', 2004, '', 'TK (Taman Kanak-kanak)', 2021, 'A', 'image_placeholder.jpg', '', ''),
(41, 81, ' 69861344', 'TK PELITA KASIH', '010', '011', 'L DESA LELES', 2004, '', 'TK (Taman Kanak-kanak)', 2021, 'A', 'image_placeholder.jpg', '', ''),
(42, 82, '20264637', 'TK PERWANIDA', '010', '005', 'Jl. Citalutug RT. 13 RW. 05', 2007, '', 'TK (Taman Kanak-kanak)', 2021, 'A', 'image_placeholder.jpg', '', ''),
(43, 83, ' 69922538', 'TK PLUS MUTI MUIZ', '010', '013', 'Jl. Curugagung RT. 014/004', 2007, '', 'TK (Taman Kanak-kanak)', 2021, 'A', 'image_placeholder.jpg', '', ''),
(44, 84, ' 20264643', 'TK PUSPA DEWI', '010', '004', 'Jl. Cicadas RT. 01 RW. 01', 2003, '', 'TK (Taman Kanak-kanak)', 2021, 'A', 'image_placeholder.jpg', '', ''),
(45, 85, '20264660', 'TK SARI INDAH SGL', '010', '003', 'JL. CICEURI SAGALAHERANG', 2007, '', 'TK (Taman Kanak-kanak)', 2021, 'A', 'image_placeholder.jpg', '', ''),
(46, 86, NULL, 'KB SITI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(47, 87, ' 69958025', 'AL-MA RUF', '020', '015', 'Kp. Caringin Rt.13 Rw.04', 2007, '', 'SPS (Satuan PAUD Sejenis)', 2021, 'A', 'image_placeholder.jpg', '', ''),
(48, 88, ' 69976144	', 'AN-NUR', '020', '016', 'JL. RAYA PATROL RT 20 RW 07', 2003, '', 'SPS (Satuan PAUD Sejenis)', 2021, 'A', 'image_placeholder.jpg', '', ''),
(49, 89, '	 69823980', 'KB AL-HUDA', '020', '016', 'CICARIANG RT.20/06', 2003, '', 'KB (Kelompok Bermain)', 2021, 'A', 'image_placeholder.jpg', '', ''),
(50, 90, '	 69968535', 'KB AL-MUJAHIDU', '020', '016', 'Bunihayu RT. 06 RW. 02', 2005, '', 'KB (Kelompok Bermain)', 2007, 'A', 'image_placeholder.jpg', '', ''),
(51, 91, ' 69823979', 'KB DIRAASAH AL-QUR ANNIYYAH', '020', '015', 'JALAN CAGAK', 2008, '', 'KB (Kelompok Bermain)', 2021, 'A', 'image_placeholder.jpg', '', ''),
(52, 92, ' 69911193', 'KB NURUL INSANI', '020', '017', 'Dusun Simpang RT. 07/03 Desa Tambak Mekar Kec. Jalancagak', 2007, '', 'KB (Kelompok Bermain)', 2007, 'A', 'image_placeholder.jpg', '', ''),
(53, 93, ' 69861416', 'KB SANGGA BUANA', '020', '017', 'JLN. BABAKAN SUKAMAJU KP. PATROL RT.22/06', 2007, '', 'KB (Kelompok Bermain)', 2021, 'A', 'image_placeholder.jpg', '', ''),
(54, 94, ' 69824126', 'KB SINAR CEMPAKA', '020', '016', 'Kp. Cicariu RT.022 RW.003 Desa Bunihayu Kec. Jalancagak', 2005, '', 'KB (Kelompok Bermain)', 2021, 'A', 'image_placeholder.jpg', '', ''),
(55, 95, ' 69861415', 'KB SINAR MENTARI', '020', '015', 'Jalancagak RW.01 Desa Jalancagak Kecamatan Jalancagak', 2007, '', 'KB (Kelompok Bermain)', 2007, 'A', 'image_placeholder.jpg', '', ''),
(56, 96, '	 69823982', 'KB TARBIYATUL UMMAT', '020', '015', 'CISEUTI', 2003, '', 'KB (Kelompok Bermain)', 2021, 'A', 'image_placeholder.jpg', '', ''),
(57, 97, ' 70011761', 'KB TASDIIQUL INSAN', '020', '007', 'Kp. Jabong II RT.026 RW.009 Desa Curugrendeng Kec. Jalancagak Kab. Subang', 2007, '', 'KB (Kelompok Bermain)', 2007, 'A', 'image_placeholder.jpg', '', ''),
(58, 98, ' 69987766', 'Kober AL-BAROKAH', '020', '016', 'Kp. Cicariu RT.15 RW.04 Desa Bunihayu Kec. Jalancagak', 2007, '', 'KB (Kelompok Bermain)', 2021, 'A', 'image_placeholder.jpg', '', ''),
(59, 99, ' 69911207', 'KOBER ASSIROJ', '020', '014', 'Tambakan RT. 015/004', 2003, '', 'KB (Kelompok Bermain)', 2021, 'A', 'image_placeholder.jpg', '', ''),
(60, 100, ' 69911211', 'KOBER BINA WARGA', '020', '007', '	Kp. Curugrendeng RT. 10/03', 2007, '', 'KB (Kelompok Bermain)', 2021, 'A', 'image_placeholder.jpg', '', ''),
(61, 101, '69911196', 'KOBER INSAN CIPTA', '020', '014', 'Tambakan RT. 021/005', 2004, '', 'KB (Kelompok Bermain)', 2021, 'A', 'image_placeholder.jpg', '', ''),
(62, 102, ' 69911200', 'KOBER UMI BINA MANDIRI', '020', '016', 'Kp. Bunihayu RT. 003/001', 2007, '', 'KB (Kelompok Bermain)', 2021, 'B', 'image_placeholder.jpg', '', ''),
(63, 103, NULL, 'RA EDUFAZA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(64, 104, NULL, 'RA KHOLIFI AZAM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(65, 105, NULL, 'RA/BA/TAAL HUDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(66, 106, NULL, 'RA/BA/TAAL IHSAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(67, 107, NULL, 'RA/BA/TAAL IKHLAS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(68, 108, NULL, 'RA/BA/TAAL MADANI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(69, 109, NULL, 'RA/BA/TAAL MUAWANAH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(70, 110, NULL, 'RA/BA/TA BINA INSANI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(71, 111, NULL, 'RA/BA/TA DARUSSALAM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(72, 112, NULL, 'RA/BA/TA MANARUL BAYAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(73, 113, NULL, 'SPS AN-NISA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(74, 114, NULL, 'SPS AZZAHRA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(75, 115, NULL, 'SPS NURUL BAYAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(76, 116, NULL, 'TK ANUGRAH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(77, 117, NULL, 'TK DARUL MUBAROK SAALIMATUL INSAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(78, 118, NULL, 'TK HARAPAN MULYA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(79, 119, NULL, 'TK ISLAM NUR IKHLAS PATROL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(80, 120, NULL, 'TK JABAL TORIQ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(81, 121, NULL, 'TK KASIH IBU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(82, 122, NULL, 'TK MEKARSARI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(83, 123, NULL, 'TK NURSAADAH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(84, 124, NULL, 'TK Nursalam', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(85, 125, NULL, 'TK NURUL HIKMAH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(86, 126, NULL, 'TK PLUS AISYIYAH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(87, 127, NULL, 'TK QURAN AR ROYYAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(88, 128, NULL, 'TK RIYADHUL JANNAH CIDAKI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(89, 129, NULL, 'TK TUNAS KARYA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(90, 130, NULL, 'TK TUNAS MEKAR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(91, 131, NULL, 'TKIT AR-RIFQI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(92, 132, NULL, 'TKIT AS-SYIFA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(93, 133, NULL, 'TKIT EL NABILA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(94, 134, NULL, 'TKIT INSAN CERIA JALANCAGAK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(95, 135, NULL, 'TKIT MIFTAHUL HUDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(96, 136, NULL, 'TKIT TAHFIDZ PLUS ARRIFA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(97, 137, NULL, 'Al Falah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(98, 138, NULL, 'KB ADH DLUHU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(99, 139, NULL, 'KB AL-AMIN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(100, 140, NULL, 'KB AL-BAROKAH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(101, 141, NULL, 'KB AL-BAYAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(102, 142, NULL, 'KB AL-HIKMAH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(103, 143, NULL, 'KB AN-NURIYAH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(104, 144, NULL, 'KB ANAK MOTEKAR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(105, 145, NULL, 'KB AT-TAUFIQ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(106, 146, NULL, 'KB DARUL FADILAH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(107, 147, NULL, 'KB DARUL ULUUM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(108, 148, NULL, 'KB DARUL WALAD', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(109, 149, NULL, 'KB MUTIARA RAHMAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(110, 150, NULL, 'KB TARBIYSTULATHFAL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(111, 151, NULL, 'KB TIARA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(112, 152, NULL, 'KB BUSTANUL WILDAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(113, 153, NULL, 'KB MUTIARA HATI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(114, 154, NULL, 'KOBER AL-FURQON', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(115, 155, NULL, 'KOBER AR-RAUDHOH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(116, 156, NULL, 'KOBER BINA KARYA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(117, 157, NULL, 'KOBER NURUL HASANAH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(118, 158, NULL, 'KOBER NURUL IMAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(119, 159, NULL, 'KOBER PERSADA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(120, 160, NULL, 'RA Nurtiana', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(121, 161, NULL, 'RA/BA/TAAL AMIN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(122, 162, NULL, 'RA/BA/TAAL BAROKAH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(123, 163, NULL, 'RA/BA/TAAL MUBAROKAH I', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(124, 164, NULL, 'RA/BA/TAAL-HADI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(125, 165, NULL, 'RA/BA/TAAL-ISHLAH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(126, 166, NULL, 'RA/BA/TAAL-MUBAROK II', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(127, 167, NULL, 'RA/BA/TA AN NUR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(128, 168, NULL, 'RA/BA/TA ARRAUDHOH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(129, 169, NULL, 'RA/BA/TA DARUL MAQOSID', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(130, 170, NULL, 'RA/BA/TA MIFTAAHUR RAHMAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(131, 171, NULL, 'RA/BA/TA MUTIAHATI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(132, 172, NULL, 'RA/BA/TA NURUL BAYAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(133, 173, NULL, 'RA/BA/TA NURUL HASANAH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(134, 174, NULL, 'RA/BA/TA NURUL IMAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(135, 175, NULL, 'RA/BA/TA YABAIB', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(136, 176, NULL, 'SPS AL- MUHSININ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(137, 177, NULL, 'SPS AL-MUHAJIRIN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(138, 178, NULL, 'SPS GINANJAR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(139, 179, NULL, 'SPS KHOERUNNISA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(140, 180, NULL, 'SPS TUNAS MEKAR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(141, 181, NULL, 'TK AL FURQON', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(142, 182, NULL, 'TK AL-FATTAH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(143, 183, NULL, 'TK AL-FITRAH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(144, 184, NULL, 'TL AL-HIDAYAH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(145, 185, NULL, 'TK AL-ISLAM TARBIYATUL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(146, 186, NULL, 'TK ARROSYID', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(147, 187, NULL, 'TK ASH SHIDDIQ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(148, 188, NULL, 'TK AZZAHRA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(149, 189, NULL, 'TK DARUL DZAKY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(150, 190, NULL, 'TK DARUL ULUUM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(151, 191, NULL, 'KB GANDA SAPUTRA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(152, 192, NULL, 'TK ISLAM DARUL FALAH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(153, 193, NULL, 'TK KUNCUP HARAPAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(154, 194, NULL, 'TK MABADI AWALIAH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(155, 195, NULL, 'TK MAULANA YUSUF', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(156, 196, NULL, 'TK MUTIARA RAHMAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(157, 197, NULL, 'TK PAGELARAN II', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(158, 198, NULL, 'TK PGRI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(159, 199, NULL, 'TK SAIN ZAKARIYYA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(160, 200, NULL, 'TK TUNAS KARYA BKN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(161, 201, NULL, 'TK WIJAYA KHOERUNNISA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(162, 202, NULL, 'TPA MIFTAAHUR RAHMAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(163, 203, NULL, 'AL WASIATULIMAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(164, 204, NULL, 'BHAKTI SINAR ASIH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(165, 205, NULL, 'KB BINA REMAJA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(166, 206, NULL, 'KB AL-HIDAYAH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(167, 207, NULL, 'KB AL-HUDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(168, 208, NULL, 'KB AN-NURROHMAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(169, 209, NULL, 'KB ASSYAKUR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(170, 210, NULL, 'KB AT-TAUFIQ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(171, 211, NULL, 'KB AT-TAWAKAL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(172, 212, NULL, 'KB AZ-ZAHRA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(173, 213, NULL, 'KB BABUL ILMI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(174, 214, NULL, 'KB BINA KARYA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(175, 215, NULL, 'KB BINA MANDIRI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(176, 216, NULL, 'KB BUNGA BANGSA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(177, 217, NULL, 'KB FATIATUL ILMI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(178, 218, NULL, 'KB MAWAR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(179, 219, NULL, 'KB MAWAR MERAH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(180, 220, NULL, 'KB NURUL IKHLAS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(181, 221, NULL, 'KB NURULHUDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(182, 222, NULL, 'KB SEROJA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(183, 223, NULL, 'KB TUNAS HARAPAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(184, 224, NULL, 'KOBER BAKTI SINAR ASIH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(185, 225, NULL, 'RA ANNAFI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(186, 226, NULL, 'RA Arrauuf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(187, 227, NULL, 'RA USWATUN HASANAH CIKADU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(188, 228, NULL, 'RA/BA/TA AL MUBAROK III', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(189, 229, NULL, 'RA/BA/TA AL MUSABAQOH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(190, 230, NULL, 'RA/BA/TA AL ZAHROH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(191, 231, NULL, 'RA/BA/TA AL-ISHLAH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(192, 232, NULL, 'RA/BA/TA AL-ISTIQOMAH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(193, 233, NULL, 'RA/BA/TA AL-MUSRI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(194, 234, NULL, 'RA/BA/TA ALWASHILATUL IMAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(195, 235, NULL, 'RA/BA/TA AS SALAM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(196, 236, NULL, 'RA/BA/TA NURUL HUDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(197, 237, NULL, 'SPS AL MUSABAQOH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(198, 238, NULL, 'SPS AL-MUNAWAR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(199, 239, NULL, 'SPS AR RAAFIATUL PUSPITA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(200, 240, NULL, 'SPS AR-RAUUF', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(201, 241, NULL, 'SPS BINA WARGA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(202, 242, NULL, 'SPS KENARI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(203, 243, NULL, 'SPS MIFTAHUL BAYYINAH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(204, 244, NULL, 'SPS PELANGI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(205, 245, NULL, 'SPS QUWATUL ISLAM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(206, 246, NULL, 'SPS SEJAHTERA 1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(207, 247, NULL, 'SPS SEJAHTERA II', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(208, 248, NULL, 'TK AL UKHUWAH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(209, 249, NULL, 'TK AL-HUDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(210, 250, NULL, 'TK UKHUWAH II', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(211, 251, NULL, 'TK AT TAQWA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(212, 252, NULL, 'TK AULIA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(213, 253, NULL, 'TK AZ-ZAHRA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(214, 254, NULL, 'TK BABUS SALAM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(215, 255, NULL, 'TK BINA MANDIRI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(216, 256, NULL, 'TK BINAWARGA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(217, 257, NULL, 'TK CAHAYA MEKAR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(218, 258, NULL, 'TK DARUL MUSTOFA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(219, 259, NULL, 'TK MAWAR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(220, 260, NULL, 'TK MELATI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(221, 261, NULL, 'TK MELATI NEGLASARI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(222, 262, NULL, 'TK MIFTAHUL BARIYYAH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(223, 263, NULL, 'TK NURUL HUDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(224, 264, NULL, 'TK NURUL IKHLAS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(225, 265, NULL, 'TK PAGELARAN I', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(226, 266, NULL, 'TK PELANGI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(227, 267, NULL, 'TK PLUS AL KAUSAR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(228, 268, NULL, 'TK PLUS AL-ADZKIYA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(229, 269, NULL, 'TK PLUS AL-MUMTAZ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(230, 270, NULL, 'TK SEROJA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(231, 271, NULL, 'TK TUNAS HARAPAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(232, 272, NULL, 'KB AL-HAJAR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(233, 273, NULL, 'KB AL AZHAR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(234, 274, NULL, 'KB AL-HADDAD', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(235, 275, NULL, 'KB AL-IKHLAS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(236, 276, NULL, 'KB AL-IKHLAS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(237, 277, NULL, 'KB AL-QALAM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(238, 278, NULL, 'KB ANGGREK MERAH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(239, 279, NULL, 'KB ANSOR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(240, 280, NULL, 'KB AQILA MANDITA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(241, 281, NULL, 'KB ASTER SATIA GIRI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(242, 282, NULL, 'KB BABUL ULUM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(243, 283, NULL, 'KB CEMPAKA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(244, 284, NULL, 'KB DAHLIA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(245, 285, NULL, 'KB KENANGA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(246, 286, NULL, 'KB MANDIRI JAYA ABADI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(247, 287, NULL, 'KB MAWAR MEKAR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(248, 288, NULL, 'KB MIFTAHUSSAADAH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(249, 289, NULL, 'KB MUJAHIDIN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(250, 290, NULL, 'KB SATIA GIRI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(251, 291, NULL, 'KB TARBIYATUL ISLAMIYAH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(252, 292, NULL, 'KB TARBIATUS SOLIHIN I', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(253, 293, NULL, 'KB TARBIYATUS SOLIHIN ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(254, 294, NULL, 'KB TUNAS BANGSA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(255, 295, NULL, 'RA Al Munawaroh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(256, 296, NULL, 'RA QURROTA\'AYUNIN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(257, 297, NULL, 'RA /BA/TA AZ ZAHRA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(258, 298, NULL, 'RA/BA/TA MIFTAHUL ULUM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(259, 299, NULL, 'RA/BA/TA NURUL HUDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(260, 300, NULL, 'RA/BA/TA TARBIYATUL ISLAMIYAH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(261, 301, NULL, 'RA/BA/TA WALADIN SOLIHUN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(262, 302, NULL, 'SPS BABAKAN CURUG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(263, 303, NULL, 'SPS BUNGUR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(264, 304, NULL, 'SPS MAWAR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(265, 305, NULL, 'SPS MAWAR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(266, 306, NULL, 'SPS MAWAR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(267, 307, NULL, 'SPS MELATI ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(268, 308, NULL, 'SPS MELATI ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(269, 309, NULL, 'SPS NURUL ALAM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(270, 310, NULL, 'SPS NURUL FALAH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(271, 311, NULL, 'SPS RIADUSSALAFIYAH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(272, 312, NULL, 'SPS SAUYUNAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(273, 313, NULL, 'TK HIBAR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(274, 314, NULL, 'SPS INSAN KAMIL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(275, 315, NULL, 'TK IT ABIELA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(276, 316, NULL, 'TK PLUS ISLAM SYUKRILLAH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(277, 317, NULL, 'TK PLUS PELITA INSAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(278, 318, NULL, 'TK RIYADHUL JANNAH CIKUPA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(279, 319, NULL, 'TKIT ANNIBRAS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(280, 320, NULL, 'TKIT ILMAN NAFI AN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(281, 321, NULL, 'AT-TAUFIQ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(282, 322, NULL, 'KB AL-IKHLAS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(283, 323, NULL, 'KB FAJAR NURUL HIKMAH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(284, 324, NULL, 'KB HIDAYATUDDIN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(285, 325, NULL, 'KB KASIH IBU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(286, 326, NULL, 'KB MELATI II', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(287, 327, NULL, 'KB MELATI VII', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(288, 328, NULL, 'RA/BA/TA AL JASMIYAH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(289, 329, NULL, 'RA/BA/TA BINA INSAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(290, 330, NULL, 'SPS AL-AFIF', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(291, 331, NULL, 'SPS AL-HIKMAH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(292, 332, NULL, 'SPS AL-IKHSAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(293, 333, NULL, 'SPS AL-ISTIQOMAH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(294, 334, NULL, 'SPS AL-KHAROMAH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(295, 335, NULL, 'SPS AL-QODAR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(296, 336, NULL, 'SPS ATTAUFIQ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(297, 337, NULL, 'SPS BINA INSAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(298, 338, NULL, 'SPS BINA KENCANA II', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(299, 339, NULL, 'SPS BINA MANDIRI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(300, 340, NULL, 'SPS HASANAH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(301, 341, NULL, 'SPS MEKARSARI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(302, 342, NULL, 'SPS MIFTAHUL HIDAYAH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(303, 343, NULL, 'SPS PUSTAKA NURSYIFA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(304, 344, NULL, 'TK AL FURQON', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(305, 345, NULL, 'TK AL-AMANAH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(306, 346, NULL, 'TK AL-FATWA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(307, 347, NULL, 'TK AL-MUNAA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(308, 348, NULL, 'TK CERDAS CENDEKIA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(309, 349, NULL, 'TK CITA CERIA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(310, 350, NULL, 'TK HARAPAN BANGSA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(311, 351, NULL, 'TK ISLAM TERPADU NUR ASYSYIFAA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(312, 352, NULL, 'TK NURUL IMAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(313, 353, NULL, 'TK PERINTIS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(314, 354, NULL, 'TK RIYADHUL JANNAJ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(315, 355, NULL, 'TK SABILI SUBANG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(316, 356, NULL, 'TK TUNAS HARAPAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(317, 357, NULL, 'TK INSAN MANDIRI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(318, 358, NULL, 'AL-HUDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(319, 359, NULL, 'IT ABWABUSSALAM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(320, 360, NULL, 'KB AL AMANAH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(321, 361, NULL, 'KB AL HIDAYAH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(322, 362, NULL, 'KB AL-FITROH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(323, 363, NULL, 'KB AL-HAQ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(324, 364, NULL, 'KB AL-HIDAYAH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(325, 365, NULL, 'KB AL-HIDAYAH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(326, 366, NULL, 'KB AL-IKHLAS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(327, 367, NULL, 'KB AL-IKHLAS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(328, 368, NULL, 'KB AL-MUTTAQIN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(329, 369, NULL, 'KB BAHRUL ULUM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(330, 370, NULL, 'KB CAHAYA BUNDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(331, 371, NULL, 'KB CENDEKIA PANATAGMA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(332, 372, NULL, 'KB BUNDER MANDIRI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(333, 373, NULL, 'KB CERIA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(334, 374, NULL, 'KB DAHLIA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(335, 375, NULL, 'KB DAHLIA 1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(336, 376, NULL, 'KB DARUSSALAM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(337, 377, NULL, 'KB DELIMA MERAH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(338, 378, NULL, 'KB FARAS AULIA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(339, 379, NULL, 'KB GENESHA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(340, 380, NULL, 'KB GOLDEN AGE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(341, 381, NULL, 'KB HUSNUL KHATIMAH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(342, 382, NULL, 'KB KURCACI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(343, 383, NULL, 'KB LENTERA HATI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(344, 384, NULL, 'KB MAWAR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(345, 385, NULL, 'KB MIFTAHUL ULUM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(346, 386, NULL, 'KB MUTIARA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(347, 387, NULL, 'KB NUR ILLAHI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(348, 388, NULL, 'KB NURRAHMAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(349, 389, NULL, 'KB NURUL HASANAH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(350, 390, NULL, 'KB NURUL INSAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(351, 391, NULL, 'KB PELANGI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(352, 392, NULL, 'KB SEPAKAT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(353, 393, NULL, 'KB TUNAS HARAPAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(354, 394, NULL, 'KB.RIYADHUS SALAM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(355, 395, NULL, 'KOBER AL FATIH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(356, 396, NULL, 'KOBER AL-FIYAH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(357, 397, NULL, 'KOBER ANAK BANGSA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(358, 398, NULL, 'KOBER HARAPAN BARU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(359, 399, NULL, 'KOBER JALJALUT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(360, 400, NULL, 'KOBER NURUL FALAH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(361, 401, NULL, 'KOBER NURUL HIDAYAH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(362, 402, NULL, 'KOBER YOBEL HKBP', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(363, 403, NULL, 'RA An Naba', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(364, 404, NULL, 'RA NURUL HUDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(365, 405, NULL, 'RA RABBANI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(366, 406, NULL, 'RA ROBBY RODHIYYA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(367, 407, NULL, 'RA/BA/TA AL IKHLAS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(368, 408, NULL, 'RA/BA/TA AL MUJAHIDIN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(369, 409, NULL, 'RA/BA/TA IBNU HAJAR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(370, 410, NULL, 'RA/BA/TA NURHIDAYAH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(371, 411, NULL, 'RA/BA/TA NURUL JANNAH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(372, 412, NULL, 'RA/BA/TA USWATUN HASANAH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(373, 413, NULL, 'SPS HARAPAN BUNDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(374, 414, NULL, 'SPS AL HIKMAH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(375, 415, NULL, 'SPS AL-BAASITH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(376, 416, NULL, 'SPS AL-HIDAYAH MANDIRI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(377, 417, NULL, 'SPS AL-HUDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(378, 418, NULL, 'SPS AL-JIHAD', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(379, 419, NULL, 'SPS AL-JIHAD', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(380, 420, NULL, 'SPS AMALIA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(381, 421, NULL, 'SPS BUNGA TANJUNG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(382, 422, NULL, 'SPS DELIMA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(383, 423, NULL, 'SPS FATHI AL-MADDANI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(384, 424, NULL, 'SPS HASANATUL QODIR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(385, 425, NULL, 'SPS MAWAR PERSIT KCK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(386, 426, NULL, 'SPS NURUL JANNAH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(387, 427, NULL, 'SPS PERMATA BUNDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(388, 428, NULL, 'SPS ROS I', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(389, 429, NULL, 'SPS TERATAI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(390, 430, NULL, 'SPS TUNAS BUANA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(391, 431, NULL, 'SPS AL-AKHBAR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(392, 432, NULL, 'SPS FURQON', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(393, 433, NULL, 'SPS MADINA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(394, 434, NULL, 'SPS ALFURQON 83', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(395, 435, NULL, 'SPS ANUGRAH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(396, 436, NULL, 'SPS AR RAHMA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(397, 437, NULL, 'SPS ASH-SHIDIQ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL);
INSERT INTO `tbl_lembaga` (`id`, `id_user`, `npsn`, `nama_lembaga`, `kode_kec`, `kode_desa`, `alamat_lembaga`, `tahun_berdiri`, `kepala_sekolah`, `pengelompokan`, `tahun_akreditasi`, `status_akreditasi`, `foto_lembaga`, `longitude`, `latitude`) VALUES
(398, 438, NULL, 'SPS BAITUL ILMU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(399, 439, NULL, 'SPS BANGUN BANGSA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(400, 440, NULL, 'SPS BAYANGKARI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(401, 441, NULL, 'SPS CEMPAKA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(402, 442, NULL, 'SPS CENDEKIA PANATAGMA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(403, 443, NULL, 'TK FATHUL CHAER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(404, 444, NULL, 'TK ISLAM AL MUBAROK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(405, 445, NULL, 'TK ISLAM ANNIDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(406, 446, NULL, 'TK ISLAM MUTIARA ANNUR', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(407, 447, NULL, 'TTK ISLAM TERPADU AL MADANI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(408, 448, NULL, 'TK ISLAM TERPADU YAISA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(409, 449, NULL, 'TK IT FARAS AULIA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(410, 450, NULL, 'TK KARTIKA XIX-7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(411, 451, NULL, 'TK KARTIKA SILIWANGI 37', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(412, 452, NULL, 'TK MIFTAHUL HUDA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(413, 453, NULL, 'TK NEGERI PEMBINA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(414, 454, NULL, 'TK NURUL ALBAB', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(415, 455, NULL, 'TK NUSA INDAH SBG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL),
(416, 456, NULL, 'TK PANJI KENCANA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'image_placeholder.jpg', NULL, NULL);

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
(87, 'al maruf', '1e3f2b50925b8298aac8a64f93d6b107d2c67952dff3976a0530314bab0f00d1cb8b1e491ea703c38140d0d7caca71542cbf8b3ccfa3bc640a76ccabd963d1b8cHjgoWNaBOCmgMLA78xe/NIBFewe9h2pvEDTmufroNw=', 'operator'),
(88, 'annur', '3a78edd2108f62e2502d8c14ad8463a43003b2bda89bb8f92a594515bf98530bcb72dab2dbe1670b36e1a64ede4dc0c97f6f4d64b9b3c215c5c7042bc5c27743FBe3wKNt8IIyP/UGAXHdX2HbuQhvU4WCnv0UkkBFkgg=', 'operator'),
(89, 'alhuda', '90f0503e71c76620f58eb4a9e3e0bdbdec21584b0f50b430c44b18037f2056bf6a894185c5a38fe2cab7c05e35e82ccf4151edbc1b0a7cca332272c1ed15af67tt24VYv8Xon05F+PuoVWi+6hjSPYLZoFr64uo2EvSr8=', 'operator'),
(90, 'mujahidu', '78aebd8c0ebdd7d11e6dcfac1e5288f34566b130c69ce299275386f964384283c3414026b29fe90cf5b3ed7f39f545d3c71f22a9f87a779b4329bc8d47abbf4cdrQvQlbCuYkrx/3AHEL1GJby5BgxuGSo6/YmlC3cBbo=', 'operator'),
(91, 'anniyyah', 'a96c3a6327c137e0b4f659b34001e7a7488a101b4e554f2623693dcdb98a642bf9ecedb818578366bd82a0599e249d3e38fecfab2344bd2712f6051eed0f6b1d/0nm7TBliQaAAaG7rHNdCI+Kehu+V2Qq38IuUHMYAk4=', 'operator'),
(92, 'nurul insani', '6ddc0833fabfa4364dbe80848b9ae2f7057244c2e8fa5ed1e94a2ad53f928e3ee26a797440a2d8edd51fee60130e29c1ef2a74084ced96d0c7d9b70ff9b16861m684Jm6kggH7StZ6WnN+cyly2mR/xKRR6jShl5Hh6jk=', 'operator'),
(93, 'sangga buana', '9421d086df07d222018cca73277d8224a3dacfbd89911092a089f2818732cc879aed1490f0cf228cf14152359cecda236c033d37d78ad4344e13b1c549d0be34vQrWTq4wAiLlNQxyH1nkZGO3Mx1HUQIWEFXjBUL7rfI=', 'operator'),
(94, 'sinar cempaka', 'ccb948262ae1ccac14a6c22cdef33997ce636b0c4dc57e5b342fb6ca8ef08ed4f056ebe0d8a50c0dcebc7225b5428b17e89ba5d284aa43c661bcb12e6c2621c0eSJ1Y51YccGoM7SApnc8q6lqARaaObsUP9OzZbOKtIg=', 'operator'),
(95, 'sinar mentari', 'f3ad64c95b63adbbbbfd4b3b8f802dbd358212099040092336c716c468260c352cbee65f72b60bdd8008491f2feb726ef2879fb476c4f31ef4694582f3fc50c0hQF99bEkX53OvwvbfOyg5ZnoUP9uTyGEIek38visLws=', 'operator'),
(96, 'tarbiyatul ummat', '4cc87b384a2ad0acfda385fe8ea966d69200c496b281db48543d054f8038b5af87a9fac2fe7e59d354be01aa2110286e8ccc9ff6a6b2d197eec12cc76e669d51Tx719ELFV5t1OSMvOeNWNSTKm86skdbI0FRIS2gBahlYGiOsHaoAJBbxmbjR9No2', 'operator'),
(97, 'tasdiiqul insan', 'b2fd47e6736b11fa4785308d0421b57d677eeb9520c072e2ccc04a36f8dbcd08aa527f7af060d133591f427b417f94a72e68c7f70f38bdd7d89b4b26eda1168aNVCGWZGJ+8Yiko1Qm+7v92JAenlkkOCmlJqWbSMOg1U=', 'operator'),
(98, 'al-barokah', 'eeacbe74e72fa8c9d9cbf19a46dacb89ba52d3e8d4a8304d94c46261e72738532df15aa95e315e6de71ae7f685adf1756b3db9fe47768b9fd52536e16ff34cf6uDBGkBuC97e1ezmjPS4GE58s5G9JDw0kJ6lcjnM2iss=', 'operator'),
(99, 'assiroj', 'f27be88e1985ba701184dfe71855f9dbe910b4a427ab9dbae219f8f566c1ff0804ce19470c136198262e54ae1f56b0bb6253394a5f1efcc333cbcde061461834+TPH6K1fK27XdQkZy2/NxGWnniJcFeojElZSK5597b8=', 'operator'),
(100, 'bina warga', '24dce66d4ce5b4f64bb2a42a18cd41abd67cfa712cba2203775ecfcd00de1c42ca6562e90b6c644b290bc28a5e3b6ce32abde8461a368a9f6a348164ab96c9d4Li83juZcIcwrrh9v1n9HvGqqnW0gysIpWUSNeI+QL44=', 'operator'),
(101, 'insan cipta', 'cd27ae893b20ba8a2b5cc1016da62affdca5fe75c860bcbfa6118e9a6fe714be9c883725de926fe98c57e14990b7a93da1715dd6e003f2a3e4e2c2c897521a61BnyAjJb8YzM4hdnHuOZ/4b6dK8xpnqzsuMQa41zK38U=', 'operator'),
(102, 'umi bina mandiri', '456c865c073e9361cc7ba6e187e3c8af4acda5ef90587c67dd8d6a1bfe8563b6c79ef9daf7931463841248aaeed429c67816a05a98052f03c42d5e762b577816jZzRB/9Zex3DmwCRSP0EvnYNiAUsY4cYtqGjL4btnU9XWhtTjS+Prf0Dvenm+R35', 'operator'),
(103, 'edufaza', 'be65ba7a7a092344b35e80a7282e617ee0c365aa508e1012d51879a17134e8c6f3d59a0c781bb99f2cf3446caba8caeb3e8ba257442bef6e18e2eb25020edbf2u/l6lF9DhBOmVQEkV429Arcdw9kKSC0AdRHAGxlgbz0=', 'operator'),
(104, 'kholifi azam', 'b56e80c4abf68eade769d0acd059a51fea3cf86f04add298e4d880aac78471e1f54c9c140235172b2585b437f9bbab83f958d75f98abd00b27ce7e27e0ed5926W9bcW60YDQGaKlXNdpHvixkAgnronzau1hPCrkbXris=', 'operator'),
(105, 'taal huda', '471e8d6718ad501e1ed99ca644c98a41b037d48d0c98e08f3069e3ebfb9051c969b44d0e60204daf47052e7da9236b313ae027ac60c02e89a27204f3d27d2f9aAge/TmfmySwD7cyw3rPSgceKPzSdu1mtZhCG+bKcnkE=', 'operator'),
(106, 'taal ihsan', '0bc4fde4e0744dccb9fa82e4a23c3b5358270ac8cb35c937da80bc72bd1df4bf09bb84d351ba13c67aa164f0e70f3a2f6a8faf99a167b7ac8e9bcfb96ec1adf3mZpgIl+6hRrZCM8vBVOkQ37jGYG+lCs/L3JzYdLuuQM=', 'operator'),
(107, 'taal ikhlas', '64e7e905ea840b1d9c6f450f8ae775b1f54551dcdece4611d3517e94051fff92c2459323ec86a3946f4387e48fe6a89033931de11eb422e9fff99e3a803398bdW7CeTbNfY30O5O5G5gITtk7CfAR0lYc+Bk3vGApuJkI=', 'operator'),
(108, 'taal madani', '30efef83cb92df7b351b3c5ae454de050bdfd45d7de523050c1f14fc45db3a23aac36d2589ff7b739ddce9e5bcb095b66b5c9cff4dafbeddc99349a3da592aecJaMWhmZO+gy5+lVlIRuqY/h9XrxTJJgGp5sCwREiblw=', 'operator'),
(109, 'taal muawanah', 'd7aacccdf0611128586aa4d1ca902c7d594e0f94e23b3d8bc47e5786252f24e0eb4bc3cb19d86c62298a3ace8c2e6e41f0f5be69b904a21392520834fedd662czpUWv6IBPL6AUZktIxzXmX+xWBcAPvcFnifUMBbAo6Q=', 'operator'),
(110, 'bina insani', 'ad9e0c3b558e2230a04322e539664d4e7df9c9663689800ecde7f9954f2c0e8d52ef5f62091fcb7217878c25fe1a32bf010a24fc25b581d816f128c06f027545T91TtzLY2cKfBGmqIgLf8zWmzbXS2aHVigWUVYdHiw0=', 'operator'),
(111, 'darussalam', 'def2ba7d66d3aa738930afe3b2adff8155ba46c445a7343151066ddbec2232eeffe2dc6da30602e7ef3ef14e2d1ed11a0b9b13b0b4018bc2b70929a04b56a2eeM4Dcnq3eh98RqNZ/H+eUUJaSlbPeBYJNX9wTauT4RM0=', 'operator'),
(112, 'manarul bayan', 'b1ae42a6fdbee3b13df54292e16c6e2aeb18d4dd92f890175bd01c1ad3e63650ff424e68197c4ac7dc3a17198d0a3c0be63338a6e1722a9b9e646bdb738bee72WbiIviTzNAVQTerH+FXWoYcGLjAPPT2yZeJ3mvE2tpY=', 'operator'),
(113, 'an-nisa', '7a3ce7a93d965d1547114698cd67b5262ad13527241d7bc20cb92b5ddfdf1bff6f065d448cbb5d559bc86d12b3209e56a686aa66586192885ced815ebfdadb069LIyholiG1cyYJ2Ta2b8itpzYr2fVZ/POljJkkgZi40=', 'operator'),
(114, 'azzahra', '41b32be28ad5df55d659e4c36fce67ce3c0e0a85c95667dcd079247d5b0dbc82319bd6f48a7937c8fbcb071d8cdb7f20715d87fdde550020817f015783bc64b2FQ+lVgJjOb6Fn7r9dnmskbITRwflxk2cn3Ag0f/4Rto=', 'operator'),
(115, 'nurulbayan_', '623b6466f8ce54c818059e1793fdcfab6b614577709e65c4760c1e25d9e62f02fb64e3a48a1cb2ae08465514ef473adcd04b581aea85ab77fe24ec6e4e482035m1lMbBsjqIC0VaQvsXTQ+C+NOZtbptkshDbmnTnxN9U=', 'operator'),
(116, 'anugrah1', '4cbfa21f5b70b82a671283543337dba8a44a9d73136613565acae35121130c2fb4cc49ed400c0cb98fa68f6d9b9d82358bd05450366efaf8e6635b34bf3d527bnlzxvyuvOC2cDzM+UxF9RV1DiKdxkzleiFcAHtQp2EQ=', 'operator'),
(117, 'darul mubarok', '062e5d6ddd3cd6d8ed51cab0b79299d646360ba596a3eec82261b0496b8dcbe9f93189344b98d6db571e06d72eb5b1a7a3da49d3b9a0e5f4150d01e13e6b06a4wMJqGy34k540M/KiS8ilIdK48KuOs6+LoPCQ7SDAq0I=', 'operator'),
(118, 'harapan mulya', '6fbf7c6e46ea2407b1542ed0e17688fea3b426bfe422470eee20b94b1f2cebe5188baef7a08c3a09b65c4693b19a9709f5964c18f4ec1c6542284b0e207b2418BWMEVb+r93hGARHgv0Acm59rBZKfghxW1syZoa7pyxA=', 'operator'),
(119, 'islam nur', '1c03de0e262965795c10cc1f7b9faffb9e090f24a8b72977989523d437a82d1b867372b6066b40134f218bb747bb6fb4a75a44d19496a3b6c713aecdb3702201jHFMHNtlY4NmUa99mqWswxd59iYidzc8sszKfIs7wzY=', 'operator'),
(120, 'jabal toriq', 'd6e126a9f84448899450dec903ef29f38062068d5f0e2d1afe7f1df3588c60d10760de3953035d21a13bb143d4657e83a52ba76af2c6aa75ee933c9ac1faa727RKf2O5wWUk6q6jCRcBHiLyWxC5vutNWS/RNaPBhkba0=', 'operator'),
(121, 'kasihibu', '3b0c8f4c6cf6b1617380fd09f47dad23e5bb3f076c1037112e70111503c3eccb7639399dd5e351cafd2838c2edfbcfc0b78a84bf5f46d4554256f8d2368479c2EtpkK5t+kX8rd0LxKKKa6D+nenXHbzQsTY+f/QhW9bk=', 'operator'),
(122, 'mekarsari', '7f2bdea67a33571277860ffb1a0533efb47e93dd8a697f792cc9be4ba3bfc6e160d76ce7ed8ea86ffa8e29effbb9d4b6acbed57cebb1a2251969d271d0811ec5TfGrwFH9nt+MCyloD3mBcbIyke8XVkqtDx6y2ZP4Fg8=', 'operator'),
(123, 'nursaadah', 'd43078783206081bfe1477c95a28811c7ab82e6c611bbabd812b6c47666fc464bd11737a87bfd1d18232e9d469710e033f1b6a6a7c778d2648749c968554dcecJIvwRUsVko4gcDHP39uyHM7HNMYBS0FbEmamB4tlgvQ=', 'operator'),
(124, 'nursalam', '670a09abe2a3987a640ed0b84de978d776847e96c40a54f5df5a19827adc77cf27dff8984559bdf70567ab031eb445c9e6096f3e2bd219e3ce2ad8040e7f87f56BT4+9g6771oJc4eCe4Dl2HqM29xVTDs50VvNFsp3Zc=', 'operator'),
(125, 'nurul hikmah', '31bd9d2085119e4340cf827bde6f7ab4f5b6397009013c97af271c334fba2aea3b5128d93a4520f347cde6ec6ab35322a39601dda00bef06fef624f4d86a7c70ZzStmwFBFAn/AZQNzGRYjXtyb57iEbh9BuIaaFNX1nU=', 'operator'),
(126, 'plus aisyiyah', '409be3820fa4a500f267f931ebf11f8b5ef16129c9b15ca078c2dddc1b0e37d158a2873416d3f7894fc80aa8dc3330cad57efd1e3230e1731a7d5866e4aa8979dmT+LiXIDOgMsGoWEx2oFP9BREw21Q+BNV48o38NtAE=', 'operator'),
(127, 'ar royyan', '266a48312d11edaa29cd2fec5200862b27387bdea5f6faeda35e3e803fab97ecd875c4e0b2e42a8fc39cf3e573da1d0592d811f372207ee8e382109b66d94665hD58sVfRoixKFjlvkB8/jxuubOR2BdEZ4WvAOU6se4I=', 'operator'),
(128, 'riyadhul', '70aef0cd1d9cf0b7da803d0419c24c0a44cff93174513e6ef23b5d55dd1aad21c445b70a328bdb8b7dcf0b2effd4239dd104c9b8be34bc1bcfa6597db50286b51NSfOU+HbQUhmyx8opIYib7sCHvXNwNiSfqdhu6qrhY=', 'operator'),
(129, 'tunas karya', '8dfebac6603e6ffef58f8f1e07bf517a0b3cb5aab8c8d9b011f8dd8d9f439f329b7653e7e459e4818a3c30ff8ef0d7ec78f4ab44a567a1628c24953c8561de3atElH5IA6ZATX9H8c4PhpW/eKyNo3fHgCFh6aI7J/lQc=', 'operator'),
(130, 'tunas mekar', '290c05851b2b5c2f366ed8fed86110486383fec9fa7bcd3a436442b5341104f591fc4458ab90315ad5f5c63c17b64c501697897cfd95896ee470820b7704794eyUV5rAIR7TZztkH1WG+4evwOpx0Dc5zKjYOvrcRowKk=', 'operator'),
(131, 'ar-rifqi', '68261c217aca0e8edc14c23a2bafe638f49f3ef038cf6934afe5d35f0fe3e5388ec2d735cbae82fd1a0d98633f865d62a5d8d3759deb8dac49fa7fd9bdc1daadrYpmsaRuRIWJnn2gqSAfOOKkaSLr+1tjuteoyJ8T3GI=', 'operator'),
(132, 'as-syifa', 'a5adfc8ecd0e1b696becf79f0ed75bd821d08c4f193f07b8e638b3e064b01881ea09c9b59dad4f9ea01c65f0923331f0953bcdb8a8c57a6df21f0d4c86591471S1CW9gqXy7hKFOYl56vCFPgslTc5sBB430tq/kjp9pQ=', 'operator'),
(133, 'el nabila', '2ce77c4a79a155f3294cf93e74061822ab39a230ba2dda8a907377c5fff3df2a3354cc5eeea937e8bfe7212e5fba7875ac3b6bcaf40670b7215197fdeb648761R9UR9rarlBOvhMc/I54TwZYrdpNDV9mLlFVI0Axp7RM=', 'operator'),
(134, 'insan ceria', '8ea6ca20e30cf3f79c2ad97f33081a1f033e383bfa4d02ba27b86a36ba7ac93869315012a39887a9693e73a812e2dc43e34b7d305f2b83bccd9efd789df0ed02Bc6Pi1stQlNpuoDLnGrHHRzrB4tVBDAuqIaP50qlyc0=', 'operator'),
(135, 'miftahul', '3c5b6ab4f2699dfcc2aba97abed926ffee8dcc6bc19ffa4be5160606feaf275d1deb1899da802f93a2a95e172d52a6d9bd931386382b60dc62be10a52708a434yvpKGkHvT6Fwb3C3BxHX7RX0+l7irFoBGluyjU6Wb0Q=', 'operator'),
(136, 'tahfidz', 'd947063b54d24f63507d9321b2ce9bf2a4d69be39d056010afcaa195a30fb2e6869bba21d7f5641010a57196cab60817c577d70f289c4d445f6b74185d2af87eQBDK89WUVz2HT/TMx11sVUMYTPjPG+uENBN/95UGyIA=', 'operator'),
(137, 'falah', 'd1483c263e9710a9f923a41e59a0099c0c89fedb49f8bf6f741cee9e21a124f5c6192df1dfba4dd5f66dcc752758438029a189da2f4c234393b1ab013ab0f07eVv6sWWKIAJhbv5Ij3QOtF/OKF0xH0mJ9fscdpoNGoGE=', 'operator'),
(138, 'adh dluha', 'd67ab4906d84718051d26a137e50a8980ec7ec2ee95885ade1c6e30888eee1089e1e569c30fd17b0575b3e37102e17148810e63446bc67d0b45666c6d9093606Ju/bmz02OIv+wUfg5/61KY0OYaBNGIPIpRXVj8/FObM=', 'operator'),
(139, 'al-amin', '24da453f88710dc30d6d3890594ed9e31b108873b29fc2b97fbdd4f2a68f5da9f936fdd9068a949501b1263a7e970334816a053a8492f9ae0812f2bb8d370f17auiXbn74u2axRoJxVKxy+8bSMXOoPxo21AZIGncv2Ok=', 'operator'),
(140, 'albarokah', 'dfcd1aefd9174f03e60eec26f4c5f1932120e02e653e281599bb5a73f91cd9946a28fd0a35411e8bc781839ec4657485ad987bf30dd1cdd72b0c76fb50987fcaGymv81NNVnFyGKDI5fnusI40urCjAJ/8R1xVEVD3lAE=', 'operator'),
(141, 'al-bayan', 'e7145035bc64b5142a7deb41384b695936cf0a4b66fe6f5e2b366acbb09b197297a85c3aa2b0c704789e76b2cef9703c6b9feeaf00a47c52238f0ea42ed2f9ddiw51dR3ao/NA4vyqqLaKEgc+0vAyRLcLtQPaZLw/vWA=', 'operator'),
(142, 'al-hikmah', 'b30b0f4d1680f0afbc4f8e7542c34a397498f3bb0d883949805755a2583b945cba95fe0be47e36a21de88d0bdc76e095dc2d5695c0d15b74d0bbef6a837168f3L89ieHox+IvE41ODNbI0LiGn/wLUWLBkJLpeyxh4Vqo=', 'operator'),
(143, 'an-nuriyah', 'a4fe8b905dd5b281be94546fc87582a0b8dac4b0df5fe69d62949533a1863491a7fbb80a3451ccedd9dc7c885f4b542950e7a980b47086bcee4bda96b579765dwkLhFDeYhWzZpbMbMKZsSIG+jyjNQLXG4UCMMTOaNqw=', 'operator'),
(144, 'anak motekar', '5a2b656f56a625248519c7bb9efbb6a805278c66d381f9ee39f8fb0642e0337eb3597723cb3bda324cfb9383a0c23c947c9ca3874e0420de36bcd2be1a51a0cb5kj+RifN4uPZPH9MUkH50kS3UYaAysPB1MhDHEIj/EI=', 'operator'),
(145, 'at-taufiq', 'ce43088c2c2e9a8e378384ff73adcab18d7b0b73456344109e4b530384ee6ae32133550dd7c985bb5f4cce568bdf38de190cd1b2a2d3359490bbc555e8b93da9x8Mlho8Shx1nIXLld3v0NauD1J1epGZf4ZEvxeVLtJ8=', 'operator'),
(146, 'darul fadilah', 'f416b2dc7bc3ddb9db222ebfd82537bb5530be75e3dc4c796d6e13ee95f9ab0be83d4861ce93a98f7d6352cbea808f95daf6ba62e24d0e2f02584d2c2a9904bdvrgWaiyM6j0SKpMaW1YDsquEBCZPu99SWiYH2I+uFBg=', 'operator'),
(147, 'darul uluum', 'ace1623a9ba72ffcbf1ec7e78d2f6e054ec658d0f710000c473f895a62f73a58d58f4c780dae35b4bf0be87d3e71f21293739fb228817507b6e73620f4538ea3d2lYdmowAkZWa5MqICHhQ865s2R55tUHDyqiNrRsK/U=', 'operator'),
(148, 'darul walad', '8a7c6b84136ae1427f5c7d677416564503a9cd180799c0f537b31fbf1aa9b9bf14825dcfe21ae3408ccc1815f4c43280ea0f407ce2a16650eb5edd024fa3365eCTiYMMW9J5pp2/+pEwrqkrOs/urW7AA5EIYWbt3p24Y=', 'operator'),
(149, 'mutiara', 'deae7a2bb00aff80ddb3c0290aba30aa947754ded447c46d00fdae17f4d59c5dc096f125b0988be96a917e0c2f245e87c8b6b54173d29fb322aaaaefa233cf880z5SV2i3mvSxmu4l4qg0ABWmYD/bCDucnOn7VeQRlcw=', 'operator'),
(150, 'tarbiyatulathfal', 'cdf2907d263a35ef10ecbb8d664f666fff86221e4672ca519d59c8336946b8757b1c30e93f16941dd4f6f0dc2e6f0fd17853a901984ee514e36e590222dda755+J0Cgk7fOwxOl/TdwwlXSbVftb+mH2fsuohErl3MyzTtWS57ew6voaDgN5duu0cP', 'operator'),
(151, 'tiara', 'ed98154d1f70e0ddf5632f173c680db40a17ae13e0774ac7d8c0121ac6c830f8c35a0eeb72487636615c2c0986f9557a2f702a9cfd84d04df6db1ebdff4ee220oSxbgs2KGhNTfg5n2OR42G3A31A5UoLH2YlQzPRO7YA=', 'operator'),
(152, 'bustanul', '2566406972e7724d06e4348f6d41e122afb1f31c4d40421b2cc64875ee74af77e348a39bba0c82be952b49486caf7b1a85fecb5117d6784e9e191ebe566e52e4YiUj2FzpLIv50bBhEmm25pTbj8EWs8Ssoe9gpGjIW1k=', 'operator'),
(153, 'mutiara hati', '780bf8213374b93dc11cd35ee417e6eb55c787ee60bb224c2e48660d422bb70e63cd86192109de222ccfa6a4f9ef52f32128ed1371cd0ee8299c520b1fcfa22fzyp7RyHTSP+/W/cgy1o+2jOIy5wmRps4MWKogpDmrGA=', 'operator'),
(154, 'furqon', 'f28bf2953bf7c694f1c7cec554554f2ecfd54557e248b8ea818bf31494acbe753dbeebb29fb0c0a9998c70ce99e19bcd9e6ccad893e9939e2ed70bfd30e9f2eaDGTGj74ekLCctmWsUvB+7ieW/UPioeTJ7TDjO7UuLOY=', 'operator'),
(155, 'raudhoh', '1cf29b9e21cd37b0389db1f15e8093efc819ac4f7e0ab139980b32d3598a30ad4dd23a6496ad9904801a415a9bed79e867e992b545e0cc44aa409d5b946b94bevWXVhqW2+HrSqvg1sdrtvnNmGJccu8xAXq4GL+I4/jc=', 'operator'),
(156, 'bina karya', 'bba3f7a18f8d57317ab06dd5bde7c405908e3cd780cdb0a05222d960e7f9b46692504c8fdf20797d6575c91cde2057b24d7351c0a4383da884fe9e968f88aaa4CECk/xlZBluOPox4X5YyuqKV2UVjIXqK72kgOOdguqo=', 'operator'),
(157, 'nurul hasanah', '9a5615d05fa7d07579a45c28ce97272477fd3a91721f300b9c2eb763ef5e04deb29e0b57d36e9660ff32a00b35b78aa78aef783d138fe08fd70a77ae4d59d4b2Jrj8T9bnhiX10pj7pjzyO+OyaeIe/TkuHYZ5XmfW8G8=', 'operator'),
(158, 'nurul', '1cb1b5a57dbb51839e8018fcb9f7876da9893390f4b20c6ef2de1ff7b20f3920c1de04fdfcc54ddd46f5ff45c5ee7934d413707bab2d440b850f97b0a2b89667kL9H5tWh4qZPGT3zb3afOkJxW97FmVMicN57Ygg1xzs=', 'operator'),
(159, 'persada', 'f334c50c5b03ea94d7f9a8e68a1e823bc7398f560b66db9ff44532e23bfecdabb471a76192a4984c55ad2f1ebf7e14e0a86063556511c1a95706f8bc405cf188UUdwHTvA1rKlG4aVgvdiNFljtqVUxLn1/jFfkShC3Z8=', 'operator'),
(160, 'nurtiana', '4a10305a1af9ac98033c48d99d9823686c3fb88bef3cdb9f86809943b3da9276f951e73c8a69ec20482ad601a8840f844a8412781a4402b3492ba4d66263ee83A5Ms7SG2NHOuyUAMgp9Y5ke/6vJUpBSR0c3V96b28F0=', 'operator'),
(161, 'amin', '93d2cf2f59b2820edf4414a09b915f6dde58c0928097372be6653968a7b781506bff77cc85982ceb87724cb65fc315546464f49e3fbef393ae2e0856a8fcc4cdNUnw2zbSzw+uQZuILHqxC6EE5ZV+5peTHNzo/Qi6qQ8=', 'operator'),
(162, 'barokah', 'b71d2d572c68e044b487330b86fff5165b1e5f89934264f7bdb2f4a30906e00bbc266f38ed51b8b6e03f72adeb00ab7d1fd98c6f9d9d00c317e3692a50594d82oddW5WCMKHDA9WUSKxNp78lpBCQqF3JDWifRbP+sTqs=', 'operator'),
(163, 'mubarokah', 'f534870bbbe2a4a5acd92e13e7950a2ff640f92916795b2958e8145ed34516f4f3fab954d7c62be3c28c872cc37950fe1b0cb7f03fa4ae980914ce934771f7der//HlMMzBo+FoI0UL2zWB8/fa9z9MAQlqlsDMVcnL8k=', 'operator'),
(164, 'hadi', 'cf2bb2f2ad6f6b9743cdeea5133dccda67f2c474858b6210193da734088070b723e92fdfdc4fee689d10831d8990efdb1b7873c7a8963d28a563858aae5d85cbo4vkGBIYnlrwZSVzHpdKi8UqVy3Sa2Ojd1LdyP8p9B8=', 'operator'),
(165, 'ishlah', 'cadf5807fc2703a8cd77e159a281c640d67bfa5c2088cc1dd427192c504fe3d31afe3a40b70d219875a24f6c5ac03092f2b386d16b610a76ba1ae2530577b24awJo6bOak+qM9PHGyeWiphI0cGYNLh/POKcEfv48fpkU=', 'operator'),
(166, 'mubarok', '4eb6bc7a0529dbb61a8bb5a2c13923e42514c8ff4ff934ad15f1d070391c61cadb0c0f118f33104034009caa194ebe21a33deafa93ad92d29de4ad4f0e7bc67f7Wbp97ukBTDW//XjSiGS3+Zyrda+8BcmSzpE4RnxN94=', 'operator'),
(167, 'nur', '2981116ba122aab92be1ab86d341a8eea5dc30f621a73a05885e27fa51d2ff01c8838b5cfc5e853675eed306b389e4267bddcabcf7e7ae15fd1f553806a3bd2cAlTxnsylbxFEsVAL55eIwwJSx+8O4/pFlsXFUtbqu/I=', 'operator'),
(168, 'arraudhoh', '32723363504b5077789d429230bd1332db703f03be2b86694b635a3d3fd0c8d30b442e1b36e363d2e07240f0aef148d1b42e79ba5e9d554b416245d34b86c8b3pIVB8bP6y6uTVY0ymUnONq4/C7deo3aLeWJi36pW5W0=', 'operator'),
(169, 'darul', '36cc73a399258a4e9fc218ecb2a15eaa40df7bb1afbbf9f3d4fb9e6206537766abd1f01460a71e535a42867f2b6d7b01f6d20949e2c67e4bfb7d0a6fb01aa15bMZJaEmvSsKR4vcevL9iec2tzAbGTGRpSawK4a0piae0=', 'operator'),
(170, 'rahman', '43b49a80b24e98de58cb4ab1e2a9938d71893edc277f59e4e59fb6cc5b73c16e8f81d4fa74263d12d05c444a017a8a7b59d889918558e9593e53d783c4f3aba3Mclvw98kE/0AzAObqdbUikQvzKJqXQFW/sZaQA0gq6Q=', 'operator'),
(171, 'mutia', 'd3f8cc8ed98cd827cf4a9d8127723e8a1ba92491cdca886d7ff0211fc4e49cdc20e3047da7bccfea7db657075114427724ead139128954807759dfbae8ad40ddTN5MRa5kTFn+q95R/bc6lrUOLwPRRZhSIXFWgnmQORM=', 'operator'),
(172, 'nurul1', '375400acb59d9549fcf1bad8b487899f16aa4466ebfb0b2c4e14091a9468b98245cc5931304e33fadf8f443fdce713f06b3e2b4056d15186b3c556d7644e9e52vrNEQrrsfcquUUBnBfgeGGYu3YSsIjJ1GH3mO9WdbII=', 'operator'),
(173, 'hasanah', 'e7608437091537981ea4aaecdf1e77126d392a068166965869c668d98b5a61d6a4f07d792ead6cf338e53b41727aa7e8b2dee293223524b29534e70ecec54c3bN5FlL0CvrmI2YXdLZWf+PHtdx8KRchG3z6xeZIZcWEY=', 'operator'),
(174, 'iman', '0ba2ba567812b8dda7f595188a706df54f09fa5a776ad469a71e3eca20a50058442e9d8dc80af6a5ea98dfe771942d33e9771243ae189dee22d54987a89c5518ESPyerVLAfj4weydmXRgw2i6gFjgSoU+RcaZMbkcpgQ=', 'operator'),
(175, 'yabaib', 'db729c90ac1ea4f71c96caff62b5b221ed5540e5dce06c3ee756881ec3b08b0b82b20c4c6ae57f749e1c36899084fc88e2413e431a60dcac2f7bbff3ea7e5467jC2DsFxsMPuZtYIQ6Mv8kRZlXGZQ1+QUc9pxIVI7bzI=', 'operator'),
(176, 'muhsinin', '910c54781bf41e197298caa31b07d9ff5dfb470ae7d6fcd916bef5cfc22649fd51feac2e389c522305f5706546abfd2e7bec0454c44fc7c413a0dca0a0f02e3e5o66xoBjO+nU6xWLDVJmzhG4k1fw3XqRnM0+zXIz/ZM=', 'operator'),
(177, 'muhajirin', 'cd4622d4fc42e90ae8ee00ed97a503c2b56361abad87ad04d25f84cad25a8c9337d5df38c64742e298e6686ca5205509cfb37801f106d04a1453e257ee50f445LZTiaA6BbfcKksfdfJtfYCQUA1XlBWUX/HaCg6sgi6c=', 'operator'),
(178, 'ginanjar', '6316ed6393c93b321275484bb26756692d6ed0ecc968277616bc18e20849b2c570a1723e227260978bf571a0488541a72b5a05c5a1789b34ed814df06af39e44cFR4oOXlf1I3es+6A2UWC+hdvRNezQU76Qym3psBE9A=', 'operator'),
(179, 'khoerunnisa', '772a0413a817ea98fb001ff4c438c55ac583bc344f8fc19eee0da9a2ea0b96d17ea93b404b930d1c2f9149ae73e0fb37f557a47f74ff69d4401349980e5640c5WzpSKFN5uKQEh/aGWaEdcBtHG0DSIZQkqRfyTbXPj/Y=', 'operator'),
(180, 'tunas', '95308eb9414c47b9212db679dd8dcaef281e4edc80f863b10d260c39710d899dc20964bd8f9d41bd5147edee094ad0ef9b6e6f4207c797edadfa59d7dd018d8768jTqKbkq4tQan8shXD5ol1NO6OVv7w75c33IwloUNY=', 'operator'),
(181, 'furqon1', 'c1b6fef78cf377f333fd94fc01ffd7f567a2e9ccc9ff8e4cf22f980b8efa59ec2d92d192a611f477857617d27be624d9545f2c130d768cac665623c7ef285774lQPLAWGAy8WvYNJV9SsDuOGD8H6uPpHmwar3Pwm0e1M=', 'operator'),
(182, 'fattah', '6e7b2549dd67c92ce1d1873eff39013800c3a8c93a4f26ec98d68dd4f6f60487e9b8e238ddc575b610534d94a24ba21d4f45a3bc4bf0433e72bd2098efe5eec6vIHaClQEbY5GOiw9pNiEp1SiTZCHJBbLSllBDEgLqUg=', 'operator'),
(183, 'fitrah', 'c17d8bf5d9f9ad945383eb49447bdc6962fa58bb781ef3bfb04640796ac4be5cde2865c6e664b55839b0719ce430b05ecf654beb77e34ab0f9505482af126b9ahdpczdFQE69lTRraEcQw2rb1NhZH/2E7xmsXQUeMAhQ=', 'operator'),
(184, 'hidayah', '13b87644595cd54fa6dbf24cc97c65420069e138014a788d4b255f3b7209f3d3e4710dd35eef58ea764fb5ee09f41b8635bf4422bf10294dccad810614445816HZ3CPpsNpo/bjenPgrE0R/EO7fP6oG72WmxENw2CyZY=', 'operator'),
(185, 'islam', 'e1e5a163bf01d2f0cc0536cf2e3046c575243a5f9befe21077a1738cb0c22429006d1f68bbdf777c7741f7d5e231121116dac8263ae4a26a5900259ab4a714ef27oinebNjLr/DfAdG0QusZE8FRvfRtFbE1ClnSWCGP4=', 'operator'),
(186, 'arrosyid', '2c488ce5e52b11224730f465fa7dc02ac8760e8ba22fc75fb44a9368f5d34fd451aa1340639d138856048e7c92dfe0ca2ce38716794ba2fe8f4d90fddcb9ba27P5nvh0HXDvGxrUCT7LWE+iY48OKon0L9K5mHijq6HE4=', 'operator'),
(187, 'shiddiq', 'aafaf3dda1b02e3b4f4a8022a5bb1b6bd910d29a781e0734f608af3347dd0a3ca5cf48c5de52365ae2ac40a6752fe05ba9d48516bfc310ab7d5c824c48d73a20f5RNJUngnIabppTBm5bAqqqX8OyNSx4eG9suv+qWWsI=', 'operator'),
(188, 'azzahra1', 'b8c618acaf146568217bcdcfd9ee6056c116ee930dd1f3a815ebebbf869b60e161de81745867273a9dbe1a1566e2f08e6d34f886f495c19a571d97e0b89237305w3XKNw8W7MFqg4BLWjmCrKaUhDGJVA08VP8W08/tL0=', 'operator'),
(189, 'dzaky', '2dae6c22ae62be4d0838f0deed1299904bd0e34f63c94aa0c7410f5feef34b22b803bde3cfefe3049c7f65a9695804049edde4f84ce1504dedcfdd76decbb019zpSsReZd4XWSW17G8l1UDLfPjuYgOmkAFPWHHlLXTMQ=', 'operator'),
(190, 'uluum', '7ab4ec955d39907fc54a15885befdc37424092c228118ef202585a41493a20282474d383176a226256ede418af26a96371d6ff4bfc97bf991b650ff021622971c2euaKF1mG+35g5IkC4zNogtDUH0XeW0BDVXRtNRRKk=', 'operator'),
(191, 'ganda', '413d1a82b1b19a649333c524b3436bb7ab179b49fec99c51938e420e7e1325cf7b4bc6be61e4ab68bbb936898aaf563f0c347460cab2066e8ab12ba01ad72dcdeOGabhHvwjtZjiceyhbg2rL9zIBZM8wDG9HEaSSt60g=', 'operator'),
(192, 'darul falah', '9f38d5f7edbe353bd5212491d7208dbb0b2cd5a7449e05400321e4c61a3814d5e22310644435593032d0e9bb737d0702982db644457851e2bf029fb83216f6e0rCgoxq3nWi/sYOzwSNqXjZbQQUVdrEG1tLX/EaIEnQE=', 'operator'),
(193, 'kuncup', '28fc42c1862dd8810c5ad79cdbc49570df13ac9f06095952d382f98179209af60e7d8de21088cadc69e646bc8f86d7429d471f5be37088bc71212fbfa9d69669TdSdD+SBcet9spJy+iZ+DULvot8YYCHj65Efqe08SpI=', 'operator'),
(194, 'mabadi', 'dd3ae0b9dc10183d21773a69251de43eb95f4177b380802b8d4b04ce203cfb5136d1b6e39926a9eb2de3974c1527258856eba23d265ad0be46d7a29cbfa78e5aEufRtN+46yrkQ02aKAKaWl6druZEy6yv7N2D+X693Ps=', 'operator'),
(195, 'maulana', '20d2f09a8d1de3164eba1cea71ef3f50b1918960cac7a389e5081f74dc7a4549024fec28c4b4067808176ad544095773d1fb26e510cbb6db222a0b8636ff321bXaGvGgevhbFLdW0n2d7N/X2XUzdmtZXARY5n+C7ng4A=', 'operator'),
(196, 'mutiara rahman', 'ca5c1d170313601cdcddd783b3c7392cc417aaebf47dae34c49d4080decbc5bf3fb6754b1a3695bd15a95ed2261587f8e0a4c7e6f1f709fcb3b288f142081b8dymQhagm8uuFxFTBCO4WuQ5Kbn7mrnDvEjkLQckM44L4=', 'operator'),
(197, 'pagelaran', '4ed7f1dfc734aab8f59004cb00155f7783a0d839562bc20e08f5b33ffffd69c9811566fa1c2c4b17877a0957217c0173e62204a21848e906f50ec378c328f8bfwCYAT2d7EaKTVQUc/ibO74aPPpE4cJgBIr7asQAoiO4=', 'operator'),
(198, 'pgri', '5d53590339ca4aa0d63ce7e564fbd8283226e3bccad249d762199b1d2cf3923492bc17003169ede05ffe85c316eb08816f1a02afac9d4163820b20841d280406OpKHSTt2EMHT/Ac69gJS97sJ0vfPhmXZaZHckLh+nrI=', 'operator'),
(199, 'sain', '8d6381884f0313463f33c46c8782ec5523df08c821fa6c0d99a648ba35ec41686fe74258a9c0bb7544f5c8932bb76a73594eb6481bc48d8268a9c39a985b2ca1ngRDWOPomsVfIpe9Wqq6DT5YRRBxuJEA8wf7oG9OQPA=', 'operator'),
(200, 'tunas bkn', '6019755cbaccbb496f3865ba404f07464c412ba63f2a9465383ef7ba9dcc53b789cf77edf29fa87dcab1f3ef1ec4692fe0ee29a1b5f350c49e82fed7f0cdcdf4/xJ92/3XT2S7sypd7bb8dVA8AinYV9Q0tRzSIvtO4q4=', 'operator'),
(201, 'wijaya', '4b38d22122418494bde915516513560c98b99cfeb54d589a8cefcc9c6a6764e2ac217db2b3d287f4bd5f1fcf00e05f2b3b4d1473aca23df86c32763817a2c90aeirJ83G7wRnqnnzemQDbc06kDxEjj4ExADLgWMfvu5k=', 'operator'),
(202, 'miftaahur', '635da4211adb30d092728048b3e545e0318d85afdaa03e5ce884ef3d33a00d066bae5d1286709a1c324b27d12d0535a503137b94d2152e9b33ea0cd78445369dTJ5B5bkAISSAiqWyNqKejjUmOfOoJVhxn1v55yPKwLI=', 'operator'),
(203, 'wasiatuliman', 'caa9312824bb06cc18a26a4b940acd9cb714f7762c7ea40225e7ed7232e9bc72e8e35b9ab470de88fe440a2505d103430215aa589bfb58bd608d4effd58f3dceoER41LBRz8CzbU6n3+vDspkT3v8k6qYmqNaRtQGQgng=', 'operator'),
(204, 'bhakti', '48595497d79c40cb5d0c5e85fbfd5b4c19487bf6fc018533b408f3d705d670a2b921e9ca82c3ba3ebeef4bc9caac82838389d2d77d96d4266e77468d74094b1aZfFd5JNl+RlL+/wQjF7EPoVL47zG98JaIwyQOcNSsR0=', 'operator'),
(205, 'bina', '5e1b072edeca4db2a179d256f13088cb2094e9c6d99503483dbf6c18aab38433c912da2b9fb83878688ccacbccdbbbef2507349c6bf29076baf5d499197778f0E72t7CVF9k1FP5L08LpoBASKbHLwPf9F++uqSFSd7M8=', 'operator'),
(206, 'al-hidayah', 'cc1ba4d77dda847628584b137fc7407b92cdfba848c4b64bee218d3c88670f26b561b31b4e3b1d11e8f4267f3714227cec8caaf3ab9bf5c6f381cd3303f2a09fa31mwPALUNDTw70VWJH2pmGCZDbv+2aIYLYOTGxuNSA=', 'operator'),
(207, 'huda', 'c435e6f6e7d363dc6a046e1f1fffa826d88ccdd50bc50b72ffa46a78a3b67b587d45b92c4e797894a240401d5ac567cabd335dcf77ce8259e074410e9798ce6cAfIb2FTgFoRYlsERFAzeqdJOIKmeRqM2NcX5TLBa2eg=', 'operator'),
(208, 'nurrohman', '59ffc0484b74e3e0ea5a1d3aab9e9f6cbc8e5d1f022713dd9778eeb839e6444bd78c7d75862e136563fed305372650b381ca4c44ca95d3670228a9a9374d7c215RjeBDFJ57IloSuXBnXl1lyPvjg/sJaCeIssYEkuKFQ=', 'operator'),
(209, 'assyakur', '1671a09e380db879a5ccb931de462d2492fdab32f4b4bf4bb0a8ec6de9fea50692851fc6e0605b6c72dc52e5805bc37c31c6fd6fe72ca634223cd124c34b9857upKF7cEDyXCh+HPtpkrOlDpP9mP24rlNYm5jvThZPkw=', 'operator'),
(210, 'attaufiq', 'fc4ddbdc27796a5d3966126f7c4ab5325f97053900b0472ab9e9f4707572a737cb753c8f42fc1d51c0806bf37614f6a4bdaa7ff5abd2991658429359d22e9177Q3E12ej8rktKRzHma2CX58mkZ55QAK5xOYLJCkeVDKk=', 'operator'),
(211, 'tawakal', '41795f532e57145136db536659b842c29754d0168021171d757a2159c8ec360bdbc706d739e396a385817a057a8dec7addd7846c8dff9eef8ac0a3da4b0cd82di+irwYyo1s6pUuvO+I6nvOrQivsekMiviNsl4vLu0q8=', 'operator'),
(212, 'zahra', 'ebcd7dc748c9893027b5bfdd8b819143b3df2d26459e781d5535e7cbbd20a6117e62155df517866ab9272002cb41e803e3f2d31019e6c34a6c207a016a568987zMrf3JQj4UmmyFktmXLt3k0tO92WVxpHXU8BK0EtguY=', 'operator'),
(213, 'babul', '003eb9eb8e12352273ae266e13d166c7ce3ffa71d7a8fe515ebb6ca339386fb9e51e57a5e573dacf8437ed9f9d4068de396a0fb8f4c213316aae59e91950ced97Kv9PVDXZLs2RHe/MqtUjNN7KQ7LUy2W7MUYDYIQ4xE=', 'operator'),
(214, 'binakarya', '0b357d25038eac9ce2762a21dacbd195d5a164062828f6f71d65da2cb5ab31285a6c09b81df6ad5f883906f26ff98ef4689ad8d5b741f82f4f54a836cdc747665D+PUWBpait+l7MWvMrNttRxUKl1yCChRTZ4trfrP8s=', 'operator'),
(215, 'bina mandiri', 'ed6df2f83eea2acf7ecb21d9d0e82dd9b2650805ea9e8081ab90e7e5e97b8fe75c3b7306018c5d5076b684844c066e74cb31006291ce6b9bfa58087fd254c602s+mWVLFb79tkKrpuE4AT64od8uneenlg82Po5+jvrOU=', 'operator'),
(216, 'bunga', '00ba5bf8a5cc4bc516fc1ac18756fd19bce0f3dd7fd8befac4996b77707b87b00b59d1fe2df69a06e5593e8eb2a4dff981fd3c6b016bbc009a03c8b7280135cay+O9e0fo5+NEAo9GX+mGIMkTzw2cQL1gbBI7w9L+Ah0=', 'operator'),
(217, 'fatiatul', '1c72db856c9a4096865a2df86ae6e5e9eb17918924ed6a89ab6a36e2c945d0f4fb22895e4b28e6c334a054d97cc6b89412855adb807f635ec8ee51b64105b2f5sLteCoN7tkyAStKTMetiKA+cTg9PwviY5zQLvBGppwI=', 'operator'),
(218, 'mawar', '8f81b6ecf531356da9699bfca443242f0bbbb7501d0d50c3c21b46a220f27c2142ee1c3e685eabab2d8d025cdfdf507728d081f0c13fa80a88a278705d82d479iq/srCLLu3IgJMgLWJucf+PIYWHpnHa1VeoqRKU3zrM=', 'operator'),
(219, 'mawar merah', 'a27a5f1c20d6207ede9df0c7f16be0dfd654bd8e25cd2103ba43c781a396567a0a31a86255aa52868ddefabf3d856ca471a3bef400b453b368e8512ab6004af75MHfhzpkgHT7d2FYTi3ZFIorULTACMMPwHC3qIFNPG4=', 'operator'),
(220, 'nurul ikhlas', 'fe32b96aacc601eba6f6865e287d47f3c32250ccfa4122d4da65679265f8fe3d55a3a39f96511dee0f66c431d2dbdb2548ef4055d96102c44f30d352e6f8392acuyy3yaYnV2xba9HGcB1w7mzSUOF9kFnNaaPMD8weI4=', 'operator'),
(221, 'nurulhuda', '8b5072d66d0b3353ba024dae054ffca19d97ba58ccb5f459b19acd158c37503ae3d86b0eb4d7c0581eaf340f04ebb0239eac02033f78b8f149655e879109742eYvEceXW1jJHt7nyMgO3fB3zw5uU5sw/bYo3pa5NqLLQ=', 'operator'),
(222, 'seroja', '6cf80755cdc788e53fbab09e35a098fd76a066e993eab52bb1c8381b5290ae0e85f9ede0f463cd2b0c2fe961df488393a8a937074034a41021b597f22ce42885tQMsH0o1TbtkwxUCovDJ37BX5krLZBwSWUgnkMAtHag=', 'operator'),
(223, 'tunas harapan', '3489564ee53246992580246bebef35525c56ee1bc17eb4ad0f6547352297718021243bf6a82dd4379675e925a7679c8f99401f6356fd75f7ba9e10cdee4b38efXpbU0eSCkzxDsnFHu+koPyoZIbzvq2g1EsmIPnKnQSo=', 'operator'),
(224, 'bakti', 'a8bf29b2ecea1329327b9a0707f87194a1e02d175aabf966afd673efdfdf6506cda6fa67a153736e180aa1b22d9791cbd4b7e022b81df0257b16683bdf6a7bc05y+8apVUdZfVC14A9MLzxsIQtJ+nA4W8ANlEA62hGv0=', 'operator'),
(225, 'annafi', '765ed7272e781b3569fde84eecd5d146cee13a6a74a98e4fe8648878c5c2624b1730cd1ab9ac18ede60b825d4ef3f6b7ed20b0a6c790388340fd119b3666c348yzYh4qDBhkOaTl3bKG4bozuz2V0BOQsVmjgH1zi+t2A=', 'operator'),
(226, 'arrauuf', 'ffd3732a352e22631b5673507ec86e71d24b75eef1a164e54c423c656cd5e7c53727770adc93a78ad9d56ebc83d931f15b345aae47ef504763e567840f189695og6HpChPe+v5TD0pvPoGDVbnyLfH+C3M7NG/duRqlQI=', 'operator'),
(227, 'uswatun', 'de10e8cc78efe993bcbc770335f545d6839e66fa147d22d2730846e861efded51de6f0599f813e1b5cbca78c28de2fe983807847ed002f06e7113da18d5187d1jv59hr2X8lCSfuB2c1M5HkatzlLnqa8ARfejlOAS9Vs=', 'operator'),
(228, 'mubarok III', '76a50a67bf3d220f8dc17c39d132437fcb375470355dac23ab92169affe85713910cdd95a12aaf0b5ddd90b1efee08758bfa0e4cbd0671badd685179a2dc11d6byDtYku9Ethqf6Tm+3uOu8/g8xpkEQRMnNWX6T73VMo=', 'operator'),
(229, 'musabaqoh', '5668b5530726a417d20eadeb43474e70a864caf58f1117e2dd99be453c8f1ca9935a32da608b345c3b313fe3c6f08bdb9a6d1e584e6296df8d600711bd259d9bkzYSvTbj1mXpMEKPwluRrVRAIaAWniAv8l6Nr2WFuBs=', 'operator'),
(230, 'zahroh', 'aff34e05c8803be87a65215d1ce36f58d36cd6dbf557d617fa105b6c735386b41f652dc9398900aeded59e06b2dd7a5631ed536211e6f92e8a1e9fe11dd2a162Ruu9NjCIyvzr6vmUQxOrq/bgDUvOYaiUhTLKNI5tGIs=', 'operator'),
(231, 'al-ishlah', '5cbf4e0114828fcbc5a9670d8557ad5d53845b7b659a8c40766ed9ec1f1a6e95b83439e545ae3bc2709dc46d754528cc8235aed3096f95f5952c55a184f39bd1JP+2UuMVVyiapGxnUXDkunVhtNOTc14Tig1FElI26xg=', 'operator'),
(232, 'istiqomah', 'fb751535be00033b959d78fae7cc4700c46f4e9c5f5336337ad68286cc854db21f45a9085e24a76b98f9265555fe85e0e5c93686fc90ecd313490261c42173d2M1N9RY3wLmX503Ca516Ug7hHScq3Zk7n04YQXzz6SXY=', 'operator'),
(233, 'al-musri', 'e7e0d32e572c704644acaa98ad8a8b7da773d576cbcc68441b80b9c45a271f7ca69a699d7f4516fbec1f4a62b8686fe88ebbaf8c255c4f3a4674d22e238c9581YYc+ozysgLMPE/Lt7JCtqQO/FrN5PCk9S7rhvaiPJ2k=', 'operator'),
(234, 'alwashilatul', '768eea9bdc0f6c7f22682c2177222f0f604561aae78fdeb9998e8285869925ee99e95b1d6b98c1ae518641d34c8ea3db06d4b129b3cea6e592f68776feb3eeb5PmCo0LnvFoGJl+5LCuF+xjNO1CFW6oJYGkJqmLkTWg0=', 'operator'),
(235, 'salam', 'c623fe77eba66656026ba90eeb91fbc4d5fea0b0270df1c134ce157dc1245834f4bf4d1d0e19c06f018d0d88cf235c53a28fd554534f695fd3a59c09a9685c9fyEpAkN7ng8+DSDeLuaxjI7ISTCqQ+Cw7dpuMyV1GpAU=', 'operator'),
(236, 'nurulhudaa', '98cff9a0a34629822ecc14b8e41bf8bc65ebf6ac88510ce2ef787f10e4e26494dd51d80839d79c82bc9567a4c3f69bfa2444edc2e4c0b6e479cfcdcc15febf42CEsocuOc3+o14dpXkLPeMp6I5r6d3WdRPUVMrpYtkRI=', 'operator'),
(237, 'musabaqoh-', 'ee1b88a9abaf40fe8fd511a647cce4efc49bf41d7d4dddbd269dff6bb3a9a417ca90333a6478eed393620a5e85c38b32102b6c89e804ffdb76893d3c0d895b12XxzzS3tWGJXKtf5S8vROO/oPQpr4cy3zBqP0CrUWBsY=', 'operator'),
(238, 'munawar', '159e01d82d9832ed530bb5c9432084d724d4ed976135f47b64a655fedcb272787deec56c384dc99531ec7aa66de3a6fa3e9fed42e2a3802becb9a041e508743ebkyvWD0T4Z3OlkELV/7BdxNrarwWSRm41ohbR7L0XvE=', 'operator'),
(239, 'puspita', '4d8e30a77fe3e4344f554df1ae8aa5b88bc0fa58abbb9fec73301d8b8c44e578310ebb4eb07d67abde32e15f53e4e1dc33d948dc27cc52049c628a59fde5180bMXe6NAqseGTrTio92wsvTR7zxmFSFgr4h+9SymAJQxQ=', 'operator'),
(240, 'rauuf', '71dbc875c77c1d5e90df5456e493d0d67bf7e116d2be624e9e6da01dfd2c46bc4bb90fd8ce7b75cda518b441ef7d9cc1f95104a7e7738b6f5337ac93aa54729bCJIP0A+QpGjJm7/awLQmRBTkuOPcpCt7bARf0P/4QTc=', 'operator'),
(241, 'binawarga', 'de0359ef8db8458629ce19d23633418c2aa2d5583afa77bece02e196c58f9e4b6c4d79762c2b12530a431f813943fcaa2d1bb800e4f57428cc86c0aa493c5c72ViCJ6AT0Iukduko65oUtKi3aWIqzOmkpHA64zb+r76Q=', 'operator'),
(242, 'kenari', 'cfb6ee654e592539a2a549b96da8686a5a041e7100bce1be8033ad8fdf94a2220edf17de9f656a6ffe9efe692b01be475dc621870eb842095bfa11834689c7999sZmalbO+kjlLahDJPcIK4MJpQLvgVjx/9EhtYKhAhs=', 'operator'),
(243, 'bayyinah', '933020532d9d0894e95da5b6b5a4abfd90c4cd6691bf92d778f702cbaad9547a5239f39e2ab178ec3496c6db1cfad4cc979963b149b5adf6b5d8cc1124e01fd7xCZ3FwytSppzdcHnlNzR/IrahGa+V30RHsLyb6gPKh8=', 'operator'),
(244, 'pelangi', '6146edb74c05af48069477b5516598b4c95fe2f73419b078fce022e2d6ea8afd13bd96a01b9a232b89dc44e3857f8ea9414ae0ce2053f7e9c3415eee040a8293wQLY4J30P324X1euoriX4P4zmVqFQlLIds/Fj3yIJsw=', 'operator'),
(245, 'quwatul', 'cb5b68cf7d397170356a5d532d25a71d765478a1664b4092f223fa1328dcc524bcc63ca5f9402ce02eca61db036fdf802534515fe1256537ae7499321e4c0fd9xE6mhpOtNEJXjFRBOcOQGIFV1xi33EzwDTmK4fOUJt4=', 'operator'),
(246, 'sejahtera1', '5e7c50b6ed8d6fea43160f851b5ad615b6694d3f7e96f942f31a22b059d5bdce66dc3c92967437d8d7f2ced45f0913d62c25cb59edced383c2bcf1b9b532d089YdNRg1ESWM+QTIptZc9SpKcWxc2S4e75/oyzLUuITUc=', 'operator'),
(247, 'sejahtera II', '738f543f53f0341596d6f21fba3942c11e03efe790f149f4556c4954cba823c116fdd10f28e30150cf4b24851a794101e7bf5c698103b3a85440514f7d08f9527AUOi2iPcp2eh4RCcuAyNVuee8JrOtvIFOSWr/z/p6M=', 'operator'),
(248, 'ukhuwah', '8bec7267a5e5daaccbbb238bf384dc18e78cdac8fc54d0ef4cbb3e62a4a610e8513ea92f5dbb8030967f57a6183b1b23ab70c6c9dbcd81cf667d6363459ee05dJf+xaowJw5et86yS2nNj0AvW1/3vEsY+nnujWn5y7IQ=', 'operator'),
(249, 'al-huda', '4a36eab226f5e53d8bb32adae18894a6cb7bd553d246b690ad93742e88d6bb35405308d07eb570b74ab05ce8ebbd2f38789a409ffeed3ee0be607399fb10b537EuOpTd8yTqn0JQh1yR48SvjWMmWZ9JSZmAnZKewrdfM=', 'operator'),
(250, 'ukhuwahII', '0ba622196b3bff9508572dbfa6319992480822457417badc454bb6142d9a36da69ac8805f0022bf111fb699da6eec32e5493e74184d378ba105029351cbcb5e57KVTxVJbe9DTuZ2lIAX+1PHCsHOSZny+7t61SX+8pCA=', 'operator'),
(251, 'attaqwa', 'b72e051dfd5c56c68ddd9ef7aa34e858f86fd6e84586e1b724b90525f8d83cfd2734e4558810ea690d20caf0670d8f3af190b81f79ef0354398878e4095861baEzoETaW8RbEaFMXJbosr0zZj8VSuS5iG1yi04RWFPJg=', 'operator'),
(252, 'aulia', 'dbe33593f31a155a31a91d3ab5ee8cb311ea63496e7f43b4d65027fb742203de1719ea8effb89a36d38eaf03e027a56f4934fdc1c811d64cb1823352049dc62anA4H7RD9okeneZMZmDmlidcBhOC5rJjibPB0vhlo3LM=', 'operator'),
(253, 'zahra1', '23a557b380a4dcadb3537c59cc483d02e6bc1cac390bc208ac3b32e958741be83a69de9323096ea459109c018ef7d3bb2a31645c6fcb879a0da37995cdeba77aQVAoqnclM209noRoQ/L8iL3sRT0YlOVtJdi+O94rx4o=', 'operator'),
(254, 'babus', 'df3736fbdc4156b2361c951c7c30f01953ea51438e560460719a60c19b175918d36a27e0148d7c2d4ef42dfd830bce204551f7e446c60400883a8b4f499192f2tGLOrGBpZO9n9Tv+vSPuWPekkC5ZEgv9qCs/RbdYqq8=', 'operator'),
(255, 'mandiri', 'd4e400edeb5a223003e47e6c9dadc1645bbb43daecf1467eb1e640ae4e4bb58c8e94a36c568c8bd9d3ede50b6e381bcda28bf966d0e9af79c95034c6b1922c1bZPvzJT1ZgXNX62wCxr6H/2pJg3F3ccztNhTvZkt8VQI=', 'operator'),
(256, 'binawargaa', '45d40f17066c024d37e7154e7cb65923d5b6b94455ba191d6ac6187b7b9c30e42e185b3239a0f2f8bd74fad6aadd38d9ac4e5866bff91cf35052b0c860f6997a9JI3h1f5MBd7DLzaVOXY8AL2d2geGTv6uvmsWmmIit8=', 'operator'),
(257, 'cahaya', '2ef8373cc637bfae9c02fd330abd1558e208c086af956c55014467415c18f467bf7a1e72e054b2278390b24b35efc8e7dc4e8f4ec7e89dd8ece5fb740865ca34GwDKHyIvx5CsEcZnXB3bKmToFE8TsbQ5D9Txrx2Wf5g=', 'operator'),
(258, 'mustofa', '4c16b8468b7a321013da8de21a941c27f90f25e51dce6206a79e5bab41d36d49d53bb96574395a16fb1078695aed92d839c54e793481c472af7d1476cc6b4d32FiR1zupTRwd+DTZ2Ij98/0kruf4YCMSBhIkoVX76vcc=', 'operator'),
(259, 'mawarr', '587cc921338b87594f98a1a85e256f7150abc87324adf9afc286c75c3cb05e18388f79cc5c779dabe3a549b1547152501d4e4629ed1611bc212937b9d15c10e7kp66zk7zmuynsUzpbWFBZT1VnsdQ/A/344AHS/oapr8=', 'operator'),
(260, 'melati', '84e0ce1f8b5dd98f6a8defac00bb604969b2d5f1c88cfb015732c50c42afc76890c05a2090c49664d9769fde699acff9e22cd2b69c2ed361d518e0c320600c90UKkFyfWRa0GL3sDpx1us4Hr+KVEcjbijfzbXb3O2x+Y=', 'operator'),
(261, 'neglasari', 'f1f3456bc2e40848e0f0f0a09b563d5d39e0a86608cfa39d066f073e6b0ff8c31970216952c979cbd777ed075e2d89b9d0a130becb264051ddc0c8dc00fe02f1/fwBAhc07KgxGrztGOWvmNZ/QSPWChGXWXWvBkgW9PM=', 'operator'),
(262, 'miftahull', '7e7e0b79dff18110a936a66ae515beeb41465aea588c74955715484a553dffbab192bcc243dbdf5a651c4f834d3659b5c2c5a8283a989101a8b33cea8a384214Bw6E/8Ygz1nsqz6XmSygfefhs1l71Fci+9UWTUmuP90=', 'operator'),
(263, 'nurulhuda1', 'e8efc61cc5a1f471b0f755629670cea813babb16514cd8aa7ffbeb2abd967ad2cfa7a8dd2682a2e15649a6001ca199a0197c9f74c2aef42f9be7c7a65fa6d4235gYROWIOdh++lpyvb4zgSllHjASOCcrnCMcb/bCM4uI=', 'operator'),
(264, 'ikhlas', 'a331f80947dc328ea966ef15235b52023c8c8986dcb35697c9a640fc5a22f37ec8b04d59a392694a75047f8f36a0d1cd0286c5ea56267d8fbde26b08ed734bdaefuQ/X6rV+uHBPuMrxM6Y+vFSKDAi8T/1FDtC3T2bAw=', 'operator'),
(265, 'pagelarann', 'f0f2a41c40803eb2fba043bb90c69940d3454d809e7a8a643645200bcfcb6a2885e91f6ab058c6de11465208560af5f8aa2908e114a2da7455e880d59e0d5be6amKwDWh+6xbD4oqT3xebgnu8tWMSTXnYUq5/H/DFjp8=', 'operator'),
(266, 'pelangii', 'eac9873d92f44ff141f3e7b1bdf50442e81fa49db0851d97ca33d49747c93e3eca95c297387694d4678ee101665c2d862eab21d2fab8b6529e13efc316ab29bauLXdLq5bEG74oGvLyn1Jw9E1OVxOga2EvG4h6juglkc=', 'operator'),
(267, 'plus', '745ccfb4b117d9ef8058d1379f529529206425cae0e444048591e7a646aa53e9a4281b07d46bb084b0214c802a2baaf667fc09ab5161c8418dbeb12f1d0e7127H7xCmHYLvVe+3Y4gYwQqL4G8xj5/o7oSyB4D5+KCD7k=', 'operator'),
(268, 'adzkiya', '4fc7b1b8b074a8393b6f45f66e2633905128316be96cde09520ca77eee83fac12ef7b470673c7fcdbf2ab447c91fd04416e12700eb3584266fca4d31496217566HMVeFsYZECEBiFGmoUWEDUK7wFZWYVLRXub+n7qZwA=', 'operator'),
(269, 'mumtaz', 'be2532d396b3f5b7e398c250b526a0f0f8eda9bd820ed22fea24972304df208a6e9ca56aaa119d8928cb176d9ece140b185946f9e16e01b74e5abcb83d079c15IVFd/cnmXFzY4woLn/o7hZRYUr5aqQMEUxzu3VRwCi4=', 'operator'),
(270, 'serojaa', 'e69abf1bf05aa481f16e025f9e998091fdbb4ffaa9877ef0175b747f6ecb7ee60fe6d3abffdf54ab10d26d8d0dbb4d7d87200766ddf5ff368e59054fd2274964HIMHYBxvR9uEqSVR5xVl2imTpM8ZjpCLUcHVkS7Drzw=', 'operator'),
(271, 'harapan', 'f537aa3bd0fb421b63623f477df834e7695eb1996a3840b5abe798cfb338eaa0cd6564cd59299c7dce4c7668324d1ef80e35b585912ae969a6d1e53ffe305232k6YpnUVyEwOe3k+74tW5QjGZkoeOfPQKYHx4D36m/p8=', 'operator'),
(272, 'hajar', '2685bcd5480bf0370becbba9b00be467d9ba2d12c8054175d92785c3897f29078cd4dd1b539f293cc508f28720046d6a21cc41b08a6e6fadbd576f0aaf350957l+p5fE3VkxJ7HxhGlvh6CiFJ64GVzHfoDzLjVwRD/JI=', 'operator'),
(273, 'azhar', 'c8a85ae95f62fd383c943f9fea7b805b454e63536fac2c0fd089fdce251433ed0b155853ac7f2760cc4d5f60d39c3b0d3a76f51435e295db56955d03e1f1ff6dLlVhoKD1MNuqIPOT1tpmV0eSCoJQzTJwsrc3EheQoOU=', 'operator'),
(274, 'haddad', 'ada098197a1137199c21717c9bfeb606d0d8be464949b576e27cec4398a5d7cc9f430bb23e2611a44e1ab6167f02a77a712f3b76027fb9efb3f24fe8340d36050yUOsph3qt8caEvqicXGaYch2vyB5SaOdz90Q230JvE=', 'operator'),
(275, 'ikhlas1', '722e791f8b468b174293a58888ae128fa4bfe166809ece1fa60eac12b31c268c08adfaf2984d5500fc8c4f425f77d3e1693e6fcc0f4138491d88bfcc493e19a6OOvKb6xHYICilvdGoSappgYHeiidsFe03xTg5yRZyJ4=', 'operator'),
(276, 'ikhlas_', 'dd2233aab50e40483c6904a7ff7cef6ad8350c43c80fbbed5e30b9fef24d6adbf3cb5cbfafddb4b71234c2d5ee2b87cfed81408d38b45201ee32c16c865e358bR9LnZOkbgVE4o7ewbYQxjPTk+hMA2uWhtG/bB69vf1o=', 'operator'),
(277, 'qalam', '7ea20729541b38b364df7260dd868a61bcdc278b8f719b050a1839aa8f38c7fad735d28e897695ffbce0fec9a53fcadc94b9b3f6d8816866d458b48856491402wCFMkEgaIM9G2cSJCX9IHE8XO0i5om5UpaV0k7tp6/Q=', 'operator'),
(278, 'anggrek', '6e5377abce451a03980aa5d288973fb41d972b767b4e4b16eca7351aa55022edac70a9aa4a754def54e569bb0d1726603a7efc45fc9710e36ad2dab73f97cd78ZfW0RDBHGishzxySfIkaRj+Ro36vyywc/sabw+C78Hk=', 'operator'),
(279, 'ansor', 'ebec4f2889bd9837f2a66488a95bdc1b13f6b8fd07efe4c07c6f5b1f76b666622d55b398ebf2043922c07bf75c30c9828f860bf640bcfdd9407859ccc192beb6iIC1wSDMpjP7T8XpotBu6XuwTmvoGGHPOsHPP2LutKk=', 'operator'),
(280, 'aqila', 'af2a99abe61e94a1b472ad74e295c11d8a989e12e3498575185137bb3edb4a5eb5a8b4abb22b7cb06246f7b294448a90d05b0041a178571a3269cbfb44bd1b737EM1IVZ35MPjPVIjzMkqdWqC6mVAQHJ+rtJovZEGc5U=', 'operator'),
(281, 'aster', '5840704371d5cbf245c82708376978820e6e2ff295291d000fa6ecf5bdbc0a0361fb8f96ba3528ed928c858389eb15ab7e7f589eecddf447c7f326e353d20e5djJtCh0p8lNojKW3nOnxJlT1w6PvfZ4bOSvQlPuOhqTI=', 'operator'),
(282, 'ulum', 'c4a35a5b78bfb3122421e1e77129e3fddec63049ece688610bcae248a238c4ecb7bc76fccbea09f75c0e6a27a3c7a3011c050c77d846d501438656c0338ba2a1Pv9qaPe/Ve57MzcuY+t64S+fRp09GMeHSGdTbr91Y0M=', 'operator'),
(283, 'cempaka', '37def17fbf6e7e40b05fbace2bfb8d466c3fe2b2cdceee29dbbe06225a92e298cb82ec7204b9f818977b933f3f6247a001349072a0b8a4330b5677cb8ce9ed7cq9uktPi/F2ibs/5ADuCx81Yhm2EJGnd2VcaFXLaM1Y0=', 'operator'),
(284, 'dahlia', '5a41562ab724f4ef4267b29c4bb9e06debe31c0c6a2972373586033587c94973eccbec57a5d8209cb1aa08fd40cf34f8b66f9c4ce2be05d4bb43938dbeb4ce46X/v1assssm1fVQMvklVTSoqewLEoRQjPxSUgUc3c0cg=', 'operator');
INSERT INTO `tbl_users` (`id`, `username`, `password`, `role`) VALUES
(285, 'kenangaa', '346002ff45f47791794f42c420cce38e4aef3d752cbd4cdf7e483b55ba42ab270a3fe6c22d59ae43349885670846769e62b26ac1ee95765c79e2d2c0269f5101MteKOAA8u09BYpVAY5VwAkEOzVrMqvG/JUfGTA2I1IA=', 'operator'),
(286, 'abadi', '493c97f124d7ec79ec8e7be25083ba00354c964ff792ac81a8b2d9fc27bcd924c3d1a448689f473fd64cc109efdd0dff51f916b9b3dcc5e6702363e38ecc49a1yC/OMDqQs+WXsqA5tKW0abKNf/E141N8xuHlZDPGc6k=', 'operator'),
(287, 'mekar', 'dd5a33afd4435357da8aaf513b5dac8b764ff0a8b76dea0d6a82bf4e5152a23c4993a8d8a4c8ced369c652eb5a38108f9811fdd22d985cff5408076700be7326cYA03qll6kE652SqrCTMitQ9Lf/9C2kglRkKolnzXHc=', 'operator'),
(288, 'miftahussaadah_', 'b8482d70e28af541afb9f27379cf368684c8b0d39d040f2376de1b480f292c5bfab1cbe7e24d26d4d8dfffc950b4d764412b5964892adae6dfef6ea3145e5e03OlAHbbqQGRnlCua3TTVUqkFZxz11UuzJhOs/HM2xLsM=', 'operator'),
(289, 'mujahidin', '23dddeeb116658f83730da1bdd87705020ff0f01ac3c765d67018098a7c6d0587e9e197b1d75974c18ba52aa67c490cf38d0fceece283ef4e0f312ac07f282d7FS1wdva3sZKmPneePsMoPLm/Erxq+OLqDfHCSFswUrE=', 'operator'),
(290, 'giri', '3c667327525492a2adbc95b5a1ca3068f9a623ba3e41232518eebffda57cce445ee7b5d14988b133250659767d9400feac3fbcf241a3f2c266021f8b75adaa691G1NfeP2vU9fdaoWQjeaoqq6TBda4q2Dr7kJUc8+Rkk=', 'operator'),
(291, 'islamiah', 'ccc2c426ec44b390b69b04a29cb411aa765edcbb5186142a6019dbee6115f4587d95a981e5eb14a587381f64a52a1dbe8d46e20a9a9101363915d26c9e12f7f5/w9MK7TmIJmxEu8lI+vWRXJzrZmOYZFKMvDe+xfCnDo=', 'operator'),
(292, 'solihin', '35261e6bff0d241c123405918196e398e34c7df1a60fef3afe0db98b0a23de99a9eaa1c5efb16eca26813468f1c084bff3e243aad3f874113ec3a17cb77eebea9Y/pvZNJ0YonrqJvLpgw3oseikSVchF2LW/yaRyjJdE=', 'operator'),
(293, 'solihin_', '5d6ee4d7b905a339ab00784b50c36f8237673bcd49c7600f328761cd64f32ec37e7402f15306ed5b7a56ce9a2db0a2c8521f0017ac6235abb36121ef5446510cLstlNFA37mDyJYzvdAkXGwmLhTLSB/JD568O9sjoaRc=', 'operator'),
(294, 'tunas_', 'bd0da04d0eee01b3b579f84fdca6bac25894cf0279d59347924c68d5d7ffc1289b749c325f4503c5501a6c1a265c66c0ad958f6a03e5d492f03f259c3f4b500f9qKxKdosHCVTmwk0ZXx/SAWKSQzzkr7rJtQFNSTlBLQ=', 'operator'),
(295, 'munawaroh', '79c918cc6f80433a93b75c665ffecd5d70cbae2831440f706ef5ac1383fe128b5df0f3cf462eac7bfab6af95277708b2b401dad3f8f6d064a283b65fce60fc1fTxdNy9cWGQW/IlgQHJT5ohjoMoaXEp6rA4DamS6cZpw=', 'operator'),
(296, 'ayunin', '8b781929ff5aa66727bfb1e47244bf616ff077a4652c850a83718ffe0d2c1190dc6416404aa6e9f108adab1534513caa240b64736b9caf45e1ac9065c1d02c78yMgwatmpBOZtMMF42p04HeVXvMTgAYeZzc+UuwfFQxg=', 'operator'),
(297, 'zahra_', '604e4987f33dc3dd17e01817aae76911d5d76e97c6e97fd3f60570c5714a46fc6b3b6d146d8a5428e6df57a26c4c6bd9d735cc0abee47bd94d3f7a6b82ebd6859mxi4Za+axlPfoefjUX1pU6gbJp1TrAvqGH5yzUVyqA=', 'operator'),
(298, 'miftahul_', '09cd31f31a0774bdf1888d6fb1ce15a18728b025ed1d3974354ead0cddfe9195f24dfbcb5ff547e19040e68c567fb6e652a22ee6749195651a1277b89bcf00f4elGvZKkYalKpx+OvX2It2kma8yIPdSTa7yShLnx/El4=', 'operator'),
(299, 'nurul_', '5ea5d62091f5b9c3b08127730bffe2f878f175f7b082dd8e1fbf3e592885cc1e56ef9d8d90452d01f2085ad9b2012857ab97f8c1d38eb7b41fc45e07e66b5b87Z3lR9MrRrDvQ7QOfHkawqAyawi14AL4ikvLmlPC1eiE=', 'operator'),
(300, 'tarbiyatul', '64d2ed3fd59cbfc818c2311f49136e6946e3bc3a3a9c618de6a734fe3ebe8dbe72aadb73f6ecc7447850bf6536a866baf231508531247a4f5f23ae1b0ef27a418WPxlUNowBk8Iv+6qefdXwoRz4k6WzHdY//SfQJ7fL4=', 'operator'),
(301, 'waladin', 'c865fcbd557292067f4c6151548e3e385c5282d3deb0b95e51b0d6ed03d5d3ce60a4985b3dc8cd22a9716176e3fa258c7d1f32167a5458c6b01c900f5a447552RyKDytpETz1g1jPtaldEUBYzIhl0wcxIsQ8NebdH3NY=', 'operator'),
(302, 'babakan', 'edefcd955d50a14a71aea5845f7b5c8f577f62c7956306e3b7dd63ede80eb324c80bfa9a4801d99a1900643dba4709bb3c5e9e6252a177b4412ca106456ee876/pmKOmAVHejqfaEOCA8IYHEHtOyZFzUA2W+bKrVfkf4=', 'operator'),
(303, 'bungur', 'db0a2dd18d097e062e8d5aee26e22ccd3717fd6fd869001c5da4749b2a2049c4804af166feb018f312a042e6e215837011909bc3d06cbaa3f59a04b1bb8b2717BxpfVtfoJ5RnUg1H6ZF8UQqUd4PyzIlQN8lySu9pzFk=', 'operator'),
(304, 'mawar_', 'a14c5a0cfec2011cd0fcb043e66c083e47edc97872c9176f1b33b475b910015a7581a47b38dce6f5983cf58d70afa01ab5d2a2f97a7e40e59595177d6506aa30GYa3IiJZZl233uLgNxOdYpqnY3aCaW1Du75NQZKwUng=', 'operator'),
(305, 'mawar__', '36e92d719dfb52f546b7354e9f4dbfda43d1fc83d6344755954b49dc30ccdd0c20c948c2fd8661cb58995e49e71a5f0e860a5e7beadeed358c0a5ffeba9ec9c7s8tkzo6PfEjKu8vYhc24RmI0FmiYz+oo3+VoU2BkWPU=', 'operator'),
(306, 'mawarr_', '22fe5585660a6b4907a841c9d4485a134695c3a29a6314bf8ae623df3c546c8037a14542e5d7a39f388ad643241c34569c7c9b5149eccbc9cb303ffe2d644ab1k3HkwxYIvoHwVgkjwr7JvhDxl+gaCCwTmXNDeevyhWU=', 'operator'),
(307, 'melati_', '6036ae87e12e97f0664abe667916ed7400482ec44cc96a84f473ced1a6acbe89460644f290ebfe232fdd41e63e578b3a08438261021440eedcac7c5a3c7a13cacqt80e0F1zyQ6mQO7DZfSowu22VvQ93keFe8Soa4Ums=', 'operator'),
(308, 'melatii', 'c908b78eaf5d90726f887b36b6b2672298288854c45be9b71042dbe7f28df033da8caa85f50cb67993b3099c2c0370d33a296b25f85bd172e95bf5e73a66ba2cx2hmJ6w9SXce6y66qweU94MUyZI2juFznDSTg55+6mU=', 'operator'),
(309, 'alam', '9a7f8f6ab6865973e64f445242c5cf4db7ec498d67ecdf9ae7cf5627962d76fba5509ddec44398201bbb9424e94ae4a0b21b29cd5b9dc691de502fce30b1e4c73sBnRu+cnk7klwV2/6tfuIfPo0RBJoMjL1EldzeiW/8=', 'operator'),
(310, 'falah_', '6029931173288a3c1a09237823a3816c7081a2904f67d1d5481c3ebba7d4ca1ffffaee75c4ad40bf518564f1fa268cfe416f062841fa344789f180eb4a93d4a2bL4tla213F88+VywUJiRD8GCL9xE0sq+2vsTaGn3PyE=', 'operator'),
(311, 'riadussalafiyah', '783f11032f25e258d8a43ea3e027dc87eeb45e97a7a87ddf089f2b2f20b9c3ef8bb671bf85f66738295c0a391230cd2884597a2cc274709356e3189218baa8a8KmZwJuaimJx5R2YfMF6xulgBd8gBWo+nJY+oaXJyxt8=', 'operator'),
(312, 'sauyunan', '37675cdc979b5f80f40530675c793928863cf36a1d76f9f9d49d4486b79cf21f05f40557612fceebd020ed225d724002088e22561daa1b445131b3449b940479Pt0DEyseQhD4wwphGYjq62OoPkngh/otz7bHOdc1JiM=', 'operator'),
(313, 'hibar', '58e14b0a01720f4043498944f170370bf7c4f5b7be70ed9c16f7df2e4d328da008821c491ec53af08d049054dfaf5e97924a104d0acadc8c209b369e4d0d4af4vMOcPkqNBX5xINEXA5aRfW7X4LtYbEFkIXkhIvXMXbI=', 'operator'),
(314, 'kamil', '28faefb1635119b6c42897e74d68736918ea2883baa940f04bb98439ec675c18f7dd63f208f93ec4153d9cdec26c1ba433ffcc422ae550c16f11a503a5903cba1sdV29CP10g8Zo6grcnGXdpNo6myMXL7Oe4GSAkH8yE=', 'operator'),
(315, 'abiela', 'a8892cb72a99e2feaba9ea965c7cfe1b7b578413af5bfc7648c58f5b929267bed687549f61ed45e36c7ef3cfef859e15c2a8a6b4a9c30158e5d9421c70838eadKxvUrZ/f3qgw4SXJK6nG9s/eQ0hCBpAafJnZ72Yfv0A=', 'operator'),
(316, 'syukrillah', 'd6cf30384d4563e2eec813ea849829b1e101ad380ad5e927d63f05c2b43a929586fb452a5e9dff9be4c9862ca7656485862bd68a4ce8454d8971a1456731e61dxoV3CnqLPb3Cfjr2mAE422K+tWnlLT7z4C19FLIikwk=', 'operator'),
(317, 'pelita', '99092b38a6963a1f148b04b95b3440415819dbe17795d70eb56c462ea64f178247d5496cd4736170e86e894e0b85af47640b3f2e91746d38d0fc19a0e2dfdd72nzHidlr9Py1wF+JxEZSYAX7U6qmElc3zcmjPGuNbC+E=', 'operator'),
(318, 'jannah', '258e39549b4d182f7c3df2df309f842485b4ba7b3fb8d3f17463fcd28f239811dfaace4e068546392dc603397f51f76de32668a64ad18a819b61ac8ae1fe77eb/DMGO+h46rVOrhLfFszNneCvljTE87FDeypDVIGGSh8=', 'operator'),
(319, 'annibras', 'e1e372dd63b0206c021c5fd17f6f2481de83d795304ad3f7f65bda99cbfd7828d1fd90bebcd30f8b21aec88d4f4972701b29848575bb54f04ff019e07656e2ceM6vGNdk6SSlQa/tjqUwij1hd7d3Co1ntZp1aXFXJ+Rk=', 'operator'),
(320, 'nafi', '87f827ae6cc2bd84bdf196b82dc93b5206b564916436b6512d8aaca1ffcb8599aa39ee42438eaa6d932fe6c71f450e9aaf67ecd879d8fc13315e2a78605b4d241S4HRSJn0YCPOUPdaxSAnUbgfP+8kxA8cw3W4IJVHjU=', 'operator'),
(321, 'taufiq', 'dd55b84a7797eb5109ccf69fb887c6efcee628ea0b5e9c0c807f8f7bf7b87e17bfe77def0fd496acb5043bac457315ef1a09fe824238b18c69ea556394dea4419bVBQWiQ2E4l8AgZgAclB0PteXEkQpoHSGSUTg5fp2g=', 'operator'),
(322, 'ikhlasI', 'e2e50d0ff778147a499bda7f5e54855590fcae0f759bfd48c9d9d637aca7c70cc1086b5e57403a2094a4bbda5ca4f72e12192d93092d3e5f736825c20f77662dqiKUX1XHkdPcOjUzyMEzr7PPQEl+c7B85GOiVZCVT04=', 'operator'),
(323, 'hikmah', '461a2eb45757b345a13bbfcdf284af820b2109a2c1b2839d815ad98e776352e7f7126c4e843ea5ce2e864f186ba7424a2f52a68fa0905cfb61426474a43601a8o3XwqhtQwHAGO+3HWo7TZpWlZVoLBxf08n3wu9u3Xvk=', 'operator'),
(324, 'hidayatuddin', 'ac735872b274855d2c366d127b53faedcc6651d4c77be029ba102265457be0bdf6a3d98772b47950e8946229fddd15b2ab3bd9de108c4ec46ad131a1b2425474G34up9r8UiA9UX/i01PM6MlLVQz32ohpMZSTdQ4y3z4=', 'operator'),
(325, 'kasih ibu_', 'd4e72923522ed5e4143cf835080cd28dca875ea4ef69e2500e307973d083b9af67cd5201d48ee5aabef27b4006578183238983e00b6f83e1e59e826609f4ddf1F05Dq4tohbyQnKEfaKl/cvST1UVwQdVNyeZcg6rdJ0A=', 'operator'),
(326, 'melati1', 'ecbaf34651978b6556fa68eb5ced10e64936e71ddb004770222783efa32de91f54425310224535f33c549a11051fab42b1b985894916ad303c15b77f35a482bfZ1+UdYfbgJ/R2uPVulQJ+NTzIvb8eX1TjOjrTnLSoR4=', 'operator'),
(327, 'melaati', 'e172ef07a07729d96be418c39aec73f947d48ae39709be4a217546614a379f4eaa93eee010447ff9d0681f8c050471be070b74533160e228717f0fe4db4bb11aUqW+F29DEyY+CqnSJU+T5cAQlSgfijFyNSZQCffLcJ4=', 'operator'),
(328, 'jasmiyah', '6055b0f85c36ca2054fa9c5d95d23e4de14317d41b85c22f4cc0fce5bc152cf9a13741ec566b5747128385b5355d60f6a3f147346ce477a39defcc9c061271bfRG9L/E2MFJFDjtRiOhkO2GEUqCMD+h+cqvDvGRZ6C3s=', 'operator'),
(329, 'bina_', '4fc5a41957f6447b704705bd900ce4c0596e0c1151ea13411c38e8c7a4171a13ee1c20e0346f3a6067fa9098d0eacf9e70bf4db8f75a904797e358a4df72e9acxTMjBxVkYa+8Vt63GYjP2j5AZo56rrorOV5E96Q7wik=', 'operator'),
(330, 'afif', '6bc035ca94015034ede9903babc232d6f04406a92f7f540b7eca1812661c8fb15fe26a5942a86e01e5bbe874f34d8d0fd247a7b6dc3345132f718591072498adD3mVd/ovd5QGsuMC/sIAU3IYWPX/Y/DNh6MZtIDgzXE=', 'operator'),
(331, 'hikmah_', '898e6461c1593ba7c1482438941a0e9d77db5702676467723c53bb845e36323a9f30c49e0c95472c47d553a1a1eadec80139749037de3ccd06ac860775132353fhZTnroMAwadlYNPj/r3SfE0ySsNMuDERrXatrQqZ7g=', 'operator'),
(332, 'alikhsan', '63ba48c3e98ddf54376b68e37e7be6bebb95180a56dc277461b8b6954caf6eec89d189d883b9329e5f46b120a441a7d79aa420afcf584d29def5d63afc5fbec1XnQ87+R7NMX0L9IELLF61Jp1gjdaEK/VmNJ+VXvOqac=', 'operator'),
(333, 'istiqomah_', '82472978ba88494285ce121b0d2123de3fe14d73b50bf138cc2501f4911bc89cf216159762d8fbe2c40e4a0936426fbd445cd36a8735a66954d1c4f0f859bd34KmhrHlXmEY9RdVSpGBRxDIQApEjt72qcGMIpwNTTDns=', 'operator'),
(334, 'al-kharomah', 'a691dc29f10485f3d2317977b07fd0179eef2d20766ed60eb682aff7e3b189e5977279b5ebce3a146db46626ecd2d840df318b5d13486c3f6709321bc43a7c89xWswqggN20naCQEI7a/fxOVoJPsuIaBJoHYhhffBAi0=', 'operator'),
(335, 'qodar', '195b66c9b68688b5c3ca096675ab5a2c726bf42c0e0aa96a27eccfd77b3578f323c8ccd829f8cba5501c88f505d9666793c757e465958b7997daa2c4133b044cbnkoaQJiZutXafUCw9Tn2VBIXLYkxCYTqv3MWbNnMg0=', 'operator'),
(336, 'attaufiq_', '1dc1aa44c179534f94189f6be50e6ef697e5a3f125d7c8d1aab37a88667539d63ef33a39457397d786ef28f84ee66594dd39a23108e23b3044fcc6539f67fd579Os4dfoBNu1A3o8tuqhk2DJrrHzKNz1VfLnZ6jVxUjM=', 'operator'),
(337, 'bina1', '725c626ea7ef485366304adad9ce7f5ac5644a14fa071f4978a07f9fe3ae0621e70347c22f7d106039959dea002c78a292c50fb19822cf2ab7e6fe46b4bfc26czfcEj9rFR7+FQzzG+IkVU0Uu/Z18HUn6nKCYQX6dewA=', 'operator'),
(338, 'kencana', 'a22bd03fab6e77d9ae1b9ceb4b8a029953e5ba847c9f64d14e6011e372911d0d4995a01b6c7068428bdf03e97947bebbf0463967d5e8ba97af75eac4cda3b847+9PyUJaPzRuISA6Lt8rbKSx0Jqn9SczgX/gLWoivmlc=', 'operator'),
(339, 'mandiri_', '5eb11cfd2d9540f8f3e41ea24194114cb804914ac57f71002b347813ebf564f0baee64c8b9dfdc9ba92945d5ec0298cb48c13c8ff586b6715adf53f998ee4362dWy7jOW+HX3whmai+tycZ9/jUbkrjpnbg9Gz4FSPSmM=', 'operator'),
(340, 'hasanah_', '4e0fae0f90e8317331e22b44e838b8f312668db38aadfa5357c1291e79824492e35bd8bb365c60a40ca747fb0a329544607ce4217e31918549aefac7152d6b60ctOC/SB6fG2GxijDqqHF37nG3gRgpfN6FJd/hXYSnoI=', 'operator'),
(341, 'mekarsari_', '3e3577287606ca5e4179f365abaeb83dda61872d7c755d33a9622900a11a64c8b95873248232a1f343956edd4b7b89acfb15b855c6eda859460f630953eb17f1+fMqzmHlzg+8qAH7eE39Fqts/JvTZgk9/uOer0eS6Yw=', 'operator'),
(342, 'miftahul hidayah', 'ba5486d3a301d10508651cf4063b471f724b6af6bb776ae1beaf91a8b9d0a593f65e586cce72056fbeb11b7619cdb8b9006fc32cff63605dd7b069dcc4e2b114cZAbLp2OjWOahaEP97qwJrPaMXyjfBvwcR6TFYYO1XF/3dGn6L8aFaFVlhEWpT1T', 'operator'),
(343, 'pustaka', '4335a4c5a63f88ba70c7b9e2e14fa9739960d08880297020429c1976d681a5e407d69260946e64d06e3e520ee0a98da9224af2d3115f5b05620a8cf4f4be1e1bg/pwo5eYxLAVzpIRpSIAaqLbFaLhTvpa98wRTJAjs3s=', 'operator'),
(344, 'al furqon', 'c0fda5978214eb9646bc0c5d177b44e2d7a550f209d9404f849c666bec26521146abe036bba7f235d6fded97ee2bba5b81890d2c599fc30b14fe136647a7e50efPIt+td7dOa/60od+ieyn1U6N3iT7gTOEvx3Hlsu/d8=', 'operator'),
(345, 'amanah', 'b56962006d17b95960d8e86877173c45016eff5a491fe507c16c0e860091a10580179b88bfead5b52c07c5f9ff574cdd4ace81c1ec25a7495642cbded99cb4cemeVYB3dLeL4fYfpvah8zjgjizF244eW2ewvuU2gUEhE=', 'operator'),
(346, 'fatwa', '447ae6c278242383a7b31f3ec614094808ebb64562de2fce5c6906865773bfa1d1f3addcf7dcf3879c272d43225895f8a5855fc9940c626bd59251fe4b0a581fdtL52dGZ5ReFcqXpx5MGLgs64sdnAJQWau95v44aJtk=', 'operator'),
(347, 'munaa', '23cbb2d21aae3587208795abae0e8ef8d9501758232a48e2093d17b0e09db35d528bc6c5a2ee5628da5c3c3659da137d23ada3b43e9ff6d65aced9d37847c7f8yzL/d1ttOQPM65uTWFuQvdd+RHbhAekHA4FqN3n8WWw=', 'operator'),
(348, 'cerdas', '4dd25d67113706f5ce1986382917b10614df6e0674a87c08e906deb1acdaae412c67903f2106c18b165c1678f1f2194939a6e0de7f313a6539ab84362b6ace17QRJNK8Erw1vzOlbuz3+6LkB6ULVoTTde+FqEUIBpORA=', 'operator'),
(349, 'cita', '6b11e74fb427934092a2b5a7f00b67bc5e5480896e0d64ab0d11435c6b67e561efb2300fc8a483928dc42a326f35ac11eb6ead2b6f115f643146c6e00b8b347cFU64UtJm9TlJTiUmsaQENH/qqcfLhW/YLf5RH3ph0zI=', 'operator'),
(350, 'bangsa', 'f37552b434049a36888e7cd721ee6e217b220e26fdf9abd0368765c69e7bcc9429c84ca5605f42c7613af8240162a0cdcac2f8e96aaee602e62709d248bd2f1bs8wUbcTW5EzOFQVLRm5hl0BYaCPeDgjZgoJT1YDvMEc=', 'operator'),
(351, 'terpadu', '956e7c79e9013f2fbc6c0de336e8b01a5570da05376ba7c42757835a384f7a0b3215b7b6890d2454cb3ad9ea61d7b21628e5aa8d4a34545fbed7a51588262cb1cIrYReEBQoVzHyYocwM4AgjXxB6tqvLs4iq/J59qjcU=', 'operator'),
(352, 'iman_', '4bf05e87aa5e4093ab481e41c59a44665a4d84e586151e8573748b8d0df2affcf519c9543e1917c46cbce180f37383a64d899c057710c741d03061efc1ee54f3T+T9+eb9pj90Gix7s2xw8Y556p6jlUrRCpLI7PxmU6E=', 'operator'),
(353, 'perintis', 'b1c30704ec21a53f65d8adb8acb1c7b231d731562ae20e7b8b07c7b71f3b466a9bc90ee771eb850a2a5a87b26e355e2a84d0da7ebab8c7636c0ca9c62a359aaecas72XgBd1DXtpoKGntLl3gha/ZP8q1IgRpAlWgRUwU=', 'operator'),
(354, 'jannah_', '46a0e5829d336ae57ff6d45e389b2351cd8f7d91e204802e7e0011f6b8e1ccb79b1d7a273f604fd693da1d780bbd16ea693ca020883ffc4ba771e18c34ed3acc3AP5nmV62M5Cs0crvkwx68zRDNzyA7gVlHmfcegCy7s=', 'operator'),
(355, 'sabili', '300f812e8eb9ef8ae0a7bc79c8fc8ca25954d923a26eca850addb8c61c9dac5754f7d2bfd3a2ee7cdbd06db43a51cdeeb69be8d857c79214716717068428c2dfmeVOOCTuk8c0MOipVkLj3uRhY/RpkMARVRqsf4BervE=', 'operator'),
(356, 'tunas1', '6d202708752f204446211239e1fef1e3a8c1c42512440dc8df223f814e1a9517831fd006778fb11ce9c1570e2778ed87588a54d3cd85e9b7d824875f4254323eCHTkJwU76KxU+9n1/fLF37e8UeAbrnfkcSX8pXfwtAs=', 'operator'),
(357, 'mandiri1', 'c2857d6c21c8a9718f5b276bb19ef1d692ebc219405a3960cea986c8236449672b50a3ca534aab875b5b1146b8ee08c0f0508125e5499a8c4edf717d7cd922750O57WGEKBwjrNBbhxTz0rDs167/C5Of+HK68GKATtu4=', 'operator'),
(358, 'al-hudaa', 'e200cb8fea0d467f459472e060bea9539cda247043608e667d29399269d6dba2129c7e6eeb31a200bf8e8a3cddaf3deaf4b74ddf3289b90ecd90c97d2e37c7a3WnLlhK3KV9GpOgVCG4kmeuAmaf2wcbOZaRwEmxXAPFs=', 'operator'),
(359, 'bussalam', 'd3d5ea194aad24acc5ecd91bf2bd2d61e2bd07e4dda630fef68af87e348d05ff019001f02712cb6a2c7fad2d84ccdc1ee0ed0ff0955addad1c80ecec0919055dgk6rW+ivhIoTqQdoNGb97/xGr075RRharjP5Hd6I+xo=', 'operator'),
(360, 'amanah_', '307b19bbd883db9087fe89c60583956ca5184d2c4438bd380e00157b85a5a040e6843fa124b080acf6c44261ac996d7c21be4999a236bbd9eda1d57a4ea5d40bG74h2nhAg8sLj9LJItd7q/B6EFCY1A7x6Sz5NHor7y4=', 'operator'),
(361, 'hidayah_', 'bdb639f84218d2d216fa9da1db5a8885da30372454ddedd0592e3692e2e981455eb49937deffc851aabcfcb52a5af50a5f614be6523230672765e277b5f65846MPkt18Z1tsqFkMi3UimGMSpP+b7xaF+wb31PEDpbzuE=', 'operator'),
(362, 'al-fitroh', '2caaea1e71163e99c358294ea9d0b428fcad6c0d546d10a255a42658965e33b827b13d2132178f40d94017c49140f930cf7f147b5c40eb47f4b232a7f19cb717UC1UQIHFzNIk4YJIaBpX7eiX6WmdJtzmto2PPG0ZOcM=', 'operator'),
(363, 'al-haq', 'c4d152cf38ae0378ab027f706398ad7d10eb890526cb16470d1cd3697f5f1a978abab4e1cd98f67793ff5e4075d11876466d0ac0eb860001a13f6b7e5f23272ciZ2+F+GNTmOipJVDOfE/CLmT4zCQTUpewJ7090SxgMs=', 'operator'),
(364, 'al-hidayah_', '53f52cee936a3b178df96a072761d1c7661edd3b13cb4d396e7db9e80caabc9c163133b90086318cfdefcaddeed300772411e9a5e8746f3a3029aaa48d10fbfczSFWgvdMkF89RXtR+CULGwZo5Cr62/hRf0bqyz1Buco=', 'operator'),
(365, 'hidayah1', 'b38908458475f86144ca7c81b780fde4bcae2e9cce9cf96ee4f57cb5c26af172b0ffb0f13040ed10a0800c53529cda26a51d03bd5b0d1896a58fe3745caf2733l0Q+PxoHf+3dwmbvmbQ/95idNEVG7UtDQgJNjF4DqjA=', 'operator'),
(366, 'al-ikhlas', 'cc53a69ad1abdacb4d6a6d4b16434f858e65fa0dbe8e2dbdabad729e62a17765a8b86af6e573ca8e674bbf4a7a1f06bac650a6d3d84bd2c0fdb4c3fb8fb531c5jqJZ2k41Zv14qMe+GTRacGtjrUcbQU84ApOBDAJjiro=', 'operator'),
(367, 'ikhlas1_', '92aed510941914e97d026209ce37ccc581ad0db1ed05e9659f73de473e09a5fe4072fe6624b13af1debdd9af83167bf1881c16599156a525572049b47cbd5ad5iUJoz6RuvJpqjkFcCH8upRh4fZTPmzVxZF4QW/xgbE4=', 'operator'),
(368, 'muttaqin', '3c2d1c38c7fa1eee5cb675470f5dd68651945718ab36f0281d6730fccfe654e2e8f0c0bcda22c7f97e868f8808e83229698c7b10092f4fc65d04450d9a8167c3IxLDNLfZJx7I35W7j1GtkbNq+JD9zmkCT0+dFJoR/ds=', 'operator'),
(369, 'bahrul', '8e718b70675719072f978e9e9947a1392fdac8d9cb44ff405d60d852c71b2197179d4d18ffcaf38df64cc55fee069d3dd392e7f5c0b3bcb36319eacb5c2d794cQaNqHXMWLN5ebCFqL8VAdKQ7EF9FLRHUwIP3H4RLoLo=', 'operator'),
(370, 'cahaya_', '532632d37886ec1b1649666c9d9073836eb96065e451386ab2eaf62347765ee158418e4d5d28af07c1402c0a61cf10300663306b610797566e450df295d430fb0q4gt77OrCkoZKka62yiTKIPL9wxjQa5dyunffK0d6Y=', 'operator'),
(371, 'cendekia', '72a4aafb5afe57c8da13ea007099fd08406e9e36b8aa48609a5fc754b375425df5e4708757ca694925255ba5c9d302e2d4e18a685e1a194dbc79f972a73384e8cxoNZcOH1AcrwrHVF376DyCQxQuBMkM9rmczLA2zlxA=', 'operator'),
(372, 'bunder', 'e953d84b6f7d2961913c624cf45790053fc24387eb546cd857662cc71ed2e730d1a7275349877713e679f23b3e3160073c70f2779cf411ec6442264956fa80d86UCT9SCilaAsU9+tt8kJOVJOkYlnYnV3lZt9IL26qvk=', 'operator'),
(373, 'ceria', '18c081467131f38971907cf4db9acd509cf9722452e88091681ef57dbfa97a3049c261ca1bf0cd4891b1cd944a9008b0f32ba57225bec6ffb34d774b1d6421bedbBlLUpMpzpUT7kKOxjPG5ZbhaGitC1gJcL/lgpmTa8=', 'operator'),
(374, 'dahlia_', 'a940186a08e1e39d9297ebc98afd4422187e36bbd5fd31cc6f28c13c2f5c0409e7005dfce5f9068288fd9d217c404cfaa0d8f7f0999de779f182eeb86e53f75b5iQpZtD5/S5lfwXkFydSiXs3oV9rJM739lqPuCW+ypM=', 'operator'),
(375, 'dahlia1', 'b6f8be5bced0fa9df0a9a466b6a99f64ccfe5313363537c8c88ada1fa128c10365d846872ba7a2995930d12ba317ea8b7f3e49db7d7a99195690455e672bb8d7WksVWs8QT+uboWc1aEIawaL6Xj31VpWyXp+rlYPaEYo=', 'operator'),
(376, 'darussalam_', '0e061ac94c595b11dcf9592192064e59296a751683955d6daf810b71e7db6cc19f5ebb05fff9c9d830b4612334fdae30acb0b85d6b4f1520cc80be7b30d42c3dhsSoAuMFEVy+cY0lHfnMtWk+2ZOsnUa+LzeyAIwm780=', 'operator'),
(377, 'delima', '0d9eb0541e338f2b86468d86fe7e79279b0b760ea600096dc473cac8aee99ab941c2275bae776c258ecd9232bd63afe244cbeb1fb3dd756eeee525cad059359bcRVTOlgJ4CTFsmevJiDo+7d6kYW66pm42FPC8Im3iuw=', 'operator'),
(378, 'faras', 'ed4642a2e71012ac86ecade86e2b92d1a309debe3ea61aabbf6a51f80845cf6de924e663c5186486db85611c34b3cf5eb8620840a98bf3ab22094a751734d42byYX+e247gIkhnDBppXoRQHlEnngOvhPpl7ItCzXklEY=', 'operator'),
(379, 'genesha', '8324b3eab476f7c1f445849e4aac5d344d1a7781a5df063cbc1e358dc17b31f3f6c8d58304f67378cde33fd8bffc660408274d1572b63471536cbaa07944e0a6NbCVC1mWorfp7VdbX9Pd9l63hdNE9Cv11DoVb78Zhvg=', 'operator'),
(380, 'golden', 'b6e421df2db5e573ab94f6112fdef46fce4152d898171fa3592866df61b0e44d4bafd69d0a207d6d13d71eb44f991dc52c8d6c08f8c14c9e3974350f17c5a996z9we6Dmro1Sg0mLAikaSuRu779riihw6G1baGk1JpXA=', 'operator'),
(381, 'husnul', '624fb44db2bb8f1943690d6162166575d705fcf6330b6107f53a5296fccf40323936f33eb57d59d6a336841ac18e358ad692136f55e5b64e85953de4e78fa038n7GEgfsDe2igMHcSLpYkoI7GcH57hKyeyDe/DomggLk=', 'operator'),
(382, 'kurcaci', 'd72ccfcb18145d633df1918ad11b64619314f2050a973432fc17588acfb26056d5278f1870e9ea36dd97a0abe983b5d041875ad5b58a4000ae6867afffd70b27r1QESp9Po91LXhBdlEfR4IdHtpmqUofLVKbHtjVMksA=', 'operator'),
(383, 'lentera', 'e6671794fc7f80f48a3d397eca8183c9961eb870cf49f8b20e827a9f2a9996b9da5b56189fae6e75f2b17a32c23c0fab278d1941a3d13bc6d5d338607d3a8bfebwYhBTsA3CviZrtnok5Yae2/OJ3ty5rv1T/+V70yd0w=', 'operator'),
(384, 'maawar', 'b9ccbee3c3ba82d92950b812bbcf2fca9e1d4f609cf488d5ed460be01c4b1edcfc6b8b841f7d438193f473091407fa6cec24e3f1cd62b9b1bbe5cb3e8cb7e6eflsCljLBXyX7gg7coHK7Wbm95YH4yym32NMofEcnmRTc=', 'operator'),
(385, 'ulum_', 'c9a1a82452fc7013324887a6a2fc57eac83ac616c181b2a9aa0dc3eace5739ed39526451aceb3f9115903e665e4db0017e8f06947372fe9a8b026e7840b63a16LDrpb8Iqv0NpY4fHfMVE4obGdpHvovENx1Y1uKkme3o=', 'operator'),
(386, 'mutiara_', '4600580e53cdbd4c151717e43c217b732cbca2e3f8e64b2d1197c2efe4df8169e7e464a25b9309d4693e786c8a67daac2d37c0af09a73d467916aaf564fca3d4kNSfloHZDIoEzpBtb0rX2H5VOnJdnJjwPRGYMGPmSyw=', 'operator'),
(387, 'illahi', '75f53720cef31688ad01b7bdea68acdb1f9e6f9da8b06afcca16a2cb7ebde46a8478f888970cd543139651363a387b828e64b4f49056077dfea43e58e8e60e22r8YHTzwXFHRc2+pmP6PPqTfewzckJAZr0/uQAIztGDM=', 'operator'),
(388, 'nurrahman', '7ec0436a8163ff1791aadfc98033aa61c44f0972c334b4cdb1546c30ac7bdad484037160e9488e33bbb3b7ff8c279000244fd54f74d3d63580611f0a99b97a8283D4ls96EGez9WOFP2GyXePPYe+SxQwoYDPDA5ZcPOE=', 'operator'),
(389, 'hasanahh', '05fbb4c328c64076d3760d2e38537eaf5b2f1113301da67ed7262b5809e06734d1edf8635d56bdd901373eb2037057b5f3e48270aba12cc1ac0aae635298bee8FV9OUxMeV+xn6CmfZMUiVy+N+Dd64lH9Z62BSfOsly0=', 'operator'),
(390, 'insan', '2cd2301e9929edc432701708e68a908cc1d2e8b4d69b1da39c6ed99adeed64ef892a657515282065254209b5532614a0e81b883bc6a6e4857f6a8d8ed738c13alkbpNUBudq2J8blIhFTpVkW7U14K3qfTVNhWpPCxDKI=', 'operator'),
(391, 'pelangi_', '90fdda382255ad42fd9e02c999a849ec3f5ec5d4df568a5b725fe8e6b1d6332ff3f54096c54d2a0ae816c23c3ca7dda6a9a8ec4cfb50c380438cb4c5ba7a9713rnfDjf0iYm3MEuBDGfPg5zGCLWiFB24BlJ5eyH0IJyY=', 'operator'),
(392, 'sepakat', '7518ea7fc62a9c444de3ef9f4507441c32e908b81e8eb6f110602612802b454d41043b49a7c2da91771dae97378ad3fa2e9aec466eca03308666b04fef2e95b2CYHlLCnwNdLNrgF0pHwDjaF69FTAy1512MKUzW5TBDY=', 'operator'),
(393, 'tunas harapan1', 'f43bc0cbd80bd561fc40de89f379e26c9abf1a250eadf1a32e71879add789433c617a6265cc880f0116cbb6f67d0a460fb64675ebfa9c8cb654b7d78b1168e7bAdIU/ewMH+6P+yK5JMxRSMX7NSr2yU4/HREG85/8c/o=', 'operator'),
(394, 'riyadhus', '54a395f9e2c14b506eae4ccf1c8bf0d790df12569230b3064567ed017459a62a589c8f9e7b08e1e7b9aea7bf93b9938f447872ee893e2a78e529365189bb2350DG/lj3KJkt679h5EHvmDFcJJpwM32Y7pjO/M94px5sw=', 'operator'),
(395, 'fatih', '643c48c1d67319841abb4d5bbdfc2c60ff14a777e6b1e409dd2826ed643fdd2ab886943f6b7003c2639b7f7411993de5e8decb96588d155ec006d983054259b1lrBAEULYhotL9u8D2ZDV7UP8BzB43Cqmxgjwugmfc0I=', 'operator'),
(396, 'fiyah', '041938e63ffca6d8b0ef8512ab1070ba3bdefd432920c84027631f290a933cfea5dce32eeb512f1da75e289866b89dbd974a0047e1a7a0828f3b345375270b01Tr4s9o03Y6lKhSY2YYYvN9B6TQzYyMhoXoKv90hqgDM=', 'operator'),
(397, 'anak bangsa', 'ed6ce83eeac032328a738152042a336248c02ce0ccdf829daa57d9271d84d35b71ae42e72459fd271800651b90184a0508cffc8a5c27a7779af20da7372cd6c5TxLJjyDbRUdEBxdi5CpG4ui4WWitI5s0CYGsfTeLPk8=', 'operator'),
(398, 'harapan baru', '768a94264c512e5ea137993985568c78e44b8d78b9f0784d8eae31bc21380f89cb76b7f7818e37c0e266bdf6c294425f96ca74f4796902ffb6e8416677a05d00bswj7mVojoT9MK40jCKQ/eHfd4uHmDIKe2LrOjI0tXQ=', 'operator'),
(399, 'jaljalut', 'e9b52ddc0c210be04d5d6300010f7716e379a7acec93441df9ebc0cc670dba68019ac5e0fe67d2942b2c7a52faea33c7557b8d7d6b7a0810638bade632c4cf7e7mWcUnW92BmY2hqAL7paI0C/c1l2nJ/hxfKy1lKjQjA=', 'operator'),
(400, 'nurul falah', '9db5b4a39c563fd00a5bdd40435e107307b02be5eb118aaf8b37173aeaf97ef16a0b952c6787783c498f9e13e907d5abed9fca5c361aa5971daf28b04e610ebdjTb3wMEOS3D+IQAhE8ljXdrjv6TWgWjGXeuLJWw6QkQ=', 'operator'),
(401, 'nurul hidayah', 'd56f83b66a9c76f6420182002edcf0c96fcaff388ed3bb8c12ef10334ef03432c5030fe677e10b66723ab74ec589588f527ac5ce8a9c978bc24d955f71237f29EBW6TTRMIni42lGw94l+gM0zOF7DPSnvIhtrbiu6Gi4=', 'operator'),
(402, 'yobel', '5f1be24db1b172cec0b318ce82808224224f8139f8abba901272842a0217006bfeefc1614b4bde06cd733a403f2d2a46d157d53d153ae121af995813947bfeb2HZIjzlfpkRGWqaFJhvxtJAruPpIHrtR1B1LYlGgtdUQ=', 'operator'),
(403, 'naba', '98b77aa300c2320b1efbe47be95275eb58dc5dd647005cd92858e53480f9aaa99b2d6bbc621479cba04315ff06a28e1ad2edb50491985c0c0f784600af1ce56f7TXltGCCLltbtjmWF5itB2FIKmg7OLr/Gqv6XzFx2Sw=', 'operator'),
(404, 'nurul huda', '684006f5acca88645b1a38272b9d15eadf7a98f64d8f828ae1dcbe0c4921a1d6dcbd0bf11200678b0af91db3cfb0e64d0b37bdaeaf9c18c65b009220b9936c731T+2Pr/dJCJ7NVBVttHYatS5O3nGVwdf37UVJibVn4g=', 'operator'),
(405, 'rabbani', '89b4a6868bc0cbac7dc53c569bc01e5d78dbc0ff9bfd8e97992349f4dc56cd965359e6cf52abeb4d7a6e310a50e866295dc7198fe35d634c13667983dee17a72lH/8gzy+bg0Zf43cnjVypGhdw90pymuTJR1mMZ94eaE=', 'operator'),
(406, 'robby', '3179bc87e3b7ab69e2b226f74fdee1ed2ff04977cf1e7c307a83aaf8707ec58f3e041df4078c733bc3b689718958ec3881368e4b12b3f797ac346b99be4632c6L8raoOKmaXG3BIqCQqCtsploIPQOWC5n0OYa6F+QwlY=', 'operator'),
(407, 'al-ikhlas_', '0ae0cf759d4449d3ed9a4ee25fb7cf9eeecc8f8a053b10f5890cd6a821cdabb5e09d55393b9a123430904dc541fb464acab4883a8d802f4feba6401f03e1663cpxTIFlqVVauVmVzm99R/b76+LR6APgFbbjPT1af0HaE=', 'operator'),
(408, 'mujahidin_', '7564eeb346fffd000c0a8426b3032bf230ac92e625eb343a8626aa9fdfb8decb5e25f13278bc16a7a0131582a30b1ede71cefb3b6338e4b4706f6dc7d7263163Ev/b0M5vLXFniPu0sFP/lz8ciRKgWAq2jCi7MeNwZDM=', 'operator'),
(409, 'ibnu', 'cb21e54597adc5527ef33024a64dc0147d655f6da3a04746146dbd53195c2e42e73b5e40fff29995368284b3c59a136965e615f34b0858eb1f979a930ac1a0c9u/UmqHz56m62uphKlXvoyW6I0y7aKE+6wa61gdX6ivw=', 'operator'),
(410, 'nur_', '2991904a931311047202542203d177bb7c7444929838839566524a5a8b115aa655da89bb4a16e87247f7f836992716489db01f49602a29fc8b2e3fcac5f7173fXWaPMMxCo8583s9Loab6G4uKmi6v7DTXZ6XArqQeumI=', 'operator'),
(411, 'jannahh', '4d549d22c6e9b515da74f371bed925f9a1e67015dbf6b6534ced7737b803f1e00f4980cacea36729d2f3bb0de4d9c099170d5659452ee31c69c78984247b16e0QjRlkXtdIDc1QCX+mRRu8P2EuZCEAd7cwEYfOdrBHt8=', 'operator'),
(412, 'uswatunn', 'ec771e29d405f002cb805dc4f262a549308aa63bbd08d6e37fb544f8cef901d1f6dba95a88a4d73bd0e37af48a6e7e947742647cb570c481d4146d2a6ee30375pW4jKIJDTXkwfY580a6Jq8CoQWT6C0aoeBLFXUea8cw=', 'operator'),
(413, 'harapan bundaa', 'f3ef8f5862d4cdacbfad0efcf1e2641c77c50a4b73f78e217edab02f405e9e309275e431c0523440a43011b1e2e53e4f03abe7ac6699cfd88bd06d24cf11229ezfzD4rPcB6xA1HAhNUE1Z8d9KCo3fij/JkCD5slqEbU=', 'operator'),
(414, 'hikmaah', 'a8d3464c24b6f24ee7a4845c155fca795029b4a2f11a99dbcfc0ed770fd52b0fdee9ff8c317f7346788b05372d3001458c6f9ecc418f7e5c575934d408c1d6fcvqoTNtbPRTblTIQXsQolzOH4AckUKCmA4EJM8E9HNVw=', 'operator'),
(415, 'baasith', '3f62efe41832d265a43273be81907388886b3adfc5d39c87d71293f5e581dca6d004e6d49bec9ea31730885ba08a83465b50d5438666a48bcf5b41d912a9959b+gIyLbtxlhpRLNA8tADEjHPqbfg9rM5locaZIctUWHY=', 'operator'),
(416, 'hidayah mandiri', '6d4327e927a272dc710c772f223023802ce8ccd0e14b48551edc931ec193134ce38ceb85aea9d19a6308af45c400c3d56a9354b49b0956e14b91e88b57282019yfEeBWndvLlPIkZDWhoYHbhAASWfnYIqmJYyV5IcBGc=', 'operator'),
(417, 'al-hudda', 'e11c6925dc1be021923359af7567e64ed65c34ebde5e3e73f4c7a304fc678242556d7df820690ac7e87342afecfd44cda4830cdc61ab21d16e594e73688dbe36pMDSyyquI2L5DTEVltG7X7LvkdWDDusn1xsEkSXoG/o=', 'operator'),
(418, 'jihad', '0e9caf862a4c14d65054fe4182a13bb1de482a5b38e1ca53a09fc928e7fa41cecab7fb71f9987e533e6b959bcccd875988ee47cfcfdc79862ca46201ab2e93463Lmbk/VYlygO6JDvvXCPmbSXhwSF1lh1cmGiygFw1Tc=', 'operator'),
(419, 'jihad_', '5cc52b1890e70a46d8811d35ead0d29e2723370ebcd7d1249aa132f09d56521051b7309c91dfc2a765f9e92999b2a97cf4829ad1f9d99bf69b1ec8b870964d77mF7Pl+lzMsAY0jfnzFd96bO2mFdaDN6+g2RUcoXb/zA=', 'operator'),
(420, 'amalia', '1cb53a6c960e1c3efcdbc21fbba8523a4140b71cc089c38193b907bf4108d9adbff45396fc7da45ef0d6c73a3e51410281e21d6458fa694351d07fa21ffb1d90Y+Szx4pM96evv+2ujW7YA0jduZUJ59SQaflLxUEPgtk=', 'operator'),
(421, 'tanjung', '9f758e050e4354b09fa000962692eef90aa3fc9c95b97a57a3285d6497c70af09c730fba1c0aea640c604c20ebe9d99d1bec6c7ab547f0ffecd5700dd822629840u1VbMn4RFosHQP/rFKgIfwTDqB7Wdzx23FCXEUrhk=', 'operator'),
(422, 'delima_', '0bc0cf127ad8870ce1aeccf79012ba87908d2bc0e3cd0cb64e444aa66729e42c701773ab0a33a6c9f4c2e67f1658e2ea2cf260f3a3ead25755be47b32740ba12VC/f7JelP29yW5kXE10OzsIlDn9IXs4yyKhY4D27KDQ=', 'operator'),
(423, 'fathi', '6b87c5ab88de3a2e18b02be582b57a1de3b13b4478a1e651eb38ef07f1042d7c8d9227708ca1f41a8a6eefb4b82a85005d4ffcd9c2a7f6c6726dd0ef9ea2bc0a127EK038O9+qdsOoW2SzmqC8lk7ESRSFWtrvNJI3Auo=', 'operator'),
(424, 'qodir', 'f8c17992ca1c5fa28d27742cb1bd09f5cc22700ad964f2295b193d180644e8b2070b2b684782c28d29649f3202a14c14c1856e55d702d131e1cdd8ced3a0c511wluIqT6vq98yFASmy/FJAte1X3/uiDdgr2e7NeP0px0=', 'operator'),
(425, 'persit', '06d1c8158067b66fb3ce7f03acf5a2082a15da397c8cdf6c2418dd8f43713b796d9bcaa882e3c04ff6108a03dd466e4f48d3ea656dac837ce156d0dccfee4079nyNHZsIQWUghw3vRJ8v58semjksDt/8LzFqV41fFWyY=', 'operator'),
(426, 'nurrul', 'b66cbcc18ce7fa2860de89a706557aa3f1906a08966fdc6c2726d54de8f4ed25d5e0260cef8232dfe8bd2c2b899a39ff1d854010c866caa40e9b1cf2cbc671cc7dV/zlCms3m9CtoF3L79L9fkhdRIAtrTlGBdMaz53e0=', 'operator'),
(427, 'permata', '29d5919a543ea7adc6f1f95a15355fd1d4e25eb553a0c923470d53ed61a69082931f3b0bfc1efc0d4e6057b6a5a1c4b8d6aaba2fa7f80ed66dfea9742b39d151yb+XEZgUF/5DQjHawa2ymiqTuK7wFr7AoH0urkdL/S8=', 'operator'),
(428, 'ros', '67f3c96a64b4cc51c5c96d43c5d16e6c94285125c6a4350b11deedaa570c06b30168bc96dd5acc7848890612acefad026e9479d4df9aae2fbee1053d1ad44132pX/0pGUAEx1jg1yRzy+2PhaatFhDQAT1Z9z5+A6OEOM=', 'operator'),
(429, 'teratai', '6ea07d7dc22efd35cb25389fee5ef7e126e7f65ebd2c2a50ac7d3d1f332dfee5ffa0a415b292e69c8ff4fa31cdedb96d5afc0a3d4e3cb76e547622e2aa7d0de83db5SxptPzgZMNF4XKPOWLYzRM6HPGRpqyMMuJee0lA=', 'operator'),
(430, 'buana', '8fbbc3057e216dad2905ae7f77a9594d5ed06017f0010856205c57bd5277cf8d9cb37e79f7f3b54cce8c9a724f2e7023ba2308c738ba503c4bf57394ef1c72895LEQhs7Dc3sCbLaqvR2d3KDzrmNUrf0ZqNMR8IAIdOc=', 'operator'),
(431, 'akhbar', '9a9f94f666aae6c1aa3bfe06a843b688ff1dcdc9eb48a94146a512824c4d4a3bc6b1747a453b1f843ea522fc2b6802385804c2b6e8f033ce691616f0777d927fzu5zn5+Y1mzaq+67CA5Sq0yYsGHvMQNZMY9x8gJUOi0=', 'operator'),
(432, 'furqoon', '0423650e8cae442bb1a9aa5adf039c29241123a8798b8b5358568f2b99ddea260cc8d8cd2ed7fc501d273791df03a4b440220688f535b2260c2f159a0698b419r3jlg2NMuoiSHQ4vPxtvAmqPiqzS7W2b9/Cj0euC7kE=', 'operator'),
(433, 'madina', '3734eaf3d8b9ede66ed450f95d55a4e4f0cd20b098d7333a4a0292633f37517b4fbcce2a5f62c969f6ca0c80cbea75ae47496a39b5ee372a4f917ff93cefdd32QrFjS098f8YNLQ+arHBSDSIDbAkN/XuIQVuqsfC8kSE=', 'operator'),
(434, 'furqqon', '3b6061a3225f5d11497bddb6e30cdb53dcdcd59b03781ff5ee3ce653aad4df197c2b72c30dd3b9cf01b555b7722b6a1c0bcb0aba51de73e645eafaa3cf8225cazOKOjBo2NbOT9ngdRADzGGZfobL0sXP1AT6s30CskLE=', 'operator'),
(435, 'anugrah_', '5cdf30920417cc1575fd25b2b818e5cc33e6f8d18c6b9ac55afa2d838eb4c4ba715af795f008cee5e2c36b7926dee62f63379f2b1aa2513d7804a0bad3667ba2X+aq+Zxa8lp0C0+AoL4kMhf93ZMjzZD/2MrkqNL8MaI=', 'operator'),
(436, 'rahma', '81d64a4c41218b116c53d409417311246f66654b8f43465e1e18af84fe7216f69d90edb7545bdfaeacb00e3675eafb67c13cd861e706e27e5cacb8122526bda6VpCMU66rVryi6Pi7e4siIN10ULEZP/+09ZE6b1mg1c0=', 'operator'),
(437, 'shidiq', '72492f989c43645341507b266a1e18ce4f8fa99e6981021c92231e847e8f4799ea6b10176687f5a037005085e05d21c9ebeb4e78134bb6e84af6a01e46dc65e4XSdoYO6yigOP9kIl2ATkKyJE44T/IvHUpv4ZlbqGOcU=', 'operator'),
(438, 'baitul', '9907e522ede6a31775ca904359a1e613fb62696a8de97ce105bdc56a1d7ea47ba66569a905b213e2732a2f510676293b02fc1731a97add5c223b88f4345400efBJDN18ApikAlaw8bL+MUP/7OOG2/ibMiJXJD7Hdc8SY=', 'operator'),
(439, 'bangun', '7b0725637e51c2a6baf69a607dbcc94d870ccbe1fbad1ccdcf9c0817188d8b9d7d752f909cc17948d76f1ef8af8618a62f3af6184817450d12ac18239bb15763A5ECDGkIqcccUr1vhQWxZ+h+pAIZG/09dosNYK5d/mc=', 'operator'),
(440, 'bayangkari', '6264bc5ef39b255c959b0673dd9a392ba89439a038bc404a4079c349d6f96d068ee8ca36c29c51bde874cefce60e961107b916ad7446b199f682725399502e16c4chz6T6OngDd41ciIRuX1NOntnPiUIz9mFkkBNBTlE=', 'operator'),
(441, 'cempaka_', '9cffbd24f00621c8277fcd7c6276f85f9358fc6815e979ec89ec125687d50a74dbc2ffb5b6a52acbadf0873d42e0f17514b36ccf7f070e75c344de0a965c908f9hOHkDkcVpKy1WMo/qQlMeSjGq8w8EbE7Pd2WkNMGMs=', 'operator'),
(442, 'panatagma', 'b9b7ecf7dcfc4cfbdff4153ce2f714ad372c54879f7ce131ebe102d80f0472db8130d49d28025c66bafe17be01b074f0a0954fa814aacea4725b43c906aab88a8HsuT9lICx7zFCSLmt2kaFlojP1dT52DnPRWk6fGnS0=', 'operator'),
(443, 'chaer', 'c2d9f684ab8c2ffe2d7d8d768f445818f5cf1330cdece56d3e8a96e828b1cee54dd47abb7b52a06d2488d064edcdf10f6d7be4b8861adbdaeefa3c8730ea8731vKe5p3Ni2vsIJ4xgj2F97iyp8Ac22DdLs4e3stMhdGc=', 'operator'),
(444, 'mubarok_', 'bff32442882d78fbc175932b6aab9389d659dd98458d614efac6d06317b6fccaea3ab0a966c049c75bf67ff54f43d46154162da21bd0980c7a508997c41a247bQD/wxu/FbXarQl8h134XmOxowAz2KSKtMX0UsmBSL7Q=', 'operator'),
(445, 'annida', '2716acc917cc84d7395c9bd1bb1699609b033786f68334b6649d1be15743c18a668b34b7967817de3e849551ab5fa6c2aaab2b11258f8166f9d2bd89e23cafdbEbYBt/Sv0qVBWF+kKEk4UZ3/z6cCjMwIdGntfryfj3A=', 'operator'),
(446, 'annurr', 'df57e70f3fe4791753d3befb615557f56dcde995df90538e071fd48357280ed5ac9ac026701b5fc3366da85d92a165273d2ec847b5eb4571d36ba0b655caa523hU7zRZDUbkEiOMbKQXADg16L8crL/bP/lVFbCvJP39w=', 'operator'),
(447, 'madani', '338072ce23394be7d226bb44b61d519ecc63db627950b31900dc479660c9cb73f3599b598bdc07e30fe5a80846f2426d4f946c40671df7439ff21f77e6f88626WWMAqHuY80vf4BqgBTcvnazA7g8Gbak1sAe5ZLVcbl8=', 'operator'),
(448, 'yaisa', '4853f3225a0bcb4c497ed5c8bebae9ad3bbc61515b2a5b23c87a11eaebe2da34fa627fdc439017869bef4b4fdeb8e0c2e594bee8ed04c8a9cd551c5825ad2487arDOlmcdB4rVc5GxnHiv6uXDRGVhQDa4UqWkC8uS3TA=', 'operator'),
(449, 'faras_', '0a5266dc2c1ceab2207ce0d74e9e811ea193474b3260421b68e723203681192f0f6db034322fc38753161596fa12d31cb5ca2a12db4f3d589a334c6c98e76e63/eWspLro6HWBv74yk9JE7uDAMkv+X9jLUn/HoK30vhw=', 'operator'),
(450, 'kartika', '928ce3a9b01eb7f828117e73e5d5dad64e44064094cb31dba77729b21c8e389f905e90caa05e5457013f5bd804391feeb2a163304fe0116c42d15c5327b2aa95OOwn9wbGPKUCCbldeuCb06f2/RZZk6bAGc2Uqi0z9Ws=', 'operator'),
(451, 'siliwangi', '8c9b47f8b7434939c3be10e50716e299e6ac0475a526a27d43193f225b89f3bbaadb4b69c5223c64010bebda02242f8b8a184410330b91142652694ad4b8f31aO0b8s8sYNkga/FwKS83k3+QUkf/nvN94zN3WeQXcZq8=', 'operator'),
(452, 'mifttahul', '86033c81dc0df9ca3df2893ff77d4db2b77d9d82266cc6f72ffed78dd88ec47d4b0e790aa49d0f71c984a6d9b3d2af4a4a4991ce6e8ed21d04f617cac45b849218o3QArwWXnM6FNGeo+kzIGafeS6ealPbZALhQs4BCs=', 'operator'),
(453, 'pembina', 'b4ba2644249307b918085749cf86df1cb119a09821dd738a6db0b6fbef4be2cabdc692a4080eb7e2400722d0ce64ad453442c0a1861295fc0ff94728a7cfb364pi1P5YjlGM90thm812MFxh3wCBJHtZAOeR8ZPxm0R/w=', 'operator'),
(454, 'albab', '8210641913dff11b00e0fd7ad7b1a51b93899dc0c4e77d7e7563481398eb1dcdfd331d6d447529a08d5074132d1740d6fd2bb7d53bebafde7688d6d35b077486YANn/PC80PZ0R/EJxlg7IuptYcfxvwtTUK/GmV2gSdo=', 'operator'),
(455, 'indah', 'f8cd57698a5a2558bba49b84e9ffbd63a07ef344173a4c257b928ca348c899a9cba4f83012469ce3b81edc7d38015cc2827643e9e95e726d998e0fc361df7ab5rMwOA+ay0EDp274cC4/IspakmD5efWF01MynDG3zEmk=', 'operator'),
(456, 'panji', 'ae3c82990ca9bc27a0df4b708a8453da8fbca65c6edcbf278edc908927746e73427e161a0a95bd922e202a1cdf095b5a15295ecefc51978ee31567b1c88d092d8tvwFCAIttdsFWgPvuGxiHYK/GfUelcqx3w2m5XN93k=', 'operator'),
(457, 'silit', 'b29285c4067675d6212c4eb70e9bdcd2bf78ab053d2a4aab141b0a2b6e1c80708090cd298f39f1656bb033a60aacf6e9e2c120e323fac03910410945e97abd4bZB+wmab9eSntz4oNyCelo6RujhhngWTvQBfcl3aih7U=', 'pimpinan'),
(458, 'aaaa', 'f74124acf4a81d942463e4ee8a0dbe79ebc3bb9698a7e244bbf6a1c63208f04a712f9f1a59446711a1457fbafaa55735ed058fad12674376e8b913307900c921x40i9zXiHX3ibzCpWrFSPmBJ5g41ObH6+e8Kk5su5nw=', 'admin');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=418;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=460;

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
