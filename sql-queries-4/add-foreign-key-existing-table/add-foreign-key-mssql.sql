--adding a new column for foreign key
ALTER TABLE student
ADD department_id INT;

--adding a foreign key to the student table
ALTER TABLE student
ADD CONSTRAINT fk_student_department
FOREIGN KEY (department_id) REFERENCES department(id);

--removing a foreign key from the student table
ALTER TABLE student
DROP CONSTRAINT fk_student_department;
