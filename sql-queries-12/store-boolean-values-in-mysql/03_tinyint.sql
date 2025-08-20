-- Use TINYINT(1) explicitly
ALTER TABLE Users
MODIFY COLUMN is_active TINYINT(1);
