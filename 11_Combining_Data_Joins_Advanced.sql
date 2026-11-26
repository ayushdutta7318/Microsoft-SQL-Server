USE MyDatabase;

SELECT * FROM orders;

UPDATE orders SET order_date = NULL, sales = NULL
WHERE customer_id > 49;

--LEFT ANTI JOIN
SELECT * FROM customers AS c
LEFT JOIN orders AS o
ON c.id = o.customer_id WHERE o.order_date IS NOT NULL;

-- RIGHT ANTI JOIN
SELECT * FROM customers AS c
RIGHT JOIN orders AS o
ON c.id = o.customer_id WHERE o.order_date IS NULL;

--FULL ANTI JOIN:
UPDATE customers SET country = NULL WHERE id > 49;

SELECT * FROM customers AS c
FULL JOIN orders AS o
ON c.id = o.customer_id WHERE c.country IS NULL OR o.order_date IS NULL;

/* Get all customers along with their orders,
 but only for customers who have placed an order */

SELECT * FROM customers AS c
LEFT JOIN orders AS o
ON c.id = o.customer_id
WHERE o.order_date IS NOT NULL;

-- CROSS JOIN
SELECT * FROM customers
CROSS JOIN orders;