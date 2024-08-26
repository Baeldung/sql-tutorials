-- Creating Ventures table for as test table
CREATE TABLE Ventures (
    id INT PRIMARY KEY, 
    employee_name VARCHAR(50), 
    job_title VARCHAR(50) 
); 

-- Inserting the data into the table created above
INSERT INTO Ventures (id, employee_name, job_title) 
VALUES 
(1, '     John Doe    ', '    Software Engineer    '), 
(2, '   Jane Smith', 'Project Manager    '), 
(3, ' Robert      ', '    QA Tester'), 
(4, 'Alice Johnson    ', '    Data Analyst  '), 
(5, '    Michael Brown', '    DevOps Engineer');

-- Viewing the table data 
SELECT * FROM Ventures;