SELECT name, formatted_id,
       SUBSTRING(formatted_id, 
                 PATINDEX('%[^0]%', formatted_id), 
                 LEN(formatted_id)
       ) AS cleaned_id
FROM Student 
WHERE id in (1607,1007,2017,1010,1111,2008);
