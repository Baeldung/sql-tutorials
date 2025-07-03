-- A sample table creation 
CREATE TABLE Payment ( id INT AUTO_INCREMENT PRIMARY KEY, customer_name VARCHAR(100), date_of_payment DATE ); 
-- Insertion of sample data 
INSERT INTO Payment (customer_name, date_of_payment) VALUES ('Alice Johnson', '2025-06-01'), ('Bob Smith', '2025-06-15'), ('Charlie Lee', '2025-06-20'), ('Diana Patel', '2025-06-25');
-- Using LPAD Function
SELECT id, customer_name, CONCAT( LPAD(DAY(date_of_payment), 2, '0'), '/', LPAD(MONTH(date_of_payment), 2, '0'), '/', YEAR(date_of_payment) ) AS converted_date FROM Payment;