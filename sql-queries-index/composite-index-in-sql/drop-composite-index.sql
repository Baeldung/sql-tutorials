--drop the index created
DROP INDEX idx_enrollment_gpa 
ON Student;

--Verify if index is dropped
SHOW INDEX FROM Student;
