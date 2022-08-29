#
# TABLE STRUCTURE FOR: communities
#

DROP DATABASE IF EXISTS vk;
CREATE DATABASE vk;
USE vk;

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


#
# TABLE STRUCTURE FOR: communities_users
#

DROP TABLE IF EXISTS `communities_users`;

CREATE TABLE `communities_users` (
  `community_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на группу',
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  PRIMARY KEY (`community_id`,`user_id`) COMMENT 'Составной первичный ключ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Участники групп, связь между пользователями и группами';

INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 1, '2003-08-18 01:10:17');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 21, '1976-10-11 03:52:26');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 41, '1981-09-22 12:30:04');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 2, '1999-06-10 18:18:51');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 22, '1981-12-22 08:12:26');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 42, '2019-01-22 09:21:22');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 3, '2012-07-18 11:45:50');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 23, '1993-01-20 05:11:50');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 43, '1979-03-14 21:52:49');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 4, '2010-06-02 08:30:20');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 24, '1984-04-04 04:42:15');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 44, '1973-03-26 09:47:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 5, '2006-12-28 23:48:12');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 25, '1972-05-04 18:39:36');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 45, '1983-06-28 18:34:07');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 6, '1995-05-22 03:36:13');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 26, '1984-11-03 03:51:10');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 46, '2002-05-26 15:33:17');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 7, '1986-04-28 15:21:07');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 27, '2021-03-07 14:23:20');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 47, '2021-11-14 08:13:31');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 8, '1976-05-08 01:41:57');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 28, '2020-04-28 15:46:53');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 48, '1975-12-26 00:02:53');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 9, '2019-12-14 09:13:51');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 29, '1996-12-06 03:22:02');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 49, '2020-08-12 00:37:03');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 10, '1996-03-04 09:57:40');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 30, '1973-10-21 13:24:46');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 50, '1985-10-22 03:16:11');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (11, 11, '2013-05-04 05:27:21');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (11, 31, '1996-02-12 04:01:36');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (12, 12, '1973-04-25 08:34:27');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (12, 32, '1999-07-02 02:29:17');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (13, 13, '1986-12-25 04:14:35');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (13, 33, '2021-11-06 08:37:50');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (14, 14, '1977-12-30 20:58:32');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (14, 34, '1994-10-03 01:59:20');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (15, 15, '2010-01-30 09:03:34');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (15, 35, '1998-03-31 21:52:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (16, 16, '1977-08-15 06:25:10');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (16, 36, '1975-03-28 19:37:49');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (17, 17, '1988-03-03 09:09:10');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (17, 37, '2020-01-16 23:35:41');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (18, 18, '1996-09-01 14:20:26');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (18, 38, '2010-03-08 13:04:37');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (19, 19, '1977-01-14 23:17:21');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (19, 39, '1988-02-20 15:31:06');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (20, 20, '1995-07-07 11:04:04');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (20, 40, '2019-02-05 07:08:23');


#
# TABLE STRUCTURE FOR: friendship
#

DROP TABLE IF EXISTS `friendship`;

CREATE TABLE `friendship` (
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на инициатора дружеских отношений',
  `friend_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на получателя приглашения дружить',
  `status_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на статус (текущее состояние) отношений',
  `requested_at` datetime DEFAULT current_timestamp() COMMENT 'Время отправления приглашения дружить',
  `confirmed_at` datetime DEFAULT NULL COMMENT 'Время подтверждения приглашения',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`user_id`,`friend_id`) COMMENT 'Составной первичный ключ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Таблица дружбы';

INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (2, 56, 3, '1989-01-08 21:02:09', '1996-09-23 00:13:23', '1998-08-02 17:19:22', '1988-03-24 09:53:17');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (2, 61, 1, '1992-05-12 16:10:11', '2013-03-31 13:05:50', '1978-11-09 00:06:12', '2008-01-18 00:19:27');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (2, 90, 3, '1972-06-27 01:02:26', '1974-09-12 12:04:13', '2011-01-07 19:09:17', '1973-08-30 06:29:15');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (4, 97, 3, '2020-05-16 18:00:57', '1974-01-09 18:09:44', '1975-10-16 09:38:31', '1977-12-20 00:26:13');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (5, 94, 4, '1983-08-17 19:15:47', '1995-02-15 17:41:36', '2011-05-11 05:39:28', '1979-07-29 21:19:52');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (6, 50, 2, '2015-11-15 02:41:09', '2007-12-04 03:13:15', '1982-12-04 04:25:38', '2018-12-31 18:07:07');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (6, 100, 1, '2001-05-13 01:06:24', '2021-03-01 22:21:16', '2005-03-19 21:34:35', '1985-03-26 13:27:37');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (7, 52, 2, '2008-04-29 22:48:06', '1987-05-26 00:20:33', '2020-11-06 11:07:17', '2004-04-02 09:17:17');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (7, 70, 3, '2000-12-18 23:18:33', '2003-07-05 08:16:19', '1973-01-10 07:44:14', '1996-11-14 13:36:46');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (7, 72, 1, '1986-10-27 04:14:29', '1986-06-26 04:17:41', '2001-03-17 02:43:06', '2021-06-01 23:33:56');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (9, 10, 4, '1979-10-08 21:36:15', '1994-07-03 08:11:42', '1976-06-20 00:25:09', '2018-09-17 00:05:21');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (12, 56, 3, '1999-04-23 21:59:28', '1977-08-22 15:15:41', '2018-10-16 13:41:18', '2012-08-30 16:55:13');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (13, 12, 1, '1978-11-26 01:36:48', '2001-05-17 21:12:51', '2002-07-03 20:23:41', '2020-04-30 13:15:26');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (13, 99, 2, '2000-11-15 03:29:32', '1997-05-30 05:41:17', '2017-11-04 12:13:33', '1977-01-04 04:18:02');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (14, 59, 2, '1992-10-12 22:38:21', '1971-03-18 02:26:31', '1986-02-26 17:20:12', '1980-10-29 08:47:50');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (15, 18, 2, '1979-01-11 13:25:42', '1999-08-08 12:53:45', '2005-10-13 04:02:23', '1990-07-20 01:55:19');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (17, 47, 1, '1976-11-10 08:56:07', '1996-09-30 20:59:28', '1973-08-14 20:40:18', '1978-03-20 08:01:13');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (17, 66, 2, '1970-01-12 11:20:47', '2018-06-10 01:49:45', '2005-01-29 01:57:46', '1970-09-10 09:58:57');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (20, 14, 3, '1982-03-01 15:52:16', '1971-03-31 17:19:49', '1998-01-21 13:22:10', '2022-07-24 20:22:32');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (20, 80, 2, '1972-02-27 08:05:15', '1988-02-21 15:23:59', '1971-10-05 18:17:48', '1998-01-17 11:44:34');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (21, 10, 2, '2015-11-02 12:24:42', '1990-03-03 09:45:10', '2015-08-28 17:52:34', '2016-08-13 15:44:14');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (21, 83, 4, '2000-11-10 02:07:16', '2014-09-20 14:20:10', '1989-10-19 00:07:16', '1987-10-18 16:18:43');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (21, 93, 4, '1978-06-03 22:31:04', '1978-09-03 06:52:54', '1970-07-14 00:20:02', '1995-03-11 00:17:32');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (22, 89, 1, '1987-07-02 16:23:51', '2015-03-02 07:54:33', '1985-10-17 21:09:38', '1988-12-10 22:44:17');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (23, 58, 1, '1992-08-10 01:58:23', '1979-10-20 08:01:24', '1990-10-09 23:41:23', '1983-06-12 02:38:57');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (24, 53, 4, '2020-07-14 02:05:05', '2017-09-08 22:44:55', '1981-04-28 08:24:43', '2004-01-07 23:49:52');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (27, 17, 4, '1973-01-24 18:19:52', '1989-03-08 11:13:36', '2001-01-03 23:22:14', '1976-08-10 16:57:17');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (27, 91, 1, '1983-04-06 06:16:46', '2011-01-21 22:25:08', '2007-04-02 06:06:24', '2022-07-10 15:33:36');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (28, 84, 3, '1985-01-16 07:58:37', '2010-03-18 13:37:24', '1994-01-28 18:30:21', '1973-08-12 10:10:16');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (29, 27, 3, '2018-07-22 22:39:57', '1978-09-16 20:23:31', '1978-04-23 14:14:32', '2012-11-12 03:17:58');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (30, 9, 1, '2010-09-30 03:14:11', '1999-01-20 22:16:30', '1989-12-14 01:20:21', '2005-05-28 18:12:58');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (31, 54, 2, '2007-11-12 08:44:53', '1971-05-15 18:49:56', '2013-01-15 16:07:20', '1998-01-17 09:04:34');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (32, 11, 2, '2015-12-23 17:42:31', '2006-04-22 21:14:45', '2017-09-11 10:25:11', '2010-06-13 23:06:48');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (32, 86, 4, '2002-07-25 03:31:31', '2018-01-01 15:48:35', '2015-03-11 14:22:15', '1984-12-09 03:28:16');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (33, 31, 1, '2000-02-18 02:39:06', '1990-09-22 11:51:05', '1977-12-03 07:09:40', '1979-05-23 05:26:52');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (33, 66, 1, '1983-11-08 13:27:20', '2008-05-28 12:15:53', '2014-02-08 10:46:08', '2009-06-20 04:17:28');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (35, 24, 3, '2003-07-16 02:56:48', '2022-06-04 21:19:38', '2000-11-30 20:49:03', '2017-09-03 19:56:52');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (35, 50, 1, '1977-07-11 21:33:10', '1971-11-16 20:34:56', '1979-08-16 12:26:41', '2016-12-04 00:31:13');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (36, 51, 3, '1994-07-30 02:29:13', '1973-08-31 04:58:24', '1984-09-18 02:27:37', '1992-01-21 09:33:16');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (36, 92, 3, '1977-09-19 04:59:20', '1976-06-02 11:30:27', '2008-02-01 20:18:33', '2019-01-30 16:24:45');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (37, 51, 4, '1989-01-17 13:23:14', '2022-05-01 07:48:29', '2021-08-07 03:03:51', '1994-05-01 08:47:55');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (37, 82, 1, '1973-09-10 10:47:10', '1988-08-31 07:51:16', '2020-03-18 22:01:35', '1997-04-04 10:08:53');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (39, 22, 1, '1993-12-21 07:24:38', '1990-04-15 15:42:16', '1973-07-10 10:00:51', '2009-09-27 05:25:38');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (40, 8, 3, '1984-06-02 06:47:09', '2009-10-13 12:52:16', '2007-06-23 17:45:48', '2019-07-16 19:34:13');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (40, 93, 4, '1994-02-07 06:44:52', '2000-11-06 14:05:33', '1989-03-14 13:41:17', '1979-05-11 14:26:51');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (42, 11, 3, '2016-06-26 12:07:27', '1980-10-16 18:45:10', '2010-02-01 16:29:57', '1980-07-22 09:18:31');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (42, 27, 2, '2019-10-19 09:45:16', '2000-12-14 02:41:23', '1987-04-09 10:31:43', '2013-12-09 23:07:26');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (42, 58, 3, '2016-01-07 22:35:35', '2017-04-07 02:24:38', '2017-05-19 04:03:08', '2000-07-27 08:58:06');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (43, 70, 2, '1976-08-27 21:47:46', '1992-12-06 01:21:36', '1982-09-21 05:21:52', '1997-07-02 18:09:24');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (44, 28, 4, '2000-08-15 23:21:35', '1976-02-04 03:58:20', '2011-06-01 00:46:54', '2004-02-20 12:50:09');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (44, 41, 2, '2008-11-14 09:03:21', '1983-02-25 07:58:50', '1977-09-10 13:54:33', '1977-09-20 01:44:08');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (45, 30, 2, '2015-05-11 21:14:26', '2011-02-17 16:45:00', '1993-08-21 07:09:39', '2013-01-01 01:15:32');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (47, 40, 2, '1978-01-05 01:56:07', '2009-10-25 02:58:51', '1977-01-22 22:15:56', '1995-08-06 07:06:47');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (47, 84, 4, '2000-05-01 02:51:48', '1980-04-04 21:29:20', '2001-11-24 19:17:07', '1976-03-18 04:39:30');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (48, 3, 2, '1977-09-24 07:23:53', '2009-03-05 01:43:16', '1980-07-13 10:37:28', '1975-10-19 09:58:22');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (48, 30, 4, '1983-10-13 04:07:51', '1992-08-22 00:57:00', '1974-07-18 18:46:30', '2004-10-21 12:19:55');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (50, 44, 4, '1977-06-11 18:16:43', '1986-09-14 09:31:26', '2011-07-31 02:51:29', '1993-07-24 08:57:48');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (50, 53, 4, '2014-09-28 11:43:05', '1999-05-06 20:26:49', '1978-10-02 10:47:25', '1987-06-08 10:33:18');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (53, 53, 4, '2014-07-14 13:03:01', '1986-12-26 10:38:39', '2007-03-02 03:09:28', '2002-09-02 23:25:53');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (54, 7, 3, '1984-08-22 06:51:51', '2005-11-09 15:13:20', '1972-04-20 11:39:06', '1997-10-10 09:29:11');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (54, 54, 3, '2008-09-07 09:10:13', '2008-07-19 11:58:14', '1981-12-20 17:29:51', '1970-03-15 00:57:13');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (54, 56, 1, '1986-04-29 11:34:10', '1996-11-18 04:53:15', '2016-04-03 12:27:27', '1977-07-11 16:38:11');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (59, 98, 3, '1992-10-08 23:29:05', '2018-04-30 00:19:31', '1986-07-08 03:52:23', '2008-10-15 11:27:58');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (61, 5, 2, '2006-06-30 04:40:21', '1999-03-13 11:44:54', '1994-01-24 15:59:36', '1973-04-19 16:55:13');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (61, 82, 3, '1992-04-09 03:14:18', '1994-07-18 20:18:47', '1973-06-08 15:25:34', '1992-10-29 10:40:54');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (63, 32, 2, '2012-02-15 03:17:53', '1984-03-19 21:43:36', '1978-01-09 18:05:04', '1995-01-28 07:30:14');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (63, 41, 4, '2016-11-29 09:29:03', '1985-04-25 06:50:44', '1994-08-06 11:19:35', '2017-05-06 22:58:31');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (64, 3, 4, '1972-10-10 03:04:26', '1980-05-24 10:53:58', '1997-06-05 22:25:45', '1980-07-07 01:17:51');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (64, 57, 1, '1971-10-10 16:04:25', '1970-12-17 19:40:46', '1971-07-24 04:16:00', '2006-10-07 08:09:13');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (67, 13, 1, '2010-04-21 11:42:22', '1973-11-20 15:32:16', '1990-01-16 19:30:03', '1972-02-17 00:59:55');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (69, 42, 2, '1985-05-16 22:59:27', '1977-01-24 19:54:55', '2003-01-22 11:38:59', '1974-08-05 16:36:27');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (72, 55, 1, '2018-08-12 23:42:50', '1988-02-29 07:25:14', '1993-08-20 13:00:11', '2017-03-07 16:11:22');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (72, 61, 4, '2010-09-08 14:43:43', '2001-05-31 23:17:30', '1983-07-21 03:56:20', '1985-03-06 21:22:57');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (73, 45, 4, '2002-10-12 04:18:22', '2003-04-08 06:07:54', '1996-08-18 02:02:54', '1978-08-02 13:30:18');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (76, 89, 1, '1979-05-16 04:21:32', '1983-02-24 10:28:22', '1993-02-05 12:24:39', '2003-11-16 08:15:24');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (76, 92, 3, '1974-06-25 07:10:46', '1980-01-01 03:18:44', '1989-02-01 04:42:18', '1974-11-30 19:43:16');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (78, 2, 3, '1992-01-08 01:24:27', '2013-12-23 07:48:56', '2011-11-26 14:32:09', '2017-02-28 21:12:26');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (78, 29, 1, '1970-07-22 18:35:19', '2013-07-08 19:58:36', '2011-07-05 04:36:46', '1997-04-30 14:48:54');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (78, 45, 3, '2013-03-05 13:37:14', '1971-10-27 22:39:39', '1992-08-14 15:07:43', '2006-01-31 12:21:08');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (78, 59, 1, '2010-11-20 21:26:57', '2021-10-13 11:49:19', '1998-12-15 01:02:42', '1993-09-03 21:05:12');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (78, 91, 3, '2006-04-26 04:15:34', '1971-11-24 17:54:55', '2008-09-10 17:18:31', '2020-12-29 20:36:15');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (78, 92, 4, '2004-06-26 00:16:47', '1977-10-01 02:29:33', '2008-09-05 05:49:00', '2015-10-24 21:15:24');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (82, 53, 1, '1977-01-03 10:14:34', '2007-01-20 18:21:35', '1978-03-24 05:09:11', '1978-08-06 07:22:16');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (82, 84, 1, '1972-07-30 02:33:04', '2017-02-18 12:47:09', '1984-09-10 11:48:53', '1991-06-09 23:30:37');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (84, 29, 4, '1997-02-03 14:25:18', '2007-07-21 23:22:37', '2022-04-05 11:44:46', '1984-04-23 18:09:57');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (85, 85, 1, '1988-11-28 03:30:49', '2017-08-02 22:03:10', '1999-07-05 13:06:43', '1985-08-25 11:40:14');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (90, 26, 3, '2013-05-09 09:24:45', '2016-03-24 15:53:04', '1997-01-22 12:47:05', '1994-03-13 02:10:49');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (90, 38, 2, '2002-12-24 14:29:28', '1983-09-18 03:31:15', '1971-12-08 22:36:39', '1990-06-03 18:07:11');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (91, 56, 3, '2022-07-02 02:18:49', '2015-02-04 10:29:27', '2021-11-20 11:41:20', '1996-05-12 21:18:23');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (91, 60, 2, '2012-02-17 14:29:44', '2004-07-02 01:41:08', '1972-06-09 11:19:14', '1985-07-11 13:26:02');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (91, 81, 4, '1976-04-30 11:51:11', '2004-03-19 06:32:11', '2014-05-08 22:26:47', '1977-07-04 17:22:31');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (93, 27, 2, '2005-03-30 21:00:40', '1999-10-17 13:11:16', '1998-04-27 21:16:53', '2004-12-03 07:02:54');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (93, 44, 4, '2007-06-27 17:01:23', '1980-02-24 20:20:00', '2010-08-21 02:44:31', '1974-06-22 13:28:32');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (95, 68, 4, '1989-10-18 21:13:11', '1987-11-29 18:58:14', '2003-06-27 09:31:41', '1979-12-23 02:44:55');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (95, 83, 4, '1988-02-05 19:38:16', '1993-01-22 05:43:25', '2000-09-10 05:40:47', '1985-09-09 18:21:03');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (96, 58, 3, '1997-03-12 11:13:35', '2019-12-11 12:30:16', '2019-01-17 17:13:24', '2003-05-08 17:46:19');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (96, 82, 2, '1976-09-23 12:59:36', '1998-10-23 23:37:57', '2011-05-08 16:32:52', '1983-10-13 05:21:30');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (99, 89, 2, '1979-01-12 19:55:20', '1975-11-27 14:47:26', '1992-07-07 21:44:40', '1970-12-08 07:27:17');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (100, 2, 1, '1983-07-12 11:24:06', '1976-03-20 21:15:27', '1996-09-02 22:09:11', '1979-05-07 01:11:31');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (100, 7, 2, '2010-04-26 08:50:57', '2003-12-31 08:08:37', '1996-07-27 23:57:16', '2018-11-15 07:02:30');


#
# TABLE STRUCTURE FOR: friendship_statuses
#

DROP TABLE IF EXISTS `friendship_statuses`;

CREATE TABLE `friendship_statuses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Название статуса',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Статусы дружбы';

INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'Friendship_Requested', '2022-08-24 14:50:48', '2022-08-24 14:50:48');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'Friendship_Confirmed', '2022-08-24 14:50:48', '2022-08-24 14:50:48');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'Friendship_Declined', '2022-08-24 14:50:48', '2022-08-24 14:50:48');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (4, 'Friendship_Cancelled', '2022-08-24 14:50:48', '2022-08-24 14:50:48');


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


#
# TABLE STRUCTURE FOR: media
#

DROP TABLE IF EXISTS `media`;

CREATE TABLE `media` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя, который загрузил файл',
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Путь к файлу',
  `size` int(11) NOT NULL COMMENT 'Размер файла',
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'Метаданные файла' CHECK (json_valid(`metadata`)),
  `media_type_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на тип контента',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Медиафайлы';

INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (1, 0, 'Illum et quisquam rem molestias dolor odit. Dolorum in inventore omnis blanditiis qui. Ea nihil distinctio ratione adipisci nulla dolorem. Voluptatibus est ea sint et distinctio.', 286349556, NULL, 1, '1970-03-30 15:04:56', '1998-09-08 19:24:50');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (2, 0, 'Deleniti ea in illum vel nisi architecto non. Totam sit quos nisi amet sint sed. Non magni sint occaecati officia voluptatem tenetur praesentium.', 74303377, NULL, 2, '2017-03-01 21:00:08', '1985-12-09 12:41:08');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (3, 0, 'Nihil ea quos maiores at fugiat. Omnis aut et dolor sed dolorem consequuntur. Laboriosam ut ut consequatur animi non modi at dolores.', 46014623, NULL, 3, '2004-04-21 20:36:31', '1988-02-09 00:25:09');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (4, 0, 'Et ut est magnam beatae veniam quibusdam. Illo earum animi quis. Eius vitae reprehenderit itaque illum officia soluta voluptas tenetur.', 238278796, NULL, 4, '1995-07-03 00:25:57', '1973-07-30 13:15:02');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (5, 0, 'Neque quam eaque tempore reprehenderit ut ut. Incidunt quasi quisquam voluptate iste. Libero quasi aut est. Mollitia dignissimos fugit ullam rerum eaque accusamus.', 330474383, NULL, 5, '2002-05-11 07:20:37', '2019-09-09 08:06:45');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (6, 0, 'Ipsa reprehenderit necessitatibus velit incidunt. Accusantium commodi non omnis ut aliquam fugit autem. Voluptatem odit quod nemo saepe dolores.', 375695299, NULL, 6, '1984-05-22 12:22:28', '2014-05-04 03:04:40');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (7, 0, 'Accusantium velit impedit quo magni cumque nisi. Dolorum odit architecto ut optio earum et sint deleniti.\nEt ea rerum iste molestiae consequuntur. Et in aut repudiandae quae molestiae non.', 339625275, NULL, 7, '1983-09-11 16:01:05', '1992-03-12 00:00:52');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (8, 0, 'Est dolorem quo quisquam non unde dicta. Dolorem odit esse accusamus eum tempora. Non quia dolores quae id cupiditate quibusdam nobis. Asperiores velit voluptate repellat quasi et.', 74138024, NULL, 8, '2008-08-25 16:15:32', '2002-07-01 08:58:50');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (9, 0, 'Omnis molestias eos in sunt. Amet tempora facere possimus consequatur fugit possimus. Reiciendis eos quo officiis qui. Mollitia aspernatur ut cupiditate quia omnis eum in.', 304459514, NULL, 9, '2019-01-30 11:56:31', '2003-05-22 22:59:39');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (10, 0, 'Et molestias unde facilis doloremque aspernatur ullam. Consequatur sit eum cumque rerum corporis ratione quaerat. Architecto ea quas error velit.', 238411300, NULL, 10, '2000-09-22 17:01:41', '2015-05-27 23:51:35');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (11, 0, 'Assumenda ipsum error rerum repudiandae aperiam. Omnis quia distinctio quasi voluptate. Sapiente beatae dolorem sint ut. Soluta sit dolore natus.', 44513087, NULL, 11, '1993-05-04 09:34:32', '1987-05-31 07:34:47');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (12, 0, 'Eos commodi quos cum nulla. Dolorem id modi fugit quisquam quasi ea et quia. Aut et commodi sunt minima commodi id reprehenderit. Sunt et inventore consequatur est nobis quos saepe.', 232778162, NULL, 12, '2020-04-05 12:02:13', '1971-07-04 04:56:48');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (13, 0, 'Voluptatem eum quod ut libero. Laborum quis vel omnis aliquam debitis. Maiores dolor recusandae et dolore.', 189389331, NULL, 13, '2008-03-30 11:04:54', '1981-08-16 15:22:58');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (14, 0, 'Sit quia dolore impedit quas culpa sed et. Laborum animi et quae sunt cum. Ea explicabo reprehenderit laborum illo quos.', 367671019, NULL, 14, '1993-02-10 14:54:31', '2020-12-31 07:23:55');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (15, 0, 'Nisi quae molestiae vel dolorum. Quam sed voluptates distinctio dolorum reiciendis et dolorum dolore.\nQuibusdam voluptas unde hic consequatur corporis. Et facilis non corporis consequatur a quod.', 7636131, NULL, 15, '1990-12-27 13:14:10', '1992-09-28 02:50:16');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (16, 0, 'Ut maiores ad sunt ipsam distinctio. Asperiores quasi magni alias et corporis. Nemo debitis est vel assumenda dolorum non officia et.', 63784147, NULL, 16, '2002-03-26 22:11:58', '2005-07-16 12:59:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (17, 0, 'Repellat error aliquid molestias quia voluptas consequatur. Velit et earum ad possimus voluptatem hic repellendus. Sed qui dolores consequatur. Libero velit dolorum expedita veritatis nisi.', 328466719, NULL, 17, '1975-04-24 01:26:47', '1978-07-25 16:55:29');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (18, 0, 'Deleniti vel aut impedit. Provident quae et beatae dolor mollitia. Neque qui placeat aut illum ut. Earum voluptatibus est repudiandae.', 12618550, NULL, 18, '1973-06-30 03:56:04', '2009-06-02 02:25:09');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (19, 0, 'Velit autem omnis saepe eum. Dolorem labore ut corrupti. Facere aut explicabo hic deserunt sed est qui vel. Et sed iusto aliquid non inventore nihil sunt qui.', 396224094, NULL, 19, '1986-07-10 21:07:39', '1993-08-03 13:28:15');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (20, 0, 'Sint consequatur voluptatum dolores odit et ratione. At voluptatem aut sunt cupiditate quis vel. Labore eos dolor dolorem at repudiandae debitis.', 132585218, NULL, 20, '2018-03-28 10:18:59', '2012-03-23 18:08:49');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (21, 0, 'Voluptate nemo ut excepturi debitis. Facere laudantium facilis amet qui quos. Eum molestiae illo voluptatem veniam numquam corporis eaque doloribus. Quia eos nihil dolorum non eum cupiditate.', 207215432, NULL, 1, '1987-07-10 12:24:09', '2018-05-05 03:51:26');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (22, 0, 'Asperiores ducimus et doloremque eos explicabo eos et. Qui voluptatem ex eius dolores. Quo inventore odio perferendis perferendis.', 223336112, NULL, 2, '2003-05-05 19:42:30', '1977-10-20 00:16:05');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (23, 0, 'Molestias soluta est dolores. Ipsam sequi itaque eum quo iure. Accusantium sit adipisci a repellat quasi.', 49196784, NULL, 3, '1981-06-26 21:08:51', '2020-06-19 22:49:10');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (24, 0, 'Est eum hic porro cupiditate eos vero. Itaque et labore dolor. Et est molestiae animi ab amet et modi.', 274882464, NULL, 4, '1975-10-15 11:21:50', '2002-07-03 00:39:51');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (25, 0, 'Cupiditate et est est ut quidem similique. Aut vel vitae soluta blanditiis et. Eaque nulla alias quasi quia.', 222473761, NULL, 5, '1991-10-06 21:58:08', '1989-07-24 07:07:14');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (26, 0, 'Id deleniti laboriosam incidunt unde repellat at. Quia libero rerum tempore ut molestias.\nAd dicta et sit nihil. Accusamus sapiente et eaque magnam accusantium. Quas occaecati iure laborum voluptate.', 104222952, NULL, 6, '2009-05-22 06:53:25', '1997-06-10 18:41:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (27, 0, 'Iure laborum hic occaecati quaerat. Quis sint tenetur omnis distinctio aut id dicta blanditiis.', 348853010, NULL, 7, '1981-11-23 19:31:49', '1975-11-10 17:12:04');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (28, 0, 'Omnis explicabo ab cupiditate necessitatibus ea porro porro ut. Omnis blanditiis est doloribus laboriosam. Non quia saepe asperiores perferendis non iusto non voluptatem. Aut iusto rem animi rerum.', 128248168, NULL, 8, '1979-08-14 08:14:05', '1977-08-22 23:18:56');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (29, 0, 'Dolore suscipit non aspernatur ratione in natus. Perspiciatis facere saepe est facere vero. Nam perspiciatis ab est.', 335535739, NULL, 9, '1992-12-04 13:12:57', '1987-01-26 05:41:15');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (30, 0, 'Vel sint odio dignissimos et qui. Suscipit nobis quia eum dolorum facilis laborum. Ipsum itaque maiores quisquam vel rerum ut.', 138362404, NULL, 10, '1976-03-15 03:32:50', '1985-07-06 16:53:55');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (31, 0, 'Ut sed aspernatur recusandae ea id consectetur dolor. Voluptatem facere eveniet et hic molestiae tempore nihil. Est rem harum dolore est dolor.', 250396409, NULL, 11, '1973-05-14 00:51:43', '1986-04-16 09:33:18');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (32, 0, 'Accusantium qui voluptatem iusto aperiam magni facere at. Ut voluptatem sed necessitatibus consequatur. Dignissimos ipsa id eius doloremque. Et nam cum aut voluptatem non deserunt.', 331201224, NULL, 12, '2021-12-12 04:18:33', '1982-04-25 20:05:44');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (33, 0, 'Odio tempore et totam est asperiores laboriosam rerum veritatis. Et est neque voluptatum autem ducimus. Enim et ex nisi provident. Aut dolor consectetur deleniti quo tempore voluptatem fuga.', 264894593, NULL, 13, '1979-12-14 22:41:03', '1975-07-30 22:55:07');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (34, 0, 'Unde maxime ullam nulla et incidunt. Nemo dolorum repellat nihil voluptas doloremque autem quo. Ea est occaecati possimus eveniet quod ipsam in.', 43437681, NULL, 14, '2006-10-11 06:28:01', '2015-07-31 09:13:27');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (35, 0, 'Et fugit dolore sint quia rem. Tenetur corrupti assumenda adipisci maiores. Provident rerum delectus velit. Ut alias ab libero ducimus exercitationem.', 160014414, NULL, 15, '2014-10-02 08:29:53', '2003-09-07 09:14:32');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (36, 0, 'Quas soluta non laboriosam sed. Minus ea nostrum veritatis error assumenda velit sed.', 330601232, NULL, 16, '2009-06-30 13:17:05', '2014-11-09 15:28:29');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (37, 0, 'Blanditiis nostrum libero necessitatibus. Id iste ut quasi voluptatum dolor. Aut nihil facere porro et.', 126436419, NULL, 17, '1994-12-01 09:56:22', '1993-07-15 23:57:04');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (38, 0, 'Occaecati qui aut id et beatae nostrum qui. Voluptatem ducimus ut adipisci libero est nihil. Sunt qui quia ex. Qui et vero saepe.', 311459187, NULL, 18, '2003-06-18 20:09:25', '1989-03-07 17:33:09');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (39, 0, 'Harum quas temporibus aspernatur eum facere. Occaecati consectetur corrupti commodi quaerat corrupti illo consequatur. Expedita eum voluptas quidem fugiat tenetur ipsa autem.', 339214335, NULL, 19, '2017-04-03 06:18:47', '1995-06-09 05:45:07');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (40, 0, 'Similique veniam corporis autem quas animi maxime. Est nisi laudantium aut in voluptate. Ut ex necessitatibus voluptatum eveniet fugit voluptate ratione. Molestiae excepturi quo excepturi non.', 309723251, NULL, 20, '2003-08-15 04:12:31', '1995-08-01 13:32:03');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (41, 0, 'Sint ut dolore voluptatibus eaque. Sint possimus culpa quas neque rem aut perspiciatis itaque.', 191776645, NULL, 1, '1988-06-07 08:45:16', '1984-02-14 03:37:27');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (42, 0, 'Accusantium est numquam voluptas a reiciendis unde. Occaecati modi enim nostrum rerum sed nobis pariatur.', 5877730, NULL, 2, '1977-07-26 03:01:38', '2004-11-26 17:28:24');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (43, 0, 'Dolorem omnis a nobis nisi iure expedita accusantium. Doloremque perspiciatis voluptas sequi explicabo vitae. Eos repellat sit ut reprehenderit.', 43650961, NULL, 3, '2000-12-21 23:18:55', '2021-05-06 04:53:05');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (44, 0, 'Ut itaque facilis ut et excepturi. Necessitatibus ipsa laborum deserunt provident molestias cumque. Voluptatem et qui quis reprehenderit earum provident quasi.', 24778304, NULL, 4, '1998-01-15 09:52:38', '1970-04-24 18:41:34');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (45, 0, 'Sunt eos porro ut qui possimus voluptatem. Quia a ratione cum est est illo. Maxime minus qui consequatur eum aperiam et possimus necessitatibus. Eum id quo totam tempore aut ratione.', 92527828, NULL, 5, '1983-03-19 19:23:31', '2014-11-24 11:18:01');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (46, 0, 'Impedit omnis ad perferendis dolor molestiae ipsum non. Recusandae est voluptatem aut eligendi nobis quis quae. Cum omnis natus ut deleniti optio eum officiis in.', 153795494, NULL, 6, '2016-05-10 07:15:44', '2004-12-15 15:46:27');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (47, 0, 'Doloribus deleniti aut sequi id explicabo porro quaerat. Doloremque sint asperiores et. Velit voluptate aliquid earum consequatur maiores sed nulla. Sequi iure vitae tempore molestiae provident est.', 146144057, NULL, 7, '2003-08-18 16:35:59', '1995-10-27 09:06:24');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (48, 0, 'Ad veniam nostrum nostrum asperiores enim harum. Voluptatibus in qui tempore quibusdam hic doloribus est blanditiis. Necessitatibus eveniet et atque. Ea illo laborum ex necessitatibus dolorem labore.', 358698956, NULL, 8, '1973-02-13 19:09:23', '2020-04-26 11:29:33');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (49, 0, 'Quos hic est voluptate. Culpa modi itaque iusto quia odio quasi at. Qui aliquid eligendi natus. Incidunt corrupti sunt quisquam occaecati.', 182273821, NULL, 9, '1996-12-01 18:35:17', '2005-04-17 12:45:14');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (50, 0, 'Veritatis eaque labore fugiat dolore. Inventore ut suscipit hic porro. Asperiores sint rerum et laborum omnis. Porro quis tempora nesciunt minima illum in.', 26075159, NULL, 10, '1983-10-19 22:37:47', '1995-12-26 10:10:19');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (51, 0, 'Eos ipsum magni ipsam consequatur quas. Voluptates in aspernatur quisquam sit animi dolor. Velit voluptas consequuntur molestiae in sapiente laboriosam.', 53311653, NULL, 11, '1990-08-25 03:05:57', '2019-03-21 03:44:46');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (52, 0, 'Adipisci sit est voluptatem. Aspernatur eligendi et veritatis fugiat. Qui dolorem quo aut amet ducimus laborum sed cupiditate.', 378414045, NULL, 12, '1978-02-04 04:04:05', '1979-03-01 15:11:11');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (53, 0, 'Aut similique ullam maiores qui soluta facere. Et quo voluptas ut eaque. Similique autem et delectus necessitatibus.', 343610986, NULL, 13, '2020-09-07 05:59:04', '2010-08-07 11:55:16');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (54, 0, 'Nemo nisi et ad aperiam. Ea eaque dolore nemo a minima est. Et aperiam consequatur et sit. Excepturi iste beatae esse excepturi ea quo.', 331832606, NULL, 14, '2009-07-30 11:47:28', '1985-11-03 13:09:45');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (55, 0, 'Sunt illum doloribus unde maiores. Voluptatem incidunt molestias corporis nam. Laboriosam nisi exercitationem praesentium dignissimos enim veniam eaque. Id molestias molestiae est iste autem.', 136026492, NULL, 15, '1983-10-29 19:38:39', '2013-04-12 06:11:31');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (56, 0, 'Ea rem enim adipisci aut laboriosam. Deserunt debitis ullam ipsam doloribus nemo consequatur. Veritatis ut eligendi et ipsa. Doloremque odit optio error facilis hic rerum pariatur.', 358775901, NULL, 16, '1975-06-03 03:52:59', '1994-06-21 21:23:27');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (57, 0, 'Ut eum pariatur quo illum. Aspernatur minima dignissimos facere. Aspernatur est autem et omnis eius. Dicta adipisci ratione maxime nam.', 306372578, NULL, 17, '2017-04-27 22:46:37', '2020-01-10 16:38:13');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (58, 0, 'Aut corporis accusantium quam facere similique. Dolor dolores architecto earum aut similique alias aut.', 352142313, NULL, 18, '1978-06-24 22:45:26', '1977-09-14 10:08:57');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (59, 0, 'Incidunt maiores aut sint repudiandae distinctio dolorum occaecati assumenda. Quaerat quia quia est iste molestias. Sed quia expedita neque ipsa enim expedita. Deserunt vel nobis quos suscipit.', 127457924, NULL, 19, '2003-07-01 23:23:20', '1989-10-14 22:26:10');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (60, 0, 'Ullam est debitis facilis soluta. Repellendus rerum cumque dolor eos sit voluptates. Quidem vel est et quas vero laboriosam est. Tenetur consectetur quae sapiente.', 73259364, NULL, 20, '1990-07-20 16:13:36', '1982-04-25 14:25:06');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (61, 0, 'Necessitatibus quae velit necessitatibus exercitationem ab. Sunt expedita nulla aspernatur reprehenderit. Et at consequatur qui non dolor vitae illo.', 64846936, NULL, 1, '2015-05-13 17:43:06', '1975-10-24 23:16:45');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (62, 0, 'Quo et officia eius dolores sed quidem. Facilis aut quia aspernatur est. Accusantium nesciunt magni nihil quis dignissimos.', 140211571, NULL, 2, '1999-06-24 07:57:23', '2000-06-23 11:49:06');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (63, 0, 'Omnis modi ut assumenda. Ea ipsum ipsa molestiae vitae vero porro voluptas. Vero est omnis error delectus. Quo enim amet sint explicabo fugiat eum.', 278834478, NULL, 3, '2002-12-13 02:58:23', '2022-05-16 03:09:34');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (64, 0, 'Adipisci illum optio nostrum labore illum eos eos. In est laborum totam aut ducimus doloremque rerum voluptatum. Dolores libero veritatis porro. Reprehenderit dolore placeat deleniti consequatur.', 195935053, NULL, 4, '1997-12-07 23:24:32', '1974-12-27 07:16:42');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (65, 0, 'Illum cumque vel rerum quam illo beatae et. Ut sint quisquam hic consequatur sunt suscipit. Fugit natus dolor eum et voluptatem odit. Est natus consectetur voluptas.', 348782299, NULL, 5, '1990-06-30 23:42:16', '1985-05-14 04:42:37');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (66, 0, 'Voluptatum in eum quia adipisci et. Soluta voluptatum qui expedita est. Ut incidunt enim sequi nisi. Odio labore atque dolorem itaque rerum rerum deleniti harum.', 359950822, NULL, 6, '2013-12-13 02:21:03', '2021-07-14 03:44:34');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (67, 0, 'Voluptas ut qui sit qui modi. Veritatis ex repellendus nemo rerum similique consequuntur recusandae qui. Maxime sint enim aut ipsum vel. Mollitia pariatur ut rem ex doloremque et.', 391042060, NULL, 7, '2000-11-18 00:23:54', '1978-04-17 10:07:52');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (68, 0, 'Eos nihil vel maxime. Iste dolor consequatur facilis rerum mollitia modi quam. Et amet consequuntur ab et et. Possimus placeat quo autem inventore.', 176757941, NULL, 8, '1974-08-31 16:57:41', '1998-06-14 07:18:09');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (69, 0, 'Consequatur voluptatem rerum velit tempora tempora ad sint. Voluptate nemo aliquam illo architecto. Nulla repellendus eius libero recusandae et enim. Dolores dignissimos quos et amet et quia neque.', 257789954, NULL, 9, '2001-10-12 03:49:42', '1997-07-18 07:46:03');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (70, 0, 'Consequatur et nostrum officia minima. Officiis suscipit enim illo maxime quia qui quis. In vel rerum est et eius cumque.', 209632124, NULL, 10, '2019-11-05 09:01:31', '1995-05-15 14:07:43');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (71, 0, 'A sequi quia ab pariatur commodi aut recusandae fuga. Dicta dolore voluptate in iusto voluptates cum sed. Ab voluptas sint id qui. Expedita quis magnam voluptatem veniam laboriosam quia.', 49261879, NULL, 11, '1978-11-15 08:00:31', '1990-12-07 22:47:25');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (72, 0, 'Magnam tenetur libero ut facilis omnis. Veritatis dolorum ut ea vitae maiores. Voluptatem consectetur rerum voluptatem ex delectus aut dolores. Dicta velit eum et iure.', 33212900, NULL, 12, '2011-02-16 03:36:11', '2000-05-07 03:20:50');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (73, 0, 'Iure impedit cum ut voluptatum consectetur sit. Adipisci reiciendis soluta ut sint consequatur. Molestiae amet est harum asperiores quia. Quos nam fugit ut est consequatur.', 125322000, NULL, 13, '1980-03-29 12:17:45', '2018-04-22 23:56:56');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (74, 0, 'Ab quo est hic. Sint labore sit ullam. Sunt laboriosam harum voluptatem voluptatum esse velit eaque. Blanditiis voluptatem sequi officia deleniti.', 25247859, NULL, 14, '2015-10-10 17:25:28', '2021-08-28 13:25:49');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (75, 0, 'Omnis aut aut qui fuga occaecati nam est sint. Impedit labore aut dolorem quidem quisquam. Ad error eligendi recusandae incidunt et eos quam quo. Porro quaerat ipsa velit sed.', 131366431, NULL, 15, '1995-04-02 18:03:05', '1985-05-05 07:46:56');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (76, 0, 'Autem expedita placeat non hic. Reiciendis ipsam corporis corporis delectus architecto aut. Voluptas temporibus magni rerum sint.', 92170525, NULL, 16, '1997-05-25 16:12:56', '2018-05-22 02:38:35');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (77, 0, 'Eum voluptatem soluta suscipit deleniti. Nulla ipsum quia dolor. Cum dolor et officia iusto occaecati ex in qui. Dolores architecto laudantium nihil enim voluptatem amet pariatur.', 317947908, NULL, 17, '2000-09-14 01:46:00', '1982-07-16 14:26:30');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (78, 0, 'Fugiat deleniti nemo ad qui qui harum ad. Nostrum rerum repellat officia.\nIncidunt quas earum non officiis aut. Velit at aut rerum inventore.', 133865279, NULL, 18, '2012-05-13 08:23:52', '2004-09-03 20:47:25');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (79, 0, 'Consequatur nulla ut aperiam culpa. Placeat ullam rerum qui nesciunt. Consequatur odio quidem quis eligendi est quasi. Culpa quo maiores est explicabo repellendus iure cupiditate et.', 154667298, NULL, 19, '2019-07-01 15:14:09', '2013-05-03 21:33:43');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (80, 0, 'Voluptatem autem repellat debitis autem necessitatibus. Blanditiis et quis deserunt. Aliquid blanditiis numquam nihil suscipit iste. Magnam ad debitis voluptatem quis non expedita non.', 305009929, NULL, 20, '2013-04-12 17:01:46', '2011-08-18 15:30:10');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (81, 0, 'Non est placeat distinctio et. Voluptatibus et quia blanditiis nesciunt at magni nobis expedita. Ut ut magnam voluptatem est et dicta nulla. Rerum voluptates est id enim corporis aut molestiae.', 204924820, NULL, 1, '1970-01-01 05:19:21', '1984-10-22 18:37:51');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (82, 0, 'Aut consequatur placeat a velit. Voluptas aut omnis natus sint.\nOdio quia beatae repudiandae voluptatem et est. Voluptatem itaque ad sed in id cupiditate numquam autem.', 357672705, NULL, 2, '1995-08-18 20:30:34', '2005-01-07 20:33:59');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (83, 0, 'Hic quia ea et voluptas rem et sit vel. Odio totam quasi sit facilis. Eos aspernatur vero cumque iste magnam sequi laboriosam molestiae.', 249554126, NULL, 3, '2003-01-23 20:02:04', '2013-04-11 08:31:30');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (84, 0, 'Sit dolorem reiciendis fuga ratione iusto libero. Dolores accusamus itaque sunt quidem asperiores consequatur exercitationem. Deserunt vitae hic dolores doloremque.', 281996501, NULL, 4, '1987-05-26 16:40:10', '2007-04-20 09:44:47');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (85, 0, 'Culpa perspiciatis voluptas voluptas hic. Velit quam quis est nemo.', 215977130, NULL, 5, '1977-05-02 01:05:24', '2015-06-02 10:59:29');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (86, 0, 'Ipsam est cupiditate doloribus. Quae ab laudantium sit eos. Explicabo quo perferendis explicabo consequuntur eius porro qui.', 287341164, NULL, 6, '1997-12-24 03:14:33', '1974-03-20 21:32:57');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (87, 0, 'Vitae ad inventore quia quia. Omnis quaerat quibusdam atque dolorem omnis pariatur. Ab et et corporis labore qui hic debitis. Sed commodi libero ipsa corrupti aut libero aliquam laborum.', 140617150, NULL, 7, '1992-11-15 18:58:08', '1993-06-11 08:31:30');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (88, 0, 'Pariatur amet et aperiam recusandae rerum numquam autem. Eos tenetur voluptatibus iusto voluptas nulla.', 264083285, NULL, 8, '1973-12-03 19:00:21', '2015-07-19 21:48:56');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (89, 0, 'Molestias iure voluptatem et sed. Sit vitae quo blanditiis sapiente fugiat. Sint tempore dolorem quia rerum. In neque commodi voluptas. Dolor quae exercitationem necessitatibus distinctio.', 382899199, NULL, 9, '2004-09-14 07:41:35', '2021-09-02 09:02:40');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (90, 0, 'Sequi et voluptas sit dolorem recusandae ut. Voluptas molestiae culpa minima incidunt iure exercitationem earum non.', 380734721, NULL, 10, '1991-08-11 09:44:47', '2003-12-04 11:26:26');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (91, 0, 'Et omnis sed totam ut et omnis autem. Voluptate eaque ut est ea consequuntur perferendis. Dolores velit quaerat voluptas. Sunt id quos iusto velit.', 239345828, NULL, 11, '1992-01-29 14:02:45', '2012-09-07 11:21:55');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (92, 0, 'In est nulla libero ipsa maiores sed doloribus. Soluta voluptatum unde aut repudiandae. Dolorem et consequatur modi possimus. Recusandae sit quasi itaque autem.', 287710034, NULL, 12, '2013-11-29 12:23:37', '1977-02-20 18:27:48');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (93, 0, 'Ipsam debitis minima molestias minima. Quidem in quae perferendis facilis a explicabo. Id voluptatem iure unde distinctio quaerat commodi mollitia.', 329234074, NULL, 13, '1974-09-23 17:00:06', '1985-01-13 20:29:55');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (94, 0, 'Temporibus ea labore sed omnis distinctio laborum dolorem dolorem. Minima doloremque voluptate dolor consequuntur perferendis. Quasi explicabo quidem praesentium.', 184693455, NULL, 14, '1987-05-30 08:11:49', '2007-08-15 02:59:56');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (95, 0, 'Suscipit ipsum enim qui est sit. Consequuntur dolores sed beatae iure voluptas. Qui nemo voluptatem maiores hic quo et atque.', 327507732, NULL, 15, '1977-04-22 20:13:48', '1977-12-26 15:53:58');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (96, 0, 'Alias voluptates eum accusantium id id inventore. Quis unde debitis sapiente. Sit debitis id nisi quod.', 57572823, NULL, 16, '1989-03-11 14:22:06', '2007-04-24 04:31:11');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (97, 0, 'Rerum est alias sit cum sint aliquam. Est repellendus laudantium nihil illum aut cupiditate veniam. Deleniti ab libero magni optio iste.', 242346335, NULL, 17, '1992-04-25 16:06:25', '2012-11-01 11:40:04');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (98, 0, 'Quo inventore rerum mollitia excepturi. Nostrum occaecati repudiandae ex perferendis et eaque.\nOdit eos excepturi velit nobis optio. Hic sed quo est dolore at distinctio odit.', 381602565, NULL, 18, '1993-09-29 00:35:14', '1980-09-27 11:38:32');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (99, 0, 'Iure voluptate nemo earum perferendis corporis ullam. Dolores sed iure dolores harum. Ipsa quo voluptate amet nam distinctio dolores. Dolores quaerat at voluptatem harum eligendi.', 380596901, NULL, 19, '1977-07-21 23:09:29', '1975-01-07 01:58:50');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (100, 0, 'Excepturi numquam tempore laboriosam cum nemo. Excepturi repellat nisi quas recusandae cumque a. Voluptates et nihil repellat omnis veritatis voluptas molestiae.', 184924218, NULL, 20, '2005-12-02 15:42:20', '2017-09-21 05:37:56');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (101, 0, 'Ea qui et ut odio dicta vel autem. Libero id qui fugiat et. Velit necessitatibus ut officia ipsum error magnam.', 17770101, NULL, 1, '1972-03-11 02:31:05', '1976-11-30 17:34:37');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (102, 0, 'Illum ut et maxime et. Non accusamus cupiditate ipsam enim quis est.\nEsse eligendi aut atque nostrum praesentium nihil. Perspiciatis aliquid dolores ea vitae. Vel velit aut in eum.', 272294975, NULL, 2, '2018-05-20 04:57:54', '1974-06-07 14:19:43');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (103, 0, 'Asperiores quo qui qui. Ratione dolore sed suscipit ipsam quia qui. Et iusto et et nihil.', 302135735, NULL, 3, '2020-10-01 02:13:10', '1973-05-20 21:35:59');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (104, 0, 'Quis sint aut vel. Dolor sed ut quia dolores dolorum delectus non. Molestiae assumenda libero mollitia cupiditate. Omnis sint quia ea et.', 239271978, NULL, 4, '1977-01-04 21:23:01', '1995-06-05 14:52:09');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (105, 0, 'Rerum aspernatur omnis molestiae similique veritatis maxime veniam. Iste deleniti perferendis sint consequatur adipisci aut inventore.', 381597355, NULL, 5, '1993-01-28 15:17:46', '1994-02-02 19:37:03');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (106, 0, 'Provident qui sunt et earum et. Esse nam corporis est eligendi et. Id doloribus sapiente doloribus voluptatibus porro.', 280488566, NULL, 6, '2020-11-05 00:32:10', '1990-02-24 10:34:22');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (107, 0, 'Illo nesciunt minima sequi nostrum ea et praesentium. Beatae ut provident porro accusantium delectus. Quis quisquam amet earum dolor.', 225644071, NULL, 7, '2018-10-21 04:18:17', '1984-08-28 02:28:19');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (108, 0, 'Et a laborum reiciendis quis. In et libero tenetur exercitationem. Dicta commodi amet quae qui provident delectus corrupti. Qui sed odit necessitatibus nulla.', 150676898, NULL, 8, '2016-11-09 15:11:18', '1976-08-01 16:27:49');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (109, 0, 'A voluptatem quaerat consequatur id pariatur sint. Non nesciunt quae est et molestiae.', 245030488, NULL, 9, '2007-11-03 02:03:16', '2001-11-14 14:38:48');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (110, 0, 'Ut aliquam cupiditate molestiae aut minima. Soluta eos earum unde labore deserunt perferendis. Quas inventore sed saepe illum.', 200956805, NULL, 10, '1992-05-24 01:51:09', '2003-03-23 22:30:30');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (111, 0, 'Consequatur necessitatibus sit vero reprehenderit corporis. Suscipit reprehenderit cumque repellat ratione fuga omnis excepturi.', 210392962, NULL, 11, '1980-01-26 21:36:58', '1988-07-29 21:45:50');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (112, 0, 'Reiciendis facere molestiae delectus sit est natus. In vel omnis dolor. Et voluptas nemo ex fugit voluptatem illo.', 192828924, NULL, 12, '1976-11-08 02:56:48', '1981-05-20 23:36:47');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (113, 0, 'Fugit minus et eveniet molestias aut. Id ut et molestiae cum. Ut consequatur fuga quaerat facere aliquam eos doloribus.', 329274159, NULL, 13, '2015-09-24 05:51:43', '1992-12-13 12:59:23');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (114, 0, 'Fugiat consectetur blanditiis possimus consequatur quia ducimus quia. Recusandae excepturi quidem dicta repellendus.', 208438651, NULL, 14, '1973-03-23 08:17:56', '1978-11-30 01:12:17');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (115, 0, 'Saepe reprehenderit nesciunt numquam voluptatem sunt. Aut sapiente neque quis quisquam rerum. Dignissimos incidunt suscipit aliquam et vitae delectus.', 210919636, NULL, 15, '1977-12-13 14:21:54', '1989-03-30 19:36:52');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (116, 0, 'Magnam velit excepturi magnam magnam cupiditate et aut doloremque. Ipsa magnam ipsa inventore voluptatibus officiis assumenda nesciunt. Dolore eos modi repellat eaque culpa iure placeat.', 246241060, NULL, 16, '1971-05-20 23:12:17', '2001-12-14 21:27:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (117, 0, 'Delectus quibusdam eos ad recusandae praesentium. Optio quasi in doloremque. Veritatis et molestias laborum exercitationem officia voluptatum.', 291683027, NULL, 17, '2012-04-15 16:16:44', '1982-08-05 23:10:35');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (118, 0, 'Optio quo ullam aspernatur dicta aut dolorem sit. Omnis est vel cum non illo et. Qui ullam non et natus eos ex sit illo. Quod maxime eaque earum a et autem quia.', 325754048, NULL, 18, '1999-08-09 06:05:00', '1983-01-29 07:17:59');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (119, 0, 'Nostrum exercitationem repellendus molestias expedita aut explicabo. Ut voluptatem consectetur qui quo eos fuga in. Magnam ab qui et saepe voluptatem nihil qui.', 207629918, NULL, 19, '1981-12-04 22:51:55', '1980-05-13 07:35:36');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (120, 0, 'Aperiam sit quo et dolorum. Eos magnam dolores non occaecati voluptatem assumenda et harum. Tenetur consectetur quidem ea aut eos delectus.', 126726973, NULL, 20, '2014-03-14 10:02:40', '1985-08-16 02:34:01');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (121, 0, 'Minus sed omnis repudiandae sed. Culpa voluptatibus sint mollitia iure. Consequatur non ut quos fugiat est harum. Maiores ratione est et quod.', 202711050, NULL, 1, '1976-10-21 01:35:05', '2011-11-16 01:25:08');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (122, 0, 'Quis hic harum sint beatae tenetur. Dolorum saepe dolorum aut pariatur nemo molestiae accusamus. Corrupti fuga sed doloremque fugiat saepe odio. Incidunt autem excepturi ipsa ipsum sit corrupti quos.', 371546007, NULL, 2, '2019-12-24 03:25:18', '2002-06-03 22:16:19');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (123, 0, 'Quo veritatis aut est possimus. Ex vitae ea atque consequatur dicta culpa repudiandae. Nihil quidem possimus fugiat corrupti nostrum nam et. Recusandae eos eos quia et.', 339181085, NULL, 3, '2014-01-31 00:09:52', '2018-05-29 05:58:04');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (124, 0, 'Molestiae qui ab molestiae eos tempora eos soluta. Magni quia omnis commodi quia et sed sit. Perspiciatis modi quaerat cum sit praesentium labore.', 5187411, NULL, 4, '2013-10-09 06:24:37', '2008-10-12 23:18:56');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (125, 0, 'Id et et voluptates pariatur saepe et. Tenetur consequatur neque aut qui repudiandae. Natus omnis inventore quam voluptatem et. Eos reprehenderit perferendis voluptatibus dolorum.', 18560393, NULL, 5, '1986-03-11 00:22:28', '1981-11-27 14:01:36');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (126, 0, 'Error adipisci ratione ut vero nulla. Necessitatibus nam veritatis temporibus quos eligendi consequuntur voluptatem. Accusamus quidem et quo quasi.', 256803218, NULL, 6, '1987-04-18 20:19:13', '2003-11-11 13:37:57');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (127, 0, 'Corporis possimus reprehenderit quia qui eius aut corrupti. Quo magni qui ea quae repudiandae laborum. Ipsa labore autem qui qui.', 55324320, NULL, 7, '2000-07-02 07:03:55', '1989-12-17 00:18:24');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (128, 0, 'Deserunt ipsa voluptatibus ut aliquid. Culpa sit aliquam autem nesciunt soluta non. Rerum omnis minima ipsum voluptas.', 360649093, NULL, 8, '1972-12-12 02:34:28', '1974-08-06 03:03:19');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (129, 0, 'Eum provident dolorum non. Quasi in necessitatibus molestiae illo velit. Ipsam iusto omnis magni assumenda facilis mollitia.', 289885938, NULL, 9, '1975-03-01 05:44:51', '1983-08-05 19:32:48');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (130, 0, 'Sit accusamus est nihil iste dolorem. Et cumque temporibus doloribus vel autem pariatur. At quas necessitatibus nobis consequuntur animi eaque dignissimos.', 179828352, NULL, 10, '2010-01-19 02:32:56', '2014-03-17 14:13:18');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (131, 0, 'Mollitia explicabo harum quis iure. Dolor ab est laboriosam minima. Nemo dolor aut aut et. Voluptatem voluptatem corporis sed omnis cumque nemo ut quisquam.', 261812844, NULL, 11, '1997-12-13 03:16:33', '1982-09-18 00:59:42');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (132, 0, 'Ratione reiciendis pariatur enim. Ut cum quis et soluta. Ab rem ipsum eos harum. Adipisci voluptas non nemo rerum ut commodi ut. Doloribus a veniam aut.', 288137494, NULL, 12, '2003-02-10 05:44:48', '2010-04-03 08:29:54');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (133, 0, 'Sapiente voluptate commodi natus. Neque qui consequatur dolores. Magnam maiores voluptate possimus. Quia velit ullam sunt ut aut maiores.', 128133589, NULL, 13, '1981-03-29 12:37:46', '1985-11-01 10:24:34');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (134, 0, 'In et natus perspiciatis et. Maiores a at et accusamus. Sit nihil odit doloribus cum.', 395482815, NULL, 14, '2020-06-06 22:12:03', '2016-09-15 07:19:52');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (135, 0, 'Iusto iure officia vel et ducimus repellat perspiciatis. Optio ut inventore ut cum. Ipsam corrupti expedita qui ut iusto eum consequatur magnam.', 358392881, NULL, 15, '1995-07-11 08:16:58', '2019-07-30 13:30:55');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (136, 0, 'Doloremque eos dolorem cumque voluptas. Ea qui assumenda odit sunt maxime voluptatem. Quae sint aut voluptate libero quibusdam inventore. Libero reiciendis rem dolorem autem ad sit sed.', 321229424, NULL, 16, '1971-02-28 18:07:21', '2006-02-01 23:58:39');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (137, 0, 'Velit aperiam eum delectus voluptas. Alias possimus quaerat impedit animi. Sed unde quaerat veritatis.', 250366816, NULL, 17, '2016-05-14 05:02:27', '2012-11-14 01:46:08');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (138, 0, 'Mollitia suscipit ullam autem omnis voluptatem est consequatur. Dolor velit dolore blanditiis. Dignissimos enim et ut atque veritatis. Vitae odio error qui aut perferendis.', 135461712, NULL, 18, '1975-04-28 04:47:20', '2000-11-27 14:29:20');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (139, 0, 'Aut voluptas aut eveniet dicta. Nobis quaerat ut ullam porro incidunt repellendus rem. Quibusdam assumenda asperiores qui.', 282547173, NULL, 19, '1990-12-14 14:35:26', '1978-04-25 02:04:06');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (140, 0, 'Sint quae esse dolores consequatur. Et quae soluta adipisci est. Temporibus impedit exercitationem et et.', 334622959, NULL, 20, '2010-06-30 08:45:13', '2008-06-20 04:26:51');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (141, 0, 'Commodi molestiae placeat aliquid et eaque ut tenetur. Vitae tempore autem quos sapiente magnam ut ut. Dolorem corporis quo architecto aut.', 2655459, NULL, 1, '1985-08-05 06:51:02', '1985-01-05 14:15:25');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (142, 0, 'Nesciunt eveniet voluptas veniam vel doloremque pariatur sint. Quod sunt facere aliquam et et et asperiores illo.', 43210721, NULL, 2, '1983-10-04 09:02:22', '1989-02-19 08:08:20');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (143, 0, 'Quia alias et repudiandae aut suscipit doloribus. Quasi commodi quidem perspiciatis incidunt. Dolorem accusantium consequatur autem laudantium incidunt quia ea.', 250434043, NULL, 3, '1971-07-06 22:54:53', '1976-11-10 09:07:05');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (144, 0, 'Eius sed rerum aspernatur vel corporis maiores. Ullam hic sunt et tempore et voluptatem. Et in laudantium aliquam sit officiis.', 384489711, NULL, 4, '2000-02-15 04:19:43', '2006-10-02 03:16:27');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (145, 0, 'Ducimus occaecati et non. Eius suscipit dolor magnam impedit perferendis sint. Nisi suscipit molestiae nihil deserunt. Nemo eum vitae voluptates quia ut veniam.', 118279387, NULL, 5, '2004-10-20 23:06:00', '2008-09-15 02:01:41');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (146, 0, 'Architecto enim dolorem magni dolorem. Ducimus et corporis voluptas voluptas totam. Voluptatem molestiae sed autem itaque. Voluptas voluptate molestias vel tenetur sed rerum provident.', 286043386, NULL, 6, '2009-05-10 13:46:18', '2002-08-18 08:43:12');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (147, 0, 'Sed eos tenetur eaque consequatur quia quam mollitia. Qui natus tenetur perferendis quidem rerum praesentium delectus rerum. Qui molestias maiores voluptatem repudiandae eos odio recusandae.', 83107386, NULL, 7, '2020-02-23 11:20:46', '1987-07-15 08:56:41');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (148, 0, 'Vel autem sit ea sint iusto. Eius doloremque repudiandae suscipit fugit. Optio cupiditate dolor consectetur sint maiores. Sit iste voluptatem nam quisquam quae consequatur.', 12390381, NULL, 8, '1976-05-06 05:14:06', '2021-07-20 19:23:48');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (149, 0, 'Quas sed sunt et veniam et. Eveniet fugiat exercitationem sint excepturi qui et nesciunt. Quibusdam dolores sed ullam illo nesciunt. Nemo eum autem harum laborum nemo aut.', 41729357, NULL, 9, '2017-11-21 15:03:12', '1979-05-24 13:22:02');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (150, 0, 'Vel minima occaecati architecto dolores voluptatem. Eos tempore consectetur doloremque veniam molestiae. Ab voluptatem repellat repellat.', 387870539, NULL, 10, '2000-10-30 02:02:57', '2002-10-24 20:11:42');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (151, 0, 'Quasi numquam aut quae a vitae enim. Et necessitatibus et sunt cumque nihil ad. Sapiente eum magni amet dignissimos exercitationem aliquam sequi.', 143478179, NULL, 11, '2003-06-02 17:54:29', '2017-11-10 01:16:17');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (152, 0, 'Ullam occaecati id porro fugiat. Nesciunt fuga aut qui. Nihil quae sunt placeat enim. Nulla debitis fugit iusto perspiciatis sapiente.', 118304389, NULL, 12, '1976-04-21 19:44:32', '1970-03-13 22:28:21');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (153, 0, 'Eum sint officiis nesciunt quidem aut labore voluptatem. Aut amet tenetur non et porro est.', 59544205, NULL, 13, '2000-03-23 12:51:20', '1998-02-12 20:04:28');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (154, 0, 'Aut deleniti autem in. Quia odit est et velit ullam. Et culpa quis et autem.', 151341186, NULL, 14, '2007-08-21 08:46:53', '1996-10-06 11:55:17');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (155, 0, 'Vel et ipsum amet. Hic ut dolor quaerat sapiente. Qui atque voluptas laborum tenetur veritatis ut.', 320863978, NULL, 15, '2016-01-26 00:44:16', '1977-03-09 16:46:14');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (156, 0, 'Et at provident ipsum temporibus. Dolorem quia deleniti magnam. Eos hic ut exercitationem quis quia error. Quam veritatis ex distinctio et velit.', 320223129, NULL, 16, '1998-06-18 21:28:58', '2013-02-03 09:58:48');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (157, 0, 'In cum id molestiae ad officiis voluptatem tenetur. Vitae sequi expedita non velit autem corrupti consequuntur. Animi aliquam rem et sit. Quidem et labore tempore.', 113475037, NULL, 17, '1986-06-14 03:42:25', '1970-04-03 00:13:57');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (158, 0, 'Praesentium illo porro laudantium sunt. Delectus similique soluta voluptate voluptatum. Ea beatae et amet sit ut exercitationem. Reprehenderit facere architecto aut maiores cum neque repudiandae.', 31197779, NULL, 18, '2000-11-17 18:41:20', '1993-10-04 06:15:16');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (159, 0, 'Et debitis voluptatem qui. Ducimus est deleniti nihil nostrum in nisi dolores. Assumenda ducimus officia rerum exercitationem cum tempore reprehenderit.', 197023557, NULL, 19, '2011-09-20 12:52:49', '1985-08-03 06:22:15');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (160, 0, 'Harum accusantium eum eum eos sunt ipsum. Placeat sequi praesentium at illum. Aspernatur numquam in ipsam aut aut et non.', 356410750, NULL, 20, '1974-06-21 17:08:28', '2009-10-12 06:19:19');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (161, 0, 'Expedita recusandae quo qui soluta rem. Qui doloribus tenetur tempora sunt. Dolor quis vel voluptate maiores.', 357703416, NULL, 1, '2019-06-17 16:25:25', '2002-07-22 18:30:29');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (162, 0, 'Fugiat enim veniam molestias id quibusdam molestiae quasi. Porro in incidunt consectetur id. Fugit sed fuga temporibus cupiditate. Saepe aliquid ut quidem quia fugiat porro sed.', 58394059, NULL, 2, '1979-10-06 23:05:18', '1977-03-28 16:42:54');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (163, 0, 'Molestiae sint maiores eligendi similique quibusdam consequatur beatae. Sint iste nostrum sit aut. Quaerat explicabo ut quos aut fuga.', 221450909, NULL, 3, '1987-10-18 12:37:03', '2010-05-22 23:46:26');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (164, 0, 'Quasi adipisci quidem et ut quia id voluptatem. Dolorum sint nihil repudiandae deleniti quia. Sint est sequi occaecati eligendi molestiae in. Harum voluptate iusto aperiam in beatae.', 375623379, NULL, 4, '2022-04-20 22:42:27', '2006-02-05 12:42:18');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (165, 0, 'Unde voluptatum harum ut voluptatibus voluptate voluptatibus soluta. Saepe praesentium nihil enim. Quaerat in earum ex quod minus. Et quo vero odio excepturi officia.', 8025899, NULL, 5, '1981-01-20 03:51:36', '2019-02-19 02:46:38');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (166, 0, 'Tempora asperiores ratione sint dolores voluptas est reiciendis quibusdam. Explicabo beatae nobis et voluptatum. Et aspernatur rerum incidunt harum iusto sint. Omnis repudiandae animi repellat qui.', 165524986, NULL, 6, '1981-11-05 13:01:23', '2002-01-12 06:57:42');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (167, 0, 'Dolorem ex beatae ipsa earum quia ut. Et perferendis qui nihil enim amet et et.', 358286354, NULL, 7, '2014-10-30 13:04:27', '2021-11-16 11:09:50');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (168, 0, 'Ad natus vero dolores laudantium repudiandae. Quis quidem impedit voluptatem adipisci labore est. Est vitae unde ut.', 192239072, NULL, 8, '2017-06-07 09:06:48', '1988-01-15 14:20:58');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (169, 0, 'Voluptate nisi odio rerum et. Voluptatem voluptates rerum aspernatur. Nesciunt eum qui odit possimus vel labore.', 315036297, NULL, 9, '1979-10-03 05:10:47', '1992-08-03 12:19:09');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (170, 0, 'Aut vitae labore enim optio non. Consectetur cupiditate quia velit harum non. Consequatur repellendus enim minus explicabo officia.', 222607139, NULL, 10, '2007-01-24 19:24:40', '1979-06-07 08:24:12');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (171, 0, 'Eum maiores sit labore accusamus omnis. Veniam dolores dolorem sunt quisquam et amet. Est amet ut aspernatur suscipit magni aut dolores. Labore doloremque quaerat quam consequatur optio.', 167209778, NULL, 11, '1990-01-17 02:58:08', '1978-10-13 15:36:28');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (172, 0, 'Voluptatum corporis illo qui ipsa labore. Unde pariatur occaecati in sunt nobis.', 389895981, NULL, 12, '2020-12-19 14:10:16', '2016-03-26 01:55:38');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (173, 0, 'Sed aperiam numquam distinctio ipsam et. Ut est ipsum voluptate exercitationem et asperiores consectetur.', 204330080, NULL, 13, '1973-04-28 10:59:42', '1986-08-22 17:12:10');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (174, 0, 'Sit quas fugiat ex a qui dolor. Nam corporis sunt eum quasi. Nobis modi iusto vitae. Placeat excepturi sit quia et.', 22222578, NULL, 14, '1992-12-19 23:45:06', '1977-02-02 13:30:02');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (175, 0, 'Qui maiores suscipit aliquam a delectus eum. Recusandae voluptates labore rem earum velit et qui. Ducimus voluptas non est.', 215424801, NULL, 15, '1971-02-24 07:20:48', '2011-09-05 08:38:26');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (176, 0, 'Minus in et architecto ut. Iusto hic qui enim modi pariatur. Ab est qui neque voluptatem commodi itaque.', 213409403, NULL, 16, '1987-04-14 07:35:21', '1992-03-11 04:26:48');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (177, 0, 'In id incidunt qui cumque. Et debitis voluptatum ullam nisi tempora at eos voluptate. Rerum non dolores sint nesciunt. Fuga dolores itaque blanditiis dolorem officia.', 16644507, NULL, 17, '2005-09-21 21:22:26', '2019-07-14 01:09:47');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (178, 0, 'Laborum aut fugit sint praesentium voluptatem. Dolores eveniet aut error reprehenderit eos. Vel eos ab quaerat a commodi exercitationem.', 253071220, NULL, 18, '1987-11-03 20:17:46', '2022-03-22 19:53:54');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (179, 0, 'Sit qui possimus quo iure. Aut cum quo ut quis. Rem quaerat et molestiae unde laudantium aut. Praesentium amet sit illo inventore perferendis et aperiam.', 246325025, NULL, 19, '1978-01-27 13:09:29', '2005-09-09 19:46:25');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (180, 0, 'Rerum at sint illum tenetur pariatur ut enim et. Nulla vel nulla qui quos rerum cumque harum. Vitae nam tempore enim minima. Ut est ipsam expedita esse.', 268249134, NULL, 20, '1994-12-12 09:01:00', '1982-01-10 14:19:46');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (181, 0, 'Dolores aut quibusdam corporis quas omnis. Tempora libero nulla nihil et qui est sunt. Vero sed ut quibusdam blanditiis quisquam nesciunt.', 52275816, NULL, 1, '1987-03-10 16:37:25', '1982-11-16 00:50:51');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (182, 0, 'Quae repudiandae natus voluptas vel voluptatem nisi. Reiciendis consequatur omnis possimus nulla non ab. Ipsa pariatur enim magni magnam optio consectetur. Aut dolor unde repudiandae voluptate.', 19793892, NULL, 2, '1991-10-06 15:04:45', '2005-03-25 20:19:17');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (183, 0, 'Numquam exercitationem recusandae nihil dignissimos voluptas. Assumenda possimus voluptates magni sit culpa reprehenderit. Culpa veniam eveniet maxime tempore dolore in tenetur.', 148438486, NULL, 3, '2004-08-31 20:48:44', '2008-12-06 15:04:57');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (184, 0, 'Sint molestiae magnam aut laudantium est quidem. Reiciendis qui sint omnis et culpa ut eum dolores. Molestias veniam et neque enim reiciendis.', 378139711, NULL, 4, '2010-08-07 13:09:10', '1991-11-19 03:32:46');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (185, 0, 'Explicabo aliquam consectetur molestiae et quod omnis. Autem autem maxime ut eum. Possimus dignissimos et odio earum.', 71294306, NULL, 5, '2017-01-14 21:16:54', '2005-02-06 04:26:05');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (186, 0, 'Rem repellat ea voluptatibus. Magnam impedit molestiae laborum provident deserunt. Minima hic et est.', 392890282, NULL, 6, '2019-11-12 18:42:31', '1985-07-19 20:15:44');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (187, 0, 'Et atque eos assumenda porro exercitationem. Earum doloribus est expedita a repellat. Impedit dignissimos quo eveniet ut fuga molestias. Quia repellat maxime ducimus commodi ipsum.', 200219498, NULL, 7, '2013-09-07 06:38:28', '1994-05-11 13:31:35');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (188, 0, 'Qui omnis aut molestiae. Odio eos labore possimus doloremque. Recusandae a et iste. Aliquid laudantium atque sit.', 51872014, NULL, 8, '1995-05-13 15:55:53', '2006-01-14 17:27:42');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (189, 0, 'Saepe nesciunt sapiente non quasi natus qui. Ut occaecati numquam est repudiandae repudiandae qui. Dolorum vero aut modi quia.', 38677815, NULL, 9, '1989-04-05 18:10:44', '1994-08-21 10:06:54');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (190, 0, 'Qui explicabo veniam possimus ipsa. Nihil aliquid eos molestias quisquam expedita.', 69029023, NULL, 10, '1983-09-09 19:33:19', '2002-07-28 22:52:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (191, 0, 'Est necessitatibus voluptatum totam consectetur omnis. Nemo aliquam molestiae eaque aut quod ullam iure. Voluptas vel rem est sit omnis praesentium non. Sed ea enim tenetur non non sit.', 5530469, NULL, 11, '1981-08-28 01:01:14', '2018-12-24 23:02:05');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (192, 0, 'Repudiandae et quos nihil. Maxime voluptas eligendi error ipsa. Laborum voluptas placeat saepe veniam.', 184597279, NULL, 12, '2018-08-08 14:03:04', '1984-01-27 01:40:02');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (193, 0, 'Reprehenderit voluptas a optio minus ut iure. Optio pariatur odio voluptatum est qui culpa vitae. Voluptatibus aut qui totam quos ducimus veritatis non.', 71270513, NULL, 13, '1989-10-09 02:59:29', '1983-12-19 14:34:39');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (194, 0, 'Dicta minus aut in porro unde. Facere ipsa quia blanditiis modi possimus molestiae vel enim. Ut commodi quis quasi harum. Et occaecati ullam earum expedita et.', 205966404, NULL, 14, '2005-03-05 22:52:25', '1971-04-10 19:08:07');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (195, 0, 'Saepe sunt libero hic magnam quia. Nobis eveniet eum adipisci mollitia fugit aut odio. Animi dolores et quibusdam qui soluta. Laboriosam impedit et expedita et sed aperiam.', 115986868, NULL, 15, '1997-05-15 17:38:08', '1984-01-04 05:54:46');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (196, 0, 'Doloribus eos vero vitae eos. Consequatur a non recusandae et quam ut ratione. Est doloribus corporis aut ut assumenda blanditiis. Ab amet sed necessitatibus repudiandae.', 315822543, NULL, 16, '1973-04-10 19:25:03', '1989-01-28 10:51:12');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (197, 0, 'Sequi velit odit mollitia dolore ut qui consequatur. Et error est exercitationem molestiae ut voluptatem. Quia atque ab et molestias.', 262045542, NULL, 17, '1983-11-19 11:58:37', '2016-10-27 16:47:13');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (198, 0, 'Et alias provident commodi iste consequatur. In et minima quae esse. Et consectetur est possimus quos. Porro vel occaecati et saepe quidem provident enim excepturi.', 106131131, NULL, 18, '1986-07-04 05:43:57', '2007-01-26 18:12:23');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (199, 0, 'Quia magni hic ut itaque. Quisquam libero culpa quae qui voluptatem. Voluptatem quasi optio nihil odio est.', 138262691, NULL, 19, '2016-01-22 06:39:44', '1991-12-20 03:24:11');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (200, 0, 'Reprehenderit et quas tenetur placeat. Alias voluptatibus pariatur nesciunt dicta ea explicabo.', 359461122, NULL, 20, '1976-03-01 08:10:35', '2003-12-15 17:40:15');


#
# TABLE STRUCTURE FOR: media_like_sign
#

DROP TABLE IF EXISTS `media_like_sign`;

CREATE TABLE `media_like_sign` (
  `mediafile_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на сообщение',
  `like_sign_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на like_sign',
  `user_id_creator` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя, который поставил Like_sign',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  PRIMARY KEY (`mediafile_id`,`like_sign_id`) COMMENT 'Составной первичный ключ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='связь между медиа и значками like ';

INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (1, 1, 1, '1970-11-08 10:10:51');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (2, 2, 2, '1993-05-23 12:19:29');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (3, 3, 3, '1977-07-16 23:41:01');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (4, 4, 4, '1982-05-11 10:52:27');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (5, 5, 5, '1972-02-07 15:52:32');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (6, 6, 6, '1993-11-01 01:43:18');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (7, 7, 7, '2003-10-10 09:16:43');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (8, 8, 8, '1973-03-18 17:29:34');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (9, 9, 9, '1977-04-08 23:12:21');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (10, 10, 10, '1975-12-11 20:16:56');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (11, 11, 11, '2004-11-05 10:53:17');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (12, 12, 12, '1986-09-06 11:45:46');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (13, 13, 13, '2021-07-12 08:30:26');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (14, 14, 14, '1973-06-21 05:03:50');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (15, 15, 15, '1994-05-12 17:07:36');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (16, 16, 16, '1992-07-29 08:34:56');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (17, 17, 17, '1992-07-09 15:30:55');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (18, 18, 18, '2008-12-03 16:31:40');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (19, 19, 19, '1975-11-13 06:14:52');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (20, 20, 20, '1989-12-25 03:02:24');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (21, 1, 21, '1970-11-27 14:05:18');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (22, 2, 22, '2020-09-10 16:19:00');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (23, 3, 23, '1994-08-29 16:04:34');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (24, 4, 24, '2020-03-04 08:49:21');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (25, 5, 25, '1974-11-08 06:54:06');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (26, 6, 26, '1970-08-22 02:29:31');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (27, 7, 27, '1979-05-07 00:25:18');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (28, 8, 28, '2017-04-21 20:52:13');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (29, 9, 29, '2019-08-19 01:37:47');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (30, 10, 30, '1996-01-10 19:34:51');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (31, 11, 31, '1988-05-24 12:50:14');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (32, 12, 32, '2006-04-01 05:29:36');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (33, 13, 33, '2002-05-17 19:01:27');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (34, 14, 34, '1973-05-13 12:17:55');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (35, 15, 35, '1984-10-14 06:53:13');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (36, 16, 36, '1984-07-23 16:34:41');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (37, 17, 37, '1972-03-17 22:02:37');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (38, 18, 38, '1994-09-11 13:37:10');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (39, 19, 39, '1982-05-22 01:26:04');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (40, 20, 40, '1999-03-26 19:53:23');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (41, 1, 41, '2016-11-05 23:24:58');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (42, 2, 42, '1975-07-19 04:39:19');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (43, 3, 43, '1989-12-15 16:49:57');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (44, 4, 44, '2012-11-22 15:56:39');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (45, 5, 45, '1983-09-14 17:54:22');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (46, 6, 46, '1980-10-22 12:01:04');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (47, 7, 47, '2021-03-02 15:44:15');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (48, 8, 48, '2020-11-26 07:24:24');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (49, 9, 49, '2009-12-07 09:16:07');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (50, 10, 50, '1990-10-14 07:31:29');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (51, 11, 51, '1995-03-25 11:35:05');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (52, 12, 52, '1989-05-13 02:43:59');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (53, 13, 53, '1983-04-05 23:36:33');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (54, 14, 54, '1974-01-31 20:00:59');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (55, 15, 55, '2008-05-02 03:16:50');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (56, 16, 56, '1992-06-23 15:23:44');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (57, 17, 57, '1997-03-07 01:14:06');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (58, 18, 58, '1976-06-23 14:57:47');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (59, 19, 59, '1998-07-30 14:03:54');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (60, 20, 60, '2005-08-02 08:53:48');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (61, 1, 61, '1990-07-22 11:02:26');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (62, 2, 62, '2011-03-18 18:47:59');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (63, 3, 63, '1975-01-08 03:25:28');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (64, 4, 64, '2017-01-21 17:22:27');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (65, 5, 65, '1992-02-05 05:59:32');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (66, 6, 66, '1974-08-08 15:39:11');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (67, 7, 67, '2018-08-11 22:38:04');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (68, 8, 68, '2007-02-03 04:54:51');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (69, 9, 69, '2022-04-08 03:36:52');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (70, 10, 70, '2015-05-15 00:10:21');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (71, 11, 71, '2018-01-12 05:32:37');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (72, 12, 72, '2004-10-04 14:31:53');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (73, 13, 73, '2020-12-15 02:20:19');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (74, 14, 74, '1978-03-09 06:16:31');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (75, 15, 75, '2000-03-24 01:23:13');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (76, 16, 76, '1991-08-06 16:46:59');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (77, 17, 77, '2004-06-25 08:16:07');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (78, 18, 78, '1987-08-19 12:55:25');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (79, 19, 79, '2011-10-28 16:47:46');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (80, 20, 80, '1990-08-24 10:44:51');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (81, 1, 81, '2001-08-15 20:39:46');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (82, 2, 82, '2014-10-22 08:48:37');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (83, 3, 83, '1973-09-16 00:15:11');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (84, 4, 84, '2020-03-29 03:37:42');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (85, 5, 85, '2008-11-11 00:49:06');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (86, 6, 86, '1999-09-07 11:22:41');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (87, 7, 87, '1998-08-22 10:53:50');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (88, 8, 88, '1991-07-13 11:11:05');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (89, 9, 89, '1998-03-23 19:43:13');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (90, 10, 90, '1984-11-29 06:03:22');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (91, 11, 91, '1993-10-05 09:30:41');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (92, 12, 92, '1976-04-02 17:36:59');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (93, 13, 93, '2018-04-20 10:05:50');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (94, 14, 94, '2015-05-31 08:50:26');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (95, 15, 95, '1971-11-23 18:57:48');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (96, 16, 96, '1985-06-27 09:53:10');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (97, 17, 97, '1986-06-01 21:20:11');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (98, 18, 98, '1981-12-12 09:14:27');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (99, 19, 99, '1984-09-28 09:29:02');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (100, 20, 100, '1988-01-13 09:00:40');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (101, 1, 1, '1982-08-17 12:24:49');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (102, 2, 2, '1992-07-09 06:06:50');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (103, 3, 3, '1981-03-23 06:55:21');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (104, 4, 4, '1982-04-01 10:44:01');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (105, 5, 5, '2018-04-07 12:02:26');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (106, 6, 6, '2021-08-12 03:25:52');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (107, 7, 7, '2005-08-15 16:13:04');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (108, 8, 8, '1972-04-11 19:04:57');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (109, 9, 9, '1990-11-18 13:06:54');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (110, 10, 10, '2002-02-19 06:50:56');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (111, 11, 11, '1988-03-04 14:31:15');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (112, 12, 12, '1997-12-17 06:02:20');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (113, 13, 13, '2000-12-01 18:45:15');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (114, 14, 14, '2021-03-22 01:54:20');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (115, 15, 15, '2010-08-05 17:21:56');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (116, 16, 16, '1989-08-17 14:13:18');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (117, 17, 17, '2003-06-27 18:54:52');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (118, 18, 18, '2002-01-07 02:43:29');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (119, 19, 19, '1994-10-19 12:08:56');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (120, 20, 20, '1995-07-03 13:14:15');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (121, 1, 21, '1975-02-23 21:34:33');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (122, 2, 22, '1993-05-29 02:36:12');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (123, 3, 23, '1995-09-25 22:46:04');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (124, 4, 24, '1974-09-14 23:53:18');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (125, 5, 25, '2011-08-15 16:04:08');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (126, 6, 26, '1971-05-20 14:55:41');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (127, 7, 27, '2020-11-23 00:22:28');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (128, 8, 28, '2003-09-26 20:10:44');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (129, 9, 29, '1978-09-01 21:47:29');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (130, 10, 30, '2010-08-09 10:27:06');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (131, 11, 31, '1977-07-15 09:54:00');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (132, 12, 32, '2012-09-09 09:17:03');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (133, 13, 33, '1978-03-24 05:36:34');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (134, 14, 34, '2006-10-17 07:25:57');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (135, 15, 35, '2018-04-18 00:26:36');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (136, 16, 36, '1995-12-03 01:13:06');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (137, 17, 37, '1992-06-07 02:06:10');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (138, 18, 38, '1973-11-23 03:04:42');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (139, 19, 39, '2017-12-25 17:25:25');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (140, 20, 40, '1971-08-22 07:05:35');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (141, 1, 41, '2008-08-04 12:02:00');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (142, 2, 42, '2019-05-02 16:40:08');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (143, 3, 43, '2007-12-30 09:26:43');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (144, 4, 44, '1972-11-20 13:08:12');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (145, 5, 45, '2017-01-17 00:06:55');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (146, 6, 46, '1996-10-28 08:21:28');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (147, 7, 47, '2009-03-15 12:11:17');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (148, 8, 48, '2001-09-18 02:41:08');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (149, 9, 49, '1996-10-19 09:07:00');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (150, 10, 50, '2013-10-06 12:23:41');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (151, 11, 51, '1979-11-08 06:44:30');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (152, 12, 52, '2018-05-08 18:56:52');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (153, 13, 53, '1976-05-12 23:27:33');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (154, 14, 54, '2013-02-26 16:24:07');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (155, 15, 55, '1990-10-28 09:40:08');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (156, 16, 56, '1999-11-17 04:45:58');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (157, 17, 57, '1978-07-21 00:25:49');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (158, 18, 58, '1971-06-30 19:52:38');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (159, 19, 59, '1996-10-20 10:27:06');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (160, 20, 60, '2016-04-03 07:31:29');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (161, 1, 61, '1985-04-07 09:32:35');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (162, 2, 62, '2012-01-21 11:10:39');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (163, 3, 63, '1980-01-05 02:13:47');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (164, 4, 64, '2017-02-26 15:39:15');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (165, 5, 65, '2022-05-28 16:37:04');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (166, 6, 66, '2020-11-28 14:36:39');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (167, 7, 67, '1973-06-14 13:03:53');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (168, 8, 68, '1984-03-13 02:30:01');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (169, 9, 69, '2006-09-23 22:07:40');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (170, 10, 70, '1995-01-12 18:39:06');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (171, 11, 71, '1982-12-01 12:46:28');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (172, 12, 72, '2013-06-08 03:11:44');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (173, 13, 73, '2020-03-01 08:38:07');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (174, 14, 74, '1989-11-28 01:59:09');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (175, 15, 75, '1998-04-19 11:08:21');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (176, 16, 76, '1977-02-09 14:17:24');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (177, 17, 77, '2002-08-07 22:10:26');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (178, 18, 78, '2006-12-21 01:05:00');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (179, 19, 79, '1997-05-19 05:18:33');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (180, 20, 80, '1993-03-30 16:02:48');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (181, 1, 81, '2001-05-24 09:55:16');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (182, 2, 82, '2021-02-16 14:33:34');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (183, 3, 83, '1971-04-07 00:14:34');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (184, 4, 84, '2006-08-10 14:20:09');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (185, 5, 85, '1980-05-15 09:21:39');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (186, 6, 86, '1994-03-22 15:29:21');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (187, 7, 87, '1981-10-31 08:50:30');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (188, 8, 88, '2010-04-23 07:33:32');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (189, 9, 89, '1976-09-02 15:00:02');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (190, 10, 90, '1984-06-03 05:39:03');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (191, 11, 91, '2008-02-26 07:08:48');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (192, 12, 92, '1994-12-27 12:18:59');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (193, 13, 93, '1970-02-08 11:03:18');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (194, 14, 94, '2018-07-23 09:48:52');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (195, 15, 95, '1973-11-14 03:40:06');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (196, 16, 96, '2003-02-10 18:36:00');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (197, 17, 97, '1979-07-20 12:18:56');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (198, 18, 98, '1997-06-25 00:42:29');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (199, 19, 99, '2021-11-11 23:28:16');
INSERT INTO `media_like_sign` (`mediafile_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (200, 20, 100, '1986-03-19 02:19:25');


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


#
# TABLE STRUCTURE FOR: messages
#

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `from_user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на отправителя сообщения',
  `to_user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на получателя сообщения',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Текст сообщения',
  `is_important` tinyint(1) DEFAULT NULL COMMENT 'Признак важности',
  `is_delivered` tinyint(1) DEFAULT NULL COMMENT 'Признак доставки',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Сообщения';

INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (1, 60, 41, 'Non repudiandae quia mollitia odit. Vero veniam dolore maxime dolorum sed temporibus et quod. Voluptatum similique quam quidem accusantium dolor necessitatibus accusantium quia. Quasi distinctio at minima ea ratione consequatur.', 1, 0, '2021-04-01 05:34:53', '1985-04-18 07:56:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (2, 96, 91, 'Tempora quisquam nisi accusamus totam molestiae reiciendis. Dolor aut ut nisi officia.', 1, 0, '2002-07-03 23:29:03', '1993-09-25 23:21:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (3, 91, 74, 'Et facilis dolor dolorum consequatur atque. Beatae repellendus illum totam voluptatem ea sed. Ipsa laborum consequatur provident laborum. Hic minus sunt deserunt ullam nesciunt possimus aut nisi.', 0, 0, '2007-12-28 02:00:33', '2006-01-12 04:13:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (4, 58, 30, 'At voluptas unde distinctio ut aliquid. Facere eligendi vitae quia consectetur qui ipsam. Unde minima possimus sunt assumenda.', 1, 1, '1995-01-24 12:53:15', '2010-09-04 01:03:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (5, 23, 52, 'Voluptate quia eligendi molestiae cupiditate. Fuga atque qui dolor aperiam vero praesentium ea incidunt. Qui culpa reprehenderit atque est voluptate pariatur quos perferendis.', 0, 0, '2016-05-03 12:22:59', '1997-03-05 17:49:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (6, 17, 21, 'Qui et id temporibus. Et minima sequi pariatur cum. Ab necessitatibus impedit assumenda quis quia. Commodi qui nemo dolores neque perferendis.', 0, 1, '2020-02-11 22:07:07', '1999-03-18 12:04:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (7, 73, 0, 'Nulla quos ipsa assumenda occaecati. Rerum ea totam ullam saepe libero. Dolores modi dolor voluptate sed minus repellendus quia.', 0, 1, '1972-09-19 06:40:56', '2017-06-16 03:37:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (8, 50, 30, 'Eum praesentium et est dolor quas. Consequatur laborum nihil repudiandae nisi quia voluptatem occaecati ut. Numquam ea sed qui dicta aliquid eos qui sint. Voluptas vel exercitationem doloremque pariatur.', 1, 1, '2004-12-23 15:22:13', '1988-12-29 08:24:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (9, 28, 80, 'Rerum quia minima saepe. Assumenda cumque error dolores nemo veniam voluptas consequuntur aut. Similique quia aperiam et voluptatum est debitis ut.', 1, 0, '1998-08-12 05:12:23', '2003-12-23 01:43:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (10, 47, 22, 'Odio omnis ipsum vel magni aut earum laudantium. Fugit dolorem et eos quas. Quasi voluptatem voluptas voluptatum adipisci ut veniam iure facilis.', 1, 0, '2004-09-27 06:39:01', '1984-04-23 16:59:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (11, 59, 28, 'Officia id quam iste quod numquam iusto similique. Eum repellat mollitia libero dolorem facilis maxime harum. Veniam omnis tenetur repudiandae maxime occaecati enim sequi. Autem quia id quisquam dolore qui magnam esse eaque.', 1, 1, '2019-04-04 03:57:50', '2022-01-06 15:14:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (12, 28, 43, 'Quibusdam velit et commodi et quia dolores et repudiandae. Odit dicta et est. Quis ullam sapiente et voluptas suscipit odio aut et.', 1, 1, '1989-10-17 21:01:43', '1980-11-13 04:05:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (13, 39, 49, 'Maiores vel iste aliquid sed. Officia qui iste est ut iste quidem. Sit ut quos autem.', 1, 0, '1991-05-30 08:33:15', '1979-01-04 03:16:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (14, 54, 30, 'Qui maiores quae est ab adipisci perspiciatis numquam. Sapiente ducimus molestias delectus et modi sed possimus. Qui est omnis delectus possimus aspernatur est.', 1, 1, '1989-11-02 10:09:28', '1983-05-20 20:06:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (15, 26, 90, 'Quaerat quia voluptatem dolorem delectus vitae commodi qui. Sit sit iure non ut doloremque ut. Asperiores fugiat optio quis accusamus harum. Qui consequuntur molestiae quasi suscipit totam voluptatem et. Aliquid perspiciatis et ex soluta enim veritatis cumque.', 1, 0, '1972-07-31 06:43:06', '1979-10-12 02:02:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (16, 1, 61, 'Omnis perspiciatis voluptatem eos qui ut aut. Id hic ad culpa est temporibus recusandae. Harum dolor natus incidunt voluptatem necessitatibus. Dolores fugiat dolore illo molestiae.', 0, 0, '2000-05-16 12:06:11', '1972-01-09 09:22:23');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (17, 55, 30, 'Esse ipsa neque asperiores temporibus ea aut excepturi et. Dolore et exercitationem illum ipsa tempore consequatur. Aperiam porro voluptas non velit nobis ipsum excepturi. Tempora illo eaque saepe est et.', 1, 0, '1991-07-19 04:19:04', '1991-10-28 22:36:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (18, 38, 75, 'Consequatur quod dolor illum eius molestiae. Autem sit qui adipisci voluptatum. Animi eligendi quia rerum dolore. Aut labore voluptates sunt repellat dicta rerum. Qui unde vitae animi quaerat.', 0, 1, '2006-12-05 17:46:57', '1994-03-21 23:58:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (19, 81, 7, 'Molestias corrupti pariatur rerum id vel omnis in. Aliquid perspiciatis aliquid est rem architecto illum provident. A vero necessitatibus earum qui. Cupiditate quidem fugiat quidem adipisci nemo.', 1, 1, '1992-08-18 05:20:01', '1987-06-15 00:14:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (20, 99, 81, 'Quaerat dolor vitae consequuntur a. Est ea nostrum placeat vel voluptas omnis aspernatur. Asperiores ut id dignissimos placeat perferendis. Aperiam doloremque neque ad esse vero provident.', 0, 1, '1987-03-17 23:20:27', '1996-10-16 21:56:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (21, 43, 17, 'Vel qui omnis soluta hic dolor iste modi in. Quo et quo modi consequuntur animi nihil labore aperiam. Sit blanditiis sapiente aut eligendi. Sit tempora sed libero.', 0, 1, '2019-11-07 12:02:30', '1992-07-11 06:48:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (22, 21, 67, 'Nam et sint consequuntur optio exercitationem. Incidunt accusantium facere expedita magni voluptatum. Aliquid et dolorem voluptates quaerat rem pariatur. Facilis iure aliquid placeat quia.', 1, 1, '1975-01-03 04:15:31', '1999-10-04 22:23:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (23, 45, 60, 'Nihil dolore ut delectus ea. Nemo ipsam numquam ea. Velit et velit dolores et laudantium. Dolorum eligendi rerum fugiat corporis fuga.', 0, 1, '2019-06-19 09:07:56', '1975-09-18 20:35:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (24, 89, 68, 'Rerum soluta nobis nesciunt neque illum blanditiis consequatur. Animi qui qui odio illo maxime perspiciatis. Voluptas id eum aut perspiciatis eaque asperiores.', 0, 1, '1991-06-13 12:51:28', '1975-01-14 20:00:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (25, 63, 54, 'Delectus dolorem earum provident iure cupiditate. Illum quam quisquam consequatur. Voluptatem non aut et dolores. Aut tempore rerum ut reprehenderit.', 0, 0, '2005-06-26 03:45:19', '1997-07-29 02:52:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (26, 77, 27, 'Voluptatem praesentium temporibus facilis consequatur occaecati dicta. Quod numquam ea maiores nostrum sequi dolores ut. Labore aut consequatur quia perferendis possimus autem. Quisquam eum nulla voluptas omnis at et et ex.', 1, 1, '2021-05-30 01:21:58', '1990-08-12 19:15:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (27, 36, 67, 'Itaque omnis quo rerum suscipit assumenda quisquam ab. Sint cupiditate perferendis fugit minima. Nobis at non labore ab.', 0, 0, '1980-06-23 17:04:58', '1986-01-24 13:17:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (28, 39, 45, 'Dolores autem excepturi minima. Beatae quia assumenda quae qui cumque ut est. Reiciendis ut dignissimos ex et veniam vitae occaecati cupiditate. Qui ad qui consequuntur error quam nobis omnis vel.', 0, 1, '2009-10-02 11:56:34', '2005-02-22 09:30:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (29, 54, 58, 'Debitis distinctio rem rem dolores itaque quibusdam. Modi et magnam laborum placeat nemo eum ipsum. Sint hic neque nihil ut consequatur optio itaque.', 0, 1, '2020-10-12 14:29:16', '1999-02-12 10:51:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (30, 87, 51, 'Fuga a eos autem quis officia quia neque quia. Non dolor eos ut rerum. Necessitatibus veritatis explicabo et sunt. Et officiis est et ut nesciunt ut laboriosam sit.', 0, 0, '1986-11-05 12:00:51', '2013-06-26 02:22:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (31, 25, 18, 'Autem provident perferendis officia voluptatem adipisci. Assumenda ut aliquid omnis iste suscipit quia. Minus occaecati autem sed omnis. Aut officia sed omnis illo fuga.', 1, 0, '1976-09-20 21:37:51', '1997-10-05 16:36:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (32, 15, 10, 'Voluptas eius ipsum omnis enim qui. Est quia ipsa excepturi deleniti atque sed. Harum aspernatur non aut et et nisi. Eos enim nostrum voluptas aut est quam ex est.', 0, 1, '1980-04-20 16:44:10', '2007-05-28 21:54:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (33, 20, 76, 'Aperiam commodi perspiciatis vero excepturi aspernatur unde. Numquam culpa magni sit consequatur quasi. Praesentium incidunt ex aut et tenetur.', 1, 0, '2012-10-05 00:51:22', '2015-02-02 22:21:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (34, 78, 38, 'Error veritatis fugiat voluptas ratione quas rerum. Nostrum sapiente ut culpa et non tempora. Et laudantium debitis consequuntur maxime voluptatem voluptas at.', 0, 0, '1973-08-28 20:18:46', '2020-11-11 04:46:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (35, 11, 0, 'Suscipit doloremque magni dolorem nihil non quibusdam. Et voluptas magni doloribus at ut. Quaerat commodi quod et ut molestias.', 1, 0, '2016-02-27 18:22:13', '2003-05-03 23:50:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (36, 33, 83, 'Veritatis in quis sed quam tempora. Neque quaerat hic occaecati dolorem. Qui quia sit laudantium deleniti et voluptas.', 1, 0, '1982-12-29 01:43:32', '1979-10-30 14:55:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (37, 99, 36, 'Numquam tenetur odio rerum tempore quas. Sint et quidem nobis. Voluptatem dolor perferendis maxime. Enim dignissimos non itaque dolorum omnis laboriosam qui. Quia recusandae ut quia necessitatibus fuga voluptatem.', 1, 0, '1987-12-12 00:34:54', '1979-07-15 15:53:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (38, 22, 46, 'Quia dolore dolores repellat velit. Veniam ratione molestiae odio in laudantium. Ratione est minus dolorem optio. Ut est amet voluptas.', 1, 0, '2020-08-27 15:15:28', '2002-10-11 08:41:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (39, 93, 38, 'Debitis alias vitae ut consectetur neque. Quaerat sunt maiores magnam labore et quibusdam aut assumenda. Consequatur sequi quos vel ut.', 0, 0, '1994-05-22 00:56:04', '1983-02-25 10:32:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (40, 97, 28, 'Voluptatem iure numquam aut ex in. Enim distinctio laboriosam tempora deserunt est. Porro voluptates consequatur qui dolorem est.', 0, 1, '1982-11-18 22:49:31', '1982-02-01 13:10:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (41, 22, 85, 'Tenetur eum animi consequatur aperiam perspiciatis. Non nostrum quod sed voluptatibus nobis dolores et. Et error eaque eos quas maiores quis explicabo. Doloribus aut voluptatem aut sed odio nobis neque.', 1, 1, '1991-10-18 14:00:06', '2017-08-31 15:38:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (42, 73, 32, 'Odio sed aliquam qui voluptates officia accusantium at officia. Ducimus dolores voluptatem et non architecto aliquam similique. Quidem officia fuga beatae enim atque hic et. A at quae ut hic dolore.', 0, 0, '2017-04-29 22:28:27', '2000-10-12 04:10:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (43, 15, 39, 'Ea rerum necessitatibus et et corporis deleniti impedit. Possimus recusandae deleniti consectetur praesentium eius tenetur. Ut delectus itaque qui.', 0, 0, '1982-06-28 21:19:11', '1995-03-15 04:00:31');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (44, 85, 11, 'Fugiat quam delectus aut laudantium inventore explicabo molestiae. Voluptatum quaerat aperiam neque quibusdam ut. Aut sunt accusantium quia maxime fugit fugit.', 1, 0, '1981-06-04 19:11:31', '1997-10-05 13:38:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (45, 14, 47, 'Rem quae perspiciatis harum et sit quibusdam repellat. Cum quam facilis magni.', 0, 0, '2012-12-24 08:03:45', '2015-07-16 02:37:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (46, 90, 95, 'Ut ullam sunt qui iste tempore. Voluptates dolores qui et qui. Quaerat amet nihil laborum fugit iure in natus reiciendis.', 1, 1, '2007-12-29 15:33:54', '2014-05-15 15:49:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (47, 58, 52, 'Impedit hic recusandae qui voluptas in. Ut culpa dicta quod ut. Eum ex recusandae unde et dignissimos quibusdam.', 0, 1, '2018-06-18 19:41:42', '2003-09-27 10:13:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (48, 100, 92, 'Illo et sequi molestiae recusandae sed perferendis earum eos. Est quasi consectetur aliquam sit ratione provident modi nesciunt. Consequatur dolor asperiores delectus autem.', 1, 0, '2016-09-27 00:09:16', '2015-08-20 20:00:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (49, 47, 73, 'Repellat id officiis ducimus quas aut illum quia. Aut delectus ut doloremque veritatis ut et eius suscipit.', 0, 0, '1994-11-22 19:24:59', '2018-03-24 00:26:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (50, 7, 26, 'Et exercitationem ea et quis et. In consequatur est et aut totam repudiandae. Est voluptatem iure blanditiis harum. Esse sit eos maiores quis et voluptatem nemo.', 1, 0, '2020-09-21 08:14:05', '2006-12-27 16:40:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (51, 88, 24, 'Et sed vel perferendis sequi. Quam aut consequatur ullam autem soluta ut. In nihil voluptates deleniti in numquam.', 1, 0, '1990-03-08 12:51:44', '2009-09-06 10:01:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (52, 48, 46, 'Est ipsum accusamus qui rerum. Adipisci doloremque repellendus dolores ea blanditiis. Sint aut maiores consectetur voluptate dicta et. Minima molestias et assumenda fugiat necessitatibus. Quisquam sed ipsum alias iure rerum aut.', 0, 1, '2002-04-22 15:56:57', '2013-08-02 06:59:17');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (53, 68, 8, 'Omnis necessitatibus molestiae et. In nostrum vero facilis ullam. Sed dolorem corporis quia ut voluptate qui ducimus et. Modi saepe voluptatem ut delectus ut.', 1, 0, '2001-12-06 02:54:01', '2004-06-18 23:38:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (54, 12, 53, 'Cumque et commodi suscipit voluptates doloribus eveniet quam. Eligendi assumenda consectetur est. Aliquam asperiores qui repellat illo. Consequatur incidunt dolorum veniam qui perspiciatis possimus. Ea fugit quos et omnis ad.', 0, 1, '1989-06-21 19:00:41', '2010-12-16 17:00:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (55, 81, 99, 'Perferendis aut officiis ut accusantium atque. A illum molestias a voluptatem. Sed accusantium est id sit et ex. Est a qui at non et.', 0, 1, '2017-02-06 18:35:04', '1977-09-23 08:04:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (56, 9, 44, 'Nemo deserunt numquam ratione facilis sed excepturi sit. A autem ipsa optio corrupti molestiae. Ab ad accusamus officiis asperiores.', 1, 1, '1982-09-02 10:18:40', '2010-07-21 08:48:23');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (57, 44, 62, 'Illum quaerat deserunt consequatur delectus mollitia vel. Est officia qui modi laborum. Aut quae velit in dolor dicta autem.', 0, 1, '2001-01-08 04:10:35', '1982-05-28 08:31:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (58, 19, 11, 'Suscipit ut est est enim nesciunt. Non magnam officiis mollitia. Officiis accusantium id aliquam sunt. Odit eum tenetur consequatur eum aut nesciunt.', 0, 1, '1974-01-30 06:26:30', '1987-12-26 11:35:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (59, 18, 23, 'Ullam odio perferendis eum consectetur ut ducimus molestiae. Quo similique rerum rerum. Facilis est et aliquam debitis sed quae eos.', 1, 0, '2015-08-02 07:18:09', '1998-06-15 00:49:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (60, 36, 66, 'Quas ab id ea voluptatibus error voluptatem necessitatibus et. Minima eveniet libero ex. Quaerat ab exercitationem ea doloremque nihil. Dolorem voluptas qui tempora sint architecto ducimus.', 0, 0, '1970-08-23 23:16:52', '1972-05-18 08:30:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (61, 52, 1, 'Molestias molestiae alias ea quam ut. Corporis cumque consequatur deleniti qui repudiandae ea. Nostrum itaque dolor error autem numquam.', 0, 0, '1976-10-13 02:41:31', '2002-08-12 01:28:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (62, 72, 52, 'Sit aut itaque architecto sit dolorum optio consequuntur est. Veniam error ut vel est beatae. Ipsum quia ad aut.', 0, 1, '2008-03-17 20:48:39', '2021-07-15 07:18:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (63, 46, 78, 'Qui tempora reprehenderit perferendis. Laudantium voluptatibus fugiat pariatur et sint aspernatur. Quos sunt voluptas dolorem totam qui.', 1, 1, '1996-04-12 15:44:20', '1998-09-01 07:25:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (64, 71, 29, 'Omnis suscipit consequuntur consequatur. Adipisci adipisci at voluptas similique dolor. Est exercitationem fuga corrupti qui et alias et. Assumenda odio corrupti enim sequi in qui.', 0, 0, '2019-03-19 18:54:59', '2017-04-25 01:07:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (65, 13, 94, 'Saepe velit laboriosam atque in ut ea. Dolor ipsa ut fugit. Numquam aut ut id assumenda molestiae vel dignissimos voluptatem. Error atque illum voluptas est.', 1, 1, '2010-06-26 16:29:49', '2011-05-18 08:54:10');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (66, 53, 1, 'Aliquam nulla ipsam quam dolor id ducimus culpa. Atque et facilis rerum in a qui maxime consequatur. Mollitia quidem quam rerum. At ut nihil sed ullam ducimus recusandae.', 1, 1, '1984-10-13 21:46:33', '2018-07-27 21:27:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (67, 97, 20, 'Sed sunt accusamus maxime minus non. Fuga id non nobis. Consectetur voluptatum rerum animi aliquid eum non. Amet nulla sed quas vel illo.', 0, 1, '1987-08-22 19:59:18', '2019-03-17 01:30:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (68, 89, 60, 'Neque accusantium molestias labore incidunt sed qui ut error. Dolorem suscipit vel aut incidunt facere provident. Ut excepturi consequatur quia minima soluta dolorum.', 0, 0, '1980-04-19 06:50:27', '2000-06-15 00:18:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (69, 1, 91, 'Voluptas totam error aut placeat laborum adipisci laboriosam. Iusto non nobis molestiae corrupti eaque. Quia eum laborum debitis molestiae aut earum.', 0, 0, '1993-07-20 21:55:52', '2009-09-21 21:27:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (70, 45, 95, 'Aut neque quia ut incidunt a neque. Tenetur consequuntur nostrum nostrum asperiores. Ratione eligendi consequatur corporis quae rem qui officia. Laudantium explicabo qui sit dolorem consectetur fugit qui.', 0, 0, '2001-10-30 22:07:07', '1982-08-13 04:27:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (71, 38, 1, 'Deserunt consequuntur nisi ut molestiae. Explicabo dolorem ut quisquam quos magnam. Est reprehenderit et qui cumque culpa hic nostrum ullam.', 1, 0, '1992-02-05 15:07:48', '1990-12-05 10:06:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (72, 82, 35, 'Dolor ea possimus laudantium impedit ipsum voluptas. Quia aliquam libero totam eaque. Voluptatibus id asperiores similique illo.', 0, 0, '1995-12-11 03:01:50', '2008-07-18 13:39:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (73, 12, 12, 'Sed itaque consequatur nisi accusantium facilis quod. Recusandae dolores excepturi et et aut cupiditate quia. Aperiam minus molestiae et tempore est ipsam. Quaerat occaecati ab aperiam officia.', 1, 0, '1985-08-31 12:08:59', '1973-11-21 02:01:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (74, 53, 21, 'Blanditiis quia officiis est. Nobis perspiciatis excepturi fugiat ut totam in. Nisi hic quibusdam modi. Sunt atque rerum id odit sunt dolor. Iusto voluptatem molestiae aperiam.', 0, 1, '2019-09-19 17:58:08', '1989-09-03 09:43:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (75, 9, 87, 'Et iure quia qui ut. Reprehenderit sint velit nostrum reprehenderit voluptatem facilis. Non voluptatem eaque sit facere. Sit nihil perferendis sunt.', 1, 1, '1992-10-26 13:55:32', '1997-04-29 11:48:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (76, 67, 24, 'Soluta ullam commodi ut in. Occaecati ex a soluta earum. Reiciendis aut placeat mollitia rem nemo quia praesentium ducimus.', 0, 0, '2004-01-27 04:10:18', '2003-03-02 07:17:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (77, 53, 8, 'Omnis pariatur nihil ducimus ut aut. Rerum omnis suscipit perspiciatis dolores enim quibusdam. Velit consequuntur minus cum harum dolorum enim.', 0, 1, '1971-01-11 11:05:51', '2013-11-16 17:43:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (78, 39, 55, 'Vel consequatur nemo veniam tempore. Et eaque rem quaerat molestiae est dignissimos. Provident facilis molestiae repellendus magni corporis. Qui atque delectus voluptate.', 0, 0, '1990-09-15 10:24:29', '2020-09-26 14:13:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (79, 5, 44, 'Tempore quasi odit sequi. Aut repellendus ut eligendi incidunt est deleniti. Accusantium sunt in occaecati tenetur. Tempore autem et facilis quidem sequi.', 1, 0, '2019-02-12 03:56:27', '2022-03-03 07:45:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (80, 71, 31, 'Iure velit aut dolores autem velit. Ipsum molestiae aut omnis soluta blanditiis dicta placeat. Est pariatur et sed. Suscipit repellat eveniet dolores est.', 1, 0, '1972-06-11 21:41:33', '1970-09-22 22:49:52');


#
# TABLE STRUCTURE FOR: messages_like_sign
#

DROP TABLE IF EXISTS `messages_like_sign`;

CREATE TABLE `messages_like_sign` (
  `message_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на сообщение',
  `like_sign_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на like_sign',
  `user_id_creator` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя, который поставил Like_sign',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  PRIMARY KEY (`message_id`,`like_sign_id`) COMMENT 'Составной первичный ключ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='связь между сообщениями и значками like ';

INSERT INTO `messages_like_sign` (`message_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (1, 1, 1, '1985-05-20 00:36:58');
INSERT INTO `messages_like_sign` (`message_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (2, 2, 2, '2004-01-08 20:45:14');
INSERT INTO `messages_like_sign` (`message_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (3, 3, 3, '1980-06-09 10:18:10');
INSERT INTO `messages_like_sign` (`message_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (4, 4, 4, '2020-11-05 22:31:53');
INSERT INTO `messages_like_sign` (`message_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (5, 5, 5, '1977-05-03 01:30:49');
INSERT INTO `messages_like_sign` (`message_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (6, 6, 6, '2020-09-15 20:01:32');
INSERT INTO `messages_like_sign` (`message_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (7, 7, 7, '1983-04-07 03:27:03');
INSERT INTO `messages_like_sign` (`message_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (8, 8, 8, '1995-12-15 16:37:39');
INSERT INTO `messages_like_sign` (`message_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (9, 9, 9, '1984-02-09 23:07:52');
INSERT INTO `messages_like_sign` (`message_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (10, 10, 10, '1973-06-14 06:56:56');
INSERT INTO `messages_like_sign` (`message_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (11, 11, 11, '2017-08-05 05:24:08');
INSERT INTO `messages_like_sign` (`message_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (12, 12, 12, '1992-10-08 03:20:07');
INSERT INTO `messages_like_sign` (`message_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (13, 13, 13, '2003-08-30 06:18:19');
INSERT INTO `messages_like_sign` (`message_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (14, 14, 14, '1973-06-11 22:56:40');
INSERT INTO `messages_like_sign` (`message_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (15, 15, 15, '1994-04-15 07:03:08');
INSERT INTO `messages_like_sign` (`message_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (16, 16, 16, '1985-09-23 02:54:04');
INSERT INTO `messages_like_sign` (`message_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (17, 17, 17, '1980-05-04 22:15:09');
INSERT INTO `messages_like_sign` (`message_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (18, 18, 18, '2014-09-01 15:34:22');
INSERT INTO `messages_like_sign` (`message_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (19, 19, 19, '1990-08-31 09:02:10');
INSERT INTO `messages_like_sign` (`message_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (20, 20, 20, '1979-09-15 12:37:03');
INSERT INTO `messages_like_sign` (`message_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (21, 1, 21, '1980-01-17 18:46:06');
INSERT INTO `messages_like_sign` (`message_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (22, 2, 22, '2013-10-21 13:42:53');
INSERT INTO `messages_like_sign` (`message_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (23, 3, 23, '2003-04-20 18:17:56');
INSERT INTO `messages_like_sign` (`message_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (24, 4, 24, '1977-09-18 08:17:24');
INSERT INTO `messages_like_sign` (`message_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (25, 5, 25, '2002-12-10 05:47:59');
INSERT INTO `messages_like_sign` (`message_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (26, 6, 26, '1986-11-12 10:36:06');
INSERT INTO `messages_like_sign` (`message_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (27, 7, 27, '2004-06-27 08:55:05');
INSERT INTO `messages_like_sign` (`message_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (28, 8, 28, '2005-07-31 08:29:12');
INSERT INTO `messages_like_sign` (`message_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (29, 9, 29, '1982-08-23 23:20:08');
INSERT INTO `messages_like_sign` (`message_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (30, 10, 30, '1978-06-12 04:59:22');
INSERT INTO `messages_like_sign` (`message_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (31, 11, 31, '2020-04-20 02:58:25');
INSERT INTO `messages_like_sign` (`message_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (32, 12, 32, '1993-07-10 13:29:29');
INSERT INTO `messages_like_sign` (`message_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (33, 13, 33, '1971-07-27 10:26:44');
INSERT INTO `messages_like_sign` (`message_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (34, 14, 34, '2002-09-19 17:27:01');
INSERT INTO `messages_like_sign` (`message_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (35, 15, 35, '1992-08-07 22:33:03');
INSERT INTO `messages_like_sign` (`message_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (36, 16, 36, '2016-05-25 19:27:41');
INSERT INTO `messages_like_sign` (`message_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (37, 17, 37, '1993-11-21 00:38:31');
INSERT INTO `messages_like_sign` (`message_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (38, 18, 38, '2012-03-10 07:42:44');
INSERT INTO `messages_like_sign` (`message_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (39, 19, 39, '1993-07-06 06:15:03');
INSERT INTO `messages_like_sign` (`message_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (40, 20, 40, '1982-10-25 11:02:47');
INSERT INTO `messages_like_sign` (`message_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (41, 1, 41, '1985-10-01 16:49:37');
INSERT INTO `messages_like_sign` (`message_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (42, 2, 42, '2013-09-03 22:16:05');
INSERT INTO `messages_like_sign` (`message_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (43, 3, 43, '2004-10-06 05:27:27');
INSERT INTO `messages_like_sign` (`message_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (44, 4, 44, '2010-01-29 03:36:13');
INSERT INTO `messages_like_sign` (`message_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (45, 5, 45, '2014-12-10 09:36:26');
INSERT INTO `messages_like_sign` (`message_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (46, 6, 46, '1989-08-10 09:47:43');
INSERT INTO `messages_like_sign` (`message_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (47, 7, 47, '1970-02-06 01:27:09');
INSERT INTO `messages_like_sign` (`message_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (48, 8, 48, '2016-02-07 19:45:07');
INSERT INTO `messages_like_sign` (`message_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (49, 9, 49, '2014-05-21 11:20:32');
INSERT INTO `messages_like_sign` (`message_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (50, 10, 50, '2000-12-19 20:26:20');
INSERT INTO `messages_like_sign` (`message_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (51, 11, 51, '1988-06-24 18:09:33');
INSERT INTO `messages_like_sign` (`message_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (52, 12, 52, '1971-03-22 04:22:40');
INSERT INTO `messages_like_sign` (`message_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (53, 13, 53, '2020-01-13 09:59:36');
INSERT INTO `messages_like_sign` (`message_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (54, 14, 54, '2020-10-25 03:20:27');
INSERT INTO `messages_like_sign` (`message_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (55, 15, 55, '1994-05-06 17:18:38');
INSERT INTO `messages_like_sign` (`message_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (56, 16, 56, '2012-08-11 06:53:10');
INSERT INTO `messages_like_sign` (`message_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (57, 17, 57, '2018-09-26 19:12:26');
INSERT INTO `messages_like_sign` (`message_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (58, 18, 58, '1997-01-14 22:06:33');
INSERT INTO `messages_like_sign` (`message_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (59, 19, 59, '2010-07-07 10:45:19');
INSERT INTO `messages_like_sign` (`message_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (60, 20, 60, '1971-04-01 17:26:55');
INSERT INTO `messages_like_sign` (`message_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (61, 1, 61, '1995-11-10 11:57:36');
INSERT INTO `messages_like_sign` (`message_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (62, 2, 62, '2011-05-05 05:20:17');
INSERT INTO `messages_like_sign` (`message_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (63, 3, 63, '1984-11-10 20:53:42');
INSERT INTO `messages_like_sign` (`message_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (64, 4, 64, '2000-10-28 23:52:09');
INSERT INTO `messages_like_sign` (`message_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (65, 5, 65, '1990-11-07 14:15:10');
INSERT INTO `messages_like_sign` (`message_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (66, 6, 66, '2014-06-15 13:39:12');
INSERT INTO `messages_like_sign` (`message_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (67, 7, 67, '2003-04-09 17:14:49');
INSERT INTO `messages_like_sign` (`message_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (68, 8, 68, '2006-05-26 12:25:11');
INSERT INTO `messages_like_sign` (`message_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (69, 9, 69, '2009-06-11 13:16:40');
INSERT INTO `messages_like_sign` (`message_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (70, 10, 70, '2009-12-30 02:39:04');
INSERT INTO `messages_like_sign` (`message_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (71, 11, 71, '2016-09-15 09:40:33');
INSERT INTO `messages_like_sign` (`message_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (72, 12, 72, '1985-09-18 18:28:07');
INSERT INTO `messages_like_sign` (`message_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (73, 13, 73, '1976-09-29 12:57:34');
INSERT INTO `messages_like_sign` (`message_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (74, 14, 74, '1973-10-29 10:13:05');
INSERT INTO `messages_like_sign` (`message_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (75, 15, 75, '2017-09-02 14:37:48');
INSERT INTO `messages_like_sign` (`message_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (76, 16, 76, '1977-05-05 09:38:55');
INSERT INTO `messages_like_sign` (`message_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (77, 17, 77, '2021-01-16 09:19:20');
INSERT INTO `messages_like_sign` (`message_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (78, 18, 78, '1977-10-05 05:04:37');
INSERT INTO `messages_like_sign` (`message_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (79, 19, 79, '1991-08-30 22:37:41');
INSERT INTO `messages_like_sign` (`message_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (80, 20, 80, '2007-11-03 11:09:12');


#
# TABLE STRUCTURE FOR: profiles
#

DROP TABLE IF EXISTS `profiles`;

CREATE TABLE `profiles` (
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя',
  `gender` char(1) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Пол',
  `birthday` date DEFAULT NULL COMMENT 'Дата рождения',
  `photo_id` int(10) unsigned DEFAULT NULL COMMENT 'Ссылка на основную фотографию пользователя',
  `status` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Текущий статус',
  `city` varchar(130) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Город проживания',
  `country` varchar(130) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Страна проживания',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Профили';

INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (1, '', '2020-02-09', 0, 'Harum doloribus in itaque. Vol', 'Rempelfurt', '4558891', '1989-08-04 18:52:13', '1994-11-28 17:32:01');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (2, '', '2019-11-14', 9, 'Velit quo facilis qui velit du', 'Marleneport', '32501', '2019-03-07 17:23:11', '2000-05-16 19:44:04');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (3, '', '2009-01-09', 8, 'Fuga doloremque modi facere au', 'New Buddyside', '85151', '2022-04-07 06:48:20', '2005-05-04 09:04:00');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (4, '', '1995-10-08', 2, 'Voluptatem ut tenetur pariatur', 'Nathanielfort', '787859412', '1986-06-01 09:15:54', '1979-02-22 18:17:57');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (5, '', '2020-05-12', 0, 'Animi quo ipsum id delectus qu', 'Cummeratamouth', '788900', '2005-12-07 18:33:08', '1992-01-20 10:30:23');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (6, '', '1974-11-12', 4, 'Ut explicabo distinctio offici', 'South Nicholaus', '571384', '1994-05-26 14:38:42', '2012-02-18 04:49:37');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (7, '', '1980-09-06', 1, 'In facilis et sed quaerat. Cor', 'South Chadbury', '613663', '2018-07-23 07:04:34', '1974-07-15 23:40:42');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (8, '', '2013-01-16', 7, 'Aut error magnam deserunt quam', 'Lehnerfort', '3', '2008-04-03 13:41:09', '1987-09-17 18:31:06');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (9, '', '1996-09-08', 8, 'Dolorem numquam et placeat. As', 'Lake Tremaine', '4', '2016-03-20 16:03:31', '1981-08-01 12:22:26');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (10, '', '1987-05-04', 0, 'Ab dolor et ut fugiat aliquid ', 'Rathstad', '92369779', '1972-12-20 02:39:39', '1984-03-23 22:34:28');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (11, '', '2000-12-01', 8, 'Nulla expedita rem aliquid vol', 'Reichelborough', '29', '1971-11-29 11:42:40', '2009-06-23 11:23:14');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (12, '', '1997-01-16', 4, 'Adipisci error reiciendis ut v', 'Greenholtview', '', '1971-07-23 22:32:08', '2004-06-30 10:21:33');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (13, '', '1978-10-23', 5, 'Labore vel placeat et tempore ', 'Magnusview', '85', '1981-10-04 11:24:38', '1977-03-24 14:21:05');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (14, '', '1980-07-03', 7, 'Voluptate nesciunt autem excep', 'Lake Westonton', '', '1983-04-07 01:59:11', '1975-08-29 22:55:35');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (15, '', '2016-06-04', 9, 'Repellat corporis itaque aut e', 'Leonelton', '6802', '2018-08-29 11:46:11', '1982-10-12 04:57:00');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (16, '', '1983-09-26', 8, 'Est quia itaque voluptas. Plac', 'Stevehaven', '36415626', '1973-10-23 00:54:33', '2006-05-13 01:10:47');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (17, '', '2009-09-16', 8, 'Fugiat odit officia autem dolo', 'Port Christelle', '52152378', '1981-04-24 11:23:56', '2014-11-01 02:12:58');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (18, '', '2009-08-26', 9, 'In odit harum repellat recusan', 'Osinskiland', '22629', '1975-12-20 22:06:27', '1970-03-01 21:58:42');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (19, '', '1979-12-02', 8, 'Quos dolorum qui impedit ipsam', 'Runolfsdottirberg', '', '1996-06-19 11:22:42', '1998-10-25 00:12:22');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (20, '', '2012-01-01', 9, 'Ipsam sunt id omnis porro quia', 'Koleville', '90', '1977-04-05 07:19:46', '1972-11-23 08:19:32');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (21, '', '2020-07-02', 1, 'Facilis et accusantium a optio', 'Larsonside', '', '2020-07-17 20:53:13', '2002-07-23 08:01:49');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (22, '', '2012-04-20', 2, 'Aperiam vel dolorum nobis labo', 'West Roma', '851875', '1981-08-07 07:53:06', '1990-06-01 07:22:37');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (23, '', '2002-02-10', 7, 'Omnis iure qui et. Aut blandit', 'McGlynnburgh', '1', '1986-04-20 08:59:59', '1997-02-23 19:52:34');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (24, '', '2011-12-31', 6, 'Qui fugiat rerum qui ipsum ut ', 'Jaidenmouth', '6756', '2004-06-04 11:31:52', '1982-11-03 07:56:41');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (25, '', '1985-10-17', 3, 'Non omnis vel non placeat sunt', 'Greenfelderville', '', '1973-06-10 06:48:51', '1971-09-09 00:17:30');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (26, '', '1982-04-28', 2, 'Excepturi qui quia est eum vol', 'Hermannport', '85389553', '1975-06-19 07:38:54', '2018-09-27 00:38:48');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (27, '', '1972-06-23', 5, 'Et sed at asperiores in ad aut', 'New Guy', '7239988', '1993-12-02 02:13:16', '2012-12-03 10:05:44');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (28, '', '1970-08-06', 8, 'Facere earum vel dolorem tenet', 'Rosannahaven', '24', '1973-05-06 00:27:27', '2019-05-21 19:42:32');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (29, '', '2001-06-23', 1, 'Voluptatum illum est aspernatu', 'North Ruthe', '3', '2016-04-10 00:50:42', '1999-04-09 16:28:13');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (30, '', '1991-01-24', 6, 'Doloremque et qui commodi quae', 'North Lavernefort', '8', '2009-03-04 14:57:11', '2011-01-25 11:57:33');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (31, '', '2012-06-10', 4, 'Ea blanditiis porro quos corru', 'Marvinport', '3', '1984-01-02 20:20:57', '1989-12-21 11:45:42');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (32, '', '2002-07-26', 7, 'Magni sint doloremque est qui ', 'Binsside', '4', '1978-03-11 13:03:04', '1978-12-03 04:57:47');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (33, '', '1977-03-13', 2, 'Cumque iste quas beatae evenie', 'Braunbury', '4', '1994-09-11 12:34:00', '1971-11-05 10:02:16');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (34, '', '1976-03-11', 4, 'Nisi voluptas quas dicta repel', 'Nienowshire', '99129554', '1992-04-28 00:29:23', '1975-05-29 02:21:32');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (35, '', '2016-01-05', 5, 'Autem dolor repellat vitae qui', 'West Payton', '3', '1993-03-20 17:31:14', '1978-06-11 14:13:40');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (36, '', '1975-02-13', 5, 'Sed corrupti in aut expedita h', 'South Tianna', '848', '1980-06-30 10:21:40', '2012-03-07 23:20:31');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (37, '', '1998-02-13', 4, 'Quidem sit aliquid et repellen', 'Lake Jenamouth', '945973434', '1986-04-04 03:28:18', '1977-09-15 12:45:49');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (38, '', '1975-05-11', 8, 'Quo earum laborum optio ut vol', 'Port Nicoleport', '', '2010-07-25 03:15:29', '1981-04-03 01:38:12');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (39, '', '1976-11-14', 4, 'Cumque veniam eaque sequi mini', 'Port Jennyferport', '', '1981-10-22 19:19:40', '2010-01-17 10:03:48');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (40, '', '1993-05-17', 5, 'Et rerum enim possimus quo qui', 'New Burleyport', '27113', '1996-05-17 00:50:27', '2003-12-21 12:31:41');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (41, '', '2016-05-24', 7, 'Nesciunt placeat aperiam aliqu', 'Emardborough', '7', '2000-04-15 00:55:09', '1976-04-30 21:32:26');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (42, '', '1999-09-20', 4, 'Voluptatum voluptatum temporib', 'Sigmundhaven', '120', '1979-01-07 06:10:39', '1975-10-21 18:53:09');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (43, '', '1999-06-28', 1, 'Occaecati velit dolore suscipi', 'Bechtelarmouth', '5', '1994-12-09 23:48:12', '1998-08-03 19:46:43');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (44, '', '2020-07-05', 5, 'Repudiandae vitae suscipit min', 'North Donnellborough', '5', '1972-05-18 10:26:24', '1996-01-01 05:20:01');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (45, '', '2010-05-22', 0, 'Alias soluta placeat neque vel', 'Taureanland', '499455939', '2015-05-13 08:54:44', '2006-01-14 23:43:11');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (46, '', '1985-09-12', 6, 'Sequi tenetur qui repellendus ', 'Rohanborough', '64702', '1985-05-11 14:00:18', '1982-07-19 16:55:53');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (47, '', '1981-10-12', 7, 'Et est dicta ut iure. Expedita', 'Cotyberg', '490873', '1985-07-05 12:34:34', '2001-11-09 00:48:18');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (48, '', '2010-04-08', 4, 'Officia totam minus incidunt d', 'Bruenport', '6', '1976-06-03 15:46:53', '1975-01-09 13:12:57');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (49, '', '1982-02-06', 9, 'Iste non dolor dolor sunt eum ', 'East Carmelmouth', '91152', '2014-11-30 17:47:13', '1993-10-07 15:45:30');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (50, '', '2002-03-08', 0, 'Autem quod totam magnam. At qu', 'Heidenreichchester', '5766', '1975-06-05 22:02:56', '2000-11-26 15:45:05');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (51, '', '2001-07-31', 0, 'Quos dicta vel dolore a sunt r', 'Rennertown', '365', '1976-06-10 05:01:35', '1976-09-03 19:46:43');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (52, '', '2002-08-30', 7, 'Nobis possimus minima rem modi', 'Hermistontown', '2', '2010-02-08 17:19:29', '1982-11-04 05:13:10');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (53, '', '1972-09-14', 4, 'Reiciendis dolor et qui repudi', 'Port Roderick', '', '2021-02-19 12:57:51', '2001-09-15 11:11:21');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (54, '', '2014-10-02', 4, 'Rerum ut ut dolor ducimus eum.', 'Schinnershire', '3226067', '1977-11-28 12:36:30', '1987-07-24 17:17:57');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (55, '', '1972-11-30', 4, 'Sapiente consectetur nulla ver', 'North Britney', '5323758', '1990-10-06 07:41:17', '2009-07-21 10:58:05');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (56, '', '2018-07-26', 2, 'Placeat deserunt in quia rerum', 'Altaview', '2787', '2022-07-14 04:36:28', '1971-08-19 13:14:32');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (57, '', '2014-07-23', 5, 'Assumenda fugiat vel corrupti ', 'North Ernestoland', '83', '2012-07-09 22:40:34', '1983-08-07 04:21:20');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (58, '', '2003-03-14', 7, 'Dolor sed molestiae recusandae', 'Bernadetteport', '3', '1988-11-06 22:13:21', '1997-01-18 22:41:44');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (59, '', '1972-02-26', 8, 'Voluptas saepe sed blanditiis ', 'Marianeville', '29', '1988-07-02 13:02:11', '1976-04-12 08:03:21');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (60, '', '1990-05-20', 1, 'Odio quidem aut quae. Quibusda', 'South Litzybury', '1', '2005-01-19 18:26:42', '2014-06-21 23:56:07');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (61, '', '2014-08-07', 0, 'Ratione hic praesentium eos. T', 'Kielview', '204118369', '1985-08-14 00:26:05', '1986-07-22 09:29:18');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (62, '', '2000-01-08', 5, 'Et non voluptas recusandae qui', 'Judeport', '93017', '2014-11-17 00:27:57', '2021-11-06 11:55:40');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (63, '', '1988-05-16', 5, 'Molestiae consequuntur consequ', 'Audreyburgh', '287599983', '2019-05-06 02:26:25', '2017-02-05 00:01:15');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (64, '', '1983-08-23', 3, 'Est voluptas numquam nostrum v', 'West Adelbert', '15', '2020-10-04 04:05:54', '1973-09-29 10:55:00');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (65, '', '1974-06-05', 4, 'Magnam id excepturi quia iste.', 'North Adrianna', '', '2008-10-24 07:38:43', '2004-04-10 02:20:17');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (66, '', '2008-10-14', 7, 'Cupiditate delectus sapiente e', 'Nelschester', '3479678', '1983-07-11 21:09:36', '2015-06-15 22:30:29');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (67, '', '1986-03-29', 3, 'Ad est quo ut dignissimos quia', 'Kuhnburgh', '651626', '2002-09-03 13:59:35', '2000-07-14 04:54:49');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (68, '', '2003-05-03', 5, 'Eos beatae nemo officia qui su', 'East Emory', '33', '1992-10-07 18:09:39', '2009-09-28 11:20:20');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (69, '', '1986-01-23', 0, 'Pariatur veniam quibusdam est ', 'Lake Reganchester', '106', '2018-03-04 06:21:23', '1992-07-29 12:13:19');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (70, '', '1976-04-30', 2, 'Consequatur et tempora magnam ', 'South Lillianashire', '98249', '1971-09-20 00:51:36', '2010-10-13 15:17:19');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (71, '', '1989-03-29', 0, 'Voluptates repellat nulla ut d', 'West Marlee', '449035', '1999-07-08 08:51:11', '2010-01-11 23:56:32');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (72, '', '1996-09-09', 9, 'Expedita ad temporibus est sus', 'Briannestad', '88', '1990-01-07 16:22:09', '2000-10-18 06:34:42');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (73, '', '1999-01-24', 2, 'Veritatis quo voluptatibus cor', 'New Ronnyburgh', '694266', '2021-01-05 00:58:44', '1972-11-06 05:02:28');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (74, '', '2018-05-13', 6, 'Ullam quae consequatur deserun', 'South Ethylmouth', '87151', '2003-03-24 15:20:57', '2013-06-17 14:22:38');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (75, '', '1998-01-16', 4, 'Laboriosam esse tenetur magni ', 'New Golda', '61096', '2014-10-22 02:55:55', '1982-05-01 08:58:01');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (76, '', '1985-08-22', 8, 'Ut consequuntur accusantium ve', 'Vitaport', '464091', '1970-04-26 14:46:15', '1993-02-18 02:24:42');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (77, '', '1989-11-17', 1, 'Quisquam quibusdam beatae recu', 'Kyleighhaven', '', '1994-07-18 07:05:24', '1993-08-17 20:54:32');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (78, '', '2005-12-18', 4, 'Ea praesentium laboriosam cons', 'Pascalehaven', '6125665', '2015-11-13 20:09:56', '1993-09-04 23:40:20');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (79, '', '2015-01-05', 7, 'Tempora numquam cupiditate ten', 'North Amalia', '', '2005-03-24 05:45:51', '2011-12-20 17:59:15');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (80, '', '2013-03-20', 0, 'Enim accusamus blanditiis face', 'Lake Addison', '9917', '1997-11-09 03:18:55', '1986-02-28 14:45:11');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (81, '', '2004-01-05', 8, 'Molestiae sunt recusandae reru', 'New Alvertamouth', '51', '1985-10-23 13:12:10', '2013-10-07 16:20:52');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (82, '', '2008-03-30', 3, 'Odit esse quam sunt qui aut qu', 'New Kobe', '280793', '2000-10-16 15:56:08', '1976-04-04 00:07:12');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (83, '', '1971-08-10', 9, 'Voluptatem qui architecto saep', 'Port Eladioport', '', '2008-05-29 04:45:27', '2013-01-16 18:24:40');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (84, '', '2012-11-24', 3, 'Et eveniet quidem ut dolores a', 'East Shanyview', '1', '2019-04-10 21:43:54', '2008-07-26 20:31:25');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (85, '', '1983-04-28', 2, 'Mollitia architecto alias quis', 'Carleyland', '1', '1990-01-19 19:44:16', '2001-01-08 03:38:46');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (86, '', '1997-06-09', 6, 'Quaerat voluptatibus voluptatu', 'Cronahaven', '712035', '1991-11-11 09:36:23', '2006-12-26 13:12:57');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (87, '', '1981-06-23', 3, 'Officiis minus facere et et. E', 'Katlynnshire', '841929756', '2010-06-29 07:57:06', '2004-09-28 12:31:14');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (88, '', '2011-09-26', 2, 'Eos unde sed molestias blandit', 'Baumbachchester', '', '1988-03-05 07:03:00', '2002-06-27 14:14:50');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (89, '', '2017-07-07', 1, 'Sapiente qui quas sit tempore ', 'Wiegandburgh', '63632612', '1980-09-13 23:32:21', '1983-10-16 15:27:47');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (90, '', '2010-06-18', 8, 'Quas ipsam culpa provident quo', 'Mosciskistad', '256991988', '1997-06-10 06:57:28', '2004-11-04 20:31:15');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (91, '', '1982-03-26', 6, 'Ducimus exercitationem aut aut', 'Moentown', '912', '2001-12-11 11:39:01', '1977-07-27 05:54:50');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (92, '', '1974-06-26', 3, 'Hic placeat quasi iusto omnis.', 'Quitzonberg', '7603', '2020-11-23 13:58:10', '1975-12-26 02:11:52');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (93, '', '1987-03-08', 4, 'Vitae mollitia est saepe esse.', 'Lake Rafaelaton', '', '1972-08-26 02:21:19', '1983-07-23 15:58:03');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (94, '', '1988-02-10', 3, 'Consequatur atque temporibus b', 'Audiehaven', '609681519', '1985-10-02 19:05:18', '1989-09-17 14:31:23');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (95, '', '2009-08-29', 8, 'Maxime sit enim ipsam sed nost', 'Port Aliciaview', '49', '1992-06-09 22:31:08', '1973-01-20 15:00:46');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (96, '', '1973-12-20', 3, 'Voluptatem deleniti recusandae', 'Hellerborough', '65', '1996-11-29 15:46:25', '2021-02-05 01:23:40');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (97, '', '1986-02-22', 6, 'Sint enim explicabo est evenie', 'Port Oliver', '927', '1971-10-26 21:39:09', '1991-04-27 21:42:18');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (98, '', '2018-12-25', 0, 'Repellat ut natus vitae minus ', 'Bradleychester', '99', '2010-09-02 22:07:49', '1974-07-03 00:47:59');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (99, '', '2017-12-18', 2, 'Quam et rem voluptas blanditii', 'New Westley', '5261769', '2015-08-21 15:02:39', '2011-08-12 21:42:28');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (100, '', '1996-08-21', 4, 'Minus architecto sit sed nostr', 'East Peter', '', '1971-12-18 04:39:57', '2012-04-28 19:49:38');


#
# TABLE STRUCTURE FOR: users
#

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Имя пользователя',
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Фамилия пользователя',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Почта',
  `phone` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Телефон',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Пользователи';

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (1, 'Brooklyn', 'Moen', 'everett.davis@example.net', '+09(2)3296895978', '2014-11-14 23:19:17', '2014-07-05 13:51:40');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (2, 'Sabryna', 'Legros', 'bosco.ransom@example.net', '(176)853-2318x71615', '1990-05-18 03:59:59', '2013-04-20 22:05:41');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (3, 'Cary', 'Blanda', 'xmarquardt@example.net', '02877991800', '2004-04-07 12:42:45', '1986-07-15 22:14:33');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (4, 'Amanda', 'Ryan', 'wiza.corene@example.org', '+14(8)5132017650', '1986-08-23 08:50:56', '1979-07-05 07:27:31');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (5, 'Sedrick', 'O\'Conner', 'lwaters@example.net', '361.543.2940', '1998-08-25 03:19:27', '2020-07-29 18:34:39');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (6, 'Guy', 'Borer', 'jyost@example.com', '429.577.5707', '1971-05-11 21:05:33', '2000-06-23 10:18:43');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (7, 'Sim', 'Runolfsson', 'schoen.cielo@example.org', '1-433-449-7108', '2008-08-24 15:48:08', '2005-10-25 16:11:45');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (8, 'Devin', 'Schuppe', 'uherman@example.org', '1-897-240-0203x100', '1984-05-11 17:22:29', '1987-11-23 19:20:02');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (9, 'Pinkie', 'Kiehn', 'bednar.raina@example.net', '547.398.9837x17266', '1992-02-01 01:27:03', '2001-11-16 09:00:08');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (10, 'Otis', 'Sporer', 'sawayn.mariana@example.net', '1-674-714-5244', '2012-01-05 06:22:31', '2004-07-28 08:20:01');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (11, 'Florian', 'Kuphal', 'casper.dianna@example.org', '138.677.0381x35182', '1978-01-26 11:43:00', '1993-11-21 09:03:05');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (12, 'Karl', 'Hagenes', 'justus93@example.com', '036-867-8848x6937', '1985-01-13 21:24:39', '1973-02-01 14:42:50');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (13, 'Nicole', 'Wintheiser', 'wuckert.eric@example.com', '1-397-130-7337', '2016-09-16 17:35:59', '2022-07-27 11:11:22');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (14, 'Maribel', 'Lang', 'alexandre.windler@example.com', '1-412-830-9923x23788', '2006-11-04 07:10:54', '1991-10-22 21:03:56');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (15, 'Layne', 'Waelchi', 'matteo.will@example.net', '981.854.9367', '2001-06-08 23:32:13', '2014-09-25 10:51:24');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (16, 'Aubrey', 'Reynolds', 'mlakin@example.org', '087-631-5961x03086', '1998-09-22 22:10:50', '2016-05-18 04:47:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (17, 'Magdalen', 'Doyle', 'mack24@example.net', '05796181763', '2019-06-18 07:37:03', '2018-10-24 05:32:13');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (18, 'Cayla', 'Ziemann', 'marley.thiel@example.org', '589-782-0737x099', '2019-08-19 05:33:52', '2017-09-26 11:24:41');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (19, 'Lora', 'Hilpert', 'bryana12@example.org', '1-832-029-6794x404', '1990-07-30 20:27:22', '2018-07-29 00:11:20');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (20, 'Elisa', 'Walker', 'georgiana.maggio@example.net', '1-416-891-9070', '1997-04-26 04:54:56', '1994-06-16 22:00:04');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (21, 'Hellen', 'Hyatt', 'beatty.maxime@example.com', '05529705826', '1978-03-23 10:15:17', '2022-03-20 05:22:32');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (22, 'Arthur', 'Zulauf', 'marietta85@example.org', '774-738-3834x09603', '1980-01-08 04:11:31', '2018-12-18 21:42:17');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (23, 'Evangeline', 'Kessler', 'brycen18@example.com', '(419)055-2926x373', '2001-04-17 07:00:47', '2001-08-15 15:19:12');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (24, 'Milford', 'Lynch', 'nicklaus.schultz@example.com', '07583933973', '2019-04-17 11:51:22', '2016-08-03 23:33:49');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (25, 'Eulah', 'Wolff', 'frieda.glover@example.com', '(884)730-8828x4974', '1983-03-11 05:13:08', '1982-05-19 05:27:12');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (26, 'Janie', 'Padberg', 'dominique25@example.org', '341.346.4698x6107', '1999-10-22 18:37:18', '1999-12-08 22:11:07');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (27, 'Wilfred', 'Hahn', 'lzemlak@example.net', '(836)286-6388x32473', '2001-04-30 22:39:15', '1990-12-15 10:41:45');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (28, 'Rod', 'Toy', 'kiana79@example.net', '1-257-893-0501x69729', '2009-06-26 05:26:26', '1991-10-26 18:32:29');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (29, 'Enola', 'Nolan', 'vbarton@example.org', '+41(7)2821571826', '2020-09-25 12:29:01', '2008-10-13 19:17:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (30, 'Sabryna', 'Jenkins', 'laisha.goodwin@example.com', '1-227-422-3929x1890', '1974-07-14 20:45:34', '1998-03-15 03:54:00');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (31, 'Viva', 'Smitham', 'uschulist@example.com', '+64(0)7682033298', '2016-07-14 06:56:05', '1983-09-06 11:38:04');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (32, 'Amina', 'Rosenbaum', 'lubowitz.jovan@example.org', '(011)471-0951', '2001-06-22 21:50:57', '2002-11-01 12:03:01');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (33, 'Jonas', 'Skiles', 'era19@example.net', '057.066.3801', '1971-06-22 14:04:43', '1997-12-06 08:03:04');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (34, 'Samir', 'Renner', 'xstroman@example.com', '700-835-3643x42568', '1997-01-26 04:05:07', '1982-05-10 10:00:32');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (35, 'Keira', 'Pagac', 'theresia.eichmann@example.net', '(003)696-0121', '1990-06-29 23:35:28', '2016-04-21 17:52:13');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (36, 'Felipa', 'Treutel', 'robel.deondre@example.com', '226-935-1881x491', '1986-12-18 18:19:24', '1983-02-19 21:54:22');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (37, 'Dan', 'Hilll', 'oral52@example.com', '03089553574', '1983-06-04 10:44:49', '2009-06-18 12:11:32');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (38, 'Edythe', 'Homenick', 'helene.green@example.org', '348.286.9921', '2008-06-15 23:39:54', '1977-05-31 23:38:03');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (39, 'Shanel', 'Lindgren', 'leif.frami@example.com', '1-660-183-3666', '1984-02-03 14:25:39', '2018-07-25 10:04:48');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (40, 'Lysanne', 'Shields', 'juston.walker@example.com', '01624750170', '2009-02-08 02:39:46', '2004-08-02 16:50:25');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (41, 'Malika', 'Flatley', 'shaniya.glover@example.org', '1-074-837-1961x986', '2017-07-25 16:38:09', '1978-10-17 06:50:11');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (42, 'Gene', 'Stiedemann', 'queen29@example.com', '09960339854', '2011-03-06 08:41:05', '2009-01-19 23:07:57');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (43, 'Hermina', 'Abshire', 'roxane57@example.net', '825-436-5001', '2019-04-12 09:12:26', '1974-08-22 02:44:26');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (44, 'Alivia', 'Grant', 'jhodkiewicz@example.com', '1-548-229-4247x255', '2005-02-20 06:18:03', '2006-12-01 01:45:04');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (45, 'Lavonne', 'Kohler', 'keshaun.west@example.org', '457.594.5054x089', '2002-05-05 14:24:31', '1995-06-06 20:23:22');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (46, 'Idella', 'Mitchell', 'madie16@example.com', '1-190-124-1297x417', '2015-12-20 13:16:09', '1989-11-17 11:15:25');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (47, 'Kian', 'Rath', 'bernier.trenton@example.net', '619-100-6029', '1988-05-14 15:18:09', '1995-01-27 20:08:12');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (48, 'Bianka', 'Runolfsdottir', 'obie.larkin@example.org', '(961)595-4134', '1972-11-04 17:12:38', '2017-03-28 21:26:21');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (49, 'Guillermo', 'Brown', 'brohan@example.com', '462-970-1892', '1986-12-24 09:54:06', '2021-02-08 14:17:12');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (50, 'Vicenta', 'Zboncak', 'xwilkinson@example.com', '125-208-8537', '2000-01-06 04:25:28', '1987-05-23 19:16:27');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (51, 'Grant', 'Hermann', 'raltenwerth@example.net', '371.902.2511x64027', '1980-08-11 05:00:59', '1978-11-17 06:12:29');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (52, 'Conrad', 'Veum', 'oarmstrong@example.net', '986.452.2687x987', '2005-10-30 17:56:33', '2008-07-07 01:59:26');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (53, 'Maegan', 'Cole', 'hegmann.aimee@example.net', '622.599.6753x73244', '2003-07-15 13:49:12', '2017-07-18 19:09:17');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (54, 'Dominique', 'Stamm', 'bella10@example.org', '+21(6)2433716116', '1980-12-07 04:48:32', '2020-09-13 02:16:13');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (55, 'Thomas', 'Herzog', 'eloisa.ondricka@example.org', '522.163.7130', '2016-02-26 18:27:51', '2013-10-11 14:46:48');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (56, 'Norval', 'Stokes', 'schamberger.haylee@example.org', '02451381795', '2020-12-01 05:28:35', '2014-08-16 20:07:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (57, 'Laurence', 'Mitchell', 'o\'connell.torrance@example.net', '02155213236', '1988-07-17 17:17:48', '1997-12-03 18:57:42');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (58, 'Lura', 'Kihn', 'tristian32@example.net', '(452)535-2415x612', '1991-12-04 12:25:24', '2007-06-18 16:45:22');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (59, 'Katharina', 'Monahan', 'dsporer@example.net', '1-632-343-4400x7511', '2015-05-08 11:06:03', '1977-11-22 04:41:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (60, 'Vivianne', 'Kassulke', 'beer.emmitt@example.org', '1-006-544-1861', '2014-08-05 09:02:48', '2014-08-16 23:06:11');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (61, 'Alycia', 'Berge', 'liliana75@example.org', '(750)246-0891x465', '2020-01-27 10:03:22', '1972-12-12 01:15:49');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (62, 'Danial', 'Bednar', 'kiel97@example.org', '709.567.1125', '1984-06-19 19:24:58', '2004-07-11 05:20:17');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (63, 'Jennyfer', 'Runolfsson', 'fschinner@example.org', '(163)686-8332', '2007-08-05 14:05:02', '1990-12-28 10:34:58');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (64, 'Benny', 'Gutkowski', 'herman.joanie@example.net', '326.995.7755x4378', '1994-01-08 15:41:32', '1971-07-26 13:47:20');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (65, 'Talia', 'Altenwerth', 'aquitzon@example.net', '320-933-6109x8329', '2001-05-21 08:11:06', '1995-01-22 15:35:12');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (66, 'Brielle', 'Kunze', 'bhermiston@example.net', '615.241.1143x4588', '1986-05-06 10:55:01', '2001-10-25 18:23:32');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (67, 'Ansley', 'Donnelly', 'krath@example.org', '968.066.4411x46856', '2002-04-24 20:26:09', '2017-10-10 05:11:07');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (68, 'Retta', 'Wisoky', 'teresa.kozey@example.net', '01789807427', '2015-03-22 02:37:32', '2005-11-19 20:36:26');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (69, 'Ardith', 'Weimann', 'hahn.frankie@example.com', '(629)617-6291', '2006-05-26 10:34:19', '1993-07-26 00:38:43');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (70, 'Shannon', 'Ernser', 'towne.liliane@example.com', '021-256-5642x5667', '2008-04-23 02:24:17', '1971-03-21 03:34:37');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (71, 'Elenora', 'Harvey', 'funk.graciela@example.net', '195-027-4468', '2007-01-21 04:07:34', '1997-10-06 03:01:21');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (72, 'Logan', 'Kemmer', 'zaria.prohaska@example.com', '753-163-8587x69509', '1987-04-10 16:09:27', '1972-08-28 12:13:41');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (73, 'Kelly', 'Kulas', 'batz.ian@example.org', '00522987373', '1991-07-24 08:35:43', '1996-09-20 10:56:18');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (74, 'Ward', 'Goyette', 'kling.laverna@example.com', '+31(5)0198815381', '1991-03-27 03:48:17', '1980-08-24 12:12:46');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (75, 'Kaylin', 'Towne', 'hagenes.jaclyn@example.org', '05174993701', '2001-02-27 11:52:09', '1995-07-05 17:00:30');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (76, 'Arianna', 'Rice', 'zhand@example.org', '189-074-7312', '2001-11-11 18:06:40', '1987-05-23 10:32:41');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (77, 'Moriah', 'Pagac', 'dorothea.nienow@example.com', '1-956-045-8486', '2010-01-24 14:15:27', '2005-01-03 00:09:17');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (78, 'Rhiannon', 'Hyatt', 'nkuhlman@example.com', '224-081-0803', '1970-08-27 16:47:41', '2006-01-14 01:50:40');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (79, 'Eliza', 'Dietrich', 'vadams@example.net', '+53(8)1509218613', '1974-10-28 23:13:28', '2013-10-15 17:39:51');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (80, 'Tia', 'Macejkovic', 'medhurst.karine@example.net', '775.283.9179', '2017-10-04 00:44:44', '2004-08-30 08:34:22');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (81, 'Ariane', 'Roberts', 'ttromp@example.com', '749-948-5545x120', '1973-02-19 11:22:40', '1972-11-10 09:03:18');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (82, 'Dayna', 'Schimmel', 'terrill.rodriguez@example.net', '092-015-9376', '1979-02-05 00:47:51', '2000-12-09 16:48:26');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (83, 'Viviane', 'Walter', 'loyal40@example.org', '+41(9)7426538890', '2014-10-06 04:00:52', '1990-05-10 19:59:50');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (84, 'Franz', 'Koepp', 'richmond.o\'reilly@example.com', '509-370-4112', '2019-06-25 23:59:05', '1998-12-07 02:41:57');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (85, 'Van', 'Cronin', 'hsimonis@example.com', '1-812-420-7272x596', '1979-07-12 05:53:46', '2000-07-19 21:00:22');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (86, 'Oscar', 'Macejkovic', 'cheyenne.flatley@example.com', '(738)972-9749x847', '2020-03-01 22:46:26', '1982-01-30 19:44:36');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (87, 'Durward', 'Nolan', 'zwintheiser@example.org', '275.212.4573x9938', '2003-04-10 10:11:36', '2004-07-05 20:10:51');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (88, 'Emelie', 'Gerhold', 'damien.mosciski@example.net', '267-478-8062x9595', '1989-12-27 17:16:59', '1982-04-08 15:57:35');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (89, 'Shanon', 'Abernathy', 'fern.purdy@example.com', '248.887.7808x93013', '2001-09-04 21:27:14', '1996-12-15 16:27:42');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (90, 'Kameron', 'Pagac', 'harvey30@example.net', '696-057-8278x9418', '1982-01-05 06:20:24', '1977-10-11 15:24:42');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (91, 'Katheryn', 'Bartell', 'kory.eichmann@example.org', '00521176680', '1972-02-25 12:44:32', '1992-02-09 04:21:59');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (92, 'Melyna', 'Johnson', 'htoy@example.net', '401.117.6883x273', '1984-01-19 10:57:52', '2015-10-28 16:10:11');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (93, 'Adalberto', 'Adams', 'mwalsh@example.org', '09173262569', '2020-01-29 19:35:20', '2002-12-28 12:49:28');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (94, 'Donna', 'Schulist', 'otilia.moen@example.com', '1-995-034-0539', '2010-05-18 06:41:40', '1992-01-29 20:13:35');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (95, 'Burnice', 'Eichmann', 'osvaldo30@example.com', '(482)167-0291x614', '1982-12-29 04:04:23', '2016-08-17 22:14:26');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (96, 'Orville', 'Wehner', 'katelyn.friesen@example.org', '(484)595-0859', '2006-11-26 13:54:51', '2000-08-08 07:22:51');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (97, 'Delphia', 'Upton', 'weissnat.chris@example.org', '709-551-6117', '1989-06-06 21:11:49', '1972-01-22 06:19:23');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (98, 'Belle', 'Senger', 'kelsi.gulgowski@example.org', '07205742035', '2012-04-02 03:04:43', '1984-12-11 10:30:30');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (99, 'Rubie', 'Torp', 'thermann@example.org', '03977276508', '1970-08-09 12:06:06', '1978-02-16 20:28:09');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (100, 'Gunnar', 'Lesch', 'bechtelar.trinity@example.com', '(631)991-8142x26999', '1978-11-19 09:57:06', '1980-06-05 13:42:14');


#
# TABLE STRUCTURE FOR: users_like_sign
#

DROP TABLE IF EXISTS `users_like_sign`;

CREATE TABLE `users_like_sign` (
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя',
  `like_sign_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на like_sign',
  `user_id_creator` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя, который поставил Like_sign',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  PRIMARY KEY (`user_id`,`like_sign_id`) COMMENT 'Составной первичный ключ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='связь между пользователями и значками like ';

INSERT INTO `users_like_sign` (`user_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (1, 1, 0, '2006-12-05 20:00:24');
INSERT INTO `users_like_sign` (`user_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (2, 2, 0, '2002-06-04 05:31:11');
INSERT INTO `users_like_sign` (`user_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (3, 3, 0, '1985-11-14 12:40:12');
INSERT INTO `users_like_sign` (`user_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (4, 4, 0, '1981-01-01 06:04:14');
INSERT INTO `users_like_sign` (`user_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (5, 5, 0, '1974-03-13 20:52:19');
INSERT INTO `users_like_sign` (`user_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (6, 6, 0, '2015-07-13 08:36:32');
INSERT INTO `users_like_sign` (`user_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (7, 7, 0, '2019-01-24 21:35:30');
INSERT INTO `users_like_sign` (`user_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (8, 8, 0, '1972-01-20 11:38:29');
INSERT INTO `users_like_sign` (`user_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (9, 9, 0, '2019-10-08 20:37:19');
INSERT INTO `users_like_sign` (`user_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (10, 10, 0, '1973-03-27 08:56:18');
INSERT INTO `users_like_sign` (`user_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (11, 11, 0, '2013-08-29 12:37:40');
INSERT INTO `users_like_sign` (`user_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (12, 12, 0, '1976-02-07 18:12:02');
INSERT INTO `users_like_sign` (`user_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (13, 13, 0, '1991-01-02 15:59:08');
INSERT INTO `users_like_sign` (`user_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (14, 14, 0, '2014-05-16 01:11:22');
INSERT INTO `users_like_sign` (`user_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (15, 15, 0, '2003-11-28 09:59:03');
INSERT INTO `users_like_sign` (`user_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (16, 16, 0, '2009-12-25 14:50:45');
INSERT INTO `users_like_sign` (`user_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (17, 17, 0, '1996-07-05 21:16:13');
INSERT INTO `users_like_sign` (`user_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (18, 18, 0, '2020-09-05 16:28:26');
INSERT INTO `users_like_sign` (`user_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (19, 19, 0, '1992-06-14 17:35:17');
INSERT INTO `users_like_sign` (`user_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (20, 20, 0, '2000-09-28 09:00:30');
INSERT INTO `users_like_sign` (`user_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (21, 1, 0, '2009-12-07 01:00:44');
INSERT INTO `users_like_sign` (`user_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (22, 2, 0, '1983-03-28 07:25:06');
INSERT INTO `users_like_sign` (`user_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (23, 3, 0, '2003-11-08 20:25:13');
INSERT INTO `users_like_sign` (`user_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (24, 4, 0, '1981-09-15 06:48:04');
INSERT INTO `users_like_sign` (`user_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (25, 5, 0, '2014-10-27 20:42:49');
INSERT INTO `users_like_sign` (`user_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (26, 6, 0, '1998-05-16 06:53:58');
INSERT INTO `users_like_sign` (`user_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (27, 7, 0, '2005-12-20 17:11:13');
INSERT INTO `users_like_sign` (`user_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (28, 8, 0, '2009-10-24 00:31:17');
INSERT INTO `users_like_sign` (`user_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (29, 9, 0, '2021-10-15 10:11:29');
INSERT INTO `users_like_sign` (`user_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (30, 10, 0, '1998-02-13 09:06:17');
INSERT INTO `users_like_sign` (`user_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (31, 11, 0, '2020-11-15 13:28:58');
INSERT INTO `users_like_sign` (`user_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (32, 12, 0, '1989-01-16 16:55:45');
INSERT INTO `users_like_sign` (`user_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (33, 13, 0, '2014-04-20 00:51:06');
INSERT INTO `users_like_sign` (`user_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (34, 14, 0, '1973-07-09 09:32:36');
INSERT INTO `users_like_sign` (`user_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (35, 15, 0, '2002-01-15 22:45:26');
INSERT INTO `users_like_sign` (`user_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (36, 16, 0, '2014-06-20 12:45:36');
INSERT INTO `users_like_sign` (`user_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (37, 17, 0, '1998-07-29 18:24:40');
INSERT INTO `users_like_sign` (`user_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (38, 18, 0, '1988-08-10 12:20:53');
INSERT INTO `users_like_sign` (`user_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (39, 19, 0, '1984-07-24 04:48:19');
INSERT INTO `users_like_sign` (`user_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (40, 20, 0, '2010-03-03 16:14:43');
INSERT INTO `users_like_sign` (`user_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (41, 1, 0, '2014-07-06 03:43:38');
INSERT INTO `users_like_sign` (`user_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (42, 2, 0, '2007-10-02 10:34:27');
INSERT INTO `users_like_sign` (`user_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (43, 3, 0, '2010-06-30 06:14:09');
INSERT INTO `users_like_sign` (`user_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (44, 4, 0, '1985-12-18 18:10:46');
INSERT INTO `users_like_sign` (`user_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (45, 5, 0, '2001-12-14 15:57:26');
INSERT INTO `users_like_sign` (`user_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (46, 6, 0, '2009-03-11 14:43:12');
INSERT INTO `users_like_sign` (`user_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (47, 7, 0, '2015-09-16 14:43:03');
INSERT INTO `users_like_sign` (`user_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (48, 8, 0, '1980-09-15 00:07:25');
INSERT INTO `users_like_sign` (`user_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (49, 9, 0, '1978-09-15 19:35:29');
INSERT INTO `users_like_sign` (`user_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (50, 10, 0, '2022-07-22 07:43:34');
INSERT INTO `users_like_sign` (`user_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (51, 11, 0, '1996-03-26 19:14:12');
INSERT INTO `users_like_sign` (`user_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (52, 12, 0, '2011-04-10 22:33:18');
INSERT INTO `users_like_sign` (`user_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (53, 13, 0, '1993-03-01 06:38:08');
INSERT INTO `users_like_sign` (`user_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (54, 14, 0, '2005-07-13 01:12:24');
INSERT INTO `users_like_sign` (`user_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (55, 15, 0, '1982-01-01 00:33:49');
INSERT INTO `users_like_sign` (`user_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (56, 16, 0, '2013-08-22 22:05:18');
INSERT INTO `users_like_sign` (`user_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (57, 17, 0, '2001-04-14 19:02:22');
INSERT INTO `users_like_sign` (`user_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (58, 18, 0, '2011-05-07 21:18:37');
INSERT INTO `users_like_sign` (`user_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (59, 19, 0, '2020-04-14 01:24:58');
INSERT INTO `users_like_sign` (`user_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (60, 20, 0, '1996-06-27 18:41:56');
INSERT INTO `users_like_sign` (`user_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (61, 1, 0, '1972-06-11 18:30:11');
INSERT INTO `users_like_sign` (`user_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (62, 2, 0, '1978-03-26 02:19:19');
INSERT INTO `users_like_sign` (`user_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (63, 3, 0, '2007-02-17 02:20:33');
INSERT INTO `users_like_sign` (`user_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (64, 4, 0, '1977-06-05 11:57:44');
INSERT INTO `users_like_sign` (`user_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (65, 5, 0, '1998-01-24 23:26:59');
INSERT INTO `users_like_sign` (`user_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (66, 6, 0, '2008-09-01 16:23:50');
INSERT INTO `users_like_sign` (`user_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (67, 7, 0, '1973-05-13 07:33:03');
INSERT INTO `users_like_sign` (`user_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (68, 8, 0, '1991-10-08 05:22:17');
INSERT INTO `users_like_sign` (`user_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (69, 9, 0, '1987-06-24 13:39:17');
INSERT INTO `users_like_sign` (`user_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (70, 10, 0, '1975-12-11 06:17:40');
INSERT INTO `users_like_sign` (`user_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (71, 11, 0, '1990-04-16 21:49:35');
INSERT INTO `users_like_sign` (`user_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (72, 12, 0, '1990-07-30 02:11:48');
INSERT INTO `users_like_sign` (`user_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (73, 13, 0, '1982-07-14 18:52:10');
INSERT INTO `users_like_sign` (`user_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (74, 14, 0, '1994-02-16 10:05:38');
INSERT INTO `users_like_sign` (`user_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (75, 15, 0, '2000-05-06 22:47:57');
INSERT INTO `users_like_sign` (`user_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (76, 16, 0, '2003-08-15 06:18:46');
INSERT INTO `users_like_sign` (`user_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (77, 17, 0, '2007-12-26 09:39:33');
INSERT INTO `users_like_sign` (`user_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (78, 18, 0, '1990-05-11 04:53:52');
INSERT INTO `users_like_sign` (`user_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (79, 19, 0, '1988-06-03 00:59:45');
INSERT INTO `users_like_sign` (`user_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (80, 20, 0, '2005-08-03 23:28:54');
INSERT INTO `users_like_sign` (`user_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (81, 1, 0, '1989-01-21 23:11:23');
INSERT INTO `users_like_sign` (`user_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (82, 2, 0, '2000-10-30 01:16:08');
INSERT INTO `users_like_sign` (`user_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (83, 3, 0, '1974-02-21 17:24:46');
INSERT INTO `users_like_sign` (`user_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (84, 4, 0, '1973-06-26 08:02:02');
INSERT INTO `users_like_sign` (`user_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (85, 5, 0, '2007-02-02 23:49:25');
INSERT INTO `users_like_sign` (`user_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (86, 6, 0, '2022-06-02 11:12:34');
INSERT INTO `users_like_sign` (`user_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (87, 7, 0, '2008-01-31 00:53:55');
INSERT INTO `users_like_sign` (`user_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (88, 8, 0, '1973-12-02 08:01:51');
INSERT INTO `users_like_sign` (`user_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (89, 9, 0, '1996-05-14 00:50:59');
INSERT INTO `users_like_sign` (`user_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (90, 10, 0, '1993-04-01 03:09:51');
INSERT INTO `users_like_sign` (`user_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (91, 11, 0, '1975-04-14 17:39:35');
INSERT INTO `users_like_sign` (`user_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (92, 12, 0, '2001-01-30 07:34:08');
INSERT INTO `users_like_sign` (`user_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (93, 13, 0, '2001-04-21 16:53:57');
INSERT INTO `users_like_sign` (`user_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (94, 14, 0, '1995-10-27 07:21:57');
INSERT INTO `users_like_sign` (`user_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (95, 15, 0, '1975-05-19 19:40:14');
INSERT INTO `users_like_sign` (`user_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (96, 16, 0, '2002-12-29 23:25:07');
INSERT INTO `users_like_sign` (`user_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (97, 17, 0, '1982-12-06 14:07:17');
INSERT INTO `users_like_sign` (`user_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (98, 18, 0, '2022-05-06 03:55:27');
INSERT INTO `users_like_sign` (`user_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (99, 19, 0, '1983-04-17 22:57:38');
INSERT INTO `users_like_sign` (`user_id`, `like_sign_id`, `user_id_creator`, `created_at`) VALUES (100, 20, 0, '1984-10-30 02:21:06');


