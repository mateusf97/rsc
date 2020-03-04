-- source /mnt/c/Users/vitri/Desktop/RSC/RSC/scripts/database.sql

USE vitriniKeys;

-- @autor Mateus Felipe - mateus_f97@hotmail.com
-- This table was created to save the observation status key for a user

ALTER TABLE key_list ADD `extra` VARCHAR(256) DEFAULT NULL;
