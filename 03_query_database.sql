-- Assignment 12 Q4: How much money has each individual customer spent?
SELECT cst.name AS customer_name, sum(pzz.price * od.amount) AS total_amount_spent FROM `orders` ordr
JOIN `customers` cst ON ordr.customer_id = cst.customer_id
JOIN `orderdetails` od ON od.order_id = ordr.order_id
JOIN `orderdetails_pizzas` op ON op.item_id = od.item_id
JOIN `pizzas` pzz ON pzz.pizza_id = op.pizza_id
GROUP BY cst.name;

-- Assignment 12 Q5: How much did each customer order and on what date?
SELECT cst.name AS customer_name, ordr.date_time AS time_of_order, sum(pzz.price * od.amount) AS total_amount_spent FROM `orders` ordr
JOIN `customers` cst ON ordr.customer_id = cst.customer_id
JOIN `orderdetails` od ON od.order_id = ordr.order_id
JOIN `orderdetails_pizzas` op ON op.item_id = od.item_id
JOIN `pizzas` pzz ON pzz.pizza_id = op.pizza_id
GROUP BY ordr.date_time, cst.name;

-- helper scripts: select all the data from different tables
SELECT * FROM `customers`;
SELECT * FROM `pizzas`;
SELECT * FROM `orders`;
SELECT * FROM `orderdetails`;
SELECT * FROM `orderdeteils_pizzas`;

-- helper script: joining the data -> "de-normalize" the actual pizza orders
SELECT * FROM `orders` ordr
JOIN `customers` cst ON ordr.customer_id = cst.customer_id
JOIN `orderdetails` od ON od.order_id = ordr.order_id
JOIN `orderdetails_pizzas` op ON op.item_id = od.item_id
JOIN `pizzas` pzz ON pzz.pizza_id = op.pizza_id;