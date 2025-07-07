-- Analyzing the Department table 

ANALYZE public.Department;


-- Counting rows for Department table using pg_class

SELECT reltuples::BIGINT AS estimate 
FROM pg_class 
WHERE oid = 'public.Department'::regclass;
