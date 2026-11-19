USE ShopFinDB;
GO

ALTER TABLE Orders
ADD CONSTRAINT FK_Orders_Customers
Foreign KEY (CustomerID) REFERENCES Customers(CustomerID);

ALTER TABLE Payments

ADD CONSTRAINT FK_Payments_Orders
FOREIGN KEY (OrderID) REFERENCES Orders(OrderID);


INSERT INTO Orders
VALUES(105,99,SYSDATETIME(),500.00,'Placed');

DELETE FROM Customers WHERE CustomerID=1;

SELECT name FROM sys.foreign_keys;


ALTER TABLE Customers
ADD CONSTRAINT UQ_Customers_Email UNIQUE(Email);

INSERT INTO Customers
VALUES (4,N'Test User', 'riya@gmail.com',NULL,N'Pune','2001-01-01',1,SYSDATETIME());

ALTER TABLE Products
ADD CONSTRAINT CK_Products_Price CHECK(Price>0);

ALTER TABLE Products
ADD CONSTRAINT CK_Products_Stock CHECK(StockQty>=0);

ALTER TABLE Orders
ADD CONSTRAINT CK_Orders_Status
CHECK (Status IN('Placed','Shipped','Delivered', 'Cancelled'));

ALTER TABLE Payments
ADD CONSTRAINT CK_Payments_Amount CHECK (Amount>0);

USE ShopFinDB;
GO
INSERT INTO Products
VALUES(6,N'Test Item',-100.00,10,1,'2026-06-01')

INSERT INTO Orders
VALUES(105,1,SYSDATETIME(),500.00,'Lost');


SELECT NAME FROM sys.check_constraints;

USE ShopFinDB;
GO

ALTER TABLE Orders 
ADD CONSTRAINT DF_Orders_Status DEFAULT 'Placed' FOR Status;

ALTER TABLE Orders
ADD CONSTRAINT DF_Orders_Date DEFAULT SYSDATETIME() FOR OrderDate;
GO

INSERT INTO Orders (OrderID, CustomerID, TotalAmount)
VALUES (105,2,750.00);

SELECT *FROM Orders;

SELECT NAME FROM sys.default_constraints;

SELECT *FROM Orders WHERE OrderID=105;
