INSERT INTO department_copy (name, code) 
SELECT name, code 
FROM department_copy 
WHERE id = 1;
