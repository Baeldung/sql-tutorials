-- Add column named fourth_column after third_column in Baeldung table
ALTER TABLE Baeldung ADD fourth_column varchar(100) AFTER third_column;

-- Query information_schema.columns for columns in Baeldung table
SELECT column_name FROM information_schema.columns WHERE table_name = 'Baeldung';
