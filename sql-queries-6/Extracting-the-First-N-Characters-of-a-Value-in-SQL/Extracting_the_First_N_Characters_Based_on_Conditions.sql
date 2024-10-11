SELECT id, LEFT(name, 3) AS name_start, department_id
FROM Faculty
WHERE department_id = (
    SELECT id
    FROM Department
    WHERE name = 'Computer Science'
)
LIMIT 5;
