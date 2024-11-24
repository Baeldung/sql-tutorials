CREATE TABLE department_copy 
TABLE department;

DELETE 
FROM department_copy;

ALTER TABLE department_copy 
MODIFY COLUMN id INT UNIQUE NULL AUTO_INCREMENT;

INSERT INTO department_copy(name,code) 
VALUES 
("Computer Science","CS"),
("Electronics and Communications","EC"),
("Mechanical Engineering","ME"),
("Civil Engineering","CE"),
("Mathematics","MA");

SELECT * from department_copy;
