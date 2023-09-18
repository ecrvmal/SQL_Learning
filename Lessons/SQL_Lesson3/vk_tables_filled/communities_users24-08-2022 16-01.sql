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


