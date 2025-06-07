WITH NumberedStudents AS (
    SELECT id, ROW_NUMBER() OVER (ORDER BY id) AS row_num
    FROM Student
)
DELETE FROM Student
WHERE id NOT IN (
    SELECT id
    FROM NumberedStudents
    WHERE row_num > 10
);

WITH NumberedStudents AS (
    SELECT id, ROW_NUMBER() OVER (ORDER BY id DESC) AS row_num
    FROM Student
)
DELETE FROM Student
WHERE id NOT IN (
    SELECT id
    FROM NumberedStudents
    WHERE row_num > 5
);