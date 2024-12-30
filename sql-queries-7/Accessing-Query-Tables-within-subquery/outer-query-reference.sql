SELECT s.name, s.gpa
FROM Student s
WHERE s.gpa > (
    SELECT AVG(s2.gpa)
    FROM Student s2
    WHERE s2.enrollment_date = s.enrollment_date
);
