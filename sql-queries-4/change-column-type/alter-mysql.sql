ALTER TABLE Course MODIFY COLUMN credits DECIMAL(10,2);
ALTER TABLE Course CHANGE COLUMN credits credits DECIMAL(10,2);

-- RESET column
ALTER TABLE Course MODIFY COLUMN credits INTEGER;