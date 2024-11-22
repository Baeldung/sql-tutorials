WITH batch AS (
    SELECT id 
    FROM Registration 
    WHERE year < 2022
    LIMIT 1000
)
DELETE FROM Registration 
WHERE id IN (SELECT id FROM batch);