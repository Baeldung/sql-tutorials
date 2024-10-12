SELECT s.id, s.name, SUM(COALESCE(c.credits, 0)) AS student_credits
FROM Student s
LEFT JOIN Registration r ON s.id = r.student_id
LEFT JOIN Course c ON r.course_id = c.id
GROUP BY s.id, s.name;
