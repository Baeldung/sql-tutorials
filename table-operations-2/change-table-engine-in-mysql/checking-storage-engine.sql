SELECT 
    engine
FROM
    information_schema.tables
WHERE
    table_schema = 'University'
    AND table_name = 'Student';

SHOW TABLE STATUS LIKE 'Student';