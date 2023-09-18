USE vk;

SHOW tables;
SELECT * FROM users LIMIT 10;

-- Structure of table users --
DESC users;
-- Correct Time Stanps --
UPDATE users SET updated_at = NOW() WHERE updated_at < created_at;
-- Download users table 
-- mysqldump vk users> table_users_v3a.sql;

-- Check profile structure
DESC profiles;
SELECT * FROM profiles LIMIT 10;
UPDATE profiles SET photo_id = FLOOR (1 + RAND() * 100 );
UPDATE profiles SET updated_at = NOW() WHERE updated_at < created_at;
UPDATE profiles SET country = FLOOR (1 + RAND() * 100 );

-- Analizing profile data
SELECT * FROM profiles LIMIT 10; 

-- User_Status Table
CREATE TABLE user_status (
id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Line_ID",
user_status VARCHAR(100) NOT NULL COMMENT "User_Status (Unique value)",
created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT "Time Of Creation",
updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Time Of Creation"
) COMMENT "User_Relation_Status";

UPDATE profile SET user_status_id = null;
SELECT * FROM user_status limit 10;
INSERT INTO user_status (user_status) VALUES
('single'),
('Married'),
('divorced');
ALTER TABLE profiles RENAME COLUMN status TO user_status_id;
ALTER TABLE profiles MODIFY COLUMN user_status_id INT UNSIGNED;

-- LINK to user_stattus
UPDATE profiles SET user_status_id = FLOOR(1 + RAND() * 3);
SELECT * FROM profiles limit 10;

-- Correct Gender
DROP TEMPORARY TABLE if EXISTS genders;
CREATE TEMPORARY TABLE genders (
name CHAR(1)
);

INSERT INTO genders VALUES ('m'),('f');
SELECT * FROM genders;
UPDATE PROFILES
	SET gender = (SELECT name FROM genders ORDER BY RAND() LIMIT 1);
SELECT * FROM profiles limit 10;

-- All Tables
SHOW TABLES;
-- STRUCTURE OF table messages
DESC messages;
SELECT * FROM messages LIMIT 10;

-- CHECK to_ser_id and from_user_id
UPDATE messages SET
from_user_id = FLOOR (1 + RAND() * 100),
to_user_id = FLOOR (1 + RAND() * 100);
SELECT * FROM messages LIMIT 10;

-- Check TABLE Media
DESC media;
SELECT * from MEDIA LIMIT 10;
SELECT * FROM media_types limit 10;
TRUNCATE media_types;
INSERT INTO media_types (name) VALUES
('photo'),
('video'),
('audio');


SELECT * from MEDIA LIMIT 10;
INSERT INTO media_types (name) VALUES
('photo'),
('video'),
('audio');

UPDATE media SET media_type_id = FLOOR( 1 + RAND() * 3);
UPDATE media SET user_id = FLOOR( 1 + RAND() * 100);
SELECT * from MEDIA LIMIT 10;

-- Check table extensions
DROP TEMPORARY TABLE IF EXISTS extensions;
CREATE TEMPORARY TABLE extensions (
name VARCHAR(10)
);
INSERT INTO extensions VALUES
('jpeg'),('avi'),('mpeg'),('png'),('mp4');
SELECT * FROM extensions;

UPDATE media SET filename = CONCAT (
'http://dropbox.net/vk/',
filename,
(SELECT last_name FROM users ORDER BY RAND() LIMIT 1),
'.',
(SELECT name FROM extensions ORDER BY RAND() LIMIT 1)
);
SELECT * FROM media limit 20;
DESCRIBE media;

UPDATE media SET size = FLOOR( 10000 + (RAND() * 1000000)) where size < 1000;
UPDATE media SET metadata = CONCAT('{"owner":"',
(SELECT CONCAT(first_name, ' ', last_name) FROM users WHERE id = user_id),
'"}'
);

SELECT * FROM users LIMIT 10;
SELECT * FROM media LIMIT 10;


ALTER TABLE media MODIFY COLUMN metadata JSON;
DESC media;


RENAME TABLE friendship TO friendships;
DESC friendships;
SELECT * FROM friendships LIMIT 10;
UPDATE friendships SET updated_at = NOW() WHERE updated_at < created_at;
UPDATE FRIENDSHIPS SET
	user_id = FLOOR(1+ RAND() * 100),
    friend_id = FLOOR(1+ RAND() * 100);
UPDATE friendships SET FRIEND_ID = FRIEND_ID+1 WHERE user_id = friend_id;

SELECT * FROM friendship_statuses LIMIT 10;
TRUNCATE friendship_statuses;
INSERT INTO friendship_statuses (name) VALUES
('Requested'),
('Confirmed'),
('Rejected');
UPDATE friendships SET status_id = FLOOR(1 + RAND() * 3);
SELECT * FROM friendships limit 20;

DESC communities;
SELECT * FROM communities LIMIT 10;
SELECT * FROM communities_users LIMIT 10;
UPDATE  communities_users SET community_id = FLOOR(1 + RAND() * 20);
SELECT * FROM communities LIMIT 10;

SELECT * FROM communities_users;
SELECT * FROM reaction_sign;
SELECT * FROM messages_reaction_sign;
Select count(*) from reaction_sign;
Select count(*) from messages;
UPDATE messages_reaction_sign SET 
	reaction_sign_id = FLOOR( 1 + RAND() * 20 ),
    user_id_creator = FLOOR( 1 + RAND() * 100 );
    
SELECT * FROM users_reaction_sign;
UPDATE users_reaction_sign SET 
	reaction_sign_id = FLOOR( 1 + RAND() * 20 ),
    user_id_creator = FLOOR( 1 + RAND() * 100 );










