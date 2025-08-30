SELECT pg_database.datname AS "Database", size_pretty(pg_database_size(pg_database.datname)) AS "Size" 
  FROM pg_database 
  WHERE datname = 'university';

SELECT datname AS "Database", pg_size_pretty(pg_database_size(datname)) AS "Size" 
  FROM pg_database 
  ORDER BY pg_database_size(datname) DESC;
