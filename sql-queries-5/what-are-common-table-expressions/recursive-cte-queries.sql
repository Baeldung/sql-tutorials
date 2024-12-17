-- recursive CTE query
WITH RECURSIVE StudentCourse AS ( 
    SELECT student_id, course_id, 1 AS level 
    FROM Exam 
    WHERE course_id = 'CS111' 
    UNION ALL 
        SELECT e.student_id, e.course_id, sh.level + 1 
        FROM Exam AS e 
        INNER JOIN StudentCourse AS sc 
            ON e.student_id = sh.course_id 
    ) 
    SELECT student_id, course_id, level 
    FROM StudentCourse;