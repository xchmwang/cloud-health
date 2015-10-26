CREATE TABLE `news` (
	`id` INT(11) UNSIGNED NOT NULL, 
	`title` TEXT DEFAULT NULL, 
	`tag` TEXT DEFAULT NULL, 
	`content` LONGTEXT DEFAULT NULL, 
	PRIMARY KEY (`id`)
) CHARACTER SET = 'UTF8';
