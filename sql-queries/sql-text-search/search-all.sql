SELECT * FROM Product WHERE description LIKE '%Milk%' OR description LIKE '%Dark%';
SELECT * FROM Product WHERE LOWER(description) LIKE LOWER('%Milk%') OR LOWER(description) LIKE LOWER('%Dark%');