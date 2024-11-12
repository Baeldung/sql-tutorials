SELECT s.name,
       s.gpa,
       (SELECT COUNT(*)
        FROM Registration r
        WHERE r.student_id = s.id) AS total_registrations
FROM Student s
WHERE s.gpa >= 4.0;