SELECT RIGHT('websitebaeldung', 8);
SELECT RIGHT(id_copy, LENGTH(id_copy) - 3) FROM Course;
UPDATE Course SET id_copy = RIGHT(id_copy, LENGTH(id_copy) - 3);
SELECT id, id_copy, name FROM Course;
