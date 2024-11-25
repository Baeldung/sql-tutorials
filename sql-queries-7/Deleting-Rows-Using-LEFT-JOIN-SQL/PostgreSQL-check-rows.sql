University=# SELECT s.id 
FROM student s 
LEFT JOIN registration r ON s.id = r.student_id 
WHERE r.student_id IS NULL;