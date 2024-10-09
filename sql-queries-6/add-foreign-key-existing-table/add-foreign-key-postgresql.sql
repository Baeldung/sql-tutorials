--adding a foreign key constraint to an existing table
ALTER TABLE student
ADD COLUMN department_id INT,
ADD CONSTRAINT fk_student_department
FOREIGN KEY (department_id) REFERENCES department(id);

--adding a foreign key constraint on multiple columns
ALTER TABLE course 
ADD CONSTRAINT fk_course_department 
FOREIGN KEY (department_id, name) REFERENCES department (id, name);
