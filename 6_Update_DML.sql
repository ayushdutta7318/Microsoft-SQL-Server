USE MyDatabase;

/*
SYNTAX:

UPDATE table_name
SET col_1 = value_1, col_2 = value_2,...
WHERE condition 

*/

SELECT * FROM customers;

UPDATE customers
SET first_name = 'Rohan' WHERE id = 2;

SELECT * FROM customers;

UPDATE customers
SET score = 0 WHERE id = 2;

SELECT * FROM customers;

UPDATE customers
SET score = 10;

SELECT * FROM customers;