-- 1.1	Создайте таблицу logs типа Archive. 
-- Пусть при каждом создании записи в таблицах users, catalogs и products в таблицу logs 
-- помещается время и дата создания записи, название таблицы, 
-- идентификатор первичного ключа и содержимое поля name.

USE shop;

DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Имя покупателя',
  birthday_at DATE COMMENT 'Дата рождения',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = 'Покупатели';

INSERT INTO users (name, birthday_at) VALUES
  ('Геннадий', '1990-10-05'),
  ('Наталья', '1984-11-12'),
  ('Александр', '1985-05-20'),
  ('Сергей', '1988-02-14'),
  ('Иван', '1998-01-12'),
  ('Мария', '1992-08-29');


DROP TABLE IF EXISTS logs;
CREATE TABLE logs (
id SERIAL,
record_created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
tab_name varchar(255) NOT NULL,
k_id INT UNSIGNED NOT NULL,
name varchar(255) COMMENT 'Название раздела'
) COMMENT = 'Log Record' ENGINE=Archive;


SHOW TRIGGERS;
SELECT * FROM logs;

DROP TRIGGER IF EXISTS insert_log_products_after_insert;
DELIMITER //
CREATE TRIGGER insert_log_products_after_insert AFTER INSERT ON products
FOR EACH ROW
BEGIN
INSERT INTO logs( id, record_created_at, tab_name, k_id, name ) 
 	VALUES (null, NOW(), "products", new.id, new.name)  ;
END//

DELIMITER ; 

SELECT * FROM products;
INSERT INTO products
  (name, description, price, catalog_id)
VALUES
  ('Intel Core i8-8300', 'Проц для персональных компьютеров', 27890.00, 1);
  
SELECT * FROM logs;


DROP TRIGGER IF EXISTS insert_log_catalogs_after_insert;
DELIMITER //
CREATE TRIGGER insert_log_catalogs_after_insert AFTER INSERT ON catalogs
FOR EACH ROW
BEGIN
INSERT INTO logs ( id, record_created_at, tab_name, k_id, name ) 
 	VALUES (null, NOW(), 'catalogs', new.id, new.name)  ;
END//
DELIMITER ;


DROP TRIGGER IF EXISTS insert_log_users_after_insert;
DELIMITER //
CREATE TRIGGER insert_log_users_after_insert AFTER INSERT ON users
FOR EACH ROW
BEGIN
INSERT INTO logs ( id, record_created_at, tab_name, k_id, name ) 
 	VALUES (null, NOW(), 'users', new.id, new.name)  ;
END//
DELIMITER ;


INSERT INTO users (name, birthday_at) VALUES ('Мефодий', '1880-10-05');
INSERT INTO users (name, birthday_at) VALUES ('Ануфрий', '1870-10-05');
SELECT * FROM users;

SELECT * FROM logs;

DELETE FROM logs WHERE id=1;
DROP TABLE logs;
SHOW TRIGGERS;

-- 1.2	(по желанию) Создайте SQL-запрос, который помещает в таблицу users миллион записей.

DROP PROCEDURE IF EXISTS insert_names;

USE shop;
DROP PROCEDURE IF EXISTS insert_names;

DELIMITER //
CREATE PROCEDURE insert_names(IN n INT)
BEGIN
	DECLARE i INT;
	SET i = 0;
	WHILE i < n DO
		INSERT users ( id, name ) VALUES (NULL, CONCAT('user_',i));
        SET i = i + 1;
	END WHILE;
END// 
 CALL insert_names(10000);
 
 SELECT * FROM users LIMIT 20;
 
 SELECT * FROM users;
 SELECT COUNT(*) FROM users; 
 DELETE FROM users where id BETWEEN 28 AND 200000;
 
 
 -- Задания по NoSQL сделаны в DPF файле