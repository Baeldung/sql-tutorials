CREATE TABLE Record_Mod (
    id BIGINT PRIMARY KEY,
    name VARCHAR(255),
    national_id VARCHAR(20),
    birth_date DATE
);

CREATE TABLE Student_Mod (
    id BIGINT PRIMARY KEY,
    enrollment_date DATE,
    graduation_date DATE,
    gpa DECIMAL(3, 2),
    FOREIGN KEY (id) REFERENCES person(id)
);

CREATE TABLE Faculty_Mod (
    id BIGINT PRIMARY KEY,
    position VARCHAR(50),
    start_date DATE,
    end_date DATE,
    FOREIGN KEY (id) REFERENCES person(id)
);

INSERT INTO Record_Mod (id, name, national_id, birth_date)
VALUES
(1001, 'John Liu', '123345566', '2001-04-05'),
(1003, 'Rita Ora', '132345166', '2001-01-14'),
(1, 'Anubha Gupta', '1018901231', NULL),
(2, 'Peter Pan', '2130989011', NULL);

INSERT INTO Student_Mod (id, enrollment_date, graduation_date, gpa)
VALUES
(1001, '2020-01-15', '2024-06-15', 4.0),
(1003, '2020-01-15', '2024-06-15', 4.2);

INSERT INTO Faculty_Mod (id, position, start_date, end_date)
VALUES
(1, 'Professor', '2010-01-11', '2027-03-11'),
(2, 'Professor', '2007-05-11', NULL);


-- Querying the data acroos hierarchy with multiple joins
SELECT p.id, p.name, p.national_id, p.birth_date,
       s.enrollment_date, s.graduation_date, s.gpa,
       f.position, f.start_date, f.end_date
FROM Record_Mod p
LEFT JOIN Student_Mod s ON p.id = s.id
LEFT JOIN Faculty_Mod f ON p.id = f.id;