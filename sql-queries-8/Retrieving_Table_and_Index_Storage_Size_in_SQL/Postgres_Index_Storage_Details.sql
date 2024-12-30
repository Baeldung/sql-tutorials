SELECT 
    schemaname,
    tablename,
    indexname,
    pg_size_pretty(pg_relation_size(i.indexrelid)) AS index_size,
    indexdef
FROM pg_indexes i
JOIN pg_stat_user_indexes ui 
    ON i.indexname = ui.indexrelname
WHERE 
    schemaname = 'public'
ORDER BY 
    pg_relation_size(i.indexrelid) DESC;