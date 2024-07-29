-- Acquire a read lock on the Course table
LOCK TABLE Course READ;

-- This SELECT operation is allowed
SELECT * FROM Course WHERE department_id = 1;

-- But an UPDATE operation would be blocked
-- UPDATE Course SET credits = 4 WHERE id = 'CS101';

-- Release the lock
UNLOCK TABLES;