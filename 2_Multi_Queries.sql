USE MyDatabase;

-- Running Multi Queries for different tables:
SELECT * FROM customers;
SELECT * FROM orders;

-- Giving static data without table:
SELECT 123 AS static_number;
SELECT 'Hello' AS static_string;

-- We can combine data from table and static data
SELECT *, 'New_Customer' AS customer_type FROM customers;
SELECT id, first_name, 'New_Customer' AS customer_type FROM customers;