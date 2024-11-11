SELECT department_id, SUM(credits) AS dept_total_credits
FROM Course
GROUP BY department_id
HAVING SUM(credits) > 80;
