--
-- Table structure for table `chat`
--
DROP TABLE IF EXISTS `chat`;
CREATE TABLE `chat` (
  `msgID` int unsigned NOT NULL AUTO_INCREMENT,
  `message` text NOT NULL,
  `chatTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `custID` int unsigned NOT NULL,
  `empID` int unsigned NOT NULL,
  `sender` enum('c','e') NOT NULL,
  `orderID` int unsigned DEFAULT NULL,
  PRIMARY KEY (`msgID`)
) ENGINE=InnoDB AUTO_INCREMENT=3;

--
-- Dumping data for table `chat`
--
LOCK TABLES `chat` WRITE;
INSERT INTO `chat` VALUES (1,'Hi','2023-07-09 13:53:43',1,5,'c',1),(2,'Hi, how about you?','2023-07-15 17:28:03',1,5,'e',1);
UNLOCK TABLES;