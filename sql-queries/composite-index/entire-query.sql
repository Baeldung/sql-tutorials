CREATE INDEX idx_lastname_firstname_salary ON employees (last_name, first_name, salary);

EXPLAIN
SELECT
    first_name,
    salary
FROM
    employees
WHERE
    last_name = 'Smith';