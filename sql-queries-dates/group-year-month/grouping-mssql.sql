SELECT 
YEAR(reg_datetime) AS year_part, 
MONTH(reg_datetime) AS month_part, 
COUNT(*) AS total_registrations
FROM Registration
GROUP BY YEAR(reg_datetime), MONTH(reg_datetime)
ORDER BY year_part, month_part;

SELECT 
DATEPART(YEAR, reg_datetime) AS year, 
DATEPART(MONTH, reg_datetime) AS month, 
COUNT(*) AS total_registrations
FROM Registration
GROUP BY DATEPART(YEAR, reg_datetime), DATEPART(MONTH, reg_datetime)
ORDER BY year, month;

SELECT 
FORMAT(reg_datetime, 'yyyy-MM') AS year_month,
COUNT(*) AS total_registrations
FROM Registration
GROUP BY FORMAT(reg_datetime, 'yyyy-MM')
ORDER BY year_month;

SELECT 
DATETRUNC(Month, reg_datetime) AS month_start,
COUNT(*) AS total_registrations
FROM Registration
GROUP BY DATETRUNC(Month, reg_datetime)
ORDER BY month_start;