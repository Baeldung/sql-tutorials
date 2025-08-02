-- Method 1: Update via Subquery
UPDATE Course
SET is_active = (
    SELECT CASE 
        WHEN Department.code = 'CS' THEN 'Yes'
        ELSE 'No'
    END
    FROM Department
    WHERE Department.id = Course.department_id
);

-- View result
SELECT * FROM Course;
