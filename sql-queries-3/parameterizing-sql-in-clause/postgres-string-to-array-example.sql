SELECT * 
FROM Program 
WHERE department_id = ANY (string_to_array('1,2,3', ',')::int[]);