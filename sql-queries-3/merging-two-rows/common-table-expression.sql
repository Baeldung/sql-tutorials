WITH MergedStudent AS (
     SELECT 
         2017 AS id,
         COALESCE(MAX(name), MIN(name)) AS name,
         COALESCE(MAX(national_id), MIN(national_id)) AS national_id,
         COALESCE(MAX(birth_date), MIN(birth_date)) AS birth_date,
         COALESCE(MAX(enrollment_date), MIN(enrollment_date)) AS enrollment_date,
         COALESCE(MAX(graduation_date), MIN(graduation_date)) AS graduation_date,
         COALESCE(MAX(gpa), MIN(gpa)) AS gpa
     FROM 
         (SELECT * FROM Student WHERE id = 2017
          UNION ALL
          SELECT * FROM Student WHERE id = 2008) s
 )
 SELECT * FROM MergedStudent;
