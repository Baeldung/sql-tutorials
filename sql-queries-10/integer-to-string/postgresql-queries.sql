SELECT * 
FROM Faculty;

SELECT CONCAT(SPLIT_PART(name, ' ', 1)::text, '_', national_id::text, '@baeldung.com') 
AS allocated_email_id 
FROM Faculty 
LIMIT 2;

SELECT CONCAT(CAST(SPLIT_PART(name, ' ', 1) AS text), '_', CAST(national_id AS text), '@baeldung.com') 
AS allocated_email_id
FROM Faculty 
LIMIT 2;

SELECT CONCAT(SPLIT_PART(name, ' ', 1), '_', national_id, '@baeldung.com') AS allocated_email_id
FROM Faculty
LIMIT 2;
