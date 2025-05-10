INSERT INTO Department (id, name, code) VALUES (1, 'Computer Science', 'CS');

INSERT INTO Department (id, name, code) VALUES (1, 'Computer Science', 'CSE')
ON CONFLICT (id) DO UPDATE SET name = 'Computer Science', code = 'CSE';

SELECT * from Department;