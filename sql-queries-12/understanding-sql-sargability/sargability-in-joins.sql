-- non-sargable JOINs 
EXPLAIN 
SELECT c.name, e.semester, e.grade
FROM Course c
JOIN Exam e
        ON LOWER(c.id) = LOWER(e.course_id)
WHERE c.credits > 4;


-- Sargable 
EXPLAIN 
SELECT c.name, e.semester, e.grade 
FROM Course c 
JOIN Exam e 
         ON c.id = e.course_id WHERE c.credits > 4;