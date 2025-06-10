USE University; 
GO 
  SELECT t.name AS Table_name, 
         i.name AS Index_name, 
         ps.avg_fragmentation_in_percent 
  FROM sys.dm_db_index_physical_stats(DB_ID(), NULL, NULL, NULL, 'LIMITED') AS ps 
  INNER JOIN sys.indexes i 
  ON ps.object_id = i.object_id AND ps.index_id = i.index_id 
  INNER JOIN sys.tables t 
  ON i.object_id = t.object_id 
  WHERE i.type_desc IN ('CLUSTERED', 'NONCLUSTERED') AND ps.database_id = DB_ID() 
  ORDER BY ps.avg_fragmentation_in_percent DESC;
