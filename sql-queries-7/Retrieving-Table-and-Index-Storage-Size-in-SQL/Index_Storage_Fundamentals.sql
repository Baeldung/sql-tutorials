SELECT 
    table_name,
    index_name,
    index_type,
    column_name
FROM information_schema.statistics
WHERE table_schema = 'University' 
    AND table_name = 'Faculty'
ORDER BY index_name;