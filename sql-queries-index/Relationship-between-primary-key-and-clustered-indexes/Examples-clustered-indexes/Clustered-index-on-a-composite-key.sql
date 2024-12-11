CREATE TABLE Sales ( 
  OrderID INT NOT NULL, 
  ProductID INT NOT NULL, 
  SaleDate DATE NOT NULL, 
  PRIMARY KEY (OrderID, ProductID));
