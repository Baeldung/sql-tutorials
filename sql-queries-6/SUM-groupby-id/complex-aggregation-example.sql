SELECT s.id, s.name, SUM(c.credits) AS student_credits
FROM Student s
LEFT JOIN Registration r ON s.id = r.student_id
LEFT JOIN Course c ON r.course_id = c.id
GROUP BY s.id, s.name;
