CREATE SCHEMA `flights` ;

USE flights;

DROP TABLE IF EXISTS flights;
CREATE TABLE flights (
	id SERIAL PRIMARY KEY,
	flight_from CHAR(100),
	flight_to CHAR(100)
 ) COMMENT = 'flight_table';
 
 INSERT INTO flights
  (id, flight_from, flight_to )
VALUES
  (null, 'moscow', 'omsk'),
 (null, 'novgorod', 'kazan'),
 (null, 'irkutsk', 'moscow'),
 (null, 'omsk', 'irkutsk'),
 (null, 'moscow', 'kazan');
 
 SELECT * FROM flights;
 
 
 DROP TABLE IF EXISTS cities;
CREATE TABLE cities (
	id SERIAL PRIMARY KEY,
	city_label CHAR(100),
	city_name CHAR(100)
 ) COMMENT = 'cities_table';
 
  INSERT INTO cities
  (id, city_label, city_name )
VALUES
  (null, 'moscow', 'Москва'),
 (null, 'irkutsk', 'Казань'),
 (null, 'novgorod', 'Новгород'),
 (null, 'kazan', 'Казань'),
 (null, 'omsk', 'Омск');
 
 