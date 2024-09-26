SELECT 
    id, 
    LTRIM(RTRIM(employee_name)) AS LR_trimmedEmployeeName, 
    TRIM(job_title) AS T_trimmedJobTitle 
FROM Ventures;