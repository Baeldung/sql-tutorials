EXPLAIN 
ANALYZE 
SELECT name, type, department_id 
FROM Program 
WHERE department_id=1
GROUP BY name, type, department_id 
ORDER BY department_id;
