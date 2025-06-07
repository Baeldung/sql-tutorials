SELECT 
    conname AS constraint_name,
    conrelid::regclass AS foreign_key_table,
    a.attname AS foreign_key_column,
    confrelid::regclass AS referenced_table,
    af.attname AS referenced_column
FROM 
    pg_constraint AS c
JOIN 
    pg_attribute AS a
    ON a.attnum = ANY(c.conkey)
    AND a.attrelid = c.conrelid
JOIN 
    pg_attribute AS af
    ON af.attnum = ANY(c.confkey)
    AND af.attrelid = c.confrelid
WHERE 
    c.contype = 'f'
    AND c.conrelid = 'program'::regclass;

SELECT 
    conname AS constraint_name,
    conrelid::regclass AS foreign_key_table,
    a.attname AS foreign_key_column,
    confrelid::regclass AS referenced_table,
    af.attname AS referenced_column
FROM 
    pg_constraint AS c
JOIN 
    pg_attribute AS a
    ON a.attnum = ANY(c.conkey)
    AND a.attrelid = c.conrelid
JOIN 
    pg_attribute AS af
    ON af.attnum = ANY(c.confkey)
    AND af.attrelid = c.confrelid
WHERE 
    c.contype = 'f' 
    AND conrelid IN ('faculty'::regclass, 'program'::regclass);
