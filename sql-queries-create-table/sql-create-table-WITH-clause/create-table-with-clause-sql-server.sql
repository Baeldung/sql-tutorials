WITH HighGPAStudents
AS
(
	SELECT id, name, gpa, graduation_date
	FROM Student
	WHERE gpa > 3.5
)
SELECT *
INTO StudentsWithHighGPA
FROM HighGPAStudents;

SELECT * FROM StudentsWithHighGPA;