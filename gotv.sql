# Host: localhost  (Version: 5.5.5-10.4.17-MariaDB)
# Date: 2021-08-31 21:07:12
# Generator: MySQL-Front 5.3  (Build 4.81)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "tb_admin"
#

DROP TABLE IF EXISTS `tb_admin`;
CREATE TABLE `tb_admin` (
  `username` varchar(55) NOT NULL DEFAULT '',
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

#
# Data for table "tb_admin"
#

/*!40000 ALTER TABLE `tb_admin` DISABLE KEYS */;
INSERT INTO `tb_admin` VALUES ('admin','123456','ADMIN'),('thoriq','123456','SUPERADMIN');
/*!40000 ALTER TABLE `tb_admin` ENABLE KEYS */;

#
# Structure for table "tb_alternatif"
#

DROP TABLE IF EXISTS `tb_alternatif`;
CREATE TABLE `tb_alternatif` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

#
# Data for table "tb_alternatif"
#

/*!40000 ALTER TABLE `tb_alternatif` DISABLE KEYS */;
INSERT INTO `tb_alternatif` VALUES (1,'Masjid Raya','Batu 3'),(2,'Masjid Agung','Natuna'),(3,'Coastal Area','Karimun'),(4,'Gedung Gonggong','Tepi Laut');
/*!40000 ALTER TABLE `tb_alternatif` ENABLE KEYS */;

#
# Structure for table "tb_kriteria"
#

DROP TABLE IF EXISTS `tb_kriteria`;
CREATE TABLE `tb_kriteria` (
  `id_kriteria` varchar(11) NOT NULL DEFAULT '',
  `nama_kriteria` varchar(255) DEFAULT NULL,
  `nilai_kriteria` double(4,3) DEFAULT NULL,
  PRIMARY KEY (`id_kriteria`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "tb_kriteria"
#

INSERT INTO `tb_kriteria` VALUES ('C1','Akomodasi',0.521),('C2','Transportasi',0.257),('C3','Keamanan',0.146),('C4','Sumber Listrik',0.063);

#
# Structure for table "tb_perankingan"
#

DROP TABLE IF EXISTS `tb_perankingan`;
CREATE TABLE `tb_perankingan` (
  `Id` varchar(11) NOT NULL DEFAULT '',
  `alternatif` varchar(255) DEFAULT NULL,
  `c1` double(6,4) DEFAULT NULL,
  `c2` double(6,4) DEFAULT NULL,
  `c3` double(6,4) DEFAULT NULL,
  `c4` double(6,4) DEFAULT NULL,
  `s` double(6,4) DEFAULT NULL,
  `k` double(6,4) DEFAULT NULL,
  `ket` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

#
# Data for table "tb_perankingan"
#

/*!40000 ALTER TABLE `tb_perankingan` DISABLE KEYS */;
INSERT INTO `tb_perankingan` VALUES ('R001','Masjid Raya',2.0000,3.0000,3.0000,4.0000,0.6675,1.0000,'Ranking 1'),('R002','Masjid Agung',2.0000,3.0000,3.0000,3.0000,0.6623,0.9922,'Ranking 2'),('R003','Coastal Area',3.0000,3.0000,5.0000,5.0000,0.5258,0.7877,'Ranking 3');
/*!40000 ALTER TABLE `tb_perankingan` ENABLE KEYS */;

#
# Structure for table "tb_riwayat"
#

DROP TABLE IF EXISTS `tb_riwayat`;
CREATE TABLE `tb_riwayat` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `idriwayat` varchar(255) DEFAULT NULL,
  `tanggal` varchar(255) DEFAULT NULL,
  `alternatif` varchar(255) DEFAULT NULL,
  `c1` varchar(255) DEFAULT NULL,
  `c2` varchar(255) DEFAULT NULL,
  `c3` varchar(255) DEFAULT NULL,
  `c4` varchar(255) DEFAULT NULL,
  `s` varchar(255) DEFAULT NULL,
  `k` varchar(255) DEFAULT NULL,
  `ket` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4;

#
# Data for table "tb_riwayat"
#

INSERT INTO `tb_riwayat` VALUES (85,'R-0001','2021-08-26','Hoho','1.0000','2.0000','3.0000','5.0000','0.6497','1.0000','Ranking 1'),(86,'R-0001','2021-08-26','Congor','3.0000','5.0000','3.0000','2.0000','0.3623','0.5576','Ranking 2'),(87,'R-0001','2021-08-26','Dodi','3.0000','3.0000','3.0000','4.0000','0.3223','0.4961','Ranking 3'),(88,'R-0002','2021-08-27','Hoho','1.0000','2.0000','3.0000','5.0000','0.6497','1.0000','Ranking 1'),(89,'R-0002','2021-08-27','Congor','3.0000','5.0000','3.0000','2.0000','0.3623','0.5576','Ranking 2'),(90,'R-0002','2021-08-27','Dodi','3.0000','3.0000','3.0000','4.0000','0.3223','0.4961','Ranking 3'),(91,'R-0003','2021-08-31','Hoho','1.0000','2.0000','3.0000','5.0000','0.6497','1.0000','Ranking 1'),(92,'R-0003','2021-08-31','Congor','3.0000','5.0000','3.0000','2.0000','0.3623','0.5576','Ranking 2'),(93,'R-0003','2021-08-31','Dodi','3.0000','3.0000','3.0000','4.0000','0.3223','0.4961','Ranking 3'),(94,'R-0004','2021-08-31','Masjid Raya','2.0000','3.0000','3.0000','4.0000','0.6675','1.0000','Ranking 1'),(95,'R-0004','2021-08-31','Masjid Agung','2.0000','3.0000','3.0000','3.0000','0.6623','0.9922','Ranking 2'),(96,'R-0004','2021-08-31','Coastal Area','3.0000','3.0000','5.0000','5.0000','0.5258','0.7877','Ranking 3');
