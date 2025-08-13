-- Create sample table
CREATE TABLE sales_data (
    id INT,
    month_number INT,
    amount DECIMAL(10,2)
);

-- Insert sample data
INSERT INTO sales_data VALUES
(1, 1, 1500.00), (2, 3, 2200.50), (3, 7, 1895.75), (4, 12, 3100.00);

-- Create a custom function to convert month number to month name
CREATE FUNCTION dbo.MonthName (@month_number INT)
RETURNS VARCHAR(20)
AS
BEGIN
    RETURN DATENAME(MONTH, DATEFROMPARTS(2000, @month_number, 1))
END;

-- Invoking the custom function
SELECT 
    id,
    month_number,
    dbo.MonthName(month_number) AS month_name,
    amount
FROM sales_data;
