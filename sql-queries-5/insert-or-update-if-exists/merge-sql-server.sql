CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50)
);


INSERT INTO employees (id, name, department) VALUES (1, 'Alice', 'Finance');

MERGE INTO employees AS target
USING (SELECT 1 AS id, 'Alice' AS name, 'Accounting' AS department) AS source
ON target.id = source.id
WHEN MATCHED THEN
    UPDATE SET name = source.name, department = source.department
WHEN NOT MATCHED THEN
    INSERT (id, name, department) VALUES (source.id, source.name, source.department);


SELECT * from employees;