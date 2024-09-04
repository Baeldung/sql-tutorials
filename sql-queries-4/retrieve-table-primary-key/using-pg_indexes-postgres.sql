SELECT 
    indexname AS constraint_name, 
    tablename AS table_name, 
    indexdef AS definition 
FROM 
    pg_indexes 
WHERE 
    tablename = 'student' 
    AND indexname = 'student_pkey';
