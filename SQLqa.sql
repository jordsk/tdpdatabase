CREATE DATABASE qa_resturant; #Statement to create a database if it doesn't exist already

USE qa_resturant; #Need this statement to point to the database we will be interacting with, e.g. creating tables in, adding records to, etc

CREATE TABLE customers(
cust_id INT UNIQUE NOT NULL AUTO_INCREMENT,
cust_name VARCHAR(100) NOT NULL,
phone_number CHAR(11) NOT NULL,
PRIMARY KEY (cust_id));

SHOW TABLES; #Display all the tables in the database you're in

DESCRIBE customers; #Display tab

INSERT INTO customers(cust_name, phone_number) VALUES("ash", "07946621661");
INSERT INTO customers(cust_name, phone_number) VALUES("ash2", "97946621111");

SELECT * FROM customers;







