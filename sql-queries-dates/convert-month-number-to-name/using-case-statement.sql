-- Create sample table
CREATE TABLE sales_data (
    id INT,
    month_number INT,
    amount DECIMAL(10,2)
);

-- Insert sample data
INSERT INTO sales_data VALUES
(1, 1, 1500.00), (2, 3, 2200.50), (3, 7, 1895.75), (4, 12, 3100.00);

-- Convert month number to month name using CASE statement
SELECT 
    id,
    month_number,
    CASE month_number
        WHEN 1 THEN 'January' WHEN 2 THEN 'February' WHEN 3 THEN 'March'
        WHEN 4 THEN 'April' WHEN 5 THEN 'May' WHEN 6 THEN 'June'
        WHEN 7 THEN 'July' WHEN 8 THEN 'August' WHEN 9 THEN 'September'
        WHEN 10 THEN 'October' WHEN 11 THEN 'November' WHEN 12 THEN 'December'
    END AS month_name,
    amount
FROM sales_data;