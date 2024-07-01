SELECT c.relname AS table_name 
FROM pg_catalog.pg_attribute a 
JOIN pg_catalog.pg_class c ON a.attrelid = c.oid 
WHERE a.attname = 'department_id';

SELECT c.relname AS table_name 
FROM pg_catalog.pg_attribute a 
JOIN pg_catalog.pg_class c ON a.attrelid = c.oid 
WHERE a.attname = 'department_id' 
AND c.relkind = 'r';