CREATE VIEW student_courses AS
SELECT s.name AS student_name, c.name AS course_name, c.credits
FROM Student s
JOIN Registration r ON s.id = r.student_id
JOIN Course c ON r.course_id = c.id;

SELECT * FROM student_courses;