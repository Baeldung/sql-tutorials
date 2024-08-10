SELECT * 
FROM ( 
       SELECT column1, column2 FROM Existing_table WHERE condition 
) 
AS Temp_table;
