SELECT 
    JSON_MERGE_PRESERVE(
        GROUP_CONCAT(
            JSON_OBJECT("1","one")),
        GROUP_CONCAT(
            JSON_OBJECT("2","two")
        )
    ) 
AS result;
