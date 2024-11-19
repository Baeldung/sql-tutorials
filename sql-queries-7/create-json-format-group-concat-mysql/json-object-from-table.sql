SELECT 
department_id AS Department,
CONCAT('[',
    GROUP_CONCAT(CONCAT('{"id":"', id, '", "name":"',name,'"}')),
']') AS Courses 
FROM course 
GROUP BY department_id \G
