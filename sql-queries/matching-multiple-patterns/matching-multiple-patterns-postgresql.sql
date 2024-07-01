-- Using LIKE With ARRAY
SELECT name, textbook
FROM Course
WHERE name LIKE ANY (ARRAY ['Introduction to%', 'Advanced%']);

-- Using the SIMILAR operator
SELECT name, textbook
FROM Course
WHERE name SIMILAR TO 'Introduction to%|Advanced%';