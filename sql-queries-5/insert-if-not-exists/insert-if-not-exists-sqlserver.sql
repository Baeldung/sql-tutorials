-- Using MERGE
MERGE INTO table_name AS target
USING (VALUES (id_value, name_value, national_id_value, birth_date_value, enrollment_date_value, graduation_date_value, gpa_value))
       AS source (id, name, national_id, birth_date, enrollment_date, graduation_date, gpa)
ON target.id = source.id
WHEN NOT MATCHED BY TARGET THEN
    INSERT (id, name, national_id, birth_date, enrollment_date, graduation_date, gpa)
    VALUES (source.id, source.name, source.national_id, source.birth_date, source.enrollment_date, source.graduation_date, source.gpa);

-- Using EXCEPT
INSERT INTO table_name (id, name, national_id, birth_date, enrollment_date, graduation_date, gpa)
SELECT id_value, name_value, national_id_value, birth_date_value, enrollment_date_value, graduation_date_value, gpa_value
EXCEPT
SELECT id, name, national_id, birth_date, enrollment_date, graduation_date, gpa
FROM table_name
WHERE id = id_value;
