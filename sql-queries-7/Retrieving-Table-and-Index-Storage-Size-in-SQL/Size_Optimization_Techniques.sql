SELECT 
    t.table_name,
    ROUND(t.data_length / 1024 / 1024, 2) AS data_size_mb,
    ROUND(t.index_length / 1024 / 1024, 2) AS index_size_mb,
    t.table_rows,
    COUNT(s.index_name) AS index_count
FROM information_schema.tables t
LEFT JOIN information_schema.statistics s 
    ON t.table_name = s.table_name 
    AND t.table_schema = s.table_schema
WHERE t.table_schema = 'University'
    AND t.table_type = 'BASE TABLE'
GROUP BY t.table_name, t.data_length, t.index_length, t.table_rows
HAVING index_count > 3
ORDER BY (t.data_length + t.index_length) DESC;