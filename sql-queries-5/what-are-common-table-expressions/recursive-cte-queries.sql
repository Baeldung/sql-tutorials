-- recursive CTE query
WITH RECURSIVE SemesterProgression AS ( 
    SELECT e.student_id, 
           e.semester AS current_semester, 
           e.exam_date AS current_exam_date, 
           e.course_id, c.name AS course_name, 
           e.grade, e.semester AS semester_chain 
    FROM 
        Exam AS e 
        JOIN Course AS c 
            ON e.course_id = c.id 
        WHERE e.student_id = 1001 AND e.semester = (SELECT MIN(semester) FROM exam WHERE student_id = 1001) 
    
    UNION ALL 
    
    SELECT e.student_id, 
           e.semester AS current_semester, 
           e.exam_date AS current_exam_date, 
           e.course_id, c.name AS course_name, 
           e.grade, 
           CONCAT(sp.semester_chain, ' -> ', e.semester) AS semester_chain 
    FROM Exam AS e 
    JOIN SemesterProgression AS sp 
        ON e.student_id = sp.student_id 
    JOIN Course AS c 
        ON e.course_id = c.id 
    WHERE e.semester > sp.current_semester 
    ) 
    -- query to display the semester progression 
    SELECT student_id, 
            current_semester, 
            current_exam_date, 
            course_name, grade, 
            semester_chain 
    FROM SemesterProgression 
    ORDER BY current_exam_date;