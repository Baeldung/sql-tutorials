-- Using DATE_FROMAT
SELECT id, name, DATE_FORMAT(start_date, '%Y-%m-01') AS StartOfMonth
FROM Program;

-- Using MAKEDATE and MONTH
SELECT id, name, MAKEDATE(YEAR(start_date), 1) + INTERVAL (MONTH(start_date) - 1) MONTH AS StartOfMonth
FROM Program;