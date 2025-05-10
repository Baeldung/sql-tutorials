-- update data with case case condition
UPDATE Student 
SET graduation_date = CASE 
    WHEN e.semester = 'FALL' THEN '2024-12-15' 
    WHEN e.semester = 'SPRING' THEN '2024-06-15' 
    ELSE NULL 
    END 
FROM Student AS s 
JOIN Exam AS e ON s.id = e.student_id;


-- display outpt for SPRING semester
SELECT * FROM Student AS s 
JOIN Exam AS e ON e.student_id = s.id 
WHERE e.semester = 'SPRING' 
LIMIT 10;