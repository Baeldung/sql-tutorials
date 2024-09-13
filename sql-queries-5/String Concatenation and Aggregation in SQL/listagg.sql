USE University; SELECT LISTAGG(name, ', ') WITHIN GROUP (ORDER BY name) AS student_names FROM Student;
