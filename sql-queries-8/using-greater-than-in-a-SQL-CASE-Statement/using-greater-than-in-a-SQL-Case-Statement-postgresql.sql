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
        WHEN graduation_date IS NOT NULL AND CURRENT_DATE > graduation_date THEN TRUE
        ELSE FALSE
    END AS graduated
FROM Student;

-- Categorizing Students Into Age Groups Based on Their Age

SELECT 
    id, 
    name, 
    birth_date,
    CASE 
        WHEN EXTRACT(YEAR FROM CURRENT_DATE) - EXTRACT(YEAR FROM birth_date) > 23 THEN '24 and above'
        WHEN EXTRACT(YEAR FROM CURRENT_DATE) - EXTRACT(YEAR FROM birth_date) > 20 THEN '21-23'
        ELSE '18-20'
    END AS age_group
FROM Student;

