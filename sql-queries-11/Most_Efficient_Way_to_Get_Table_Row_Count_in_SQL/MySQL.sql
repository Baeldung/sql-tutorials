-- Counting rows for course table
SHOW TABLE STATUS LIKE 'course';

-- Alternative appraoch using information schema 

SELECT table_rows 
  FROM information_schema.tables 
  WHERE table_schema = 'university' 
  AND table_name = 'course';
