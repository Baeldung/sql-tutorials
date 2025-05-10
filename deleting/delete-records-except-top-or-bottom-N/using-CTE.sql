WITH TopStudents AS (
    SELECT id
    FROM Student
    ORDER BY id
    LIMIT 5
)
DELETE FROM Student
WHERE id NOT IN (SELECT id FROM TopStudents);

SELECT * FROM Student;

WITH BottomStudents AS (
    SELECT id
    FROM Student
    ORDER BY id DESC
    LIMIT 5
)
DELETE FROM Student
WHERE id NOT IN (SELECT id FROM BottomStudents);

SELECT * FROM Student;