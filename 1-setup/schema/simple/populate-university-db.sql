-- Adding data 

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
  ('CS443', 'Advanced Reinforcement Learning', 'Reinforcement Learning', 5, 'Yes', '1');

-- Insert for EC
INSERT INTO Course (id, name, textbook, credits, is_active, department_id) VALUES
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
  ('EC431', 'Electronics-III', 'Power Electronics', 5, 'Yes', '2');

-- Insert for MA
INSERT INTO Course (id, name, textbook, credits, is_active, department_id) VALUES
  ('MA111', 'Linear Algebra', 'Introduction to Linear Algebra by Strang', 7, 'Yes', '5'),
  ('MA131', 'Introduction to Calculus', 'Advanced Calculus of Several Variables', 7, 'Yes', '5'),
  ('MA142', 'Introduction to Programming', 'Art of Programming', 7, 'Yes', '5'),
  ('MA121', 'Discrete Maths-I', 'Discrete Mathematics and Its Applications', 7, 'Yes', '5'),
  ('MA141', 'Introduction to Optimizaton', 'An Introduction to Optimization', 7, 'Yes', '5'),
  ('MA122', 'Introduction to Graduate Mathematics', 'Introduction to College Mathematics', 7, 'Yes', '5'),

  ('MA211', 'Linear Algebra-II', 'Introduction to Linear Algebra by Strang',7, 'Yes', '5'),
  ('MA221', 'Discrete Maths-II', 'Discrete Mathematics and Its Applications', 7, 'Yes', '5'),
  ('MA231', 'Calculus: Intermediate', 'Advanced Calculus of Several Variables', 7, 'Yes', '5'),
  ('MA241', 'Convex Optimizaton', 'An Introduction to Optimization', 7, 'No', '5'),

  ('MA411', 'Linear Algebra-III', 'Introduction to Linear Algebra by Strang', 5, 'Yes', '5'),
  ('MA421', 'Discrete Maths-III', 'Discrete Mathematics and Its Applications', 5, 'Yes', '5'),
  ('MA431', 'Advanced Calculus', 'Advanced Calculus by Petrovic', 5, 'Yes', '5'),
  ('MA441', 'Advanced Optimizaton', 'Numerical Optimization', 5, 'No', '5');
  
-- Insert for ME
INSERT INTO Course (id, name, textbook, credits, is_active, department_id) VALUES
  ('ME111', 'Advanced Dynamics: Introduction', 'Advanced Dynamics by Donald', 7, 'Yes', '3'),
  ('ME121', 'Nanotechnology-I', 'Introduction to Nanotechnology by Owens', 7, 'Yes', '3'),
  ('ME131', 'Introduction to Operations Management', 'Operations Management by Stevenson', 7, 'Yes', '3'),
  ('ME141', 'Modeling Tools for Mechanical Engineers', 'Modeling Tools', 7, 'Yes', '3'),
  ('ME151', 'Statistics for Mechanical Engineers', 'Advanced Statistics', 7, 'Yes', '3'),
  ('ME161', 'Supply Chain Management', 'Supply Chain Management: Strategy, Planning, and Operation by Chopra', 7, 'Yes', '3'),

  ('ME211', 'Advanced Dynamics-II', 'Advanced Dynamics by Donald', 7, 'Yes', '3'),
  ('ME221', 'Nanotechnology-II', 'Advanced Magnetic Nanostructures by Sellmyer and Skomski', 7, 'Yes', '3'),

  ('ME411', 'Advanced Dynamics: Special Module', 'Advanced Dynamics by Donald', 5, 'Yes', '3'),
  ('ME421', 'Nanotechnology-III', 'Recent Research Papers', 5, 'Yes', '3'),
  ('ME431', 'Advanced Operations Management', 'Operations Management: Processes and Supply Chains', 5, 'Yes', '3');

-- Insert for CE
INSERT INTO Course (id, name, textbook, credits, is_active, department_id) VALUES
  ('CE111', 'Introduction to Structural Engineering', 'Structures : Or Why Things Don''t Fall Down by Gordon', 7, 'Yes', '4'),
  ('CE121', 'Geotechnical Engineering-I', 'Introduction to Geotechnical Engineering by Das and Sivakugan', 7, 'Yes', '4'),
  ('CE131', 'Mechanics of Solids-I', 'Mechanics of Solids by Ross', 7, 'Yes', '4'),
  ('CE141', 'Mechanics of Fluids-I', 'Mechanics of Fluids by Smith', 7, 'Yes', '4'),
  ('CE151', 'Modeling Tools for Civil Engineers', 'Modeling Tools', 7, 'Yes', '4'),
  ('CE161', 'Statistics for Civil Engineers', 'Advanced Statistics', 7, 'Yes', '4'),

  ('CE221', 'Geotechnical Engineering-II', 'Geotechnical Engineering: Principles and Practices by Coduto', 7, 'Yes', '4'),
  ('CE231', 'Mechanics of Solids-II', 'Engineering Mechanics: Solids by Egor', 7, 'Yes', '4'),
  ('CE241', 'Mechanics of Fluids-II', 'Theoretical Fluid Mechanics', 7, 'Yes', '4'),

  ('CE511', 'Advanced Structural Engineering', 'Recent Research Papers', 5, 'No', '4'),
  ('CE421', 'Geotechnical Engineering-III', 'Advanced Geotechnical Engineering by Desai et. al', 5, 'Yes', '4'),
  ('CE431', 'Mechanics of Solids-III', 'Advanced Mechanics of Solids by Srinath', 5, 'Yes', '4'),
  ('CE441', 'Mechanics of Fluids-III', 'Advanced Fluid Mechanics by Graebel', 5, 'Yes', '4');

SELECT * from Department;

SELECT * from Student;

SELECT * from Course;
