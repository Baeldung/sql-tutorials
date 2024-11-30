SELECT 
    t.table_name,
    ROUND(((data_length + index_length) / 1024 / 1024), 2) AS size_mb,
    table_rows
FROM information_schema.tables t
WHERE table_schema = 'University'
    AND table_type = 'BASE TABLE'
ORDER BY size_mb DESC;
