SELECT department_id, SUM(credits) FROM Course WHERE is_active = 'Yes' GROUP BY department_id;
