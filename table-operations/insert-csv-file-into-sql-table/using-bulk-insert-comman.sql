CREATE TABLE employees (
    id INT PRIMARY KEY,
    name NVARCHAR(50),
    age INT,
    department NVARCHAR(30),
    hire_date DATE
);

BULK INSERT employees
FROM '/home/kali/import-csv/employee_data.csv'
WITH (
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2
);