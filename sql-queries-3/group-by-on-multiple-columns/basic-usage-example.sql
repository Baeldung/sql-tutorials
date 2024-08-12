SELECT department_id, COUNT(*) AS program_count 
FROM Program 
GROUP BY department_id;