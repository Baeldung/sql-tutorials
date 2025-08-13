SELECT 
    conname AS constraint_name, 
    conrelid::regclass AS table_name, 
    a.attname AS column_name
FROM 
    pg_constraint AS c
JOIN 
    pg_attribute AS a 
ON 
    a.attnum = ANY(c.conkey) 
    AND a.attrelid = c.conrelid
WHERE 
    c.contype = 'p' 
    AND c.conrelid = 'Student'::regclass;
