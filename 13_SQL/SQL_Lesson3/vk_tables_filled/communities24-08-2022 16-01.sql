#
# TABLE STRUCTURE FOR: communities
#

DROP TABLE IF EXISTS `communities`;

CREATE TABLE `communities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор сроки',
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Название группы',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Группы';

INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'odit', '1987-10-05 12:03:21', '1979-01-17 22:02:35');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'est', '1995-12-15 02:29:51', '2000-02-17 21:09:16');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'delectus', '2000-10-20 20:56:32', '2002-07-29 11:40:25');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (4, 'officia', '1984-10-19 02:39:59', '2018-09-17 17:14:13');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (5, 'ullam', '2017-11-13 03:29:43', '2007-04-03 16:20:16');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (6, 'consequatur', '1973-02-18 03:42:36', '2007-10-16 02:18:07');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (7, 'alias', '1970-06-14 23:23:37', '1987-02-04 19:04:54');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (8, 'non', '2018-04-04 23:13:40', '1970-06-26 07:05:00');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (9, 'autem', '1987-09-24 16:41:56', '1977-05-31 03:12:56');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (10, 'qui', '2014-05-31 06:57:19', '1976-10-22 14:46:04');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (11, 'ex', '1986-10-26 00:56:25', '1990-05-07 23:12:20');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (12, 'occaecati', '1977-03-28 19:41:13', '2002-11-26 18:53:13');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (13, 'sapiente', '1975-11-13 11:39:35', '1974-01-23 05:34:04');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (14, 'excepturi', '1986-03-25 12:42:14', '1974-12-08 06:19:28');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (15, 'enim', '1996-01-14 04:17:56', '1989-03-17 02:10:21');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (16, 'nostrum', '1996-08-01 08:40:23', '1976-01-04 22:39:05');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (17, 'odio', '1987-06-23 12:13:31', '1973-07-03 17:50:59');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (18, 'et', '2011-02-20 06:29:00', '1992-06-24 15:58:07');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (19, 'sed', '1998-01-26 21:42:29', '2008-03-05 05:06:28');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (20, 'dolore', '2011-07-26 22:30:37', '2018-11-16 00:27:21');


