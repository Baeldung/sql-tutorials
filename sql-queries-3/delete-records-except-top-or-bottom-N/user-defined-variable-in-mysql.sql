SET @row_number = 0;

DELETE FROM Student
WHERE id NOT IN (
    SELECT id FROM (
        SELECT id, (@row_number := @row_number + 1) AS row_num
        FROM Student
        ORDER BY id
    ) AS numbered
    WHERE row_num <= 15
);

SET @row_number = 0;

DELETE FROM Student
WHERE id NOT IN (
    SELECT id FROM (
        SELECT id, (@row_number := @row_number + 1) AS row_num
        FROM Student
        ORDER BY id DESC
    ) AS numbered
    WHERE row_num <= 5
);

