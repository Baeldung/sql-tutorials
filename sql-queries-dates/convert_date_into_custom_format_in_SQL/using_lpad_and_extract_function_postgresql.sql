-- A sample table creation 
CREATE TABLE Payment ( id SERIAL PRIMARY KEY, customer_name VARCHAR(100), date_of_payment DATE ); 
-- Insertion of sample data 
INSERT INTO Payment (customer_name, date_of_payment) VALUES ('Alice Johnson', '2025-06-01'), ('Bob Smith', '2025-06-15'), ('Charlie Lee', '2025-06-20'), ('Diana Patel', '2025-06-25');
-- Using LPAD and EXTRACT Function
SELECT id, customer_name, LPAD(EXTRACT(DAY FROM date_of_payment)::TEXT, 2, '0') || '/' || LPAD(EXTRACT(MONTH FROM date_of_payment)::TEXT, 2, '0') || '/' || EXTRACT(YEAR FROM date_of_payment)::TEXT AS converted_date FROM Payment