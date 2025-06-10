INSERT INTO Departments (id, name, info) VALUES 
(1, 'Computer Science', '{"head": "Dr. Smith", "location": "Building 1", "courses": ["Algorithms", "Data Structures"]}');

INSERT INTO Departments (id, name, info) VALUES 
(2, 'Mathematics', JSON_OBJECT('head', 'Dr. Johnson', 'location', 'Building 2', 'courses', JSON_ARRAY('Calculus', 'Linear Algebra')));

INSERT INTO Departments (id, name, info) VALUES 
(3, 'Physics', JSON_OBJECT('head', 'Dr. Clark', 'location', 'Building 3', 'courses', JSON_ARRAY('Quantum Mechanics', 'Thermodynamics')));

SET @head = 'Dr. Miller'; 
SET @location = 'Building 4'; 
SET @courses = JSON_ARRAY('Classical Mechanics', 'Electromagnetism'); 
INSERT INTO Departments (id, name, info) VALUES 
(4, 'Engineering', JSON_OBJECT('head', @head, 'location', @location, 'courses', @courses));