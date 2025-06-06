SET GLOBAL local_infile=1;

CREATE TABLE employees (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    age INTEGER,
    department VARCHAR(30),
    hire_date DATE
);

LOAD DATA LOCAL INFILE '/home/kali/import-csv/employee_data.csv'
INTO TABLE employees
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(id, name, age, department, hire_date);

SELECT * FROM employees;