CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50)
);

INSERT INTO employees (id, name, department) VALUES (1, 'Alice', 'Finance');

REPLACE INTO employees (id, name, department) VALUES (1, 'Alice', 'Accounting');

SELECT * from employees;