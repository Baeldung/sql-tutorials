-- Adding lab_hours column
ALTER TABLE Student ADD lab_hours INT;
UPDATE Student SET lab_hours = 10 WHERE id = 1001;
UPDATE Student SET lab_hours = 15 WHERE id = 1007;
UPDATE Student SET lab_hours = 20 WHERE id = 1011;
UPDATE Student SET lab_hours = 8 WHERE id = 1607;
UPDATE Student SET lab_hours = 12 WHERE id = 1710;
UPDATE Student SET lab_hours = 5 WHERE id = 1621;
UPDATE Student SET lab_hours = 5 WHERE id = 1721;

-- Remove the column to revert to initial state (in Postgresql and MySQL)
ALTER TABLE Student DROP lab_hours;

-- In SQL Server
ALTER TABLE Student DROP COLUMN lab_hours;