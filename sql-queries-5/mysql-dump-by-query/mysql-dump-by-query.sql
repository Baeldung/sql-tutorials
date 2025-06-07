-- Using temporary table and mysqldump
CREATE TEMPORARY TABLE september_enrollments AS
SELECT * FROM Student
WHERE enrollment_date >= '2024-09-01'
AND enrollment_date <= '2024-09-30';


-- Using SELECT INTO OUTFILE Statement
SELECT * FROM Student
WHERE enrollment_date >= '2024-09-01'
AND enrollment_date <= '2024-09-30'
INTO OUTFILE '/path/to/september_enrollements.csv'
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n';
