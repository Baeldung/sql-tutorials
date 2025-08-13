INSERT INTO Student (id, name, national_id, birth_date, enrollment_date, graduation_date, gpa)
VALUES
    (1717, 'Param Mohan', 1023456545, '2002-05-15', '2021-01-15', '2025-06-15', 3.50),
    (1722, 'Alice Parker', 1098765432, '2003-02-20', '2022-01-15', NULL, NULL)
ON CONFLICT (id)
DO UPDATE SET
    name = EXCLUDED.name,
    national_id = EXCLUDED.national_id,
    birth_date = EXCLUDED.birth_date,
    enrollment_date = EXCLUDED.enrollment_date,
    graduation_date = EXCLUDED.graduation_date,
    gpa = EXCLUDED.gpa;
