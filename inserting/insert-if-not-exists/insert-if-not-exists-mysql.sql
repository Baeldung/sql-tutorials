-- Using INSERT IGNORE
INSERT IGNORE INTO table_name (id, name, national_id, birth_date, enrollment_date, graduation_date, gpa)
VALUES (id_value, name_value, national_id_value, birth_date_value, enrollment_date_value, graduation_date_value, gpa_value);


-- Using INSERT … ON DUPLICATE KEY UPDATE
INSERT INTO table_name (id, name, national_id, birth_date, enrollment_date, graduation_date, gpa)
VALUES (id_value, name_value, national_id_value, birth_date_value, enrollment_date_value, graduation_date_value, gpa_value)
ON DUPLICATE KEY UPDATE id = id;
