-- adding a foreign key to an existing table
ALTER TABLE student
ADD COLUMN department_id INT,
ADD CONSTRAINT fk_student_department
FOREIGN KEY (department_id) REFERENCES department(id);

-- removing a foreign key from an existing table
ALTER TABLE student
DROP FOREIGN KEY fk_student_department;
