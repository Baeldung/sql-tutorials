CREATE INDEX idx_name_birthdate ON Student (name, birth_date);
SELECT * FROM Student 
WHERE name = 'John Liu' AND birth_date = '2001-04-05';
