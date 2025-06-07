-- Using double quotes to insert the name that contains an apostrophe
INSERT INTO Student (id, name, national_id, birth_date, enrollment_date, graduation_date, gpa) 
  VALUES (1001, 'John O'Liu', 123345566, '2001-04-05', '2020-01-15', '2024-06-15', 4);

-- Use doubled single quotes to retrieve the name
SELECT * FROM Student 
  WHERE name = 'John O''Liu';

-- Use dollar-quoted strings to insert the apostrophe into the database
INSERT INTO Student (id, name, national_id, birth_date, enrollment_date, graduation_date, gpa) 
  VALUES (1001, $$John O'Liu$$, 123345566, '2001-04-05', '2020-01-15', '2024-06-15', 4);

-- Use dollar-quoted strings in the SELECT query
SELECT * FROM Student 
  WHERE name = $$John O'Liu$$;

-- Use CHR() function to manage the name John O’Liu
INSERT INTO Student (id, name, national_id, birth_date, enrollment_date, graduation_date, gpa) 
  VALUES (1001, 'John O' || CHR(39) ||'Liu', 123345566, '2001-04-05', '2020-01-15', '2024-06-15', 4);
