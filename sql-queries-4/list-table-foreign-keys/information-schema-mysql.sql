SELECT 
    table_name AS foreign_key_table,
    column_name AS foreign_key_column,
    referenced_table_name AS referenced_table,
    referenced_column_name AS referenced_column
FROM 
    information_schema.key_column_usage
WHERE 
    constraint_schema = 'University'
    AND table_name = 'Registration'
    AND referenced_table_name IS NOT NULL;
