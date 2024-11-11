SELECT 
EXTRACT(YEAR FROM reg_datetime) AS year,
EXTRACT(MONTH FROM reg_datetime) AS month,
COUNT(*) AS no_of_registrations
FROM registration GROUP BY 
EXTRACT(YEAR FROM reg_datetime), 
EXTRACT(MONTH FROM reg_datetime) 
ORDER BY year,month;
        
SELECT 
DATE_TRUNC('month', reg_datetime) AS month_start,
COUNT(*) AS total_registrations
FROM registration 
GROUP BY month_start
ORDER BY month_start;
        
SELECT 
TO_CHAR(reg_datetime, 'YYYY-MM') AS year_month,
COUNT(*) AS total_registrations
FROM registration
GROUP BY year_month
ORDER BY year_month;