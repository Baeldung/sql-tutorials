SELECT f1.name AS faculty_name,
    f1.position AS current_position,
    f1.start_date AS current_start_date,
    f1.end_date AS current_end_date,
    f2.position AS previous_position,
    f2.start_date AS previous_start_date,
    f2.end_date AS previous_end_date
FROM Faculty f1
    LEFT JOIN Faculty f2 ON f1.national_id = f2.national_id
    AND f1.start_date > f2.end_date
ORDER BY f1.name,
    f1.start_date;