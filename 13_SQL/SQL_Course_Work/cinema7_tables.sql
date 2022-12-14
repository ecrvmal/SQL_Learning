
--
-- Table structure for table `actors`
--

DROP TABLE IF EXISTS `actors`;

CREATE TABLE `actors` (
  `actor_id` int unsigned DEFAULT NULL,
  `actor_name` varchar(20) DEFAULT NULL COMMENT 'Name of Actor',
  `actor_surname` varchar(20) DEFAULT NULL COMMENT 'Surname of Actor',
  UNIQUE KEY `actor_id` (`actor_id`)
) ;



--
-- Table structure for table `file_type`
--

DROP TABLE IF EXISTS `file_type`;

CREATE TABLE `file_type` (
  `id` tinyint NOT NULL,
  `file_type` varchar(10) DEFAULT NULL COMMENT 'Type of Video File',
  PRIMARY KEY (`id`)
) ;


--
-- Table structure for table `film_actors`
--

DROP TABLE IF EXISTS `film_actors`;

CREATE TABLE `film_actors` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `actor_id` int unsigned DEFAULT NULL,
  `film_id` int unsigned NOT NULL COMMENT 'Film ID',
  PRIMARY KEY (`id`),
  KEY `filmsactors_to_actors_fk` (`actor_id`),
  KEY `filmsactors_to_film_fk` (`film_id`),
  CONSTRAINT `filmsactors_to_actors_fk` FOREIGN KEY (`actor_id`) REFERENCES `actors` (`actor_id`) ON DELETE CASCADE,
  CONSTRAINT `filmsactors_to_film_fk` FOREIGN KEY (`film_id`) REFERENCES `films` (`film_id`) ON DELETE CASCADE
) ;



--
-- Table structure for table `film_genre`
--

DROP TABLE IF EXISTS `film_genre`;

CREATE TABLE `film_genre` (
  `genre_id` tinyint unsigned NOT NULL,
  `genre_name` varchar(100) DEFAULT NULL COMMENT 'Film Genre',
  PRIMARY KEY (`genre_id`)
) ;


--
-- Table structure for table `film_user`
--

DROP TABLE IF EXISTS `film_user`;

CREATE TABLE `film_user` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL COMMENT 'User ID',
  `film_id` int unsigned NOT NULL COMMENT 'Film ID',
  `date_of_view` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Date of View',
  `film_user_rating` int DEFAULT NULL COMMENT 'Rating of Film',
  PRIMARY KEY (`id`),
  KEY `filmuser_to_user_id_fk` (`user_id`),
  KEY `filmuser_to_films_id_fk` (`film_id`),
  CONSTRAINT `filmuser_to_films_id_fk` FOREIGN KEY (`film_id`) REFERENCES `films` (`film_id`) ON DELETE CASCADE,
  CONSTRAINT `filmuser_to_user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`u_id`) ON DELETE CASCADE
) ;



--
-- Table structure for table `films`
--

DROP TABLE IF EXISTS `films`;

CREATE TABLE `films` (
  `film_id` int unsigned NOT NULL AUTO_INCREMENT,
  `film_title` varchar(100) NOT NULL COMMENT 'Name of Film',
  `film_file_name` varchar(100) DEFAULT NULL COMMENT 'Film File Name',
  `film_title_pict_filename` varchar(100) DEFAULT NULL COMMENT 'Film Title Picture FileName',
  `film_file_size` int DEFAULT NULL COMMENT 'Film File Size',
  `film_file_type` tinyint DEFAULT NULL,
  `film_genre` tinyint unsigned DEFAULT NULL,
  `film_duration` int NOT NULL DEFAULT '120' COMMENT 'Film Duration, Minutes',
  `film_prime_date` date DEFAULT NULL,
  `film_rating` int unsigned DEFAULT '5' COMMENT 'Film Rating 1...10 ',
  PRIMARY KEY (`film_id`),
  KEY `films_to_filmfiletype_fk` (`film_file_type`),
  KEY `films_to_genre_fk` (`film_genre`),
  CONSTRAINT `films_to_filmfiletype_fk` FOREIGN KEY (`film_file_type`) REFERENCES `file_type` (`id`) ON DELETE CASCADE,
  CONSTRAINT `films_to_genre_fk` FOREIGN KEY (`film_genre`) REFERENCES `film_genre` (`genre_id`) ON DELETE CASCADE
) ;


--
-- Table structure for table `logs_users`
--

DROP TABLE IF EXISTS `logs_users`;

CREATE TABLE `logs_users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `record_created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `tab_name` varchar(255) NOT NULL,
  `user_id` int unsigned NOT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=ARCHIVE COMMENT='Log Record';




--
-- Table structure for table `u_statuses`
--

DROP TABLE IF EXISTS `u_statuses`;

CREATE TABLE `u_statuses` (
  `status_id` tinyint unsigned NOT NULL,
  `status_name` varchar(20) NOT NULL COMMENT 'Kind of User Status (Blocked/ Active)',
  PRIMARY KEY (`status_id`)
) ;



--
-- Table structure for table `user_credit_card`
--

DROP TABLE IF EXISTS `user_credit_card`;

CREATE TABLE `user_credit_card` (
  `user_id` int unsigned NOT NULL,
  `cc_number` varchar(16) DEFAULT NULL COMMENT 'Credit Card Number',
  `cc_vaild_date` date NOT NULL COMMENT 'Credit Card Validity Date',
  `cc_confirmed` int DEFAULT NULL COMMENT 'Credit Card Confirmed',
  PRIMARY KEY (`user_id`),
  CONSTRAINT `usercreditcard_to_user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`u_id`) ON DELETE CASCADE
) ;


--
-- Table structure for table `user_payments`
--

DROP TABLE IF EXISTS `user_payments`;

CREATE TABLE `user_payments` (
  `trans_id` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Payment ID',
  `user_id` int unsigned NOT NULL COMMENT 'User ID',
  `pay_amount` decimal(10,2) NOT NULL COMMENT 'Pay Amount',
  `pay_date` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Date of Payment',
  `pay_balance` decimal(10,2) DEFAULT '0.00' COMMENT 'Account Balance',
  PRIMARY KEY (`trans_id`),
  KEY `userpayments_to_users_fk` (`user_id`),
  CONSTRAINT `userpayments_to_users_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`u_id`) ON DELETE CASCADE
) ;



--
-- Table structure for table `user_profile`
--

DROP TABLE IF EXISTS `user_profile`;

CREATE TABLE `user_profile` (
  `user_id` int unsigned NOT NULL,
  `u_login` varchar(20) NOT NULL COMMENT 'Login to profile',
  `u_pass_word` varchar(20) NOT NULL COMMENT 'password to profile',
  `u_gender` varchar(1) DEFAULT NULL COMMENT 'Gender M/F ',
  `u_email_address` varchar(64) DEFAULT NULL COMMENT 'User email address',
  `u_phone_number` varchar(20) DEFAULT NULL COMMENT 'User Phone Number',
  `u_city` varchar(30) DEFAULT NULL COMMENT 'User City of location',
  `u_address` varchar(150) DEFAULT NULL COMMENT 'User Address',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of user update ',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `userprofile_to_user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`u_id`) ON DELETE CASCADE
) ;



--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `u_id` int unsigned NOT NULL AUTO_INCREMENT,
  `u_name` varchar(20) NOT NULL COMMENT 'User Name',
  `u_surname` varchar(20) DEFAULT NULL COMMENT 'User Surname',
  `u_status_id` tinyint unsigned DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Date of user creation',
  PRIMARY KEY (`u_id`),
  UNIQUE KEY `u_id` (`u_id`),
  KEY `ustatuses_to_users_fk` (`u_status_id`),
  CONSTRAINT `ustatuses_to_users_fk` FOREIGN KEY (`u_status_id`) REFERENCES `u_statuses` (`status_id`) ON DELETE CASCADE
) ;

