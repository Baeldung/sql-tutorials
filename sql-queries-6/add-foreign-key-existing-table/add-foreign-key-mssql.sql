--adding a new column for foreign key
ALTER TABLE student
ADD department_id INT;

--adding a foreign key to the student table
ALTER TABLE student
ADD CONSTRAINT fk_student_department
FOREIGN KEY (department_id) REFERENCES department(id);

--adding unique constraint in the department table
ALTER TABLE department
ADD CONSTRAINT uq_department UNIQUE (id, name);

--adding a foreign key to multiple columns
ALTER TABLE course
ADD CONSTRAINT fk_course_department FOREIGN KEY (department_id, name)
REFERENCES department (id, name);
