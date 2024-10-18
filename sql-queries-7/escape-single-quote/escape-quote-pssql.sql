INSERT INTO 
  Student (id, name, national_id, birth_date, enrollment_date, graduation_date, gpa) 
  VALUES
  (1001, 'John O'Liu', 123345566, '2001-04-05', '2020-01-15', '2024-06-15', 4);

INSERT INTO 
  Student (id, name, national_id, birth_date, enrollment_date, graduation_date, gpa) 
  VALUES
  (1001, 'John O''Liu', 123345566, '2001-04-05', '2020-01-15', '2024-06-15', 4);

INSERT INTO 
  Student (id, name, national_id, birth_date, enrollment_date, graduation_date, gpa) 
  VALUES
  (1001, $$John O'Liu$$, 123345566, '2001-04-05', '2020-01-15', '2024-06-15', 4);

INSERT INTO 
  Student (id, name, national_id, birth_date, enrollment_date, graduation_date, gpa) 
  VALUES 
  (1001, 'John O' || CHR(39) ||'Liu', 123345566, '2001-04-05', '2020-01-15', '2024-06-15', 4);
