-- Adding data 

INSERT INTO Department (id, name, code) VALUES
  (1, 'Computer Science', 'CS'),
  (2, 'Electronics and Communications', 'EC'),
  (3, 'Mechanical Engineering', 'ME'),
  (4, 'Civil Engineering', 'CE'),
  (5, 'Mathematics', 'MA'); 

INSERT INTO Faculty (id, name, national_id, position, start_date, end_date, department_id) VALUES
  (1, 'Anubha Gupta', 1018901231, 'Professor', '2010-1-11', '2027-3-11', 2),
  (2, 'Anubha Gupta', 1018901231, 'Associate Professor', '2007-1-9', '2010-1-10', 2),
  (3, 'Anubha Gupta', 1018901231, 'Assistant Professor', '2004-5-11', '2007-1-8', 2),
  (21, 'Peter Pan', 2130989011, 'Professor', '2007-5-11', NULL, 2),
  (22, 'Peter Pan', 2130989011, 'Associate Professor', '2004-7-11', '2007-5-10', 2),
  (23, 'Peter Pan', 2130989011, 'Assistant Professor', '2001-5-11', '2004-7-10', 2),
  (33, 'Nando de Fretas', 3130901341, 'Associate Professor', '2023-3-11', '2025-4-8', 2),
  (34, 'Nando de Fretas', 3130901341, 'Assistant Professor', '2020-5-17', '2023-3-10', 2),
  (41, 'Robert Ludloo', 3031201441, 'Assistant Professor', '2017-5-11', NULL, 2),
  (42, 'Robert Ludloo', 3031201441, 'Teaching Assistant', '2014-5-11', '2017-5-10', 2),
  (51, 'Vikram Goyal', 6541236090, 'Professor', '2016-1-11', NULL, 2),
  (52, 'Vikram Goyal', 6541236090, 'Associate Professor', '2012-3-20', '2016-3-10', 2),
  (53, 'Vikram Goyal', 6541236090, 'Assistant Professor', '2009-3-12', '2012-3-19', 2),
  (54, 'Vikram Goyal', 6541236090, 'Teaching Assistant', '2006-1-11', '2009-3-11', 2),
  (100, 'Score Koli', 3221114041, 'Teaching Assistant', '2021-1-11', '2023-3-20', 2),
  (101, 'Schroger Ken', 3251113041, 'Teaching Assistant', '2023-1-3', NULL, 2),
  (102, 'Schidt Kraus', 3112124041, 'Teaching Assistant', '2022-1-11', NULL, 2),

  (111, 'AV Subramanium', 1340902317, 'Assistant Professor', '2011-5-11', NULL, 1),
  (121, 'Risa Sodi', 1409239017, 'Associate Professor', '2010-1-11', NULL, 1),
  (122, 'Risa Sodi', 1409239017, 'Assistant Professor', '2008-4-8', '2010-1-10', 1),
  (131, 'Wlliam Liu', 231456789, 'Professor', '2015-5-12', NULL, 1),
  (132, 'Wlliam Liu', 231456789, 'Associate Professor', '2009-2-11', '2015-5-11', 1),
  (133, 'Wlliam Liu', 231456789, 'Assistant Professor', '2006-3-22', '2009-2-10', 1),
  (134, 'Wlliam Liu', 231456789, 'Teaching Assistant', '2003-5-11', '2006-3-21', 1),
  (221,  'Cormen Qiu', 1040902317, 'Professor', '2013-3-11', NULL, 1),
  (225, 'Ajit Singh', 1302632117, 'Assistant Professor', '2012-5-11', '2024-6-8', 1),
  (226, 'Ajit Singh', 1302632117, 'Teaching Assistant', '2009-5-11', '2012-5-10', 1),
  (227, 'Sam Wilson', 3021632117, 'Professor', '2021-5-11', NULL, 1),
  (228, 'Sam Wilson', 3021632117, 'Associate Professor', '2018-2-10', '2021-5-10', 1),
  (229, 'Liu Lian', 2163202117, 'Associate Professor', '2019-2-10', NULL, 1),
  (230, 'Kiu Chi', 3163218917, 'Assistant Professor', '2020-12-10', NULL, 1),

  (300, 'Milos Simic', 9875511222, 'Teaching Assistant', '2022-4-11', NULL, 1),
  (301, 'Ritu Jain', 1347551122, 'Teaching Assistant', '2022-4-11', '2024-12-19', 1),
  (302, 'Reera Soi', 7309551122, 'Teaching Assistant', '2022-7-10', '2023-12-23', 1),
  (303, 'Michael Albin', 3147551122, 'Teaching Assistant', '2022-4-11', '2025-12-12', 1),
  (304, 'Tahir Hussain', 8569551122, 'Teaching Assistant', '2021-12-10', NULL, 1),
  (305, 'Michael Albin', 5637551122, 'Teaching Assistant', '2021-4-11', '2025-12-12', 1),  

  (401, 'Vini Joseph', 9028291011, 'Professor', '2015-2-12', NULL, 3),
  (402, 'Vini Joseph', 9028291011, 'Associate Professor', '2015-2-11', '2012-9-9', 3),
  (421, 'Brandon Fraser', 2314561011, 'Assistant Professor', '2013-8-11', NULL, 3),
  (431, 'Thomas Cook', 7734139012, 'Associate Professor', '2016-10-11', NULL, 3),
  (432, 'Thomas Cook', 7734139012, 'Assistant Professor', '2013-3-11', '2016-10-10', 3), 
  (441, 'Steven Joe', 1567230978, 'Professor', '2019-9-11', NULL, 3),
  (451, 'Rick Ponting', 6605504403, 'Assistant Professor', '2020-11-11', NULL, 3),
  (510, 'Ranold Krose', 2314553301, 'Teaching Assistant', '2021-9-11', NULL, 3),
  (511, 'Rini Sen', 1423553301, 'Teaching Assistant', '2022-6-11', NULL, 3),
  (512, 'Casper Jones', 4253513301, 'Teaching Assistant', '2021-4-11', NULL, 3),
  
  (601, 'Sussie Smith', 1657230918, 'Professor', '2019-1-11', '2027-2-18', 5),
  (602, 'Sussie Smith', 1657230918, 'Associate Professor', '2015-10-11', '2019-1-10', 5),
  (603, 'Sussie Smith', 1657230918, 'Assistant Professor', '2012-1-9', '2015-10-10', 5),
  (621, 'Badrinath Ho', 2010111987, 'Professor', '2016-3-11', NULL, 5),
  (631, 'Theiry Kerry', 2110118447, 'Associate Professor', '2019-4-11', NULL, 5),
  (641, 'Steve Joseph', 1314567655, 'Assistant Professor', '2021-6-23', NULL, 5),
  (642, 'Steve Joseph', 1314567655, 'Teaching Assistant', '2019-3-11', '2021-6-23', 5),  
  (651, 'Rina Anderson', 1902341504, 'Assistant Professor', '2020-9-11', '2026-7-8', 5),
  (652, 'Rina Anderson', 1902341504, 'Teaching Assistant', '2017-9-11', '2020-9-10', 5),
  (671, 'Rosita Klaus', 1234015024,  'Teaching Assistant', '2023-1-8', '2024-2-2', 5),
  (672, 'Ballu Singh', 2134105024,  'Teaching Assistant', '2022-12-11', '2024-2-2', 5),
  (673, 'Rory Ross', 4021351024,  'Teaching Assistant', '2022-11-11', '2024-2-2', 5),

  (681, 'Vin Diesel', 1331405624, 'Professor', '2014-1-11', NULL, 4),
  (682, 'Vin Diesel', 1331405624, 'Associate Professor', '2009-1-11', '2014-1-10', 4),
  (691, 'Brandon Ford', 2131435609, 'Assistant Professor', '2013-1-11', NULL, 4),
  (703, 'Thor Cookie', 1112125129, 'Associate Professor', '2016-1-11', NULL, 4),
  (724, 'Stove Joseph', 1010101332, 'Professor', '2019-1-11', '2025-2-8', 4),
  (725, 'Stove Joseph', 1010101332, 'Associate Professor', '2015-12-10', '2019-1-10', 4),
  (726, 'Stove Joseph', 1010101332, 'Assistant Professor', '2011-2-9', '2015-12-9', 4),
  (727, 'Stove Joseph', 1010101332, 'Teaching Assistant', '2008-3-11', '2011-2-8', 4),
  (715, 'Ron Parry', 2032145096, 'Assistant Professor', '2020-1-11', NULL, 4),
  (716, 'Ron Parry', 2032145096, 'Teaching Assistant', '2018-1-09', '2020-1-10', 4),
  (739, 'Karen Walter', 2314657876, 'Teaching Assistant', '2022-11-11', NULL, 4),
  (740, 'Kira Wass', 2314623876, 'Teaching Assistant', '2021-9-11', NULL, 4),
  (741, 'Sophia Ker', 2314437876, 'Teaching Assistant', '2022-8-11', NULL, 4);

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

SELECT * from Faculty;

SELECT * from Course;
