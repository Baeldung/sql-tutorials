CREATE OR REPLACE FUNCTION find_programs_by_departments(dept_ids int[])
RETURNS TABLE(id int, name varchar, description varchar, start_date date, end_date date, type varchar, department_id int) AS $$
BEGIN
    RETURN QUERY
    SELECT p.*
    FROM Program p
    WHERE p.department_id = ANY (dept_ids);
END;
$$ LANGUAGE plpgsql;

SELECT * FROM find_programs_by_departments(ARRAY[1, 2, 3]);