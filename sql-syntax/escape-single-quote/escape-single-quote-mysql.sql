-- CHAR(39) generates a single quote (‘), which is then used with the CONCAT() function to combine the strings ‘John O’ and ‘Liu’, along with the single quote
INSERT INTO Student (id, name, national_id, birth_date, enrollment_date, graduation_date, gpa) 
  VALUES (1001, CONCAT('John O', CHAR(39), 'Liu'), 123345566, '2001-04-05', '2020-01-15', '2024-06-15', 4);
