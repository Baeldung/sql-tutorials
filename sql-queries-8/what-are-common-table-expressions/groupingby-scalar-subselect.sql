-- Grouping by a Column Derived from a Scalar Subselect or Non-Deterministic Function
ITH AgeCategories AS ( 
        SELECT s.id AS student_id, 
                s.name AS student_name, 
                TIMESTAMPDIFF(YEAR, s.birth_date, s.enrollment_date) AS age_at_enrollment, 
                CASE 
                        WHEN TIMESTAMPDIFF(YEAR, s.birth_date, s.enrollment_date) = 18 THEN '18 Years' 
                        WHEN TIMESTAMPDIFF(YEAR, s.birth_date, s.enrollment_date) = 19 THEN '19 Years' 
                        ELSE 'Above 18' 
                END AS age_category 
        FROM Student AS s 
        ) 
        SELECT age_category, 
                COUNT(student_id) AS student_count 
        FROM AgeCategories 
                GROUP BY age_category;