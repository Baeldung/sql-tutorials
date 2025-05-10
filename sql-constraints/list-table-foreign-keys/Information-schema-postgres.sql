SELECT 
    tc.table_name AS foreign_key_table,
    kcu.column_name AS foreign_key_column,
    ccu.table_name AS referenced_table,
    ccu.column_name AS referenced_column
FROM 
    information_schema.table_constraints AS tc
JOIN 
    information_schema.key_column_usage AS kcu
    ON tc.constraint_name = kcu.constraint_name
JOIN 
    information_schema.constraint_column_usage AS ccu
    ON kcu.constraint_name = ccu.constraint_name
WHERE 
    tc.constraint_type = 'FOREIGN KEY'
    AND tc.table_name = 'registration';


SELECT 
    tc.table_name AS foreign_key_table,
    kcu.column_name AS foreign_key_column,
    ccu.table_name AS referenced_table,
    ccu.column_name AS referenced_column
FROM 
    information_schema.table_constraints AS tc
JOIN 
    information_schema.key_column_usage AS kcu
    ON tc.constraint_name = kcu.constraint_name
JOIN 
    information_schema.constraint_column_usage AS ccu
    ON kcu.constraint_name = ccu.constraint_name
WHERE 
    tc.constraint_type = 'FOREIGN KEY'
    AND tc.table_name IN ('registration', 'exam');
