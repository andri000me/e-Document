-- MariaDB dump 10.17  Distrib 10.4.11-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: siidola.cimahikota.go.id
-- ------------------------------------------------------
-- Server version	10.4.10-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `dk_bidang`
--

DROP TABLE IF EXISTS `dk_bidang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dk_bidang` (
  `ID_BIDANG` int(122) unsigned NOT NULL AUTO_INCREMENT,
  `NAMA_BIDANG` varchar(250) DEFAULT NULL,
  `STATUS` varchar(80) NOT NULL,
  PRIMARY KEY (`ID_BIDANG`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dk_bidang`
--

LOCK TABLES `dk_bidang` WRITE;
/*!40000 ALTER TABLE `dk_bidang` DISABLE KEYS */;
INSERT INTO `dk_bidang` VALUES (1,'Sekretariat','active'),(2,'Pelayanan dan Sumber Daya Kesehatan','active'),(3,'Kesehatan Masyarakat','active'),(4,'P2P','active');
/*!40000 ALTER TABLE `dk_bidang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dk_jabatan`
--

DROP TABLE IF EXISTS `dk_jabatan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dk_jabatan` (
  `ID_JABATAN` int(122) unsigned NOT NULL AUTO_INCREMENT,
  `nama_jabatan` varchar(250) DEFAULT NULL,
  `STATUS` varchar(80) NOT NULL,
  `dateadded` timestamp NOT NULL DEFAULT current_timestamp(),
  `share_to` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID_JABATAN`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dk_jabatan`
--

LOCK TABLES `dk_jabatan` WRITE;
/*!40000 ALTER TABLE `dk_jabatan` DISABLE KEYS */;
INSERT INTO `dk_jabatan` VALUES (1,'Kepala Dinas','AKTIF','2020-09-03 07:05:05',NULL),(2,'Sekretaris Dinas','AKTIF','2020-03-10 07:20:44',NULL),(3,'Kasubag Progsi','AKTIF','2020-03-10 07:20:44',NULL),(4,'Kabid. P2P','AKTIF','2020-03-10 07:20:44',NULL),(5,'Kasie. PTM','AKTIF','2020-03-10 07:20:44',NULL),(6,'Ka. TU','AKTIF','2020-09-03 07:05:19',NULL);
/*!40000 ALTER TABLE `dk_jabatan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dk_kategori`
--

DROP TABLE IF EXISTS `dk_kategori`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dk_kategori` (
  `ID_KATEGORI` int(11) NOT NULL AUTO_INCREMENT,
  `NAMA_KATEGORI` varchar(80) NOT NULL,
  `JENIS` varchar(80) NOT NULL,
  `STATUS` varchar(80) NOT NULL,
  `dateadded` timestamp NOT NULL DEFAULT current_timestamp(),
  `id_seksi` int(3) NOT NULL,
  `kode_idx` varchar(255) DEFAULT NULL,
  `kode` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `id_kelompok` int(3) NOT NULL,
  PRIMARY KEY (`ID_KATEGORI`)
) ENGINE=InnoDB AUTO_INCREMENT=245 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dk_kategori`
--

LOCK TABLES `dk_kategori` WRITE;
/*!40000 ALTER TABLE `dk_kategori` DISABLE KEYS */;
INSERT INTO `dk_kategori` VALUES (1,'Laporan Capaian SPM','','active','2020-03-10 07:20:17',1,'SPM','AD6','5',1),(2,'Laporan Realisasi Fisik Keuangan','','active','2020-03-10 07:20:17',1,'RFK','AD25','5',1),(3,'LAKIP Dinas Kesehatan','','inactive','2020-03-10 07:20:17',1,'LKIP','AD26','5',1),(4,'Laporan Bumil 4T','','inactive','2020-03-10 07:20:17',6,'BML','AD27','5',2),(5,'Laporan Kematian IBU','','inactive','2020-03-10 07:20:17',6,'KIB','AD28','5',2),(6,'Laporan Kematian Bayi','','inactive','2020-03-10 07:20:17',6,'KBI','AD29','5',2),(7,'Laporan Bumil dan Risti','','inactive','2020-03-10 07:20:17',6,'\\N','AD30','5',2),(8,'Laporan Imunisasi Dasar Lengkap','','inactive','2020-03-10 07:20:17',11,'\\N','AD31','5',2),(9,'Laporan DBD','','inactive','2020-03-10 07:20:17',10,'\\N','AD32','5',2),(10,'Laporan Kasus Malaria','','inactive','2020-03-10 07:20:17',10,'\\N','AD33','5',2),(11,'Laporan Sasaran Imunisasi Lengkap','','inactive','2020-03-10 07:20:17',11,'\\N','AD34','5',2),(12,'Peserta JKN PBI','','inactive','2020-03-10 07:20:17',3,'\\N','AD35','5',2),(13,'Laboratorium','','inactive','2020-03-10 07:20:17',3,'\\N','AD23','5',2),(14,'Laporan BOK Tahunan','','active','2020-03-10 07:20:17',6,'\\N','AD22','5',2),(15,'Renja Puskesmas','','inactive','2020-03-10 07:20:17',1,'\\N','AD21','5',1),(16,'Laporan Penilaian Kinerja Kegiatan (PKK)','','inactive','2020-03-10 07:20:17',1,'\\N','AD20','5',1),(17,'Laporan Realisasi Dana Alokasi Khusus','','inactive','2020-03-10 07:20:17',1,'\\N','AD19','5',1),(18,'Laporan Kegiatan Tahunan dari Bidang dan Puskesmas','','inactive','2020-03-10 07:20:17',1,'\\N','AD18','5',1),(19,'Laporan Monev Renja Tahunan','','inactive','2020-03-10 07:20:17',1,'\\N','AD17','5',1),(21,'Laporan LB 1','','active','2020-03-17 12:59:49',20,'\\N','AD1','5',2),(22,'Laporan Bulanan Data Pegawai','','inactive','2020-03-17 13:39:12',2,'\\N','AD10','5',1),(23,'Laporan Monev Renja Triwulan I','','inactive','2020-04-03 03:43:51',1,'\\N','AD11','5',1),(24,'Laporan Monev Renja Triwulan II','','inactive','2020-04-03 03:44:17',1,'\\N','AD12','5',1),(25,'Laporan Monev Renja Triwulan III','','inactive','2020-04-03 03:44:43',1,'\\N','AD13','5',1),(26,'Laporan Monev Renja Triwulan IV','','inactive','2020-04-03 03:45:19',1,'\\N','AD14','5',1),(27,'Pemanfaatan BOK','','active','2020-04-03 03:45:36',1,'\\N','AD15','5',1),(28,'Laporan SPM Tahunan Puskesmas','','inactive','2020-04-03 03:47:02',1,'\\N','AD24','5',1),(29,'Laporan JKN Tahunan','','inactive','2020-04-03 03:47:39',3,'\\N','AD16','5',1),(31,'Rekap Deteksi Dini Kangker Payudara & Leher Rahim','','inactive','2020-06-10 03:38:52',9,'\\N','AA11','5',2),(32,'Fpr. Register Deteksi Dini kangker Payudara','','inactive','2020-06-10 03:42:27',9,'\\N','AA12','5',2),(33,'Form Rekap Pengukuran Tekanan Darah','','inactive','2020-06-10 03:44:13',0,'\\N','AA13','5',2),(34,'Rekap Obesitas','','inactive','2020-06-10 03:44:41',0,'\\N','AA14','5',2),(35,'LB1 PTM','','inactive','2020-06-10 03:44:59',0,'\\N','AA15','5',2),(36,'Rek. Faktor Resiko PTM','','inactive','2020-06-10 03:45:04',0,'\\N','AA16','5',2),(37,'Data Kasus Baru PTM','','inactive','2020-06-10 03:45:16',0,'\\N','AA17','5',2),(38,'Rekap FRPJD Menurut JK + Umur','','inactive','2020-06-10 03:45:26',0,'\\N','AA18','5',2),(39,'For Penc dan Pelaporan RBM','','inactive','2020-06-10 03:45:36',0,'\\N','AA19','5',2),(40,'Lap. Bul ISPA','','inactive','2020-06-10 03:48:16',0,'\\N','AA21','5',2),(41,'Lap. Bul Peny. Ggg. Pernapasan PAL','','inactive','2020-06-10 03:48:59',0,'\\N','AA22','5',2),(42,'Lab. Bul Diare','','inactive','2020-06-10 03:49:14',0,'\\N','AA23','5',2),(43,'Data Kasus DBD','','inactive','2020-06-10 03:51:12',0,'\\N','AA24','5',2),(44,'Lap. Hepatitis','','inactive','2020-06-10 03:49:38',0,'\\N','AA25','5',2),(45,'P2P Kusta','','inactive','2020-06-10 03:49:57',0,'\\N','AA26','5',2),(46,'Lap TB Paru','','inactive','2020-06-10 03:50:07',0,'\\N','AA27','5',2),(47,'Lap. Bul Konseling, dan Tesr HIV Sukarela','','inactive','2020-06-10 03:53:47',0,'\\N','AA31','5',2),(48,'Lap. Data individu TIPK','','inactive','2020-06-10 03:54:15',0,'\\N','AA32','5',2),(49,'Lap. Bul IMS','','inactive','2020-06-10 03:54:25',0,'\\N','AA33','5',2),(50,'Lap. Data individu PITC','','inactive','2020-06-10 03:54:36',0,'\\N','AA34','5',2),(51,'Lap. Bul PITC','','inactive','2020-06-10 03:54:46',0,'\\N','AA35','5',2),(52,'Survialance Terpadu Penyakit Berbasis Pkm','','inactive','2020-06-10 03:56:06',0,'\\N','AA41','5',2),(53,'Survialance Terpadu Penyakit Berbasis KLB','','inactive','2020-06-10 03:56:16',0,'\\N','AA42','5',2),(54,'Lembar Surv. Epidemiologi Campak','','inactive','2020-06-10 03:56:28',0,'\\N','AA42','5',2),(55,'Lab Bul Penemuan dan Pengobatan Malaria','','inactive','2020-06-10 03:56:37',0,'\\N','AA42','5',2),(56,'Rekap mingguan w2','','inactive','2020-06-10 03:56:45',0,'\\N','AA42','5',2),(57,'Lap. Bul Kasus Jiwa','','inactive','2020-06-10 04:01:58',0,'\\N','AA51','5',2),(58,'Lap. Org dgn Gangguan Jiwa Berat','','inactive','2020-06-10 04:02:11',0,'\\N','AA52','5',2),(59,'Lap. Kunj Pelayanan Kesehatan Jiwa di Puskesmas','','inactive','2020-06-10 04:02:22',0,'\\N','AA53','5',2),(60,'Lap. Pelayanan Kesehatan Jiwa Masyarakat','','inactive','2020-06-10 04:02:32',0,'\\N','AA54','5',2),(61,'Rekap Data Kasus Pasung','','inactive','2020-06-10 04:02:44',0,'\\N','AA55','5',2),(62,'LB1 JIWA','','inactive','2020-06-10 04:02:54',0,'\\N','AA56','5',2),(63,'LB3 Gizi','','inactive','2020-06-10 04:16:22',0,'\\N','AD2','5',2),(64,'LB3 P2P','','inactive','2020-06-10 04:17:01',0,'\\N','AD3','5',2),(65,'LB3 KIA','','inactive','2020-06-10 04:17:13',0,'\\N','AD4','5',2),(66,'LB4','','inactive','2020-06-10 04:17:19',0,'\\N','AD5','5',2),(67,'LAPORAN TAUNAN PKM','','inactive','2020-06-10 04:18:40',0,'\\N','AD36','5',1),(68,'Jmlh Murid SD/MI PKM','','inactive','2020-06-10 04:19:04',0,'\\N','AD37','5',1),(69,'Format Pencatatan dan Pelaporan RBM','','inactive','2020-06-10 04:19:12',0,'\\N','AD38','5',1),(70,'Daftar Pasien  Terapi ARV (acc mul)','','inactive','2020-06-10 04:20:49',0,'\\N','BA1','5',3),(71,'laporan ODHA','','inactive','2020-06-10 04:21:31',0,'\\N','BA2','5',3),(72,'Jumlah Kematian Penyakit Tidak Menular Menurut Jenis Kelamin dan Umur','','inactive','2020-06-10 04:21:45',0,'\\N','BA3','5',3),(73,'Penderita Diare Per Golongan Umur ','','inactive','2020-06-10 04:21:51',0,'\\N','BA4','5',3),(74,'Program P2 ISPA','','inactive','2020-06-10 04:22:01',0,'\\N','BA5','5',3),(75,'Laporan Infeksi Nosokomial','','inactive','2020-06-10 04:22:10',0,'\\N','BA6','5',3),(76,'RL 2b1 Surveilans','','inactive','2020-06-10 04:22:39',0,'\\N','BA7','5',3),(77,'Jumlah Kasus Diare','','inactive','2020-06-10 04:22:43',0,'\\N','BA8','5',3),(78,'Jumlah Kasus Pnemonia','','inactive','2020-06-10 04:22:52',0,'\\N','BA9','5',3),(79,'Jumlah Kasus Malaria','','inactive','2020-06-10 04:23:01',0,'\\N','BA10','5',3),(80,'Laporan DBD','','inactive','2020-06-10 04:23:09',0,'\\N','BA11','5',3),(81,'Lap. Penderita Kangker','','inactive','2020-06-10 04:23:17',0,'\\N','BA12','5',3),(82,'Laporan bulan maternal','','inactive','2020-06-10 04:23:26',0,'\\N','BA13','5',3),(83,'laporan bulan perinatal','','inactive','2020-06-10 04:23:34',0,'\\N','BA14','5',3),(84,'Laporan kematian neonatal (0-28)','','inactive','2020-06-10 04:23:42',0,'\\N','BA15','5',3),(85,'Laporan kesakitan dan kematian ibu','','inactive','2020-06-10 04:23:50',0,'\\N','BA16','5',3),(86,'Laporan kesakitan dan kematian bayi','','inactive','2020-06-10 04:23:57',0,'\\N','BA17','5',3),(87,'Laporan Kematian Ibu Melahirkan','','inactive','2020-06-10 04:24:05',0,'BA18','BA18','10',3);
/*!40000 ALTER TABLE `dk_kategori` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dk_kelompok`
--

DROP TABLE IF EXISTS `dk_kelompok`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dk_kelompok` (
  `ID_KELOMPOK` int(11) NOT NULL AUTO_INCREMENT,
  `NAMA_KELOMPOK` varchar(80) NOT NULL,
  `STATUS` varchar(80) NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`ID_KELOMPOK`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dk_kelompok`
--

LOCK TABLES `dk_kelompok` WRITE;
/*!40000 ALTER TABLE `dk_kelompok` DISABLE KEYS */;
INSERT INTO `dk_kelompok` VALUES (1,'PROGRAM DAN KINERJA','Active','2020-03-10 07:20:03'),(2,'DATA DAN INFORMASI ','Active','2020-03-10 07:20:03'),(3,'DATA RS','Active','2020-06-10 04:14:35'),(4,'DATA KLINIK','Active','2020-06-10 04:14:45');
/*!40000 ALTER TABLE `dk_kelompok` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dk_puskesmas`
--

DROP TABLE IF EXISTS `dk_puskesmas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dk_puskesmas` (
  `ID_PUSKESMAS` varchar(255) NOT NULL,
  `nama_puskesmas` varchar(100) DEFAULT NULL,
  `kode_puskesmas` varchar(100) DEFAULT NULL,
  `jenis` varchar(100) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `telepon` varchar(45) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID_PUSKESMAS`) USING BTREE,
  UNIQUE KEY `ID_PUSKESMAS` (`ID_PUSKESMAS`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dk_puskesmas`
--

LOCK TABLES `dk_puskesmas` WRITE;
/*!40000 ALTER TABLE `dk_puskesmas` DISABLE KEYS */;
INSERT INTO `dk_puskesmas` VALUES ('4621188b-f7b9-11ea-952e-179bc60eef89','DINAS KESEHATAN',NULL,NULL,'Jl. Raden Demang Hardjakusumah No.1, Cibabat, Kec. Cimahi Utara, Kota Cimahi, Jawa Barat 40132',NULL,'DINAS',NULL),('eb23cb33-edb2-11ea-b568-00e04c6800a9','CIMAHI SELATAN','P3277010201','Non Rawat Inap','Jl. Baros No. 16 Kel Utama, Kec. Cimahi Selatan','022-6629300','PKM','f13f37f1-edae-11ea-b568-00e04c6800a9'),('eb23cce3-edb2-11ea-b568-00e04c6800a9','MELONG ASIH','P3277010202','Non Rawat Inap','Jl. Melong Blok I No.1 Kel. Melong, Kec. Cimahi Selatan','022-6023833','PKM','1'),('eb23cd7e-edb2-11ea-b568-00e04c6800a9','CIBEUREUM','P3277010203','Non Rawat Inap','Jl. Raya Cibeureum No. 125 Blk Kel. Cibeureum, Kec. Cimahi Selatan','022-6075623','PKM','1'),('eb23cdd4-edb2-11ea-b568-00e04c6800a9','CIBEBER','P3277010204','Non Rawat Inap','Jl. Puri Fajar No.1 Kel. Cibeber, Kec. Cimahi Selatan','022-6628983','PKM','1'),('eb23ce28-edb2-11ea-b568-00e04c6800a9','LEUWIGAJAH','P3277010205','Non Rawat Inap','Jl. Kihapit Barat RT 8 RW 9 Kel. Leuwigajah, Kec. Cimahi Selatan                         \n                     \n                     \n                     \n                    ','(022) 6677649','PKM','1'),('eb23ce75-edb2-11ea-b568-00e04c6800a9','MELONG TENGAH','P3277010206','Non Rawat Inap','Jl. Melong Tengah RT 2 RW 4 Kel. Melong Kec. Cimahi Selatan','022-6004991','PKM','1'),('eb23cebf-edb2-11ea-b568-00e04c6800a9','CIMAHI TENGAH','P3277020201','Non Rawat Inap','Jl. Djulaeha Karmita No. 5 Kel. Cimahi, Kec. Cimahi Tengah','022-6630213','PKM','1'),('eb23cf09-edb2-11ea-b568-00e04c6800a9','CIGUGUR TENGAH','P3277020202','Non Rawat Inap','Jl. Abdul halim No. 199 Kel. Cigugur, Kec. Cimahi Tengah','022-6632343','PKM','1'),('eb23cf55-edb2-11ea-b568-00e04c6800a9','PADASUKA','P3277020203','Non Rawat Inap','Jl. Kebon Manggu Kel. Padasuka, Kec. Cimahi Tengah','022-6621701','PKM','1'),('eb23cfc2-edb2-11ea-b568-00e04c6800a9','CIMAHI UTARA','P3277030201','Non Rawat Inap','Jl. Serut No.16 Kel.Cibabat, Kec. Cimahi Utara','022-6631547','PKM','1'),('eb23d02f-edb2-11ea-b568-00e04c6800a9','CIPAGERAN','P3277030202','Non Rawat Inap','Jl. Bobojong No. 148 Kel. Cipageran, Kec. Cimahi Utara                         \n                     \n                     \n                    ','022-6627698','PKM','1'),('eb23d081-edb2-11ea-b568-00e04c6800a9','PASIRKALIKI','P3277030203','Non Rawat Inap','Jl. Cidamar, Kel. Pasir Kaliki, Kec. Cimahi Utara                         \n                     \n                     \n                    ','022-2021935','PKM','1'),('eb23d0d3-edb2-11ea-b568-00e04c6800a9','CITEUREUP','P3277030204','Non Rawat Inap','Kel. Citeureup, Kec. Cimahi Utara                      \n                     \n                     \n                     \n                     \n                    ','022 - 6628983	','PKM','1');
/*!40000 ALTER TABLE `dk_puskesmas` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `auto_insert_id_pkm` BEFORE INSERT ON `dk_puskesmas` FOR EACH ROW BEGIN

set new.ID_PUSKESMAS=uuid();

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `dk_seksi`
--

DROP TABLE IF EXISTS `dk_seksi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dk_seksi` (
  `ID_SEKSI` int(11) NOT NULL AUTO_INCREMENT,
  `NAMA_SEKSI` varchar(80) NOT NULL,
  `NAMA_BIDANG` varchar(80) NOT NULL,
  `id_kelompok` int(3) NOT NULL,
  `STATUS` varchar(80) CHARACTER SET utf8 NOT NULL,
  `id_bidang` int(3) NOT NULL,
  PRIMARY KEY (`ID_SEKSI`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dk_seksi`
--

LOCK TABLES `dk_seksi` WRITE;
/*!40000 ALTER TABLE `dk_seksi` DISABLE KEYS */;
INSERT INTO `dk_seksi` VALUES (1,'Sub Bag Program dan Informasi','Sekretariat',1,'aktif',1),(2,'Sub Bag Keuangan, Umum dan Kepegawaian','Sekretariat',1,'tidak aktif',1),(3,'Seksi Pelayanan dan Pembiayaan Kesehatan','Bidang SDK',2,'tidak aktif',2),(4,'Seksi SDMK','Bidang SDK',2,'tidak aktif',2),(5,'Seksi Farmaalkes','Bidang SDK',2,'tidak aktif',2),(6,'Seksi Kesga Gizi','Bidang Kesmas',2,'tidak aktif',3),(7,'Seksi Promosi dan Pemberdayaan Kesehatan','Bidang Kesmas',2,'tidak aktif',1),(8,'Seksi Kesehatan Lingkungan','Bidang Kesmas',2,'tidak aktif',3),(9,'Seksi PTM','Bidang P2P',2,'tidak aktif',4),(10,'Seksi Penyakit Menular','Bidang P2P',2,'tidak aktif',4),(11,'Seksi Surveilans','Bidang P2P',2,'tidak aktif',1),(26,'Seksi IT Support','Progsi',2,'Aktif',0);
/*!40000 ALTER TABLE `dk_seksi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document_table`
--

DROP TABLE IF EXISTS `document_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `document_table` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_document` varchar(255) DEFAULT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `file_type` varchar(32) DEFAULT NULL,
  `file_size` varchar(64) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `catatan_perbaikan` text DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `id_user` varchar(128) DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL,
  `upload_date` datetime DEFAULT NULL,
  `updatedby` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`),
  KEY `id_document` (`id_document`),
  KEY `document_name` (`file_name`)
) ENGINE=MyISAM AUTO_INCREMENT=545 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document_table`
--

LOCK TABLES `document_table` WRITE;
/*!40000 ALTER TABLE `document_table` DISABLE KEYS */;
INSERT INTO `document_table` VALUES (426,'830808816','830808816_LaPORAN_lb_1_oKTOBER_2020.pdf','.pdf','599.41',NULL,NULL,'2020-11-02 03:21:01',NULL,'76ec416b-fe08-11ea-8e39-40f2e99f5ba5','1','2020-11-02 00:00:00',NULL),(422,'1404669277','1404669277_Isian_Rekap_Monev_Renja_2020.xlsx','.xlsx','54.18',NULL,NULL,'2020-10-05 09:06:08',NULL,'76ec6f8d-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-05 00:00:00',NULL),(423,'658316935','658316935_analisis_SPM_sept_2020.xlsx','.xlsx','11.76','Format analisis belum dipisahkan antara masalah, penyebab masalah dan rencana tindak lanjut',NULL,'2020-10-05 09:08:38','2020-10-06 07:24:00','76ec6f8d-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-05 00:00:00',NULL),(424,'1364760989','1364760989_SPM_September_2020.pdf','.pdf','272.53',NULL,NULL,'2020-10-07 00:09:35',NULL,'76ec416b-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-07 00:00:00',NULL),(425,'1364760989','1364760989_SPM_September_2020.xlsx','.xlsx','82.9',NULL,NULL,'2020-10-07 00:09:35',NULL,'76ec416b-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-07 00:00:00',NULL),(421,'1404669277','1404669277_4__PKK_SEPT_2020.xlsx','.xlsx','13.45','Untuk indikator keluaran dan hasil mohon mencantumkan angka absolutnya pada kolom keterangan (pembilang dan pembagi)',NULL,'2020-10-05 09:06:08','2020-10-19 01:19:25','76ec6f8d-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-05 00:00:00',NULL),(415,'1254081359','1254081359_Surat_Pengantar_Laporan_-_PKM_Padasuka.jpg','.jpg','260.5',NULL,NULL,'2020-10-05 08:56:23',NULL,'76ec4bc7-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-05 00:00:00',NULL),(416,'1254081359','1254081359_SPM_September_2020_-_PKM_Padasuka.xlsx','.xlsx','15.68','- Format laporan SPM telah sesuai\n- Analisis untuk masalah dan penyebab dari setiap indikator SPM dibuat kolom terpisah, tidak digabungkan','Revisi Lap. SPM Puskesmas Padasuka Kota Cimahi','2020-10-05 08:56:23','2020-10-07 06:57:18','76ec4bc7-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-05 00:00:00',NULL),(417,'1863951957','1863951957_Surat_Pengantar_Laporan_-_PKM_Padasuka.jpg','.jpg','260.5',NULL,NULL,'2020-10-05 08:57:40',NULL,'76ec4bc7-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-05 00:00:00',NULL),(418,'1863951957','1863951957_Kunjungan_JKN_(Kontak_rate_JKN_2020)_-_PKM_Padasuka_(1).xlsx','.xlsx','11.24',NULL,NULL,'2020-10-05 08:57:40',NULL,'76ec4bc7-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-05 00:00:00',NULL),(414,'107552684','107552684_7__KUNJUNGAN_SEPT_2020.xls','.xls','148.5',NULL,NULL,'2020-10-05 08:01:22',NULL,'76ec6f8d-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-05 00:00:00',NULL),(413,'614101206','614101206_6__lAPORAN_JKN_SEPT_2020.xlsx','.xlsx','32.07',NULL,NULL,'2020-10-05 08:00:58',NULL,'76ec6f8d-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-05 00:00:00',NULL),(412,'117823034','117823034_5__LB_1_SEPTEMBER_2020.xls','.xls','176.5',NULL,NULL,'2020-10-05 07:58:53',NULL,'76ec6f8d-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-05 00:00:00',NULL),(411,'1404669277','1404669277_3__FISIK_SEPT_2020.xlsx','.xlsx','183.67','Mohon lampirkan laporan yang bulan September saja (sheet September)',NULL,'2020-10-05 07:57:27','2020-10-19 01:17:40','76ec6f8d-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-05 00:00:00',NULL),(408,'658316935','658316935_1__PELAPORAN_SPM_SEPT_2020.xlsx','.xlsx','37.21','Format laporan SPM telah  sesuai',NULL,'2020-10-05 07:53:06','2020-10-06 07:18:25','76ec6f8d-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-05 00:00:00',NULL),(409,'1765330325','1765330325_2__PEMANFAATAN_BOK_SEPT_2020.xlsx','.xlsx','140.08',NULL,NULL,'2020-10-05 07:56:10',NULL,'76ec6f8d-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-05 00:00:00',NULL),(410,'1765330325','1765330325_1__PELAPORAN_SPM_SEPT_2020.xlsx','.xlsx','37.21',NULL,NULL,'2020-10-05 07:56:10',NULL,'76ec6f8d-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-05 00:00:00',NULL),(407,'53673270','53673270_LAPORAN_SPM_PUSKESMAS_CIMAHI_SELATAN_SEPTEMBER_2020.xlsx','.xlsx','12.12','- Format laporan SPM sudah sesuai\n- Hasil capaian bulan sebelumnya (Agustus) untuk indikator balita, DM dan TB belum sesuai dengan yg disampaikan ke dinas, mohon di konfirmasi dengan dinas\n- Analisis terhadap hasil capaian setiap indikator mencakup masalah, penyebab masalah dan rencana tindak lanjut belum dilampirkan',NULL,'2020-10-05 06:53:02','2020-10-05 07:55:37','76ec3c2e-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-05 00:00:00',NULL),(406,'53673270','53673270_SURAT_PENGANTAR.pdf','.pdf','198.32',NULL,NULL,'2020-10-05 06:53:02',NULL,'76ec3c2e-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-05 00:00:00',NULL),(405,'906057125','906057125_LAPORAN_KUNJUNGAN_PUSKESMAS_CIMAHI_SELATAN_SEPTEMBER_2020.xlsx','.xlsx','17.71',NULL,NULL,'2020-10-05 06:46:26',NULL,'76ec3c2e-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-05 00:00:00',NULL),(404,'906057125','906057125_SURAT_PENGANTAR.pdf','.pdf','198.32',NULL,NULL,'2020-10-05 06:46:26',NULL,'76ec3c2e-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-05 00:00:00',NULL),(402,'122267512','122267512_LAPORAN_LB_1_PUSKESMAS_CIMAHI_SELATAN_WILAYAH_UTAMA_SEPTEMBER_2020.xls','.xls','74.5',NULL,NULL,'2020-10-05 06:44:45',NULL,'76ec3c2e-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-05 00:00:00',NULL),(403,'122267512','122267512_LAPORAN_LB_1_PUSKESMAS_CIMAHI_SELATAN_LUAR_WILAYAH_SEPTEMBER_2020.xls','.xls','78.5',NULL,NULL,'2020-10-05 06:44:45',NULL,'76ec3c2e-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-05 00:00:00',NULL),(400,'122267512','122267512_LAPORAN_LB1_PUSKESMAS_CIMAHI_SELATAN_LUAR_WILAYAH_KOTA_CIMAHI_SEPTEMBER_2020.xls','.xls','46.5',NULL,NULL,'2020-10-05 06:44:45',NULL,'76ec3c2e-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-05 00:00:00',NULL),(401,'122267512','122267512_SURAT_PENGANTAR.pdf','.pdf','198.32',NULL,NULL,'2020-10-05 06:44:45',NULL,'76ec3c2e-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-05 00:00:00',NULL),(398,'529844574','529844574_SURAT_PENGANTAR.pdf','.pdf','198.32',NULL,NULL,'2020-10-05 06:41:57',NULL,'76ec3c2e-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-05 00:00:00',NULL),(399,'529844574','529844574_LAPORAN_PEMANFAATAN_BOK_PUSKESMAS_CIMAHI_SELATAN_SEPTEMBER_2020_EDIT_6_OKTOBER.xlsx','.xlsx','32.48','Format laporan pemanfaatan dana BOK sudah sesuai.\nJumlah realisasi bulan September terdapat selisih sebesar Rp. 5.775.000, mohon cek kembali dengan jumlah realisasi  sebelumnya.\nSetelah diperbaiki upload kembali file dalam bentu excel dan PDF yang sudah di cap dan ditandatangani.\n','LAPORAN PEMANFAATAN BOK PUSKESMAS CIMAHI SELATAN SEPTEMBER 2020','2020-10-05 06:41:57','2020-10-07 01:54:51','76ec3c2e-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-05 00:00:00',NULL),(397,'111230254','111230254_LAPORAN_FIISIK_KEUANGAN_PUSKESMAS_CIMAHI_SELATAN_SEPTEMBER_2020.xlsx','.xlsx','3161.03','Mohon mengisi kolom hambatan / kendala secara umum, mengapa realisasi masih dibawah target perencanaan (anggaran kas s.d bulan September)',NULL,'2020-10-05 06:39:43','2020-10-19 01:42:45','76ec3c2e-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-05 00:00:00',NULL),(396,'111230254','111230254_LAPORAN_PKK_PUSKESMAS_CIMAHI_SELATAN_TW_III_2020.xlsx','.xlsx','19.54','Untuk Triwulan  selanjutnya mohon menuliskan angka absolutnya pada indikator keluaran dan hasil  di kolom keterangan (pembilang dan penyebut).',NULL,'2020-10-05 06:39:43','2020-10-19 01:47:44','76ec3c2e-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-05 00:00:00',NULL),(395,'111230254','111230254_SURAT_PENGANTAR.pdf','.pdf','198.32',NULL,NULL,'2020-10-05 06:39:43',NULL,'76ec3c2e-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-05 00:00:00',NULL),(394,'111230254','111230254_LAPORAN_MONEV_PUSKESMAS_CIMAHI_SELATAN_TW_III_TAHUN_2020.xlsx','.xlsx','21.46',NULL,NULL,'2020-10-05 06:39:43',NULL,'76ec3c2e-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-05 00:00:00',NULL),(391,'524644017','524644017_lb_1_lUAR_kOTA.pdf','.pdf','407.34',NULL,NULL,'2020-10-05 05:57:52',NULL,'76ec416b-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-05 00:00:00',NULL),(393,'524644017','524644017_lb_1_lUAR_kOTA.xlsx','.xlsx','22.97',NULL,NULL,'2020-10-05 06:01:17',NULL,'76ec416b-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-05 00:00:00',NULL),(390,'524644017','524644017_lb1_DALAM_WILAYAH_SEPTEMBER1.pdf','.pdf','611.21',NULL,NULL,'2020-10-05 05:57:52',NULL,'76ec416b-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-05 00:00:00',NULL),(386,'544374648','544374648_Laporan_PKK_TW_III_2020.pdf','.pdf','18.63',NULL,NULL,'2020-10-05 05:48:26',NULL,'76ec416b-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-05 00:00:00',NULL),(389,'524644017','524644017_lb1_lUAR_WILAYAH_SEPTEMBER.xlsx','.xlsx','22.37',NULL,NULL,'2020-10-05 05:57:52',NULL,'76ec416b-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-05 00:00:00',NULL),(382,'669302177','669302177_Analisa_SPM_sept.docx','.docx','20.01',NULL,NULL,'2020-10-05 05:19:19',NULL,'76ec69a5-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-05 00:00:00',NULL),(383,'669302177','669302177_SPM.xlsx','.xlsx','37.46',NULL,NULL,'2020-10-05 05:19:19',NULL,'76ec69a5-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-05 00:00:00',NULL),(384,'918494671','918494671_LAPORAN_PBI_SEPTEMBER.xlsx','.xlsx','60.68',NULL,NULL,'2020-10-05 05:23:48',NULL,'76ec63d1-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-05 00:00:00',NULL),(385,'544374648','544374648_Laporan_PKK_TW_III_2020.xlsx','.xlsx','16.4','Angka pada kolom target dan realisasi dari indikator Keluaran dan Hasil seharusnya % (persentase) sesuai dengan indikator pada DPA.\nUntuk angka absolutnya (pembilang dan penyebut) bisa dicantumkan pada kolom keterangan saja',NULL,'2020-10-05 05:48:26','2020-10-19 02:22:29','76ec416b-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-05 00:00:00',NULL),(381,'669302177','669302177_surat_pengantar.pdf','.pdf','1443.96',NULL,NULL,'2020-10-05 05:19:19',NULL,'76ec69a5-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-05 00:00:00',NULL),(380,'802158377','802158377_REALISASI_JKN_2020_spt_2020.pdf','.pdf','558.82',NULL,NULL,'2020-10-05 05:16:12',NULL,'76ec416b-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-05 00:00:00',NULL),(379,'802158377','802158377_Data_Kunjungan_Bulan_september_2020.pdf','.pdf','475.97',NULL,NULL,'2020-10-05 05:15:03',NULL,'76ec416b-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-05 00:00:00',NULL),(378,'802158377','802158377_Data_Kunjungan_Bulan_september_2020.xlsx','.xlsx','13.77',NULL,NULL,'2020-10-05 05:15:03',NULL,'76ec416b-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-05 00:00:00',NULL),(376,'652056932','652056932_realisasi_fisik_keuangan_sept_20.pdf','.pdf','2273.58','File yang diupload hanya file realisasi bulan september, menggunakan format bulanan seperti biasa bukan berupa format gabungan rekapan. File yang diupload adalah berupa file excel dan PDF yang sudah di tandatangani dan dicap. \nJumlah pemanfaatan dana BOK ',NULL,'2020-10-05 05:12:53','2020-10-05 07:01:12','76ec66b1-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-05 00:00:00',NULL),(377,'833478747','833478747_img030.jpg','.jpg','595.41',NULL,NULL,'2020-10-05 05:14:14',NULL,'76ec416b-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-05 00:00:00',NULL),(374,'510068223','510068223_SPM_Bulan_September_PKM_Leuwigajah.pdf','.pdf','318.22','- Hasil capaian bulan sebelumnya (Agustus) sesuai dengan laporan dinas, laporan SPM Sept akan segera diinput dinas\n- Format laporan bentuk excel belum dilampirkan, beserta surat pengantar yg telah dittd kapus\n-Analisis untuk setiap indikator SPM mengenai masalah, penyebab masalah dan rencana tindak\n- Nomenclatur indikator TB sesuaikan dengan indikator TB dalam PMK 4/2019',NULL,'2020-10-05 05:09:26','2020-10-05 07:26:02','76ec66b1-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-05 00:00:00',NULL),(375,'1649774969','1649774969_Laporan_Realisasi_Fisik_Keuangan_dan_PKK_JKN_Bulan_September_2020_Puskesmas_Leuwigajah.pdf','.pdf','2503.45','Untuk bulan selanjutnya mohon mengisi kolom permasalahan/kendala secara umum, mengapa realisasi anggaran s.d Triwulan III masih dibawah target perencanaan (anggaran kas)',NULL,'2020-10-05 05:11:02','2020-10-19 01:52:17','76ec66b1-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-05 00:00:00',NULL),(372,'1824995961','1824995961_Laporan_Bulanan_Penyakit_(LB1)_(1).pdf','.pdf','3160.02','Format EXCEL saja seperti biasa, dalam wilayah, luar wilayah dan luar cimahi\nyang PDF hanya surat pengantar laporan',NULL,'2020-10-05 05:06:20','2020-10-06 02:54:54','76ec66b1-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-05 00:00:00',NULL),(366,'688201227','688201227_fisik_keuangan_2020_PKM_Cibeber_Bulan_September.pdf','.pdf','305.61','Mohon mengisi kolom permasalahan/hambatan secara umum, mengapa realisasi masih dibawah target perencanaan (anggaran kas s.d bulan September)',NULL,'2020-10-05 04:34:37','2020-10-19 02:10:47','76ec3918-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-05 00:00:00',NULL),(367,'1963581022','1963581022_Laporan_LRA_-_SEP_2020.xlsx','.xlsx','21.76',NULL,NULL,'2020-10-05 04:39:49',NULL,'76ec4921-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-05 00:00:00',NULL),(368,'1320865554','1320865554_Lap_Kunjungan_September_2020.pdf','.pdf','87.3',NULL,NULL,'2020-10-05 04:44:40',NULL,'76ec3918-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-05 00:00:00',NULL),(373,'1471111560','1471111560_Laporan_Kunjungan_Bulan_September_2020.pdf','.pdf','847.32',NULL,NULL,'2020-10-05 05:08:08',NULL,'76ec66b1-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-05 00:00:00',NULL),(370,'1320865554','1320865554_Lap__10_Penyakit_Terbanyak_September_2020.pdf','.pdf','76.85',NULL,NULL,'2020-10-05 04:44:40',NULL,'76ec3918-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-05 00:00:00',NULL),(363,'115795299','115795299_LAP_SPM_PKM_CT_SEP_2020.xlsx','.xlsx','50.46','- Hasil capaian bulan sebelumnya (Agustus) belum sesuai dengan yg dilaporkan ke dinas\n- Belum ada file analisis terhadap hasil capaian setiap indikator terkait masalah, penyebab masalah dan rencana tindak lanjut\n-',NULL,'2020-10-05 04:29:08','2020-10-05 09:48:05','76ec4921-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-05 00:00:00',NULL),(364,'688201227','688201227_Realisasi_fisik_dan_keuangan_BOK_September_2020_PKM_Cibeber_.pdf','.pdf','60.55',NULL,NULL,'2020-10-05 04:32:07',NULL,'76ec3918-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-05 00:00:00',NULL),(365,'688201227','688201227_PKK_TRW_3_JKN_2020_PKM_Cibeber_.pdf','.pdf','146.11',NULL,NULL,'2020-10-05 04:33:43',NULL,'76ec3918-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-05 00:00:00',NULL),(361,'1169974369','1169974369_lb_1_luar_kota_september_2020.xlsx','.xlsx','16.47',NULL,NULL,'2020-10-05 04:25:03',NULL,'76ec63d1-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-05 00:00:00',NULL),(362,'975212715','975212715_LAP_PEMANFAATAN_CT_SEP_2020_-_Copy.xlsx','.xlsx','185.67','Format laporan sudah sesuai, pada kolom bulan diisi September.\nTerdapat selisih jumlah realisasi dengan laporan pertanggungjawaban sebesar Rp. 15.300.000, mohon di cek kembali.\nSetelah diperbaiki upload kembali file dalam bentuk excel dan PDF yang telah dicap dan ditandatangani.\n',NULL,'2020-10-05 04:27:03','2020-10-05 07:41:25','76ec4921-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-05 00:00:00',NULL),(360,'1169974369','1169974369_lb_1_total_september_2020.xlsx','.xlsx','36.08',NULL,NULL,'2020-10-05 04:25:03',NULL,'76ec63d1-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-05 00:00:00',NULL),(358,'1169974369','1169974369_lb_1_dalam_wilayah_september_2020.xlsx','.xlsx','35.47',NULL,NULL,'2020-10-05 04:25:03',NULL,'76ec63d1-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-05 00:00:00',NULL),(359,'1169974369','1169974369_lb_1_luar_wilayah_september_2020.xlsx','.xlsx','21.61',NULL,NULL,'2020-10-05 04:25:03',NULL,'76ec63d1-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-05 00:00:00',NULL),(356,'1180171389','1180171389_REALISASI_FISIK_BOK_2020.xlsx','.xlsx','43.39','Isian untuk kolom Realisasi s.d Bulan lalu = Realisasi kumulatif dari Januari s.d Agustus.\n\nIsian untuk kolom Realisasi Bulan ini = Realisasi pada bulan September saja.\n\nIsian untuk kolom Realisasi s.d Bulan ini = Realisasi kumulatif dari Januari s.d September (Kolom Realisasi s.d Bulan lalu + Kolom Realisasi Bulan ini).',NULL,'2020-10-05 04:22:29','2020-10-19 02:06:12','76ec63d1-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-05 00:00:00',NULL),(355,'1180171389','1180171389_lap_realisasi_jkn_sd__sep_2020.xlsx','.xlsx','24.18','Format yang dikirimkan tidak sesuai.\nseharusnya format yang dipakai seperti pada laporan realisasi fisik BOK',NULL,'2020-10-05 04:22:29','2020-10-19 02:16:46','76ec63d1-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-05 00:00:00',NULL),(351,'1373377008','1373377008_Format_pemanfaatan_BOK_2020_PKM.xlsx','.xlsx','97.55',NULL,NULL,'2020-10-05 04:14:44',NULL,'76ec63d1-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-05 00:00:00',NULL),(352,'1493632685','1493632685_Format_pelaporan_SPM_PKM__Citeureup_2020.xlsx','.xlsx','44.41',NULL,NULL,'2020-10-05 04:16:45',NULL,'76ec63d1-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-05 00:00:00',NULL),(353,'1326017554','1326017554_LB_1_SEPTEMBER_2020.xls','.xls','99',NULL,NULL,'2020-10-05 04:17:52',NULL,'76ec4921-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-05 00:00:00',NULL),(357,'794729222','794729222_Fisik_Keuangan_CGR_2020_-_sep.xls','.xls','152','Untuk bulan selanjutnya mohon mengisi kolom % realisasi keuangan dan % fisik belanja (kegiatan), serta mengisi kolom permasalahan/kendala secara umum, mengapa realisasi anggaran s.d Triwulan III masih dibawah target perencanaan (anggaran kas)',NULL,'2020-10-05 04:25:02','2020-10-19 01:56:56','76ec4921-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-05 00:00:00',NULL),(348,'1355071255','1355071255_Pemanfaatan_BOK_Sept_2020_PKM_Cibeber.pdf','.pdf','289.32',NULL,NULL,'2020-10-05 03:13:32',NULL,'76ec3918-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-05 00:00:00',NULL),(349,'688201227','688201227_Surat_Pengantar_Siidola_PKM_Cibeber_2020.pdf','.pdf','350.07',NULL,NULL,'2020-10-05 03:41:30',NULL,'76ec3918-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-05 00:00:00',NULL),(347,'1380032782','1380032782_SPM_September_2020_PKM_Cibeber.pdf','.pdf','106.51','- File excel belum  dilampirkan, capaian sp bulan Agustus (bulan sebelumnya)  untuk indikator pelayanan kesehatan balita berbeda dgn yg telah dilaporkan sebelum nya, yaitu dinas 890 sedangkan yang dilaporkan 636.  Utk laporan SPM Sept, sdh diterima. \n- Analisis terhadap hasil capaian setiap indikator belum disertakan mencakup masalah, penyebab masalah, rencana tindak lanjut\n- Nomenclatur untuk indikator TB sesuaikan dengan indikator TB yang terdapat dalam PMK 4/2019',NULL,'2020-10-05 03:05:52','2020-10-05 07:23:48','76ec3918-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-05 00:00:00',NULL),(342,'278221944','278221944_LB1_CIBEBER_SEPTEMBER_2020.pdf','.pdf','650.29','laporan dibuat EXCEL saja \nyang PDF hanya pengantar saja ',NULL,'2020-10-05 02:32:16','2020-10-06 03:09:02','76ec3918-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-05 00:00:00',NULL),(346,'544374648','544374648_Fisik_keuangan_September_2020.xlsx','.xlsx','85.6','Mohon mengisi kolom permasalahan/hambatan secara umum, mengapa realisasi masih dibawah target perencanaan (anggaran kas s.d bulan September)',NULL,'2020-10-05 03:04:48','2020-10-19 02:19:54','76ec416b-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-05 00:00:00',NULL),(345,'544374648','544374648_Fisik_keuangan_September_2020.pdf','.pdf','665.05',NULL,NULL,'2020-10-05 03:04:48',NULL,'76ec416b-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-05 00:00:00',NULL),(392,'524644017','524644017_lb_1_lUAR_kOTA1.pdf','.pdf','407.34',NULL,NULL,'2020-10-05 06:01:17',NULL,'76ec416b-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-05 00:00:00',NULL),(339,'1644430341','1644430341_Auditors_Report_Yayasan_Mitra_Netra-2019.pdf','.pdf','1377.85',NULL,NULL,'2020-10-05 02:11:38',NULL,'76ec34c0-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-05 00:00:00',NULL),(388,'524644017','524644017_lb1_lUAR_WILAYAH_SEPTEMBER.pdf','.pdf','416.79',NULL,NULL,'2020-10-05 05:57:52',NULL,'76ec416b-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-05 00:00:00',NULL),(333,'458523722','458523722_Lap10PenyRujukanJKN2020.xlsx','.xlsx','51.05','',NULL,'2020-10-05 01:38:12','2020-10-05 04:37:54','76ec468a-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-05 00:00:00',NULL),(334,'458523722','458523722_LapKunjungan20.xlsx','.xlsx','58.08',NULL,NULL,'2020-10-05 01:38:12',NULL,'76ec468a-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-05 00:00:00',NULL),(336,'570266969','570266969_Surat_pengantar_Lap_Siidola.pdf','.pdf','198.76',NULL,NULL,'2020-10-05 01:46:37',NULL,'76ec3ed3-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-05 00:00:00',NULL),(337,'570266969','570266969_CIMUT_09_LB1_September_2020.xlsx','.xlsx','239.08',NULL,NULL,'2020-10-05 01:46:37',NULL,'76ec3ed3-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-05 00:00:00',NULL),(332,'715455048','715455048_SPM_2020_lansia,_usprod,_ht,_dm.xls','.xls','131.5','Target sasaran puskesmas Melong Tengah belum diisi lengkap untuk 12 indikator,termasuk hasil capaian setiap indikator di bulan september. Belum ada analisis terhadap pencapaian setiap indikator SPM mengenai masalah, penyebab masalah dan rencana tindak lan',NULL,'2020-10-05 01:35:58','2020-10-05 03:41:00','76ec468a-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-05 00:00:00',NULL),(330,'1521369619','1521369619_Pemanfaatan_BOK_2020_PKM_METENG.xlsx','.xlsx','155.96','Format belum sesuai',NULL,'2020-10-05 01:34:37','2020-10-05 02:25:18','76ec468a-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-05 00:00:00',NULL),(331,'967905305','967905305_6__LAPORAN_FISIK_KEUANGAN_METENG_TH_2020.xlsx','.xlsx','207.67','Mohon mengisi kolom permasalahan/hambatan secara umum, mengapa realisasi masih dibawah target perencanaan (anggaran kas s.d bulan September)',NULL,'2020-10-05 01:35:20','2020-10-19 02:32:44','76ec468a-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-05 00:00:00',NULL),(328,'1500726538','1500726538_LB1LKSept20.xls','.xls','48.5',NULL,NULL,'2020-10-05 01:33:26',NULL,'76ec468a-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-05 00:00:00',NULL),(329,'1500726538','1500726538_LB1LWSept20.xls','.xls','49.5',NULL,NULL,'2020-10-05 01:33:26',NULL,'76ec468a-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-05 00:00:00',NULL),(326,'802158377','802158377_REALISASI_JKN_2020_september.xlsx','.xlsx','35.82',NULL,NULL,'2020-10-05 01:07:11',NULL,'76ec416b-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-05 00:00:00',NULL),(327,'1500726538','1500726538_LB1DlmSept20.xls','.xls','81.5',NULL,NULL,'2020-10-05 01:33:26',NULL,'76ec468a-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-05 00:00:00',NULL),(324,'1175900653','1175900653_surat_pengantar.pdf','.pdf','1443.96',NULL,NULL,'2020-10-05 00:56:37',NULL,'76ec69a5-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-05 00:00:00',NULL),(325,'1175900653','1175900653_FISIK.xlsx','.xlsx','123.2','Mohon mengisi kolom permasalahan/hambatan secara umum, mengapa realisasi masih dibawah target perencanaan (anggaran kas s.d bulan September)',NULL,'2020-10-05 00:56:37','2020-10-19 02:34:17','76ec69a5-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-05 00:00:00',NULL),(323,'232070342','232070342_surat_pengantar.pdf','.pdf','1443.96',NULL,NULL,'2020-10-05 00:55:36',NULL,'76ec69a5-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-05 00:00:00',NULL),(321,'855484612','855484612_REALISASI.xlsx','.xlsx','129.5',NULL,NULL,'2020-10-05 00:53:27',NULL,'76ec69a5-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-05 00:00:00',NULL),(322,'232070342','232070342_Format_pemanfaatan_BOK_AGT_-_SEPTEMBER_PASKAL_2020_(1).xlsx','.xlsx','41.19',NULL,NULL,'2020-10-05 00:55:21',NULL,'76ec69a5-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-05 00:00:00',NULL),(316,'1803869650','1803869650_Surat_Pengantar_Laporan_bulan_September_2020_PKM_Cimahi_Tengah.pdf','.pdf','276.81',NULL,NULL,'2020-10-03 08:22:35',NULL,'76ec6c94-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-03 00:00:00',NULL),(314,'1803869650','1803869650_2__kunjungan_JKN_September_2020.xlsx','.xlsx','17.45',NULL,NULL,'2020-10-03 08:22:35',NULL,'76ec6c94-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-03 00:00:00',NULL),(315,'1803869650','1803869650_2__LRA_JKN_Cimteng_2020_s_d__September_2020_.xlsx','.xlsx','28.78',NULL,NULL,'2020-10-03 08:22:35',NULL,'76ec6c94-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-03 00:00:00',NULL),(312,'197960485','197960485_6__KUNJUNGAN_PASIEN_JKN_SEPTEMBER_2020.xlsx','.xlsx','81.23',NULL,NULL,'2020-10-03 08:20:40',NULL,'76ec43f3-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-03 00:00:00',NULL),(313,'197960485','197960485_5__LRA_JKN_SEPTEMBER_2020.xls','.xls','799',NULL,NULL,'2020-10-03 08:20:40',NULL,'76ec43f3-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-03 00:00:00',NULL),(319,'1982388111','1982388111_PENGANTAR_LAPORAN_SEPT_2020.pdf','.pdf','117.82',NULL,NULL,'2020-10-03 08:26:33',NULL,'76ec43f3-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-03 00:00:00',NULL),(311,'197960485','197960485_DUMMY_LRA_DAN_KUNJUNGAN_JKN_SEPT_2020.pdf','.pdf','1076.42',NULL,NULL,'2020-10-03 08:20:40',NULL,'76ec43f3-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-03 00:00:00',NULL),(320,'1982388111','1982388111_1__PENGANTAR_SIIDOLA_SEPTEMBER_2020.doc','.doc','116',NULL,NULL,'2020-10-03 08:26:33',NULL,'76ec43f3-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-03 00:00:00',NULL),(305,'1698864870','1698864870_DUMMY_LAPORAN_PEMANFAATAN_BULAN_SEPTEMBER.pdf','.pdf','1046.05','File PDF yang seharusnya di upload yaitu pemanfaatan dana BOK bulan september saja, bukan file rekapan. File yang dikirim di tandatangan dan cap.','DUMMY PEMANFAATAN BOK BULAN SEPTEMBER 2020','2020-10-03 08:09:55','2020-10-08 09:11:19','76ec43f3-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-03 00:00:00',NULL),(306,'1698864870','1698864870_6__PEMANFAATAN_BOK_SEPTEMBER_2020.xlsx','.xlsx','24.88','laporan yang dikirimkan hanya 1 file yaitu pemanfaatan dana BOK bulan September, tidak perlu menyertakan file lainnya seperti rekap tahunan dan sheet lainnya. \n\nFile pemanfaatan bulan september di cap dan ditandatangani oleh Kepala Puskesmas.\n\nRealisasi p','REVISI LAPORAN PEMANFAATAN BOK BULAN SEPTEMBER 2020','2020-10-03 08:09:55','2020-10-08 09:12:32','76ec43f3-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-03 00:00:00',NULL),(304,'1982388111','1982388111_2__LB1_SEPTEMBER_2020.xlsx','.xlsx','126.61',NULL,NULL,'2020-10-03 08:08:45',NULL,'76ec43f3-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-03 00:00:00',NULL),(303,'1982388111','1982388111_DUMMY_LB_1_SEPT_2020.pdf','.pdf','1028.61',NULL,NULL,'2020-10-03 08:08:45',NULL,'76ec43f3-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-03 00:00:00',NULL),(307,'1909412431','1909412431_3__FISIK_KEUANGAN_SEPTEMBER_2020_PKK_TW_03.xlsx','.xlsx','48.25','1. Laporan Fiskeu dan PKK harus melampirkan yang bulan September saja (mengurangi penggunaan memori pada aplikasi) 2. Laporan Fisik Keuangan belum menyampaikan kendala/hambatan secara umum  3. Laporan PKK untuk indikator keluaran  dan hasil tidak sesuai dengan indikator pada DPA Puskesmas.','LAPORAN FISIK KEUANGAN DAN PKK TW 3','2020-10-03 08:18:03','2020-10-08 09:01:32','76ec43f3-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-03 00:00:00',NULL),(298,'524197624','524197624_7__SPM_BULAN_SEPTEMBER_2020.xlsx','.xlsx','21.85','Format laporan SPM telah sesuai. Hasil capaian sp Agustus telah sesuai dengan lap SPM dinas. Untuk capaian indikator lansia dan gangguan jiwa hasil lebih dari 100%, mohon konfirmasi sasaran dan capaian dengan pengelola program dinas. Nomenclatur indikator','LAPORAN SPM DAN ANALISIS BULAN SEPTEMBER 2020','2020-10-03 08:04:38','2020-10-08 09:04:56','76ec43f3-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-03 00:00:00',NULL),(299,'524197624','524197624_9__ANALISIS_SPM_SEPTEMBER_2020.xlsx','.xlsx','15.4','Format analisis lap SPM sudah sesuai, mohon sertakan ttd kapus di file yang dikirim',NULL,'2020-10-03 08:04:38','2020-10-05 03:15:24','76ec43f3-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-03 00:00:00',NULL),(300,'524197624','524197624_DUMMY_SPM_DAN_ANALISIS_BULAN_SEPTEMBER_2020.pdf','.pdf','272.44',NULL,'DUMMY SPM DAN ANALISIS SPM SEPTEMBER 2020','2020-10-03 08:04:38','2020-10-08 09:10:02','76ec43f3-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-03 00:00:00',NULL),(308,'1909412431','1909412431_DUMMY_FISKEU_SEPT_20.pdf','.pdf','580.34',NULL,NULL,'2020-10-03 08:18:03',NULL,'76ec43f3-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-03 00:00:00',NULL),(294,'1607679877','1607679877_Surat_Pengantar_Laporan_bulan_September_2020_PKM_Cimahi_Tengah.pdf','.pdf','276.81',NULL,NULL,'2020-10-03 07:13:16',NULL,'76ec6c94-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-03 00:00:00',NULL),(297,'351301431','351301431_Surat_Pengantar_Laporan_bulan_September_2020_PKM_Cimahi_Tengah.pdf','.pdf','276.81',NULL,NULL,'2020-10-03 07:20:47',NULL,'76ec6c94-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-03 00:00:00',NULL),(292,'748169458','748169458_Surat_Pengantar_Laporan_bulan_September_2020_PKM_Cimahi_Tengah.pdf','.pdf','276.81',NULL,NULL,'2020-10-03 07:11:44',NULL,'76ec6c94-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-03 00:00:00',NULL),(291,'748169458','748169458_4__SPM_cIMTENG_sept_2020.xlsx','.xlsx','16.73','- Format Laporan SPM sudah sesuai. \n- Mohon Konfirmasi jumlah sasaran untuk Indikator SPM Orang terduga TB\n- Untuk Analisa Mohon dilakukan pada masing-masing indikator dengan penjelasan Masalah, Penyebab dan rencana tindak lanjut.',NULL,'2020-10-03 07:11:44','2020-10-05 03:29:14','76ec6c94-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-03 00:00:00',NULL),(293,'1607679877','1607679877_5__pemanfaatan_BOK_CIMTENG_sept_2020.xlsx','.xlsx','32.72','Jumlah realisasi dana BOK September terdapat selisih sebesar Rp. 11.600.000, mohon dicek kembali dengan realisasi di bulan Agustus apakah sudah sesuai atau belum.',NULL,'2020-10-03 07:13:16','2020-10-05 02:53:55','76ec6c94-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-03 00:00:00',NULL),(295,'351301431','351301431_3__REALISASI_FISIK_KEUANGAN_CIMTENG_SEP_2020Cimteng_Sepember_2020.xlsx','.xlsx','27.96','Sudah sesuai',NULL,'2020-10-03 07:20:47','2020-10-05 07:20:15','76ec6c94-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-03 00:00:00',NULL),(296,'351301431','351301431_3__PKK_Cimteng_Sepember_2020__2102020_.xlsx','.xlsx','23.15','Untuk kolom indikator keluaran dan hasil targetnya bukan jumlah peserta tetapi persentase (100%), begitu juga untuk kolom realisasi dan capaian kinerja hasilnya adalah  angka pesentase (hasil perhitungan absolutnya).\n Indikator keluaran : Jumlah target 23.483 dan realisasi 17.664 dicatat dalam kolom keterangan.\n Indikator hasil : Jumlah target 29.044 dan realisasi 23.483 dicatat dalam kolom keterangan.',NULL,'2020-10-03 07:20:47','2020-10-05 07:28:30','76ec6c94-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-03 00:00:00',NULL),(288,'1535286370','1535286370_Laporan_Bulanan_Realisasi_BOK__September_2020.pdf','.pdf','5670.31','Bulan pada laporan cantumkan bulan September saja (yang tertulis Agustus-September). \nJumlah realisasi sudah sesuai dengan laporan pertanggungjawaban.\nSetelah diperbaiki upload laporan dalam bentuk excel dan PDF yang sudah di cap dan ditandatangani oleh K','Lap. Pemanfaatan BOK bln September Rev.(Scan) Pkm Cimahi Utara','2020-10-03 06:34:19','2020-10-06 07:36:35','76ec3ed3-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-03 00:00:00',NULL),(284,'258960497','258960497_Surat_pengantar_Lap_Siidola.pdf','.pdf','198.76',NULL,NULL,'2020-10-03 06:31:59',NULL,'76ec3ed3-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-03 00:00:00',NULL),(285,'258960497','258960497_LRA_JKN.xlsx','.xlsx','29.61',NULL,NULL,'2020-10-03 06:31:59',NULL,'76ec3ed3-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-03 00:00:00',NULL),(286,'258960497','258960497_CIMUT_09_KUNJ_JKN_SEPTEMBER_2020.xlsx','.xlsx','17.05',NULL,NULL,'2020-10-03 06:31:59',NULL,'76ec3ed3-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-03 00:00:00',NULL),(287,'1535286370','1535286370_Surat_pengantar_Lap_Siidola.pdf','.pdf','198.76',NULL,NULL,'2020-10-03 06:34:19',NULL,'76ec3ed3-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-03 00:00:00',NULL),(283,'1834351699','1834351699_Realisasi_Fisik_dan_Keuangan_bln_Sept_2020.pdf','.pdf','1819.97','1. Format sudah sesuai. \n2. Lengkapi dengan hambatan/permasalahan dan solusi secara keseluruhan mengapa realisasi masih dibawah target (Rencana keuangan s.d September Rp.1.889.932.117 atau 73,50% dari PAGU sedangkan Realisasi s.d September Rp. 961.173.970','Revisi Lap Realisasi Fisik Bln September 2020, Pkm Cimahi Utara','2020-10-03 06:27:59','2020-10-06 07:38:42','76ec3ed3-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-03 00:00:00',NULL),(279,'1628654562','1628654562_Surat_pengantar_Lap_Siidola.pdf','.pdf','198.76',NULL,NULL,'2020-10-03 06:25:44',NULL,'76ec3ed3-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-03 00:00:00',NULL),(281,'1834351699','1834351699_Surat_pengantar_Lap_Siidola.pdf','.pdf','198.76',NULL,NULL,'2020-10-03 06:27:59',NULL,'76ec3ed3-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-03 00:00:00',NULL),(282,'1834351699','1834351699_Evaluasi_Kinerja_Kegiatan_Triwulan_III_2020.pdf','.pdf','1474.17','Pada baris indikator keluaran dan indikator hasil mohon mencantumkan angka absolut (jumlah) target dan realisasi di kolom keterangan.','Revisi Lap PKK TW 3 (Scan)Pkm Cimahi Utara','2020-10-03 06:27:59','2020-10-06 07:37:58','76ec3ed3-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-03 00:00:00',NULL),(280,'1628654562','1628654562_Hasil_Analisa_SPM_September_2020.pdf','.pdf','732.6','- Format Laporan SPM sudah sesuai\n- Analisa Capaian SPM sudah dilakukan untuk tiap indikator\n- Mohon Konfirmasi Capaian SPM Bulan Sebelumnya dengan pengelola SPM Dinas Kesehatan (Terdapat data yang belum sesuai)','Laporan SPM (Scan) bln September 20 , Pkm Cimahi Utara','2020-10-03 06:25:44','2020-10-06 07:33:09','76ec3ed3-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-03 00:00:00',NULL),(276,'1457942985','1457942985_Surat_Pengantar_Laporan_-_PKM_Padasuka.jpg','.jpg','260.5',NULL,NULL,'2020-10-03 05:46:22',NULL,'76ec4bc7-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-03 00:00:00',NULL),(274,'1028500083','1028500083_Surat_Pengantar_Laporan_-_PKM_Padasuka.jpg','.jpg','260.5',NULL,NULL,'2020-10-03 05:43:36',NULL,'76ec4bc7-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-03 00:00:00',NULL),(275,'1457942985','1457942985_9__LRA_JKN_September_2020.xlsx','.xlsx','34.78',NULL,NULL,'2020-10-03 05:46:22',NULL,'76ec4bc7-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-03 00:00:00',NULL),(272,'1773826092','1773826092_Surat_Pengantar_Laporan_-_PKM_Padasuka.jpg','.jpg','260.5',NULL,NULL,'2020-10-03 05:42:21',NULL,'76ec4bc7-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-03 00:00:00',NULL),(273,'1028500083','1028500083_template_lb1_SEPTEMBER.xls','.xls','175',NULL,NULL,'2020-10-03 05:43:35',NULL,'76ec4bc7-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-03 00:00:00',NULL),(270,'87258869','87258869_Surat_Pengantar_Laporan_-_PKM_Padasuka.jpg','.jpg','260.5',NULL,NULL,'2020-10-03 05:40:00',NULL,'76ec4bc7-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-03 00:00:00',NULL),(271,'1773826092','1773826092_Revisi_Lap__Pemanfaatan_September_BOK_2020_-_PKM_Padasuka.pdf','.pdf','463.67','File yang diupload hanya realisasi bulan september saja (1 sheet), tidak perlu mengirimkan realisasi rekap tahunan.\nJumlah realisasi bulan september sudah sesuai.\nLengkapi dengan mengirimkan file excel dan file pdf yang telah dicap dan ditandatangani.','Revisi Lap. Pemanfaatan BOK Bulan September Puskesmas Padasuka Kota Cimahi (PDF File)','2020-10-03 05:42:21','2020-10-07 07:13:30','76ec4bc7-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-03 00:00:00',NULL),(268,'680170119','680170119_surat_pengantar.pdf','.pdf','1443.96',NULL,NULL,'2020-10-03 04:14:14',NULL,'76ec69a5-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-03 00:00:00',NULL),(269,'87258869','87258869_Revisi_Lap__Fisik_Keuangan_JKN_September_2020_-_PKM_Padasuka.xlsx','.xlsx','41.6','1. Format sudah sesuai.\n2. Lengkapi dengan hambatan/permasalahan secara keseluruhan mengapa realisasi masih dibawah target (Rencana keuangan s.d september Rp.1.403.047.400 atau 72,67% dari PAGU sedangkan realisasi Rp. 1.082.500.350  atau 56,67%).\n3. PKK t','Revisi Lap. Fisik Keuangan JKN Bulan September - Puskesmas Padasuka Kota Cimahi (Sesuai Tanggapan)','2020-10-03 05:40:00','2020-10-07 07:14:54','76ec4bc7-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-03 00:00:00',NULL),(267,'855484612','855484612_surat_pengantar.pdf','.pdf','1443.96',NULL,NULL,'2020-10-03 04:13:58',NULL,'76ec69a5-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-03 00:00:00',NULL),(265,'680170119','680170119_LB_LK_SEPT.xls','.xls','59',NULL,NULL,'2020-10-03 01:44:02',NULL,'76ec69a5-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-03 00:00:00',NULL),(266,'855484612','855484612_KUNJUNGAN_JKN_SEPTEMBER.xlsx','.xlsx','10.96',NULL,NULL,'2020-10-03 03:39:09',NULL,'76ec69a5-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-03 00:00:00',NULL),(264,'680170119','680170119_LB_DW_SEPT.xls','.xls','83',NULL,NULL,'2020-10-03 01:44:02',NULL,'76ec69a5-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-03 00:00:00',NULL),(263,'680170119','680170119_LB_LW_SEPT.xls','.xls','36.5',NULL,NULL,'2020-10-03 01:44:02',NULL,'76ec69a5-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-03 00:00:00',NULL),(260,'1411749754','1411749754_LB1_SEPTEMBER_2020.xlsx','.xlsx','61.21',NULL,NULL,'2020-10-02 04:38:57',NULL,'76ec6c94-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-02 00:00:00',NULL),(258,'833478747','833478747_Pemanfaatan_BOK_bulan_september_2020.xlsx','.xlsx','29.89',NULL,NULL,'2020-09-30 00:26:18',NULL,'76ec416b-fe08-11ea-8e39-40f2e99f5ba5','1','2020-09-30 00:00:00',NULL),(338,'524644017','524644017_lb1_DALAM_WILAYAH_SEPTEMBER.xlsx','.xlsx','50.26',NULL,NULL,'2020-10-05 01:51:50',NULL,'76ec416b-fe08-11ea-8e39-40f2e99f5ba5','1','2020-10-05 00:00:00',NULL),(256,'672093509','672093509_1677262714_SPM_CITEUREUP_AGUSTUS.pdf','.pdf','106.17','',NULL,'2020-09-28 02:35:54','2020-09-28 02:47:46','76ec69a5-fe08-11ea-8e39-40f2e99f5ba5','1','2020-09-28 00:00:00',NULL),(257,'672093509','672093509_REKAP_PROGKEG_ANGGARAN_PERUBAHAN_2020.xlsx','.xlsx','38.62',NULL,NULL,'2020-09-28 02:35:54',NULL,'76ec69a5-fe08-11ea-8e39-40f2e99f5ba5','1','2020-09-28 00:00:00',NULL),(254,'1199560065','1199560065_Laporan_Pemanfaatan_BOK_PKM_Melong_Tengah_Agustus.pdf','.pdf','363.26',NULL,NULL,'2020-09-25 08:19:38',NULL,'76ec468a-fe08-11ea-8e39-40f2e99f5ba5','1','2020-09-25 00:00:00',NULL),(253,'933924018','933924018_Laporan_Pemanfaatan_BOK_PKM_CImahi_Utara_Agustus.xlsx','.xlsx','29.39',NULL,NULL,'2020-09-25 08:13:13',NULL,'76ec3ed3-fe08-11ea-8e39-40f2e99f5ba5','1','2020-09-25 00:00:00',NULL),(255,'1199560065','1199560065_Laporan_Pemanfaatan_BOK_PKM_Melong_Tengah_Agustus.xlsx','.xlsx','29.08',NULL,NULL,'2020-09-25 08:19:38',NULL,'76ec468a-fe08-11ea-8e39-40f2e99f5ba5','1','2020-09-25 00:00:00',NULL),(252,'933924018','933924018_Laporan_Pemanfaatan_BOK_PKM_CImahi_Utara_Agustus.pdf','.pdf','359.39',NULL,NULL,'2020-09-25 08:13:13',NULL,'76ec3ed3-fe08-11ea-8e39-40f2e99f5ba5','1','2020-09-25 00:00:00',NULL),(251,'1549866191','1549866191_Laporan_Pemanfaatan_BOK_PKM_Cimahi_Tengah_Agustus_.xlsx','.xlsx','27.49',NULL,NULL,'2020-09-25 08:11:08',NULL,'76ec6c94-fe08-11ea-8e39-40f2e99f5ba5','1','2020-09-25 00:00:00',NULL),(250,'1549866191','1549866191_Laporan_Pemanfaatan_BOK_PKM_Cimahi_Tengah_Agustus_.pdf','.pdf','354.56',NULL,NULL,'2020-09-25 08:11:08',NULL,'76ec6c94-fe08-11ea-8e39-40f2e99f5ba5','1','2020-09-25 00:00:00',NULL),(248,'1736603418','1736603418_Laporan_Pemanfaatan_BOK_PKM_Cibeber_Agustus.pdf','.pdf','289.31',NULL,NULL,'2020-09-25 08:09:09',NULL,'76ec3918-fe08-11ea-8e39-40f2e99f5ba5','1','2020-09-25 00:00:00',NULL),(249,'1736603418','1736603418_Laporan_Pemanfaatan_BOK_PKM_Cibeber_Agustus.xlsx','.xlsx','32.71',NULL,NULL,'2020-09-25 08:09:09',NULL,'76ec3918-fe08-11ea-8e39-40f2e99f5ba5','1','2020-09-25 00:00:00',NULL),(247,'1469595593','1469595593_Laporan_Pemanfaatan_BOK_PKM_Cibeureum_Agustus.xlsx','.xlsx','29.55',NULL,NULL,'2020-09-25 07:56:51',NULL,'76ec6f8d-fe08-11ea-8e39-40f2e99f5ba5','1','2020-09-25 00:00:00',NULL),(244,'1710007259','1710007259_08__LB1_AGUSTUS_2020.xlsx','.xlsx','62.92',NULL,NULL,'2020-09-25 02:14:12',NULL,'76ec6c94-fe08-11ea-8e39-40f2e99f5ba5','1','2020-09-25 00:00:00',NULL),(245,'1223522294','1223522294_8__Laporan_Fisik_Keuangan_sd_Agustus_2020_PADSUKA.xlsx','.xlsx','202.94',NULL,NULL,'2020-09-25 02:27:48',NULL,'76ec6f8d-fe08-11ea-8e39-40f2e99f5ba5','1','2020-09-25 00:00:00',NULL),(246,'1469595593','1469595593_Laporan_Pemanfaatan_BOK_PKM_Cibeureum_Agustus.pdf','.pdf','276.46',NULL,NULL,'2020-09-25 07:56:51',NULL,'76ec6f8d-fe08-11ea-8e39-40f2e99f5ba5','1','2020-09-25 00:00:00',NULL),(242,'684094662','684094662_08__LB_LW_AGUSTUS.xls','.xls','36',NULL,NULL,'2020-09-25 02:09:16',NULL,'76ec69a5-fe08-11ea-8e39-40f2e99f5ba5','1','2020-09-25 00:00:00',NULL),(243,'684094662','684094662_08__LB_DW_AGUSTUS.xls','.xls','89.5',NULL,NULL,'2020-09-25 02:09:16',NULL,'76ec69a5-fe08-11ea-8e39-40f2e99f5ba5','1','2020-09-25 00:00:00',NULL),(241,'684094662','684094662_08__LB_LK_AGUSTUS.xls','.xls','63.5',NULL,NULL,'2020-09-25 02:09:16',NULL,'76ec69a5-fe08-11ea-8e39-40f2e99f5ba5','1','2020-09-25 00:00:00',NULL),(240,'1781995257','1781995257_08__LB_Agustus_2020.xlsx','.xlsx','295.09',NULL,NULL,'2020-09-25 02:07:02',NULL,'76ec66b1-fe08-11ea-8e39-40f2e99f5ba5','1','2020-09-25 00:00:00',NULL),(239,'1342482683','1342482683_08__lb_1_dlm_wilayah_agustus_2020.xlsx','.xlsx','31.16',NULL,NULL,'2020-09-25 02:04:46',NULL,'76ec63d1-fe08-11ea-8e39-40f2e99f5ba5','1','2020-09-25 00:00:00',NULL),(238,'1342482683','1342482683_08__lb_1_luar_kota_agustus_2020.xlsx','.xlsx','16.54',NULL,NULL,'2020-09-25 02:04:46',NULL,'76ec63d1-fe08-11ea-8e39-40f2e99f5ba5','1','2020-09-25 00:00:00',NULL),(237,'1342482683','1342482683_08__lb_1_luar_wilayah_agustus_2020.xlsx','.xlsx','22.33',NULL,NULL,'2020-09-25 02:04:46',NULL,'76ec63d1-fe08-11ea-8e39-40f2e99f5ba5','1','2020-09-25 00:00:00',NULL),(236,'888912190','888912190_08__template_lb1_Agustus.xls','.xls','166',NULL,NULL,'2020-09-25 01:59:01',NULL,'76ec4bc7-fe08-11ea-8e39-40f2e99f5ba5','1','2020-09-25 00:00:00',NULL),(234,'1037092024','1037092024_08__LB_1_AGUSTUS_2020_LUAR_WILAYAH.xls','.xls','30',NULL,NULL,'2020-09-25 01:41:24',NULL,'76ec4921-fe08-11ea-8e39-40f2e99f5ba5','1','2020-09-25 00:00:00',NULL),(235,'1037092024','1037092024_08__LB_1_AGUSTUS_2020_DALAM_WILAYAH.xls','.xls','127',NULL,NULL,'2020-09-25 01:41:24',NULL,'76ec4921-fe08-11ea-8e39-40f2e99f5ba5','1','2020-09-25 00:00:00',NULL),(231,'2094696850','2094696850_08__LB1LKAgst20.xls','.xls','53',NULL,NULL,'2020-09-25 01:33:59',NULL,'76ec468a-fe08-11ea-8e39-40f2e99f5ba5','1','2020-09-25 00:00:00',NULL),(232,'2094696850','2094696850_08__Lb1LWAgst20.xls','.xls','43',NULL,NULL,'2020-09-25 01:33:59',NULL,'76ec468a-fe08-11ea-8e39-40f2e99f5ba5','1','2020-09-25 00:00:00',NULL),(233,'1037092024','1037092024_08__LB_1_AGUSTUS_2020_LUAR_KOTA_KABUPATEN.xls','.xls','20.5',NULL,NULL,'2020-09-25 01:41:24',NULL,'76ec4921-fe08-11ea-8e39-40f2e99f5ba5','1','2020-09-25 00:00:00',NULL),(230,'2094696850','2094696850_08__LB1DlmAgst20.xls','.xls','70.5',NULL,NULL,'2020-09-25 01:33:59',NULL,'76ec468a-fe08-11ea-8e39-40f2e99f5ba5','1','2020-09-25 00:00:00',NULL),(228,'332604037','332604037_LB_LUAR_WILAYAH.xls','.xls','72',NULL,NULL,'2020-09-25 01:22:12',NULL,'76ec3c2e-fe08-11ea-8e39-40f2e99f5ba5','1','2020-09-25 00:00:00',NULL),(229,'1730354571','1730354571_08__LB1_AGUSTUS_2020.xlsx','.xlsx','137.85',NULL,NULL,'2020-09-25 01:26:29',NULL,'76ec43f3-fe08-11ea-8e39-40f2e99f5ba5','1','2020-09-25 00:00:00',NULL),(226,'332604037','332604037_LB_1_UTAMA.xls','.xls','74',NULL,NULL,'2020-09-25 01:22:12',NULL,'76ec3c2e-fe08-11ea-8e39-40f2e99f5ba5','1','2020-09-25 00:00:00',NULL),(227,'332604037','332604037_LB_LUAR_WILAYAH_KOTA_CIMAHI.xls','.xls','47',NULL,NULL,'2020-09-25 01:22:12',NULL,'76ec3c2e-fe08-11ea-8e39-40f2e99f5ba5','1','2020-09-25 00:00:00',NULL),(225,'262816645','262816645_08__template_lb1.xlsx','.xlsx','76.57',NULL,NULL,'2020-09-25 01:14:39',NULL,'76ec3918-fe08-11ea-8e39-40f2e99f5ba5','1','2020-09-25 00:00:00',NULL),(222,'2061643152','2061643152_REKAP_REAL_JKN_2020.xlsx','.xlsx','65.47',NULL,NULL,'2020-09-25 00:23:19',NULL,'76ec416b-fe08-11ea-8e39-40f2e99f5ba5','1','2020-09-25 00:00:00',NULL),(221,'715588300','715588300_Luar_wilayah_LB.xlsx','.xlsx','19.04',NULL,NULL,'2020-09-24 08:47:28',NULL,'76ec416b-fe08-11ea-8e39-40f2e99f5ba5','1','2020-09-24 00:00:00',NULL),(220,'1770869971','1770869971_FORM_LAP_SPM_PUSKESMAS_2020.xlsx','.xlsx','56.16',NULL,NULL,'2020-09-24 08:46:09',NULL,'76ec416b-fe08-11ea-8e39-40f2e99f5ba5','1','2020-09-24 00:00:00',NULL),(219,'855970253','855970253_FISIK_JKN_AGUSTUS_2020_CIBEBER.xlsx','.xlsx','19.37',NULL,NULL,'2020-09-24 02:57:39',NULL,'76ec3918-fe08-11ea-8e39-40f2e99f5ba5','1','2020-09-24 00:00:00',NULL),(218,'1871569544','1871569544_Laporan_Fisik_dan_Keuangan_2020_FIX.xlsx','.xlsx','171.58',NULL,NULL,'2020-09-24 02:50:01',NULL,'76ec416b-fe08-11ea-8e39-40f2e99f5ba5','1','2020-09-24 00:00:00',NULL),(217,'1331962603','1331962603_SPM_LEUWIGAJAH_AGUSTUS.xlsx','.xlsx','11.08',NULL,NULL,'2020-09-21 08:16:25',NULL,'bdf058e8-f7ba-11ea-952e-179bc60eef89','1','2020-09-21 00:00:00',NULL),(496,'1517631060','1517631060_Rekap_Tahunan_BOK_Oktober_2020.pdf','.pdf','228.09',NULL,NULL,'2020-11-05 02:08:16',NULL,'0af1d25a-1d74-11eb-a34c-00e04c6800a9','1','2020-11-05 00:00:00',NULL),(530,'1201903670','1201903670_Lap__Pemanfaatan_Oktober_BOK_2020_PKM_Padasuka.xlsx','.xlsx','32.12',NULL,NULL,'2020-11-05 09:37:00',NULL,'0af2df94-1d74-11eb-a34c-00e04c6800a9','1','2020-11-05 00:00:00',NULL),(529,'1201903670','1201903670_SURAT_PENGANTAR_PELAPORAN_OKTOBER_2020_-_PUSKESMAS_PADASUKA_KOTA_CIMAHI.pdf','.pdf','428.71',NULL,NULL,'2020-11-05 09:37:00',NULL,'0af2df94-1d74-11eb-a34c-00e04c6800a9','1','2020-11-05 00:00:00',NULL),(216,'1331962603','1331962603_SPM_LEUWIGAJAH_AGUSTUS.pdf','.pdf','413.43',NULL,NULL,'2020-09-21 08:16:25',NULL,'bdf058e8-f7ba-11ea-952e-179bc60eef89','1','2020-09-21 00:00:00',NULL),(495,'1517631060','1517631060_Rekap_Tahunan_BOK_Oktober_2020.xlsx','.xlsx','18.91',NULL,NULL,'2020-11-05 02:08:16',NULL,'0af1d25a-1d74-11eb-a34c-00e04c6800a9','1','2020-11-05 00:00:00',NULL),(211,'1094432396','1094432396_SPM_PASKAL_AGUSTUS.xlsx','.xlsx','15.23',NULL,NULL,'2020-09-21 08:10:43',NULL,'762f6cee-f7bb-11ea-952e-179bc60eef89','1','2020-09-21 00:00:00',NULL),(209,'1095547323','1095547323_SPM_METENG_AGUSTUS.xlsx','.xlsx','10.96',NULL,NULL,'2020-09-21 08:08:11',NULL,'f13f3b68-edae-11ea-b568-00e04c6800a9','1','2020-09-21 00:00:00',NULL),(210,'1094432396','1094432396_SPM_PASKAL_AGUSTUS.pdf','.pdf','215.05',NULL,NULL,'2020-09-21 08:10:43',NULL,'762f6cee-f7bb-11ea-952e-179bc60eef89','1','2020-09-21 00:00:00',NULL),(208,'1095547323','1095547323_SPM_METENG_AGUSTUS.pdf','.pdf','412.5',NULL,NULL,'2020-09-21 08:08:11',NULL,'f13f3b68-edae-11ea-b568-00e04c6800a9','1','2020-09-21 00:00:00',NULL),(205,'1265348186','1265348186_SPM_CIMTENG_AGUSTUS.xlsx','.xlsx','11.85',NULL,NULL,'2020-09-18 09:15:33',NULL,'93e134f7-f7d2-11ea-952e-179bc60eef89','1','2020-09-18 00:00:00',NULL),(204,'1265348186','1265348186_SPM_CIMTENG_AGUSTUS.pdf','.pdf','188.39',NULL,NULL,'2020-09-18 09:15:33',NULL,'93e134f7-f7d2-11ea-952e-179bc60eef89','1','2020-09-18 00:00:00',NULL),(195,'1647731789','1647731789_SPM_CIBEBER_AGUSTUS.xlsx','.xlsx','11.88',NULL,NULL,'2020-09-18 08:00:46',NULL,'f13f3945-edae-11ea-b568-00e04c6800a9','1','2020-09-18 00:00:00',NULL),(193,'984365021','984365021_SPM_CIBEUREUM_AGUSTUS.xlsx','.xlsx','11.44',NULL,NULL,'2020-09-18 07:56:47',NULL,'c7000b33-f7d2-11ea-952e-179bc60eef89','1','2020-09-18 00:00:00',NULL),(194,'1647731789','1647731789_SPM_CIBEBER_AGUSTUS.pdf','.pdf','106',NULL,NULL,'2020-09-18 08:00:46',NULL,'f13f3945-edae-11ea-b568-00e04c6800a9','1','2020-09-18 00:00:00',NULL),(192,'984365021','984365021_SPM_CIBEUREUM_AGUSTUS.pdf','.pdf','109.27',NULL,NULL,'2020-09-18 07:56:47',NULL,'c7000b33-f7d2-11ea-952e-179bc60eef89','1','2020-09-18 00:00:00',NULL),(196,'1280964237','1280964237_SPM_CIGUGUR_TENGAH_AGUSTUS.pdf','.pdf','187.8',NULL,NULL,'2020-09-18 08:50:55',NULL,'f13f3bc3-edae-11ea-b568-00e04c6800a9','1','2020-09-18 00:00:00',NULL),(191,'1404261890','1404261890_Copy_of_Dinkes_-_Keg_Subkeg_2021_sipd.xlsx','.xlsx','37.65','format belum sesuai, tidak ada anlisa, perhitungan capaian tidak sesuai ','sudah disesuaikan mohon koreksi','2020-09-18 01:41:21','2020-09-18 01:57:42','f13f3c22-edae-11ea-b568-00e04c6800a9','1','2020-09-18 00:00:00',NULL),(203,'1677262714','1677262714_SPM_CITEUREUP_AGUSTUS.xlsx','.xlsx','11.54',NULL,NULL,'2020-09-18 09:14:17',NULL,'f13f40b8-edae-11ea-b568-00e04c6800a9','1','2020-09-18 00:00:00',NULL),(202,'1677262714','1677262714_SPM_CITEUREUP_AGUSTUS.pdf','.pdf','106.17',NULL,NULL,'2020-09-18 09:14:17',NULL,'f13f40b8-edae-11ea-b568-00e04c6800a9','1','2020-09-18 00:00:00',NULL),(206,'903192658','903192658_SPM_CIPAGERAN_AGUSTUS.pdf','.pdf','102.16',NULL,NULL,'2020-09-18 09:20:30',NULL,'f13f3aa9-edae-11ea-b568-00e04c6800a9','1','2020-09-18 00:00:00',NULL),(207,'903192658','903192658_SPM_CIPAGERAN_AGUSTUS.xlsx','.xlsx','17.05','belum ditandatangan',NULL,'2020-09-18 09:20:30','2020-09-21 07:38:43','f13f3aa9-edae-11ea-b568-00e04c6800a9','1','2020-09-18 00:00:00',NULL),(199,'1135090712','1135090712_SPM_CIMAHI_UTARA_AGUSTUS.xlsx','.xlsx','11.38',NULL,NULL,'2020-09-18 09:01:19',NULL,'f13f3a46-edae-11ea-b568-00e04c6800a9','1','2020-09-18 00:00:00',NULL),(198,'1135090712','1135090712_SPM_CIMAHI_UTARA_AGUSTUS.pdf','.pdf','107',NULL,NULL,'2020-09-18 09:01:19',NULL,'f13f3a46-edae-11ea-b568-00e04c6800a9','1','2020-09-18 00:00:00',NULL),(197,'1280964237','1280964237_SPM_CIGUGUR_TENGAH_AGUSTUS.xlsx','.xlsx','11.55',NULL,NULL,'2020-09-18 08:50:55',NULL,'f13f3bc3-edae-11ea-b568-00e04c6800a9','1','2020-09-18 00:00:00',NULL),(427,'1517631060','1517631060_PEMANFAATAN_BOK_2020_oktober.pdf','.pdf','554.24',NULL,NULL,'2020-11-02 07:32:49',NULL,'76ec416b-fe08-11ea-8e39-40f2e99f5ba5','1','2020-11-02 00:00:00',NULL),(428,'1517631060','1517631060_PEMANFAATAN_BOK_2020_oktober.xlsx','.xlsx','99.58',NULL,NULL,'2020-11-02 07:32:49',NULL,'76ec416b-fe08-11ea-8e39-40f2e99f5ba5','1','2020-11-02 00:00:00',NULL),(429,'2076494472','2076494472_6__LAPORAN_FISIK_KEUANGAN_METENG_TH_2020.xlsx','.xlsx','207.77',NULL,NULL,'2020-11-04 01:08:37',NULL,'0af25a83-1d74-11eb-a34c-00e04c6800a9','1','2020-11-04 00:00:00',NULL),(430,'1962612182','1962612182_lb_1_total_oktober_2020.xlsx','.xlsx','36.36',NULL,NULL,'2020-11-04 01:09:33',NULL,'0af53e06-1d74-11eb-a34c-00e04c6800a9','1','2020-11-04 00:00:00',NULL),(431,'1962612182','1962612182_lb_1_luar_kota_oktober_2020.xlsx','.xlsx','12.75',NULL,NULL,'2020-11-04 01:09:33',NULL,'0af53e06-1d74-11eb-a34c-00e04c6800a9','1','2020-11-04 00:00:00',NULL),(432,'972811148','972811148_Format_pelaporan_SPM_PKM__Citeureup_2020.xlsx','.xlsx','47.91',NULL,NULL,'2020-11-04 01:11:14',NULL,'0af53e06-1d74-11eb-a34c-00e04c6800a9','1','2020-11-04 00:00:00',NULL),(433,'1845103126','1845103126_OKTOBER_LW.xls','.xls','36',NULL,NULL,'2020-11-04 01:30:51',NULL,'0af5c154-1d74-11eb-a34c-00e04c6800a9','1','2020-11-04 00:00:00',NULL),(434,'1845103126','1845103126_OKTOBER_DW.xls','.xls','89.5',NULL,NULL,'2020-11-04 01:30:51',NULL,'0af5c154-1d74-11eb-a34c-00e04c6800a9','1','2020-11-04 00:00:00',NULL),(435,'1845103126','1845103126_OKTOBER_LK.xls','.xls','59.5',NULL,NULL,'2020-11-04 01:30:51',NULL,'0af5c154-1d74-11eb-a34c-00e04c6800a9','1','2020-11-04 00:00:00',NULL),(436,'532071446','532071446_FISIK.xlsx','.xlsx','140.43',NULL,NULL,'2020-11-04 02:36:44',NULL,'0af5c154-1d74-11eb-a34c-00e04c6800a9','1','2020-11-04 00:00:00',NULL),(437,'1457235549','1457235549_Fisik_Keuangan_Oktober_2020.pdf','.pdf','623.27',NULL,NULL,'2020-11-04 03:52:06',NULL,'0af1d25a-1d74-11eb-a34c-00e04c6800a9','1','2020-11-04 00:00:00',NULL),(438,'1457235549','1457235549_Fisik_Keuangan_Oktober_2020.xlsx','.xlsx','32.53',NULL,NULL,'2020-11-04 03:52:06',NULL,'0af1d25a-1d74-11eb-a34c-00e04c6800a9','1','2020-11-04 00:00:00',NULL),(439,'1704526586','1704526586_LAPORAN_KUNJUNGAN_OKTOBER_(1).xlsx','.xlsx','11.5',NULL,NULL,'2020-11-04 04:14:21',NULL,'0af5c154-1d74-11eb-a34c-00e04c6800a9','1','2020-11-04 00:00:00',NULL),(440,'1602219042','1602219042_Format_pemanfaatan_BOK_OKT_PASKAL_2020.xlsx','.xlsx','41.27',NULL,NULL,'2020-11-04 05:21:13',NULL,'0af5c154-1d74-11eb-a34c-00e04c6800a9','1','2020-11-04 00:00:00',NULL),(441,'1357316287','1357316287_spm_teh_asih_2020.xlsx','.xlsx','44.37',NULL,NULL,'2020-11-04 05:31:22',NULL,'0af5c154-1d74-11eb-a34c-00e04c6800a9','1','2020-11-04 00:00:00',NULL),(442,'1024127858','1024127858_LB1_luar_kota_okoktober_2020.xlsx','.xlsx','18.19',NULL,NULL,'2020-11-04 05:51:53',NULL,'0af604df-1d74-11eb-a34c-00e04c6800a9','1','2020-11-04 00:00:00',NULL),(443,'1024127858','1024127858_LB1_dalam_wilayah_okoktober_2020.xlsx','.xlsx','27.82',NULL,NULL,'2020-11-04 05:51:53',NULL,'0af604df-1d74-11eb-a34c-00e04c6800a9','1','2020-11-04 00:00:00',NULL),(444,'1024127858','1024127858_LB1_dalam_wilayah_okoktober_2020.xlsx','.xlsx','27.82',NULL,NULL,'2020-11-04 05:51:53',NULL,'0af604df-1d74-11eb-a34c-00e04c6800a9','1','2020-11-04 00:00:00',NULL),(521,'460508201','460508201_LRA_JKN_OKTOBER_2020_PKM_MELONG_ASIH.xlsx','.xlsx','57.85',NULL,NULL,'2020-11-05 04:00:11',NULL,'0af216cf-1d74-11eb-a34c-00e04c6800a9','1','2020-11-05 00:00:00',NULL),(517,'1856634042','1856634042_LAP_REALISASI_KEUANGAN_OKTOBER_2020.xlsx','.xlsx','27.14','Format tidak sesuai',NULL,'2020-11-05 03:11:28','2020-11-09 04:37:53','0af53e06-1d74-11eb-a34c-00e04c6800a9','1','2020-11-05 00:00:00','0af3f4c1-1d74-11eb-a34c-00e04c6800a9'),(519,'162367674','162367674_Format_pemanfaatan_BOK_2020_PKM.xlsx','.xlsx','112.69',NULL,NULL,'2020-11-05 03:17:00',NULL,'0af53e06-1d74-11eb-a34c-00e04c6800a9','1','2020-11-05 00:00:00',NULL),(520,'1279655877','1279655877_Peserta_JKN_PBI.xlsx','.xlsx','44.56',NULL,NULL,'2020-11-05 03:19:24',NULL,'0af53e06-1d74-11eb-a34c-00e04c6800a9','1','2020-11-05 00:00:00',NULL),(506,'179542283','179542283_SPM_OKTOBER_2020.pdf','.pdf','272.51',NULL,NULL,'2020-11-05 02:29:54',NULL,'0af1d25a-1d74-11eb-a34c-00e04c6800a9','1','2020-11-05 00:00:00',NULL),(450,'293757938','293757938_Surat_Pengantar_SIIDOLA.pdf','.pdf','148.69',NULL,NULL,'2020-11-04 08:18:44',NULL,'0af17a5f-1d74-11eb-a34c-00e04c6800a9','1','2020-11-04 00:00:00',NULL),(451,'293757938','293757938_Analisa_dan_Laporan_SPM_PKM_CIMUT_OKTOBER_2020.xlsx','.xlsx','19.49',NULL,NULL,'2020-11-04 08:18:44',NULL,'0af17a5f-1d74-11eb-a34c-00e04c6800a9','1','2020-11-04 00:00:00',NULL),(452,'1167283131','1167283131_Surat_Pengantar_SIIDOLA.pdf','.pdf','148.69',NULL,NULL,'2020-11-04 08:21:17',NULL,'0af17a5f-1d74-11eb-a34c-00e04c6800a9','1','2020-11-04 00:00:00',NULL),(453,'1167283131','1167283131_Pemanfaatan_BOK_PKM_CIMUT_OKTOBER_2020_TU_6_bag_1.xlsx','.xlsx','37.6',NULL,NULL,'2020-11-04 08:21:17',NULL,'0af17a5f-1d74-11eb-a34c-00e04c6800a9','1','2020-11-04 00:00:00',NULL),(454,'974870761','974870761_CIMUT_10_LB1_Oktober_2020.xlsx','.xlsx','235.8',NULL,NULL,'2020-11-04 08:22:23',NULL,'0af17a5f-1d74-11eb-a34c-00e04c6800a9','1','2020-11-04 00:00:00',NULL),(455,'974870761','974870761_Surat_Pengantar_SIIDOLA.pdf','.pdf','148.69',NULL,NULL,'2020-11-04 08:22:23',NULL,'0af17a5f-1d74-11eb-a34c-00e04c6800a9','1','2020-11-04 00:00:00',NULL),(456,'105723652','105723652_Realisasi_Fisik_Okt20.xlsx','.xlsx','25.5',NULL,NULL,'2020-11-04 08:27:11',NULL,'0af17a5f-1d74-11eb-a34c-00e04c6800a9','1','2020-11-04 00:00:00',NULL),(457,'105723652','105723652_Surat_Pengantar_SIIDOLA.pdf','.pdf','148.69',NULL,NULL,'2020-11-04 08:27:11',NULL,'0af17a5f-1d74-11eb-a34c-00e04c6800a9','1','2020-11-04 00:00:00',NULL),(458,'615468487','615468487_REALISASI_JKN_2020.xlsx','.xlsx','28.77',NULL,NULL,'2020-11-04 08:31:49',NULL,'0af17a5f-1d74-11eb-a34c-00e04c6800a9','1','2020-11-04 00:00:00',NULL),(459,'615468487','615468487_CIMUT_LAP_KUNJUNGAN_2020.xlsx','.xlsx','95.31',NULL,NULL,'2020-11-04 08:31:49',NULL,'0af17a5f-1d74-11eb-a34c-00e04c6800a9','1','2020-11-04 00:00:00',NULL),(460,'615468487','615468487_Surat_Pengantar_SIIDOLA.pdf','.pdf','148.69',NULL,NULL,'2020-11-04 08:31:49',NULL,'0af17a5f-1d74-11eb-a34c-00e04c6800a9','1','2020-11-04 00:00:00',NULL),(461,'1177435268','1177435268_SURAT_PENGANTAR_LAPORAN_BULAN_OKTOBER_2020.docx','.docx','38.61',NULL,NULL,'2020-11-04 11:21:27',NULL,'0af12891-1d74-11eb-a34c-00e04c6800a9','1','2020-11-04 00:00:00',NULL),(462,'1177435268','1177435268_LAPORAN_PEMANFAATAN_BOK_PUSKESMAS_CIMAHI_SELATAN_OKTOBER_DATA_SEPTEMBER_2020_EDIT_6_OKTOBER.xlsx','.xlsx','32.83',NULL,NULL,'2020-11-04 11:21:27',NULL,'0af12891-1d74-11eb-a34c-00e04c6800a9','1','2020-11-04 00:00:00',NULL),(463,'1166373834','1166373834_LB_LUAR_KOTA_CIMAHI.xls','.xls','46.5',NULL,NULL,'2020-11-04 11:24:14',NULL,'0af12891-1d74-11eb-a34c-00e04c6800a9','1','2020-11-04 00:00:00',NULL),(464,'1166373834','1166373834_SURAT_PENGANTAR_LAPORAN_BULAN_OKTOBER_2020.docx','.docx','38.61',NULL,NULL,'2020-11-04 11:24:14',NULL,'0af12891-1d74-11eb-a34c-00e04c6800a9','1','2020-11-04 00:00:00',NULL),(465,'1166373834','1166373834_LB_LUAR_WILAYAH.xls','.xls','75.5',NULL,NULL,'2020-11-04 11:24:14',NULL,'0af12891-1d74-11eb-a34c-00e04c6800a9','1','2020-11-04 00:00:00',NULL),(466,'1166373834','1166373834_LB_DALAM_WILAYAH_UTAMA.xls','.xls','74',NULL,NULL,'2020-11-04 11:24:14',NULL,'0af12891-1d74-11eb-a34c-00e04c6800a9','1','2020-11-04 00:00:00',NULL),(467,'54260168','54260168_SURAT_PENGANTAR_LAPORAN_BULAN_OKTOBER_2020.docx','.docx','38.61',NULL,NULL,'2020-11-04 11:32:37',NULL,'0af12891-1d74-11eb-a34c-00e04c6800a9','1','2020-11-04 00:00:00',NULL),(468,'54260168','54260168_LAPORAN_KUNJUNGAN_PUSKESMAS_CIMAHI_SELATAN_OKTOBER_2020.xlsx','.xlsx','18.2',NULL,NULL,'2020-11-04 11:32:37',NULL,'0af12891-1d74-11eb-a34c-00e04c6800a9','1','2020-11-04 00:00:00',NULL),(469,'1163669215','1163669215_PELAPORAN_SPM_PKM_CIBEUREUM_2020.xlsx','.xlsx','41.02',NULL,NULL,'2020-11-04 13:26:57',NULL,'0af6601d-1d74-11eb-a34c-00e04c6800a9','1','2020-11-04 00:00:00',NULL),(522,'111037533','111037533_LB1_OKTOBER_2020_PKM_MELONG_ASIH.xlsx','.xlsx','65.64',NULL,NULL,'2020-11-05 04:00:29',NULL,'0af216cf-1d74-11eb-a34c-00e04c6800a9','1','2020-11-05 00:00:00',NULL),(471,'499964386','499964386_LB_1_Oktober_20.pdf','.pdf','752.26',NULL,NULL,'2020-11-04 13:45:50',NULL,'0af0bc04-1d74-11eb-a34c-00e04c6800a9','1','2020-11-04 00:00:00',NULL),(472,'638506365','638506365_realisasi_fisik_2020.xlsx','.xlsx','205.03',NULL,NULL,'2020-11-04 13:47:55',NULL,'0af6601d-1d74-11eb-a34c-00e04c6800a9','1','2020-11-04 00:00:00',NULL),(473,'477843390','477843390_Reallisasi_fisik_dan_keuangan_Okt_2020.pdf','.pdf','657.17',NULL,NULL,'2020-11-04 13:48:17',NULL,'0af0bc04-1d74-11eb-a34c-00e04c6800a9','1','2020-11-04 00:00:00',NULL),(474,'1392868095','1392868095_Pemanfaatan_BOK_OKT_2020.pdf','.pdf','295.52',NULL,NULL,'2020-11-04 13:50:24',NULL,'0af0bc04-1d74-11eb-a34c-00e04c6800a9','1','2020-11-04 00:00:00',NULL),(475,'647820095','647820095_LB_1_OKTOBER_2020.xls','.xls','168',NULL,NULL,'2020-11-04 13:50:40',NULL,'0af6601d-1d74-11eb-a34c-00e04c6800a9','1','2020-11-04 00:00:00',NULL),(476,'2141501678','2141501678_KUNJUNGAN_PKM_CIBEUREUM_2020.xls','.xls','149',NULL,NULL,'2020-11-04 13:53:22',NULL,'0af6601d-1d74-11eb-a34c-00e04c6800a9','1','2020-11-04 00:00:00',NULL),(477,'1012469754','1012469754_LB1DlmOkt20.xls','.xls','64',NULL,NULL,'2020-11-05 01:02:01',NULL,'0af25a83-1d74-11eb-a34c-00e04c6800a9','1','2020-11-05 00:00:00',NULL),(478,'1012469754','1012469754_LB1LKOkt20.xls','.xls','47',NULL,NULL,'2020-11-05 01:02:01',NULL,'0af25a83-1d74-11eb-a34c-00e04c6800a9','1','2020-11-05 00:00:00',NULL),(479,'1690726232','1690726232_LapKunjungan_OKTOBER.xlsx','.xlsx','63.5',NULL,NULL,'2020-11-05 01:15:33',NULL,'0af25a83-1d74-11eb-a34c-00e04c6800a9','1','2020-11-05 00:00:00',NULL),(480,'391894210','391894210_SPM_OKT_2020.xlsx','.xlsx','38.08',NULL,NULL,'2020-11-05 01:19:34',NULL,'0af25a83-1d74-11eb-a34c-00e04c6800a9','1','2020-11-05 00:00:00',NULL),(481,'1457235549','1457235549_Laporan_SIIDOLA_Bulan_Oktober_2020.jpg','.jpg','1014.89',NULL,NULL,'2020-11-05 01:35:32',NULL,'0af1d25a-1d74-11eb-a34c-00e04c6800a9','1','2020-11-05 00:00:00',NULL),(482,'2005362730','2005362730_PENGANTAR_LAPORAN_SIIDOLA_OKTOBER_2020_PKM_MELONG_ASIH.pdf','.pdf','943.44',NULL,NULL,'2020-11-05 01:46:00',NULL,'0af216cf-1d74-11eb-a34c-00e04c6800a9','1','2020-11-05 00:00:00',NULL),(483,'2005362730','2005362730_LAPORAN_SPM_BULAN_OKTOBER_2020_PKM_MELONG_ASIH.xlsx','.xlsx','17.36',NULL,NULL,'2020-11-05 01:46:00',NULL,'0af216cf-1d74-11eb-a34c-00e04c6800a9','1','2020-11-05 00:00:00',NULL),(484,'2097522748','2097522748_FISKEU_OKTOBER_2020_PKM_MELONG_ASIH.xlsx','.xlsx','41.2',NULL,NULL,'2020-11-05 01:47:12',NULL,'0af216cf-1d74-11eb-a34c-00e04c6800a9','1','2020-11-05 00:00:00',NULL),(485,'66313391','66313391_LB_1_OKTOBER_2020_LUAR_WILAYAH.xls','.xls','26.5',NULL,NULL,'2020-11-05 01:50:31',NULL,'0af29c04-1d74-11eb-a34c-00e04c6800a9','1','2020-11-05 00:00:00',NULL),(486,'66313391','66313391_LB_1_OKTOBER_2020_LUAR_KOTA_KABUPATEN.xls','.xls','16',NULL,NULL,'2020-11-05 01:50:31',NULL,'0af29c04-1d74-11eb-a34c-00e04c6800a9','1','2020-11-05 00:00:00',NULL),(487,'66313391','66313391_LB_1_OKTOBER_2020_DALAM_WILAYAH.xls','.xls','91',NULL,NULL,'2020-11-05 01:50:31',NULL,'0af29c04-1d74-11eb-a34c-00e04c6800a9','1','2020-11-05 00:00:00',NULL),(488,'1387476516','1387476516_LAP_SPM_PKM_CT_OKT_2020.xlsx','.xlsx','50.67',NULL,NULL,'2020-11-05 01:51:55',NULL,'0af29c04-1d74-11eb-a34c-00e04c6800a9','1','2020-11-05 00:00:00',NULL),(489,'378383868','378383868_Fisik_Keuangan_OKTOBER_2020.xls','.xls','154.5',NULL,NULL,'2020-11-05 01:52:51',NULL,'0af29c04-1d74-11eb-a34c-00e04c6800a9','1','2020-11-05 00:00:00',NULL),(490,'1881677465','1881677465_LAP_PEMANFAATAN_CT_OKT_2020.xlsx','.xlsx','185.55',NULL,NULL,'2020-11-05 01:54:17',NULL,'0af29c04-1d74-11eb-a34c-00e04c6800a9','1','2020-11-05 00:00:00',NULL),(491,'1686398731','1686398731_3__LAP_REALISASI_Oktober20.xlsx','.xlsx','23.02',NULL,NULL,'2020-11-05 01:55:28',NULL,'0af29c04-1d74-11eb-a34c-00e04c6800a9','1','2020-11-05 00:00:00',NULL),(492,'1553884826','1553884826_PEMANFAATAN_BOK_OKTOBER_2020_PKM_MELONG_ASIH.xlsx','.xlsx','35.79',NULL,NULL,'2020-11-05 01:59:27',NULL,'0af216cf-1d74-11eb-a34c-00e04c6800a9','1','2020-11-05 00:00:00',NULL),(493,'1096138464','1096138464_Laporan_Kun_jungan_Oktober_2020.pdf','.pdf','658.96',NULL,NULL,'2020-11-05 02:01:43',NULL,'0af1d25a-1d74-11eb-a34c-00e04c6800a9','1','2020-11-05 00:00:00',NULL),(494,'1096138464','1096138464_LaPORAN_lb_1_oKTOBER_2020.xlsx','.xlsx','35.64',NULL,NULL,'2020-11-05 02:01:43',NULL,'0af1d25a-1d74-11eb-a34c-00e04c6800a9','1','2020-11-05 00:00:00',NULL),(497,'18239440','18239440_LAPORAN_LB1.pdf','.pdf','11088.06',NULL,NULL,'2020-11-05 02:08:33',NULL,'0af57fa3-1d74-11eb-a34c-00e04c6800a9','1','2020-11-05 00:00:00',NULL),(498,'1292269014','1292269014_Laporan_Pemanfaatan_dan_Realisasi_BOK_Bln_Oktober.pdf','.pdf','5372.7',NULL,NULL,'2020-11-05 02:10:02',NULL,'0af57fa3-1d74-11eb-a34c-00e04c6800a9','1','2020-11-05 00:00:00',NULL),(499,'11899062','11899062_REALISASI_FISIK_DAN_KEUANGAN_JKN_Oktober_2020.pdf','.pdf','3775.07',NULL,NULL,'2020-11-05 02:12:18',NULL,'0af57fa3-1d74-11eb-a34c-00e04c6800a9','1','2020-11-05 00:00:00',NULL),(500,'716662301','716662301_Laporan_Kunjungan.pdf','.pdf','525.08',NULL,NULL,'2020-11-05 02:14:03',NULL,'0af57fa3-1d74-11eb-a34c-00e04c6800a9','1','2020-11-05 00:00:00',NULL),(501,'160229333','160229333_STANDAR_PELAYANAN_MINIMAL.pdf','.pdf','277.7',NULL,NULL,'2020-11-05 02:15:11',NULL,'0af57fa3-1d74-11eb-a34c-00e04c6800a9','1','2020-11-05 00:00:00',NULL),(502,'1842261663','1842261663_2_REALISASI_Fisikkeu_JKN_PKK_Cimteng_2_Oktober_2020_.xlsx','.xlsx','381.63','Mohon diisi /dilengkapi pada kolom permasalahan',NULL,'2020-11-05 02:20:34','2020-11-09 06:33:49','0af604df-1d74-11eb-a34c-00e04c6800a9','1','2020-11-05 00:00:00','0af3f4c1-1d74-11eb-a34c-00e04c6800a9'),(503,'1842261663','1842261663_2__LRA_JKN_Cimteng_2020_s_d__Oktober_2020_.xlsx','.xlsx','30.54',NULL,NULL,'2020-11-05 02:20:34',NULL,'0af604df-1d74-11eb-a34c-00e04c6800a9','1','2020-11-05 00:00:00',NULL),(504,'1842261663','1842261663_Pengantar_Laporan_SIDOLA_Oktober_2020.pdf','.pdf','286.65',NULL,NULL,'2020-11-05 02:20:34',NULL,'0af604df-1d74-11eb-a34c-00e04c6800a9','1','2020-11-05 00:00:00',NULL),(505,'1911503873','1911503873_Pemanfaatan_BOK_2020_PKM_METENG.xlsx','.xlsx','172.93',NULL,NULL,'2020-11-05 02:24:48',NULL,'0af25a83-1d74-11eb-a34c-00e04c6800a9','1','2020-11-05 00:00:00',NULL),(507,'179542283','179542283_SPM_OKTOBER_2020.xlsx','.xlsx','82.98',NULL,NULL,'2020-11-05 02:29:54',NULL,'0af1d25a-1d74-11eb-a34c-00e04c6800a9','1','2020-11-05 00:00:00',NULL),(508,'1466202065','1466202065_rekap_pemanfaatan_sidola.xlsx','.xlsx','19.58',NULL,NULL,'2020-11-05 02:34:04',NULL,'0af604df-1d74-11eb-a34c-00e04c6800a9','1','2020-11-05 00:00:00',NULL),(509,'1466202065','1466202065_Pengantar_Laporan_SIDOLA_Oktober_2020.pdf','.pdf','286.65',NULL,NULL,'2020-11-05 02:34:04',NULL,'0af604df-1d74-11eb-a34c-00e04c6800a9','1','2020-11-05 00:00:00',NULL),(510,'1466202065','1466202065_pemanfaatan_OKt_2020.xlsx','.xlsx','30.31',NULL,NULL,'2020-11-05 02:34:04',NULL,'0af604df-1d74-11eb-a34c-00e04c6800a9','1','2020-11-05 00:00:00',NULL),(511,'1466202065','1466202065_pemanfaatan_nov_2020.xlsx','.xlsx','30.21',NULL,NULL,'2020-11-05 02:34:04',NULL,'0af604df-1d74-11eb-a34c-00e04c6800a9','1','2020-11-05 00:00:00',NULL),(512,'83648588','83648588_Pengantar_Laporan_SIDOLA_Oktober_2020.pdf','.pdf','286.65',NULL,NULL,'2020-11-05 02:35:04',NULL,'0af604df-1d74-11eb-a34c-00e04c6800a9','1','2020-11-05 00:00:00',NULL),(513,'83648588','83648588_SPM_OKT_2020.xlsx','.xlsx','17.18',NULL,NULL,'2020-11-05 02:35:04',NULL,'0af604df-1d74-11eb-a34c-00e04c6800a9','1','2020-11-05 00:00:00',NULL),(514,'1878784329','1878784329_Lap_Peserta_FBI_JKN.pdf','.pdf','418.61',NULL,NULL,'2020-11-05 02:41:26',NULL,'0af0bc04-1d74-11eb-a34c-00e04c6800a9','1','2020-11-05 00:00:00',NULL),(515,'1446254512','1446254512_Pengantar_Laporan_SIDOLA_Oktober_2020.pdf','.pdf','286.65',NULL,NULL,'2020-11-05 02:47:43',NULL,'0af604df-1d74-11eb-a34c-00e04c6800a9','1','2020-11-05 00:00:00',NULL),(516,'1446254512','1446254512_LAPORAN_KUNJUNGAN_PUSKESMAS_CIMAHI_TENGAH_BULAN_OKTOBER_2020.xlsx','.xlsx','15.11',NULL,NULL,'2020-11-05 02:47:43',NULL,'0af604df-1d74-11eb-a34c-00e04c6800a9','1','2020-11-05 00:00:00',NULL),(523,'1197772219','1197772219_Rekapan_Keg_BOK_Tahunan_Okt_2020.pdf','.pdf','1142.06',NULL,NULL,'2020-11-05 04:59:01',NULL,'0af0bc04-1d74-11eb-a34c-00e04c6800a9','1','2020-11-05 00:00:00',NULL),(524,'1197772219','1197772219_SPM_OKT_2020_hal_2.pdf','.pdf','404.33',NULL,NULL,'2020-11-05 04:59:01',NULL,'0af0bc04-1d74-11eb-a34c-00e04c6800a9','1','2020-11-05 00:00:00',NULL),(525,'1197772219','1197772219_SPM_OKT_2020_hal_1.pdf','.pdf','436.62',NULL,NULL,'2020-11-05 04:59:01',NULL,'0af0bc04-1d74-11eb-a34c-00e04c6800a9','1','2020-11-05 00:00:00',NULL),(526,'504684335','504684335_Pemanfaatan_OKT_2020.xlsx','.xlsx','38.88',NULL,NULL,'2020-11-05 07:22:48',NULL,'0af6601d-1d74-11eb-a34c-00e04c6800a9','1','2020-11-05 00:00:00',NULL),(527,'1120989326','1120989326_SURAT_PENGANTAR_PELAPORAN_OKTOBER_2020_-_PUSKESMAS_PADASUKA_KOTA_CIMAHI.pdf','.pdf','428.71',NULL,NULL,'2020-11-05 09:35:47',NULL,'0af2df94-1d74-11eb-a34c-00e04c6800a9','1','2020-11-05 00:00:00',NULL),(528,'1120989326','1120989326_SPM_Oktober_2020_-_PKM_Padasuka_Revisi.xlsx','.xlsx','20.48',NULL,'Laporan SPM Bulan Oktober 2020 Puskesmas Padasuka Revisi','2020-11-05 09:35:47','2020-11-16 06:47:36','0af2df94-1d74-11eb-a34c-00e04c6800a9','1','2020-11-05 00:00:00',NULL),(531,'40604765','40604765_template_lb1_Oktober.xls','.xls','185',NULL,NULL,'2020-11-05 09:37:46',NULL,'0af2df94-1d74-11eb-a34c-00e04c6800a9','1','2020-11-05 00:00:00',NULL),(532,'40604765','40604765_SURAT_PENGANTAR_PELAPORAN_OKTOBER_2020_-_PUSKESMAS_PADASUKA_KOTA_CIMAHI.pdf','.pdf','428.71',NULL,NULL,'2020-11-05 09:37:46',NULL,'0af2df94-1d74-11eb-a34c-00e04c6800a9','1','2020-11-05 00:00:00',NULL),(536,'1388938580','1388938580_SURAT_PENGANTAR_PELAPORAN_OKTOBER_2020_-_PUSKESMAS_PADASUKA_KOTA_CIMAHI.pdf','.pdf','428.71',NULL,NULL,'2020-11-05 09:44:37',NULL,'0af2df94-1d74-11eb-a34c-00e04c6800a9','1','2020-11-05 00:00:00',NULL),(535,'1388938580','1388938580_10__Lap__Fisik_Keuangan_JKN_Oktober_2020_-_PKM_Padasuka.xlsx','.xlsx','50.21',NULL,NULL,'2020-11-05 09:44:37',NULL,'0af2df94-1d74-11eb-a34c-00e04c6800a9','1','2020-11-05 00:00:00',NULL),(537,'252237129','252237129_Data_Kunjungan_Pasien_JKN_-_PKM_Padasuka_Sampai_Dengan_Oktober_2020.xlsx','.xlsx','10.1',NULL,NULL,'2020-11-05 09:45:29',NULL,'0af2df94-1d74-11eb-a34c-00e04c6800a9','1','2020-11-05 00:00:00',NULL),(538,'252237129','252237129_SURAT_PENGANTAR_PELAPORAN_OKTOBER_2020_-_PUSKESMAS_PADASUKA_KOTA_CIMAHI.pdf','.pdf','428.71',NULL,NULL,'2020-11-05 09:45:29',NULL,'0af2df94-1d74-11eb-a34c-00e04c6800a9','1','2020-11-05 00:00:00',NULL),(539,'1249589701','1249589701_LAPORAN_SPM_PUSKESMAS_CIMAHI_SELATAN_OKTOBER_2020.xlsx','.xlsx','16.31',NULL,NULL,'2020-11-05 12:55:06',NULL,'0af12891-1d74-11eb-a34c-00e04c6800a9','1','2020-11-05 00:00:00',NULL),(540,'1249589701','1249589701_SURAT_PENGANTAR_LAPORAN_BULAN_OKTOBER_2020.docx','.docx','38.61',NULL,NULL,'2020-11-05 12:55:06',NULL,'0af12891-1d74-11eb-a34c-00e04c6800a9','1','2020-11-05 00:00:00',NULL),(541,'229507329','229507329_SURAT_PENGANTAR_LAPORAN_BULAN_OKTOBER_2020.docx','.docx','38.61','',NULL,'2020-11-05 12:56:26','2020-11-09 04:27:18','0af12891-1d74-11eb-a34c-00e04c6800a9','1','2020-11-05 00:00:00','0af3f4c1-1d74-11eb-a34c-00e04c6800a9'),(542,'229507329','229507329_LAPORAN_FISIK_KEUANGAN_PUSKESMAS_CIMAHI_SELATAN_OKTOBER_2020.xlsx','.xlsx','362.58','Mohon diisi kolom permasalahannya',NULL,'2020-11-05 12:56:26','2020-11-09 04:26:52','0af12891-1d74-11eb-a34c-00e04c6800a9','1','2020-11-05 00:00:00','0af3f4c1-1d74-11eb-a34c-00e04c6800a9');
/*!40000 ALTER TABLE `document_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document_table_bidang`
--

DROP TABLE IF EXISTS `document_table_bidang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `document_table_bidang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_document` varchar(255) DEFAULT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `file_type` varchar(32) DEFAULT NULL,
  `file_size` varchar(64) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `catatan_perbaikan` text DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `id_user` varchar(128) DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL,
  `upload_date` datetime DEFAULT NULL,
  `updatedby` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`),
  KEY `id_document` (`id_document`),
  KEY `document_name` (`file_name`)
) ENGINE=MyISAM AUTO_INCREMENT=573 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document_table_bidang`
--

LOCK TABLES `document_table_bidang` WRITE;
/*!40000 ALTER TABLE `document_table_bidang` DISABLE KEYS */;
/*!40000 ALTER TABLE `document_table_bidang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document_table_sewaktu`
--

DROP TABLE IF EXISTS `document_table_sewaktu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `document_table_sewaktu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_document` varchar(255) DEFAULT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `file_type` varchar(32) DEFAULT NULL,
  `file_size` varchar(64) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `catatan_perbaikan` text DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `id_user` varchar(128) DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL,
  `upload_date` datetime DEFAULT NULL,
  `updatedby` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`),
  KEY `id_document` (`id_document`),
  KEY `document_name` (`file_name`)
) ENGINE=MyISAM AUTO_INCREMENT=233 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document_table_sewaktu`
--

LOCK TABLES `document_table_sewaktu` WRITE;
/*!40000 ALTER TABLE `document_table_sewaktu` DISABLE KEYS */;
INSERT INTO `document_table_sewaktu` VALUES (229,'490259312','490259312_Petunjuk_Teknis_Pelaksanaan_Sertifikasi_Keahlian_pada_Program_Keahlian_Ganda.pdf','.pdf','550.66',NULL,NULL,'2020-10-19 09:03:27',NULL,'476635ce-0eb5-11eb-ae49-00e04c6800a9','1','2020-10-19 00:00:00',NULL),(225,'38467294','38467294_s7-cendana-doc-id-v_1_2.pdf','.pdf','8471.34',NULL,NULL,'2020-10-19 08:39:47',NULL,'476635ce-0eb5-11eb-ae49-00e04c6800a9','1','2020-10-19 00:00:00',NULL),(227,'264487826','264487826_Dedy_Ardiansyah-8-stmikelrahma.pdf','.pdf','345.45',NULL,NULL,'2020-10-19 08:56:49',NULL,'476635ce-0eb5-11eb-ae49-00e04c6800a9','1','2020-10-19 00:00:00',NULL),(223,'38467294','38467294_TUGAS_KAKA.docx','.docx','15.92',NULL,NULL,'2020-10-19 08:38:40',NULL,'476635ce-0eb5-11eb-ae49-00e04c6800a9','1','2020-10-19 00:00:00',NULL),(224,'38467294','38467294_Sistem_Informasi_Pemerintahan_Daerah_-_Cetak_RKA_2_2.docx','.docx','41.13',NULL,NULL,'2020-10-19 08:38:40',NULL,'476635ce-0eb5-11eb-ae49-00e04c6800a9','1','2020-10-19 00:00:00',NULL),(230,'1010100524','1010100524_Sistem_Informasi_Pemerintahan_Daerah_-_Cetak_RKA_2_2.docx','.docx','41.13',NULL,NULL,'2020-10-21 03:40:38',NULL,'476635ce-0eb5-11eb-ae49-00e04c6800a9','1','2020-10-21 00:00:00',NULL),(231,'1010100524','1010100524_1.PNG','.PNG','60.58',NULL,NULL,'2020-10-21 03:40:38',NULL,'476635ce-0eb5-11eb-ae49-00e04c6800a9','1','2020-10-21 00:00:00',NULL),(232,'1452247758','1452247758_Status_Mahasiswa.xlsx','.xlsx','145.43',NULL,NULL,'2020-10-29 14:59:38',NULL,'476635ce-0eb5-11eb-ae49-00e04c6800a9','1','2020-10-29 00:00:00',NULL);
/*!40000 ALTER TABLE `document_table_sewaktu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document_upload`
--

DROP TABLE IF EXISTS `document_upload`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `document_upload` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_document` varchar(255) NOT NULL,
  `document_name` varchar(255) DEFAULT NULL,
  `id_kategori` int(20) DEFAULT NULL,
  `duedate` date DEFAULT NULL,
  `status_duedate` varchar(128) DEFAULT NULL,
  `bulan` varchar(255) DEFAULT NULL,
  `tahun` varchar(255) DEFAULT NULL,
  `status_dokumen` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `tanggapan` text DEFAULT NULL,
  `id_puskesmas` varchar(250) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `updatedby` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`,`id_document`) USING BTREE,
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=344 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document_upload`
--

LOCK TABLES `document_upload` WRITE;
/*!40000 ALTER TABLE `document_upload` DISABLE KEYS */;
INSERT INTO `document_upload` VALUES (164,'1770869971','Laporan Capaian SPM',1,'2020-09-05','Terlambat','8','2020','2','laporan spm bulan agustus',NULL,'eb23d02f-edb2-11ea-b568-00e04c6800a9','76ec416b-fe08-11ea-8e39-40f2e99f5ba5','2020-09-24 08:46:09','2020-09-24 08:46:15',NULL),(165,'715588300','Laporan LB 1',21,'2020-09-05','Terlambat','8','2020','2','',NULL,'eb23d02f-edb2-11ea-b568-00e04c6800a9','76ec416b-fe08-11ea-8e39-40f2e99f5ba5','2020-09-24 08:47:28','2020-09-24 08:47:33',NULL),(163,'855970253','Laporan Realisasi Fisik Keuangan',2,'2020-09-05','Terlambat','8','2020','2','Laporan Fiskeu Agustus','','eb23cdd4-edb2-11ea-b568-00e04c6800a9','76ec3918-fe08-11ea-8e39-40f2e99f5ba5','2020-09-24 02:57:39','2020-09-24 03:05:28','76ec34c0-fe08-11ea-8e39-40f2e99f5ba5'),(162,'1871569544','Laporan Realisasi Fisik Keuangan',2,'2020-09-05','Terlambat','8','2020','6','Laporan Fisik Keuangan Bulan Agustus 2020','format belum sesuai ','eb23d02f-edb2-11ea-b568-00e04c6800a9','76ec416b-fe08-11ea-8e39-40f2e99f5ba5','2020-09-24 02:50:01','2020-09-24 03:06:12','76ec34c0-fe08-11ea-8e39-40f2e99f5ba5'),(334,'1201903670','Pemanfaatan BOK',27,'2020-11-05','Tepat waktu','10','2020','2','Laporan Pemanfaatan BOK - Puskesmas Padasuka Kota Cimahi Bulan Oktober 2020',NULL,'eb23cf55-edb2-11ea-b568-00e04c6800a9','0af2df94-1d74-11eb-a34c-00e04c6800a9','2020-11-05 09:37:00','2020-11-05 09:45:41','0af2df94-1d74-11eb-a34c-00e04c6800a9'),(161,'1331962603','Laporan Capaian SPM',1,'2020-09-05','Terlambat','8','2020','2','Lap capaian SPM Leuwigajah Agustus 2020',NULL,'eb23ce28-edb2-11ea-b568-00e04c6800a9','bdf058e8-f7ba-11ea-952e-179bc60eef89','2020-09-21 08:16:25','2020-11-05 02:15:57',NULL),(314,'18239440','Laporan LB 1',21,'2020-11-05','Tepat waktu','10','2020','3','Laporan LB1 Bulan Oktober 2020','file excelnya kirimkan juga ya\njgn ke email untuk yg bulan depan','eb23ce28-edb2-11ea-b568-00e04c6800a9','0af57fa3-1d74-11eb-a34c-00e04c6800a9','2020-11-05 02:08:31','2020-11-05 02:45:37','0af36077-1d74-11eb-a34c-00e04c6800a9'),(158,'1094432396','Laporan Capaian SPM',1,'2020-09-05','Terlambat','8','2020','2','Laporan capaian SPM pasirkaliki Agustus 2020',NULL,'eb23d081-edb2-11ea-b568-00e04c6800a9','762f6cee-f7bb-11ea-952e-179bc60eef89','2020-09-21 08:10:43','2020-09-21 08:10:59',NULL),(155,'1265348186','Laporan Capaian SPM',1,'2020-09-05','Terlambat','8','2020','2','',NULL,'eb23cebf-edb2-11ea-b568-00e04c6800a9','93e134f7-f7d2-11ea-952e-179bc60eef89','2020-09-18 09:15:33','2020-09-18 09:15:43',NULL),(157,'1095547323','Laporan Capaian SPM',1,'2020-09-05','Terlambat','8','2020','2','Laporan Capaian SPM Meteng Agustus 2020',NULL,'eb23ce75-edb2-11ea-b568-00e04c6800a9','f13f3b68-edae-11ea-b568-00e04c6800a9','2020-09-21 08:08:11','2020-09-21 08:08:29',NULL),(152,'1135090712','Laporan Capaian SPM',1,'2020-09-05','Terlambat','8','2020','2','Laporan Capaian SPM Cimahi Utara Agustus 2020',NULL,'eb23cfc2-edb2-11ea-b568-00e04c6800a9','f13f3a46-edae-11ea-b568-00e04c6800a9','2020-09-18 09:01:19','2020-09-18 09:01:40',NULL),(156,'903192658','Laporan Capaian SPM',1,'2020-09-05','Terlambat','8','2020','6','Laporan Capaian SPM Cipageran Agustus 2020','format belum sesuai, capaian belum ada, analisa belum ada ','eb23d02f-edb2-11ea-b568-00e04c6800a9','f13f3aa9-edae-11ea-b568-00e04c6800a9','2020-09-18 09:20:30','2020-09-21 04:17:03','f13f37f1-edae-11ea-b568-00e04c6800a9'),(154,'1677262714','Laporan Capaian SPM',1,'2020-09-05','Terlambat','8','2020','2','Laporan Capaian SPM Citeureup 2020',NULL,'eb23d0d3-edb2-11ea-b568-00e04c6800a9','f13f40b8-edae-11ea-b568-00e04c6800a9','2020-09-18 09:14:17','2020-09-18 09:14:20',NULL),(151,'1280964237','Laporan Capaian SPM',1,'2020-09-05','Terlambat','8','2020','2','Laporan Capaian SPM Cigugur Tengah Agustus 2020',NULL,'eb23cf09-edb2-11ea-b568-00e04c6800a9','f13f3bc3-edae-11ea-b568-00e04c6800a9','2020-09-18 08:50:55','2020-09-18 08:51:12',NULL),(148,'1404261890','Laporan Realisasi Fisik Keuangan',2,'2020-09-05','Terlambat','8','2020','3','Fisik Keuangan Agustus','','eb23cf55-edb2-11ea-b568-00e04c6800a9','f13f3c22-edae-11ea-b568-00e04c6800a9','2020-09-18 01:41:21','2020-09-18 02:05:47','f13f37f1-edae-11ea-b568-00e04c6800a9'),(149,'984365021','Laporan Capaian SPM',1,'2020-09-05','Terlambat','8','2020','2','Laporan Pacapaian SPM Cibeureunm Agustus 2020',NULL,'eb23cd7e-edb2-11ea-b568-00e04c6800a9','c7000b33-f7d2-11ea-952e-179bc60eef89','2020-09-18 07:56:47','2020-09-18 07:57:07',NULL),(150,'1647731789','Laporan Capaian SPM',1,'2020-09-05','Terlambat','8','2020','2','Laporan Capaian SPM Cibeber Agustus 2020',NULL,'eb23cdd4-edb2-11ea-b568-00e04c6800a9','f13f3945-edae-11ea-b568-00e04c6800a9','2020-09-18 08:00:46','2020-09-18 08:01:02',NULL),(166,'2061643152','Laporan JKN Tahunan',29,'2020-09-05','Terlambat','8','2020','2','LRa Bulan Agustus 2020',NULL,'eb23d02f-edb2-11ea-b568-00e04c6800a9','76ec416b-fe08-11ea-8e39-40f2e99f5ba5','2020-09-25 00:23:19','2020-09-25 00:23:27',NULL),(252,'111230254','Laporan Realisasi Fisik Keuangan',2,'2020-10-05','Tepat waktu','9','2020','3','Laporan Realisasi Fisik Keuangan Puskesmas Cimahi Selatan September 2020\r\nLaporan PKK Puskesmas Cimahi Selatan September 2020\r\nLaporan MONEV Renja TW III\r\nSurat Pengantar Laporan','','eb23cb33-edb2-11ea-b568-00e04c6800a9','76ec3c2e-fe08-11ea-8e39-40f2e99f5ba5','2020-10-05 06:39:43','2020-10-19 01:47:48','76ec5641-fe08-11ea-8e39-40f2e99f5ba5'),(222,'570266969','Laporan LB 1',21,'2020-10-05','Tepat waktu','9','2020','3','Laporan LB 1 bulan September 2020, Puskesmas Cimahi Utara','laporan telah sesuai \nhaturnuhu','eb23cfc2-edb2-11ea-b568-00e04c6800a9','76ec3ed3-fe08-11ea-8e39-40f2e99f5ba5','2020-10-05 01:46:37','2020-10-06 03:18:29','76ec510e-fe08-11ea-8e39-40f2e99f5ba5'),(169,'262816645','Laporan LB 1',21,'2020-09-05','Terlambat','8','2020','2','',NULL,'eb23cdd4-edb2-11ea-b568-00e04c6800a9','76ec3918-fe08-11ea-8e39-40f2e99f5ba5','2020-09-25 01:14:39','2020-09-25 01:15:49',NULL),(170,'332604037','Laporan LB 1',21,'2020-09-05','Terlambat','8','2020','2','',NULL,'eb23cb33-edb2-11ea-b568-00e04c6800a9','76ec3c2e-fe08-11ea-8e39-40f2e99f5ba5','2020-09-25 01:22:12','2020-09-25 01:22:17',NULL),(171,'1730354571','Laporan LB 1',21,'2020-09-05','Terlambat','8','2020','2','',NULL,'eb23cce3-edb2-11ea-b568-00e04c6800a9','76ec43f3-fe08-11ea-8e39-40f2e99f5ba5','2020-09-25 01:26:29','2020-09-25 01:29:46',NULL),(172,'2094696850','Laporan LB 1',21,'2020-09-05','Terlambat','8','2020','2','',NULL,'eb23ce75-edb2-11ea-b568-00e04c6800a9','76ec468a-fe08-11ea-8e39-40f2e99f5ba5','2020-09-25 01:33:59','2020-09-25 01:34:13',NULL),(173,'1037092024','Laporan LB 1',21,'2020-09-05','Terlambat','8','2020','2','',NULL,'eb23cf09-edb2-11ea-b568-00e04c6800a9','76ec4921-fe08-11ea-8e39-40f2e99f5ba5','2020-09-25 01:41:24','2020-09-25 01:41:32',NULL),(174,'888912190','Laporan LB 1',21,'2020-09-05','Terlambat','8','2020','2','',NULL,'eb23cf55-edb2-11ea-b568-00e04c6800a9','76ec4bc7-fe08-11ea-8e39-40f2e99f5ba5','2020-09-25 01:59:01','2020-09-25 02:01:31',NULL),(175,'1342482683','Laporan LB 1',21,'2020-09-05','Terlambat','8','2020','2','',NULL,'eb23d0d3-edb2-11ea-b568-00e04c6800a9','76ec63d1-fe08-11ea-8e39-40f2e99f5ba5','2020-09-25 02:04:46','2020-09-25 02:04:50',NULL),(176,'1781995257','Laporan LB 1',21,'2020-09-05','Terlambat','8','2020','2','',NULL,'eb23ce28-edb2-11ea-b568-00e04c6800a9','76ec66b1-fe08-11ea-8e39-40f2e99f5ba5','2020-09-25 02:07:02','2020-09-25 02:07:11',NULL),(177,'684094662','Laporan LB 1',21,'2020-09-05','Terlambat','8','2020','2','',NULL,'eb23d081-edb2-11ea-b568-00e04c6800a9','76ec69a5-fe08-11ea-8e39-40f2e99f5ba5','2020-09-25 02:09:16','2020-09-25 02:09:32',NULL),(178,'1710007259','Laporan LB 1',21,'2020-09-05','Terlambat','8','2020','2','',NULL,'eb23cebf-edb2-11ea-b568-00e04c6800a9','76ec6c94-fe08-11ea-8e39-40f2e99f5ba5','2020-09-25 02:14:12','2020-09-25 02:14:29',NULL),(179,'1223522294','Laporan Realisasi Fisik Keuangan',2,'2020-09-05','Terlambat','8','2020','2','Laporan fiskeu Agustus',NULL,'eb23cd7e-edb2-11ea-b568-00e04c6800a9','76ec6f8d-fe08-11ea-8e39-40f2e99f5ba5','2020-09-25 02:27:48','2020-09-25 02:28:03',NULL),(180,'1469595593','Pemanfaatan BOK',27,'2020-09-05','Terlambat','8','2020','2','Laporan Pemanfaatan BOK Puskesmas Cibeureum Bulan AGustus 2020',NULL,'eb23cd7e-edb2-11ea-b568-00e04c6800a9','76ec6f8d-fe08-11ea-8e39-40f2e99f5ba5','2020-09-25 07:56:51','2020-09-25 07:57:41',NULL),(181,'1736603418','Pemanfaatan BOK',27,'2020-09-05','Terlambat','8','2020','2','Laporan Pemanfaatan BOK Bulan Agustus 2020',NULL,'eb23cdd4-edb2-11ea-b568-00e04c6800a9','76ec3918-fe08-11ea-8e39-40f2e99f5ba5','2020-09-25 08:09:09','2020-09-25 08:09:16',NULL),(182,'1549866191','Pemanfaatan BOK',27,'2020-09-05','Terlambat','8','2020','2','Laporan Pemanfaatan BOK Puskesmas Cimahi Tengah Bulan Agustus 2020',NULL,'eb23cebf-edb2-11ea-b568-00e04c6800a9','76ec6c94-fe08-11ea-8e39-40f2e99f5ba5','2020-09-25 08:11:08','2020-09-25 08:11:16',NULL),(183,'933924018','Pemanfaatan BOK',27,'2020-09-05','Terlambat','8','2020','2','Laporan Pemanfaatan BOK Puskesmas Cimahi Utara Bulan Agustus 2020',NULL,'eb23cfc2-edb2-11ea-b568-00e04c6800a9','76ec3ed3-fe08-11ea-8e39-40f2e99f5ba5','2020-09-25 08:13:13','2020-09-25 08:13:20',NULL),(184,'1199560065','Pemanfaatan BOK',27,'2020-09-05','Terlambat','8','2020','2','Laporan Pemanfaatan BOK Puskesmas Melong Tengah Bulan Agustus 2020',NULL,'eb23ce75-edb2-11ea-b568-00e04c6800a9','76ec468a-fe08-11ea-8e39-40f2e99f5ba5','2020-09-25 08:19:38','2020-09-25 08:19:43',NULL),(185,'672093509','Laporan Capaian SPM',1,'2020-09-05','Terlambat','8','2020','3','LAPORAN ','','eb23d081-edb2-11ea-b568-00e04c6800a9','76ec69a5-fe08-11ea-8e39-40f2e99f5ba5','2020-09-28 02:35:54','2020-09-28 02:47:52','76ec4e68-fe08-11ea-8e39-40f2e99f5ba5'),(186,'833478747','Pemanfaatan BOK',27,'2020-10-05','Tepat waktu','9','2020','2','Laporan Pemanfaatan BOK bulan September 2020','','eb23d02f-edb2-11ea-b568-00e04c6800a9','76ec416b-fe08-11ea-8e39-40f2e99f5ba5','2020-09-30 00:26:18','2020-10-05 06:01:38','76ec34c0-fe08-11ea-8e39-40f2e99f5ba5'),(223,'524644017','Laporan LB 1',21,'2020-10-05','Tepat waktu','9','2020','3','laporan LB 1 Dalam Wilayah Kota Cimahi, Luar wilayah dan Luar Kota','laporan dalam bentuk excel saja ya ka\nngak usah PDF kecuali surat pengantar laporan \nnuhun','eb23d02f-edb2-11ea-b568-00e04c6800a9','76ec416b-fe08-11ea-8e39-40f2e99f5ba5','2020-10-05 01:51:50','2020-10-06 03:12:32','76ec510e-fe08-11ea-8e39-40f2e99f5ba5'),(188,'1411749754','Laporan LB 1',21,'2020-10-05','Tepat waktu','9','2020','2','lb1 september 2020',NULL,'eb23cebf-edb2-11ea-b568-00e04c6800a9','76ec6c94-fe08-11ea-8e39-40f2e99f5ba5','2020-10-02 04:38:57','2020-10-03 07:38:49',NULL),(266,'1364760989','Laporan Capaian SPM',1,'2020-10-05','Tepat waktu','9','2020','2','laporan SPM september 2020','','eb23d02f-edb2-11ea-b568-00e04c6800a9','76ec416b-fe08-11ea-8e39-40f2e99f5ba5','2020-10-02 00:09:35','2020-10-07 01:28:20','76ec34c0-fe08-11ea-8e39-40f2e99f5ba5'),(190,'680170119','Laporan LB 1',21,'2020-10-05','Terlambat','9','2020','2','laporan lb1 puskesmas pasirkaliki bulan september 2020',NULL,'eb23d081-edb2-11ea-b568-00e04c6800a9','76ec69a5-fe08-11ea-8e39-40f2e99f5ba5','2020-10-03 01:44:02','2020-10-07 00:22:13',NULL),(191,'855484612','Laporan JKN Tahunan',29,'2020-10-05','Terlambat','9','2020','2','LAPORAN KUNJUNGAN JKN BULAN SEPTEMBER 2020',NULL,'eb23d081-edb2-11ea-b568-00e04c6800a9','76ec69a5-fe08-11ea-8e39-40f2e99f5ba5','2020-10-03 03:39:09','2020-10-07 00:21:29',NULL),(192,'87258869','Laporan Realisasi Fisik Keuangan',2,'2020-10-05','Tepat waktu','9','2020','6','Laporan Fisik Keuangan JKN dan PKK Bulan September 2020 Puskesmas Padasuka Kota Cimahi','Laporan mohon dilengkapi/diperbaiki sesuai dengan catatan.\nLampirkan laporan PKK Triwulan 3 dalam file yang sama dengan Fisik keuangan (tambah sheet).\nTerimaksih','eb23cf55-edb2-11ea-b568-00e04c6800a9','76ec4bc7-fe08-11ea-8e39-40f2e99f5ba5','2020-10-03 05:40:00','2020-10-05 02:11:20','76ec5641-fe08-11ea-8e39-40f2e99f5ba5'),(193,'1773826092','Pemanfaatan BOK',27,'2020-10-05','Tepat waktu','9','2020','6','Laporan Pemanfaatan BOK Bulan September 2020 Puskesmas Padasuka','Lengkapi sesuai catatan dalam tanggapan','eb23cf55-edb2-11ea-b568-00e04c6800a9','76ec4bc7-fe08-11ea-8e39-40f2e99f5ba5','2020-10-03 05:42:21','2020-10-05 03:46:28','76ec58e2-fe08-11ea-8e39-40f2e99f5ba5'),(194,'1028500083','Laporan LB 1',21,'2020-10-05','Tepat waktu','9','2020','2','Laporan LB 1 Bulan September 2020 Puskesmas Padasuka Kota Cimahi',NULL,'eb23cf55-edb2-11ea-b568-00e04c6800a9','76ec4bc7-fe08-11ea-8e39-40f2e99f5ba5','2020-10-03 05:43:35','2020-10-03 05:50:36',NULL),(195,'1457942985','Laporan JKN Tahunan',29,'2020-10-05','Tepat waktu','9','2020','2','Laporan Realisasi Anggaran JKN Bulan September 2020 Puskesmas Padasuka Kota Cimahi',NULL,'eb23cf55-edb2-11ea-b568-00e04c6800a9','76ec4bc7-fe08-11ea-8e39-40f2e99f5ba5','2020-10-03 05:46:22','2020-10-03 05:50:38',NULL),(197,'1628654562','Laporan Capaian SPM',1,'2020-10-05','Tepat waktu','9','2020','55','Laporan SPM dan Analisa Puskesmas Cimahi Utara Bulan September 2020','Mohon Laporan diperbaiki sesuai catatan pada tanggapan.','eb23cfc2-edb2-11ea-b568-00e04c6800a9','76ec3ed3-fe08-11ea-8e39-40f2e99f5ba5','2020-10-03 06:25:44','2020-10-06 07:34:08','76ec5e50-fe08-11ea-8e39-40f2e99f5ba5'),(198,'1834351699','Laporan Realisasi Fisik Keuangan',2,'2020-10-05','Tepat waktu','9','2020','55','Laporan Realisasi Fisik dan PKK Puskesmas Cimahi Utara Bulan September 2020','Perbaiki sesuai catatan/tanggapan\nTerima kasih','eb23cfc2-edb2-11ea-b568-00e04c6800a9','76ec3ed3-fe08-11ea-8e39-40f2e99f5ba5','2020-10-03 06:27:59','2020-10-06 07:38:47','76ec5641-fe08-11ea-8e39-40f2e99f5ba5'),(199,'258960497','Peserta JKN PBI',12,'2020-10-05','Tepat waktu','9','2020','3','Laporan Kunjungan (Peserta JKN PBI) dan LRA Bulan September 2020 Puskesmas Cimahi Utara','','eb23cfc2-edb2-11ea-b568-00e04c6800a9','76ec3ed3-fe08-11ea-8e39-40f2e99f5ba5','2020-10-03 06:31:59','2020-10-06 02:07:42','76ec53a0-fe08-11ea-8e39-40f2e99f5ba5'),(200,'1535286370','Pemanfaatan BOK',27,'2020-10-05','Tepat waktu','9','2020','55','Laporan Pemanfaatan BOK Puskesmas Cimahi Utara Bulan September 2020','Lengkapi sesuai dengan catatan dalam tanggapan.','eb23cfc2-edb2-11ea-b568-00e04c6800a9','76ec3ed3-fe08-11ea-8e39-40f2e99f5ba5','2020-10-03 06:34:19','2020-10-06 07:36:40','76ec58e2-fe08-11ea-8e39-40f2e99f5ba5'),(204,'351301431','Laporan Realisasi Fisik Keuangan',2,'2020-10-05','Tepat waktu','9','2020','6','REALISASI FISIK DAN KEUANGAN KEGIATAN PELAYANAN KESEHATAN DASAR JAMINAN KESEHATAN NASIONAL DI PUSKESMAS CIMAHI TENGAH (38.06) BULAN SEPTEMBER 2020','Perbaiki sesuai catatan/tanggapan','eb23cebf-edb2-11ea-b568-00e04c6800a9','76ec6c94-fe08-11ea-8e39-40f2e99f5ba5','2020-10-03 07:20:47','2020-10-05 07:13:42','76ec5641-fe08-11ea-8e39-40f2e99f5ba5'),(202,'748169458','Laporan Capaian SPM',1,'2020-10-05','Tepat waktu','9','2020','6','PENCAPAIAN PELAKSANAAN SPM DI PUSKESMAS CIMAHI TENGAH  BULAN SEPTEMBER 2020','Mohon melengkapi Laporan sesuai catatan dalam tanggapan','eb23cebf-edb2-11ea-b568-00e04c6800a9','76ec6c94-fe08-11ea-8e39-40f2e99f5ba5','2020-10-03 07:11:44','2020-10-05 03:35:23','76ec5e50-fe08-11ea-8e39-40f2e99f5ba5'),(203,'1607679877','Pemanfaatan BOK',27,'2020-10-05','Tepat waktu','9','2020','6','REALISASI DANA BOK UNTUK OPERASIONAL PUSKESMAS CIMAHI TENGAH  BULAN SEPTEMBER 2020','Mohon untuk dicek kembali jumlah realisasi.','eb23cebf-edb2-11ea-b568-00e04c6800a9','76ec6c94-fe08-11ea-8e39-40f2e99f5ba5','2020-10-03 07:13:16','2020-10-05 02:57:54','76ec58e2-fe08-11ea-8e39-40f2e99f5ba5'),(205,'524197624','Laporan Capaian SPM',1,'2020-10-05','Tepat waktu','9','2020','55','LAPORAN CAKUPAN SPM BULAN SEPTEMBER 2020','Format utk laporan SPM bulanan, lap analisis sudah sesuai, mohon dilengkapi dgn ttd kapus.  Perlu dilakukan revisi terhadap nomenclatur indikator TB, serta mohon dikonfirmasi untuk hasil capaian indikator SPM yang hasilnya lebih dari 100% ','eb23cce3-edb2-11ea-b568-00e04c6800a9','76ec43f3-fe08-11ea-8e39-40f2e99f5ba5','2020-10-03 08:04:38','2020-10-08 09:10:14','76ec5b96-fe08-11ea-8e39-40f2e99f5ba5'),(209,'1909412431','Laporan Realisasi Fisik Keuangan',2,'2020-10-05','Tepat waktu','9','2020','55','LAPORAN REALISASI FISIK KEUANGAN JKN BULAN SEPTEMBER 2020','Mohon perbaiki sesuai catatan/tanggapan\nTerimaksih','eb23cce3-edb2-11ea-b568-00e04c6800a9','76ec43f3-fe08-11ea-8e39-40f2e99f5ba5','2020-10-03 08:18:03','2020-10-08 09:02:26','76ec5641-fe08-11ea-8e39-40f2e99f5ba5'),(207,'1982388111','Laporan LB 1',21,'2020-10-05','Tepat waktu','9','2020','3','LAPORAN LB 1 BULAN SEPTEMBER 2020','laporan lengkap dan sesuai \nhaturnuhu','eb23cce3-edb2-11ea-b568-00e04c6800a9','76ec43f3-fe08-11ea-8e39-40f2e99f5ba5','2020-10-03 08:08:45','2020-10-06 03:36:24','76ec510e-fe08-11ea-8e39-40f2e99f5ba5'),(208,'1698864870','Pemanfaatan BOK',27,'2020-10-05','Tepat waktu','9','2020','55','LAPORAN PEMANFAATAN BOK BULAN SEPTEMBER 2020','Perbaiki sesuai catatan dalam tanggapan','eb23cce3-edb2-11ea-b568-00e04c6800a9','76ec43f3-fe08-11ea-8e39-40f2e99f5ba5','2020-10-03 08:09:55','2020-10-08 09:13:19','76ec58e2-fe08-11ea-8e39-40f2e99f5ba5'),(210,'197960485','Laporan JKN Tahunan',29,'2020-10-05','Tepat waktu','9','2020','2','LAPORAN JKN TAHUNAN BULAN SEPTEMBER 2020',NULL,'eb23cce3-edb2-11ea-b568-00e04c6800a9','76ec43f3-fe08-11ea-8e39-40f2e99f5ba5','2020-10-03 08:20:40','2020-10-03 08:25:59',NULL),(211,'1803869650','Peserta JKN PBI',12,'2020-10-05','Tepat waktu','9','2020','3','','','eb23cebf-edb2-11ea-b568-00e04c6800a9','76ec6c94-fe08-11ea-8e39-40f2e99f5ba5','2020-10-03 08:22:35','2020-10-06 02:12:35','76ec53a0-fe08-11ea-8e39-40f2e99f5ba5'),(213,'232070342','Pemanfaatan BOK',27,'2020-10-05','Terlambat','9','2020','2','laporan pemanfaatan BOK bulan agustus -september 2020',NULL,'eb23d081-edb2-11ea-b568-00e04c6800a9','76ec69a5-fe08-11ea-8e39-40f2e99f5ba5','2020-10-05 00:55:21','2020-10-07 00:21:40',NULL),(214,'1175900653','Laporan Realisasi Fisik Keuangan',2,'2020-10-05','Terlambat','9','2020','3','laporan fisik keuangan bulan september 2020','1. Mohon perbaiki untuk bulan-bulan selajutnya, sesuai tanggpan/catatan\n2. Belum menirimkan laporan PKK TW 3','eb23d081-edb2-11ea-b568-00e04c6800a9','76ec69a5-fe08-11ea-8e39-40f2e99f5ba5','2020-10-05 00:56:37','2020-10-19 02:35:23','76ec5641-fe08-11ea-8e39-40f2e99f5ba5'),(215,'802158377','Laporan JKN Tahunan',29,'2020-10-05','Tepat waktu','9','2020','2','laporan LRa JKN Bulan Sepetember 2020 dan Laporan Kunjungan Peserta JKn september 2020','','eb23d02f-edb2-11ea-b568-00e04c6800a9','76ec416b-fe08-11ea-8e39-40f2e99f5ba5','2020-10-05 01:07:11','2020-10-07 01:30:19','76ec53a0-fe08-11ea-8e39-40f2e99f5ba5'),(216,'1500726538','Laporan LB 1',21,'2020-10-05','Tepat waktu','9','2020','3','','laporan sesuai dan tepat waktu\nnuhun','eb23ce75-edb2-11ea-b568-00e04c6800a9','76ec468a-fe08-11ea-8e39-40f2e99f5ba5','2020-10-05 01:33:26','2020-10-06 03:29:33','76ec510e-fe08-11ea-8e39-40f2e99f5ba5'),(217,'1521369619','Pemanfaatan BOK',27,'2020-10-05','Tepat waktu','9','2020','6','','(1). Realisasi dana BOK belum sesuai dengan laporan pertanggungjawaban. Terdapat selisih Rp. 16.875.000. Jumlah realisasi yang di upload Rp. 33.405.000, sedangkan jumlah realisasi dalam pertanggungjawaban Rp. 50.280.000. \n(2). Laporan yang diperlukan hanya','eb23ce75-edb2-11ea-b568-00e04c6800a9','76ec468a-fe08-11ea-8e39-40f2e99f5ba5','2020-10-05 01:34:37','2020-10-05 03:29:13','76ec58e2-fe08-11ea-8e39-40f2e99f5ba5'),(218,'967905305','Laporan Realisasi Fisik Keuangan',2,'2020-10-05','Tepat waktu','9','2020','3','','1. Mohon perbaiki untuk bulan selanjutnya sesuai tanggapan / catatan\n2. Belum menirimkan laporan PKK TW III','eb23ce75-edb2-11ea-b568-00e04c6800a9','76ec468a-fe08-11ea-8e39-40f2e99f5ba5','2020-10-05 01:35:20','2020-10-19 02:33:24','76ec5641-fe08-11ea-8e39-40f2e99f5ba5'),(219,'715455048','Laporan Capaian SPM',1,'2020-10-05','Tepat waktu','9','2020','6','','File pdf belum dilampirkan beserta ttd kapus serta file analisis laporan spm untuk semua indikator SPM belum disertakan','eb23ce75-edb2-11ea-b568-00e04c6800a9','76ec468a-fe08-11ea-8e39-40f2e99f5ba5','2020-10-05 01:35:58','2020-10-05 03:44:20','76ec5b96-fe08-11ea-8e39-40f2e99f5ba5'),(220,'458523722','Peserta JKN PBI',12,'2020-10-05','Terlambat','9','2020','3','kunjungan jkn dan 10 penyakit jkn','','eb23ce75-edb2-11ea-b568-00e04c6800a9','76ec468a-fe08-11ea-8e39-40f2e99f5ba5','2020-10-05 01:38:12','2020-10-06 02:08:59','76ec53a0-fe08-11ea-8e39-40f2e99f5ba5'),(226,'278221944','Laporan LB 1',21,'2020-10-05','Tepat waktu','9','2020','6','Laporan LB1  Bulan September 2020 PKM Cibeber','laporan dibuat EXCEL saja \nyang PDF hanya pengantar saja ','eb23cdd4-edb2-11ea-b568-00e04c6800a9','76ec3918-fe08-11ea-8e39-40f2e99f5ba5','2020-10-05 02:32:16','2020-10-06 03:09:10','76ec510e-fe08-11ea-8e39-40f2e99f5ba5'),(229,'544374648','Laporan Realisasi Fisik Keuangan',2,'2020-10-05','Tepat waktu','9','2020','3','laporan fisik dan keuangan bulan september 2020 dan PKK TW 3 2020','Perbaiki untuk bulan / triwulan berikutnya sesuai catatan/tanggapan','eb23d02f-edb2-11ea-b568-00e04c6800a9','76ec416b-fe08-11ea-8e39-40f2e99f5ba5','2020-10-05 03:04:48','2020-10-19 02:25:48','76ec5641-fe08-11ea-8e39-40f2e99f5ba5'),(230,'1380032782','Laporan Capaian SPM',1,'2020-10-05','Tepat waktu','9','2020','6','Laporan SPM bulan September PKM Cibeber ','Laporan SPM format excel  belum ada beserta analisis setiap indikator SPM, serta belum ada pengantar dan ttd kapus ','eb23cdd4-edb2-11ea-b568-00e04c6800a9','76ec3918-fe08-11ea-8e39-40f2e99f5ba5','2020-10-05 03:05:52','2020-10-05 07:24:02','76ec5b96-fe08-11ea-8e39-40f2e99f5ba5'),(231,'1355071255','Pemanfaatan BOK',27,'2020-10-05','Tepat waktu','9','2020','2','Laporan Pemanfaatan BOK Bulan  September  2020 PKM Cibeber ',NULL,'eb23cdd4-edb2-11ea-b568-00e04c6800a9','76ec3918-fe08-11ea-8e39-40f2e99f5ba5','2020-10-05 03:13:32','2020-10-05 05:12:51',NULL),(232,'688201227','Laporan Realisasi Fisik Keuangan',2,'2020-10-05','Tepat waktu','9','2020','3','Laporan Fisik Keuangan JKN , PKK Trw 3 ,  Surat Pengantar  Bulan  September  2020 PKM Cibeber , Fisik Keuangan BOK','Mohon perbaikan untuk bulan selanjutnya','eb23cdd4-edb2-11ea-b568-00e04c6800a9','76ec3918-fe08-11ea-8e39-40f2e99f5ba5','2020-10-05 03:41:30','2020-10-19 02:11:29','76ec5641-fe08-11ea-8e39-40f2e99f5ba5'),(234,'1373377008','Pemanfaatan BOK',27,'2020-10-05','Tepat waktu','9','2020','2','Pemanfaatan BOK bulan September',NULL,'eb23d0d3-edb2-11ea-b568-00e04c6800a9','76ec63d1-fe08-11ea-8e39-40f2e99f5ba5','2020-10-05 04:14:44','2020-10-05 04:30:27',NULL),(235,'1493632685','Laporan Capaian SPM',1,'2020-10-05','Tepat waktu','9','2020','2','Format SPM bulan September 2020',NULL,'eb23d0d3-edb2-11ea-b568-00e04c6800a9','76ec63d1-fe08-11ea-8e39-40f2e99f5ba5','2020-10-05 04:16:45','2020-10-05 04:30:31',NULL),(236,'1326017554','Laporan LB 1',21,'2020-10-05','Tepat waktu','9','2020','6','Laporan LB 1 September 2020 PKM Cigugur ','laporan dipilah per dalam wilayah, luar wilayah, luar cimahi dalam bentuk exel\nhaturnuhun','eb23cf09-edb2-11ea-b568-00e04c6800a9','76ec4921-fe08-11ea-8e39-40f2e99f5ba5','2020-10-05 04:17:52','2020-10-06 03:05:38','76ec510e-fe08-11ea-8e39-40f2e99f5ba5'),(239,'794729222','Laporan Realisasi Fisik Keuangan',2,'2020-10-05','Tepat waktu','9','2020','3','Laporan FisKeu September 2020 PKM Cigugur ','','eb23cf09-edb2-11ea-b568-00e04c6800a9','76ec4921-fe08-11ea-8e39-40f2e99f5ba5','2020-10-05 04:25:02','2020-10-19 01:57:40','76ec5641-fe08-11ea-8e39-40f2e99f5ba5'),(238,'1180171389','Laporan Realisasi Fisik Keuangan',2,'2020-10-05','Tepat waktu','9','2020','6','Laporan Realisasi Fisik Keuangan September 2020','Mohon perbaiki sesuai tanggapan/catatan','eb23d0d3-edb2-11ea-b568-00e04c6800a9','76ec63d1-fe08-11ea-8e39-40f2e99f5ba5','2020-10-05 04:22:29','2020-10-19 02:05:20','76ec5641-fe08-11ea-8e39-40f2e99f5ba5'),(240,'1169974369','Laporan LB 1',21,'2020-10-05','Tepat waktu','9','2020','3','Laporan LB 1 September 2020','laporan total tidak perlu dilaporkan\n','eb23d0d3-edb2-11ea-b568-00e04c6800a9','76ec63d1-fe08-11ea-8e39-40f2e99f5ba5','2020-10-05 04:25:03','2020-10-06 03:03:15','76ec510e-fe08-11ea-8e39-40f2e99f5ba5'),(241,'975212715','Pemanfaatan BOK',27,'2020-10-05','Tepat waktu','9','2020','6','Laporan Pemanfaatan BOK September 2020 PKM Cigugur ','Perbaiki sesuai catatan dalam tanggapan.','eb23cf09-edb2-11ea-b568-00e04c6800a9','76ec4921-fe08-11ea-8e39-40f2e99f5ba5','2020-10-05 04:27:03','2020-10-05 07:42:42','76ec58e2-fe08-11ea-8e39-40f2e99f5ba5'),(242,'115795299','Laporan Capaian SPM',1,'2020-10-05','Tepat waktu','9','2020','2','Laporan SPM September 2020 PKM Cigugur ',NULL,'eb23cf09-edb2-11ea-b568-00e04c6800a9','76ec4921-fe08-11ea-8e39-40f2e99f5ba5','2020-10-05 04:29:08','2020-10-05 04:40:01',NULL),(243,'1963581022','Peserta JKN PBI',12,'2020-10-05','Tepat waktu','9','2020','3','Laporan JKN September 2020 PKM Cigugur ','','eb23cf09-edb2-11ea-b568-00e04c6800a9','76ec4921-fe08-11ea-8e39-40f2e99f5ba5','2020-10-05 04:39:49','2020-10-06 02:13:14','76ec53a0-fe08-11ea-8e39-40f2e99f5ba5'),(244,'1320865554','Peserta JKN PBI',12,'2020-10-05','Tepat waktu','9','2020','3','Laporan Kunjungan JKN September PKM Cibeber,  10 Penyakit terbanyak PKM Cibeber   September 2020','','eb23cdd4-edb2-11ea-b568-00e04c6800a9','76ec3918-fe08-11ea-8e39-40f2e99f5ba5','2020-10-05 04:44:40','2020-10-06 02:16:19','76ec53a0-fe08-11ea-8e39-40f2e99f5ba5'),(245,'1824995961','Laporan LB 1',21,'2020-10-05','Tepat waktu','9','2020','6','Laporan LB I bulan September 2020 PKM Leuwigajah','Format EXCEL saja seperti biasa, dalam wilayah, luar wilayah dan luar cimahi\nyang PDF hanya surat pengantar laporan','eb23ce28-edb2-11ea-b568-00e04c6800a9','76ec66b1-fe08-11ea-8e39-40f2e99f5ba5','2020-10-05 05:06:20','2020-10-06 02:54:59','76ec510e-fe08-11ea-8e39-40f2e99f5ba5'),(246,'1471111560','Peserta JKN PBI',12,'2020-10-05','Tepat waktu','9','2020','3','Laporan Kunjungan Bln September 2020','','eb23ce28-edb2-11ea-b568-00e04c6800a9','76ec66b1-fe08-11ea-8e39-40f2e99f5ba5','2020-10-05 05:08:08','2020-10-06 02:15:50','76ec53a0-fe08-11ea-8e39-40f2e99f5ba5'),(247,'510068223','Laporan Capaian SPM',1,'2020-10-05','Tepat waktu','9','2020','6','Laporan SPM Bulan September 2020 PKM Leuwigajah','Laporan SPM format excel belum dilampirkan beserta hasil analisis, permasalahan dan rencana tindak lanjut terhadap hasil capaian SPM.','eb23ce28-edb2-11ea-b568-00e04c6800a9','76ec66b1-fe08-11ea-8e39-40f2e99f5ba5','2020-10-05 05:09:26','2020-10-05 07:27:55','76ec5b96-fe08-11ea-8e39-40f2e99f5ba5'),(248,'1649774969','Laporan Realisasi Fisik Keuangan',2,'2020-10-05','Tepat waktu','9','2020','3','Laporan Realisassi Fisik Keuangan JKN dan PKK JKN Bln September 2020','','eb23ce28-edb2-11ea-b568-00e04c6800a9','76ec66b1-fe08-11ea-8e39-40f2e99f5ba5','2020-10-05 05:11:02','2020-10-19 01:52:24','76ec5641-fe08-11ea-8e39-40f2e99f5ba5'),(249,'652056932','Pemanfaatan BOK',27,'2020-10-05','Tepat waktu','9','2020','6','Laporan Pemanfaatan BOK dan Realisasi Fisik BOK Bln September 2020','Perbaik sesuai catatan didalam tanggapan.','eb23ce28-edb2-11ea-b568-00e04c6800a9','76ec66b1-fe08-11ea-8e39-40f2e99f5ba5','2020-10-05 05:12:53','2020-10-05 07:01:47','76ec58e2-fe08-11ea-8e39-40f2e99f5ba5'),(250,'669302177','Laporan Capaian SPM',1,'2020-10-05','Terlambat','9','2020','2','Laporan SPM dan hasil analisa bulan september 2020',NULL,'eb23d081-edb2-11ea-b568-00e04c6800a9','76ec69a5-fe08-11ea-8e39-40f2e99f5ba5','2020-10-05 05:19:19','2020-10-07 00:22:04',NULL),(251,'918494671','Peserta JKN PBI',12,'2020-10-05','Tepat waktu','9','2020','3','PESERTA JKN PBI SEPTEMBER 2020','','eb23d0d3-edb2-11ea-b568-00e04c6800a9','76ec63d1-fe08-11ea-8e39-40f2e99f5ba5','2020-10-05 05:23:48','2020-10-06 02:11:43','76ec53a0-fe08-11ea-8e39-40f2e99f5ba5'),(253,'529844574','Pemanfaatan BOK',27,'2020-10-05','Tepat waktu','9','2020','55','Laporan pemanfaatan BOK Puskesmas Cimahi Selatan September 2020','Mohon dicek kembali jumlah realisasi','eb23cb33-edb2-11ea-b568-00e04c6800a9','76ec3c2e-fe08-11ea-8e39-40f2e99f5ba5','2020-10-05 06:41:57','2020-10-07 01:55:21','76ec58e2-fe08-11ea-8e39-40f2e99f5ba5'),(254,'122267512','Laporan LB 1',21,'2020-10-05','Tepat waktu','9','2020','3','Laporan LB 1 Luar Wilayah Puskesmas Cimahi Selatan September 2020\r\nLaporan LB 1 Luar Wilayah dalam Kota Cimahi Puskesmas Cimahi Selatan September 2020\r\nLaporan LB 1 Wilayah Utama Puskesmas Cimahi Selatan September 2020','SECARA FORMAT LAPORAN SUDAH SESUAI','eb23cb33-edb2-11ea-b568-00e04c6800a9','76ec3c2e-fe08-11ea-8e39-40f2e99f5ba5','2020-10-05 06:44:45','2020-10-06 02:47:50','76ec510e-fe08-11ea-8e39-40f2e99f5ba5'),(255,'906057125','Peserta JKN PBI',12,'2020-10-05','Tepat waktu','9','2020','3','Laporan Kunjungan Peserta JKN Puskesmas Cimahi Selatan September 2020','','eb23cb33-edb2-11ea-b568-00e04c6800a9','76ec3c2e-fe08-11ea-8e39-40f2e99f5ba5','2020-10-05 06:46:26','2020-10-06 02:11:03','76ec53a0-fe08-11ea-8e39-40f2e99f5ba5'),(256,'53673270','Laporan Capaian SPM',1,'2020-10-05','Tepat waktu','9','2020','6','Laporan SPM Puskesmas Cimahi Selatan September 2020','- File untuk analisis  setiap indikator SPM belum disampaikan \n- File laporan SPM dalam bentuk pdf + ttd kapus disertakan ','eb23cb33-edb2-11ea-b568-00e04c6800a9','76ec3c2e-fe08-11ea-8e39-40f2e99f5ba5','2020-10-05 06:53:02','2020-10-05 07:57:55','76ec5b96-fe08-11ea-8e39-40f2e99f5ba5'),(257,'658316935','Laporan Capaian SPM',1,'2020-10-05','Tepat waktu','9','2020','6','Laporan SPM  Puskesmas CIbeureum bulan September 2020','Format laporan SPM telah sesuai , untuk analisis masalah, penyebab masalah dan rencana tindak lanjut di pisahkan tidak digabung dalam satu analisis','eb23cd7e-edb2-11ea-b568-00e04c6800a9','76ec6f8d-fe08-11ea-8e39-40f2e99f5ba5','2020-10-05 07:53:06','2020-10-07 01:36:01','76ec5b96-fe08-11ea-8e39-40f2e99f5ba5'),(258,'1765330325','Pemanfaatan BOK',27,'2020-10-05','Tepat waktu','9','2020','2','Pemanfaatan dana BOK  Puskesmas CIbeureum bulan September 2020',NULL,'eb23cd7e-edb2-11ea-b568-00e04c6800a9','76ec6f8d-fe08-11ea-8e39-40f2e99f5ba5','2020-10-05 07:56:10','2020-10-05 08:08:45',NULL),(259,'1404669277','Laporan Realisasi Fisik Keuangan',2,'2020-10-05','Tepat waktu','9','2020','3','Fisik keuangan  Puskesmas CIbeureum bulan September 2020','','eb23cd7e-edb2-11ea-b568-00e04c6800a9','76ec6f8d-fe08-11ea-8e39-40f2e99f5ba5','2020-10-05 07:57:27','2020-10-19 01:15:37','76ec5641-fe08-11ea-8e39-40f2e99f5ba5'),(260,'117823034','Laporan LB 1',21,'2020-10-05','Tepat waktu','9','2020','3','LB 1  Puskesmas CIbeureum bulan September 2020','sudah sesua','eb23cd7e-edb2-11ea-b568-00e04c6800a9','76ec6f8d-fe08-11ea-8e39-40f2e99f5ba5','2020-10-05 07:58:53','2020-10-06 02:04:24','76ec510e-fe08-11ea-8e39-40f2e99f5ba5'),(261,'614101206','Laporan JKN Tahunan',29,'2020-10-05','Tepat waktu','9','2020','3','Laporan JKN  Puskesmas CIbeureum bulan September 2020','','eb23cd7e-edb2-11ea-b568-00e04c6800a9','76ec6f8d-fe08-11ea-8e39-40f2e99f5ba5','2020-10-05 08:00:58','2020-10-06 02:06:34','76ec53a0-fe08-11ea-8e39-40f2e99f5ba5'),(262,'107552684','Peserta JKN PBI',12,'2020-10-05','Tepat waktu','9','2020','3','Laporan JKN  Puskesmas CIbeureum bulan September 2020','','eb23cd7e-edb2-11ea-b568-00e04c6800a9','76ec6f8d-fe08-11ea-8e39-40f2e99f5ba5','2020-10-05 08:01:22','2020-10-06 02:14:43','76ec53a0-fe08-11ea-8e39-40f2e99f5ba5'),(263,'1254081359','Laporan Capaian SPM',1,'2020-10-05','Tepat waktu','9','2020','6','Laporan SPM September 2020 Puskesmas Padasuka Kota Cimahi','Format laporn SPM telah sesuai, untuk analisis masalah dan penyebab dipisahkan kolom nya','eb23cf55-edb2-11ea-b568-00e04c6800a9','76ec4bc7-fe08-11ea-8e39-40f2e99f5ba5','2020-10-05 08:56:23','2020-10-06 07:13:31','76ec5b96-fe08-11ea-8e39-40f2e99f5ba5'),(264,'1863951957','Peserta JKN PBI',12,'2020-10-05','Tepat waktu','9','2020','3','Laporan Kunjungan Pasien Kontak Rate JKN Puskesmas Padasuka','','eb23cf55-edb2-11ea-b568-00e04c6800a9','76ec4bc7-fe08-11ea-8e39-40f2e99f5ba5','2020-10-05 08:57:40','2020-10-06 02:02:59','76ec510e-fe08-11ea-8e39-40f2e99f5ba5'),(267,'830808816','Laporan LB 1',21,'2020-11-05','Tepat waktu','10','2020','2','laporan LB 1 Bulan Oktober 2020',NULL,'eb23d02f-edb2-11ea-b568-00e04c6800a9','76ec416b-fe08-11ea-8e39-40f2e99f5ba5','2020-11-02 03:21:01','2020-11-05 02:30:13',NULL),(268,'1517631060','Pemanfaatan BOK',27,'2020-11-05','Tepat waktu','10','2020','2','laporan pemanfaatan BOK bulan Oktober 2020 da Rekap Tahunan BOK Bulan Oktober tahun 2020',NULL,'eb23d02f-edb2-11ea-b568-00e04c6800a9','76ec416b-fe08-11ea-8e39-40f2e99f5ba5','2020-11-02 07:32:49','2020-11-05 02:30:05','0af1d25a-1d74-11eb-a34c-00e04c6800a9'),(270,'2076494472','Laporan Realisasi Fisik Keuangan',2,'2020-11-05','Tepat waktu','10','2020','2','Realisasi Fisik dan Keuangan JKN',NULL,'eb23ce75-edb2-11ea-b568-00e04c6800a9','0af25a83-1d74-11eb-a34c-00e04c6800a9','2020-11-04 01:08:37','2020-11-04 01:09:06','0af25a83-1d74-11eb-a34c-00e04c6800a9'),(271,'1962612182','Laporan LB 1',21,'2020-11-05','Tepat waktu','10','2020','2','Laporan LB 1 PKM Citeureup',NULL,'eb23d0d3-edb2-11ea-b568-00e04c6800a9','0af53e06-1d74-11eb-a34c-00e04c6800a9','2020-11-04 01:09:33','2020-11-04 01:09:41','0af53e06-1d74-11eb-a34c-00e04c6800a9'),(272,'972811148','Laporan Capaian SPM',1,'2020-11-05','Tepat waktu','10','2020','6','Laporan Capaian SPM PKM Citeureup','Surat pengantar belum disertakan, format laporan SPM belum lengkap, tidak disertai dengan kolom analisis, permasalahan dan RTL dari setiap indikator SPM , mohon diperbaiki','eb23d0d3-edb2-11ea-b568-00e04c6800a9','0af53e06-1d74-11eb-a34c-00e04c6800a9','2020-11-04 01:11:14','2020-11-12 04:52:15','0af474c2-1d74-11eb-a34c-00e04c6800a9'),(273,'1845103126','Laporan LB 1',21,'2020-11-05','Tepat waktu','10','2020','3','','','eb23d081-edb2-11ea-b568-00e04c6800a9','0af5c154-1d74-11eb-a34c-00e04c6800a9','2020-11-04 01:30:51','2020-11-05 04:00:49','0af36077-1d74-11eb-a34c-00e04c6800a9'),(274,'532071446','Laporan Realisasi Fisik Keuangan',2,'2020-11-05','Tepat waktu','10','2020','2','',NULL,'eb23d081-edb2-11ea-b568-00e04c6800a9','0af5c154-1d74-11eb-a34c-00e04c6800a9','2020-11-04 02:36:44','2020-11-04 04:04:26','0af5c154-1d74-11eb-a34c-00e04c6800a9'),(275,'1457235549','Laporan Realisasi Fisik Keuangan',2,'2020-11-05','Tepat waktu','10','2020','2','Laporan Fisik Keuangan Bulan Oktober 2020 dan Surat Pengantar Laporan Bulan Oktober 2020',NULL,'eb23d02f-edb2-11ea-b568-00e04c6800a9','0af1d25a-1d74-11eb-a34c-00e04c6800a9','2020-11-04 03:52:06','2020-11-05 02:30:08','0af1d25a-1d74-11eb-a34c-00e04c6800a9'),(276,'1704526586','Peserta JKN PBI',12,'2020-11-05','Tepat waktu','10','2020','2','LAPORAN KUNJUNGAN JKN',NULL,'eb23d081-edb2-11ea-b568-00e04c6800a9','0af5c154-1d74-11eb-a34c-00e04c6800a9','2020-11-04 04:14:21','2020-11-04 04:16:52','0af5c154-1d74-11eb-a34c-00e04c6800a9'),(277,'1602219042','Pemanfaatan BOK',27,'2020-11-05','Tepat waktu','10','2020','2','Pemanfaatan BOK bulan Oktober ',NULL,'eb23d081-edb2-11ea-b568-00e04c6800a9','0af5c154-1d74-11eb-a34c-00e04c6800a9','2020-11-04 05:21:13','2020-11-04 05:21:21','0af5c154-1d74-11eb-a34c-00e04c6800a9'),(278,'1357316287','Laporan Capaian SPM',1,'2020-11-05','Tepat waktu','10','2020','6','SPM bulan oktober ','Format laporan SPM belum sesuai, masih belum dilengkapi dengan kolom analisis, masalah, dan RTL untuk setiap indikator SPM nya, surat pengantar laporan belum disertakan. Mohon diperbaiki','eb23d081-edb2-11ea-b568-00e04c6800a9','0af5c154-1d74-11eb-a34c-00e04c6800a9','2020-11-04 05:31:22','2020-11-12 05:19:43','0af474c2-1d74-11eb-a34c-00e04c6800a9'),(279,'1024127858','Laporan LB 1',21,'2020-11-05','Tepat waktu','10','2020','6','dengan ini kami kirimkan laporan LB1\r\n1.dalam wilayah\r\n2. luar wilayah\r\n3. luar kota','luar wilayah teu acan','eb23cebf-edb2-11ea-b568-00e04c6800a9','0af604df-1d74-11eb-a34c-00e04c6800a9','2020-11-04 05:51:53','2020-11-05 03:56:37','0af36077-1d74-11eb-a34c-00e04c6800a9'),(326,'1856634042','Laporan Realisasi Fisik Keuangan',2,'2020-11-05','Tepat waktu','10','2020','6','Reaisasi Fisik BOK dan JKN Oktober 2020','Mohon diperbaiki sesuai catatan','eb23d0d3-edb2-11ea-b568-00e04c6800a9','0af53e06-1d74-11eb-a34c-00e04c6800a9','2020-11-05 03:11:28','2020-11-09 04:38:25','0af3f4c1-1d74-11eb-a34c-00e04c6800a9'),(328,'162367674','Pemanfaatan BOK',27,'2020-11-05','Tepat waktu','10','2020','2','Pemanfaatan BOK Oktober',NULL,'eb23d0d3-edb2-11ea-b568-00e04c6800a9','0af53e06-1d74-11eb-a34c-00e04c6800a9','2020-11-05 03:17:00','2020-11-05 03:17:06','0af53e06-1d74-11eb-a34c-00e04c6800a9'),(330,'1279655877','Peserta JKN PBI',12,'2020-11-05','Tepat waktu','10','2020','2','Peserta JKN PBI Oktober',NULL,'eb23d0d3-edb2-11ea-b568-00e04c6800a9','0af53e06-1d74-11eb-a34c-00e04c6800a9','2020-11-05 03:19:23','2020-11-05 03:19:30','0af53e06-1d74-11eb-a34c-00e04c6800a9'),(321,'179542283','Laporan Capaian SPM',1,'2020-11-05','Tepat waktu','10','2020','6','Laporan SPM Bulan Oktober 2020 dan analisanya','Belum dilakukan analisa terhadap penyebab masalah dan RTL. \nMohon untuk Melengkapi format dengan analisa penyebab masalah dan RTL','eb23d02f-edb2-11ea-b568-00e04c6800a9','0af1d25a-1d74-11eb-a34c-00e04c6800a9','2020-11-05 02:29:54','2020-11-12 04:58:19','0af4b696-1d74-11eb-a34c-00e04c6800a9'),(284,'293757938','Laporan Capaian SPM',1,'2020-11-05','Tepat waktu','10','2020','3','Laporan SPM dan analisa cakupan SPM Puskesmas Cimahi Utara bulan Oktober 2020','Format laporan telah sesuai, telah dilengkapi dengan analisis, permasalahan dan rencana tindak lanjut di bulan berikutnya','eb23cfc2-edb2-11ea-b568-00e04c6800a9','0af17a5f-1d74-11eb-a34c-00e04c6800a9','2020-11-04 08:18:44','2020-11-12 04:40:30','0af474c2-1d74-11eb-a34c-00e04c6800a9'),(285,'1167283131','Pemanfaatan BOK',27,'2020-11-05','Tepat waktu','10','2020','2','Laporan Pemanfaatan BOK PKM CImahi Utara Bulan Oktober Tahun 2020',NULL,'eb23cfc2-edb2-11ea-b568-00e04c6800a9','0af17a5f-1d74-11eb-a34c-00e04c6800a9','2020-11-04 08:21:17','2020-11-04 08:21:23','0af17a5f-1d74-11eb-a34c-00e04c6800a9'),(286,'974870761','Laporan LB 1',21,'2020-11-05','Tepat waktu','10','2020','3','Laporan LB1 Puskesmas Cimahi Utara Bulan Oktober Tahun 2020','','eb23cfc2-edb2-11ea-b568-00e04c6800a9','0af17a5f-1d74-11eb-a34c-00e04c6800a9','2020-11-04 08:22:23','2020-11-05 03:35:38','0af36077-1d74-11eb-a34c-00e04c6800a9'),(287,'105723652','Laporan Realisasi Fisik Keuangan',2,'2020-11-05','Tepat waktu','10','2020','2','Laporan Realisasi Fisik Keuangan PKM Cimahi Utara Bulan Oktober Tahun 2020',NULL,'eb23cfc2-edb2-11ea-b568-00e04c6800a9','0af17a5f-1d74-11eb-a34c-00e04c6800a9','2020-11-04 08:27:11','2020-11-04 08:27:16','0af17a5f-1d74-11eb-a34c-00e04c6800a9'),(288,'615468487','Peserta JKN PBI',12,'2020-11-05','Tepat waktu','10','2020','2','Laporan Kunjungan Peserta JKN dan LRA PKM Cimahi Utara Bulan Oktober Tahun 2020',NULL,'eb23cfc2-edb2-11ea-b568-00e04c6800a9','0af17a5f-1d74-11eb-a34c-00e04c6800a9','2020-11-04 08:31:49','2020-11-04 08:31:54','0af17a5f-1d74-11eb-a34c-00e04c6800a9'),(289,'1177435268','Pemanfaatan BOK',27,'2020-11-05','Tepat waktu','10','2020','2','Laporan pemanfaatan BOK Puskesmas Cimahi Selatan Bulan Oktober (Data September) 2020',NULL,'eb23cb33-edb2-11ea-b568-00e04c6800a9','0af12891-1d74-11eb-a34c-00e04c6800a9','2020-11-04 11:21:27','2020-11-04 11:21:45','0af12891-1d74-11eb-a34c-00e04c6800a9'),(290,'1166373834','Laporan LB 1',21,'2020-11-05','Tepat waktu','10','2020','3','Laporan LB 1 Puskesmas Cimahi Selatan Oktober 2020','','eb23cb33-edb2-11ea-b568-00e04c6800a9','0af12891-1d74-11eb-a34c-00e04c6800a9','2020-11-04 11:24:14','2020-11-05 03:30:50','0af36077-1d74-11eb-a34c-00e04c6800a9'),(291,'54260168','Peserta JKN PBI',12,'2020-11-05','Tepat waktu','10','2020','2','Laporan Kunjungan Puskesmas Cimahi Selatan Oktober 2020',NULL,'eb23cb33-edb2-11ea-b568-00e04c6800a9','0af12891-1d74-11eb-a34c-00e04c6800a9','2020-11-04 11:32:37','2020-11-04 11:32:46','0af12891-1d74-11eb-a34c-00e04c6800a9'),(292,'1163669215','Laporan Capaian SPM',1,'2020-11-05','Tepat waktu','10','2020','6','LAPORAN SPM OKTOBER 2020','Format laporan SPM bulanan belum lengkap, belum ada kolom untuk analisis, permasalahan dan RTL dari setiap indikator SPM, mohon diperbaiki','eb23cd7e-edb2-11ea-b568-00e04c6800a9','0af6601d-1d74-11eb-a34c-00e04c6800a9','2020-11-04 13:26:57','2020-11-12 04:53:39','0af474c2-1d74-11eb-a34c-00e04c6800a9'),(295,'638506365','Laporan Realisasi Fisik Keuangan',2,'2020-11-05','Tepat waktu','10','2020','2','realisasi fisik keuangan',NULL,'eb23cd7e-edb2-11ea-b568-00e04c6800a9','0af6601d-1d74-11eb-a34c-00e04c6800a9','2020-11-04 13:47:55','2020-11-04 13:48:22','0af6601d-1d74-11eb-a34c-00e04c6800a9'),(331,'1197772219','Laporan Capaian SPM',1,'2020-11-05','Terlambat','10','2020','6','Lap.SPM Bulan Oktober 2020 dan Rekap Realisasi Kegiatan BOK tahun 2020 di Puskesmas Cibeber','Format belum sesuai, belum dilakukan analisa terhadap penyebab masalah dan RTL. \nMohon untuk mengirimkan format laporan dalam bentuk excel dan Melengkapi format dengan analisa penyebab masalah dan RTL.','eb23cdd4-edb2-11ea-b568-00e04c6800a9','0af0bc04-1d74-11eb-a34c-00e04c6800a9','2020-11-05 04:59:01','2020-11-24 09:02:22','0af474c2-1d74-11eb-a34c-00e04c6800a9'),(294,'499964386','Laporan LB 1',21,'2020-11-05','Tepat waktu','10','2020','6','Laporan LB1 Bulan Oktober 2020 PKM Cibeber','naha excel na teu aya\ndiantosnya','eb23cdd4-edb2-11ea-b568-00e04c6800a9','0af0bc04-1d74-11eb-a34c-00e04c6800a9','2020-11-04 13:45:50','2020-11-05 03:00:42','0af36077-1d74-11eb-a34c-00e04c6800a9'),(296,'477843390','Laporan Realisasi Fisik Keuangan',2,'2020-11-05','Tepat waktu','10','2020','2','Laporan Realisasi Fisik Keuangan Bulan Oktober 2020  dan Laporan Fisik Keuangan JKN',NULL,'eb23cdd4-edb2-11ea-b568-00e04c6800a9','0af0bc04-1d74-11eb-a34c-00e04c6800a9','2020-11-04 13:48:17','2020-11-04 13:56:57','0af0bc04-1d74-11eb-a34c-00e04c6800a9'),(297,'1392868095','Pemanfaatan BOK',27,'2020-11-05','Tepat waktu','10','2020','2','Realisasi Dana Pemanfaatan  BOK  Bulan Oktober 2020',NULL,'eb23cdd4-edb2-11ea-b568-00e04c6800a9','0af0bc04-1d74-11eb-a34c-00e04c6800a9','2020-11-04 13:50:24','2020-11-04 13:57:09','0af0bc04-1d74-11eb-a34c-00e04c6800a9'),(298,'647820095','Laporan LB 1',21,'2020-11-05','Tepat waktu','10','2020','3','LB 1 bulan Oktober 2020','','eb23cd7e-edb2-11ea-b568-00e04c6800a9','0af6601d-1d74-11eb-a34c-00e04c6800a9','2020-11-04 13:50:40','2020-11-05 02:47:57','0af36077-1d74-11eb-a34c-00e04c6800a9'),(299,'2141501678','Peserta JKN PBI',12,'2020-11-05','Tepat waktu','10','2020','2','Peserta JKN PBI',NULL,'eb23cd7e-edb2-11ea-b568-00e04c6800a9','0af6601d-1d74-11eb-a34c-00e04c6800a9','2020-11-04 13:53:22','2020-11-04 13:53:34','0af6601d-1d74-11eb-a34c-00e04c6800a9'),(300,'1012469754','Laporan LB 1',21,'2020-11-05','Tepat waktu','10','2020','6','','yang luar wilayah belum dikirim','eb23ce75-edb2-11ea-b568-00e04c6800a9','0af25a83-1d74-11eb-a34c-00e04c6800a9','2020-11-05 01:02:01','2020-11-05 02:14:18','0af36077-1d74-11eb-a34c-00e04c6800a9'),(301,'1690726232','Peserta JKN PBI',12,'2020-11-05','Tepat waktu','10','2020','2','',NULL,'eb23ce75-edb2-11ea-b568-00e04c6800a9','0af25a83-1d74-11eb-a34c-00e04c6800a9','2020-11-05 01:15:33','2020-11-05 01:15:50','0af25a83-1d74-11eb-a34c-00e04c6800a9'),(302,'391894210','Laporan Capaian SPM',1,'2020-11-05','Tepat waktu','10','2020','6','','Belum dilakukan analisa terhadap penyebab masalah dan RTL. \nMohon untuk Melengkapi format dengan analisa penyebab masalah dan RTL','eb23ce75-edb2-11ea-b568-00e04c6800a9','0af25a83-1d74-11eb-a34c-00e04c6800a9','2020-11-05 01:19:34','2020-11-12 05:05:26','0af4b696-1d74-11eb-a34c-00e04c6800a9'),(303,'2005362730','Laporan Capaian SPM',1,'2020-11-05','Tepat waktu','10','2020','3','LAPORAN CAKUPAN SPM BULAN OKTOBER 2020','Format sudah sesuai, lengkap dengan analisis masalah dan RTL terhadap penyelesaian masalah','eb23cce3-edb2-11ea-b568-00e04c6800a9','0af216cf-1d74-11eb-a34c-00e04c6800a9','2020-11-05 01:46:00','2020-11-12 04:29:53','0af474c2-1d74-11eb-a34c-00e04c6800a9'),(304,'2097522748','Laporan Realisasi Fisik Keuangan',2,'2020-11-05','Tepat waktu','10','2020','2','LAPORAN REALISASI FISIK KEUANGAN JKN BULAN OKTOBER 2020',NULL,'eb23cce3-edb2-11ea-b568-00e04c6800a9','0af216cf-1d74-11eb-a34c-00e04c6800a9','2020-11-05 01:47:12','2020-11-05 02:03:37','0af216cf-1d74-11eb-a34c-00e04c6800a9'),(305,'66313391','Laporan LB 1',21,'2020-11-05','Tepat waktu','10','2020','3','Laporan LB 1','','eb23cf09-edb2-11ea-b568-00e04c6800a9','0af29c04-1d74-11eb-a34c-00e04c6800a9','2020-11-05 01:50:31','2020-11-05 02:22:01','0af36077-1d74-11eb-a34c-00e04c6800a9'),(306,'460508201','Peserta JKN PBI',12,'2020-11-05','Tepat waktu','10','2020','2','LAPORAN REALISASI ANGGARAN (LRA) JKN BULAN OKTOBER 2020',NULL,'eb23cce3-edb2-11ea-b568-00e04c6800a9','0af216cf-1d74-11eb-a34c-00e04c6800a9','2020-11-05 01:51:41','2020-11-05 04:00:33','0af216cf-1d74-11eb-a34c-00e04c6800a9'),(307,'1387476516','Laporan Capaian SPM',1,'2020-11-05','Tepat waktu','10','2020','6','Laporan SPM Bulan Oktober 2020','Belum dilakukan analisa terhadap penyebab masalah dan RTL. \nMohon untuk Melengkapi format dengan analisa penyebab masalah dan RTL','eb23cf09-edb2-11ea-b568-00e04c6800a9','0af29c04-1d74-11eb-a34c-00e04c6800a9','2020-11-05 01:51:55','2020-11-12 05:10:00','0af4b696-1d74-11eb-a34c-00e04c6800a9'),(308,'111037533','Laporan LB 1',21,'2020-11-05','Tepat waktu','10','2020','2','LB 1 BULAN OKTOBER 2020',NULL,'eb23cce3-edb2-11ea-b568-00e04c6800a9','0af216cf-1d74-11eb-a34c-00e04c6800a9','2020-11-05 01:52:25','2020-11-05 04:00:36','0af216cf-1d74-11eb-a34c-00e04c6800a9'),(309,'378383868','Laporan Realisasi Fisik Keuangan',2,'2020-11-05','Tepat waktu','10','2020','2','Laporan Realisasi Fisik Keuangan Bulan Oktober 2020',NULL,'eb23cf09-edb2-11ea-b568-00e04c6800a9','0af29c04-1d74-11eb-a34c-00e04c6800a9','2020-11-05 01:52:51','2020-11-05 01:55:46','0af29c04-1d74-11eb-a34c-00e04c6800a9'),(310,'1881677465','Pemanfaatan BOK',27,'2020-11-05','Tepat waktu','10','2020','2','Laporan Pemanafaatan BOK Bulan Oktober 2020',NULL,'eb23cf09-edb2-11ea-b568-00e04c6800a9','0af29c04-1d74-11eb-a34c-00e04c6800a9','2020-11-05 01:54:17','2020-11-05 01:55:49','0af29c04-1d74-11eb-a34c-00e04c6800a9'),(311,'1686398731','Peserta JKN PBI',12,'2020-11-05','Tepat waktu','10','2020','2','Laporan LRA JKN Bulan Oktober 2020',NULL,'eb23cf09-edb2-11ea-b568-00e04c6800a9','0af29c04-1d74-11eb-a34c-00e04c6800a9','2020-11-05 01:55:28','2020-11-05 01:55:55','0af29c04-1d74-11eb-a34c-00e04c6800a9'),(312,'1553884826','Pemanfaatan BOK',27,'2020-11-05','Tepat waktu','10','2020','2','LAPORAN PEMANFAATAN BOK BULAN OKTOBER 2020',NULL,'eb23cce3-edb2-11ea-b568-00e04c6800a9','0af216cf-1d74-11eb-a34c-00e04c6800a9','2020-11-05 01:59:27','2020-11-05 02:03:44','0af216cf-1d74-11eb-a34c-00e04c6800a9'),(313,'1096138464','Peserta JKN PBI',12,'2020-11-05','Tepat waktu','10','2020','2','Laporan Kunjungan Bulan Oktober 2020',NULL,'eb23d02f-edb2-11ea-b568-00e04c6800a9','0af1d25a-1d74-11eb-a34c-00e04c6800a9','2020-11-05 02:01:43','2020-11-05 02:30:16','0af1d25a-1d74-11eb-a34c-00e04c6800a9'),(315,'1292269014','Pemanfaatan BOK',27,'2020-11-05','Tepat waktu','10','2020','2','Laporan Pemanfaatan dan Realisasi BOK Bulan Oktober 2020',NULL,'eb23ce28-edb2-11ea-b568-00e04c6800a9','0af57fa3-1d74-11eb-a34c-00e04c6800a9','2020-11-05 02:10:02','2020-11-05 02:16:05','0af57fa3-1d74-11eb-a34c-00e04c6800a9'),(316,'11899062','Laporan Realisasi Fisik Keuangan',2,'2020-11-05','Tepat waktu','10','2020','2','Laporan Realisasi Fisik Keuangan JKN Bulan Oktober 2020',NULL,'eb23ce28-edb2-11ea-b568-00e04c6800a9','0af57fa3-1d74-11eb-a34c-00e04c6800a9','2020-11-05 02:12:18','2020-11-05 02:16:08','0af57fa3-1d74-11eb-a34c-00e04c6800a9'),(317,'716662301','Peserta JKN PBI',12,'2020-11-05','Tepat waktu','10','2020','2','Laporan Kunjungan Bulan Oktober 2020',NULL,'eb23ce28-edb2-11ea-b568-00e04c6800a9','0af57fa3-1d74-11eb-a34c-00e04c6800a9','2020-11-05 02:14:03','2020-11-05 02:16:16','0af57fa3-1d74-11eb-a34c-00e04c6800a9'),(318,'160229333','Laporan Capaian SPM',1,'2020-11-05','Tepat waktu','10','2020','6','Laporan SPM Bulan Oktober 2020','Format masih belum sesuai, seharusnya dalam bentuk xls tidak dalam bentuk pdf. Isian format laporan belum dilengkapi dengan analisis, permasalahan dan RTL nya untuk setiap indikator SPM, mohon untuk diperbaiki','eb23ce28-edb2-11ea-b568-00e04c6800a9','0af57fa3-1d74-11eb-a34c-00e04c6800a9','2020-11-05 02:15:11','2020-11-12 05:17:03','0af474c2-1d74-11eb-a34c-00e04c6800a9'),(319,'1842261663','Laporan Realisasi Fisik Keuangan',2,'2020-11-05','Tepat waktu','10','2020','3','Laporan Realisasi Fisik Keuangan Cimahi Tengah Bulan Oktober 2020 dan Laporan Realisasi Anggaran Cimahi Tengah Bulan Oktober 2020','Mohon tindaklanjuti tanggapan untuk laporan bulan berikutnya','eb23cebf-edb2-11ea-b568-00e04c6800a9','0af604df-1d74-11eb-a34c-00e04c6800a9','2020-11-05 02:20:34','2020-11-09 06:34:38','0af3f4c1-1d74-11eb-a34c-00e04c6800a9'),(320,'1911503873','Pemanfaatan BOK',27,'2020-11-05','Tepat waktu','10','2020','2','',NULL,'eb23ce75-edb2-11ea-b568-00e04c6800a9','0af25a83-1d74-11eb-a34c-00e04c6800a9','2020-11-05 02:24:48','2020-11-05 02:24:56','0af25a83-1d74-11eb-a34c-00e04c6800a9'),(322,'1466202065','Pemanfaatan BOK',27,'2020-11-05','Tepat waktu','10','2020','2','Pemanfaatan BOK Cimahi Tengah BUlan Oktober - November 2020 dan Rekapan Pemanfaatan BOK Cimahi Tengah ',NULL,'eb23cebf-edb2-11ea-b568-00e04c6800a9','0af604df-1d74-11eb-a34c-00e04c6800a9','2020-11-05 02:34:04','2020-11-05 02:34:27','0af604df-1d74-11eb-a34c-00e04c6800a9'),(323,'83648588','Laporan Capaian SPM',1,'2020-11-05','Tepat waktu','10','2020','3','Capaian SPM Bulan Oktober 2020 PKM CimahI Tengah ','Format sudah sesuai, sudah dilakukan analisa  penyebab masalah,  sudah disusun RTL terhadap penyebab masalah.','eb23cebf-edb2-11ea-b568-00e04c6800a9','0af604df-1d74-11eb-a34c-00e04c6800a9','2020-11-05 02:35:04','2020-11-12 04:46:46','0af4b696-1d74-11eb-a34c-00e04c6800a9'),(324,'1878784329','Peserta JKN PBI',12,'2020-11-05','Tepat waktu','10','2020','2','Laporan Peserta FBI JKN bulan Oktober 2020',NULL,'eb23cdd4-edb2-11ea-b568-00e04c6800a9','0af0bc04-1d74-11eb-a34c-00e04c6800a9','2020-11-05 02:41:26','2020-11-05 02:41:39','0af0bc04-1d74-11eb-a34c-00e04c6800a9'),(325,'1446254512','Peserta JKN PBI',12,'2020-11-05','Tepat waktu','10','2020','2','LAPORAN KUNJUNGAN JKN PUSKESMAS CIMAHI TENGAH BULAN OKTOBER  2020 ',NULL,'eb23cebf-edb2-11ea-b568-00e04c6800a9','0af604df-1d74-11eb-a34c-00e04c6800a9','2020-11-05 02:47:43','2020-11-05 02:49:08','0af604df-1d74-11eb-a34c-00e04c6800a9'),(332,'504684335','Pemanfaatan BOK',27,'2020-11-05','Tepat waktu','10','2020','2','Pemanfaatan BOK',NULL,'eb23cd7e-edb2-11ea-b568-00e04c6800a9','0af6601d-1d74-11eb-a34c-00e04c6800a9','2020-11-05 07:22:48','2020-11-05 07:23:05','0af6601d-1d74-11eb-a34c-00e04c6800a9'),(333,'1120989326','Laporan Capaian SPM',1,'2020-11-05','Tepat waktu','10','2020','55','Laporan Capaian SPM Puskesmas Padasuka Kota Cimahi - Bulan Oktober 2020','Format laporan SPM belum lengkap, untuk kolom analisis, masalah dan RTL dibuat dalam 1 tabel dengan indikator SPM nya, tidak dibuat dalam tabel terpisah. ','eb23cf55-edb2-11ea-b568-00e04c6800a9','0af2df94-1d74-11eb-a34c-00e04c6800a9','2020-11-05 09:35:47','2020-11-16 06:53:07','0af474c2-1d74-11eb-a34c-00e04c6800a9'),(335,'40604765','Laporan LB 1',21,'2020-11-05','Tepat waktu','10','2020','2','Laporan LB 1 - Puskesmas Padasuka Kota Cimahi Bulan Oktober 2020',NULL,'eb23cf55-edb2-11ea-b568-00e04c6800a9','0af2df94-1d74-11eb-a34c-00e04c6800a9','2020-11-05 09:37:46','2020-11-05 09:45:47','0af2df94-1d74-11eb-a34c-00e04c6800a9'),(337,'1388938580','Laporan Realisasi Fisik Keuangan',2,'2020-11-05','Tepat waktu','10','2020','3','Laporan Realisasi Fisik Keuangan & Laporan LRA JKN Bulan Oktober 2020 - PKM Padasuka Kota Cimahi','','eb23cf55-edb2-11ea-b568-00e04c6800a9','0af2df94-1d74-11eb-a34c-00e04c6800a9','2020-11-05 09:44:37','2020-11-09 04:30:30','0af3f4c1-1d74-11eb-a34c-00e04c6800a9'),(338,'252237129','Peserta JKN PBI',12,'2020-11-05','Tepat waktu','10','2020','2','Laporan Kunjungan Pasien Bulan Oktober - Puskesmas Padasuka Kota Cimahi',NULL,'eb23cf55-edb2-11ea-b568-00e04c6800a9','0af2df94-1d74-11eb-a34c-00e04c6800a9','2020-11-05 09:45:29','2020-11-05 09:45:49','0af2df94-1d74-11eb-a34c-00e04c6800a9'),(339,'1249589701','Laporan Capaian SPM',1,'2020-11-05','Tepat waktu','10','2020','3','Laporan Capaian SPM Puskesmas Cimahi Selatan Oktober 2020','Format sudah sesuai, sudah dilakukan analisa terhadap penyebab masalah,  sudah disusun RTL terhadap penyebab masalah.','eb23cb33-edb2-11ea-b568-00e04c6800a9','0af12891-1d74-11eb-a34c-00e04c6800a9','2020-11-05 12:55:06','2020-11-12 04:26:05','0af4b696-1d74-11eb-a34c-00e04c6800a9'),(340,'229507329','Laporan Realisasi Fisik Keuangan',2,'2020-11-05','Tepat waktu','10','2020','3','Laporan Realisasi Fisik Keuangan Puskesmas Cimahi Selatan Oktober 2020','Mohon tindaklanjuti catatan pada laporan bulan berikutnya','eb23cb33-edb2-11ea-b568-00e04c6800a9','0af12891-1d74-11eb-a34c-00e04c6800a9','2020-11-05 12:56:26','2020-11-09 04:28:57','0af3f4c1-1d74-11eb-a34c-00e04c6800a9'),(343,'830152489',NULL,NULL,NULL,NULL,'1',NULL,'1','testing informasi',NULL,'a62e85da-fd62-11ea-9fb4-00e04c6800a9','0af05cd1-1d74-11eb-a34c-00e04c6800a9','2020-12-28 01:01:01',NULL,'0af05cd1-1d74-11eb-a34c-00e04c6800a9');
/*!40000 ALTER TABLE `document_upload` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `log_user` AFTER INSERT ON `document_upload` FOR EACH ROW BEGIN

insert into master_log(ket,user_id) VALUES(concat('menambah data dokumen ',new.document_name),new.user_id);

insert into log_activity(id_dokumen,user_id,catatan,status) values(new.id,new.updatedby,'dokumen dibuat',new.status_dokumen);

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `update_status_keterlambatan` BEFORE UPDATE ON `document_upload` FOR EACH ROW BEGIN

if(new.status_dokumen="2")

THEN

		IF(new.duedate<curdate()) 

		THEN

			set new.status_duedate="Terlambat";

		ELSE

			set new.status_duedate="Tepat waktu";

		END IF;	

END IF;



insert into master_log(ket,user_id) VALUES(concat("update data dokumen ",new.document_name," menjadi ",new.status_dokumen),new.updatedby);

insert into log_activity(id_dokumen,user_id,catatan,status) values(new.id,new.updatedby,'dokumen diupdate',new.status_dokumen);



END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `document_upload_bidang`
--

DROP TABLE IF EXISTS `document_upload_bidang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `document_upload_bidang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_document` varchar(255) NOT NULL,
  `id_jenis` int(20) DEFAULT NULL,
  `bulan` varchar(255) DEFAULT NULL,
  `tahun` varchar(255) DEFAULT NULL,
  `status_dokumen` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `tanggapan` text DEFAULT NULL,
  `id_intansi` varchar(250) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `updatedby` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`,`id_document`) USING BTREE,
  KEY `user_id` (`user_id`),
  KEY `id_jenis` (`id_jenis`)
) ENGINE=MyISAM AUTO_INCREMENT=362 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document_upload_bidang`
--

LOCK TABLES `document_upload_bidang` WRITE;
/*!40000 ALTER TABLE `document_upload_bidang` DISABLE KEYS */;
/*!40000 ALTER TABLE `document_upload_bidang` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `log_user_copy1` AFTER INSERT ON `document_upload_bidang` FOR EACH ROW BEGIN

insert into master_log(ket,user_id) VALUES(concat('bidang menambah data dokumen dengan kode',new.id_jenis),new.user_id);

insert into log_activity(id_dokumen,user_id,catatan,status) values(new.id,new.updatedby,'dokumen dibuat',new.status_dokumen);

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `update_status_keterlambatan_copy1` BEFORE UPDATE ON `document_upload_bidang` FOR EACH ROW BEGIN

insert into master_log(ket,user_id) VALUES(concat("update data dokumen ",new.id_jenis," menjadi ",new.status_dokumen),new.updatedby);

insert into log_activity(id_dokumen,user_id,catatan,status) values(new.id,new.updatedby,'dokumen diupdate',new.status_dokumen);

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `document_upload_sewaktu`
--

DROP TABLE IF EXISTS `document_upload_sewaktu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `document_upload_sewaktu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_document` varchar(255) NOT NULL,
  `document_name` varchar(255) DEFAULT NULL,
  `status_dokumen` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `tanggapan` text DEFAULT NULL,
  `id_puskesmas` varchar(250) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `updatedby` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`,`id_document`) USING BTREE,
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=184 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document_upload_sewaktu`
--

LOCK TABLES `document_upload_sewaktu` WRITE;
/*!40000 ALTER TABLE `document_upload_sewaktu` DISABLE KEYS */;
INSERT INTO `document_upload_sewaktu` VALUES (182,'1010100524','DOKUMEN SEWAKTU','1','BERIKUT DILAMPIRKAN DOKUMEN',NULL,'a62e85da-fd62-11ea-9fb4-00e04c6800a9','476635ce-0eb5-11eb-ae49-00e04c6800a9','2020-10-21 03:40:38',NULL,'476635ce-0eb5-11eb-ae49-00e04c6800a9'),(178,'38467294','laporan pengunjungan program','2','cek cek',NULL,'a62e85da-fd62-11ea-9fb4-00e04c6800a9','476635ce-0eb5-11eb-ae49-00e04c6800a9','2020-10-19 08:38:40','2020-10-19 08:50:47','476635ce-0eb5-11eb-ae49-00e04c6800a9'),(180,'264487826','testing ke 3','2','ini keterangan testing ke 3 setelah diklik update',NULL,'a62e85da-fd62-11ea-9fb4-00e04c6800a9','476635ce-0eb5-11eb-ae49-00e04c6800a9','2020-10-19 08:56:49','2020-10-19 08:57:41','476635ce-0eb5-11eb-ae49-00e04c6800a9'),(181,'490259312','ASASASA','2','ASA',NULL,'a62e85da-fd62-11ea-9fb4-00e04c6800a9','476635ce-0eb5-11eb-ae49-00e04c6800a9','2020-10-19 09:03:27','2020-10-21 01:49:05','476635ce-0eb5-11eb-ae49-00e04c6800a9'),(183,'1452247758','dokumen cek sewaktu','2','ini proses upload dokumen sewaktu oleh pkm padasuka',NULL,'a62e85da-fd62-11ea-9fb4-00e04c6800a9','476635ce-0eb5-11eb-ae49-00e04c6800a9','2020-10-29 14:59:38','2020-10-29 14:59:44','476635ce-0eb5-11eb-ae49-00e04c6800a9');
/*!40000 ALTER TABLE `document_upload_sewaktu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ia_document_review`
--

DROP TABLE IF EXISTS `ia_document_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ia_document_review` (
  `id_review` bigint(255) NOT NULL AUTO_INCREMENT,
  `id_document` varchar(50) DEFAULT NULL,
  `indikator_penilaian` varchar(100) DEFAULT NULL,
  `status_penilaian` varchar(15) DEFAULT NULL,
  `nilai` varchar(5) DEFAULT NULL,
  `comment` varchar(254) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp(),
  `status` varchar(30) DEFAULT NULL,
  `id_user` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_review`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ia_document_review`
--

LOCK TABLES `ia_document_review` WRITE;
/*!40000 ALTER TABLE `ia_document_review` DISABLE KEYS */;
INSERT INTO `ia_document_review` VALUES (77,'170','Format','ya','0','','2020-10-14 07:01:13','0000-00-00 00:00:00','active','5dc3312e-fe0f-11ea-9fb4-00e04c6800a9'),(78,'170','Ketepatan waktu','ya','0','','2020-10-14 07:01:13','0000-00-00 00:00:00','active','5dc3312e-fe0f-11ea-9fb4-00e04c6800a9'),(79,'170','Capaian','ya','0','','2020-10-14 07:01:13','0000-00-00 00:00:00','active','5dc3312e-fe0f-11ea-9fb4-00e04c6800a9'),(80,'170','Analisa','ya','0','','2020-10-14 07:01:13','0000-00-00 00:00:00','active','5dc3312e-fe0f-11ea-9fb4-00e04c6800a9'),(81,'171','Format','ya','0','format','2020-10-14 07:09:40','0000-00-00 00:00:00','active','5dc3312e-fe0f-11ea-9fb4-00e04c6800a9'),(82,'171','Ketepatan waktu','ya','0','tepat waktu','2020-10-14 07:09:40','0000-00-00 00:00:00','active','5dc3312e-fe0f-11ea-9fb4-00e04c6800a9'),(83,'171','Capaian','ya','0','ada capaian','2020-10-14 07:09:40','0000-00-00 00:00:00','active','5dc3312e-fe0f-11ea-9fb4-00e04c6800a9'),(84,'171','Analisa','ya','0','ada analisa','2020-10-14 07:09:40','0000-00-00 00:00:00','active','5dc3312e-fe0f-11ea-9fb4-00e04c6800a9'),(85,'173','Format','ya','0','MENGERTI','2020-10-21 03:42:59','0000-00-00 00:00:00','active','476635ce-0eb5-11eb-ae49-00e04c6800a9'),(86,'173','Ketepatan waktu','tidak','0','DAN BELAJAR','2020-10-21 03:42:59','0000-00-00 00:00:00','active','476635ce-0eb5-11eb-ae49-00e04c6800a9'),(87,'173','Capaian','tidak','0','MEMBACA','2020-10-21 03:42:59','0000-00-00 00:00:00','active','476635ce-0eb5-11eb-ae49-00e04c6800a9'),(88,'173','Analisa','ya','0','BELAJAR','2020-10-21 03:42:59','0000-00-00 00:00:00','active','476635ce-0eb5-11eb-ae49-00e04c6800a9');
/*!40000 ALTER TABLE `ia_document_review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ia_permission`
--

DROP TABLE IF EXISTS `ia_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ia_permission` (
  `id` int(122) unsigned NOT NULL AUTO_INCREMENT,
  `user_type` varchar(250) DEFAULT NULL,
  `data` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ia_permission`
--

LOCK TABLES `ia_permission` WRITE;
/*!40000 ALTER TABLE `ia_permission` DISABLE KEYS */;
INSERT INTO `ia_permission` VALUES (1,'admin','{\"user\":\"user\",\"document_maker\":\"document_maker\",\"document_mapping\":\"document_mapping\"}'),(2,'puskesmas','{\"user\":{\"own_create\":\"1\",\"own_read\":\"1\",\"own_update\":\"1\",\"own_delete\":\"1\",\"all_read\":\"1\",\"all_update\":\"1\",\"all_delete\":\"1\"},\"ia_document_upload\":{\"own_create\":\"1\",\"own_read\":\"1\",\"own_update\":\"1\",\"own_delete\":\"1\",\"all_read\":\"1\",\"all_update\":\"1\",\"all_delete\":\"1\"},\"upload\":{\"own_create\":\"1\",\"own_read\":\"1\",\"own_update\":\"1\",\"own_delete\":\"1\",\"all_read\":\"1\",\"all_update\":\"1\",\"all_delete\":\"1\"}}'),(3,'dinas','{\"user\":{\"own_create\":\"1\",\"own_read\":\"1\",\"own_update\":\"1\",\"own_delete\":\"1\",\"all_update\":\"1\",\"all_delete\":\"1\"},\"ia_document_maker\":{\"own_create\":\"1\",\"own_read\":\"1\",\"own_update\":\"1\",\"own_delete\":\"1\",\"all_read\":\"1\",\"all_update\":\"1\",\"all_delete\":\"1\"},\"ia_document_upload\":{\"own_create\":\"1\",\"own_read\":\"1\",\"own_update\":\"1\",\"own_delete\":\"1\",\"all_read\":\"1\",\"all_update\":\"1\",\"all_delete\":\"1\"}}'),(4,'executive','{\"user\":{\"own_create\":\"1\",\"own_read\":\"1\",\"own_update\":\"1\",\"own_delete\":\"1\",\"all_read\":\"1\",\"all_update\":\"1\",\"all_delete\":\"1\"},\"document_maker\":{\"own_create\":\"1\",\"own_read\":\"1\",\"own_update\":\"1\",\"own_delete\":\"1\",\"all_read\":\"1\",\"all_update\":\"1\",\"all_delete\":\"1\"},\"ia_document_upload\":{\"own_create\":\"1\",\"own_read\":\"1\",\"own_update\":\"1\",\"own_delete\":\"1\",\"all_read\":\"1\",\"all_delete\":\"1\"}}');
/*!40000 ALTER TABLE `ia_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ia_setting`
--

DROP TABLE IF EXISTS `ia_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ia_setting` (
  `id` int(122) unsigned NOT NULL AUTO_INCREMENT,
  `keys` varchar(255) DEFAULT NULL,
  `value` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ia_setting`
--

LOCK TABLES `ia_setting` WRITE;
/*!40000 ALTER TABLE `ia_setting` DISABLE KEYS */;
INSERT INTO `ia_setting` VALUES (1,'website','Si-IDOLA'),(2,'logo',''),(3,'favicon','olalquiaga-arquitectos-social-housing-3_1517468350.jpg'),(4,'SMTP_EMAIL',''),(5,'HOST',''),(6,'PORT',''),(7,'SMTP_SECURE','admin@admin.com'),(8,'SMTP_PASSWORD','123456'),(9,'mail_setting','simple_mail'),(10,'nama_instansi','Dinas Kesehatan Kota Cimahi'),(11,'crud_list','User'),(12,'EMAIL',''),(13,'UserModules','yes'),(14,'register_allowed','0'),(15,'email_invitation','1'),(16,'admin_approval','0'),(17,'language','english'),(18,'user_type','[\"puskesmas\"]'),(19,'date_formate',''),(20,'version','1.0.1'),(21,'tgl_jthtempo','15'),(22,'status','1'),(23,'share_with','3'),(24,'produk_deskripsi','Si-IDOLA');
/*!40000 ALTER TABLE `ia_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ia_status`
--

DROP TABLE IF EXISTS `ia_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ia_status` (
  `status_id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_status` varchar(255) NOT NULL,
  `desc` text DEFAULT NULL,
  `status` varchar(80) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`status_id`)
) ENGINE=MyISAM AUTO_INCREMENT=56 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ia_status`
--

LOCK TABLES `ia_status` WRITE;
/*!40000 ALTER TABLE `ia_status` DISABLE KEYS */;
INSERT INTO `ia_status` VALUES (7,'Ditunda','Proses validasi dokumen ditunda','Tidak aktif','2020-03-13 03:09:24'),(6,'Diperbaiki','Status ini digunakan jika dokumen yang dikirimkan tidak sesuai (format, analisa, capaian)','Aktif','2020-03-13 03:09:24'),(5,'Tindaklanjut','dokumen tindak lanjut','Tidak aktif','2020-03-13 03:09:24'),(4,'Dalam Proses Review','Status dokumen dalam proses review oleh dinas kesehatan','Tidak aktif','2020-03-13 03:09:24'),(3,'Disetujui','Status ini untuk dokumen yang telah dinyatakan sesuai dalam proses validasi (laporan dokumen dinyatakan selesai)','Aktif','2020-06-24 06:08:42'),(2,'Baru','Adalah status dokumen yang telah diajukan oleh PKM ke dinas untuk divalidasi','Aktif','2020-03-13 03:09:24'),(1,'Draft','Status draft adalah dokumen yang masih berada pada masing-masing puskesmas, dokumen dengan status ini belum bisa divalidasi oleh admin/Dinas kesehatan sebelum KA. TU/ KA. Puskesmas mengirimkan dokumen laporanya','Aktif','2020-08-11 05:19:05'),(8,'Dokumen Tidak Dikenal','status ini digunakan/diset jika dokumen yang dikirimkan tidak sesuai dengan jenis laporan yang seharusnya dikirimkan','Aktif','2020-03-13 03:09:24'),(55,'Revisi','status ini dikirim oleh KA. TU/KA. Puskesmas sebagai dokumen revisi setelah diperbaiki oleh PKM untuk divalidasi ulang oleh admin','Aktif','2020-09-09 04:09:58');
/*!40000 ALTER TABLE `ia_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ia_users`
--

DROP TABLE IF EXISTS `ia_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ia_users` (
  `ia_users_id` int(121) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL,
  `var_key` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `is_deleted` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `profile_pic` varchar(255) DEFAULT NULL,
  `user_type` varchar(255) DEFAULT NULL,
  `create_date` date DEFAULT NULL,
  `nama_lengkap` varchar(255) DEFAULT NULL,
  `jabatan_id` varchar(255) DEFAULT NULL,
  `id_puskesmas` varchar(255) DEFAULT NULL,
  `updated` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`ia_users_id`,`user_id`) USING BTREE,
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ia_users`
--

LOCK TABLES `ia_users` WRITE;
/*!40000 ALTER TABLE `ia_users` DISABLE KEYS */;
INSERT INTO `ia_users` VALUES (1,'0af05cd1-1d74-11eb-a34c-00e04c6800a9','123456789','active','0','Admin','$2y$10$bfVUsRUrv2P/7U5n7esGaeuZIsbua71PjyzuuBPczHfbg34SVYAz.','dinkes@cimahikota.go.id','user.png','ADMIN','2020-11-03','Super User','322','a62e85da-fd62-11ea-9fb4-00e04c6800a9','2020-11-03 09:03:11'),(4,'0af0bc04-1d74-11eb-a34c-00e04c6800a9','196709211987032003','active','0','katu.cibeber','$2y$10$d0cYVbtf9Kqp3afrarTMGepLOASltmcqwvLV/lmx67VWZyOwGzAsm','yeni.erliana@cimahikota.go.id','user.png','PUSKESMAS','2020-11-03','Yeni Erliana, S.Sos','327','eb23cdd4-edb2-11ea-b568-00e04c6800a9','2020-11-03 01:39:38'),(5,'0af12891-1d74-11eb-a34c-00e04c6800a9','197008071993032008','active','0','katu.cimsel','$2y$10$d0cYVbtf9Kqp3afrarTMGepLOASltmcqwvLV/lmx67VWZyOwGzAsm','irma.windya@cimahikota.go.id','user.png','PUSKESMAS','2020-11-03','Irma Gilang Windya, SKM','327','eb23cb33-edb2-11ea-b568-00e04c6800a9','2020-11-03 01:39:41'),(6,'0af17a5f-1d74-11eb-a34c-00e04c6800a9','196412121984022002','active','0','katu.cimut','$2y$10$d0cYVbtf9Kqp3afrarTMGepLOASltmcqwvLV/lmx67VWZyOwGzAsm','khoiriyah.hastuti@cimahikota.go.id','user.png','PUSKESMAS','2020-11-03','Khoiriyah Tri Hastuti, S.Sos','327','eb23cfc2-edb2-11ea-b568-00e04c6800a9','2020-11-03 01:39:41'),(7,'0af1d25a-1d74-11eb-a34c-00e04c6800a9','197008242008011002','active','0','katu.cipageran','$2y$10$V8LO3jPusBIsqsiYnzfeu.sHctwbVi21eHtIbKfqbJ3uzVTjTYq2q','dedi.suhendar@cimahikota.go.id','user.png','PUSKESMAS','2020-11-03','Dedi Suhendar, S.Sos, M.Si','327','eb23d02f-edb2-11ea-b568-00e04c6800a9','2020-11-03 01:39:42'),(8,'0af216cf-1d74-11eb-a34c-00e04c6800a9','197711302006042009','active','0','katu.melas','$2y$10$d0cYVbtf9Kqp3afrarTMGepLOASltmcqwvLV/lmx67VWZyOwGzAsm','erna.marliana@cimahikota.go.id','user.png','PUSKESMAS','2020-11-03','Erna Marliana, SKM.','327','eb23cce3-edb2-11ea-b568-00e04c6800a9','2020-11-03 01:39:45'),(9,'0af25a83-1d74-11eb-a34c-00e04c6800a9','196502231988031005','active','0','katu.meteng','$2y$10$d0cYVbtf9Kqp3afrarTMGepLOASltmcqwvLV/lmx67VWZyOwGzAsm','dadan.rusnandar@cimahikota.go.id','user.png','PUSKESMAS','2020-11-03','Dadan Rusnandar, S.Sos','327','eb23ce75-edb2-11ea-b568-00e04c6800a9','2020-11-03 01:39:46'),(10,'0af29c04-1d74-11eb-a34c-00e04c6800a9','197010081994032005','active','0','katu.cigugurtengah','$2y$10$d0cYVbtf9Kqp3afrarTMGepLOASltmcqwvLV/lmx67VWZyOwGzAsm','tintin.yuliantini@cimahikota.go.id','user.png','PUSKESMAS','2020-11-03','Tintin Yuliantini, SKM','327','eb23cf09-edb2-11ea-b568-00e04c6800a9','2020-11-03 01:39:46'),(11,'0af2df94-1d74-11eb-a34c-00e04c6800a9','197111201995032002','active','0','katu.padasuka','$2y$10$d0cYVbtf9Kqp3afrarTMGepLOASltmcqwvLV/lmx67VWZyOwGzAsm','yootje.wulandini@cimahikota.go.id','user.png','PUSKESMAS','2020-11-03','Yootje Wulandini, SKM.','327','eb23cf55-edb2-11ea-b568-00e04c6800a9','2020-11-03 01:39:47'),(12,'0af31f5f-1d74-11eb-a34c-00e04c6800a9','197208301997031002','active','0','kasubag.progsi','$2y$10$d0cYVbtf9Kqp3afrarTMGepLOASltmcqwvLV/lmx67VWZyOwGzAsm','husein@cimahikota.go.id','user.png','ADMIN','2020-11-03','Husein, S.Sos., M.M','324','a62e85da-fd62-11ea-9fb4-00e04c6800a9','2020-11-03 01:52:18'),(27,'0af53e06-1d74-11eb-a34c-00e04c6800a9','196703161987032001','active','0','katu.citeureup','$2y$10$d0cYVbtf9Kqp3afrarTMGepLOASltmcqwvLV/lmx67VWZyOwGzAsm','sikcimahikota@gmail.com','user.png','PUSKESMAS','2020-11-03','Siti Rodiah Amperawati, S.Sos','327\r\n','eb23d0d3-edb2-11ea-b568-00e04c6800a9','2020-11-03 01:39:50'),(33,'0af57fa3-1d74-11eb-a34c-00e04c6800a9','196410061986032007','active','0','katu.leuwigajah','$2y$10$d0cYVbtf9Kqp3afrarTMGepLOASltmcqwvLV/lmx67VWZyOwGzAsm','henny.komara@cimahikota.go.id','user.png','PUSKESMAS','2020-11-03','Henny Komara,S.Pd','327\r\n','eb23ce28-edb2-11ea-b568-00e04c6800a9','2020-11-03 01:39:51'),(34,'0af5c154-1d74-11eb-a34c-00e04c6800a9','196801111989032007','active','0','katu.paskal','$2y$10$d0cYVbtf9Kqp3afrarTMGepLOASltmcqwvLV/lmx67VWZyOwGzAsm','enny.erawati@cimahikota.go.id','user.png','PUSKESMAS','2020-11-03','Enny Erawati, SE','327\r\n','eb23d081-edb2-11ea-b568-00e04c6800a9','2020-11-03 01:39:51'),(35,'0af604df-1d74-11eb-a34c-00e04c6800a9','196909201991032007','active','0','katu.cimteng','$2y$10$d0cYVbtf9Kqp3afrarTMGepLOASltmcqwvLV/lmx67VWZyOwGzAsm','siti.sopiah@cimahikota.go.id','user.png','PUSKESMAS','2020-11-03','Siti Sopiah, SKM, MM','327\r\n','eb23cebf-edb2-11ea-b568-00e04c6800a9','2020-11-03 01:39:52'),(36,'0af6601d-1d74-11eb-a34c-00e04c6800a9','196912081991032003','active','0','katu.cibeureum','$2y$10$d0cYVbtf9Kqp3afrarTMGepLOASltmcqwvLV/lmx67VWZyOwGzAsm','enri.rosnadiyanti@cimahikota.go.id','user.png','PUSKESMAS','2020-11-03','Enri Rosnadiyanti, SKM','327\r\n','eb23cd7e-edb2-11ea-b568-00e04c6800a9','2020-11-03 01:39:53');
/*!40000 ALTER TABLE `ia_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `auto_insert_user_id` BEFORE INSERT ON `ia_users` FOR EACH ROW BEGIN

set new.user_id=uuid();

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `jenis_dok_bidang`
--

DROP TABLE IF EXISTS `jenis_dok_bidang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jenis_dok_bidang` (
  `id_jenis` int(20) NOT NULL AUTO_INCREMENT,
  `jenis` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`id_jenis`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jenis_dok_bidang`
--

LOCK TABLES `jenis_dok_bidang` WRITE;
/*!40000 ALTER TABLE `jenis_dok_bidang` DISABLE KEYS */;
INSERT INTO `jenis_dok_bidang` VALUES (20,'LAPORAN REALISASI BANTUAN APBN/ DAK/ DID','active','2021-01-04 04:06:02','2021-01-04 04:07:36'),(21,'LAPORAN BANTUAN PROVINSI/DBHCHT/DBH','active','2021-01-04 04:06:36','2021-01-04 04:08:02'),(16,'LAPORAN FISIK KEUANGAN','active','2021-01-04 04:04:08',NULL),(19,'LAPORAN RENJA (MONEV RENJA)','active','2021-01-04 04:05:29',NULL),(18,'LAPORAN PENILAIAN KINERJA KEGIATAN (PKK)','active','2021-01-04 04:04:54',NULL),(22,'LAPORAN DATA PROFIL PERBIDANG','active','2021-01-04 04:09:05','2021-01-04 04:10:26');
/*!40000 ALTER TABLE `jenis_dok_bidang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_activity`
--

DROP TABLE IF EXISTS `log_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_activity` (
  `id_log_dok` bigint(255) NOT NULL AUTO_INCREMENT,
  `id_dokumen` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `catatan` text DEFAULT NULL,
  `date` timestamp NULL DEFAULT current_timestamp(),
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_log_dok`)
) ENGINE=MyISAM AUTO_INCREMENT=565 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_activity`
--

LOCK TABLES `log_activity` WRITE;
/*!40000 ALTER TABLE `log_activity` DISABLE KEYS */;
/*!40000 ALTER TABLE `log_activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_intansi`
--

DROP TABLE IF EXISTS `master_intansi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `master_intansi` (
  `id_intansi` varchar(255) NOT NULL,
  `nama_intansi` varchar(255) DEFAULT NULL,
  `jenis` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `telp` varchar(40) DEFAULT NULL,
  `hp` varchar(30) DEFAULT NULL,
  `fax` varchar(40) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`id_intansi`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_intansi`
--

LOCK TABLES `master_intansi` WRITE;
/*!40000 ALTER TABLE `master_intansi` DISABLE KEYS */;
INSERT INTO `master_intansi` VALUES ('eb23cb33-edb2-11ea-b568-00e04c6800a9','CIMAHI SELATAN','PUSKESMAS','Jl. Baros No. 16 Kel Utama, Kec. Cimahi Selatan','pkm@cimhikota.go.id','022-6629300','08xxxxxxxxx','022-6629300','www.dinkes.cimahikota.go.id','Active','2020-09-21 08:36:16','2020-09-29 03:32:47'),('eb23cce3-edb2-11ea-b568-00e04c6800a9','MELONG ASIH','PUSKESMAS','Jl. Melong Blok I No.1 Kel. Melong, Kec. Cimahi Selatan','pkm@cimhikota.go.id','022-6023833','08xxxxxxxxx','022-6023833','www.dinkes.cimahikota.go.id','Active','2020-09-21 08:36:16','2020-09-29 03:32:56'),('eb23cd7e-edb2-11ea-b568-00e04c6800a9','CIBEUREUM','PUSKESMAS','Jl. Raya Cibeureum No. 125 Blk Kel. Cibeureum, Kec. Cimahi Selatan','pkm@cimhikota.go.id','022-6075623','08xxxxxxxxx','022-6075623','www.dinkes.cimahikota.go.id','Active','2020-09-21 08:36:16','2020-09-29 03:33:05'),('eb23cdd4-edb2-11ea-b568-00e04c6800a9','CIBEBER','PUSKESMAS','Jl. Puri Fajar No.1 Kel. Cibeber, Kec. Cimahi Selatan','puskesmascibebercimahi@gmail.com','022-6628983','08xxxxxxxxx','022-88880072','www.dinkes.cimahikota.go.id','Active','2020-09-21 08:36:16','2020-09-29 03:33:13'),('eb23ce28-edb2-11ea-b568-00e04c6800a9','LEUWIGAJAH','PUSKESMAS','Jl. Kihapit Barat RT 8 RW 9 Kel. Leuwigajah, Kec. Cimahi Selatan                         \n                     \n                     \n                     \n                    ','pkm@cimhikota.go.id','022-6677649','08xxxxxxxxx','022-6677649','www.dinkes.cimahikota.go.id','Active','2020-09-21 08:36:16','2020-09-29 03:33:39'),('eb23ce75-edb2-11ea-b568-00e04c6800a9','MELONG TENGAH','PUSKESMAS','Jl. Melong Tengah RT 2 RW 4 Kel. Melong Kec. Cimahi Selatan','pkm@cimhikota.go.id','022-6004991','08xxxxxxxxx','022-6004991','www.dinkes.cimahikota.go.id','Active','2020-09-21 08:36:16','2020-09-29 03:33:41'),('eb23cebf-edb2-11ea-b568-00e04c6800a9','CIMAHI TENGAH','PUSKESMAS','Jl. Djulaeha Karmita No. 5 Kel. Cimahi, Kec. Cimahi Tengah','pkm@cimhikota.go.id','022-6630213','08xxxxxxxxx','022-6630213','www.dinkes.cimahikota.go.id','Active','2020-09-21 08:36:16','2020-09-29 03:34:04'),('eb23cf09-edb2-11ea-b568-00e04c6800a9','CIGUGUR TENGAH','PUSKESMAS','Jl. Abdul halim No. 199 Kel. Cigugur, Kec. Cimahi Tengah','pkm@cimhikota.go.id','022-6632343','08xxxxxxxxx','022-6632343','www.dinkes.cimahikota.go.id','Active','2020-09-21 08:36:16','2020-09-29 03:34:19'),('eb23cf55-edb2-11ea-b568-00e04c6800a9','PADASUKA','PUSKESMAS','Jl. Kebon Manggu Kel. Padasuka, Kec. Cimahi Tengah','pkm@cimhikota.go.id','022-6621701','08xxxxxxxxx','022-6621701','www.dinkes.cimahikota.go.id','Active','2020-09-21 08:36:16','2020-09-29 03:34:27'),('eb23cfc2-edb2-11ea-b568-00e04c6800a9','CIMAHI UTARA','PUSKESMAS','Jl. Serut No.16 Kel.Cibabat, Kec. Cimahi Utara','pkm@cimhikota.go.id','022-6631547','08xxxxxxxxx','022-6631547','www.dinkes.cimahikota.go.id','Active','2020-09-21 08:36:16','2020-09-29 03:34:40'),('eb23d02f-edb2-11ea-b568-00e04c6800a9','CIPAGERAN','PUSKESMAS','Jl. Bobojong No. 148 Kel. Cipageran, Kec. Cimahi Utara                         \n                     \n                     \n                    ','pkm@cimhikota.go.id','022-6627698','08xxxxxxxxx','022-6627698','www.dinkes.cimahikota.go.id','Active','2020-09-21 08:36:16','2020-09-29 03:35:02'),('eb23d081-edb2-11ea-b568-00e04c6800a9','PASIRKALIKI','PUSKESMAS','Jl. Cidamar, Kel. Pasir Kaliki, Kec. Cimahi Utara                         \n                     \n                     \n                    ','pkm@cimhikota.go.id','022-2021935','08xxxxxxxxx','022-2021935','www.dinkes.cimahikota.go.id','Active','2020-09-21 08:36:16','2020-09-29 03:35:10'),('eb23d0d3-edb2-11ea-b568-00e04c6800a9','CITEUREUP','PUSKESMAS','Kel. Citeureup, Kec. Cimahi Utara                      \n                     \n                     \n                     \n                     \n                    ','pkm@cimhikota.go.id','022 - 6628983','08xxxxxxxxx','022 - 6628983','www.dinkes.cimahikota.go.id','Active','2020-09-21 08:36:16','2020-09-29 03:35:17'),('a62e85da-fd62-11ea-9fb4-00e04c6800a9','PROGSI','DINAS KESEHATAN','pemkot Cimahi','info@cimahikota.go.id','087822766000','087822766000','087822766000','www.dinkes.cimahikota.go.id','Active','2020-09-23 06:04:32','2020-12-18 02:53:47'),('38bf92f0-fed1-11ea-9fb4-00e04c6800a9','SDMK','DINAS KESEHATAN','Jl. Raden Demang Hardjakusumah No.1, Cibabat, Kec. Cimahi Utara, Kota Cimahi, Jawa Barat 4013','sdk@cimahikota.go.id','(022) 6642454','087822766000','(022) 6642454','www.cimahikota.go.id','Active','2020-09-25 01:48:25','2020-12-18 02:45:22'),('7d5efce4-4e41-11eb-968a-00e04c6800a9','PROMKES','DINAS KESEHATAN','Cimahi','promkes@cimahikota.go.id','088','088','','','Active','2021-01-04 04:01:14',NULL),('9e5d6954-40d8-11eb-a4de-00e04c6800a9','P2P','DINAS KESEHATAN','Komplek Perkantoran Pemkot Cimahi Gedung C Lantai 3 Jl. Demang Hardjakusumah Blok Jati Cihanjuang Cimahi','dinkes@cimahikota.go.id','022 - 6632197','0878','022 - 6632197','https://dinkes.cimahikota.go.id/','Inactive','2020-12-18 02:27:47','2020-12-18 02:59:13'),('bd7aeef5-3f97-11eb-8880-d43b040563b9','KESMAS','DINAS KESEHATAN','Jl. Raden Demang Hardjakusumah No.1, Cibabat, Kec. Cimahi Utara, Kota Cimahi, Jawa Barat 40132','dinkes@cimahikota.go.id','(022) 6642454','-','(022) 6642454','www.dinkes.cimahikota.go.id','Active','2020-12-16 12:10:50',NULL);
/*!40000 ALTER TABLE `master_intansi` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `insert_uuid_instansi` BEFORE INSERT ON `master_intansi` FOR EACH ROW BEGIN

set new.id_intansi=uuid();

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `master_item`
--

DROP TABLE IF EXISTS `master_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `master_item` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `namaitem` varchar(50) DEFAULT NULL,
  `nama_kategori` varchar(50) DEFAULT NULL,
  `keterangan` varchar(50) DEFAULT NULL,
  `TglBerlaku` date DEFAULT NULL,
  `status` char(20) DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE,
  KEY `ID` (`ID`),
  KEY `NamaItem` (`namaitem`)
) ENGINE=InnoDB AUTO_INCREMENT=356 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_item`
--

LOCK TABLES `master_item` WRITE;
/*!40000 ALTER TABLE `master_item` DISABLE KEYS */;
INSERT INTO `master_item` VALUES (318,'PROGRAM DAN KINERJA','KELOMPOK-DOKUMEN',NULL,'2020-09-23','active'),(319,'DATA DAN INFORMASI','KELOMPOK-DOKUMEN',NULL,'2020-09-23','active'),(320,'DATA RS','KELOMPOK-DOKUMEN',NULL,'2020-09-23','active'),(321,'DATA KLINIK','KELOMPOK-DOKUMEN',NULL,'2020-09-23','active'),(322,'Kepala Dinas','JABATAN',NULL,'2020-09-23','active'),(323,'Sekretaris Dinas','JABATAN',NULL,'2020-09-23','active'),(324,'Kasubag Progsi','JABATAN',NULL,'2020-09-23','active'),(325,'Kabid. P2P','JABATAN',NULL,'2020-09-23','active'),(326,'Kasie. PTM','JABATAN',NULL,'2020-09-23','active'),(327,'Ka. TU','JABATAN',NULL,'2020-09-23','active'),(328,'Ka. Puskesmas','JABATAN',NULL,'2020-09-23','active'),(329,'Sekretariat','BIDANG',NULL,'2020-09-23','active'),(330,'Pelayanan dan Sumber Daya Kesehatan','BIDANG',NULL,'2020-09-23','active'),(331,'Kesehatan Masyarakat','BIDANG',NULL,'2020-09-23','active'),(332,'P2P','BIDANG',NULL,'2020-09-23','active'),(333,'Sub Bag Program dan Informasi','SEKSI',NULL,'2020-09-23','active'),(334,'Sub Bag Keuangan, Umum dan Kepegawaian','SEKSI',NULL,'2020-09-23','active'),(335,'Seksi Pelayanan dan Pembiayaan Kesehatan','SEKSI',NULL,'2020-09-23','active'),(336,'Seksi SDMK','SEKSI',NULL,'2020-09-23','active'),(337,'Seksi Farmaalkes','SEKSI',NULL,'2020-09-23','active'),(338,'Seksi Kesga Gizi','SEKSI',NULL,'2020-09-23','active'),(339,'Seksi Promosi dan Pemberdayaan Kesehatan','SEKSI',NULL,'2020-09-23','active'),(340,'Seksi Kesehatan Lingkungan','SEKSI',NULL,'2020-09-23','active'),(341,'Seksi PTM','SEKSI',NULL,'2020-09-23','active'),(342,'Seksi Penyakit Menular','SEKSI',NULL,'2020-09-23','active'),(343,'Seksi Surveilans','SEKSI',NULL,'2020-09-23','active'),(344,'Seksi IT Support','SEKSI',NULL,'2020-09-23','active'),(345,'PUSKESMAS','TYPE-USER',NULL,'2020-09-23','active'),(346,'DINAS','TYPE-USER',NULL,'2020-09-23','active'),(347,'ADMIN','TYPE-USER',NULL,'2020-09-23','active'),(349,'SUPER ADMIN','TYPE-USER','SUPER ADMIN','2020-09-25','Active'),(350,'KESMAS','BIDANG','','2020-09-25','Inactive'),(351,'Staff Progsi','JABATAN','','2020-09-25','Active'),(355,'Staff','JABATAN','','2020-12-18','Active');
/*!40000 ALTER TABLE `master_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `master_log`
--

DROP TABLE IF EXISTS `master_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `master_log` (
  `id_log` bigint(255) NOT NULL AUTO_INCREMENT,
  `ket` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `tanggal` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id_log`)
) ENGINE=MyISAM AUTO_INCREMENT=644 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_log`
--

LOCK TABLES `master_log` WRITE;
/*!40000 ALTER TABLE `master_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `master_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ms_bulan_laporan`
--

DROP TABLE IF EXISTS `ms_bulan_laporan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ms_bulan_laporan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bulan` varchar(30) DEFAULT NULL,
  `isselected` tinyint(1) DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1 MAX_ROWS=12;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ms_bulan_laporan`
--

LOCK TABLES `ms_bulan_laporan` WRITE;
/*!40000 ALTER TABLE `ms_bulan_laporan` DISABLE KEYS */;
INSERT INTO `ms_bulan_laporan` VALUES (1,'Januari',0,'1','2020-08-04 07:59:18','2020-09-10 01:21:19'),(2,'Februari',0,'1','2020-08-04 07:59:25','2020-09-10 01:21:20'),(3,'Maret',0,'1','2020-09-10 01:20:00','2020-09-10 01:21:20'),(4,'April',0,'1','2020-09-10 01:20:01','2020-09-10 01:21:20'),(5,'Mei',0,'1','2020-09-10 01:20:03','2020-09-10 01:21:21'),(6,'Juni',0,'1','2020-09-10 01:20:05','2020-09-10 01:21:21'),(7,'Juli',0,'1','2020-09-10 01:20:07','2020-09-10 01:21:21'),(8,'Agustus',0,'1','2020-09-10 01:20:09','2020-09-10 01:21:22'),(9,'September',0,'1','2020-09-10 01:20:19','2020-10-02 02:00:20'),(10,'Oktober',1,'1','2020-09-10 01:20:22','2020-10-02 02:00:17'),(11,'November',0,'1','2020-09-10 01:20:25','2020-09-10 01:21:23'),(12,'Desember',0,'1','2020-09-10 01:20:27','2020-09-10 01:21:23');
/*!40000 ALTER TABLE `ms_bulan_laporan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ms_tahun_laporan`
--

DROP TABLE IF EXISTS `ms_tahun_laporan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ms_tahun_laporan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tahun` varchar(4) DEFAULT NULL,
  `isselected` tinyint(1) DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ms_tahun_laporan`
--

LOCK TABLES `ms_tahun_laporan` WRITE;
/*!40000 ALTER TABLE `ms_tahun_laporan` DISABLE KEYS */;
INSERT INTO `ms_tahun_laporan` VALUES (1,'2019',0,'1','2020-08-04 07:59:18','2020-09-10 01:21:50'),(2,'2020',1,'1','2020-08-04 07:59:25','2020-09-10 01:21:51'),(5,'2021',0,'0','2020-12-18 07:52:32','2020-12-18 09:39:25');
/*!40000 ALTER TABLE `ms_tahun_laporan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `msinfo`
--

DROP TABLE IF EXISTS `msinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `msinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `judul` varchar(255) DEFAULT NULL,
  `isi` text DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL,
  `showmodal` varchar(1) DEFAULT NULL,
  `created` timestamp NULL DEFAULT current_timestamp(),
  `updated` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `msinfo`
--

LOCK TABLES `msinfo` WRITE;
/*!40000 ALTER TABLE `msinfo` DISABLE KEYS */;
INSERT INTO `msinfo` VALUES (1,'informasi pengumpulan dokumen','diberitahukan kepada seluruh Kepala Puskesmas dan Kepala TU agar mengumpulkan dokumen sebelum jatuh tempo tanggal 5 setiap bulannya, terimakasih','inactive','0','2020-10-22 09:05:49','2021-01-06 01:37:43'),(4,'Pengumuman penting','selamat datang di pengumuman penting','inactive','0','2020-12-28 07:51:18','2020-12-29 02:23:48'),(3,'Info Perubahan waktu pengiriman','diinformasikan kepada seluruh Kepala Puskemas dan Kepala TU, bahwa mulai Bulan Desember 2020 dan seterusnya pengiriman laporan dengan batas maksimal tanggal 10 setiap bulannya','inactive','0','2020-12-28 01:15:28','2020-12-29 02:23:49'),(5,'Info penting bagi KA. TU','informasi penting bagi KA TU Dinas kesehatan Kota Cimahi','inactive','0','2020-12-28 07:53:41','2020-12-29 02:23:49');
/*!40000 ALTER TABLE `msinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_indikator_penilaian`
--

DROP TABLE IF EXISTS `tb_indikator_penilaian`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_indikator_penilaian` (
  `id_indikator` int(20) NOT NULL AUTO_INCREMENT,
  `indikator_penilaian` varchar(255) DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id_indikator`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_indikator_penilaian`
--

LOCK TABLES `tb_indikator_penilaian` WRITE;
/*!40000 ALTER TABLE `tb_indikator_penilaian` DISABLE KEYS */;
INSERT INTO `tb_indikator_penilaian` VALUES (1,'Format','1'),(2,'Ketepatan waktu','1'),(3,'Capaian','1'),(4,'Analisa','1');
/*!40000 ALTER TABLE `tb_indikator_penilaian` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `v_document_bidang`
--

DROP TABLE IF EXISTS `v_document_bidang`;
/*!50001 DROP VIEW IF EXISTS `v_document_bidang`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_document_bidang` (
  `id` tinyint NOT NULL,
  `id_document` tinyint NOT NULL,
  `id_jenis` tinyint NOT NULL,
  `jenis` tinyint NOT NULL,
  `bulan` tinyint NOT NULL,
  `nama_bulan` tinyint NOT NULL,
  `tahun` tinyint NOT NULL,
  `status_dokumen` tinyint NOT NULL,
  `nama_status` tinyint NOT NULL,
  `keterangan` tinyint NOT NULL,
  `tanggapan` tinyint NOT NULL,
  `id_intansi` tinyint NOT NULL,
  `nama_intansi` tinyint NOT NULL,
  `jenis_intansi` tinyint NOT NULL,
  `user_id` tinyint NOT NULL,
  `created` tinyint NOT NULL,
  `updated` tinyint NOT NULL,
  `updatedby` tinyint NOT NULL,
  `nama_lengkap` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_document_upload`
--

DROP TABLE IF EXISTS `v_document_upload`;
/*!50001 DROP VIEW IF EXISTS `v_document_upload`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_document_upload` (
  `id` tinyint NOT NULL,
  `id_document` tinyint NOT NULL,
  `document_name` tinyint NOT NULL,
  `id_kategori` tinyint NOT NULL,
  `NAMA_KATEGORI` tinyint NOT NULL,
  `NAMA_KELOMPOK` tinyint NOT NULL,
  `duedate` tinyint NOT NULL,
  `status_duedate` tinyint NOT NULL,
  `status_dudate2` tinyint NOT NULL,
  `bulan` tinyint NOT NULL,
  `nama_bulan` tinyint NOT NULL,
  `tahun` tinyint NOT NULL,
  `status_dokumen` tinyint NOT NULL,
  `keterangan` tinyint NOT NULL,
  `tgl_upload` tinyint NOT NULL,
  `created` tinyint NOT NULL,
  `updated` tinyint NOT NULL,
  `status_dokumen2` tinyint NOT NULL,
  `id_puskesmas` tinyint NOT NULL,
  `nama_puskesmas` tinyint NOT NULL,
  `tanggapan` tinyint NOT NULL,
  `user_id` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_document_upload_sewaktu`
--

DROP TABLE IF EXISTS `v_document_upload_sewaktu`;
/*!50001 DROP VIEW IF EXISTS `v_document_upload_sewaktu`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_document_upload_sewaktu` (
  `id` tinyint NOT NULL,
  `id_document` tinyint NOT NULL,
  `document_name` tinyint NOT NULL,
  `status_dokumen` tinyint NOT NULL,
  `nama_status` tinyint NOT NULL,
  `keterangan` tinyint NOT NULL,
  `tanggapan` tinyint NOT NULL,
  `id_puskesmas` tinyint NOT NULL,
  `nama_intansi` tinyint NOT NULL,
  `jenis` tinyint NOT NULL,
  `user_id` tinyint NOT NULL,
  `tgl_upload` tinyint NOT NULL,
  `created` tinyint NOT NULL,
  `updated` tinyint NOT NULL,
  `updatedby` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_ia_users`
--

DROP TABLE IF EXISTS `v_ia_users`;
/*!50001 DROP VIEW IF EXISTS `v_ia_users`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_ia_users` (
  `ia_users_id` tinyint NOT NULL,
  `user_id` tinyint NOT NULL,
  `var_key` tinyint NOT NULL,
  `status_user` tinyint NOT NULL,
  `is_deleted` tinyint NOT NULL,
  `name` tinyint NOT NULL,
  `email` tinyint NOT NULL,
  `profile_pic` tinyint NOT NULL,
  `user_type` tinyint NOT NULL,
  `create_date` tinyint NOT NULL,
  `nama_lengkap` tinyint NOT NULL,
  `jabatan_id` tinyint NOT NULL,
  `nama_jabatan` tinyint NOT NULL,
  `id_puskesmas` tinyint NOT NULL,
  `updated` tinyint NOT NULL,
  `nama_intansi` tinyint NOT NULL,
  `jenis` tinyint NOT NULL,
  `alamat` tinyint NOT NULL,
  `email_kantor` tinyint NOT NULL,
  `telp` tinyint NOT NULL,
  `hp` tinyint NOT NULL,
  `fax` tinyint NOT NULL,
  `website` tinyint NOT NULL,
  `status_kantor` tinyint NOT NULL,
  `password` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_kategori`
--

DROP TABLE IF EXISTS `v_kategori`;
/*!50001 DROP VIEW IF EXISTS `v_kategori`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_kategori` (
  `ID_KATEGORI` tinyint NOT NULL,
  `kode` tinyint NOT NULL,
  `NAMA_KATEGORI` tinyint NOT NULL,
  `NAMA_KELOMPOK` tinyint NOT NULL,
  `STATUS` tinyint NOT NULL,
  `dateadded` tinyint NOT NULL,
  `id_seksi` tinyint NOT NULL,
  `kode_idx` tinyint NOT NULL,
  `title` tinyint NOT NULL,
  `id_kelompok` tinyint NOT NULL,
  `JENIS` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_log`
--

DROP TABLE IF EXISTS `v_log`;
/*!50001 DROP VIEW IF EXISTS `v_log`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_log` (
  `id_log` tinyint NOT NULL,
  `ket` tinyint NOT NULL,
  `user_id` tinyint NOT NULL,
  `nama_lengkap` tinyint NOT NULL,
  `tanggal` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_log_aktivity`
--

DROP TABLE IF EXISTS `v_log_aktivity`;
/*!50001 DROP VIEW IF EXISTS `v_log_aktivity`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_log_aktivity` (
  `id_log_dok` tinyint NOT NULL,
  `id_dokumen` tinyint NOT NULL,
  `document_name` tinyint NOT NULL,
  `user_id` tinyint NOT NULL,
  `nama_lengkap` tinyint NOT NULL,
  `catatan` tinyint NOT NULL,
  `date` tinyint NOT NULL,
  `status` tinyint NOT NULL,
  `nama_status` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `v_document_bidang`
--

/*!50001 DROP TABLE IF EXISTS `v_document_bidang`*/;
/*!50001 DROP VIEW IF EXISTS `v_document_bidang`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_document_bidang` AS select `document_upload_bidang`.`id` AS `id`,`document_upload_bidang`.`id_document` AS `id_document`,`document_upload_bidang`.`id_jenis` AS `id_jenis`,`jenis_dok_bidang`.`jenis` AS `jenis`,`document_upload_bidang`.`bulan` AS `bulan`,if(`document_upload_bidang`.`bulan` = '1','Januari',if(`document_upload_bidang`.`bulan` = '2','Februari',if(`document_upload_bidang`.`bulan` = '3','Maret',if(`document_upload_bidang`.`bulan` = '4','April',if(`document_upload_bidang`.`bulan` = '5','Mei',if(`document_upload_bidang`.`bulan` = '6','Juni',if(`document_upload_bidang`.`bulan` = '7','Juli',if(`document_upload_bidang`.`bulan` = '8','Agustus',if(`document_upload_bidang`.`bulan` = '9','September',if(`document_upload_bidang`.`bulan` = '10','Oktober',if(`document_upload_bidang`.`bulan` = '11','November',if(`document_upload_bidang`.`bulan` = '12','Desember','')))))))))))) AS `nama_bulan`,`document_upload_bidang`.`tahun` AS `tahun`,`document_upload_bidang`.`status_dokumen` AS `status_dokumen`,`ia_status`.`nama_status` AS `nama_status`,`document_upload_bidang`.`keterangan` AS `keterangan`,`document_upload_bidang`.`tanggapan` AS `tanggapan`,`document_upload_bidang`.`id_intansi` AS `id_intansi`,`master_intansi`.`nama_intansi` AS `nama_intansi`,`master_intansi`.`jenis` AS `jenis_intansi`,`document_upload_bidang`.`user_id` AS `user_id`,`document_upload_bidang`.`created` AS `created`,`document_upload_bidang`.`updated` AS `updated`,`document_upload_bidang`.`updatedby` AS `updatedby`,`ia_users`.`nama_lengkap` AS `nama_lengkap` from ((((`document_upload_bidang` join `jenis_dok_bidang` on(`document_upload_bidang`.`id_jenis` = `jenis_dok_bidang`.`id_jenis`)) join `master_intansi` on(`document_upload_bidang`.`id_intansi` = `master_intansi`.`id_intansi`)) join `ia_status` on(`document_upload_bidang`.`status_dokumen` = `ia_status`.`status_id`)) join `ia_users` on(`document_upload_bidang`.`user_id` = `ia_users`.`user_id`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_document_upload`
--

/*!50001 DROP TABLE IF EXISTS `v_document_upload`*/;
/*!50001 DROP VIEW IF EXISTS `v_document_upload`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_document_upload` AS select `document_upload`.`id` AS `id`,`document_upload`.`id_document` AS `id_document`,`document_upload`.`document_name` AS `document_name`,`document_upload`.`id_kategori` AS `id_kategori`,`dk_kategori`.`NAMA_KATEGORI` AS `NAMA_KATEGORI`,`dk_kelompok`.`NAMA_KELOMPOK` AS `NAMA_KELOMPOK`,`document_upload`.`duedate` AS `duedate`,`document_upload`.`status_duedate` AS `status_duedate`,if(`document_upload`.`status_dokumen` = '1',if(curdate() > `document_upload`.`duedate`,concat('terlambat ',to_days(curdate()) - to_days(`document_upload`.`duedate`),' hari'),if(curdate() < `document_upload`.`duedate`,concat(abs(to_days(curdate()) - to_days(`document_upload`.`duedate`)),' hari lagi'),'Hari ini terakhir')),'') AS `status_dudate2`,`document_upload`.`bulan` AS `bulan`,if(`document_upload`.`bulan` = '1','Januari',if(`document_upload`.`bulan` = '2','Februari',if(`document_upload`.`bulan` = '3','Maret',if(`document_upload`.`bulan` = '4','April',if(`document_upload`.`bulan` = '5','Mei',if(`document_upload`.`bulan` = '6','Juni',if(`document_upload`.`bulan` = '7','Juli',if(`document_upload`.`bulan` = '8','Agustus',if(`document_upload`.`bulan` = '9','September',if(`document_upload`.`bulan` = '10','Oktober',if(`document_upload`.`bulan` = '11','November',if(`document_upload`.`bulan` = '12','Desember','')))))))))))) AS `nama_bulan`,`document_upload`.`tahun` AS `tahun`,`document_upload`.`status_dokumen` AS `status_dokumen`,`document_upload`.`keterangan` AS `keterangan`,date_format(`document_upload`.`created`,'%d %b %Y') AS `tgl_upload`,`document_upload`.`created` AS `created`,`document_upload`.`updated` AS `updated`,`ia_status`.`nama_status` AS `status_dokumen2`,`document_upload`.`id_puskesmas` AS `id_puskesmas`,`dk_puskesmas`.`nama_puskesmas` AS `nama_puskesmas`,`document_upload`.`tanggapan` AS `tanggapan`,`document_upload`.`user_id` AS `user_id` from ((((`document_upload` join `dk_kategori` on(`document_upload`.`id_kategori` = `dk_kategori`.`ID_KATEGORI`)) join `dk_kelompok` on(`dk_kategori`.`id_kelompok` = `dk_kelompok`.`ID_KELOMPOK`)) join `ia_status` on(`document_upload`.`status_dokumen` = `ia_status`.`status_id`)) left join `dk_puskesmas` on(`document_upload`.`id_puskesmas` = `dk_puskesmas`.`ID_PUSKESMAS`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_document_upload_sewaktu`
--

/*!50001 DROP TABLE IF EXISTS `v_document_upload_sewaktu`*/;
/*!50001 DROP VIEW IF EXISTS `v_document_upload_sewaktu`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_document_upload_sewaktu` AS select `document_upload_sewaktu`.`id` AS `id`,`document_upload_sewaktu`.`id_document` AS `id_document`,`document_upload_sewaktu`.`document_name` AS `document_name`,`document_upload_sewaktu`.`status_dokumen` AS `status_dokumen`,`ia_status`.`nama_status` AS `nama_status`,`document_upload_sewaktu`.`keterangan` AS `keterangan`,`document_upload_sewaktu`.`tanggapan` AS `tanggapan`,`document_upload_sewaktu`.`id_puskesmas` AS `id_puskesmas`,`master_intansi`.`nama_intansi` AS `nama_intansi`,`master_intansi`.`jenis` AS `jenis`,`document_upload_sewaktu`.`user_id` AS `user_id`,date_format(`document_upload_sewaktu`.`created`,'%d %b %Y') AS `tgl_upload`,`document_upload_sewaktu`.`created` AS `created`,`document_upload_sewaktu`.`updated` AS `updated`,`document_upload_sewaktu`.`updatedby` AS `updatedby` from ((`document_upload_sewaktu` join `ia_status` on(`document_upload_sewaktu`.`status_dokumen` = `ia_status`.`status_id` and `document_upload_sewaktu`.`status_dokumen` = `ia_status`.`status_id`)) join `master_intansi` on(`document_upload_sewaktu`.`id_puskesmas` = `master_intansi`.`id_intansi`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_ia_users`
--

/*!50001 DROP TABLE IF EXISTS `v_ia_users`*/;
/*!50001 DROP VIEW IF EXISTS `v_ia_users`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_ia_users` AS select `ia_users`.`ia_users_id` AS `ia_users_id`,`ia_users`.`user_id` AS `user_id`,`ia_users`.`var_key` AS `var_key`,`ia_users`.`status` AS `status_user`,`ia_users`.`is_deleted` AS `is_deleted`,`ia_users`.`name` AS `name`,`ia_users`.`email` AS `email`,`ia_users`.`profile_pic` AS `profile_pic`,`ia_users`.`user_type` AS `user_type`,`ia_users`.`create_date` AS `create_date`,`ia_users`.`nama_lengkap` AS `nama_lengkap`,`ia_users`.`jabatan_id` AS `jabatan_id`,`master_item`.`namaitem` AS `nama_jabatan`,`ia_users`.`id_puskesmas` AS `id_puskesmas`,`ia_users`.`updated` AS `updated`,`master_intansi`.`nama_intansi` AS `nama_intansi`,`master_intansi`.`jenis` AS `jenis`,`master_intansi`.`alamat` AS `alamat`,`master_intansi`.`email` AS `email_kantor`,`master_intansi`.`telp` AS `telp`,`master_intansi`.`hp` AS `hp`,`master_intansi`.`fax` AS `fax`,`master_intansi`.`website` AS `website`,`master_intansi`.`status` AS `status_kantor`,`ia_users`.`password` AS `password` from ((`ia_users` join `master_item` on(`ia_users`.`jabatan_id` = `master_item`.`ID` and `master_item`.`nama_kategori` = 'JABATAN')) join `master_intansi` on(`ia_users`.`id_puskesmas` = `master_intansi`.`id_intansi`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_kategori`
--

/*!50001 DROP TABLE IF EXISTS `v_kategori`*/;
/*!50001 DROP VIEW IF EXISTS `v_kategori`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_kategori` AS select `dk_kategori`.`ID_KATEGORI` AS `ID_KATEGORI`,`dk_kategori`.`kode` AS `kode`,`dk_kategori`.`NAMA_KATEGORI` AS `NAMA_KATEGORI`,`dk_kelompok`.`NAMA_KELOMPOK` AS `NAMA_KELOMPOK`,`dk_kategori`.`STATUS` AS `STATUS`,`dk_kategori`.`dateadded` AS `dateadded`,`dk_kategori`.`id_seksi` AS `id_seksi`,`dk_kategori`.`kode_idx` AS `kode_idx`,`dk_kategori`.`title` AS `title`,`dk_kategori`.`id_kelompok` AS `id_kelompok`,`dk_kategori`.`JENIS` AS `JENIS` from (`dk_kategori` join `dk_kelompok` on(`dk_kategori`.`id_kelompok` = `dk_kelompok`.`ID_KELOMPOK`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_log`
--

/*!50001 DROP TABLE IF EXISTS `v_log`*/;
/*!50001 DROP VIEW IF EXISTS `v_log`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_log` AS select `master_log`.`id_log` AS `id_log`,`master_log`.`ket` AS `ket`,`master_log`.`user_id` AS `user_id`,`ia_users`.`nama_lengkap` AS `nama_lengkap`,`master_log`.`tanggal` AS `tanggal` from (`ia_users` join `master_log` on(`master_log`.`user_id` = `ia_users`.`user_id`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_log_aktivity`
--

/*!50001 DROP TABLE IF EXISTS `v_log_aktivity`*/;
/*!50001 DROP VIEW IF EXISTS `v_log_aktivity`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_log_aktivity` AS select `log_activity`.`id_log_dok` AS `id_log_dok`,`log_activity`.`id_dokumen` AS `id_dokumen`,`document_upload`.`document_name` AS `document_name`,`log_activity`.`user_id` AS `user_id`,`ia_users`.`nama_lengkap` AS `nama_lengkap`,`log_activity`.`catatan` AS `catatan`,`log_activity`.`date` AS `date`,`log_activity`.`status` AS `status`,`ia_status`.`nama_status` AS `nama_status` from (((`log_activity` join `ia_users` on(`log_activity`.`user_id` = `ia_users`.`user_id`)) join `document_upload` on(`log_activity`.`id_dokumen` = `document_upload`.`id`)) join `ia_status` on(`log_activity`.`status` = `ia_status`.`status_id`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-06  9:22:12
