USE homework_5;

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

SELECT
 	name, birthday_at,
 	CONCAT(YEAR(NOW()), '-', SUBSTRING(birthday_at, 6, 10)) AS birthday_in_this_Year,
     DAYNAME(CONCAT(YEAR(NOW()), '-', SUBSTRING(birthday_at, 6, 10))) AS week_day
FROM
     users
ORDER BY
 	week_day;
DROP TABLE IF EXISTS digits;
CREATE TABLE digits(
    value SERIAL PRIMARY KEY
);

INSERT INTO digits VALUES
    (NULL),
    (NULL),
    (NULL),
    (NULL),
    (NULL);
    
SELECT * FROM digits;

SELECT ROUND(exp(SUM(ln(value))), 0) AS result FROM digits;

    
    
