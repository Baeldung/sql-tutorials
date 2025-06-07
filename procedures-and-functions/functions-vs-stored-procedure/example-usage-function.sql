CREATE OR REPLACE FUNCTION CalculateAge(birthDate DATE)
RETURNS INT AS $$
BEGIN
    RETURN EXTRACT(YEAR FROM age(birthDate));
END;
$$ LANGUAGE plpgsql;

SELECT id, name, CalculateAge(birth_date) AS age
FROM Student;