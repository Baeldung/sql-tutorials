SELECT name, type, department_id 
FROM Program 
WITH (INDEX(PK__Program__3213E83F9B13E52E,csindx_simple)) 
WHERE department_id =1  
GROUP BY name, type, department_id 
ORDER BY department_id;                    
