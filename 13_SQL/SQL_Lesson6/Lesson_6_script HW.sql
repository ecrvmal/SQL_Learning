
USE vk;

-- 1	Проанализировать запросы, которые выполнялись на занятии, 
-- определить возможные корректировки и/или улучшения (JOIN пока не применять).

ALTER TABLE messages
   ADD CONSTRAINT messages_to_user_id_fk
        FOREIGN KEY (to_user_id) REFERENCES users(id);
ALTER TABLE messages
   ADD CONSTRAINT messages_from_user_id_fk
        FOREIGN KEY (from_user_id) REFERENCES users(id);

ALTER TABLE profiles
   ADD CONSTRAINT profiles_from_user_id_fk
        FOREIGN KEY (user_id) REFERENCES users(id);
        
DESC messages;
DESC profiles;
DESC messages_reaction_sign;

ALTER TABLE messages_reaction_sign
   ADD CONSTRAINT messages_from_message_id_fk
        FOREIGN KEY (message_id) REFERENCES messages(id);


-- 2	Пусть задан некоторый пользователь. 
-- Из всех друзей этого пользователя найдите человека, 
-- который больше всех общался с нашим пользователем.

SELECT * FROM messages limit 10;

SELECT messages.to_user_id AS friend FROM messages  WHERE  messages.from_user_id= 13
			union
SELECT messages.from_user_id AS friend FROM messages  WHERE  messages.to_user_id= 13 ;

 SELECT count(*) mess, friend FROM 
	(SELECT messages.to_user_id AS friend FROM messages  WHERE  messages.from_user_id= 13
			union
	SELECT messages.from_user_id AS friend FROM messages  WHERE  messages.to_user_id= 13 ) as history
GROUP BY friend
ORDER BY mess DESC
LIMIT 3 ; 

-- 3	Подсчитать общее количество лайков, которые получили 10 самых молодых пользователей.


-- WORKING LIST OF LIKES
SELECT count(*) AS likes, users_reaction_sign.user_id, profiles.birthday   FROM users_reaction_sign, profiles
WHERE users_reaction_sign.user_id=profiles.user_id 
group by user_id
ORDER BY profiles.birthday DESC limit 10;

SELECT SUM(likes)  FROM (
SELECT count(*) AS likes, users_reaction_sign.user_id, profiles.birthday   FROM users_reaction_sign, profiles
WHERE users_reaction_sign.user_id=profiles.user_id 
group by user_id
ORDER BY profiles.birthday DESC limit 10
      ) AS sumlikes ;

-- 4	Определить кто больше поставил лайков (всего) - мужчины или женщины?

SELECT users_reaction_sign.user_id AS likes , profiles.gender AS gender
  FROM users_reaction_sign , profiles  
	where users_reaction_sign.user_id = profiles.user_id;
    
    SELECT Count(likes) FROM (
    SELECT users_reaction_sign.user_id AS likes , profiles.gender  AS gender
  FROM users_reaction_sign , profiles  
	WHERE users_reaction_sign.user_id = profiles.user_id) AS alllikes
    GROUP BY gender;

-- 5	Найти 10 пользователей, которые проявляют наименьшую активность 
-- в использовании социальной сети.

SELECT * FROM users_reaction_sign; 

SELECT id, 0 as acts , 'profile' FROM users
	UNION
	SELECT user_id as id, 1 as acts, 'media'  FROM media
	UNION
	SELECT user_id_creator as id, 1 as acts, "likes" FROM users_reaction_sign
	UNION
	SELECT from_user_id as id, 1 as acts, 'messages' FROM messages ;

SELECT SUM(acts) as ACTS , id as IDs FROM (
	SELECT id, 0 as acts , 'profile' FROM users
	UNION
	SELECT user_id as id, 1 as acts, 'media'  FROM media
	UNION
	SELECT user_id_creator as id, 1 as acts, "likes" FROM users_reaction_sign
	UNION
	SELECT from_user_id as id, 1 as acts, 'messages' FROM messages 
 ) AS ABC
    GROUP BY IDs
    ORDER BY  ACTS 
    limit 10 ;
    