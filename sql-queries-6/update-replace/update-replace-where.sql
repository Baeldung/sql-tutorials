UPDATE Student
SET name = REPLACE(name, 'Liu', 'Smith')
WHERE name LIKE '%Liu%';
