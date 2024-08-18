SELECT
    table_schema,
    table_name,
    pg_size_pretty(pg_total_relation_size(table_schema || '.' || table_name)) AS table_size
FROM
    information_schema.tables
WHERE
    table_schema NOT IN ('information_schema', 'pg_catalog')
ORDER BY
    pg_total_relation_size(table_schema || '.' || table_name) DESC;
