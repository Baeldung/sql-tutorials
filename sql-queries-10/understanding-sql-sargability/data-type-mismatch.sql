-- Non-Sargable (if id is INT) 
EXPLAIN
SELECT * FROM customers 
WHERE id = '1001';

-- Sargable 
EXPLAIN
SELECT * FROM customers 
WHERE id = 1001;