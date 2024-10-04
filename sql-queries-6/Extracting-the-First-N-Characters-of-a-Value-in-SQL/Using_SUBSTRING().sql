SELECT
    id,
    name,
    SUBSTRING(name, 1, 3) AS course_code
FROM Course
LIMIT 5;
