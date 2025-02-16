CREATE TABLE UserGrades (
    Name VARCHAR(100),
    Grade VARCHAR(50)
);

INSERT INTO UserGrades VALUES
('John Doe', 'A'),
('Jane Smith', 'B'),
('Alice Brown', 'A'),
('Bob Wilson', 'C'),
('Charlie Davis', 'B'),
('Diana Evans', 'B'),
('Eva Green', 'C'),
('Frank White', 'Pass'),
('Grace Lee', 'None'),
('Henry Moore', 'Fail');

CREATE TABLE Result (
    obtained FLOAT,
    total FLOAT
);

INSERT INTO Result VALUES
    (15, 50),
    (10, 50),
    (20, 50),
    (40, 50),
    (25, 50);

