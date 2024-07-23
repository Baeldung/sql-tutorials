--1 Index SQL Syntax
Index SQL Syntax

CREATE INDEX Index_Name ON Table_Name (Column_Name);
/*
This will give you a non-unique and non-clustered index
*/

-- 2 Create Table
create schema transactiondata

GO

create table transactiondata.SalesFactTable(
   Transaction_ID INT Primary Key not null,
   Date date,
   Branch varchar(50),
   Product varchar(50),
   Unit_Price float,
   Quantity int,
   Sales_Discount float,
   Total_Amount_Sold float,
   Hour Int,
   Time_Range varchar(50),
   Branch_ID INT,
   Product_ID INT
);

-- 3 Drop Index
Drop table transactiondata.SalesFactTable

-- 4 Create NonClustered Index
CREATE NONCLUSTERED INDEX IX_sales_trans_id
ON [dbo].[SalesFactTables] (Transaction_ID);

GO
select * from [dbo].[SalesFactTables];

-- 5 View Existing Index
sp_helpindex [SalesFactTables]

-- 6. Create Clustered Composite Index
CREATE CLUSTERED INDEX IX_SalesFactTables_Composite
ON [dbo].[SalesFactTables] (Transaction_ID, product_id);

/*
If you want to specify a different order for the index columns, such as descending order, 
you need to include the sort order in the index definition.
You can specify the sort order for each column individually.

CREATE CLUSTERED INDEX IX_SalesFactTables_Composite
ON [dbo].[SalesFactTables] (Transaction_ID ASC, product_id DESC);
;
*/

-- 7. Create NonClustered Composite Index
CREATE NONCLUSTERED INDEX IX_SalesFactTables_nonComposite
ON [dbo].[SalesFactTables] (Transaction_ID, product_id);
