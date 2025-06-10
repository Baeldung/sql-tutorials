SELECT id, name, gpa, RANK() OVER (ORDER BY gpa DESC) AS Rank, ROW_NUMBER() OVER (ORDER BY gpa DESC) AS RowNum FROM Student;
