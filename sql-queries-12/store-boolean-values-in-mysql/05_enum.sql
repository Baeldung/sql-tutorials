-- Use ENUM for custom Boolean-like values
ALTER TABLE Users
MODIFY COLUMN is_active ENUM('yes', 'no') NOT NULL;

INSERT INTO Users VALUES (7, 'Nick', 'Accounting', 'yes');
INSERT INTO Users VALUES (8, 'John', 'Marketing', 2);

SELECT * FROM Users;
