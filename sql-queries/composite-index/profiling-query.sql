-- Turn on profiling
SET profiling = 1;

-- Query without composite index
SELECT * FROM Student 
WHERE enrollment_date = '2020-01-15' AND gpa > 4.0;

-- Now, let's create the composite index
CREATE INDEX idx_enrollment_gpa ON Student (enrollment_date, gpa);

-- Query with composite index
SELECT * FROM Student 
WHERE enrollment_date = '2020-01-15' AND gpa > 4.0;

-- Show profile results
SHOW PROFILES;

-- Turn off profiling
SET profiling = 0;