CREATE TEMPORARY TABLE temp_order (id INT, ord INT);
INSERT INTO temp_order (id, ord) VALUES (1110, 1), (1101, 2), (1617, 3), (1107, 4);

SELECT s.id, s.name 
FROM Student s
JOIN temp_order t ON s.id = t.id
ORDER BY t.ord;

DROP TEMPORARY TABLE temp_order;
