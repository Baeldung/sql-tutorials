WITH OrderList AS (
    SELECT 1110 AS id, 1 AS ord
    UNION ALL
    SELECT 1101 AS id, 2 AS ord
    UNION ALL
    SELECT 1617 AS id, 3 AS ord
    UNION ALL
    SELECT 1107 AS id, 4 AS ord
)
SELECT s.id, s.name
FROM Student s
JOIN OrderList ol ON s.id = ol.id
ORDER BY ol.ord;
