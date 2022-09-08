USE shop;

-- 1	Составьте список пользователей users, 
-- которые осуществили хотя бы один заказ orders в интернет магазине.

use shop;

SELECT * FROM orders;
SELECT * FROM users;

INSERT INTO orders
  (id, order_id, user_id)
  VALUES
(NULL, NULL, NULL),
(NULL, NULL, NULL),
(NULL, NULL, NULL),
(NULL, NULL, NULL),
(NULL, NULL, NULL),
(NULL, NULL, NULL),  
(NULL, NULL, NULL),  
(NULL, NULL, NULL),  
(NULL, NULL, NULL),
(NULL, NULL, NULL);

UPDATE orders SET order_id = FLOOR (1 + RAND() * 10 );
UPDATE orders SET user_id = FLOOR (1 + RAND() * 6 );

SELECT * FROM orders;

SELECT users.name, orders.order_id FROM users, orders
WHERE users.id = orders.user_id
GROUP BY users.id
ORDER BY users.id;

-- 2	Выведите список товаров products и разделов catalogs, 
--      который соответствует товару.

SELECT * FROM products; 
SELECT * FROM catalogs; 

SELECT products.name AS Prod_name, catalogs.name AS Catalog FROM products, catalogs
where  products.catalog_id = catalogs.id;

-- 3	(по желанию) Пусть имеется таблица рейсов flights (id, from, to) 
-- и таблица городов cities (label, name). 
-- Поля from, to и label содержат английские названия городов, 
-- поле name — русское. 
--  Выведите список рейсов flights с русскими названиями городов.

USE flights;
SELECT * FROM flights;
SELECT * FROM cities;

SELECT flights.id AS Рейс, 
		( SELECT cities.city_name FROM cities WHERE cities.city_label = flights.flight_from) AS Откуда,
    	( SELECT cities.city_name FROM cities WHERE cities.city_label = flights.flight_to) AS Куда
    FROM flights
    ORDER BY Рейс;

