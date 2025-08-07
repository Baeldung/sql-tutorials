-- Self join
UPDATE P1
SET P1.end_date = DATEADD(week, 3, P2.start_date)
FROM Program AS P1
JOIN Program AS P2
ON P1.id = P2.id;

--Subquery within UPDATE ... SET
UPDATE Program
SET end_date = (
    SELECT DATEADD(week, 3, start_date)
    FROM Program AS Temp
    WHERE Temp.id = Program.id
);
