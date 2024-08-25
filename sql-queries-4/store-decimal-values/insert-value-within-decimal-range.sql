-- Inserting a value within the range 
INSERT INTO Orders (order_id, total_amount) VALUES (1, 123456.78);

-- Inserting a value exactly at the maximum limit
INSERT INTO Orders (order_id, total_amount) VALUES (2, 9999999999.99);

-- Display the order table data
SELECT * FROM orders;