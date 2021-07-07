CREATE DATABASE  IF NOT EXISTS `db-belajcwm0506` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `db-belajcwm0506`;
-- MySQL dump 10.13  Distrib 8.0.24, for Win64 (x86_64)
--
-- Host: localhost    Database: db-belajcwm0506
-- ------------------------------------------------------
-- Server version	8.0.23

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tb_clients`
--

DROP TABLE IF EXISTS `tb_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_clients` (
  `idclient` mediumint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `address` varchar(50) NOT NULL,
  `no_hp` varchar(100) NOT NULL,
  `zip_code` varchar(10) NOT NULL,
  `credit` mediumint NOT NULL,
  `id_sales` mediumint NOT NULL,
  PRIMARY KEY (`idclient`),
  KEY `id_sales_idx` (`id_sales`),
  CONSTRAINT `id_sales` FOREIGN KEY (`id_sales`) REFERENCES `tb_sales` (`id_sales`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_clients`
--

LOCK TABLES `tb_clients` WRITE;
/*!40000 ALTER TABLE `tb_clients` DISABLE KEYS */;
INSERT INTO `tb_clients` VALUES (1,'Brent','JT','+62-479-73433','83054',33363,8),(2,'Chester','JB','+62-387-07485','45577',552404,21),(3,'Troy','Lampung','+62-861-68967','71167',579266,36),(4,'Derek','SU','+62-168-34925','46675',726130,27),(5,'Susan','North Sumatra','+62-595-98532','96684',317660,23),(6,'Jaime','ST','+62-930-63554','43432',721975,29),(7,'Burke','SU','+62-747-66522','48890',532279,14),(8,'Guinevere','Central Java','+62-784-89006','69164',652972,27),(9,'Althea','Aceh','+62-890-11443','54586',725848,36),(10,'Iliana','JI','+62-681-03661','86501',878600,23),(11,'Francis','East Java','+62-666-04081','99178',418544,31),(12,'Desirae','JB','+62-661-48976','26270',100903,37),(13,'Oren','Special Capital Region of Jakarta','+62-094-67001','16364',628073,34),(14,'Quintessa','YO','+62-072-83652','17825',304328,29),(15,'Yardley','East Nusa Tenggara','+62-806-46539','29523',62273,37),(16,'Odette','KR','+62-511-32013','83917',343252,28),(17,'Wesley','North Sumatra','+62-821-69926','65002',175885,30),(18,'Madaline','East Java','+62-622-03768','26186',967473,19),(19,'Rina','JB','+62-644-53793','28119',507350,31),(20,'Ross','JB','+62-477-71088','18662',496805,17),(21,'Macaulay','West Sumatra','+62-122-76945','65181',121399,17),(22,'Keegan','JI','+62-304-88245','99757',704274,21),(23,'Mary','South Kalimantan','+62-758-51772','90520',621778,33),(24,'Sebastian','SS','+62-904-21242','77850',597692,26),(25,'Miranda','JT','+62-005-21079','48860',885281,11),(26,'Fiona','JB','+62-183-00444','46419',627085,31),(27,'Aidan','SN','+62-803-70333','65365',816682,17),(28,'Abraham','JI','+62-262-07714','36236',458787,8),(29,'Maya','JI','+62-521-94728','39020',957508,19),(30,'Armand','SU','+62-869-99380','13731',206190,19),(31,'Maris','LA','+62-578-67802','24622',874579,30),(32,'Jared','Special Capital Region of Jakarta','+62-304-35533','24415',786513,25),(33,'Neve','SN','+62-840-42272','74387',335302,40),(34,'Conan','ST','+62-075-16228','10930',881505,13),(35,'Dieter','JI','+62-362-34820','73754',121361,19),(36,'Natalie','East Java','+62-926-53577','56584',806367,30),(37,'Elizabeth','Central Java','+62-131-05961','29070',43498,32),(38,'Yoko','NT','+62-833-91550','71612',667797,35),(39,'Solomon','Jambi','+62-385-22247','23492',792743,38),(40,'Sean','SB','+62-518-41012','34557',54021,13),(41,'Guy','Central Java','+62-807-71772','63989',703166,20),(42,'Axel','JT','+62-519-21621','77857',469085,32),(43,'Keaton','Maluku','+62-031-83830','54521',325524,13),(44,'Brock','RI','+62-395-69124','46063',64008,37),(45,'Hamish','JT','+62-324-04697','18351',304815,17),(46,'Maggie','PA','+62-949-17133','55024',993514,33),(47,'Grant','West Java','+62-526-66478','29103',751095,25),(48,'Emerson','West Java','+62-092-53494','64710',165799,35),(49,'Amy','North Sulawesi','+62-123-32011','52335',326970,28),(50,'Myra','JB','+62-620-55092','51342',501389,34),(51,'Uta','Banten','+62-112-58434','23263',262600,36),(52,'Rogan','YO','+62-858-19798','55990',509115,26),(53,'Bertha','JB','+62-319-25196','88435',246668,20),(54,'Thor','East Java','+62-521-64867','57607',281195,29),(55,'Griffin','North Sumatra','+62-613-59946','58703',934113,20),(56,'Jared','Banten','+62-200-02089','87951',35120,30),(57,'Tara','SU','+62-410-91421','74187',666363,16),(58,'Quintessa','JT','+62-986-59998','86120',734946,12),(59,'Quamar','SU','+62-290-05674','90965',458080,10),(60,'Tatum','KU','+62-494-95407','88298',617729,14),(61,'Kai','JB','+62-211-65025','75680',351019,38),(62,'Logan','JT','+62-068-19032','62200',892641,13),(63,'Sylvester','KB','+62-127-39851','17974',978906,36),(64,'Nehru','JB','+62-843-60874','14779',874795,20),(65,'Naomi','West Nusa Tenggara','+62-916-21457','72799',645621,19),(66,'Nichole','AC','+62-953-85640','79076',999704,27),(67,'Wynne','South Sumatra','+62-577-69067','17533',789605,29),(68,'Phoebe','JT','+62-519-91708','19160',592938,17),(69,'McKenzie','East Java','+62-562-25943','50904',989310,20),(70,'Kiara','West Java','+62-293-96585','64326',213921,18),(71,'Lunea','North Sumatra','+62-127-45796','58011',346246,15),(72,'Dawn','East Java','+62-921-22062','20332',130601,8),(73,'Dawn','JB','+62-958-74437','81986',909005,21),(74,'Lee','LA','+62-771-59362','56761',753397,6),(75,'Cynthia','JB','+62-875-77684','72645',594500,8),(76,'Joan','East Java','+62-866-10694','77746',262107,12),(77,'Timothy','JB','+62-977-40492','67666',319103,39),(78,'Lacy','JI','+62-704-48014','75519',471118,7),(79,'Kiayada','Central Java','+62-923-76178','95213',937093,8),(80,'Otto','West Nusa Tenggara','+62-213-74930','56927',71623,39),(81,'Althea','West Sumatra','+62-078-56218','53456',155183,27),(82,'Merrill','Aceh','+62-368-72296','77432',765392,11),(83,'Martin','Riau','+62-362-45572','19510',150406,34),(84,'Maia','JB','+62-527-26530','21968',811225,27),(85,'Marny','JB','+62-769-12792','71784',330775,37),(86,'Fritz','West Java','+62-139-08557','32469',312193,33),(87,'Hyatt','JB','+62-835-26196','14411',120912,31),(88,'Dominic','West Java','+62-739-06055','49277',697063,33),(89,'Destiny','West Kalimantan','+62-294-51113','51607',360523,10),(90,'Conan','JT','+62-384-37958','95930',863570,29),(91,'Stuart','JT','+62-304-63629','75500',146982,32),(92,'Shaeleigh','PA','+62-799-09783','64572',9416,13),(93,'Hall','North Sumatra','+62-555-07464','88707',581737,32),(94,'Urielle','JI','+62-058-30077','71892',385007,33),(95,'Talon','ST','+62-663-67155','41760',734332,15),(96,'Aaron','NT','+62-952-64594','87137',994470,18),(97,'Melinda','JT','+62-594-86606','22668',912895,6),(98,'Kyla','East Java','+62-840-33925','79540',154484,8),(99,'Baxter','JB','+62-348-15002','18871',506113,26),(100,'Octavius','AC','+62-805-21552','41276',820300,19),(101,'Test','JKT','+62232222','34443',233333,10),(105,'Test2','BDG','+62232222','34443',233333,12);
/*!40000 ALTER TABLE `tb_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_jabatan`
--

DROP TABLE IF EXISTS `tb_jabatan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_jabatan` (
  `id_jabatan` int NOT NULL,
  `jabatan` varchar(45) NOT NULL,
  PRIMARY KEY (`id_jabatan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_jabatan`
--

LOCK TABLES `tb_jabatan` WRITE;
/*!40000 ALTER TABLE `tb_jabatan` DISABLE KEYS */;
INSERT INTO `tb_jabatan` VALUES (1,'Presiden Direktur'),(2,'Direktur Penjualan'),(3,'Manager BSD'),(4,'Manager JKT'),(5,'Manager BDG'),(6,'Sales Leader BSD'),(7,'Sales Leader JKT'),(8,'Sales Leader BDG'),(9,'Sales RP');
/*!40000 ALTER TABLE `tb_jabatan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_sales`
--

DROP TABLE IF EXISTS `tb_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_sales` (
  `id_sales` mediumint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `no_hp` varchar(100) NOT NULL,
  `address` varchar(50) NOT NULL,
  `zip_code` varchar(10) NOT NULL,
  `id_jabatan` int NOT NULL,
  PRIMARY KEY (`id_sales`),
  KEY `id_jabatan_idx` (`id_jabatan`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_sales`
--

LOCK TABLES `tb_sales` WRITE;
/*!40000 ALTER TABLE `tb_sales` DISABLE KEYS */;
INSERT INTO `tb_sales` VALUES (1,'Haviva','+62-112-50133','JB','16957',9),(2,'Jessamine','+62-710-98814','JI','54004',10),(3,'Farrah','+62-982-39735','North Kalimantan','46088',11),(4,'Buckminster','+62-809-35291','JB','90691',9),(5,'Shellie','+62-715-05536','North Sumatra','71652',9),(6,'Christen','+62-178-06489','JB','39629',11),(7,'Jin','+62-758-88461','West Sumatra','92952',11),(8,'Plato','+62-343-95930','West Java','45671',11),(9,'Jemima','+62-042-90467','West Sumatra','23830',11),(10,'Lillian','+62-951-47176','East Java','96104',9),(11,'Nero','+62-917-85193','AC','39474',11),(12,'Raja','+62-667-81869','West Kalimantan','29064',11),(13,'Hadassah','+62-733-48962','JB','62273',10),(14,'Jerome','+62-257-11760','North Maluku','69485',11),(15,'Juliet','+62-658-79419','Aceh','11953',10),(16,'Anastasia','+62-770-34648','BA','78407',10),(17,'Shea','+62-071-95861','BT','14326',11),(18,'Maxine','+62-524-81256','North Sumatra','76854',11),(19,'Denton','+62-750-18979','LA','43171',11),(20,'Colton','+62-179-82654','West Kalimantan','25778',10),(21,'Edward','+62-788-01064','South Sumatra','49985',11),(22,'Shoshana','+62-932-79924','Lampung','38789',10),(23,'Wylie','+62-205-16494','JT','94046',10),(24,'Carol','+62-660-47103','North Kalimantan','83274',10),(25,'Justina','+62-954-28245','East Nusa Tenggara','26099',9),(26,'Naomi','+62-710-24035','West Java','72124',10),(27,'Shoshana','+62-465-21609','South Sulawesi','40720',10),(28,'Maite','+62-563-26068','Central Kalimantan','54413',10),(29,'Velma','+62-457-71418','East Java','55226',11),(30,'Valentine','+62-778-96584','BT','29077',9),(31,'Odette','+62-433-72410','JT','58476',9),(32,'Damon','+62-819-24423','Central Java','56848',9),(33,'Roth','+62-125-10884','JA','83413',9),(34,'Martena','+62-603-58879','West Java','66975',10),(35,'Briar','+62-351-81523','JB','17772',10),(36,'Armando','+62-835-26454','JT','94125',11),(37,'Jana','+62-487-49842','RI','61922',11),(38,'Gage','+62-966-26487','NB','16643',11),(39,'Samson','+62-938-56982','SU','31734',9),(40,'Diana','+62-970-82295','East Java','56989',9);
/*!40000 ALTER TABLE `tb_sales` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-07 12:57:53
