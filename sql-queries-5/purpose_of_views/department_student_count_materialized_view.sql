CREATE MATERIALIZED VIEW department_student_count AS
SELECT d.name AS department_name, COUNT(s.id) AS student_count
FROM Department d
LEFT JOIN Course c ON d.id = c.department_id
LEFT JOIN Registration r ON c.id = r.course_id
LEFT JOIN Student s ON r.student_id = s.id
GROUP BY d.name;