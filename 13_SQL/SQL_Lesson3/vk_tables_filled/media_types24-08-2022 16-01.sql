#
# TABLE STRUCTURE FOR: media_types
#

DROP TABLE IF EXISTS `media_types`;

CREATE TABLE `media_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Название типа',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Типы медиафайлов';

INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'similique', '1980-05-21 00:23:07', '2013-07-27 13:37:20');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'est', '1992-02-20 01:41:52', '1975-10-01 18:27:05');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'sit', '1999-02-17 05:38:11', '1991-03-26 17:04:22');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (4, 'velit', '2004-09-25 16:24:03', '2017-08-11 01:54:55');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (5, 'eum', '2013-01-08 00:05:43', '2013-05-22 05:17:55');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (6, 'animi', '1999-11-30 18:06:03', '1972-03-13 06:27:43');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (7, 'porro', '2001-03-13 02:39:43', '2014-10-06 20:14:02');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (8, 'repellendus', '2018-05-28 17:43:06', '1977-01-02 14:10:05');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (9, 'delectus', '1985-06-23 19:55:04', '1995-10-28 17:38:54');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (10, 'excepturi', '1970-05-14 08:32:00', '1982-03-01 01:07:57');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (11, 'ut', '1973-09-02 10:59:44', '1973-01-06 15:24:34');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (12, 'soluta', '1996-09-19 09:48:45', '1972-07-24 13:35:21');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (13, 'culpa', '1985-02-21 09:28:41', '2022-06-19 09:17:13');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (14, 'consequatur', '1987-01-03 09:58:53', '2018-11-28 20:47:43');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (15, 'facilis', '1997-05-16 00:09:20', '1989-12-13 16:25:00');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (16, 'molestiae', '1986-03-22 00:08:26', '1971-01-01 06:08:41');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (17, 'odio', '1979-10-21 16:16:59', '1993-07-13 22:11:02');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (18, 'quasi', '2008-10-08 16:30:41', '2016-04-11 23:41:00');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (19, 'sapiente', '1983-05-10 17:45:52', '1995-05-05 16:28:40');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (20, 'et', '1992-09-30 18:02:24', '1984-03-07 06:00:48');


