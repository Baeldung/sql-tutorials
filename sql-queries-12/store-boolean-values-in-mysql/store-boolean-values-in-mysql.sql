-- Boolean values in MySQL: Companion SQL File
-- ------------------------------------------

-- 1. Create Users table with BOOL
CREATE TABLE Users (
  empId INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  dept TEXT NOT NULL,
  is_active BOOL NOT NULL
);

-- 2. Insert Boolean values
INSERT INTO Users VALUES (1, 'Zack', 'Sales', TRUE);
INSERT INTO Users VALUES (2, 'Mark', 'Marketing', FALSE);

-- 3. Query Boolean values
SELECT * FROM Users WHERE is_active IS TRUE;

-- 4. Use TINYINT(1) explicitly
ALTER TABLE Users
MODIFY COLUMN is_active TINYINT(1);

-- 5. Use BIT(1)
ALTER TABLE Users
MODIFY COLUMN is_active BIT(1) NOT NULL;

INSERT INTO Users VALUES (3, 'Zack', 'Sales', b'1');
INSERT INTO Users VALUES (4, 'Mike', 'HR', b'0');

-- Display BIT in readable format
SELECT empId, name, dept, BIN(is_active) AS is_active_bin
FROM Users;

-- Alternative CAST() approach
SELECT empId, name, dept, CAST(is_active AS UNSIGNED) AS is_active_num
FROM Users;

-- 6. Use ENUM for custom Boolean-like values
ALTER TABLE Users
MODIFY COLUMN is_active ENUM('yes', 'no') NOT NULL;

INSERT INTO Users VALUES (5, 'Nick', 'Accounting', 'yes');
INSERT INTO Users VALUES (6, 'John', 'Marketing', 2);

SELECT * FROM Users;
