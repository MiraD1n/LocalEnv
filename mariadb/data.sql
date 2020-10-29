DROP TABLE IF EXISTS `dockerSample`;
CREATE TABLE `dockerSample` (
  `name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
LOCK TABLES `dockerSample` WRITE;
INSERT INTO `dockerSample` VALUES ('First'),('Second'),('Third');
UNLOCK TABLES;
