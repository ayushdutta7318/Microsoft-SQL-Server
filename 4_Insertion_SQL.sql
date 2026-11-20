USE MyDatabase;

-- Insert value in a table:
/*
SYNTAX:
INSERT INTO table_name (col_1, col_2, col_3,....)
VALUES
	(val_1, val_2, val_3)
	(val_3, val_4, val_5)
	.
	.
	.
	(......)
*/
SELECT * FROM customers;
INSERT INTO customers (id, first_name, country, score)
VALUES
		(6,'Ayush', 'China', 700),
		(7, 'Ramesh', 'India', 650),
		(8, 'Suresh', 'Indonesia', 579)

SELECT * FROM customers;
