SELECT s.name,
       (SELECT COUNT(*)
        FROM Exam e
        WHERE e.student_id = s.id) AS exam_count
FROM Student s;