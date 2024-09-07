SELECT YEAR(reg_datetime) AS year_part, MONTH(reg_datetime) AS month_part, COUNT(*) AS total_registrations 
FROM Registration 
GROUP BY year_part, month_part 
ORDER BY year_part, month_part;

SELECT DATE_FORMAT(reg_datetime, '%Y-%m') AS month_year, COUNT(*) AS total_registrations 
FROM Registration 
GROUP BY month_year 
ORDER BY month_year;