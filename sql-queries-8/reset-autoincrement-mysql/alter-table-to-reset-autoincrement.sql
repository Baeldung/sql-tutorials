ALTER TABLE department_copy AUTO_INCREMENT = 10;

INSERT INTO department_copy(name,code) 
VALUES 
("Computer Engineering","CE"),
("Electronics","E"),
("Information Sciences","IS");

SELECT * FROM department_copy;
