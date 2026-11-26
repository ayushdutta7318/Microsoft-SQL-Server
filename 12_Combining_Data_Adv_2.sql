-- MULTI JOIN
/* Using SalesDB, Retrieve a list of all orders, along with the related customer, product, and employee details.

For each order, display:
Order ID
Customer's name
Product name
Sales amount
Product price
Salesperson's name */

USE SalesDB;
SELECT * FROM Sales.Customers;
SELECT * FROM Sales.Employees;
SELECT * FROM Sales.Orders;
SELECT * FROM Sales.OrdersArchive;
SELECT * FROM Sales.Products;

SELECT o.OrderId, o.Sales, c.FirstName AS customer_name, p.Product, p.Price, e.FirstName AS employee_name FROM Sales.Orders AS o
LEFT JOIN Sales.Customers AS c
ON o.CustomerID = c.CustomerID
LEFT JOIN Sales.Products AS p
ON o.ProductID = p.ProductID
LEFT JOIN Sales.Employees as e
ON o.SalesPersonID = e.EmployeeID;
