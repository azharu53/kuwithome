CREATE TABLE IF NOT EXISTS `#__banner_images` (
`id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,

`ordering` INT(11)  NOT NULL ,
`state` TINYINT(1)  NOT NULL ,
`created_by` INT(11)  NOT NULL ,
`modified_by` INT(11)  NOT NULL ,
`image_name` VARCHAR(255)  NOT NULL ,
`image_path` VARCHAR(255)  NOT NULL ,
`text_banner` TEXT NOT NULL ,
PRIMARY KEY (`id`)
) DEFAULT COLLATE=utf8mb4_unicode_ci;

