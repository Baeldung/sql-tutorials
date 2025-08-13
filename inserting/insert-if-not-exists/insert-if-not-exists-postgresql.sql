-- Using INSERT … ON CONFLICT
INSERT INTO table_name (id, name, national_id, birth_date, enrollment_date, graduation_date, gpa)
VALUES (id_value, name_value, national_id_value, birth_date_value, enrollment_date_value, graduation_date_value, gpa_value)
ON CONFLICT (id) DO NOTHING;

-- Using a DO Block
DO $$
BEGIN
    IF NOT EXISTS (
        SELECT 1 FROM table_name WHERE id = id_value
    ) THEN
        INSERT INTO table_name (id, name, national_id, birth_date, enrollment_date, graduation_date, gpa)
        VALUES (id_value, name_value, national_id_value, birth_date_value, enrollment_date_value, graduation_date_value, gpa_value);
    ELSE
        RAISE NOTICE 'A student already exists with this id. No insertion performed!';
    END IF;
END $$;
