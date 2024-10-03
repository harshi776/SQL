
CREATE DATABASE SEP_23;
USE SEP_23;
CREATE TABLE metro_info(id int,m_name varchar(20),m_source varchar(15),m_desti varchar(15),m_price bigint);
CREATE DATABASE EMPLOYEE;
USE EMPLOYEE;
CREATE TABLE EMP_info(id int,e_name varchar(20),e_salary int,e_role varchar(20));
USE metro_info;
USE SEP_23;
SELECT * FROM metro_info;
ALTER TABLE metro_info ADD COLUMN no_of_passanger int;
SELECT * FROM metro_info;
ALTER TABLE metro_info DROP COLUMN m_price;
ALTER TABLE metro_info RENAME COLUMN m_desti TO line;
ALTER TABLE metro_info MODIFY COLUMN no_of_passanger bigint;
DESC metro_info;
RENAME TABLE metro_info TO metro_details;
