SELECT
    schemaname AS schema_name,
    tablename AS table_name,
    pg_size_pretty(pg_table_size(schemaname || '.' || tablename)) AS table_size
FROM
    pg_tables
WHERE
    schemaname NOT IN ('information_schema', 'pg_catalog')
ORDER BY
    pg_table_size(schemaname || '.' || tablename) DESC;
