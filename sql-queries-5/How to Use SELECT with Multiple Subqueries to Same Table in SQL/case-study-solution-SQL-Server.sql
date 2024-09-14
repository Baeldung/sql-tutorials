SELECT s.*, e.course_name, e.grade, e.exam_date
FROM Student s
OUTER APPLY (
    SELECT TOP 1 c.name AS course_name, e.grade, e.exam_date
    FROM Exam e
    JOIN Course c ON e.course_id = c.id
    WHERE e.student_id = s.id
    ORDER BY e.exam_date DESC
) e;