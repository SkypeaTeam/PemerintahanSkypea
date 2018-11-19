-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 02 Nov 2018 pada 05.26
-- Versi server: 10.1.31-MariaDB
-- Versi PHP: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ciblog`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `user_id`, `name`, `created_at`) VALUES
(1, 0, 'Technology', '2017-03-04 13:03:18'),
(2, 0, 'Business', '2017-03-04 13:14:40'),
(4, 3, 'Berita Skypea', '2018-11-02 00:35:58');

-- --------------------------------------------------------

--
-- Struktur dari tabel `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `name`, `email`, `body`, `created_at`) VALUES
(1, 2, 'John Doe', 'jdoe@gmail.com', 'Great Post!', '2017-03-17 13:57:29'),
(2, 2, 'Jan Doe', 'jane@yahoo.com', 'Thank you for this awesome post', '2017-03-17 14:05:58'),
(3, 4, 'imam', 'imam', 'ajdaj', '2018-10-27 12:41:29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `post_image` varchar(255) NOT NULL,
  `created_post` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `post_image` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `body`, `post_image`, `created_at`) VALUES
(1, 4, 3, 'SKYPEA GELAR SOSIALISASI LAYANAN PEMERIKSAAN KESEHATAN', 'SKYPEA-GELAR-SOSIALISASI-LAYANAN-PEMERIKSAAN-KESEHATAN', '<p>&nbsp;</p>\r\n\r\n<p style=\"margin: 16px 0px; line-height: 15pt;\"><span lang=\"EN-US\" style=\"color:black; font-size:14pt; margin:0px\"><font face=\"Times New Roman\">Pemerintah Skypiea menggelar sosialisasi layanan pemeriksaan kesehatan atau medical check up (MCU) di luar program Jaminan Kesehatan Nasional (JKN) bagi seluruh masyarakat Skypiea.</font></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"margin: 16px 0px; line-height: 15pt;\"><span lang=\"EN-US\" style=\"color:black; font-size:14pt; margin:0px\"><font face=\"Times New Roman\">Sosialisasi diikuti oleh ratusan masyarakat Skypiea, serta perwakilan dari Badan Penyelenggara Jaminan Sosial (BPJS) Kesehatan.</font></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"margin: 16px 0px; line-height: 15pt;\"><span lang=\"EN-US\" style=\"color:black; font-size:14pt; margin:0px\"><font face=\"Times New Roman\">Asisten Kesejahteraan Rakyat Setdaprov Skypiea, Imam Prabowo mengatakan, sasaran medical check up ini adalah seluruh masyarakat melalui usulan kepada Dinas Kesehatan.</font></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"margin: 16px 0px; line-height: 15pt;\"><span lang=\"EN-US\" style=\"color:black; font-size:14pt; margin:0px\"><font face=\"Times New Roman\">Imam meminta, Kepgub 1429 Tahun 2018 betul-betul diimplementasikan dan direalisasikan oleh seluruh jajaran terkait. Sehingga, adanya Kepgub tersebut dapat dirasakan langsung manfaatnya oleh masyarakat.</font></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"margin: 16px 0px; line-height: 15pt;\"><span lang=\"EN-US\" style=\"color:black; font-size:14pt; margin:0px\"><font face=\"Times New Roman\">&quot;Lakukan pendataan dengan baik, target yang menjadi sasaran dalam Kepgub itu harus terealisasikan. Sampaikan, mereka bisa mendapatkan layanan medical check up yang memadai dan gratis meski tidak ter-cover oleh BPJS Kesehatan,&quot; tandasnya. </font></span></p>\r\n\r\n<p><span style=\"display:none\">&nbsp;</span>&nbsp;</p>\r\n', 'berita1.jpg', '2018-11-02 01:06:43'),
(2, 4, 3, 'JATUHNYA PESAWAT SINGA AIR SKYPEA YANG MEMBAWA 150 PENUMPANG', 'JATUHNYA-PESAWAT-SINGA-AIR-SKYPEA-YANG-MEMBAWA-150-PENUMPANG', '<p>&nbsp;</p>\r\n\r\n<p style=\"margin: 0px 0px 10.66px;\"><span lang=\"EN-US\" style=\"font-size:14pt; line-height:107%; margin:0px\"><font color=\"#000000\" face=\"calibri\">Pada sabtu tepatnya pada tanggal 3 November 2018 pesawat Singa Air yang membawa 150 penumpang skypiea menuju pulau jaya telah jatuh pada perairan skypiea.</font></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"margin: 0px 0px 10.66px;\"><span lang=\"EN-US\" style=\"font-size:14pt; line-height:107%; margin:0px\"><font color=\"#000000\" face=\"calibri\">Menurut Badan Penerbangan Skypiea (BPS) pesawat singa air terjatuh karena kehilangan kendali akibat cuaca yang sangat buruk, dan menghantam perairan laut.</font></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"margin: 0px 0px 10.66px;\"><span lang=\"EN-US\" style=\"font-size:14pt; line-height:107%; margin:0px\"><font color=\"#000000\" face=\"calibri\">Ketua BPS, Imam Haris mengatakan, telah ditemukan korban sejumlah 100 orang diantaranya ada 5 balita dan sisanya orang dewasa yang sudah tidak bernyawa.</font></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"margin: 0px 0px 10.66px;\"><span lang=\"EN-US\" style=\"font-size:14pt; line-height:107%; margin:0px\"><font color=\"#000000\" face=\"calibri\">Haris meminta agar pencarian pesawat singa air dapat terus dilakukan hingga semua korban ditemukan, dan berharap bantuan lebih dari pemerintah.</font></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"margin: 0px 0px 10.66px;\"><span lang=\"EN-US\" style=\"font-size:14pt; line-height:107%; margin:0px\"><font color=\"#000000\" face=\"calibri\">&ldquo;Blackbox telah ditemukan, dan kita bisa mengetahui apa penyebab jatuhnya pesawat singa air. para keluarga korban berduka cita, alangkah baiknya jika pencarian dipercepat agar keluarga yang ditinggalkan tidak sedih dan tidak cemas.&rdquo;</font></span></p>\r\n\r\n<p><span style=\"display:none\">&nbsp;</span>&nbsp;</p>\r\n', 'berita2.jpg', '2018-11-02 01:07:38'),
(7, 4, 3, 'BMKG PREDIKSI HUJAN DERAS MENGGUYUR SKYPEA', 'BMKG-PREDIKSI-HUJAN-DERAS-MENGGUYUR-SKYPEA', '<p>&nbsp;</p>\r\n\r\n<p style=\"margin-top:0cm;margin-right:0cm;margin-bottom:7.5pt;margin-left:0cm;\r\ntext-align:justify\"><span lang=\"EN-US\" style=\"color:#333333; font-size:14pt; margin:0px\"><font face=\"Times New Roman\">Kondisi cuaca sebagian wilayah Skypiea diprediksi akan dilanda hujan deras hingga angin kencang mulai siang hari. Diharapkan warga waspada terhadap perubahan cuaca.</font></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"margin-top:0cm;margin-right:0cm;margin-bottom:7.5pt;margin-left:0cm;\r\ntext-align:justify\"><span lang=\"EN-US\" style=\"color:#333333; font-size:14pt; margin:0px\"><font face=\"Times New Roman\">&quot;Pagi hari cerah berawan,&quot; kata Aan Sanova Kepala Bagian Hubungan Masyarakat BMKG Skypiea, Kamis 14 Februari.</font></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"margin-top:0cm;margin-right:0cm;margin-bottom:7.5pt;margin-left:0cm;\r\ntext-align:justify\"><span lang=\"EN-US\" style=\"color:#333333; font-size:14pt; margin:0px\"><font face=\"Times New Roman\">Siang hari umumnya berawan. Kemudian diikuti hujan ringan. Kemudian hujan deras yang diprediksi mengguyur Skypiea Barat, Skypiea Selatan dan Skypiea Utara. Malam hari Angin kencang akan turun di Skypiea Barat, Skypiea Pusat.</font></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"margin-top:0cm;margin-right:0cm;margin-bottom:7.5pt;margin-left:0cm;\r\ntext-align:justify\"><span lang=\"EN-US\" style=\"color:#333333; font-size:14pt; margin:0px\"><font face=\"Times New Roman\">&quot;Dini hari berawan hitam. Hujan deras di Kepulauan G-8,&quot; tandasnya.&nbsp;</font></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"margin-top:0cm;margin-right:0cm;margin-bottom:7.5pt;margin-left:0cm;\r\ntext-align:justify\"><span lang=\"EN-US\" style=\"color:#333333; font-size:14pt; margin:0px\"><font face=\"Times New Roman\">Suhu udara 24 hingga 33 derajat celcius, kelembaban udara 65 sampai 95 persen. Kecepatan angin Timur Laut - Selatan, lima hingga 25 kilometer per jam.</font></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"margin-top:0cm;margin-right:0cm;margin-bottom:7.5pt;margin-left:0cm;\r\ntext-align:justify\"><span lang=\"EN-US\" style=\"color:#333333; font-size:14pt; margin:0px\"><font face=\"Times New Roman\">Dihimbau untuk semua masyarakat agar berhati-hati jika ingin bepergian keluar, cuaca yang tidak bersahabat akan menyebabkan penyakit mudah menyerang dan menyebabkan rusaknya rumah rumah akibat angin kencang, Ujar Aan.</font></span></p>\r\n\r\n<p><span style=\"display:none\">&nbsp;</span>&nbsp;</p>\r\n', 'Tips-Promosi-Konser-Musik.jpg', '2018-11-02 01:20:13'),
(9, 4, 3, 'REKAYASA LALIN JL IMAM BONJOL EFEKTIF URAI KEMACETAN', 'REKAYASA-LALIN-JL-IMAM-BONJOL-EFEKTIF-URAI-KEMACETAN', '<p><span lang=\"EN-US\" style=\"color:#333333; font-size:14pt; margin:0px\"><font face=\"Times New Roman\">Rekayasa lalu lintas (Lalin) dengan sistem satu arah di Jl Imam Bonjol arah Ryacudu menuju Kalideres Baru yang dilakukan oleh Suku Dinas (Sudin) Perhubungan Skypiea Selatan dinilai efektif mengurai kemacetan.</font></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"margin:0cm;margin-bottom:.0001pt;text-align:justify\"><em><span lang=\"EN-US\" style=\"color:#333333; font-size:14pt; margin:0px\">&quot;Rekayasa Lalin dengan sistem satu arah ini dilakukan sejak Jumat (5/10) lalu dari pukul 06.00 sampai 10.00 dan dinilai efektif mengurai kemacetan di wilayah itu &quot;</span></em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"margin-top:0cm;margin-right:0cm;margin-bottom:7.5pt;margin-left:0cm;\r\ntext-align:justify\"><span lang=\"EN-US\" style=\"color:#333333; font-size:14pt; margin:0px\"><font face=\"Times New Roman\">&quot;Rekayasa Lalin dengan sistem satu arah ini dilakukan sejak Jumat (5/10) lalu dari pukul 06.00 sampai 10.00 dan dinilai efektif mengurai kemacetan di wilayah itu,&quot; ujar Prabowo, Kepala Suku Dinas Perhubungan Jakarta Selatan, Jumat.</font></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"margin-top:0cm;margin-right:0cm;margin-bottom:7.5pt;margin-left:0cm;\r\ntext-align:justify\"><span lang=\"EN-US\" style=\"color:#333333; font-size:14pt; margin:0px\"><font face=\"Times New Roman\">Ditambahkan Prabowo, rekayasa Lalin dengan sistem satu arah yang dilakukan dengan menutup dua putaran tersebut juga berpengaruh dalam mengurai kemacetan di Jl Ryacudu Dalam menuju Kalideres Baru.</font></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"margin-top:0cm;margin-right:0cm;margin-bottom:7.5pt;margin-left:0cm;\r\ntext-align:justify\"><span lang=\"EN-US\" style=\"color:#333333; font-size:14pt; margin:0px\"><font face=\"Times New Roman\">&quot;Hanya saja menjelang </font><em><span style=\"margin:0px\">ramp on</span></em><font face=\"Times New Roman\">&nbsp;Jalan Layang Non Tol (JLNT) Imam Bonjol pada waktu diberlakukan </font><em><span style=\"margin:0px\">contra flow</span></em><font face=\"Times New Roman\">&nbsp;karena akses menuju JLNT terlalu sempit, akan tetapi kita telah melakukan koordinasi dengan Pengelola Tol Desari untuk memotong separator sepanjang 30 meter agar akses ke JLNT menjadi lebih lebar,&quot; tandasnya.</font></span></p>\r\n\r\n<p><span style=\"display:none\">&nbsp;</span>&nbsp;</p>\r\n', 'berita5.jpg', '2018-11-02 01:25:06'),
(10, 4, 3, 'INDAHNYA WISATA PAHAWANG DI SKYPEA', 'INDAHNYA-WISATA-PAHAWANG-DI-SKYPEA', '<p>&nbsp;</p>\r\n\r\n<p style=\"margin-top:0cm;margin-right:0cm;margin-bottom:7.5pt;margin-left:0cm;\r\ntext-align:justify\"><span lang=\"EN-US\" style=\"color:#333333; font-size:14pt; margin:0px\"><font face=\"Times New Roman\">Skypiea terkenal dengan keindahan alamnya. Salah satunya adalah wisata pahawang yaitu wisata pulau rahasia untuk para wisatawan yang ingin merefreshingkan pikirannya, yang berada di Skypiea Utara.</font></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"margin-top:0cm;margin-right:0cm;margin-bottom:7.5pt;margin-left:0cm;\r\ntext-align:justify\"><span lang=\"EN-US\" style=\"color:#333333; font-size:14pt; margin:0px\"><font face=\"Times New Roman\">Wisata ini baru saja diresmikan pada selasa kemarin, pemerintah Skypiea pun mendukung dengan memfasilitasi wisata tersebut.</font></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"margin-top:0cm;margin-right:0cm;margin-bottom:7.5pt;margin-left:0cm;\r\ntext-align:justify\"><span lang=\"EN-US\" style=\"color:#333333; font-size:14pt; margin:0px\"><font face=\"Times New Roman\">&ldquo;ini adalah salah satu kekayaan di Skypiea, kita harus menjaganya bersama agar tetap terjaga keasrian alam tersebut, dan pemerintah telah memfasilitasi wisata tersebut&rdquo;. Kata Reza Antika Badan Pariwisata Nasional Skypiea (BPNS).</font></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"margin-top:0cm;margin-right:0cm;margin-bottom:7.5pt;margin-left:0cm;\r\ntext-align:justify\"><span lang=\"EN-US\" style=\"color:#333333; font-size:14pt; margin:0px\"><font face=\"Times New Roman\">Masih banyak lagi kekayaan alam yang ada di Skypiea, dan ini merupakan pemasukan dana tersendiri bagi pemerintah Skypiea dimana para turis dari luar negeri akan berdatangan untuk menikmati liburan bersama pasangan ataupun keluarga di tempat wisata terindah Skypiea.</font></span></p>\r\n\r\n<p><span style=\"display:none\">&nbsp;</span>&nbsp;</p>\r\n', 'berita6.jpg', '2018-11-02 01:25:54'),
(11, 4, 3, 'PERESMIAN PORTAL RESMI DAERAH SKYPEA', 'PERESMIAN-PORTAL-RESMI-DAERAH-SKYPEA', '<p><span style=\"-webkit-text-stroke-width:0px; background-color:transparent; color:#4c4c4c; display:inline !important; float:none; font-family:&quot;Arimo&quot;,sans-serif; font-size-adjust:none; font-size:14.66px; font-stretch:100%; font-style:normal; font-variant:normal; font-weight:400; letter-spacing:normal; line-height:25.66px; orphans:2; text-align:left; text-decoration:none; text-indent:0px; text-transform:none; white-space:normal; word-spacing:0px\">Presiden Hamzah Assyarif Meresmikan Portal Resmi Pemerintahan Daerah Skypea,&nbsp;</span></p>\r\n\r\n<p>Agenda ini berlangsung sangat khidmat dan penuh sukacita, dikarenakan sekarang masyarakat skypea lebih mudah untuk mengakses dan mendapatkan</p>\r\n\r\n<p>layanan lebih mudah kepada pemerintahan skypea</p>\r\n', 'fotohamzah.png', '2018-11-02 01:33:48'),
(12, 4, 3, 'AJUDAN BARU PRESIDEN SKYPEA', 'AJUDAN-BARU-PRESIDEN-SKYPEA', '<p>Ajudan baru yang telah lolos seleksi bulan lalu, hari ini telah resmi dilantik oleh sekertaris Jendral Aan Sanova,</p>\r\n\r\n<p>kabarnya, seluruh ajudan yang sudah dilantik sudah mulai bekerja pada senin depan,</p>\r\n\r\n<p>fasilitas yang didapat para ajudan ternyata sangat banyak, yang bertujuan untuk mengamankan presiden</p>\r\n', 'pic05.png', '2018-11-02 01:37:48'),
(13, 4, 3, 'KONSER AMAL SKYPEA', 'KONSER-AMAL-SKYPEA', '<p>Konser yang berlangsung di Skypea Barat, Minggu lalu sangat meriah dan mengundang banyak sekali donatur.</p>\r\n\r\n<p>tujuan dilakukannya konser minggu lalu tak lain adalah untuk pengumpulan donasi untuk masyarakat skypea yang telah terkena musibah bulan lalu yaitu bencana banjir di skypea bagian timur,</p>\r\n\r\n<p>telah tercatat lebih dari 1 trilliyun dana yang terkumpul untuk memperbaiki perumahan dan tempat-tempat penting disana.</p>\r\n', 'pic06.png', '2018-11-02 01:41:13');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `zipcode` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `register_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `zipcode`, `email`, `username`, `password`, `register_date`) VALUES
(1, 'Brad Traversy', '01913', 'brad@gmail.com', 'brad', 'e10adc3949ba59abbe56e057f20f883e', '2017-04-10 13:14:31'),
(2, 'John Doe', '90210', 'jdoe@gmail.com', 'john', 'e10adc3949ba59abbe56e057f20f883e', '2017-04-10 14:12:14'),
(3, 'a', 'a', 'a@gmail.com', 'a', '0cc175b9c0f1b6a831c399e269772661', '2018-10-21 10:02:50'),
(4, 'zul', 'zul', 'zul@gmail.com', 'zul', '1cf440e0df367e8a74becfa88ba0595a', '2018-10-24 02:27:46'),
(5, 'imam', '111', 'imam@gmail.com', 'imam', 'eaccb8ea6090a40a98aa28c071810371', '2018-10-31 08:43:24'),
(6, 'putra', '111', 'putra@gmail.com', 'putra', '5e0c5a0bf82decdd43b2150b622c66c5', '2018-11-01 03:55:48');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
