SELECT 
    t.table_name,
    s.index_name,
    COUNT(s.column_name) AS columns_in_index,
    ROUND(t.index_length / 1024, 2) AS index_size_kb
FROM information_schema.tables t
JOIN information_schema.statistics s 
    ON t.table_name = s.table_name 
    AND t.table_schema = s.table_schema
WHERE t.table_schema = 'University'
GROUP BY t.table_name, s.index_name, t.index_length
ORDER BY index_size_kb DESC;