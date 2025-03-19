DECLARE @datetime2 DATETIME2(7), @datetime DATETIME;
SET @datetime2 = '2024-08-06 18:34:10.2333333';
SET @datetime = '2024-08-06 18:34:10.233';
SELECT @datetime AS 'datetime', @datetime2 AS 'datetime2';