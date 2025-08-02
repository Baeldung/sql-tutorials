-- Method 3: Update via MERGE
MERGE Course AS Target
USING (
    SELECT id, code FROM Department
) AS Source
ON Target.department_id = Source.id
WHEN MATCHED THEN
    UPDATE SET Target.is_active =
        CASE 
            WHEN Source.code = 'ME' THEN 'Yes'
            ELSE 'No'
        END;
