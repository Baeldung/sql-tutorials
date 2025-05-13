-- specify the database
USE University;

-- find the engine of University.Student
-- using the information_schema.tables
SELECT engine
FROM information_schema.tables
WHERE table_schema = 'University'
  AND table_name = 'Student';

-- find the engine of all the tables in University
-- using the information_schema.tables
SELECT table_name, engine
FROM information_schema.tables
WHERE table_schema = 'University'
  AND table_type = 'BASE TABLE'
  AND table_name = 'Student';

-- find the engine of University.Student
-- using the information_schema.tables
SHOW TABLE STATUS 
FROM University
WHERE name = 'Student';
