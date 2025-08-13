SELECT id, name, gpa, RANK() OVER (ORDER BY gpa DESC) AS Rank FROM Student;
