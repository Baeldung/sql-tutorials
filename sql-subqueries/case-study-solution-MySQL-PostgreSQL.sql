SELECT s.*, e.course_name, e.grade, e.exam_date
FROM Student s
LEFT JOIN (
    SELECT e.student_id, 
           c.name AS course_name, 
           e.grade, 
           e.exam_date,
           ROW_NUMBER() OVER (PARTITION BY e.student_id ORDER BY e.exam_date DESC) AS rn
    FROM Exam e
    JOIN Course c ON e.course_id = c.id
) e ON s.id = e.student_id AND e.rn = 1;
