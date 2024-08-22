SELECT t.role, t.semester, t.year, f.name, c.name, c.credits 
FROM Teaching t 
INNER JOIN Faculty f ON t.faculty_id = f.id 
INNER JOIN Course c ON t.course_id = c.id;

SELECT t.role, t.semester, t.year, f.name, c.name, c.credits 
FROM Course c 
INNER JOIN Teaching t ON c.id = t.course_id 
INNER JOIN Faculty f ON t.faculty_id = f.id;
