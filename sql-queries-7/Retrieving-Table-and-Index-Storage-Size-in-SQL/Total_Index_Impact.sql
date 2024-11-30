SELECT 
    table_name,
    ROUND(data_length / 1024 / 1024, 2) AS data_size_mb,
    ROUND(index_length / 1024 / 1024, 2) AS index_size_mb,
    ROUND(index_length / NULLIF(data_length, 0) * 100, 2) AS index_ratio_percent
FROM information_schema.tables
WHERE table_schema = 'University'
    AND table_type = 'BASE TABLE'
    AND (data_length > 0 OR index_length > 0)
ORDER BY index_ratio_percent DESC;