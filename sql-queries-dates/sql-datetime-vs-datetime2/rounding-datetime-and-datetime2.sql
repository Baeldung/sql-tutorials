DECLARE @date1 datetime, @date2 datetime2(3);
SET @date2 = '2024-12-03 11:25:20.5782441';
SET @date1 = @date2;
SELECT @date1 AS 'datetime', @date2 AS 'datetime2';