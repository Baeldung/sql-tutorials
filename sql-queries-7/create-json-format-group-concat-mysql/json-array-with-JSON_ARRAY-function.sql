SELECT 
GROUP_CONCAT(
    JSON_ARRAY("first element","second element","third element")
) 
AS result;
