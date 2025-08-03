-- Method 2: Update via JOIN
UPDATE Course
SET is_active = 
    CASE WHEN Department.code = 'EC' THEN 'Yes' ELSE 'No' END
FROM Course
JOIN Department ON Course.department_id = Department.id;

-- View result
SELECT * FROM Course;
