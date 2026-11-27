-- Joining Tables:

/*
SET operators conbines rows one above another. 
JOIN operator combines table side by side.


Set Operators vs										Joins
Set operators	Joins
Combine tables vertically								Combine tables horizontally
Add rows to the result									Add columns to the result
Require the same number of selected columns				Do not require the same number of columns
Use UNION, UNION ALL, EXCEPT, and INTERSECT				Use INNER, LEFT, RIGHT, and FULL OUTER JOIN
Corresponding column data types must be compatible		Usually require a relationship or matching condition

Why do we use JOIN operations in SQL?

To combine related data from multiple tables
 Databases usually store information in separate tables. A join brings related information together in one result.

To avoid duplicating data
 Instead of repeatedly storing the same customer, department, or product details, the information is stored once and connected through a common column.

To create meaningful reports
 A table may contain employee details, while another contains department details. A join can produce a report showing each employee with the corresponding department.

To connect tables through related columns
 Tables are commonly connected using:

Primary keys
Foreign keys
Other matching columns, such as customer ID or product ID

To retrieve matching records
 An inner join helps return records that have matching values in both tables.

To find records without a match
 Left, right, and full joins can reveal missing relationships, such as:

Customers who have not placed an order
Products that have never been sold
Employees who are not assigned to a department

To keep a database organized
 Joins support database normalization, where different types of information are placed in separate tables rather than one large table.

To analyze relationships between data
 Joins make it possible to answer questions such as:

Which customer placed each order?
Which department does each employee belong to?
Which supplier provides each product?
Which students enrolled in each course?

To combine columns horizontally
 A join places related columns from multiple tables next to each other in the result. In contrast, set operators generally combine rows vertically.

To control which records appear
 Different joins provide different results:

Inner join: Only matching records
Left join: All left-table records and available matches
Right join: All right-table records and available matches
Full join: All records from both tables

If there is a mismatch in # of data points (rows), sql will display only common data points
*/

-- No Join:
USE MyDatabase;

SELECT * FROM customers;

SELECT * FROM orders;

INSERT INTO orders (order_id, customer_id, order_date, sales)
VALUES
(1005, 4,   '2023-01-01', 17),
(1006, 5,   '2023-01-02', 24),
(1007, 7,   '2023-01-03', 31),
(1008, 8,   '2023-01-04', 38),
(1009, 9,   '2023-01-05', 45),
(1010, 10,  '2023-01-06', 52),
(1011, 11,  '2023-01-07', 59),
(1012, 12,  '2023-01-08', 66),
(1013, 13,  '2023-01-09', 73),
(1014, 14,  '2023-01-10', 80),

(1015, 15,  '2023-01-11', 87),
(1016, 16,  '2023-01-12', 94),
(1017, 17,  '2023-01-13', 10),
(1018, 18,  '2023-01-14', 17),
(1019, 19,  '2023-01-15', 24),
(1020, 20,  '2023-01-16', 31),
(1021, 21,  '2023-01-17', 38),
(1022, 22,  '2023-01-18', 45),
(1023, 23,  '2023-01-19', 52),
(1024, 24,  '2023-01-20', 59),

(1025, 25,  '2023-01-21', 66),
(1026, 26,  '2023-01-22', 73),
(1027, 27,  '2023-01-23', 80),
(1028, 28,  '2023-01-24', 87),
(1029, 29,  '2023-01-25', 94),
(1030, 30,  '2023-01-26', 10),
(1031, 31,  '2023-01-27', 17),
(1032, 32,  '2023-01-28', 24),
(1033, 33,  '2023-01-29', 31),
(1034, 34,  '2023-01-30', 38),

(1035, 35,  '2023-01-31', 45),
(1036, 36,  '2023-02-01', 52),
(1037, 37,  '2023-02-02', 59),
(1038, 38,  '2023-02-03', 66),
(1039, 39,  '2023-02-04', 73),
(1040, 40,  '2023-02-05', 80),
(1041, 41,  '2023-02-06', 87),
(1042, 42,  '2023-02-07', 94),
(1043, 43,  '2023-02-08', 10),
(1044, 44,  '2023-02-09', 17),

(1045, 45,  '2023-02-10', 24),
(1046, 46,  '2023-02-11', 31),
(1047, 47,  '2023-02-12', 38),
(1048, 48,  '2023-02-13', 45),
(1049, 49,  '2023-02-14', 52),
(1050, 50,  '2023-02-15', 59),
(1051, 51,  '2023-02-16', 66),
(1052, 52,  '2023-02-17', 73),
(1053, 53,  '2023-02-18', 80),
(1054, 54,  '2023-02-19', 87),

(1055, 55,  '2023-02-20', 94),
(1056, 56,  '2023-02-21', 10),
(1057, 57,  '2023-02-22', 17),
(1058, 58,  '2023-02-23', 24),
(1059, 59,  '2023-02-24', 31),
(1060, 60,  '2023-02-25', 38),
(1061, 61,  '2023-02-26', 45),
(1062, 62,  '2023-02-27', 52),
(1063, 63,  '2023-02-28', 59),
(1064, 64,  '2023-03-01', 66),

(1065, 65,  '2023-03-02', 73),
(1066, 66,  '2023-03-03', 80),
(1067, 67,  '2023-03-04', 87),
(1068, 68,  '2023-03-05', 94),
(1069, 69,  '2023-03-06', 10),
(1070, 70,  '2023-03-07', 17),
(1071, 71,  '2023-03-08', 24),
(1072, 72,  '2023-03-09', 31),
(1073, 73,  '2023-03-10', 38),
(1074, 74,  '2023-03-11', 45),

(1075, 75,  '2023-03-12', 52),
(1076, 76,  '2023-03-13', 59),
(1077, 77,  '2023-03-14', 66),
(1078, 78,  '2023-03-15', 73),
(1079, 79,  '2023-03-16', 80),
(1080, 80,  '2023-03-17', 87),
(1081, 81,  '2023-03-18', 94),
(1082, 82,  '2023-03-19', 10),
(1083, 83,  '2023-03-20', 17),
(1084, 84,  '2023-03-21', 24),

(1085, 85,  '2023-03-22', 31),
(1086, 86,  '2023-03-23', 38),
(1087, 87,  '2023-03-24', 45),
(1088, 88,  '2023-03-25', 52),
(1089, 89,  '2023-03-26', 59),
(1090, 90,  '2023-03-27', 66),
(1091, 91,  '2023-03-28', 73),
(1092, 92,  '2023-03-29', 80),
(1093, 93,  '2023-03-30', 87),
(1094, 94,  '2023-03-31', 94),

(1095, 95,  '2023-04-01', 10),
(1096, 96,  '2023-04-02', 17),
(1097, 97,  '2023-04-03', 24),
(1098, 98,  '2023-04-04', 31),
(1099, 99,  '2023-04-05', 38),
(1100, 100, '2023-04-06', 45),
(1101, 101, '2023-04-07', 52),
(1102, 102, '2023-04-08', 59),
(1103, 103, '2023-04-09', 66),
(1104, 104, '2023-04-10', 73);

--Inner Join: Returns only matching data
-- Get all customers along with their orders, but only for customers who have placed an order
SELECT * FROM  customers
INNER JOIN orders
ON id = customer_id;

SELECT id, first_name, country, order_date, order_id, sales FROM customers
INNER JOIN orders
ON customers.id = orders.customer_id;

--ALiter
SELECT c.id, c.first_name, c.country, o.order_date, o.order_id, o.sales FROM customers AS c
INNER JOIN orders AS o
ON c.id = o.customer_id;

--Left Join: return all data from left table and only matching data from right table
SELECT * FROM customers AS c
LEFT JOIN orders AS o
ON c.id = o.customer_id;

--DELETE FROM orders WHERE customer_id >=65;

-- Right Join: Returns all rows from right table and only matching rows from the left ones
SELECT * FROM orders AS o
RIGHT JOIN customers AS c
ON o.customer_id = c.id;

-- Full Join: Returns all the rows from both tables
SELECT * FROM customers AS c
FULL JOIN orders AS o
ON c.id = o.customer_id;