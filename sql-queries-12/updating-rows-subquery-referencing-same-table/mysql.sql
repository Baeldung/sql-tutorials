-- Using a Self Join
UPDATE Program AS P1
JOIN (
    SELECT id, DATE_ADD(start_date, INTERVAL 3 WEEK) AS new_end_date
    FROM Program
) AS P2
ON P1.id = P2.id
SET P1.end_date = P2.new_end_date;

-- Using a Derived Table
UPDATE Program
SET end_date = (
    SELECT new_end_date FROM (
        SELECT DATE_ADD(start_date, INTERVAL 3 WEEK) AS new_end_date
        FROM Program AS Temp
        WHERE Temp.id = Program.id
    ) AS Temp_table
);
