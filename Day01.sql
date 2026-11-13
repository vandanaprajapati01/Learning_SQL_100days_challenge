CREATE DATABASE shopFinDB;
GO

USE shopFinDB;
GO
SELECT DB_NAME() AS CurrentDatabase;

CREATE TABLE Customers(

  CustomerID INT PRIMARY KEY,
  FullName VARCHAR(100),
  Email VARCHAR(100),
  City VARCHAR(100)
);

INSERT INTO Customers(CustomerID,FullName, Email,City)
VALUES
(1, 'Riya Patel', 'riya@gmail.com',  'Surat'),
(2, 'Amit Shah',  'amit@gmail.com',  'Ahmedabad'),
(3, 'Neha Joshi', 'neha@gmail.com',  'Bhavnagar');

SELECT *FROM Customers;

INSERT INTO Customers (CustomerID, FullName, Email, City)
Values(1,'Duplicate Person', 'duplicate@gmail.com', 'Pune' );

CREATE TABLE Products(
   ProductID INT PRIMARY KEY,
   ProductName VARCHAR(100),
   Price DECIMAL(10,2),
   StockQty INT
);

INSERT INTO Products(ProductID, ProductName,Price, StockQty)
VALUES
(1, 'Iphone15',50000.00,500),
(2,'Travelling Bag', 11999.99, 345),
(3,' Tiffin box', 599.99, 321),
(4, 'Grocery Items', 999.99, 7865),
(5, 'Cloths', 799.89, 1009);

SELECT *FROM Products

UPDATE Products
SET ProductName='Tiffin box'
WHERE ProductID=3;
