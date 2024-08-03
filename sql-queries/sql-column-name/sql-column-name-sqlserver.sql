SELECT COLUMN_NAME
  FROM INFORMATION_SCHEMA.COLUMNS
  WHERE TABLE_NAME = 'Course' 
  ORDER BY ORDINAL_POSITION;

SELECT c.name AS ColumnName
  FROM sys.columns c INNER JOIN sys.tables t
  ON c.object_id = t.object_id
  WHERE t.name = 'Course'
  ORDER BY c.column_id;
