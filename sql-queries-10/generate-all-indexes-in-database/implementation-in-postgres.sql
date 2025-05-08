SELECT 
    schemaname, 
    tablename, 
    indexname, 
    indexdef
FROM 
    pg_indexes
WHERE 
    schemaname = 'public'
ORDER BY 
    tablename, 
    indexname;



SELECT 
    t.relname AS table_name,
    i.relname AS index_name,
    a.attname AS column_name
FROM 
    pg_class t
JOIN 
    pg_index ix ON t.oid = ix.indrelid
JOIN 
    pg_class i ON i.oid = ix.indexrelid
JOIN 
    pg_attribute a ON a.attrelid = t.oid AND a.attnum = ANY(ix.indkey)
WHERE 
    t.relkind = 'r'
    AND t.relnamespace = 'public'::regnamespace
ORDER BY 
    t.relname, 
    i.relname;