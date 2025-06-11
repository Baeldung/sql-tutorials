CREATE TEMPORARY TABLE unique_rows AS 
SELECT DISTINCT * 
FROM modifiedregistration;

TRUNCATE TABLE modifiedregistration;

INSERT INTO modifiedregistration 
SELECT * FROM unique_rows;

SELECT * FROM modifiedregistration;