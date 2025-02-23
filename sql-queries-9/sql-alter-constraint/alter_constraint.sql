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


INSERT INTO Department (id, name, code) VALUES
  (6, 'Social Sciences and Humanities', 'SSH');


-- Insert in Course for SSH
INSERT INTO Course (id, name, textbook, credits, is_active, department_id) VALUES
  ('SSH111', 'Macroeconomics', 'Macroeconomics by Krugman, P., Wells, R., 2nd edition', 4, 'Yes', '6'),
  ('SSH211', 'Econometrics I', 'Introductory Econometrics: A modern approach by Jeffrey M. Wooldridge (4th edition, Cengage India)', 4, 'Yes', '6'),
  ('SSH411', 'Econometrics II', 'Microeconometrics: Methods and Applications by A. Colin Cameron and Pravin K. Trivedi', 6, 'Yes', '6'),
  ('SSH112', 'Market Design', 'Auction Theory by Vijay Krishna, Academic Press', 4, 'Yes', '6');


SELECT * 
FROM Department 
WHERE id='6';

SELECT * 
FROM COURSE 
WHERE department_id='6';

DELETE 
FROM Department 
WHERE id='6';

SELECT CONSTRAINT_NAME, CONSTRAINT_TYPE 
FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS 
WHERE TABLE_NAME = 'Course';

--Drop the constraint
ALTER TABLE Course
DROP CONSTRAINT course_department_id_fkey;
--Recreate
ALTER TABLE Course
ADD CONSTRAINT course_department_id_fkey
FOREIGN KEY (department_id) REFERENCES Department(id)
ON DELETE CASCADE;

--Insert the rows deleted back to the schema

INSERT INTO Department (id, name, code) VALUES
  (6, 'Social Sciences and Humanities', 'SSH');


-- Insert in Course for SSH
INSERT INTO Course (id, name, textbook, credits, is_active, department_id) VALUES
  ('SSH111', 'Macroeconomics', 'Macroeconomics by Krugman, P., Wells, R., 2nd edition', 4, 'Yes', '6'),
  ('SSH211', 'Econometrics I', 'Introductory Econometrics: A modern approach by Jeffrey M. Wooldridge (4th edition, Cengage India)', 4, 'Yes', '6'),
  ('SSH411', 'Econometrics II', 'Microeconometrics: Methods and Applications by A. Colin Cameron and Pravin K. Trivedi', 6, 'Yes', '6'),
  ('SSH112', 'Market Design', 'Auction Theory by Vijay Krishna, Academic Press', 4, 'Yes', '6');


ALTER TABLE Student
ADD CONSTRAINT CHK_GPA CHECK (gpa BETWEEN 3.0 AND 5.0);

UPDATE Student
SET gpa = CASE  
    WHEN gpa < 3.0 THEN 3.0
    WHEN gpa > 5.0 THEN 5.0
    ELSE gpa  
END
WHERE gpa < 3.0 OR gpa > 5.0;

INSERT INTO Student (id, name, national_id, birth_date, enrollment_date, graduation_date, gpa) VALUES
  (2001, 'Vinita Singh Puri', 1912061343, '2005-5-13', '2025-01-15', '2030-06-15', 2.64);
  
