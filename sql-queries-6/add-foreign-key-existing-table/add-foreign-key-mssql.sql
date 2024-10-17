--adding a new column for foreign key
ALTER TABLE Student
ADD department_id INT;

--adding a foreign key to the student table
ALTER TABLE Student
ADD CONSTRAINT fk_student_department
FOREIGN KEY (department_id) REFERENCES Department(id);

--adding unique constraint in the department table
ALTER TABLE Department
ADD CONSTRAINT uq_department UNIQUE (id, name);

--adding a foreign key to multiple columns
ALTER TABLE Course
ADD CONSTRAINT fk_course_department FOREIGN KEY (department_id, name)
REFERENCES Department (id, name);
