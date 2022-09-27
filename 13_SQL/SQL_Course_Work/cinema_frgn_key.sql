-- FOREIGN KEYS

USE cinema;

-- ALTER TABLE users MODIFY COLUMN u_status_id TINYINT UNSIGNED;
-- ALTER TABLE u_statuses MODIFY COLUMN status_id TINYINT UNSIGNED;

ALTER TABLE users
   ADD CONSTRAINT ustatuses_to_users_fk
	FOREIGN KEY (u_status_id) REFERENCES u_statuses(status_id)
    ON DELETE CASCADE;

ALTER TABLE user_profile
   ADD CONSTRAINT userprofile_to_user_id_fk
	FOREIGN KEY (user_id) REFERENCES users(u_id)
    ON DELETE CASCADE;
        
ALTER TABLE user_credit_card
   ADD CONSTRAINT usercreditcard_to_user_id_fk
	FOREIGN KEY (user_id) REFERENCES users(u_id)
    ON DELETE CASCADE;
    
    
ALTER TABLE films
   ADD CONSTRAINT films_to_filmfiletype_fk
	FOREIGN KEY (film_file_type) REFERENCES file_type(id)
    ON DELETE CASCADE;

ALTER TABLE films
   ADD CONSTRAINT films_to_genre_fk
	FOREIGN KEY (film_genre) REFERENCES film_genre(genre_id)
    ON DELETE CASCADE;
    
 SHOW TABLES;   
 -- ALTER TABLE films MODIFY COLUMN film_file_type TINYINT;
-- ALTER TABLE films RENAME COLUMN film_jenre TO film_genre;
-- ALTER TABLE film_genre MODIFY COLUMN genre_id TINYINT UNSIGNED;
-- ALTER TABLE films MODIFY COLUMN film_genre TINYINT UNSIGNED;
    
ALTER TABLE film_actors
   ADD CONSTRAINT filmsactors_to_actors_fk
	FOREIGN KEY (actor_id) REFERENCES actors(actor_id)
    ON DELETE CASCADE;
    
-- ALTER TABLE actors MODIFY COLUMN actor_id INT UNSIGNED;
-- ALTER TABLE film_actors MODIFY COLUMN actor_id INT UNSIGNED;
    
ALTER TABLE film_actors
   ADD CONSTRAINT filmsactors_to_film_fk
	FOREIGN KEY (film_id) REFERENCES films(film_id)
    ON DELETE CASCADE;
  
  ALTER TABLE film_user
   ADD CONSTRAINT filmuser_to_user_id_fk
	FOREIGN KEY (user_id) REFERENCES users(u_id)
    ON DELETE CASCADE;
    
ALTER TABLE film_user
   ADD CONSTRAINT filmuser_to_films_id_fk
	FOREIGN KEY (film_id) REFERENCES films(film_id)
    ON DELETE CASCADE; 
    

ALTER TABLE user_payments
   ADD CONSTRAINT userpayments_to_users_fk
	FOREIGN KEY (user_id) REFERENCES users(u_id)
    ON DELETE CASCADE;

