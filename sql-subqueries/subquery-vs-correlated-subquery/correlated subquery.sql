SELECT f.name AS faculty_name, COUNT(t.course_id) AS courses_taught, f.position 
FROM Faculty f 
INNER JOIN Teaching t ON t.faculty_id = f.id 
WHERE year = '2023' AND t.semester = 'SPRING' 
GROUP BY f.id, t.semester, t.year, f.name, f.position 
HAVING COUNT(t.course_id) = 
                            (SELECT MAX(semester_course_count) 
                            FROM 
                                (SELECT COUNT(t2.course_id) AS semester_course_count 
                                FROM Teaching t2 
                                WHERE t2.faculty_id = f.id 
                                GROUP BY t2.semester, t2.year) AS semester_counts);