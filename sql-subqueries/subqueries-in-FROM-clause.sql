SELECT s.name, latest_exam.course_name
FROM Student s
JOIN (
    SELECT e.student_id, c.name AS course_name
    FROM Exam e
    JOIN Course c ON e.course_id = c.id
    WHERE e.exam_date >= ALL (SELECT exam_date FROM Exam WHERE student_id = e.student_id)
) latest_exam ON s.id = latest_exam.student_id;