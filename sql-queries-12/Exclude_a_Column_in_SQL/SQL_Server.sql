-- Excludes gpa column from the student table 
DECLARE @sql NVARCHAR(MAX);
SELECT @sql =
    'SELECT ' + STRING_AGG(QUOTENAME(name), ', ')
    + ' FROM dbo.student'
FROM sys.columns
WHERE object_id = OBJECT_ID('dbo.student')
  AND name <> 'gpa';
EXEC sp_executesql @sql;
