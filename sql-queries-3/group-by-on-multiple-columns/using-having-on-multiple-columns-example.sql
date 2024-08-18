SELECT department_id, type, COUNT(*) AS program_count 
FROM Program 
GROUP BY department_id, type 
HAVING COUNT(*) > 1;