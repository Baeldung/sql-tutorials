ALTER TABLE Registration
 DROP CONSTRAINT registration_student_id_fkey;

ALTER TABLE Registration
 ADD CONSTRAINT registration_student_id_fkey
 FOREIGN KEY (student_id)
 REFERENCES Student (id)
 ON DELETE CASCADE;

DELETE FROM Student WHERE id = 1007;


ALTER TABLE Exam
DROP CONSTRAINT exam_student_id_fkey;

ALTER TABLE Exam
ADD CONSTRAINT exam_student_id_fkey
FOREIGN KEY (student_id)
REFERENCES Student (id)
ON DELETE CASCADE;

DELETE FROM Student WHERE id = 1007;

SELECT * FROM student limit 10;