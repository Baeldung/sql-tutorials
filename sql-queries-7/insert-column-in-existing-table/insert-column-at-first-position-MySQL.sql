-- Add column named new_first_column to the first position in table Baeldung
ALTER TABLE Baeldung ADD new_first_column date FIRST;

-- Query information_schema.columns for columns in table Baeldung
SELECT column_name FROM information_schema.columns WHERE table_name = 'Baeldung';
