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


