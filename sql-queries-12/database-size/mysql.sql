SELECT table_schema AS "Database", FLOOR(SUM(data_length + index_length) / 1024 / 1024, 2) AS "Size (MB)" 
  FROM information_schema.tables 
  WHERE table_schema = 'university' 
  GROUP BY table_schema;

SELECT table_schema AS "Database", FLOOR(SUM(data_length + index_length) / 1024 / 1024, 2) AS "Size (MB)" 
  FROM information_schema.tables 
  GROUP BY table_schema 
  ORDER BY SUM(data_length + index_length) DESC;
