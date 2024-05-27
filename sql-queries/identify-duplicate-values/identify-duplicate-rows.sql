-- duplicate values in one column
SELECT emp_id, COUNT(emp_id)
FROM employee
GROUP BY emp_id
HAVING COUNT(emp_id) > 1;

-- duplicate values in multiple columns
SELECT emp_id, first_name, last_name, COUNT(*)
FROM employee
GROUP BY emp_id, first_name, last_name
HAVING COUNT(*) > 1;
