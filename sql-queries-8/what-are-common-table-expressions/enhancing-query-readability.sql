-- Using a CTE to enhance query readability
WITH ActiveCourse AS ( 
    SELECT s.id, s.name AS student_name, 
            c.name AS course_title, 
            SUM(c.credits) AS course_credits 
    FROM Student AS s 
    JOIN Exam AS e 
        ON e.student_id = s.id 
    JOIN course AS c 
        ON c.id = e.course_id 
    WHERE c.is_active = 'Yes' 
    GROUP BY s.id 
    ) 
    
    SELECT * FROM ActiveCourse 
    WHERE course_credits > 70;