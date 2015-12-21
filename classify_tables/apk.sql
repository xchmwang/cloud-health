CREATE TABLE `apk` (
	`id` INT(11) NOT NULL,
	`name` VARCHAR(255) DEFAULT NULL,
	`star` VARCHAR(255) DEFAULT NULL,
	`down_num` VARCHAR(255) DEFAULT NULL,
	`img_url` VARCHAR(255) DEFAULT NULL,
	`apk_url` VARCHAR(255) DEFAULT NULL,
	`description` LONGTEXT DEFAULT NULL,
	PRIMARY KEY (`id`)
) CHARACTER SET = 'UTF8';