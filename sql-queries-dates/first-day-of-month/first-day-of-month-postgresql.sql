-- Using DATE_TRUNC
SELECT id, name, DATE_TRUNC('month', start_date) AS StartOfMonth
FROM Program;

-- Using MAKE_DATE and EXTRACT
SELECT id, name, MAKE_DATE(EXTRACT(YEAR FROM start_date)::int, EXTRACT(MONTH FROM start_date)::int, 1) AS StartOfMonth
FROM Program;