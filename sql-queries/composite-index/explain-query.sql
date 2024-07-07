EXPLAIN
SELECT
    *
FROM
    employees
WHERE
    last_name = 'Smith'
    AND first_name = 'John';

EXPLAIN
SELECT
    *
FROM
    employees
WHERE
    last_name = 'Smith';

EXPLAIN
SELECT
    *
FROM
    employees
WHERE
    first_name = 'John';