-- Acquire an exclusive lock on the Student table
LOCK TABLES Student WRITE;

-- Perform operations
UPDATE Student SET gpa = 4.0 WHERE id = 1001;
INSERT INTO Student (id, name, national_id, enrollment_date) 
VALUES (2022, 'Jane Doe', 9876543210, '2023-09-01');

-- Release the lock
UNLOCK TABLES;