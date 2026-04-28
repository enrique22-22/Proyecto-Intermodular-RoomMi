CREATE DATABASE  IF NOT EXISTS `mydb` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `mydb`;
-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: localhost    Database: mydb
-- ------------------------------------------------------
-- Server version	8.0.25

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
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chat` (
  `id_chat` int NOT NULL,
  `texto` varchar(45) DEFAULT NULL,
  `fecha` varchar(45) DEFAULT NULL,
  `id_usuario` varchar(45) NOT NULL,
  `Usuario_id_usuario` int NOT NULL,
  `Usuario_Habitacion_id_habitacion` int NOT NULL,
  PRIMARY KEY (`id_chat`,`Usuario_id_usuario`,`Usuario_Habitacion_id_habitacion`),
  KEY `fk_Chat_Usuario1_idx` (`Usuario_id_usuario`,`Usuario_Habitacion_id_habitacion`),
  CONSTRAINT `fk_Chat_Usuario1` FOREIGN KEY (`Usuario_id_usuario`, `Usuario_Habitacion_id_habitacion`) REFERENCES `usuario` (`id_usuario`, `Habitacion_id_habitacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (1,'Interesado en la habitación','2023-09-20','USR01',1,1),(2,'¿Aceptan mascotas?','2023-09-21','USR02',2,2),(3,'¿Precio incluye gastos?','2023-09-22','USR04',4,4),(4,'¿Sigue disponible?','2023-09-23','USR06',6,6),(5,'Quiero verla mañana','2023-09-24','USR07',7,7),(6,'¿Hay wifi?','2023-09-25','USR09',9,9),(7,'Busco para larga estancia','2023-09-26','USR10',10,10),(8,'¿Fianza de cuánto?','2023-09-27','USR12',12,12),(9,'Somos dos personas','2023-09-28','USR13',13,13),(10,'¿Hay ascensor?','2023-09-29','USR15',15,15),(11,'¿Calle tranquila?','2023-09-30','USR16',16,16),(12,'¿Cerca de renfe?','2023-10-01','USR19',19,19),(13,'Me gusta el estudio','2023-10-02','USR20',20,20),(14,'Consulta sobre pagos','2023-10-03','USR01',1,1),(15,'¿Baño compartido?','2023-10-04','USR04',4,4),(16,'¿Muebles incluidos?','2023-10-05','USR06',6,6),(17,'¿Limpieza incluida?','2023-10-06','USR07',7,7),(18,'Reserva confirmada?','2023-10-07','USR09',9,9),(19,'¿Hay aire acondicionado?','2023-10-08','USR10',10,10),(20,'Gracias por la info','2023-10-09','USR12',12,12);
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comentario`
--

DROP TABLE IF EXISTS `comentario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comentario` (
  `id_comentario` varchar(45) NOT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  `valoracion` int DEFAULT NULL,
  `id_habitacion` varchar(45) NOT NULL,
  `Habitacion_id_habitacion` int NOT NULL,
  `Habitacion_Tipo_Habitacion_id_tipoHabitacion` varchar(45) NOT NULL,
  PRIMARY KEY (`id_comentario`,`Habitacion_id_habitacion`,`Habitacion_Tipo_Habitacion_id_tipoHabitacion`),
  KEY `fk_Comentario_Habitacion1_idx` (`Habitacion_id_habitacion`,`Habitacion_Tipo_Habitacion_id_tipoHabitacion`),
  CONSTRAINT `fk_Comentario_Habitacion1` FOREIGN KEY (`Habitacion_id_habitacion`, `Habitacion_Tipo_Habitacion_id_tipoHabitacion`) REFERENCES `habitacion` (`id_habitacion`, `Tipo_Habitacion_id_tipoHabitacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comentario`
--

LOCK TABLES `comentario` WRITE;
/*!40000 ALTER TABLE `comentario` DISABLE KEYS */;
INSERT INTO `comentario` VALUES ('C01','Excelente trato',5,'1',1,'TH01'),('C02','Limpio y ordenado',4,'2',2,'TH02'),('C03','Un poco ruidoso',3,'3',3,'TH03'),('C04','Muy económico',5,'4',4,'TH04'),('C05','Vistas increíbles',5,'5',5,'TH05'),('C06','Falta ventilación',2,'6',6,'TH06'),('C07','Pequeño pero cómodo',4,'7',7,'TH07'),('C08','Gran experiencia',5,'8',8,'TH08'),('C09','Cerca del centro',4,'9',9,'TH09'),('C10','Anfitrión amable',5,'10',10,'TH10'),('C11','Internet lento',3,'11',11,'TH11'),('C12','Terraza estupenda',5,'12',12,'TH12'),('C13','Ideal estudiantes',4,'13',13,'TH13'),('C14','Muebles nuevos',5,'14',14,'TH14'),('C15','Zona muy segura',4,'15',15,'TH15'),('C16','Muy moderno',5,'16',16,'TH16'),('C17','Faltaban toallas',3,'17',17,'TH17'),('C18','Muy cerca playa',5,'18',18,'TH18'),('C19','Oscuro',2,'19',19,'TH19'),('C20','Perfecto todo',5,'20',20,'TH20');
/*!40000 ALTER TABLE `comentario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emisor`
--

DROP TABLE IF EXISTS `emisor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emisor` (
  `id_emisor` int NOT NULL,
  PRIMARY KEY (`id_emisor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emisor`
--

LOCK TABLES `emisor` WRITE;
/*!40000 ALTER TABLE `emisor` DISABLE KEYS */;
INSERT INTO `emisor` VALUES (1),(2),(3),(4),(5),(6),(7),(8),(9),(10),(11),(12),(13),(14),(15),(16),(17),(18),(19),(20);
/*!40000 ALTER TABLE `emisor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `habitacion`
--

DROP TABLE IF EXISTS `habitacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `habitacion` (
  `id_habitacion` int NOT NULL,
  `precio` double DEFAULT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  `fotos` varchar(45) DEFAULT NULL,
  `disponibilidad` varchar(45) DEFAULT NULL,
  `calle` varchar(45) DEFAULT NULL,
  `numero` int DEFAULT NULL,
  `poblacion` varchar(45) DEFAULT NULL,
  `id_usuario` varchar(45) NOT NULL,
  `id_tipoHabitacion` varchar(45) DEFAULT NULL,
  `Tipo_Habitacion_id_tipoHabitacion` varchar(45) NOT NULL,
  PRIMARY KEY (`id_habitacion`,`Tipo_Habitacion_id_tipoHabitacion`),
  UNIQUE KEY `id_usuario_UNIQUE` (`id_usuario`),
  KEY `fk_Habitacion_Tipo_Habitacion1_idx` (`Tipo_Habitacion_id_tipoHabitacion`),
  CONSTRAINT `fk_Habitacion_Tipo_Habitacion1` FOREIGN KEY (`Tipo_Habitacion_id_tipoHabitacion`) REFERENCES `tipo_habitacion` (`id_tipoHabitacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `habitacion`
--

LOCK TABLES `habitacion` WRITE;
/*!40000 ALTER TABLE `habitacion` DISABLE KEYS */;
INSERT INTO `habitacion` VALUES (1,450.5,'Habitacion céntrica','img01.jpg','Si','Calle Mayor',10,'Madrid','USR01','TH01','TH01'),(2,380,'Cerca universidad','img02.jpg','Si','Av. Universidad',5,'Valencia','USR02','TH02','TH02'),(3,600,'Estudio moderno','img03.jpg','No','Gran Vía',45,'Madrid','USR03','TH03','TH03'),(4,320,'Económica y amplia','img04.jpg','Si','Calle Luna',12,'Sevilla','USR04','TH04','TH04'),(5,500,'Vistas al parque','img05.jpg','Si','Paseo del Prado',8,'Madrid','USR05','TH05','TH05'),(6,410,'Piso compartido','img06.jpg','No','Calle Sol',22,'Barcelona','USR06','TH06','TH06'),(7,300,'Habitación pequeña','img07.jpg','Si','Calle Estrecha',3,'Bilbao','USR07','TH07','TH07'),(8,750,'Suite de lujo','img08.jpg','Si','Calle Serrano',100,'Madrid','USR08','TH08','TH08'),(9,360,'Recién reformado','img09.jpg','Si','Av. Constitución',14,'Zaragoza','USR09','TH09','TH09'),(10,420,'Mucha luz natural','img10.jpg','No','Calle Real',50,'Málaga','USR10','TH10','TH10'),(11,390,'Cerca del metro','img11.jpg','Si','Calle Norte',7,'Valencia','USR11','TH11','TH11'),(12,550,'Atico con terraza','img12.jpg','Si','Calle Libertad',9,'Barcelona','USR12','TH12','TH12'),(13,310,'Estudiantes solo','img13.jpg','Si','Calle Paz',11,'Granada','USR13','TH13','TH13'),(14,480,'Amueblado completo','img14.jpg','No','Calle Unión',4,'Madrid','USR14','TH14','TH14'),(15,340,'Barrio tranquilo','img15.jpg','Si','Calle Silencio',2,'Salamanca','USR15','TH15','TH15'),(16,620,'Design Loft','img16.jpg','Si','Calle Arte',33,'Madrid','USR16','TH16','TH16'),(17,375,'Balcón exterior','img17.jpg','Si','Calle Aire',6,'Alicante','USR17','TH17','TH17'),(18,440,'Cerca playa','img18.jpg','No','Calle Mar',80,'Valencia','USR18','TH18','TH18'),(19,290,'Habitación interior','img19.jpg','Si','Calle Baja',1,'Murcia','USR19','TH19','TH19'),(20,510,'Estudio acogedor','img20.jpg','Si','Calle Alta',15,'Barcelona','USR20','TH20','TH20');
/*!40000 ALTER TABLE `habitacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mensaje`
--

DROP TABLE IF EXISTS `mensaje`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mensaje` (
  `id_mensaje` int NOT NULL,
  `contenido` varchar(45) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `id_chat` varchar(45) NOT NULL,
  `id_emisor` varchar(45) NOT NULL,
  `id_receptor` varchar(45) NOT NULL,
  `Chat_id_chat` int NOT NULL,
  `Chat_Usuario_id_usuario` int NOT NULL,
  `Chat_Usuario_Habitacion_id_habitacion` int NOT NULL,
  `Emisor_id_emisor` int NOT NULL,
  `Receptor_id_receptor` int NOT NULL,
  PRIMARY KEY (`id_mensaje`,`Chat_id_chat`,`Chat_Usuario_id_usuario`,`Chat_Usuario_Habitacion_id_habitacion`,`Emisor_id_emisor`,`Receptor_id_receptor`),
  KEY `fk_Mensaje_Chat1_idx` (`Chat_id_chat`,`Chat_Usuario_id_usuario`,`Chat_Usuario_Habitacion_id_habitacion`),
  KEY `fk_Mensaje_Emisor1_idx` (`Emisor_id_emisor`),
  KEY `fk_Mensaje_Receptor1_idx` (`Receptor_id_receptor`),
  CONSTRAINT `fk_Mensaje_Chat1` FOREIGN KEY (`Chat_id_chat`, `Chat_Usuario_id_usuario`, `Chat_Usuario_Habitacion_id_habitacion`) REFERENCES `chat` (`id_chat`, `Usuario_id_usuario`, `Usuario_Habitacion_id_habitacion`),
  CONSTRAINT `fk_Mensaje_Emisor1` FOREIGN KEY (`Emisor_id_emisor`) REFERENCES `emisor` (`id_emisor`),
  CONSTRAINT `fk_Mensaje_Receptor1` FOREIGN KEY (`Receptor_id_receptor`) REFERENCES `receptor` (`id_receptor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mensaje`
--

LOCK TABLES `mensaje` WRITE;
/*!40000 ALTER TABLE `mensaje` DISABLE KEYS */;
INSERT INTO `mensaje` VALUES (1,'Hola, ¿esta libre?','2023-09-20','10:00:00','1','1','2',1,1,1,1,2),(2,'Si, por supuesto','2023-09-20','10:05:00','1','2','1',1,1,1,2,1),(3,'¿Puedo llevar un gato?','2023-09-21','11:00:00','2','2','3',2,2,2,2,3),(4,'No se admiten animales','2023-09-21','11:15:00','2','3','2',2,2,2,3,2),(5,'¿Gastos luz aparte?','2023-09-22','09:00:00','3','4','5',3,4,4,4,5),(6,'Si, unos 30€','2023-09-22','09:30:00','3','5','4',3,4,4,5,4),(7,'Me interesa mucho','2023-09-23','18:00:00','4','6','1',4,6,6,6,1),(8,'Vente a verla hoy','2023-09-23','18:10:00','4','1','6',4,6,6,1,6),(9,'A que hora quedamos?','2023-09-24','12:00:00','5','7','1',5,7,7,7,1),(10,'A las 17:00','2023-09-24','12:15:00','5','1','7',5,7,7,1,7),(11,'Hay wifi 5G?','2023-09-25','14:00:00','6','9','2',6,9,9,9,2),(12,'Si, va muy rapido','2023-09-25','14:10:00','6','2','9',6,9,9,2,9),(13,'Mínimo 6 meses','2023-09-26','15:00:00','7','10','1',7,10,10,10,1),(14,'Me parece bien','2023-09-26','15:30:00','7','1','10',7,10,10,1,10),(15,'Un mes de fianza','2023-09-27','10:00:00','8','12','4',8,12,12,12,4),(16,'Perfecto, guardamela','2023-09-27','10:20:00','8','4','12',8,12,12,4,12),(17,'Pareja aceptada?','2023-09-28','11:00:00','9','13','5',9,13,13,13,5),(18,'Solo individuales','2023-09-28','11:05:00','9','5','13',9,13,13,5,13),(19,'Tiene ascensor?','2023-09-29','08:00:00','10','15','2',10,15,15,15,2),(20,'Es un bajo','2023-09-29','08:15:00','10','2','15',10,15,15,2,15);
/*!40000 ALTER TABLE `mensaje` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permisos`
--

DROP TABLE IF EXISTS `permisos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permisos` (
  `id_permisos` varchar(45) NOT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_permisos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permisos`
--

LOCK TABLES `permisos` WRITE;
/*!40000 ALTER TABLE `permisos` DISABLE KEYS */;
INSERT INTO `permisos` VALUES ('P01','Lectura total'),('P02','Escritura total'),('P03','Borrado lógico'),('P04','Gestión de usuarios'),('P05','Publicar habitación'),('P06','Enviar mensajes'),('P07','Realizar reservas'),('P08','Ver estadísticas'),('P09','Modificar precios'),('P10','Acceso a logs'),('P11','Editar perfil'),('P12','Subir fotos'),('P13','Eliminar comentarios'),('P14','Baneo de usuarios'),('P15','Exportar datos'),('P16','Importar datos'),('P17','Gestionar pagos'),('P18','Crear roles'),('P19','Asignar permisos'),('P20','Acceso API');
/*!40000 ALTER TABLE `permisos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `receptor`
--

DROP TABLE IF EXISTS `receptor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `receptor` (
  `id_receptor` int NOT NULL,
  PRIMARY KEY (`id_receptor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receptor`
--

LOCK TABLES `receptor` WRITE;
/*!40000 ALTER TABLE `receptor` DISABLE KEYS */;
INSERT INTO `receptor` VALUES (1),(2),(3),(4),(5),(6),(7),(8),(9),(10),(11),(12),(13),(14),(15),(16),(17),(18),(19),(20);
/*!40000 ALTER TABLE `receptor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reserva`
--

DROP TABLE IF EXISTS `reserva`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reserva` (
  `id_reserva` int NOT NULL,
  `fecha_Inicio` date DEFAULT NULL,
  `fecha_Fin` date DEFAULT NULL,
  `precio_Final` int DEFAULT NULL,
  `id_usuario` int NOT NULL,
  `id_habitacion` int NOT NULL,
  `Habitacion_id_habitacion` int NOT NULL,
  `Habitacion_Tipo_Habitacion_id_tipoHabitacion` varchar(45) NOT NULL,
  `Usuario_id_usuario` int NOT NULL,
  `Usuario_Habitacion_id_habitacion` int NOT NULL,
  PRIMARY KEY (`id_reserva`,`Habitacion_id_habitacion`,`Habitacion_Tipo_Habitacion_id_tipoHabitacion`,`Usuario_id_usuario`,`Usuario_Habitacion_id_habitacion`),
  KEY `fk_Reserva_Habitacion1_idx` (`Habitacion_id_habitacion`,`Habitacion_Tipo_Habitacion_id_tipoHabitacion`),
  KEY `fk_Reserva_Usuario1_idx` (`Usuario_id_usuario`,`Usuario_Habitacion_id_habitacion`),
  CONSTRAINT `fk_Reserva_Habitacion1` FOREIGN KEY (`Habitacion_id_habitacion`, `Habitacion_Tipo_Habitacion_id_tipoHabitacion`) REFERENCES `habitacion` (`id_habitacion`, `Tipo_Habitacion_id_tipoHabitacion`),
  CONSTRAINT `fk_Reserva_Usuario1` FOREIGN KEY (`Usuario_id_usuario`, `Usuario_Habitacion_id_habitacion`) REFERENCES `usuario` (`id_usuario`, `Habitacion_id_habitacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reserva`
--

LOCK TABLES `reserva` WRITE;
/*!40000 ALTER TABLE `reserva` DISABLE KEYS */;
INSERT INTO `reserva` VALUES (1,'2024-01-01','2024-06-01',2700,1,1,1,'TH01',1,1),(2,'2024-02-01','2024-08-01',2280,2,2,2,'TH02',2,2),(3,'2024-03-01','2024-03-31',600,4,3,3,'TH03',4,4),(4,'2024-04-10','2024-10-10',1920,6,4,4,'TH04',6,6),(5,'2024-01-15','2024-07-15',3000,7,5,5,'TH05',7,7),(6,'2024-02-20','2024-05-20',1230,9,6,6,'TH06',9,9),(7,'2024-03-15','2024-06-15',900,10,7,7,'TH07',10,10),(8,'2024-05-01','2024-12-01',5250,12,8,8,'TH08',12,12),(9,'2024-06-01','2024-08-01',720,13,9,9,'TH09',13,13),(10,'2024-01-10','2024-02-10',420,15,10,10,'TH10',15,15),(11,'2024-02-01','2024-11-01',3510,16,11,11,'TH11',16,16),(12,'2024-03-01','2024-09-01',3300,19,12,12,'TH12',19,19),(13,'2024-04-01','2024-10-01',1860,20,13,13,'TH13',20,20),(14,'2024-05-01','2024-08-01',1440,1,14,14,'TH14',1,1),(15,'2024-06-15','2024-12-15',2040,4,15,15,'TH15',4,4),(16,'2024-07-01','2024-12-31',3720,6,16,16,'TH16',6,6),(17,'2024-01-20','2024-03-20',750,7,17,17,'TH17',7,7),(18,'2024-02-15','2024-05-15',1320,9,18,18,'TH18',9,9),(19,'2024-03-10','2024-09-10',1740,10,19,19,'TH19',10,10),(20,'2024-04-20','2024-10-20',3060,12,20,20,'TH20',12,12);
/*!40000 ALTER TABLE `reserva` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rol`
--

DROP TABLE IF EXISTS `rol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rol` (
  `id_rol` varchar(50) NOT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_rol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rol`
--

LOCK TABLES `rol` WRITE;
/*!40000 ALTER TABLE `rol` DISABLE KEYS */;
INSERT INTO `rol` VALUES ('ADMIN','Administrador del sistema'),('CO_OWN','Co-propietario'),('GUEST','Usuario invitado'),('MANT','Personal mantenimiento'),('MOD','Moderador de contenido'),('OWNER','Propietario de inmueble'),('R10','Rol de prueba 10'),('R11','Rol de prueba 11'),('R12','Rol de prueba 12'),('R13','Rol de prueba 13'),('R14','Rol de prueba 14'),('R15','Rol de prueba 15'),('R16','Rol de prueba 16'),('R17','Rol de prueba 17'),('R18','Rol de prueba 18'),('R19','Rol de prueba 19'),('R20','Rol de prueba 20'),('SUPP','Soporte técnico'),('USER','Usuario estándar'),('VIP','Usuario premium');
/*!40000 ALTER TABLE `rol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiene`
--

DROP TABLE IF EXISTS `tiene`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tiene` (
  `Rol_id_rol` varchar(50) NOT NULL,
  `Permisos_id_permisos` varchar(45) NOT NULL,
  PRIMARY KEY (`Rol_id_rol`,`Permisos_id_permisos`),
  KEY `fk_Rol_has_Permisos_Permisos1_idx` (`Permisos_id_permisos`),
  KEY `fk_Rol_has_Permisos_Rol1_idx` (`Rol_id_rol`),
  CONSTRAINT `fk_Tiene_Permisos` FOREIGN KEY (`Permisos_id_permisos`) REFERENCES `permisos` (`id_permisos`),
  CONSTRAINT `fk_Tiene_Rol` FOREIGN KEY (`Rol_id_rol`) REFERENCES `rol` (`id_rol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tiene`
--

LOCK TABLES `tiene` WRITE;
/*!40000 ALTER TABLE `tiene` DISABLE KEYS */;
INSERT INTO `tiene` VALUES ('ADMIN','P01'),('GUEST','P01'),('USER','P01'),('ADMIN','P02'),('ADMIN','P03'),('MANT','P03'),('ADMIN','P04'),('OWNER','P05'),('OWNER','P06'),('USER','P06'),('USER','P07'),('VIP','P08'),('CO_OWN','P09'),('OWNER','P09'),('SUPP','P10'),('USER','P11'),('OWNER','P12'),('MOD','P13'),('MOD','P14'),('SUPP','P19');
/*!40000 ALTER TABLE `tiene` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_habitacion`
--

DROP TABLE IF EXISTS `tipo_habitacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_habitacion` (
  `id_tipoHabitacion` varchar(45) NOT NULL,
  `individual` varchar(45) DEFAULT NULL,
  `doble` varchar(45) DEFAULT NULL,
  `estudio` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_tipoHabitacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_habitacion`
--

LOCK TABLES `tipo_habitacion` WRITE;
/*!40000 ALTER TABLE `tipo_habitacion` DISABLE KEYS */;
INSERT INTO `tipo_habitacion` VALUES ('TH01','1','0','0'),('TH02','0','1','0'),('TH03','0','0','1'),('TH04','1','0','0'),('TH05','0','1','0'),('TH06','0','0','1'),('TH07','1','0','0'),('TH08','0','1','0'),('TH09','0','0','1'),('TH10','1','0','0'),('TH11','0','1','0'),('TH12','0','0','1'),('TH13','1','0','0'),('TH14','0','1','0'),('TH15','0','0','1'),('TH16','1','0','0'),('TH17','0','1','0'),('TH18','0','0','1'),('TH19','1','0','0'),('TH20','0','1','0');
/*!40000 ALTER TABLE `tipo_habitacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `id_usuario` int NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `contraseña` varchar(45) DEFAULT NULL,
  `tipo` varchar(45) DEFAULT NULL,
  `puntuacion` varchar(45) DEFAULT NULL,
  `id_usuarioValora` varchar(45) NOT NULL,
  `Habitacion_id_habitacion` int NOT NULL,
  `Rol_id_rol` varchar(50) NOT NULL,
  PRIMARY KEY (`id_usuario`,`Habitacion_id_habitacion`,`Rol_id_rol`),
  KEY `fk_Usuario_Habitacion_idx` (`Habitacion_id_habitacion`),
  KEY `fk_Usuario_Rol1_idx` (`Rol_id_rol`),
  CONSTRAINT `fk_Usuario_Habitacion` FOREIGN KEY (`Habitacion_id_habitacion`) REFERENCES `habitacion` (`id_habitacion`),
  CONSTRAINT `fk_Usuario_Rol1` FOREIGN KEY (`Rol_id_rol`) REFERENCES `rol` (`id_rol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'Enrique','enrique@mail.com','hash123','Inquilino','4.5','VAL01',1,'USER'),(2,'Ana Garcia','ana@mail.com','hash456','Propietario','4.8','VAL02',2,'OWNER'),(3,'Carlos Ruiz','carlos@mail.com','hash789','Admin','5.0','VAL03',3,'ADMIN'),(4,'Marta Lopez','marta@mail.com','hash101','Inquilino','3.9','VAL04',4,'USER'),(5,'Juan Perez','juan@mail.com','hash202','Propietario','4.2','VAL05',5,'OWNER'),(6,'Lucia Sanz','lucia@mail.com','hash303','Inquilino','4.7','VAL06',6,'USER'),(7,'David Gil','david@mail.com','hash404','Inquilino','4.1','VAL07',7,'USER'),(8,'Elena Bel','elena@mail.com','hash505','Propietario','4.6','VAL08',8,'OWNER'),(9,'Sergio Ma','sergio@mail.com','hash606','Inquilino','3.8','VAL09',9,'USER'),(10,'Paula To','paula@mail.com','hash707','Inquilino','4.9','VAL10',10,'USER'),(11,'Raul Ro','raul@mail.com','hash808','Propietario','4.3','VAL11',11,'OWNER'),(12,'Sonia Ba','sonia@mail.com','hash909','Inquilino','4.0','VAL12',12,'USER'),(13,'Jorge Su','jorge@mail.com','hash010','Inquilino','3.7','VAL13',13,'USER'),(14,'Beatriz P','bea@mail.com','hash111','Propietario','4.5','VAL14',14,'OWNER'),(15,'Hugo Va','hugo@mail.com','hash212','Inquilino','4.4','VAL15',15,'USER'),(16,'Irene Ku','irene@mail.com','hash313','Inquilino','4.8','VAL16',16,'USER'),(17,'Tomas Lo','tomas@mail.com','hash414','Propietario','3.5','VAL17',17,'OWNER'),(18,'Nuria Ju','nuria@mail.com','hash515','Admin','5.0','VAL18',18,'ADMIN'),(19,'Marc Fe','marc@mail.com','hash616','Inquilino','4.2','VAL19',19,'USER'),(20,'Clara Vi','clara@mail.com','hash717','Inquilino','4.6','VAL20',20,'USER');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `valoracion`
--

DROP TABLE IF EXISTS `valoracion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `valoracion` (
  `id_valoracion` int NOT NULL,
  `fecha` date DEFAULT NULL,
  `puntuacion` int DEFAULT NULL,
  `id_habitacion` varchar(45) NOT NULL,
  `id_comentario` varchar(45) NOT NULL,
  `Habitacion_id_habitacion` int NOT NULL,
  `Habitacion_Tipo_Habitacion_id_tipoHabitacion` varchar(45) NOT NULL,
  PRIMARY KEY (`id_valoracion`,`Habitacion_id_habitacion`,`Habitacion_Tipo_Habitacion_id_tipoHabitacion`),
  KEY `fk_Valoracion_Habitacion1_idx` (`Habitacion_id_habitacion`,`Habitacion_Tipo_Habitacion_id_tipoHabitacion`),
  CONSTRAINT `fk_Valoracion_Habitacion1` FOREIGN KEY (`Habitacion_id_habitacion`, `Habitacion_Tipo_Habitacion_id_tipoHabitacion`) REFERENCES `habitacion` (`id_habitacion`, `Tipo_Habitacion_id_tipoHabitacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `valoracion`
--

LOCK TABLES `valoracion` WRITE;
/*!40000 ALTER TABLE `valoracion` DISABLE KEYS */;
INSERT INTO `valoracion` VALUES (1,'2023-10-01',5,'1','C01',1,'TH01'),(2,'2023-10-05',4,'2','C02',2,'TH02'),(3,'2023-10-10',3,'3','C03',3,'TH03'),(4,'2023-11-01',5,'4','C04',4,'TH04'),(5,'2023-11-12',5,'5','C05',5,'TH05'),(6,'2023-11-20',2,'6','C06',6,'TH06'),(7,'2023-12-01',4,'7','C07',7,'TH07'),(8,'2023-12-15',5,'8','C08',8,'TH08'),(9,'2024-01-05',4,'9','C09',9,'TH09'),(10,'2024-01-10',5,'10','C10',10,'TH10'),(11,'2024-01-20',3,'11','C11',11,'TH11'),(12,'2024-02-01',5,'12','C12',12,'TH12'),(13,'2024-02-14',4,'13','C13',13,'TH13'),(14,'2024-02-28',5,'14','C14',14,'TH14'),(15,'2024-03-01',4,'15','C15',15,'TH15'),(16,'2024-03-10',5,'16','C16',16,'TH16'),(17,'2024-03-15',3,'17','C17',17,'TH17'),(18,'2024-04-01',5,'18','C18',18,'TH18'),(19,'2024-04-05',2,'19','C19',19,'TH19'),(20,'2024-04-10',5,'20','C20',20,'TH20');
/*!40000 ALTER TABLE `valoracion` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-02-11  8:38:52
