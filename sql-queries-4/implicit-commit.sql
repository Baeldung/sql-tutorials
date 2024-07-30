START TRANSACTION; -- Start a new transaction

/* Delete all data from the Registration table */ 
DELETE *
FROM Registration;

CREATE TABLE t(i INTEGER); -- This statement causes an implicit commit
ROLLBACK; -- This statement has no effect
