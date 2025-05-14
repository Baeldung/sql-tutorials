CREATE TABLE department_copy 
TABLE department;

DELETE 
FROM department_copy;

ALTER TABLE department_copy 
MODIFY COLUMN id INT UNIQUE NULL AUTO_INCREMENT;
