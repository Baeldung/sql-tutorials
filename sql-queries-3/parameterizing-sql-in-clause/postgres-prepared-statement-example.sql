PREPARE find_programs_by_departments (text) AS 
SELECT * 
FROM Program 
WHERE department_id IN (SELECT unnest(string_to_array($1, ','))::int);