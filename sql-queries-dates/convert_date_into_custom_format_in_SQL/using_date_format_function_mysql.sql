-- A sample table creation 
CREATE TABLE Payment ( id INT AUTO_INCREMENT PRIMARY KEY, customer_name VARCHAR(100), date_of_payment DATE ); 
-- Insertion of sample data 
INSERT INTO Payment (customer_name, date_of_payment) VALUES ('Alice Johnson', '2025-06-01'), ('Bob Smith', '2025-06-15'), ('Charlie Lee', '2025-06-20'), ('Diana Patel', '2025-06-25');
-- Using DATE Function
SELECT id, customer_name, DATE_FORMAT(date_of_payment, '%d/%m/%Y') AS converted_date FROM Payment;