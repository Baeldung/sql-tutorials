START TRANSACTION;

UPDATE Course SET credits = credits + 1 WHERE id = 'CS111';
SAVEPOINT update_cs111;

UPDATE Course SET credits = credits + 1 WHERE id = 'CS112';
SAVEPOINT update_cs112;

-- Oops, we made a mistake on the second update
ROLLBACK TO SAVEPOINT update_cs111;

UPDATE Course SET credits = credits + 1 WHERE id = 'CS113';

COMMIT;