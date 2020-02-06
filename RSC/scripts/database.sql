-- @autor Mateus Felipe - mateus@doglee.com
-- This table was created to save the access and the main data for a client

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  `occupation` varchar(256) NOT NULL,
  `CPF` varchar(18) NOT NULL UNIQUE,
  `profile` TEXT,
  `state` varchar(64),
  `city` varchar(64),
  `created_by` varchar(64),
  `first_access` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_update` TIMESTAMP ON UPDATE CURRENT_TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE  = InnoDB;

CREATE INDEX user_cpf ON user(CPF);


