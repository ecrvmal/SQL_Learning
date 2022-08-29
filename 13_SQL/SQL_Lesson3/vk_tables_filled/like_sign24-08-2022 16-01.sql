#
# TABLE STRUCTURE FOR: like_sign
#

DROP TABLE IF EXISTS `like_sign`;

CREATE TABLE `like_sign` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Название значка Like',
  `like_img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Путь к файлу c like_img',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Значки like';

INSERT INTO `like_sign` (`id`, `name`, `like_img`) VALUES (1, 'voluptates', '');
INSERT INTO `like_sign` (`id`, `name`, `like_img`) VALUES (2, 'modi', '');
INSERT INTO `like_sign` (`id`, `name`, `like_img`) VALUES (3, 'est', '');
INSERT INTO `like_sign` (`id`, `name`, `like_img`) VALUES (4, 'quia', '');
INSERT INTO `like_sign` (`id`, `name`, `like_img`) VALUES (5, 'eum', '');
INSERT INTO `like_sign` (`id`, `name`, `like_img`) VALUES (6, 'rerum', '');
INSERT INTO `like_sign` (`id`, `name`, `like_img`) VALUES (7, 'voluptas', '');
INSERT INTO `like_sign` (`id`, `name`, `like_img`) VALUES (8, 'quod', '');
INSERT INTO `like_sign` (`id`, `name`, `like_img`) VALUES (9, 'et', '');
INSERT INTO `like_sign` (`id`, `name`, `like_img`) VALUES (10, 'suscipit', '');
INSERT INTO `like_sign` (`id`, `name`, `like_img`) VALUES (11, 'perspiciatis', '');
INSERT INTO `like_sign` (`id`, `name`, `like_img`) VALUES (12, 'necessitatibus', '');
INSERT INTO `like_sign` (`id`, `name`, `like_img`) VALUES (13, 'consequuntur', '');
INSERT INTO `like_sign` (`id`, `name`, `like_img`) VALUES (14, 'quibusdam', '');
INSERT INTO `like_sign` (`id`, `name`, `like_img`) VALUES (15, 'commodi', '');
INSERT INTO `like_sign` (`id`, `name`, `like_img`) VALUES (16, 'ab', '');
INSERT INTO `like_sign` (`id`, `name`, `like_img`) VALUES (17, 'porro', '');
INSERT INTO `like_sign` (`id`, `name`, `like_img`) VALUES (18, 'illum', '');
INSERT INTO `like_sign` (`id`, `name`, `like_img`) VALUES (19, 'error', '');
INSERT INTO `like_sign` (`id`, `name`, `like_img`) VALUES (20, 'exercitationem', '');


