--adding a new column
ALTER TABLE Student
ADD COLUMN department_id INT;

--adding a foreign key constraint to an existing table
ALTER TABLE Student
ADD CONSTRAINT fk_student_department
FOREIGN KEY (department_id) REFERENCES Department(id);

--adding a foreign key constraint on multiple columns
ALTER TABLE Course 
ADD CONSTRAINT fk_course_department 
FOREIGN KEY (department_id, name) REFERENCES Department (id, name);
