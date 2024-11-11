CREATE TABLE Employees ( 
	id SERIAL PRIMARY KEY, 
	name VARCHAR(100), 
	department VARCHAR(50), 
	salary DECIMAL(10, 2)
);

INSERT INTO employees (name, department, salary) VALUES
('Alice', 'HR', 60000),
('Bob', 'HR', 80000),
('Charlie', 'IT', 90000),
('Dave', 'IT', 85000),
('Eve', 'Finance', 75000),
('Frank', 'Finance', 70000),
('Sam', 'IT', 98000),
('Tom', 'IT', 92000),
('Ursula', 'Finance', 83000),
('Vince', 'Finance', 79000),
('Wade', 'HR', 70000),
('Xena', 'HR', 88000);
