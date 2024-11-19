SELECT s.name,
       (SELECT e.exam_date
        FROM Exam e
        WHERE e.student_id = s.id 
        AND e.exam_date >= ALL (SELECT exam_date FROM Exam WHERE student_id = s.id)) AS last_exam_date,
       (SELECT c.name
        FROM Exam e
        JOIN Course c ON e.course_id = c.id
        WHERE e.student_id = s.id 
        AND e.exam_date >= ALL (SELECT exam_date FROM Exam WHERE student_id = s.id)) AS last_exam_course,
       (SELECT COUNT(*)
        FROM Exam e
        WHERE e.student_id = s.id) AS total_exams
FROM Student s;