-- Change schema to University
USE University;

-- LIKE
SELECT * FROM Student 
WHERE name LIKE LOWER ('R%');

SELECT * FROM Student 
WHERE name LIKE BINARY 'r%';

SELECT * FROM Student 
WHERE name LIKE '_________';

-- REGEXP_LIKE
SELECT * FROM Student 
WHERE REGEXP_LIKE(name, '^R');

SELECT * FROM Student 
WHERE REGEXP_LIKE(name, '^r', 'c');

SELECT Department.name, Course.name 
FROM Department LEFT JOIN Course ON Department.id = Course.department_id 
WHERE REGEXP_LIKE(Course.name, 'to') 
AND Department.code="CS";

-- LOCATE
SELECT * FROM Student 
WHERE LOCATE('R', name, 1)=1;

SELECT * FROM Department 
WHERE LOCATE('a', name) < 0 
AND LOCATE('a', name) < 0 
AND LOCATE('e', name) < 0 
AND LOCATE('i', name) < 0 
AND LOCATE('o', name) < 0 
AND LOCATE('u', name) < 0;
