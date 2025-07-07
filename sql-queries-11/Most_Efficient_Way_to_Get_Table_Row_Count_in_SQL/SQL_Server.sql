-- Dynamic Management Views 

SELECT SUM(row_count) AS approx_rows 
  FROM sys.dm_db_partition_stats 
  WHERE object_id = OBJECT_ID('dbo.student') 
  AND index_id IN (0, 1);
