ALTER TABLE Course ADD id_copy varchar(10);
UPDATE Course SET id_copy = id;