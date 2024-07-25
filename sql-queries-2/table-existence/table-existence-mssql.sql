IF EXISTS ( 
    SELECT 1 FROM information_schema.tables 
    WHERE table_schema='dbo' 
    AND table_name='student' 
) SELECT 1 ELSE SELECT 0;

IF EXISTS ( 
    SELECT 1 FROM sys.tables 
    WHERE SCHEMA_NAME(schema_id) = 'dbo' 
    AND NAME='student' 
) SELECT 1 ELSE SELECT 0;