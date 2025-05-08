-- Query with subquery and join
SELECT *
FROM employees e
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
);

-- Query with window functions
WITH ranked_employees AS (
    SELECT *,
           ROW_NUMBER() OVER (ORDER BY salary DESC) AS rank
    FROM employees
)
SELECT *
FROM ranked_employees
WHERE rank <= 10;

-- Query with CTE (Common Table Expression)
WITH sales_summary AS (
    SELECT department_id, SUM(amount) AS total_sales
    FROM sales
    GROUP BY department_id
),
average_sales AS (
    SELECT AVG(total_sales) AS avg_sales
    FROM sales_summary
)
SELECT s.department_id, s.total_sales, a.avg_sales
FROM sales_summary s
JOIN average_sales a ON s.department_id = a.department_id;
