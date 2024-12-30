SELECT indexname, indexdef 
FROM pg_indexes 
WHERE tablename = 'student';