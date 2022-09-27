DROP TABLE IF EXISTS users;
CREATE TABLE users (
id SERIAL PRIMARY KEY,
name VARCHAR(255) COMMENT 'Username',
UNIQUE unique_name(name(10))
) COMMENT = 'Table of Users';

SELECT * FROM users ;

INSERT into users VALUES 
	(DEFAULT, 'Vladimir'),
	(DEFAULT, 'Ivan'),
	(DEFAULT, 'Maria');
    
SELECT * FROM users ;