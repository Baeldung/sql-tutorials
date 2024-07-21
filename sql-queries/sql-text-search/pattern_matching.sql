-- SQL script to create DB, and tables. Then insert data in each table
DROP DATABASE IF EXISTS University;
CREATE DATABASE University DEFAULT CHARACTER SET=utf8; 

-- Change schema to University
USE University;

-- Create Tables

CREATE TABLE Department
(
    id INT PRIMARY KEY NOT Null,
    name VARCHAR (50),
    code VARCHAR (4),
    UNIQUE (id)
);


CREATE TABLE Student
(
    id INT PRIMARY KEY NOT null,
    name VARCHAR (60),
    national_id BIGINT NOT Null, 
    birth_date DATE,
    enrollment_date DATE,
    graduation_date DATE,
    gpa FLOAT,
    UNIQUE (id)
);


CREATE TABLE Course
(
    id VARCHAR (10) PRIMARY KEY NOT Null,
    name VARCHAR(60),
    textbook VARCHAR(100),
    credits INT,
    is_active VARCHAR(10),
    department_id INT,
    CONSTRAINT course_department_id_fkey FOREIGN KEY(department_id) REFERENCES Department(id),
    UNIQUE (id)
);

-- Use Inserts from the Original University scehma inserts

-- LIKE
SELECT * FROM Student 
WHERE name LIKE LOWER ('R%');

SELECT * FROM Student 
WHERE name LIKE BINARY 'r%';

SELECT * FROM Student 
WHERE name LIKE '_________';

-- REGEXP_LIKE
SELECT * FROM Student 
WHERE REGEXP_LIKE(name, '^R');

SELECT * FROM Student 
WHERE REGEXP_LIKE(name, '^r', 'c');

SELECT Department.name, Course.name 
FROM Department LEFT JOIN Course ON Department.id = Course.department_id 
WHERE REGEXP_LIKE(Course.name, 'to') 
AND Department.code="CS";

-- LOCATE
SELECT * FROM Student 
WHERE LOCATE('R', name, 1)=1;

SELECT * FROM Department 
WHERE LOCATE('a', name) < 0 
AND LOCATE('a', name) < 0 
AND LOCATE('e', name) < 0 
AND LOCATE('i', name) < 0 
AND LOCATE('o', name) < 0 
AND LOCATE('u', name) < 0;
