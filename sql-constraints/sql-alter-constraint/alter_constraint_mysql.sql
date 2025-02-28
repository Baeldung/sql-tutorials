INSERT INTO Department (id, name, code) VALUES
  (6, 'Social Sciences and Humanities', 'SSH');


-- Insert in Course for SSH
INSERT INTO Course (id, name, textbook, credits, is_active, department_id) VALUES
  ('SSH111', 'Macroeconomics', 'Macroeconomics by Krugman, P., Wells, R., 2nd edition', 4, 'Yes', 6),
  ('SSH211', 'Econometrics I', 'Introductory Econometrics: A modern approach by Jeffrey M. Wooldridge (4th edition, Cengage India)', 4, 'Yes', 6),
  ('SSH411', 'Econometrics II', 'Microeconometrics: Methods and Applications by A. Colin Cameron and Pravin K. Trivedi', 6, 'Yes', 6),
  ('SSH112', 'Market Design', 'Auction Theory by Vijay Krishna, Academic Press', 4, 'Yes', 6);


--Drop the constraint
ALTER TABLE Course
DROP CONSTRAINT course_department_id_fkey;

--Recreate
ALTER TABLE Course
ADD CONSTRAINT course_department_id_fkey
FOREIGN KEY (department_id) REFERENCES Department(id)
ON DELETE CASCADE;

DELETE 
FROM Department 
WHERE id=6;

ALTER TABLE Student
ADD CONSTRAINT CHK_GPA 
CHECK (gpa BETWEEN 3.0 AND 5.0);

