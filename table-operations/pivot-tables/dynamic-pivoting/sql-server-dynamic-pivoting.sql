DECLARE @columns NVARCHAR(MAX), @sql NVARCHAR(MAX); 
SELECT @columns = STRING_AGG(QUOTENAME(semester), ', ') 
FROM (SELECT DISTINCT semester FROM Teaching) AS semesters; 
SET @sql = ' 
  SELECT role, ' + @columns + ' 
  FROM ( SELECT role, semester FROM Teaching ) AS source 
  PIVOT ( COUNT(semester) FOR semester IN (' + @columns + ') ) AS pivot_table; 
          '; 
EXEC sp_executesql @sql;
