--Adding Teachers Table to University Database with Comments
CREATE TABLE Teachers ( 
  teacher_id INT NOT NULL COMMENT 'Unique identifier for each teacher', 
  first_name VARCHAR(50) COMMENT 'Teacher's first name', 
  last_name VARCHAR(50) COMMENT 'Teacher's last name', 
  department_id INT COMMENT 'Department id describing where the teacher belongs to', 
  hire_date DATE COMMENT 'Teacher's hiring date' 
  );
