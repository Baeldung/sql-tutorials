START TRANSACTION;

UPDATE Student SET gpa = 4.0 WHERE id = 1001;
INSERT INTO Course (id, name, textbook, credits, is_active, department_id) 
VALUES ('CS999', 'Advanced SQL', 'SQL Mastery', 5, 'Yes', 1);

COMMIT;
