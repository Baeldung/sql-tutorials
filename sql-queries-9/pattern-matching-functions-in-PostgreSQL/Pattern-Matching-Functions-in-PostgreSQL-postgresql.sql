-- The Like operator

SELECT * 
FROM Student 
WHERE name LIKE 'John%';

SELECT * 
FROM Student 
WHERE name LIKE 'P____p%';

-- The ILike operator

SELECT * 
FROM Student 
WHERE name ILIKE '%rob%';

SELECT * 
FROM Student 
WHERE name ILIKE 's%' AND gpa > 3.5;

-- The similar to operator

SELECT *  
FROM Student  
WHERE name SIMILAR TO '[JRP]%y';

SELECT *  
FROM Student  
WHERE birth_date::TEXT SIMILAR TO '200[0-2]-%';

-- POSIX Regular Expressions

-- The ~ and ~* Operators

SELECT * 
FROM Student 
WHERE name ~ '^R.*a$';

SELECT * 
FROM Student 
WHERE name ~* 'Bert';

-- The !~ and !~* Operators

SELECT * 
FROM Student 
WHERE enrollment_date::TEXT !~ '^2020';

SELECT * 
FROM Student 
WHERE gpa::TEXT !~* '^[4-5]\.';
