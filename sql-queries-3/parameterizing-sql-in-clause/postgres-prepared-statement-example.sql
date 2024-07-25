PREPARE find_programs_by_departments (int[]) AS 
SELECT * 
FROM Program 
WHERE department_id = ANY ($1);