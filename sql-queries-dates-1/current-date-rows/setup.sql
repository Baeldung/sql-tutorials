UPDATE Registration SET reg_datetime = current_timestamp WHERE id = 1;
UPDATE Registration SET reg_datetime = current_timestamp WHERE id = 101;
UPDATE Registration SET reg_datetime = current_timestamp WHERE id = 201;

-- Reset the rows with original value
UPDATE Registration SET reg_datetime = '2022-01-11 12:45:56' WHERE id = 1;
UPDATE Registration SET reg_datetime = '2022-08-05 12:45:56' WHERE id = 101;
UPDATE Registration SET reg_datetime = '2023-01-11 12:45:56' WHERE id = 201;