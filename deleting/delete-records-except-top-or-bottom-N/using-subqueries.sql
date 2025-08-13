DELETE FROM Course
WHERE id NOT IN (
    SELECT id
    FROM Course
    ORDER BY id
    LIMIT 10
);

DELETE FROM Course
WHERE id NOT IN (
    SELECT id
    FROM Course
    ORDER BY id DESC
    LIMIT 5
);