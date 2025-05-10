CREATE TABLE Student_CTI (
    id BIGINT PRIMARY KEY,
    name VARCHAR(255),
    national_id VARCHAR(20),
    birth_date DATE,
    enrollment_date DATE,
    graduation_date DATE,
    gpa DECIMAL(3, 2)
);

CREATE TABLE Faculty_CTI (
    id BIGINT PRIMARY KEY,
    name VARCHAR(255),
    national_id VARCHAR(20),
    birth_date DATE,
    position VARCHAR(50),
    start_date DATE,
    end_date DATE
);

INSERT INTO Student_CTI (id, name, national_id, birth_date, enrollment_date, graduation_date, gpa)
VALUES
(1001, 'John Liu', '123345566', '2001-04-05', '2020-01-15', '2024-06-15', 4.0),
(1003, 'Rita Ora', '132345166', '2001-01-14', '2020-01-15', '2024-06-15', 4.2);

INSERT INTO Faculty_CTI (id, name, national_id, birth_date, position, start_date, end_date)
VALUES
(1, 'Anubha Gupta', '1018901231', NULL, 'Professor', '2010-01-11', '2027-03-11'),
(2, 'Peter Pan', '2130989011', NULL, 'Professor', '2007-05-11', NULL);


-- Querying only for the Student_CTI
SELECT * FROM Student_CTI;


-- Additional Querying for all the requires joining
SELECT id, name, national_id, birth_date, 'Student' AS type
FROM Student_CTI
UNION ALL
SELECT id, name, national_id, birth_date, 'Faculty' AS type
FROM Faculty_CTI;
