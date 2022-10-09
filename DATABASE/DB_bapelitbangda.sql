-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 19, 2022 at 12:48 PM
-- Server version: 10.5.15-MariaDB-cll-lve
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `n1658318_bapelitbangda`
--

-- --------------------------------------------------------

--
-- Table structure for table `agenda`
--

CREATE TABLE `agenda` (
  `id_agenda` int(5) NOT NULL,
  `tema` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tema_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `isi_agenda` text COLLATE latin1_general_ci NOT NULL,
  `tempat` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `pengirim` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_mulai` date NOT NULL,
  `tgl_selesai` date NOT NULL,
  `tgl_posting` date NOT NULL,
  `jam` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `dibaca` int(5) NOT NULL DEFAULT 1,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE `album` (
  `id_album` int(5) NOT NULL,
  `jdl_album` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `album_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `keterangan` text COLLATE latin1_general_ci NOT NULL,
  `gbr_album` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `hits_album` int(5) NOT NULL DEFAULT 1,
  `tgl_posting` date NOT NULL,
  `jam` time NOT NULL,
  `hari` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`id_album`, `jdl_album`, `album_seo`, `keterangan`, `gbr_album`, `aktif`, `hits_album`, `tgl_posting`, `jam`, `hari`, `username`) VALUES
(55, 'Rapat Evaluasi DAK', 'rapat-evaluasi-dak', '', 'dana-alokasi-khusus.jpg', 'Y', 13, '2022-05-13', '10:44:08', 'Jumat', 'admin'),
(58, 'Kantor Bapelitbangda Kab. Paluta', 'kantor-bapelitbangda-kab-paluta', '', 'k3_(2).jpg', 'Y', 11, '2022-05-14', '23:20:48', 'Sabtu', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `background`
--

CREATE TABLE `background` (
  `id_background` int(5) NOT NULL,
  `gambar` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `background`
--

INSERT INTO `background` (`id_background`, `gambar`) VALUES
(1, 'green');

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id_banner` int(5) NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id_banner`, `judul`, `url`, `gambar`, `tgl_posting`) VALUES
(29, 'Kabupaten Padang Lawas Utara', 'https://padanglawasutarakab.go.id/', '', '2022-04-21'),
(30, 'Urusan Infrastruktur dan Pengembangan Wilayah', 'https://linktr.ee/ipwbapelitbangda', 'qr_ipw.jpg', '2022-05-17');

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id_berita` int(5) NOT NULL,
  `id_kategori` int(5) NOT NULL,
  `username` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `sub_judul` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `youtube` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `judul_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `headline` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `utama` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `isi_berita` longtext CHARACTER SET latin1 NOT NULL,
  `keterangan_gambar` text COLLATE latin1_general_ci NOT NULL,
  `hari` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `dibaca` int(5) NOT NULL DEFAULT 1,
  `tag` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `status` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id_berita`, `id_kategori`, `username`, `judul`, `sub_judul`, `youtube`, `judul_seo`, `headline`, `aktif`, `utama`, `isi_berita`, `keterangan_gambar`, `hari`, `tanggal`, `jam`, `gambar`, `dibaca`, `tag`, `status`) VALUES
(693, 64, 'admin', 'Pemkab Paluta Gelar Forum Konsultasi Publik Ranwal RKPD Tahun 2023', '', '', 'pemkab-paluta-gelar-forum-konsultasi-publik-ranwal-rkpd-tahun-2023', 'Y', 'N', 'N', '<p>Sebagai langkah untuk penyusunan rancangan awal (Ranwal) Rencana Kerja Pembangunan Daerah (RKPD) Tahun 2023, Pemerintah Kabupaten Padang Lawas Utara melalui Badan Perencanaan, Penelitian dan Pengembangan (Bapelitbang) menggelar forum Konsultasi Publik di gedung serbaguna kantor Bupati Padang Lawas Utara, Kamis (03/02/2022).</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Kegiatan yang dibuka oleh Asisten II Setdakab Padang Lawas Utara Haholongan Siregar dihadiri oleh Ketua DPRD Padang Lawas Utara Mukhlis Harahap, kepala Bapelitbang Padang Lawas Utara Ridwan Efendi Daulay, pimpinan OPD se-kabupaten Padang Lawas Utara, pimpinan BUMN, perusahaan swasta, OKP/Ormas, akademisi, tokoh masyarakat, tokoh agama beserta undangan lainnya.</p>\r\n\r\n<p>Kegiatan tersebut menghadirkan narasumber diantaranya Kabid Ketersedian dan Distribusi Pangan pada Dinas Ketahanan Pangan Provinsi Sumatera Utara Nurhaida Pohan, Kepala Bapelitbang Padang Lawas Utara Ridwan Efendi Daulay dan Akademisi yang juga dosen dari UGN Tapanuli Selatan Muhammad Noor Hasan Siregar.</p>\r\n\r\n<p>Dalam sambutan Asisten II Setdakab Padang Lawas Utara Haholongan Siregar saat membuka acara menyampaikan kegiatan yang dilaksanakan ini merupakan rangkaian dari proses perencanaan pembangunan untuk mematangkan rancangan awal RKPD Tahun 2023 mendatang.</p>\r\n\r\n<p>&ldquo;Konsultasi publik ini dimaksudkan untuk menjadi forum dalam menentukan arah kebijakan pembangunan dengan mengedepankan skala prioritas pembangunan daerah,&rdquo; ucapnya.</p>\r\n\r\n<p>Katanya, pemerintah daerah sesuai kewenangannya menyusun rencana pembangunan daerah dengan prinsip-prinsip meliputi merupakan satu kesatuan yang utuh dalam sistem perencanaan pembangunan nasional, dilakukan pemerintah daerah bersama pemangku kepentingan berdasarkan peran dan kewenangan masing-masing, mengintegrasikan rencana pembangunan daerah, dilaksanakan berdasarkan kondisi dan potensi yang dimiliki masing-masing daerah sesuai dengan dinamika perkembangan daerah dan nasional.</p>\r\n\r\n<p>Kepala Bapelitbang Padang Lawas Utara Ridwan Efendi Daulay dalam pemaparannya mengatakan tujuan dilaksanakannya forum konsultasi publik adalah untuk menjaring aspirasi dan harapan para pemangku kepentingan terhadap prioritas dan sasaran pembangunan pada tahun yang direncanakan.</p>\r\n\r\n<p>Selain itu, dalam mewujudkan sinergi pembangunan dan mengatasi keterbatasan kemampuan keuangan daerah, Pemerintah Kabupaten Padang Lawas Utara juga mengupayakan pendanaan dari APBN serta sumber dana lainnya.</p>\r\n\r\n<p>&ldquo;Untuk menciptakan keselarasan prioritas pembangunan nasional yang searah dengan visi misi Kabupaten Padang Lawas Utara. Komitmen, konsistensi, disiplin, kerja keras, semangat dan partisipasi seluruh pemangku kepentingan di kabupaten Paluta dalam pelaksanaan RKPD sangat mutlak diperlukan untuk mewujudkan sasaran-sasaran pembangunan tahun 2023,&rdquo; tukasnya.</p>\r\n', '', 'Selasa', '2022-04-19', '13:59:50', '9936_Pemkab-Paluta-Gelar-Forum-Konsultasi-Publik-Ranwal-RKPD-Tahun-2023.jpg', 5, 'perencanaan', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `download`
--

CREATE TABLE `download` (
  `id_download` int(5) NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `nama_file` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  `hits` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `download`
--

INSERT INTO `download` (`id_download`, `judul`, `nama_file`, `tgl_posting`, `hits`) VALUES
(40, 'Renstra Bapelitbangda Tahun 2022', 'RENSTRA_Bapelitbangda_2022.pdf', '2022-05-13', 2),
(39, 'PERATURAN MENTERI DALAM NEGERI REPUBLIK INDONESIA NOMOR 86 TAHUN 2017 ', 'Permendagri_No_86_Tahun_2017.pdf', '2022-04-21', 1),
(33, 'Tupoksi Bapelitbangda Tahun 2022', 'URAIAN_TUGAS_POKOK_DAN_FUNGSI_BAPELITBANGDA_2022_fix.docx', '2022-04-20', 4),
(41, 'RKPD Kabupaten Padang Lawas Utara Tahun 2021', 'RKPD 2021.pdf', '2022-05-17', 0);

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id_gallery` int(5) NOT NULL,
  `id_album` int(5) NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `jdl_gallery` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gallery_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `keterangan` text COLLATE latin1_general_ci NOT NULL,
  `gbr_gallery` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id_gallery`, `id_album`, `username`, `jdl_gallery`, `gallery_seo`, `keterangan`, `gbr_gallery`) VALUES
(263, 55, 'admin', 'Rapat Evaluasi DAK', 'rapat-evaluasi-dak', '', 'Rapat Evaluasi DAK3.jpeg'),
(261, 55, 'admin', 'Rapat Evaluasi DAK', 'rapat-evaluasi-dak', '', 'Rapat Evaluasi DAK.jpeg'),
(262, 55, 'admin', 'Rapat Evaluasi DAK', 'rapat-evaluasi-dak', '', 'Rapat Evaluasi DAK2.jpeg'),
(259, 51, 'admin', 'Kantor Bapelitbangda', 'kantor-bapelitbangda', '', 'WhatsApp Image 2022-03-29 at 16_53_31 (1).jpeg'),
(260, 52, 'admin', 'Musrenbang Kecamatan Padang Bolak', 'musrenbang-kecamatan-padang-bolak', '<p>Musrenbang RKPD Tahun 2022 Kecamatan Padang Bolak</p>\r\n', 'WhatsApp Image 2022-03-19 at 14_31_28.jpeg'),
(265, 58, 'admin', 'Kantor Tampak Depan', 'kantor-tampak-depan', '', 'k2.jpg'),
(266, 58, 'admin', 'Kantor Tampak Samping', 'kantor-tampak-samping', '', 'k4_(2)1.jpg'),
(267, 58, 'admin', 'Halaman Kantor', 'halaman-kantor', '', 'k1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `halamanstatis`
--

CREATE TABLE `halamanstatis` (
  `id_halaman` int(5) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `judul_seo` varchar(100) NOT NULL,
  `isi_halaman` text NOT NULL,
  `tgl_posting` date NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `dibaca` int(5) NOT NULL DEFAULT 1,
  `jam` time NOT NULL,
  `hari` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `halamanstatis`
--

INSERT INTO `halamanstatis` (`id_halaman`, `judul`, `judul_seo`, `isi_halaman`, `tgl_posting`, `gambar`, `username`, `dibaca`, `jam`, `hari`) VALUES
(46, 'Tentang Kami', 'tentang-kami', '<p style=\"text-align:justify\">Swarakalibata merupakan portal online berita dan hiburan yang berfokus pada pembaca Indonesia baik yang berada di tanah air maupun yang tinggal di luar negeri. Berita Swarakalibata diupdate selama 24 jam dan mendapatkan kunjungan lebih dari 190 juta pageviews setiap bulannya (Sumber: Google Analytics).</p>\r\n\r\n<p style=\"text-align:justify\">Swarakalibata memiliki beragam konten dari berita umum, politik, peristiwa, internasional, ekonomi, lifestyle, selebriti, sports, bola, auto, teknologi, dan lainya. Swarakalibata juga merupakan salah satu portal pertama yang memberikan inovasi konten video dan mobile (handphone). Para pembaca kami adalah profesional, karyawan kantor, pengusaha, politisi, pelajar, dan ibu rumah tangga.</p>\r\n\r\n<p style=\"text-align:justify\">Konten berita Swarakalibata ditulis secara tajam, singkat, padat, dan dinamis sebagai respons terhadap tuntutan masyarakat yang semakin efisien dalam membaca berita. Selain itu konsep portal berita online juga semakin menjadi pilihan masyarakat karena sifatnya yang up-to-date dan melaporkan kejadian peristiwa secara instant pada saat itu juga sehingga masyarakat tidak perlu menunggu sampai esok harinya untuk membaca berita yang terjadi.</p>\r\n\r\n<p style=\"text-align:justify\">Swarakalibata resmi diluncurkan (Commercial Launch) sebagai portal berita pada 1 Maret 2007) dan merupakan cikal-bakal bisnis online pertama milik PT Php MU Tbk, sebuah perusahan media terintegrasi yang terbesar di Indonesia dan di Asia Tenggara. PHPMU juga memiliki dan mengelola bisnis media TV (RCTI, MNC TV, Global TV), media cetak (Koran Seputar Indonesia, Tabloid Genie, Tabloid Mom &amp; Kiddie, majalah HighEnd, dan Trust), media radio (SINDO, Trijaya FM, ARH Global, Radio Dangdut Indonesia, V Radio), serta sejumlah bisnis media lainnya (mobile VAS, Manajemen artis, rumah produksi film, agen iklan, dll).</p>\r\n\r\n<p style=\"text-align:justify\">Sampai dengan bulan Oktober 2008, Swarakalibata mendapatkan peringkat ke 24 dari Top 100 website terpopuler di Indonesia (Sumber: Alexa.com), peringkat ini terus naik yang disebabkan semakin banyak pengunjung situs yang mengakses Swarakalibata setiap harinya. Selain itu, jumlah pengguna internet yang mencapai 25 juta (Sumber: data APJII per 2005) diperkirakan untuk terus tumbuh dengan signifikan dalam beberapa tahun ke depan.</p>\r\n', '2014-04-07', '', 'admin', 59, '13:10:57', 'Senin'),
(48, 'Alamat Perusahaan', 'alamat-perusahaan', '<p style=\"text-align:justify\">Swarakalibata merupakan portal online berita dan hiburan yang berfokus pada pembaca Indonesia baik yang berada di tanah air maupun yang tinggal di luar negeri. Berita Swarakalibata diupdate selama 24 jam dan mendapatkan kunjungan lebih dari 190 juta pageviews setiap bulannya (Sumber: Google Analytics).</p>\r\n\r\n<p style=\"text-align:justify\">Swarakalibata memiliki beragam konten dari berita umum, politik, peristiwa, internasional, ekonomi, lifestyle, selebriti, sports, bola, auto, teknologi, dan lainya. Swarakalibata juga merupakan salah satu portal pertama yang memberikan inovasi konten video dan mobile (handphone). Para pembaca kami adalah profesional, karyawan kantor, pengusaha, politisi, pelajar, dan ibu rumah tangga.</p>\r\n\r\n<p style=\"text-align:justify\">Konten berita Swarakalibata ditulis secara tajam, singkat, padat, dan dinamis sebagai respons terhadap tuntutan masyarakat yang semakin efisien dalam membaca berita. Selain itu konsep portal berita online juga semakin menjadi pilihan masyarakat karena sifatnya yang up-to-date dan melaporkan kejadian peristiwa secara instant pada saat itu juga sehingga masyarakat tidak perlu menunggu sampai esok harinya untuk membaca berita yang terjadi.</p>\r\n\r\n<p style=\"text-align:justify\">Swarakalibata resmi diluncurkan (Commercial Launch) sebagai portal berita pada 1 Maret 2007) dan merupakan cikal-bakal bisnis online pertama milik PT Php MU Tbk, sebuah perusahan media terintegrasi yang terbesar di Indonesia dan di Asia Tenggara. PHPMU juga memiliki dan mengelola bisnis media TV (RCTI, MNC TV, Global TV), media cetak (Koran Seputar Indonesia, Tabloid Genie, Tabloid Mom &amp; Kiddie, majalah HighEnd, dan Trust), media radio (SINDO, Trijaya FM, ARH Global, Radio Dangdut Indonesia, V Radio), serta sejumlah bisnis media lainnya (mobile VAS, Manajemen artis, rumah produksi film, agen iklan, dll).</p>\r\n\r\n<p style=\"text-align:justify\">Sampai dengan bulan Oktober 2008, Swarakalibata mendapatkan peringkat ke 24 dari Top 100 website terpopuler di Indonesia (Sumber: Alexa.com), peringkat ini terus naik yang disebabkan semakin banyak pengunjung situs yang mengakses Swarakalibata setiap harinya. Selain itu, jumlah pengguna internet yang mencapai 25 juta (Sumber: data APJII per 2005) diperkirakan untuk terus tumbuh dengan signifikan dalam beberapa tahun ke depan.</p>\r\n', '2014-04-07', '', 'admin', 17, '13:32:28', 'Senin'),
(52, 'Tujuan dan Sasaran Organisasi', 'tujuan-dan-sasaran-organisasi', '<p>Tujuan Badan Perencanaan Penelitian dan Pengembangan Daerah Kabupaten Padang Lawas Utara :</p>\r\n\r\n<ol>\r\n	<li>Peningkatan Kualitas Perencanaan</li>\r\n	<li>Peningkatan Tata Kelola Penyelenggaraan Kelitbangan dan Pengembangan Inovasi</li>\r\n</ol>\r\n\r\n<p>Sasaran&nbsp;Badan Perencanaan Penelitian dan Pengembangan Daerah Kabupaten Padang Lawas Utara :</p>\r\n\r\n<ol>\r\n	<li>Meningkatnya kesesuaian perencanaan dengan penganggaran</li>\r\n	<li>Meningkatnya pemanfaatan data dan informasi dalam dokumen perencanaan</li>\r\n	<li>Meningkatnya pelaksanaan kegiatan hasil kajian penelitian dan pengembangan</li>\r\n	<li>Meningkatnya pelaksanaan kegiatan pengembangan inovasi dan teknologi</li>\r\n</ol>\r\n', '2018-07-20', '', 'admin', 14, '04:53:38', 'Jumat'),
(53, 'Sejarah', 'sejarah', '<p>Sebelum tahun 1980, Kementerian Agama Kab. Magelang (waktu itu bernama Departemen Agama &ndash; DEPAG), untuk aktivitas sehari-hari menempati kompleks Masjid Agung Kota Magelang yang terletak di Alun-alun Kota Magelang.</p>\r\n\r\n<p>Untuk menjalankan aktifitas sehari-hari, dengan jumlah pegawai waktu itu mencapai sekitar 6.800 pegawai, Bagian Sekretariat (Urusan Umum dan Keuangan), berkantor di sebuah ruangan di komplek Masjid Agung. Ruangan itu sekarang menjadi garasi Ambulan Masjid Agung.</p>\r\n\r\n<p>Sementara itu, Bagian Kepegawaian menyewa sebuah rumah milik Mbok Kemi, warga kampung di sekitar Masjid Agung. Seksi Urais menyewa sebuah rumah di sebelah Toko Buku Cahaya. Seksi Pendidikan menyewa rumah di Jalan Diponegoro (sekarang bangunan itu berdiri Pom Bensin).</p>\r\n\r\n<p>BUKP (Badan Usaha Kesejahteraan Pegawai), sebagai embrio Koperasi KOKARDA sekarang, berkantor di sebelah selatan Alun-alun Magelang. Baru pada tahun sekitar 1984, pindah di Menowosari, Magelang.</p>\r\n\r\n<p>Tahun 1980, dibangun kantor di Mertoyudan (sekarang Jalan Bambang Sugeng) dan mulai tahun 1981, Depag Kab. Magelang yang semula berkantor di kompleks Masjid Agung Magelang pindah ke Mertoyudan sampai sekarang.</p>\r\n\r\n<p>Seiring dengan dinamika organisasi, berikut nama-nama Kepala Kantor sejak tahun 1974 sd. sekarang.</p>\r\n\r\n<p>1. H. Djasman, Kepala Kantor periode 1974 s.d. 1975.</p>\r\n\r\n<p>2. Moh Adiyahya,&nbsp;Kepala Kantor periode 1975 s.d. 1978</p>\r\n\r\n<p>3. Moh Solichin, BA, Kepala Kantor periode sejak 1978 s.d. 1982</p>\r\n\r\n<p>4. Nurudin, MA, Kepala Kantor periode 1982 s.d. 1984</p>\r\n\r\n<p>5. H. Sadjijo Slamet Budiharjo, Kepala Kantor periode 1984 s.d. 1987</p>\r\n\r\n<p>6. Drs. H. Iskandar, Kepala Kantor periode 1987 s.d. 1992</p>\r\n\r\n<p>7. Drs. H. Hasyim Afandi, Kepala Kantor periode 1992 s.d. 1999</p>\r\n\r\n<p>8. Drs. H. Rachmat, Kepala Kantor periode 2000 s.d. 2001</p>\r\n\r\n<p>9. Drs. H. Asro&#39;ie, Kepala Kantor periode 2002 s.d. 2007</p>\r\n\r\n<p>10. Drs. H.M. Chamim MS, M.Ag, Kepala Kantor periode 2007 s.d. 2010</p>\r\n\r\n<p>11. Drs. H. Kudaifah, M.Pd.I, Kepala Kantor periode 2010 s.d. sekarang</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>(Narasumber:&nbsp;</em><strong><em>Bapak Margo Pitoyo</em></strong><em>, Pegawai Sub. Bag TU Kan Kemenag Kab. Magelang)</em></p>\r\n', '2018-07-20', '', 'admin', 3, '04:57:25', 'Jumat'),
(54, 'Struktur Organisasi', 'struktur-organisasi', '<p style=\"text-align:justify\"><span style=\"font-size:12.0pt\">Adapun Susunan Organisasi Badan Perencanaan Penelitian dan Pengembangan Daerah terdiri dari :</span></p>\r\n\r\n<ol>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:12.0pt\">Kepala Badan</span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:12.0pt\">Sekretariat, membawahi :</span></li>\r\n</ol>\r\n\r\n<ol style=\"list-style-type:lower-alpha\">\r\n	<li style=\"text-align:justify\"><span style=\"font-size:12.0pt\">Sub Bagian Umum dan Kepegawaian</span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:12.0pt\">Sub Koordinator Program</span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:12.0pt\">Sub Koordinator Keuangan</span></li>\r\n</ol>\r\n\r\n<ol start=\"3\">\r\n	<li style=\"text-align:justify\"><span style=\"font-size:12.0pt\">Bidang Perencanaan Ekonomi, membawahi :</span></li>\r\n</ol>\r\n\r\n<ol style=\"list-style-type:lower-alpha\">\r\n	<li style=\"text-align:justify\"><span style=\"font-size:12.0pt\">Sub Koordinator Investasi dan Keuangan</span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:12.0pt\">Sub Koordinator Pengembangan Dunia Usaha</span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:12.0pt\">Sub Koordinator Perencanaan dan Sumber Daya Alam</span></li>\r\n</ol>\r\n\r\n<ol start=\"4\">\r\n	<li style=\"text-align:justify\"><span style=\"font-size:12.0pt\">Bidang Infrastruktur dan Pengembangan Wilayah, membawahi :</span></li>\r\n</ol>\r\n\r\n<ol style=\"list-style-type:lower-alpha\">\r\n	<li style=\"text-align:justify\"><span style=\"font-size:12.0pt\">Sub Koordinator Penataan Ruang dan Lingkungan Hidup</span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:12.0pt\">Sub Koordinator Pekerjaan Umum dan Permukiman</span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:12.0pt\">Sub Koordinator Sarana dan Prasarana Wilayah</span></li>\r\n</ol>\r\n\r\n<ol start=\"5\">\r\n	<li style=\"text-align:justify\"><span style=\"font-size:12.0pt\">Bidang Sosial, Budaya dan Pemerintahan</span></li>\r\n</ol>\r\n\r\n<ol style=\"list-style-type:lower-alpha\">\r\n	<li style=\"text-align:justify\"><span style=\"font-size:12.0pt\">Sub Koordinator Pendidikan dan Kebudayaan</span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:12.0pt\">Sub Koordinator Sosial dan Kesejahteraan Rakyat</span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:12.0pt\">Sub Koordinator Pemerintahan</span></li>\r\n</ol>\r\n\r\n<ol start=\"6\">\r\n	<li style=\"text-align:justify\"><span style=\"font-size:12.0pt\">Bidang Penelitian dan Pengembangan, membawahi :</span></li>\r\n</ol>\r\n\r\n<ol style=\"list-style-type:lower-alpha\">\r\n	<li style=\"text-align:justify\"><span style=\"font-size:12.0pt\">Sub Koordinator Inovasi dan Teknologi</span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:12.0pt\">Sub Koordinator Sosial Ekonomi dan Pemerintahan</span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:12.0pt\">Sub Koordinator Data Evaluasi dan Pelaporan</span></li>\r\n</ol>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n', '2018-07-20', 'struktur.png', 'admin', 10, '04:59:10', 'Jumat'),
(55, 'Pejabat Struktural', 'pejabat-struktural', '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"width:755px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>&nbsp;NO&nbsp;</td>\r\n			<td>NAMA &nbsp; &nbsp;PEJABAT&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>JABATAN &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>1.</td>\r\n			<td>Ridwan Efendi Daulay, SSTP, MM</td>\r\n			<td>:&nbsp;</td>\r\n			<td>Kepala Badan</td>\r\n		</tr>\r\n		<tr>\r\n			<td>2.</td>\r\n			<td>Iskandar Muda Hasibuan, SSTP, MSP</td>\r\n			<td>:</td>\r\n			<td>Sekretaris Badan</td>\r\n		</tr>\r\n		<tr>\r\n			<td>3.</td>\r\n			<td>Surya Sahban Daulay</td>\r\n			<td>:</td>\r\n			<td>Kepala Bidang Perencanaan Ekonomi</td>\r\n		</tr>\r\n		<tr>\r\n			<td>4.</td>\r\n			<td>Dedy Ratno, ST</td>\r\n			<td>:</td>\r\n			<td>Kepala Bidang Infrastruktur dan Pengembangan Wilayah</td>\r\n		</tr>\r\n		<tr>\r\n			<td>5.</td>\r\n			<td>Rahmad Hidayat Siregar, S.Sos, MM</td>\r\n			<td>:</td>\r\n			<td>Kepala Bidang Sosial Budaya dan Pemerintahan</td>\r\n		</tr>\r\n		<tr>\r\n			<td>6.</td>\r\n			<td>Sanggaraja Mulia, SSTP, MM&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</td>\r\n			<td>:</td>\r\n			<td>Kepala Bidang Penelitian dan Pengembangan</td>\r\n		</tr>\r\n		<tr>\r\n			<td>7.&nbsp;</td>\r\n			<td>Baik Budi</td>\r\n			<td>:</td>\r\n			<td>Kepala Sub Bagian Umum dan Kepegawaian</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '2018-07-20', '', 'admin', 18, '05:02:47', 'Jumat'),
(57, 'PEJABAT STRUKTURAL', 'pejabat-struktural', '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td>&nbsp;NO&nbsp;</td>\r\n			<td>NAMA &nbsp; &nbsp;PEJABAT&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>JABATAN &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>1.</td>\r\n			<td>Ridwan Efendi Daulay, SSTP, MM</td>\r\n			<td>:&nbsp;</td>\r\n			<td>Kepala Badan</td>\r\n		</tr>\r\n		<tr>\r\n			<td>2.</td>\r\n			<td>Iskandar Muda Hasibuan, SSTP, MSP</td>\r\n			<td>:</td>\r\n			<td>Sekretaris Badan</td>\r\n		</tr>\r\n		<tr>\r\n			<td>3.</td>\r\n			<td>Surya Sahban Daulay</td>\r\n			<td>:</td>\r\n			<td>Kepala Bidang Perencanaan Ekonomi</td>\r\n		</tr>\r\n		<tr>\r\n			<td>4.</td>\r\n			<td>Dedy Ratno, ST</td>\r\n			<td>:</td>\r\n			<td>Kepala Bidang Infrastruktur dan Pengembangan Wilayah</td>\r\n		</tr>\r\n		<tr>\r\n			<td>5.</td>\r\n			<td>Rahmad Hidayat Siregar, S.Sos, MM</td>\r\n			<td>:</td>\r\n			<td>Kepala Bidang Sosial Budaya dan Pemerintahan</td>\r\n		</tr>\r\n		<tr>\r\n			<td>6.</td>\r\n			<td>Sanggaraja Mulia, SSTP, MM&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</td>\r\n			<td>:</td>\r\n			<td>Kepala Bidang Penelitian dan Pengembangan</td>\r\n		</tr>\r\n		<tr>\r\n			<td>7.&nbsp;</td>\r\n			<td>Baik Budi</td>\r\n			<td>:</td>\r\n			<td>Kepala Sub Bagian Umum dan Kepegawaian</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '2022-04-20', '', 'admin', 4, '12:02:37', 'Rabu'),
(56, 'Kontak Kami', 'kontak-kami', '<p>BADAN PERENCANAAN PENELITIAN DAN PENGEMBANGAN</p>\r\n\r\n<p>KABUPATEN PADANG LAWAS UTARA</p>\r\n\r\n<blockquote>\r\n<p>Jalan Gunungtua - Batu Tambun Km.3</p>\r\n\r\n<p>Email : bappedakabpaluta@gmail.com&nbsp;</p>\r\n</blockquote>\r\n', '2018-07-20', 'WhatsApp Image 2022-03-29 at 16_53_30.jpeg', 'admin', 7, '05:06:42', 'Jumat');

-- --------------------------------------------------------

--
-- Table structure for table `header`
--

CREATE TABLE `header` (
  `id_header` int(5) NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `header`
--

INSERT INTO `header` (`id_header`, `judul`, `url`, `gambar`, `tgl_posting`) VALUES
(31, 'Header3', '', 'header3.jpg', '2011-04-06'),
(32, 'Header2', '', 'header1.jpg', '2011-04-06'),
(33, 'Header1', '', 'header2.jpg', '2011-04-06');

-- --------------------------------------------------------

--
-- Table structure for table `hubungi`
--

CREATE TABLE `hubungi` (
  `id_hubungi` int(5) NOT NULL,
  `nama` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `subjek` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `pesan` text COLLATE latin1_general_ci NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `dibaca` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `hubungi`
--

INSERT INTO `hubungi` (`id_hubungi`, `nama`, `email`, `subjek`, `pesan`, `tanggal`, `jam`, `dibaca`) VALUES
(39, 'Admin Lokomedia', 'dankrez48@gmail.com', '::1', 'Selamat bergabung di CMS Lokomedia. Jaminan kenyamanan dalam pengelolaan konten website menjadi hal yang kami utamakan. Aapabila anda menemukan kendala, segera hubungi kami.', '2017-01-23', '21:56:12', 'Y'),
(35, 'yusri renor', 'aciafifah@gmail.com', 'pertanyaan', 'bagaimana cara mengunduh nomor ujian fak. pertanian', '2014-01-19', '00:00:00', 'Y'),
(38, 'Udin Sedunia', 'udin.sedunia@gmail.com', 'Ip Pengirim : 120.177.28.244', 'Silahkan menghubungi kami melalui private message melalui form yang berada pada bagian kanan halaman ini. Kritik dan saran Anda sangat penting bagi kami untuk terus meningkatkan kualitas produk dan layanan yang kami berikan kepada Anda.', '2015-06-02', '00:00:00', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `identitas`
--

CREATE TABLE `identitas` (
  `id_identitas` int(5) NOT NULL,
  `nama_website` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `url` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `facebook` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `rekening` varchar(100) NOT NULL,
  `no_telp` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `meta_deskripsi` varchar(250) NOT NULL,
  `meta_keyword` varchar(250) NOT NULL,
  `favicon` varchar(50) NOT NULL,
  `maps` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `identitas`
--

INSERT INTO `identitas` (`id_identitas`, `nama_website`, `email`, `url`, `facebook`, `rekening`, `no_telp`, `meta_deskripsi`, `meta_keyword`, `favicon`, `maps`) VALUES
(1, 'Badan Perencanaan Penelitian dan Pengembangan Kabupaten Padang Lawas Utara', 'bappedakabpaluta@gmail.com', 'http://localhost/instansi', '', '', '', '', '', 'lambang_paluta-removebg-preview.png', 'https://www.google.com/maps/place/Bappeda+Paluta/@1.5141319,99.6040849,1567m/data=!3m1!1e3!4m12!1m6!3m5!1s0x0:0x4e4a8f62385e0111!2sBappeda+Paluta!8m2!3d1.5136064!4d99.6041493!3m4!1s0x302c41886ca1da67:0x4e4a8f62385e0111!8m2!3d1.5136064!4d99.6041493');

-- --------------------------------------------------------

--
-- Table structure for table `iklanatas`
--

CREATE TABLE `iklanatas` (
  `id_iklanatas` int(5) NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `iklantengah`
--

CREATE TABLE `iklantengah` (
  `id_iklantengah` int(5) NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `katajelek`
--

CREATE TABLE `katajelek` (
  `id_jelek` int(11) NOT NULL,
  `kata` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `ganti` varchar(60) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `katajelek`
--

INSERT INTO `katajelek` (`id_jelek`, `kata`, `username`, `ganti`) VALUES
(4, 'sex', '', 's**'),
(2, 'bajingan', '', 'b*******'),
(3, 'bangsat', '', 'b******'),
(5, 'fuck', 'admin', 'f**k'),
(6, 'pantat', 'admin', 'p****t');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(5) NOT NULL,
  `nama_kategori` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `kategori_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `sidebar` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `username`, `kategori_seo`, `aktif`, `sidebar`) VALUES
(64, 'RKPD', 'admin', 'rkpd', 'Y', 0),
(65, 'Renja', 'admin', 'renja', 'Y', 1),
(66, 'RENSTRA', 'admin', 'renstra', 'Y', 2);

-- --------------------------------------------------------

--
-- Table structure for table `komentar`
--

CREATE TABLE `komentar` (
  `id_komentar` int(5) NOT NULL,
  `id_berita` int(5) NOT NULL,
  `nama_komentar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `isi_komentar` text COLLATE latin1_general_ci NOT NULL,
  `tgl` date NOT NULL,
  `jam_komentar` time NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `email` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `komentar`
--

INSERT INTO `komentar` (`id_komentar`, `id_berita`, `nama_komentar`, `url`, `isi_komentar`, `tgl`, `jam_komentar`, `aktif`, `email`) VALUES
(84, 650, 'Agung Wicaksana', 'dankrez48@gmail.com', 'Nice  story, Roy suryo dan Susilo bambang yudhoyono memang cucak rowo. :)   ', '2012-01-05', '00:15:45', 'N', 'dankrez48@gmail.com'),
(88, 650, 'Udin Sedunia', 'www.belajarkonseling.com', ' hm...  kae.x  perlu  juga  ne  bantuan  dari  para  konselor...:)		   ', '2012-01-13', '20:09:07', 'Y', 'www.belajarkonseling.com'),
(90, 650, 'Rizal Faizal', 'www.rizal-online.co.cc', ' asyik  aja  dehh...   ', '2012-02-25', '15:01:40', 'Y', 'www.rizal-online.co.cc'),
(91, 645, 'Eka Praja W', 'komputerkampus.com', ' makin  parah  aja  nih  ...\r\nmudah2n  bisa  berbenah  negeri  ku  yg  q  banggakan   ', '2012-03-08', '20:06:07', 'Y', 'komputerkampus.com'),
(137, 650, 'Lukmanul Hakim', '', ' saya  yakin  PHP  juga  bisa  bertahan  sampai  2030   ', '2013-01-19', '18:56:25', 'Y', 'lukmanul.haskim@gmai;.com'),
(146, 645, 'Tommy Utama', 'tommy.utama@gmail.com', ' Calon  hakim  agung  Muhammad  Daming  Sanusi  menyatakan,  hukuman  mati  tidak  layak  diberlakukan  bagi  pelaku  pemerkosaan.   ', '2014-07-21', '21:03:04', 'Y', 'tommy.utama@gmail.com'),
(147, 655, 'Agung Wicaksana', 'dankrez48@gmail.com', 'Mudah-mudahan  windows  8.2  tampilannya  lebih  keren  lagi  dari  windows  8.1 sebelumnya  yang  kurang  enak  di gunakan.  heheheee   ', '2014-07-22', '08:33:04', 'Y', 'dankrez48@gmail.com'),
(144, 650, 'Tommy Utama', 'tommy.utama@gmail.com', 'Pengamat  politik  dari  Charta  Politika,  Yunarto  Wijaya  mempertanyakan  dasar  keputusan  SBY  menunjuk  Roy  Suryo  sebagai  Menpora.   ', '2014-07-21', '20:59:16', 'Y', 'tommy.utama@gmail.com'),
(143, 650, 'Udin Sedunia', 'udin.sedunia@gmail.com', 'Menurut  Yunarto,  Roy  selama  ini  lebih  dikenal  sebagai  pakar  foto  digital  dan  video  serta  dosen  di  sebuah  perguruan  tinggi  negeri.   ', '2014-07-21', '20:57:52', 'Y', 'udin.sedunia@gmail.com'),
(148, 662, 'Agung Wicaksana', 'dankrez48@gmail.com', 'pantat negara yahudi yang sangat perlu untuk dihancurkan /  musnahkan  dan  bantai  seluruh  warga israel..!!!   ', '2014-07-24', '09:29:20', 'Y', 'dankrez48@gmail.com'),
(149, 662, 'Edo Ikfianda', 'edomuhammad90@gmail.com', 'Setelah membentuk Timnas, PSSI versi KLB pimpinan La Nyalla Mahmud Matalitti menunjuk Alfred Riedl sebagai pelatihnya.', '2014-08-09', '17:34:35', 'Y', 'edomuhammad90@gmail.com'),
(152, 650, 'Dewi Safitriir', 'dewi_safitri@gmail.com', 'Peremimpin  tertinggi  Iran,  Ayatollah  Ali  Khamenei  menyampaikan  pernyataan  kontroversial  terkait  ketegangan  di  Gaza.Israele.   ', '2014-08-17', '17:46:28', 'N', 'dewi_safitri@gmail.com'),
(153, 662, 'Agung Wicaksana', 'ww.phpmu.com', 'Anda penyuka Transformer? Tentu hal yang paling menarik saat menonton film Transformer salah satunya adalah saat adegan transformasi yang begitu keren dari sebuah mobil atau truk menjadi robot yang gagah.\r\n\r\nAnda penyuka Transformer? Tentu hal yang paling menarik saat menonton film Transformer salah satunya adalah saat adegan transformasi yang begitu keren dari sebuah mobil atau truk menjadi robot yang gagah.', '2015-03-25', '06:10:12', 'Y', 'dankrez48@gmail.com'),
(154, 642, 'Tommy Utama', 'tommyutama.com', ' Para  pengunjuk  rasa  membawa  bendera-bendera  Palestina  dan  foro-foto  pemimpin  tertinggi  Iran,  Ayatollah  Ali  Khamenei.   ', '2016-11-24', '10:24:15', 'Y', 'tommy.utama@gmail.com'),
(162, 687, 'mas marno', '', 'maju terus indonesia', '2017-10-04', '14:32:56', 'Y', 'marnosudrajat@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `komentarvid`
--

CREATE TABLE `komentarvid` (
  `id_komentar` int(5) NOT NULL,
  `id_video` int(5) NOT NULL,
  `nama_komentar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `isi_komentar` text COLLATE latin1_general_ci NOT NULL,
  `tgl` date NOT NULL,
  `jam_komentar` time NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `komentarvid`
--

INSERT INTO `komentarvid` (`id_komentar`, `id_video`, `nama_komentar`, `url`, `isi_komentar`, `tgl`, `jam_komentar`, `aktif`) VALUES
(107, 160, 'Prabowo Subianto', 'Prabowo@gmail.com', ' Your  email  address  will  not  be  published.  Required  fields  are  marked', '2014-07-21', '13:29:29', 'N'),
(108, 163, 'Lukman Hakim', 'dankrez48@gmail.com', ' Kita  memang  harus  selamatkan  hutan  indonesia,  walau  apapun  yang  terjadi.   ', '2014-07-21', '13:31:10', 'Y'),
(109, 160, 'Lukman Hakim', 'dankrez48@gmail.com', ' Swarakalibata  V.3 sekarang  hadir  dengan  tampilan  baru  yang  pastinya  sudah  jauh  lebih  maju  dari  versi  sebelumnya.', '2014-07-21', '21:09:31', 'Y'),
(112, 166, 'Lukman Hakim', 'dankrez48@gmail.com', 'Exclusive Di IDAFF Acedemy - &quot;Social Blogging Mastery 2&quot; - Workshop 2 Hari Yang Akan Merubah Hidup Anda Di Tahun 2017. Di Bongkar Oleh Ahlinya Cara Paling Mudah Memiliki Penghasillan Sampingan Lewat Internet Hingga Jutaan Rupiah Setiap Bulannya.', '2017-01-25', '09:40:01', 'Y'),
(113, 166, 'Dewiit Safitri', 'dewiit.safitri@gmail.com', 'Pemimpin tertinggi Iran, Ayatollah Ali Khamenei menyampaikan pernyataan kontroversial terkait ketegangan di Gaza. Khamenei mendorong agar Palestina terus melawan Israel. &quot;Salah satu cara untuk menghentikan rezim kurang ajar ini adalah melanjutkan perlawanan dan dan perjuangan bersenjata harus diperluas ke Tepi Barat,&quot; sebut Khamenei, seperti dikutip dari IRNA.', '2017-01-25', '09:40:55', 'Y'),
(116, 162, 'bandug atmawijaya', 'bandung_api@yahoo.com', 'tidak berprikemanusiaan', '2017-10-04', '10:56:44', 'Y'),
(118, 162, 'maskomen', 'maskomen@ojolali.com', 'komentar testing', '2017-10-04', '13:13:55', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `logo`
--

CREATE TABLE `logo` (
  `id_logo` int(5) NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `logo`
--

INSERT INTO `logo` (`id_logo`, `gambar`) VALUES
(15, 'banner_bapelitbang.png');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id_menu` int(5) NOT NULL,
  `id_parent` int(5) NOT NULL DEFAULT 0,
  `nama_menu` varchar(30) NOT NULL,
  `link` varchar(100) NOT NULL,
  `aktif` enum('Ya','Tidak') NOT NULL DEFAULT 'Ya',
  `position` enum('Top','Bottom') DEFAULT 'Bottom',
  `urutan` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id_menu`, `id_parent`, `nama_menu`, `link`, `aktif`, `position`, `urutan`) VALUES
(130, 129, 'Tujuan dan Sasaran Organisasi', 'halaman/detail/tujuan-dan-sasaran-organisasi', 'Ya', 'Bottom', 2),
(7, 0, 'Beranda', 'main', 'Ya', 'Bottom', 1),
(135, 0, 'Berita', 'berita', 'Ya', 'Bottom', 3),
(139, 0, 'Download', 'download', 'Ya', 'Bottom', 7),
(140, 0, 'Galeri Foto', 'albums', 'Ya', 'Bottom', 8),
(129, 0, 'Profil', '', 'Ya', 'Bottom', 2),
(132, 129, 'Struktur Organisasi', 'halaman/detail/struktur-organisasi', 'Ya', 'Bottom', 3),
(133, 129, 'Pejabat Struktural', 'halaman/detail/pejabat-struktural', 'Ya', 'Bottom', 4),
(134, 129, 'Kontak Kami', 'halaman/detail/kontak-kami', 'Ya', 'Bottom', 5);

-- --------------------------------------------------------

--
-- Table structure for table `modul`
--

CREATE TABLE `modul` (
  `id_modul` int(5) NOT NULL,
  `nama_modul` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `link` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `static_content` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `publish` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `status` enum('user','admin') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `urutan` int(5) NOT NULL,
  `link_seo` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `modul`
--

INSERT INTO `modul` (`id_modul`, `nama_modul`, `username`, `link`, `static_content`, `gambar`, `publish`, `status`, `aktif`, `urutan`, `link_seo`) VALUES
(2, 'Manajemen User', 'admin', 'manajemenuser', '', '', 'Y', 'user', 'Y', 0, ''),
(18, 'Berita', 'admin', 'listberita', '', '', 'Y', 'user', 'Y', 0, ''),
(71, 'Background Website', 'admin', 'background', '', '', 'N', 'admin', 'N', 0, ''),
(10, 'Manajemen Modul', 'admin', 'manajemenmodul', '', '', 'Y', 'user', 'Y', 0, ''),
(31, 'Kategori Berita ', 'admin', 'kategorikategori', '', '', 'Y', 'user', 'Y', 0, ''),
(33, 'Jajak Pendapat', 'admin', 'jajakpendapat', '', '', 'Y', 'user', 'Y', 0, ''),
(34, 'Tag Berita', 'admin', 'tagberita', '', '', 'Y', 'user', 'Y', 0, ''),
(35, 'Komentar Berita', 'admin', 'komentarberita', '', '', 'Y', 'user', 'Y', 0, ''),
(41, 'Agenda', 'admin', 'agenda', '', '', 'Y', 'user', 'Y', 0, ''),
(43, 'Berita Foto', 'admin', 'album', '', '', 'Y', 'user', 'Y', 0, ''),
(44, 'Galeri Berita Foto', 'admin', 'gallery', '', '', 'Y', 'user', 'Y', 0, ''),
(45, 'Template Website', 'admin', 'templatewebsite', '', '', 'Y', 'user', 'Y', 0, ''),
(46, 'Sensor Kata', 'admin', 'sensorkomentar', '', '', 'Y', 'user', 'Y', 0, ''),
(61, 'Identitas Website', 'admin', 'identitaswebsite', '', '', 'Y', 'user', 'Y', 0, ''),
(57, 'Menu Website', 'admin', 'menuwebsite', '', '', 'Y', 'user', 'Y', 0, ''),
(59, 'Halaman Baru', 'admin', 'halamanbaru', '', '', 'Y', 'user', 'Y', 0, ''),
(62, 'Video', 'admin', 'video', '', '', 'Y', 'user', 'Y', 0, ''),
(63, 'Playlist Video', 'admin', 'playlist', '', '', 'Y', 'user', 'Y', 0, ''),
(64, 'Tag Video', 'admin', 'tagvideo', '', '', 'Y', 'user', 'Y', 0, ''),
(65, 'Komentar Video', 'admin', 'komentarvideo', '', '', 'Y', 'user', 'Y', 0, ''),
(66, 'Logo Website', 'admin', 'logowebsite', '', '', 'Y', 'user', 'Y', 0, ''),
(67, 'Iklan Sidebar', 'admin', 'iklansidebar', '', '', 'N', 'admin', 'N', 0, ''),
(68, 'Iklan Home', 'admin', 'iklanhome', '', '', 'N', 'admin', 'N', 0, ''),
(69, 'Iklan Atas', 'admin', 'iklanatas', '', '', 'N', 'admin', 'N', 0, ''),
(70, 'Pesan Masuk', 'admin', 'pesanmasuk', '', '', 'Y', 'user', 'Y', 0, ''),
(72, 'Sekilas Info', 'admin', 'sekilasinfo', '', '', 'N', 'admin', 'N', 0, ''),
(73, 'Yahoo Messanger', 'admin', 'ym', '', '', 'N', 'admin', 'N', 0, ''),
(74, 'Download Area', 'admin', 'download', '', '', 'Y', 'admin', 'Y', 0, ''),
(75, 'Alamat Kontak', 'admin', 'alamat', '', '', 'Y', 'admin', 'Y', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `mod_alamat`
--

CREATE TABLE `mod_alamat` (
  `id_alamat` int(5) NOT NULL,
  `alamat` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mod_alamat`
--

INSERT INTO `mod_alamat` (`id_alamat`, `alamat`) VALUES
(1, '<p>Badan Perencanaan Penelitian dan Pengembangan</p>\r\n\r\n<blockquote>\r\n<p>Jalan Gunungtua - Batu Tambun Km. 3</p>\r\n\r\n<p>Gunungtua</p>\r\n\r\n<p>Kode pos : 22753</p>\r\n</blockquote>\r\n\r\n<h2>&nbsp;</h2>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `mod_ym`
--

CREATE TABLE `mod_ym` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `ym_icon` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pasangiklan`
--

CREATE TABLE `pasangiklan` (
  `id_pasangiklan` int(5) NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pasangiklan`
--

INSERT INTO `pasangiklan` (`id_pasangiklan`, `judul`, `username`, `url`, `gambar`, `tgl_posting`) VALUES
(1, 'Kepala Badan', 'admin', 'Ridwan Efendi Daulay, S.STP, MM', 'kaban2.jpeg', '2022-05-13'),
(36, 'SIPD', 'admin', 'https://padanglawasutarakab.sipd.kemendagri.go.id/', 'maxresdefault.jpg', '2022-04-21'),
(37, 'Data Infrastruktur', 'admin', 'https://linktr.ee/ipwbapelitbangda', 'qr_ipw.jpg', '2022-05-17');

-- --------------------------------------------------------

--
-- Table structure for table `playlist`
--

CREATE TABLE `playlist` (
  `id_playlist` int(5) NOT NULL,
  `jdl_playlist` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `playlist_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gbr_playlist` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `playlist`
--

INSERT INTO `playlist` (`id_playlist`, `jdl_playlist`, `username`, `playlist_seo`, `gbr_playlist`, `aktif`) VALUES
(56, 'Kantor Baru Swarakalibata', 'admin', 'office', '284775wisata.jpg', 'Y'),
(57, 'Keluarga Besar Swarakalibata', 'admin', 'family', '181304Desert.jpg', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `poling`
--

CREATE TABLE `poling` (
  `id_poling` int(5) NOT NULL,
  `pilihan` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `status` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `rating` int(5) NOT NULL DEFAULT 0,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `poling`
--

INSERT INTO `poling` (`id_poling`, `pilihan`, `status`, `username`, `rating`, `aktif`) VALUES
(18, 'Apakah Anda puas dengan informasi pada website ini?', 'Pertanyaan', 'admin', 0, 'Y'),
(25, 'Ya, Puas', 'Jawaban', 'admin', 28, 'Y'),
(31, 'Biasa saja', 'Jawaban', 'admin', 1, 'Y'),
(32, 'Tidak Puas', 'Jawaban', 'admin', 5, 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `sekilasinfo`
--

CREATE TABLE `sekilasinfo` (
  `id_sekilas` int(5) NOT NULL,
  `info` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `statistik`
--

CREATE TABLE `statistik` (
  `ip` varchar(20) NOT NULL DEFAULT '',
  `tanggal` date NOT NULL,
  `hits` int(10) NOT NULL DEFAULT 1,
  `online` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `statistik`
--

INSERT INTO `statistik` (`ip`, `tanggal`, `hits`, `online`) VALUES
('223.255.231.148', '2014-05-06', 1, '1399357334'),
('223.255.231.147', '2014-05-15', 3, '1400119147'),
('223.255.224.73', '2014-05-15', 12, '1400123797'),
('223.255.224.69', '2014-05-16', 2, '1400215103'),
('118.96.51.231', '2014-05-16', 19, '1400233044'),
('223.255.231.146', '2014-05-16', 2, '1400228049'),
('::1', '2014-06-20', 2, '1403230579'),
('::1', '2014-06-22', 8, '1403436591'),
('223.255.231.154', '2014-06-26', 1, '1403739948'),
('223.255.231.148', '2014-06-26', 6, '1403745715'),
('223.255.224.74', '2014-06-26', 1, '1403748060'),
('223.255.224.69', '2014-06-26', 1, '1403753239'),
('223.255.224.77', '2014-06-29', 1, '1404039342'),
('::1', '2014-07-02', 6, '1404277263'),
('127.0.0.1', '2014-07-17', 2, '1405582494'),
('127.0.0.1', '2014-07-21', 1, '1405929828'),
('36.76.60.43', '2014-07-21', 1, '1405951864'),
('223.255.231.154', '2014-07-21', 2, '1405957200'),
('223.255.227.21', '2014-07-22', 1, '1405995171'),
('223.255.231.146', '2014-07-22', 1, '1405997152'),
('223.255.227.21', '2014-07-23', 1, '1406100212'),
('223.255.227.17', '2014-07-23', 1, '1406104552'),
('223.255.227.23', '2014-07-24', 1, '1406168095'),
('223.255.231.153', '2014-07-24', 1, '1406204439'),
('223.255.231.146', '2014-07-25', 1, '1406268985'),
('180.76.5.193', '2014-08-06', 1, '1407302738'),
('180.76.5.23', '2014-08-06', 1, '1407304739'),
('202.67.36.241', '2014-08-06', 1, '1407305643'),
('198.148.27.22', '2014-08-06', 1, '1407306703'),
('180.251.170.42', '2014-08-06', 7, '1407310167'),
('128.199.171.191', '2014-08-06', 3, '1407323435'),
('223.255.231.149', '2014-08-06', 2, '1407309879'),
('223.255.227.28', '2014-08-06', 8, '1407311801'),
('103.24.49.242', '2014-08-06', 1, '1407312326'),
('223.255.231.146', '2014-08-06', 1, '1407313297'),
('180.214.233.34', '2014-08-06', 1, '1407321063'),
('66.249.77.87', '2014-08-06', 1, '1407323509'),
('223.255.227.30', '2014-08-06', 1, '1407325862'),
('180.254.207.13', '2014-08-06', 5, '1407330687'),
('114.79.13.199', '2014-08-06', 1, '1407336900'),
('202.152.199.34', '2014-08-06', 7, '1407337100'),
('180.76.6.21', '2014-08-07', 1, '1407347753'),
('114.79.13.55', '2014-08-07', 3, '1407354277'),
('114.125.41.136', '2014-08-07', 1, '1407352625'),
('180.76.6.147', '2014-08-07', 1, '1407355344'),
('180.76.6.64', '2014-08-07', 1, '1407367237'),
('69.171.247.116', '2014-08-07', 1, '1407379834'),
('69.171.247.119', '2014-08-07', 1, '1407379834'),
('69.171.247.114', '2014-08-07', 1, '1407379834'),
('69.171.247.115', '2014-08-07', 1, '1407379834'),
('202.67.34.29', '2014-08-07', 2, '1407380415'),
('36.76.52.112', '2014-08-07', 1, '1407380496'),
('223.255.231.145', '2014-08-07', 5, '1407387045'),
('223.255.231.153', '2014-08-07', 2, '1407388883'),
('223.255.227.27', '2014-08-07', 1, '1407393087'),
('180.76.5.25', '2014-08-07', 1, '1407394749'),
('223.255.231.146', '2014-08-07', 1, '1407397183'),
('157.55.39.248', '2014-08-07', 1, '1407397231'),
('180.254.200.55', '2014-08-07', 2, '1407399466'),
('110.139.67.15', '2014-08-07', 8, '1407399221'),
('180.242.17.64', '2014-08-07', 11, '1407414373'),
('141.0.8.59', '2014-08-07', 1, '1407412384'),
('110.76.149.91', '2014-08-07', 1, '1407422367'),
('223.255.231.151', '2014-08-07', 3, '1407426943'),
('82.145.209.206', '2014-08-07', 1, '1407430369'),
('223.255.227.28', '2014-08-08', 3, '1407469589'),
('66.93.156.50', '2014-08-08', 1, '1407472340'),
('202.62.17.47', '2014-08-08', 1, '1407484393'),
('36.70.135.163', '2014-08-08', 6, '1407485987'),
('173.252.74.115', '2014-08-08', 1, '1407485153'),
('118.96.58.136', '2014-08-08', 2, '1407486347'),
('114.79.29.68', '2014-08-08', 1, '1407502537'),
('66.220.156.113', '2014-08-08', 1, '1407503375'),
('112.215.66.79', '2014-08-08', 1, '1407503381'),
('125.163.113.156', '2014-08-08', 9, '1407508824'),
('180.76.5.94', '2014-08-08', 1, '1407508624'),
('120.172.9.192', '2014-08-08', 1, '1407515634'),
('202.67.41.51', '2014-08-08', 1, '1407515702'),
('180.253.243.222', '2014-08-09', 1, '1407542724'),
('36.75.224.20', '2014-08-09', 1, '1407548005'),
('180.76.5.65', '2014-08-09', 1, '1407548865'),
('66.249.77.77', '2014-08-09', 2, '1407582711'),
('180.76.6.137', '2014-08-09', 1, '1407553037'),
('66.249.77.87', '2014-08-09', 1, '1407554836'),
('66.249.77.97', '2014-08-09', 2, '1407562640'),
('120.177.44.126', '2014-08-09', 2, '1407558625'),
('223.255.231.145', '2014-08-09', 3, '1407558663'),
('36.73.64.113', '2014-08-09', 1, '1407558640'),
('36.72.187.12', '2014-08-09', 1, '1407560351'),
('202.67.41.51', '2014-08-09', 1, '1407561096'),
('114.125.60.68', '2014-08-09', 4, '1407561514'),
('202.67.40.50', '2014-08-09', 1, '1407562007'),
('180.76.6.136', '2014-08-09', 1, '1407562581'),
('110.232.81.2', '2014-08-09', 5, '1407563275'),
('146.185.28.59', '2014-08-09', 1, '1407564768'),
('120.174.157.139', '2014-08-09', 1, '1407568139'),
('223.255.227.23', '2014-08-09', 2, '1407570163'),
('193.105.210.119', '2014-08-09', 1, '1407577518'),
('125.162.57.66', '2014-08-09', 2, '1407579822'),
('180.241.163.1', '2014-08-09', 8, '1407580493'),
('36.76.44.163', '2014-08-09', 6, '1407603574'),
('180.76.5.144', '2014-08-09', 1, '1407582757'),
('107.167.103.40', '2014-08-09', 1, '1407586189'),
('36.68.48.23', '2014-08-09', 1, '1407586974'),
('192.99.218.151', '2014-08-09', 4, '1407587574'),
('36.74.55.24', '2014-08-09', 3, '1407589161'),
('118.97.212.184', '2014-08-09', 8, '1407595169'),
('36.72.114.118', '2014-08-09', 2, '1407597684'),
('180.76.5.153', '2014-08-09', 1, '1407602870'),
('180.76.5.59', '2014-08-09', 1, '1407603153'),
('180.76.5.18', '2014-08-10', 1, '1407606581'),
('180.254.155.156', '2014-08-10', 2, '1407607003'),
('180.76.6.42', '2014-08-10', 1, '1407608363'),
('36.68.242.217', '2014-08-10', 5, '1407627100'),
('66.249.77.77', '2014-08-10', 2, '1407633623'),
('202.67.44.64', '2014-08-10', 1, '1407629598'),
('180.76.6.43', '2014-08-10', 1, '1407631270'),
('118.97.212.182', '2014-08-10', 4, '1407632228'),
('139.0.102.140', '2014-08-10', 1, '1407633944'),
('66.249.77.87', '2014-08-10', 1, '1407636902'),
('66.249.77.97', '2014-08-10', 1, '1407639983'),
('180.76.6.159', '2014-08-10', 1, '1407640798'),
('118.97.212.181', '2014-08-10', 3, '1407642556'),
('36.68.46.37', '2014-08-10', 2, '1407642940'),
('180.76.5.69', '2014-08-10', 1, '1407645158'),
('180.76.5.80', '2014-08-10', 1, '1407648268'),
('180.76.5.143', '2014-08-10', 1, '1407650068'),
('223.255.231.145', '2014-08-10', 1, '1407650216'),
('180.76.6.149', '2014-08-10', 1, '1407657020'),
('36.77.183.218', '2014-08-10', 2, '1407657119'),
('127.0.0.1', '2014-08-10', 2, '1407660057'),
('127.0.0.1', '2014-08-11', 2, '1407725194'),
('127.0.0.1', '2014-08-12', 1, '1407862185'),
('127.0.0.1', '2014-08-13', 1, '1407899819'),
('127.0.0.1', '2014-08-17', 44, '1408287630'),
('127.0.0.1', '2014-08-18', 253, '1408372590'),
('127.0.0.1', '2014-08-19', 4, '1408413702'),
('::1', '2014-08-19', 90, '1408433250'),
('::1', '2014-08-31', 1, '1409487043'),
('::1', '2015-03-11', 11, '1426061663'),
('::1', '2015-03-12', 1, '1426114982'),
('::1', '2015-03-15', 32, '1426430637'),
('::1', '2015-03-18', 137, '1426666506'),
('::1', '2015-03-19', 143, '1426751746'),
('::1', '2015-03-21', 198, '1426912294'),
('::1', '2015-03-22', 554, '1427039069'),
('127.0.0.1', '2015-03-22', 1, '1427030317'),
('::1', '2015-03-23', 275, '1427093113'),
('::1', '2015-03-24', 42, '1427179474'),
('::1', '2015-03-25', 45, '1427251499'),
('39.225.164.2', '2015-05-14', 7, '1431584409'),
('119.110.72.130', '2015-05-14', 30, '1431595368'),
('89.145.95.2', '2015-05-14', 1, '1431582645'),
('66.220.158.118', '2015-05-14', 1, '1431582842'),
('66.220.158.115', '2015-05-14', 1, '1431582852'),
('66.220.158.112', '2015-05-14', 3, '1431595371'),
('66.220.158.119', '2015-05-14', 1, '1431582942'),
('114.125.43.185', '2015-05-14', 5, '1431602132'),
('119.110.72.130', '2015-05-15', 1, '1431673658'),
('114.125.45.206', '2015-05-16', 18, '1431741581'),
('66.220.158.116', '2015-05-16', 1, '1431741049'),
('66.220.158.118', '2015-05-16', 1, '1431741224'),
('66.220.158.114', '2015-05-16', 1, '1431741233'),
('39.229.6.148', '2015-05-16', 11, '1431791037'),
('39.225.236.155', '2015-05-17', 8, '1431862096'),
('119.110.72.130', '2015-05-19', 6, '1432006569'),
('89.145.95.42', '2015-05-19', 2, '1432006661'),
('114.121.133.117', '2015-05-19', 3, '1432046663'),
('124.195.114.65', '2015-05-28', 16, '1432832381'),
('66.220.158.119', '2015-05-28', 1, '1432831000'),
('66.220.158.115', '2015-05-28', 1, '1432831013'),
('66.220.158.116', '2015-05-28', 1, '1432832385'),
('124.195.114.65', '2015-05-29', 77, '1432836214'),
('66.220.158.113', '2015-05-29', 1, '1432835961'),
('66.249.84.178', '2015-05-29', 1, '1432836220'),
('103.246.200.14', '2015-05-29', 1, '1432851867'),
('103.246.200.59', '2015-05-29', 1, '1432851916'),
('114.124.5.250', '2015-05-29', 6, '1432852876'),
('173.252.105.114', '2015-05-29', 1, '1432852770'),
('120.180.175.150', '2015-05-29', 36, '1432864082'),
('103.246.200.50', '2015-05-29', 1, '1432863615'),
('103.246.200.1', '2015-05-29', 1, '1432863650'),
('103.246.200.33', '2015-05-29', 1, '1432863711'),
('103.246.200.44', '2015-05-29', 1, '1432863795'),
('120.174.144.115', '2015-05-29', 1, '1432908445'),
('119.110.72.130', '2015-05-29', 27, '1432912022'),
('173.252.90.117', '2015-05-29', 1, '1432910852'),
('173.252.90.116', '2015-05-29', 1, '1432910873'),
('173.252.90.118', '2015-05-29', 1, '1432911344'),
('173.252.90.122', '2015-05-29', 1, '1432911470'),
('66.249.84.190', '2015-05-30', 1, '1432945579'),
('39.254.117.222', '2015-05-30', 1, '1432991226'),
('66.249.84.178', '2015-05-31', 1, '1433037242'),
('120.176.92.190', '2015-06-01', 3, '1433128955'),
('66.102.6.210', '2015-06-01', 1, '1433134430'),
('120.164.44.28', '2015-06-01', 13, '1433149419'),
('124.195.118.227', '2015-06-01', 1, '1433170960'),
('120.177.28.244', '2015-06-02', 8, '1433220043'),
('66.249.84.190', '2015-06-02', 1, '1433247837'),
('120.190.75.179', '2015-06-03', 7, '1433302768'),
('119.110.72.130', '2015-06-03', 4, '1433302761'),
('89.145.95.2', '2015-06-03', 1, '1433302690'),
('66.249.71.147', '2015-06-07', 46, '1433696370'),
('66.249.71.130', '2015-06-07', 30, '1433696150'),
('66.249.71.164', '2015-06-07', 37, '1433696154'),
('173.252.74.113', '2015-06-07', 8, '1433694061'),
('173.252.74.117', '2015-06-07', 3, '1433676319'),
('66.249.64.57', '2015-06-07', 1, '1433674283'),
('173.252.88.89', '2015-06-07', 5, '1433677999'),
('173.252.88.86', '2015-06-07', 2, '1433677597'),
('173.252.74.119', '2015-06-07', 7, '1433694862'),
('66.249.79.117', '2015-06-07', 1, '1433674983'),
('173.252.88.84', '2015-06-07', 2, '1433676738'),
('173.252.74.115', '2015-06-07', 3, '1433676460'),
('173.252.74.114', '2015-06-07', 2, '1433694204'),
('173.252.74.118', '2015-06-07', 3, '1433676180'),
('173.252.74.112', '2015-06-07', 5, '1433695314'),
('173.252.88.85', '2015-06-07', 2, '1433677804'),
('173.252.88.90', '2015-06-07', 1, '1433676251'),
('173.252.74.116', '2015-06-07', 5, '1433695249'),
('173.252.88.87', '2015-06-07', 2, '1433677488'),
('173.252.88.88', '2015-06-07', 1, '1433677370'),
('66.249.79.130', '2015-06-07', 1, '1433694848'),
('66.220.156.116', '2015-06-07', 2, '1433696197'),
('66.249.67.104', '2015-06-07', 1, '1433696147'),
('66.220.156.112', '2015-06-07', 2, '1433696173'),
('66.220.146.22', '2015-06-07', 1, '1433696162'),
('66.249.67.117', '2015-06-07', 1, '1433696288'),
('66.220.156.114', '2015-06-07', 1, '1433696309'),
('66.220.156.117', '2015-06-08', 3, '1433711204'),
('66.249.71.164', '2015-06-08', 32, '1433779112'),
('66.220.146.25', '2015-06-08', 2, '1433736854'),
('66.220.156.116', '2015-06-08', 2, '1433709422'),
('66.249.71.147', '2015-06-08', 29, '1433748751'),
('66.220.156.112', '2015-06-08', 4, '1433715007'),
('66.220.146.20', '2015-06-08', 1, '1433696744'),
('66.249.71.130', '2015-06-08', 38, '1433777391'),
('66.220.156.118', '2015-06-08', 2, '1433712628'),
('66.220.146.27', '2015-06-08', 1, '1433712556'),
('66.220.146.26', '2015-06-08', 1, '1433712746'),
('66.249.67.104', '2015-06-08', 4, '1433746797'),
('66.220.146.22', '2015-06-08', 1, '1433714244'),
('66.220.156.115', '2015-06-08', 2, '1433714821'),
('66.249.67.117', '2015-06-08', 2, '1433780504'),
('120.176.251.49', '2015-06-08', 2, '1433737104'),
('66.220.156.119', '2015-06-08', 1, '1433737457'),
('66.249.71.147', '2015-06-09', 3, '1433836081'),
('66.249.71.130', '2015-06-09', 4, '1433835126'),
('66.249.67.104', '2015-06-09', 1, '1433788622'),
('66.249.71.164', '2015-06-09', 1, '1433823064'),
('66.249.71.130', '2015-06-10', 5, '1433953790'),
('66.249.67.117', '2015-06-10', 1, '1433911605'),
('66.249.71.164', '2015-06-10', 3, '1433954890'),
('66.249.71.147', '2015-06-10', 2, '1433953573'),
('66.249.71.147', '2015-06-11', 1, '1433957808'),
('66.249.71.164', '2015-06-11', 2, '1433990805'),
('68.180.228.104', '2015-06-11', 1, '1433975257'),
('66.249.71.130', '2015-06-11', 1, '1433991891'),
('36.68.28.19', '2015-06-14', 5, '1434224041'),
('120.164.46.127', '2015-06-14', 2, '1434239557'),
('66.249.67.248', '2015-06-15', 1, '1434362861'),
('104.193.10.50', '2015-06-15', 3, '1434372762'),
('104.193.10.50', '2015-06-16', 2, '1434454308'),
('36.80.234.114', '2015-06-16', 4, '1434443273'),
('173.252.74.115', '2015-06-16', 1, '1434443264'),
('173.252.74.114', '2015-06-16', 1, '1434443279'),
('119.110.72.130', '2015-06-16', 1, '1434467216'),
('124.195.116.71', '2015-06-17', 3, '1434551738'),
('120.184.130.21', '2015-06-27', 1, '1435386862'),
('66.249.84.246', '2015-06-27', 1, '1435387150'),
('120.176.176.106', '2015-06-28', 7, '1435461088'),
('66.220.158.114', '2015-06-28', 1, '1435461007'),
('66.249.84.129', '2015-06-28', 1, '1435466083'),
('66.249.84.246', '2015-06-29', 2, '1435563211'),
('66.249.84.252', '2015-06-29', 1, '1435563206'),
('66.249.84.246', '2015-06-30', 3, '1435677685'),
('66.249.84.252', '2015-06-30', 1, '1435645799'),
('66.249.84.252', '2015-07-01', 1, '1435710707'),
('66.249.84.129', '2015-07-01', 1, '1435711780'),
('120.177.18.200', '2015-07-02', 1, '1435824891'),
('::1', '2015-11-25', 15, '1448407930'),
('::1', '2015-12-01', 12, '1448944568'),
('::1', '2015-12-03', 9, '1449138520'),
('::1', '2015-12-05', 26, '1449279360'),
('::1', '2015-12-07', 4, '1449442678'),
('::1', '2015-12-08', 8, '1449532582'),
('::1', '2015-12-13', 31, '1449974628'),
('::1', '2015-12-18', 9, '1450418535'),
('::1', '2015-12-21', 10, '1450654644'),
('::1', '2015-12-24', 3, '1450917714'),
('::1', '2015-12-25', 4, '1451037761'),
('::1', '2015-12-26', 5, '1451086546'),
('::1', '2016-01-01', 1, '1451626224'),
('::1', '2016-01-12', 2, '1452564572'),
('::1', '2016-01-16', 7, '1452913899'),
('::1', '2016-01-17', 150, '1453036730'),
('::1', '2016-07-24', 24, '1469318037'),
('::1', '2016-07-29', 1, '1469767572'),
('::1', '2016-07-31', 1, '1469936872'),
('::1', '2016-08-01', 14, '1470019073'),
('::1', '2016-08-12', 4, '1470940786'),
('::1', '2016-08-14', 3, '1471191885'),
('::1', '2016-08-22', 5, '1471851644'),
('::1', '2016-08-26', 4, '1472207940'),
('::1', '2016-08-29', 9, '1472475500'),
('::1', '2016-08-30', 1, '1472531831'),
('::1', '2016-09-13', 4, '1473760584'),
('::1', '2016-09-16', 7, '1473998550'),
('::1', '2016-09-17', 3, '1474076080'),
('::1', '2016-09-20', 4, '1474335445'),
('::1', '2016-09-21', 5, '1474470987'),
('::1', '2016-09-26', 8, '1474866854'),
('::1', '2016-11-21', 20, '1479719811'),
('::1', '2016-11-22', 26, '1479795839'),
('::1', '2016-12-24', 1, '1482592503'),
('::1', '2016-12-23', 2, '1482451494'),
('::1', '2016-12-20', 7, '1482205377'),
('::1', '2016-12-14', 4, '1481717872'),
('::1', '2016-12-13', 24, '1481593512'),
('::1', '2016-12-09', 1, '1481243159'),
('::1', '2016-12-03', 3, '1480741491'),
('::1', '2016-11-28', 32, '1480303392'),
('::1', '2016-11-27', 2, '1480224412'),
('::1', '2016-11-24', 403, '1479984680'),
('::1', '2016-11-23', 2, '1479913316'),
('::1', '2017-01-03', 9, '1483421812'),
('::1', '2017-01-04', 2, '1483534977'),
('::1', '2017-01-05', 3, '1483627230'),
('::1', '2017-01-14', 1, '1484352852'),
('::1', '2017-01-17', 3, '1484663823'),
('::1', '2017-01-25', 12, '1485359750'),
('::1', '2017-01-26', 37, '1485414680'),
('::1', '2017-01-27', 70, '1485508785'),
('::1', '2017-01-28', 1, '1485567010'),
('::1', '2017-02-04', 1, '1486213804'),
('::1', '2017-02-09', 14, '1486659480'),
('::1', '2017-02-10', 3, '1486684650'),
('::1', '2017-02-11', 11, '1486773431'),
('::1', '2017-02-12', 6, '1486869838'),
('::1', '2017-02-13', 5, '1486995163'),
('::1', '2017-02-15', 3, '1487123924'),
('::1', '2017-02-21', 1, '1487659967'),
('::1', '2017-02-23', 7, '1487832476'),
('::1', '2017-02-26', 4, '1488064851'),
('::1', '2017-03-13', 44, '1489366890'),
('::1', '2017-03-17', 24, '1489744337'),
('::1', '2017-03-20', 1, '1489988038'),
('::1', '2017-03-25', 1, '1490413626'),
('::1', '2017-03-29', 7, '1490744633'),
('::1', '2017-04-02', 1, '1491122695'),
('::1', '2017-04-06', 56, '1491462329'),
('::1', '2017-04-07', 59, '1491524075'),
('::1', '2017-04-09', 20, '1491711058'),
('::1', '2017-04-11', 9, '1491877995'),
('::1', '2017-04-12', 124, '1492006218'),
('::1', '2017-04-13', 53, '1492088580'),
('::1', '2017-05-14', 133, '1494767093'),
('::1', '2017-05-20', 167, '1495299592'),
('::1', '2017-05-21', 234, '1495359950'),
('::1', '2017-05-29', 1, '1496031966'),
('::1', '2017-08-04', 2, '1501862778'),
('::1', '2017-08-05', 3, '1501890677'),
('::1', '2017-09-13', 5, '1505272460'),
('::1', '2017-09-22', 5, '1506065936'),
('::1', '2017-09-24', 6, '1506263121'),
('::1', '2017-09-27', 1, '1506491577'),
('::1', '2017-09-28', 20, '1506614988'),
('::1', '2017-09-29', 308, '1506696202'),
('::1', '2017-09-30', 495, '1506783608'),
('::1', '2017-10-01', 77, '1506868529'),
('::1', '2017-10-02', 353, '1506962237'),
('::1', '2017-10-03', 16, '1507035971'),
('::1', '2017-10-04', 159, '1507123395'),
('::1', '2017-10-05', 38, '1507218119'),
('::1', '2017-10-06', 68, '1507275289'),
('::1', '2017-10-07', 1, '1507361033'),
('::1', '2017-10-08', 1, '1507413903'),
('::1', '2017-10-11', 4, '1507704206'),
('::1', '2017-10-31', 8, '1509435169'),
('::1', '2017-11-11', 1, '1510417532'),
('::1', '2017-11-12', 45, '1510481123'),
('::1', '2017-11-13', 38, '1510568837'),
('::1', '2018-07-20', 47, '1532061614'),
('::1', '2018-07-22', 62, '1532278424'),
('::1', '2018-07-23', 5, '1532279593'),
('::1', '2020-06-25', 64, '1593077350'),
('::1', '2020-09-03', 2, '1599070418'),
('::1', '2020-09-21', 1, '1600681838'),
('::1', '2020-10-04', 26, '1601779111'),
('::1', '2022-04-19', 24, '1650352930'),
('::1', '2022-04-20', 68, '1650435555'),
('127.0.0.1', '2022-04-21', 1, '1650516627'),
('::1', '2022-04-21', 60, '1650528754'),
('::1', '2022-04-25', 3, '1650865206'),
('::1', '2022-05-13', 14, '1652413743'),
('114.122.43.73', '2022-05-14', 35, '1652547337'),
('114.122.38.223', '2022-05-14', 4, '1652532953'),
('156.67.215.151', '2022-05-14', 4, '1652535090'),
('202.43.172.4', '2022-05-14', 1, '1652537528'),
('156.67.215.151', '2022-05-15', 48, '1652632356'),
('114.122.38.90', '2022-05-15', 1, '1652548087'),
('89.104.100.15', '2022-05-15', 1, '1652554196'),
('36.99.136.143', '2022-05-15', 1, '1652559503'),
('36.99.136.138', '2022-05-15', 1, '1652559579'),
('36.99.136.140', '2022-05-15', 1, '1652559593'),
('111.7.100.23', '2022-05-15', 6, '1652560268'),
('36.99.136.130', '2022-05-15', 2, '1652559635'),
('111.7.100.27', '2022-05-15', 8, '1652560249'),
('111.7.100.20', '2022-05-15', 9, '1652560175'),
('111.7.100.24', '2022-05-15', 6, '1652560274'),
('111.7.100.21', '2022-05-15', 3, '1652560237'),
('111.7.100.25', '2022-05-15', 8, '1652560280'),
('36.99.136.132', '2022-05-15', 1, '1652559700'),
('36.99.136.134', '2022-05-15', 1, '1652559706'),
('111.7.100.22', '2022-05-15', 6, '1652560255'),
('36.99.136.133', '2022-05-15', 1, '1652559723'),
('111.7.100.26', '2022-05-15', 2, '1652560255'),
('36.5.68.182', '2022-05-15', 1, '1652560840'),
('150.255.176.159', '2022-05-15', 1, '1652560868'),
('180.163.220.3', '2022-05-15', 1, '1652561182'),
('180.163.220.68', '2022-05-15', 1, '1652561183'),
('114.122.45.254', '2022-05-15', 1, '1652572803'),
('69.127.113.140', '2022-05-15', 1, '1652589829'),
('111.13.63.167', '2022-05-15', 1, '1652591443'),
('159.223.49.158', '2022-05-15', 1, '1652593757'),
('209.58.188.131', '2022-05-15', 1, '1652593903'),
('171.13.14.16', '2022-05-15', 1, '1652596471'),
('171.13.14.12', '2022-05-15', 1, '1652596493'),
('106.75.28.105', '2022-05-15', 2, '1652596596'),
('171.13.14.8', '2022-05-15', 1, '1652599541'),
('58.251.94.154', '2022-05-15', 1, '1652605029'),
('51.255.62.11', '2022-05-15', 1, '1652617322'),
('91.132.185.202', '2022-05-15', 1, '1652618435'),
('89.38.133.52', '2022-05-15', 1, '1652618482'),
('51.254.49.103', '2022-05-15', 1, '1652625795'),
('176.53.217.53', '2022-05-15', 1, '1652632075'),
('114.122.45.175', '2022-05-15', 1, '1652632492'),
('156.67.215.151', '2022-05-16', 48, '1652718746'),
('111.7.100.27', '2022-05-16', 2, '1652637831'),
('111.7.100.24', '2022-05-16', 1, '1652637836'),
('52.77.220.149', '2022-05-16', 2, '1652667263'),
('212.129.41.254', '2022-05-16', 2, '1652667263'),
('3.120.149.58', '2022-05-16', 2, '1652667263'),
('172.241.26.83', '2022-05-16', 2, '1652667271'),
('156.67.215.151', '2022-05-17', 48, '1652805146'),
('47.242.226.200', '2022-05-17', 1, '1652727437'),
('8.210.122.144', '2022-05-17', 1, '1652730537'),
('198.244.142.178', '2022-05-17', 1, '1652740311'),
('111.13.63.126', '2022-05-17', 1, '1652740999'),
('111.13.63.69', '2022-05-17', 2, '1652745858'),
('151.106.120.184', '2022-05-17', 4, '1652748099'),
('180.251.209.48', '2022-05-17', 13, '1652779159'),
('27.115.124.38', '2022-05-17', 1, '1652776314'),
('114.122.44.1', '2022-05-17', 6, '1652779243'),
('18.206.55.48', '2022-05-17', 3, '1652790310'),
('54.227.32.154', '2022-05-17', 1, '1652790324'),
('93.180.239.70', '2022-05-17', 1, '1652791233'),
('180.149.15.35', '2022-05-17', 1, '1652791267'),
('156.67.215.151', '2022-05-18', 48, '1652891568'),
('45.59.126.220', '2022-05-18', 1, '1652817556'),
('38.86.229.46', '2022-05-18', 1, '1652817557'),
('13.214.56.175', '2022-05-18', 2, '1652834087'),
('114.122.42.213', '2022-05-18', 20, '1652858068'),
('35.84.191.185', '2022-05-18', 1, '1652890222'),
('156.67.215.151', '2022-05-19', 26, '1652938349'),
('3.89.13.27', '2022-05-19', 1, '1652902518'),
('100.26.155.136', '2022-05-19', 1, '1652903131'),
('3.87.194.93', '2022-05-19', 1, '1652903315'),
('180.241.45.178', '2022-05-19', 63, '1652939218'),
('66.220.149.11', '2022-05-19', 3, '1652935373'),
('66.220.149.5', '2022-05-19', 1, '1652935373'),
('66.220.149.13', '2022-05-19', 1, '1652935373'),
('66.220.149.17', '2022-05-19', 2, '1652935374'),
('66.220.149.18', '2022-05-19', 1, '1652935374');

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

CREATE TABLE `tag` (
  `id_tag` int(5) NOT NULL,
  `nama_tag` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `tag_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `count` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `tag`
--

INSERT INTO `tag` (`id_tag`, `nama_tag`, `username`, `tag_seo`, `count`) VALUES
(22, 'Hiburan', '', 'hiburan', 19),
(28, 'Teknologi', '', 'teknologi', 12),
(57, 'Perencanaan', 'admin', 'perencanaan', 0),
(26, 'Nasional', '', 'nasional', 42),
(25, 'Kesehatan', '', 'kesehatan', 16),
(24, 'Olahraga', '', 'olahraga', 11);

-- --------------------------------------------------------

--
-- Table structure for table `tagvid`
--

CREATE TABLE `tagvid` (
  `id_tag` int(5) NOT NULL,
  `nama_tag` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `tag_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `count` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `tagvid`
--

INSERT INTO `tagvid` (`id_tag`, `nama_tag`, `username`, `tag_seo`, `count`) VALUES
(34, 'perang', 'admin', 'perang', 2),
(35, 'Teknologi', 'admin', 'teknologi', 0),
(36, 'Nasional', 'admin', 'nasional', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_comment`
--

CREATE TABLE `tbl_comment` (
  `id_komentar` int(5) NOT NULL,
  `reply` int(5) NOT NULL,
  `nama_lengkap` varchar(150) NOT NULL,
  `alamat_email` varchar(150) NOT NULL,
  `isi_pesan` text NOT NULL,
  `tanggal_komentar` date NOT NULL,
  `jam_komentar` time NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_comment`
--

INSERT INTO `tbl_comment` (`id_komentar`, `reply`, `nama_lengkap`, `alamat_email`, `isi_pesan`, `tanggal_komentar`, `jam_komentar`) VALUES
(1, 0, 'Admin Lokomedia', 'dankrez48@gmail.com', 'Perubahan UUD 1945 yang membawa perubahan mendasar mengenai penyelengaraan kekuasaan kehakiman, membuat perlunya dilakukan perubahan secara komprehensif mengenai Undang-Undang Ketentuan-ketentuan Pokok Kekuasaan Kehakiman.								', '2014-11-19', '00:00:00'),
(2, 1, 'si anu', 'anu@gmail.com', 'Video bocah melakukan hubungan intim layaknya suami istri membuat geger. Guna mencegah hal-hal yang tidak diinginkan, polisi pun sudah melakukan penelusuran siapa orang di balik pembuatan video cabul tersebut.', '2014-11-19', '00:00:00'),
(3, 0, 'Rio Saputra', 'rio.saputra@gmail.com', 'Video bocah melakukan hubungan intim layaknya suami istri membuat geger. Guna mencegah hal-hal yang tidak diinginkan, polisi pun sudah melakukan penelusuran siapa orang di balik pembuatan video cabul tersebut. Perubahan UUD 1945 yang membawa perubahan mendasar mengenai penyelengaraan kekuasaan kehakiman.								', '2014-11-21', '00:00:00'),
(4, 1, 'Anggun Pratiwi', 'angun@gmail.com', 'itu benar bro, kalau ndak pacayo tanyo lah ka baruak.Video bocah melakukan hubungan intim layaknya suami istri membuat geger. Guna mencegah hal-hal yang tidak diinginkan, polisi pun sudah melakukan penelusuran siapa orang di balik pembuatan video cabul tersebut.', '2014-11-21', '00:00:00'),
(5, 3, 'Dewi Safitri', 'dewi.safitri@gmail.com', 'Oii, ang kareh bana mah, den ambuang ang ka lauik beko,.. Video bocah melakukan hubungan intim layaknya suami istri membuat geger. Guna mencegah hal-hal yang tidak diinginkan, polisi pun sudah melakukan penelusuran siapa orang di balik pembuatan video cabul tersebut.', '2014-11-21', '00:00:00'),
(6, 0, 'Ahmad Hunaldi', 'ahmad@gmail.com', 'badan-badan peradilan penyelenggara kekuasaan kehakiman, asas-asas penyelengaraan kekuasaan kehakiman Video bocah melakukan hubungan intim layaknya suami istri membuat geger. Guna mencegah hal-hal yang tidak diinginkan, polisi pun sudah melakukan penelusuran siapa orang di balik pembuatan video cabul tersebut.								', '2014-11-21', '00:00:00'),
(7, 6, 'Prasmana Enru', 'prasmana@gmail.com', 'Undang-Undang Ketentuan-ketentuan Pokok Kekuasaan	Video bocah melakukan hubungan intim layaknya suami istri membuat geger. Guna mencegah hal-hal yang tidak diinginkan, polisi pun sudah melakukan penelusuran siapa orang di balik pembuatan video cabul tersebut.', '2014-11-21', '00:00:00'),
(9, 3, 'Admin Lokomedia', 'dankrez48@gmail.com', 'Untuk itulah penulis memberikan solusi menggunakan program Dreamweaver,.. Video bocah melakukan hubungan intim layaknya suami istri membuat geger. Guna mencegah hal-hal yang tidak diinginkan, polisi pun sudah melakukan penelusuran siapa orang di balik pembuatan video cabul tersebut.', '2015-01-22', '00:00:00'),
(14, 0, 'Udin Sedunia', 'udin.sedubia@gmail.com', 'Perlahan tapi pasti, sosok TM yang merupakan artis dan berprofesi sebagai Pekerja Seks Komersial (PSK) akhirnya mulai terungkap Video bocah melakukan hubungan intim layaknya suami istri membuat geger. Guna mencegah hal-hal yang tidak diinginkan, polisi pun sudah melakukan penelusuran siapa orang di balik pembuatan video cabul tersebut.', '2015-05-29', '00:54:31'),
(15, 6, 'Admin Lokomedia', 'dankrez48@gmail.com', 'Perlahan tapi pasti, sosok TM yang merupakan artis dan berprofesi sebagai Pekerja Seks Komersial (PSK) akhirnya mulai terungkap Video bocah melakukan hubungan intim layaknya suami istri membuat geger. Guna mencegah hal-hal yang tidak diinginkan, polisi pun sudah melakukan penelusuran siapa orang di balik pembuatan video cabul tersebut.', '2015-05-29', '00:59:50'),
(17, 3, 'hari ke 2', 'hay.smart,solusindo@gmail.com', 'Tesssss', '2015-05-29', '05:41:12'),
(19, 14, 'Admin Lokomedia', 'dankrez48@gmail.com', 'Testing untuk Berikan jawaban,....', '2015-06-01', '15:44:10'),
(20, 0, 'Dewiit Safitri', 'dewiit.safitri@gmail.com', 'I absolutely love image or text sliders written using pure css code. Likewise, i always hated slow loading sliders using jquery or javascript to use in my wordpress themes or html websites. I have compiled some cool css sliders from codepen/github for use in your website or in themes, many are responsive too. A word of advise: Please make sure to test all sliders in Safari, Chrome and FF before deployment.', '2017-01-24', '16:27:59'),
(23, 20, 'Admin Lokomedia', 'dankrez48@gmail.com', 'I spent almost a day searching for this. And found &#039;CSS3 Thumbnail Slider&#039; on this site. Thanks a lot. If the slideIndex is higher than the number of elements (x.length), the slideIndex is set to zero.', '2017-01-24', '16:31:47'),
(24, 14, 'Admin Lokomedia', 'dankrez48@gmail.com', 'Guna mencegah hal-hal yang tidak diinginkan, polisi pun sudah melakukan penelusuran siapa orang di balik pembuatan video cabul tersebut', '2017-04-09', '11:07:23'),
(25, 0, 'BangToyyib', 'toyyib@gmail.com', 'saya ingin bertanya, berapa 1 + 1?', '2017-10-06', '08:19:33'),
(26, 25, 'Admin Lokomedia', 'admin@lokomedia.web.id', '1+1 adalah 2', '2017-10-06', '08:26:20');

-- --------------------------------------------------------

--
-- Table structure for table `templates`
--

CREATE TABLE `templates` (
  `id_templates` int(5) NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `pembuat` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `folder` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `templates`
--

INSERT INTO `templates` (`id_templates`, `judul`, `username`, `pembuat`, `folder`, `aktif`) VALUES
(17, 'loko-tiga - Swarakalibata Template', 'admin', 'Admin', 'loko-tiga', 'N'),
(22, 'loko-dua - Swarakalibata Template', 'admin', 'Admin', 'loko-dua', 'N'),
(24, 'simple news', 'admin', 'wildan', 'simple-news', 'N'),
(25, 'easy news', 'admin', 'wildan', 'easy-news', 'N'),
(26, 'kemenag', 'admin', 'admin lokomedia', 'kemenag', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `nama_lengkap` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `no_telp` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `foto` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `level` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'user',
  `blokir` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `id_session` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`, `nama_lengkap`, `email`, `no_telp`, `foto`, `level`, `blokir`, `id_session`) VALUES
('admin', 'bff0cc42103de1b4721370e84dc24f635a7afeca41198c9b3e03946a1b6b7191d14356408a5e57ce6daf77e6e800c66fac7ab0482d57d48d23e6808e4b562daa', 'Admin ', 'admin@admin.com', '0853', 'lambang_paluta.jpg', 'admin', 'N', 'q173s8hs1jl04st35169ccl8o7'),
('admin2', 'b2de2209d505591efdc0b0845929a090', 'Admin2', 'admin@bapelitbangdapadanglawasutarakabgo.id', '082277270108', '', 'user', 'N', '');

-- --------------------------------------------------------

--
-- Table structure for table `users_modul`
--

CREATE TABLE `users_modul` (
  `id_umod` int(11) NOT NULL,
  `id_session` varchar(255) NOT NULL,
  `id_modul` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_modul`
--

INSERT INTO `users_modul` (`id_umod`, `id_session`, `id_modul`) VALUES
(1, 'ed1d859c50262701d92e5cbf39652792-20170120090507', 70),
(2, 'ed1d859c50262701d92e5cbf39652792-20170120090507', 65),
(3, 'ed1d859c50262701d92e5cbf39652792-20170120090507', 63),
(4, 'f76ad5ee772ac196cbc09824e24859ee', 70),
(5, 'f76ad5ee772ac196cbc09824e24859ee', 65),
(6, 'f76ad5ee772ac196cbc09824e24859ee', 63),
(7, 'ed1d859c50262701d92e5cbf39652792-20170120090507', 18),
(8, 'ed1d859c50262701d92e5cbf39652792-20170120090507', 66),
(9, 'ed1d859c50262701d92e5cbf39652792-20170120090507', 33),
(10, '3460d81e02faa3559f9e02c9a766fcbd-20170124215625', 18),
(11, 'ed1d859c50262701d92e5cbf39652792-20170120090507', 41),
(12, '6bec9c852847242e384a4d5ac0962ba0-20170406140423', 18),
(13, 'fa7688658d8b38aae731826ea1daebb5-20170521103501', 18),
(14, 'q173s8hs1jl04st35169ccl8o7', 70),
(15, 'q173s8hs1jl04st35169ccl8o7', 66),
(16, 'q173s8hs1jl04st35169ccl8o7', 65),
(17, 'q173s8hs1jl04st35169ccl8o7', 64),
(18, 'q173s8hs1jl04st35169ccl8o7', 63),
(19, 'q173s8hs1jl04st35169ccl8o7', 62),
(20, 'q173s8hs1jl04st35169ccl8o7', 61),
(21, 'q173s8hs1jl04st35169ccl8o7', 59),
(22, 'q173s8hs1jl04st35169ccl8o7', 57),
(23, 'q173s8hs1jl04st35169ccl8o7', 46),
(24, 'q173s8hs1jl04st35169ccl8o7', 45),
(25, 'q173s8hs1jl04st35169ccl8o7', 44),
(26, 'q173s8hs1jl04st35169ccl8o7', 43),
(27, 'q173s8hs1jl04st35169ccl8o7', 41),
(28, 'q173s8hs1jl04st35169ccl8o7', 35),
(29, 'q173s8hs1jl04st35169ccl8o7', 34),
(30, 'q173s8hs1jl04st35169ccl8o7', 33),
(31, 'q173s8hs1jl04st35169ccl8o7', 31),
(32, 'q173s8hs1jl04st35169ccl8o7', 18),
(33, 'q173s8hs1jl04st35169ccl8o7', 10),
(34, 'q173s8hs1jl04st35169ccl8o7', 2);

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `id_video` int(5) NOT NULL,
  `id_playlist` int(5) NOT NULL,
  `username` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `jdl_video` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `video_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `keterangan` text COLLATE latin1_general_ci NOT NULL,
  `gbr_video` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `video` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `youtube` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `dilihat` int(7) NOT NULL DEFAULT 1,
  `hari` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `tagvid` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`id_video`, `id_playlist`, `username`, `jdl_video`, `video_seo`, `keterangan`, `gbr_video`, `video`, `youtube`, `dilihat`, `hari`, `tanggal`, `jam`, `tagvid`) VALUES
(160, 56, 'admin', 'Selamatkan Hutan di Indonesia', 'selamatkan-hutan-di-indonesia', 'Pengamat politik dari Charta Politika, Yunarto Wijaya mempertanyakan dasar keputusan SBY menunjuk Roy Suryo sebagai Menpora. Apalagi, kata Yunarto, ada pernyataan SBY yang menegaskan Roy cakap untuk mengemban tugas sebagai Menpora.\r\n\r\nMenurut Yunarto, Roy selama ini lebih dikenal sebagai pakar foto digital dan video serta dosen di sebuah perguruan tinggi negeri. \"Namun, belum terdengar kiprahnya di bidang kepemudaan dan olahraga,\" kata Yunarto. Sementara, tugas Menpora yang berat dan masa tugasnya relatif singkat idealnya mengutamakan figur yang kompetensinya teruji di bidang kepemudaan dan olahraga.\r\n\r\nKarena itu, Yunarto menduga penunjukan Roy bukan karena kompetensi, melainkan representasi politik. \"Ditunjuknya kader Partai Demokrat Roy Suryo sebagai Menpora menunjukkan faktor politisnya sangat kuat,\" katanya.', '', '', 'http://www.youtube.com/embed/hkzpLJjZQbA', 41, 'Rabu', '2014-07-02', '07:30:12', ''),
(161, 56, 'admin', 'Hutan Hujan Tropis Indonesia', 'hutan-hujan-tropis-indonesia', 'Pihak Partai Liberal Demokrat pun langsung melontarkan kecaman atas tulisan dari Ward. Juru bicara partai mengatakan bahwa pihak partainya akan menerapkan sanksi terhadap Ward.\r\n\r\nSementara pihak Partai Konservatif yang menguasai koalisi pemerintahan bersama Liberal Demokrat menyatakan Ward harus menarik komentarnya.\r\n\r\n\"Tidak seharusnya seorang anggota parlemen menulis tindakan yang memicu kekerasan. Tindakannya tidak bertanggung jawab,\" ucap pihak Konservatif.\r\n\r\nIni bukan pertama kalinya Ward mengecam tindakan Israel. Pada Juli 2013 lalu, Ward menyebut pihak Zionis diambang kekalahan dalam perang. Dirinya pun mempertanyakan sampai kapan negara apartheid seperti Israel bisa bertahan.', '', '', 'http://www.youtube.com/embed/5biK_PcT7S0', 25, 'Rabu', '2014-07-02', '07:31:23', ''),
(162, 57, 'admin', 'Perang Sengit Pasukan Darat Israel Vs Hamas', 'perang-sengit-pasukan-darat-israel-vs-hamas', 'Israel makin gencar melakukan serangan ke Gaza, baik melalui udara maupun darat. Masjid menjadi salah satu target serangan dari Negara Yahudi itu.\r\n\r\nSekira 15 warga Palestina dilaporkan tewas dan 20 lainnya dalam serangan udara Isarel ke sebuah masjid di Kota Gaza pada Sabtu 19 Juli 2014 lalu. Masjid itu terletak tidak jauh dari rumah milik Komandan Polisi Gaza.\r\n\r\nRudal-rudal dari Israel menghancurkan sebagian dari bangunan masjid. Alquran yang berada di dalam masjid pun tampak rusak akibat serangan. Demikian diberitakan Associated Press, Rabu (23/7/2014).\r\n\r\nSelain itu, serangan Israel juga diarahkan ke rumah sakit yang berada di Gaza. Blokade yang dilakukan oleh Israel makin membuat rumah sakit sulit untuk beroperasi.', '', '', 'https://www.youtube.com/watch?v=CeNjeD8yknI', 48, 'Rabu', '2014-07-23', '15:23:10', ''),
(163, 57, 'admin', 'Isael dan Palestina Memanas', 'isael-dan-palestina-memanas', 'Khamenei dikenal sebagai musuh besar Israel. Beberapa komentarnya membuat panas telinga pemimpin Israel.\r\n\r\nKomentar paling pedas Khamenei adalah Iran tidak pernah mengenal Israel. Negara ini juga secara terang-terangan mendukung Hamas. Hamas sendiri sudah dimasukan ke dalam daftar hitam terorisme oleh Israel.\r\n\r\nSelain itu, Khamenei dan beberapa pemimpin Iran berjanji akan menghilangkan Israel dari peta dunia. Bahkan, beberapa pekan lalu, Khamenei menyatakan peristiwa pembantaian warga Yahudi oleh Nazi satu abad lalu, hanyalah sebuah ilusi yang tak nyata.', '', '', 'https://www.youtube.com/watch?v=oaJpxuDh5Ds', 31, 'Rabu', '2014-07-23', '15:24:30', ''),
(164, 57, 'admin', 'Israel Tembak Mati Warga Palestina Saat Gencatan', 'israel-tembak-mati-warga-palestina-saat-gencatan', 'Seorang tentara Israel dilaporkan menghilang di Jalur Gaza. Hal ini terjadi usai terjadinya pertempuran mematikan yang terjadi di Jalur Gaza pada akhir pekan lalu.\r\n\r\nMelansir Boston Herald, Selasa (22/7/2014), pejabat pertahanan Israel mengatakan, tentaranya hilang usai pertempuran mematikan di Gaza terjadi pada pekan lalu. Namun, tidak jelas apakah tentara tersebut masih hidup atau sudah tewas.\r\n\r\nKonflik yang terjadi antara Israel dan Hamas sejauh ini sudah menyebabkan sekira 25 tentara Israel tewas dan ratusan warga Palestina. Sebagian besar korban warga Palestina adalah anak-anak.\r\n\r\nMemanasnya situasi itu membuat sejumlah desakan gencatan berdatangan dari sejumlah negara dan organisasi internasional.\r\n\r\nSebelumnya, Sekretaris Jendral Perserikatan Bangsa - Bangsa (PBB) Ban Ki-moon dan Menteri Luar Negeri Amerika Serikat (AS) John Kerry melakukan pertemuan di Kairo, Mesir. Pertemuan di bertujuan untuk mendesak agar konflik yang terjadi di Gaza segera dihentikan.', '', '', 'https://www.youtube.com/watch?v=L6R-5XUcDSY', 56, 'Rabu', '2014-07-23', '15:29:41', ''),
(165, 57, 'admin', 'Gaza conflict: Israel & Hamas face allegations of war crimes', 'gaza-conflict-israel--hamas-face-allegations-of-war-crimes', '<p>Sebelumnya, Sekretaris Jendral Perserikatan Bangsa - Bangsa (PBB) Ban Ki-moon dan Menteri Luar Negeri Amerika Serikat (AS) John Kerry melakukan pertemuan di Kairo, Mesir. Pertemuan di bertujuan untuk mendesak agar konflik yang terjadi di Gaza segera dihentikan. Mengingat agresi yang militer yang dilancarkan Israel merupakan pelanggaran hukum humaniter internasional. Menyusul banyak warga sipil yang telah menjadi korban akibat pertempuran yang dilakukan Israel dan Hamas. Sebelumnya, Sekretaris Jendral Perserikatan Bangsa - Bangsa (PBB) Ban Ki-moon dan Menteri Luar Negeri Amerika Serikat (AS) John Kerry melakukan pertemuan di Kairo, Mesir. Pertemuan di bertujuan untuk mendesak agar konflik yang terjadi di Gaza segera dihentikan. Mengingat agresi yang militer yang dilancarkan Israel merupakan pelanggaran hukum humaniter internasional. Menyusul banyak warga sipil yang telah menjadi korban akibat pertempuran yang dilakukan Israel dan Hamas.</p>\r\n', '', '', 'http://www.youtube.com/embed/aqI4DOilySg', 17, 'Minggu', '2014-08-17', '16:49:33', ''),
(166, 57, 'admin', 'Chomsky: Calling for change on US support for Israelll', 'chomsky-calling-for-change-on-us-support-for-israelll', '<p>Pemimpin tertinggi Iran, Ayatollah Ali Khamenei menyampaikan pernyataan kontroversial terkait ketegangan di Gaza. Khamenei mendorong agar Palestina terus melawan Israel. \"Salah satu cara untuk menghentikan rezim kurang ajar ini adalah melanjutkan perlawanan dan dan perjuangan bersenjata harus diperluas ke Tepi Barat,\" sebut Khamenei, seperti dikutip dari IRNA, Kamis (24/7/2014). Khamenei dikenal sebagai musuh besar Israel. Beberapa komentarnya membuat panas telinga pemimpin Israel.</p>\r\n\r\n<p>Pemimpin tertinggi Iran, Ayatollah Ali Khamenei menyampaikan pernyataan kontroversial terkait ketegangan di Gaza. Khamenei mendorong agar Palestina terus melawan Israel. Salah satu cara untuk menghentikan rezim kurang ajar ini adalah melanjutkan perlawanan dan dan perjuangan bersenjata harus diperluas ke Tepi Barat, sebut Khamenei, seperti dikutip dari IRNA, Kamis (24/7/2014). Khamenei dikenal sebagai musuh besar Israel. Beberapa komentarnya membuat panas telinga pemimpin Israel.</p>\r\n', '', '', 'http://www.youtube.com/embed/gQRJEnoxr2A', 103, 'Minggu', '2014-08-17', '16:51:04', 'perang'),
(175, 56, 'admin', 'ngetes', 'ngetes', '<p>ssss</p>\r\n', 'lndex.php', '', '', 0, 'Rabu', '2017-10-11', '12:31:06', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agenda`
--
ALTER TABLE `agenda`
  ADD PRIMARY KEY (`id_agenda`);

--
-- Indexes for table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`id_album`);

--
-- Indexes for table `background`
--
ALTER TABLE `background`
  ADD PRIMARY KEY (`id_background`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id_banner`);

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indexes for table `download`
--
ALTER TABLE `download`
  ADD PRIMARY KEY (`id_download`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id_gallery`);

--
-- Indexes for table `halamanstatis`
--
ALTER TABLE `halamanstatis`
  ADD PRIMARY KEY (`id_halaman`);

--
-- Indexes for table `header`
--
ALTER TABLE `header`
  ADD PRIMARY KEY (`id_header`);

--
-- Indexes for table `hubungi`
--
ALTER TABLE `hubungi`
  ADD PRIMARY KEY (`id_hubungi`);

--
-- Indexes for table `identitas`
--
ALTER TABLE `identitas`
  ADD PRIMARY KEY (`id_identitas`);

--
-- Indexes for table `iklanatas`
--
ALTER TABLE `iklanatas`
  ADD PRIMARY KEY (`id_iklanatas`);

--
-- Indexes for table `iklantengah`
--
ALTER TABLE `iklantengah`
  ADD PRIMARY KEY (`id_iklantengah`);

--
-- Indexes for table `katajelek`
--
ALTER TABLE `katajelek`
  ADD PRIMARY KEY (`id_jelek`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`id_komentar`);

--
-- Indexes for table `komentarvid`
--
ALTER TABLE `komentarvid`
  ADD PRIMARY KEY (`id_komentar`);

--
-- Indexes for table `logo`
--
ALTER TABLE `logo`
  ADD PRIMARY KEY (`id_logo`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indexes for table `modul`
--
ALTER TABLE `modul`
  ADD PRIMARY KEY (`id_modul`);

--
-- Indexes for table `mod_alamat`
--
ALTER TABLE `mod_alamat`
  ADD PRIMARY KEY (`id_alamat`);

--
-- Indexes for table `mod_ym`
--
ALTER TABLE `mod_ym`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pasangiklan`
--
ALTER TABLE `pasangiklan`
  ADD PRIMARY KEY (`id_pasangiklan`);

--
-- Indexes for table `playlist`
--
ALTER TABLE `playlist`
  ADD PRIMARY KEY (`id_playlist`);

--
-- Indexes for table `poling`
--
ALTER TABLE `poling`
  ADD PRIMARY KEY (`id_poling`);

--
-- Indexes for table `sekilasinfo`
--
ALTER TABLE `sekilasinfo`
  ADD PRIMARY KEY (`id_sekilas`);

--
-- Indexes for table `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`id_tag`);

--
-- Indexes for table `tagvid`
--
ALTER TABLE `tagvid`
  ADD PRIMARY KEY (`id_tag`);

--
-- Indexes for table `tbl_comment`
--
ALTER TABLE `tbl_comment`
  ADD PRIMARY KEY (`id_komentar`);

--
-- Indexes for table `templates`
--
ALTER TABLE `templates`
  ADD PRIMARY KEY (`id_templates`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `users_modul`
--
ALTER TABLE `users_modul`
  ADD PRIMARY KEY (`id_umod`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id_video`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agenda`
--
ALTER TABLE `agenda`
  MODIFY `id_agenda` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `album`
--
ALTER TABLE `album`
  MODIFY `id_album` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `background`
--
ALTER TABLE `background`
  MODIFY `id_background` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id_banner` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id_berita` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=694;

--
-- AUTO_INCREMENT for table `download`
--
ALTER TABLE `download`
  MODIFY `id_download` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id_gallery` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=268;

--
-- AUTO_INCREMENT for table `halamanstatis`
--
ALTER TABLE `halamanstatis`
  MODIFY `id_halaman` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `header`
--
ALTER TABLE `header`
  MODIFY `id_header` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `hubungi`
--
ALTER TABLE `hubungi`
  MODIFY `id_hubungi` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `identitas`
--
ALTER TABLE `identitas`
  MODIFY `id_identitas` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `iklanatas`
--
ALTER TABLE `iklanatas`
  MODIFY `id_iklanatas` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `iklantengah`
--
ALTER TABLE `iklantengah`
  MODIFY `id_iklantengah` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `katajelek`
--
ALTER TABLE `katajelek`
  MODIFY `id_jelek` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id_komentar` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;

--
-- AUTO_INCREMENT for table `komentarvid`
--
ALTER TABLE `komentarvid`
  MODIFY `id_komentar` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT for table `logo`
--
ALTER TABLE `logo`
  MODIFY `id_logo` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id_menu` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT for table `modul`
--
ALTER TABLE `modul`
  MODIFY `id_modul` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `mod_alamat`
--
ALTER TABLE `mod_alamat`
  MODIFY `id_alamat` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mod_ym`
--
ALTER TABLE `mod_ym`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pasangiklan`
--
ALTER TABLE `pasangiklan`
  MODIFY `id_pasangiklan` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `playlist`
--
ALTER TABLE `playlist`
  MODIFY `id_playlist` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `poling`
--
ALTER TABLE `poling`
  MODIFY `id_poling` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `sekilasinfo`
--
ALTER TABLE `sekilasinfo`
  MODIFY `id_sekilas` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tag`
--
ALTER TABLE `tag`
  MODIFY `id_tag` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `tagvid`
--
ALTER TABLE `tagvid`
  MODIFY `id_tag` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `tbl_comment`
--
ALTER TABLE `tbl_comment`
  MODIFY `id_komentar` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `templates`
--
ALTER TABLE `templates`
  MODIFY `id_templates` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `users_modul`
--
ALTER TABLE `users_modul`
  MODIFY `id_umod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `id_video` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=176;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
