SELECT d.name AS department_name, p.type, COUNT(*) AS program_count 
FROM Program p 
JOIN Department d ON p.department_id = d.id 
GROUP BY d.name, p.type
ORDER BY d.name DESC, program_count DESC;