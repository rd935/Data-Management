CREATE DATABASE IF NOT EXISTS `TravelSystem`;
USE `TravelSystem`;

-- delete table if preexisting
DROP TABLE IF EXISTS users;

-- create the table of users
CREATE TABLE users(
`username` varchar(30) 	NOT NULL,
`password` varchar(30) 	NOT NULL,
primary key(`username`));

-- test logins
INSERT INTO `users` VALUES ('Test123' , 'testabc'),('Trialabc' , 'testabc');

GRANT ALL PRIVILEGES ON TravelSystem.* TO 'root'@'localhost';
FLUSH PRIVILEGES;

CREATE USER IF NOT EXISTS 'login_connection'@'localhost' IDENTIFIED BY 'databases';

-- change the login_connection user to use mysql_native_password
ALTER USER 'login_connection'@'localhost' IDENTIFIED WITH mysql_native_password BY 'databases';

-- grant privileges to login_connection
GRANT ALL PRIVILEGES ON TravelSystem.* TO 'login_connection'@'localhost';
FLUSH PRIVILEGES;
