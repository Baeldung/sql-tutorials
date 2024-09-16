SELECT s.name,
       (SELECT e.exam_date
        FROM Exam e
        WHERE e.student_id = s.id 
        AND e.exam_date >= ALL (SELECT exam_date FROM Exam WHERE student_id = s.id)) AS last_exam_date
FROM Student s;