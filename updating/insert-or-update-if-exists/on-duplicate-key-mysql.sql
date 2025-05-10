INSERT INTO Department (id, name, code) VALUES (1, 'Computer Science', 'CS');

INSERT INTO Department (id, name, code) VALUES (1, 'Computer Science', 'CSE')
ON DUPLICATE KEY UPDATE name = 'Computer Science', code = 'CSE';

SELECT * from Department;