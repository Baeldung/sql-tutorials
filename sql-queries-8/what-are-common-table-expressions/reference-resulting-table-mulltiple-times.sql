-- Reference the resulting table multiple times in the same statement
WITH ExamSummary AS ( 
    SELECT e.student_id, 
            s.name AS student_name, 
            COUNT(*) AS total_exams, 
            SUM(CASE 
                    WHEN e.grade = 'A' THEN 1 
                    ELSE 0 
                END
                ) AS a_grades_count, 
            AVG( CASE 
                    WHEN e.grade = 'A' THEN 4 
                    WHEN e.grade = 'B' THEN 3 
                    WHEN e.grade = 'C' THEN 2 
                    WHEN e.grade = 'D' THEN 1 
                    ELSE 0 
                END ) AS average_grade_points 
    FROM Exam AS e 
    JOIN student AS s 
        ON e.student_id = s.id 
    GROUP BY e.student_id, s.name 
    ) 
    SELECT es1.student_name, 
            es1.total_exams, 
            es1.a_grades_count, 
            es1.average_grade_points, 
            CASE 
                WHEN es1.a_grades_count >= 3 THEN 'Top Performer' 
                ELSE 'Regular Performer' 
            END AS performance_category 
    FROM ExamSummary AS es1 
    JOIN ExamSummary es2 
        ON es1.student_id = es2.student_id 
        WHERE es1.total_exams > 3;