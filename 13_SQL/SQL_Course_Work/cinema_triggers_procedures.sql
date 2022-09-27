

-- 2. TRIGGERS
-- 2.1 Создание записи в таблице user_profile при создании нового пользователя в таблице users

USE cinema; 
SHOW TRIGGERS; 
 
DROP TRIGGER IF EXISTS insert_user_to_user_profile_after_insert; 
DELIMITER // 
CREATE TRIGGER insert_user_to_user_profile_after_insert  AFTER INSERT ON users 
FOR EACH ROW 
BEGIN 
INSERT INTO user_profile(user_id,  u_login, u_pass_word, u_gender, u_email_address, u_phone_number, u_city, u_address  ) 
VALUES                  (new.u_id, 'login', 'password', NULL ,NULL           , NULL          , NULL  , NULL       ) ; 
END// 
DELIMITER ; 




-- 2.2 Создание таблицы logs типа Archive. 
-- При каждом создании записи в таблицах users, user_profile в  таблицу logs помещается время и дата создания записи, 
-- название таблицы и содержимое поля user_id.

DROP TABLE IF EXISTS logs_users;
CREATE TABLE logs_users (
id SERIAL,
record_created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
tab_name varchar(255) NOT NULL,
user_id INT UNSIGNED NOT NULL
) COMMENT = 'Log Record' ENGINE=Archive;


SHOW TRIGGERS; 

SELECT * FROM logs_users; 
DROP TRIGGER IF EXISTS insert_log_users_after_insert; 
DELIMITER // 
CREATE TRIGGER insert_logs_users_users_after_insert AFTER INSERT ON users 
FOR EACH ROW 
BEGIN 
INSERT INTO logs_users ( id, record_created_at, tab_name, user_id ) 
VALUES (null, NOW(), "users", new.u_id) ; 
END// 
DELIMITER ; 

DROP TRIGGER IF EXISTS insert_logs_users_user_profile_after_insert; 
DELIMITER // 
CREATE TRIGGER insert_log_user_profile_after_insert AFTER INSERT ON user_profile 
FOR EACH ROW 
BEGIN 
INSERT INTO logs_users ( id, record_created_at, tab_name, user_id ) 
VALUES (null, NOW(), 'user_profile', new.user_id) ; 
END// 
DELIMITER ; 


-- Test
TRUNCATE logs_users;

INSERT INTO users (u_name, u_surname, u_status_id) VALUES ('Vladimir','Mal',2);
SELECT * FROM users WHERE u_name='Vladimir'; 

SELECT * FROM logs_users;
-- DELETE FROM users WHERE u_id = 108 ;
SELECT * FROM user_profile where user_id > 100; 
-- DELETE FROM user_profile WHERE user_id = 104 ;  
SHOW TRIGGERS;



--  Процедура, создающай +временную таблицу и вносящая пользователей с балансом менее 100

drop procedure if exists users_low_balance ;
DELIMITER //
create procedure users_low_balance()
BEGIN
 drop table if exists users_low_balance ;
 create temporary table users_low_balance (
    u_name varchar(20),
    u_surname varchar(20),
    u_id INT,
    balance  DECIMAL(10.2)
 );
 
 INSERT INTO users_low_balance ( u_name , u_surname, u_id, balance)
 (SELECT users.u_name , users.u_surname , users.u_id, pay_balance AS BALANCE
 FROM user_payments 
 join users
 ON (user_payments.user_id = users.u_id AND pay_balance < 100 ) 
 ORDER BY BALANCE) ;
 
end //

CALL users_low_balance();
SELECT * FROM users_low_balance ;


-- Процедура выбора пользователей - победителей акции и начисления им бонусных баллов

drop procedure if exists users_bonus ;
DELIMITER //
create procedure users_bonus()

BEGIN
 drop table if exists users_bonus;
 create temporary table users_bonus (
	trans_id INT,
    u_name varchar(20),
    u_surname varchar(20),
    u_id INT,
    old_balance  DECIMAL(10.2),
    bonus  DECIMAL(10.2),
    new_balance  DECIMAL(10.2)
 );
 
 INSERT INTO users_bonus ( trans_id, u_name , u_surname, u_id, old_balance, bonus , new_balance)
 (SELECT max(trans_id) , users.u_name , users.u_surname , users.u_id, pay_balance AS OLD_BAL , pay_balance * 0.1 AS BONUS, pay_balance * 1.1 AS NEW_BAL
 FROM user_payments 
 join users
 ON (user_payments.user_id = users.u_id  )
 GROUP BY users.u_id
 ORDER BY rand()
 LIMIT 10  ) ;
 
-- Update table user_payments with new balance
insert  user_payments ( trans_id, user_id, pay_amount, pay_date, pay_balance)
  SELECT null , u_id, bonus, date(now()), new_balance  
  FROM users_bonus 
  join user_payments 
  where u_id= user_id ;
end //



CALL users_low_balance();
CALL users_bonus();

SELECT * FROM users_low_balance ;
SELECT * FROM users_bonus;
SELECT *  FROM user_payments
	order BY trans_id DESC 
    LIMIT 15;

