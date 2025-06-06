SELECT SUBSTRING(id_copy, 3, 3) from Course;
UPDATE Course SET id_copy = SUBSTRING(id_copy, 3, 3);
SELECT id, id_copy, name FROM Course;
