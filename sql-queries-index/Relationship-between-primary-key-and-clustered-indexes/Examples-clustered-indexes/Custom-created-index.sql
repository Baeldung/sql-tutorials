CREATE TABLE Orders ( 
  OrderID INT PRIMARY KEY, 
  OrderDate DATETIME, 
  CustomerID INT); 
CREATE CLUSTERED INDEX IX_OrderDate ON Orders (OrderDate);
