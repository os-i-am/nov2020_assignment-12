-- Assignment 12 Q2: create database (and point to it for further use)
CREATE DATABASE IF NOT EXISTS pizza_restaurant;
USE pizza_restaurant;

-- create customers table
CREATE TABLE IF NOT EXISTS `customers` (
    `customer_id` INT NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(100) NULL,
    `phone` VARCHAR(100) NULL,
  PRIMARY KEY (`customer_id`));
  
-- create orders table
CREATE TABLE IF NOT EXISTS `orders` (
  `order_id` INT NOT NULL AUTO_INCREMENT,
  `customer_id` INT NOT NULL,
  `date_time` DATETIME NULL,
  PRIMARY KEY (`order_id`),
-- enforcing relationships between tables
--  1) customers  -> orders //  one-to-many
--  add foreign key
FOREIGN KEY (customer_id) REFERENCES `customers`(customer_id));

-- create orderdetails table
CREATE TABLE IF NOT EXISTS `orderdetails` (
  `item_id` INT NOT NULL AUTO_INCREMENT,
  `order_id` INT NOT NULL,
  `amount` INT NULL,
  PRIMARY KEY (`item_id`),
-- enforcing relationships between tables
--  2) orders -> orderdetails //  one-to-many
--  add foreign key
FOREIGN KEY (order_id) REFERENCES `orders`(order_id));
  
-- create pizzas table
CREATE TABLE IF NOT EXISTS `pizzas` (
  `pizza_id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NULL,
  `price` DECIMAL(4,2) NULL,
  PRIMARY KEY (`pizza_id`));

-- enforcing relationships between tables
--  3) orderdetails <-> pizzas // many-to-many
--  add join table orderdetails_pizzas
 CREATE TABLE IF NOT EXISTS `orderdetails_pizzas` (
  `item_id` INT NOT NULL,
  `pizza_id` INT NOT NULL,
  FOREIGN KEY (item_id) REFERENCES `orderdetails`(item_id),
  FOREIGN KEY (pizza_id) REFERENCES `pizzas`(pizza_id)
 );