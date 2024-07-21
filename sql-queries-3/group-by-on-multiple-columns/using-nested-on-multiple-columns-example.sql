SELECT department_name, type, program_count, MIN(start_date) AS earliest_start_date
FROM (
    SELECT d.name AS department_name, p.type, COUNT(*) AS program_count, p.start_date
    FROM Program p
    JOIN Department d ON p.department_id = d.id
    GROUP BY d.name, p.type, p.start_date
) AS subquery
GROUP BY department_name, type, program_count;