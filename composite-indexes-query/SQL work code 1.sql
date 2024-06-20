CREATE DATABASE Employee_database;

CREATE TABLE employee(
emp_id INT,
first_name CHAR(100),
last_name CHAR(100),
position CHAR(100),
salary DECIMAL(10, 2)
);

SELECT * FROM employee;

CREATE INDEX idx_first_last_name ON employee (first_name, last_name);

INSERT INTO employee values(1, 'Daniella', 'Iva', 'Manager', 100000), (2, 'Iyke', 'Jasmine', 'Technician', 60000);

SELECT * FROM employee WHERE first_name = 'Daniella' AND last_name = 'Iva';