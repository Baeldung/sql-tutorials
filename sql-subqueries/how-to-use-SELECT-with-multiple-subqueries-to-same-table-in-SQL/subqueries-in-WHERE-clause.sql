SELECT s.name
FROM Student s
WHERE 5 < (
    SELECT COUNT(*)
    FROM Exam e
    WHERE e.student_id = s.id
);