CREATE DATABASE IF NOT EXISTS testdb;
USE testdb;
SELECT DATABASE();

CREATE USER IF NOT EXISTS 'app_user'@'localhost' IDENTIFIED BY 'app1234';
GRANT SELECT, INSERT, UPDATE, DELETE
ON testdb.*
TO 'app_user'@'localhost';

FLUSH PRIVILEGES;

SHOW GRANTS FOR 'app_user'@'localhost';


CREATE TABLE IF NOT EXISTS members (
id		   INT		AUTO_INCREMENT PRIMARY KEY,
uid        VARCHAR(50)     NOT NULL  UNIQUE,
password   VARCHAR(255)    NOT NULL,
name       VARCHAR(50)     NOT NULL,
role       ENUM('admin','manager','user') DEFAULT 'user',
active     BOOLEAN      DEFAULT      TRUE,
created_at DATETIME     DEFAULT      CURRENT_TIMESTAMP
);
