CREATE DATABASE  IF NOT EXISTS `motor_vehicle_collisions` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `motor_vehicle_collisions`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: motor_vehicle_collisions
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `contributing_factors`
--

DROP TABLE IF EXISTS `contributing_factors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contributing_factors` (
  `Contributing_Factor_1` varchar(50) DEFAULT NULL,
  `Contributing_Factor_2` varchar(50) DEFAULT NULL,
  `Collision_ID` int NOT NULL,
  PRIMARY KEY (`Collision_ID`),
  KEY `fk_Contributing_Factors_Table_Crash_Table1_idx` (`Collision_ID`),
  CONSTRAINT `fk_Contributing_Factors_Table_Crash_Table1` FOREIGN KEY (`Collision_ID`) REFERENCES `crash` (`Collision_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contributing_factors`
--

LOCK TABLES `contributing_factors` WRITE;
/*!40000 ALTER TABLE `contributing_factors` DISABLE KEYS */;
INSERT INTO `contributing_factors` VALUES ('Unspecified','Unspecified',3405433),('1','Unspecified',3419058),('Traffic Control Disregarded','Unspecified',3420561),('Unspecified','Unspecified',3421117),('Unspecified','Unspecified',3428186),('Driver Inattention/Distraction','Unspecified',3429282),('Unsafe Speed','Unspecified',3432433),('Following Too Closely','Unspecified',3434102),('Driver Inattention/Distraction','Unsafe Lane Changing',3434155),('Driver Inattention/Distraction','Failure to Yield Right-of-Way',3441265),('Unspecified','Unspecified',3441715),('Unspecified','Unspecified',3447090),('Unspecified','Unspecified',3449019),('Unspecified','Unspecified',3458774),('Following Too Closely','Unspecified',3472523),('Unspecified','Unspecified',3474943),('Unspecified','Unspecified',3478630),('Unspecified','Unspecified',3487936),('Unspecified','Unspecified',3499697),('Failure to Yield Right-of-Way','Unspecified',3501428),('Passing Too Closely','Unspecified',3501996),('Driver Inattention/Distraction','Unspecified',3503027),('Failure to Yield Right-of-Way','Unspecified',3504877),('Unspecified','Unspecified',3505081),('Unspecified','Unspecified',3508374),('Unspecified','Unspecified',3516125),('Unspecified','Unspecified',3523582),('Driver Inattention/Distraction','Passing or Lane Usage Improper',3535443),('Unspecified','Unspecified',4209691),('Driver Inattention/Distraction','Unspecified',4213082);
/*!40000 ALTER TABLE `contributing_factors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crash`
--

DROP TABLE IF EXISTS `crash`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `crash` (
  `Collision_ID` int NOT NULL,
  `Crash_Date` date DEFAULT NULL,
  `Crash_Time` varchar(45) DEFAULT NULL,
  `Vehicle_ID` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Collision_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crash`
--

LOCK TABLES `crash` WRITE;
/*!40000 ALTER TABLE `crash` DISABLE KEYS */;
INSERT INTO `crash` VALUES (3405433,'2016-04-07','19:00','116992'),(3419058,'2016-04-16','3:20','146852'),(3420561,'2016-04-06','17:00','99447'),(3421117,'2016-03-31','14:00','96964'),(3428186,'2016-03-14','17:32','6757'),(3429282,'2016-03-22','23:15','29051'),(3432433,'2016-04-29','18:55','206015'),(3434102,'2016-05-02','8:15','215149'),(3434155,'2016-05-02','17:35','219456'),(3441265,'2016-05-12','7:35','260788'),(3441715,'2016-05-15','13:10','274738'),(3447090,'2016-05-29','23:40','335921'),(3449019,'2016-05-16','18:42','291804'),(3458774,'2016-06-05','1:00','377871'),(3472523,'2016-06-30','17:45','468721'),(3474943,'2016-07-05','17:45','485380'),(3478630,'2016-07-12','12:25','508031'),(3487936,'2016-07-22','15:40','554272'),(3499697,'2016-08-13','21:05','650962'),(3501428,'2016-08-12','23:25','667760'),(3501996,'2016-08-15','9:10','665962'),(3503027,'2016-08-18','12:39','672828'),(3504877,'2016-08-21','19:20','684361'),(3505081,'2016-08-22','10:15','686945'),(3508374,'2016-08-26','9:06','718835'),(3516125,'2016-09-08','14:40','764668'),(3523582,'2016-09-20','9:35','890857'),(3535443,'2016-10-05','10:27','898457'),(4209691,'2019-09-20','15:00','9dcc52f9-96a7-43f0-9ded-eb34acd23b0c'),(4213082,'2019-09-23','8:15','0553ab4d-9500-4cba-8d98-f4d7f89d5856');
/*!40000 ALTER TABLE `crash` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `driver_information`
--

DROP TABLE IF EXISTS `driver_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `driver_information` (
  `Driver_Information_ID` int NOT NULL,
  `Driver_License_Status` varchar(40) DEFAULT NULL,
  `Driver_License_Jurisdiction` varchar(10) DEFAULT NULL,
  `Collision_ID` int NOT NULL,
  PRIMARY KEY (`Driver_Information_ID`,`Collision_ID`),
  KEY `fk_Driver_Information_Crash_Table1_idx` (`Collision_ID`),
  CONSTRAINT `fk_Driver_Information_Crash_Table1` FOREIGN KEY (`Collision_ID`) REFERENCES `crash` (`Collision_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `driver_information`
--

LOCK TABLES `driver_information` WRITE;
/*!40000 ALTER TABLE `driver_information` DISABLE KEYS */;
INSERT INTO `driver_information` VALUES (1,'Licensed','NY',4213082),(2,'Licensed','FL',3434155),(3,'Licensed','NY',3503027),(4,'Licensed','NY',3487936),(5,'Licensed','NY',3499697),(6,'Licensed','NY',3516125),(7,'Licensed','NY',3505081),(8,'Licensed','NY',4209691),(9,'Licensed','NY',3447090),(10,'','',3419058),(11,'Licensed','TN',3441715),(12,'Licensed','NY',3474943),(13,'Licensed','NY',3458774),(14,'Licensed','NY',3508374),(15,'Licensed','NY',3478630),(16,'Licensed','NY',3434102),(17,'Licensed','NY',3420561),(18,'Licensed','NY',3501428),(19,'Licensed','NY',3429282),(20,'Licensed','NY',3428186),(21,'Licensed','NY',3523582),(22,'Licensed','NY',3432433),(23,'Licensed','NY',3441265),(24,'Licensed','NY',3449019),(25,'Licensed','NJ',3405433),(26,'Licensed','NY',3504877),(27,'Licensed','NY',3535443),(28,'Licensed','NY',3501996),(29,'Licensed','NY',3472523),(30,'Licensed','NY',3421117);
/*!40000 ALTER TABLE `driver_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prexisting_conditions`
--

DROP TABLE IF EXISTS `prexisting_conditions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prexisting_conditions` (
  `Collision_ID` int DEFAULT NULL,
  `Travel_Direction` varchar(25) DEFAULT NULL,
  `Vehicle_Occupants` int DEFAULT NULL,
  `Pre_Crash` varchar(25) DEFAULT NULL,
  KEY `Collision_ID_idx` (`Collision_ID`),
  CONSTRAINT `Collision_ID` FOREIGN KEY (`Collision_ID`) REFERENCES `crash` (`Collision_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prexisting_conditions`
--

LOCK TABLES `prexisting_conditions` WRITE;
/*!40000 ALTER TABLE `prexisting_conditions` DISABLE KEYS */;
INSERT INTO `prexisting_conditions` VALUES (4213082,'North',1,'Going Straight Ahead'),(3434155,'East',2,'Merging'),(3503027,'Southwest',2,'Going Straight Ahead'),(3487936,'South',1,'Stopped in Traffic'),(3499697,'West',2,'Going Straight Ahead'),(3516125,'West',1,'Stopped in Traffic'),(3505081,'East',0,'Going Straight Ahead'),(4209691,'East',1,'Going Straight Ahead'),(3447090,'South',4,'Entering Parked Position'),(3419058,'East',0,'Parked'),(3441715,'North',2,'Going Straight Ahead'),(3474943,'South',1,'Going Straight Ahead'),(3458774,'West',1,'Going Straight Ahead'),(3508374,'North',1,'Going Straight Ahead'),(3478630,'North',1,'Going Straight Ahead'),(3434102,'West',1,'Making Right Turn'),(3420561,'North',1,'Going Straight Ahead'),(3501428,'North',2,'Making Right Turn'),(3429282,'North',5,'Making Left Turn'),(3428186,'North',1,'Going Straight Ahead'),(3523582,'North',0,'Parked'),(3432433,'West',1,'Going Straight Ahead'),(3441265,'West',0,'Making Left Turn'),(3449019,'East',1,'Parked'),(3405433,'Northwest',0,'Making Right Turn'),(3504877,'South',1,'Making Left Turn'),(3535443,'Unknown',1,'Making Right Turn'),(3501996,'West',1,'Going Straight Ahead'),(3472523,'West',1,'Going Straight Ahead'),(3421117,'West',1,'Going Straight Ahead');
/*!40000 ALTER TABLE `prexisting_conditions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `public_property_damage`
--

DROP TABLE IF EXISTS `public_property_damage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `public_property_damage` (
  `Public_Property_Damage_ID` int NOT NULL,
  `Public_Property_Damage_Tablecol` varchar(45) DEFAULT NULL,
  `Public_Property_Damage` varchar(45) DEFAULT NULL,
  `Public_Property_Damage_Type` varchar(45) DEFAULT NULL,
  `Collision_ID` int NOT NULL,
  PRIMARY KEY (`Public_Property_Damage_ID`,`Collision_ID`),
  KEY `fk_Public_Property_Damage_Table_Crash_Table1_idx` (`Collision_ID`),
  CONSTRAINT `fk_Public_Property_Damage_Table_Crash_Table1` FOREIGN KEY (`Collision_ID`) REFERENCES `crash` (`Collision_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `public_property_damage`
--

LOCK TABLES `public_property_damage` WRITE;
/*!40000 ALTER TABLE `public_property_damage` DISABLE KEYS */;
INSERT INTO `public_property_damage` VALUES (1,NULL,'N','',4213082),(2,NULL,'N','',3434155),(3,NULL,'N','',3503027),(4,NULL,'N','',3487936),(5,NULL,'N','',3499697),(6,NULL,'N','',3516125),(7,NULL,'N','',3505081),(8,NULL,'N','',4209691),(9,NULL,'N','',3447090),(10,NULL,'N','',3419058),(11,NULL,'N','',3441715),(12,NULL,'N','',3474943),(13,NULL,'N','',3458774),(14,NULL,'N','',3508374),(15,NULL,'N','',3478630),(16,NULL,'N','',3434102),(17,NULL,'N','',3420561),(18,NULL,'N','',3501428),(19,NULL,'N','',3429282),(20,NULL,'N','',3428186),(21,NULL,'N','',3523582),(22,NULL,'N','',3432433),(23,NULL,'N','',3441265),(24,NULL,'N','',3449019),(25,NULL,'N','',3405433),(26,NULL,'Unspecified','',3504877),(27,NULL,'N','',3535443),(28,NULL,'N','',3501996),(29,NULL,'N','',3472523),(30,NULL,'N','',3421117);
/*!40000 ALTER TABLE `public_property_damage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle_damage`
--

DROP TABLE IF EXISTS `vehicle_damage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicle_damage` (
  `Vehicle_Damage_ID` int NOT NULL,
  `Vehicle_ID` varchar(50) DEFAULT NULL,
  `Point_Of_Impact` varchar(25) DEFAULT NULL,
  `Vehicle_Damage` varchar(25) DEFAULT NULL,
  `Vehicle_Damage_1` varchar(25) DEFAULT NULL,
  `Vehicle_Damage_2` varchar(25) DEFAULT NULL,
  `Vehicle_Damage_3` varchar(25) DEFAULT NULL,
  `Collision_ID` int NOT NULL,
  PRIMARY KEY (`Vehicle_Damage_ID`),
  KEY `fk_Vehicle_Damage_Table_Crash_Table1_idx` (`Collision_ID`),
  CONSTRAINT `fk_Vehicle_Damage_Table_Crash_Table1` FOREIGN KEY (`Collision_ID`) REFERENCES `crash` (`Collision_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle_damage`
--

LOCK TABLES `vehicle_damage` WRITE;
/*!40000 ALTER TABLE `vehicle_damage` DISABLE KEYS */;
INSERT INTO `vehicle_damage` VALUES (1,'0553ab4d-9500-4cba-8d98-f4d7f89d5856','Left Front Bumper','Left Front Quarter Panel','','',NULL,4213082),(2,'219456','Right Front Bumper','Right Front Bumper','Right Front Quarter Panel','',NULL,3434155),(3,'672828','Center Front End','Center Front End','No Damage','No Damage',NULL,3503027),(4,'554272','Right Rear Bumper','Right Rear Bumper','Center Back End','Left Rear Bumper',NULL,3487936),(5,'650962','Left Side Doors','Left Side Doors','Left Rear Quarter Panel','',NULL,3499697),(6,'764668','Right Rear Quarter Panel','Right Rear Quarter Panel','Right Rear Bumper','No Damage',NULL,3516125),(7,'686945','Left Front Bumper','Left Front Bumper','No Damage','No Damage',NULL,3505081),(8,'9dcc52f9-96a7-43f0-9ded-eb34acd23b0c','Left Front Quarter Panel','Left Side Doors','Left Rear Quarter Panel','No Damage',NULL,4209691),(9,'335921','Right Front Quarter Panel','Right Front Quarter Panel','','',NULL,3447090),(10,'146852','Left Rear Quarter Panel','Left Rear Quarter Panel','Left Side Doors','',NULL,3419058),(11,'274738','Right Rear Bumper','Right Rear Bumper','Center Back End','',NULL,3441715),(12,'485380','Center Front End','Right Front Bumper','','',NULL,3474943),(13,'377871','Left Front Quarter Panel','Left Front Quarter Panel','Left Front Bumper','',NULL,3458774),(14,'718835','Right Rear Quarter Panel','Right Rear Quarter Panel','Right Rear Bumper','',NULL,3508374),(15,'508031','Left Side Doors','Left Side Doors','Left Rear Quarter Panel','Left Rear Bumper',NULL,3478630),(16,'215149','Center Front End','No Damage','','',NULL,3434102),(17,'99447','Center Front End','Right Front Bumper','Left Front Bumper','',NULL,3420561),(18,'667760','Left Front Bumper','Center Front End','Left Front Bumper','Center Front End',NULL,3501428),(19,'29051','Left Front Bumper','Left Front Bumper','Left Front Bumper','Center Front End',NULL,3429282),(20,'6757','Left Rear Bumper','No Damage','','',NULL,3428186),(21,'890857','Left Rear Quarter Panel','Left Rear Quarter Panel','Left Rear Bumper','',NULL,3523582),(22,'206015','Left Front Bumper','No Damage','','',NULL,3432433),(23,'260788','Left Front Quarter Panel','No Damage','','',NULL,3441265),(24,'291804','Left Rear Quarter Panel','Left Rear Quarter Panel','','',NULL,3449019),(25,'116992','Right Front Quarter Panel','Right Front Quarter Panel','','',NULL,3405433),(26,'684361','Center Front End','Center Front End','Left Front Bumper','Right Front Bumper',NULL,3504877),(27,'898457','Center Front End','Right Front Bumper','','',NULL,3535443),(28,'665962','Right Front Bumper','Right Front Bumper','Right Front Quarter Panel','',NULL,3501996),(29,'468721','Center Front End','Center Front End','','',NULL,3472523),(30,'96964','Right Front Bumper','Right Front Bumper','No Damage','No Damage',NULL,3421117);
/*!40000 ALTER TABLE `vehicle_damage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle_table`
--

DROP TABLE IF EXISTS `vehicle_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicle_table` (
  `Vehicle_ID` varchar(50) NOT NULL,
  `State_Registration` varchar(45) DEFAULT NULL,
  `Vehicle_Type` varchar(45) DEFAULT NULL,
  `Vehicle_Make` varchar(25) DEFAULT NULL,
  `Vehicle_Model` varchar(25) DEFAULT NULL,
  `Vehicle_Year` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`Vehicle_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle_table`
--

LOCK TABLES `vehicle_table` WRITE;
/*!40000 ALTER TABLE `vehicle_table` DISABLE KEYS */;
INSERT INTO `vehicle_table` VALUES ('0553ab4d-9500-4cba-8d98-f4d7f89d5856','NY','Station Wagon/Sport Utility Vehicle','TOYT ',NULL,'2002'),('116992','NY','Bus','MCIN',NULL,'2007'),('146852','NY','4 dr sedan','CHEV ',NULL,'2009'),('206015','NY','4 dr sedan','FORD',NULL,'2011'),('215149','NY','Station Wagon/Sport Utility Vehicle','TOYT ',NULL,'2000'),('219456','NY','4 dr/sedan','MERZ',NULL,'2015'),('260788','NY','Station Wagon/Sport Utility Vehicle','TOYT ',NULL,'2013'),('274738','NY','Station Wagon/Sport Utility Vehicle','NISS ',NULL,'2015'),('29051','NY','Pick-up Truck','DODG ',NULL,'2015'),('291804','NY','4 dr sedan','NISS ',NULL,'2011'),('335921','NY','Station Wagon/Sport Utility Vehicle','FORD ',NULL,'2007'),('377871','NY','4 dr sedan','TOYT ',NULL,'2014'),('468721','NY','Station Wagon/Sport Utility Vehicle','JEEP ',NULL,'1998'),('485380','NY','4 dr sedan','LEXS ',NULL,'2011'),('508031','NY','Station Wagon/Sport Utility Vehicle','JEEP',NULL,'2002'),('554272','NY','Convertible','VOLK ',NULL,'2013'),('650962','NY','Sedan','NISS ',NULL,'2015'),('665962','NY','Sedan','TOYT ',NULL,'2010'),('667760','NY','Sedan','MAZD ',NULL,'2015'),('672828','NY','Station Wagon/Sport Utility Vehicle','FORD ',NULL,'2005'),('6757','NY','4 dr sedan','FORD',NULL,'2014'),('684361','NY','Station Wagon/Sport Utility Vehicle','INFI ',NULL,'2005'),('686945','NY','Pallet','INTL',NULL,'2012'),('718835','NY','Station Wagon/Sport Utility Vehicle','CHEV ',NULL,'2008'),('764668','NY','Station Wagon/Sport Utility Vehicle','LINC ',NULL,'2015'),('890857','NY','Station Wagon/Sport Utility Vehicle','DODG',NULL,'2013'),('898457','NY','Bus','VANHO',NULL,'2000'),('96964','NJ','FRHT-TRUCK','',NULL,'2007'),('99447','NY','4 dr sedan','BUIC ',NULL,'2010'),('9dcc52f9-96a7-43f0-9ded-eb34acd23b0c','NY','Motorcycle','DUCA ',NULL,'2010');
/*!40000 ALTER TABLE `vehicle_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle_table_has_crash`
--

DROP TABLE IF EXISTS `vehicle_table_has_crash`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicle_table_has_crash` (
  `Vehicle_ID` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Collision_ID` int NOT NULL,
  PRIMARY KEY (`Vehicle_ID`,`Collision_ID`),
  KEY `fk_Vehicle_Table_has_Crash_Table_Crash_Table1_idx` (`Collision_ID`),
  KEY `fk_Vehicle_Table_has_Crash_Table_Vehicle_Table_idx` (`Vehicle_ID`),
  CONSTRAINT `fk_Vehicle_Table_has_Crash_Table_Crash_Table1` FOREIGN KEY (`Collision_ID`) REFERENCES `crash` (`Collision_ID`),
  CONSTRAINT `fk_Vehicle_Table_has_Crash_Table_Vehicle_Table` FOREIGN KEY (`Vehicle_ID`) REFERENCES `vehicle_table` (`Vehicle_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle_table_has_crash`
--

LOCK TABLES `vehicle_table_has_crash` WRITE;
/*!40000 ALTER TABLE `vehicle_table_has_crash` DISABLE KEYS */;
INSERT INTO `vehicle_table_has_crash` VALUES ('116992',3405433),('146852',3419058),('99447',3420561),('96964',3421117),('6757',3428186),('29051',3429282),('206015',3432433),('215149',3434102),('219456',3434155),('260788',3441265),('274738',3441715),('335921',3447090),('291804',3449019),('377871',3458774),('468721',3472523),('485380',3474943),('508031',3478630),('554272',3487936),('650962',3499697),('667760',3501428),('665962',3501996),('672828',3503027),('684361',3504877),('686945',3505081),('718835',3508374),('764668',3516125),('890857',3523582),('898457',3535443),('9dcc52f9-96a7-43f0-9ded-eb34acd23b0c',4209691),('0553ab4d-9500-4cba-8d98-f4d7f89d5856',4213082);
/*!40000 ALTER TABLE `vehicle_table_has_crash` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-14 15:59:00
