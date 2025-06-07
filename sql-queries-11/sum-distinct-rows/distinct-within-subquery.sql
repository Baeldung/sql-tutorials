SELECT SUM(credits) FROM (SELECT DISTINCT textbook, credits FROM Course) AS distinct_rows;
SELECT SUM(credits) AS distinct_credits FROM (SELECT DISTINCT textbook, credits FROM Course) AS distinct_rows;
