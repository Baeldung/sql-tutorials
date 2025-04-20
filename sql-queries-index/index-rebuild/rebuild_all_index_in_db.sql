USE University; 
GO 

DECLARE @TableName NVARCHAR(255); 
DECLARE @SQL NVARCHAR(MAX); 

DECLARE table_cursor CURSOR FOR 
SELECT QUOTENAME(SCHEMA_NAME(t.schema_id)) + '.' + QUOTENAME(t.name) 
FROM sys.tables t 
WHERE t.is_ms_shipped = 0; 

OPEN table_cursor; 
FETCH NEXT FROM table_cursor INTO @TableName; 

WHILE @@FETCH_STATUS = 0 
BEGIN 
  SET @SQL = 'ALTER INDEX ALL ON ' + @TableName + ' REBUILD WITH (FILLFACTOR = 90, SORT_IN_TEMPDB = ON);'; 
  PRINT 'Rebuilding indexes on: ' + @TableName; 
  EXEC sp_executesql @SQL; 
  FETCH NEXT FROM table_cursor INTO @TableName; 
END; 

CLOSE table_cursor; 
DEALLOCATE table_cursor;
