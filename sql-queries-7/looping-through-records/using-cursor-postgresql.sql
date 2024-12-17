DO $$
DECLARE
    studentRecord RECORD;
BEGIN
    -- Declare and open the cursor
    FOR studentRecord IN SELECT id, name FROM Student LOOP
        -- Process each row
        RAISE NOTICE 'Processing Student: %', studentRecord.name;
    END LOOP;
END $$;
