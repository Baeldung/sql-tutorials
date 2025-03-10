USE University; SELECT department_id, STRING_AGG(CASE WHEN is_active = 'yes' THEN name ELSE NULL END, ', ') AS active_courses FROM Course GROUP BY department_id;
