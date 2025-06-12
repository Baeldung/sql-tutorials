SELECT student_id, course_id, semester, year, ROW_NUMBER() OVER (PARTITION BY student_id ORDER BY year, semester, course_id) AS RowNum FROM Registration;
