
USE vk;


-- OLD 2	Пусть задан некоторый пользователь. 
-- Из всех друзей этого пользователя найдите человека, 
-- который больше всех общался с нашим пользователем.

 SELECT count(*) mess, friend FROM 
	(SELECT messages.to_user_id AS friend FROM messages  WHERE  messages.from_user_id= 13
			union
	SELECT messages.from_user_id AS friend FROM messages  WHERE  messages.to_user_id= 13 ) as history
GROUP BY friend
ORDER BY mess DESC
LIMIT 3 ; 

-- NEW 2	Пусть задан некоторый пользователь. 
-- Из всех друзей этого пользователя найдите человека, 
-- который больше всех общался с нашим пользователем.

SELECT * FROM messages limit 10;
use vk;
    
    SELECT users.id AS USER_ID, COUNT(users.id) AS Msg_qty
FROM users 
 JOIN messages
WHERE messages.from_user_id=13 AND users.id=messages.to_user_id 
OR messages.to_user_id=13 AND users.id=messages.from_user_id
GROUP BY users.id
ORDER BY Msg_qty;



-- 3	OLD Подсчитать общее количество лайков, которые получили 10 самых молодых пользователей.

SELECT SUM(likes)  FROM (
SELECT count(*) AS likes, users_likes.user_id, profiles.birthday   FROM users_likes, profiles
WHERE users_likes.user_id=profiles.user_id 
group by user_id
ORDER BY profiles.birthday DESC limit 10
      ) AS sumlikes ;


-- 3	NEW Подсчитать общее количество лайков, которые получили 10 самых молодых пользователей.

SELECT SUM(likes)  FROM (
SELECT count(*) AS likes, users_likes.user_id, profiles.birthday   
FROM users_likes
JOIN profiles
	ON users_likes.user_id=profiles.user_id 
group by user_id
ORDER BY profiles.birthday DESC limit 10
      ) AS sumlikes ;
      
      
-- 4	OLD Определить кто больше поставил лайков (всего) - мужчины или женщины?

    
    SELECT Count(likes) FROM (
    SELECT users_likes.user_id AS likes , profiles.gender  AS gender
  FROM users_likes , profiles  
	WHERE users_likes.user_id = profiles.user_id) AS alllikes
    GROUP BY gender;
    
    -- 4	NEW Определить кто больше поставил лайков (всего) - мужчины или женщины?
    SELECT * FROM users_likes;
    
SELECT COUNT(users_likes.user_id_creator) AS all_likes , profiles.gender
  FROM users_likes 
  JOIN profiles  
	ON users_likes.user_id_creator = profiles.user_id
GROUP BY profiles.gender;

-- 5	OLD Найти 10 пользователей, которые проявляют наименьшую активность 
-- в использовании социальной сети.

SELECT * FROM users_likes; 

SELECT SUM(acts) as ACTS , id as IDs FROM (
	SELECT id, 0 as acts , 'profile' FROM users
	UNION
	SELECT user_id as id, 1 as acts, 'media'  FROM media
	UNION
	SELECT user_id_creator as id, 1 as acts, "likes" FROM users_likes
	UNION
	SELECT from_user_id as id, 1 as acts, 'messages' FROM messages 
 ) AS ABC
    GROUP BY IDs
    ORDER BY  ACTS 
    limit 10 ;
    
    -- 5	NEW Найти 10 пользователей, которые проявляют наименьшую активность 
-- в использовании социальной сети.

-- Решение без JOIN не придумал.
-- Решение всегда получается с UNION

    