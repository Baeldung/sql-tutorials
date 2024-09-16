SELECT s.name,
       e.exam_date AS last_exam_date,
       c.name AS last_exam_course,
       (SELECT COUNT(*) FROM Exam WHERE student_id = s.id) AS total_exams
FROM Student s
LEFT JOIN Exam e ON s.id = e.student_id
LEFT JOIN Course c ON e.course_id = c.id
WHERE e.exam_date = (
    SELECT exam_date
    FROM Exam
    WHERE student_id = s.id
    AND exam_date >= ALL (SELECT exam_date FROM Exam WHERE student_id = s.id)
);