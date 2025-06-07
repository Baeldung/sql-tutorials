DELETE s
FROM Student AS s
INNER JOIN Department AS d ON s.department_id = d.id
WHERE d.name = 'Computer Science';