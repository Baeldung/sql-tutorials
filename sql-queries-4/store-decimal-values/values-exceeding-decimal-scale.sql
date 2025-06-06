-- inserted value exceeds the declared scale of the DECIMAL 
INSERT INTO Orders (order_id, total_amount) VALUES (3, 123.456);

-- Output Order table
SELECT * FROM orders;
