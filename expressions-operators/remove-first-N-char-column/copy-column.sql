ALTER TABLE Course ADD id_copy VARCHAR(10);
UPDATE Course SET id_copy = id;
SELECT id, id_copy, name FROM Course LIMIT 4;
