SELECT 
    kc.name AS constraint_name,
    t.name AS table_name,
    c.name AS column_name
FROM 
    sys.key_constraints AS kc
JOIN 
    sys.index_columns AS ic 
    ON kc.parent_object_id = ic.object_id 
    AND kc.unique_index_id = ic.index_id
JOIN 
    sys.columns AS c 
    ON ic.object_id = c.object_id 
    AND ic.column_id = c.column_id
JOIN 
    sys.tables AS t 
    ON kc.parent_object_id = t.object_id
WHERE 
    kc.type = 'PK' 
    AND t.name = 'Student';
