-- Using CONTAINS
SELECT name, textbook
FROM Course
WHERE CONTAINS (name, '"Introduction to*" OR "Advanced*"');
