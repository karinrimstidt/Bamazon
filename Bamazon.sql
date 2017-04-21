CREATE DATABASE Bamazon;
USE Bamazon;


CREATE TABLE products(
item_id INT NOT NULL AUTO_INCREMENT,
  
product_name VARCHAR(100) NOT NULL,
  
department_name VARCHAR(100) NOT NULL,
 
price DECIMAL(10,2) NOT NULL,
  
stock_quantity INTEGER(4) NOT NULL,
  
PRIMARY KEY (item_id)

);



INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("hammer", "hardware", 18.95, 10);


INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("wrench", "hardware", 22.50, 10);


INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("screw driver", "hardware", 11.75, 7);


INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("box of nails", "hardware", 2.25, 8);


INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("box of screws", "hardware", 4.39, 14);


INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("shovel", "landscaping", 15.95, 3);


INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("compost, 1 yd", "landscaping", 8.95, 9);


INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("potting soil, 1/2 yd", "landscaping", 3.65, 4);


INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("power drill", "power tools", 87.40, 3);


INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ("drill press", "power tools", 215.95, 2);


