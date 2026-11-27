/*
SET Operator:
SET Operators in MSSQL (Beginner Notes)
What are SET Operators?

SET Operators are used to combine the results of two or more SELECT statements into a single result set.

Think of them as ways to perform set operations from mathematics on database query results.

Types of SET Operators in SQL Server
UNION
UNION ALL
INTERSECT
EXCEPT
Rules for Using SET Operators

Before using any SET Operator:

✅ The number of columns in each SELECT statement must be the same.

✅ Corresponding columns should have compatible data types.

✅ Column names in the final result are taken from the first SELECT statement.

1. UNION
Theory

UNION combines the results of two queries and removes duplicate rows.

Syntax
SELECT column1, column2
FROM table1

UNION

SELECT column1, column2
FROM table2;

Example

Customers_2025

id	name1	Rahul
2	Priya

Customers_2026

id	name2	Priya
3	Aman

Query:

SELECT id, name
FROM Customers_2025

UNION

SELECT id, name
FROM Customers_2026;

Output
id	name1	Rahul
2	Priya
3	Aman

Duplicate row (2, Priya) is removed.

2. UNION ALL
Theory

UNION ALL combines the results of two queries and keeps all duplicates.

It is generally faster than UNION because SQL Server does not spend time removing duplicates.

Syntax
SELECT column1, column2
FROM table1

UNION ALL

SELECT column1, column2
FROM table2;

Example
SELECT id, name
FROM Customers_2025

UNION ALL

SELECT id, name
FROM Customers_2026;

Output
id	name1	Rahul
2	Priya
2	Priya
3	Aman

Duplicate row appears twice.

UNION vs UNION ALL
Feature	UNION	UNION ALLRemoves duplicates	Yes	No
Faster	No	Yes
Most used for	Unique results	Complete results
3. INTERSECT
Theory

INTERSECT returns only the rows that are present in both queries.

Think of it as finding the common records.

Syntax
SELECT column1, column2
FROM table1

INTERSECT

SELECT column1, column2
FROM table2;

Example
SELECT id, name
FROM Customers_2025

INTERSECT

SELECT id, name
FROM Customers_2026;

Output
id	name2	Priya

Because only (2, Priya) exists in both tables.

4. EXCEPT
Theory

EXCEPT returns rows from the first query that are not present in the second query.

Think of it as subtraction.

Syntax
SELECT column1, column2
FROM table1

EXCEPT

SELECT column1, column2
FROM table2;

Example
SELECT id, name
FROM Customers_2025

EXCEPT

SELECT id, name
FROM Customers_2026;

Output
id	name1	Rahul

Priya exists in both tables, so it is removed.

Practical MSSQL Examples
Employees in India and USA
UNION
SELECT emp_name
FROM India_Employees

UNION

SELECT emp_name
FROM USA_Employees;


Unique employee names from both tables.

UNION ALL
SELECT emp_name
FROM India_Employees

UNION ALL

SELECT emp_name
FROM USA_Employees;


All employee names including duplicates.

INTERSECT
SELECT emp_name
FROM India_Employees

INTERSECT

SELECT emp_name
FROM USA_Employees;


Employees present in both tables.

EXCEPT
SELECT emp_name
FROM India_Employees

EXCEPT

SELECT emp_name
FROM USA_Employees;


Employees present in India_Employees but not in USA_Employees.

Using ORDER BY with SET Operators

ORDER BY must be written only once at the end.

✅ Correct

SELECT id, name
FROM table1

UNION

SELECT id, name
FROM table2

ORDER BY id;


❌ Wrong

SELECT id, name
FROM table1
ORDER BY id

UNION

SELECT id, name
FROM table2;

Interview Questions
Q1. Difference between UNION and UNION ALL?

UNION removes duplicates.

UNION ALL keeps duplicates and is faster.

Q2. Which SET operator finds common rows?
INTERSECT

Q3. Which SET operator acts like subtraction?
EXCEPT

Q4. Which SET operator performs best?
UNION ALL


because no duplicate-checking is performed.

Quick Summary
Operator	Purpose	DuplicatesUNION	Combine results	Removed
UNION ALL	Combine results	Kept
INTERSECT	Common rows	Removed
EXCEPT	First query minus second query	Removed
Easy Memory Trick
UNION = Add + Remove Duplicates
UNION ALL = Add Everything
INTERSECT = Common Records
EXCEPT = Subtract Records
*/

USE SalesDB;

SELECT c.FirstName, c.LastName FROM Sales.Customers AS c;
SELECT e.FirstName, e.LastName FROM Sales.Employees AS e;

--UNION
SELECT c.FirstName, c.LastName FROM Sales.Customers AS c
UNION
SELECT e.FirstName, e.LastName FROM Sales.Employees AS e;

--Should have same # of coln
SELECT c.Country, c.FirstName, c.LastName FROM Sales.Customers AS c
UNION
SELECT e.FirstName, e.LastName FROM Sales.Employees AS e;

-- Should have same datatype
SELECT c.Score, c.FirstName FROM Sales.Customers AS c
UNION
SELECT e.FirstName, e.LastName FROM Sales.Employees AS e;

--UNION ALL
SELECT c. FirstName, c.LastName FROM Sales.Customers AS c
UNION ALL
SELECT e.FirstName, e.LastName FROM Sales.Employees AS e;

--Except
SELECT c. FirstName, c.LastName FROM Sales.Customers AS c
EXCEPT
SELECT e.FirstName, e.LastName FROM Sales.Employees AS e;

--Except
SELECT c. FirstName, c.LastName FROM Sales.Customers AS c
INTERSECT
SELECT e.FirstName, e.LastName FROM Sales.Employees AS e;

/*
Orders are stored in separate tables (Orders and OrdersArchive).
Combine all orders into one report without duplicates.
*/

SELECT 'Orders' AS SourceTable, * FROM Sales.Orders AS o
UNION 
SELECT 'OrdersArchive' AS SourceTable, * FROM Sales.OrdersArchive AS ar;

