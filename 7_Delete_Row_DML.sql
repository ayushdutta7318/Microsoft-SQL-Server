USE MyDatabase;

SELECT * FROM customers;

DELETE FROM customers WHERE first_name = 'Rohan';
DELETE FROM customers WHERE id > 5;