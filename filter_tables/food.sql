CREATE TABLE `food` (
	`id` INT(11) UNSIGNED NOT NULL, 
	`name` TEXT DEFAULT NULL, 
	`menu` TEXT DEFAULT NULL, 
	`content` LONGTEXT DEFAULT NULL, 
	PRIMARY KEY (`id`)
) CHARACTER SET = 'UTF8';
