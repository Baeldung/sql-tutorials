--show index in table
SHOW INDEX FROM Student;

--create index on multiple columns
CREATE INDEX idx_enrollment_gpa 
ON Student (enrollment_date, gpa);
