SELECT name, COALESCE(lab_hours, 0) FROM Student;

SELECT name,
       CASE WHEN lab_hours IS NULL THEN 0 ELSE lab_hours END 
FROM Student;