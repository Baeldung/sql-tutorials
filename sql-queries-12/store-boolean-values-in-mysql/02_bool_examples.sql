-- Query Boolean values
SELECT * FROM Users WHERE is_active IS TRUE;

-- Insert numeric equivalents
INSERT INTO Users VALUES (3, 'Zack', 'Sales', 1);
INSERT INTO Users VALUES (4, 'Mark', 'Marketing', 0);

SELECT * FROM Users WHERE is_active = 1;
