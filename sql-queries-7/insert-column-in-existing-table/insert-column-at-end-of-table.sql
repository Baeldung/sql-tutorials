-- Create table Baeldung
CREATE TABLE Baeldung (first_column int, second_column varchar(150));

-- Add column named third_column to table Baeldung
ALTER TABLE Baeldung ADD third_column varchar(100);

-- Query information_schema.columns for columns in table Baeldung
SELECT column_name FROM information_schema.columns WHERE table_name = 'Baeldung';
