SELECT *
FROM Course
WHERE id NOT IN (
 SELECT course_id
 FROM Registration
);
