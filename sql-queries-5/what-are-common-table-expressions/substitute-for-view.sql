-- USING CTE as a substitute for view
WITH AverageGrades AS ( 
    SELECT e.student_id, s.name AS student_name, 
        AVG(CASE 
                WHEN e.grade = 'A+' THEN 5 
                WHEN e.grade = 'A' THEN 4 
                WHEN e.grade = 'B' THEN 3 
                WHEN e.grade = 'C' THEN 2 
                WHEN e.grade = 'D' THEN 1 
                ELSE 0 
            END
            ) AS average_grade_points 
    FROM Exam AS e 
    JOIN Student AS s 
        ON e.student_id = s.id 
    GROUP BY e.student_id 
    ) 
    SELECT student_name, average_grade_points 
    FROM AverageGrades 
    LIMIT 5;