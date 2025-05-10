CREATE TABLE employees (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    age INTEGER,
    department VARCHAR(30),
    hire_date DATE
);

\copy employees(id, name, age, department, hire_date)
 FROM '/home/kali/import-csv/employee_data.csv'
 DELIMITER ','
 CSV HEADER;

 SELECT * FROM employees;