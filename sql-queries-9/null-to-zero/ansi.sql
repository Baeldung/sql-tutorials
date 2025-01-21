SELECT AVG(COALESCE(lab_hours, 0)) FROM Student;

SELECT AVG(
       CASE WHEN lab_hours IS NULL THEN 0 ELSE lab_hours END )
FROM Student;