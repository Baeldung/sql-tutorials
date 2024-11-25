mysql> SELECT * 
FROM Student s 
LEFT JOIN Registration r ON s.id = r.student_id 
WHERE r.student_id IS NULL;