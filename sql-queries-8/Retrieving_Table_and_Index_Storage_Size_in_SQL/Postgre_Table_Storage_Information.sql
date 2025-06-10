SELECT 
    relname AS table_name,
    pg_size_pretty(pg_relation_size(c.oid)) AS table_size,
    pg_size_pretty(pg_total_relation_size(c.oid)) AS total_size,
    reltuples::bigint AS row_estimate
FROM pg_class c
JOIN pg_namespace n 
    ON n.oid = c.relnamespace
WHERE 
    nspname = 'public'
    AND relkind = 'r'
ORDER BY 
    pg_total_relation_size(c.oid) DESC;