-- Delete all rows

USE MyDatabase;

-- Create the table
CREATE TABLE Customers_ (
    customer_id INT IDENTITY(1,1) PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    city VARCHAR(50) NOT NULL,
    phone_number VARCHAR(15) NOT NULL UNIQUE
);

-- Insert 5 rows
INSERT INTO Customers_ (customer_name, city, phone_number)
VALUES
    ('Amit Sharma', 'Indore', '9876543210'),
    ('Priya Verma', 'Bhopal', '9123456780'),
    ('Rahul Singh', 'Mumbai', '9988776655'),
    ('Neha Patel', 'Ahmedabad', '9012345678'),
    ('Arjun Mehta', 'Pune', '9090909090');

-- Display the data
SELECT * 
FROM Customers_;

DELETE FROM Customers_;

--Aliter
TRUNCATE TABLE Customers_;