-- Self-join
UPDATE Program AS P1
SET end_date = P2.start_date + INTERVAL '3 weeks'
FROM Program AS P2
WHERE P1.id = p2.id;

-- Subquery within UPDATE ... SET
UPDATE Program
SET end_date = (
    SELECT start_date + INTERVAL '3 weeks'
    FROM Program AS Temp
    WHERE Temp.id = Program.id
);
