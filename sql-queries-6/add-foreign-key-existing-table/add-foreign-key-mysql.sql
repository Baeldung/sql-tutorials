--adding a new column for foreign key
ALTER TABLE Student
ADD COLUMN department_id INT;

-- adding a foreign key to an existing table
ALTER TABLE Student
ADD CONSTRAINT fk_student_department
FOREIGN KEY (department_id) REFERENCES Department(id);

--adding unique constraints in the department table
ALTER TABLE Department
ADD CONSTRAINT uq_department UNIQUE (id, name);

--adding a foreign key to multiple columns
ALTER TABLE Course
ADD CONSTRAINT fk_course_department FOREIGN KEY (department_id, name)
REFERENCES Department (id, name);
