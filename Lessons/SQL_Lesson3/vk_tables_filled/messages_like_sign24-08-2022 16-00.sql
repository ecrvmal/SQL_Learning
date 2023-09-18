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


