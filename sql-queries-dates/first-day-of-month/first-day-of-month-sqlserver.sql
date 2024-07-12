-- Using DATEADD and DATEDIFF
SELECT id, name, DATEADD(MONTH, DATEDIFF(MONTH, 0, start_date), 0) AS StartOfMonth
FROM Program;

-- Using DATEFROMPARTS
SELECT id, name, DATEFROMPARTS(YEAR(start_date), MONTH(start_date), 1) AS StartOfMonth
FROM Program;

-- Using EOFMONTH
SELECT id, name, DATEADD(DAY, 1, EOMONTH(start_date, -1)) AS StartOfMonth
FROM Program;

-- Using DATETRUNC
SELECT id, name, DATETRUNC(MONTH, start_date) AS StartOfMonth
FROM Program;