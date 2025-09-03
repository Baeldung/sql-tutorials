EXEC sp_spaceused;

SELECT DB_NAME(database_id) AS [Database], CAST(SUM(size) * 8 / 1024 AS VARCHAR(20)) + ' MB' AS [Size] 
  FROM sys.master_files 
  WHERE DB_NAME(database_id) = 'university' 
  GROUP BY database_id;

SELECT d.name AS [Database], CAST(SUM(mf.size) * 8 / 1024 AS VARCHAR(20)) + ' MB' AS [Size] 
  FROM sys.databases d 
  JOIN sys.master_files mf 
  ON d.database_id = mf.database_id 
  GROUP BY d.name 
  ORDER BY SUM(mf.size) DESC;
