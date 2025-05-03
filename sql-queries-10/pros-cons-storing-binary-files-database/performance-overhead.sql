-- Start timing the operation (precision: microseconds)
SET @start = NOW(6);

-- Export a textbook (stored as Base64 in DB) to a PDF file
-- 1. FROM_BASE64() decodes the Base64 'textbook' column
-- 2. INTO DUMPFILE writes the binary result to the server's filesystem
-- 3. Restricted to MySQL's secure file directory (e.g., /var/lib/mysql-files/)
SELECT FROM_BASE64(textbook) 
INTO DUMPFILE '/var/lib/mysql-files/temp_restored.pdf' 
FROM Course 
WHERE id = 'ME438';

-- End timming
SET @end = NOW(6);

-- Calculate and display the export duration in milliseconds
-- TIMESTAMPDIFF computes microseconds, divided by 1000 for milliseconds
SELECT CONCAT( 
    TIMESTAMPDIFF(MICROSECOND, @start, @end)/1000, 'milliseconds') AS file_export_time;

