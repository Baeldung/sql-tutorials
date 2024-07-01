-- Using IN
SELECT name, textbook
FROM Course
WHERE name IN ('Introduction to Operating Systems', 'Computer Architecture: Intermediate');


-- Using LIKE

SELECT name, textbook
FROM Course
WHERE name LIKE 'Introduction to%';

-- Combining Multiple LIKE Operators

SELECT name, textbook
FROM Course
WHERE name LIKE 'Introduction to%'
   OR name LIKE 'Advanced%';

-- Using Table of Patterns
SELECT Course.name, Course.textbook
FROM Course JOIN (VALUES ('Introduction to%'), ('Advanced%')) AS Patterns(pattern) ON Course.name LIKE Patterns.pattern;