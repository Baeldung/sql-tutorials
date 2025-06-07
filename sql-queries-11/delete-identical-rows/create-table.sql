-- Create sample table
CREATE TABLE DuplicateRecords (
RecordID SERIAL PRIMARY KEY, -- Use INT AUTO_INCREMENT for MySQL
Value1 VARCHAR(50),
Value2 INT,
Value3 DATE
);

-- Insert sample data with duplicates
INSERT INTO DuplicateRecords (Value1, Value2, Value3) VALUES
('Apple', 10, '2023-01-01'),
('Banana', 20, '2023-02-01'),
('Apple', 10, '2023-01-01'), -- Identical to the first row (logical duplicate)
('Cherry', 30, '2023-03-01'),
('Banana', 20, '2023-02-01'), -- Identical to the second row (logical duplicate)
('Apple', 10, '2023-01-01'); -- Another identical row