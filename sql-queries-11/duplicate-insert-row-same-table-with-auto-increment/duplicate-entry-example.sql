INSERT INTO department_copy (id,name,code) 
SELECT 1,name,code 
FROM department_copy 
WHERE id = 1;
