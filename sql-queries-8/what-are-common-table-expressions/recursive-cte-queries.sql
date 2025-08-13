-- Recursive cte
 WITH RECURSIVE EnrollmentProgression AS (
    
    SELECT 
        id AS student_id,
        name,
        YEAR(enrollment_date) AS active_year
    FROM 
        Student

    UNION ALL

    -- Recursive statement to increment the year until the graduation year
    SELECT 
        ep.student_id,
        ep.name,
        ep.active_year + 1 AS year
    FROM 
        EnrollmentProgression ep
    INNER JOIN 
        student s ON ep.student_id = s.id
    WHERE 
        ep.active_year < YEAR(s.graduation_date)
)
-- Select all active years for each student's enrollment
SELECT 
    student_id,
    name,
    active_year
FROM 
    EnrollmentProgression
ORDER BY 
    student_id, active_year
LIMIT 20;