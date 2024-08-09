INSERT INTO Student (id, name, national_id, birth_date, enrollment_date, graduation_date, gpa)
 SELECT 
     1000,
     COALESCE(s1.name, s2.name),
     COALESCE(s1.national_id, s2.national_id),
     COALESCE(s1.birth_date, s2.birth_date),
     COALESCE(s1.enrollment_date, s2.enrollment_date),
     COALESCE(s1.graduation_date, s2.graduation_date),
     COALESCE(s1.gpa, s2.gpa)
 FROM 
     (SELECT * FROM Student WHERE id = 1717) s1,
     (SELECT * FROM Student WHERE id = 1719) s2;

DELETE FROM Student WHERE id IN (1717, 1719);

SELECT * FROM Student WHERE id = 1000;