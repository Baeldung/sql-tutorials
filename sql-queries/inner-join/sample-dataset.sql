CREATE TABLE Employees (
    employee_id INT PRIMARY KEY, 
    name VARCHAR(50), 
    department_id INT 
); 
    
CREATE TABLE Departments (
    department_id INT PRIMARY KEY, 
    department_name VARCHAR(50) 
); 
    
CREATE TABLE Salaries (
    employee_id INT, 
    salary DECIMAL(10, 2), 
    PRIMARY KEY (employee_id) 
);

INSERT INTO Employees (employee_id, name, department_id) VALUES
  (1, 'Alice', 101),
  (2, 'Bob', 102),
  (3, 'Charlie', 103),
  (4, 'David', 101),
  (5, 'Eve', 102);

INSERT INTO Departments (department_id, department_name) VALUES
  (101, 'Human Resources'),
  (102, 'Finance'),
  (103, 'Engineering');

INSERT INTO Salaries (employee_id, salary) VALUES
  (1, 60000.00),
  (2, 75000.00),
  (3, 80000.00),
  (4, 62000.00),
  (5, 70000.00);
