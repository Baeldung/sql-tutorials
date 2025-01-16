SELECT name, COALESCE(gpa, 0) FROM Student WHERE graduation_date = '2025-06-15';

SELECT name,
       CASE WHEN gpa IS NULL THEN 0 ELSE gpa END 
FROM Student WHERE graduation_date = '2025-06-15';