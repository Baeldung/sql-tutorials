CREATE OR REPLACE FUNCTION find_programs_by_departments(dept_ids text)
RETURNS TABLE(id int, name varchar, description varchar, start_date date, end_date date, type varchar, department_id int) AS $$
BEGIN
    RETURN QUERY
    SELECT p.*
    FROM Program p
    WHERE p.department_id IN (SELECT unnest(string_to_array(dept_ids, ','))::int);
END;
$$ LANGUAGE plpgsql;

SELECT * FROM find_programs_by_departments('1, 2, 3');