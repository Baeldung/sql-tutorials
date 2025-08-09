-- A sample table creation 
CREATE TABLE Payment ( id SERIAL PRIMARY KEY, customer_name VARCHAR(100), date_of_payment DATE ); 
-- Insertion of sample data 
INSERT INTO Payment (customer_name, date_of_payment) VALUES ('Alice Johnson', '2025-06-01'), ('Bob Smith', '2025-06-15'), ('Charlie Lee', '2025-06-20'), ('Diana Patel', '2025-06-25');
-- Using TO_CHAR Function
SELECT id, customer_name, TO_CHAR(date_of_payment, 'DD/MM/YYYY') AS converted_date FROM Payment;