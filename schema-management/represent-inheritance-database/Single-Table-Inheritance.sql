CREATE TABLE Record (
    id BIGINT PRIMARY KEY,
    type VARCHAR(20) NOT NULL, -- discriminator column (Student or Faculty)
    name VARCHAR(255),
    national_id VARCHAR(20),
    birth_date DATE,
    enrollment_date DATE,      -- specific to Student
    graduation_date DATE,      -- specific to Student
    gpa DECIMAL(3, 2),         -- specific to Student
    position VARCHAR(50),      -- specific to Faculty
    start_date DATE,           -- specific to Faculty
    end_date DATE              -- specific to Faculty
);



-- Insert Students
INSERT INTO Record (id, type, name, national_id, birth_date, enrollment_date, graduation_date, gpa, position, start_date, end_date)
VALUES 
(1001, 'Student', 'John Liu', '123345566', '2001-04-05', '2020-01-15', '2024-06-15', 4.0, NULL, NULL, NULL),
(1003, 'Student', 'Rita Ora', '132345166', '2001-01-14', '2020-01-15', '2024-06-15', 4.2, NULL, NULL, NULL);

-- Insert Faculty
INSERT INTO Record (id, type, name, national_id, birth_date, enrollment_date, graduation_date, gpa, position, start_date, end_date)
VALUES 
(1, 'Faculty', 'Anubha Gupta', '1018901231', NULL, NULL, NULL, NULL, 'Professor', '2010-01-11', '2027-03-11'),
(2, 'Faculty', 'Peter Pan', '2130989011', NULL, NULL, NULL, NULL, 'Professor', '2007-05-11', NULL);


SELECT * FROM Record;
