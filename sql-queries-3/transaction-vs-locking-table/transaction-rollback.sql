START TRANSACTION;
SELECT gpa FROM Student WHERE id = 1001;
UPDATE Student SET gpa = 5.0 WHERE id = 1001;

-- Oh no, we made a mistake! Let's roll back.
ROLLBACK;

-- The student's GPA remains unchanged.
SELECT gpa FROM Student WHERE id = 1001;