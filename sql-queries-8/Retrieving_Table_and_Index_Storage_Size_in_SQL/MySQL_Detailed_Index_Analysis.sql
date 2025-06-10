SELECT 
    t.table_name,
    i.index_name,
    COUNT(i.column_name) AS indexed_columns,
    ROUND(t.index_length / COUNT(DISTINCT i.index_name) / 1024, 2) AS avg_index_size_kb
FROM information_schema.tables t
JOIN information_schema.statistics i 
    ON t.table_name = i.table_name 
    AND t.table_schema = i.table_schema
WHERE 
    t.table_schema = 'University'
GROUP BY 
    t.table_name, 
    i.index_name,
    t.index_length
ORDER BY 
    avg_index_size_kb DESC;