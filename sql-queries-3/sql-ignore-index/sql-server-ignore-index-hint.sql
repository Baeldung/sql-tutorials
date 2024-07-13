SELECT name, type, department_id 
FROM Program 
WHERE department_id =1 AND type='Major' 
GROUP BY name, type, department_id 
ORDER BY department_id 
OPTION (IGNORE_NONCLUSTERED_COLUMNSTORE_INDEX);                          
