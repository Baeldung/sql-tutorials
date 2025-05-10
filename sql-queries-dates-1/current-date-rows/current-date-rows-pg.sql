SELECT * FROM Registration 
WHERE reg_datetime BETWEEN CURRENT_DATE 
AND (CURRENT_DATE + INTERVAL '1 day' - INTERVAL '1 microsecond');

SELECT * FROM Registration 
WHERE reg_datetime > CURRENT_DATE 
AND reg_datetime < (CURRENT_DATE + INTERVAL '1 day');

SELECT * FROM Registration 
WHERE CAST(reg_datetime AS date) = CURRENT_DATE;

SELECT * FROM Registration 
WHERE DATE_TRUNC('day', reg_datetime) = CURRENT_DATE;