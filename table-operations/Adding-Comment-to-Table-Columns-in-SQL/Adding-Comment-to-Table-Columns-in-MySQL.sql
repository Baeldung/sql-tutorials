--Adding Teachers Table with Comments to University database
CREATE TABLE Teachers ( 
  teacher_id INT NOT NULL COMMENT 'Unique identifier for each teacher', 
  first_name VARCHAR(50) COMMENT 'first name of the teacher', 
  last_name VARCHAR(50) COMMENT 'last name of the teacher', 
  department_id INT COMMENT 'Department id describing where the teacher belongs to', 
  hire_date DATE COMMENT 'the date the teacher was hired' 
 );
