SELECT 
    t.name AS table_name,
    ind.name AS index_name,
    col.name AS column_name,
    ind.is_unique,
    ind.type_desc AS index_type
FROM 
    sys.indexes ind
INNER JOIN 
    sys.index_columns ic ON ind.object_id = ic.object_id AND ind.index_id = ic.index_id
INNER JOIN 
    sys.columns col ON ic.object_id = col.object_id AND ic.column_id = col.column_id
INNER JOIN 
    sys.tables t ON ind.object_id = t.object_id
WHERE 
    t.is_ms_shipped = 0
ORDER BY 
    t.name, ind.name, ic.key_ordinal;