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

CREATE Table Registration
(
    id INT PRIMARY KEY NOT Null,
    semester VARCHAR(30),
    year INT,
    reg_datetime DATETIME,
    course_id VARCHAR (10),
    student_id INT,
    CONSTRAINT registration_course_id_fkey FOREIGN KEY(course_id) REFERENCES Course(id),
    CONSTRAINT registration_student_id_fkey FOREIGN KEY(student_id) REFERENCES Student(id),
    UNIQUE (id)
);

INSERT INTO Department (id, name, code) VALUES
  (1, 'Computer Science', 'CS'),
  (2, 'Electronics and Communications', 'EC'),
  (3, 'Mechanical Engineering', 'ME'),
  (4, 'Civil Engineering', 'CE'),
  (5, 'Mathematics', 'MA');

INSERT INTO Student (id, name, national_id, birth_date, enrollment_date, graduation_date, gpa) VALUES
  (1001, 'John Liu', 123345566, '2001-04-05', '2020-01-15', '2024-06-15', 4),
  (1003, 'Rita Ora', 132345166, '2001-01-14', '2020-01-15', '2024-06-15', 4.2),
  (1007, 'Philip Lose', 321345566, '2001-06-15', '2020-01-15', '2024-06-15', 3.8),
  (1010, 'Samantha Prabhu', 3217165566, '2001-03-21', '2020-01-15', '2024-06-15', 4.9),
  (1011, 'Vikas Jain', 321345662, '2001-7-18', '2020-01-15', NULL, 3.3),
  (1610, 'Ritu Raj', 3203455662, '2002-2-05', '2021-01-15', '2025-06-15', NULL),
  (1607, 'Peter Liu',3043455662, '2002-4-14', '2021-01-15', '2025-06-15', NULL),
  (1617, 'Philip Mohan', 3103455662, '2002-5-15', '2021-01-15', '2025-06-15', 5),
  (1619, 'Sam Roberts', 9203455662, '2002-6-21', '2021-01-15', '2025-06-15', 4.3),
  (1621, 'Vineet Jha', 7203421662, '2002-05-18', '2021-01-15', NULL, 2.9),
  (2001, 'Reena Roy', 9023455613, '2003-01-13', '2022-01-15', '2025-06-15', 4.15),
  (2009, 'Pollards Grey', 6503453662, '2003-4-19', '2022-01-15', '2025-06-15', 4.65),
  (2017, 'Potu Singh', 1312445677, '2003-3-11', '2022-01-15', NULL, NULL),
  (2008, 'Julia Roberts', 1212446677, '2003-6-12', '2022-01-15', '2025-06-15', 3.04),
  (2006, 'Agatha Christi', 1100245767,  '2003-05-19', '2022-01-15', NULL, 4.59),
  (1101, 'Jia Grey', 1345236267, '2001-02-05', '2020-01-15', '2024-06-15', 3.98),
  (1103, 'Rose Rit', 1323612067, '2001-05-14', '2020-01-15', NULL, 3.57),
  (1107, 'Phellum Luis', 203678911, '2001-3-15', '2020-01-15', '2024-06-15', 4.21),
  (1110, 'Albert Decosta', 2617897011, '2001-2-21', '2020-01-15', '2024-06-15', 4),
  (1111, 'Vikram Kohli', 1516578091, '2001-3-8', '2020-01-15', '2024-06-15', 3.27),
  (1710, 'Roni Roto', 2678910631, '2002-3-11', '2021-01-15', '2025-06-15', 4.44),
  (1707, 'Piu Liu', 2101368101, '2002-3-14', '2021-01-15', NULL, 2.99),
  (1717, 'Param Mohan', 1023456545, '2002-5-15', '2021-01-15', '2025-06-15', 2.75),
  (1719, 'Siren Lobo', 189091342, '2002-6-17', '2021-01-15', NULL, NULL),
  (1721, 'Vini Puh', 1312091343, '2002-5-13', '2021-01-15', '2025-06-15', 3.64);

-- Insert in Course for CS
INSERT INTO Course (id, name, textbook, credits, is_active, department_id) VALUES
  ('CS111', 'Introduction to Operating Systems', 'OS by Tanenbaum', 7, 'Yes', '1'),
  ('CS112', 'Introduction to Real Time Operating Systems', 'Real-Time Operating Systems Book 1: The Theory by Cooling', 7, 'Yes', '1'),
  ('CS113', 'Introduction to Computer Architecture', 'Computer Architecture by Patterson', 7, 'Yes', '1'),
  ('CS211', 'Operating Systems: Intermediate', 'OS by Tanenbaum', 7, 'Yes', '1'),
  ('CS212', 'Real Time Operating Systems: Intermediate', 'Real-Time Operating Systems Book 1: The Theory by Cooling', 7, 'Yes', '1'),
  ('CS213', 'Computer Architecture: Intermediate', 'Computer Architecture by Patterson', 7, 'Yes', '1'),

  ('CS411', 'Advanced Operating Systems', 'OS by Tanenbaum', 5, 'Yes', '1'),
  ('CS511', 'Distributed Systems', 'OS by Tanenbaum', 5, 'Yes', '1'),
  ('CS413', 'Advanced Computer Architecture', 'Computer Architecture by Patterson', 5, 'Yes', '1'),

  ('CS121', 'Introduction to Databases', 'Database Systems: The Complete Book', 7, 'Yes', '1'),
  ('CS122', 'Relational Databases', 'Database Systems: The Complete Book', 7, 'No', '1'),
  ('CS123', 'Introduction to Structured Query Language', 'Database Systems: The Complete Book', 7, 'Yes', '1'),
  ('CS221', 'Intermediate: Structured Query Language', 'Database Systems: The Complete Book', 7, 'Yes', '1'),
  ('CS222', 'Intermediate PostgreSQL', 'Database Systems: The Complete Book', 7, 'Yes', '1'),  
  ('CS421', 'Advanced Database Concepts', 'Database Internals: A Deep Dive Into How Distributed Data Systems Work', 5, 'Yes', '1'),
  ('CS422', 'Advanced Relational Databases', 'Database Systems: The Complete Book', 5, 'Yes', '1'),

  ('CS131', 'Introduction to Data Structures', 'Introduction to Algorithms', 7, 'Yes', '1'),
  ('CS132', 'Introduction to Algorithms', 'Introduction to Algorithms', 7, 'Yes', '1'),
  ('CS231', 'Data Structures: Intermediate Level', 'Introduction to Algorithms', 7, 'Yes', '1'),
  ('CS232', 'Algorithms: Intermediate Level', 'Introduction to Algorithms', 7, 'Yes', '1'),
  ('CS235', 'Planar Graphs', 'Graph Theory by Diestel', 7, 'Yes', '1'),
  ('CS531', 'Advanced Data Structures', 'Introduction to Algorithms', 5, 'Yes', '1'),
  ('CS532', 'Advanced Algorithms', 'Introduction to Algorithms', 5, 'Yes', '1'),
  ('CS535', 'Non-Planar Graphs', 'Graph Theory by Diestel', 5, 'No', '1'),
  
  ('CS141', 'Statistical Machine Learning', 'Statistical Machine Learning: A Unified Framework', 7, 'Yes', '1'),
  ('CS142', 'Theory of Machine Learning', 'Machine Learning by Ethem', 7, 'Yes', '1'),
  ('CS241', 'Reinforcement Learning', 'Reinforcement Learning: An Introduction',7, 'Yes', '1'),
  ('CS242', 'Theory of Deep Learning', 'Deep Learning by Yoshua', 7, 'Yes', '1'),  
  ('CS441', 'Advanced Machine Learning', 'Recent Research Papers', 5, 'Yes', '1'),
  ('CS442', 'Advances in Deep Learning', 'Recent Research Papers', 5, 'No', '1'),
  ('CS443', 'Advanced Reinforcement Learning', 'Reinforcement Learning', 5, 'Yes', '1'),

  ('EC111', 'Principles of Communication', 'Principles Of Communications: System Modulation And Noise', 7, 'Yes', '2'),
  ('EC121', 'Signal and Systems', 'Signals and Systems by Oppenheim', 7, 'Yes', '2'),
  ('EC131', 'Electronics-I', 'Power Electronics', 7, 'Yes', '2'),
  ('EC141', 'Modeling Tools for Electronics Engineers', 'Modeling Tools', 7, 'Yes', '2'),
  ('EC151', 'Statistics for Electronics Engineers', 'Advanced Statistics', 7, 'Yes', '2'),
  ('EC211', 'Principles of Communication-II', 'Principles Of Communications: System Modulation And Noise', 7, 'Yes', '2'),
  ('EC221', 'Digital Signal Processing', 'Digital Signal Processing: Principles, Algorithms, and Applications', 7, 'Yes', '2'),
  ('EC222', 'Introduction to Programming Matlab', 'Matlab: an Introduction', 7, 'Yes', '2'),
  ('EC231', 'Electronics-II', 'Power Electronics', 7, 'Yes', '2'),   
  ('EC411', 'Principles of Communication-III', 'Principles Of Communications: System Modulation And Noise', 5, 'Yes', '2'),
  ('EC421', 'Advanced Signal and Systems', 'Signals and Systems', 5, 'Yes', '2'),
  ('EC431', 'Electronics-III', 'Power Electronics', 5, 'Yes', '2'),

  ('MA111', 'Linear Algebra', 'Introduction to Linear Algebra by Strang', 7, 'Yes', '5'),
  ('MA131', 'Introduction to Calculus', 'Advanced Calculus of Several Variables', 7, 'Yes', '5'),
  ('MA142', 'Introduction to Programming', 'Art of Programming', 7, 'Yes', '5'),
  ('MA121', 'Discrete Maths-I', 'Discrete Mathematics and Its Applications', 7, 'Yes', '5'),
  ('MA141', 'Introduction to Optimizaton', 'An Introduction to Optimization', 7, 'Yes', '5'),
  ('MA122', 'Introduction to Graduate Mathematics', 'Introduction to College Mathematics', 7, 'Yes', '5'),

  ('MA211', 'Linear Algebra-II', 'Introduction to Linear Algebra by Strang',7, 'Yes', '5'),
  ('MA221', 'Discrete Maths-II', 'Discrete Mathematics and Its Applications', 7, 'Yes', '5'),
  ('MA231', 'Calculus: Intermediate', 'Advanced Calculus of Several Variables', 7, 'Yes', '5'),
  ('MA241', 'Convex Optimizaton', 'An Introduction to Optimization', 7, 'No', '5');

INSERT INTO Registration (id, semester, year, reg_datetime, student_id, course_id) VALUES
 (2001, 'SPRING', 2022, '2022-01-08 11:42:50', 1607, 'EC111'),
 (2002, 'SPRING', 2022, '2022-01-08 12:42:50', 1607, 'EC131'),
 (2003, 'SPRING', 2022, '2022-01-08 13:42:50', 1607, 'EC151'),
 (2051, 'FALL', 2022, '2022-08-05 11:22:50', 1607, 'EC211'),
 (2052, 'FALL', 2022, '2022-08-04 12:12:50', 1607, 'EC221'),
 (2053, 'FALL', 2022, '2022-08-03 15:32:50', 1607, 'CS111'),
 (2101, 'SPRING', 2023, '2023-01-06 11:42:50', 1607, 'EC411'),
 (2102, 'SPRING', 2023, '2023-01-06 12:42:50', 1607, 'CS112'),
 (2103, 'SPRING', 2023, '2023-01-05 13:42:50', 1607, 'CS113'),
 (2551, 'FALL', 2022, '2022-08-05 11:22:50', 1607, 'EC121'),
 (2552, 'FALL', 2022, '2022-08-04 12:12:50', 1607, 'EC141'),
 (2553, 'FALL', 2022, '2022-08-03 15:32:50', 1607, 'CS211'),

 (2011, 'SPRING', 2022, '2022-01-08 13:42:50', 1610, 'EC121'),
 (2012, 'SPRING', 2022, '2022-01-08 13:42:50', 1610, 'EC141'),
 (2013, 'SPRING', 2022, '2022-01-08 13:42:50', 1610, 'CS111'),
 (2151, 'FALL', 2022, '2022-08-02 11:22:50', 1610, 'EC221'),
 (2152, 'FALL', 2022, '2022-08-02 12:12:50', 1610, 'EC231'),

 (2111, 'SPRING', 2023, '2023-01-06 11:42:50', 1610, 'EC411'),
 (2112, 'SPRING', 2023, '2023-01-06 12:42:50', 1610, 'CS112'),
 (2113, 'SPRING', 2023, '2023-01-05 13:42:50', 1610, 'CS113'),
 (2671, 'FALL', 2022, '2022-08-05 11:22:50', 1610, 'EC421'),
 (2672, 'FALL', 2022, '2022-08-04 12:12:50', 1610, 'EC431'),
 (2673, 'FALL', 2022, '2022-08-03 15:32:50', 1610, 'CS211'),
 (5053, 'FALL', 2022, '2022-08-03 11:12:50', 1710, 'CS111'),
 (5101, 'SPRING', 2023, '2023-01-08 17:42:50', 1710, 'MA211'),
 (5102, 'SPRING', 2023, '2023-01-09 15:42:50', 1710, 'MA231'),
 (5103, 'SPRING', 2023, '2023-01-12 10:42:50', 1710, 'CS211'),
 (5153, 'FALL', 2023, '2023-08-04 14:12:50', 1710, 'CS111'),

 (5111, 'SPRING', 2022, '2022-01-11 13:42:50', 1707, 'MA121'),
 (5112, 'SPRING', 2022, '2022-01-11 13:42:50', 1707, 'MA122'),
 (5113, 'SPRING', 2022, '2022-01-11 13:42:50', 1707, 'MA141'),
 (5114, 'SPRING', 2022, '2022-01-11 13:42:50', 1707, 'MA241'),
 (5171, 'FALL', 2022, '2022-08-03 10:12:50', 1707, 'MA221'),
 (5172, 'FALL', 2022, '2022-08-03 12:22:50', 1707, 'MA241');

select * from Registration where course_id='EC411';

delete from Course where id='EC411';


--Drop the constraint
ALTER TABLE Registration
DROP CONSTRAINT registration_course_id_fkey;
--Recreate
ALTER TABLE Registration
ADD CONSTRAINT registration_course_id_fkey
FOREIGN KEY (course_id) REFERENCES Course(id)
ON DELETE CASCADE;

--Insert the rows deleted back to the schema

 INSERT INTO Course (id, name, textbook, credits, is_active, department_id) VALUES
 ('EC411', 'Principles of Communication-III', 'Principles Of Communications: System Modulation And Noise', 5, 'Yes', '2');

 INSERT INTO Registration (id, semester, year, reg_datetime, student_id, course_id) VALUES
  (2101, 'SPRING', 2023, '2023-01-06 11:42:50', 1607, 'EC411'),
   (2111, 'SPRING', 2023, '2023-01-06 11:42:50', 1610, 'EC411');

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
  
