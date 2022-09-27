

-- 7	скрипты характерных выборок 

-- 7.1	список новых фильмов, разделенный по нескольким категориям.
		(SELECT film_title AS NAME, film_rating AS RATING, film_genre.genre_name as GENRE , film_prime_date as Premier FROM films
        join film_genre 
        on film_genre.genre_id=films.film_genre and film_genre = 1
        order by film_prime_date DESC
		limit 4)
  union
 		(SELECT  film_title AS NAME, film_rating AS RATING, film_genre.genre_name as GENRE , film_prime_date as Premier FROM films
        join film_genre 
        on film_genre.genre_id=films.film_genre and film_genre = 2
		order by film_prime_date DESC
		limit 4)
union
		(SELECT film_title AS NAME, film_rating AS RATING, film_genre.genre_name as GENRE , film_prime_date as Premier FROM films
        join film_genre 
        on film_genre.genre_id=films.film_genre and film_genre = 3
		order by film_prime_date DESC
		limit 4);
  
-- 7.2	полный список фильмов в данном жанре, 	отсортрованный по новизне

		SELECT film_title AS NAME, film_rating AS RATING, film_genre.genre_name as GENRE , film_prime_date as Premier FROM films
        join film_genre 
        on film_genre.genre_id=films.film_genre and film_genre = 3
		order by film_prime_date DESC
		limit 20;


-- 7.3	список актеров данного фильма,

		SELECT films.film_title AS TITLE, CONCAT( actors.actor_name,' ', actors.actor_surname) AS ACTOR FROM film_actors
        JOIN films
        JOIN actors
        on films.film_id=film_actors.film_id 
			and actors.actor_id=film_actors.actor_id
		and film_title LIKE "Bicycle%"
		order by ACTOR  DESC
		limit 20;

SELECT * FROM films;

-- 7.4	список фильмов с участием какого-либо актера. 

Select films.film_title as TITLE, CONCAT(actors.actor_name,' ', actors.actor_surname) AS ACTOR, film_genre.genre_name as GENRE from films 
join actors  
join film_actors
join film_genre
on actors.actor_id=film_actors.actor_id 
	and film_actors.film_id = films.film_id 
    and films.film_genre  = film_genre.genre_id
	and actors.actor_name = "Angelina";
    
    -- SELECT actor_id , actor_name ,actor_surname from actors where actor_name= 'Brad';
    -- actor_id=5;
    -- SELECT film_id  from film_actors where actor_id=5;

-- 7.5	список фильмов отсортированный по рейтингу. 

Select films.film_title as TITLE, film_genre.genre_name  AS GENRE , films.film_rating as RATING from films 
join film_genre
ON films.film_genre = film_genre.genre_id
    order by films.film_rating DESC
    limit 20 ;
    
-- 7.6	список фильмов которые посмотрело больше всего пользователей (с использованием JOIN, ON )

SELECT films.film_title AS FILM, COUNT(*)  AS VIEWS FROM film_user
JOIN films
ON films.film_id = film_user.film_id
group by film_user.film_id
order by VIEWS DESC
LIMIT 10;

-- (с использованием WHERE )

SELECT films.film_title AS FILM, COUNT(*)  AS VIEWS FROM film_user, films
WHERE films.film_id = film_user.film_id
group by film_user.film_id
order by VIEWS DESC
LIMIT 10;

-- 8.1	список новых фильмов, разделенный по нескольким категориям.

DROP VIEW IF EXISTS first_screen;

		CREATE OR REPLACE VIEW first_screen AS (SELECT film_title AS NAME, 
film_rating AS RATING, 
film_genre.genre_name as GENRE , 
film_prime_date as Premier FROM films
        join film_genre 
        	on film_genre.genre_id=films.film_genre and film_genre = 1
        	order by film_prime_date DESC
		limit 4)
  union
(SELECT  film_title AS NAME, 
film_rating AS RATING, 
film_genre.genre_name as GENRE , 
film_prime_date as Premier FROM films
        join film_genre 
        	on film_genre.genre_id=films.film_genre and film_genre = 2
			order by film_prime_date DESC
		limit 4)
union
		(SELECT film_title AS NAME, 
film_rating AS RATING, film_genre.genre_name as GENRE , film_prime_date as Premier FROM films
        join film_genre 
        	on film_genre.genre_id=films.film_genre and film_genre = 3
		order by film_prime_date DESC
		limit 4); 

SELECT * FROM first_screen;      

-- 8.2  Список наиболее активных пользователей

		CREATE OR REPLACE VIEW active_users AS 
SELECT COUNT(film_user.user_id) AS VIEWS , CONCAT (users.u_name,' ',u_surname) AS USER from film_user
join users
ON users.u_id = film_user.user_id 
GROUP BY user_id
ORDER BY VIEWS DESC
LIMIT 10;

SELECT * FROM active_users;

