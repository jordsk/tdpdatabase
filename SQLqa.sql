CREATE DATABASE qa_resturant; #Statement to create a database if it doesn't exist already

USE qa_resturant; #Need this statement to point to the database we will be interacting with, e.g. creating tables in, adding records to, etc

SHOW TABLES; #Display all the tables in the database you're in

DROP TABLE members;
DROP TABLE customers;
DROP TABLE customerr;
DROP TABLE customerrs;
DESCRIBE customerrs; #Display tab



CREATE TABLE customers( 
c_id INT UNIQUE NOT NULL AUTO_INCREMENT,
cu_name VARCHAR(100) DEFAULT "",
phone_number VARCHAR(11) NOT NULL,
email_address VARCHAR(100) UNIQUE,
address1 VARCHAR(200) NOT NULL,
address2 VARCHAR(200) DEFAULT "",
town VARCHAR(100) NOT NULL,
post_code VARCHAR(10) NOT NULL,
delivery_info VARCHAR(300) DEFAULT "",
subscribe BOOLEAN DEFAULT false,
mp_email BOOLEAN DEFAULT true,
mp_phone BOOLEAN DEFAULT false,
mp_post BOOLEAN DEFAULT false,
PRIMARY KEY (c_id));

DESCRIBE customers;
SELECT * FROM customers;

INSERT INTO customers(cu_name, phone_number, email_address, address1, address2, town, post_code, delivery_info, subscribe, mp_email, mp_phone, mp_post) VALUES("jord", "07512345678", "jord123@hotmail.com", "123 high road", "crouch hill", "london", "n23ag", "n/a", "0", "0", "0","0");
INSERT INTO customers(cu_name, phone_number, email_address, address1, address2, town, post_code, delivery_info, subscribe, mp_email, mp_phone, mp_post) VALUES("Steve", "07903376735", "mrstevebond@gmail.com)","135 the brook", "barnet", "london", "en51ra", "n/a", "0", "0", "0","0");
INSERT INTO customers(cu_name, phone_number, email_address, address1, address2, town, post_code, delivery_info, subscribe, mp_email, mp_phone, mp_post) VALUES("bob", "07338260974", "bobthebuilder@gmail.co.uk)","135 the lane", "finchley", "london", "n28la", "n/a", "0", "0", "0","0");
INSERT INTO customers(cu_name, phone_number, email_address, address1, address2, town, post_code, delivery_info, subscribe, mp_email, mp_phone, mp_post) VALUES("barry", "07385678434", "barry454@gmail.co,)","295 close", "whetstone", "london", "en4rlg", "n/a", "0", "0", "0","0");
INSERT INTO customers(cu_name, phone_number, email_address, address1, address2, town, post_code, delivery_info, subscribe, mp_email, mp_phone, mp_post) VALUES("harvey", "07311234567", "harveynotharry@gmail.co.uk)","135 pop lane", "southgate", "bishop", "cm231ha", "n/a", "0", "0", "0","0");

UPDATE customers SET phone_number="07338260974" WHERE c_id=3;


CREATE TABLE items(
items_id INT UNIQUE NOT NULL AUTO_INCREMENT,
item_name VARCHAR(200) NOT NULL,
item_decription VARCHAR(500) NOT NULL,
allergens VARCHAR(500) DEFAULT "none" NOT NULL,
price DECIMAL(2) NOT NULL,
calories INT NOT NULL,
availability BOOLEAN DEFAULT (false));

ALTER TABLE items MODIFY price DECIMAL (6,2) NOT NULL;

DESCRIBE items;
SELECT * FROM items;
INSERT INTO items(item_name, item_decription, allergens, price, calories, availability) VALUES("halloumi","greek cheese", "milk", "499", "480", "1");
INSERT INTO items(item_name, item_decription, allergens, price, calories, availability) VALUES("rissoto","a lovely creamy rissoto", "soya", "899", "650", "1");
INSERT INTO items(item_name, item_decription, allergens, price, calories, availability) VALUES("salad","rocket and pea shoots", "n/a", "2.99", "60", "1");
INSERT INTO items(item_name, item_decription, allergens, price, calories, availability) VALUES("fruit bowl","a great range of summer fruits", "n/a", "2.99", "130", "1");
INSERT INTO items(item_name, item_decription, allergens, price, calories, availability) VALUES("bread and butter","selection of house bread", "gluten", "1.99", "150", "0");

DELETE FROM items WHERE items_id=4;

CREATE TABLE orders(
order_id INT UNIQUE NOT NULL AUTO_INCREMENT,
cust_id INT NOT NULL,
total_price DECIMAL (6,2),
PRIMARY KEY(order_id),
FOREIGN KEY (cust_id) REFERENCES customers(c_id));

DESCRIBE orders;
SELECT * FROM orders;
INSERT INTO orders(cust_id, total_price) VALUES ("1", "10.00"), ("2", "899"), ("3", "15.00"), ("4", "5.98"), ("5", "3.98");

CREATE TABLE orders_items(
oi_id INT UNIQUE NOT NULL AUTO_INCREMENT,
ord_id INT NOT NULL,
i_id INT NOT NULL,
quantity INT,
PRIMARY KEY (oi_id),
FOREIGN KEY (ord_id) REFERENCES orders(order_id),
FOREIGN KEY (i_id) REFERENCES items(items_id));

DESCRIBE orders_items;
SELECT * FROM orders_items;

INSERT INTO orders_items(ord_id, i_id, quantity) VALUES(36, 1, 3), (37, 1, 2), (38, 1, 2), (39, 3, 5), (40, 5, 1);

SELECT * FROM items ORDER BY items_id DESC LIMIT 2;

SELECT * FROM customers RIGHT OUTER JOIN orders ON customers.c_id=orders.cust_id;

SELECT * FROM customers WHERE c_id=(SELECT c_id FROM orders WHERE order_id=1);

