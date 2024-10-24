SELECT s.name, COUNT(r.id) AS course_count
FROM Student s
LEFT JOIN Registration r ON s.id = r.student_id
GROUP BY s.id, s.name;