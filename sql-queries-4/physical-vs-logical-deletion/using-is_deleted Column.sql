ALTER TABLE Student ADD COLUMN is_deleted BOOLEAN DEFAULT FALSE;

UPDATE Student SET is_deleted = TRUE WHERE id = 1010;

SELECT * FROM Student WHERE is_deleted = FALSE;