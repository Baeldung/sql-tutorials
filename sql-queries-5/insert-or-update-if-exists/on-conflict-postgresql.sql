CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50)
);

INSERT INTO employees (id, name, department) VALUES (1, 'Alice', 'Finance');

INSERT INTO employees (id, name, department) VALUES (1, 'Alice', 'Accounting')
ON CONFLICT (id) DO UPDATE SET name = 'Alice', department = 'Accounting';

SELECT * from employees;