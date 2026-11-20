/*
Move data from sourcce table to the target table.

Source table is customers and target table is persons
*/

SELECT * FROM customers;

CREATE TABLE target_table(
id INT NOT NULL,
first_name VARCHAR(100) NOT NULL,
country VARCHAR(100) NOT NULL,
score INT NOT NULL
)

SELECT * FROM customers;
SELECT * FROM target_table;

-- Insert data to the target_table
INSERT INTO target_table(id, first_name, country, score)
SELECT * FROM customers;

SELECT * FROM target_table;


