USE MyDatabase;

-- Select all the columns from a table
SELECT * FROM dbo.customers;

-- Select specific columns from a table
SELECT first_name, country FROM dbo.customers;

-- WHERE - used to apply a condition:
SELECT * FROM dbo.customers WHERE score > 450;
SELECT country FROM dbo.customers WHERE score > 450;
SELECT * FROM dbo.customers WHERE score != 0;
SELECT * FROM dbo.customers WHERE country = 'Germany';

-- Sorting Data Using - ORDER BY
SELECT * FROM dbo.customers ORDER BY score;
SELECT * FROM dbo.customers ORDER BY score DESC;
SELECT * FROM dbo.customers ORDER BY score ASC;

-- Nested Sorting:
SELECT * FROM dbo.customers ORDER BY country ASC, score DESC;

-- Aggregation using GROUP BY:
SELECT country, SUM(score) AS total_score FROM dbo.customers GROUP BY country;

-- Aggregation with GROUP BY and sorting
SELECT country, SUM(score) AS total_score FROM dbo.customers GROUP BY country ORDER BY total_score DESC;

-- Find total customers and country
SELECT country, COUNT(country) AS total_country, COUNT(first_name) AS total_customers FROM dbo.customers GROUP BY country;

-- HAVING - used only after GROUP BY. Used as a clause for condition when we have to apply condition only after aggregation.
SELECT country, SUM(score) AS total_score FROM dbo.customers GROUP BY country HAVING SUM(score) > 775;

/* 
Find the average score for each country, considering only customers with a score not equal to 0.
And return only those countries with an average score greater than 430.
*/

SELECT country, AVG(score) AS avg_score FROM dbo.customers WHERE score != 0 GROUP BY country HAVING AVG(score) > 430;

-- DISTINCT - Removes duplicates
SELECT DISTINCT country FROM dbo.customers;