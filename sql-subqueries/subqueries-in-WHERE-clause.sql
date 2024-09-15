SELECT id, name, credits, department_id
FROM Course
WHERE credits > (
    SELECT AVG(credits)
    FROM Course AS c2
    WHERE c2.department_id = Course.department_id
)
AND department_id IN (
    SELECT id
    FROM Department
    WHERE name IN ('Computer Science', 'Mathematics')
);