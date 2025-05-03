CREATE TABLE modifiedregistration (
     semester VARCHAR(30),
     year INT,
     reg_datetime TIMESTAMP,
     course_id VARCHAR(10),
     student_id INT
 );
 
 INSERT INTO modifiedregistration (semester, year, reg_datetime, course_id, student_id)
 VALUES 
     ('Fall', 2021, '2021-09-01 08:00:00', 'CS211', 1001),
     ('Fall', 2021, '2021-09-01 08:00:00', 'CS211', 1001),
     ('Spring', 2022, '2022-01-15 09:30:00', 'CS212', 1007),
     ('Spring', 2022, '2022-01-15 09:30:00', 'CS212', 1007);

