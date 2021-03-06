-- source /mnt/c/Users/vitri/Desktop/RSC/RSC/scripts/database.sql

DROP DATABASE vitriniKeys;
CREATE DATABASE vitriniKeys;
USE vitriniKeys;

-- @autor Mateus Felipe - mateus_f97@hotmail.com
-- This table was created to save history key for a user

CREATE TABLE IF NOT EXISTS `key_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` int(11) NOT NULL,
  `status` varchar(128),
  `username` varchar(128) DEFAULT NULL,
  `last_update` TIMESTAMP ON UPDATE CURRENT_TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE  = InnoDB;

CREATE INDEX key_list_username ON `key_history`(username);
CREATE INDEX key_list_status ON `key_history`(status);
CREATE INDEX key_list_key ON `key_history`(number);

-- @autor Mateus Felipe - mateus_f97@hotmail.com
-- This table was created to save the key and key status for a user

CREATE TABLE IF NOT EXISTS `key_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` varchar(128) DEFAULT "EM ARMÁRIO",
  `username` varchar(128) DEFAULT NULL,
  `last_update` TIMESTAMP ON UPDATE CURRENT_TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE  = InnoDB;

CREATE INDEX key_list_username ON `key_list`(username);
CREATE INDEX key_list_status ON `key_list`(status);


INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);
INSERT INTO `key_list` VALUES (NULL,"EM ARMÁRIO",NULL,NULL);




SELECT * FROM `key_list`;
