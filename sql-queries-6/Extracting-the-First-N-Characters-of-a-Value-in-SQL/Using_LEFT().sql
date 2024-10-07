SELECT id,
       LEFT(textbook, 10) AS textbook_start
FROM Course
WHERE textbook IS NOT NULL
LIMIT 5;
