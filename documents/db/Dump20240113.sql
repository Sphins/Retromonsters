-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: retro_monsters
-- ------------------------------------------------------
-- Server version	5.7.24

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
-- Table structure for table `favorites`
--

DROP TABLE IF EXISTS `favorites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `favorites` (
  `user_id` int(11) NOT NULL,
  `monster_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`,`monster_id`),
  KEY `monster_id` (`monster_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favorites`
--

LOCK TABLES `favorites` WRITE;
/*!40000 ALTER TABLE `favorites` DISABLE KEYS */;
INSERT INTO `favorites` VALUES (1,1,'2024-01-06 21:52:25'),(1,5,'2024-01-06 21:52:25'),(1,9,'2024-01-06 21:52:25'),(1,35,'2024-01-10 22:00:45'),(2,2,'2024-01-06 21:52:25'),(2,6,'2024-01-06 21:52:25'),(2,10,'2024-01-06 21:52:25'),(2,32,'2024-01-10 22:00:45'),(3,3,'2024-01-06 21:52:25'),(3,7,'2024-01-06 21:52:25'),(3,11,'2024-01-06 21:52:25'),(3,34,'2024-01-10 22:00:45'),(3,35,'2024-01-10 22:00:45'),(4,4,'2024-01-06 21:52:25'),(4,8,'2024-01-06 21:52:25'),(4,12,'2024-01-06 21:52:25'),(5,5,'2024-01-06 21:52:25'),(5,9,'2024-01-06 21:52:25'),(5,13,'2024-01-06 21:52:25'),(5,32,'2024-01-10 22:00:45'),(5,33,'2024-01-10 22:00:45'),(6,14,'2024-01-06 21:53:14'),(6,18,'2024-01-06 21:53:14'),(6,22,'2024-01-06 21:53:14'),(7,15,'2024-01-06 21:53:14'),(7,19,'2024-01-06 21:53:14'),(7,23,'2024-01-06 21:53:14'),(7,33,'2024-01-10 22:00:45'),(8,16,'2024-01-06 21:53:14'),(8,20,'2024-01-06 21:53:14'),(8,24,'2024-01-06 21:53:14'),(9,17,'2024-01-06 21:53:14'),(9,21,'2024-01-06 21:53:14'),(9,25,'2024-01-06 21:53:14'),(9,34,'2024-01-10 22:00:45'),(10,26,'2024-01-06 21:53:14'),(10,27,'2024-01-06 21:53:14'),(10,28,'2024-01-06 21:53:14');
/*!40000 ALTER TABLE `favorites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `follows`
--

DROP TABLE IF EXISTS `follows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `follows` (
  `follower_id` int(11) NOT NULL,
  `following_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`follower_id`,`following_id`),
  KEY `following_id` (`following_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `follows`
--

LOCK TABLES `follows` WRITE;
/*!40000 ALTER TABLE `follows` DISABLE KEYS */;
INSERT INTO `follows` VALUES (1,2,'2024-01-06 21:54:22'),(1,3,'2024-01-06 21:54:22'),(1,4,'2024-01-06 21:54:22'),(2,1,'2024-01-06 21:54:22'),(2,3,'2024-01-06 21:54:22'),(2,5,'2024-01-06 21:54:22'),(3,1,'2024-01-06 21:54:22'),(3,2,'2024-01-06 21:54:22'),(3,4,'2024-01-06 21:54:22'),(4,2,'2024-01-06 21:54:22'),(4,3,'2024-01-06 21:54:22'),(4,5,'2024-01-06 21:54:22'),(5,1,'2024-01-06 21:54:22'),(5,3,'2024-01-06 21:54:22'),(5,4,'2024-01-06 21:54:22'),(6,7,'2024-01-06 21:55:22'),(6,8,'2024-01-06 21:55:22'),(6,9,'2024-01-06 21:55:22'),(7,6,'2024-01-06 21:55:22'),(7,8,'2024-01-06 21:55:22'),(7,10,'2024-01-06 21:55:22'),(8,6,'2024-01-06 21:55:22'),(8,7,'2024-01-06 21:55:22'),(8,9,'2024-01-06 21:55:22'),(9,6,'2024-01-06 21:55:22'),(9,8,'2024-01-06 21:55:22'),(9,10,'2024-01-06 21:55:22'),(10,7,'2024-01-06 21:55:22'),(10,8,'2024-01-06 21:55:22'),(10,9,'2024-01-06 21:55:22');
/*!40000 ALTER TABLE `follows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `monster_average_ratings`
--

DROP TABLE IF EXISTS `monster_average_ratings`;
/*!50001 DROP VIEW IF EXISTS `monster_average_ratings`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `monster_average_ratings` AS SELECT 
 1 AS `monster_id`,
 1 AS `average_rating`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `monster_feedback`
--

DROP TABLE IF EXISTS `monster_feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `monster_feedback` (
  `user_id` int(11) NOT NULL,
  `monster_id` int(11) NOT NULL,
  `rating` float(2,1) DEFAULT NULL,
  `comment` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`,`monster_id`),
  KEY `monster_id` (`monster_id`),
  CONSTRAINT `monster_feedback_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `monster_feedback_ibfk_2` FOREIGN KEY (`monster_id`) REFERENCES `monsters` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monster_feedback`
--

LOCK TABLES `monster_feedback` WRITE;
/*!40000 ALTER TABLE `monster_feedback` DISABLE KEYS */;
INSERT INTO `monster_feedback` VALUES (1,10,1.3,'Commentaire 14','2024-01-13 12:49:08','2024-01-13 12:49:08'),(1,18,2.6,'Commentaire 11','2024-01-13 12:48:03','2024-01-13 12:48:03'),(1,19,3.2,'Commentaire 7','2024-01-13 12:48:03','2024-01-13 12:48:03'),(1,28,3.8,'Commentaire 9','2024-01-13 11:56:12','2024-01-13 11:56:12'),(1,29,4.2,'Commentaire 8','2024-01-13 12:48:03','2024-01-13 12:48:03'),(2,2,3.4,'Commentaire 1','2024-01-13 12:49:08','2024-01-13 12:49:08'),(2,3,4.1,'Commentaire 23','2024-01-13 12:49:08','2024-01-13 12:49:08'),(2,6,3.0,'Commentaire 18','2024-01-13 12:49:08','2024-01-13 12:49:08'),(2,8,3.5,'Commentaire 33','2024-01-13 12:49:08','2024-01-13 12:49:08'),(2,13,2.2,'Commentaire 11','2024-01-13 11:56:12','2024-01-13 11:56:12'),(2,18,1.4,'Commentaire 6','2024-01-13 12:49:08','2024-01-13 12:49:08'),(2,20,2.5,'Commentaire 11','2024-01-13 12:49:08','2024-01-13 12:49:08'),(2,21,3.3,'Commentaire 10','2024-01-13 12:48:03','2024-01-13 12:48:03'),(2,24,4.3,'Commentaire 10','2024-01-13 11:56:12','2024-01-13 11:56:12'),(3,2,2.3,'Commentaire 8','2024-01-13 12:49:08','2024-01-13 12:49:08'),(3,35,2.1,'Commentaire 12','2024-01-13 12:49:08','2024-01-13 12:49:08'),(4,6,4.6,'Commentaire 6','2024-01-13 12:48:03','2024-01-13 12:48:03'),(4,7,4.1,'Commentaire 3','2024-01-13 12:48:03','2024-01-13 12:48:03'),(4,22,1.2,'Commentaire 6','2024-01-13 11:56:12','2024-01-13 11:56:12'),(4,30,2.2,'Commentaire 3','2024-01-13 12:49:08','2024-01-13 12:49:08'),(5,2,4.3,'Commentaire 4','2024-01-13 11:56:12','2024-01-13 11:56:12'),(5,7,3.9,'Commentaire 13','2024-01-13 12:49:08','2024-01-13 12:49:08'),(5,9,4.9,'Commentaire 12','2024-01-13 11:56:12','2024-01-13 11:56:12'),(5,10,4.4,'Commentaire 7','2024-01-13 11:56:12','2024-01-13 11:56:12'),(5,15,3.4,'Commentaire 16','2024-01-13 12:49:08','2024-01-13 12:49:08'),(5,17,1.7,'Commentaire 25','2024-01-13 12:49:08','2024-01-13 12:49:08'),(5,20,3.2,'Commentaire 8','2024-01-13 11:56:12','2024-01-13 11:56:12'),(5,21,3.7,'Commentaire 26','2024-01-13 12:49:08','2024-01-13 12:49:08'),(5,26,2.4,'Commentaire 4','2024-01-13 12:48:03','2024-01-13 12:48:03'),(5,32,1.8,'Commentaire 2','2024-01-13 12:48:03','2024-01-13 12:48:03'),(6,2,3.1,'Commentaire 28','2024-01-13 12:49:08','2024-01-13 12:49:08'),(6,12,1.1,'Commentaire 9','2024-01-13 12:48:03','2024-01-13 12:48:03'),(6,13,1.7,'Commentaire 0','2024-01-13 11:56:12','2024-01-13 11:56:12'),(6,19,1.1,'Commentaire 15','2024-01-13 12:49:08','2024-01-13 12:49:08'),(6,24,4.3,'Commentaire 32','2024-01-13 12:49:08','2024-01-13 12:49:08'),(6,27,1.5,'Commentaire 5','2024-01-13 12:48:03','2024-01-13 12:48:03'),(6,33,4.6,'Commentaire 9','2024-01-13 12:49:08','2024-01-13 12:49:08'),(6,35,2.4,'Commentaire 29','2024-01-13 12:49:08','2024-01-13 12:49:08'),(7,9,2.1,'Commentaire 27','2024-01-13 12:49:08','2024-01-13 12:49:08'),(7,10,3.2,'Commentaire 20','2024-01-13 12:49:08','2024-01-13 12:49:08'),(7,18,3.9,'Commentaire 5','2024-01-13 12:49:08','2024-01-13 12:49:08'),(7,24,3.1,'Commentaire 2','2024-01-13 11:56:12','2024-01-13 11:56:12'),(7,27,4.0,'Commentaire 3','2024-01-13 11:56:12','2024-01-13 11:56:12'),(7,34,4.5,'Commentaire 24','2024-01-13 12:49:08','2024-01-13 12:49:08'),(8,7,3.5,'Commentaire 31','2024-01-13 12:49:08','2024-01-13 12:49:08'),(8,16,4.1,'Commentaire 1','2024-01-13 11:56:12','2024-01-13 11:56:12'),(8,23,1.3,'Commentaire 1','2024-01-13 12:48:03','2024-01-13 12:48:03'),(8,31,1.6,'Commentaire 17','2024-01-13 12:49:08','2024-01-13 12:49:08'),(8,32,2.5,'Commentaire 10','2024-01-13 12:49:08','2024-01-13 12:49:08'),(8,35,3.6,'Commentaire 22','2024-01-13 12:49:08','2024-01-13 12:49:08'),(9,6,2.0,'Commentaire 30','2024-01-13 12:49:08','2024-01-13 12:49:08'),(10,8,2.0,'Commentaire 19','2024-01-13 12:49:08','2024-01-13 12:49:08'),(10,9,2.2,'Commentaire 21','2024-01-13 12:49:08','2024-01-13 12:49:08'),(10,12,3.5,'Commentaire 0','2024-01-13 12:49:08','2024-01-13 12:49:08'),(10,16,2.4,'Commentaire 5','2024-01-13 11:56:12','2024-01-13 11:56:12'),(10,19,4.1,'Commentaire 7','2024-01-13 12:49:08','2024-01-13 12:49:08'),(10,22,2.2,'Commentaire 0','2024-01-13 12:48:03','2024-01-13 12:48:03'),(10,23,3.0,'Commentaire 4','2024-01-13 12:49:08','2024-01-13 12:49:08'),(10,31,3.4,'Commentaire 2','2024-01-13 12:49:08','2024-01-13 12:49:08');
/*!40000 ALTER TABLE `monster_feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monster_types`
--

DROP TABLE IF EXISTS `monster_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `monster_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monster_types`
--

LOCK TABLES `monster_types` WRITE;
/*!40000 ALTER TABLE `monster_types` DISABLE KEYS */;
INSERT INTO `monster_types` VALUES (1,'Aquatique','2024-01-08 18:47:04'),(2,'Terrestre','2024-01-08 18:47:04'),(3,'Volant','2024-01-08 18:47:04'),(4,'Cosmique','2024-01-08 18:47:04'),(5,'Spectral','2024-01-08 18:47:04'),(6,'Légendaire','2024-01-08 18:47:04');
/*!40000 ALTER TABLE `monster_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monsters`
--

DROP TABLE IF EXISTS `monsters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `monsters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL,
  `rarity` varchar(255) NOT NULL,
  `pv` int(11) NOT NULL,
  `attack` int(11) NOT NULL,
  `defense` int(11) NOT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `description` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `type_id` (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monsters`
--

LOCK TABLES `monsters` WRITE;
/*!40000 ALTER TABLE `monsters` DISABLE KEYS */;
INSERT INTO `monsters` VALUES (1,'AquaDragon',4,1,'Légendaire',150,100,127,'aquadragon.png','Un dragon aquatique légendaire.','2024-01-06 21:33:58','2024-01-13 10:21:07'),(2,'TerraWolf',2,2,'Rare',120,80,93,'terrawolf.png','Un loup terrestre féroce.','2024-01-06 21:33:58','2024-01-13 10:21:07'),(3,'SkyEagle',6,3,'Commun',100,70,84,'skyeagle.png','Un aigle majestueux volant haut dans le ciel.','2024-01-06 21:33:58','2024-01-13 10:21:07'),(4,'CosmoSerpent',4,4,'Épique',130,90,140,'cosmoserpent.png','Un serpent cosmique mystérieux.','2024-01-06 21:33:58','2024-01-13 10:21:07'),(5,'GhostPhantom',3,5,'Légendaire',110,60,49,'ghostphantom.png','Un fantôme spectral énigmatique.','2024-01-06 21:33:58','2024-01-13 10:21:07'),(6,'LavaGiant',2,2,'Rare',140,95,27,'lavagiant.png','Un géant de lave indestructible.','2024-01-06 21:33:58','2024-01-13 10:21:07'),(7,'IcePixie',2,3,'Commun',90,65,185,'icepixie.png','Un pixie de glace charmant.','2024-01-06 21:33:58','2024-01-13 10:21:07'),(8,'StormRider',1,3,'Épique',115,75,44,'stormrider.png','Un cavalier tempétueux.','2024-01-06 21:33:58','2024-01-13 10:21:07'),(9,'RockGolem',8,2,'Commun',135,85,67,'rockgolem.png','Un golem de roche solide.','2024-01-06 21:33:58','2024-01-13 10:21:07'),(10,'FlameSprite',5,1,'Rare',105,55,0,'flamesprite.png','Un esprit de flamme vif.','2024-01-06 21:33:58','2024-01-07 12:29:43'),(11,'MysticDragon',4,4,'Légendaire',160,105,2,'mysticdragon.png','Un dragon mystique avec des pouvoirs magiques.','2024-01-06 21:35:16','2024-01-13 10:21:07'),(12,'EarthBear',3,2,'Rare',130,85,7,'earthbear.png','Un ours robuste avec une force terrifiante.','2024-01-06 21:35:16','2024-01-13 10:21:07'),(13,'WindFalcon',5,3,'Commun',110,80,30,'windfalcon.png','Un faucon rapide qui contrôle les vents.','2024-01-06 21:35:16','2024-01-13 10:21:07'),(14,'VoidWorm',2,4,'Épique',135,95,130,'voidworm.png','Un ver de l’espace connu pour sa nature vorace.','2024-01-06 21:35:16','2024-01-13 10:21:07'),(15,'SpiritShade',6,5,'Légendaire',120,70,158,'spiritshade.png','Une ombre spirituelle insaisissable.','2024-01-06 21:35:16','2024-01-13 10:21:07'),(16,'MagmaTroll',5,2,'Rare',145,100,2,'magmatroll.png','Un troll de magma indestructible.','2024-01-06 21:35:16','2024-01-13 10:21:07'),(17,'FrostElf',6,3,'Commun',95,75,134,'frostelf.png','Un elfe de givre élégant et agile.','2024-01-06 21:35:16','2024-01-13 10:21:07'),(18,'ThunderSerpent',3,3,'Épique',125,90,65,'thunderserpent.png','Un serpent tonnerre puissant et électrique.','2024-01-06 21:35:16','2024-01-13 10:21:07'),(19,'StoneGiant',6,2,'Commun',150,110,125,'stonegiant.png','Un géant de pierre imposant avec une grande endurance.','2024-01-06 21:35:16','2024-01-13 10:21:07'),(20,'InfernoPixie',2,1,'Rare',100,60,28,'infernopixie.png','Un pixie infernal malicieux et rapide.','2024-01-06 21:35:16','2024-01-13 10:21:07'),(21,'LightningCheetah',3,3,'Légendaire',145,120,164,'lightningcheetah.png','Un guépard rapide comme l’éclair.','2024-01-06 21:36:31','2024-01-13 10:21:07'),(22,'AbyssalShark',6,1,'Rare',155,95,138,'abyssalshark.png','Un requin abyssal redoutable.','2024-01-06 21:36:31','2024-01-13 10:21:07'),(23,'SkyPhoenix',9,3,'Commun',115,85,198,'skyphoenix.png','Un phénix céleste majestueux.','2024-01-06 21:36:31','2024-01-13 10:21:07'),(24,'ShadowBat',10,5,'Épique',140,90,177,'shadowbat.png','Une chauve-souris de l’ombre insaisissable.','2024-01-06 21:36:31','2024-01-13 10:21:07'),(25,'CrystalUnicorn',10,2,'Légendaire',130,75,90,'crystalunicorn.png','Une licorne cristalline magique.','2024-01-06 21:36:31','2024-01-13 10:21:07'),(26,'FireLion',9,1,'Rare',160,110,119,'firelion.png','Un lion de feu impétueux.','2024-01-06 21:36:31','2024-01-13 10:21:07'),(27,'IceWolf',7,3,'Commun',120,80,127,'icewolf.png','Un loup de glace froid et calculateur.','2024-01-06 21:36:31','2024-01-13 10:21:07'),(28,'StormEagle',6,3,'Épique',135,105,76,'stormeagle.png','Un aigle de tempête dominateur.','2024-01-06 21:36:31','2024-01-13 10:21:07'),(29,'EarthElemental',7,2,'Commun',170,115,1,'earthelemental.png','Un élémentaire de terre imposant.','2024-01-06 21:36:31','2024-01-13 10:21:07'),(30,'FlameDragon',8,1,'Rare',125,100,176,'flamedragon.png','Un dragon de flamme terrifiant.','2024-01-06 21:36:31','2024-01-13 10:21:07'),(31,'AquaLizzard',6,1,'Rare',130,80,78,'aqualizzard.png','Un lézard du grand Lac Noir','2024-01-07 11:36:31','2024-01-13 10:21:07'),(32,'ShadowMonkey',10,2,'Épique',150,140,62,'shadowmonkey.png','Un monkey à éviter...','2024-01-07 12:28:14','2024-01-13 10:21:07'),(33,'SpectralSpririt',5,5,'Légendaire',200,150,76,'spectralspririt.png','SpectralSpirit est légendaire...','2024-01-07 12:28:14','2024-01-13 10:21:07'),(34,'RockMountain',4,2,'Common',150,125,194,'rockmountain.png','RockMountain vit dans les montagnes dans lesquelles il se fond.','2024-01-07 12:28:14','2024-01-13 10:21:07'),(35,'UmbraRoot',3,2,'Rare',90,115,144,'umbraroot.png','Enveloppé dans les murmures des bois anciens, RacineOmbre est une entité gothique qui prospère sous le manteau de la nuit. Avec des vrilles délicates et une aura étrangement belle.','2024-01-09 12:28:14','2024-01-13 10:21:07');
/*!40000 ALTER TABLE `monsters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Alice01','alice01@example.com','$2y$12$9wYqP7ERFyUff39LO.RPBuD2.JohnBo9t7FbSE5mKOYGtpUG4/HEu','2024-01-06 21:30:20','2024-01-13 12:34:27'),(2,'Bob02','bob02@example.com','$2y$12$Kdi9M5U1NG.C/dDWs0/KBex8rnEk1HzRCgPSTiztO.hPAa7IeQH.S','2024-01-06 21:30:20','2024-01-13 12:34:27'),(3,'Charlie03','charlie03@example.com','$2y$12$AIFf7KiH4mUEZ0OXvoxBlOWHJh8skqsL6Ec.jqfzX9oJrwh11xrza','2024-01-06 21:30:20','2024-01-13 12:34:28'),(4,'David04','david04@example.com','$2y$12$X89w5ypy6kWke0Pu1YqTp.XL7dELFskwIW0OylDGmr/9KTgUklXgK','2024-01-06 21:30:20','2024-01-13 12:34:28'),(5,'Eve05','eve05@example.com','$2y$12$ja2861Igji5kXN7zGrQZB.0zhgkb5jwX59cE2oSYSzjYaqyGJx6xW','2024-01-06 21:30:20','2024-01-13 12:34:28'),(6,'Frank06','frank06@example.com','$2y$12$rTG6KywaipJ7qlNIyo3i5e8PjvGfvHqN7KCVqKqfwIfNNF7nYGfTG','2024-01-06 21:30:20','2024-01-13 12:34:28'),(7,'Grace07','grace07@example.com','$2y$12$Yr1M32b5E6d2WCgBa2qKx.uGkXt1PrlpgwKBuW1C6EqUqMghP.iI2','2024-01-06 21:30:20','2024-01-13 12:34:28'),(8,'Henry08','henry08@example.com','$2y$12$LCD1CACIiBZ//.QhbJdJkutQZ56wre3MoYdeGLDMojqbHUtNJrGZK','2024-01-06 21:30:20','2024-01-13 12:34:29'),(9,'Ivy09','ivy09@example.com','$2y$12$ZUl/XlXXcDOBgMFr43Vixux4y9zhl6M7Q9hgspw7W.Xd7WxYujUde','2024-01-06 21:30:20','2024-01-13 12:34:29'),(10,'John10','john10@example.com','$2y$12$Vc4tfDsVdqGgiiJBJ7QKee0IxDSwvGshHXYJ/iImQjiRKaGpgBOh2','2024-01-06 21:30:20','2024-01-13 12:34:29');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `monster_average_ratings`
--

/*!50001 DROP VIEW IF EXISTS `monster_average_ratings`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `monster_average_ratings` AS select `monster_feedback`.`monster_id` AS `monster_id`,avg(`monster_feedback`.`rating`) AS `average_rating` from `monster_feedback` group by `monster_feedback`.`monster_id` */;
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

-- Dump completed on 2024-01-13 15:30:24
