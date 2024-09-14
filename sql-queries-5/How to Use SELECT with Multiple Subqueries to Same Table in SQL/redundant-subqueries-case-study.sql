SELECT s.*,
       (SELECT TOP 1 c.name 
        FROM Exam e
        JOIN Course c ON e.course_id = c.id
        WHERE e.student_id = s.id 
        ORDER BY e.exam_date DESC) AS last_exam_course,
       (SELECT TOP 1 e.grade
        FROM Exam e
        WHERE e.student_id = s.id 
        ORDER BY e.exam_date DESC) AS last_exam_grade,
       (SELECT TOP 1 e.exam_date
        FROM Exam e
        WHERE e.student_id = s.id 
        ORDER BY e.exam_date DESC) AS last_exam_date
FROM Student s;