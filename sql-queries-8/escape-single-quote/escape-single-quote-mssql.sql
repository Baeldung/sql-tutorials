-- Using the NCHAR() function to manage the name John O’Liu
INSERT INTO Student (id, name, national_id, birth_date, enrollment_date, graduation_date, gpa) 
  VALUES (1001, 'John O' + NCHAR(39) + 'Liu', 123345566, '2001-04-05', '2020-01-15', '2024-06-15', 4);

-- Using a SELECT query with the NCHAR() function to retrieve the row values
SELECT * FROM Student 
  WHERE name = 'John O' + NCHAR(39) + 'Liu';
