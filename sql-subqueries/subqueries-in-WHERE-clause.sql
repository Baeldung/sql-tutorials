SELECT s.name
FROM Student s
WHERE EXISTS (
    SELECT 1
    FROM Exam e
    WHERE e.student_id = s.id 
    AND e.exam_date >= ALL (SELECT exam_date FROM Exam WHERE student_id = s.id)
);