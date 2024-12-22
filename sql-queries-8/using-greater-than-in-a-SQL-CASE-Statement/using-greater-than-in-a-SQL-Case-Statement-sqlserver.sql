-- Grading Students Based on GPA

SELECT 
    id, 
    name, 
    gpa,
    CASE 
        WHEN gpa > 3.9 THEN 'High Achiever'
        WHEN gpa > 3.0 THEN 'Average'
        ELSE 'Needs Improvement'
    END AS gpa_category
FROM Student;

-- Determining Graduation Status

SELECT 
    id, 
    name, 
    graduation_date,
    CASE 
        WHEN CAST(GETDATE() AS DATE) > graduation_date AND graduation_date IS NOT NULL THEN 1
        ELSE 0
    END AS graduated
FROM Student;

-- Categorizing Students Into Age Groups Based on Their Age

SELECT 
    id, 
    name, 
    birth_date,
    CASE 
        WHEN DATEDIFF(YEAR, birth_date, GETDATE()) > 23 THEN '24 and above'
        WHEN DATEDIFF(YEAR, birth_date, GETDATE()) > 20 THEN '21-23'
        ELSE '18-20'
    END AS age_group
FROM Student;

