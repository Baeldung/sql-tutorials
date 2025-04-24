-- Create sample table
CREATE TABLE sales_data (
    id INT,
    month_number INT,
    amount DECIMAL(10,2)
);

-- Insert sample data
INSERT INTO sales_data VALUES
(1, 1, 1500.00), (2, 3, 2200.50), (3, 7, 1895.75), (4, 12, 3100.00);

-- Convert month number to month name using the DATENAME function
SELECT 
    id,
    month_number,
    DATENAME(MONTH, DATEFROMPARTS(2000, month_number, 1)) AS month_name,
    amount
FROM sales_data;