SELECT
    obtained,
    total,
    (obtained / total) * 100 AS percentage
FROM Result;

SELECT
    SUM(obtained) AS total_obtained,
    SUM(total) AS total_marks,
    (SUM(obtained) / SUM(total) * 100) AS overall_percentage
FROM Result;

SELECT
    SUM(obtained) AS total_obtained,
    SUM(total) AS total_marks,
    (SUM(obtained) / SUM(total) * 100) AS adjusted_percentage
FROM Result
WHERE obtained <> 40;
