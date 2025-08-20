-- Use BIT(1)
ALTER TABLE Users
MODIFY COLUMN is_active BIT(1) NOT NULL;

INSERT INTO Users VALUES (5, 'Zack', 'Sales', b'1');
INSERT INTO Users VALUES (6, 'Mike', 'HR', b'0');

-- Display BIT in readable format
SELECT empId, name, dept, BIN(is_active) AS is_active_bin
FROM Users;

-- CAST() approach
SELECT empId, name, dept, CAST(is_active AS UNSIGNED) AS is_active_num
FROM Users;
