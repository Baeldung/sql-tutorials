CREATE INDEX idx_name_enrollment_gpa ON Student (name, enrollment_date, gpa);

EXPLAIN
SELECT gpa
FROM Student
WHERE name = 'John Liu'
  AND enrollment_date = '2020-01-15';