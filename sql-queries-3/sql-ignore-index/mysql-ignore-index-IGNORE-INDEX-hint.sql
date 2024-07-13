EXPLAIN ANALYZE 
SELECT name, type, department_id 
FROM Program IGNORE INDEX(program_department_id_fkey) 
WHERE department_id=1 
GROUP BY name, type, department_id 
ORDER BY department_id;
