ALTER TABLE Course ADD id_copy VARCHAR(10);
UPDATE Course SET id_copy = id;