-- Query to calculate the size of each database in MySQL (in megabytes)
SELECT table_schema 
AS 'Database',
ROUND(SUM(data_length + index_length) / 1024 / 1024, 6) AS 'Size in MB'
FROM information_schema.TABLES
GROUP BY table_schema;

