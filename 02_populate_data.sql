-- Assignment 12 Q3: populate database
USE pizza_restaurant;

-- populate customer data
INSERT INTO `customers` (name, phone)
VALUES 
  ('Trevor Page', '226-555-4982'),
  ('John Doe', '555-555-9498');
  
  -- populate order data
INSERT INTO `orders` (order_id, customer_id, date_time)
VALUES 
  (1, 1, '2014-10-09 9:47:00'),
  (2, 2, '2014-10-09 13:20:00'),
  (3, 1, '2014-10-09 9:47:00');

-- populate orderdetails data
INSERT INTO `orderdetails` (order_id, amount)
VALUES
  (1, 1), (1, 1),
  (2, 1), (2, 2),
  (3, 1), (3, 1);

-- populate pizza data
INSERT INTO `pizzas` (name, price)
VALUES 
  ('Pepperoni & Cheese', 7.99),
  ('Vegetarian', 9.99),
  ('Meat Lovers', 14.99),
  ('Hawaiian', 12.99);

-- populate join table
INSERT INTO `orderdetails_pizzas` (item_id, pizza_id)
VALUES
  (1, 1), (2, 3),
  (3, 2), (4, 3),
  (5, 3), (6, 4);