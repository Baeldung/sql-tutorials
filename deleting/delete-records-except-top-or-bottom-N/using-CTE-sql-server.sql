WITH TopStudents AS (
    SELECT id
    FROM Student
    ORDER BY id
    OFFSET 0 ROWS
    FETCH NEXT 10 ROWS ONLY
)
DELETE FROM Student
WHERE id NOT IN (SELECT id FROM TopStudents);

WITH BottomStudents AS (
    SELECT id
    FROM Student
    ORDER BY id DESC
    OFFSET 0 ROWS
    FETCH NEXT 5 ROWS ONLY
)
DELETE FROM Student
WHERE id NOT IN (SELECT id FROM BottomStudents);
