DELETE Student
FROM Student
INNER JOIN Department ON Student.department_id = Department.id
WHERE Department.name = 'Computer Science';