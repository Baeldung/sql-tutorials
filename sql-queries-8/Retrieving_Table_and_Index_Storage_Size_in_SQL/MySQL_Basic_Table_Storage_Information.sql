SELECT 
    table_name,
    ROUND((data_length / 1024 / 1024), 2) AS data_size_mb,
    ROUND((index_length / 1024 / 1024), 2) AS index_size_mb,
    table_rows,
    ROUND(((data_length + index_length) / 1024 / 1024), 2) AS total_size_mb
FROM information_schema.tables
WHERE 
    table_schema = 'University'
    AND table_type = 'BASE TABLE'
ORDER BY 
    total_size_mb DESC;
