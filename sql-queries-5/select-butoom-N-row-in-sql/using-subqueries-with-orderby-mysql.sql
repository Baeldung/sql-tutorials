SELECT id, name, gpa
FROM (
    SELECT id, name, gpa
    FROM Student
    ORDER BY gpa ASC
    LIMIT 5
) AS BottomStudents
ORDER BY gpa ASC;
