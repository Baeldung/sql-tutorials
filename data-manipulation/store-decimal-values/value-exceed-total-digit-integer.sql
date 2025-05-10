-- Attempting to insert a value that exceeds the total number of digits allowed
INSERT INTO Orders (order_id, total_amount) VALUES (4, 10000000000000.00);

-- Error output will look like this:
-- ERROR: numeric field overflow
--DETAIL: A field with precision 12, scale 2 must round to an absolute value less than 10^10.
