SELECT id, name, department, salary 
FROM ( 
    SELECT id, name, department, salary,
	 ROW_NUMBER() OVER (PARTITION BY department ORDER BY salary DESC) AS rn 
    FROM Employees 
) sub 
WHERE rn = 1;
