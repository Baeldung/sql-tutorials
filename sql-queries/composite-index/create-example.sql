CREATE DATABASE IF NOT EXISTS employee_db;

USE employee_db;

CREATE TABLE
    employees (
        id INT AUTO_INCREMENT PRIMARY KEY,
        last_name VARCHAR(50),
        first_name VARCHAR(50),
        department VARCHAR(50),
        salary DECIMAL(10, 2)
    );

INSERT INTO
    employees (last_name, first_name, department, salary)
VALUES
    ('Smith', 'John', 'Sales', 50000),
    ('Johnson', 'Mary', 'Marketing', 60000),
    ('Williams', 'Robert', 'IT', 75000),
    ('Brown', 'Patricia', 'HR', 55000),
    ('Jones', 'Jennifer', 'Sales', 52000),
    ('Davis', 'Michael', 'IT', 80000),
    ('Miller', 'Linda', 'Marketing', 58000),
    ('Wilson', 'David', 'Sales', 51000),
    ('Moore', 'Elizabeth', 'HR', 54000),
    ('Taylor', 'James', 'IT', 72000);
