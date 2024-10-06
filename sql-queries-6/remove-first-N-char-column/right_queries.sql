SELECT RIGHT('websitebaeldung', 8);
SELECT RIGHT(id_copy, LENGTH(id_copy) - 2) from Course;
UPDATE Course SET id_copy = RIGHT(id_copy, LENGTH(id_copy) - 2);