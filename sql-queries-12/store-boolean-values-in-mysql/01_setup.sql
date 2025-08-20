-- Setup: Create Users table
CREATE TABLE Users (
  empId INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  dept TEXT NOT NULL,
  is_active BOOL NOT NULL
);

-- Insert initial Boolean values
INSERT INTO Users VALUES (1, 'Zack', 'Sales', TRUE);
INSERT INTO Users VALUES (2, 'Mark', 'Marketing', FALSE);
