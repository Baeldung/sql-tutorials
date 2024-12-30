SELECT 
department_id AS Department, 
JSON_OBJECT(id,GROUP_CONCAT(name)) AS Courses 
FROM course 
GROUP BY department_id;
