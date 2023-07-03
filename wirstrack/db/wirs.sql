-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Jul 2023 pada 12.43
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wirs`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `kurir`
--

CREATE TABLE `kurir` (
  `id` int(10) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `nomor` varchar(13) NOT NULL,
  `alamat_tujuan1` varchar(100) NOT NULL,
  `alamat_tujuan2` varchar(100) DEFAULT NULL,
  `alamat_tujuan3` varchar(100) DEFAULT NULL,
  `alamat_asal` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kurir`
--

INSERT INTO `kurir` (`id`, `nama`, `nomor`, `alamat_tujuan1`, `alamat_tujuan2`, `alamat_tujuan3`, `alamat_asal`) VALUES
(1, 'Muhammad Farhan Chaniago', '081210853809', 'Kota Bandung', 'Kota Yogyakarta', 'Kota Surabaya', 'Kota Bekasi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `latlong`
--

CREATE TABLE `latlong` (
  `id` int(100) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `latlong`
--

INSERT INTO `latlong` (`id`, `name`, `latitude`, `longitude`) VALUES
(1, 'Provinsi Aceh', 4.695135, 96.7493993),
(2, 'Provinsi Sumatera Utara', 2.1153547, 99.5450974),
(3, 'Provinsi Sumatera Barat', -0.7399397, 100.8000051),
(4, 'Provinsi Riau', 0.2933469, 101.7068294),
(5, 'Provinsi Jambi', -1.4851831, 102.4380581),
(6, 'Provinsi Sumatera Selatan', -3.3194374, 103.914399),
(7, 'Provinsi Bengkulu', -3.5778471, 102.3463875),
(8, 'Provinsi Lampung', -4.5585849, 105.4068079),
(9, 'Provinsi Kepulauan Bangka Belitung', -2.7410513, 106.4405872),
(10, 'Provinsi Kepulauan Riau', 3.9456514, 108.1428669),
(11, 'Provinsi DKI Jakarta', -6.211544, 106.845172),
(12, 'Provinsi Jawa Barat', -7.090911, 107.668887),
(13, 'Provinsi Jawa Tengah', -7.150975, 110.1402594),
(14, 'Provinsi DI Yogyakarta', -7.8753849, 110.4262088),
(15, 'Provinsi Jawa Timur', -7.5360639, 112.2384017),
(16, 'Provinsi Banten', -6.4058172, 106.0640179),
(17, 'Provinsi Bali', -8.4095178, 115.188916),
(18, 'Provinsi Nusa Tenggara Barat', -8.6529334, 117.3616476),
(19, 'Provinsi Nusa Tenggara Timur', -8.6573819, 121.0793705),
(20, 'Provinsi Kalimantan Barat', -0.2787808, 111.4752851),
(21, 'Provinsi Kalimantan Tengah', -1.6814878, 113.3823545),
(22, 'Provinsi Kalimantan Selatan', -3.0926415, 115.2837585),
(23, 'Provinsi Kalimantan Timur', 1.6406296, 116.419389),
(24, 'Provinsi Sulawesi Utara', 0.6246932, 123.9750018),
(25, 'Provinsi Sulawesi Tengah', -1.4300254, 121.4456179),
(26, 'Provinsi Sulawesi Selatan', -3.6687994, 119.9740534),
(27, 'Provinsi Sulawesi Tenggara', -4.14491, 122.174605),
(28, 'Provinsi Gorontalo', 0.6999372, 122.4467238),
(29, 'Provinsi Sulawesi Barat', -2.8441371, 119.2320784),
(30, 'Provinsi Maluku', -3.2384616, 130.1452734),
(31, 'Provinsi Maluku Utara', 1.5709993, 127.8087693),
(32, 'Provinsi Papua Barat', -1.3361154, 133.1747162),
(33, 'Provinsi Papua', -4.269928, 138.0803529),
(34, 'Kota Tangerang Selatan', -6.2888889, 106.7180556),
(35, 'Kabupaten Banyuwangi', -8.2186111, 114.3669444),
(36, 'Kabupaten Madiun', -7.627753, 111.505483),
(37, 'Kabupaten Ponorogo', -7.867827, 111.466003),
(38, 'Kabupaten Magetan', -7.6493413, 111.3381593),
(39, 'Kabupaten Pacitan', -8.204614, 111.08769),
(40, 'Kabupaten Ngawi', -7.38993, 111.46193),
(41, 'Kabupaten Bangkalan', -7.0306912, 112.7450068),
(42, 'Kabupaten Kediri', -7.809356, 112.032356),
(43, 'Kabupaten Bondowoso', -7.917704, 113.813483),
(44, 'Kabupaten Blitar', -8.1014419, 112.162762),
(45, 'Kabupaten Trenggalek', -8.05, 111.7166667),
(46, 'Kabupaten Tulungagung', -8.0666667, 111.9),
(47, 'Kabupaten Nganjuk', -7.602932, 111.901808),
(48, 'Kabupaten Situbondo', -7.702534, 113.955605),
(49, 'Kabupaten Malang', -8.0495643, 112.6884549),
(50, 'Kabupaten Jember', -8.172357, 113.700302),
(51, 'Kabupaten Sumenep', -6.9253999, 113.9060624),
(52, 'Kabupaten Pasuruan', -6.8623098, 108.8001936),
(53, 'Kabupaten Pamekasan', -7.1666667, 113.4666667),
(54, 'Kabupaten Probolinggo', -7.753965, 113.210675),
(55, 'Kabupaten Lumajang', -8.137022, 113.226601),
(56, 'Kabupaten Bojonegoro', 0.882681, 124.4669566),
(57, 'Kabupaten Tuban', -8.7493146, 115.1711298),
(58, 'Kabupaten Lamongan', -7.406153, 109.3946794),
(59, 'Kabupaten Sidoarjo', -7.4530278, 112.7173389),
(60, 'Kabupaten Sampang', -7.5782556, 109.2058436),
(61, 'Kabupaten Mojokerto', -7.488075, 112.427027),
(62, 'Kabupaten Gresik', -7.15665, 112.6555),
(63, 'Kabupaten Jombang', -7.5468395, 112.2264794),
(64, 'Kota Mojokerto', -7.4722222, 112.4336111),
(65, 'Kota Surabaya', -7.289166, 112.734398),
(66, 'Kota Madiun', -7.629714, 111.513702),
(67, 'Kota Blitar', -8.1, 112.15),
(68, 'Kota Malang', -7.981894, 112.626503),
(69, 'Kota Batu', -7.8671, 112.5239),
(70, 'Kota Pasuruan', -7.644872, 112.903297),
(71, 'Kota Kediri', -7.816895, 112.011398),
(72, 'Kota Probolinggo', -7.756928, 113.211502),
(73, 'Kabupaten Batanghari', -1.7083922, 103.0817903),
(74, 'Kabupaten Bungo', -1.6401338, 101.8891721),
(75, 'Kabupaten Kerinci', -1.8720467, 101.4339148),
(76, 'Kabupaten Merangin', -2.1752789, 101.9804613),
(77, 'Kabupaten Muaro Jambi', -1.596672, 103.615799),
(78, 'Kabupaten Sarolangun', -2.2654937, 102.6905326),
(79, 'Kabupaten Tanjung Jabung Barat', -1.2332122, 103.7984428),
(80, 'Kabupaten Tanjung Jabung Timur', -1.3291599, 103.89973),
(81, 'Kabupaten Tebo', -1.2592999, 102.3463875),
(82, 'Kota Jambi', -1.596672, 103.615799),
(83, 'Kota Sungai Penuh', -2.06314, 101.387199),
(84, 'Kabupaten Simeulue', 2.583333, 96.083333),
(85, 'Kabupaten Aceh Singkil', 2.3589459, 97.87216),
(86, 'Kabupaten Aceh Selatan', 3.3115056, 97.3516558),
(87, 'Kabupaten Aceh Tenggara', 3.3088666, 97.6982272),
(88, 'Kabupaten Aceh Timur', 5.255443, 95.9885456),
(89, 'Kabupaten Aceh Tengah', 4.4482641, 96.8350999),
(90, 'Kabupaten Aceh Barat', 4.4542745, 96.1526985),
(91, 'Kabupaten Aceh Besar', 5.4529168, 95.4777811),
(92, 'Kabupaten Pidie', 5.0742659, 95.940971),
(93, 'Kabupaten Bireuen', 5.18254, 96.89005),
(94, 'Kabupaten Aceh Utara', 4.9786331, 97.2221421),
(95, 'Kabupaten Aceh Barat Daya', 3.0512643, 97.3368031),
(96, 'Kabupaten Gayo Lues', 3.955165, 97.3516558),
(97, 'Kabupaten Aceh Tamiang', 4.2328871, 98.0028892),
(98, 'Kabupaten Nagan Raya', 4.1248406, 96.4929797),
(99, 'Kabupaten Aceh Jaya', 4.7873684, 95.6457951),
(100, 'Kabupaten Bener Meriah', 4.7748348, 97.0068393),
(101, 'Kabupaten Pidie Jaya', 5.1548063, 96.195132),
(102, 'Kota Banda Aceh', 5.55, 95.3166667),
(103, 'Kota Sabang', 5.8946929, 95.3192982),
(104, 'Kota Langsa', 4.48, 97.9633333),
(105, 'Kota Lhokseumawe', 5.1880556, 97.1402778),
(106, 'Kota Subulussalam', 2.6449927, 98.0165205),
(107, 'Kabupaten Nias', -8.1712591, 113.7111274),
(108, 'Kabupaten Mandailing Natal', 0.7432372, 99.3673084),
(109, 'Kabupaten Tapanuli Selatan', 1.5774933, 99.2785583),
(110, 'Kabupaten Tapanuli Tengah', 1.8493299, 98.704075),
(111, 'Kabupaten Tapanuli Utara', 2.0405246, 99.1013498),
(112, 'Kabupaten Toba Samosir', 2.3502398, 99.2785583),
(113, 'Kabupaten Labuhanbatu', 2.3439863, 100.1703257),
(114, 'Kabupaten Asahan', 2.8174722, 99.634135),
(115, 'Kabupaten Simalungun', 2.9781612, 99.2785583),
(116, 'Kabupaten Dairi', 2.8675801, 98.265058),
(117, 'Kabupaten Karo', 3.1052909, 98.265058),
(118, 'Kabupaten Deli Serdang', 3.4201802, 98.704075),
(119, 'Kabupaten Langkat', 3.8653916, 98.3088441),
(120, 'Kabupaten Nias Selatan', 0.7086091, 97.8286368),
(121, 'Kabupaten Humbang Hasundutan', 2.1988508, 98.5721016),
(122, 'Kabupaten Pakpak Bharat', 2.545786, 98.299838),
(123, 'Kabupaten Samosir', 2.5833333, 98.8166667),
(124, 'Kabupaten Serdang Bedagai', 3.3371694, 99.0571089),
(125, 'Kabupaten Batu Bara', 3.1740979, 99.5006143),
(126, 'Kabupaten Padang Lawas Utara', 1.5758644, 99.634135),
(127, 'Kabupaten Padang Lawas', 1.1186977, 99.8124935),
(128, 'Kota Sibolga', 1.7403745, 98.7827988),
(129, 'Kota Tanjung Balai', 2.965122, 99.800331),
(130, 'Kota Pematang Siantar', 2.96, 99.06),
(131, 'Kota Tebing Tinggi', 3.3856205, 99.2009815),
(132, 'Kota Medan', 3.585242, 98.6755979),
(133, 'Kota Binjai', 3.594462, 98.482246),
(134, 'Kota Padangsidimpuan', 1.380424, 99.273972),
(135, 'Kabupaten Kepulauan Mentawai', -1.426001, 98.9245343),
(136, 'Kabupaten Pesisir Selatan', -1.7223147, 100.8903099),
(137, 'Kabupaten Solok', -0.803027, 100.644402),
(138, 'Kabupaten Sijunjung', -0.6881586, 100.997658),
(139, 'Kabupaten Tanah Datar', -0.4797043, 100.5746224),
(140, 'Kabupaten Padang Pariaman', -0.5546757, 100.2151578),
(141, 'Kabupaten Agam', -0.2209392, 100.1703257),
(142, 'Kabupaten Lima Puluh Kota', 3.168216, 99.4187929),
(143, 'Kabupaten Pasaman', 0.1288752, 99.7901781),
(144, 'Kabupaten Solok Selatan', -1.4157329, 101.2523792),
(145, 'Kabupaten Dharmas Raya', -1.1120568, 101.6157773),
(146, 'Kabupaten Pasaman Barat', 0.2213005, 99.634135),
(147, 'Kota Padang', -0.95, 100.3530556),
(148, 'Kota Solok', -0.803027, 100.644402),
(149, 'Kota Sawah Lunto', -0.6810286, 100.7763604),
(150, 'Kota Padang Panjang', -0.470679, 100.4059456),
(151, 'Kota Bukittinggi', -0.3055556, 100.3691667),
(152, 'Kota Payakumbuh', -0.22887, 100.632301),
(153, 'Kota Pariaman', -0.6264389, 100.1179574),
(154, 'Kabupaten Kuantan Singingi', -0.4411596, 101.5248055),
(155, 'Kabupaten Indragiri Hulu', -0.7361181, 102.2547919),
(156, 'Kabupaten Indragiri Hilir', -0.1456733, 102.989615),
(157, 'Kabupaten Pelalawan', 0.441415, 102.088699),
(158, 'Kabupaten S I A K', -0.789275, 113.921327),
(159, 'Kabupaten Kampar', 0.146671, 101.1617356),
(160, 'Kabupaten Rokan Hulu', 1.0410934, 100.439656),
(161, 'Kabupaten Bengkalis', 1.4897222, 102.0797222),
(162, 'Kabupaten Rokan Hilir', 1.6463978, 100.8000051),
(163, 'Kota Pekanbaru', 0.5333333, 101.45),
(164, 'Kota Dumai', 1.665742, 101.447601),
(165, 'Kabupaten Kerinci', -1.697, 101.264),
(166, 'Kabupaten Merangin', -2.1752789, 101.9804613),
(167, 'Kabupaten Sarolangun', -2.2654937, 102.6905326),
(168, 'Kabupaten Batang Hari', -1.7083922, 103.0817903),
(169, 'Kabupaten Muaro Jambi', -1.596672, 103.615799),
(170, 'Kabupaten Tanjung Jabung Timur', -1.3291599, 103.89973),
(171, 'Kabupaten Tanjung Jabung Barat', -1.2332122, 103.7984428),
(172, 'Kabupaten Tebo', -1.2592999, 102.3463875),
(173, 'Kabupaten Bungo', -1.6401338, 101.8891721),
(174, 'Kota Jambi', -1.596672, 103.615799),
(175, 'Kabupaten Ogan Komering Ulu', -4.0283486, 104.0072348),
(176, 'Kabupaten Ogan Komering Ilir', -3.4559744, 105.2194808),
(177, 'Kabupaten Muara Enim', -3.651581, 103.770798),
(178, 'Kabupaten Lahat', -3.7863889, 103.5427778),
(179, 'Kabupaten Musi Rawas', -2.8625305, 102.989615),
(180, 'Kabupaten Musi Banyuasin', -2.5442029, 103.7289167),
(181, 'Kabupaten Banyu Asin', -2.6095639, 104.7520939),
(182, 'Kabupaten Ogan Komering Ulu Selatan', -4.6681951, 104.0072348),
(183, 'Kabupaten Ogan Komering Ulu Timur', -3.8567934, 104.7520939),
(184, 'Kabupaten Ogan Ilir', -3.426544, 104.6121475),
(185, 'Kabupaten Empat Lawang', -3.7286029, 102.8975098),
(186, 'Kota Palembang', -2.9911083, 104.7567333),
(187, 'Kota Prabumulih', -3.440956, 104.235397),
(188, 'Kota Pagar Alam', -4.03767, 103.265297),
(189, 'Kota Lubuklinggau', -3.2966667, 102.8616667),
(190, 'Kabupaten Bengkulu Selatan', -4.3248409, 103.035694),
(191, 'Kabupaten Rejang Lebong', -3.4548154, 102.6675575),
(192, 'Kabupaten Bengkulu Utara', -3.4219555, 102.1632718),
(193, 'Kabupaten Kaur', -4.6792278, 103.4511768),
(194, 'Kabupaten Seluma', -4.0622929, 102.5642261),
(195, 'Kabupaten Mukomuko', -2.5760003, 101.1169805),
(196, 'Kabupaten Lebong', -2.992617, 104.382202),
(197, 'Kabupaten Kepahiang', -3.651431, 102.578201),
(198, 'Kota Bengkulu', -3.7955556, 102.2591667),
(199, 'Kabupaten Lampung Barat', -5.1490396, 104.1930918),
(200, 'Kabupaten Tanggamus', -5.3027489, 104.5655273),
(201, 'Kabupaten Lampung Selatan', -5.5622614, 105.5474373),
(202, 'Kabupaten Lampung Timur', -5.1134995, 105.6881788),
(203, 'Kabupaten Lampung Tengah', -4.8008086, 105.3131185),
(204, 'Kabupaten Lampung Utara', -4.8133905, 104.7520939),
(205, 'Kabupaten Way Kanan', -4.4963689, 104.5655273),
(206, 'Kabupaten Tulangbawang', -4.3176576, 105.5005483),
(207, 'Kabupaten Pesawaran', -5.493245, 105.0791228),
(208, 'Kota Bandar Lampung', -5.45, 105.2666667),
(209, 'Kota Metro', -5.1166667, 105.3),
(210, 'Kabupaten Bangka', -2.2884782, 106.0640179),
(211, 'Kabupaten Belitung', -2.8708938, 107.9531836),
(212, 'Kabupaten Bangka Barat', -2.2884782, 106.0640179),
(213, 'Kabupaten Bangka Tengah', -2.2884782, 106.0640179),
(214, 'Kabupaten Bangka Selatan', -2.2884782, 106.0640179),
(215, 'Kabupaten Belitung Timur', -2.8708938, 107.9531836),
(216, 'Kota Pangkal Pinang', -2.129323, 106.109596),
(217, 'Kabupaten Karimun', 1.05, 103.3666667),
(218, 'Kabupaten Bintan', 1.0619173, 104.5189214),
(219, 'Kabupaten Natuna', 3.9329945, 108.1812242),
(220, 'Kabupaten Lingga', -0.1627686, 104.6354631),
(221, 'Kota Batam', 1.0456264, 104.0304535),
(222, 'Kota Tanjung Pinang', 0.9179205, 104.446464),
(223, 'Kabupaten Kepulauan Seribu', -5.7985266, 106.5071982),
(224, 'Kota Jakarta Selatan', -6.332973, 106.807915),
(225, 'Kota Jakarta Timur', -6.211544, 106.845172),
(226, 'Kota Jakarta Pusat', -6.211544, 106.845172),
(227, 'Kota Jakarta Barat', -6.211544, 106.845172),
(228, 'Kota Jakarta Utara', -6.211544, 106.845172),
(229, 'Kabupaten Bogor', -6.6, 106.8),
(230, 'Kabupaten Sukabumi', -6.92405, 106.922203),
(231, 'Kabupaten Cianjur', -6.8172531, 107.1307289),
(232, 'Kabupaten Bandung', -6.9147444, 107.6098111),
(233, 'Kabupaten Garut', -7.227906, 107.908699),
(234, 'Kabupaten Tasikmalaya', -7.327954, 108.214104),
(235, 'Kabupaten Ciamis', -7.3333333, 108.35),
(236, 'Kabupaten Kuningan', -6.9833333, 108.4833333),
(237, 'Kabupaten Cirebon', -6.715534, 108.564003),
(238, 'Kabupaten Majalengka', -6.8531026, 108.2258897),
(239, 'Kabupaten Sumedang', 0.6095949, 110.0330554),
(240, 'Kabupaten Indramayu', -6.336315, 108.325104),
(241, 'Kabupaten Subang', -6.569361, 107.752403),
(242, 'Kabupaten Purwakarta', -6.5386806, 107.4499404),
(243, 'Kabupaten Karawang', -6.3227303, 107.3375791),
(244, 'Kabupaten Bekasi', -6.2333333, 107),
(245, 'Kabupaten Bandung Barat', -6.8937121, 107.4321959),
(246, 'Kota Bogor', -6.6, 106.8),
(247, 'Kota Sukabumi', -6.92405, 106.922203),
(248, 'Kota Bandung', -6.9147444, 107.6098111),
(249, 'Kota Cirebon', -6.715534, 108.564003),
(250, 'Kota Bekasi', -6.2333333, 107),
(251, 'Kota Depok', -6.39, 106.83),
(252, 'Kota Cimahi', -6.880239, 107.5355),
(253, 'Kota Tasikmalaya', -7.327954, 108.214104),
(254, 'Kota Banjar', -7.3666667, 108.5333333),
(255, 'Kabupaten Cilacap', -7.733333, 109),
(256, 'Kabupaten Banyumas', -7.4832133, 109.140438),
(257, 'Kabupaten Purbalingga', -7.390747, 109.3638),
(258, 'Kabupaten Banjarnegara', -7.402706, 109.681396),
(259, 'Kabupaten Kebumen', -7.678682, 109.656502),
(260, 'Kabupaten Purworejo', -7.709731, 110.008003),
(261, 'Kabupaten Wonosobo', -7.362109, 109.899399),
(262, 'Kabupaten Magelang', -7.481253, 110.213799),
(263, 'Kabupaten Boyolali', -7.523819, 110.595901),
(264, 'Kabupaten Klaten', -7.711687, 110.595497),
(265, 'Kabupaten Sukoharjo', -7.6808818, 110.8195292),
(266, 'Kabupaten Wonogiri', -7.817782, 110.920601),
(267, 'Kabupaten Karanganyar', -7.5961111, 110.9508333),
(268, 'Kabupaten Sragen', -7.430229, 111.021301),
(269, 'Kabupaten Grobogan', -7.0217194, 110.9625854),
(270, 'Kabupaten Blora', -6.95, 111.4166667),
(271, 'Kabupaten Rembang', -6.71124, 111.345299),
(272, 'Kabupaten Pati', -6.751338, 111.038002),
(273, 'Kabupaten Kudus', -6.804087, 110.838203),
(274, 'Kabupaten Jepara', -6.5596059, 110.6717),
(275, 'Kabupaten Demak', -6.888115, 110.639297),
(276, 'Kabupaten Semarang', -6.9666667, 110.4166667),
(277, 'Kabupaten Temanggung', -7.316669, 110.174797),
(278, 'Kabupaten Kendal', -6.919686, 110.205597),
(279, 'Kabupaten Batang', -6.8941111, 109.7234519),
(280, 'Kabupaten Pekalongan', -6.882887, 109.669998),
(281, 'Kabupaten Pemalang', -6.884234, 109.377998),
(282, 'Kabupaten Tegal', -6.8666667, 109.1333333),
(283, 'Kabupaten Brebes', -6.8833333, 109.05),
(284, 'Kota Magelang', -7.481253, 110.213799),
(285, 'Kota Surakarta', -7.5666667, 110.8166667),
(286, 'Kota Salatiga', -7.302328, 110.4729),
(287, 'Kota Semarang', -6.9666667, 110.4166667),
(288, 'Kota Pekalongan', -6.882887, 109.669998),
(289, 'Kota Tegal', -6.8666667, 109.1333333),
(290, 'Kabupaten Kulon Progo', -7.8266798, 110.1640846),
(291, 'Kabupaten Bantul', -7.8846111, 110.3341111),
(292, 'Kabupaten Gunung Kidul', -8.0305091, 110.6168921),
(293, 'Kota Yogyakarta', -7.797224, 110.368797),
(294, 'Kabupaten Pandeglang', -6.314835, 106.103897),
(295, 'Kabupaten Lebak', -6.5643956, 106.2522143),
(296, 'Kabupaten Tangerang', -6.1783056, 106.6318889),
(297, 'Kabupaten Serang', -6.12009, 106.150299),
(298, 'Kota Tangerang', -6.1783056, 106.6318889),
(299, 'Kota Cilegon', -6.0169825, 106.040506),
(300, 'Kota Serang', -6.12009, 106.150299),
(301, 'Kabupaten Jembrana', -8.361852, 114.6418),
(302, 'Kabupaten Tabanan', -8.544516, 115.119797),
(303, 'Kabupaten Badung', -8.5819296, 115.1770586),
(304, 'Kabupaten Gianyar', -8.544185, 115.3255),
(305, 'Kabupaten Klungkung', -8.5389222, 115.4045111),
(306, 'Kabupaten Bangli', -8.454303, 115.354897),
(307, 'Kabupaten Karang Asem', -6.3996057, 108.0503042),
(308, 'Kabupaten Buleleng', -8.113831, 115.126999),
(309, 'Kota Denpasar', -8.65629, 115.222099),
(310, 'Kabupaten Lombok Barat', -8.6464599, 116.1123078),
(311, 'Kabupaten Lombok Tengah', -8.694623, 116.2777073),
(312, 'Kabupaten Lombok Timur', -8.5134471, 116.5609857),
(313, 'Kabupaten Sumbawa', -8.6529334, 117.3616476),
(314, 'Kabupaten Dompu', -8.4966318, 118.4747173),
(315, 'Kabupaten Bima', -8.460566, 118.727402),
(316, 'Kabupaten Sumbawa Barat', -8.9292907, 116.8910342),
(317, 'Kota Mataram', -8.5833333, 116.1166667),
(318, 'Kota Bima', -8.460566, 118.727402),
(319, 'Kabupaten Sumba Barat', -9.6548326, 119.3947135),
(320, 'Kabupaten Sumba Timur', -9.9802103, 120.3435506),
(321, 'Kabupaten Kupang', -10.1833333, 123.5833333),
(322, 'Kabupaten Timor Tengah Selatan', -9.7762816, 124.4198243),
(323, 'Kabupaten Timor Tengah Utara', -9.4522647, 124.597132),
(324, 'Kabupaten Belu', -9.4125796, 124.9506625),
(325, 'Kabupaten Alor', -8.2754027, 124.7298765),
(326, 'Kabupaten Lembata', -8.4719075, 123.4831906),
(327, 'Kabupaten Flores Timur', -8.3130942, 122.9663018),
(328, 'Kabupaten Sikka', -8.6766175, 122.1291843),
(329, 'Kabupaten Ende', -8.854053, 121.654198),
(330, 'Kabupaten Ngada', -8.7430424, 120.9876321),
(331, 'Kabupaten Manggarai', -8.6796987, 120.3896651),
(332, 'Kabupaten Rote Ndao', -10.7386421, 123.1239049),
(333, 'Kabupaten Manggarai Barat', -8.6688149, 120.0665236),
(334, 'Kabupaten Sumba Tengah', -9.4879226, 119.6962677),
(335, 'Kabupaten Sumba Barat Daya', -9.539139, 119.1390642),
(336, 'Kabupaten Nagekeo', -8.6753545, 121.3084088),
(337, 'Kabupaten Manggarai Timur', -8.6206712, 120.6199895),
(338, 'Kota Kupang', -10.1833333, 123.5833333),
(339, 'Kabupaten Sambas', 1.361328, 109.309998),
(340, 'Kabupaten Bengkayang', 0.8209729, 109.477699),
(341, 'Kabupaten Landak', 0.4237287, 109.7591675),
(342, 'Kabupaten Pontianak', -0.022523, 109.330307),
(343, 'Kabupaten Sanggau', 0.119275, 110.597298),
(344, 'Kabupaten Ketapang', -1.859098, 109.971901),
(345, 'Kabupaten Sintang', 0.080238, 111.495499),
(346, 'Kabupaten Kapuas Hulu', -0.7931004, 113.9060624),
(347, 'Kabupaten Sekadau', 0.015637, 110.888603),
(348, 'Kabupaten Melawi', -0.7000681, 111.6660725),
(349, 'Kabupaten Kayong Utara', -0.9225877, 110.0449662),
(350, 'Kabupaten Kubu Raya', -0.3533938, 109.4735066),
(351, 'Kota Pontianak', -0.022523, 109.330307),
(352, 'Kota Singkawang', 0.908795, 108.984596),
(353, 'Kabupaten Kotawaringin Barat', -6.1961131, 106.8630174),
(354, 'Kabupaten Kotawaringin Timur', -6.1952992, 106.8630737),
(355, 'Kabupaten Kapuas', -0.0459972, 110.1313251),
(356, 'Kabupaten Barito Selatan', -1.875943, 114.8092691),
(357, 'Kabupaten Barito Utara', -0.9587136, 115.094045),
(358, 'Kabupaten Sukamara', -2.6267517, 111.2368084),
(359, 'Kabupaten Lamandau', -1.9269166, 111.1891151),
(360, 'Kabupaten Seruyan', -3.0123467, 112.4291464),
(361, 'Kabupaten Katingan', -0.9758379, 112.8105512),
(362, 'Kabupaten Pulang Pisau', -2.6849607, 113.9536466),
(363, 'Kabupaten Gunung Mas', -6.7052778, 106.9913889),
(364, 'Kabupaten Barito Timur', -2.0123999, 115.188916),
(365, 'Kabupaten Murung Raya', -0.1362171, 114.3341432),
(366, 'Kota Palangka Raya', -2.21, 113.92),
(367, 'Kabupaten Tanah Laut', -3.7694047, 114.8092691),
(368, 'Kabupaten Kota Baru', -6.332973, 106.807915),
(369, 'Kabupaten Banjar', -7.3666667, 108.5333333),
(370, 'Kabupaten Barito Kuala', -3.0714738, 114.6667939),
(371, 'Kabupaten Tapin', -2.9160746, 115.0465991),
(372, 'Kabupaten Hulu Sungai Selatan', -2.7662681, 115.2363408),
(373, 'Kabupaten Hulu Sungai Tengah', -2.6153162, 115.5207358),
(374, 'Kabupaten Hulu Sungai Utara', -2.4421225, 115.188916),
(375, 'Kabupaten Tabalong', -1.864302, 115.5681084),
(376, 'Kabupaten Tanah Bumbu', -3.4512244, 115.5681084),
(377, 'Kabupaten Balangan', -2.3260425, 115.6154732),
(378, 'Kota Banjarmasin', -3.328499, 114.589203),
(379, 'Kota Banjar Baru', -3.4666667, 114.75),
(380, 'Kabupaten Paser', -1.7175266, 115.9467997),
(381, 'Kabupaten Kutai Barat', 0.1353881, 115.094045),
(382, 'Kabupaten Kutai Kartanegara', -0.1336655, 116.6081653),
(383, 'Kabupaten Kutai Timur', 0.9433774, 116.9852422),
(384, 'Kabupaten Berau', 2.0450883, 117.3616476),
(385, 'Kabupaten Malinau', 3.584221, 116.647797),
(386, 'Kabupaten Bulungan', 2.9042476, 116.9852422),
(387, 'Kabupaten Nunukan', 4.0609227, 117.666952),
(388, 'Kabupaten Penajam Paser Utara', -1.2917094, 116.5137964),
(389, 'Kabupaten Tana Tidung', 3.551869, 117.0794082),
(390, 'Kota Balikpapan', -1.2635389, 116.8278833),
(391, 'Kota Samarinda', -0.502183, 117.153801),
(392, 'Kota Tarakan', 3.3, 117.6333333),
(393, 'Kota Bontang', 0.1333333, 117.5),
(394, 'Kabupaten Bolaang Mongondow', 0.6870994, 124.0641419),
(395, 'Kabupaten Minahasa', 1, 124.5833333),
(396, 'Kabupaten Kepulauan Sangihe', 3.5303212, 125.5438967),
(397, 'Kabupaten Kepulauan Talaud', 4.092, 126.768),
(398, 'Kabupaten Minahasa Selatan', 1.0946773, 124.4641848),
(399, 'Kabupaten Minahasa Utara', 1.5327973, 124.994751),
(400, 'Kabupaten Bolaang Mongondow Utara', 0.818691, 123.5280072),
(401, 'Kabupaten Siau Tagulandang Biaro', 2.345964, 125.4124355),
(402, 'Kabupaten Minahasa Tenggara', 1.0278551, 124.7298765),
(403, 'Kota Manado', 1.4917014, 124.842843),
(404, 'Kota Bitung', 1.4553529, 125.204697),
(405, 'Kota Tomohon', 1.3234131, 124.8384504),
(406, 'Kota Kotamobagu', 0.7333333, 124.3166667),
(407, 'Kabupaten Banggai Kepulauan', -1.6408137, 123.5504076),
(408, 'Kabupaten Banggai', -1.6408137, 123.5504076),
(409, 'Kabupaten Morowali', -2.3003072, 121.5370003),
(410, 'Kabupaten Poso', -1.391922, 120.766998),
(411, 'Kabupaten Donggala', -0.4233155, 119.8352303),
(412, 'Kabupaten Toli-Toli', 0.8768231, 120.7579834),
(413, 'Kabupaten Buol', 0.9695452, 121.3541631),
(414, 'Kabupaten Parigi Moutong', 0.5817607, 120.8039474),
(415, 'Kabupaten Tojo Una-Una', -1.098757, 121.5370003),
(416, 'Kota Palu', -0.898583, 119.850601),
(417, 'Kabupaten Selayar', -6, 120.5),
(418, 'Kabupaten Bulukumba', -5.4329368, 120.2051096),
(419, 'Kabupaten Bantaeng', -5.5169316, 120.0202964),
(420, 'Kabupaten Jeneponto', -5.554579, 119.6730939),
(421, 'Kabupaten Takalar', -5.4162493, 119.4875668),
(422, 'Kabupaten Gowa', -5.3102888, 119.742604),
(423, 'Kabupaten Sinjai', -5.2171961, 120.112735),
(424, 'Kabupaten Maros', -4.94695, 119.578903),
(425, 'Kabupaten Pangkajene Dan Kepulauan', -4.805035, 119.5571677),
(426, 'Kabupaten Barru', -4.4172651, 119.6730939),
(427, 'Kabupaten Bone', -2.083333, 120.216667),
(428, 'Kabupaten Soppeng', -4.3518541, 119.9277947),
(429, 'Kabupaten Wajo', -4.022229, 120.0665236),
(430, 'Kabupaten Sidenreng Rappang', -3.7738981, 120.0202964),
(431, 'Kabupaten Pinrang', -3.793071, 119.6408),
(432, 'Kabupaten Enrekang', -3.563128, 119.7612),
(433, 'Kabupaten Luwu', -3.3052214, 120.2512728),
(434, 'Kabupaten Tana Toraja', -3.0753003, 119.742604),
(435, 'Kabupaten Luwu Utara', -2.2690446, 119.9740534),
(436, 'Kabupaten Luwu Timur', -2.5825518, 121.1710389),
(437, 'Kota Makassar', -5.1333333, 119.4166667),
(438, 'Kota Pare-Pare', -4.0166667, 119.6236111),
(439, 'Kota Palopo', -3, 120.2),
(440, 'Kabupaten Buton', -5.3096355, 122.9888319),
(441, 'Kabupaten Muna', -4.901629, 122.6277455),
(442, 'Kabupaten Konawe', -3.9380432, 122.0837445),
(443, 'Kabupaten Kolaka', -4.049665, 121.593803),
(444, 'Kabupaten Konawe Selatan', -4.2027915, 122.4467238),
(445, 'Kabupaten Bombana', -4.6543462, 121.9017954),
(446, 'Kabupaten Wakatobi', -5.3264442, 123.5951925),
(447, 'Kabupaten Kolaka Utara', -3.1347227, 121.1710389),
(448, 'Kabupaten Buton Utara', -4.7023424, 123.0338767),
(449, 'Kabupaten Konawe Utara', -3.3803291, 122.0837445),
(450, 'Kota Kendari', -3.972201, 122.5149028),
(451, 'Kota Bau-Bau', -5.46667, 122.633),
(452, 'Kabupaten Boalemo', 0.7013419, 122.2653887),
(453, 'Kabupaten Gorontalo', 0.5333333, 123.0666667),
(454, 'Kabupaten Pohuwato', 0.7055278, 121.7195459),
(455, 'Kabupaten Bone Bolango', 0.5657885, 123.3486147),
(456, 'Kabupaten Gorontalo Utara', 0.9252647, 122.4920088),
(457, 'Kota Gorontalo', 0.5333333, 123.0666667),
(458, 'Kabupaten Majene', -3.0297251, 118.9062794),
(459, 'Kabupaten Polewali Mandar', -3.3419323, 119.1390642),
(460, 'Kabupaten Mamasa', -2.960135, 119.368202),
(461, 'Kabupaten Mamuju', -2.7293364, 118.9295737),
(462, 'Kabupaten Mamuju Utara', -1.5264542, 119.5107708),
(463, 'Kabupaten Maluku Tenggara Barat', -7.5322642, 131.3611121),
(464, 'Kabupaten Maluku Tenggara', -5.7512455, 132.7271587),
(465, 'Kabupaten Maluku Tengah', -3.0166501, 129.4864411),
(466, 'Kabupaten Buru Selatan', -3.3927754, 126.7819505),
(467, 'Kabupaten Kepulauan Aru', -6.1946502, 134.5501935),
(468, 'Kabupaten Seram Bagian Barat', -3.1271575, 128.4008357),
(469, 'Kabupaten Seram Bagian Timur', -3.4150761, 130.390488),
(470, 'Kota Ambon', -3.65607, 128.166419),
(471, 'KotaTual', -5.640851, 132.7475093),
(472, 'Kabupaten Halmahera Barat', 1.3121235, 128.4849923),
(473, 'Kabupaten Halmahera Tengah', 1.3121235, 128.4849923),
(474, 'Kabupaten Kepulauan Sula', -1.8666667, 125.3666667),
(475, 'Kabupaten Halmahera Selatan', 1.3121235, 128.4849923),
(476, 'Kabupaten Halmahera Utara', 1.3121235, 128.4849923),
(477, 'Kabupaten Halmahera Timur', 1.3121235, 128.4849923),
(478, 'Kota Ternate', 0.7833333, 127.3666667),
(479, 'Kota Tidore Kepulauan', 0.6833333, 127.4),
(480, 'Kabupaten Fakfak', -2.885237, 132.2658282),
(481, 'Kabupaten Kaimana', -3.660925, 133.774506),
(482, 'Kabupaten Teluk Wondama', -2.8551699, 134.3236557),
(483, 'Kabupaten Teluk Bintuni', -1.9056848, 133.329466),
(484, 'Kabupaten Manokwari', -0.8614531, 134.0620421),
(485, 'Kabupaten Sorong Selatan', -0.8666667, 131.25),
(486, 'Kota Sorong', -0.8666667, 131.25),
(487, 'Kabupaten Raja Ampat', -1.0915151, 130.8778586),
(488, 'Kabupaten Sorong', -0.8666667, 131.25),
(489, 'Kabupaten Merauke', -8.4960406, 140.3945527),
(490, 'Kabupaten Jayawijaya', -4.0004481, 138.7995122),
(491, 'Kabupaten Jayapura', -2.533, 140.717),
(492, 'Kabupaten Nabire', -3.5095462, 135.7520985),
(493, 'Kabupaten Kepulauan Yapen', -1.7469359, 136.1709012),
(494, 'Kabupaten Biak Numfor', -1.0381022, 135.9800848),
(495, 'Kabupaten Paniai', -3.7876441, 136.3624686),
(496, 'Kabupaten Puncak Jaya', -4.0836111, 137.1847222),
(497, 'Kabupaten Mimika', -4.4553223, 137.1362125),
(498, 'Kabupaten Boven Digoel', -5.7400018, 140.3481835),
(499, 'Kabupaten Mappi', -7.102232, 139.396393),
(500, 'Kabupaten Asmat', -5.0573958, 138.3988186),
(501, 'Kabupaten Yahukimo', -4.4939717, 139.5279996),
(502, 'Kabupaten Pegunungan Bintang', -4.5589872, 140.5135589),
(503, 'Kabupaten Tolikara', -3.481132, 138.4787258),
(504, 'Kabupaten Sarmi', -1.868727, 138.743607),
(505, 'Kabupaten Keerom', -3.3449536, 140.7624493),
(506, 'Kabupaten Waropen', -2.8435717, 136.670534),
(507, 'Kabupaten Supiori', -0.7295099, 135.6385125),
(508, 'Kabupaten Mamberamo Raya', -2.5331255, 137.7637565),
(509, 'Kota Jayapura', -2.533, 140.717),
(510, 'Kabupaten Labuhanbatu Utara', 2.3465638, 99.8124935),
(511, 'Kabupaten Labuhanbatu Selatan', 1.8799353, 100.1703257),
(512, 'Kabupaten Nias Utara', 1.1255279, 97.5247243),
(513, 'Kabupaten Nias Barat', 1.1255279, 97.5247243),
(514, 'Kota Gunungsitoli', 1.281964, 97.61594),
(515, 'Kabupaten Kepulauan Meranti', 0.9208765, 102.6675575),
(516, 'Kota Sungai Penuh', -2.06314, 101.387199),
(517, 'Kabupaten Bengkulu Tengah', -3.7955556, 102.2591667),
(518, 'Kabupaten Tulangbawang Barat', -4.5256967, 105.0791228),
(519, 'Kabupaten Pringsewu', -5.3539884, 104.9622498),
(520, 'Kabupaten Mesuji', -4.0044783, 105.3131185),
(521, 'Kabupaten Lingga', -0.1627686, 104.6354631),
(522, ' Kabupaten Anambas', 3.1055459, 105.6537231),
(523, 'Kabupaten Sleman', -7.716165, 110.335403),
(524, 'Kota Tangerang Selatan', -6.2888889, 106.7180556),
(525, 'Kabupaten Lombok Utara', -8.3739076, 116.2777073),
(526, 'Kabupaten Sabu Raijua', -10.5541116, 121.8334868),
(527, 'Kabupaten Bolang Mongondow Timur', 0.7152651, 124.4641848),
(528, 'Kabupaten Bolang Mongondow Selatan', 0.4053215, 123.8411288),
(529, 'Kabupaten Sigi', -1.3834127, 120.0665236),
(530, 'Kabupaten Toraja Utara', -2.8621942, 119.8352303),
(531, 'Kabupaten Maluku Barat Daya', -7.7851588, 126.3498097),
(532, 'Kabupaten Buru', -3.3927754, 126.7819505),
(533, 'Kabupaten Pulau Morota', 2.3656672, 128.4008357),
(534, 'Kabupaten Tambrauw', -0.781856, 132.3938375),
(535, 'Kabupaten Maybat', 3.1472, 101.6997),
(536, 'Kabupaten Memberamo Tengah', -2.3745692, 138.3190276),
(537, 'Kabupaten Yalimo', -3.7852847, 139.4466005),
(538, 'Kabupaten Lanny Jaya', -3.971033, 138.3190276),
(539, 'Kabupaten Nduga', -4.4069496, 138.2393528),
(540, 'Kabupaten Puncak', -6.7125476, 106.9542425),
(541, 'Kabupaten Dogiyai', -4.0193872, 135.9610446),
(542, 'Kabupaten Intan Jaya', -3.5076422, 136.7478493),
(543, 'Kabupaten Deiyai', -4.0974893, 136.4393054);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `kurir`
--
ALTER TABLE `kurir`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `latlong`
--
ALTER TABLE `latlong`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `kurir`
--
ALTER TABLE `kurir`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `latlong`
--
ALTER TABLE `latlong`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=544;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;