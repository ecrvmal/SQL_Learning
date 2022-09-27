USE homework_5;

DROP TABLE IF EXISTS products;
CREATE TABLE products (
	id SERIAL PRIMARY KEY,
    prod_name CHAR(100),
	value INT UNSIGNED
) comment 'table of products';

INSERT INTO products (prod_name, value ) VALUES
  ('item1', 0),
  ('item2', 2500),
  ('item3', 0),
  ('item4', 30),
  ('item5', 500),
  ('item6', 1)
;
  
SELECT * FROM products;

-- Variant 1
SELECT value FROM products  ORDER BY IF( value = 0, 1, 0 ) , value;

-- Variant 2
 SELECT value FROM products ORDER BY value = 0, value;
 
