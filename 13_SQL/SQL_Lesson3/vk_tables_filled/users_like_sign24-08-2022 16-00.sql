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


