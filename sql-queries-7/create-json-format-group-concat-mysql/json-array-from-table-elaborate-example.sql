SELECT 
department_id AS Department, 
JSON_ARRAY(GROUP_CONCAT(name)) AS Courses 
FROM course 
GROUP BY department_id \G
