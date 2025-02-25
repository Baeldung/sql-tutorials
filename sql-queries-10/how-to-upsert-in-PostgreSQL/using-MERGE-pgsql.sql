MERGE INTO Student AS s
USING (VALUES
    (1717, 'Param Mohan', 1023456545, CAST('2002-05-15' AS DATE), CAST('2021-01-15' AS DATE), CAST('2025-06-15' AS DATE), 3.50),
    (1722, 'Alice Parker', 1098765432, CAST('2003-02-20' AS DATE), CAST('2022-01-15' AS DATE), NULL, NULL)
) AS v(id, name, national_id, birth_date, enrollment_date, graduation_date, gpa)
ON s.id = v.id
WHEN MATCHED THEN 
    UPDATE SET 
        name = v.name,
        national_id = v.national_id,
        birth_date = v.birth_date,
        enrollment_date = v.enrollment_date,
        graduation_date = v.graduation_date,
        gpa = v.gpa
WHEN NOT MATCHED THEN 
    INSERT (id, name, national_id, birth_date, enrollment_date, graduation_date, gpa)
    VALUES (v.id, v.name, v.national_id, v.birth_date, v.enrollment_date, v.graduation_date, v.gpa);
