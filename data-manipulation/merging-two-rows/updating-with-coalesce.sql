SELECT * FROM Student WHERE id IN (1011, 1610);

UPDATE Student AS target
 SET name = COALESCE(target.name, source.name),
     national_id = COALESCE(target.national_id, source.national_id),
     birth_date = COALESCE(target.birth_date, source.birth_date),
     enrollment_date = COALESCE(target.enrollment_date, source.enrollment_date),
     graduation_date = COALESCE(target.graduation_date, source.graduation_date),
     gpa = COALESCE(target.gpa, source.gpa)
 FROM Student AS source
 WHERE target.id = 1011 AND source.id = 1610;

DELETE FROM Student WHERE id = 1610;

SELECT * FROM Student WHERE id IN (1011);