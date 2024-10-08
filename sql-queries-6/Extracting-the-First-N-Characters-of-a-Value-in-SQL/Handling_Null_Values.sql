SELECT id,
COALESCE(LEFT(name, 5), 'N/A') AS first_five_chars
FROM Student
LIMIT 5;
